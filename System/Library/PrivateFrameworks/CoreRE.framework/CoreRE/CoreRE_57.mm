uint64_t std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned long long const*,void *,true> const&,re::Pair<unsigned long long const*,void *,true> const&)#1} &,re::Pair<unsigned long long const*,void *,true>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t **a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 4)
    {
      v6 = v4 >> 3;
      v7 = (v4 >> 3) + 1;
      v8 = (result + 16 * v7);
      v9 = v6 + 2;
      if (v9 >= a3)
      {
        v10 = **v8;
      }

      else
      {
        v10 = **v8;
        v11 = *v8[2];
        v12 = v10 >= v11;
        if (v10 <= v11)
        {
          v10 = *v8[2];
        }

        if (!v12)
        {
          v8 += 2;
          v7 = v9;
        }
      }

      v13 = *a4;
      if (v10 >= **a4)
      {
        v14 = a4[1];
        do
        {
          v15 = a4;
          a4 = v8;
          *v15 = *v8;
          if (v5 < v7)
          {
            break;
          }

          v16 = (2 * v7) | 1;
          v8 = (result + 16 * v16);
          v7 = 2 * v7 + 2;
          if (v7 >= a3)
          {
            v17 = **v8;
            v7 = v16;
          }

          else
          {
            v17 = **v8;
            v18 = *v8[2];
            v19 = v17 >= v18;
            if (v17 <= v18)
            {
              v17 = *v8[2];
            }

            if (v19)
            {
              v7 = v16;
            }

            else
            {
              v8 += 2;
            }
          }
        }

        while (v17 >= *v13);
        *a4 = v13;
        a4[1] = v14;
      }
    }
  }

  return result;
}

uint64_t std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned long long const*,void *,true> const&,re::Pair<unsigned long long const*,void *,true> const&)#1} &,re::Pair<unsigned long long const*,void *,true>*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = v4 >> 1;
    v6 = (result + 16 * (v4 >> 1));
    v7 = (a2 - 16);
    v8 = *(a2 - 16);
    if (**v6 < *v8)
    {
      v9 = *(a2 - 8);
      do
      {
        v10 = v7;
        v7 = v6;
        *v10 = *v6;
        if (!v5)
        {
          break;
        }

        v5 = (v5 - 1) >> 1;
        v6 = (result + 16 * v5);
      }

      while (**v6 < *v8);
      *v7 = v8;
      v7[1] = v9;
    }
  }

  return result;
}

__n128 std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned int const*,void *,true> const&,re::Pair<unsigned int const*,void *,true> const&)#1} &,re::Pair<unsigned int const*,void *,true>*,false>(__n128 *a1, __n128 *a2, uint64_t a3, uint64_t a4, char a5, __n128 result)
{
LABEL_1:
  v9 = &a2[-1];
  v10 = &a2[-2];
  v11 = &a2[-3];
  v12 = a1;
LABEL_2:
  v13 = 1 - a4;
  while (1)
  {
    a1 = v12;
    v14 = v13;
    v15 = a2 - v12;
    if (v15 <= 2)
    {
      if (v15 < 2)
      {
        return result;
      }

      if (v15 == 2)
      {
        v47 = a2[-1].n128_u64[0];
        v43 = &a2[-1];
        if (*v47 >= *v12->n128_u64[0])
        {
          return result;
        }

LABEL_77:
        v71 = *v12;
        *v12 = *v43;
        result = v71;
        goto LABEL_78;
      }

      goto LABEL_10;
    }

    if (v15 == 3)
    {
      v42 = v12 + 1;
      v44 = a2[-1].n128_u64[0];
      v43 = &a2[-1];
      v45 = *v12[1].n128_u64[0];
      v46 = *v44;
      if (v45 < *v12->n128_u64[0])
      {
        if (v46 < v45)
        {
          goto LABEL_77;
        }

        v70 = *v12;
        *v12 = *v42;
        result = v70;
        *v42 = v70;
        if (**v43 >= *v12[1].n128_u64[0])
        {
          return result;
        }

        result = *v42;
        *v42 = *v43;
LABEL_78:
        *v43 = result;
        return result;
      }

      if (v46 >= v45)
      {
        return result;
      }

      result = *v42;
      *v42 = *v43;
      *v43 = result;
      goto LABEL_104;
    }

    if (v15 == 4)
    {
      break;
    }

    if (v15 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned int const*,void *,true> const&,re::Pair<unsigned int const*,void *,true> const&)#1} &,re::Pair<unsigned int const*,void *,true>*,0>(v12, v12 + 1, v12 + 2, v12 + 3, a2 - 1, result).n128_u64[0];
      return result;
    }

LABEL_10:
    if (v15 <= 23)
    {
      if (a5)
      {

        std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned int const*,void *,true> const&,re::Pair<unsigned int const*,void *,true> const&)#1} &,re::Pair<unsigned int const*,void *,true>*>(v12, a2);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned int const*,void *,true> const&,re::Pair<unsigned int const*,void *,true> const&)#1} &,re::Pair<unsigned int const*,void *,true>*>(v12, a2);
      }

      return result;
    }

    if (v13 == 1)
    {
      if (v12 != a2)
      {

        std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned int const*,void *,true> const&,re::Pair<unsigned int const*,void *,true> const&)#1} &,re::Pair<unsigned int const*,void *,true>*,re::Pair<unsigned int const*,void *,true>*>(v12, a2, a2, a3);
      }

      return result;
    }

    v16 = &v12[v15 >> 1];
    v17 = v16;
    v18 = **v9;
    if (v15 >= 0x81)
    {
      v19 = *v16->n128_u64[0];
      if (v19 >= *v12->n128_u64[0])
      {
        if (v18 < v19)
        {
          v55 = *v16;
          *v16 = *v9;
          *v9 = v55;
          if (*v16->n128_u64[0] < *v12->n128_u64[0])
          {
            v56 = *v12;
            *v12 = *v16;
            *v16 = v56;
          }
        }
      }

      else
      {
        if (v18 >= v19)
        {
          v59 = *v12;
          *v12 = *v16;
          *v16 = v59;
          if (**v9 >= *v16->n128_u64[0])
          {
            goto LABEL_28;
          }

          v53 = *v16;
          *v16 = *v9;
        }

        else
        {
          v53 = *v12;
          *v12 = *v9;
        }

        *v9 = v53;
      }

LABEL_28:
      v21 = v12 + 1;
      v22 = v16 - 1;
      v23 = *v16[-1].n128_u64[0];
      v24 = **v10;
      if (v23 >= *v12[1].n128_u64[0])
      {
        if (v24 < v23)
        {
          v60 = *v22;
          *v22 = *v10;
          *v10 = v60;
          if (*v22->n128_u64[0] < *v21->n128_u64[0])
          {
            v26 = *v21;
            *v21 = *v22;
            *v22 = v26;
          }
        }
      }

      else
      {
        if (v24 >= v23)
        {
          v27 = *v21;
          *v21 = *v22;
          *v22 = v27;
          if (**v10 >= *v22->n128_u64[0])
          {
            goto LABEL_40;
          }

          v62 = *v22;
          *v22 = *v10;
          v25 = v62;
        }

        else
        {
          v25 = *v21;
          *v21 = *v10;
        }

        *v10 = v25;
      }

LABEL_40:
      v28 = v12 + 2;
      v30 = v16[1].n128_u64[0];
      v29 = v16 + 1;
      v31 = *v30;
      v32 = **v11;
      if (*v30 >= *v12[2].n128_u64[0])
      {
        if (v32 < v31)
        {
          v63 = *v29;
          *v29 = *v11;
          *v11 = v63;
          if (*v29->n128_u64[0] < *v28->n128_u64[0])
          {
            v34 = *v28;
            *v28 = *v29;
            *v29 = v34;
          }
        }
      }

      else
      {
        if (v32 >= v31)
        {
          v35 = *v28;
          *v28 = *v29;
          *v29 = v35;
          if (**v11 >= *v29->n128_u64[0])
          {
            goto LABEL_49;
          }

          v64 = *v29;
          *v29 = *v11;
          v33 = v64;
        }

        else
        {
          v33 = *v28;
          *v28 = *v11;
        }

        *v11 = v33;
      }

LABEL_49:
      v36 = *v17->n128_u64[0];
      v37 = *v29->n128_u64[0];
      if (v36 >= *v22->n128_u64[0])
      {
        if (v37 < v36)
        {
          v66 = *v17;
          *v17 = *v29;
          *v29 = v66;
          if (*v17->n128_u64[0] < *v22->n128_u64[0])
          {
            v67 = *v22;
            *v22 = *v17;
            *v17 = v67;
          }
        }

        goto LABEL_58;
      }

      if (v37 >= v36)
      {
        v68 = *v22;
        *v22 = *v17;
        *v17 = v68;
        if (*v29->n128_u64[0] >= *v17->n128_u64[0])
        {
LABEL_58:
          v69 = *v12;
          *v12 = *v17;
          *v17 = v69;
          goto LABEL_59;
        }

        v65 = *v17;
        *v17 = *v29;
      }

      else
      {
        v65 = *v22;
        *v22 = *v29;
      }

      *v29 = v65;
      goto LABEL_58;
    }

    v20 = *v12->n128_u64[0];
    if (v20 >= *v17->n128_u64[0])
    {
      if (v18 < v20)
      {
        v57 = *v12;
        *v12 = *v9;
        *v9 = v57;
        if (*v12->n128_u64[0] < *v17->n128_u64[0])
        {
          v58 = *v17;
          *v17 = *v12;
          *v12 = v58;
        }
      }
    }

    else
    {
      if (v18 < v20)
      {
        v54 = *v17;
        *v17 = *v9;
LABEL_36:
        *v9 = v54;
        goto LABEL_59;
      }

      v61 = *v17;
      *v17 = *v12;
      *v12 = v61;
      if (**v9 < *v12->n128_u64[0])
      {
        v54 = *v12;
        *v12 = *v9;
        goto LABEL_36;
      }
    }

LABEL_59:
    if ((a5 & 1) == 0 && *v12[-1].n128_u64[0] >= *v12->n128_u64[0])
    {
      v12 = std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,re::Pair<unsigned int const*,void *,true> *,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned int const*,void *,true> const&,re::Pair<unsigned int const*,void *,true> const&)#1} &>(v12, a2);
      goto LABEL_66;
    }

    v38 = std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,re::Pair<unsigned int const*,void *,true> *,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned int const*,void *,true> const&,re::Pair<unsigned int const*,void *,true> const&)#1} &>(v12, a2);
    if ((v39 & 1) == 0)
    {
      goto LABEL_64;
    }

    v40 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned int const*,void *,true> const&,re::Pair<unsigned int const*,void *,true> const&)#1} &,re::Pair<unsigned int const*,void *,true>*>(v12, v38, result);
    v12 = v38 + 1;
    if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned int const*,void *,true> const&,re::Pair<unsigned int const*,void *,true> const&)#1} &,re::Pair<unsigned int const*,void *,true>*>(v38 + 1, a2, v41))
    {
      a4 = -v14;
      a2 = v38;
      if (v40)
      {
        return result;
      }

      goto LABEL_1;
    }

    v13 = v14 + 1;
    if (!v40)
    {
LABEL_64:
      result = std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned int const*,void *,true> const&,re::Pair<unsigned int const*,void *,true> const&)#1} &,re::Pair<unsigned int const*,void *,true>*,false>(a1, v38, a3, -v14, a5 & 1, result);
      v12 = v38 + 1;
LABEL_66:
      a5 = 0;
      a4 = -v14;
      goto LABEL_2;
    }
  }

  v42 = v12 + 1;
  v48 = v12 + 2;
  v49 = v12[2].n128_u64[0];
  v50 = *v12[1].n128_u64[0];
  v51 = *v49;
  if (v50 >= *v12->n128_u64[0])
  {
    if (v51 < v50)
    {
      result = *v42;
      *v42 = *v48;
      *v48 = result;
      if (*v12[1].n128_u64[0] < *v12->n128_u64[0])
      {
        v73 = *v12;
        *v12 = *v42;
        result = v73;
        *v42 = v73;
      }
    }
  }

  else
  {
    if (v51 < v50)
    {
      v72 = *v12;
      *v12 = *v48;
      result = v72;
      goto LABEL_100;
    }

    v74 = *v12;
    *v12 = *v42;
    result = v74;
    *v42 = v74;
    if (*v49 < *v12[1].n128_u64[0])
    {
      result = *v42;
      *v42 = *v48;
LABEL_100:
      *v48 = result;
    }
  }

  if (**v9 >= *v48->n128_u64[0])
  {
    return result;
  }

  result = *v48;
  *v48 = *v9;
  *v9 = result;
  if (*v48->n128_u64[0] >= *v42->n128_u64[0])
  {
    return result;
  }

  result = *v42;
  *v42 = *v48;
  *v48 = result;
LABEL_104:
  if (*v12[1].n128_u64[0] < *v12->n128_u64[0])
  {
    v75 = *v12;
    *v12 = *v42;
    result = v75;
    *v42 = v75;
  }

  return result;
}

void *std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned int const*,void *,true> const&,re::Pair<unsigned int const*,void *,true> const&)#1} &,re::Pair<unsigned int const*,void *,true>*>(void *result, void *a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    if (result + 2 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v2;
        v6 = v4[2];
        if (*v6 < **v4)
        {
          v7 = v4[3];
          v8 = v3;
          while (1)
          {
            *(result + v8 + 16) = *(result + v8);
            if (!v8)
            {
              break;
            }

            v9 = **(result + v8 - 16);
            v8 -= 16;
            if (*v6 >= v9)
            {
              v10 = (result + v8 + 16);
              goto LABEL_10;
            }
          }

          v10 = result;
LABEL_10:
          *v10 = v6;
          v10[1] = v7;
        }

        v2 = v5 + 2;
        v3 += 16;
        v4 = v5;
      }

      while (v5 + 2 != a2);
    }
  }

  return result;
}

uint64_t std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned int const*,void *,true> const&,re::Pair<unsigned int const*,void *,true> const&)#1} &,re::Pair<unsigned int const*,void *,true>*>(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v2 = result + 16;
    while (v2 != a2)
    {
      v3 = v2;
      v4 = *(result + 16);
      if (*v4 < **result)
      {
        v5 = *(result + 24);
        v6 = v3;
        do
        {
          *v6 = *(v6 - 16);
          v7 = *(v6 - 32);
          v6 -= 16;
        }

        while (*v4 < *v7);
        *v6 = v4;
        *(v6 + 8) = v5;
      }

      v2 = v3 + 16;
      result = v3;
    }
  }

  return result;
}

unsigned int **std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,re::Pair<unsigned int const*,void *,true> *,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned int const*,void *,true> const&,re::Pair<unsigned int const*,void *,true> const&)#1} &>(unsigned int **a1, unsigned int **a2)
{
  v2 = *a1;
  v3 = *a1;
  v4 = **a1;
  if (v4 >= **(a2 - 2))
  {
    v7 = a1 + 2;
    do
    {
      v5 = v7;
      if (v7 >= a2)
      {
        break;
      }

      v7 += 2;
    }

    while (v4 >= **v5);
  }

  else
  {
    v5 = a1;
    do
    {
      v6 = v5[2];
      v5 += 2;
    }

    while (v4 >= *v6);
  }

  if (v5 < a2)
  {
    do
    {
      v8 = *(a2 - 2);
      a2 -= 2;
    }

    while (v4 < *v8);
  }

  while (v5 < a2)
  {
    v13 = *v5;
    *v5 = *a2;
    *a2 = v13;
    v9 = *v3;
    do
    {
      v10 = v5[2];
      v5 += 2;
    }

    while (v9 >= *v10);
    do
    {
      v11 = *(a2 - 2);
      a2 -= 2;
    }

    while (v9 < *v11);
  }

  if (v5 - 2 != a1)
  {
    *a1 = *(v5 - 1);
  }

  *(v5 - 1) = v2;
  return v5;
}

unsigned int **std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,re::Pair<unsigned int const*,void *,true> *,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned int const*,void *,true> const&,re::Pair<unsigned int const*,void *,true> const&)#1} &>(unsigned int **a1, unsigned int **a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = *a1;
  v5 = **a1;
  do
  {
    v6 = *a1[v2 + 2];
    v2 += 2;
  }

  while (v6 < v5);
  v7 = &a1[v2];
  v8 = &a1[v2 - 2];
  if (v2 == 2)
  {
    do
    {
      if (v7 >= a2)
      {
        break;
      }

      v10 = *(a2 - 2);
      a2 -= 2;
    }

    while (*v10 >= v5);
  }

  else
  {
    do
    {
      v9 = *(a2 - 2);
      a2 -= 2;
    }

    while (*v9 >= v5);
  }

  if (v7 < a2)
  {
    v11 = &a1[v2];
    v12 = a2;
    do
    {
      v13 = *v11;
      *v11 = *v12;
      *v12 = v13;
      v14 = *v4;
      do
      {
        v15 = v11[2];
        v11 += 2;
      }

      while (*v15 < v14);
      do
      {
        v16 = *(v12 - 2);
        v12 -= 2;
      }

      while (*v16 >= v14);
    }

    while (v11 < v12);
    v8 = v11 - 2;
  }

  if (v8 != a1)
  {
    *a1 = *v8;
  }

  *v8 = v3;
  return v8;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned int const*,void *,true> const&,re::Pair<unsigned int const*,void *,true> const&)#1} &,re::Pair<unsigned int const*,void *,true>*>(__n128 *a1, __n128 *a2, __n128 a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = a1 + 1;
      v7 = a2[-1].n128_u64[0];
      v4 = a2 - 1;
      v8 = *a1[1].n128_u64[0];
      v9 = *v7;
      if (v8 < *a1->n128_u64[0])
      {
        if (v9 >= v8)
        {
          v30 = *a1;
          *a1 = *v6;
          *v6 = v30;
          if (*v4->n128_u64[0] >= *a1[1].n128_u64[0])
          {
            return 1;
          }

          v10 = *v6;
          *v6 = *v4;
          goto LABEL_13;
        }

LABEL_12:
        v10 = *a1;
        *a1 = *v4;
LABEL_13:
        *v4 = v10;
        return 1;
      }

      if (v9 >= v8)
      {
        return 1;
      }

      v25 = *v6;
      *v6 = *v4;
      *v4 = v25;
LABEL_50:
      if (*a1[1].n128_u64[0] < *a1->n128_u64[0])
      {
        v43 = *a1;
        *a1 = *v6;
        *v6 = v43;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_14;
      }

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned int const*,void *,true> const&,re::Pair<unsigned int const*,void *,true> const&)#1} &,re::Pair<unsigned int const*,void *,true>*,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
      return 1;
    }

    v6 = a1 + 1;
    v18 = a1 + 2;
    v19 = a1[2].n128_u64[0];
    v20 = a2 - 1;
    v21 = a1->n128_u64[0];
    v22 = *a1[1].n128_u64[0];
    v23 = *v19;
    if (v22 >= *a1->n128_u64[0])
    {
      if (v23 < v22)
      {
        v28 = *v6;
        *v6 = *v18;
        *v18 = v28;
        if (*v6->n128_u64[0] < *v21)
        {
          v29 = *a1;
          *a1 = *v6;
          *v6 = v29;
        }
      }

      goto LABEL_47;
    }

    if (v23 >= v22)
    {
      v40 = *a1;
      *a1 = *v6;
      *v6 = v40;
      if (*v19 >= *a1[1].n128_u64[0])
      {
        goto LABEL_47;
      }

      v24 = *v6;
      *v6 = *v18;
    }

    else
    {
      v24 = *a1;
      *a1 = *v18;
    }

    *v18 = v24;
LABEL_47:
    if (*v20->n128_u64[0] >= *v18->n128_u64[0])
    {
      return 1;
    }

    v41 = *v18;
    *v18 = *v20;
    *v20 = v41;
    if (*v18->n128_u64[0] >= *v6->n128_u64[0])
    {
      return 1;
    }

    v42 = *v6;
    *v6 = *v18;
    *v18 = v42;
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v5 = a2[-1].n128_u64[0];
    v4 = a2 - 1;
    if (*v5 >= *a1->n128_u64[0])
    {
      return 1;
    }

    goto LABEL_12;
  }

LABEL_14:
  v11 = a1 + 2;
  v12 = a1[2].n128_u64[0];
  v13 = a1 + 1;
  v14 = a1->n128_u64[0];
  v15 = *a1[1].n128_u64[0];
  v16 = *v12;
  if (v15 >= *a1->n128_u64[0])
  {
    if (v16 < v15)
    {
      v26 = *v13;
      *v13 = *v11;
      *v11 = v26;
      if (*v13->n128_u64[0] < *v14)
      {
        v27 = *a1;
        *a1 = *v13;
        *v13 = v27;
      }
    }
  }

  else
  {
    if (v16 >= v15)
    {
      v31 = *a1;
      *a1 = *v13;
      *v13 = v31;
      if (*v12 >= *a1[1].n128_u64[0])
      {
        goto LABEL_33;
      }

      v17 = *v13;
      *v13 = *v11;
    }

    else
    {
      v17 = *a1;
      *a1 = *v11;
    }

    *v11 = v17;
  }

LABEL_33:
  v32 = a1 + 3;
  if (&a1[3] == a2)
  {
    return 1;
  }

  v33 = 0;
  v34 = 0;
  while (1)
  {
    v35 = v32->n128_u64[0];
    if (*v32->n128_u64[0] < *v11->n128_u64[0])
    {
      v36 = v32->n128_u64[1];
      v37 = v33;
      while (1)
      {
        *(a1 + v37 + 48) = *(a1 + v37 + 32);
        if (v37 == -32)
        {
          break;
        }

        v38 = **(a1[1].n128_u64 + v37);
        v37 -= 16;
        if (*v35 >= v38)
        {
          v39 = (a1 + v37 + 48);
          goto LABEL_41;
        }
      }

      v39 = a1;
LABEL_41:
      v39->n128_u64[0] = v35;
      v39->n128_u64[1] = v36;
      if (++v34 == 8)
      {
        return &v32[1] == a2;
      }
    }

    v11 = v32;
    v33 += 16;
    if (++v32 == a2)
    {
      return 1;
    }
  }
}

__int128 *std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned int const*,void *,true> const&,re::Pair<unsigned int const*,void *,true> const&)#1} &,re::Pair<unsigned int const*,void *,true>*,re::Pair<unsigned int const*,void *,true>*>(unsigned int **a1, unsigned int **a2, __int128 *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = (a2 - a1) >> 4;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[2 * v9];
      do
      {
        std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned int const*,void *,true> const&,re::Pair<unsigned int const*,void *,true> const&)#1} &,re::Pair<unsigned int const*,void *,true>*>(a1, a4, v8, v11);
        v11 -= 2;
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        if (**v12 < **a1)
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned int const*,void *,true> const&,re::Pair<unsigned int const*,void *,true> const&)#1} &,re::Pair<unsigned int const*,void *,true>*>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v14 = 0;
        v23 = *a1;
        v15 = a1;
        do
        {
          v16 = &v15[2 * v14];
          v17 = (v16 + 2);
          v18 = (2 * v14) | 1;
          v14 = 2 * v14 + 2;
          if (v14 >= v8)
          {
            v14 = v18;
          }

          else
          {
            v20 = v16[4];
            v19 = (v16 + 4);
            if (**(v19 - 2) >= *v20)
            {
              v14 = v18;
            }

            else
            {
              v17 = v19;
            }
          }

          *v15 = *v17;
          v15 = v17;
        }

        while (v14 <= ((v8 - 2) >> 1));
        if (v17 == --v6)
        {
          *v17 = v23;
        }

        else
        {
          *v17 = *v6;
          *v6 = v23;
          std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned int const*,void *,true> const&,re::Pair<unsigned int const*,void *,true> const&)#1} &,re::Pair<unsigned int const*,void *,true>*>(a1, (v17 + 1), a4, ((v17 + 1) - a1) >> 4);
        }
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned int const*,void *,true> const&,re::Pair<unsigned int const*,void *,true> const&)#1} &,re::Pair<unsigned int const*,void *,true>*>(uint64_t result, uint64_t a2, uint64_t a3, unsigned int **a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 4)
    {
      v6 = v4 >> 3;
      v7 = (v4 >> 3) + 1;
      v8 = (result + 16 * v7);
      v9 = v6 + 2;
      if (v9 >= a3)
      {
        v10 = **v8;
      }

      else
      {
        v10 = **v8;
        v11 = *v8[2];
        v12 = v10 >= v11;
        if (v10 <= v11)
        {
          v10 = *v8[2];
        }

        if (!v12)
        {
          v8 += 2;
          v7 = v9;
        }
      }

      v13 = *a4;
      if (v10 >= **a4)
      {
        v14 = a4[1];
        do
        {
          v15 = a4;
          a4 = v8;
          *v15 = *v8;
          if (v5 < v7)
          {
            break;
          }

          v16 = (2 * v7) | 1;
          v8 = (result + 16 * v16);
          v7 = 2 * v7 + 2;
          if (v7 >= a3)
          {
            v17 = **v8;
            v7 = v16;
          }

          else
          {
            v17 = **v8;
            v18 = *v8[2];
            v19 = v17 >= v18;
            if (v17 <= v18)
            {
              v17 = *v8[2];
            }

            if (v19)
            {
              v7 = v16;
            }

            else
            {
              v8 += 2;
            }
          }
        }

        while (v17 >= *v13);
        *a4 = v13;
        a4[1] = v14;
      }
    }
  }

  return result;
}

uint64_t std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned int const*,void *,true> const&,re::Pair<unsigned int const*,void *,true> const&)#1} &,re::Pair<unsigned int const*,void *,true>*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = v4 >> 1;
    v6 = (result + 16 * (v4 >> 1));
    v7 = (a2 - 16);
    v8 = *(a2 - 16);
    if (**v6 < *v8)
    {
      v9 = *(a2 - 8);
      do
      {
        v10 = v7;
        v7 = v6;
        *v10 = *v6;
        if (!v5)
        {
          break;
        }

        v5 = (v5 - 1) >> 1;
        v6 = (result + 16 * v5);
      }

      while (**v6 < *v8);
      *v7 = v8;
      v7[1] = v9;
    }
  }

  return result;
}

__n128 std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned short const*,void *,true> const&,re::Pair<unsigned short const*,void *,true> const&)#1} &,re::Pair<unsigned short const*,void *,true>*,false>(__n128 *a1, __n128 *a2, uint64_t a3, uint64_t a4, char a5, __n128 result)
{
LABEL_1:
  v9 = a2 - 1;
  v10 = a2 - 2;
  v11 = a2 - 3;
  v12 = a1;
LABEL_2:
  v13 = 1 - a4;
  while (1)
  {
    a1 = v12;
    v14 = v13;
    v15 = a2 - v12;
    if (v15 <= 2)
    {
      if (v15 < 2)
      {
        return result;
      }

      if (v15 == 2)
      {
        v47 = a2[-1].n128_u64[0];
        v43 = a2 - 1;
        if (*v47 >= *v12->n128_u64[0])
        {
          return result;
        }

LABEL_77:
        v71 = *v12;
        *v12 = *v43;
        result = v71;
        goto LABEL_78;
      }

      goto LABEL_10;
    }

    if (v15 == 3)
    {
      v42 = v12 + 1;
      v44 = a2[-1].n128_u64[0];
      v43 = a2 - 1;
      v45 = *v12[1].n128_u64[0];
      v46 = *v44;
      if (v45 < *v12->n128_u64[0])
      {
        if (v46 < v45)
        {
          goto LABEL_77;
        }

        v70 = *v12;
        *v12 = *v42;
        result = v70;
        *v42 = v70;
        if (*v43->n128_u64[0] >= *v12[1].n128_u64[0])
        {
          return result;
        }

        result = *v42;
        *v42 = *v43;
LABEL_78:
        *v43 = result;
        return result;
      }

      if (v46 >= v45)
      {
        return result;
      }

      result = *v42;
      *v42 = *v43;
      *v43 = result;
      goto LABEL_104;
    }

    if (v15 == 4)
    {
      break;
    }

    if (v15 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned short const*,void *,true> const&,re::Pair<unsigned short const*,void *,true> const&)#1} &,re::Pair<unsigned short const*,void *,true>*,0>(v12, v12 + 1, v12 + 2, v12 + 3, a2 - 1, result).n128_u64[0];
      return result;
    }

LABEL_10:
    if (v15 <= 23)
    {
      if (a5)
      {

        std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned short const*,void *,true> const&,re::Pair<unsigned short const*,void *,true> const&)#1} &,re::Pair<unsigned short const*,void *,true>*>(v12, a2);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned short const*,void *,true> const&,re::Pair<unsigned short const*,void *,true> const&)#1} &,re::Pair<unsigned short const*,void *,true>*>(v12, a2);
      }

      return result;
    }

    if (v13 == 1)
    {
      if (v12 != a2)
      {

        std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned short const*,void *,true> const&,re::Pair<unsigned short const*,void *,true> const&)#1} &,re::Pair<unsigned short const*,void *,true>*,re::Pair<unsigned short const*,void *,true>*>(v12, a2, a2, a3);
      }

      return result;
    }

    v16 = &v12[v15 >> 1];
    v17 = v16;
    v18 = *v9->n128_u64[0];
    if (v15 >= 0x81)
    {
      v19 = *v16->n128_u64[0];
      if (v19 >= *v12->n128_u64[0])
      {
        if (v18 < v19)
        {
          v55 = *v16;
          *v16 = *v9;
          *v9 = v55;
          if (*v16->n128_u64[0] < *v12->n128_u64[0])
          {
            v56 = *v12;
            *v12 = *v16;
            *v16 = v56;
          }
        }
      }

      else
      {
        if (v18 >= v19)
        {
          v59 = *v12;
          *v12 = *v16;
          *v16 = v59;
          if (*v9->n128_u64[0] >= *v16->n128_u64[0])
          {
            goto LABEL_28;
          }

          v53 = *v16;
          *v16 = *v9;
        }

        else
        {
          v53 = *v12;
          *v12 = *v9;
        }

        *v9 = v53;
      }

LABEL_28:
      v21 = v12 + 1;
      v22 = &v16[-1];
      v23 = *v16[-1].n128_u64[0];
      v24 = *v10->n128_u64[0];
      if (v23 >= *v12[1].n128_u64[0])
      {
        if (v24 < v23)
        {
          v60 = *v22;
          *v22 = *v10;
          *v10 = v60;
          if (**v22 < *v21->n128_u64[0])
          {
            v26 = *v21;
            *v21 = *v22;
            *v22 = v26;
          }
        }
      }

      else
      {
        if (v24 >= v23)
        {
          v27 = *v21;
          *v21 = *v22;
          *v22 = v27;
          if (*v10->n128_u64[0] >= **v22)
          {
            goto LABEL_40;
          }

          v62 = *v22;
          *v22 = *v10;
          v25 = v62;
        }

        else
        {
          v25 = *v21;
          *v21 = *v10;
        }

        *v10 = v25;
      }

LABEL_40:
      v28 = v12 + 2;
      v30 = v16[1].n128_u64[0];
      v29 = v16 + 1;
      v31 = *v30;
      v32 = *v11->n128_u64[0];
      if (v31 >= *v12[2].n128_u64[0])
      {
        if (v32 < v31)
        {
          v63 = *v29;
          *v29 = *v11;
          *v11 = v63;
          if (*v29->n128_u64[0] < *v28->n128_u64[0])
          {
            v34 = *v28;
            *v28 = *v29;
            *v29 = v34;
          }
        }
      }

      else
      {
        if (v32 >= v31)
        {
          v35 = *v28;
          *v28 = *v29;
          *v29 = v35;
          if (*v11->n128_u64[0] >= *v29->n128_u64[0])
          {
            goto LABEL_49;
          }

          v64 = *v29;
          *v29 = *v11;
          v33 = v64;
        }

        else
        {
          v33 = *v28;
          *v28 = *v11;
        }

        *v11 = v33;
      }

LABEL_49:
      v36 = *v17->n128_u64[0];
      v37 = *v29->n128_u64[0];
      if (v36 >= **v22)
      {
        if (v37 < v36)
        {
          v66 = *v17;
          *v17 = *v29;
          *v29 = v66;
          if (*v17->n128_u64[0] < **v22)
          {
            v67 = *v22;
            *v22 = *v17;
            *v17 = v67;
          }
        }

        goto LABEL_58;
      }

      if (v37 >= v36)
      {
        v68 = *v22;
        *v22 = *v17;
        *v17 = v68;
        if (*v29->n128_u64[0] >= *v17->n128_u64[0])
        {
LABEL_58:
          v69 = *v12;
          *v12 = *v17;
          *v17 = v69;
          goto LABEL_59;
        }

        v65 = *v17;
        *v17 = *v29;
      }

      else
      {
        v65 = *v22;
        *v22 = *v29;
      }

      *v29 = v65;
      goto LABEL_58;
    }

    v20 = *v12->n128_u64[0];
    if (v20 >= *v17->n128_u64[0])
    {
      if (v18 < v20)
      {
        v57 = *v12;
        *v12 = *v9;
        *v9 = v57;
        if (*v12->n128_u64[0] < *v17->n128_u64[0])
        {
          v58 = *v17;
          *v17 = *v12;
          *v12 = v58;
        }
      }
    }

    else
    {
      if (v18 < v20)
      {
        v54 = *v17;
        *v17 = *v9;
LABEL_36:
        *v9 = v54;
        goto LABEL_59;
      }

      v61 = *v17;
      *v17 = *v12;
      *v12 = v61;
      if (*v9->n128_u64[0] < *v12->n128_u64[0])
      {
        v54 = *v12;
        *v12 = *v9;
        goto LABEL_36;
      }
    }

LABEL_59:
    if ((a5 & 1) == 0 && *v12[-1].n128_u64[0] >= *v12->n128_u64[0])
    {
      v12 = std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,re::Pair<unsigned short const*,void *,true> *,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned short const*,void *,true> const&,re::Pair<unsigned short const*,void *,true> const&)#1} &>(v12, a2);
      goto LABEL_66;
    }

    v38 = std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,re::Pair<unsigned short const*,void *,true> *,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned short const*,void *,true> const&,re::Pair<unsigned short const*,void *,true> const&)#1} &>(v12, a2);
    if ((v39 & 1) == 0)
    {
      goto LABEL_64;
    }

    v40 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned short const*,void *,true> const&,re::Pair<unsigned short const*,void *,true> const&)#1} &,re::Pair<unsigned short const*,void *,true>*>(v12, v38, result);
    v12 = v38 + 1;
    if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned short const*,void *,true> const&,re::Pair<unsigned short const*,void *,true> const&)#1} &,re::Pair<unsigned short const*,void *,true>*>(v38 + 1, a2, v41))
    {
      a4 = -v14;
      a2 = v38;
      if (v40)
      {
        return result;
      }

      goto LABEL_1;
    }

    v13 = v14 + 1;
    if (!v40)
    {
LABEL_64:
      result = std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned short const*,void *,true> const&,re::Pair<unsigned short const*,void *,true> const&)#1} &,re::Pair<unsigned short const*,void *,true>*,false>(a1, v38, a3, -v14, a5 & 1, result);
      v12 = v38 + 1;
LABEL_66:
      a5 = 0;
      a4 = -v14;
      goto LABEL_2;
    }
  }

  v42 = v12 + 1;
  v48 = v12 + 2;
  v49 = v12[2].n128_u64[0];
  v50 = *v12[1].n128_u64[0];
  v51 = *v49;
  if (v50 >= *v12->n128_u64[0])
  {
    if (v51 < v50)
    {
      result = *v42;
      *v42 = *v48;
      *v48 = result;
      if (*v12[1].n128_u64[0] < *v12->n128_u64[0])
      {
        v73 = *v12;
        *v12 = *v42;
        result = v73;
        *v42 = v73;
      }
    }
  }

  else
  {
    if (v51 < v50)
    {
      v72 = *v12;
      *v12 = *v48;
      result = v72;
      goto LABEL_100;
    }

    v74 = *v12;
    *v12 = *v42;
    result = v74;
    *v42 = v74;
    if (*v49 < *v12[1].n128_u64[0])
    {
      result = *v42;
      *v42 = *v48;
LABEL_100:
      *v48 = result;
    }
  }

  if (*v9->n128_u64[0] >= *v48->n128_u64[0])
  {
    return result;
  }

  result = *v48;
  *v48 = *v9;
  *v9 = result;
  if (*v48->n128_u64[0] >= *v42->n128_u64[0])
  {
    return result;
  }

  result = *v42;
  *v42 = *v48;
  *v48 = result;
LABEL_104:
  if (*v12[1].n128_u64[0] < *v12->n128_u64[0])
  {
    v75 = *v12;
    *v12 = *v42;
    result = v75;
    *v42 = v75;
  }

  return result;
}

unsigned __int16 **std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned short const*,void *,true> const&,re::Pair<unsigned short const*,void *,true> const&)#1} &,re::Pair<unsigned short const*,void *,true>*>(unsigned __int16 **result, unsigned __int16 **a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    if (result + 2 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v2;
        v6 = v4[2];
        if (*v6 < **v4)
        {
          v7 = v4[3];
          v8 = v3;
          while (1)
          {
            *(result + v8 + 16) = *(result + v8);
            if (!v8)
            {
              break;
            }

            v9 = **(result + v8 - 16);
            v8 -= 16;
            if (*v6 >= v9)
            {
              v10 = (result + v8 + 16);
              goto LABEL_10;
            }
          }

          v10 = result;
LABEL_10:
          *v10 = v6;
          v10[1] = v7;
        }

        v2 = v5 + 2;
        v3 += 16;
        v4 = v5;
      }

      while (v5 + 2 != a2);
    }
  }

  return result;
}

unsigned __int16 **std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned short const*,void *,true> const&,re::Pair<unsigned short const*,void *,true> const&)#1} &,re::Pair<unsigned short const*,void *,true>*>(unsigned __int16 **result, unsigned __int16 **a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    while (v2 != a2)
    {
      v3 = v2;
      v4 = result[2];
      if (*v4 < **result)
      {
        v5 = result[3];
        v6 = v3;
        do
        {
          *v6 = *(v6 - 1);
          v7 = *(v6 - 4);
          v6 -= 2;
        }

        while (*v4 < *v7);
        *v6 = v4;
        v6[1] = v5;
      }

      v2 = v3 + 2;
      result = v3;
    }
  }

  return result;
}

unsigned __int16 **std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,re::Pair<unsigned short const*,void *,true> *,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned short const*,void *,true> const&,re::Pair<unsigned short const*,void *,true> const&)#1} &>(unsigned __int16 **a1, unsigned __int16 **a2)
{
  v2 = *a1;
  v3 = *a1;
  v4 = **a1;
  if (v4 >= **(a2 - 2))
  {
    v7 = a1 + 2;
    do
    {
      v5 = v7;
      if (v7 >= a2)
      {
        break;
      }

      v7 += 2;
    }

    while (v4 >= **v5);
  }

  else
  {
    v5 = a1;
    do
    {
      v6 = v5[2];
      v5 += 2;
    }

    while (v4 >= *v6);
  }

  if (v5 < a2)
  {
    do
    {
      v8 = *(a2 - 2);
      a2 -= 2;
    }

    while (v4 < *v8);
  }

  while (v5 < a2)
  {
    v13 = *v5;
    *v5 = *a2;
    *a2 = v13;
    v9 = *v3;
    do
    {
      v10 = v5[2];
      v5 += 2;
    }

    while (v9 >= *v10);
    do
    {
      v11 = *(a2 - 2);
      a2 -= 2;
    }

    while (v9 < *v11);
  }

  if (v5 - 2 != a1)
  {
    *a1 = *(v5 - 1);
  }

  *(v5 - 1) = v2;
  return v5;
}

unsigned __int16 **std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,re::Pair<unsigned short const*,void *,true> *,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned short const*,void *,true> const&,re::Pair<unsigned short const*,void *,true> const&)#1} &>(unsigned __int16 **a1, unsigned __int16 **a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = *a1;
  v5 = **a1;
  do
  {
    v6 = *a1[v2 + 2];
    v2 += 2;
  }

  while (v6 < v5);
  v7 = &a1[v2];
  v8 = &a1[v2 - 2];
  if (v2 == 2)
  {
    do
    {
      if (v7 >= a2)
      {
        break;
      }

      v10 = *(a2 - 2);
      a2 -= 2;
    }

    while (*v10 >= v5);
  }

  else
  {
    do
    {
      v9 = *(a2 - 2);
      a2 -= 2;
    }

    while (*v9 >= v5);
  }

  if (v7 < a2)
  {
    v11 = &a1[v2];
    v12 = a2;
    do
    {
      v13 = *v11;
      *v11 = *v12;
      *v12 = v13;
      v14 = *v4;
      do
      {
        v15 = v11[2];
        v11 += 2;
      }

      while (*v15 < v14);
      do
      {
        v16 = *(v12 - 2);
        v12 -= 2;
      }

      while (*v16 >= v14);
    }

    while (v11 < v12);
    v8 = v11 - 2;
  }

  if (v8 != a1)
  {
    *a1 = *v8;
  }

  *v8 = v3;
  return v8;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned short const*,void *,true> const&,re::Pair<unsigned short const*,void *,true> const&)#1} &,re::Pair<unsigned short const*,void *,true>*>(__n128 *a1, __n128 *a2, __n128 a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = a1 + 1;
      v7 = a2[-1].n128_u64[0];
      v4 = a2 - 1;
      v8 = *a1[1].n128_u64[0];
      v9 = *v7;
      if (v8 < *a1->n128_u64[0])
      {
        if (v9 >= v8)
        {
          v30 = *a1;
          *a1 = *v6;
          *v6 = v30;
          if (*v4->n128_u64[0] >= *a1[1].n128_u64[0])
          {
            return 1;
          }

          v10 = *v6;
          *v6 = *v4;
          goto LABEL_13;
        }

LABEL_12:
        v10 = *a1;
        *a1 = *v4;
LABEL_13:
        *v4 = v10;
        return 1;
      }

      if (v9 >= v8)
      {
        return 1;
      }

      v25 = *v6;
      *v6 = *v4;
      *v4 = v25;
LABEL_50:
      if (*a1[1].n128_u64[0] < *a1->n128_u64[0])
      {
        v43 = *a1;
        *a1 = *v6;
        *v6 = v43;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_14;
      }

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned short const*,void *,true> const&,re::Pair<unsigned short const*,void *,true> const&)#1} &,re::Pair<unsigned short const*,void *,true>*,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
      return 1;
    }

    v6 = a1 + 1;
    v18 = a1 + 2;
    v19 = a1[2].n128_u64[0];
    v20 = a2 - 1;
    v21 = a1->n128_u64[0];
    v22 = *a1[1].n128_u64[0];
    v23 = *v19;
    if (v22 >= *a1->n128_u64[0])
    {
      if (v23 < v22)
      {
        v28 = *v6;
        *v6 = *v18;
        *v18 = v28;
        if (*v6->n128_u64[0] < *v21)
        {
          v29 = *a1;
          *a1 = *v6;
          *v6 = v29;
        }
      }

      goto LABEL_47;
    }

    if (v23 >= v22)
    {
      v40 = *a1;
      *a1 = *v6;
      *v6 = v40;
      if (*v19 >= *a1[1].n128_u64[0])
      {
        goto LABEL_47;
      }

      v24 = *v6;
      *v6 = *v18;
    }

    else
    {
      v24 = *a1;
      *a1 = *v18;
    }

    *v18 = v24;
LABEL_47:
    if (*v20->n128_u64[0] >= *v18->n128_u64[0])
    {
      return 1;
    }

    v41 = *v18;
    *v18 = *v20;
    *v20 = v41;
    if (*v18->n128_u64[0] >= *v6->n128_u64[0])
    {
      return 1;
    }

    v42 = *v6;
    *v6 = *v18;
    *v18 = v42;
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v5 = a2[-1].n128_u64[0];
    v4 = a2 - 1;
    if (*v5 >= *a1->n128_u64[0])
    {
      return 1;
    }

    goto LABEL_12;
  }

LABEL_14:
  v11 = a1 + 2;
  v12 = a1[2].n128_u64[0];
  v13 = a1 + 1;
  v14 = a1->n128_u64[0];
  v15 = *a1[1].n128_u64[0];
  v16 = *v12;
  if (v15 >= *a1->n128_u64[0])
  {
    if (v16 < v15)
    {
      v26 = *v13;
      *v13 = *v11;
      *v11 = v26;
      if (*v13->n128_u64[0] < *v14)
      {
        v27 = *a1;
        *a1 = *v13;
        *v13 = v27;
      }
    }
  }

  else
  {
    if (v16 >= v15)
    {
      v31 = *a1;
      *a1 = *v13;
      *v13 = v31;
      if (*v12 >= *a1[1].n128_u64[0])
      {
        goto LABEL_33;
      }

      v17 = *v13;
      *v13 = *v11;
    }

    else
    {
      v17 = *a1;
      *a1 = *v11;
    }

    *v11 = v17;
  }

LABEL_33:
  v32 = a1 + 3;
  if (&a1[3] == a2)
  {
    return 1;
  }

  v33 = 0;
  v34 = 0;
  while (1)
  {
    v35 = v32->n128_u64[0];
    if (*v32->n128_u64[0] < *v11->n128_u64[0])
    {
      v36 = v32->n128_u64[1];
      v37 = v33;
      while (1)
      {
        *(a1 + v37 + 48) = *(a1 + v37 + 32);
        if (v37 == -32)
        {
          break;
        }

        v38 = **(a1[1].n128_u64 + v37);
        v37 -= 16;
        if (*v35 >= v38)
        {
          v39 = (a1 + v37 + 48);
          goto LABEL_41;
        }
      }

      v39 = a1;
LABEL_41:
      v39->n128_u64[0] = v35;
      v39->n128_u64[1] = v36;
      if (++v34 == 8)
      {
        return &v32[1] == a2;
      }
    }

    v11 = v32;
    v33 += 16;
    if (++v32 == a2)
    {
      return 1;
    }
  }
}

unsigned __int16 **std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned short const*,void *,true> const&,re::Pair<unsigned short const*,void *,true> const&)#1} &,re::Pair<unsigned short const*,void *,true>*,re::Pair<unsigned short const*,void *,true>*>(unsigned __int16 **a1, unsigned __int16 **a2, unsigned __int16 **a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = (a2 - a1) >> 4;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[2 * v9];
      do
      {
        std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned short const*,void *,true> const&,re::Pair<unsigned short const*,void *,true> const&)#1} &,re::Pair<unsigned short const*,void *,true>*>(a1, a4, v8, v11);
        v11 -= 2;
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        if (**v12 < **a1)
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned short const*,void *,true> const&,re::Pair<unsigned short const*,void *,true> const&)#1} &,re::Pair<unsigned short const*,void *,true>*>(a1, a4, v8, a1);
        }

        v12 += 2;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v14 = 0;
        v23 = *a1;
        v15 = a1;
        do
        {
          v16 = &v15[2 * v14];
          v17 = v16 + 2;
          v18 = (2 * v14) | 1;
          v14 = 2 * v14 + 2;
          if (v14 >= v8)
          {
            v14 = v18;
          }

          else
          {
            v20 = v16[4];
            v19 = v16 + 4;
            if (**(v19 - 2) >= *v20)
            {
              v14 = v18;
            }

            else
            {
              v17 = v19;
            }
          }

          *v15 = *v17;
          v15 = v17;
        }

        while (v14 <= ((v8 - 2) >> 1));
        v6 -= 2;
        if (v17 == v6)
        {
          *v17 = v23;
        }

        else
        {
          *v17 = *v6;
          *v6 = v23;
          std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned short const*,void *,true> const&,re::Pair<unsigned short const*,void *,true> const&)#1} &,re::Pair<unsigned short const*,void *,true>*>(a1, (v17 + 2), a4, ((v17 + 2) - a1) >> 4);
        }
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned short const*,void *,true> const&,re::Pair<unsigned short const*,void *,true> const&)#1} &,re::Pair<unsigned short const*,void *,true>*>(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int16 **a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 4)
    {
      v6 = v4 >> 3;
      v7 = (v4 >> 3) + 1;
      v8 = (result + 16 * v7);
      v9 = v6 + 2;
      if (v9 >= a3)
      {
        v10 = **v8;
      }

      else
      {
        v10 = **v8;
        v11 = *v8[2];
        v12 = v10 >= v11;
        if (v10 <= v11)
        {
          v10 = *v8[2];
        }

        if (!v12)
        {
          v8 += 2;
          v7 = v9;
        }
      }

      v13 = *a4;
      if (v10 >= **a4)
      {
        v14 = a4[1];
        do
        {
          v15 = a4;
          a4 = v8;
          *v15 = *v8;
          if (v5 < v7)
          {
            break;
          }

          v16 = (2 * v7) | 1;
          v8 = (result + 16 * v16);
          v7 = 2 * v7 + 2;
          if (v7 >= a3)
          {
            v17 = **v8;
            v7 = v16;
          }

          else
          {
            v17 = **v8;
            v18 = *v8[2];
            v19 = v17 >= v18;
            if (v17 <= v18)
            {
              v17 = *v8[2];
            }

            if (v19)
            {
              v7 = v16;
            }

            else
            {
              v8 += 2;
            }
          }
        }

        while (v17 >= *v13);
        *a4 = v13;
        a4[1] = v14;
      }
    }
  }

  return result;
}

uint64_t std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned short const*,void *,true> const&,re::Pair<unsigned short const*,void *,true> const&)#1} &,re::Pair<unsigned short const*,void *,true>*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = v4 >> 1;
    v6 = (result + 16 * (v4 >> 1));
    v7 = (a2 - 16);
    v8 = *(a2 - 16);
    if (**v6 < *v8)
    {
      v9 = *(a2 - 8);
      do
      {
        v10 = v7;
        v7 = v6;
        *v10 = *v6;
        if (!v5)
        {
          break;
        }

        v5 = (v5 - 1) >> 1;
        v6 = (result + 16 * v5);
      }

      while (**v6 < *v8);
      *v7 = v8;
      v7[1] = v9;
    }
  }

  return result;
}

__n128 std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned char>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned char const*,void *,true> const&,re::Pair<unsigned char const*,void *,true> const&)#1} &,re::Pair<unsigned char const*,void *,true>*,false>(__n128 *a1, __n128 *a2, uint64_t a3, uint64_t a4, char a5, __n128 result)
{
LABEL_1:
  v9 = a2 - 1;
  v10 = a2 - 2;
  v11 = a2 - 3;
  v12 = a1;
LABEL_2:
  v13 = 1 - a4;
  while (1)
  {
    a1 = v12;
    v14 = v13;
    v15 = a2 - v12;
    if (v15 <= 2)
    {
      if (v15 < 2)
      {
        return result;
      }

      if (v15 == 2)
      {
        v47 = a2[-1].n128_u64[0];
        v43 = a2 - 1;
        if (*v47 >= *v12->n128_u64[0])
        {
          return result;
        }

LABEL_77:
        v71 = *v12;
        *v12 = *v43;
        result = v71;
        goto LABEL_78;
      }

      goto LABEL_10;
    }

    if (v15 == 3)
    {
      v42 = v12 + 1;
      v44 = a2[-1].n128_u64[0];
      v43 = a2 - 1;
      v45 = *v12[1].n128_u64[0];
      v46 = *v44;
      if (v45 < *v12->n128_u64[0])
      {
        if (v46 < v45)
        {
          goto LABEL_77;
        }

        v70 = *v12;
        *v12 = *v42;
        result = v70;
        *v42 = v70;
        if (*v43->n128_u64[0] >= *v12[1].n128_u64[0])
        {
          return result;
        }

        result = *v42;
        *v42 = *v43;
LABEL_78:
        *v43 = result;
        return result;
      }

      if (v46 >= v45)
      {
        return result;
      }

      result = *v42;
      *v42 = *v43;
      *v43 = result;
      goto LABEL_104;
    }

    if (v15 == 4)
    {
      break;
    }

    if (v15 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned char>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned char const*,void *,true> const&,re::Pair<unsigned char const*,void *,true> const&)#1} &,re::Pair<unsigned char const*,void *,true>*,0>(v12, v12 + 1, v12 + 2, v12 + 3, a2 - 1, result).n128_u64[0];
      return result;
    }

LABEL_10:
    if (v15 <= 23)
    {
      if (a5)
      {

        std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned char>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned char const*,void *,true> const&,re::Pair<unsigned char const*,void *,true> const&)#1} &,re::Pair<unsigned char const*,void *,true>*>(v12, a2);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned char>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned char const*,void *,true> const&,re::Pair<unsigned char const*,void *,true> const&)#1} &,re::Pair<unsigned char const*,void *,true>*>(v12, a2);
      }

      return result;
    }

    if (v13 == 1)
    {
      if (v12 != a2)
      {

        std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned char>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned char const*,void *,true> const&,re::Pair<unsigned char const*,void *,true> const&)#1} &,re::Pair<unsigned char const*,void *,true>*,re::Pair<unsigned char const*,void *,true>*>(v12, a2, a2, a3);
      }

      return result;
    }

    v16 = &v12[v15 >> 1];
    v17 = v16;
    v18 = *v9->n128_u64[0];
    if (v15 >= 0x81)
    {
      v19 = *v16->n128_u64[0];
      if (v19 >= *v12->n128_u64[0])
      {
        if (v18 < v19)
        {
          v55 = *v16;
          *v16 = *v9;
          *v9 = v55;
          if (*v16->n128_u64[0] < *v12->n128_u64[0])
          {
            v56 = *v12;
            *v12 = *v16;
            *v16 = v56;
          }
        }
      }

      else
      {
        if (v18 >= v19)
        {
          v59 = *v12;
          *v12 = *v16;
          *v16 = v59;
          if (*v9->n128_u64[0] >= *v16->n128_u64[0])
          {
            goto LABEL_28;
          }

          v53 = *v16;
          *v16 = *v9;
        }

        else
        {
          v53 = *v12;
          *v12 = *v9;
        }

        *v9 = v53;
      }

LABEL_28:
      v21 = v12 + 1;
      v22 = &v16[-1];
      v23 = *v16[-1].n128_u64[0];
      v24 = *v10->n128_u64[0];
      if (v23 >= *v12[1].n128_u64[0])
      {
        if (v24 < v23)
        {
          v60 = *v22;
          *v22 = *v10;
          *v10 = v60;
          if (**v22 < *v21->n128_u64[0])
          {
            v26 = *v21;
            *v21 = *v22;
            *v22 = v26;
          }
        }
      }

      else
      {
        if (v24 >= v23)
        {
          v27 = *v21;
          *v21 = *v22;
          *v22 = v27;
          if (*v10->n128_u64[0] >= **v22)
          {
            goto LABEL_40;
          }

          v62 = *v22;
          *v22 = *v10;
          v25 = v62;
        }

        else
        {
          v25 = *v21;
          *v21 = *v10;
        }

        *v10 = v25;
      }

LABEL_40:
      v28 = v12 + 2;
      v30 = v16[1].n128_u64[0];
      v29 = v16 + 1;
      v31 = *v30;
      v32 = *v11->n128_u64[0];
      if (v31 >= *v12[2].n128_u64[0])
      {
        if (v32 < v31)
        {
          v63 = *v29;
          *v29 = *v11;
          *v11 = v63;
          if (*v29->n128_u64[0] < *v28->n128_u64[0])
          {
            v34 = *v28;
            *v28 = *v29;
            *v29 = v34;
          }
        }
      }

      else
      {
        if (v32 >= v31)
        {
          v35 = *v28;
          *v28 = *v29;
          *v29 = v35;
          if (*v11->n128_u64[0] >= *v29->n128_u64[0])
          {
            goto LABEL_49;
          }

          v64 = *v29;
          *v29 = *v11;
          v33 = v64;
        }

        else
        {
          v33 = *v28;
          *v28 = *v11;
        }

        *v11 = v33;
      }

LABEL_49:
      v36 = *v17->n128_u64[0];
      v37 = *v29->n128_u64[0];
      if (v36 >= **v22)
      {
        if (v37 < v36)
        {
          v66 = *v17;
          *v17 = *v29;
          *v29 = v66;
          if (*v17->n128_u64[0] < **v22)
          {
            v67 = *v22;
            *v22 = *v17;
            *v17 = v67;
          }
        }

        goto LABEL_58;
      }

      if (v37 >= v36)
      {
        v68 = *v22;
        *v22 = *v17;
        *v17 = v68;
        if (*v29->n128_u64[0] >= *v17->n128_u64[0])
        {
LABEL_58:
          v69 = *v12;
          *v12 = *v17;
          *v17 = v69;
          goto LABEL_59;
        }

        v65 = *v17;
        *v17 = *v29;
      }

      else
      {
        v65 = *v22;
        *v22 = *v29;
      }

      *v29 = v65;
      goto LABEL_58;
    }

    v20 = *v12->n128_u64[0];
    if (v20 >= *v17->n128_u64[0])
    {
      if (v18 < v20)
      {
        v57 = *v12;
        *v12 = *v9;
        *v9 = v57;
        if (*v12->n128_u64[0] < *v17->n128_u64[0])
        {
          v58 = *v17;
          *v17 = *v12;
          *v12 = v58;
        }
      }
    }

    else
    {
      if (v18 < v20)
      {
        v54 = *v17;
        *v17 = *v9;
LABEL_36:
        *v9 = v54;
        goto LABEL_59;
      }

      v61 = *v17;
      *v17 = *v12;
      *v12 = v61;
      if (*v9->n128_u64[0] < *v12->n128_u64[0])
      {
        v54 = *v12;
        *v12 = *v9;
        goto LABEL_36;
      }
    }

LABEL_59:
    if ((a5 & 1) == 0 && *v12[-1].n128_u64[0] >= *v12->n128_u64[0])
    {
      v12 = std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,re::Pair<unsigned char const*,void *,true> *,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned char>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned char const*,void *,true> const&,re::Pair<unsigned char const*,void *,true> const&)#1} &>(v12, a2);
      goto LABEL_66;
    }

    v38 = std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,re::Pair<unsigned char const*,void *,true> *,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned char>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned char const*,void *,true> const&,re::Pair<unsigned char const*,void *,true> const&)#1} &>(v12, a2);
    if ((v39 & 1) == 0)
    {
      goto LABEL_64;
    }

    v40 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned char>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned char const*,void *,true> const&,re::Pair<unsigned char const*,void *,true> const&)#1} &,re::Pair<unsigned char const*,void *,true>*>(v12, v38, result);
    v12 = v38 + 1;
    if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned char>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned char const*,void *,true> const&,re::Pair<unsigned char const*,void *,true> const&)#1} &,re::Pair<unsigned char const*,void *,true>*>(v38 + 1, a2, v41))
    {
      a4 = -v14;
      a2 = v38;
      if (v40)
      {
        return result;
      }

      goto LABEL_1;
    }

    v13 = v14 + 1;
    if (!v40)
    {
LABEL_64:
      result = std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned char>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned char const*,void *,true> const&,re::Pair<unsigned char const*,void *,true> const&)#1} &,re::Pair<unsigned char const*,void *,true>*,false>(a1, v38, a3, -v14, a5 & 1, result);
      v12 = v38 + 1;
LABEL_66:
      a5 = 0;
      a4 = -v14;
      goto LABEL_2;
    }
  }

  v42 = v12 + 1;
  v48 = v12 + 2;
  v49 = v12[2].n128_u64[0];
  v50 = *v12[1].n128_u64[0];
  v51 = *v49;
  if (v50 >= *v12->n128_u64[0])
  {
    if (v51 < v50)
    {
      result = *v42;
      *v42 = *v48;
      *v48 = result;
      if (*v12[1].n128_u64[0] < *v12->n128_u64[0])
      {
        v73 = *v12;
        *v12 = *v42;
        result = v73;
        *v42 = v73;
      }
    }
  }

  else
  {
    if (v51 < v50)
    {
      v72 = *v12;
      *v12 = *v48;
      result = v72;
      goto LABEL_100;
    }

    v74 = *v12;
    *v12 = *v42;
    result = v74;
    *v42 = v74;
    if (*v49 < *v12[1].n128_u64[0])
    {
      result = *v42;
      *v42 = *v48;
LABEL_100:
      *v48 = result;
    }
  }

  if (*v9->n128_u64[0] >= *v48->n128_u64[0])
  {
    return result;
  }

  result = *v48;
  *v48 = *v9;
  *v9 = result;
  if (*v48->n128_u64[0] >= *v42->n128_u64[0])
  {
    return result;
  }

  result = *v42;
  *v42 = *v48;
  *v48 = result;
LABEL_104:
  if (*v12[1].n128_u64[0] < *v12->n128_u64[0])
  {
    v75 = *v12;
    *v12 = *v42;
    result = v75;
    *v42 = v75;
  }

  return result;
}

unsigned __int8 **std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned char>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned char const*,void *,true> const&,re::Pair<unsigned char const*,void *,true> const&)#1} &,re::Pair<unsigned char const*,void *,true>*>(unsigned __int8 **result, unsigned __int8 **a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    if (result + 2 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v2;
        v6 = v4[2];
        if (*v6 < **v4)
        {
          v7 = v4[3];
          v8 = v3;
          while (1)
          {
            *(result + v8 + 16) = *(result + v8);
            if (!v8)
            {
              break;
            }

            v9 = **(result + v8 - 16);
            v8 -= 16;
            if (*v6 >= v9)
            {
              v10 = (result + v8 + 16);
              goto LABEL_10;
            }
          }

          v10 = result;
LABEL_10:
          *v10 = v6;
          v10[1] = v7;
        }

        v2 = v5 + 2;
        v3 += 16;
        v4 = v5;
      }

      while (v5 + 2 != a2);
    }
  }

  return result;
}

unsigned __int8 **std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned char>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned char const*,void *,true> const&,re::Pair<unsigned char const*,void *,true> const&)#1} &,re::Pair<unsigned char const*,void *,true>*>(unsigned __int8 **result, unsigned __int8 **a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    while (v2 != a2)
    {
      v3 = v2;
      v4 = result[2];
      if (*v4 < **result)
      {
        v5 = result[3];
        v6 = v3;
        do
        {
          *v6 = *(v6 - 1);
          v7 = *(v6 - 4);
          v6 -= 2;
        }

        while (*v4 < *v7);
        *v6 = v4;
        v6[1] = v5;
      }

      v2 = v3 + 2;
      result = v3;
    }
  }

  return result;
}

unsigned __int8 **std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,re::Pair<unsigned char const*,void *,true> *,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned char>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned char const*,void *,true> const&,re::Pair<unsigned char const*,void *,true> const&)#1} &>(unsigned __int8 **a1, unsigned __int8 **a2)
{
  v2 = *a1;
  v3 = *a1;
  v4 = **a1;
  if (v4 >= **(a2 - 2))
  {
    v7 = a1 + 2;
    do
    {
      v5 = v7;
      if (v7 >= a2)
      {
        break;
      }

      v7 += 2;
    }

    while (v4 >= **v5);
  }

  else
  {
    v5 = a1;
    do
    {
      v6 = v5[2];
      v5 += 2;
    }

    while (v4 >= *v6);
  }

  if (v5 < a2)
  {
    do
    {
      v8 = *(a2 - 2);
      a2 -= 2;
    }

    while (v4 < *v8);
  }

  while (v5 < a2)
  {
    v13 = *v5;
    *v5 = *a2;
    *a2 = v13;
    v9 = *v3;
    do
    {
      v10 = v5[2];
      v5 += 2;
    }

    while (v9 >= *v10);
    do
    {
      v11 = *(a2 - 2);
      a2 -= 2;
    }

    while (v9 < *v11);
  }

  if (v5 - 2 != a1)
  {
    *a1 = *(v5 - 1);
  }

  *(v5 - 1) = v2;
  return v5;
}

unsigned __int8 **std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,re::Pair<unsigned char const*,void *,true> *,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned char>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned char const*,void *,true> const&,re::Pair<unsigned char const*,void *,true> const&)#1} &>(unsigned __int8 **a1, unsigned __int8 **a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = *a1;
  v5 = **a1;
  do
  {
    v6 = *a1[v2 + 2];
    v2 += 2;
  }

  while (v6 < v5);
  v7 = &a1[v2];
  v8 = &a1[v2 - 2];
  if (v2 == 2)
  {
    do
    {
      if (v7 >= a2)
      {
        break;
      }

      v10 = *(a2 - 2);
      a2 -= 2;
    }

    while (*v10 >= v5);
  }

  else
  {
    do
    {
      v9 = *(a2 - 2);
      a2 -= 2;
    }

    while (*v9 >= v5);
  }

  if (v7 < a2)
  {
    v11 = &a1[v2];
    v12 = a2;
    do
    {
      v13 = *v11;
      *v11 = *v12;
      *v12 = v13;
      v14 = *v4;
      do
      {
        v15 = v11[2];
        v11 += 2;
      }

      while (*v15 < v14);
      do
      {
        v16 = *(v12 - 2);
        v12 -= 2;
      }

      while (*v16 >= v14);
    }

    while (v11 < v12);
    v8 = v11 - 2;
  }

  if (v8 != a1)
  {
    *a1 = *v8;
  }

  *v8 = v3;
  return v8;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned char>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned char const*,void *,true> const&,re::Pair<unsigned char const*,void *,true> const&)#1} &,re::Pair<unsigned char const*,void *,true>*>(__n128 *a1, __n128 *a2, __n128 a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = a1 + 1;
      v7 = a2[-1].n128_u64[0];
      v4 = a2 - 1;
      v8 = *a1[1].n128_u64[0];
      v9 = *v7;
      if (v8 < *a1->n128_u64[0])
      {
        if (v9 >= v8)
        {
          v30 = *a1;
          *a1 = *v6;
          *v6 = v30;
          if (*v4->n128_u64[0] >= *a1[1].n128_u64[0])
          {
            return 1;
          }

          v10 = *v6;
          *v6 = *v4;
          goto LABEL_13;
        }

LABEL_12:
        v10 = *a1;
        *a1 = *v4;
LABEL_13:
        *v4 = v10;
        return 1;
      }

      if (v9 >= v8)
      {
        return 1;
      }

      v25 = *v6;
      *v6 = *v4;
      *v4 = v25;
LABEL_50:
      if (*a1[1].n128_u64[0] < *a1->n128_u64[0])
      {
        v43 = *a1;
        *a1 = *v6;
        *v6 = v43;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_14;
      }

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned char>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned char const*,void *,true> const&,re::Pair<unsigned char const*,void *,true> const&)#1} &,re::Pair<unsigned char const*,void *,true>*,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
      return 1;
    }

    v6 = a1 + 1;
    v18 = a1 + 2;
    v19 = a1[2].n128_u64[0];
    v20 = a2 - 1;
    v21 = a1->n128_u64[0];
    v22 = *a1[1].n128_u64[0];
    v23 = *v19;
    if (v22 >= *a1->n128_u64[0])
    {
      if (v23 < v22)
      {
        v28 = *v6;
        *v6 = *v18;
        *v18 = v28;
        if (*v6->n128_u64[0] < *v21)
        {
          v29 = *a1;
          *a1 = *v6;
          *v6 = v29;
        }
      }

      goto LABEL_47;
    }

    if (v23 >= v22)
    {
      v40 = *a1;
      *a1 = *v6;
      *v6 = v40;
      if (*v19 >= *a1[1].n128_u64[0])
      {
        goto LABEL_47;
      }

      v24 = *v6;
      *v6 = *v18;
    }

    else
    {
      v24 = *a1;
      *a1 = *v18;
    }

    *v18 = v24;
LABEL_47:
    if (*v20->n128_u64[0] >= *v18->n128_u64[0])
    {
      return 1;
    }

    v41 = *v18;
    *v18 = *v20;
    *v20 = v41;
    if (*v18->n128_u64[0] >= *v6->n128_u64[0])
    {
      return 1;
    }

    v42 = *v6;
    *v6 = *v18;
    *v18 = v42;
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v5 = a2[-1].n128_u64[0];
    v4 = a2 - 1;
    if (*v5 >= *a1->n128_u64[0])
    {
      return 1;
    }

    goto LABEL_12;
  }

LABEL_14:
  v11 = a1 + 2;
  v12 = a1[2].n128_u64[0];
  v13 = a1 + 1;
  v14 = a1->n128_u64[0];
  v15 = *a1[1].n128_u64[0];
  v16 = *v12;
  if (v15 >= *a1->n128_u64[0])
  {
    if (v16 < v15)
    {
      v26 = *v13;
      *v13 = *v11;
      *v11 = v26;
      if (*v13->n128_u64[0] < *v14)
      {
        v27 = *a1;
        *a1 = *v13;
        *v13 = v27;
      }
    }
  }

  else
  {
    if (v16 >= v15)
    {
      v31 = *a1;
      *a1 = *v13;
      *v13 = v31;
      if (*v12 >= *a1[1].n128_u64[0])
      {
        goto LABEL_33;
      }

      v17 = *v13;
      *v13 = *v11;
    }

    else
    {
      v17 = *a1;
      *a1 = *v11;
    }

    *v11 = v17;
  }

LABEL_33:
  v32 = a1 + 3;
  if (&a1[3] == a2)
  {
    return 1;
  }

  v33 = 0;
  v34 = 0;
  while (1)
  {
    v35 = v32->n128_u64[0];
    if (*v32->n128_u64[0] < *v11->n128_u64[0])
    {
      v36 = v32->n128_u64[1];
      v37 = v33;
      while (1)
      {
        *(a1 + v37 + 48) = *(a1 + v37 + 32);
        if (v37 == -32)
        {
          break;
        }

        v38 = **(a1[1].n128_u64 + v37);
        v37 -= 16;
        if (*v35 >= v38)
        {
          v39 = (a1 + v37 + 48);
          goto LABEL_41;
        }
      }

      v39 = a1;
LABEL_41:
      v39->n128_u64[0] = v35;
      v39->n128_u64[1] = v36;
      if (++v34 == 8)
      {
        return &v32[1] == a2;
      }
    }

    v11 = v32;
    v33 += 16;
    if (++v32 == a2)
    {
      return 1;
    }
  }
}

unsigned __int8 **std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned char>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned char const*,void *,true> const&,re::Pair<unsigned char const*,void *,true> const&)#1} &,re::Pair<unsigned char const*,void *,true>*,re::Pair<unsigned char const*,void *,true>*>(unsigned __int8 **a1, unsigned __int8 **a2, unsigned __int8 **a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = (a2 - a1) >> 4;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[2 * v9];
      do
      {
        std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned char>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned char const*,void *,true> const&,re::Pair<unsigned char const*,void *,true> const&)#1} &,re::Pair<unsigned char const*,void *,true>*>(a1, a4, v8, v11);
        v11 -= 2;
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        if (**v12 < **a1)
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned char>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned char const*,void *,true> const&,re::Pair<unsigned char const*,void *,true> const&)#1} &,re::Pair<unsigned char const*,void *,true>*>(a1, a4, v8, a1);
        }

        v12 += 2;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v14 = 0;
        v23 = *a1;
        v15 = a1;
        do
        {
          v16 = &v15[2 * v14];
          v17 = v16 + 2;
          v18 = (2 * v14) | 1;
          v14 = 2 * v14 + 2;
          if (v14 >= v8)
          {
            v14 = v18;
          }

          else
          {
            v20 = v16[4];
            v19 = v16 + 4;
            if (**(v19 - 2) >= *v20)
            {
              v14 = v18;
            }

            else
            {
              v17 = v19;
            }
          }

          *v15 = *v17;
          v15 = v17;
        }

        while (v14 <= ((v8 - 2) >> 1));
        v6 -= 2;
        if (v17 == v6)
        {
          *v17 = v23;
        }

        else
        {
          *v17 = *v6;
          *v6 = v23;
          std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned char>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned char const*,void *,true> const&,re::Pair<unsigned char const*,void *,true> const&)#1} &,re::Pair<unsigned char const*,void *,true>*>(a1, (v17 + 2), a4, ((v17 + 2) - a1) >> 4);
        }
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned char>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned char const*,void *,true> const&,re::Pair<unsigned char const*,void *,true> const&)#1} &,re::Pair<unsigned char const*,void *,true>*>(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 **a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 4)
    {
      v6 = v4 >> 3;
      v7 = (v4 >> 3) + 1;
      v8 = (result + 16 * v7);
      v9 = v6 + 2;
      if (v9 >= a3)
      {
        v10 = **v8;
      }

      else
      {
        v10 = **v8;
        v11 = *v8[2];
        v12 = v10 >= v11;
        if (v10 <= v11)
        {
          v10 = *v8[2];
        }

        if (!v12)
        {
          v8 += 2;
          v7 = v9;
        }
      }

      v13 = *a4;
      if (v10 >= **a4)
      {
        v14 = a4[1];
        do
        {
          v15 = a4;
          a4 = v8;
          *v15 = *v8;
          if (v5 < v7)
          {
            break;
          }

          v16 = (2 * v7) | 1;
          v8 = (result + 16 * v16);
          v7 = 2 * v7 + 2;
          if (v7 >= a3)
          {
            v17 = **v8;
            v7 = v16;
          }

          else
          {
            v17 = **v8;
            v18 = *v8[2];
            v19 = v17 >= v18;
            if (v17 <= v18)
            {
              v17 = *v8[2];
            }

            if (v19)
            {
              v7 = v16;
            }

            else
            {
              v8 += 2;
            }
          }
        }

        while (v17 >= *v13);
        *a4 = v13;
        a4[1] = v14;
      }
    }
  }

  return result;
}

uint64_t std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned char>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned char const*,void *,true> const&,re::Pair<unsigned char const*,void *,true> const&)#1} &,re::Pair<unsigned char const*,void *,true>*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = v4 >> 1;
    v6 = (result + 16 * (v4 >> 1));
    v7 = (a2 - 16);
    v8 = *(a2 - 16);
    if (**v6 < *v8)
    {
      v9 = *(a2 - 8);
      do
      {
        v10 = v7;
        v7 = v6;
        *v10 = *v6;
        if (!v5)
        {
          break;
        }

        v5 = (v5 - 1) >> 1;
        v6 = (result + 16 * v5);
      }

      while (**v6 < *v8);
      *v7 = v8;
      v7[1] = v9;
    }
  }

  return result;
}

__n128 std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<long long const*,void *,true> const&,re::Pair<long long const*,void *,true> const&)#1} &,re::Pair<long long const*,void *,true>*,false>(__n128 *a1, __n128 *a2, uint64_t a3, uint64_t a4, char a5, __n128 result)
{
LABEL_1:
  v9 = &a2[-1];
  v10 = &a2[-2];
  v11 = &a2[-3];
  v12 = a1;
LABEL_2:
  v13 = 1 - a4;
  while (1)
  {
    a1 = v12;
    v14 = v13;
    v15 = a2 - v12;
    if (v15 <= 2)
    {
      if (v15 < 2)
      {
        return result;
      }

      if (v15 == 2)
      {
        v47 = a2[-1].n128_u64[0];
        v43 = &a2[-1];
        if (*v47 >= *v12->n128_u64[0])
        {
          return result;
        }

LABEL_77:
        v71 = *v12;
        *v12 = *v43;
        result = v71;
        goto LABEL_78;
      }

      goto LABEL_10;
    }

    if (v15 == 3)
    {
      v42 = v12 + 1;
      v44 = a2[-1].n128_u64[0];
      v43 = &a2[-1];
      v45 = *v12[1].n128_u64[0];
      v46 = *v44;
      if (v45 < *v12->n128_u64[0])
      {
        if (v46 < v45)
        {
          goto LABEL_77;
        }

        v70 = *v12;
        *v12 = *v42;
        result = v70;
        *v42 = v70;
        if (**v43 >= *v12[1].n128_u64[0])
        {
          return result;
        }

        result = *v42;
        *v42 = *v43;
LABEL_78:
        *v43 = result;
        return result;
      }

      if (v46 >= v45)
      {
        return result;
      }

      result = *v42;
      *v42 = *v43;
      *v43 = result;
      goto LABEL_104;
    }

    if (v15 == 4)
    {
      break;
    }

    if (v15 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<long long const*,void *,true> const&,re::Pair<long long const*,void *,true> const&)#1} &,re::Pair<long long const*,void *,true>*,0>(v12, v12 + 1, v12 + 2, v12 + 3, a2 - 1, result).n128_u64[0];
      return result;
    }

LABEL_10:
    if (v15 <= 23)
    {
      if (a5)
      {

        std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<long long const*,void *,true> const&,re::Pair<long long const*,void *,true> const&)#1} &,re::Pair<long long const*,void *,true>*>(v12, a2);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<long long const*,void *,true> const&,re::Pair<long long const*,void *,true> const&)#1} &,re::Pair<long long const*,void *,true>*>(v12, a2);
      }

      return result;
    }

    if (v13 == 1)
    {
      if (v12 != a2)
      {

        std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<long long const*,void *,true> const&,re::Pair<long long const*,void *,true> const&)#1} &,re::Pair<long long const*,void *,true>*,re::Pair<long long const*,void *,true>*>(v12, a2, a2, a3);
      }

      return result;
    }

    v16 = &v12[v15 >> 1];
    v17 = v16;
    v18 = **v9;
    if (v15 >= 0x81)
    {
      v19 = *v16->n128_u64[0];
      if (v19 >= *v12->n128_u64[0])
      {
        if (v18 < v19)
        {
          v55 = *v16;
          *v16 = *v9;
          *v9 = v55;
          if (*v16->n128_u64[0] < *v12->n128_u64[0])
          {
            v56 = *v12;
            *v12 = *v16;
            *v16 = v56;
          }
        }
      }

      else
      {
        if (v18 >= v19)
        {
          v59 = *v12;
          *v12 = *v16;
          *v16 = v59;
          if (**v9 >= *v16->n128_u64[0])
          {
            goto LABEL_28;
          }

          v53 = *v16;
          *v16 = *v9;
        }

        else
        {
          v53 = *v12;
          *v12 = *v9;
        }

        *v9 = v53;
      }

LABEL_28:
      v21 = v12 + 1;
      v22 = v16 - 1;
      v23 = *v16[-1].n128_u64[0];
      v24 = **v10;
      if (v23 >= *v12[1].n128_u64[0])
      {
        if (v24 < v23)
        {
          v60 = *v22;
          *v22 = *v10;
          *v10 = v60;
          if (*v22->n128_u64[0] < *v21->n128_u64[0])
          {
            v26 = *v21;
            *v21 = *v22;
            *v22 = v26;
          }
        }
      }

      else
      {
        if (v24 >= v23)
        {
          v27 = *v21;
          *v21 = *v22;
          *v22 = v27;
          if (**v10 >= *v22->n128_u64[0])
          {
            goto LABEL_40;
          }

          v62 = *v22;
          *v22 = *v10;
          v25 = v62;
        }

        else
        {
          v25 = *v21;
          *v21 = *v10;
        }

        *v10 = v25;
      }

LABEL_40:
      v28 = v12 + 2;
      v30 = v16[1].n128_u64[0];
      v29 = v16 + 1;
      v31 = *v30;
      v32 = **v11;
      if (*v30 >= *v12[2].n128_u64[0])
      {
        if (v32 < v31)
        {
          v63 = *v29;
          *v29 = *v11;
          *v11 = v63;
          if (*v29->n128_u64[0] < *v28->n128_u64[0])
          {
            v34 = *v28;
            *v28 = *v29;
            *v29 = v34;
          }
        }
      }

      else
      {
        if (v32 >= v31)
        {
          v35 = *v28;
          *v28 = *v29;
          *v29 = v35;
          if (**v11 >= *v29->n128_u64[0])
          {
            goto LABEL_49;
          }

          v64 = *v29;
          *v29 = *v11;
          v33 = v64;
        }

        else
        {
          v33 = *v28;
          *v28 = *v11;
        }

        *v11 = v33;
      }

LABEL_49:
      v36 = *v17->n128_u64[0];
      v37 = *v29->n128_u64[0];
      if (v36 >= *v22->n128_u64[0])
      {
        if (v37 < v36)
        {
          v66 = *v17;
          *v17 = *v29;
          *v29 = v66;
          if (*v17->n128_u64[0] < *v22->n128_u64[0])
          {
            v67 = *v22;
            *v22 = *v17;
            *v17 = v67;
          }
        }

        goto LABEL_58;
      }

      if (v37 >= v36)
      {
        v68 = *v22;
        *v22 = *v17;
        *v17 = v68;
        if (*v29->n128_u64[0] >= *v17->n128_u64[0])
        {
LABEL_58:
          v69 = *v12;
          *v12 = *v17;
          *v17 = v69;
          goto LABEL_59;
        }

        v65 = *v17;
        *v17 = *v29;
      }

      else
      {
        v65 = *v22;
        *v22 = *v29;
      }

      *v29 = v65;
      goto LABEL_58;
    }

    v20 = *v12->n128_u64[0];
    if (v20 >= *v17->n128_u64[0])
    {
      if (v18 < v20)
      {
        v57 = *v12;
        *v12 = *v9;
        *v9 = v57;
        if (*v12->n128_u64[0] < *v17->n128_u64[0])
        {
          v58 = *v17;
          *v17 = *v12;
          *v12 = v58;
        }
      }
    }

    else
    {
      if (v18 < v20)
      {
        v54 = *v17;
        *v17 = *v9;
LABEL_36:
        *v9 = v54;
        goto LABEL_59;
      }

      v61 = *v17;
      *v17 = *v12;
      *v12 = v61;
      if (**v9 < *v12->n128_u64[0])
      {
        v54 = *v12;
        *v12 = *v9;
        goto LABEL_36;
      }
    }

LABEL_59:
    if ((a5 & 1) == 0 && *v12[-1].n128_u64[0] >= *v12->n128_u64[0])
    {
      v12 = std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,re::Pair<long long const*,void *,true> *,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<long long const*,void *,true> const&,re::Pair<long long const*,void *,true> const&)#1} &>(v12, a2);
      goto LABEL_66;
    }

    v38 = std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,re::Pair<long long const*,void *,true> *,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<long long const*,void *,true> const&,re::Pair<long long const*,void *,true> const&)#1} &>(v12, a2);
    if ((v39 & 1) == 0)
    {
      goto LABEL_64;
    }

    v40 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<long long const*,void *,true> const&,re::Pair<long long const*,void *,true> const&)#1} &,re::Pair<long long const*,void *,true>*>(v12, v38, result);
    v12 = v38 + 1;
    if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<long long const*,void *,true> const&,re::Pair<long long const*,void *,true> const&)#1} &,re::Pair<long long const*,void *,true>*>(v38 + 1, a2, v41))
    {
      a4 = -v14;
      a2 = v38;
      if (v40)
      {
        return result;
      }

      goto LABEL_1;
    }

    v13 = v14 + 1;
    if (!v40)
    {
LABEL_64:
      result = std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<long long const*,void *,true> const&,re::Pair<long long const*,void *,true> const&)#1} &,re::Pair<long long const*,void *,true>*,false>(a1, v38, a3, -v14, a5 & 1, result);
      v12 = v38 + 1;
LABEL_66:
      a5 = 0;
      a4 = -v14;
      goto LABEL_2;
    }
  }

  v42 = v12 + 1;
  v48 = v12 + 2;
  v49 = v12[2].n128_u64[0];
  v50 = *v12[1].n128_u64[0];
  v51 = *v49;
  if (v50 >= *v12->n128_u64[0])
  {
    if (v51 < v50)
    {
      result = *v42;
      *v42 = *v48;
      *v48 = result;
      if (*v12[1].n128_u64[0] < *v12->n128_u64[0])
      {
        v73 = *v12;
        *v12 = *v42;
        result = v73;
        *v42 = v73;
      }
    }
  }

  else
  {
    if (v51 < v50)
    {
      v72 = *v12;
      *v12 = *v48;
      result = v72;
      goto LABEL_100;
    }

    v74 = *v12;
    *v12 = *v42;
    result = v74;
    *v42 = v74;
    if (*v49 < *v12[1].n128_u64[0])
    {
      result = *v42;
      *v42 = *v48;
LABEL_100:
      *v48 = result;
    }
  }

  if (**v9 >= *v48->n128_u64[0])
  {
    return result;
  }

  result = *v48;
  *v48 = *v9;
  *v9 = result;
  if (*v48->n128_u64[0] >= *v42->n128_u64[0])
  {
    return result;
  }

  result = *v42;
  *v42 = *v48;
  *v48 = result;
LABEL_104:
  if (*v12[1].n128_u64[0] < *v12->n128_u64[0])
  {
    v75 = *v12;
    *v12 = *v42;
    result = v75;
    *v42 = v75;
  }

  return result;
}

void *std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<long long const*,void *,true> const&,re::Pair<long long const*,void *,true> const&)#1} &,re::Pair<long long const*,void *,true>*>(void *result, void *a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    if (result + 2 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v2;
        v6 = v4[2];
        if (*v6 < **v4)
        {
          v7 = v4[3];
          v8 = v3;
          while (1)
          {
            *(result + v8 + 16) = *(result + v8);
            if (!v8)
            {
              break;
            }

            v9 = **(result + v8 - 16);
            v8 -= 16;
            if (*v6 >= v9)
            {
              v10 = (result + v8 + 16);
              goto LABEL_10;
            }
          }

          v10 = result;
LABEL_10:
          *v10 = v6;
          v10[1] = v7;
        }

        v2 = v5 + 2;
        v3 += 16;
        v4 = v5;
      }

      while (v5 + 2 != a2);
    }
  }

  return result;
}

uint64_t std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<long long const*,void *,true> const&,re::Pair<long long const*,void *,true> const&)#1} &,re::Pair<long long const*,void *,true>*>(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v2 = result + 16;
    while (v2 != a2)
    {
      v3 = v2;
      v4 = *(result + 16);
      if (*v4 < **result)
      {
        v5 = *(result + 24);
        v6 = v3;
        do
        {
          *v6 = *(v6 - 16);
          v7 = *(v6 - 32);
          v6 -= 16;
        }

        while (*v4 < *v7);
        *v6 = v4;
        *(v6 + 8) = v5;
      }

      v2 = v3 + 16;
      result = v3;
    }
  }

  return result;
}

uint64_t **std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,re::Pair<long long const*,void *,true> *,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<long long const*,void *,true> const&,re::Pair<long long const*,void *,true> const&)#1} &>(uint64_t **a1, uint64_t **a2)
{
  v2 = *a1;
  v3 = *a1;
  v4 = **a1;
  if (v4 >= **(a2 - 2))
  {
    v7 = a1 + 2;
    do
    {
      v5 = v7;
      if (v7 >= a2)
      {
        break;
      }

      v7 += 2;
    }

    while (v4 >= **v5);
  }

  else
  {
    v5 = a1;
    do
    {
      v6 = v5[2];
      v5 += 2;
    }

    while (v4 >= *v6);
  }

  if (v5 < a2)
  {
    do
    {
      v8 = *(a2 - 2);
      a2 -= 2;
    }

    while (v4 < *v8);
  }

  while (v5 < a2)
  {
    v13 = *v5;
    *v5 = *a2;
    *a2 = v13;
    v9 = *v3;
    do
    {
      v10 = v5[2];
      v5 += 2;
    }

    while (v9 >= *v10);
    do
    {
      v11 = *(a2 - 2);
      a2 -= 2;
    }

    while (v9 < *v11);
  }

  if (v5 - 2 != a1)
  {
    *a1 = *(v5 - 1);
  }

  *(v5 - 1) = v2;
  return v5;
}

uint64_t **std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,re::Pair<long long const*,void *,true> *,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<long long const*,void *,true> const&,re::Pair<long long const*,void *,true> const&)#1} &>(uint64_t **a1, uint64_t **a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = *a1;
  v5 = **a1;
  do
  {
    v6 = *a1[v2 + 2];
    v2 += 2;
  }

  while (v6 < v5);
  v7 = &a1[v2];
  v8 = &a1[v2 - 2];
  if (v2 == 2)
  {
    do
    {
      if (v7 >= a2)
      {
        break;
      }

      v10 = *(a2 - 2);
      a2 -= 2;
    }

    while (*v10 >= v5);
  }

  else
  {
    do
    {
      v9 = *(a2 - 2);
      a2 -= 2;
    }

    while (*v9 >= v5);
  }

  if (v7 < a2)
  {
    v11 = &a1[v2];
    v12 = a2;
    do
    {
      v13 = *v11;
      *v11 = *v12;
      *v12 = v13;
      v14 = *v4;
      do
      {
        v15 = v11[2];
        v11 += 2;
      }

      while (*v15 < v14);
      do
      {
        v16 = *(v12 - 2);
        v12 -= 2;
      }

      while (*v16 >= v14);
    }

    while (v11 < v12);
    v8 = v11 - 2;
  }

  if (v8 != a1)
  {
    *a1 = *v8;
  }

  *v8 = v3;
  return v8;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<long long const*,void *,true> const&,re::Pair<long long const*,void *,true> const&)#1} &,re::Pair<long long const*,void *,true>*>(__n128 *a1, __n128 *a2, __n128 a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = a1 + 1;
      v7 = a2[-1].n128_u64[0];
      v4 = a2 - 1;
      v8 = *a1[1].n128_u64[0];
      v9 = *v7;
      if (v8 < *a1->n128_u64[0])
      {
        if (v9 >= v8)
        {
          v30 = *a1;
          *a1 = *v6;
          *v6 = v30;
          if (*v4->n128_u64[0] >= *a1[1].n128_u64[0])
          {
            return 1;
          }

          v10 = *v6;
          *v6 = *v4;
          goto LABEL_13;
        }

LABEL_12:
        v10 = *a1;
        *a1 = *v4;
LABEL_13:
        *v4 = v10;
        return 1;
      }

      if (v9 >= v8)
      {
        return 1;
      }

      v25 = *v6;
      *v6 = *v4;
      *v4 = v25;
LABEL_50:
      if (*a1[1].n128_u64[0] < *a1->n128_u64[0])
      {
        v43 = *a1;
        *a1 = *v6;
        *v6 = v43;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_14;
      }

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<long long const*,void *,true> const&,re::Pair<long long const*,void *,true> const&)#1} &,re::Pair<long long const*,void *,true>*,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
      return 1;
    }

    v6 = a1 + 1;
    v18 = a1 + 2;
    v19 = a1[2].n128_u64[0];
    v20 = a2 - 1;
    v21 = a1->n128_u64[0];
    v22 = *a1[1].n128_u64[0];
    v23 = *v19;
    if (v22 >= *a1->n128_u64[0])
    {
      if (v23 < v22)
      {
        v28 = *v6;
        *v6 = *v18;
        *v18 = v28;
        if (*v6->n128_u64[0] < *v21)
        {
          v29 = *a1;
          *a1 = *v6;
          *v6 = v29;
        }
      }

      goto LABEL_47;
    }

    if (v23 >= v22)
    {
      v40 = *a1;
      *a1 = *v6;
      *v6 = v40;
      if (*v19 >= *a1[1].n128_u64[0])
      {
        goto LABEL_47;
      }

      v24 = *v6;
      *v6 = *v18;
    }

    else
    {
      v24 = *a1;
      *a1 = *v18;
    }

    *v18 = v24;
LABEL_47:
    if (*v20->n128_u64[0] >= *v18->n128_u64[0])
    {
      return 1;
    }

    v41 = *v18;
    *v18 = *v20;
    *v20 = v41;
    if (*v18->n128_u64[0] >= *v6->n128_u64[0])
    {
      return 1;
    }

    v42 = *v6;
    *v6 = *v18;
    *v18 = v42;
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v5 = a2[-1].n128_u64[0];
    v4 = a2 - 1;
    if (*v5 >= *a1->n128_u64[0])
    {
      return 1;
    }

    goto LABEL_12;
  }

LABEL_14:
  v11 = a1 + 2;
  v12 = a1[2].n128_u64[0];
  v13 = a1 + 1;
  v14 = a1->n128_u64[0];
  v15 = *a1[1].n128_u64[0];
  v16 = *v12;
  if (v15 >= *a1->n128_u64[0])
  {
    if (v16 < v15)
    {
      v26 = *v13;
      *v13 = *v11;
      *v11 = v26;
      if (*v13->n128_u64[0] < *v14)
      {
        v27 = *a1;
        *a1 = *v13;
        *v13 = v27;
      }
    }
  }

  else
  {
    if (v16 >= v15)
    {
      v31 = *a1;
      *a1 = *v13;
      *v13 = v31;
      if (*v12 >= *a1[1].n128_u64[0])
      {
        goto LABEL_33;
      }

      v17 = *v13;
      *v13 = *v11;
    }

    else
    {
      v17 = *a1;
      *a1 = *v11;
    }

    *v11 = v17;
  }

LABEL_33:
  v32 = a1 + 3;
  if (&a1[3] == a2)
  {
    return 1;
  }

  v33 = 0;
  v34 = 0;
  while (1)
  {
    v35 = v32->n128_u64[0];
    if (*v32->n128_u64[0] < *v11->n128_u64[0])
    {
      v36 = v32->n128_u64[1];
      v37 = v33;
      while (1)
      {
        *(a1 + v37 + 48) = *(a1 + v37 + 32);
        if (v37 == -32)
        {
          break;
        }

        v38 = **(a1[1].n128_u64 + v37);
        v37 -= 16;
        if (*v35 >= v38)
        {
          v39 = (a1 + v37 + 48);
          goto LABEL_41;
        }
      }

      v39 = a1;
LABEL_41:
      v39->n128_u64[0] = v35;
      v39->n128_u64[1] = v36;
      if (++v34 == 8)
      {
        return &v32[1] == a2;
      }
    }

    v11 = v32;
    v33 += 16;
    if (++v32 == a2)
    {
      return 1;
    }
  }
}

__int128 *std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<long long const*,void *,true> const&,re::Pair<long long const*,void *,true> const&)#1} &,re::Pair<long long const*,void *,true>*,re::Pair<long long const*,void *,true>*>(uint64_t **a1, uint64_t **a2, __int128 *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = (a2 - a1) >> 4;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[2 * v9];
      do
      {
        std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<long long const*,void *,true> const&,re::Pair<long long const*,void *,true> const&)#1} &,re::Pair<long long const*,void *,true>*>(a1, a4, v8, v11);
        v11 -= 2;
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        if (**v12 < **a1)
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<long long const*,void *,true> const&,re::Pair<long long const*,void *,true> const&)#1} &,re::Pair<long long const*,void *,true>*>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v14 = 0;
        v23 = *a1;
        v15 = a1;
        do
        {
          v16 = &v15[2 * v14];
          v17 = (v16 + 2);
          v18 = (2 * v14) | 1;
          v14 = 2 * v14 + 2;
          if (v14 >= v8)
          {
            v14 = v18;
          }

          else
          {
            v20 = v16[4];
            v19 = (v16 + 4);
            if (**(v19 - 2) >= *v20)
            {
              v14 = v18;
            }

            else
            {
              v17 = v19;
            }
          }

          *v15 = *v17;
          v15 = v17;
        }

        while (v14 <= ((v8 - 2) >> 1));
        if (v17 == --v6)
        {
          *v17 = v23;
        }

        else
        {
          *v17 = *v6;
          *v6 = v23;
          std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<long long const*,void *,true> const&,re::Pair<long long const*,void *,true> const&)#1} &,re::Pair<long long const*,void *,true>*>(a1, (v17 + 1), a4, ((v17 + 1) - a1) >> 4);
        }
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<long long const*,void *,true> const&,re::Pair<long long const*,void *,true> const&)#1} &,re::Pair<long long const*,void *,true>*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 4)
    {
      v6 = v4 >> 3;
      v7 = (v4 >> 3) + 1;
      v8 = (result + 16 * v7);
      v9 = v6 + 2;
      if (v9 >= a3)
      {
        v10 = **v8;
      }

      else
      {
        v10 = **v8;
        v11 = *v8[2];
        v12 = v10 < v11;
        if (v10 <= v11)
        {
          v10 = *v8[2];
        }

        if (v12)
        {
          v8 += 2;
          v7 = v9;
        }
      }

      v13 = *a4;
      if (v10 >= **a4)
      {
        v14 = a4[1];
        do
        {
          v15 = a4;
          a4 = v8;
          *v15 = *v8;
          if (v5 < v7)
          {
            break;
          }

          v16 = (2 * v7) | 1;
          v8 = (result + 16 * v16);
          v7 = 2 * v7 + 2;
          if (v7 >= a3)
          {
            v17 = **v8;
            v7 = v16;
          }

          else
          {
            v17 = **v8;
            v18 = *v8[2];
            v19 = v17 < v18;
            if (v17 <= v18)
            {
              v17 = *v8[2];
            }

            if (v19)
            {
              v8 += 2;
            }

            else
            {
              v7 = v16;
            }
          }
        }

        while (v17 >= *v13);
        *a4 = v13;
        a4[1] = v14;
      }
    }
  }

  return result;
}

uint64_t std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<long long const*,void *,true> const&,re::Pair<long long const*,void *,true> const&)#1} &,re::Pair<long long const*,void *,true>*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = v4 >> 1;
    v6 = (result + 16 * (v4 >> 1));
    v7 = (a2 - 16);
    v8 = *(a2 - 16);
    if (**v6 < *v8)
    {
      v9 = *(a2 - 8);
      do
      {
        v10 = v7;
        v7 = v6;
        *v10 = *v6;
        if (!v5)
        {
          break;
        }

        v5 = (v5 - 1) >> 1;
        v6 = (result + 16 * v5);
      }

      while (**v6 < *v8);
      *v7 = v8;
      v7[1] = v9;
    }
  }

  return result;
}

__n128 std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,int>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<int const*,void *,true> const&,re::Pair<int const*,void *,true> const&)#1} &,re::Pair<int const*,void *,true>*,false>(__n128 *a1, __n128 *a2, uint64_t a3, uint64_t a4, char a5, __n128 result)
{
LABEL_1:
  v9 = &a2[-1];
  v10 = &a2[-2];
  v11 = &a2[-3];
  v12 = a1;
LABEL_2:
  v13 = 1 - a4;
  while (1)
  {
    a1 = v12;
    v14 = v13;
    v15 = a2 - v12;
    if (v15 <= 2)
    {
      if (v15 < 2)
      {
        return result;
      }

      if (v15 == 2)
      {
        v47 = a2[-1].n128_u64[0];
        v43 = &a2[-1];
        if (*v47 >= *v12->n128_u64[0])
        {
          return result;
        }

LABEL_77:
        v71 = *v12;
        *v12 = *v43;
        result = v71;
        goto LABEL_78;
      }

      goto LABEL_10;
    }

    if (v15 == 3)
    {
      v42 = v12 + 1;
      v44 = a2[-1].n128_u64[0];
      v43 = &a2[-1];
      v45 = *v12[1].n128_u64[0];
      v46 = *v44;
      if (v45 < *v12->n128_u64[0])
      {
        if (v46 < v45)
        {
          goto LABEL_77;
        }

        v70 = *v12;
        *v12 = *v42;
        result = v70;
        *v42 = v70;
        if (**v43 >= *v12[1].n128_u64[0])
        {
          return result;
        }

        result = *v42;
        *v42 = *v43;
LABEL_78:
        *v43 = result;
        return result;
      }

      if (v46 >= v45)
      {
        return result;
      }

      result = *v42;
      *v42 = *v43;
      *v43 = result;
      goto LABEL_104;
    }

    if (v15 == 4)
    {
      break;
    }

    if (v15 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,int>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<int const*,void *,true> const&,re::Pair<int const*,void *,true> const&)#1} &,re::Pair<int const*,void *,true>*,0>(v12, v12 + 1, v12 + 2, v12 + 3, a2 - 1, result).n128_u64[0];
      return result;
    }

LABEL_10:
    if (v15 <= 23)
    {
      if (a5)
      {

        std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,int>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<int const*,void *,true> const&,re::Pair<int const*,void *,true> const&)#1} &,re::Pair<int const*,void *,true>*>(v12, a2);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,int>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<int const*,void *,true> const&,re::Pair<int const*,void *,true> const&)#1} &,re::Pair<int const*,void *,true>*>(v12, a2);
      }

      return result;
    }

    if (v13 == 1)
    {
      if (v12 != a2)
      {

        std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,int>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<int const*,void *,true> const&,re::Pair<int const*,void *,true> const&)#1} &,re::Pair<int const*,void *,true>*,re::Pair<int const*,void *,true>*>(v12, a2, a2, a3);
      }

      return result;
    }

    v16 = &v12[v15 >> 1];
    v17 = v16;
    v18 = **v9;
    if (v15 >= 0x81)
    {
      v19 = *v16->n128_u64[0];
      if (v19 >= *v12->n128_u64[0])
      {
        if (v18 < v19)
        {
          v55 = *v16;
          *v16 = *v9;
          *v9 = v55;
          if (*v16->n128_u64[0] < *v12->n128_u64[0])
          {
            v56 = *v12;
            *v12 = *v16;
            *v16 = v56;
          }
        }
      }

      else
      {
        if (v18 >= v19)
        {
          v59 = *v12;
          *v12 = *v16;
          *v16 = v59;
          if (**v9 >= *v16->n128_u64[0])
          {
            goto LABEL_28;
          }

          v53 = *v16;
          *v16 = *v9;
        }

        else
        {
          v53 = *v12;
          *v12 = *v9;
        }

        *v9 = v53;
      }

LABEL_28:
      v21 = v12 + 1;
      v22 = v16 - 1;
      v23 = *v16[-1].n128_u64[0];
      v24 = **v10;
      if (v23 >= *v12[1].n128_u64[0])
      {
        if (v24 < v23)
        {
          v60 = *v22;
          *v22 = *v10;
          *v10 = v60;
          if (*v22->n128_u64[0] < *v21->n128_u64[0])
          {
            v26 = *v21;
            *v21 = *v22;
            *v22 = v26;
          }
        }
      }

      else
      {
        if (v24 >= v23)
        {
          v27 = *v21;
          *v21 = *v22;
          *v22 = v27;
          if (**v10 >= *v22->n128_u64[0])
          {
            goto LABEL_40;
          }

          v62 = *v22;
          *v22 = *v10;
          v25 = v62;
        }

        else
        {
          v25 = *v21;
          *v21 = *v10;
        }

        *v10 = v25;
      }

LABEL_40:
      v28 = v12 + 2;
      v30 = v16[1].n128_u64[0];
      v29 = v16 + 1;
      v31 = *v30;
      v32 = **v11;
      if (*v30 >= *v12[2].n128_u64[0])
      {
        if (v32 < v31)
        {
          v63 = *v29;
          *v29 = *v11;
          *v11 = v63;
          if (*v29->n128_u64[0] < *v28->n128_u64[0])
          {
            v34 = *v28;
            *v28 = *v29;
            *v29 = v34;
          }
        }
      }

      else
      {
        if (v32 >= v31)
        {
          v35 = *v28;
          *v28 = *v29;
          *v29 = v35;
          if (**v11 >= *v29->n128_u64[0])
          {
            goto LABEL_49;
          }

          v64 = *v29;
          *v29 = *v11;
          v33 = v64;
        }

        else
        {
          v33 = *v28;
          *v28 = *v11;
        }

        *v11 = v33;
      }

LABEL_49:
      v36 = *v17->n128_u64[0];
      v37 = *v29->n128_u64[0];
      if (v36 >= *v22->n128_u64[0])
      {
        if (v37 < v36)
        {
          v66 = *v17;
          *v17 = *v29;
          *v29 = v66;
          if (*v17->n128_u64[0] < *v22->n128_u64[0])
          {
            v67 = *v22;
            *v22 = *v17;
            *v17 = v67;
          }
        }

        goto LABEL_58;
      }

      if (v37 >= v36)
      {
        v68 = *v22;
        *v22 = *v17;
        *v17 = v68;
        if (*v29->n128_u64[0] >= *v17->n128_u64[0])
        {
LABEL_58:
          v69 = *v12;
          *v12 = *v17;
          *v17 = v69;
          goto LABEL_59;
        }

        v65 = *v17;
        *v17 = *v29;
      }

      else
      {
        v65 = *v22;
        *v22 = *v29;
      }

      *v29 = v65;
      goto LABEL_58;
    }

    v20 = *v12->n128_u64[0];
    if (v20 >= *v17->n128_u64[0])
    {
      if (v18 < v20)
      {
        v57 = *v12;
        *v12 = *v9;
        *v9 = v57;
        if (*v12->n128_u64[0] < *v17->n128_u64[0])
        {
          v58 = *v17;
          *v17 = *v12;
          *v12 = v58;
        }
      }
    }

    else
    {
      if (v18 < v20)
      {
        v54 = *v17;
        *v17 = *v9;
LABEL_36:
        *v9 = v54;
        goto LABEL_59;
      }

      v61 = *v17;
      *v17 = *v12;
      *v12 = v61;
      if (**v9 < *v12->n128_u64[0])
      {
        v54 = *v12;
        *v12 = *v9;
        goto LABEL_36;
      }
    }

LABEL_59:
    if ((a5 & 1) == 0 && *v12[-1].n128_u64[0] >= *v12->n128_u64[0])
    {
      v12 = std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,re::Pair<int const*,void *,true> *,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,int>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<int const*,void *,true> const&,re::Pair<int const*,void *,true> const&)#1} &>(v12, a2);
      goto LABEL_66;
    }

    v38 = std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,re::Pair<int const*,void *,true> *,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,int>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<int const*,void *,true> const&,re::Pair<int const*,void *,true> const&)#1} &>(v12, a2);
    if ((v39 & 1) == 0)
    {
      goto LABEL_64;
    }

    v40 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,int>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<int const*,void *,true> const&,re::Pair<int const*,void *,true> const&)#1} &,re::Pair<int const*,void *,true>*>(v12, v38, result);
    v12 = v38 + 1;
    if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,int>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<int const*,void *,true> const&,re::Pair<int const*,void *,true> const&)#1} &,re::Pair<int const*,void *,true>*>(v38 + 1, a2, v41))
    {
      a4 = -v14;
      a2 = v38;
      if (v40)
      {
        return result;
      }

      goto LABEL_1;
    }

    v13 = v14 + 1;
    if (!v40)
    {
LABEL_64:
      result = std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,int>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<int const*,void *,true> const&,re::Pair<int const*,void *,true> const&)#1} &,re::Pair<int const*,void *,true>*,false>(a1, v38, a3, -v14, a5 & 1, result);
      v12 = v38 + 1;
LABEL_66:
      a5 = 0;
      a4 = -v14;
      goto LABEL_2;
    }
  }

  v42 = v12 + 1;
  v48 = v12 + 2;
  v49 = v12[2].n128_u64[0];
  v50 = *v12[1].n128_u64[0];
  v51 = *v49;
  if (v50 >= *v12->n128_u64[0])
  {
    if (v51 < v50)
    {
      result = *v42;
      *v42 = *v48;
      *v48 = result;
      if (*v12[1].n128_u64[0] < *v12->n128_u64[0])
      {
        v73 = *v12;
        *v12 = *v42;
        result = v73;
        *v42 = v73;
      }
    }
  }

  else
  {
    if (v51 < v50)
    {
      v72 = *v12;
      *v12 = *v48;
      result = v72;
      goto LABEL_100;
    }

    v74 = *v12;
    *v12 = *v42;
    result = v74;
    *v42 = v74;
    if (*v49 < *v12[1].n128_u64[0])
    {
      result = *v42;
      *v42 = *v48;
LABEL_100:
      *v48 = result;
    }
  }

  if (**v9 >= *v48->n128_u64[0])
  {
    return result;
  }

  result = *v48;
  *v48 = *v9;
  *v9 = result;
  if (*v48->n128_u64[0] >= *v42->n128_u64[0])
  {
    return result;
  }

  result = *v42;
  *v42 = *v48;
  *v48 = result;
LABEL_104:
  if (*v12[1].n128_u64[0] < *v12->n128_u64[0])
  {
    v75 = *v12;
    *v12 = *v42;
    result = v75;
    *v42 = v75;
  }

  return result;
}

void *std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,int>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<int const*,void *,true> const&,re::Pair<int const*,void *,true> const&)#1} &,re::Pair<int const*,void *,true>*>(void *result, void *a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    if (result + 2 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v2;
        v6 = v4[2];
        if (*v6 < **v4)
        {
          v7 = v4[3];
          v8 = v3;
          while (1)
          {
            *(result + v8 + 16) = *(result + v8);
            if (!v8)
            {
              break;
            }

            v9 = **(result + v8 - 16);
            v8 -= 16;
            if (*v6 >= v9)
            {
              v10 = (result + v8 + 16);
              goto LABEL_10;
            }
          }

          v10 = result;
LABEL_10:
          *v10 = v6;
          v10[1] = v7;
        }

        v2 = v5 + 2;
        v3 += 16;
        v4 = v5;
      }

      while (v5 + 2 != a2);
    }
  }

  return result;
}

uint64_t std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,int>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<int const*,void *,true> const&,re::Pair<int const*,void *,true> const&)#1} &,re::Pair<int const*,void *,true>*>(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v2 = result + 16;
    while (v2 != a2)
    {
      v3 = v2;
      v4 = *(result + 16);
      if (*v4 < **result)
      {
        v5 = *(result + 24);
        v6 = v3;
        do
        {
          *v6 = *(v6 - 16);
          v7 = *(v6 - 32);
          v6 -= 16;
        }

        while (*v4 < *v7);
        *v6 = v4;
        *(v6 + 8) = v5;
      }

      v2 = v3 + 16;
      result = v3;
    }
  }

  return result;
}

int **std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,re::Pair<int const*,void *,true> *,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,int>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<int const*,void *,true> const&,re::Pair<int const*,void *,true> const&)#1} &>(int **a1, int **a2)
{
  v2 = *a1;
  v3 = *a1;
  v4 = **a1;
  if (v4 >= **(a2 - 2))
  {
    v7 = a1 + 2;
    do
    {
      v5 = v7;
      if (v7 >= a2)
      {
        break;
      }

      v7 += 2;
    }

    while (v4 >= **v5);
  }

  else
  {
    v5 = a1;
    do
    {
      v6 = v5[2];
      v5 += 2;
    }

    while (v4 >= *v6);
  }

  if (v5 < a2)
  {
    do
    {
      v8 = *(a2 - 2);
      a2 -= 2;
    }

    while (v4 < *v8);
  }

  while (v5 < a2)
  {
    v13 = *v5;
    *v5 = *a2;
    *a2 = v13;
    v9 = *v3;
    do
    {
      v10 = v5[2];
      v5 += 2;
    }

    while (v9 >= *v10);
    do
    {
      v11 = *(a2 - 2);
      a2 -= 2;
    }

    while (v9 < *v11);
  }

  if (v5 - 2 != a1)
  {
    *a1 = *(v5 - 1);
  }

  *(v5 - 1) = v2;
  return v5;
}

int **std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,re::Pair<int const*,void *,true> *,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,int>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<int const*,void *,true> const&,re::Pair<int const*,void *,true> const&)#1} &>(int **a1, int **a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = *a1;
  v5 = **a1;
  do
  {
    v6 = *a1[v2 + 2];
    v2 += 2;
  }

  while (v6 < v5);
  v7 = &a1[v2];
  v8 = &a1[v2 - 2];
  if (v2 == 2)
  {
    do
    {
      if (v7 >= a2)
      {
        break;
      }

      v10 = *(a2 - 2);
      a2 -= 2;
    }

    while (*v10 >= v5);
  }

  else
  {
    do
    {
      v9 = *(a2 - 2);
      a2 -= 2;
    }

    while (*v9 >= v5);
  }

  if (v7 < a2)
  {
    v11 = &a1[v2];
    v12 = a2;
    do
    {
      v13 = *v11;
      *v11 = *v12;
      *v12 = v13;
      v14 = *v4;
      do
      {
        v15 = v11[2];
        v11 += 2;
      }

      while (*v15 < v14);
      do
      {
        v16 = *(v12 - 2);
        v12 -= 2;
      }

      while (*v16 >= v14);
    }

    while (v11 < v12);
    v8 = v11 - 2;
  }

  if (v8 != a1)
  {
    *a1 = *v8;
  }

  *v8 = v3;
  return v8;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,int>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<int const*,void *,true> const&,re::Pair<int const*,void *,true> const&)#1} &,re::Pair<int const*,void *,true>*>(__n128 *a1, __n128 *a2, __n128 a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = a1 + 1;
      v7 = a2[-1].n128_u64[0];
      v4 = a2 - 1;
      v8 = *a1[1].n128_u64[0];
      v9 = *v7;
      if (v8 < *a1->n128_u64[0])
      {
        if (v9 >= v8)
        {
          v30 = *a1;
          *a1 = *v6;
          *v6 = v30;
          if (*v4->n128_u64[0] >= *a1[1].n128_u64[0])
          {
            return 1;
          }

          v10 = *v6;
          *v6 = *v4;
          goto LABEL_13;
        }

LABEL_12:
        v10 = *a1;
        *a1 = *v4;
LABEL_13:
        *v4 = v10;
        return 1;
      }

      if (v9 >= v8)
      {
        return 1;
      }

      v25 = *v6;
      *v6 = *v4;
      *v4 = v25;
LABEL_50:
      if (*a1[1].n128_u64[0] < *a1->n128_u64[0])
      {
        v43 = *a1;
        *a1 = *v6;
        *v6 = v43;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_14;
      }

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,int>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<int const*,void *,true> const&,re::Pair<int const*,void *,true> const&)#1} &,re::Pair<int const*,void *,true>*,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
      return 1;
    }

    v6 = a1 + 1;
    v18 = a1 + 2;
    v19 = a1[2].n128_u64[0];
    v20 = a2 - 1;
    v21 = a1->n128_u64[0];
    v22 = *a1[1].n128_u64[0];
    v23 = *v19;
    if (v22 >= *a1->n128_u64[0])
    {
      if (v23 < v22)
      {
        v28 = *v6;
        *v6 = *v18;
        *v18 = v28;
        if (*v6->n128_u64[0] < *v21)
        {
          v29 = *a1;
          *a1 = *v6;
          *v6 = v29;
        }
      }

      goto LABEL_47;
    }

    if (v23 >= v22)
    {
      v40 = *a1;
      *a1 = *v6;
      *v6 = v40;
      if (*v19 >= *a1[1].n128_u64[0])
      {
        goto LABEL_47;
      }

      v24 = *v6;
      *v6 = *v18;
    }

    else
    {
      v24 = *a1;
      *a1 = *v18;
    }

    *v18 = v24;
LABEL_47:
    if (*v20->n128_u64[0] >= *v18->n128_u64[0])
    {
      return 1;
    }

    v41 = *v18;
    *v18 = *v20;
    *v20 = v41;
    if (*v18->n128_u64[0] >= *v6->n128_u64[0])
    {
      return 1;
    }

    v42 = *v6;
    *v6 = *v18;
    *v18 = v42;
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v5 = a2[-1].n128_u64[0];
    v4 = a2 - 1;
    if (*v5 >= *a1->n128_u64[0])
    {
      return 1;
    }

    goto LABEL_12;
  }

LABEL_14:
  v11 = a1 + 2;
  v12 = a1[2].n128_u64[0];
  v13 = a1 + 1;
  v14 = a1->n128_u64[0];
  v15 = *a1[1].n128_u64[0];
  v16 = *v12;
  if (v15 >= *a1->n128_u64[0])
  {
    if (v16 < v15)
    {
      v26 = *v13;
      *v13 = *v11;
      *v11 = v26;
      if (*v13->n128_u64[0] < *v14)
      {
        v27 = *a1;
        *a1 = *v13;
        *v13 = v27;
      }
    }
  }

  else
  {
    if (v16 >= v15)
    {
      v31 = *a1;
      *a1 = *v13;
      *v13 = v31;
      if (*v12 >= *a1[1].n128_u64[0])
      {
        goto LABEL_33;
      }

      v17 = *v13;
      *v13 = *v11;
    }

    else
    {
      v17 = *a1;
      *a1 = *v11;
    }

    *v11 = v17;
  }

LABEL_33:
  v32 = a1 + 3;
  if (&a1[3] == a2)
  {
    return 1;
  }

  v33 = 0;
  v34 = 0;
  while (1)
  {
    v35 = v32->n128_u64[0];
    if (*v32->n128_u64[0] < *v11->n128_u64[0])
    {
      v36 = v32->n128_u64[1];
      v37 = v33;
      while (1)
      {
        *(a1 + v37 + 48) = *(a1 + v37 + 32);
        if (v37 == -32)
        {
          break;
        }

        v38 = **(a1[1].n128_u64 + v37);
        v37 -= 16;
        if (*v35 >= v38)
        {
          v39 = (a1 + v37 + 48);
          goto LABEL_41;
        }
      }

      v39 = a1;
LABEL_41:
      v39->n128_u64[0] = v35;
      v39->n128_u64[1] = v36;
      if (++v34 == 8)
      {
        return &v32[1] == a2;
      }
    }

    v11 = v32;
    v33 += 16;
    if (++v32 == a2)
    {
      return 1;
    }
  }
}

__int128 *std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,int>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<int const*,void *,true> const&,re::Pair<int const*,void *,true> const&)#1} &,re::Pair<int const*,void *,true>*,re::Pair<int const*,void *,true>*>(int **a1, int **a2, __int128 *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = (a2 - a1) >> 4;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[2 * v9];
      do
      {
        std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,int>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<int const*,void *,true> const&,re::Pair<int const*,void *,true> const&)#1} &,re::Pair<int const*,void *,true>*>(a1, a4, v8, v11);
        v11 -= 2;
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        if (**v12 < **a1)
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,int>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<int const*,void *,true> const&,re::Pair<int const*,void *,true> const&)#1} &,re::Pair<int const*,void *,true>*>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v14 = 0;
        v23 = *a1;
        v15 = a1;
        do
        {
          v16 = &v15[2 * v14];
          v17 = (v16 + 2);
          v18 = (2 * v14) | 1;
          v14 = 2 * v14 + 2;
          if (v14 >= v8)
          {
            v14 = v18;
          }

          else
          {
            v20 = v16[4];
            v19 = (v16 + 4);
            if (**(v19 - 2) >= *v20)
            {
              v14 = v18;
            }

            else
            {
              v17 = v19;
            }
          }

          *v15 = *v17;
          v15 = v17;
        }

        while (v14 <= ((v8 - 2) >> 1));
        if (v17 == --v6)
        {
          *v17 = v23;
        }

        else
        {
          *v17 = *v6;
          *v6 = v23;
          std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,int>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<int const*,void *,true> const&,re::Pair<int const*,void *,true> const&)#1} &,re::Pair<int const*,void *,true>*>(a1, (v17 + 1), a4, ((v17 + 1) - a1) >> 4);
        }
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,int>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<int const*,void *,true> const&,re::Pair<int const*,void *,true> const&)#1} &,re::Pair<int const*,void *,true>*>(uint64_t result, uint64_t a2, uint64_t a3, int **a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 4)
    {
      v6 = v4 >> 3;
      v7 = (v4 >> 3) + 1;
      v8 = (result + 16 * v7);
      v9 = v6 + 2;
      if (v9 >= a3)
      {
        v10 = **v8;
      }

      else
      {
        v10 = **v8;
        v11 = *v8[2];
        v12 = v10 < v11;
        if (v10 <= v11)
        {
          v10 = *v8[2];
        }

        if (v12)
        {
          v8 += 2;
          v7 = v9;
        }
      }

      v13 = *a4;
      if (v10 >= **a4)
      {
        v14 = a4[1];
        do
        {
          v15 = a4;
          a4 = v8;
          *v15 = *v8;
          if (v5 < v7)
          {
            break;
          }

          v16 = (2 * v7) | 1;
          v8 = (result + 16 * v16);
          v7 = 2 * v7 + 2;
          if (v7 >= a3)
          {
            v17 = **v8;
            v7 = v16;
          }

          else
          {
            v17 = **v8;
            v18 = *v8[2];
            v19 = v17 < v18;
            if (v17 <= v18)
            {
              v17 = *v8[2];
            }

            if (v19)
            {
              v8 += 2;
            }

            else
            {
              v7 = v16;
            }
          }
        }

        while (v17 >= *v13);
        *a4 = v13;
        a4[1] = v14;
      }
    }
  }

  return result;
}

uint64_t std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,int>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<int const*,void *,true> const&,re::Pair<int const*,void *,true> const&)#1} &,re::Pair<int const*,void *,true>*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = v4 >> 1;
    v6 = (result + 16 * (v4 >> 1));
    v7 = (a2 - 16);
    v8 = *(a2 - 16);
    if (**v6 < *v8)
    {
      v9 = *(a2 - 8);
      do
      {
        v10 = v7;
        v7 = v6;
        *v10 = *v6;
        if (!v5)
        {
          break;
        }

        v5 = (v5 - 1) >> 1;
        v6 = (result + 16 * v5);
      }

      while (**v6 < *v8);
      *v7 = v8;
      v7[1] = v9;
    }
  }

  return result;
}

__n128 std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,short>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<short const*,void *,true> const&,re::Pair<short const*,void *,true> const&)#1} &,re::Pair<short const*,void *,true>*,false>(__n128 *a1, __n128 *a2, uint64_t a3, uint64_t a4, char a5, __n128 result)
{
LABEL_1:
  v9 = a2 - 1;
  v10 = a2 - 2;
  v11 = a2 - 3;
  v12 = a1;
LABEL_2:
  v13 = 1 - a4;
  while (1)
  {
    a1 = v12;
    v14 = v13;
    v15 = a2 - v12;
    if (v15 <= 2)
    {
      if (v15 < 2)
      {
        return result;
      }

      if (v15 == 2)
      {
        v47 = a2[-1].n128_u64[0];
        v43 = a2 - 1;
        if (*v47 >= *v12->n128_u64[0])
        {
          return result;
        }

LABEL_77:
        v71 = *v12;
        *v12 = *v43;
        result = v71;
        goto LABEL_78;
      }

      goto LABEL_10;
    }

    if (v15 == 3)
    {
      v42 = v12 + 1;
      v44 = a2[-1].n128_u64[0];
      v43 = a2 - 1;
      v45 = *v12[1].n128_u64[0];
      v46 = *v44;
      if (v45 < *v12->n128_u64[0])
      {
        if (v46 < v45)
        {
          goto LABEL_77;
        }

        v70 = *v12;
        *v12 = *v42;
        result = v70;
        *v42 = v70;
        if (*v43->n128_u64[0] >= *v12[1].n128_u64[0])
        {
          return result;
        }

        result = *v42;
        *v42 = *v43;
LABEL_78:
        *v43 = result;
        return result;
      }

      if (v46 >= v45)
      {
        return result;
      }

      result = *v42;
      *v42 = *v43;
      *v43 = result;
      goto LABEL_104;
    }

    if (v15 == 4)
    {
      break;
    }

    if (v15 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,short>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<short const*,void *,true> const&,re::Pair<short const*,void *,true> const&)#1} &,re::Pair<short const*,void *,true>*,0>(v12, v12 + 1, v12 + 2, v12 + 3, a2 - 1, result).n128_u64[0];
      return result;
    }

LABEL_10:
    if (v15 <= 23)
    {
      if (a5)
      {

        std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,short>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<short const*,void *,true> const&,re::Pair<short const*,void *,true> const&)#1} &,re::Pair<short const*,void *,true>*>(v12, a2);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,short>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<short const*,void *,true> const&,re::Pair<short const*,void *,true> const&)#1} &,re::Pair<short const*,void *,true>*>(v12, a2);
      }

      return result;
    }

    if (v13 == 1)
    {
      if (v12 != a2)
      {

        std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,short>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<short const*,void *,true> const&,re::Pair<short const*,void *,true> const&)#1} &,re::Pair<short const*,void *,true>*,re::Pair<short const*,void *,true>*>(v12, a2, a2, a3);
      }

      return result;
    }

    v16 = &v12[v15 >> 1];
    v17 = v16;
    v18 = *v9->n128_u64[0];
    if (v15 >= 0x81)
    {
      v19 = *v16->n128_u64[0];
      if (v19 >= *v12->n128_u64[0])
      {
        if (v18 < v19)
        {
          v55 = *v16;
          *v16 = *v9;
          *v9 = v55;
          if (*v16->n128_u64[0] < *v12->n128_u64[0])
          {
            v56 = *v12;
            *v12 = *v16;
            *v16 = v56;
          }
        }
      }

      else
      {
        if (v18 >= v19)
        {
          v59 = *v12;
          *v12 = *v16;
          *v16 = v59;
          if (*v9->n128_u64[0] >= *v16->n128_u64[0])
          {
            goto LABEL_28;
          }

          v53 = *v16;
          *v16 = *v9;
        }

        else
        {
          v53 = *v12;
          *v12 = *v9;
        }

        *v9 = v53;
      }

LABEL_28:
      v21 = v12 + 1;
      v22 = &v16[-1];
      v23 = *v16[-1].n128_u64[0];
      v24 = *v10->n128_u64[0];
      if (v23 >= *v12[1].n128_u64[0])
      {
        if (v24 < v23)
        {
          v60 = *v22;
          *v22 = *v10;
          *v10 = v60;
          if (**v22 < *v21->n128_u64[0])
          {
            v26 = *v21;
            *v21 = *v22;
            *v22 = v26;
          }
        }
      }

      else
      {
        if (v24 >= v23)
        {
          v27 = *v21;
          *v21 = *v22;
          *v22 = v27;
          if (*v10->n128_u64[0] >= **v22)
          {
            goto LABEL_40;
          }

          v62 = *v22;
          *v22 = *v10;
          v25 = v62;
        }

        else
        {
          v25 = *v21;
          *v21 = *v10;
        }

        *v10 = v25;
      }

LABEL_40:
      v28 = v12 + 2;
      v30 = v16[1].n128_u64[0];
      v29 = v16 + 1;
      v31 = *v30;
      v32 = *v11->n128_u64[0];
      if (v31 >= *v12[2].n128_u64[0])
      {
        if (v32 < v31)
        {
          v63 = *v29;
          *v29 = *v11;
          *v11 = v63;
          if (*v29->n128_u64[0] < *v28->n128_u64[0])
          {
            v34 = *v28;
            *v28 = *v29;
            *v29 = v34;
          }
        }
      }

      else
      {
        if (v32 >= v31)
        {
          v35 = *v28;
          *v28 = *v29;
          *v29 = v35;
          if (*v11->n128_u64[0] >= *v29->n128_u64[0])
          {
            goto LABEL_49;
          }

          v64 = *v29;
          *v29 = *v11;
          v33 = v64;
        }

        else
        {
          v33 = *v28;
          *v28 = *v11;
        }

        *v11 = v33;
      }

LABEL_49:
      v36 = **v17;
      v37 = *v29->n128_u64[0];
      if (v36 >= **v22)
      {
        if (v37 < v36)
        {
          v66 = *v17;
          *v17 = *v29;
          *v29 = v66;
          if (**v17 < **v22)
          {
            v67 = *v22;
            *v22 = *v17;
            *v17 = v67;
          }
        }

        goto LABEL_58;
      }

      if (v37 >= v36)
      {
        v68 = *v22;
        *v22 = *v17;
        *v17 = v68;
        if (*v29->n128_u64[0] >= **v17)
        {
LABEL_58:
          v69 = *v12;
          *v12 = *v17;
          *v17 = v69;
          goto LABEL_59;
        }

        v65 = *v17;
        *v17 = *v29;
      }

      else
      {
        v65 = *v22;
        *v22 = *v29;
      }

      *v29 = v65;
      goto LABEL_58;
    }

    v20 = *v12->n128_u64[0];
    if (v20 >= **v17)
    {
      if (v18 < v20)
      {
        v57 = *v12;
        *v12 = *v9;
        *v9 = v57;
        if (*v12->n128_u64[0] < **v17)
        {
          v58 = *v17;
          *v17 = *v12;
          *v12 = v58;
        }
      }
    }

    else
    {
      if (v18 < v20)
      {
        v54 = *v17;
        *v17 = *v9;
LABEL_36:
        *v9 = v54;
        goto LABEL_59;
      }

      v61 = *v17;
      *v17 = *v12;
      *v12 = v61;
      if (*v9->n128_u64[0] < *v12->n128_u64[0])
      {
        v54 = *v12;
        *v12 = *v9;
        goto LABEL_36;
      }
    }

LABEL_59:
    if ((a5 & 1) == 0 && *v12[-1].n128_u64[0] >= *v12->n128_u64[0])
    {
      v12 = std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,re::Pair<short const*,void *,true> *,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,short>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<short const*,void *,true> const&,re::Pair<short const*,void *,true> const&)#1} &>(v12, a2);
      goto LABEL_66;
    }

    v38 = std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,re::Pair<short const*,void *,true> *,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,short>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<short const*,void *,true> const&,re::Pair<short const*,void *,true> const&)#1} &>(v12, a2);
    if ((v39 & 1) == 0)
    {
      goto LABEL_64;
    }

    v40 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,short>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<short const*,void *,true> const&,re::Pair<short const*,void *,true> const&)#1} &,re::Pair<short const*,void *,true>*>(v12, v38, result);
    v12 = v38 + 1;
    if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,short>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<short const*,void *,true> const&,re::Pair<short const*,void *,true> const&)#1} &,re::Pair<short const*,void *,true>*>(v38 + 1, a2, v41))
    {
      a4 = -v14;
      a2 = v38;
      if (v40)
      {
        return result;
      }

      goto LABEL_1;
    }

    v13 = v14 + 1;
    if (!v40)
    {
LABEL_64:
      result = std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,short>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<short const*,void *,true> const&,re::Pair<short const*,void *,true> const&)#1} &,re::Pair<short const*,void *,true>*,false>(a1, v38, a3, -v14, a5 & 1, result);
      v12 = v38 + 1;
LABEL_66:
      a5 = 0;
      a4 = -v14;
      goto LABEL_2;
    }
  }

  v42 = v12 + 1;
  v48 = v12 + 2;
  v49 = v12[2].n128_u64[0];
  v50 = *v12[1].n128_u64[0];
  v51 = *v49;
  if (v50 >= *v12->n128_u64[0])
  {
    if (v51 < v50)
    {
      result = *v42;
      *v42 = *v48;
      *v48 = result;
      if (*v12[1].n128_u64[0] < *v12->n128_u64[0])
      {
        v73 = *v12;
        *v12 = *v42;
        result = v73;
        *v42 = v73;
      }
    }
  }

  else
  {
    if (v51 < v50)
    {
      v72 = *v12;
      *v12 = *v48;
      result = v72;
      goto LABEL_100;
    }

    v74 = *v12;
    *v12 = *v42;
    result = v74;
    *v42 = v74;
    if (*v49 < *v12[1].n128_u64[0])
    {
      result = *v42;
      *v42 = *v48;
LABEL_100:
      *v48 = result;
    }
  }

  if (*v9->n128_u64[0] >= *v48->n128_u64[0])
  {
    return result;
  }

  result = *v48;
  *v48 = *v9;
  *v9 = result;
  if (*v48->n128_u64[0] >= *v42->n128_u64[0])
  {
    return result;
  }

  result = *v42;
  *v42 = *v48;
  *v48 = result;
LABEL_104:
  if (*v12[1].n128_u64[0] < *v12->n128_u64[0])
  {
    v75 = *v12;
    *v12 = *v42;
    result = v75;
    *v42 = v75;
  }

  return result;
}

__int16 **std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,short>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<short const*,void *,true> const&,re::Pair<short const*,void *,true> const&)#1} &,re::Pair<short const*,void *,true>*>(__int16 **result, __int16 **a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    if (result + 2 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v2;
        v6 = v4[2];
        if (*v6 < **v4)
        {
          v7 = v4[3];
          v8 = v3;
          while (1)
          {
            *(result + v8 + 16) = *(result + v8);
            if (!v8)
            {
              break;
            }

            v9 = **(result + v8 - 16);
            v8 -= 16;
            if (*v6 >= v9)
            {
              v10 = (result + v8 + 16);
              goto LABEL_10;
            }
          }

          v10 = result;
LABEL_10:
          *v10 = v6;
          v10[1] = v7;
        }

        v2 = v5 + 2;
        v3 += 16;
        v4 = v5;
      }

      while (v5 + 2 != a2);
    }
  }

  return result;
}

__int16 **std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,short>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<short const*,void *,true> const&,re::Pair<short const*,void *,true> const&)#1} &,re::Pair<short const*,void *,true>*>(__int16 **result, __int16 **a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    while (v2 != a2)
    {
      v3 = v2;
      v4 = result[2];
      if (*v4 < **result)
      {
        v5 = result[3];
        v6 = v3;
        do
        {
          *v6 = *(v6 - 1);
          v7 = *(v6 - 4);
          v6 -= 2;
        }

        while (*v4 < *v7);
        *v6 = v4;
        v6[1] = v5;
      }

      v2 = v3 + 2;
      result = v3;
    }
  }

  return result;
}

__int16 **std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,re::Pair<short const*,void *,true> *,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,short>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<short const*,void *,true> const&,re::Pair<short const*,void *,true> const&)#1} &>(__int16 **a1, __int16 **a2)
{
  v2 = *a1;
  v3 = *a1;
  v4 = **a1;
  if (v4 >= **(a2 - 2))
  {
    v7 = a1 + 2;
    do
    {
      v5 = v7;
      if (v7 >= a2)
      {
        break;
      }

      v7 += 2;
    }

    while (v4 >= **v5);
  }

  else
  {
    v5 = a1;
    do
    {
      v6 = v5[2];
      v5 += 2;
    }

    while (v4 >= *v6);
  }

  if (v5 < a2)
  {
    do
    {
      v8 = *(a2 - 2);
      a2 -= 2;
    }

    while (v4 < *v8);
  }

  while (v5 < a2)
  {
    v13 = *v5;
    *v5 = *a2;
    *a2 = v13;
    v9 = *v3;
    do
    {
      v10 = v5[2];
      v5 += 2;
    }

    while (v9 >= *v10);
    do
    {
      v11 = *(a2 - 2);
      a2 -= 2;
    }

    while (v9 < *v11);
  }

  if (v5 - 2 != a1)
  {
    *a1 = *(v5 - 1);
  }

  *(v5 - 1) = v2;
  return v5;
}

__int16 **std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,re::Pair<short const*,void *,true> *,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,short>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<short const*,void *,true> const&,re::Pair<short const*,void *,true> const&)#1} &>(__int16 **a1, __int16 **a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = *a1;
  v5 = **a1;
  do
  {
    v6 = *a1[v2 + 2];
    v2 += 2;
  }

  while (v6 < v5);
  v7 = &a1[v2];
  v8 = &a1[v2 - 2];
  if (v2 == 2)
  {
    do
    {
      if (v7 >= a2)
      {
        break;
      }

      v10 = *(a2 - 2);
      a2 -= 2;
    }

    while (*v10 >= v5);
  }

  else
  {
    do
    {
      v9 = *(a2 - 2);
      a2 -= 2;
    }

    while (*v9 >= v5);
  }

  if (v7 < a2)
  {
    v11 = &a1[v2];
    v12 = a2;
    do
    {
      v13 = *v11;
      *v11 = *v12;
      *v12 = v13;
      v14 = *v4;
      do
      {
        v15 = v11[2];
        v11 += 2;
      }

      while (*v15 < v14);
      do
      {
        v16 = *(v12 - 2);
        v12 -= 2;
      }

      while (*v16 >= v14);
    }

    while (v11 < v12);
    v8 = v11 - 2;
  }

  if (v8 != a1)
  {
    *a1 = *v8;
  }

  *v8 = v3;
  return v8;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,short>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<short const*,void *,true> const&,re::Pair<short const*,void *,true> const&)#1} &,re::Pair<short const*,void *,true>*>(__n128 *a1, __n128 *a2, __n128 a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = a1 + 1;
      v7 = a2[-1].n128_u64[0];
      v4 = a2 - 1;
      v8 = *a1[1].n128_u64[0];
      v9 = *v7;
      if (v8 < *a1->n128_u64[0])
      {
        if (v9 >= v8)
        {
          v30 = *a1;
          *a1 = *v6;
          *v6 = v30;
          if (*v4->n128_u64[0] >= *a1[1].n128_u64[0])
          {
            return 1;
          }

          v10 = *v6;
          *v6 = *v4;
          goto LABEL_13;
        }

LABEL_12:
        v10 = *a1;
        *a1 = *v4;
LABEL_13:
        *v4 = v10;
        return 1;
      }

      if (v9 >= v8)
      {
        return 1;
      }

      v25 = *v6;
      *v6 = *v4;
      *v4 = v25;
LABEL_50:
      if (*a1[1].n128_u64[0] < *a1->n128_u64[0])
      {
        v43 = *a1;
        *a1 = *v6;
        *v6 = v43;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_14;
      }

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,short>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<short const*,void *,true> const&,re::Pair<short const*,void *,true> const&)#1} &,re::Pair<short const*,void *,true>*,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
      return 1;
    }

    v6 = a1 + 1;
    v18 = a1 + 2;
    v19 = a1[2].n128_u64[0];
    v20 = a2 - 1;
    v21 = a1->n128_u64[0];
    v22 = *a1[1].n128_u64[0];
    v23 = *v19;
    if (v22 >= *a1->n128_u64[0])
    {
      if (v23 < v22)
      {
        v28 = *v6;
        *v6 = *v18;
        *v18 = v28;
        if (*v6->n128_u64[0] < *v21)
        {
          v29 = *a1;
          *a1 = *v6;
          *v6 = v29;
        }
      }

      goto LABEL_47;
    }

    if (v23 >= v22)
    {
      v40 = *a1;
      *a1 = *v6;
      *v6 = v40;
      if (*v19 >= *a1[1].n128_u64[0])
      {
        goto LABEL_47;
      }

      v24 = *v6;
      *v6 = *v18;
    }

    else
    {
      v24 = *a1;
      *a1 = *v18;
    }

    *v18 = v24;
LABEL_47:
    if (*v20->n128_u64[0] >= *v18->n128_u64[0])
    {
      return 1;
    }

    v41 = *v18;
    *v18 = *v20;
    *v20 = v41;
    if (*v18->n128_u64[0] >= *v6->n128_u64[0])
    {
      return 1;
    }

    v42 = *v6;
    *v6 = *v18;
    *v18 = v42;
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v5 = a2[-1].n128_u64[0];
    v4 = a2 - 1;
    if (*v5 >= *a1->n128_u64[0])
    {
      return 1;
    }

    goto LABEL_12;
  }

LABEL_14:
  v11 = a1 + 2;
  v12 = a1[2].n128_u64[0];
  v13 = a1 + 1;
  v14 = a1->n128_u64[0];
  v15 = *a1[1].n128_u64[0];
  v16 = *v12;
  if (v15 >= *a1->n128_u64[0])
  {
    if (v16 < v15)
    {
      v26 = *v13;
      *v13 = *v11;
      *v11 = v26;
      if (*v13->n128_u64[0] < *v14)
      {
        v27 = *a1;
        *a1 = *v13;
        *v13 = v27;
      }
    }
  }

  else
  {
    if (v16 >= v15)
    {
      v31 = *a1;
      *a1 = *v13;
      *v13 = v31;
      if (*v12 >= *a1[1].n128_u64[0])
      {
        goto LABEL_33;
      }

      v17 = *v13;
      *v13 = *v11;
    }

    else
    {
      v17 = *a1;
      *a1 = *v11;
    }

    *v11 = v17;
  }

LABEL_33:
  v32 = a1 + 3;
  if (&a1[3] == a2)
  {
    return 1;
  }

  v33 = 0;
  v34 = 0;
  while (1)
  {
    v35 = v32->n128_u64[0];
    if (*v32->n128_u64[0] < *v11->n128_u64[0])
    {
      v36 = v32->n128_u64[1];
      v37 = v33;
      while (1)
      {
        *(a1 + v37 + 48) = *(a1 + v37 + 32);
        if (v37 == -32)
        {
          break;
        }

        v38 = **(a1[1].n128_u64 + v37);
        v37 -= 16;
        if (*v35 >= v38)
        {
          v39 = (a1 + v37 + 48);
          goto LABEL_41;
        }
      }

      v39 = a1;
LABEL_41:
      v39->n128_u64[0] = v35;
      v39->n128_u64[1] = v36;
      if (++v34 == 8)
      {
        return &v32[1] == a2;
      }
    }

    v11 = v32;
    v33 += 16;
    if (++v32 == a2)
    {
      return 1;
    }
  }
}

__int16 **std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,short>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<short const*,void *,true> const&,re::Pair<short const*,void *,true> const&)#1} &,re::Pair<short const*,void *,true>*,re::Pair<short const*,void *,true>*>(__int16 **a1, __int16 **a2, __int16 **a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = (a2 - a1) >> 4;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[2 * v9];
      do
      {
        std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,short>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<short const*,void *,true> const&,re::Pair<short const*,void *,true> const&)#1} &,re::Pair<short const*,void *,true>*>(a1, a4, v8, v11);
        v11 -= 2;
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        if (**v12 < **a1)
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,short>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<short const*,void *,true> const&,re::Pair<short const*,void *,true> const&)#1} &,re::Pair<short const*,void *,true>*>(a1, a4, v8, a1);
        }

        v12 += 2;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v14 = 0;
        v23 = *a1;
        v15 = a1;
        do
        {
          v16 = &v15[2 * v14];
          v17 = v16 + 2;
          v18 = (2 * v14) | 1;
          v14 = 2 * v14 + 2;
          if (v14 >= v8)
          {
            v14 = v18;
          }

          else
          {
            v20 = v16[4];
            v19 = v16 + 4;
            if (**(v19 - 2) >= *v20)
            {
              v14 = v18;
            }

            else
            {
              v17 = v19;
            }
          }

          *v15 = *v17;
          v15 = v17;
        }

        while (v14 <= ((v8 - 2) >> 1));
        v6 -= 2;
        if (v17 == v6)
        {
          *v17 = v23;
        }

        else
        {
          *v17 = *v6;
          *v6 = v23;
          std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,short>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<short const*,void *,true> const&,re::Pair<short const*,void *,true> const&)#1} &,re::Pair<short const*,void *,true>*>(a1, (v17 + 2), a4, ((v17 + 2) - a1) >> 4);
        }
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,short>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<short const*,void *,true> const&,re::Pair<short const*,void *,true> const&)#1} &,re::Pair<short const*,void *,true>*>(uint64_t result, uint64_t a2, uint64_t a3, __int16 **a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 4)
    {
      v6 = v4 >> 3;
      v7 = (v4 >> 3) + 1;
      v8 = (result + 16 * v7);
      v9 = v6 + 2;
      if (v9 >= a3)
      {
        LOWORD(v10) = **v8;
      }

      else
      {
        v10 = **v8;
        v11 = *v8[2];
        v12 = v10 < v11;
        if (v10 <= v11)
        {
          LOWORD(v10) = *v8[2];
        }

        if (v12)
        {
          v8 += 2;
          v7 = v9;
        }
      }

      v13 = *a4;
      if (**a4 <= v10)
      {
        v14 = a4[1];
        do
        {
          v15 = a4;
          a4 = v8;
          *v15 = *v8;
          if (v5 < v7)
          {
            break;
          }

          v16 = (2 * v7) | 1;
          v8 = (result + 16 * v16);
          v7 = 2 * v7 + 2;
          if (v7 >= a3)
          {
            LOWORD(v17) = **v8;
            v7 = v16;
          }

          else
          {
            v17 = **v8;
            v18 = *v8[2];
            v19 = v17 < v18;
            if (v17 <= v18)
            {
              LOWORD(v17) = *v8[2];
            }

            if (v19)
            {
              v8 += 2;
            }

            else
            {
              v7 = v16;
            }
          }
        }

        while (*v13 <= v17);
        *a4 = v13;
        a4[1] = v14;
      }
    }
  }

  return result;
}

uint64_t std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,short>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<short const*,void *,true> const&,re::Pair<short const*,void *,true> const&)#1} &,re::Pair<short const*,void *,true>*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = v4 >> 1;
    v6 = (result + 16 * (v4 >> 1));
    v7 = (a2 - 16);
    v8 = *(a2 - 16);
    if (**v6 < *v8)
    {
      v9 = *(a2 - 8);
      do
      {
        v10 = v7;
        v7 = v6;
        *v10 = *v6;
        if (!v5)
        {
          break;
        }

        v5 = (v5 - 1) >> 1;
        v6 = (result + 16 * v5);
      }

      while (**v6 < *v8);
      *v7 = v8;
      v7[1] = v9;
    }
  }

  return result;
}

void std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithDynamicString<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<re::DynamicString const*,void *,true> const&,re::Pair<re::DynamicString const*,void *,true> const&)#1} &,re::Pair<re::DynamicString const*,void *,true>*,false>(char *a1, char *a2, uint64_t a3, uint64_t a4, int a5)
{
LABEL_1:
  v65 = (a2 - 32);
  v66 = (a2 - 16);
  v64 = (a2 - 48);
  v9 = a1;
LABEL_2:
  v10 = 1 - a4;
  v63 = a5;
  while (1)
  {
    a1 = v9;
    v11 = v10;
    v12 = &a2[-v9] >> 4;
    if (v12 > 2)
    {
      break;
    }

    if (v12 < 2)
    {
      return;
    }

    if (v12 == 2)
    {
      v60 = *(a2 - 2);
      v59 = (a2 - 16);
      if (re::DynamicString::operator<(v60, *v9))
      {
LABEL_81:
        v86 = *v9;
        *v9 = *v59;
        v53 = v86;
        goto LABEL_82;
      }

      return;
    }

LABEL_10:
    if (v12 <= 23)
    {
      if (a5)
      {

        std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithDynamicString<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<re::DynamicString const*,void *,true> const&,re::Pair<re::DynamicString const*,void *,true> const&)#1} &,re::Pair<re::DynamicString const*,void *,true>*>(v9, a2);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithDynamicString<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<re::DynamicString const*,void *,true> const&,re::Pair<re::DynamicString const*,void *,true> const&)#1} &,re::Pair<re::DynamicString const*,void *,true>*>(v9, a2);
      }

      return;
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithDynamicString<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<re::DynamicString const*,void *,true> const&,re::Pair<re::DynamicString const*,void *,true> const&)#1} &,re::Pair<re::DynamicString const*,void *,true>*,re::Pair<re::DynamicString const*,void *,true>*>(v9, a2, a2, a3);
      }

      return;
    }

    v13 = (v9 + 16 * (v12 >> 1));
    v14 = v13;
    v15 = *v66;
    if (v12 >= 0x81)
    {
      v16 = *v13;
      v17 = re::DynamicString::operator<(*v13, *a1);
      v18 = re::DynamicString::operator<(v15, v16);
      if (v17)
      {
        if (v18)
        {
          v67 = *a1;
          v19 = a2 - 16;
          *a1 = *v66;
          goto LABEL_28;
        }

        v73 = *a1;
        *a1 = *v13;
        *v13 = v73;
        if (re::DynamicString::operator<(*v66, *v13))
        {
          v67 = *v13;
          v19 = a2 - 16;
          *v13 = *v66;
LABEL_28:
          *v19 = v67;
        }
      }

      else if (v18)
      {
        v69 = *v13;
        *v13 = *v66;
        *v66 = v69;
        if (re::DynamicString::operator<(*v13, *a1))
        {
          v70 = *a1;
          *a1 = *v13;
          *v13 = v70;
        }
      }

      v24 = (a1 + 16);
      v26 = v13 - 2;
      v25 = *(v13 - 2);
      v27 = re::DynamicString::operator<(v25, *(a1 + 2));
      v28 = re::DynamicString::operator<(*v65, v25);
      if (v27)
      {
        if (v28)
        {
          v29 = *v24;
          v30 = a2 - 32;
          *v24 = *v65;
          goto LABEL_42;
        }

        v32 = *v24;
        *v24 = *v26;
        *v26 = v32;
        if (re::DynamicString::operator<(*v65, *v26))
        {
          v76 = *v26;
          v30 = a2 - 32;
          *v26 = *v65;
          v29 = v76;
LABEL_42:
          *v30 = v29;
        }
      }

      else if (v28)
      {
        v74 = *v26;
        *v26 = *v65;
        *v65 = v74;
        if (re::DynamicString::operator<(*v26, *v24))
        {
          v31 = *v24;
          *v24 = *v26;
          *v26 = v31;
        }
      }

      v33 = (a1 + 32);
      v35 = v13[2];
      v34 = v13 + 2;
      v36 = re::DynamicString::operator<(v35, *(a1 + 4));
      v37 = re::DynamicString::operator<(*v64, v35);
      if (v36)
      {
        if (v37)
        {
          v38 = *v33;
          v39 = a2 - 48;
          *v33 = *v64;
          goto LABEL_51;
        }

        v41 = *v33;
        *v33 = *v34;
        *v34 = v41;
        if (re::DynamicString::operator<(*v64, *v34))
        {
          v78 = *v34;
          v39 = a2 - 48;
          *v34 = *v64;
          v38 = v78;
LABEL_51:
          *v39 = v38;
        }
      }

      else if (v37)
      {
        v77 = *v34;
        *v34 = *v64;
        *v64 = v77;
        if (re::DynamicString::operator<(*v34, *v33))
        {
          v40 = *v33;
          *v33 = *v34;
          *v34 = v40;
        }
      }

      v42 = *v14;
      v43 = re::DynamicString::operator<(*v14, *v26);
      v44 = re::DynamicString::operator<(*v34, v42);
      if (v43)
      {
        a5 = v63;
        if (v44)
        {
          v79 = *v26;
          *v26 = *v34;
          goto LABEL_60;
        }

        v82 = *v26;
        *v26 = *v14;
        *v14 = v82;
        if (re::DynamicString::operator<(*v34, *v14))
        {
          v79 = *v14;
          *v14 = *v34;
LABEL_60:
          *v34 = v79;
        }
      }

      else
      {
        a5 = v63;
        if (v44)
        {
          v80 = *v14;
          *v14 = *v34;
          *v34 = v80;
          if (re::DynamicString::operator<(*v14, *v26))
          {
            v81 = *v26;
            *v26 = *v14;
            *v14 = v81;
          }
        }
      }

      v83 = *a1;
      *a1 = *v14;
      *v14 = v83;
      if (a5)
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    v20 = *v9;
    v21 = re::DynamicString::operator<(*a1, *v13);
    v22 = re::DynamicString::operator<(v15, v20);
    if (v21)
    {
      if (v22)
      {
        v68 = *v13;
        v23 = a2 - 16;
        *v13 = *v66;
        goto LABEL_37;
      }

      v75 = *v13;
      *v13 = *a1;
      *a1 = v75;
      if (re::DynamicString::operator<(*v66, *a1))
      {
        v68 = *a1;
        v23 = a2 - 16;
        *a1 = *v66;
LABEL_37:
        *v23 = v68;
      }

LABEL_38:
      if (a5)
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    if (!v22)
    {
      goto LABEL_38;
    }

    v71 = *a1;
    *a1 = *v66;
    *v66 = v71;
    if (!re::DynamicString::operator<(*a1, *v13))
    {
      goto LABEL_38;
    }

    v72 = *v13;
    *v13 = *a1;
    *a1 = v72;
    if (a5)
    {
      goto LABEL_63;
    }

LABEL_62:
    if ((re::DynamicString::operator<(*(a1 - 2), *a1) & 1) == 0)
    {
      v9 = std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,re::Pair<re::DynamicString const*,void *,true> *,BOOL re::internal::serializeDictionaryWithDynamicString<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<re::DynamicString const*,void *,true> const&,re::Pair<re::DynamicString const*,void *,true> const&)#1} &>(a1, a2);
      goto LABEL_68;
    }

LABEL_63:
    v45 = std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,re::Pair<re::DynamicString const*,void *,true> *,BOOL re::internal::serializeDictionaryWithDynamicString<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<re::DynamicString const*,void *,true> const&,re::Pair<re::DynamicString const*,void *,true> const&)#1} &>(a1, a2);
    if ((v46 & 1) == 0)
    {
      goto LABEL_66;
    }

    v47 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithDynamicString<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<re::DynamicString const*,void *,true> const&,re::Pair<re::DynamicString const*,void *,true> const&)#1} &,re::Pair<re::DynamicString const*,void *,true>*>(a1, v45);
    v9 = (v45 + 1);
    if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithDynamicString<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<re::DynamicString const*,void *,true> const&,re::Pair<re::DynamicString const*,void *,true> const&)#1} &,re::Pair<re::DynamicString const*,void *,true>*>(v45 + 2, a2))
    {
      a4 = -v11;
      a2 = v45;
      if (v47)
      {
        return;
      }

      goto LABEL_1;
    }

    v10 = v11 + 1;
    if (!v47)
    {
LABEL_66:
      std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithDynamicString<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<re::DynamicString const*,void *,true> const&,re::Pair<re::DynamicString const*,void *,true> const&)#1} &,re::Pair<re::DynamicString const*,void *,true>*,false>(a1, v45, a3, -v11, a5 & 1);
      v9 = (v45 + 1);
LABEL_68:
      a5 = 0;
      a4 = -v11;
      goto LABEL_2;
    }
  }

  if (v12 != 3)
  {
    if (v12 == 4)
    {

      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithDynamicString<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<re::DynamicString const*,void *,true> const&,re::Pair<re::DynamicString const*,void *,true> const&)#1} &,re::Pair<re::DynamicString const*,void *,true>*,0>(v9, (v9 + 16), (v9 + 32), v66);
      return;
    }

    if (v12 == 5)
    {
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithDynamicString<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<re::DynamicString const*,void *,true> const&,re::Pair<re::DynamicString const*,void *,true> const&)#1} &,re::Pair<re::DynamicString const*,void *,true>*,0>(v9, (v9 + 16), (v9 + 32), (v9 + 48));
      v55 = *(a2 - 2);
      v54 = a2 - 16;
      if (re::DynamicString::operator<(v55, *(v9 + 48)))
      {
        v56 = *(v9 + 48);
        *(v9 + 48) = *v54;
        *v54 = v56;
        if (re::DynamicString::operator<(*(v9 + 48), *(v9 + 32)))
        {
          v57 = *(v9 + 32);
          *(v9 + 32) = *(v9 + 48);
          *(v9 + 48) = v57;
          if (re::DynamicString::operator<(*(v9 + 32), *(v9 + 16)))
          {
            v58 = *(v9 + 16);
            *(v9 + 16) = *(v9 + 32);
            *(v9 + 32) = v58;
            if (re::DynamicString::operator<(*(v9 + 16), *v9))
            {
              v85 = *v9;
              *v9 = *(v9 + 16);
              *(v9 + 16) = v85;
            }
          }
        }
      }

      return;
    }

    goto LABEL_10;
  }

  v48 = (v9 + 16);
  v49 = *(v9 + 16);
  v50 = re::DynamicString::operator<(v49, *v9);
  v51 = *(a2 - 2);
  v59 = (a2 - 16);
  v52 = re::DynamicString::operator<(v51, v49);
  if (v50)
  {
    if (v52)
    {
      goto LABEL_81;
    }

    v84 = *v9;
    *v9 = *v48;
    *v48 = v84;
    if (re::DynamicString::operator<(*v59, *(v9 + 16)))
    {
      v53 = *v48;
      *v48 = *v59;
LABEL_82:
      *v59 = v53;
    }
  }

  else if (v52)
  {
    v62 = *v48;
    *v48 = *v59;
    *v59 = v62;
    if (re::DynamicString::operator<(*(v9 + 16), *v9))
    {
      v87 = *v9;
      *v9 = *v48;
      *v48 = v87;
    }
  }
}

uint64_t std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithDynamicString<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<re::DynamicString const*,void *,true> const&,re::Pair<re::DynamicString const*,void *,true> const&)#1} &,re::Pair<re::DynamicString const*,void *,true>*>(uint64_t result, uint64_t *a2)
{
  if (result != a2)
  {
    v3 = result;
    v4 = (result + 16);
    if ((result + 16) != a2)
    {
      v5 = 0;
      v6 = result;
      do
      {
        v7 = v4;
        v8 = v6[2];
        result = re::DynamicString::operator<(v8, *v6);
        if (result)
        {
          v9 = v6[3];
          v10 = v5;
          while (1)
          {
            *(v3 + v10 + 16) = *(v3 + v10);
            if (!v10)
            {
              break;
            }

            result = re::DynamicString::operator<(v8, *(v3 + v10 - 16));
            v10 -= 16;
            if ((result & 1) == 0)
            {
              v11 = (v3 + v10 + 16);
              goto LABEL_10;
            }
          }

          v11 = v3;
LABEL_10:
          *v11 = v8;
          v11[1] = v9;
        }

        v4 = v7 + 2;
        v5 += 16;
        v6 = v7;
      }

      while (v7 + 2 != a2);
    }
  }

  return result;
}

uint64_t std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithDynamicString<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<re::DynamicString const*,void *,true> const&,re::Pair<re::DynamicString const*,void *,true> const&)#1} &,re::Pair<re::DynamicString const*,void *,true>*>(uint64_t result, _OWORD *a2)
{
  if (result != a2)
  {
    v3 = result;
    v4 = (result + 16);
    while (v4 != a2)
    {
      v5 = v4;
      v6 = v3[2];
      result = re::DynamicString::operator<(v6, *v3);
      if (result)
      {
        v7 = v3[3];
        v8 = v5;
        do
        {
          v9 = v8 - 2;
          *v8 = *(v8 - 1);
          result = re::DynamicString::operator<(v6, *(v8 - 4));
          v8 = v9;
        }

        while ((result & 1) != 0);
        *v9 = v6;
        v9[1] = v7;
      }

      v4 = v5 + 1;
      v3 = v5;
    }
  }

  return result;
}

uint64_t *std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,re::Pair<re::DynamicString const*,void *,true> *,BOOL re::internal::serializeDictionaryWithDynamicString<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<re::DynamicString const*,void *,true> const&,re::Pair<re::DynamicString const*,void *,true> const&)#1} &>(uint64_t *a1, uint64_t *a2)
{
  v2 = a2;
  v12 = *a1;
  v4 = *a1;
  if (re::DynamicString::operator<(*a1, *(a2 - 2)))
  {
    v5 = a1;
    do
    {
      v6 = v5[2];
      v5 += 2;
    }

    while ((re::DynamicString::operator<(v4, v6) & 1) == 0);
  }

  else
  {
    v7 = a1 + 2;
    do
    {
      v5 = v7;
      if (v7 >= v2)
      {
        break;
      }

      v7 += 2;
    }

    while (!re::DynamicString::operator<(v4, *v5));
  }

  if (v5 < v2)
  {
    do
    {
      v8 = *(v2 - 2);
      v2 -= 2;
    }

    while ((re::DynamicString::operator<(v4, v8) & 1) != 0);
  }

  while (v5 < v2)
  {
    v13 = *v5;
    *v5 = *v2;
    *v2 = v13;
    do
    {
      v9 = v5[2];
      v5 += 2;
    }

    while (!re::DynamicString::operator<(v4, v9));
    do
    {
      v10 = *(v2 - 2);
      v2 -= 2;
    }

    while ((re::DynamicString::operator<(v4, v10) & 1) != 0);
  }

  if (v5 - 2 != a1)
  {
    *a1 = *(v5 - 1);
  }

  *(v5 - 1) = v12;
  return v5;
}

__int128 *std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,re::Pair<re::DynamicString const*,void *,true> *,BOOL re::internal::serializeDictionaryWithDynamicString<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<re::DynamicString const*,void *,true> const&,re::Pair<re::DynamicString const*,void *,true> const&)#1} &>(__int128 *a1, __int128 *a2)
{
  v4 = 0;
  v17 = *a1;
  v5 = *a1;
  do
  {
    v6 = re::DynamicString::operator<(*&a1[++v4], v5);
  }

  while ((v6 & 1) != 0);
  v7 = &a1[v4];
  v8 = &a1[v4 - 1];
  if (v4 == 1)
  {
    do
    {
      if (v7 >= a2)
      {
        break;
      }

      v10 = *(a2-- - 2);
    }

    while ((re::DynamicString::operator<(v10, v5) & 1) == 0);
  }

  else
  {
    do
    {
      v9 = *(a2-- - 2);
    }

    while (!re::DynamicString::operator<(v9, v5));
  }

  if (v7 < a2)
  {
    v11 = &a1[v4];
    v12 = a2;
    do
    {
      v13 = *v11;
      *v11 = *v12;
      *v12 = v13;
      do
      {
        v14 = *(v11++ + 2);
      }

      while ((re::DynamicString::operator<(v14, v5) & 1) != 0);
      do
      {
        v15 = *(v12-- - 2);
      }

      while (!re::DynamicString::operator<(v15, v5));
    }

    while (v11 < v12);
    v8 = v11 - 1;
  }

  if (v8 != a1)
  {
    *a1 = *v8;
  }

  *v8 = v17;
  return v8;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithDynamicString<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<re::DynamicString const*,void *,true> const&,re::Pair<re::DynamicString const*,void *,true> const&)#1} &,re::Pair<re::DynamicString const*,void *,true>*>(void *a1, char *a2)
{
  v4 = (a2 - a1) >> 4;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v13 = (a1 + 2);
        v12 = a1[2];
        v14 = re::DynamicString::operator<(v12, *a1);
        v15 = *(a2 - 2);
        v5 = (a2 - 16);
        v16 = re::DynamicString::operator<(v15, v12);
        if ((v14 & 1) == 0)
        {
          if (v16)
          {
            v26 = *v13;
            *v13 = *v5;
            *v5 = v26;
            if (re::DynamicString::operator<(a1[2], *a1))
            {
              v27 = *a1;
              *a1 = *v13;
              *v13 = v27;
            }
          }

          return 1;
        }

        if (!v16)
        {
          v30 = *a1;
          *a1 = *v13;
          *v13 = v30;
          if (!re::DynamicString::operator<(*v5, a1[2]))
          {
            return 1;
          }

          v17 = *v13;
          *v13 = *v5;
          goto LABEL_17;
        }

LABEL_16:
        v17 = *a1;
        *a1 = *v5;
LABEL_17:
        *v5 = v17;
        return 1;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithDynamicString<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<re::DynamicString const*,void *,true> const&,re::Pair<re::DynamicString const*,void *,true> const&)#1} &,re::Pair<re::DynamicString const*,void *,true>*,0>(a1, a1 + 2, a1 + 4, a2 - 2);
        return 1;
      case 5:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithDynamicString<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<re::DynamicString const*,void *,true> const&,re::Pair<re::DynamicString const*,void *,true> const&)#1} &,re::Pair<re::DynamicString const*,void *,true>*,0>(a1, a1 + 2, a1 + 4, a1 + 6);
        v7 = *(a2 - 2);
        v6 = a2 - 16;
        if (re::DynamicString::operator<(v7, a1[6]))
        {
          v8 = *(a1 + 3);
          *(a1 + 3) = *v6;
          *v6 = v8;
          if (re::DynamicString::operator<(a1[6], a1[4]))
          {
            v9 = *(a1 + 2);
            *(a1 + 2) = *(a1 + 3);
            *(a1 + 3) = v9;
            if (re::DynamicString::operator<(a1[4], a1[2]))
            {
              v10 = *(a1 + 1);
              *(a1 + 1) = *(a1 + 2);
              *(a1 + 2) = v10;
              if (re::DynamicString::operator<(a1[2], *a1))
              {
                v11 = *a1;
                *a1 = *(a1 + 1);
                *(a1 + 1) = v11;
              }
            }
          }
        }

        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = (a2 - 16);
      if (!re::DynamicString::operator<(*(a2 - 2), *a1))
      {
        return 1;
      }

      goto LABEL_16;
    }
  }

  v19 = a1 + 2;
  v18 = a1[2];
  v20 = *a1;
  v21 = re::DynamicString::operator<(v18, *a1);
  v23 = a1 + 4;
  v22 = a1[4];
  v24 = re::DynamicString::operator<(v22, v18);
  if (v21)
  {
    if (v24)
    {
      v25 = *a1;
      *a1 = *v23;
    }

    else
    {
      v31 = *a1;
      *a1 = *v19;
      *v19 = v31;
      if (!re::DynamicString::operator<(v22, a1[2]))
      {
        goto LABEL_33;
      }

      v25 = *v19;
      *v19 = *v23;
    }

    *v23 = v25;
  }

  else if (v24)
  {
    v28 = *v19;
    *v19 = *v23;
    *v23 = v28;
    if (re::DynamicString::operator<(*v19, v20))
    {
      v29 = *a1;
      *a1 = *v19;
      *v19 = v29;
    }
  }

LABEL_33:
  v32 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v33 = 0;
  v34 = 0;
  while (1)
  {
    v35 = *v32;
    if (re::DynamicString::operator<(*v32, *v23))
    {
      v36 = v32[1];
      v37 = v33;
      while (1)
      {
        v38 = a1 + v37;
        *(a1 + v37 + 48) = *(a1 + v37 + 32);
        if (v37 == -32)
        {
          break;
        }

        v37 -= 16;
        if ((re::DynamicString::operator<(v35, *(v38 + 2)) & 1) == 0)
        {
          v39 = (a1 + v37 + 48);
          goto LABEL_41;
        }
      }

      v39 = a1;
LABEL_41:
      *v39 = v35;
      v39[1] = v36;
      if (++v34 == 8)
      {
        return v32 + 2 == a2;
      }
    }

    v23 = v32;
    v33 += 16;
    v32 += 2;
    if (v32 == a2)
    {
      return 1;
    }
  }
}

char *std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithDynamicString<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<re::DynamicString const*,void *,true> const&,re::Pair<re::DynamicString const*,void *,true> const&)#1} &,re::Pair<re::DynamicString const*,void *,true>*,re::Pair<re::DynamicString const*,void *,true>*>(char *a1, char *a2, char *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = (a2 - a1) >> 4;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[16 * v9];
      do
      {
        std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithDynamicString<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<re::DynamicString const*,void *,true> const&,re::Pair<re::DynamicString const*,void *,true> const&)#1} &,re::Pair<re::DynamicString const*,void *,true>*>(a1, a4, v8, v11);
        v11 -= 2;
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        if (re::DynamicString::operator<(*v12, *a1))
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithDynamicString<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<re::DynamicString const*,void *,true> const&,re::Pair<re::DynamicString const*,void *,true> const&)#1} &,re::Pair<re::DynamicString const*,void *,true>*>(a1, a4, v8, a1);
        }

        v12 += 2;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v14 = a2 - 16;
      do
      {
        v18 = *a1;
        v15 = std::__floyd_sift_down[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithDynamicString<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<re::DynamicString const*,void *,true> const&,re::Pair<re::DynamicString const*,void *,true> const&)#1} &,re::Pair<re::DynamicString const*,void *,true>*>(a1, a4, v8);
        if (v14 == v15)
        {
          *v15 = v18;
        }

        else
        {
          *v15 = *v14;
          *v14 = v18;
          std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithDynamicString<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<re::DynamicString const*,void *,true> const&,re::Pair<re::DynamicString const*,void *,true> const&)#1} &,re::Pair<re::DynamicString const*,void *,true>*>(a1, (v15 + 16), a4, (v15 + 16 - a1) >> 4);
        }

        v14 -= 16;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithDynamicString<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<re::DynamicString const*,void *,true> const&,re::Pair<re::DynamicString const*,void *,true> const&)#1} &,re::Pair<re::DynamicString const*,void *,true>*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = result;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - result) >> 4)
    {
      v8 = a3;
      v9 = (a4 - result) >> 3;
      v10 = v9 + 1;
      v11 = (result + 16 * (v9 + 1));
      v12 = v9 + 2;
      if (v9 + 2 >= a3)
      {
        v17 = *v11;
      }

      else
      {
        v13 = *v11;
        v14 = v11[2];
        v15 = re::DynamicString::operator<(*v11, v14);
        v16 = v15 == 0;
        if (v15)
        {
          v17 = v14;
        }

        else
        {
          v17 = v13;
        }

        if (!v16)
        {
          v11 += 2;
          v10 = v12;
        }
      }

      v18 = *v5;
      result = re::DynamicString::operator<(v17, *v5);
      if ((result & 1) == 0)
      {
        v27 = v5[1];
        v28 = v8;
        do
        {
          v19 = v5;
          v5 = v11;
          *v19 = *v11;
          if (v7 < v10)
          {
            break;
          }

          v20 = (2 * v10) | 1;
          v11 = (v6 + 16 * v20);
          v21 = 2 * v10 + 2;
          if (v21 >= v8)
          {
            v26 = *v11;
            v10 = (2 * v10) | 1;
          }

          else
          {
            v22 = *v11;
            v23 = v11[2];
            v24 = re::DynamicString::operator<(*v11, v23);
            v25 = v24 == 0;
            v26 = v24 ? v23 : v22;
            if (!v25)
            {
              v11 += 2;
            }

            v8 = v28;
            v10 = v25 ? v20 : v21;
          }

          result = re::DynamicString::operator<(v26, v18);
        }

        while (!result);
        *v5 = v18;
        v5[1] = v27;
      }
    }
  }

  return result;
}

_OWORD *std::__floyd_sift_down[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithDynamicString<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<re::DynamicString const*,void *,true> const&,re::Pair<re::DynamicString const*,void *,true> const&)#1} &,re::Pair<re::DynamicString const*,void *,true>*>(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = (a3 - 2) / 2;
  do
  {
    v7 = &a1[v5];
    v8 = v7 + 1;
    v9 = (2 * v5) | 1;
    v10 = 2 * v5 + 2;
    if (v10 >= a3)
    {
      v5 = (2 * v5) | 1;
    }

    else
    {
      v12 = *(v7 + 4);
      v11 = v7 + 2;
      if (re::DynamicString::operator<(*(v11 - 2), v12))
      {
        v8 = v11;
        v5 = v10;
      }

      else
      {
        v5 = v9;
      }
    }

    *a1 = *v8;
    a1 = v8;
  }

  while (v5 <= v6);
  return v8;
}

uint64_t std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithDynamicString<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<re::DynamicString const*,void *,true> const&,re::Pair<re::DynamicString const*,void *,true> const&)#1} &,re::Pair<re::DynamicString const*,void *,true>*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = result;
    v7 = v4 >> 1;
    v8 = (result + 16 * (v4 >> 1));
    v10 = (a2 - 16);
    v9 = *(a2 - 16);
    result = re::DynamicString::operator<(*v8, v9);
    if (result)
    {
      v11 = *(a2 - 8);
      do
      {
        v12 = v10;
        v10 = v8;
        *v12 = *v8;
        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = (v6 + 16 * v7);
        result = re::DynamicString::operator<(*v8, v9);
      }

      while ((result & 1) != 0);
      *v10 = v9;
      v10[1] = v11;
    }
  }

  return result;
}

void std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithStringID<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<re::StringID const*,void *,true> const&,re::Pair<re::StringID const*,void *,true> const&)#1} &,re::Pair<re::StringID const*,void *,true>*,false>(__n128 *a1, __n128 *a2, uint64_t a3, uint64_t a4, char a5, __n128 a6)
{
LABEL_1:
  v9 = a2 - 1;
  v10 = a2 - 2;
  v11 = a2 - 3;
  v12 = a1;
LABEL_2:
  v13 = 1 - a4;
  while (1)
  {
    a1 = v12;
    v14 = v13;
    v15 = a2 - v12;
    if (v15 > 2)
    {
      break;
    }

    if (v15 < 2)
    {
      return;
    }

    if (v15 == 2)
    {
      v53 = a2[-1].n128_u64[0];
      v43 = a2 - 1;
      if (*v53 >> 1 < *v12->n128_u64[0] >> 1)
      {
LABEL_79:
        v75 = *v12;
        *v12 = *v43;
        v47 = v75;
        goto LABEL_80;
      }

      return;
    }

LABEL_10:
    if (v15 <= 23)
    {
      if (a5)
      {

        std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithStringID<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<re::StringID const*,void *,true> const&,re::Pair<re::StringID const*,void *,true> const&)#1} &,re::Pair<re::StringID const*,void *,true>*>(v12, a2);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithStringID<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<re::StringID const*,void *,true> const&,re::Pair<re::StringID const*,void *,true> const&)#1} &,re::Pair<re::StringID const*,void *,true>*>(v12, a2);
      }

      return;
    }

    if (v13 == 1)
    {
      if (v12 != a2)
      {

        std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithStringID<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<re::StringID const*,void *,true> const&,re::Pair<re::StringID const*,void *,true> const&)#1} &,re::Pair<re::StringID const*,void *,true>*,re::Pair<re::StringID const*,void *,true>*>(v12, a2, a2, a3);
      }

      return;
    }

    v16 = &v12[v15 >> 1];
    v17 = v16;
    v18 = *v9->n128_u64[0] >> 1;
    if (v15 >= 0x81)
    {
      v19 = *v16->n128_u64[0] >> 1;
      if (v19 >= *v12->n128_u64[0] >> 1)
      {
        if (v18 < v19)
        {
          v58 = *v16;
          *v16 = *v9;
          *v9 = v58;
          if (*v16->n128_u64[0] >> 1 < *v12->n128_u64[0] >> 1)
          {
            v59 = *v12;
            *v12 = *v16;
            *v16 = v59;
          }
        }
      }

      else
      {
        if (v18 < v19)
        {
          v56 = *v12;
          *v12 = *v9;
          goto LABEL_27;
        }

        v62 = *v12;
        *v12 = *v16;
        *v16 = v62;
        if (*v9->n128_u64[0] >> 1 < *v16->n128_u64[0] >> 1)
        {
          v56 = *v16;
          *v16 = *v9;
LABEL_27:
          *v9 = v56;
        }
      }

      v21 = v12 + 1;
      v22 = v16 - 1;
      v23 = *v16[-1].n128_u64[0] >> 1;
      v24 = *v10->n128_u64[0] >> 1;
      if (v23 >= *v12[1].n128_u64[0] >> 1)
      {
        if (v24 < v23)
        {
          v63 = *v22;
          *v22 = *v10;
          *v10 = v63;
          if (*v22->n128_u64[0] >> 1 < *v21->n128_u64[0] >> 1)
          {
            v26 = *v21;
            *v21 = *v22;
            *v22 = v26;
          }
        }
      }

      else
      {
        if (v24 < v23)
        {
          v25 = *v21;
          *v21 = *v10;
          goto LABEL_39;
        }

        v27 = *v21;
        *v21 = *v22;
        *v22 = v27;
        if (*v10->n128_u64[0] >> 1 < *v22->n128_u64[0] >> 1)
        {
          v65 = *v22;
          *v22 = *v10;
          v25 = v65;
LABEL_39:
          *v10 = v25;
        }
      }

      v28 = v12 + 2;
      v30 = v16[1].n128_u64[0];
      v29 = v16 + 1;
      v31 = *v30 >> 1;
      v32 = *v11->n128_u64[0] >> 1;
      if (v31 >= *v12[2].n128_u64[0] >> 1)
      {
        if (v32 < v31)
        {
          v66 = *v29;
          *v29 = *v11;
          *v11 = v66;
          if (*v29->n128_u64[0] >> 1 < *v28->n128_u64[0] >> 1)
          {
            v34 = *v28;
            *v28 = *v29;
            *v29 = v34;
          }
        }
      }

      else
      {
        if (v32 < v31)
        {
          v33 = *v28;
          *v28 = *v11;
          goto LABEL_48;
        }

        v35 = *v28;
        *v28 = *v29;
        *v29 = v35;
        if (*v11->n128_u64[0] >> 1 < *v29->n128_u64[0] >> 1)
        {
          v67 = *v29;
          *v29 = *v11;
          v33 = v67;
LABEL_48:
          *v11 = v33;
        }
      }

      v36 = *v17->n128_u64[0] >> 1;
      v37 = *v29->n128_u64[0] >> 1;
      if (v36 >= *v22->n128_u64[0] >> 1)
      {
        if (v37 < v36)
        {
          v69 = *v17;
          *v17 = *v29;
          *v29 = v69;
          if (*v17->n128_u64[0] >> 1 < *v22->n128_u64[0] >> 1)
          {
            v70 = *v22;
            *v22 = *v17;
            *v17 = v70;
          }
        }
      }

      else
      {
        if (v37 < v36)
        {
          v68 = *v22;
          *v22 = *v29;
          goto LABEL_57;
        }

        v71 = *v22;
        *v22 = *v17;
        *v17 = v71;
        if (*v29->n128_u64[0] >> 1 < *v17->n128_u64[0] >> 1)
        {
          v68 = *v17;
          *v17 = *v29;
LABEL_57:
          *v29 = v68;
        }
      }

      v72 = *v12;
      *v12 = *v17;
      *v17 = v72;
      goto LABEL_59;
    }

    v20 = *v12->n128_u64[0] >> 1;
    if (v20 >= *v17->n128_u64[0] >> 1)
    {
      if (v18 < v20)
      {
        v60 = *v12;
        *v12 = *v9;
        *v9 = v60;
        if (*v12->n128_u64[0] >> 1 < *v17->n128_u64[0] >> 1)
        {
          v61 = *v17;
          *v17 = *v12;
          *v12 = v61;
        }
      }
    }

    else
    {
      if (v18 < v20)
      {
        v57 = *v17;
        *v17 = *v9;
LABEL_36:
        *v9 = v57;
        goto LABEL_59;
      }

      v64 = *v17;
      *v17 = *v12;
      *v12 = v64;
      if (*v9->n128_u64[0] >> 1 < *v12->n128_u64[0] >> 1)
      {
        v57 = *v12;
        *v12 = *v9;
        goto LABEL_36;
      }
    }

LABEL_59:
    if ((a5 & 1) == 0 && *v12[-1].n128_u64[0] >> 1 >= *v12->n128_u64[0] >> 1)
    {
      v12 = std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,re::Pair<re::StringID const*,void *,true> *,BOOL re::internal::serializeDictionaryWithStringID<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<re::StringID const*,void *,true> const&,re::Pair<re::StringID const*,void *,true> const&)#1} &>(v12, a2);
      goto LABEL_66;
    }

    v38 = std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,re::Pair<re::StringID const*,void *,true> *,BOOL re::internal::serializeDictionaryWithStringID<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<re::StringID const*,void *,true> const&,re::Pair<re::StringID const*,void *,true> const&)#1} &>(v12, a2);
    if ((v39 & 1) == 0)
    {
      goto LABEL_64;
    }

    v40 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithStringID<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<re::StringID const*,void *,true> const&,re::Pair<re::StringID const*,void *,true> const&)#1} &,re::Pair<re::StringID const*,void *,true>*>(v12, v38, a6);
    v12 = v38 + 1;
    if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithStringID<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<re::StringID const*,void *,true> const&,re::Pair<re::StringID const*,void *,true> const&)#1} &,re::Pair<re::StringID const*,void *,true>*>(v38 + 1, a2, v41))
    {
      a4 = -v14;
      a2 = v38;
      if (v40)
      {
        return;
      }

      goto LABEL_1;
    }

    v13 = v14 + 1;
    if (!v40)
    {
LABEL_64:
      std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithStringID<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<re::StringID const*,void *,true> const&,re::Pair<re::StringID const*,void *,true> const&)#1} &,re::Pair<re::StringID const*,void *,true>*,false>(a1, v38, a3, -v14, a5 & 1, a6);
      v12 = v38 + 1;
LABEL_66:
      a5 = 0;
      a4 = -v14;
      goto LABEL_2;
    }
  }

  if (v15 != 3)
  {
    if (v15 == 4)
    {

      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithStringID<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<re::StringID const*,void *,true> const&,re::Pair<re::StringID const*,void *,true> const&)#1} &,re::Pair<re::StringID const*,void *,true>*,0>(v12, v12 + 1, v12 + 2, a2 - 1, a6);
      return;
    }

    if (v15 == 5)
    {
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithStringID<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<re::StringID const*,void *,true> const&,re::Pair<re::StringID const*,void *,true> const&)#1} &,re::Pair<re::StringID const*,void *,true>*,0>(v12, v12 + 1, v12 + 2, v12 + 3, a6);
      v49 = a2[-1].n128_u64[0];
      v48 = a2 - 1;
      if (*v49 >> 1 < *v12[3].n128_u64[0] >> 1)
      {
        v50 = v12[3];
        v12[3] = *v48;
        *v48 = v50;
        if (*v12[3].n128_u64[0] >> 1 < *v12[2].n128_u64[0] >> 1)
        {
          v51 = v12[2];
          v12[2] = v12[3];
          v12[3] = v51;
          if (*v12[2].n128_u64[0] >> 1 < *v12[1].n128_u64[0] >> 1)
          {
            v52 = v12[1];
            v12[1] = v12[2];
            v12[2] = v52;
            if (*v12[1].n128_u64[0] >> 1 < *v12->n128_u64[0] >> 1)
            {
              v74 = *v12;
              *v12 = v12[1];
              v12[1] = v74;
            }
          }
        }
      }

      return;
    }

    goto LABEL_10;
  }

  v42 = v12 + 1;
  v44 = a2[-1].n128_u64[0];
  v43 = a2 - 1;
  v45 = *v12[1].n128_u64[0] >> 1;
  v46 = *v44 >> 1;
  if (v45 >= *v12->n128_u64[0] >> 1)
  {
    if (v46 < v45)
    {
      v54 = *v42;
      *v42 = *v43;
      *v43 = v54;
      if (*v12[1].n128_u64[0] >> 1 < *v12->n128_u64[0] >> 1)
      {
        v76 = *v12;
        *v12 = *v42;
        *v42 = v76;
      }
    }
  }

  else
  {
    if (v46 < v45)
    {
      goto LABEL_79;
    }

    v73 = *v12;
    *v12 = *v42;
    *v42 = v73;
    if (*v43->n128_u64[0] >> 1 < *v12[1].n128_u64[0] >> 1)
    {
      v47 = *v42;
      *v42 = *v43;
LABEL_80:
      *v43 = v47;
    }
  }
}

void *std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithStringID<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<re::StringID const*,void *,true> const&,re::Pair<re::StringID const*,void *,true> const&)#1} &,re::Pair<re::StringID const*,void *,true>*>(void *result, void *a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    if (result + 2 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v2;
        v6 = v4[2];
        if (*v6 >> 1 < **v4 >> 1)
        {
          v7 = v4[3];
          v8 = v3;
          while (1)
          {
            *(result + v8 + 16) = *(result + v8);
            if (!v8)
            {
              break;
            }

            v9 = **(result + v8 - 16);
            v8 -= 16;
            if (*v6 >> 1 >= v9 >> 1)
            {
              v10 = (result + v8 + 16);
              goto LABEL_10;
            }
          }

          v10 = result;
LABEL_10:
          *v10 = v6;
          v10[1] = v7;
        }

        v2 = v5 + 2;
        v3 += 16;
        v4 = v5;
      }

      while (v5 + 2 != a2);
    }
  }

  return result;
}

uint64_t std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithStringID<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<re::StringID const*,void *,true> const&,re::Pair<re::StringID const*,void *,true> const&)#1} &,re::Pair<re::StringID const*,void *,true>*>(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v2 = result + 16;
    while (v2 != a2)
    {
      v3 = v2;
      v4 = *(result + 16);
      if (*v4 >> 1 < **result >> 1)
      {
        v5 = *(result + 24);
        v6 = v3;
        do
        {
          *v6 = *(v6 - 16);
          v7 = *(v6 - 32);
          v6 -= 16;
        }

        while (*v4 >> 1 < *v7 >> 1);
        *v6 = v4;
        *(v6 + 8) = v5;
      }

      v2 = v3 + 16;
      result = v3;
    }
  }

  return result;
}

_OWORD *std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,re::Pair<re::StringID const*,void *,true> *,BOOL re::internal::serializeDictionaryWithStringID<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<re::StringID const*,void *,true> const&,re::Pair<re::StringID const*,void *,true> const&)#1} &>(_OWORD *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = *a1;
  v4 = **a1 >> 1;
  if (v4 >= **(a2 - 2) >> 1)
  {
    v7 = a1 + 1;
    do
    {
      v5 = v7;
      if (v7 >= a2)
      {
        break;
      }

      ++v7;
    }

    while (v4 >= **v5 >> 1);
  }

  else
  {
    v5 = a1;
    do
    {
      v6 = *(v5++ + 2);
    }

    while (v4 >= *v6 >> 1);
  }

  if (v5 < a2)
  {
    do
    {
      v8 = *(a2-- - 2);
    }

    while (v4 < *v8 >> 1);
  }

  while (v5 < a2)
  {
    v13 = *v5;
    *v5 = *a2;
    *a2 = v13;
    v9 = *v3 >> 1;
    do
    {
      v10 = *(v5++ + 2);
    }

    while (v9 >= *v10 >> 1);
    do
    {
      v11 = *(a2-- - 2);
    }

    while (v9 < *v11 >> 1);
  }

  if (v5 - 1 != a1)
  {
    *a1 = *(v5 - 1);
  }

  *(v5 - 1) = v2;
  return v5;
}

__int128 *std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,re::Pair<re::StringID const*,void *,true> *,BOOL re::internal::serializeDictionaryWithStringID<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<re::StringID const*,void *,true> const&,re::Pair<re::StringID const*,void *,true> const&)#1} &>(__int128 *a1, __int128 *a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = *a1;
  v5 = **a1 >> 1;
  do
  {
    v6 = **&a1[++v2];
  }

  while (v5 > v6 >> 1);
  v7 = &a1[v2];
  v8 = &a1[v2 - 1];
  if (v2 == 1)
  {
    do
    {
      if (v7 >= a2)
      {
        break;
      }

      v10 = *(a2-- - 2);
    }

    while (v5 <= *v10 >> 1);
  }

  else
  {
    do
    {
      v9 = *(a2-- - 2);
    }

    while (v5 <= *v9 >> 1);
  }

  if (v7 < a2)
  {
    v11 = &a1[v2];
    v12 = a2;
    do
    {
      v13 = *v11;
      *v11 = *v12;
      *v12 = v13;
      v14 = *v4 >> 1;
      do
      {
        v15 = *(v11++ + 2);
      }

      while (v14 > *v15 >> 1);
      do
      {
        v16 = *(v12-- - 2);
      }

      while (v14 <= *v16 >> 1);
    }

    while (v11 < v12);
    v8 = v11 - 1;
  }

  if (v8 != a1)
  {
    *a1 = *v8;
  }

  *v8 = v3;
  return v8;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithStringID<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<re::StringID const*,void *,true> const&,re::Pair<re::StringID const*,void *,true> const&)#1} &,re::Pair<re::StringID const*,void *,true>*>(__n128 *a1, __n128 *a2, __n128 a3)
{
  v5 = a2 - a1;
  if (v5 > 2)
  {
    switch(v5)
    {
      case 3:
        v13 = a1 + 1;
        v6 = a2 - 1;
        v14 = *a1[1].n128_u64[0] >> 1;
        v15 = *a2[-1].n128_u64[0] >> 1;
        if (v14 >= *a1->n128_u64[0] >> 1)
        {
          if (v15 < v14)
          {
            v24 = *v13;
            *v13 = *v6;
            *v6 = v24;
            if (*a1[1].n128_u64[0] >> 1 < *a1->n128_u64[0] >> 1)
            {
              v25 = *a1;
              *a1 = *v13;
              *v13 = v25;
            }
          }

          return 1;
        }

        if (v15 >= v14)
        {
          v28 = *a1;
          *a1 = *v13;
          *v13 = v28;
          if (*v6->n128_u64[0] >> 1 >= *a1[1].n128_u64[0] >> 1)
          {
            return 1;
          }

          v16 = *v13;
          *v13 = *v6;
          goto LABEL_17;
        }

LABEL_16:
        v16 = *a1;
        *a1 = *v6;
LABEL_17:
        *v6 = v16;
        return 1;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithStringID<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<re::StringID const*,void *,true> const&,re::Pair<re::StringID const*,void *,true> const&)#1} &,re::Pair<re::StringID const*,void *,true>*,0>(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        return 1;
      case 5:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithStringID<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<re::StringID const*,void *,true> const&,re::Pair<re::StringID const*,void *,true> const&)#1} &,re::Pair<re::StringID const*,void *,true>*,0>(a1, a1 + 1, a1 + 2, a1 + 3, a3);
        v8 = a2[-1].n128_u64[0];
        v7 = a2 - 1;
        if (*v8 >> 1 < *a1[3].n128_u64[0] >> 1)
        {
          v9 = a1[3];
          a1[3] = *v7;
          *v7 = v9;
          if (*a1[3].n128_u64[0] >> 1 < *a1[2].n128_u64[0] >> 1)
          {
            v10 = a1[2];
            a1[2] = a1[3];
            a1[3] = v10;
            if (*a1[2].n128_u64[0] >> 1 < *a1[1].n128_u64[0] >> 1)
            {
              v11 = a1[1];
              a1[1] = a1[2];
              a1[2] = v11;
              if (*a1[1].n128_u64[0] >> 1 < *a1->n128_u64[0] >> 1)
              {
                v12 = *a1;
                *a1 = a1[1];
                a1[1] = v12;
              }
            }
          }
        }

        return 1;
    }
  }

  else
  {
    if (v5 < 2)
    {
      return 1;
    }

    if (v5 == 2)
    {
      v6 = a2 - 1;
      if (*a2[-1].n128_u64[0] >> 1 >= *a1->n128_u64[0] >> 1)
      {
        return 1;
      }

      goto LABEL_16;
    }
  }

  v17 = a1 + 2;
  v18 = a1[2].n128_u64[0];
  v19 = a1 + 1;
  v20 = a1->n128_u64[0];
  v21 = *a1[1].n128_u64[0] >> 1;
  v22 = *v18 >> 1;
  if (v21 >= *a1->n128_u64[0] >> 1)
  {
    if (v22 < v21)
    {
      v26 = *v19;
      *v19 = *v17;
      *v17 = v26;
      if (*v19->n128_u64[0] >> 1 < *v20 >> 1)
      {
        v27 = *a1;
        *a1 = *v19;
        *v19 = v27;
      }
    }
  }

  else
  {
    if (v22 >= v21)
    {
      v29 = *a1;
      *a1 = *v19;
      *v19 = v29;
      if (*v18 >> 1 >= *a1[1].n128_u64[0] >> 1)
      {
        goto LABEL_33;
      }

      v23 = *v19;
      *v19 = *v17;
    }

    else
    {
      v23 = *a1;
      *a1 = *v17;
    }

    *v17 = v23;
  }

LABEL_33:
  v30 = a1 + 3;
  if (&a1[3] == a2)
  {
    return 1;
  }

  v31 = 0;
  v32 = 0;
  while (1)
  {
    v33 = v30->n128_u64[0];
    if (*v30->n128_u64[0] >> 1 < *v17->n128_u64[0] >> 1)
    {
      v34 = v30->n128_u64[1];
      v35 = v31;
      while (1)
      {
        *(a1 + v35 + 48) = *(a1 + v35 + 32);
        if (v35 == -32)
        {
          break;
        }

        v36 = **(a1[1].n128_u64 + v35);
        v35 -= 16;
        if (*v33 >> 1 >= v36 >> 1)
        {
          v37 = (a1 + v35 + 48);
          goto LABEL_41;
        }
      }

      v37 = a1;
LABEL_41:
      v37->n128_u64[0] = v33;
      v37->n128_u64[1] = v34;
      if (++v32 == 8)
      {
        return &v30[1] == a2;
      }
    }

    v17 = v30;
    v31 += 16;
    if (++v30 == a2)
    {
      return 1;
    }
  }
}

__int128 *std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithStringID<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<re::StringID const*,void *,true> const&,re::Pair<re::StringID const*,void *,true> const&)#1} &,re::Pair<re::StringID const*,void *,true>*,re::Pair<re::StringID const*,void *,true>*>(unint64_t **a1, char *a2, __int128 *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = (a2 - a1) >> 4;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[2 * v9];
      do
      {
        std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithStringID<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<re::StringID const*,void *,true> const&,re::Pair<re::StringID const*,void *,true> const&)#1} &,re::Pair<re::StringID const*,void *,true>*>(a1, a4, v8, v11);
        v11 -= 2;
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        if (**v12 >> 1 < **a1 >> 1)
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithStringID<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<re::StringID const*,void *,true> const&,re::Pair<re::StringID const*,void *,true> const&)#1} &,re::Pair<re::StringID const*,void *,true>*>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v14 = (a2 - 16);
      do
      {
        v18 = *a1;
        v15 = std::__floyd_sift_down[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithStringID<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<re::StringID const*,void *,true> const&,re::Pair<re::StringID const*,void *,true> const&)#1} &,re::Pair<re::StringID const*,void *,true>*>(a1, a4, v8);
        if (v14 == v15)
        {
          *v15 = v18;
        }

        else
        {
          *v15 = *v14;
          *v14 = v18;
          std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithStringID<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<re::StringID const*,void *,true> const&,re::Pair<re::StringID const*,void *,true> const&)#1} &,re::Pair<re::StringID const*,void *,true>*>(a1, (v15 + 1), a4, ((v15 + 1) - a1) >> 4);
        }

        --v14;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithStringID<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<re::StringID const*,void *,true> const&,re::Pair<re::StringID const*,void *,true> const&)#1} &,re::Pair<re::StringID const*,void *,true>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t **a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 4)
    {
      v6 = v4 >> 3;
      v7 = (v4 >> 3) + 1;
      v8 = (result + 16 * v7);
      v9 = v6 + 2;
      if (v9 >= a3)
      {
        v10 = **v8;
      }

      else
      {
        v10 = **v8;
        if (v10 >> 1 < *v8[2] >> 1)
        {
          v10 = *v8[2];
          v8 += 2;
          v7 = v9;
        }
      }

      v11 = *a4;
      if (v10 >> 1 >= **a4 >> 1)
      {
        v12 = a4[1];
        do
        {
          v13 = a4;
          a4 = v8;
          *v13 = *v8;
          if (v5 < v7)
          {
            break;
          }

          v14 = (2 * v7) | 1;
          v8 = (result + 16 * v14);
          v7 = 2 * v7 + 2;
          if (v7 >= a3)
          {
            v15 = **v8;
            v7 = v14;
          }

          else
          {
            v15 = **v8;
            if (v15 >> 1 >= *v8[2] >> 1)
            {
              v7 = v14;
            }

            else
            {
              v15 = *v8[2];
              v8 += 2;
            }
          }
        }

        while (v15 >> 1 >= *v11 >> 1);
        *a4 = v11;
        a4[1] = v12;
      }
    }
  }

  return result;
}

_OWORD *std::__floyd_sift_down[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithStringID<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<re::StringID const*,void *,true> const&,re::Pair<re::StringID const*,void *,true> const&)#1} &,re::Pair<re::StringID const*,void *,true>*>(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = &a1[v3];
    v5 = v4 + 1;
    v6 = (2 * v3) | 1;
    v3 = 2 * v3 + 2;
    if (v3 >= a3)
    {
      v3 = v6;
    }

    else
    {
      v8 = *(v4 + 4);
      v7 = v4 + 2;
      if (**(v7 - 2) >> 1 >= *v8 >> 1)
      {
        v3 = v6;
      }

      else
      {
        v5 = v7;
      }
    }

    *a1 = *v5;
    a1 = v5;
  }

  while (v3 <= (a3 - 2) / 2);
  return v5;
}

uint64_t std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithStringID<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<re::StringID const*,void *,true> const&,re::Pair<re::StringID const*,void *,true> const&)#1} &,re::Pair<re::StringID const*,void *,true>*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = (a2 - 16);
    v6 = *(a2 - 16);
    v7 = (result + 16 * v4);
    if (**v7 >> 1 < *v6 >> 1)
    {
      v8 = *(a2 - 8);
      do
      {
        v9 = v5;
        v5 = v7;
        *v9 = *v7;
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v7 = (result + 16 * v4);
      }

      while (**v7 >> 1 < *v6 >> 1);
      *v5 = v6;
      v5[1] = v8;
    }
  }

  return result;
}

void std::__sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,re::Pair<void const*,void *,true> *,BOOL re::serializeDictionary<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<void const*,void *,true> const&,re::Pair<void const*,void *,true> const&)#1}>(char *a1, char *a2, uint64_t (**a3)(uint64_t, uint64_t), __n128 a4)
{
  v4 = 126 - 2 * __clz((a2 - a1) >> 4);
  if (a2 == a1)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  std::__introsort<std::_ClassicAlgPolicy,BOOL re::serializeDictionary<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<void const*,void *,true> const&,re::Pair<void const*,void *,true> const&)#1} &,re::Pair<void const*,void *,true>*,false>(a1, a2, a3, v5, 1, a4);
}

uint64_t re::serializeDynamicString<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *a5, const re::TypeInfo *a6, int a7)
{
  if (a5 == a6)
  {
    goto LABEL_14;
  }

  if (*a5 == *a6)
  {
    v14 = **(a5 + 2);
    v15 = **(a6 + 2);
    if (v14 == v15)
    {
      v17 = WORD1(v14) == WORD1(v15);
      v16 = (v15 ^ v14) & 0xFFFFFF00000000;
      v17 = v17 && v16 == 0;
      if (v17)
      {
        goto LABEL_14;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_14;
  }

  v18 = re::TypeInfo::name(a6);
  if (*v18 >> 1 != 0x22C6ED80D0CLL || (v19 = v18[1], v19 != "StringID") && strcmp(v19, "StringID"))
  {
    re::internal::setTypeMismatchError<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a5, a6);
    v20 = 0;
    return v20 & 1;
  }

LABEL_14:
  if (a7)
  {
    v29 = 0;
    v21 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString(a1 + 24, a2, a3, &v29, 0);
    v20 = 0;
    if (v21)
    {
      if (v29)
      {
        v22 = a1 + 24;
        v23 = 0;
        v24 = 1;
LABEL_27:
        re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeString(v22, v23, v24);
        goto LABEL_28;
      }

      goto LABEL_28;
    }
  }

  else
  {
    v25 = *(a4 + 8);
    if (v25)
    {
      v26 = v25 >> 1;
    }

    else
    {
      v26 = v25 >> 1;
    }

    v29 = v26;
    v27 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString(a1 + 24, a2, a3, &v29, 0);
    v20 = 0;
    if (v27)
    {
      if (v29)
      {
        if (*(a4 + 8))
        {
          v23 = *(a4 + 16);
        }

        else
        {
          v23 = a4 + 9;
        }

        v22 = a1 + 24;
        v24 = 0;
        goto LABEL_27;
      }

LABEL_28:
      re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endString((a1 + 24));
      v20 = *(a1 + 64) ^ 1;
    }
  }

  return v20 & 1;
}

void *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::~Serializer(void *a1)
{
  *a1 = &unk_1F5CC4778;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((a1 + 4));
  return a1;
}

uint64_t re::internal::serializeObjectWithOneMember<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(_BYTE *a1, const char *a2, uint64_t a3, uint64_t a4, re *a5, re *a6, uint64_t a7)
{
  v14 = re::TypeMemberCollection::TypeMemberCollection(&v29, *a5, *(a5 + 2));
  re::TypeMemberCollection::operator[](v14, 0, &v27);
  v15 = *(v28 + 24);
  re::TypeRegistry::typeInfo(v27, *v28, &v29);
  re::TypeInfo::TypeInfo(v26, v30);
  if (a5 == a6)
  {
    goto LABEL_4;
  }

  if (*a5 == *a6)
  {
    v18 = **(a5 + 2);
    v19 = *(a6 + 2);
    v20 = *v19;
    if (v18 != *v19)
    {
      goto LABEL_14;
    }

    v22 = WORD1(v18) == WORD1(v20);
    v21 = (v20 ^ v18) & 0xFFFFFF00000000;
    v22 = v22 && v21 == 0;
    if (!v22)
    {
      goto LABEL_14;
    }

LABEL_4:
    if ((a1[64] & 1) == 0)
    {
      return (*(*a1 + 72))(a1, a2, a3, a4 + v15, v26, v26, a7);
    }

    return 0;
  }

  if (re::areSameTranslatedVersion(a5, a6, v16))
  {
    goto LABEL_4;
  }

  v19 = *(a6 + 2);
LABEL_14:
  if (*(v19 + 96) != 1)
  {
    re::internal::setTypeMismatchError<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a5, a6);
    return 0;
  }

  re::TypeMemberCollection::TypeMemberCollection(v23, *a6, v19);
  re::TypeMemberCollection::operator[](v23, 0, v24);
  re::TypeRegistry::typeInfo(v24[0], *v24[2], &v29);
  re::TypeInfo::TypeInfo(v25, v30);
  if (a1[64])
  {
    return 0;
  }

  return (*(*a1 + 72))(a1, a2, a3, a4 + v15, v26, v25, a7);
}

void re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::~Serializer(void *a1)
{
  *a1 = &unk_1F5CC4778;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((a1 + 4));

  JUMPOUT(0x1E6906520);
}

_anonymous_namespace_ *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::error(_anonymous_namespace_ *result, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
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

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginField(uint64_t a1, int a2, uint64_t a3)
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

double re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginObject(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  v3 = v2 + 40 * *(a1 + 40);
  v4 = *(v3 - 32);
  v5 = *(v3 - 40);
  if (v4 || *v5 != 64)
  {
    re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(*(a1 + 8) + 24, v5, v4, 0);
  }

  v7 = "";
  v8 = 0;
  v9 = 0;
  *&result = re::DynamicOverflowArray<re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::ContextJSON<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,true>,4ul>::add(a1 + 32, &v7).n128_u64[0];
  return result;
}

_anonymous_namespace_ *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::endObject(_anonymous_namespace_ *result)
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
    return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject((*(result + 1) + 24));
  }

  return result;
}