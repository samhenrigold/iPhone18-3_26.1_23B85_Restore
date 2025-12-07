uint64_t *std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::CameraViewDescriptorsComponentStateImpl::processUpdatingComponents(re::ecs2::System::UpdateContext const&,re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent> *,re::ecs2::ComponentBuckets<re::ecs2::CameraViewDescriptorsComponent>::BucketIteration,void *)::$_1 &,re::ecs2::CameraViewDescriptorsComponent**,0>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = *(*a2 + 28);
  v8 = *(*result + 28);
  v9 = *a3;
  v10 = *(*a3 + 28);
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
      if (*(*a2 + 28) < *(*result + 28))
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
    if (*(*a3 + 28) < v8)
    {
      *a2 = v5;
      goto LABEL_9;
    }
  }

LABEL_11:
  if (*(*a4 + 28) < *(v5 + 28))
  {
    *a3 = *a4;
    *a4 = v5;
    v12 = *a2;
    if (*(*a3 + 28) < *(*a2 + 28))
    {
      *a2 = *a3;
      *a3 = v12;
      v13 = *result;
      if (*(*a2 + 28) < *(*result + 28))
      {
        *result = *a2;
        *a2 = v13;
      }
    }
  }

  v14 = *a4;
  if (*(*a5 + 28) < *(*a4 + 28))
  {
    *a4 = *a5;
    *a5 = v14;
    v15 = *a3;
    if (*(*a4 + 28) < *(*a3 + 28))
    {
      *a3 = *a4;
      *a4 = v15;
      v16 = *a2;
      if (*(*a3 + 28) < *(*a2 + 28))
      {
        *a2 = *a3;
        *a3 = v16;
        v17 = *result;
        if (*(*a2 + 28) < *(*result + 28))
        {
          *result = *a2;
          *a2 = v17;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::CameraViewDescriptorsComponentStateImpl::processUpdatingComponents(re::ecs2::System::UpdateContext const&,re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent> *,re::ecs2::ComponentBuckets<re::ecs2::CameraViewDescriptorsComponent>::BucketIteration,void *)::$_1 &,re::ecs2::CameraViewDescriptorsComponent**>(uint64_t *a1, uint64_t *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v5 = *a1;
      v6 = a1[1];
      v7 = *(v6 + 28);
      v8 = *(*a1 + 28);
      v9 = *(a2 - 1);
      v10 = *(v9 + 28);
      if (v7 >= v8)
      {
        if (v10 < v7)
        {
          a1[1] = v9;
          *(a2 - 1) = v6;
          v32 = *a1;
          v31 = a1[1];
          if (*(v31 + 28) < *(*a1 + 28))
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
        if (*(v47 + 28) >= v8)
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

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::CameraViewDescriptorsComponentStateImpl::processUpdatingComponents(re::ecs2::System::UpdateContext const&,re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent> *,re::ecs2::ComponentBuckets<re::ecs2::CameraViewDescriptorsComponent>::BucketIteration,void *)::$_1 &,re::ecs2::CameraViewDescriptorsComponent**,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
      return 1;
    }

    v20 = a1 + 1;
    v21 = a1[1];
    v22 = a1 + 2;
    v23 = a1[2];
    v24 = *a1;
    v25 = *(v21 + 28);
    v26 = *(*a1 + 28);
    v27 = *(v23 + 28);
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
        if (*(v42 + 28) < *(v21 + 28))
        {
          *v22 = v42;
          *(a2 - 1) = v21;
          v43 = *v22;
          v44 = *v20;
          v45 = *(v43 + 28);
          if (v45 < *(v44 + 28))
          {
            a1[1] = v43;
            a1[2] = v44;
            v46 = *a1;
            if (v45 < *(*a1 + 28))
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
    if (*(v3 + 28) < *(*a1 + 28))
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
  v15 = *(v13 + 28);
  v16 = *(*a1 + 28);
  v17 = *(v11 + 28);
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
    v38 = *(*v33 + 28);
    if (v38 < *(v37 + 28))
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
        if (v38 >= *(v37 + 28))
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

void *re::DynamicInlineArray<re::KeyValuePair<unsigned long long,re::ecs2::CameraViewDescriptorsComponentStateImpl::CameraViewArrays>,8ul>::clear(void *result)
{
  v1 = result;
  if (*result)
  {
    v2 = 88 * *result;
    v3 = result + 8;
    do
    {
      re::DynamicArray<re::CameraMultiView>::deinit(v3);
      result = re::DynamicArray<re::CameraView>::deinit((v3 - 5));
      v3 += 11;
      v2 -= 88;
    }

    while (v2);
  }

  *v1 = 0;
  ++*(v1 + 2);
  return result;
}

double re::HashTable<unsigned long long,re::ecs2::CameraViewDescriptorsComponentStateImpl::CameraViewArrays,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::deinit(uint64_t *a1)
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
          v8 = v6 + v4;
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          re::DynamicArray<re::CameraMultiView>::deinit(v6 + v4 + 56);
          re::DynamicArray<re::CameraView>::deinit(v8 + 16);
          v3 = *(a1 + 8);
        }

        v4 += 96;
      }

      v2 = *a1;
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

uint64_t re::HashTable<unsigned long long,re::ecs2::CameraViewDescriptorsComponentStateImpl::CameraViewArrays,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::add(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::ecs2::CameraViewDescriptorsComponentStateImpl::CameraViewArrays,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::findEntry<unsigned long long>(&v17, a1, *a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31));
  if (HIDWORD(v18) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 96 * HIDWORD(v18) + 16;
  }

  v7 = re::HashTable<unsigned long long,re::ecs2::CameraViewDescriptorsComponentStateImpl::CameraViewArrays,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::allocEntry(a1, v18, v17);
  v8 = *a2;
  *(v7 + 16) = 0;
  result = v7 + 16;
  *(result + 32) = 0;
  *(result + 24) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  v10 = *a3;
  v11 = a3[1];
  *(result - 8) = v8;
  *result = v10;
  *(result + 8) = v11;
  *a3 = 0;
  a3[1] = 0;
  v12 = *(result + 16);
  *(result + 16) = a3[2];
  a3[2] = v12;
  v13 = *(result + 32);
  *(result + 32) = a3[4];
  a3[4] = v13;
  ++*(a3 + 6);
  ++*(result + 24);
  *(result + 72) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 40) = 0;
  *(result + 64) = 0;
  v14 = a3[6];
  *(result + 40) = a3[5];
  *(result + 48) = v14;
  a3[5] = 0;
  a3[6] = 0;
  v15 = *(result + 56);
  *(result + 56) = a3[7];
  a3[7] = v15;
  v16 = *(result + 72);
  *(result + 72) = a3[9];
  a3[9] = v16;
  ++*(a3 + 16);
  ++*(result + 64);
  ++*(a1 + 40);
  return result;
}

uint64_t re::HashTable<unsigned long long,re::ecs2::CameraViewDescriptorsComponentStateImpl::CameraViewArrays,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::findEntry<unsigned long long>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = *a2;
  v5 = 0x7FFFFFFF;
  if (!*a2)
  {
    goto LABEL_5;
  }

  v4 = a4 % *(a2 + 24);
  v6 = *(*(a2 + 8) + 4 * v4);
  if (v6 == 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v7 = *(a2 + 16);
  if (*(v7 + 96 * v6 + 8) == a3)
  {
    v5 = *(*(a2 + 8) + 4 * v4);
LABEL_5:
    v6 = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v7 + 96 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 96 * v8 + 8) == a3)
      {
        break;
      }

      v8 = *(v7 + 96 * v8) & 0x7FFFFFFF;
      v6 = v9;
      if (v8 == 0x7FFFFFFF)
      {
        v6 = v9;
        goto LABEL_6;
      }
    }

    v5 = v8;
  }

LABEL_6:
  *result = a4;
  *(result + 8) = v4;
  *(result + 12) = v5;
  *(result + 16) = v6;
  return result;
}

uint64_t re::HashTable<unsigned long long,re::ecs2::CameraViewDescriptorsComponentStateImpl::CameraViewArrays,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v4 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v35, 0, 36);
          *&v35[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::init(v35, v9, v8);
          v11 = *v35;
          *v35 = *a1;
          *a1 = v11;
          v12 = *&v35[16];
          v13 = *(a1 + 16);
          *&v35[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v35[24];
          *&v35[24] = *(a1 + 24);
          v14 = *&v35[32];
          *(a1 + 24) = v15;
          ++*&v35[40];
          if (v14)
          {
            v16 = 0;
            v17 = 96 * v14;
            do
            {
              if ((*(v13 + v16) & 0x80000000) != 0)
              {
                v18 = v13 + v16;
                v19 = 0xBF58476D1CE4E5B9 * (*(v13 + v16 + 8) ^ (*(v13 + v16 + 8) >> 30));
                v20 = (0x94D049BB133111EBLL * (v19 ^ (v19 >> 27))) ^ ((0x94D049BB133111EBLL * (v19 ^ (v19 >> 27))) >> 31);
                v21 = re::HashTable<unsigned long long,re::ecs2::CameraViewDescriptorsComponentStateImpl::CameraViewArrays,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::allocEntry(a1, v20 % *(a1 + 24), v20);
                v22 = *(v13 + v16 + 8);
                *(v21 + 48) = 0;
                *(v21 + 40) = 0;
                *(v21 + 24) = 0;
                *(v21 + 32) = 0;
                *(v21 + 8) = v22;
                *(v21 + 16) = 0;
                v23 = *(v13 + v16 + 24);
                *(v21 + 16) = *(v13 + v16 + 16);
                *(v21 + 24) = v23;
                *(v18 + 16) = 0;
                *(v18 + 24) = 0;
                v24 = *(v21 + 32);
                *(v21 + 32) = *(v13 + v16 + 32);
                *(v18 + 32) = v24;
                v25 = *(v21 + 48);
                *(v21 + 48) = *(v13 + v16 + 48);
                *(v18 + 48) = v25;
                ++*(v18 + 40);
                ++*(v21 + 40);
                *(v21 + 88) = 0;
                *(v21 + 64) = 0;
                *(v21 + 72) = 0;
                *(v21 + 56) = 0;
                *(v21 + 80) = 0;
                v26 = *(v13 + v16 + 64);
                *(v21 + 56) = *(v13 + v16 + 56);
                *(v21 + 64) = v26;
                *(v18 + 56) = 0;
                *(v18 + 64) = 0;
                v27 = *(v21 + 72);
                *(v21 + 72) = *(v13 + v16 + 72);
                *(v18 + 72) = v27;
                v28 = *(v21 + 88);
                *(v21 + 88) = *(v13 + v16 + 88);
                *(v18 + 88) = v28;
                ++*(v18 + 80);
                ++*(v21 + 80);
              }

              v16 += 96;
            }

            while (v17 != v16);
          }

          re::HashTable<unsigned long long,re::ecs2::CameraViewDescriptorsComponentStateImpl::CameraViewArrays,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::deinit(v35);
        }
      }

      else
      {
        if (v8)
        {
          v31 = 2 * v7;
        }

        else
        {
          v31 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v29 = *(a1 + 16);
    v30 = *(v29 + 96 * v4);
  }

  else
  {
    v29 = *(a1 + 16);
    v30 = *(v29 + 96 * v4);
    *(a1 + 36) = v30 & 0x7FFFFFFF;
  }

  v32 = 96 * v4;
  *(v29 + v32) = v30 | 0x80000000;
  v33 = *(a1 + 8);
  *(v29 + v32) = *(v33 + 4 * a2) | 0x80000000;
  *(v33 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v29 + 96 * v4;
}

uint64_t re::CameraView::operator=(uint64_t a1, uint64_t a2)
{
  v4 = re::DynamicString::operator=(a1, a2);
  v5 = *(a2 + 48);
  *(v4 + 2) = *(a2 + 32);
  *(v4 + 3) = v5;
  v7 = *(a2 + 96);
  v6 = *(a2 + 112);
  v8 = *(a2 + 80);
  *(v4 + 64) = *(a2 + 128);
  *(v4 + 6) = v7;
  *(v4 + 7) = v6;
  *(v4 + 5) = v8;
  *(v4 + 4) = *(a2 + 64);
  if (*(v4 + 144))
  {
    if ((*(a2 + 144) & 1) == 0)
    {
      *(a1 + 144) = 0;
      goto LABEL_7;
    }
  }

  else
  {
    if ((*(a2 + 144) & 1) == 0)
    {
      goto LABEL_7;
    }

    *(a1 + 144) = 1;
  }

  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v11;
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
LABEL_7:
  if (*(a1 + 224))
  {
    if ((*(a2 + 224) & 1) == 0)
    {
      *(a1 + 224) = 0;
      goto LABEL_13;
    }
  }

  else
  {
    if ((*(a2 + 224) & 1) == 0)
    {
      goto LABEL_13;
    }

    *(a1 + 224) = 1;
  }

  v12 = *(a2 + 240);
  v13 = *(a2 + 256);
  v14 = *(a2 + 288);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 288) = v14;
  *(a1 + 240) = v12;
  *(a1 + 256) = v13;
LABEL_13:
  v15 = *(a2 + 320);
  *(a1 + 304) = *(a2 + 304);
  *(a1 + 320) = v15;
  v17 = *(a2 + 368);
  v16 = *(a2 + 384);
  v18 = *(a2 + 352);
  *(a1 + 400) = *(a2 + 400);
  *(a1 + 368) = v17;
  *(a1 + 384) = v16;
  *(a1 + 352) = v18;
  *(a1 + 336) = *(a2 + 336);
  if (*(a1 + 416))
  {
    if ((*(a2 + 416) & 1) == 0)
    {
      *(a1 + 416) = 0;
      goto LABEL_19;
    }
  }

  else
  {
    if ((*(a2 + 416) & 1) == 0)
    {
      goto LABEL_19;
    }

    *(a1 + 416) = 1;
  }

  v19 = *(a2 + 432);
  v20 = *(a2 + 448);
  v21 = *(a2 + 480);
  *(a1 + 464) = *(a2 + 464);
  *(a1 + 480) = v21;
  *(a1 + 432) = v19;
  *(a1 + 448) = v20;
LABEL_19:
  if (*(a1 + 496))
  {
    if ((*(a2 + 496) & 1) == 0)
    {
      *(a1 + 496) = 0;
      goto LABEL_25;
    }
  }

  else
  {
    if ((*(a2 + 496) & 1) == 0)
    {
      goto LABEL_25;
    }

    *(a1 + 496) = 1;
  }

  v22 = *(a2 + 512);
  v23 = *(a2 + 528);
  v24 = *(a2 + 560);
  *(a1 + 544) = *(a2 + 544);
  *(a1 + 560) = v24;
  *(a1 + 512) = v22;
  *(a1 + 528) = v23;
LABEL_25:
  re::DynamicArray<re::RenderGraphFileProvider>::operator=(a1 + 576, (a2 + 576));
  *(a1 + 616) = *(a2 + 616);
  re::DynamicArray<re::CameraView::PickupScopeLane>::operator=(a1 + 624, (a2 + 624));
  *(a1 + 672) = *(a2 + 672);
  v25 = *(a2 + 688);
  v26 = *(a2 + 704);
  v27 = *(a2 + 720);
  *(a1 + 736) = *(a2 + 736);
  *(a1 + 704) = v26;
  *(a1 + 720) = v27;
  *(a1 + 688) = v25;
  v28 = *(a2 + 752);
  v29 = *(a2 + 768);
  v30 = *(a2 + 800);
  *(a1 + 784) = *(a2 + 784);
  *(a1 + 800) = v30;
  *(a1 + 752) = v28;
  *(a1 + 768) = v29;
  *(a1 + 816) = *(a2 + 816);
  v32 = *(a2 + 848);
  v31 = *(a2 + 864);
  v33 = *(a2 + 832);
  *(a1 + 880) = *(a2 + 880);
  *(a1 + 848) = v32;
  *(a1 + 864) = v31;
  *(a1 + 832) = v33;
  if (*(a1 + 896))
  {
    if ((*(a2 + 896) & 1) == 0)
    {
      *(a1 + 896) = 0;
      goto LABEL_31;
    }
  }

  else
  {
    if ((*(a2 + 896) & 1) == 0)
    {
      goto LABEL_31;
    }

    *(a1 + 896) = 1;
  }

  v34 = *(a2 + 912);
  v35 = *(a2 + 928);
  v36 = *(a2 + 960);
  *(a1 + 944) = *(a2 + 944);
  *(a1 + 960) = v36;
  *(a1 + 912) = v34;
  *(a1 + 928) = v35;
LABEL_31:
  if (*(a1 + 976))
  {
    if ((*(a2 + 976) & 1) == 0)
    {
      *(a1 + 976) = 0;
      goto LABEL_37;
    }
  }

  else
  {
    if ((*(a2 + 976) & 1) == 0)
    {
      goto LABEL_37;
    }

    *(a1 + 976) = 1;
  }

  v37 = *(a2 + 992);
  v38 = *(a2 + 1008);
  v39 = *(a2 + 1024);
  *(a1 + 1040) = *(a2 + 1040);
  *(a1 + 1008) = v38;
  *(a1 + 1024) = v39;
  *(a1 + 992) = v37;
LABEL_37:
  v40 = *(a2 + 1056);
  v41 = *(a2 + 1072);
  v42 = *(a2 + 1088);
  *(a1 + 1104) = *(a2 + 1104);
  *(a1 + 1088) = v42;
  *(a1 + 1072) = v41;
  *(a1 + 1056) = v40;
  v43 = *(a2 + 1120);
  v44 = *(a2 + 1136);
  v45 = *(a2 + 1152);
  *(a1 + 1165) = *(a2 + 1165);
  *(a1 + 1152) = v45;
  *(a1 + 1136) = v44;
  *(a1 + 1120) = v43;
  re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::operator=<24ul>(a1 + 1184, a2 + 1184);
  *(a1 + 1232) = *(a2 + 1232);
  if ((*(a1 + 1248) & 1) == 0)
  {
    if ((*(a2 + 1248) & 1) == 0)
    {
      goto LABEL_43;
    }

    *(a1 + 1248) = 1;
LABEL_42:
    v46 = *(a2 + 1264);
    *(a1 + 1280) = *(a2 + 1280);
    *(a1 + 1264) = v46;
    goto LABEL_43;
  }

  if (*(a2 + 1248))
  {
    goto LABEL_42;
  }

  *(a1 + 1248) = 0;
LABEL_43:
  re::Optional<re::Projection>::operator=(a1 + 1296, a2 + 1296);
  return a1;
}

{
  v4 = re::DynamicString::operator=(a1, a2);
  v5 = *(a2 + 48);
  *(v4 + 2) = *(a2 + 32);
  *(v4 + 3) = v5;
  v7 = *(a2 + 96);
  v6 = *(a2 + 112);
  v8 = *(a2 + 80);
  *(v4 + 64) = *(a2 + 128);
  *(v4 + 6) = v7;
  *(v4 + 7) = v6;
  *(v4 + 5) = v8;
  *(v4 + 4) = *(a2 + 64);
  if (*(v4 + 144))
  {
    if ((*(a2 + 144) & 1) == 0)
    {
      *(a1 + 144) = 0;
      goto LABEL_7;
    }
  }

  else
  {
    if ((*(a2 + 144) & 1) == 0)
    {
      goto LABEL_7;
    }

    *(a1 + 144) = 1;
  }

  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v11;
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
LABEL_7:
  if (*(a1 + 224))
  {
    if ((*(a2 + 224) & 1) == 0)
    {
      *(a1 + 224) = 0;
      goto LABEL_13;
    }
  }

  else
  {
    if ((*(a2 + 224) & 1) == 0)
    {
      goto LABEL_13;
    }

    *(a1 + 224) = 1;
  }

  v12 = *(a2 + 240);
  v13 = *(a2 + 256);
  v14 = *(a2 + 288);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 288) = v14;
  *(a1 + 240) = v12;
  *(a1 + 256) = v13;
LABEL_13:
  v15 = *(a2 + 320);
  *(a1 + 304) = *(a2 + 304);
  *(a1 + 320) = v15;
  v17 = *(a2 + 368);
  v16 = *(a2 + 384);
  v18 = *(a2 + 352);
  *(a1 + 400) = *(a2 + 400);
  *(a1 + 368) = v17;
  *(a1 + 384) = v16;
  *(a1 + 352) = v18;
  *(a1 + 336) = *(a2 + 336);
  if (*(a1 + 416))
  {
    if ((*(a2 + 416) & 1) == 0)
    {
      *(a1 + 416) = 0;
      goto LABEL_19;
    }
  }

  else
  {
    if ((*(a2 + 416) & 1) == 0)
    {
      goto LABEL_19;
    }

    *(a1 + 416) = 1;
  }

  v19 = *(a2 + 432);
  v20 = *(a2 + 448);
  v21 = *(a2 + 480);
  *(a1 + 464) = *(a2 + 464);
  *(a1 + 480) = v21;
  *(a1 + 432) = v19;
  *(a1 + 448) = v20;
LABEL_19:
  if (*(a1 + 496))
  {
    if ((*(a2 + 496) & 1) == 0)
    {
      *(a1 + 496) = 0;
      goto LABEL_25;
    }
  }

  else
  {
    if ((*(a2 + 496) & 1) == 0)
    {
      goto LABEL_25;
    }

    *(a1 + 496) = 1;
  }

  v22 = *(a2 + 512);
  v23 = *(a2 + 528);
  v24 = *(a2 + 560);
  *(a1 + 544) = *(a2 + 544);
  *(a1 + 560) = v24;
  *(a1 + 512) = v22;
  *(a1 + 528) = v23;
LABEL_25:
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(a1 + 576, (a2 + 576));
  *(a1 + 616) = *(a2 + 616);
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(a1 + 624, (a2 + 624));
  *(a1 + 672) = *(a2 + 672);
  v25 = *(a2 + 688);
  v26 = *(a2 + 704);
  v27 = *(a2 + 720);
  *(a1 + 736) = *(a2 + 736);
  *(a1 + 704) = v26;
  *(a1 + 720) = v27;
  *(a1 + 688) = v25;
  v28 = *(a2 + 752);
  v29 = *(a2 + 768);
  v30 = *(a2 + 800);
  *(a1 + 784) = *(a2 + 784);
  *(a1 + 800) = v30;
  *(a1 + 752) = v28;
  *(a1 + 768) = v29;
  *(a1 + 816) = *(a2 + 816);
  v32 = *(a2 + 848);
  v31 = *(a2 + 864);
  v33 = *(a2 + 832);
  *(a1 + 880) = *(a2 + 880);
  *(a1 + 848) = v32;
  *(a1 + 864) = v31;
  *(a1 + 832) = v33;
  if (*(a1 + 896))
  {
    if ((*(a2 + 896) & 1) == 0)
    {
      *(a1 + 896) = 0;
      goto LABEL_31;
    }
  }

  else
  {
    if ((*(a2 + 896) & 1) == 0)
    {
      goto LABEL_31;
    }

    *(a1 + 896) = 1;
  }

  v34 = *(a2 + 912);
  v35 = *(a2 + 928);
  v36 = *(a2 + 960);
  *(a1 + 944) = *(a2 + 944);
  *(a1 + 960) = v36;
  *(a1 + 912) = v34;
  *(a1 + 928) = v35;
LABEL_31:
  if (*(a1 + 976))
  {
    if ((*(a2 + 976) & 1) == 0)
    {
      *(a1 + 976) = 0;
      goto LABEL_37;
    }
  }

  else
  {
    if ((*(a2 + 976) & 1) == 0)
    {
      goto LABEL_37;
    }

    *(a1 + 976) = 1;
  }

  v37 = *(a2 + 992);
  v38 = *(a2 + 1008);
  v39 = *(a2 + 1024);
  *(a1 + 1040) = *(a2 + 1040);
  *(a1 + 1008) = v38;
  *(a1 + 1024) = v39;
  *(a1 + 992) = v37;
LABEL_37:
  v40 = *(a2 + 1056);
  v41 = *(a2 + 1072);
  v42 = *(a2 + 1088);
  *(a1 + 1104) = *(a2 + 1104);
  *(a1 + 1088) = v42;
  *(a1 + 1072) = v41;
  *(a1 + 1056) = v40;
  v43 = *(a2 + 1120);
  v44 = *(a2 + 1136);
  v45 = *(a2 + 1152);
  *(a1 + 1165) = *(a2 + 1165);
  *(a1 + 1152) = v45;
  *(a1 + 1136) = v44;
  *(a1 + 1120) = v43;
  re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::operator=<24ul>(a1 + 1184, a2 + 1184);
  *(a1 + 1232) = *(a2 + 1232);
  if ((*(a1 + 1248) & 1) == 0)
  {
    if ((*(a2 + 1248) & 1) == 0)
    {
      goto LABEL_43;
    }

    *(a1 + 1248) = 1;
LABEL_42:
    v46 = *(a2 + 1264);
    *(a1 + 1280) = *(a2 + 1280);
    *(a1 + 1264) = v46;
    goto LABEL_43;
  }

  if (*(a2 + 1248))
  {
    goto LABEL_42;
  }

  *(a1 + 1248) = 0;
LABEL_43:
  re::Optional<re::Projection>::operator=(a1 + 1296, a2 + 1296);
  return a1;
}

uint64_t re::DynamicArray<re::RenderGraphFileProvider>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::RenderGraphFileProvider>::copy(a1, a2);
        ++*(a1 + 24);
      }

      else
      {
        re::DynamicArray<re::RenderGraphFileProvider>::clear(a1);
      }
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::RenderGraphFileProvider>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::RenderGraphFileProvider>::copy(a1, a2);
    }
  }

  return a1;
}

uint64_t re::DynamicArray<re::CameraView::PickupScopeLane>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::CameraView::PickupScopeLane>::copy(a1, a2);
        ++*(a1 + 24);
      }

      else
      {
        re::DynamicArray<re::ecs2::ScopeLanePair>::clear(a1);
      }
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::CameraView::PickupScopeLane>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::CameraView::PickupScopeLane>::copy(a1, a2);
    }
  }

  return a1;
}

__n128 re::Optional<re::Projection>::operator=(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 1) == 0)
  {
    if (*a2)
    {
      *a1 = 1;
      *(a1 + 16) = *(a2 + 16);
      result = *(a2 + 32);
      v5 = *(a2 + 48);
      v6 = *(a2 + 64);
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 48) = v5;
      *(a1 + 64) = v6;
      *(a1 + 32) = result;
      v7 = *(a2 + 96);
      *(a1 + 96) = v7;
      if (v7 == 1)
      {
        result = *(a2 + 112);
        v8 = *(a2 + 128);
        v9 = *(a2 + 160);
        *(a1 + 144) = *(a2 + 144);
        *(a1 + 160) = v9;
        *(a1 + 112) = result;
        *(a1 + 128) = v8;
      }

      v10 = *(a2 + 176);
      *(a1 + 176) = v10;
      if (v10 == 1)
      {
        goto LABEL_20;
      }
    }

    return result;
  }

  if ((*a2 & 1) == 0)
  {
    *a1 = 0;
    return result;
  }

  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 32);
  v3 = *(a2 + 48);
  v4 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *(a1 + 32) = result;
  if (*(a1 + 96))
  {
    if ((*(a2 + 96) & 1) == 0)
    {
      *(a1 + 96) = 0;
      goto LABEL_15;
    }
  }

  else
  {
    if ((*(a2 + 96) & 1) == 0)
    {
      goto LABEL_15;
    }

    *(a1 + 96) = 1;
  }

  result = *(a2 + 112);
  v11 = *(a2 + 128);
  v12 = *(a2 + 160);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = v12;
  *(a1 + 112) = result;
  *(a1 + 128) = v11;
LABEL_15:
  if (*(a1 + 176))
  {
    if ((*(a2 + 176) & 1) == 0)
    {
      *(a1 + 176) = 0;
      return result;
    }

    goto LABEL_20;
  }

  if (*(a2 + 176))
  {
    *(a1 + 176) = 1;
LABEL_20:
    result = *(a2 + 192);
    v13 = *(a2 + 208);
    v14 = *(a2 + 240);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 240) = v14;
    *(a1 + 192) = result;
    *(a1 + 208) = v13;
  }

  return result;
}

void re::DynamicArray<re::RenderGraphFileProvider>::clear(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    v3 = 48 * v2;
    v4 = (*(a1 + 32) + 8);
    do
    {
      re::DynamicString::deinit(v4);
      v4 = (v4 + 48);
      v3 -= 48;
    }

    while (v3);
  }

  ++*(a1 + 24);
}

_anonymous_namespace_ *re::DynamicArray<re::CameraMultiView>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
{
  v2 = *(this + 1);
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::CameraMultiView>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::CameraMultiView>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

uint64_t std::__copy_impl::operator()[abi:nn200100]<re::CameraMultiView const*,re::CameraMultiView const*,re::CameraMultiView*>(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      for (i = 0; i != 3104; i += 1552)
      {
        result = re::CameraView::operator=(a3 + i, v5 + i);
      }

      *(a3 + 3104) = *(v5 + 3104);
      v5 += 3120;
      a3 += 3120;
    }

    while (v5 != a2);
  }

  return result;
}

_anonymous_namespace_ *re::BucketArray<re::PipelineCompilationData,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::PipelineCompilationData,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

_anonymous_namespace_ *re::BucketArray<re::PipelineCompilationData,4ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (*(result + 5) < 4 * a2)
    {
      while (1)
      {
        v4 = *(v3 + 1);
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      if (v4 < a2)
      {
        v5 = (v3 + 24);
        do
        {
          result = (*(**v3 + 32))(*v3, 64, 0);
          v6 = result;
          if (*v3)
          {
            v7 = *(v3 + 1);
            v8 = *(v3 + 4);
            if ((v8 & 1) == 0)
            {
              v9 = *v5;
              v11 = v7 >= *v5;
              v10 = v7 + 1;
              v11 = !v11 || v9 >= v10;
              if (v11)
              {
                goto LABEL_24;
              }

              v12 = 2 * v9;
              goto LABEL_20;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_20:
              if (v12 <= v10)
              {
                v14 = v10;
              }

              else
              {
                v14 = v12;
              }

              result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v14);
              v8 = *(v3 + 4);
            }
          }

          else
          {
            v13 = *(v3 + 1);
            result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v13 + 1);
            v8 = *(v3 + 4) + 2;
            *(v3 + 4) = v8;
          }

LABEL_24:
          v15 = (v3 + 24);
          if ((v8 & 1) == 0)
          {
            v15 = *(v3 + 4);
          }

          v16 = *(v3 + 1);
          v15[v16++] = v6;
          *(v3 + 1) = v16;
          *(v3 + 4) += 2;
        }

        while (v16 < a2);
      }
    }
  }

  else
  {
  }

  return result;
}

void *std::__any_imp::_SmallHandler<re::BucketArray<re::PipelineCompilationData,4ul> *>::__handle[abi:nn200100](int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = 0;
      v9 = a2[1];
      *a3 = std::__any_imp::_SmallHandler<re::BucketArray<re::PipelineCompilationData,4ul> *>::__handle[abi:nn200100];
      a3[1] = v9;
      return result;
    }

    result = 0;
LABEL_9:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    v8 = a2[1];
    *a3 = std::__any_imp::_SmallHandler<re::BucketArray<re::PipelineCompilationData,4ul> *>::__handle[abi:nn200100];
    a3[1] = v8;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
  }

  if (a4)
  {
  }

  else
  {
    v6 = a5 == &std::__any_imp::__unique_typeinfo<re::BucketArray<re::PipelineCompilationData,4ul> *>::__id;
  }

  if (v6)
  {
    return a2 + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t *re::internal::Callable<re::RenderFrameDataArrayWrapper & re::RenderFrameDataStream::getOrAddDataArrayWrapper<re::PipelineCompilationData>(void)::{lambda(re::RenderFrameDataArrayWrapper*)#1},void ()(re::RenderFrameDataArrayWrapper*)>::operator()(uint64_t a1, uint64_t (***a2)(uint64_t))
{
  v2 = *(a1 + 8);
  result = (**a2)(3);
  v4 = *result;
  if (*result)
  {
    v5 = *(v4 + 40);
    if (v5)
    {
      for (i = 0; i != v5; ++i)
      {
        re::BucketArray<RESubscriptionHandle,4ul>::operator[](v4, i);
      }
    }

    while (*(v4 + 8))
    {
      re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v4);
    }

    re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v4);
    *(v4 + 40) = 0;
    ++*(v4 + 48);
    re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v4);
    v7 = *(*v2 + 40);

    return v7(v2, v4);
  }

  return result;
}

void *re::internal::Callable<re::RenderFrameDataArrayWrapper & re::RenderFrameDataStream::getOrAddDataArrayWrapper<re::PipelineCompilationData>(void)::{lambda(re::RenderFrameDataArrayWrapper*)#1},void ()(re::RenderFrameDataArrayWrapper*)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEFDD0;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::RenderFrameDataArrayWrapper & re::RenderFrameDataStream::getOrAddDataArrayWrapper<re::PipelineCompilationData>(void)::{lambda(re::RenderFrameDataArrayWrapper*)#1},void ()(re::RenderFrameDataArrayWrapper*)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEFDD0;
  a2[1] = v2;
  return a2;
}

uint64_t re::HashTable<unsigned long long,re::TintContext,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v25, v9, v8);
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
                v17 = re::HashTable<unsigned long long,re::TintContext,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, *(v13 + 48) % *(a1 + 24), *(v13 + 48));
                *(v17 + 8) = *(v13 + 8);
                v18 = *(v13 + 32);
                *(v17 + 16) = *(v13 + 16);
                *(v17 + 32) = v18;
              }

              v13 += 64;
              --v16;
            }

            while (v16);
          }

          re::HashTable<re::ecs2::Entity *,re::SortingPlane,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::deinit(v25);
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
    v20 = *(v19 + (v5 << 6));
  }

  else
  {
    v19 = *(a1 + 16);
    v20 = *(v19 + (v5 << 6));
    *(a1 + 36) = v20 & 0x7FFFFFFF;
  }

  v22 = v19 + (v5 << 6);
  *v22 = v20 | 0x80000000;
  v23 = *(a1 + 8);
  *v22 = *(v23 + 4 * a2) | 0x80000000;
  *(v22 + 48) = a3;
  *(v23 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v19 + (v5 << 6);
}

re *re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = re::ecs2::SceneComponentTable::get((a3 + 200), re::ecs2::ComponentImpl<re::ecs2::CameraViewDescriptorsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType) + 480;
  for (i = 24; i != 56; i += 8)
  {
    v7 = re::ecs2::ComponentBucketsBase::addBucket(*(a1 + 16));
    *(a1 + i) = v7;
  }

  v9 = *(a3 + 288);
  if (v9)
  {
    v82 = re::globalAllocators(result)[2];
    v10 = (*(*v82 + 32))(v82, 32, 0);
    *v10 = &unk_1F5CEFE28;
    v10[1] = a1;
    v10[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>::componentChangedHandler<REComponentDidChangeEvent>;
    v10[3] = 0;
    v83 = v10;
    v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v81, re::ecs2::ComponentImpl<re::ecs2::CameraViewDescriptorsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v13 = v12;
    v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v14 = v11;
    v14[1] = v13;
    v15 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v81);
    v79 = re::globalAllocators(v15)[2];
    v16 = (*(*v79 + 32))(v79, 32, 0);
    *v16 = &unk_1F5CEFE80;
    v16[1] = a1;
    v16[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>::componentChangedHandler<REComponentDidActivateEvent>;
    v16[3] = 0;
    v80 = v16;
    v17 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v78, re::ecs2::ComponentImpl<re::ecs2::CameraViewDescriptorsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v19 = v18;
    v20 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v20 = v17;
    v20[1] = v19;
    v21 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v78);
    v76 = re::globalAllocators(v21)[2];
    v22 = (*(*v76 + 32))(v76, 32, 0);
    *v22 = &unk_1F5CEFED8;
    v22[1] = a1;
    v22[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>::componentChangedHandler<REComponentWillDeactivateEvent>;
    v22[3] = 0;
    v77 = v22;
    v23 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v75, re::ecs2::ComponentImpl<re::ecs2::CameraViewDescriptorsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v25 = v24;
    v26 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v26 = v23;
    v26[1] = v25;
    v27 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v75);
    v73 = re::globalAllocators(v27)[2];
    v28 = (*(*v73 + 32))(v73, 32, 0);
    *v28 = &unk_1F5CEFF30;
    v28[1] = a1;
    v28[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>::componentChangedHandler<REComponentDidAddEvent>;
    v28[3] = 0;
    v74 = v28;
    v29 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v72, re::ecs2::ComponentImpl<re::ecs2::CameraViewDescriptorsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v31 = v30;
    v32 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v32 = v29;
    v32[1] = v31;
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(v72);
    result = (***(a2 + 224))();
    if (v33)
    {
      v34 = result;
      v35 = 8 * v33;
      do
      {
        v36 = *v34++;
        v70 = re::globalAllocators(result)[2];
        v71 = 0;
        v37 = (*(*v70 + 32))(v70, 32, 0);
        *v37 = &unk_1F5CEFE28;
        v37[1] = a1;
        v37[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>;
        v37[3] = 0;
        v71 = v37;
        v38 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v69, v36, 0);
        v40 = v39;
        v41 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v41 = v38;
        v41[1] = v40;
        v42 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v69);
        v67 = re::globalAllocators(v42)[2];
        v68 = 0;
        v43 = (*(*v67 + 32))(v67, 32, 0);
        *v43 = &unk_1F5CEFE80;
        v43[1] = a1;
        v43[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>;
        v43[3] = 0;
        v68 = v43;
        v44 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v66, v36, 0);
        v46 = v45;
        v47 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v47 = v44;
        v47[1] = v46;
        v48 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v66);
        v64 = re::globalAllocators(v48)[2];
        v65 = 0;
        v49 = (*(*v64 + 32))(v64, 32, 0);
        *v49 = &unk_1F5CEFED8;
        v49[1] = a1;
        v49[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>;
        v49[3] = 0;
        v65 = v49;
        v50 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v63, v36, 0);
        v52 = v51;
        v53 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v53 = v50;
        v53[1] = v52;
        v54 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v63);
        v61 = re::globalAllocators(v54)[2];
        v62 = 0;
        v55 = (*(*v61 + 32))(v61, 32, 0);
        *v55 = &unk_1F5CEFF30;
        v55[1] = a1;
        v55[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>;
        v55[3] = 0;
        v62 = v55;
        v56 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v60, v36, 0);
        v58 = v57;
        v59 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v59 = v56;
        v59[1] = v58;
        result = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(v60);
        v35 -= 8;
      }

      while (v35);
    }
  }

  return result;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>::componentChangedHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::CameraViewDescriptorsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>::componentChangedHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::CameraViewDescriptorsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>::componentChangedHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::CameraViewDescriptorsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>::componentChangedHandler<REComponentDidAddEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::CameraViewDescriptorsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEFE28;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEFE28;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEFE80;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEFE80;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEFED8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEFED8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEFF30;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEFF30;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

void re::ecs2::PinSkeletalPoseHelper::collectMeshJointPins(void *a1, void *a2, uint64_t a3, _anonymous_namespace_ *a4)
{
  v17 = 0;
  v18 = 0;
  v16 = 0;
  {
    v5 = v17;
    v7 = *(v18 + 24);
    v6 = *(v18 + 32);
    v8 = *(a4 + 2) + v17;
    if (*(a4 + 1) < v8)
    {
      re::DynamicArray<re::ecs2::Pin>::setCapacity(a4, v8);
    }

    if (v5)
    {
      v9 = v16;
      for (i = v7; i; --i)
      {
        re::StringID::StringID(&v14, v6);
        re::DynamicArray<re::ecs2::Pin>::add(a4, v15);
        re::ecs2::Pin::~Pin(v15);
        if (*&v14.var0)
        {
          if (*&v14.var0)
          {
          }
        }

        ++v6;
        v9 += 4;
        if (!--v5)
        {
          return;
        }
      }

      re::internal::assertLog(6, v8, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v7, v7);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v12, v13);
      __break(1u);
    }
  }
}

void *anonymous namespace::getSkeletonAndJointTransforms(void *result, void *a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  v29 = *MEMORY[0x1E69E9840];
  *a4 = 0;
  if (!result)
  {
    return result;
  }

  v5 = result;
  v6 = result[2];
  if (!v6)
  {
    return 0;
  }

  result = re::ecs2::EntityComponentCollection::get((v6 + 48), re::ecs2::ComponentImpl<re::ecs2::SkeletalPoseBufferComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (!result)
  {
    return result;
  }

  if (!v5[71])
  {
    return 0;
  }

  v11 = result;
  v12 = *(a3 + 8);
  if (v12 < 0xFFFFFFFFFFFFFFFELL || (v12 & 1) != 0)
  {
    if (v12 > 1)
    {
      goto LABEL_11;
    }

    v13 = *(a3 + 16);
    if (!v13)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v13 = *(a3 + 16);
  }

  if (!*v13)
  {
    v18 = 0;
    goto LABEL_18;
  }

LABEL_11:
  re::MeshNameMap::meshInstancePartsForIdentifier(&v26, (a2 + 80), a3);
  v14 = v26;
  if (!v26)
  {
LABEL_15:
    re::FunctionBase<24ul,re::MeshInstanceAndPartIndex ()(unsigned long)>::destroyCallable(v27);
    return 0;
  }

  v15 = 0;
  while (1)
  {
    v25 = v15;
    v16 = (*(*v28 + 16))(v28, &v25);
    v17 = re::SkeletalPoseRigMappingData::poseRigMapIndex((v5 + 59), (a2 + 80), v16, WORD2(v16));
    if (v17 != -1)
    {
      break;
    }

    if (v14 == ++v15)
    {
      goto LABEL_15;
    }
  }

  v18 = v17;
  re::FunctionBase<24ul,re::MeshInstanceAndPartIndex ()(unsigned long)>::destroyCallable(v27);
LABEL_18:
  v19 = v18;
  if (v5[80] <= v18)
  {
    v20 = 0xFFFFFFFFLL;
  }

  else
  {
    v20 = *(v5[81] + 4 * v18);
  }

  if (a2[156] <= v20)
  {
    return 0;
  }

  if (a2[35] > v20 && (v21 = re::AssetHandle::loadedAsset<re::SkeletonAsset>((a2[37] + 24 * v20))) != 0)
  {
    v22 = v21 + 88;
  }

  else
  {
    v22 = re::MeshAsset::skeletonAtIndex(a2, v20);
  }

  *a4 = v22;
  v23 = *(v11 + 112);
  v26 = *(v11 + 128);
  v27[0] = v23;
  *a5 = re::SkeletalPoseRigMappingData::poseRigMapAbsoluteJointTransforms((v5 + 59), v19, &v26);
  a5[1] = v24;
  return (*(*a4 + 24) == v24);
}

uint64_t re::DynamicArray<re::ecs2::Pin>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::ecs2::Pin>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 240 * v4;
  *v5 = &unk_1F5CF49C0;
  re::StringID::StringID((v5 + 8), (a2 + 8));
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 80);
  *(v5 + 64) = *(a2 + 64);
  *(v5 + 80) = v8;
  *(v5 + 32) = v6;
  *(v5 + 48) = v7;
  re::DynamicArray<re::ecs2::PinAlignment>::DynamicArray(v5 + 96, (a2 + 96));
  v9 = *(a2 + 160);
  *(v5 + 144) = *(a2 + 144);
  *(v5 + 160) = v9;
  v10 = *(a2 + 176);
  *(v5 + 176) = v10;
  if (v10 == 1)
  {
    re::StringID::StringID((v5 + 184), (a2 + 184));
  }

  result = re::DynamicArray<re::ecs2::EntityHandle>::DynamicArray(v5 + 200, (a2 + 200));
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

void anonymous namespace::makePinFromNameAndTransform(const StringID *a1@<X0>, float32x4_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2[1];
  v6 = a2[2];
  v7 = vmulq_f32(*a2, 0);
  v8 = vaddq_f32(a2[3], vmlaq_f32(vmlaq_f32(v7, 0, v5), 0, v6));
  v22 = vmlaq_f32(vmlaq_f32(*a2, 0, v5), 0, v6);
  v23 = vdivq_f32(v8, vdupq_laneq_s32(v8, 3));
  v21 = vmlaq_f32(vaddq_f32(v7, v5), 0, v6);
  re::poseFromOriginAndXYAxes(&v23, &v22, &v21, v20);
  v17 = 0uLL;
  v18 = 0;
  v19 = 0x3F80000000000000;
  v15[0] = 1;
  re::StringID::StringID(&v16, a1);
  v9.i64[0] = 0x7F0000007FLL;
  v9.i64[1] = 0x7F0000007FLL;
  v14[0] = vnegq_f32(v9);
  v14[1] = v9;
  v13 = 0;
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  re::ecs2::Pin::Pin(a3, a1, v20, &v17, v15, v14, v11);
  v10 = re::DynamicArray<re::ecs2::PinAlignment>::deinit(v11);
  if (v15[0] == 1 && (v16 & 1) != 0)
  {
    if (v16)
    {
    }
  }
}

void re::ecs2::PinSkeletalPoseHelper::pinByName(re::ecs2::PinSkeletalPoseHelper *this@<X0>, const re::ecs2::SkeletalPoseComponent *a2@<X1>, const re::MeshAsset *a3@<X2>, uint64_t a4@<X8>)
{
  v40[0] = 0;
  v40[1] = &str_67;
  *&v39.var0 = 0;
  v39.var1 = &str_67;
  *&v38.var0 = 0;
  v38.var1 = &str_67;
  v7 = *(a3 + 1);
  v8 = strlen(v7);
  re::internal::parseSkeletalPoseJointPinName(v7, v8, v40, &v39, &v38);
  v35[0] = 1;
  re::StringID::StringID(&v36, &v39);
  re::StringID::StringID(v37, &v38);
  v33 = 0;
  v34 = 0;
  v32 = 0;
  if (SkeletonAndJointTransforms)
  {
    v10 = v34;
    v12 = *(v34 + 24);
    v11 = *(v34 + 32);
    SkeletonAndJointTransforms = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v34 + 136, v40, (0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v40[0] >> 31) ^ (v40[0] >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v40[0] >> 31) ^ (v40[0] >> 1))) >> 27))) ^ ((0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v40[0] >> 31) ^ (v40[0] >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v40[0] >> 31) ^ (v40[0] >> 1))) >> 27))) >> 31), v24);
    if (HIDWORD(v25[0]) != 0x7FFFFFFF)
    {
      v14 = *(*(v10 + 152) + 32 * HIDWORD(v25[0]) + 24);
      if (v14 != -1)
      {
        if (v12 <= v14)
        {
          re::internal::assertLog(6, v13, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, *(*(v10 + 152) + 32 * HIDWORD(v25[0]) + 24), v12);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v20, v22);
          __break(1u);
        }

        else
        {
          v15 = v33;
          if (v33 > v14)
          {
            *a4 = 1;
            *(a4 + 16) = &unk_1F5CF49C0;
            re::StringID::StringID((a4 + 24), v25);
            v16 = *&v25[5];
            *(a4 + 48) = *&v25[3];
            *(a4 + 64) = v16;
            v17 = *&v25[9];
            *(a4 + 80) = *&v25[7];
            *(a4 + 96) = v17;
            re::DynamicArray<re::ecs2::PinAlignment>::DynamicArray(a4 + 112, v26);
            v18 = v28;
            *(a4 + 160) = v27;
            *(a4 + 176) = v18;
            v19 = v29;
            *(a4 + 192) = v29;
            if (v19 == 1)
            {
              re::StringID::StringID((a4 + 200), &v30);
            }

            re::DynamicArray<re::ecs2::EntityHandle>::DynamicArray(a4 + 216, v31);
            re::ecs2::Pin::~Pin(v24);
            goto LABEL_10;
          }
        }

        re::internal::assertLog(6, v13, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v14, v15);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v21, v23);
        __break(1u);
        return;
      }
    }
  }

  *a4 = 0;
LABEL_10:
  if (v37[0])
  {
    if (v37[0])
    {
    }
  }

  v37[0] = 0;
  v37[1] = &str_67;
  if (v36)
  {
    if (v36)
    {
    }
  }

  if (*&v38.var0)
  {
    if (*&v38.var0)
    {
    }
  }

  if (*&v39.var0)
  {
    if (*&v39.var0)
    {
    }
  }

  if (v40[0])
  {
    if (v40[0])
    {
    }
  }
}

uint64_t re::DynamicArray<re::ecs2::PinAlignment>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = v4 << 7;
        v6 = v3 + 88;
        do
        {
          re::DynamicArray<unsigned long>::deinit(v6);
          v6 += 128;
          v5 -= 128;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

uint64_t re::DynamicArray<re::ecs2::PinAlignment>::DynamicArray(uint64_t a1, uint64_t *a2)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  v3 = *a2;
  if (*a2)
  {
    v5 = a2[2];
    *a1 = v3;
    re::DynamicArray<re::ecs2::PinAlignment>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::ecs2::PinAlignment>::copy(a1, a2);
  }

  return a1;
}

void *re::DynamicArray<re::ecs2::PinAlignment>::copy(void *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  v5 = result[2];
  if (v4 >= v5)
  {
    result = re::DynamicArray<re::ecs2::PinAlignment>::setCapacity(result, *(a2 + 16));
    v15 = *(a2 + 32);
    v16 = v3[2];
    v17 = v3[4];
    if (v16)
    {
      v18 = v15 + (v16 << 7);
      do
      {
        v19 = *(v15 + 16);
        *v17 = *v15;
        *(v17 + 16) = v19;
        v20 = *(v15 + 32);
        v21 = *(v15 + 48);
        v22 = *(v15 + 64);
        *(v17 + 80) = *(v15 + 80);
        *(v17 + 48) = v21;
        *(v17 + 64) = v22;
        *(v17 + 32) = v20;
        result = re::DynamicArray<float>::operator=(v17 + 88, (v15 + 88));
        v15 += 128;
        v17 += 128;
      }

      while (v15 != v18);
      v17 = v3[4];
      v16 = v3[2];
      v15 = *(a2 + 32);
    }

    if (v16 != v4)
    {
      v23 = (v4 << 7) - (v16 << 7);
      v24 = (v16 << 7) | 0x58;
      v25 = (v15 + v24);
      result = (v17 + v24);
      do
      {
        v26 = *(v25 - 11);
        *(result - 9) = *(v25 - 9);
        *(result - 11) = v26;
        v27 = *(v25 - 7);
        v28 = *(v25 - 5);
        v29 = *(v25 - 3);
        *(result - 8) = *(v25 - 8);
        *(result - 3) = v29;
        *(result - 5) = v28;
        *(result - 7) = v27;
        v30 = re::DynamicArray<float>::DynamicArray(result, v25);
        v25 += 16;
        result = (v30 + 128);
        v23 -= 128;
      }

      while (v23);
    }
  }

  else
  {
    v6 = result[4];
    if (v4)
    {
      v7 = *(a2 + 32);
      v8 = v7 + (v4 << 7);
      do
      {
        v9 = *(v7 + 16);
        *v6 = *v7;
        *(v6 + 16) = v9;
        v10 = *(v7 + 32);
        v11 = *(v7 + 48);
        v12 = *(v7 + 64);
        *(v6 + 80) = *(v7 + 80);
        *(v6 + 48) = v11;
        *(v6 + 64) = v12;
        *(v6 + 32) = v10;
        result = re::DynamicArray<float>::operator=(v6 + 88, (v7 + 88));
        v7 += 128;
        v6 += 128;
      }

      while (v7 != v8);
      v6 = v3[4];
      v5 = v3[2];
    }

    if (v4 != v5)
    {
      v13 = (v5 << 7) - (v4 << 7);
      v14 = v6 + (v4 << 7) + 88;
      do
      {
        result = re::DynamicArray<unsigned long>::deinit(v14);
        v14 += 128;
        v13 -= 128;
      }

      while (v13);
    }
  }

  v3[2] = v4;
  return result;
}

void *re::DynamicArray<re::ecs2::PinAlignment>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::ecs2::PinAlignment>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 57)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 128, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v21, v23);
          __break(1u);
        }

        else
        {
          v2 = a2 << 7;
          result = (*(*result + 32))(result, a2 << 7, 16);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v22, v24);
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_16:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = v8 + (v9 << 7);
        v11 = v7;
        do
        {
          v12 = *(v8 + 16);
          *v11 = *v8;
          *(v11 + 1) = v12;
          v13 = *(v8 + 32);
          v14 = *(v8 + 48);
          v15 = *(v8 + 64);
          *(v11 + 80) = *(v8 + 80);
          *(v11 + 3) = v14;
          *(v11 + 4) = v15;
          *(v11 + 2) = v13;
          v11[15] = 0;
          v11[12] = 0;
          v11[13] = 0;
          v11[11] = 0;
          *(v11 + 28) = 0;
          v16 = *(v8 + 88);
          v17 = *(v8 + 96);
          v18 = v8 + 88;
          v11[11] = v16;
          v11[12] = v17;
          *v18 = 0;
          *(v18 + 8) = 0;
          v19 = v11[13];
          v11[13] = *(v18 + 16);
          *(v18 + 16) = v19;
          v20 = v11[15];
          v11[15] = *(v18 + 32);
          *(v18 + 32) = v20;
          ++*(v18 + 24);
          ++*(v11 + 28);
          re::DynamicArray<unsigned long>::deinit(v18);
          v11 += 16;
          v8 = v18 + 40;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t re::DynamicArray<re::ecs2::EntityHandle>::DynamicArray(uint64_t a1, uint64_t *a2)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  v3 = *a2;
  if (*a2)
  {
    v5 = a2[2];
    *a1 = v3;
    re::DynamicArray<re::ecs2::EntityHandle>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::ecs2::EntityHandle>::copy(a1, a2);
  }

  return a1;
}

void re::DynamicArray<re::ecs2::EntityHandle>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = a1[2];
  if (v4 >= v5)
  {
    re::DynamicArray<re::ecs2::EntityHandle>::setCapacity(a1, *(a2 + 16));
    v12 = *(a2 + 32);
    v13 = a1[2];
    v14 = a1[4];
    if (v13)
    {
      v15 = 24 * v13;
      do
      {
        v16 = re::ecs2::EntityHandle::operator=(v14, v12);
        v12 += 3;
        v14 = (v16 + 24);
        v15 -= 24;
      }

      while (v15);
      v14 = a1[4];
      v13 = a1[2];
      v12 = *(a2 + 32);
    }

    if (v13 != v4)
    {
      v17 = 3 * v13;
      v18 = &v12[v17];
      v19 = (v14 + 8 * v17);
      v20 = 24 * v4 - 8 * v17;
      do
      {
        v21 = re::ecs2::EntityHandle::EntityHandle(v19, v18);
        v18 = (v18 + 24);
        v19 = v21 + 3;
        v20 -= 24;
      }

      while (v20);
    }
  }

  else
  {
    v6 = a1[4];
    if (v4)
    {
      v7 = *(a2 + 32);
      v8 = 24 * v4;
      do
      {
        v9 = re::ecs2::EntityHandle::operator=(v6, v7);
        v7 += 3;
        v6 = (v9 + 24);
        v8 -= 24;
      }

      while (v8);
      v6 = a1[4];
      v5 = a1[2];
    }

    if (v4 != v5)
    {
      v10 = (v6 + 24 * v4);
      v11 = 24 * v5 - 24 * v4;
      do
      {
        re::ecs2::EntityHandle::reset(v10);
        objc_destroyWeak(v10);
        *v10 = 0;
        v10 = (v10 + 24);
        v11 -= 24;
      }

      while (v11);
    }
  }

  a1[2] = v4;
}

void *re::DynamicArray<re::ecs2::Pin>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::ecs2::Pin>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0xF0uLL))
        {
          v2 = 240 * a2;
          result = (*(*result + 32))(result, 240 * a2, 16);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_18;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 240, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v19, v21);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v20, v22);
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_18:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = 0;
        v11 = 240 * v9;
        do
        {
          v12 = &v7[v10 / 8];
          v13 = v8 + v10;
          v7[v10 / 8] = &unk_1F5CF49C0;
          re::StringID::StringID(&v7[v10 / 8 + 1], (v8 + v10 + 8));
          v14 = *(v8 + v10 + 32);
          v15 = *(v8 + v10 + 48);
          v16 = *(v8 + v10 + 80);
          *(v12 + 4) = *(v8 + v10 + 64);
          *(v12 + 5) = v16;
          *(v12 + 2) = v14;
          *(v12 + 3) = v15;
          re::DynamicArray<re::ecs2::PinAlignment>::DynamicArray(&v7[v10 / 8 + 12], (v8 + v10 + 96));
          v17 = *(v8 + v10 + 160);
          *(v12 + 9) = *(v8 + v10 + 144);
          *(v12 + 10) = v17;
          v18 = *(v8 + v10 + 176);
          *(v12 + 176) = v18;
          if (v18 == 1)
          {
            re::StringID::StringID((v12 + 23), (v13 + 184));
          }

          re::DynamicArray<re::ecs2::EntityHandle>::DynamicArray((v12 + 25), (v13 + 200));
          (**v13)(v8 + v10);
          v10 += 240;
        }

        while (v11 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_18;
    }
  }

  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::ecs2::Pin>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
{
  v2 = *(this + 1);
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::ecs2::Pin>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::ecs2::Pin>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::ecs2::allocInfo_PhysicsOriginComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_243, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_243))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A7F68, "PhysicsOriginComponent");
    __cxa_guard_release(&_MergedGlobals_243);
  }

  return &unk_1EE1A7F68;
}

void re::ecs2::initInfo_PhysicsOriginComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v16[0] = 0x5CCE2FB72C22FEA0;
  v16[1] = "PhysicsOriginComponent";
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  *(this + 2) = v17;
  if ((atomic_load_explicit(&qword_1EE1A7F60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A7F60))
  {
    v7 = re::introspectionAllocator();
    v13 = re::ecs2::introspect_Component(1, v8, v9, v10, v11, v12);
    v14 = (*(*v7 + 32))(v7, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "Component";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    *(v14 + 40) = 3;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1A7F58 = v14;
    __cxa_guard_release(&qword_1EE1A7F60);
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1A7F58;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::PhysicsOriginComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::PhysicsOriginComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::PhysicsOriginComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::PhysicsOriginComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs222PhysicsOriginComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v15 = v17;
}

void re::internal::defaultConstruct<re::ecs2::PhysicsOriginComponent>(int a1, int a2, ArcSharedObject *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CD1498;
}

void re::internal::defaultConstructV2<re::ecs2::PhysicsOriginComponent>(ArcSharedObject *a1)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CD1498;
}

void re::internal::findPhysicsOrigin(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, re::TransformService *a4@<X3>, float32x4_t *a5@<X8>)
{
  v6 = *(re::ecs2::ComponentImpl<re::ecs2::PhysicsOriginComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 8);
  if (*(a1 + 224) <= v6 || (v7 = *(*(a1 + 240) + 8 * v6)) == 0 || (v8 = *(v7 + 384)) == 0)
  {
LABEL_14:
    *a5 = xmmword_1E3047670;
    a5[1] = xmmword_1E3047680;
    a5[2] = xmmword_1E30476A0;
    a5[3] = xmmword_1E30474D0;
    return;
  }

  v9 = *(v7 + 400);
  v10 = &v9[v8];
  while (1)
  {
    v11 = *v9;
    if (a3)
    {
      v12 = 8 * a3;
      v13 = a2;
      while (*v13 != v11)
      {
        ++v13;
        v12 -= 8;
        if (!v12)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
      v13 = a2;
    }

    if (v13 != &a2[a3])
    {
      goto LABEL_13;
    }

LABEL_12:
    v14 = *(v11 + 16);
    if (*(v14 + 304))
    {
      break;
    }

LABEL_13:
    if (++v9 == v10)
    {
      goto LABEL_14;
    }
  }

  re::TransformService::worldMatrix(a4, v14, 0, a5);
  v16 = a5[1];
  v17 = a5[2];
  v18 = vmulq_f32(*a5, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v17, v17, 0xCuLL), v17, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v16, v16), v16, 0xCuLL))), vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL), vextq_s8(vextq_s8(v16, v16, 0xCuLL), v16, 8uLL)));
  v19 = vaddv_f32(*v18.f32);
  v20 = -1.0;
  if ((v18.f32[2] + v19) > 0.0)
  {
    v20 = 1.0;
  }

  v21 = vmulq_f32(*a5, *a5);
  v22 = vmulq_f32(v16, v16);
  v23 = vadd_f32(vzip1_s32(*v21.i8, *v22.i8), vzip2_s32(*v21.i8, *v22.i8));
  v24 = vextq_s8(v21, v21, 8uLL);
  *v24.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v24.f32, *&vextq_s8(v22, v22, 8uLL)), v23));
  v25 = vmulq_f32(v17, v17);
  v24.i32[2] = sqrtf(v25.f32[2] + vaddv_f32(*v25.f32));
  v26 = vmulq_n_f32(v24, v20);
  v27 = vmulq_f32(v26, v26);
  if (fabsf(v27.f32[2] + vaddv_f32(*v27.f32)) < 1.0e-10)
  {
    v28 = *re::ecsComponentsLogObjects(v15);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *v29 = 0;
      _os_log_impl(&dword_1E1C61000, v28, OS_LOG_TYPE_DEFAULT, "Physics origin tranform has scale of 0.", v29, 2u);
    }
  }
}

uint64_t re::internal::getPhysicsOriginFromTransform@<X0>(re::ecs2::TransformComponent *a1@<X0>, re::TransformService *a2@<X1>, float32x4_t *a3@<X2>, uint64_t a4@<X8>)
{
  re::TransformService::worldMatrix(a2, a1, 0, v15);
  v6 = 0;
  v7 = *a3;
  v8 = a3[1];
  v9 = a3[2];
  v10 = a3[3];
  v16[0] = v15[0];
  v16[1] = v15[1];
  v16[2] = v15[2];
  v16[3] = v15[3];
  do
  {
    *(&v17 + v6 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v7, COERCE_FLOAT(*&v16[v6])), v8, *v16[v6].i8, 1), v9, v16[v6], 2), v10, v16[v6], 3);
    ++v6;
  }

  while (v6 != 4);
  v16[0] = 0u;
  v18 = 0u;
  v19 = xmmword_1E30474D0;
  result = re::decomposeScaleRotationTranslation<float>(&v17, v16, &v19, &v18);
  v12 = v16[0].i64[1];
  v13 = v19;
  v14 = v18;
  *a4 = v16[0].i64[0];
  *(a4 + 8) = v12;
  *(a4 + 16) = v13;
  *(a4 + 32) = v14;
  return result;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs222PhysicsOriginComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 && ((*(*a1 + 64))(&v5), v5 == 1))
  {
    *a2 = v6;
    v3 = v7;
    *(a2 + 8) = v7;
    if (v3 == 1)
    {
      v4 = re::StringID::StringID((a2 + 16), &v8);
      if (v5 & 1) != 0 && (v7 & 1) != 0 && (*&v8.var0)
      {
        if (*&v8.var0)
        {
        }
      }
    }
  }

  else
  {
    *a2 = 1;
    *(a2 + 8) = 0;
  }
}

uint64_t re::ecs2::RemoteEffectsComponent::getLegacyStyle(re::ecs2::RemoteEffectsComponent *this)
{
  v7 = *MEMORY[0x1E69E9840];
  if (*(this + 7))
  {
    return *(this + 9);
  }

  v3 = *re::remoteEffectsLogObjects(this);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(*(this + 2) + 312);
    v5 = 134217984;
    v6 = v4;
    _os_log_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEFAULT, "Failed to find legacy style for entity: %llu", &v5, 0xCu);
  }

  return 0;
}

uint64_t re::ecs2::RemoteEffectsComponent::setGlowAppearDurationOverride(re::ecs2::RemoteEffectsComponent *a1, uint64_t a2)
{
  result = re::ecs2::RemoteEffectsComponent::getLegacyStyle(a1);
  if (result)
  {
    if (*a2 == 1)
    {
      v4 = *(a2 + 8);
      if ((*(result + 56) & 1) == 0)
      {
        *(result + 56) = 1;
      }

      *(result + 64) = v4;
    }

    else if (*(result + 56) == 1)
    {
      *(result + 56) = 0;
    }
  }

  return result;
}

uint64_t re::ecs2::RemoteEffectsComponent::setGlowDisappearDurationOverride(re::ecs2::RemoteEffectsComponent *a1, uint64_t a2)
{
  result = re::ecs2::RemoteEffectsComponent::getLegacyStyle(a1);
  if (result)
  {
    if (*a2 == 1)
    {
      v4 = *(a2 + 8);
      if ((*(result + 72) & 1) == 0)
      {
        *(result + 72) = 1;
      }

      *(result + 80) = v4;
    }

    else if (*(result + 72) == 1)
    {
      *(result + 72) = 0;
    }
  }

  return result;
}

void re::ecs2::RemoteEffectsComponent::setAudioAssetHandle(re::ecs2::RemoteEffectsComponent *a1, const re::AssetHandle *a2)
{
  LegacyStyle = re::ecs2::RemoteEffectsComponent::getLegacyStyle(a1);
  if (LegacyStyle)
  {
    v4 = LegacyStyle;
    re::AssetHandle::AssetHandle(v5, a2);
    re::AssetHandle::operator=(v4 + 88, v5);
    re::AssetHandle::~AssetHandle(v5);
  }
}

re::AssetHandle *re::ecs2::RemoteEffectsComponent::getAudioAssetHandle@<X0>(re::ecs2::RemoteEffectsComponent *this@<X0>, re::AssetHandle *a2@<X8>)
{
  result = re::ecs2::RemoteEffectsComponent::getLegacyStyle(this);
  if (result)
  {

    return re::AssetHandle::AssetHandle(a2, (result + 88));
  }

  else
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
  }

  return result;
}

uint64_t re::ecs2::WriteOptional<double>(uint64_t a1, _BYTE *a2)
{
  result = RESyncBitWriterWriteBool();
  if (*a2 == 1)
  {

    JUMPOUT(0x1E69049A0);
  }

  return result;
}

uint64_t re::ecs2::ReadOptional<double>(_BYTE *a1, uint64_t a2)
{
  result = RESyncBitReaderReadBool();
  *a1 = 0;
  return result;
}

uint64_t re::ecs2::fromBitReader(uint64_t a1)
{
  v1 = RESyncBitReaderDataPtr();
  RESyncBitReaderSize();
  RESyncBitReaderBytesRead();
  RESyncBitReaderSkipData();
  return v1;
}

uint64_t re::ecs2::RemoteEffectsComponent::makeSyncInfo(re::ecs2::RemoteEffectsComponent *this)
{
  v1 = RESyncSyncableTypeInfoCreate();
  RESyncSyncableTypeInfoSetDebugName();
  RESyncSyncableTypeInfoSetWriteSnapshotCb();
  RESyncSyncableTypeInfoSetReadSnapshotCb();
  RESyncSyncableTypeInfoSetWritePayloadCb();
  RESyncSyncableTypeInfoSetReadPayloadCb();
  return v1;
}

BOOL ___ZN2re4ecs222RemoteEffectsComponent12makeSyncInfoEv_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = RESyncGetSyncObjectContextEntry() + 448;

  return re::ecs2::serializeToSnapshot(a2, a3, v6);
}

BOOL re::ecs2::serializeToSnapshot(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = *MEMORY[0x1E69E9840];
  *buf = 0;
  v19 = RESyncBitWriterOpenBuffer();
  v20 = 0;
  v21 = 0;
  v22 = a1;
  v23 = re::ecs2::bitWriterGrowFn;
  memset(v24, 0, sizeof(v24));
  re::DynamicString::setCapacity(v24, 0);
  v25 = 6;
  v26 = a3;
  v18 = &unk_1F5D17050;
  {
    re::introspect<re::ecs2::RemoteEffectsComponent>(BOOL)::info = re::ecs2::introspect_RemoteEffectsComponent(0, v13, v14, v15, v16, v17);
  }

  re::snapshot::introspected::write<re::snapshot::EncoderRaw>(&v18, a2, re::introspect<re::ecs2::RemoteEffectsComponent>(BOOL)::info);
  if (BYTE8(v24[0]))
  {
    v6 = *(&v24[0] + 1) >> 1;
  }

  else
  {
    v6 = BYTE8(v24[0]) >> 1;
  }

  v7 = RESyncBitWriterCloseBuffer();
  if (v6)
  {
    v8 = *re::remoteEffectsLogObjects(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = re::ecs2::ComponentImpl<re::ecs2::RemoteEffectsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
      v10 = v8;
      v11 = *((*(*v9 + 48))(v9) + 48);
      *buf = 136380675;
      *&buf[4] = v11;
      _os_log_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_DEFAULT, "Failed to write raw snapshot of type %{private}s", buf, 0xCu);
    }
  }

  v18 = &unk_1F5D16DD0;
  if (*&v24[0] && (BYTE8(v24[0]) & 1) != 0)
  {
    (*(**&v24[0] + 40))();
  }

  return v6 == 0;
}

uint64_t ___ZN2re4ecs222RemoteEffectsComponent12makeSyncInfoEv_block_invoke_2(uint64_t a1, uint64_t a2, const re::IntrospectionBase **a3, uint64_t a4)
{
  v6 = RESyncGetSyncObjectContextEntry() + 448;

  return re::ecs2::deserializeFromSnapshot(a2, a3, v6);
}

uint64_t re::ecs2::deserializeFromSnapshot(uint64_t a1, const re::IntrospectionBase **a2, uint64_t a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = re::ecs2::fromBitReader(a1);
  v7 = v6;
  v21 = v5;
  v22 = v7;
  v25 = -1;
  v26 = 0;
  v27 = a3;
  v29 = 0;
  v23 = v5;
  v24 = (v5 + v7);
  v20 = &unk_1F5D172F0;
  {
    re::introspect<re::ecs2::RemoteEffectsComponent>(BOOL)::info = re::ecs2::introspect_RemoteEffectsComponent(0, v15, v16, v17, v18, v19);
  }

  re::snapshot::introspected::read<re::snapshot::DecoderRaw>(&v20, a2, re::introspect<re::ecs2::RemoteEffectsComponent>(BOOL)::info);
  if (v23 != v24)
  {
    re::snapshot::BufferDecoder::error(&v20, "failed to consume input: %zu vs %zu", v23 - v21, v22);
  }

  v8 = v26;
  if (v26 == 1)
  {
    re::snapshot::BufferDecoder::logInput(&v20);
    v10 = *re::remoteEffectsLogObjects(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = re::ecs2::ComponentImpl<re::ecs2::RemoteEffectsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
      v12 = v10;
      v13 = *((*(*v11 + 48))(v11) + 48);
      *buf = 136380675;
      v31 = v13;
      _os_log_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_DEFAULT, "Failed to read raw snapshot of type %{private}s", buf, 0xCu);
    }
  }

  return v8 ^ 1u;
}

void *___ZN2re4ecs222RemoteEffectsComponent12makeSyncInfoEv_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (RESyncObjectWriteContextIsLocalSession())
  {
    RESyncBitReaderBytesLeft();
    RESyncBitReaderDataPtr();

    JUMPOUT(0x1E69049A0);
  }

  re::ecs2::RemoteEffectsComponent::RemoteEffectsComponent(&v15);
  v14[0] = re::ecs2::encodeEntity;
  memset(&v14[1], 0, 24);
  v13[0] = re::PassthroughAssetSerialization::instance(void)::instance;
  v13[1] = 0;
  v13[2] = 0;
  v13[3] = v14;
  v13[4] = 0;
  re::ecs2::deserializeFromSnapshot(a2, &v15, v13);
  RESyncBitWriterWriteBool();
  RESyncBitWriterWriteBool();
  RESyncBitWriterWriteUInt32();
  MEMORY[0x1E69049A0](a3, &v19, 16);
  RESyncBitWriterWriteFloat();
  v26[0] = v20;
  if (v20 == 1)
  {
    v27 = v21;
  }

  re::ecs2::WriteOptional<double>(a3, v26);
  v24[0] = v22;
  if (v22 == 1)
  {
    v25 = v23;
  }

  re::ecs2::WriteOptional<double>(a3, v24);
  RESyncBitWriterWriteBool();
  RESyncBitWriterWriteBool();
  RESyncBitWriterWriteUInt8();
  RESyncBitWriterWriteUInt32();
  v36 = 0;
  v6 = RESyncBitWriterOpenBuffer();
  v28[0] = &unk_1F5D16DD0;
  v28[1] = v6;
  v29 = 0;
  v30 = v36;
  v31 = a3;
  v32 = re::ecs2::bitWriterGrowFn;
  memset(v33, 0, sizeof(v33));
  re::DynamicString::setCapacity(v33, 0);
  v34 = 6;
  v35 = v13;
  v28[0] = &unk_1F5D16F10;
  if ((atomic_load_explicit(&qword_1EE1A8000, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A8000))
  {
    _MergedGlobals_244 = re::ecs2::introspect_RemoteEffectsComponentExtraData(0, v8, v9, v10, v11, v12);
    __cxa_guard_release(&qword_1EE1A8000);
  }

  re::snapshot::introspected::write<re::snapshot::EncoderOPACK>(v28, &v15, _MergedGlobals_244);
  RESyncBitWriterCloseBuffer();
  v28[0] = &unk_1F5D16DD0;
  if (v33[0] && (v33[1] & 1) != 0)
  {
    (*(*v33[0] + 40))();
  }

  v15 = &unk_1F5CF0020;
  re::DynamicArray<re::ecs2::RemoteEffectsStyle>::deinit(&v18);
  if (cf)
  {
    CFRelease(cf);
  }

  v15 = &unk_1F5CCF868;
  return objc_destructInstance(&v16);
}

void re::ecs2::RemoteEffectsComponent::~RemoteEffectsComponent(re::ecs2::RemoteEffectsComponent *this)
{
  *this = &unk_1F5CF0020;
  re::DynamicArray<re::ecs2::RemoteEffectsStyle>::deinit(this + 40);
  v2 = *(this + 4);
  if (v2)
  {
    CFRelease(v2);
  }

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CF0020;
  re::DynamicArray<re::ecs2::RemoteEffectsStyle>::deinit(this + 40);
  v2 = *(this + 4);
  if (v2)
  {
    CFRelease(v2);
  }

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

uint64_t ___ZN2re4ecs222RemoteEffectsComponent12makeSyncInfoEv_block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (RESyncObjectReadContextIsLocalSession())
  {
    v6 = RESyncBitReaderBytesLeft();
    v7 = RESyncBitReaderDataPtr();
    MEMORY[0x1E69049A0](a3, v7, v6);
  }

  else
  {
    re::ecs2::RemoteEffectsComponent::RemoteEffectsComponent(&v39);
    v38[0] = re::ecs2::encodeEntity;
    memset(&v38[1], 0, 24);
    v37[0] = re::PassthroughAssetSerialization::instance(void)::instance;
    v37[1] = 0;
    v37[2] = 0;
    v37[3] = v38;
    v37[4] = 0;
    v61 = 1;
    RESyncBitReaderReadBool();
    v8 = v61;
    LegacyStyle = re::ecs2::RemoteEffectsComponent::getLegacyStyle(&v39);
    if (LegacyStyle)
    {
      *(LegacyStyle + 17) = v8;
    }

    v60 = 0;
    RESyncBitReaderReadBool();
    v42[42] = v60;
    v59 = 0;
    RESyncBitReaderReadUInt32();
    v10 = v59;
    v11 = re::ecs2::RemoteEffectsComponent::getLegacyStyle(&v39);
    if (v11)
    {
      *(v11 + 12) = v10;
      *(v11 + 22) = v10 == 0;
    }

    __asm { FMOV            V0.2S, #1.0 }

    v57 = _D0;
    LODWORD(v58) = 1065353216;
    BYTE4(v58) = 0;
    RESyncBitReaderReadData();
    v18 = v57;
    v17 = v58;
    v19 = re::ecs2::RemoteEffectsComponent::getLegacyStyle(&v39);
    if (v19)
    {
      *(v19 + 24) = v18;
      *(v19 + 32) = v17;
      *(v19 + 36) = BYTE4(v17);
    }

    v56 = 1065353216;
    RESyncBitReaderReadFloat();
    v20 = v56;
    v21 = re::ecs2::RemoteEffectsComponent::getLegacyStyle(&v39);
    if (v21)
    {
      *(v21 + 40) = v20;
    }

    re::ecs2::ReadOptional<double>(v54, a2);
    v52[0] = v54[0];
    if (v54[0] == 1)
    {
      v53 = v55;
    }

    re::ecs2::RemoteEffectsComponent::setGlowAppearDurationOverride(&v39, v52);
    re::ecs2::ReadOptional<double>(v50, a2);
    v48[0] = v50[0];
    if (v50[0] == 1)
    {
      v49 = v51;
    }

    re::ecs2::RemoteEffectsComponent::setGlowDisappearDurationOverride(&v39, v48);
    v47 = 0;
    RESyncBitReaderReadBool();
    v22 = v47;
    v23 = re::ecs2::RemoteEffectsComponent::getLegacyStyle(&v39);
    if (v23)
    {
      *(v23 + 18) = v22;
    }

    v46 = 1;
    RESyncBitReaderReadBool();
    v24 = v46;
    v25 = re::ecs2::RemoteEffectsComponent::getLegacyStyle(&v39);
    if (v25)
    {
      *(v25 + 20) = v24;
    }

    v45 = 0;
    RESyncBitReaderReadUInt8();
    v26 = v45;
    v27 = re::ecs2::RemoteEffectsComponent::getLegacyStyle(&v39);
    if (v27)
    {
      *(v27 + 16) = v26;
    }

    v44 = 0;
    RESyncBitReaderReadUInt32();
    v43 = v44;
    v28 = re::ecs2::fromBitReader(a2);
    v30 = v29;
    v63 = v28;
    v64 = v30;
    v67 = -1;
    v68 = 0;
    v69 = v37;
    v71 = 0;
    v65 = v28;
    v66 = (v28 + v30);
    v62 = &unk_1F5D17190;
    if ((atomic_load_explicit(&qword_1EE1A8000, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A8000))
    {
      _MergedGlobals_244 = re::ecs2::introspect_RemoteEffectsComponentExtraData(0, v32, v33, v34, v35, v36);
      __cxa_guard_release(&qword_1EE1A8000);
    }

    re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(&v62, &v39, _MergedGlobals_244);
    if (v65 != v66)
    {
      re::snapshot::BufferDecoder::error(&v62, "failed to consume input: %zu vs %zu", v65 - v63, v64);
    }

    if (v68 == 1)
    {
      re::snapshot::BufferDecoder::logInput(&v62);
    }

    re::ecs2::serializeToSnapshot(a3, &v39, v37);
    v39 = &unk_1F5CF0020;
    re::DynamicArray<re::ecs2::RemoteEffectsStyle>::deinit(v42);
    if (cf)
    {
      CFRelease(cf);
    }

    v39 = &unk_1F5CCF868;
    objc_destructInstance(&v40);
  }

  return RESyncBitReaderIsOverflow() ^ 1;
}

uint64_t re::DynamicArray<re::ecs2::RemoteEffectsStyle>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = v4 << 7;
        v6 = (v3 + 88);
        do
        {
          re::AssetHandle::~AssetHandle(v6);
          v6 = (v7 + 128);
          v5 -= 128;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

void re::ecs2::SceneSystem::update(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 200);
  if (!v3)
  {
    return;
  }

  v4 = *(a3 + 216);
  v5 = 8 * v3;
  while (1)
  {
    v6 = *v4;
    v7 = *(*v4 + 104);
    if (!*(v7 + 216))
    {
      goto LABEL_12;
    }

    v8 = re::ecs2::EntityComponentCollection::get((v7 + 48), re::ecs2::ComponentImpl<re::ecs2::SceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v9 = *(v6 + 49);
    if (v9 != v8[26])
    {
      break;
    }

    v10 = v8;
    v11 = *(v6 + 48);
    v12 = v8[25];
    if (v12 == v11)
    {
      if (v9 != v11)
      {
        goto LABEL_17;
      }
    }

    else if (v9 == v12)
    {
      v8[25] = v11;
      v8[26] = v11;
      *(v6 + 49) = v11;
      re::ecs2::NetworkComponent::markDirty(*(*(v6 + 104) + 216), v8);
    }

    else
    {
      if (v9 != v11)
      {
        goto LABEL_20;
      }

      re::ecs2::Scene::setRequiresAnchoring(v6, v12);
      v13 = v10[25];
      *(v6 + 49) = v13;
      v10[26] = v13;
    }

LABEL_12:
    ++v4;
    v5 -= 8;
    if (!v5)
    {
      return;
    }
  }

  v14 = *re::ecsComponentsLogObjects(v8);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_ERROR, "[Scene] inconsistent previous requiresAnchoring", buf, 2u);
  }

  re::internal::assertLog(4, v15, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "update", 23);
  v8 = _os_crash("assertion failure: (!Unreachable code) ");
  __break(1u);
LABEL_17:
  v16 = *re::ecsComponentsLogObjects(v8);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *v20 = 0;
    _os_log_error_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_ERROR, "[Scene] inconsistent requiresAnchoring", v20, 2u);
  }

  re::internal::assertLog(4, v17, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "update", 47);
  v8 = _os_crash("assertion failure: (!Unreachable code) ");
  __break(1u);
LABEL_20:
  v18 = *re::ecsComponentsLogObjects(v8);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *v21 = 0;
    _os_log_error_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_ERROR, "[Scene] inconsistent requiresAnchoring", v21, 2u);
  }

  re::internal::assertLog(4, v19, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "update", 42);
  _os_crash("assertion failure: (!Unreachable code) ");
  __break(1u);
}

void *re::ecs2::allocInfo_SceneSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_245, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_245))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A8010, "SceneSystem");
    __cxa_guard_release(&_MergedGlobals_245);
  }

  return &unk_1EE1A8010;
}

void re::ecs2::initInfo_SceneSystem(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0x1F69BE8A7490B76;
  v8[1] = "SceneSystem";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0xE000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_SceneSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::SceneSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::SceneSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::SceneSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::SceneSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::SceneSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::SceneSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

void *re::internal::defaultConstruct<re::ecs2::SceneSystem>(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  a3[12] = 0u;
  a3[13] = 0u;
  a3[10] = 0u;
  a3[11] = 0u;
  a3[8] = 0u;
  a3[9] = 0u;
  a3[6] = 0u;
  a3[7] = 0u;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  result = re::ecs2::System::System(a3, 1);
  *result = &unk_1F5CF00A8;
  return result;
}

void *re::internal::defaultConstructV2<re::ecs2::SceneSystem>(_OWORD *a1)
{
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  result = re::ecs2::System::System(a1, 1);
  *result = &unk_1F5CF00A8;
  return result;
}

void re::ecs2::SceneSystem::~SceneSystem(re::ecs2::SceneSystem *this)
{
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

void *re::ecs2::allocInfo_ClientWorldOriginOverrideComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_246, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_246))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A80B8, "ClientWorldOriginOverrideComponent");
    __cxa_guard_release(&_MergedGlobals_246);
  }

  return &unk_1EE1A80B8;
}

void re::ecs2::initInfo_ClientWorldOriginOverrideComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v16[0] = 0xD300BA41B62D6B48;
  v16[1] = "ClientWorldOriginOverrideComponent";
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  *(this + 2) = v17;
  if ((atomic_load_explicit(&qword_1EE1A80B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A80B0))
  {
    v7 = re::introspectionAllocator();
    v13 = re::ecs2::introspect_Component(1, v8, v9, v10, v11, v12);
    v14 = (*(*v7 + 32))(v7, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "Component";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    *(v14 + 40) = 3;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1A80A8 = v14;
    __cxa_guard_release(&qword_1EE1A80B0);
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1A80A8;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::ClientWorldOriginOverrideComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::ClientWorldOriginOverrideComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::ClientWorldOriginOverrideComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::ClientWorldOriginOverrideComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs234ClientWorldOriginOverrideComponentELNS_17RealityKitReleaseE15EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v15 = v17;
}

void re::internal::defaultConstruct<re::ecs2::ClientWorldOriginOverrideComponent>(int a1, int a2, ArcSharedObject *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CE8188;
}

void re::internal::defaultConstructV2<re::ecs2::ClientWorldOriginOverrideComponent>(ArcSharedObject *a1)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CE8188;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs234ClientWorldOriginOverrideComponentELNS_17RealityKitReleaseE15EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 15;
  *(a2 + 8) = 0;
  return result;
}

uint64_t (***re::ecs2::ComponentHelper::addDefaultSystems(uint64_t (***result)(void), uint64_t a2))(void)
{
  v8[5] = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    v4 = (*result)[4](result);
    v5 = re::ServiceLocator::serviceOrNull<re::RenderManager>(v4);
    if (v5)
    {
      v6 = *(v5 + 26) != 0;
    }

    else
    {
      v6 = 0;
    }

    v7 = re::globalAllocators(v5)[2];
    v8[2] = a2;
    v8[3] = v7;
    v8[0] = &unk_1F5CF0138;
    v8[1] = v3;
    v8[4] = v8;
    return re::FunctionBase<24ul,void ()(re::TypeID const&)>::destroyCallable(v8);
  }

  return result;
}

uint64_t anonymous namespace::addDefaultSystemsUsingLambda(uint64_t a1, int a2)
{
  v399 = *MEMORY[0x1E69E9840];
  v4 = &unk_1EE187000;
  {
    v4 = &unk_1EE187000;
    if (v49)
    {
      re::introspect<re::ecs2::NetworkReceiveSystem>(BOOL)::info = re::ecs2::introspect_NetworkReceiveSystem(0, v50, v51, v52, v53, v54);
      v4 = &unk_1EE187000;
    }
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), v4[105] + 32);
  v5 = &unk_1EE187000;
  {
    v5 = &unk_1EE187000;
    if (v55)
    {
      re::introspect<re::ecs2::SceneSystem>(BOOL)::info = re::ecs2::introspect_SceneSystem(0, v56, v57, v58, v59, v60);
      v5 = &unk_1EE187000;
    }
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), v5[163] + 32);
  v6 = &unk_1EE187000;
  {
    v6 = &unk_1EE187000;
    if (v61)
    {
      re::introspect<re::ecs2::TimebaseSystem>(BOOL)::info = re::ecs2::introspect_TimebaseSystem(0, v62, v63, v64, v65, v66);
      v6 = &unk_1EE187000;
    }
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), v6[152] + 32);
  v7 = &unk_1EE187000;
  {
    v7 = &unk_1EE187000;
    if (v67)
    {
      re::introspect<re::ecs2::DeferredActivationSystem>(BOOL)::info = re::ecs2::introspect_DeferredActivationSystem(0, v68, v69, v70, v71, v72);
      v7 = &unk_1EE187000;
    }
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), v7[76] + 32);
  v8 = &unk_1EE187000;
  {
    v8 = &unk_1EE187000;
    if (v73)
    {
      re::introspect<re::ecs2::LoadTraceSystem>(BOOL)::info = re::ecs2::introspect_LoadTraceSystem(0, v74, v75, v76, v77, v78);
      v8 = &unk_1EE187000;
    }
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), v8[148] + 32);
  v9 = &unk_1EE187000;
  {
    v9 = &unk_1EE187000;
    if (v79)
    {
      re::introspect<re::ecs2::NetworkAssetComponentSystem>(BOOL)::info = re::ecs2::introspect_NetworkAssetComponentSystem(0, v80, v81, v82, v83, v84);
      v9 = &unk_1EE187000;
    }
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), v9[65] + 32);
  v10 = &unk_1EE187000;
  {
    v10 = &unk_1EE187000;
    if (v85)
    {
      re::introspect<re::ecs2::AssetMutateTrackingSystem>(BOOL)::info = re::ecs2::introspect_AssetMutateTrackingSystem(0, v86, v87, v88, v89, v90);
      v10 = &unk_1EE187000;
    }
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), v10[72] + 32);
  v11 = &unk_1EE187000;
  {
    v11 = &unk_1EE187000;
    if (v91)
    {
      re::introspect<re::ecs2::CameraMovementSystem>(BOOL)::info = re::ecs2::introspect_CameraMovementSystem(0, v92, v93, v94, v95, v96);
      v11 = &unk_1EE187000;
    }
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), v11[108] + 32);
  v12 = &unk_1EE187000;
  {
    v12 = &unk_1EE187000;
    if (v97)
    {
      re::introspect<re::ecs2::PrimitiveBoxSystem>(BOOL)::info = re::ecs2::introspect_PrimitiveBoxSystem(0, v98, v99, v100, v101, v102);
      v12 = &unk_1EE187000;
    }
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), v12[122] + 32);
  v13 = &unk_1EE187000;
  {
    v13 = &unk_1EE187000;
    if (v103)
    {
      re::introspect<re::ecs2::PrimitiveBoxWithRoundedCornersSystem>(BOOL)::info = re::ecs2::introspect_PrimitiveBoxWithRoundedCornersSystem(0, v104, v105, v106, v107, v108);
      v13 = &unk_1EE187000;
    }
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), v13[58] + 32);
  v14 = &unk_1EE187000;
  {
    v14 = &unk_1EE187000;
    if (v109)
    {
      re::introspect<re::ecs2::PrimitiveCapsuleSystem>(BOOL)::info = re::ecs2::introspect_PrimitiveCapsuleSystem(0, v110, v111, v112, v113, v114);
      v14 = &unk_1EE187000;
    }
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), v14[91] + 32);
  v15 = &unk_1EE187000;
  {
    v15 = &unk_1EE187000;
    if (v115)
    {
      re::introspect<re::ecs2::PrimitiveConeSystem>(BOOL)::info = re::ecs2::introspect_PrimitiveConeSystem(0, v116, v117, v118, v119, v120);
      v15 = &unk_1EE187000;
    }
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), v15[113] + 32);
  v16 = &unk_1EE187000;
  {
    v16 = &unk_1EE187000;
    if (v121)
    {
      re::introspect<re::ecs2::PrimitiveCylinderSystem>(BOOL)::info = re::ecs2::introspect_PrimitiveCylinderSystem(0, v122, v123, v124, v125, v126);
      v16 = &unk_1EE187000;
    }
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), v16[82] + 32);
  v17 = &unk_1EE187000;
  {
    v17 = &unk_1EE187000;
    if (v127)
    {
      re::introspect<re::ecs2::PrimitivePlaneSystem>(BOOL)::info = re::ecs2::introspect_PrimitivePlaneSystem(0, v128, v129, v130, v131, v132);
      v17 = &unk_1EE187000;
    }
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), v17[104] + 32);
  v18 = &unk_1EE187000;
  {
    v18 = &unk_1EE187000;
    if (v133)
    {
      re::introspect<re::ecs2::PrimitivePyramidSystem>(BOOL)::info = re::ecs2::introspect_PrimitivePyramidSystem(0, v134, v135, v136, v137, v138);
      v18 = &unk_1EE187000;
    }
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), v18[90] + 32);
  v19 = &unk_1EE187000;
  {
    v19 = &unk_1EE187000;
    if (v139)
    {
      re::introspect<re::ecs2::PrimitiveSphereSystem>(BOOL)::info = re::ecs2::introspect_PrimitiveSphereSystem(0, v140, v141, v142, v143, v144);
      v19 = &unk_1EE187000;
    }
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), v19[95] + 32);
  v20 = &unk_1EE187000;
  {
    v20 = &unk_1EE187000;
    if (v145)
    {
      re::introspect<re::ecs2::PrimitiveTetrahedronSystem>(BOOL)::info = re::ecs2::introspect_PrimitiveTetrahedronSystem(0, v146, v147, v148, v149, v150);
      v20 = &unk_1EE187000;
    }
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), v20[68] + 32);
  v21 = &unk_1EE187000;
  {
    v21 = &unk_1EE187000;
    if (v151)
    {
      re::introspect<re::ecs2::PrimitiveTubeSystem>(BOOL)::info = re::ecs2::introspect_PrimitiveTubeSystem(0, v152, v153, v154, v155, v156);
      v21 = &unk_1EE187000;
    }
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), v21[112] + 32);
  v22 = &unk_1EE187000;
  {
    v22 = &unk_1EE187000;
    if (v157)
    {
      re::introspect<re::ecs2::MXISystem>(BOOL)::info = re::ecs2::introspect_MXISystem(0, v158, v159, v160, v161, v162);
      v22 = &unk_1EE187000;
    }
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), v22[53] + 32);
  v23 = &unk_1EE187000;
  {
    v23 = &unk_1EE187000;
    if (v163)
    {
      re::introspect<re::ecs2::Static3DTextSystem>(BOOL)::info = re::ecs2::introspect_Static3DTextSystem(0, v164, v165, v166, v167, v168);
      v23 = &unk_1EE187000;
    }
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), v23[116] + 32);
  v24 = &unk_1EE187000;
  {
    v24 = &unk_1EE187000;
    if (v169)
    {
      re::introspect<re::ecs2::MeshSceneSystem>(BOOL)::info = re::ecs2::introspect_MeshSceneSystem(0, v170, v171, v172, v173, v174);
      v24 = &unk_1EE187000;
    }
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), v24[147] + 32);
  v25 = &unk_1EE187000;
  {
    v25 = &unk_1EE187000;
    if (v175)
    {
      re::introspect<re::ecs2::StateMachineSystem>(BOOL)::info = re::ecs2::introspect_StateMachineSystem(0, v176, v177, v178, v179, v180);
      v25 = &unk_1EE187000;
    }
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), v25[117] + 32);
  v26 = &unk_1EE187000;
  {
    v26 = &unk_1EE187000;
    if (v181)
    {
      re::introspect<re::ecs2::SkeletalPosePreparationSystem>(BOOL)::info = re::ecs2::introspect_SkeletalPosePreparationSystem(0, v182, v183, v184, v185, v186);
      v26 = &unk_1EE187000;
    }
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), v26[64] + 32);
  v27 = &unk_1EE187000;
  {
    v27 = &unk_1EE187000;
    if (v187)
    {
      re::introspect<re::ecs2::AnimationUpdateSystem>(BOOL)::info = re::ecs2::introspect_AnimationUpdateSystem(0, v188, v189, v190, v191, v192);
      v27 = &unk_1EE187000;
    }
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), v27[99] + 32);
  v28 = &unk_1EE187000;
  {
    v28 = &unk_1EE187000;
    if (v193)
    {
      re::introspect<re::ecs2::AnimationSystem>(BOOL)::info = re::ecs2::introspect_AnimationSystem(0, v194, v195, v196, v197, v198);
      v28 = &unk_1EE187000;
    }
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), v28[150] + 32);
  v29 = &unk_1EE187000;
  {
    v29 = &unk_1EE187000;
    if (v199)
    {
      re::introspect<re::ecs2::TextSystem>(BOOL)::info = re::ecs2::introspect_TextSystem(0, v200, v201, v202, v203, v204);
      v29 = &unk_1EE187000;
    }
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), v29[165] + 32);
  v30 = &unk_1EE187000;
  {
    v30 = &unk_1EE187000;
    if (v205)
    {
      re::introspect<re::ecs2::RemoteEffectsSystem>(BOOL)::info = re::ecs2::introspect_RemoteEffectsSystem(0, v206, v207, v208, v209, v210);
      v30 = &unk_1EE187000;
    }
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), v30[111] + 32);
  v31 = &unk_1EE187000;
  {
    v31 = &unk_1EE187000;
    if (v211)
    {
      re::introspect<re::ecs2::PhysicsSystem>(BOOL)::info = re::ecs2::introspect_PhysicsSystem(0, v212, v213, v214, v215, v216);
      v31 = &unk_1EE187000;
    }
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), v31[158] + 32);
  v32 = &unk_1EE187000;
  {
    v32 = &unk_1EE187000;
    if (v217)
    {
      re::introspect<re::ecs2::PhysicsDebugSystem>(BOOL)::info = re::ecs2::introspect_PhysicsDebugSystem(0, v218, v219, v220, v221, v222);
      v32 = &unk_1EE187000;
    }
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), v32[123] + 32);
  v33 = &unk_1EE187000;
  {
    v33 = &unk_1EE187000;
    if (v223)
    {
      re::introspect<re::ecs2::TransformSystem>(BOOL)::info = re::ecs2::introspect_TransformSystem(0, v224, v225, v226, v227, v228);
      v33 = &unk_1EE187000;
    }
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), v33[145] + 32);
  v34 = &unk_1EE187000;
  {
    v34 = &unk_1EE187000;
    if (v229)
    {
      re::introspect<re::ecs2::RayCastSystem>(BOOL)::info = re::ecs2::introspect_RayCastSystem(0, v230, v231, v232, v233, v234);
      v34 = &unk_1EE187000;
    }
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), v34[156] + 32);
  v35 = &unk_1EE187000;
  {
    v35 = &unk_1EE187000;
    if (v235)
    {
      re::introspect<re::ecs2::MaterialOverrideSystem>(BOOL)::info = re::ecs2::introspect_MaterialOverrideSystem(0, v236, v237, v238, v239, v240);
      v35 = &unk_1EE187000;
    }
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), v35[92] + 32);
  v36 = &unk_1EE187000;
  {
    v36 = &unk_1EE187000;
    if (v241)
    {
      re::introspect<re::ecs2::MaterialParameterBlockArraySystem>(BOOL)::info = re::ecs2::introspect_MaterialParameterBlockArraySystem(0, v242, v243, v244, v245, v246);
      v36 = &unk_1EE187000;
    }
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), v36[60] + 32);
  v37 = &unk_1EE187000;
  {
    v37 = &unk_1EE187000;
    if (v247)
    {
      re::introspect<re::ecs2::MaterialParametersSystem>(BOOL)::info = re::ecs2::introspect_MaterialParametersSystem(0, v248, v249, v250, v251, v252);
      v37 = &unk_1EE187000;
    }
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), v37[75] + 32);
  v38 = &unk_1EE187000;
  {
    v38 = &unk_1EE187000;
    if (v253)
    {
      re::introspect<re::ecs2::IKParametersSystem>(BOOL)::info = re::ecs2::introspect_IKParametersSystem(0, v254, v255, v256, v257, v258);
      v38 = &unk_1EE187000;
    }
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), v38[124] + 32);
  v39 = &unk_1EE187000;
  {
    v39 = &unk_1EE187000;
    if (v259)
    {
      re::introspect<re::ecs2::RigSystem>(BOOL)::info = re::ecs2::introspect_RigSystem(0, v260, v261, v262, v263, v264);
      v39 = &unk_1EE187000;
    }
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), v39[52] + 32);
  v40 = &unk_1EE187000;
  {
    v40 = &unk_1EE187000;
    if (v265)
    {
      re::introspect<re::ecs2::SkeletalPoseSystem>(BOOL)::info = re::ecs2::introspect_SkeletalPoseSystem(0, v266, v267, v268, v269, v270);
      v40 = &unk_1EE187000;
    }
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), v40[119] + 32);
  v41 = &unk_1EE187000;
  {
    v41 = &unk_1EE187000;
    if (v271)
    {
      re::introspect<re::ecs2::MeshDeformationSystem>(BOOL)::info = re::ecs2::introspect_MeshDeformationSystem(0, v272, v273, v274, v275, v276);
      v41 = &unk_1EE187000;
    }
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), v41[97] + 32);
  v42 = &unk_1EE187000;
  {
    v42 = &unk_1EE187000;
    if (v277)
    {
      re::introspect<re::ecs2::BlendShapeWeightsSystem>(BOOL)::info = re::ecs2::introspect_BlendShapeWeightsSystem(0, v278, v279, v280, v281, v282);
      v42 = &unk_1EE187000;
    }
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), v42[85] + 32);
  if ((atomic_load_explicit(&qword_1EE1A8150, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A8150))
  {
    _MergedGlobals_247 = re::ecs2::introspect_AnimationLibrarySystem(0, v283, v284, v285, v286, v287);
    __cxa_guard_release(&qword_1EE1A8150);
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), _MergedGlobals_247 + 32);
  v43 = &unk_1EE187000;
  {
    v43 = &unk_1EE187000;
    if (v288)
    {
      re::introspect<re::ecs2::GroundPlaneSystem>(BOOL)::info = re::ecs2::introspect_GroundPlaneSystem(0, v289, v290, v291, v292, v293);
      v43 = &unk_1EE187000;
    }
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), v43[131] + 32);
  v44 = &unk_1EE187000;
  {
    v44 = &unk_1EE187000;
    if (v294)
    {
      re::introspect<re::ecs2::VideoComponentSystem>(BOOL)::info = re::ecs2::introspect_VideoComponentSystem(0, v295, v296, v297, v298, v299);
      v44 = &unk_1EE187000;
    }
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), v44[101] + 32);
  v45 = &unk_1EE187000;
  {
    v45 = &unk_1EE187000;
    if (v300)
    {
      re::introspect<re::ecs2::ImagePresentationSystem>(BOOL)::info = re::ecs2::introspect_ImagePresentationSystem(0, v301, v302, v303, v304, v305);
      v45 = &unk_1EE187000;
    }
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), v45[83] + 32);
  v46 = &unk_1EE187000;
  {
    v46 = &unk_1EE187000;
    if (v306)
    {
      re::introspect<re::ecs2::SpatialMediaSystem>(BOOL)::info = re::ecs2::introspect_SpatialMediaSystem(0, v307, v308, v309, v310, v311);
      v46 = &unk_1EE187000;
    }
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), v46[118] + 32);
  v47 = &unk_1EE187000;
  {
    v47 = &unk_1EE187000;
    if (v312)
    {
      re::introspect<re::ecs2::UISystem>(BOOL)::info = re::ecs2::introspect_UISystem(0, v313, v314, v315, v316, v317);
      v47 = &unk_1EE187000;
    }
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), v47[55] + 32);
  v397 = *(a1 + 24);
  v398 = 0;
  re::FunctionBase<24ul,void ()(re::TypeID const&)>::operator=<24ul>(v396, a1);
  re::ecs2::PerformDeformationsSystem::addDeformerSubsystemsUsingLambda(v396);
  re::FunctionBase<24ul,void ()(re::TypeID const&)>::destroyCallable(v396);
  if (a2)
  {
    v394 = *(a1 + 24);
    v395 = 0;
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::operator=<24ul>(v393, a1);
    re::ecs2::RenderingSystem::addRenderingSubsystemsUsingLambda(v393, 0);
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::destroyCallable(v393);
  }

  {
    re::introspect<re::ecs2::AudioUpdateSystem>(BOOL)::info = re::ecs2::introspect_AudioUpdateSystem(0, v318, v319, v320, v321, v322);
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), re::introspect<re::ecs2::AudioUpdateSystem>(BOOL)::info + 32);
  {
    re::introspect<re::ecs2::AudioSessionSystem>(BOOL)::info = re::ecs2::introspect_AudioSessionSystem(0, v323, v324, v325, v326, v327);
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), re::introspect<re::ecs2::AudioSessionSystem>(BOOL)::info + 32);
  {
    re::introspect<re::ecs2::VideoAudioControlSystem>(BOOL)::info = re::ecs2::introspect_VideoAudioControlSystem(0, v328, v329, v330, v331, v332);
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), re::introspect<re::ecs2::VideoAudioControlSystem>(BOOL)::info + 32);
  {
    re::introspect<re::ecs2::AudioPlayerSystem>(BOOL)::info = re::ecs2::introspect_AudioPlayerSystem(0, v333, v334, v335, v336, v337);
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), re::introspect<re::ecs2::AudioPlayerSystem>(BOOL)::info + 32);
  {
    re::introspect<re::ecs2::AudioAnimationSystem>(BOOL)::info = re::ecs2::introspect_AudioAnimationSystem(0, v338, v339, v340, v341, v342);
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), re::introspect<re::ecs2::AudioAnimationSystem>(BOOL)::info + 32);
  {
    re::introspect<re::ecs2::VideoAudioTetherSystem>(BOOL)::info = re::ecs2::introspect_VideoAudioTetherSystem(0, v343, v344, v345, v346, v347);
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), re::introspect<re::ecs2::VideoAudioTetherSystem>(BOOL)::info + 32);
  {
    re::introspect<re::ecs2::AudioMixerSystem>(BOOL)::info = re::ecs2::introspect_AudioMixerSystem(0, v348, v349, v350, v351, v352);
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), re::introspect<re::ecs2::AudioMixerSystem>(BOOL)::info + 32);
  {
    re::introspect<re::ecs2::ReverbSystem>(BOOL)::info = re::ecs2::introspect_ReverbSystem(0, v353, v354, v355, v356, v357);
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), re::introspect<re::ecs2::ReverbSystem>(BOOL)::info + 32);
  {
    re::introspect<re::ecs2::AcousticMeshSystem>(BOOL)::info = re::ecs2::introspect_AcousticMeshSystem(0, v358, v359, v360, v361, v362);
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), re::introspect<re::ecs2::AcousticMeshSystem>(BOOL)::info + 32);
  {
    re::introspect<re::ecs2::AudioGroupPlaybackSystem>(BOOL)::info = re::ecs2::introspect_AudioGroupPlaybackSystem(0, v363, v364, v365, v366, v367);
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), re::introspect<re::ecs2::AudioGroupPlaybackSystem>(BOOL)::info + 32);
  {
    re::introspect<re::ecs2::SpatialSceneClassificationSystem>(BOOL)::info = re::ecs2::introspect_SpatialSceneClassificationSystem(0, v368, v369, v370, v371, v372);
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), re::introspect<re::ecs2::SpatialSceneClassificationSystem>(BOOL)::info + 32);
  {
    re::introspect<re::ecs2::ListenerSystem>(BOOL)::info = re::ecs2::introspect_ListenerSystem(0, v373, v374, v375, v376, v377);
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), re::introspect<re::ecs2::ListenerSystem>(BOOL)::info + 32);
  {
    re::introspect<re::ecs2::AudioDebugSystem>(BOOL)::info = re::ecs2::introspect_AudioDebugSystem(0, v378, v379, v380, v381, v382);
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), re::introspect<re::ecs2::AudioDebugSystem>(BOOL)::info + 32);
  {
    re::introspect<re::ecs2::NetworkSendSystem>(BOOL)::info = re::ecs2::introspect_NetworkSendSystem(0, v383, v384, v385, v386, v387);
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), re::introspect<re::ecs2::NetworkSendSystem>(BOOL)::info + 32);
  if ((atomic_load_explicit(&qword_1EE1A8160, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A8160))
  {
    qword_1EE1A8158 = re::ecs2::introspect_AdaptiveResolutionSystem(0, v388, v389, v390, v391, v392);
    __cxa_guard_release(&qword_1EE1A8160);
  }

  return (*(**(a1 + 32) + 16))(*(a1 + 32), qword_1EE1A8158 + 32);
}

re *re::ecs2::ComponentHelper::deprecatedAddDefaultSystems(re *this, re::ecs2::Scene *a2)
{
  v4[5] = *MEMORY[0x1E69E9840];
  if (this)
  {
    v2 = this;
    v3 = re::globalAllocators(this)[2];
    v4[0] = &unk_1F5CF01A0;
    v4[1] = v2;
    v4[3] = v3;
    v4[4] = v4;
    return re::FunctionBase<24ul,void ()(re::TypeID const&)>::destroyCallable(v4);
  }

  return this;
}

re *re::ecs2::ComponentHelper::addRealityRendererDefaultSystems(re *result, uint64_t a2, unsigned __int8 *a3)
{
  v354 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v5 = result;
    v6 = re::globalAllocators(result)[2];
    v345[2] = a2;
    v346 = v6;
    v345[0] = &unk_1F5CF01F8;
    v345[1] = v5;
    v347 = v345;
    v7 = *a3;
    if (v7 == 1)
    {
      {
        re::introspect<re::ecs2::ProtectionOptionsSystem>(BOOL)::info = re::ecs2::introspect_ProtectionOptionsSystem(0, v15, v16, v17, v18, v19);
      }

      (*(*v347 + 16))(v347, re::introspect<re::ecs2::ProtectionOptionsSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::SceneSystem>(BOOL)::info = re::ecs2::introspect_SceneSystem(0, v20, v21, v22, v23, v24);
      }

      (*(*v347 + 16))(v347, re::introspect<re::ecs2::SceneSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::MXISystem>(BOOL)::info = re::ecs2::introspect_MXISystem(0, v25, v26, v27, v28, v29);
      }

      (*(*v347 + 16))(v347, re::introspect<re::ecs2::MXISystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::MeshSceneSystem>(BOOL)::info = re::ecs2::introspect_MeshSceneSystem(0, v30, v31, v32, v33, v34);
      }

      (*(*v347 + 16))(v347, re::introspect<re::ecs2::MeshSceneSystem>(BOOL)::info + 32);
      v9 = &unk_1EE187000;
      {
        re::introspect<re::ecs2::MaterialOverrideSystem>(BOOL)::info = re::ecs2::introspect_MaterialOverrideSystem(0, v35, v36, v37, v38, v39);
      }

      (*(*v347 + 16))(v347, re::introspect<re::ecs2::MaterialOverrideSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::MaterialParameterBlockArraySystem>(BOOL)::info = re::ecs2::introspect_MaterialParameterBlockArraySystem(0, v40, v41, v42, v43, v44);
      }

      (*(*v347 + 16))(v347, re::introspect<re::ecs2::MaterialParameterBlockArraySystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::MaterialParametersSystem>(BOOL)::info = re::ecs2::introspect_MaterialParametersSystem(0, v45, v46, v47, v48, v49);
      }

      (*(*v347 + 16))(v347, re::introspect<re::ecs2::MaterialParametersSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::ImagePresentationSystem>(BOOL)::info = re::ecs2::introspect_ImagePresentationSystem(0, v50, v51, v52, v53, v54);
      }

      (*(*v347 + 16))(v347, re::introspect<re::ecs2::ImagePresentationSystem>(BOOL)::info + 32);
      v352 = v346;
      v353 = 0;
      re::FunctionBase<24ul,void ()(re::TypeID const&)>::operator=<24ul>(v351, v345);
      re::ecs2::RenderingSystem::addRenderingSubsystemsUsingLambda(v351, *a3);
      re::FunctionBase<24ul,void ()(re::TypeID const&)>::destroyCallable(v351);
    }

    else
    {
      {
        re::introspect<re::ecs2::ProtectionOptionsSystem>(BOOL)::info = re::ecs2::introspect_ProtectionOptionsSystem(0, v55, v56, v57, v58, v59);
      }

      (*(*v347 + 16))(v347, re::introspect<re::ecs2::ProtectionOptionsSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::SceneSystem>(BOOL)::info = re::ecs2::introspect_SceneSystem(0, v60, v61, v62, v63, v64);
      }

      (*(*v347 + 16))(v347, re::introspect<re::ecs2::SceneSystem>(BOOL)::info + 32);
      if ((*(a3 + 2) & 0x104) != 0)
      {
        {
          re::introspect<re::ecs2::TimebaseSystem>(BOOL)::info = re::ecs2::introspect_TimebaseSystem(0, v340, v341, v342, v343, v344);
        }

        (*(*v347 + 16))(v347, re::introspect<re::ecs2::TimebaseSystem>(BOOL)::info + 32);
      }

      {
        re::introspect<re::ecs2::DeferredActivationSystem>(BOOL)::info = re::ecs2::introspect_DeferredActivationSystem(0, v65, v66, v67, v68, v69);
      }

      (*(*v347 + 16))(v347, re::introspect<re::ecs2::DeferredActivationSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::LoadTraceSystem>(BOOL)::info = re::ecs2::introspect_LoadTraceSystem(0, v70, v71, v72, v73, v74);
      }

      (*(*v347 + 16))(v347, re::introspect<re::ecs2::LoadTraceSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::NetworkAssetComponentSystem>(BOOL)::info = re::ecs2::introspect_NetworkAssetComponentSystem(0, v75, v76, v77, v78, v79);
      }

      (*(*v347 + 16))(v347, re::introspect<re::ecs2::NetworkAssetComponentSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::AssetMutateTrackingSystem>(BOOL)::info = re::ecs2::introspect_AssetMutateTrackingSystem(0, v80, v81, v82, v83, v84);
      }

      (*(*v347 + 16))(v347, re::introspect<re::ecs2::AssetMutateTrackingSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::CameraMovementSystem>(BOOL)::info = re::ecs2::introspect_CameraMovementSystem(0, v85, v86, v87, v88, v89);
      }

      (*(*v347 + 16))(v347, re::introspect<re::ecs2::CameraMovementSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::PrimitiveBoxSystem>(BOOL)::info = re::ecs2::introspect_PrimitiveBoxSystem(0, v90, v91, v92, v93, v94);
      }

      (*(*v347 + 16))(v347, re::introspect<re::ecs2::PrimitiveBoxSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::PrimitiveBoxWithRoundedCornersSystem>(BOOL)::info = re::ecs2::introspect_PrimitiveBoxWithRoundedCornersSystem(0, v95, v96, v97, v98, v99);
      }

      (*(*v347 + 16))(v347, re::introspect<re::ecs2::PrimitiveBoxWithRoundedCornersSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::PrimitiveCapsuleSystem>(BOOL)::info = re::ecs2::introspect_PrimitiveCapsuleSystem(0, v100, v101, v102, v103, v104);
      }

      (*(*v347 + 16))(v347, re::introspect<re::ecs2::PrimitiveCapsuleSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::PrimitiveConeSystem>(BOOL)::info = re::ecs2::introspect_PrimitiveConeSystem(0, v105, v106, v107, v108, v109);
      }

      (*(*v347 + 16))(v347, re::introspect<re::ecs2::PrimitiveConeSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::PrimitiveCylinderSystem>(BOOL)::info = re::ecs2::introspect_PrimitiveCylinderSystem(0, v110, v111, v112, v113, v114);
      }

      (*(*v347 + 16))(v347, re::introspect<re::ecs2::PrimitiveCylinderSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::PrimitivePlaneSystem>(BOOL)::info = re::ecs2::introspect_PrimitivePlaneSystem(0, v115, v116, v117, v118, v119);
      }

      (*(*v347 + 16))(v347, re::introspect<re::ecs2::PrimitivePlaneSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::PrimitivePyramidSystem>(BOOL)::info = re::ecs2::introspect_PrimitivePyramidSystem(0, v120, v121, v122, v123, v124);
      }

      (*(*v347 + 16))(v347, re::introspect<re::ecs2::PrimitivePyramidSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::PrimitiveSphereSystem>(BOOL)::info = re::ecs2::introspect_PrimitiveSphereSystem(0, v125, v126, v127, v128, v129);
      }

      (*(*v347 + 16))(v347, re::introspect<re::ecs2::PrimitiveSphereSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::PrimitiveTetrahedronSystem>(BOOL)::info = re::ecs2::introspect_PrimitiveTetrahedronSystem(0, v130, v131, v132, v133, v134);
      }

      (*(*v347 + 16))(v347, re::introspect<re::ecs2::PrimitiveTetrahedronSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::PrimitiveTubeSystem>(BOOL)::info = re::ecs2::introspect_PrimitiveTubeSystem(0, v135, v136, v137, v138, v139);
      }

      (*(*v347 + 16))(v347, re::introspect<re::ecs2::PrimitiveTubeSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::MXISystem>(BOOL)::info = re::ecs2::introspect_MXISystem(0, v140, v141, v142, v143, v144);
      }

      (*(*v347 + 16))(v347, re::introspect<re::ecs2::MXISystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::Static3DTextSystem>(BOOL)::info = re::ecs2::introspect_Static3DTextSystem(0, v145, v146, v147, v148, v149);
      }

      (*(*v347 + 16))(v347, re::introspect<re::ecs2::Static3DTextSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::MeshSceneSystem>(BOOL)::info = re::ecs2::introspect_MeshSceneSystem(0, v150, v151, v152, v153, v154);
      }

      (*(*v347 + 16))(v347, re::introspect<re::ecs2::MeshSceneSystem>(BOOL)::info + 32);
      v9 = &unk_1EE187000;
      {
        re::introspect<re::ecs2::StateMachineSystem>(BOOL)::info = re::ecs2::introspect_StateMachineSystem(0, v155, v156, v157, v158, v159);
      }

      (*(*v347 + 16))(v347, re::introspect<re::ecs2::StateMachineSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::SkeletalPosePreparationSystem>(BOOL)::info = re::ecs2::introspect_SkeletalPosePreparationSystem(0, v160, v161, v162, v163, v164);
      }

      (*(*v347 + 16))(v347, re::introspect<re::ecs2::SkeletalPosePreparationSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::AnimationUpdateSystem>(BOOL)::info = re::ecs2::introspect_AnimationUpdateSystem(0, v165, v166, v167, v168, v169);
      }

      (*(*v347 + 16))(v347, re::introspect<re::ecs2::AnimationUpdateSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::AnimationSystem>(BOOL)::info = re::ecs2::introspect_AnimationSystem(0, v170, v171, v172, v173, v174);
      }

      (*(*v347 + 16))(v347, re::introspect<re::ecs2::AnimationSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::TextSystem>(BOOL)::info = re::ecs2::introspect_TextSystem(0, v175, v176, v177, v178, v179);
      }

      (*(*v347 + 16))(v347, re::introspect<re::ecs2::TextSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::RemoteEffectsSystem>(BOOL)::info = re::ecs2::introspect_RemoteEffectsSystem(0, v180, v181, v182, v183, v184);
      }

      (*(*v347 + 16))(v347, re::introspect<re::ecs2::RemoteEffectsSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::PhysicsSystem>(BOOL)::info = re::ecs2::introspect_PhysicsSystem(0, v185, v186, v187, v188, v189);
      }

      (*(*v347 + 16))(v347, re::introspect<re::ecs2::PhysicsSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::PhysicsDebugSystem>(BOOL)::info = re::ecs2::introspect_PhysicsDebugSystem(0, v190, v191, v192, v193, v194);
      }

      (*(*v347 + 16))(v347, re::introspect<re::ecs2::PhysicsDebugSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::TransformSystem>(BOOL)::info = re::ecs2::introspect_TransformSystem(0, v195, v196, v197, v198, v199);
      }

      (*(*v347 + 16))(v347, re::introspect<re::ecs2::TransformSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::RayCastSystem>(BOOL)::info = re::ecs2::introspect_RayCastSystem(0, v200, v201, v202, v203, v204);
      }

      (*(*v347 + 16))(v347, re::introspect<re::ecs2::RayCastSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::MaterialOverrideSystem>(BOOL)::info = re::ecs2::introspect_MaterialOverrideSystem(0, v205, v206, v207, v208, v209);
      }

      (*(*v347 + 16))(v347, re::introspect<re::ecs2::MaterialOverrideSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::MaterialParameterBlockArraySystem>(BOOL)::info = re::ecs2::introspect_MaterialParameterBlockArraySystem(0, v210, v211, v212, v213, v214);
      }

      (*(*v347 + 16))(v347, re::introspect<re::ecs2::MaterialParameterBlockArraySystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::MaterialParametersSystem>(BOOL)::info = re::ecs2::introspect_MaterialParametersSystem(0, v215, v216, v217, v218, v219);
      }

      (*(*v347 + 16))(v347, re::introspect<re::ecs2::MaterialParametersSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::IKParametersSystem>(BOOL)::info = re::ecs2::introspect_IKParametersSystem(0, v220, v221, v222, v223, v224);
      }

      (*(*v347 + 16))(v347, re::introspect<re::ecs2::IKParametersSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::RigSystem>(BOOL)::info = re::ecs2::introspect_RigSystem(0, v225, v226, v227, v228, v229);
      }

      (*(*v347 + 16))(v347, re::introspect<re::ecs2::RigSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::SkeletalPoseSystem>(BOOL)::info = re::ecs2::introspect_SkeletalPoseSystem(0, v230, v231, v232, v233, v234);
      }

      (*(*v347 + 16))(v347, re::introspect<re::ecs2::SkeletalPoseSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::MeshDeformationSystem>(BOOL)::info = re::ecs2::introspect_MeshDeformationSystem(0, v235, v236, v237, v238, v239);
      }

      (*(*v347 + 16))(v347, re::introspect<re::ecs2::MeshDeformationSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::BlendShapeWeightsSystem>(BOOL)::info = re::ecs2::introspect_BlendShapeWeightsSystem(0, v240, v241, v242, v243, v244);
      }

      (*(*v347 + 16))(v347, re::introspect<re::ecs2::BlendShapeWeightsSystem>(BOOL)::info + 32);
      if ((atomic_load_explicit(&qword_1EE1A8150, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A8150))
      {
        _MergedGlobals_247 = re::ecs2::introspect_AnimationLibrarySystem(0, v245, v246, v247, v248, v249);
        __cxa_guard_release(&qword_1EE1A8150);
      }

      (*(*v347 + 16))(v347, _MergedGlobals_247 + 32);
      {
        re::introspect<re::ecs2::GroundPlaneSystem>(BOOL)::info = re::ecs2::introspect_GroundPlaneSystem(0, v250, v251, v252, v253, v254);
      }

      (*(*v347 + 16))(v347, re::introspect<re::ecs2::GroundPlaneSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::VideoComponentSystem>(BOOL)::info = re::ecs2::introspect_VideoComponentSystem(0, v255, v256, v257, v258, v259);
      }

      (*(*v347 + 16))(v347, re::introspect<re::ecs2::VideoComponentSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::ImagePresentationSystem>(BOOL)::info = re::ecs2::introspect_ImagePresentationSystem(0, v260, v261, v262, v263, v264);
      }

      (*(*v347 + 16))(v347, re::introspect<re::ecs2::ImagePresentationSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::SpatialMediaSystem>(BOOL)::info = re::ecs2::introspect_SpatialMediaSystem(0, v265, v266, v267, v268, v269);
      }

      (*(*v347 + 16))(v347, re::introspect<re::ecs2::SpatialMediaSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::UISystem>(BOOL)::info = re::ecs2::introspect_UISystem(0, v270, v271, v272, v273, v274);
      }

      (*(*v347 + 16))(v347, re::introspect<re::ecs2::UISystem>(BOOL)::info + 32);
      v352 = v346;
      v353 = 0;
      re::FunctionBase<24ul,void ()(re::TypeID const&)>::operator=<24ul>(v351, v345);
      re::ecs2::PerformDeformationsSystem::addDeformerSubsystemsUsingLambda(v351);
      re::FunctionBase<24ul,void ()(re::TypeID const&)>::destroyCallable(v351);
      v349 = v346;
      v350 = 0;
      re::FunctionBase<24ul,void ()(re::TypeID const&)>::operator=<24ul>(v348, v345);
      re::ecs2::RenderingSystem::addRenderingSubsystemsUsingLambda(v348, 0);
      re::FunctionBase<24ul,void ()(re::TypeID const&)>::destroyCallable(v348);
      {
        re::introspect<re::ecs2::AudioUpdateSystem>(BOOL)::info = re::ecs2::introspect_AudioUpdateSystem(0, v275, v276, v277, v278, v279);
      }

      (*(*v347 + 16))(v347, re::introspect<re::ecs2::AudioUpdateSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::AudioSessionSystem>(BOOL)::info = re::ecs2::introspect_AudioSessionSystem(0, v280, v281, v282, v283, v284);
      }

      (*(*v347 + 16))(v347, re::introspect<re::ecs2::AudioSessionSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::VideoAudioControlSystem>(BOOL)::info = re::ecs2::introspect_VideoAudioControlSystem(0, v285, v286, v287, v288, v289);
      }

      (*(*v347 + 16))(v347, re::introspect<re::ecs2::VideoAudioControlSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::AudioPlayerSystem>(BOOL)::info = re::ecs2::introspect_AudioPlayerSystem(0, v290, v291, v292, v293, v294);
      }

      (*(*v347 + 16))(v347, re::introspect<re::ecs2::AudioPlayerSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::AudioAnimationSystem>(BOOL)::info = re::ecs2::introspect_AudioAnimationSystem(0, v295, v296, v297, v298, v299);
      }

      (*(*v347 + 16))(v347, re::introspect<re::ecs2::AudioAnimationSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::VideoAudioTetherSystem>(BOOL)::info = re::ecs2::introspect_VideoAudioTetherSystem(0, v300, v301, v302, v303, v304);
      }

      (*(*v347 + 16))(v347, re::introspect<re::ecs2::VideoAudioTetherSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::AudioMixerSystem>(BOOL)::info = re::ecs2::introspect_AudioMixerSystem(0, v305, v306, v307, v308, v309);
      }

      (*(*v347 + 16))(v347, re::introspect<re::ecs2::AudioMixerSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::ReverbSystem>(BOOL)::info = re::ecs2::introspect_ReverbSystem(0, v310, v311, v312, v313, v314);
      }

      (*(*v347 + 16))(v347, re::introspect<re::ecs2::ReverbSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::AcousticMeshSystem>(BOOL)::info = re::ecs2::introspect_AcousticMeshSystem(0, v315, v316, v317, v318, v319);
      }

      (*(*v347 + 16))(v347, re::introspect<re::ecs2::AcousticMeshSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::AudioGroupPlaybackSystem>(BOOL)::info = re::ecs2::introspect_AudioGroupPlaybackSystem(0, v320, v321, v322, v323, v324);
      }

      (*(*v347 + 16))(v347, re::introspect<re::ecs2::AudioGroupPlaybackSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::SpatialSceneClassificationSystem>(BOOL)::info = re::ecs2::introspect_SpatialSceneClassificationSystem(0, v325, v326, v327, v328, v329);
      }

      (*(*v347 + 16))(v347, re::introspect<re::ecs2::SpatialSceneClassificationSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::ListenerSystem>(BOOL)::info = re::ecs2::introspect_ListenerSystem(0, v330, v331, v332, v333, v334);
      }

      (*(*v347 + 16))(v347, re::introspect<re::ecs2::ListenerSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::AudioDebugSystem>(BOOL)::info = re::ecs2::introspect_AudioDebugSystem(0, v335, v336, v337, v338, v339);
      }

      (*(*v347 + 16))(v347, re::introspect<re::ecs2::AudioDebugSystem>(BOOL)::info + 32);
    }

    {
      {
        v9[139] = re::ecs2::introspect_FrameReuseSystem(0, v10, v11, v12, v13, v14);
      }
    }

    (*(*v347 + 16))(v347, v9[139] + 32);
    return re::FunctionBase<24ul,void ()(re::TypeID const&)>::destroyCallable(v345);
  }

  return result;
}

re::ecs2::Entity *re::ecs2::ComponentHelper::privateSceneDataEntity(re::ecs2::ComponentHelper *this, re::ecs2::Scene *a2)
{
  v2 = a2;
  v3 = this;
  v4 = *(this + 13);
  v5 = *(v4 + 344);
  if (v5)
  {
    v6 = *(v4 + 360);
    v7 = 8 * v5;
    while (1)
    {
      v8 = *v6;
      if ((*(*v6 + 36) ^ 0x4B834A2ABFA269B4uLL) <= 1)
      {
        this = *(v8 + 37);
        if (this == "com.apple.RealityKit.PrivateSceneData")
        {
          break;
        }

        this = strcmp(this, "com.apple.RealityKit.PrivateSceneData");
        if (!this)
        {
          break;
        }
      }

      ++v6;
      v7 -= 8;
      if (!v7)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    v8 = 0;
  }

  if (!v8)
  {
    if (v2)
    {
      v9 = re::ecs2::EntityFactory::instance(this);
      re::ecs2::EntityFactory::make(&v13, v9, 4uLL);
      v10 = v13;
      v12[0] = 0x4B834A2ABFA269B4;
      v12[1] = "com.apple.RealityKit.PrivateSceneData";
      re::StringID::operator=(v13 + 36, v12);
      *(v10 + 76) |= 0x400u;
      re::Collection<re::SharedPtr<re::ecs2::Entity>>::add((*(v3 + 13) + 320), &v13);
      v8 = v13;
      if (v13)
      {
      }
    }
  }

  return v8;
}

re::ecs2::Entity *makeSceneDataEntity(uint64_t a1, uint64_t a2, int a3, void *a4, uint64_t a5)
{
  v5 = a5;
  if (*a2 == 1)
  {
    v10 = *(a2 + 8);
  }

  else
  {
    v10 = 0;
  }

  v11 = *(a1 + 104);
  v12 = *(v11 + 344);
  if (v12)
  {
    v13 = *(v11 + 360);
    v14 = 8 * v12;
    while (1)
    {
      v15 = *v13;
      if (re::StringID::operator==((*v13 + 288), a4))
      {
        v16 = *(v15 + 216);
        if (!v16)
        {
          v16 = re::ecs2::EntityComponentCollection::add((v15 + 48), re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
        }

        v17 = *(v16 + 32) ? RESyncableGetOwnerPeerID() : *(v16 + 64);
        if (v17 == v10)
        {
          return *v13;
        }
      }

      ++v13;
      v14 -= 8;
      if (!v14)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    if (!a3)
    {
      return 0;
    }

LABEL_14:
    v18 = *(a1 + 56);
    if (v18)
    {
      v19 = (*(*v18 + 32))(v18);
      v18 = re::ServiceLocator::serviceOrNull<re::NetworkSystem>(v19);
      if (v18)
      {
        v18 = *(v18 + 303);
        if (v18)
        {
          v18 = RESyncNetSessionPeerID();
        }
      }
    }

    if (*a2 != 1 || *(a2 + 8) == v18)
    {
      v20 = re::ecs2::EntityFactory::instance(v18);
      re::ecs2::EntityFactory::make(&v29, v20, 4uLL);
      v21 = v29;
      v22 = a4[1];
      v28[0] = 2 * *a4;
      v28[1] = v22;
      re::StringID::operator=(v29 + 36, v28);
      *(v21 + 76) |= 0x400u;
      v25 = *(v21 + 27);
      if (!v25)
      {
        v25 = re::ecs2::EntityComponentCollection::add((v21 + 48), re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
      }

      re::ecs2::NetworkComponent::setNetworkShareMode(v25, v5, v23, v24);
      re::Collection<re::SharedPtr<re::ecs2::Entity>>::add((*(a1 + 104) + 320), &v29);
      v26 = v29;
      if (v29)
      {
      }
    }

    else
    {
      return 0;
    }
  }

  return v26;
}

uint64_t re::ecs2::ComponentHelper::findAssetHandles(uint64_t result, uint64_t a2)
{
  v10[4] = *MEMORY[0x1E69E9840];
  v2 = *(result + 72);
  if (v2)
  {
    v4 = *(result + 88);
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = (*(*v6 + 5))(v6);
      v8 = (*(*v7 + 48))(v7);
      std::__function::__value_func<void ()(re::AssetHandle *)>::__value_func[abi:nn200100](v9, a2);
      v10[0] = &unk_1F5CB9490;
      v10[1] = v9;
      v10[3] = v10;
      re::IntrospectionWalker::walk(v8, v6, v10);
      std::__function::__value_func<void ()(re::IntrospectionBase const&,void const*)>::~__value_func[abi:nn200100](v10);
      result = std::__function::__value_func<void ()(re::AssetHandle *)>::~__value_func[abi:nn200100](v9);
      v5 -= 8;
    }

    while (v5);
  }

  return result;
}

uint64_t re::ecs2::ComponentHelper::addToLoadRequest(re::ecs2::ComponentHelper *this, re::AssetLoadRequest *a2, re::ecs2::Entity *a3)
{
  v3 = a3;
  v11[4] = *MEMORY[0x1E69E9840];
  v11[0] = &unk_1F5CF0250;
  v11[1] = this;
  v11[3] = v11;
  re::ecs2::ComponentHelper::findAssetHandles(a2, v11);
  result = std::__function::__value_func<void ()(re::AssetHandle *)>::~__value_func[abi:nn200100](v11);
  if (v3)
  {
    v7 = *(a2 + 43);
    if (v7)
    {
      v8 = *(a2 + 45);
      v9 = 8 * v7;
      do
      {
        v10 = *v8++;
        result = re::ecs2::ComponentHelper::addToLoadRequest(this, v10, 1);
        v9 -= 8;
      }

      while (v9);
    }
  }

  return result;
}

void re::ecs2::ComponentHelper::getComponentsWithoutAnyExplicitRealityFileSerializationFlag(uint64_t *__return_ptr a1@<X8>, re::ecs2::ComponentHelper *this@<X0>)
{
  v3 = re::ecs2::ComponentTypeRegistry::instance(this);
  v4 = *(v3 + 24);
  a1[4] = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  *(a1 + 6) = 0;
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      v6 = re::ecs2::ComponentTypeRegistry::instance(v3);
      v3 = re::ecs2::ComponentTypeRegistry::operator[](v6, i);
      if ((*(v3 + 40) & 7 ^ ((*(v3 + 40) & 7u) - 1)) <= (*(v3 + 40) & 7u) - 1)
      {
        v7 = re::ecs2::ComponentTypeRegistry::instance(v3);
        v8 = re::ecs2::ComponentTypeRegistry::operator[](v7, i);
        re::StringID::StringID(&v9, (v8 + 24));
        v3 = re::DynamicArray<re::StringID>::add(a1, &v9);
        if (*&v9.var0)
        {
          if (*&v9.var0)
          {
          }
        }
      }
    }
  }
}

uint64_t re::ecs2::ComponentTypeRegistry::operator[](uint64_t a1, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 24);
  if (v3 <= a2)
  {
    v8 = 0;
    memset(v17, 0, sizeof(v17));
    v5 = MEMORY[0x1E69E9C10];
    v9 = 136315906;
    v10 = "operator[]";
    v11 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    v12 = 797;
    v13 = 2048;
    v14 = a2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(*(a1 + 40) + 8 * a2);
}

uint64_t re::internal::Callable<re::ecs2::ComponentHelper::addDefaultSystems(re::ecs2::ECSService *,re::DataArrayHandle<re::ecs2::SceneGroup>)::$_0,void ()(re::TypeID const&)>::operator()(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v5 = (*(*v4 + 40))(v4);
  v6 = re::ecs2::SystemRegistry::registerSystem(v5, a2);
  v7 = *(a1 + 16);
  v8 = *(*v4 + 48);

  return v8(v4, v6, 0xFFFFFFFFLL, v7);
}

uint64_t re::internal::Callable<re::ecs2::ComponentHelper::addDefaultSystems(re::ecs2::ECSService *,re::DataArrayHandle<re::ecs2::SceneGroup>)::$_0,void ()(re::TypeID const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF0138;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t re::internal::Callable<re::ecs2::ComponentHelper::addDefaultSystems(re::ecs2::ECSService *,re::DataArrayHandle<re::ecs2::SceneGroup>)::$_0,void ()(re::TypeID const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF0138;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

void *re::internal::Callable<re::ecs2::ComponentHelper::deprecatedAddDefaultSystems(re::ecs2::Scene *)::$_0,void ()(re::TypeID const&)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF01A0;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::ecs2::ComponentHelper::deprecatedAddDefaultSystems(re::ecs2::Scene *)::$_0,void ()(re::TypeID const&)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF01A0;
  a2[1] = v2;
  return a2;
}

uint64_t re::internal::Callable<re::ecs2::ComponentHelper::addRealityRendererDefaultSystems(re::ecs2::ECSService *,re::DataArrayHandle<re::ecs2::SceneGroup>,re::EngineConfiguration const&)::$_0,void ()(re::TypeID const&)>::operator()(uint64_t a1, uint64_t *a2)
{
  v4 = (*(**(a1 + 8) + 40))(*(a1 + 8));
  v5 = *(a1 + 8);
  v6 = re::ecs2::SystemRegistry::registerSystem(v4, a2);
  v7 = *(a1 + 16);
  v8 = *(*v5 + 48);

  return v8(v5, v6, 0xFFFFFFFFLL, v7);
}

uint64_t re::internal::Callable<re::ecs2::ComponentHelper::addRealityRendererDefaultSystems(re::ecs2::ECSService *,re::DataArrayHandle<re::ecs2::SceneGroup>,re::EngineConfiguration const&)::$_0,void ()(re::TypeID const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF01F8;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t re::internal::Callable<re::ecs2::ComponentHelper::addRealityRendererDefaultSystems(re::ecs2::ECSService *,re::DataArrayHandle<re::ecs2::SceneGroup>,re::EngineConfiguration const&)::$_0,void ()(re::TypeID const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF01F8;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t std::__function::__value_func<void ()(re::AssetHandle *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__func<re::ecs2::ComponentHelper::addToLoadRequest(re::AssetLoadRequest &,re::ecs2::Entity &,BOOL)::$_0,std::allocator<re::ecs2::ComponentHelper::addToLoadRequest(re::AssetLoadRequest &,re::ecs2::Entity &,BOOL)::$_0>,void ()(re::AssetHandle *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CF0250;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<re::ecs2::ComponentHelper::addToLoadRequest(re::AssetLoadRequest &,re::ecs2::Entity &,BOOL)::$_0,std::allocator<re::ecs2::ComponentHelper::addToLoadRequest(re::AssetLoadRequest &,re::ecs2::Entity &,BOOL)::$_0>,void ()(re::AssetHandle *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *re::allocInfo_MXIService(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_248, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_248))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A8170, "MXIService");
    __cxa_guard_release(&_MergedGlobals_248);
  }

  return &unk_1EE1A8170;
}

void re::initInfo_MXIService(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0xF0381D49EB1AELL;
  v8[1] = "MXIService";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0x800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 8) = &re::initInfo_MXIService(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

uint64_t re::MXIManager::MXIManager(uint64_t a1, re::StringID *a2)
{
  *a1 = &unk_1F5CF02D0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  *(a1 + 52) = 0x7FFFFFFFLL;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = xmmword_1E3047670;
  *(a1 + 144) = xmmword_1E3047680;
  *(a1 + 160) = xmmword_1E30476A0;
  *(a1 + 176) = xmmword_1E30474D0;
  *(a1 + 192) = 9999999;
  *(a1 + 234) = 0;
  *(a1 + 236) = 0;
  *(a1 + 238) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 314) = 0;
  *(a1 + 316) = 0;
  *(a1 + 324) = 0;
  *(a1 + 326) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 348) = 0;
  *(a1 + 356) = 0;
  *(a1 + 364) = 0;
  *(a1 + 372) = 0;
  *(a1 + 380) = 0;
  *(a1 + 388) = 0;
  *(a1 + 396) = 0;
  *(a1 + 404) = 0;
  *(a1 + 412) = 0;
  *(a1 + 420) = 0;
  *(a1 + 428) = 0;
  *(a1 + 436) = 0;
  *(a1 + 444) = 0;
  *(a1 + 452) = 0;
  *(a1 + 460) = 0;
  *(a1 + 468) = 0;
  *(a1 + 476) = 0;
  *(a1 + 484) = 0;
  *(a1 + 492) = 0;
  *(a1 + 500) = 0;
  *(a1 + 508) = 0;
  *(a1 + 516) = 0;
  *(a1 + 520) = 0;
  *(a1 + 528) = 0;
  *(a1 + 208) = 0;
  v4 = (a1 + 208);
  *(a1 + 568) = 0;
  *(a1 + 536) = 0u;
  *(a1 + 552) = 0u;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 572) = 0x7FFFFFFFLL;
  *(a1 + 616) = 0;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 620) = 0x7FFFFFFFLL;
  *(a1 + 1192) = 0;
  *(a1 + 1199) = 0;
  bzero((a1 + 632), 0x22CuLL);
  *(v4 - 1) = a2;
  v5 = re::ServiceLocator::serviceOrNull<re::AssetService>(a2);
  if (v5)
  {
    *v4 = v5;
  }

  *(a1 + 216) = re::ServiceLocator::serviceOrNull<re::RenderManager>(a2);
  *(a1 + 224) = re::ServiceLocator::serviceOrNull<re::TransformService>(a2);
  re::MXIManager::reloadDebugOverrides(a1);
  return a1;
}

void re::MXIManager::reloadDebugOverrides(re::MXIManager *this)
{
  v2 = *re::mxiLogObjects(this);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1E1C61000, v2, OS_LOG_TYPE_INFO, "[MXIManager] Reloading MXI-specific debug overrides", buf, 2u);
  }

  re::Defaults::BOOLValue(buf, "MXIDefaultsUpdateEveryFrame", v3);
  if (*(this + 232))
  {
    if ((buf[0] & 1) == 0)
    {
      *(this + 232) = 0;
      goto LABEL_9;
    }
  }

  else
  {
    if ((buf[0] & 1) == 0)
    {
      goto LABEL_9;
    }

    *(this + 232) = 1;
  }

  *(this + 233) = buf[1];
LABEL_9:
  re::Defaults::BOOLValue(buf, "MXIEnableTwoPass", v4);
  if (*(this + 234))
  {
    if ((buf[0] & 1) == 0)
    {
      *(this + 234) = 0;
      goto LABEL_15;
    }
  }

  else
  {
    if ((buf[0] & 1) == 0)
    {
      goto LABEL_15;
    }

    *(this + 234) = 1;
  }

  *(this + 235) = buf[1];
LABEL_15:
  re::Defaults::BOOLValue(buf, "MXIDoReprojection", v5);
  if (*(this + 236))
  {
    if ((buf[0] & 1) == 0)
    {
      *(this + 236) = 0;
      goto LABEL_21;
    }
  }

  else
  {
    if ((buf[0] & 1) == 0)
    {
      goto LABEL_21;
    }

    *(this + 236) = 1;
  }

  *(this + 237) = buf[1];
LABEL_21:
  re::Defaults::BOOLValue(buf, "MXIUseProxyRendering", v6);
  if (*(this + 238))
  {
    if ((buf[0] & 1) == 0)
    {
      *(this + 238) = 0;
      goto LABEL_27;
    }
  }

  else
  {
    if ((buf[0] & 1) == 0)
    {
      goto LABEL_27;
    }

    *(this + 238) = 1;
  }

  *(this + 239) = buf[1];
LABEL_27:
  re::Defaults::floatValue(buf, "MXIResolutionScale", v7);
  if (*(this + 240))
  {
    if ((buf[0] & 1) == 0)
    {
      *(this + 240) = 0;
      goto LABEL_33;
    }
  }

  else
  {
    if ((buf[0] & 1) == 0)
    {
      goto LABEL_33;
    }

    *(this + 240) = 1;
  }

  *(this + 61) = *&buf[4];
LABEL_33:
  re::Defaults::intValue(buf, "MXIFramesPerRender", v8);
  if (*(this + 248))
  {
    if ((buf[0] & 1) == 0)
    {
      *(this + 248) = 0;
      goto LABEL_39;
    }
  }

  else
  {
    if ((buf[0] & 1) == 0)
    {
      goto LABEL_39;
    }

    *(this + 248) = 1;
  }

  *(this + 63) = *&buf[4];
LABEL_39:
  re::Defaults::floatValue(buf, "MXIKeepReprojectingThreshold", v9);
  if (*(this + 256))
  {
    if ((buf[0] & 1) == 0)
    {
      *(this + 256) = 0;
      goto LABEL_45;
    }
  }

  else
  {
    if ((buf[0] & 1) == 0)
    {
      goto LABEL_45;
    }

    *(this + 256) = 1;
  }

  *(this + 65) = *&buf[4];
LABEL_45:
  re::Defaults::floatValue(buf, "MXIDepthEdgeThreshold", v10);
  if (*(this + 272))
  {
    if ((buf[0] & 1) == 0)
    {
      *(this + 272) = 0;
      goto LABEL_51;
    }
  }

  else
  {
    if ((buf[0] & 1) == 0)
    {
      goto LABEL_51;
    }

    *(this + 272) = 1;
  }

  *(this + 69) = *&buf[4];
LABEL_51:
  re::Defaults::floatValue(buf, "MXIExpandedRegionMultiplier", v11);
  if (*(this + 280))
  {
    if ((buf[0] & 1) == 0)
    {
      *(this + 280) = 0;
      goto LABEL_57;
    }
  }

  else
  {
    if ((buf[0] & 1) == 0)
    {
      goto LABEL_57;
    }

    *(this + 280) = 1;
  }

  *(this + 71) = *&buf[4];
LABEL_57:
  re::Defaults::floatValue(buf, "MXIVertexMotionThreshold", v12);
  if (*(this + 288))
  {
    if ((buf[0] & 1) == 0)
    {
      *(this + 288) = 0;
      goto LABEL_63;
    }
  }

  else
  {
    if ((buf[0] & 1) == 0)
    {
      goto LABEL_63;
    }

    *(this + 288) = 1;
  }

  *(this + 73) = *&buf[4];
LABEL_63:
  re::Defaults::intValue(buf, "MXIWidthSegmentsOverride", v13);
  if (*(this + 296))
  {
    if ((buf[0] & 1) == 0)
    {
      *(this + 296) = 0;
      goto LABEL_69;
    }
  }

  else
  {
    if ((buf[0] & 1) == 0)
    {
      goto LABEL_69;
    }

    *(this + 296) = 1;
  }

  *(this + 75) = *&buf[4];
LABEL_69:
  re::Defaults::intValue(buf, "MXIHeightSegmentsOverride", v14);
  if (*(this + 304))
  {
    if ((buf[0] & 1) == 0)
    {
      *(this + 304) = 0;
      goto LABEL_75;
    }
  }

  else
  {
    if ((buf[0] & 1) == 0)
    {
      goto LABEL_75;
    }

    *(this + 304) = 1;
  }

  *(this + 77) = *&buf[4];
LABEL_75:
  re::Defaults::BOOLValue(buf, "MXIDebugTintNearFarRectangles", v15);
  if (*(this + 312))
  {
    if ((buf[0] & 1) == 0)
    {
      *(this + 312) = 0;
      goto LABEL_81;
    }
  }

  else
  {
    if ((buf[0] & 1) == 0)
    {
      goto LABEL_81;
    }

    *(this + 312) = 1;
  }

  *(this + 313) = buf[1];
LABEL_81:
  re::Defaults::floatValue(buf, "MXINearPlaneSizeScalar", v16);
  if (*(this + 316))
  {
    if ((buf[0] & 1) == 0)
    {
      *(this + 316) = 0;
      goto LABEL_87;
    }
  }

  else
  {
    if ((buf[0] & 1) == 0)
    {
      goto LABEL_87;
    }

    *(this + 316) = 1;
  }

  *(this + 80) = *&buf[4];
LABEL_87:
  re::Defaults::BOOLValue(buf, "MXIEnableBillboard", v17);
  if (*(this + 324))
  {
    if ((buf[0] & 1) == 0)
    {
      *(this + 324) = 0;
      goto LABEL_93;
    }
  }

  else
  {
    if ((buf[0] & 1) == 0)
    {
      goto LABEL_93;
    }

    *(this + 324) = 1;
  }

  *(this + 325) = buf[1];
LABEL_93:
  if (*(this + 326) == 1)
  {
    *(this + 326) = 0;
  }

  re::Defaults::intValue(buf, "MXIBillboardPolicy", v18);
  if (buf[0] == 1)
  {
    v20 = buf[4];
    if ((*(this + 326) & 1) == 0)
    {
      *(this + 326) = 1;
    }

    *(this + 327) = v20;
  }

  re::Defaults::floatValue(&v51, "MXIBillboardPolicyAbsoluteMaxAllowedAngle", v19);
  if (*(this + 328))
  {
    if ((v51 & 1) == 0)
    {
      *(this + 328) = 0;
      goto LABEL_105;
    }
  }

  else
  {
    if ((v51 & 1) == 0)
    {
      goto LABEL_105;
    }

    *(this + 328) = 1;
  }

  *(this + 83) = HIDWORD(v51);
LABEL_105:
  re::Defaults::floatValue(&v51, "MXIBillboardPolicyRelativeMaxAllowedAngle", v21);
  if (*(this + 336))
  {
    if ((v51 & 1) == 0)
    {
      *(this + 336) = 0;
      goto LABEL_111;
    }
  }

  else
  {
    if ((v51 & 1) == 0)
    {
      goto LABEL_111;
    }

    *(this + 336) = 1;
  }

  *(this + 85) = HIDWORD(v51);
LABEL_111:
  if (*(this + 344) == 1)
  {
    *(this + 344) = 0;
  }

  re::Defaults::intValue(&v51, "MXIBillboardActivationFunction", v22);
  if (v51 == 1)
  {
    v24 = BYTE4(v51);
    if ((*(this + 344) & 1) == 0)
    {
      *(this + 344) = 1;
    }

    *(this + 345) = v24;
  }

  re::Defaults::floatValue(&v50, "MXIBillboardActivationFunctionSmoothPlusScale", v23);
  if (*(this + 348))
  {
    if ((v50 & 1) == 0)
    {
      *(this + 348) = 0;
      goto LABEL_123;
    }
  }

  else
  {
    if ((v50 & 1) == 0)
    {
      goto LABEL_123;
    }

    *(this + 348) = 1;
  }

  *(this + 88) = HIDWORD(v50);
LABEL_123:
  re::Defaults::floatValue(&v50, "MXITreatmentCompositingMixBegin", v25);
  if (*(this + 356))
  {
    if ((v50 & 1) == 0)
    {
      *(this + 356) = 0;
      goto LABEL_129;
    }
  }

  else
  {
    if ((v50 & 1) == 0)
    {
      goto LABEL_129;
    }

    *(this + 356) = 1;
  }

  *(this + 90) = HIDWORD(v50);
LABEL_129:
  re::Defaults::floatValue(&v50, "MXITreatmentCompositingMixEnd", v26);
  if (*(this + 364))
  {
    if ((v50 & 1) == 0)
    {
      *(this + 364) = 0;
      goto LABEL_135;
    }
  }

  else
  {
    if ((v50 & 1) == 0)
    {
      goto LABEL_135;
    }

    *(this + 364) = 1;
  }

  *(this + 92) = HIDWORD(v50);
LABEL_135:
  re::Defaults::floatValue(&v50, "MXITreatmentCompositingMixCornerRadius", v27);
  if (*(this + 372))
  {
    if ((v50 & 1) == 0)
    {
      *(this + 372) = 0;
      goto LABEL_141;
    }
  }

  else
  {
    if ((v50 & 1) == 0)
    {
      goto LABEL_141;
    }

    *(this + 372) = 1;
  }

  *(this + 94) = HIDWORD(v50);
LABEL_141:
  re::Defaults::uintValue(&v50, "MXITreatmentCompositingMixStepFunction", v28);
  if (*(this + 380))
  {
    if ((v50 & 1) == 0)
    {
      *(this + 380) = 0;
      goto LABEL_147;
    }
  }

  else
  {
    if ((v50 & 1) == 0)
    {
      goto LABEL_147;
    }

    *(this + 380) = 1;
  }

  *(this + 96) = HIDWORD(v50);
LABEL_147:
  re::Defaults::floatValue(&v50, "MXITreatmentNearFalloffBegin", v29);
  if (*(this + 388))
  {
    if ((v50 & 1) == 0)
    {
      *(this + 388) = 0;
      goto LABEL_153;
    }
  }

  else
  {
    if ((v50 & 1) == 0)
    {
      goto LABEL_153;
    }

    *(this + 388) = 1;
  }

  *(this + 98) = HIDWORD(v50);
LABEL_153:
  re::Defaults::floatValue(&v50, "MXITreatmentNearFalloffEnd", v30);
  if (*(this + 396))
  {
    if ((v50 & 1) == 0)
    {
      *(this + 396) = 0;
      goto LABEL_159;
    }
  }

  else
  {
    if ((v50 & 1) == 0)
    {
      goto LABEL_159;
    }

    *(this + 396) = 1;
  }

  *(this + 100) = HIDWORD(v50);
LABEL_159:
  re::Defaults::floatValue(&v50, "MXITreatmentNearFalloffCornerRadius", v31);
  if (*(this + 404))
  {
    if ((v50 & 1) == 0)
    {
      *(this + 404) = 0;
      goto LABEL_165;
    }
  }

  else
  {
    if ((v50 & 1) == 0)
    {
      goto LABEL_165;
    }

    *(this + 404) = 1;
  }

  *(this + 102) = HIDWORD(v50);
LABEL_165:
  re::Defaults::uintValue(&v50, "MXITreatmentNearFalloffStepFunction", v32);
  if (*(this + 412))
  {
    if ((v50 & 1) == 0)
    {
      *(this + 412) = 0;
      goto LABEL_171;
    }
  }

  else
  {
    if ((v50 & 1) == 0)
    {
      goto LABEL_171;
    }

    *(this + 412) = 1;
  }

  *(this + 104) = HIDWORD(v50);
LABEL_171:
  re::Defaults::floatValue(&v50, "MXITreatmentSpillFalloffBegin", v33);
  if (*(this + 420))
  {
    if ((v50 & 1) == 0)
    {
      *(this + 420) = 0;
      goto LABEL_177;
    }
  }

  else
  {
    if ((v50 & 1) == 0)
    {
      goto LABEL_177;
    }

    *(this + 420) = 1;
  }

  *(this + 106) = HIDWORD(v50);
LABEL_177:
  re::Defaults::floatValue(&v50, "MXITreatmentSpillFalloffEnd", v34);
  if (*(this + 428))
  {
    if ((v50 & 1) == 0)
    {
      *(this + 428) = 0;
      goto LABEL_183;
    }
  }

  else
  {
    if ((v50 & 1) == 0)
    {
      goto LABEL_183;
    }

    *(this + 428) = 1;
  }

  *(this + 108) = HIDWORD(v50);
LABEL_183:
  re::Defaults::floatValue(&v50, "MXITreatmentSpillFalloffCornerRadius", v35);
  if (*(this + 436))
  {
    if ((v50 & 1) == 0)
    {
      *(this + 436) = 0;
      goto LABEL_189;
    }
  }

  else
  {
    if ((v50 & 1) == 0)
    {
      goto LABEL_189;
    }

    *(this + 436) = 1;
  }

  *(this + 110) = HIDWORD(v50);
LABEL_189:
  re::Defaults::uintValue(&v50, "MXITreatmentSpillFalloffStepFunction", v36);
  if (*(this + 444))
  {
    if ((v50 & 1) == 0)
    {
      *(this + 444) = 0;
      goto LABEL_195;
    }
  }

  else
  {
    if ((v50 & 1) == 0)
    {
      goto LABEL_195;
    }

    *(this + 444) = 1;
  }

  *(this + 112) = HIDWORD(v50);
LABEL_195:
  re::Defaults::uintValue(&v50, "MXITreatmentSpillColorSampleMode", v37);
  if (*(this + 452))
  {
    if ((v50 & 1) == 0)
    {
      *(this + 452) = 0;
      goto LABEL_201;
    }
  }

  else
  {
    if ((v50 & 1) == 0)
    {
      goto LABEL_201;
    }

    *(this + 452) = 1;
  }

  *(this + 114) = HIDWORD(v50);
LABEL_201:
  re::Defaults::floatValue(&v50, "MXITreatmentEnableGlowrayStarburstMitigation", v38);
  if (*(this + 460))
  {
    if ((v50 & 1) == 0)
    {
      *(this + 460) = 0;
      goto LABEL_207;
    }
  }

  else
  {
    if ((v50 & 1) == 0)
    {
      goto LABEL_207;
    }

    *(this + 460) = 1;
  }

  *(this + 116) = HIDWORD(v50);
LABEL_207:
  re::Defaults::uintValue(&v50, "mxi.headboxShape", v39);
  if (*(this + 468))
  {
    if ((v50 & 1) == 0)
    {
      *(this + 468) = 0;
      goto LABEL_213;
    }
  }

  else
  {
    if ((v50 & 1) == 0)
    {
      goto LABEL_213;
    }

    *(this + 468) = 1;
  }

  *(this + 118) = HIDWORD(v50);
LABEL_213:
  re::Defaults::floatValue(&v50, "mxi.headboxMaxDisparity", v40);
  if (*(this + 476))
  {
    if ((v50 & 1) == 0)
    {
      *(this + 476) = 0;
      goto LABEL_219;
    }
  }

  else
  {
    if ((v50 & 1) == 0)
    {
      goto LABEL_219;
    }

    *(this + 476) = 1;
  }

  *(this + 120) = HIDWORD(v50);
LABEL_219:
  re::Defaults::uintValue(&v50, "mxi.headboxMaxErrorMarginInPixels", v41);
  if (*(this + 484))
  {
    if ((v50 & 1) == 0)
    {
      *(this + 484) = 0;
      goto LABEL_225;
    }
  }

  else
  {
    if ((v50 & 1) == 0)
    {
      goto LABEL_225;
    }

    *(this + 484) = 1;
  }

  *(this + 122) = HIDWORD(v50);
LABEL_225:
  re::Defaults::floatValue(&v50, "mxi.headboxMinimumRadius", v42);
  if (*(this + 492))
  {
    if ((v50 & 1) == 0)
    {
      *(this + 492) = 0;
      goto LABEL_231;
    }
  }

  else
  {
    if ((v50 & 1) == 0)
    {
      goto LABEL_231;
    }

    *(this + 492) = 1;
  }

  *(this + 124) = HIDWORD(v50);
LABEL_231:
  re::Defaults::floatValue(&v50, "mxi.headboxMinimumForwardDistance", v43);
  if (*(this + 500))
  {
    if ((v50 & 1) == 0)
    {
      *(this + 500) = 0;
      goto LABEL_237;
    }
  }

  else
  {
    if ((v50 & 1) == 0)
    {
      goto LABEL_237;
    }

    *(this + 500) = 1;
  }

  *(this + 126) = HIDWORD(v50);
LABEL_237:
  re::Defaults::floatValue(&v50, "mxi.headboxMinimumBackwardDistance", v44);
  if (*(this + 508))
  {
    if ((v50 & 1) == 0)
    {
      *(this + 508) = 0;
      goto LABEL_243;
    }
  }

  else
  {
    if ((v50 & 1) == 0)
    {
      goto LABEL_243;
    }

    *(this + 508) = 1;
  }

  *(this + 128) = HIDWORD(v50);
LABEL_243:
  re::Defaults::BOOLValue(&v50, "mxi.headboxEnableAdaptiveScaling", v45);
  if (*(this + 516))
  {
    if ((v50 & 1) == 0)
    {
      *(this + 516) = 0;
      goto LABEL_249;
    }
  }

  else
  {
    if ((v50 & 1) == 0)
    {
      goto LABEL_249;
    }

    *(this + 516) = 1;
  }

  *(this + 517) = BYTE1(v50);
LABEL_249:
  re::Defaults::floatValue(&v50, "mxi.headboxShearStrength", v46);
  if (*(this + 520))
  {
    if ((v50 & 1) == 0)
    {
      *(this + 520) = 0;
      goto LABEL_255;
    }
  }

  else
  {
    if ((v50 & 1) == 0)
    {
      goto LABEL_255;
    }

    *(this + 520) = 1;
  }

  *(this + 131) = HIDWORD(v50);
LABEL_255:
  re::Defaults::floatValue(&v50, "mxi.headboxDynamicShearStrength", v47);
  if (*(this + 528))
  {
    if ((v50 & 1) == 0)
    {
      *(this + 528) = 0;
      goto LABEL_261;
    }
  }

  else
  {
    if ((v50 & 1) == 0)
    {
      goto LABEL_261;
    }

    *(this + 528) = 1;
  }

  *(this + 133) = HIDWORD(v50);
LABEL_261:
  re::Defaults::BOOLValue(&v50, "mxi.enablePerFrameDebugLog", v48);
  if (v50)
  {
    v49 = BYTE1(v50);
  }

  else
  {
    v49 = 0;
  }

  *(this + 1202) = v49;
}

void re::MXIManager::~MXIManager(re::MXIManager *this)
{
  *(this + 25) = 0;
  *(this + 26) = 0;
  re::DynamicArray<re::AssetHandle>::deinit(this + 1160);
  re::AssetHandle::~AssetHandle((this + 1136));
  re::AssetHandle::~AssetHandle((this + 1112));
  re::AssetHandle::~AssetHandle((this + 1088));
  re::AssetHandle::~AssetHandle((this + 1064));
  re::AssetHandle::~AssetHandle((this + 1040));
  for (i = 1016; i != 824; i -= 24)
  {
    re::AssetHandle::~AssetHandle((this + i));
  }

  re::AssetHandle::~AssetHandle((this + 824));
  re::AssetHandle::~AssetHandle((this + 800));
  re::AssetHandle::~AssetHandle((this + 776));
  re::AssetHandle::~AssetHandle((this + 752));
  re::AssetHandle::~AssetHandle((this + 728));
  re::AssetHandle::~AssetHandle((this + 704));
  re::AssetHandle::~AssetHandle((this + 680));
  re::AssetHandle::~AssetHandle((this + 656));
  re::AssetHandle::~AssetHandle((this + 632));
  re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit(this + 73);
  re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 67);
  re::HashTable<unsigned long long,re::MXIManager::ContextWithProxies,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 2);
}

{
  re::MXIManager::~MXIManager(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::MXIManager::registerScene(re::MXIManager *this, re::EventBus **a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v30 = a2;
  v2 = a2[36];
  if (!v2)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) An event bus is expected for this system to track MXIComponent changes.", "eventBus", "registerScene", 229);
    _os_crash("assertion failure: (eventBus) An event bus is expected for this system to track MXIComponent changes.");
    __break(1u);
  }

  v24[0] = 0;
  v24[1] = 0;
  v25 = 1;
  v27 = 0;
  v28 = 0;
  v26 = 0;
  v29 = 0;
  re::MXIManager::reloadDebugOverrides(this);
  v4 = re::ecs2::ComponentImpl<re::ecs2::MXIComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  v38 = re::globalAllocators(v5)[2];
  v6 = (*(*v38 + 32))(v38, 32, 0);
  *v6 = &unk_1F5CF0338;
  v6[1] = this;
  v6[2] = re::MXIManager::didAddMXIComponent;
  v6[3] = 0;
  v39 = v6;
  v7 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v2, v37, v4, 0);
  v9 = v8;
  v10 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v24);
  *v10 = v7;
  v10[1] = v9;
  v11 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(v37);
  v35 = re::globalAllocators(v11)[2];
  v12 = (*(*v35 + 32))(v35, 32, 0);
  *v12 = &unk_1F5CF0390;
  v12[1] = this;
  v12[2] = re::MXIManager::didChangeMXIComponent;
  v12[3] = 0;
  v36 = v12;
  v13 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v2, v34, v4, 0);
  v15 = v14;
  v16 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v24);
  *v16 = v13;
  v16[1] = v15;
  v17 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v34);
  v32 = re::globalAllocators(v17)[2];
  v18 = (*(*v32 + 32))(v32, 32, 0);
  *v18 = &unk_1F5CF03E8;
  v18[1] = this;
  v18[2] = re::MXIManager::willRemoveMXIComponent;
  v18[3] = 0;
  v33 = v18;
  v19 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillRemoveEvent>(v2, v31, v4, 0);
  v21 = v20;
  v22 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v24);
  *v22 = v19;
  v22[1] = v21;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::destroyCallable(v31);
  re::HashTable<re::ecs2::Scene *,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::add(this + 584, &v30, v24);
  re::BucketArray<RESubscriptionHandle,8ul>::deinit(v24);
  result = v24[0];
  if (v24[0])
  {
    if ((v25 & 1) == 0)
    {
      return (*(*v24[0] + 40))();
    }
  }

  return result;
}

uint64_t re::MXIManager::unregisterScene(re::MXIManager *this, re::ecs2::Entity **a2)
{
  v13 = a2;
  for (i = 64; i != 128; i += 8)
  {
    v14 = *(this + i);
    v5 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet((a2 + 19), &v14);
    if (v5)
    {
      v6 = *(v5 + 8);
      if (!v6)
      {
        continue;
      }

LABEL_4:
      re::MXIManager::removeMXIScene(this, v6);
      continue;
    }

    v6 = a2[13];
    if (*(v6 + 39) == v14)
    {
      goto LABEL_4;
    }
  }

  result = re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::tryGet(this + 584, &v13);
  if (result)
  {
    v8 = v13[36];
    if (v8)
    {
      v9 = result;
      v10 = *(result + 40);
      if (v10)
      {
        for (j = 0; j != v10; ++j)
        {
          v12 = re::BucketArray<RESubscriptionHandle,8ul>::operator[](v9, j);
          re::EventBus::unsubscribe(v8, *v12, v12[1]);
        }
      }
    }

    return re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::remove(this + 584, &v13);
  }

  return result;
}

void re::MXIManager::removeMXIScene(re::MXIManager *this, re::ecs2::Entity *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    *buf = *(a2 + 39);
    v4 = re::HashTable<unsigned long long,re::MXIManager::ContextWithProxies,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(this + 16, buf);
    if (v4)
    {
      v5 = v4;
      if ((*(a2 + 387) & 1) == 0 && (*(a2 + 305) & 8) == 0)
      {
        v6 = *(v4 + 672);
        if (v6)
        {
          re::ecs2::Entity::setSelfEnabled(*(v4 + 672), 0);
          re::ecs2::Entity::removeFromSceneOrParent(v6);
        }

        v7 = *(v5 + 768);
        if (v7)
        {
          re::ecs2::Entity::setSelfEnabled(*(v5 + 768), 0);
          re::ecs2::Entity::removeFromSceneOrParent(v7);
        }
      }

      *(this + *(v5 + 40) + 8) = 0;
      v17 = *(a2 + 39);
      v8 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v17 ^ (v17 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v17 ^ (v17 >> 30))) >> 27));
      v9 = re::HashTable<unsigned long long,re::MXIManager::ContextWithProxies,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(this + 16, &v17, v8 ^ (v8 >> 31), buf);
      v10 = v19;
      if (v19 != 0x7FFFFFFF)
      {
        v11 = *(this + 4);
        v12 = *(v11 + 816 * v19) & 0x7FFFFFFF;
        if (v20 == 0x7FFFFFFF)
        {
          *(*(this + 3) + 4 * *&buf[8]) = v12;
          v10 = v19;
        }

        else
        {
          *(v11 + 816 * v20) = *(v11 + 816 * v20) & 0x80000000 | v12;
        }

        re::HashTable<unsigned long long,re::MXIManager::ContextWithProxies,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::free(this + 16, v10);
        v13 = v19;
        *(*(this + 4) + 816 * v19) = *(*(this + 4) + 816 * v19) & 0x80000000 | *(this + 13);
        --*(this + 11);
        v14 = *(this + 14) + 1;
        *(this + 13) = v13;
        *(this + 14) = v14;
      }

      v15 = *re::mxiLogObjects(v9);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v16 = *(a2 + 39);
        *buf = 134217984;
        *&buf[4] = v16;
        _os_log_debug_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_DEBUG, "[MXIManager] MXI rendering done on entity %llu", buf, 0xCu);
      }
    }
  }
}

__n128 re::HashTable<re::StringID,re::Vector3<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(uint64_t a1, StringID *a2, __n128 *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1));
  re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v10);
  v7 = HIDWORD(v11);
  if (HIDWORD(v11) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<re::StringID,re::Vector3<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v11, v10);
    re::StringID::StringID(&v8->n128_i8[8], a2);
    result = *a3;
    v8[2] = *a3;
    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    result = *a3;
    *(*(a1 + 16) + 48 * v7 + 32) = *a3;
  }

  return result;
}

uint64_t re::MXIManager::update(re::MXIManager *this, re::ecs2::Scene *a2, re::ecs2::Entity *a3, float32x4_t *a4)
{
  v6 = this;
  v213 = *MEMORY[0x1E69E9840];
  if (__PAIR64__(*(this + 233), *(this + 232)) == 0x100000001)
  {
    v7 = *re::mxiLogObjects(this);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *&buf[0].var0 = 0;
      _os_log_debug_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_DEBUG, "[MXIManager] update - Reloading Debug Overrides", buf, 2u);
    }

    re::MXIManager::reloadDebugOverrides(v6);
  }

  v178 = *(a3 + 39);
  if (*(v6 + 234) == 1)
  {
    a4[5].i8[0] = *(v6 + 235);
  }

  if (*(v6 + 238) == 1)
  {
    a4[7].i8[9] = *(v6 + 239);
  }

  v8 = re::HashTable<unsigned long long,re::MXIManager::ContextWithProxies,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v6 + 16, &v178);
  if (v8)
  {
    if (v8->i64[0] && v8->i64[0] != v178)
    {
      return 0;
    }

    v9 = v8[10].i64[0];
    if (v9)
    {
      v10 = a4[44].i64[1] != v9;
    }

    else
    {
      v11 = a4[46].i64[1];
      if (v11 == v8[12].i64[0])
      {
        if (v11)
        {
          v12 = (v8[13].i64[0] + 8);
          v13 = 24 * v11 - 24;
          v14 = (a4[47].i64[1] + 8);
          do
          {
            v16 = *v14;
            v14 += 3;
            v15 = v16;
            v17 = *v12;
            v12 += 3;
            v10 = v15 != v17;
            _ZF = v15 != v17 || v13 == 0;
            v13 -= 24;
          }

          while (!_ZF);
        }

        else
        {
          v10 = 0;
        }
      }

      else
      {
        v10 = 1;
      }
    }

    v19 = a4[38].i64[1];
    v20 = v8[8].i64[1];
    v21 = a4[5].u8[8] != v8[4].u8[11] || (vminvq_u32(vceqq_f32(a4[6], v8[5])) & 0x80000000) == 0;
    v22 = a4[5].f32[1];
    v23 = v8[4].f32[1];
    v24 = v8[1].i64[0] != 0;
    v26 = a4[5].u8[0] != v24 || v19 != v20;
    if (v26 || v10 || (v22 == v23 ? (v27 = !v21) : (v27 = 0), !v27))
    {
      v28 = *re::mxiLogObjects(v8);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        v93 = *(a3 + 39);
        v94 = a4[5].u8[0] != v24;
        buf[0].var0 = 134219264;
        *(&buf[0].var0 + 1) = v93;
        WORD2(buf[0].var1) = 1024;
        *(&buf[0].var1 + 6) = v19 != v20;
        *(&buf[1].var0 + 1) = 1024;
        *(&buf[1].var0 + 1) = v10;
        LOWORD(buf[1].var1) = 1024;
        *(&buf[1].var1 + 2) = v94;
        HIWORD(buf[1].var1) = 1024;
        *v202 = v22 != v23;
        *&v202[4] = 1024;
        *&v202[6] = v21;
        _os_log_debug_impl(&dword_1E1C61000, v28, OS_LOG_TYPE_DEBUG, "[MXIManager] need update rendering, active MXIComponent entity %llu, mesh changed=%d, texture changed=%d, render mode changed=%d, split depth changed=%d, foreground rect changed=%d", buf, 0x2Au);
      }

      re::MXIManager::removeMXIScene(v6, a3);
    }

    v177 = 0;
    if (!a3)
    {
      goto LABEL_50;
    }
  }

  else
  {
    v177 = 0;
  }

  if ((*(a3 + 305) & 8) == 0 && (*(a3 + 387) & 1) == 0)
  {
    *&buf[0].var0 = 0x453764D203EAEEDCLL;
    buf[0].var1 = "__MXIScene__";
    v29 = re::ecs2::Entity::findInHierarchyByName(a3, buf);
    v30 = v29;
    if (*&buf[0].var0)
    {
      if (*&buf[0].var0)
      {
      }
    }

    if (v30)
    {
      goto LABEL_167;
    }
  }

LABEL_50:
  result = 0;
  if (!a3 || !a4)
  {
    return result;
  }

  v32 = *(a3 + 39);
  if (a4[5].i8[0] != 1 || (v33 = *(v6 + 8)) == 0 || v33 == v32)
  {
LABEL_63:
    v37 = re::AssetHandle::AssetHandle(v189, &a4[38]);
    if (!v189[1])
    {
LABEL_237:
      v156 = *re::mxiLogObjects(v37);
      if (os_log_type_enabled(v156, OS_LOG_TYPE_ERROR))
      {
        v157 = *(a3 + 39);
        buf[0].var0 = 134217984;
        *(&buf[0].var0 + 1) = v157;
        _os_log_error_impl(&dword_1E1C61000, v156, OS_LOG_TYPE_ERROR, "[MXIManager] Mesh resource not available on entity %llu, cannot start MXI rendering", buf, 0xCu);
      }

      goto LABEL_97;
    }

    if (a4[5].i8[2])
    {
      v38 = re::AssetHandle::loadedAsset<re::MeshAsset>(v189);
      if (!v38)
      {
LABEL_243:
        v161 = *re::mxiLogObjects(v38);
        if (os_log_type_enabled(v161, OS_LOG_TYPE_DEFAULT))
        {
          v162 = *(a3 + 39);
          buf[0].var0 = 134217984;
          *(&buf[0].var0 + 1) = v162;
          _os_log_impl(&dword_1E1C61000, v161, OS_LOG_TYPE_DEFAULT, "[MXIManager] MeshAsset was not loaded on entity %llu. Starting loadAsync and skipping this frame.", buf, 0xCu);
        }

        re::AssetHandle::loadAsync(v189);
        goto LABEL_97;
      }
    }

    v188 = 0;
    v185 = 0;
    v186 = 0;
    v184 = 0;
    v187 = 0;
    re::AssetHandle::AssetHandle(&v182, &a4[44]);
    if (!v183)
    {
      re::DynamicArray<re::AssetHandle>::operator=(&v184, &a4[45].u32[2]);
      goto LABEL_74;
    }

    v39 = *(v183 + 24);
    v40 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>(&v182);
    if (!v40 || *(v40 + 120) || (v41 = *(v40 + 112)) == 0)
    {
LABEL_74:
      v46 = re::AssetHandle::AssetHandle(v180, &a4[39].u32[2]);
      v47 = v186;
      if (v186)
      {
        goto LABEL_75;
      }

      if (!v181 || (v46 = re::AssetHandle::loadedAsset<re::MaterialAsset>(v180)) == 0 || *(v46 + 1842) != 7)
      {
        v64 = *re::mxiLogObjects(v46);
        if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
        {
          v102 = *(a3 + 39);
          buf[0].var0 = 134217984;
          *(&buf[0].var0 + 1) = v102;
          _os_log_error_impl(&dword_1E1C61000, v64, OS_LOG_TYPE_ERROR, "[MXIManager] Texture resource and ShaderGraph material not available on entity %llu, cannot start MXI rendering", buf, 0xCu);
        }

LABEL_96:
        re::AssetHandle::~AssetHandle(v180);
        re::AssetHandle::~AssetHandle(&v182);
        re::DynamicArray<re::AssetHandle>::deinit(&v184);
LABEL_97:
        re::AssetHandle::~AssetHandle(v189);
        return 0;
      }

      v47 = v186;
      if (v186)
      {
LABEL_75:
        v48 = v188;
        v49 = 24 * v47;
        while (1)
        {
          re::AssetHandle::AssetHandle(buf, v48);
          if (!re::AssetHandle::blockUntilLoaded<re::TextureAsset>(buf))
          {
            break;
          }

          re::AssetHandle::~AssetHandle(buf);
          v48 = (v48 + 24);
          v49 -= 24;
          if (!v49)
          {
            v50 = 0;
            goto LABEL_79;
          }
        }

        v63 = *re::mxiLogObjects(0);
        if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
        {
          *v197 = 0;
          _os_log_error_impl(&dword_1E1C61000, v63, OS_LOG_TYPE_ERROR, "[MXIManager] MXI texture's backing asset is null", v197, 2u);
        }

        re::AssetHandle::~AssetHandle(buf);
        goto LABEL_96;
      }

      v50 = 1;
LABEL_79:
      re::MXIManager::reloadDebugOverrides(v6);
      v52 = re::ecs2::EntityFactory::instance(v51);
      re::ecs2::EntityFactory::make(&v179, v52, 4uLL);
      v53 = v179;
      if (v179)
      {
        *&buf[0].var0 = 0x453764D203EAEEDCLL;
        buf[0].var1 = "__MXIScene__";
        re::StringID::operator=(v179 + 36, buf);
        v54 = *(v53 + 29);
        if (!v54)
        {
          v54 = re::ecs2::EntityComponentCollection::add((v53 + 48), re::ecs2::ComponentImpl<re::ecs2::RenderOptionsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
        }

        if ((v54[38] & 1) == 0)
        {
          v54[38] = 1;
        }

        v54[39] = 0;
        v54[49] = 1;
        *v197 = *(a3 + 39);
        memset(buf, 0, 24);
        v55 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*v197 ^ (*v197 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*v197 ^ (*v197 >> 30))) >> 27));
        v56 = re::HashTable<unsigned long long,re::MXIManager::ContextWithProxies,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v6 + 16, v197, v55 ^ (v55 >> 31), buf);
        v172 = v32;
        if (HIDWORD(buf[0].var1) == 0x7FFFFFFF)
        {
          v57 = re::HashTable<unsigned long long,re::MXIManager::ContextWithProxies,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v6 + 16, buf[0].var1, *&buf[0].var0);
          *(v57 + 8) = *v197;
          v58 = (v57 + 16);
          bzero((v57 + 16), 0x310uLL);
          *(v57 + 72) = &str_67;
          *(v57 + 80) = 1065353216;
          *(v57 + 88) = 257;
          *(v57 + 90) = 1;
          *(v57 + 96) = xmmword_1E3063230;
          *(v57 + 112) = xmmword_1E308C1A0;
          *(v57 + 128) = 1045220557;
          *(v57 + 224) = 0u;
          *(v57 + 240) = 0;
          *(v57 + 132) = 0u;
          *(v57 + 148) = 0u;
          *(v57 + 164) = 0u;
          *(v57 + 180) = 0u;
          *(v57 + 196) = 0u;
          *(v57 + 212) = 0;
          _Q1.i64[0] = 0x7F0000007FLL;
          _Q1.i64[1] = 0x7F0000007FLL;
          *(v57 + 256) = vnegq_f32(_Q1);
          *(v57 + 272) = _Q1;
          *(v57 + 288) = 0x3F80000000000002;
          *(v57 + 304) = 0u;
          __asm { FMOV            V1.2S, #1.0 }

          *(v57 + 320) = _Q1.i64[0];
          *(v57 + 328) = 1056964608;
          *(v57 + 336) = 65537;
          *(v57 + 352) = 0x3DCCCCCD3ECCCCCDLL;
          *(v57 + 360) = 1106247680;
          *(v57 + 372) = xmmword_1E306AB10;
          *(v57 + 388) = 1065353216;
          *(v57 + 392) = 64;
          *(v57 + 396) = 0x3E4CCCCD3DCCCCCDLL;
          *(v57 + 408) = 0xA3EC00000;
          *(v57 + 420) = 0x3F8000003FECCCCDLL;
          *(v57 + 432) = 0x3DCCCCCD3E99999ALL;
          *(v57 + 444) = 0x10000000ALL;
          *(v57 + 456) = 0x3CF5C28FBDCCCCCDLL;
          *(v57 + 464) = 1041865114;
          *(v57 + 472) = 10;
          *(v57 + 480) = 0;
          *(v57 + 488) = 0;
          *(v57 + 492) = 0x3F8000003E4CCCCDLL;
          *(v57 + 500) = 1;
          *(v57 + 508) = 1065353216;
          *(v57 + 528) = 0u;
          *(v57 + 544) = 0x3E4CCCCD00000000;
          *(v57 + 556) = 1;
          *(v57 + 560) = 1036831949;
          *(v57 + 564) = 1;
          *(v57 + 568) = 0x73E4CCCCDLL;
          *(v57 + 576) = 0x3F8000003F000000;
          *(v57 + 584) = 1065353216;
          *(v57 + 588) = 1;
          *(v57 + 672) = 0u;
          *(v57 + 688) = 0;
          *(v57 + 704) = 0u;
          *(v57 + 720) = 0u;
          *(v57 + 736) = 0;
          *(v57 + 608) = 0u;
          *(v57 + 624) = 0u;
          *(v57 + 640) = 0u;
          *(v57 + 656) = 0;
          *(v57 + 776) = 1065353216;
          *(v57 + 768) = 0x3F8000003F800000;
          ++*(v6 + 14);
        }

        else
        {
          v58 = (*(v6 + 4) + 816 * HIDWORD(buf[0].var1) + 16);
        }

        v66 = re::globalAllocators(v56);
        v67 = (*(*v66[2] + 32))(v66[2], 272, 16);
        *v67 = 0u;
        *(v67 + 16) = 0u;
        *(v67 + 32) = 0u;
        *(v67 + 48) = 0u;
        *(v67 + 64) = 0u;
        *(v67 + 80) = 0u;
        *(v67 + 96) = 0u;
        *(v67 + 112) = 0u;
        *(v67 + 128) = 0u;
        *(v67 + 144) = 0u;
        *(v67 + 160) = 0u;
        *(v67 + 176) = 0u;
        *(v67 + 192) = 0u;
        *(v67 + 208) = 0u;
        *(v67 + 224) = 0u;
        *(v67 + 240) = 0u;
        *(v67 + 256) = 0u;
        ArcSharedObject::ArcSharedObject(v67, 0);
        *v67 = &unk_1F5CF0450;
        *(v67 + 24) = 0xFFFFFFFFFFFFFFFLL;
        *(v67 + 224) = 0;
        *(v67 + 32) = 0u;
        *(v67 + 48) = 0u;
        *(v67 + 64) = 0u;
        *(v67 + 80) = 0u;
        *(v67 + 96) = 0u;
        *(v67 + 112) = 0u;
        *(v67 + 128) = 0u;
        *(v67 + 144) = 0u;
        *(v67 + 160) = 0;
        *(v67 + 240) = 0x3F80000000000000;
        *(v67 + 248) = -3243035853;
        *(v67 + 256) = 0;
        v69 = v58[13].i64[1];
        v58[13].i64[1] = v67;
        if (v69)
        {
        }

        if (v50)
        {
          v170 = v58;
          v70 = re::ecs2::EntityFactory::instance(v68);
          re::ecs2::EntityFactory::make(&v195, v70, 4uLL);
          v71 = v195;
          re::ecs2::EntityComponentCollection::remove((v195 + 48), re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
          v72 = *(v71 + 24);
          if (!v72)
          {
            v72 = re::ecs2::EntityComponentCollection::add((v71 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType);
          }

          v168 = v53;
          v164 = v6;
          re::AssetHandle::operator=((v72 + 4), v189);
          re::DynamicArray<re::AssetHandle>::add((v72 + 7), v180);
          re::ecs2::Component::markDirty(v72);
          v73 = v71;
          v74 = *(v71 + 26);
          if (!v74)
          {
            v74 = re::ecs2::EntityComponentCollection::add((v71 + 48), re::ecs2::ComponentImpl<re::ecs2::MaterialParameterBlockArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
          }

          re::ecs2::MXIComponent::copyShaderGraphMaterialTextureParameterNames(a4, v197);
          v75 = v198[0];
          re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(v74, v198[0]);
          if (v75)
          {
            v76 = 0;
            v77 = 0;
            while (1)
            {
              v78 = v198[0];
              if (v198[0] <= v77)
              {
                break;
              }

              re::DynamicString::DynamicString(&v192, (v199 + v76));
              re::DynamicString::DynamicString(v191, &v192);
              v79 = re::HashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(&a4[41], v191);
              if (*&v191[0])
              {
                if (BYTE8(v191[0]))
                {
                  (*(**&v191[0] + 40))();
                }

                memset(v191, 0, sizeof(v191));
              }

              if (v79 && *(v79 + 1))
              {
                re::DynamicString::insert(&v192, 0, "$1.", 3uLL);
                v80 = *(v74 + 6);
                if (v80 <= v77)
                {
                  v196 = 0;
                  memset(v202, 0, 48);
                  memset(buf, 0, sizeof(buf));
                  v158 = MEMORY[0x1E69E9C10];
                  v159 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  v205 = 136315906;
                  v206 = "operator[]";
                  v207 = 1024;
                  if (v159)
                  {
                    v160 = 3;
                  }

                  else
                  {
                    v160 = 2;
                  }

                  v208 = 789;
                  v209 = 2048;
                  v210 = v77;
                  v211 = 2048;
                  v212 = v80;
                  _os_log_send_and_compose_impl(v160, &v196, buf, 80, &dword_1E1C61000, v158, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v205, 38, v163, v164);
                  v38 = _os_crash_msg();
                  __break(1u);
                  goto LABEL_243;
                }

                v81 = *(v74 + 8) + v76;
                ++*(v81 + 16);
                v82 = *v81;
                if (v193)
                {
                  v83 = *&v194[7];
                }

                else
                {
                  v83 = v194;
                }

                re::AssetHandle::AssetHandle(v190, v79);
                re::ecs2::SerializableMaterialParameterBlock::setTexture(v82, v83, v190);
                re::AssetHandle::~AssetHandle(v190);
              }

              if (v192 && (v193 & 1) != 0)
              {
                (*(*v192 + 40))();
              }

              ++v77;
              v76 += 32;
              if (v75 == v77)
              {
                goto LABEL_127;
              }
            }

            v196 = 0;
            memset(v202, 0, 48);
            memset(buf, 0, sizeof(buf));
            v153 = MEMORY[0x1E69E9C10];
            v154 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v205 = 136315906;
            v206 = "operator[]";
            v207 = 1024;
            if (v154)
            {
              v155 = 3;
            }

            else
            {
              v155 = 2;
            }

            v208 = 789;
            v209 = 2048;
            v210 = v77;
            v211 = 2048;
            v212 = v78;
            _os_log_send_and_compose_impl(v155, &v196, buf, 80, &dword_1E1C61000, v153, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v205, 38, v163, v164);
            v37 = _os_crash_msg();
            __break(1u);
            goto LABEL_237;
          }

LABEL_127:
          re::ecs2::Component::markDirty(v74);
          v53 = v168;
          re::ecs2::Entity::setParentInternal(v73, v168, 0xFFFFFFFFFFFFFFFFLL);
          v84 = re::DynamicArray<re::DynamicString>::deinit(v197);
          if (v73)
          {
          }

          v6 = v164;
          v58 = v170;
        }

        else
        {
          re::MXIManager::createMXIEntityForSplit(v6, v53, a4, v189, &v184, 0, v58);
          if (a4[5].i8[2])
          {
            re::MXIManager::createMXIEntityForSplit(v6, v53, a4, v189, &v184, 1, v58);
          }
        }

        v58[4].i8[9] = a4[7].i8[8];
        if (a4[5].i8[0] == 1 && a4[7].i8[9] == 1)
        {
          v85 = re::ecs2::EntityFactory::instance(v84);
          re::ecs2::EntityFactory::make(v197, v85, 4uLL);
          v86 = *v197;
          if (*v197)
          {
            *&buf[0].var0 = 0x453764D0FADA71A0;
            buf[0].var1 = "__MXIProxy__";
            re::StringID::operator=((*v197 + 288), buf);
            re::StringID::destroyString(buf);
            re::ecs2::EntityComponentCollection::add((v86 + 6), re::ecs2::ComponentImpl<re::ecs2::TransformComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
            v87 = v86[29];
            if (!v87)
            {
              v87 = re::ecs2::EntityComponentCollection::add((v86 + 6), re::ecs2::ComponentImpl<re::ecs2::RenderOptionsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
            }

            if ((v87[38] & 1) == 0)
            {
              v87[38] = 1;
            }

            v87[39] = 0;
            v87[49] = 1;
            v88 = a4[37].u8[8];
            v89 = v6;
            v90 = v86;
            if (a4[5].i8[2])
            {
              re::MXIManager::setupMXIProxy(v6, v86, v172, 1, 1, v58, v88);
              v88 = a4[37].u8[8];
              v89 = v6;
              v90 = v86;
              v91 = v172;
              v92 = 1;
            }

            else
            {
              v91 = v172;
              v92 = 0;
            }

            re::MXIManager::setupMXIProxy(v89, v90, v91, v92, 0, v58, v88);
            re::ecs2::Entity::setParentInternal(v86, a3, 0xFFFFFFFFFFFFFFFFLL);
            v58[42].i64[0] = v86;
          }
        }

        re::ecs2::EntityComponentCollection::remove((v53 + 48), re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
        v104 = re::ecs2::EntityFactory::instance(v103);
        re::ecs2::EntityFactory::make(v197, v104, 4uLL);
        v105 = *v197;
        *&buf[0].var0 = 0x453764D0DCE02B48;
        buf[0].var1 = "__MXIPivot__";
        re::StringID::operator=((*v197 + 288), buf);
        re::ecs2::EntityComponentCollection::remove((v105 + 48), re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
        re::ecs2::EntityComponentCollection::add((v105 + 48), re::ecs2::ComponentImpl<re::ecs2::TransformComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
        re::ecs2::Entity::setParentInternal(v105, a3, 0xFFFFFFFFFFFFFFFFLL);
        v58[48].i64[0] = v105;
        re::ecs2::Entity::setParentInternal(v53, v105, 0xFFFFFFFFFFFFFFFFLL);
        v58[40].i64[0] = v53;
        v58->i64[0] = *(a3 + 39);
        re::AssetHandle::operator=(&v58[8], v189);
        re::AssetHandle::operator=(&v58[9].i64[1], &v182);
        v106 = re::DynamicArray<re::AssetHandle>::operator=(&v58[11], &v184);
        v58[4].i32[1] = a4[5].i32[1];
        v58[4].i8[11] = a4[5].i8[8];
        v58[5] = a4[6];
        v107 = *(a3 + 4);
        v108 = a3;
        if (v107)
        {
          v108 = a3;
          if ((*(v107 + 304) & 0x80) == 0)
          {
            do
            {
              v108 = v107;
              v107 = *(v107 + 32);
            }

            while (v107 && (*(v107 + 304) & 0x80) == 0);
          }
        }

        v58[45].i64[0] = v108;
        v109 = *re::mxiLogObjects(v106);
        if (os_log_type_enabled(v109, OS_LOG_TYPE_DEBUG))
        {
          v150 = v58->i64[0];
          v151 = v58[45].i64[0];
          if (v151)
          {
            v152 = *(v151 + 296);
          }

          else
          {
            v152 = "unknown";
          }

          buf[0].var0 = 134218242;
          *(&buf[0].var0 + 1) = v150;
          WORD2(buf[0].var1) = 2080;
          *(&buf[0].var1 + 6) = v152;
          _os_log_debug_impl(&dword_1E1C61000, v109, OS_LOG_TYPE_DEBUG, "[MXIManager] MXI rendering started on entity %llu, window %s", buf, 0x16u);
        }

        if (*v197)
        {
        }

        if (v179)
        {
        }
      }

      re::AssetHandle::~AssetHandle(v180);
      re::AssetHandle::~AssetHandle(&v182);
      re::DynamicArray<re::AssetHandle>::deinit(&v184);
      re::AssetHandle::~AssetHandle(v189);
      v177 = 1;
LABEL_167:
      *&buf[0].var0 = *(a3 + 39);
      result = re::HashTable<unsigned long long,re::MXIManager::ContextWithProxies,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v6 + 16, buf);
      if (result)
      {
        v110 = result;
        v111 = &a4[22].i32[2];
        v112 = a4[27].f32[0];
        if (*(v6 + 372))
        {
          v111 = (v6 + 376);
        }

        v113 = *v111;
        *&v176.var0 = 0x453764D203EAEEDCLL;
        v176.var1 = "__MXIScene__";
        v114 = re::ecs2::Entity::findInHierarchyByName(a3, &v176);
        v115 = v114;
        if (*&v176.var0)
        {
          if (*&v176.var0)
          {
          }
        }

        *&v176.var0 = 0;
        v176.var1 = &str_67;
        if (v115 && (v116 = re::AssetHandle::loadedAsset<re::MeshAsset>((v110 + 128))) != 0 && *(v116 + 1144))
        {
          v117 = *(v116 + 1152);
          v166 = *v117;
          v167 = v117[1];
        }

        else
        {
          v118.i64[0] = 0x7F0000007FLL;
          v118.i64[1] = 0x7F0000007FLL;
          v119.i64[0] = 0x7F0000007FLL;
          v119.i64[1] = 0x7F0000007FLL;
          v166 = vnegq_f32(v118);
          v167 = v119;
        }

        if (a4[5].i8[0] == 1)
        {
          v165 = v6;
          if (v112 <= 0.0)
          {
            *v169 = xmmword_1E30474D0;
            v171 = xmmword_1E30476A0;
            v173 = xmmword_1E3047680;
            v126 = xmmword_1E3047670;
            v175 = xmmword_1E3047670;
          }

          else
          {
            v120 = 0;
            v121 = (a4[35].f32[3] + -1.0) * v112 + 1.0;
            v122 = LODWORD(v121);
            v123.i32[0] = 0;
            v123.i64[1] = 0;
            v123.f32[1] = v121;
            v124.i64[0] = 0;
            v124.f32[2] = v121;
            v125.i64[0] = 0;
            v125.i32[2] = 0;
            *v197 = xmmword_1E3047670;
            *v198 = xmmword_1E3047680;
            v199 = xmmword_1E30476A0;
            v200 = xmmword_1E30474D0;
            do
            {
              v124.f32[3] = -v112;
              v125.f32[3] = 1.0 - v112;
              buf[v120 / 0x10] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v122, COERCE_FLOAT(*&v197[v120])), v123, *&v197[v120], 1), v124, *&v197[v120], 2), v125, *&v197[v120], 3);
              v120 += 16;
            }

            while (v120 != 64);
            v173 = buf[1];
            v175 = buf[0];
            v126 = *&v202[16];
            *v169 = *&v202[16];
            v171 = *v202;
          }

          v127 = *(v115 + 43);
          if (v127)
          {
            v128 = *(v115 + 45);
            v129 = &v128[v127];
            do
            {
              v130 = *v128;
              if (*v128)
              {
                v131 = (v130 + 8);
              }

              v132 = *(v130 + 208);
              if (!v132)
              {
                goto LABEL_195;
              }

              v133 = *(v132 + 88);
              if (!v133)
              {
                goto LABEL_195;
              }

              v134 = *(v132 + 104);
              v135 = 8 * v133;
              do
              {
                v136 = *v134;
                if (*v134)
                {
                  v137 = (v136 + 8);
                  buf[0] = v175;
                  buf[1] = v173;
                  *v202 = v171;
                  *&v202[16] = *v169;
                  re::MaterialParameterBlock::setMatrix4x4F(v136, "collapseTransform", buf, v197);
                  *v197 = 0;
                  v205 = v113;
                  *&buf[0].var0 = 0x6D716CE8D23A597BLL;
                  re::MaterialParameterBlock::setConstant(v136, buf, 4uLL, &v205, 1, &v184);
                  v184 = 0;
                }

                ++v134;
                v135 -= 8;
              }

              while (v135);
              if (v130)
              {
LABEL_195:
              }

              ++v128;
            }

            while (v128 != v129);
          }

          v138 = a4[7].u8[9];
          *(v110 + 74) = v138;
          if (v138 == 1)
          {
            v6 = v165;
            v139 = v165;
            v140 = a4;
            if (a4[5].i8[2])
            {
              v126 = re::MXIManager::configureProxy(v165, a4, &v177, 1, 1, v110, v126);
              v139 = v165;
              v140 = a4;
              v141 = 1;
            }

            else
            {
              v141 = 0;
            }

            re::MXIManager::configureProxy(v139, v140, &v177, v141, 0, v110, v126);
          }

          else
          {
            *(v110 + 16) = 1;
            v6 = v165;
            if (*(v165 + 296) == 1)
            {
              v142 = *(v165 + 300);
            }

            else
            {
              v142 = a4[9].u16[2];
            }

            *(v110 + 96) = v142;
            if (*(v165 + 304) == 1)
            {
              v143 = *(v165 + 308);
            }

            else
            {
              v143 = a4[9].u16[3];
            }

            *(v110 + 100) = v143;
            if (*(v165 + 288) == 1)
            {
              *(v110 + 104) = *(v165 + 292);
            }

            if (*(v165 + 272) == 1)
            {
              *(v110 + 108) = *(v165 + 276);
            }

            if (*(v165 + 280) == 1)
            {
              *(v110 + 112) = *(v165 + 284);
            }
          }
        }

        v144 = *(v110 + 16);
        if (v144)
        {
          if (v177)
          {
            v145 = 0;
          }

          else
          {
            v146 = &a4[7].i8[8];
            if (*(v6 + 236))
            {
              v146 = v6 + 237;
            }

            v145 = *v146;
          }

          *(v110 + 224) = v145 & 1;
          *(v110 + 240) = v166;
          *(v110 + 256) = v167;
          v147 = a4 + 7;
          v148 = &a4[7].i32[1];
          if (*(v6 + 248))
          {
            v148 = (v6 + 252);
          }

          *(v110 + 272) = *v148;
          v149 = &a4[7].i32[3];
          if (*(v6 + 256))
          {
            v149 = (v6 + 260);
          }

          *(v110 + 276) = *v149;
          if (*(v6 + 240))
          {
            v147 = (v6 + 244);
          }

          *(v110 + 64) = v147->i32[0];
        }

        return v144 != 0;
      }

      return result;
    }

    v42 = v41;
    v43 = v6;
    if ([v41 textureType] == 3)
    {
      v174 = [v42 mipmapLevelCount];
      v44 = [v42 arrayLength];
      v45 = v44;
      if (v185 < v44)
      {
        re::DynamicArray<re::AssetHandle>::setCapacity(&v184, v44);
        goto LABEL_142;
      }

      if (v44)
      {
LABEL_142:
        v95 = 0;
        v96 = 1;
        do
        {
          v97 = [v42 newTextureViewWithPixelFormat:objc_msgSend(v42 textureType:sel_pixelFormat) levels:2 slices:0, v174, v95, 1];
          *v197 = v97;
          *&v197[8] = 0;
          *&buf[0].var0 = 0;
          memset(&buf[0].var1, 0, 24);
          memset(&v202[8], 0, 44);
          v203 = 0;
          v204 = 0;
          TextureAsset = re::TextureAsset::makeTextureAsset(v197, buf, 3, 0);
          if (*&v202[24])
          {
            if (v203)
            {
              (*(**&v202[24] + 40))();
            }

            v203 = 0;
            memset(&v202[24], 0, 24);
            ++*&v202[48];
          }

          if (*&v202[8])
          {
          }

          if (*&v197[8] != -1)
          {
            v99 = (off_1F5CF0430[*&v197[8]])(buf, v197);
          }

          v100 = re::TextureAsset::assetType(v99);
          (*(*v39 + 424))(buf, v39, TextureAsset, v100, 0, 0, 0);
          re::DynamicArray<re::AssetHandle>::add(&v184, buf);
          re::AssetHandle::~AssetHandle(buf);
          if (v97)
          {
          }

          v95 = v96;
        }

        while (v45 > v96++);
      }
    }

    v6 = v43;
    goto LABEL_74;
  }

  v34 = 0;
  while (v34 != 7)
  {
    v35 = *(v6 + v34++ + 9);
    if (v35)
    {
      v36 = v35 == v32;
    }

    else
    {
      v36 = 1;
    }

    if (v36)
    {
      if ((v34 - 1) < 7)
      {
        goto LABEL_63;
      }

      break;
    }
  }

  v65 = *re::mxiLogObjects(0);
  result = os_log_type_enabled(v65, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *&buf[0].var0 = 0;
    _os_log_error_impl(&dword_1E1C61000, v65, OS_LOG_TYPE_ERROR, "[MXIManager] All 8 MXI proxy materials already in use.", buf, 2u);
    return 0;
  }

  return result;
}

uint64_t re::HashTable<unsigned long long,re::MXIManager::ContextWithProxies,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::MXIManager::ContextWithProxies,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), &v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 816 * v6 + 16;
  }
}

__n128 re::MXIManager::configureProxy(uint64_t a1, uint64_t a2, _BYTE *a3, int a4, int a5, uint64_t a6, __n128 result)
{
  v7 = 296;
  if (a4 ^ 1 | a5)
  {
    v7 = 288;
  }

  v8 = *(a6 + v7);
  if (v8)
  {
    LOWORD(v13) = *(a2 + 150);
    if (*(a1 + 296) == 1)
    {
      v14 = *(a1 + 300);
    }

    else
    {
      LOWORD(v14) = *(a2 + 148);
    }

    v15 = *(a2 + 152);
    v16 = *(a2 + 132);
    if (*(a1 + 304) == 1)
    {
      v13 = *(a1 + 308);
    }

    *(a6 + 96) = v14;
    *(a6 + 100) = v13;
    if (v15)
    {
      v17 = -1;
    }

    else
    {
      v17 = 0;
    }

    __asm { FMOV            V1.2S, #1.0 }

    v22 = vbsl_s8(vdup_n_s32(v17), _D1, *v16.f32);
    v54 = v16;
    if ((*a3 & 1) == 0 && *v22.i32 == *(a6 + 304) && (*&v22.i32[1] == *(a6 + 308) ? (_ZF = v16.f32[3] == *(a6 + 316)) : (_ZF = 0), _ZF))
    {
      v30 = 0;
    }

    else
    {
      v65 = 0;
      v68 = 1;
      v66 = v22;
      v67 = v16.i32[3];
      if (v16.f32[3] > 0.0)
      {
        v65 = 16;
      }

      v69 = 0;
      v70 = 4;
      v64 = 65537;
      re::GeomMesh::GeomMesh(v63, 0);
      re::buildPlane(v63, &v64);
      v56 = 16842752;
      v57 = 1;
      v58 = 0;
      v59 = 0;
      v60 = 65793;
      v62 = 0u;
      memset(v61, 0, sizeof(v61));
      DWORD1(v62) = 0x7FFFFFFF;
      re::AssetHelper::makeMeshMemoryAsset(*(a1 + 208), v63, 1, 0, 0);
      v24 = v8[24];
      if (!v24)
      {
        v24 = re::ecs2::EntityComponentCollection::add((v8 + 6), re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType);
      }

      re::AssetHandle::operator=(v24 + 32, v55);
      re::ecs2::Component::enqueueMarkDirty(v24);
      v25 = v8[21];
      if (!v25)
      {
        v25 = re::ecs2::EntityComponentCollection::add((v8 + 6), re::ecs2::ComponentImpl<re::ecs2::HierarchicalFadeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
      }

      re::ecs2::Component::willSet(v25);
      *(v25 + 28) = 1065353216;
      re::ecs2::Component::didSet(v25);
      re::ecs2::NetworkComponent::markComponentDirty(v25, v26, v27, v28, v29);
      re::ecs2::Component::markDirty(v25);
      re::AssetHandle::~AssetHandle(v55);
      re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v61);
      re::GeomMesh::~GeomMesh(v63);
      v30 = 1;
    }

    v31 = re::ecs2::EntityComponentCollection::getOrAdd((v8 + 6), re::ecs2::ComponentImpl<re::ecs2::UISortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v32 = v31;
    v33.i64[0] = *(a2 + 132);
    v33.i32[2] = 0;
    v63[0] = v33;
    v34 = *(v31 + 48);
    v35 = *(v31 + 64);
    v36 = vcgtq_f32(v34, v35);
    v36.i32[3] = v36.i32[2];
    if ((vmaxvq_u32(v36) & 0x80000000) != 0)
    {
      v38 = *(v31 + 32);
    }

    else
    {
      v37 = vsubq_f32(v35, v34);
      v37.i32[3] = 0;
      v38 = vmaxnmq_f32(v37, 0);
    }

    v39 = vmvnq_s8(vceqq_f32(v33, v38));
    v39.i32[3] = v39.i32[2];
    v40 = vmaxvq_u32(v39);
    if ((v40 & 0x80000000) != 0)
    {
      re::ecs2::UISortingComponent::setExtents(v31, v63);
    }

    v41 = *(a1 + 8);
    WeakRetained = objc_loadWeakRetained((a2 + 784));
    v43 = WeakRetained;
    if (WeakRetained)
    {
      v44 = WeakRetained[18];
      v41 = WeakRetained[19];
    }

    else
    {
      v44 = -1;
    }

    v45 = v54;
    if (*(v32 + 80) == v44)
    {
      v46 = *(v32 + 84);
      if (v46 == v41)
      {
        if ((v40 & 0x80000000) == 0)
        {
          if (!WeakRetained)
          {
            goto LABEL_39;
          }

          goto LABEL_38;
        }

LABEL_64:
        re::ecs2::Component::markDirty(v32);
        v45 = v54;
        if (!v43)
        {
LABEL_39:
          v47 = *(a6 + 672);
          v48 = *(v47 + 256);
          if (!v48)
          {
            v49 = re::ecs2::EntityComponentCollection::add((v47 + 48), re::ecs2::ComponentImpl<re::ecs2::TransformComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
            v45 = v54;
            v48 = v49;
          }

          if ((*a3 & 1) != 0 || *(a6 + 312) != v45.f32[2])
          {
            re::ecs2::TransformComponent::setLocalPosition(v48, 0, vnegq_f32(v45).u32[2], 0);
            re::ecs2::Component::enqueueMarkDirty(v48);
            if (v15)
            {
              v52 = v54.i64[0];
            }

            else
            {
              v52 = 0x3F8000003F800000;
            }

            if (v15)
            {
              v53 = __PAIR64__(v54.u32[3], 1.0);
            }

            else
            {
              v53 = 1065353216;
            }

            re::ecs2::TransformComponent::setLocalScale(v48, v52, v53, 0);
            re::ecs2::Component::enqueueMarkDirty(v48);
          }

          else
          {
            if (v15)
            {
              v50 = v45.i64[0];
            }

            else
            {
              v50 = 0x3F8000003F800000;
            }

            if (v15)
            {
              v51 = __PAIR64__(v45.u32[3], 1.0);
            }

            else
            {
              v51 = 1065353216;
            }

            re::ecs2::TransformComponent::setLocalScale(v48, v50, v51, 0);
            re::ecs2::Component::enqueueMarkDirty(v48);
            if (!v30)
            {
              goto LABEL_59;
            }
          }

          *a3 = 1;
LABEL_59:
          result = v54;
          *(a6 + 304) = v54;
          *(a6 + 320) = v14;
          *(a6 + 322) = v13;
          *(a6 + 324) = v15;
          return result;
        }

LABEL_38:

        v45 = v54;
        goto LABEL_39;
      }
    }

    else
    {
      *(v32 + 80) = v44;
      v46 = *(v32 + 84);
    }

    if (v46 != v41)
    {
      *(v32 + 84) = v41;
    }

    goto LABEL_64;
  }

  return result;
}

double re::MXIManager::getMXIContextForEntity@<D0>(re::MXIManager *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18 = a2;
  v4 = re::HashTable<unsigned long long,re::MXIManager::ContextWithProxies,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(this + 16, &v18);
  if (v4)
  {
    v5 = v4;
    v6 = *v4;
    v7 = *(v4 + 32);
    *(a3 + 16) = *(v4 + 16);
    *(a3 + 32) = v7;
    *a3 = v6;
    re::StringID::StringID((a3 + 48), (v4 + 48));
    v8 = *(v5 + 64);
    v9 = *(v5 + 80);
    v10 = *(v5 + 112);
    *(a3 + 96) = *(v5 + 96);
    *(a3 + 112) = v10;
    *(a3 + 64) = v8;
    *(a3 + 80) = v9;
    re::AssetHandle::AssetHandle((a3 + 128), (v5 + 128));
    re::AssetHandle::AssetHandle((a3 + 152), (v5 + 152));
    re::DynamicArray<re::AssetHandle>::DynamicArray(a3 + 176, (v5 + 176));
    v11 = *(v5 + 216);
    *(a3 + 216) = v11;
    if (v11)
    {
      v12 = (v11 + 8);
    }

    v13 = *(v5 + 224);
    v14 = *(v5 + 240);
    v15 = *(v5 + 272);
    *(a3 + 256) = *(v5 + 256);
    *(a3 + 272) = v15;
    *(a3 + 224) = v13;
    *(a3 + 240) = v14;
  }

  else
  {
    *&v13 = 0;
    *(a3 + 240) = 0u;
    *(a3 + 256) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 96) = 0u;
    *(a3 + 112) = 0u;
    *(a3 + 128) = 0u;
    *(a3 + 80) = xmmword_1E3063230;
    *(a3 + 96) = xmmword_1E308C1A0;
    v16.i64[0] = 0x7F0000007FLL;
    v16.i64[1] = 0x7F0000007FLL;
    *(a3 + 224) = 0u;
    *(a3 + 240) = vnegq_f32(v16);
    *(a3 + 192) = 0u;
    *(a3 + 208) = 0u;
    *(a3 + 160) = 0u;
    *(a3 + 176) = 0u;
    *(a3 + 144) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    *(a3 + 56) = &str_67;
    *(a3 + 64) = 1065353216;
    *(a3 + 72) = 257;
    *(a3 + 74) = 1;
    *(a3 + 112) = 1045220557;
    *(a3 + 208) = 0;
    *(a3 + 216) = 0;
    *(a3 + 224) = 0;
    *(a3 + 116) = 0u;
    *(a3 + 132) = 0u;
    *(a3 + 148) = 0u;
    *(a3 + 164) = 0u;
    *(a3 + 180) = 0u;
    *(a3 + 196) = 0;
    *(a3 + 256) = v16;
    *(a3 + 272) = 0u;
    *(a3 + 272) = 0x3F80000000000002;
  }

  return *&v13;
}

void re::MXIManager::preloadMXIAssets(re::MXIManager *this)
{
  v2 = (this + 632);
  re::AssetManager::assetHandle(*(this + 26), "engine:mxiMaterial.rematerial", &v44);
  v3 = *v2;
  *v2 = v44;
  v44 = v3;
  v4 = *(this + 81);
  *(this + 81) = v45;
  v45 = v4;
  re::AssetHandle::~AssetHandle(&v44);
  re::AssetManager::assetHandle(*(this + 26), "engine:mxiMaterialAlphaThreshold.rematerial", &v44);
  v5 = *(this + 41);
  *(this + 41) = v44;
  v44 = v5;
  v6 = *(this + 84);
  *(this + 84) = v45;
  v45 = v6;
  re::AssetHandle::~AssetHandle(&v44);
  re::AssetManager::assetHandle(*(this + 26), "engine:mxiOffscreenMaterial.rematerial", &v44);
  v7 = v2[3];
  v2[3] = v44;
  v44 = v7;
  v8 = *(this + 87);
  *(this + 87) = v45;
  v45 = v8;
  re::AssetHandle::~AssetHandle(&v44);
  re::AssetManager::assetHandle(*(this + 26), "engine:mxiOffscreenOpaqueMaterial.rematerial", &v44);
  v9 = *(this + 44);
  *(this + 44) = v44;
  v44 = v9;
  v10 = *(this + 90);
  *(this + 90) = v45;
  v45 = v10;
  re::AssetHandle::~AssetHandle(&v44);
  re::AssetManager::assetHandle(*(this + 26), "engine:mxiOffscreenTransparentMaterial.rematerial", &v44);
  v11 = v2[6];
  v2[6] = v44;
  v44 = v11;
  v12 = *(this + 93);
  *(this + 93) = v45;
  v45 = v12;
  re::AssetHandle::~AssetHandle(&v44);
  re::AssetManager::assetHandle(*(this + 26), "engine:mxiAlphaMaterial.rematerial", &v44);
  v13 = *(this + 47);
  *(this + 47) = v44;
  v44 = v13;
  v14 = *(this + 96);
  *(this + 96) = v45;
  v45 = v14;
  re::AssetHandle::~AssetHandle(&v44);
  re::AssetManager::assetHandle(*(this + 26), "engine:mxiAlphaOffscreenMaterial.rematerial", &v44);
  v15 = v2[9];
  v2[9] = v44;
  v44 = v15;
  v16 = *(this + 99);
  *(this + 99) = v45;
  v45 = v16;
  re::AssetHandle::~AssetHandle(&v44);
  re::AssetManager::assetHandle(*(this + 26), "engine:mxiAlphaOffscreenOpaque.rematerial", &v44);
  v17 = *(this + 50);
  *(this + 50) = v44;
  v44 = v17;
  v18 = *(this + 102);
  *(this + 102) = v45;
  v45 = v18;
  re::AssetHandle::~AssetHandle(&v44);
  re::AssetManager::assetHandle(*(this + 26), "engine:mxiProxyMaterialIOS_Reprojection.rematerial", &v44);
  v19 = (v2 + 12);
  v20 = v2[12];
  v2[12] = v44;
  v44 = v20;
  v21 = *(this + 105);
  *(this + 105) = v45;
  v45 = v21;
  re::AssetHandle::~AssetHandle(&v44);
  v22 = 0;
  v23 = (this + 848);
  v24 = this + 848;
  do
  {
    re::AssetManager::assetHandle(*(this + 26), off_1E871DA28[v22], &v44);
    v25 = *v24;
    *v24 = v44;
    v44 = v25;
    v26 = *(v24 + 2);
    *(v24 + 2) = v45;
    v45 = v26;
    re::AssetHandle::~AssetHandle(&v44);
    ++v22;
    v24 += 24;
  }

  while (v22 != 8);
  re::AssetManager::assetHandle(*(this + 26), "engine:mxiDualMeshPartOpaqueMaterial.rematerial", &v44);
  v27 = *(this + 65);
  *(this + 65) = v44;
  v44 = v27;
  v28 = *(this + 132);
  *(this + 132) = v45;
  v45 = v28;
  re::AssetHandle::~AssetHandle(&v44);
  re::AssetManager::assetHandle(*(this + 26), "engine:mxiDualMeshPartTransparentMaterial.rematerial", &v44);
  v29 = v2[27];
  *(this + 1064) = v44;
  v44 = v29;
  v30 = *(this + 135);
  *(this + 135) = v45;
  v45 = v30;
  re::AssetHandle::~AssetHandle(&v44);
  re::AssetManager::assetHandle(*(this + 26), "engine:mxiDualMeshPartAlphaThresholdMaterial.rematerial", &v44);
  v31 = *(this + 68);
  *(this + 68) = v44;
  v44 = v31;
  v32 = *(this + 138);
  *(this + 138) = v45;
  v45 = v32;
  re::AssetHandle::~AssetHandle(&v44);
  re::AssetManager::assetHandle(*(this + 26), "engine:mxiDualMeshPartDrawAlphaOnlyMaterial.rematerial", &v44);
  v33 = v2[30];
  *(this + 1112) = v44;
  v44 = v33;
  v34 = *(this + 141);
  *(this + 141) = v45;
  v45 = v34;
  re::AssetHandle::~AssetHandle(&v44);
  re::AssetManager::assetHandle(*(this + 26), "engine:mxiDualMeshPartDrawOnesMaterial.rematerial", &v44);
  v35 = *(this + 71);
  *(this + 71) = v44;
  v44 = v35;
  v36 = *(this + 144);
  *(this + 144) = v45;
  v45 = v36;
  re::AssetHandle::~AssetHandle(&v44);
  if (*(this + 1200))
  {
    re::AssetManager::assetHandle(*(this + 26), "engine:engineDefaults.rematerialdefinition", &v44);
    re::DynamicArray<re::AssetHandle>::add((this + 1160), &v44);
    re::AssetHandle::~AssetHandle(&v44);
    re::AssetManager::assetHandle(*(this + 26), "engine:mxi.metallib", &v44);
    re::DynamicArray<re::AssetHandle>::add((this + 1160), &v44);
    re::AssetHandle::~AssetHandle(&v44);
    re::AssetManager::assetHandle(*(this + 26), "engine:mxiOffscreenMaterial.rematerial", &v44);
    re::DynamicArray<re::AssetHandle>::add((this + 1160), &v44);
    re::AssetHandle::~AssetHandle(&v44);
    re::AssetManager::assetHandle(*(this + 26), "engine:mxiOffscreenOpaqueMaterial.rematerial", &v44);
    re::DynamicArray<re::AssetHandle>::add((this + 1160), &v44);
    re::AssetHandle::~AssetHandle(&v44);
    re::AssetManager::assetHandle(*(this + 26), "engine:mxiOffscreenTransparentMaterial.rematerial", &v44);
    re::DynamicArray<re::AssetHandle>::add((this + 1160), &v44);
    re::AssetHandle::~AssetHandle(&v44);
    re::AssetManager::assetHandle(*(this + 26), "engine:mxiProxyMaterialIOS_Reprojection.rematerialdefinition", &v44);
    re::DynamicArray<re::AssetHandle>::add((this + 1160), &v44);
    re::AssetHandle::~AssetHandle(&v44);
    re::AssetManager::assetHandle(*(this + 26), "engine:BuiltinRenderGraphResources/Common/separateDepth.rematerialdefinition", &v44);
    re::DynamicArray<re::AssetHandle>::add((this + 1160), &v44);
    re::AssetHandle::~AssetHandle(&v44);
    re::AssetManager::assetHandle(*(this + 26), "engine:BuiltinRenderGraphResources/Common/separateDepth.rematerial", &v44);
    re::DynamicArray<re::AssetHandle>::add((this + 1160), &v44);
    re::AssetHandle::~AssetHandle(&v44);
    re::AssetManager::assetHandle(*(this + 26), "engine:BuiltinRenderGraphResources/Common/separateStencil.rematerialdefinition", &v44);
    re::DynamicArray<re::AssetHandle>::add((this + 1160), &v44);
    re::AssetHandle::~AssetHandle(&v44);
    re::AssetManager::assetHandle(*(this + 26), "engine:BuiltinRenderGraphResources/Common/separateStencil.rematerial", &v44);
    re::DynamicArray<re::AssetHandle>::add((this + 1160), &v44);
    re::AssetHandle::~AssetHandle(&v44);
    v37 = *(this + 147);
    if (v37)
    {
      v38 = *(this + 149);
      v39 = 24 * v37;
      do
      {
        re::AssetHandle::AssetHandle(&v44, v38);
        re::AssetHandle::loadAsync(&v44);
        re::AssetHandle::~AssetHandle(&v44);
        v38 = (v38 + 24);
        v39 -= 24;
      }

      while (v39);
    }

    if (*(this + 1201))
    {
      v40 = (v2 + 3);
      v41 = (this + 704);
      v42 = (v2 + 6);
    }

    else
    {
      v40 = (v2 + 27);
      v41 = (this + 1088);
      v42 = (v2 + 30);
      re::AssetHandle::loadAsync(v2);
      re::AssetHandle::loadAsync((this + 656));
      re::AssetHandle::loadAsync((v2 + 3));
      re::AssetHandle::loadAsync((this + 704));
      re::AssetHandle::loadAsync((v2 + 6));
      re::AssetHandle::loadAsync((this + 752));
      re::AssetHandle::loadAsync((v2 + 9));
      re::AssetHandle::loadAsync((this + 800));
      re::AssetHandle::loadAsync((v2 + 12));
      v43 = 8;
      do
      {
        re::AssetHandle::loadAsync(v23);
        v23 = (v23 + 24);
        --v43;
      }

      while (v43);
      re::AssetHandle::loadAsync((this + 1040));
      v19 = (this + 1136);
    }

    re::AssetHandle::loadAsync(v40);
    re::AssetHandle::loadAsync(v41);
    re::AssetHandle::loadAsync(v42);
    re::AssetHandle::loadAsync(v19);
  }
}

void re::MXIManager::setupMXIProxy(uint64_t *a1, re::ecs2::Entity *a2, uint64_t a3, int a4, int a5, uint64_t a6, int a7)
{
  v13 = 0;
  v39 = *MEMORY[0x1E69E9840];
  v14 = a1 + 8;
  for (i = a1 + 106; ; i += 3)
  {
    v16 = v14[v13];
    if (!v16 || v16 == a3)
    {
      break;
    }

    if (++v13 == 8)
    {
      v18 = *re::mxiLogObjects(a1);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_ERROR, "[MXIManager] Unable to allocate MXI proxy material, All 8 MXI proxy materials used", buf, 2u);
      }

      return;
    }
  }

  v14[v13] = a3;
  v19 = re::ecs2::EntityFactory::instance(a1);
  re::ecs2::EntityFactory::make(&v36, v19, 4uLL);
  v20 = v36;
  re::ecs2::EntityComponentCollection::remove((v36 + 48), re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  v22 = *(v20 + 24);
  if (!v22)
  {
    v21 = re::ecs2::EntityComponentCollection::add((v20 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType);
    v22 = v21;
  }

  if (*(a6 + 73) == 1 && *(a1 + 11) <= 1u)
  {
    i = a1 + 103;
  }

  v23 = i[1];
  if (!v23 || (v24 = atomic_load((v23 + 896)), v24 != 2))
  {
    v25 = *re::mxiLogObjects(v21);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = v25;
      re::AssetHandle::getDescription(i, 0, buf);
      v27 = (v34 & 1) != 0 ? *&v35[7] : v35;
      *v37 = 136315138;
      v38 = v27;
      _os_log_impl(&dword_1E1C61000, v26, OS_LOG_TYPE_DEFAULT, "[MXIManager] MXI material not Loaded: %s", v37, 0xCu);

      if (*buf)
      {
        if (v34)
        {
          (*(**buf + 40))();
        }
      }
    }

    re::AssetHandle::loadNow(i[1], 0);
  }

  re::DynamicArray<re::AssetHandle>::add((v22 + 56), i);
  re::ecs2::Component::markDirty(v22);
  if (a4)
  {
    v28 = re::ecs2::EntityComponentCollection::getOrAdd((v36 + 48), re::ecs2::ComponentImpl<re::ecs2::VisualProxyScopeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    *(v28 + 28) = 1 << (a5 ^ 1);
    re::ecs2::Component::markDirty(v28);
  }

  if (a7)
  {
    re::make::shared::object<re::MaterialParameterBlock,re::RenderManager *&>((a1 + 27), buf);
    re::MaterialParameterBlock::setBool(v32, *buf, "performSRGBConversion", 1);
    v32[0] = 0;
    v29 = *(v36 + 26);
    if (!v29)
    {
      v29 = re::ecs2::EntityComponentCollection::add((v36 + 48), re::ecs2::ComponentImpl<re::ecs2::MaterialParameterBlockArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    }

    re::DynamicArray<re::SharedPtr<re::ResourceSharingManager::Completion>>::clear((v29 + 9));
    re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::add((v29 + 9), buf);
    re::ecs2::Component::markDirty(v29);
    if (*buf)
    {
    }
  }

  v30 = v36;
  re::ecs2::Entity::setParentInternal(v36, a2, 0xFFFFFFFFFFFFFFFFLL);
  v31 = *(v30 + 39);
  if (a4 && !a5)
  {
    *(a6 + 32) = v31;
    *(a6 + 296) = v30;
  }

  else
  {
    *(a6 + 16) = v31;
    *(a6 + 288) = v30;
  }

  *(a6 + 40) = v13;
}

void re::MXIManager::createMXIEntityForSplit(re::ecs2::EntityFactory *a1, re::ecs2::Entity *a2, float32x2_t *a3, re::MeshAsset *a4, uint64_t a5, int a6, uint64_t a7)
{
  v116 = *MEMORY[0x1E69E9840];
  v14 = re::ecs2::EntityFactory::instance(a1);
  re::ecs2::EntityFactory::make(&v106, v14, 4uLL);
  v15 = v106;
  re::ecs2::EntityComponentCollection::remove((v106 + 48), re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  v16 = re::AssetHandle::loadedAsset<re::MeshAsset>(a4);
  if (!v16)
  {
    goto LABEL_6;
  }

  v17 = 32;
  if (*(v16 + 1264))
  {
    v17 = 608;
  }

  if (*(v16 + v17))
  {
    v18 = re::MeshAsset::partCountForModel(v16, 0) == 2;
  }

  else
  {
LABEL_6:
    v18 = 0;
  }

  v19 = *(v15 + 24);
  if (!v19)
  {
    v19 = re::ecs2::EntityComponentCollection::add((v15 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType);
  }

  re::AssetHandle::operator=((v19 + 4), a4);
  re::DynamicArray<re::AssetHandle>::clear((v19 + 7));
  if (v18)
  {
    v107 = 0;
    v108 = 0;
    v109 = 0;
    if (a3[10].i8[2] == 2 && a6)
    {
      v20 = 1112;
      if (a3[10].i8[0])
      {
        v20 = 776;
      }

      v21 = re::AssetHandle::AssetHandle(&v114, (a1 + v20));
      if (!*(&v114 + 1) || (v22 = atomic_load((*(&v114 + 1) + 896)), v22 != 2))
      {
        v23 = *re::mxiLogObjects(v21);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = v23;
          re::AssetHandle::getDescription(&v114, 0, &v89);
          v25 = (BYTE8(v89) & 1) != 0 ? v90 : (&v89 + 9);
          LODWORD(buf) = 136315138;
          *(&buf + 4) = v25;
          _os_log_impl(&dword_1E1C61000, v24, OS_LOG_TYPE_DEFAULT, "[MXIManager] MXI material not Loaded: %s", &buf, 0xCu);

          if (v89)
          {
            if (BYTE8(v89))
            {
              (*(*v89 + 40))();
            }
          }
        }

        re::AssetHandle::loadNow(*(&v114 + 1), 0);
      }

      v26 = 1136;
      if (a3[10].i8[0])
      {
        v26 = 800;
      }

      v27 = re::AssetHandle::AssetHandle(&buf, (a1 + v26));
      if (*(&buf + 1))
      {
        v28 = atomic_load((*(&buf + 1) + 896));
        if (v28 == 2)
        {
          goto LABEL_68;
        }
      }

      v29 = *re::mxiLogObjects(v27);
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
LABEL_67:
        re::AssetHandle::loadNow(*(&buf + 1), 0);
LABEL_68:
        re::DynamicArray<re::AssetHandle>::add((v19 + 7), &v114);
        re::DynamicArray<re::AssetHandle>::add((v19 + 7), &buf);
        re::AssetHandle::~AssetHandle(&buf);
        re::AssetHandle::~AssetHandle(&v114);
        goto LABEL_82;
      }

      v84 = a7;
      v30 = a2;
      v31 = v29;
      re::AssetHandle::getDescription(&buf, 0, &v89);
      if (BYTE8(v89))
      {
        v32 = v90;
      }

      else
      {
        v32 = &v89 + 9;
      }

      *v110 = 136315138;
      v111 = v32;
    }

    else
    {
      v114 = 0uLL;
      v115 = 0;
      if (a3[10].i8[0])
      {
        v36 = 728;
      }

      else
      {
        v36 = 1064;
        if (a3[75].f32[1] > 0.0)
        {
          v36 = 1088;
        }
      }

      v37 = re::AssetHandle::operator=(&v114, (a1 + v36));
      if (!*(&v114 + 1) || (v38 = atomic_load((*(&v114 + 1) + 896)), v38 != 2))
      {
        v39 = *re::mxiLogObjects(v37);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          v40 = v39;
          re::AssetHandle::getDescription(&v114, 0, &v89);
          v41 = (BYTE8(v89) & 1) != 0 ? v90 : (&v89 + 9);
          LODWORD(buf) = 136315138;
          *(&buf + 4) = v41;
          _os_log_impl(&dword_1E1C61000, v40, OS_LOG_TYPE_DEFAULT, "[MXIManager] MXI material not Loaded: %s", &buf, 0xCu);

          if (v89)
          {
            if (BYTE8(v89))
            {
              (*(*v89 + 40))();
            }
          }
        }

        re::AssetHandle::loadNow(*(&v114 + 1), 0);
      }

      buf = 0uLL;
      v113 = 0;
      v42 = 1040;
      if (a3[10].i8[0])
      {
        v42 = 704;
      }

      v43 = re::AssetHandle::operator=(&buf, (a1 + v42));
      if (*(&buf + 1))
      {
        v44 = atomic_load((*(&buf + 1) + 896));
        if (v44 == 2)
        {
          goto LABEL_68;
        }
      }

      v45 = *re::mxiLogObjects(v43);
      if (!os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_67;
      }

      v84 = a7;
      v30 = a2;
      v31 = v45;
      re::AssetHandle::getDescription(&buf, 0, &v89);
      if (BYTE8(v89))
      {
        v46 = v90;
      }

      else
      {
        v46 = &v89 + 9;
      }

      *v110 = 136315138;
      v111 = v46;
    }

    _os_log_impl(&dword_1E1C61000, v31, OS_LOG_TYPE_DEFAULT, "[MXIManager] MXI material not Loaded: %s", v110, 0xCu);

    if (v89 && (BYTE8(v89) & 1) != 0)
    {
      (*(*v89 + 40))();
    }

    a2 = v30;
    a7 = v84;
    goto LABEL_67;
  }

  v107 = 0;
  v108 = 0;
  v109 = 0;
  v33 = a3[10].u8[0];
  if (a3[10].i8[2] == 2 && a6)
  {
    _ZF = v33 == 0;
    v35 = 752;
    if (!_ZF)
    {
      v35 = 776;
    }
  }

  else if (v33)
  {
    v35 = 680;
  }

  else
  {
    v35 = 632;
    if (a3[75].f32[1] > 0.0)
    {
      v35 = 656;
    }
  }

  v47 = re::AssetHandle::operator=(&v107, (a1 + v35));
  if (!v108 || (v48 = atomic_load((v108 + 896)), v48 != 2))
  {
    v49 = *re::mxiLogObjects(v47);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      v50 = v49;
      re::AssetHandle::getDescription(&v107, 0, &v89);
      v51 = (BYTE8(v89) & 1) != 0 ? v90 : (&v89 + 9);
      LODWORD(v114) = 136315138;
      *(&v114 + 4) = v51;
      _os_log_impl(&dword_1E1C61000, v50, OS_LOG_TYPE_DEFAULT, "[MXIManager] MXI material not Loaded: %s", &v114, 0xCu);

      if (v89)
      {
        if (BYTE8(v89))
        {
          (*(*v89 + 40))();
        }
      }
    }

    re::AssetHandle::loadNow(v108, 0);
  }

  re::DynamicArray<re::AssetHandle>::add((v19 + 7), &v107);
LABEL_82:
  re::AssetHandle::~AssetHandle(&v107);
  re::ecs2::Component::markDirty(v19);
  re::make::shared::object<re::MaterialParameterBlock,re::RenderManager *&>((a1 + 216), &v114);
  v52 = a3[10].u8[2];
  switch(v52)
  {
    case 1:
      re::MaterialParameterBlock::setFloat(v103, v114, "splitDepth", a3[10].f32[1]);
      v103[0] = 0;
      re::MaterialParameterBlock::setUint(v102, v114, "vertexStatusToDraw", a6 ^ 1);
      v102[0] = 0;
      break;
    case 2:
      if (a6)
      {
        v62 = a3[10].f32[1];
      }

      else
      {
        v62 = 10000.0;
      }

      re::MaterialParameterBlock::setFloat(v98, v114, "splitDepth", v62);
      v98[0] = 0;
      re::MaterialParameterBlock::setUint(v97, v114, "vertexStatusToDraw", 0);
      v97[0] = 0;
      if (a3[11].i8[0] == 1 && a6)
      {
        __asm { FMOV            V1.2S, #-1.0 }

        v64 = a3[12];
        v65 = vmla_f32(COERCE_FLOAT32X2_T(-_D1), COERCE_FLOAT32X2_T(-2.00000048), v64);
        v66 = vsub_f32(a3[13], v64);
        __asm { FMOV            V2.2S, #1.0 }

        re::MaterialParameterBlock::setVector4F(v114, "screenUVSubRect", v65, *&vdiv_f32(_D2, v66), v96);
        v96[0] = 0;
      }

      break;
    case 3:
      v53 = 0.0;
      if (a6)
      {
        v53 = a3[10].f32[1];
      }

      re::MaterialParameterBlock::setFloat(v101, v114, "splitDepth", v53);
      v101[0] = 0;
      re::MaterialParameterBlock::setUint(v100, v114, "vertexStatusToDraw", a6 ^ 1);
      v100[0] = 0;
      if (a3[11].i8[0] == 1 && a6)
      {
        __asm { FMOV            V1.2S, #-1.0 }

        v58 = a3[12];
        v59 = vmla_f32(COERCE_FLOAT32X2_T(-_D1), COERCE_FLOAT32X2_T(-2.00000048), v58);
        v60 = vsub_f32(a3[13], v58);
        __asm { FMOV            V2.2S, #1.0 }

        re::MaterialParameterBlock::setVector4F(v114, "screenUVSubRect", v59, *&vdiv_f32(_D2, v60), v99);
        v99[0] = 0;
      }

      break;
    default:
      re::MaterialParameterBlock::setFloat(v105, v114, "splitDepth", 10000.0);
      v105[0] = 0;
      re::MaterialParameterBlock::setUint(v104, v114, "vertexStatusToDraw", 0);
      v104[0] = 0;
      break;
  }

  if (a3[10].i8[2])
  {
    v68 = re::ecs2::EntityComponentCollection::getOrAdd((v106 + 48), re::ecs2::ComponentImpl<re::ecs2::VisualProxyScopeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    *(v68 + 28) = 1 << (a6 ^ 1);
    re::ecs2::Component::markDirty(v68);
  }

  if (*(a5 + 16))
  {
    v69 = 0;
    v70 = 0;
    v71 = &kMXIMaterialParametersTextureArray;
    do
    {
      v72 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>((*(a5 + 32) + v69));
      v73 = *v71;
      v71 += 2;
      v94 = v73 & 0x7FFFFFFFFFFFFFFFLL;
      re::MaterialParameterBlock::setTextureHandle(v114, &v94, (v72 + 8), v95);
      v94 = 0;
      v95[0] = 0;
      ++v70;
      v69 += 24;
    }

    while (v70 < *(a5 + 16));
  }

  v74 = a3[70].f32[1];
  v75 = a3[71].f32[0];
  v76 = tanf(v74 * 0.5);
  LODWORD(v77) = 0;
  *(&v77 + 1) = 1.0 / v76;
  v89 = COERCE_UNSIGNED_INT((1.0 / v76) / v75);
  v90 = v77;
  v91 = xmmword_1E308C1B0;
  v92 = xmmword_1E308C1C0;
  v107 = 0x131B97A52F2A913;
  re::MaterialParameterBlock::setConstant(v114, &v107, 0x40uLL, &v89, 50, v93);
  v93[0] = 0;
  v78 = tan(v74 * 0.5);
  *&v78 = v78 + v78;
  v79.f32[0] = v75 * *&v78;
  v79.i32[1] = LODWORD(v78);
  *&v89 = vdiv_f32(0x4000000040000000, v79);
  v107 = 0x273B31D9098848B8;
  re::MaterialParameterBlock::setConstant(v114, &v107, 8uLL, &v89, 32, v88);
  v88[0] = 0;
  if (a3[75].f32[1] > 0.0)
  {
    LODWORD(v107) = a3[75].i32[1];
    *&v89 = 0x2AD486A8BA18FCADLL;
    re::MaterialParameterBlock::setConstant(v114, &v89, 4uLL, &v107, 1, v87);
    v87[0] = 0;
  }

  LODWORD(v107) = a3[71].i32[0];
  *&v89 = 0x1259B4641194293;
  re::MaterialParameterBlock::setConstant(v114, &v89, 4uLL, &v107, 1, v86);
  v86[0] = 0;
  LOBYTE(v107) = a3[74].i8[0];
  *&v89 = 0x7159284529FD2E68;
  re::MaterialParameterBlock::setConstant(v114, &v89, 1uLL, &v107, 2, v85);
  v85[0] = 0;
  v80 = *(v106 + 26);
  if (!v80)
  {
    v80 = re::ecs2::EntityComponentCollection::add((v106 + 48), re::ecs2::ComponentImpl<re::ecs2::MaterialParameterBlockArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  }

  re::DynamicArray<re::SharedPtr<re::ResourceSharingManager::Completion>>::clear((v80 + 9));
  re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::add((v80 + 9), &v114);
  if (v18)
  {
    re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::add((v80 + 9), &v114);
  }

  re::ecs2::Component::markDirty(v80);
  v81 = v106;
  v82 = re::ecs2::EntityComponentCollection::add((v106 + 48), re::ecs2::ComponentImpl<re::ecs2::ClippingOptOutComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
  *(v82 + 25) = 1;
  re::ecs2::Component::markDirty(v82);
  v83 = *(v81 + 39);
  *(a7 + 8) = v83;
  if (a3[10].i8[2] && (a6 & 1) == 0)
  {
    *(a7 + 24) = v83;
  }

  re::ecs2::Entity::setParentInternal(v81, a2, 0xFFFFFFFFFFFFFFFFLL);
  if (v114)
  {
  }
}

__n128 re::MXIContext::ReprojectionContext::notifyFrame@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double *a3@<X2>, double *a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, _DWORD *a7@<X6>, uint64_t a8@<X8>)
{
  if (*(a1 + 24) != a5)
  {
    v16 = 0;
    ++*(a1 + 252);
    *(a1 + 256) = 0;
    v17 = *a4;
    v18 = *(a4 + 2);
    v19 = *(a4 + 4);
    v20 = *(a4 + 6);
    v21 = *(a3 + 1);
    v22 = *(a3 + 2);
    v23 = *(a3 + 3);
    v169 = *a3;
    v170 = v21;
    v171 = v22;
    v172 = v23;
    do
    {
      *(&v173 + v16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v17, COERCE_FLOAT(*(&v169 + v16))), v18, *(&v169 + v16), 1), v19, *(&v169 + v16), 2), v20, *(&v169 + v16), 3);
      v16 += 16;
    }

    while (v16 != 64);
    v25 = v173;
    v24 = v174;
    v26 = v175;
    v27 = v176;
    v167 = v176;
    v168 = v175;
    v165 = v173;
    v166 = v174;
    if (*a2 == 1 && (a6 & 1) == 0)
    {
      v28 = 0;
      v29 = *(a1 + 96);
      v30 = *(a1 + 112);
      v31 = *(a1 + 128);
      v32 = *(a1 + 144);
      v33 = *(a1 + 48);
      v34 = *(a1 + 64);
      v35 = *(a1 + 80);
      v169 = *(a1 + 32);
      v170 = v33;
      v171 = v34;
      v172 = v35;
      do
      {
        *(&v173 + v28) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v29, COERCE_FLOAT(*(&v169 + v28))), v30, *(&v169 + v28), 1), v31, *(&v169 + v28), 2), v32, *(&v169 + v28), 3);
        v28 += 16;
      }

      while (v28 != 64);
      v36.columns[0] = v173;
      v36.columns[1] = v174;
      v36.columns[2] = v175;
      v36.columns[3] = v176;
      v38 = *(a2 + 16);
      v37 = *(a2 + 32);
      v39 = vcgtq_f32(v38, v37);
      v39.i32[3] = v39.i32[2];
      if ((vmaxvq_u32(v39) & 0x80000000) != 0)
      {
        v177 = __invert_f4(v36);
        v87 = 0;
        v169 = v165;
        v170 = v166;
        v171 = v168;
        v172 = v167;
        do
        {
          *(&v173 + v87) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v177.columns[0], COERCE_FLOAT(*(&v169 + v87))), v177.columns[1], *(&v169 + v87), 1), v177.columns[2], *(&v169 + v87), 2), v177.columns[3], *(&v169 + v87), 3);
          v87 += 16;
        }

        while (v87 != 64);
        v88 = vnegq_f32(v173);
        v89 = vsubq_f32(xmmword_1E308C1D0, vaddq_f32(v176, vmlaq_f32(vsubq_f32(v174, v173), 0, v175)));
        v90 = vmulq_f32(v89, v89);
        v91 = fmaxf(vaddv_f32(vadd_f32(*v90.i8, *&vextq_s8(v90, v90, 8uLL))), 0.0);
        v92 = vsubq_f32(xmmword_1E308C1E0, vaddq_f32(v176, vmlaq_f32(vaddq_f32(v173, v174), 0, v175)));
        v93 = vmulq_f32(v92, v92);
        v94 = vaddv_f32(vadd_f32(*v93.i8, *&vextq_s8(v93, v93, 8uLL)));
        if (v91 < v94)
        {
          v91 = v94;
        }

        __asm { FMOV            V7.4S, #-1.0 }

        v100 = vmulq_f32(v173, 0);
        v101 = vsubq_f32(xmmword_1E308C1F0, vaddq_f32(v176, vmlaq_f32(vmlaq_f32(v173, _Q7, v174), 0, v175)));
        v102 = vmulq_f32(v101, v101);
        v103 = vaddv_f32(vadd_f32(*v102.i8, *&vextq_s8(v102, v102, 8uLL)));
        if (v91 >= v103)
        {
          v103 = v91;
        }

        v104 = vsubq_f32(xmmword_1E308C200, vaddq_f32(v176, vmlaq_f32(vmlaq_f32(v88, _Q7, v174), 0, v175)));
        v105 = vmulq_f32(v104, v104);
        v106 = vaddv_f32(vadd_f32(*v105.i8, *&vextq_s8(v105, v105, 8uLL)));
        if (v103 >= v106)
        {
          v106 = v103;
        }

        v107 = vsubq_f32(xmmword_1E30474D0, vaddq_f32(v176, vmlaq_f32(vmlaq_f32(v100, 0, v174), 0, v175)));
        v108 = vmulq_f32(v107, v107);
        v109 = vaddv_f32(vadd_f32(*v108.i8, *&vextq_s8(v108, v108, 8uLL)));
        if (v106 >= v109)
        {
          v109 = v106;
        }

        v86 = sqrtf(v109) * 5.0;
      }

      else
      {
        v40.i64[0] = 0x3F0000003F000000;
        v40.i64[1] = 0x3F0000003F000000;
        v41 = vmulq_f32(vaddq_f32(v38, v37), v40);
        v42 = vmulq_n_f32(v173, v41.f32[0]);
        v43 = vmlaq_lane_f32(v42, v174, *v41.f32, 1);
        v44 = vaddq_f32(v176, vmlaq_laneq_f32(v43, v175, v41, 2));
        v45 = vmulq_n_f32(v25, v41.f32[0]);
        v46 = vmlaq_lane_f32(v45, v24, *v41.f32, 1);
        v47 = vaddq_f32(v27, vmlaq_laneq_f32(v46, v26, v41, 2));
        v48 = vsubq_f32(vdivq_f32(v44, vdupq_laneq_s32(v44, 3)), vdivq_f32(v47, vdupq_laneq_s32(v47, 3)));
        v49 = vmulq_f32(v48, v48);
        v50 = fmaxf(v49.f32[2] + vaddv_f32(*v49.f32), 0.0);
        v51 = vaddq_f32(v176, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v173, v37.f32[0]), v174, *v41.f32, 1), v175, v41, 2));
        v52 = vaddq_f32(v27, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v25, v37.f32[0]), v24, *v41.f32, 1), v26, v41, 2));
        v53 = vsubq_f32(vdivq_f32(v51, vdupq_laneq_s32(v51, 3)), vdivq_f32(v52, vdupq_laneq_s32(v52, 3)));
        v54 = vmulq_f32(v53, v53);
        v55 = vaddv_f32(*v54.f32);
        if (v50 < (v54.f32[2] + v55))
        {
          v50 = v54.f32[2] + v55;
        }

        v56 = vaddq_f32(v176, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v173, v38.f32[0]), v174, *v41.f32, 1), v175, v41, 2));
        v57 = vaddq_f32(v27, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v25, v38.f32[0]), v24, *v41.f32, 1), v26, v41, 2));
        v58 = vsubq_f32(vdivq_f32(v56, vdupq_laneq_s32(v56, 3)), vdivq_f32(v57, vdupq_laneq_s32(v57, 3)));
        v59 = vmulq_f32(v58, v58);
        v60 = v59.f32[2] + vaddv_f32(*v59.f32);
        if (v50 >= v60)
        {
          v60 = v50;
        }

        LODWORD(v61) = vshrq_n_u64(v37, 0x20uLL).u32[0];
        v62 = vaddq_f32(v176, vmlaq_laneq_f32(vmlaq_n_f32(v42, v174, v61), v175, v41, 2));
        v63 = vaddq_f32(v27, vmlaq_laneq_f32(vmlaq_n_f32(v45, v24, v61), v26, v41, 2));
        v64 = vsubq_f32(vdivq_f32(v62, vdupq_laneq_s32(v62, 3)), vdivq_f32(v63, vdupq_laneq_s32(v63, 3)));
        v65 = vmulq_f32(v64, v64);
        v66 = v65.f32[2] + vaddv_f32(*v65.f32);
        v67 = *(a2 + 20);
        v68 = vaddq_f32(v176, vmlaq_laneq_f32(vmlaq_n_f32(v42, v174, *&v67), v175, v41, 2));
        v69 = vdupq_laneq_s32(v68, 3);
        if (v60 < v66)
        {
          v60 = v66;
        }

        v70 = vaddq_f32(v27, vmlaq_laneq_f32(vmlaq_n_f32(v45, v24, *&v67), v26, v41, 2));
        v71 = vsubq_f32(vdivq_f32(v68, v69), vdivq_f32(v70, vdupq_laneq_s32(v70, 3)));
        v72 = vmulq_f32(v71, v71);
        v73 = vaddv_f32(*v72.f32);
        if (v60 < (v72.f32[2] + v73))
        {
          v60 = v72.f32[2] + v73;
        }

        v74 = *(a2 + 40);
        v75 = vaddq_f32(v176, vmlaq_n_f32(v43, v175, *&v74));
        v76 = vaddq_f32(v27, vmlaq_n_f32(v46, v26, *&v74));
        v77 = vsubq_f32(vdivq_f32(v75, vdupq_laneq_s32(v75, 3)), vdivq_f32(v76, vdupq_laneq_s32(v76, 3)));
        v78 = vmulq_f32(v77, v77);
        v79 = vaddv_f32(*v78.f32);
        if (v60 < (v78.f32[2] + v79))
        {
          v60 = v78.f32[2] + v79;
        }

        v80 = *(a2 + 24);
        v81 = vaddq_f32(v176, vmlaq_n_f32(v43, v175, *&v80));
        v82 = vaddq_f32(v27, vmlaq_n_f32(v46, v26, *&v80));
        v83 = vsubq_f32(vdivq_f32(v81, vdupq_laneq_s32(v81, 3)), vdivq_f32(v82, vdupq_laneq_s32(v82, 3)));
        v84 = vmulq_f32(v83, v83);
        v85 = vaddv_f32(*v84.f32);
        if (v60 < (v84.f32[2] + v85))
        {
          v60 = v84.f32[2] + v85;
        }

        v86 = sqrtf(v60);
      }

      *(a1 + 240) = v86;
      v110 = *(a2 + 48);
      v111 = v86 < *(a2 + 52) && v110 > 1;
      if (v111 || v86 < *(a1 + 248) && v110 > *(a1 + 252))
      {
        *(a1 + 256) = 1;
      }
    }

    v112 = re::internal::enableSignposts(0, 0);
    if (v112)
    {
      if (*(a1 + 256))
      {
        v120 = "Reprojs";
      }

      else
      {
        v120 = "Renders";
      }

      re::packCharArrayToUInt64ForAriadne(v120, 0);
      v112 = kdebug_trace();
    }

    if (*(a1 + 256))
    {
      *&v121 = re::createWarpMatrixForSourceProjection(*(a1 + 96), *(a1 + 112), *(a1 + 128), *(a1 + 144), *(a1 + 32), *(a1 + 48), *(a1 + 64), *(a1 + 80), v112, v113, v114, v115, v116, v117, v118, v119, *a4, *(a4 + 2), *(a4 + 4), *(a4 + 6), *a3, *(a3 + 2), *(a3 + 4), *(a3 + 6));
      v122 = *(a1 + 224);
      *(a1 + 160) = v121;
      *(a1 + 176) = v123;
      *(a1 + 192) = v124;
      *(a1 + 208) = v125;
      if ((v122 & 1) == 0)
      {
        *(a1 + 224) = 1;
      }
    }

    else
    {
      v126 = *(a2 + 16);
      v127 = *(a2 + 32);
      v128 = vcgtq_f32(v126, v127);
      v128.i32[3] = v128.i32[2];
      if ((vmaxvq_u32(v128) & 0x80000000) == 0)
      {
        v129 = vaddq_f32(v167, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v165, v127.f32[0]), v166, *v127.f32, 1), v168, v127, 2));
        v130 = vaddq_f32(v167, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v165, v126.f32[0]), v166, *v126.f32, 1), v168, v126, 2));
        *(a1 + 244) = fabsf(COERCE_FLOAT(vsubq_f32(vdivq_f32(v129, vdupq_laneq_s32(*&v129, 3)), vdivq_f32(v130, vdupq_laneq_s32(*&v130, 3))).i32[2]));
        if (a6)
        {
          v131 = 0;
          v132 = *a4;
          v133 = *(a4 + 2);
          v134 = *(a4 + 4);
          v135 = *(a4 + 6);
          v169 = xmmword_1E308C210;
          v170 = xmmword_1E3047680;
          v171 = xmmword_1E308C220;
          v172 = xmmword_1E30474D0;
          do
          {
            *(&v173 + v131) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v132, COERCE_FLOAT(*(&v169 + v131))), v133, *(&v169 + v131), 1), v134, *(&v169 + v131), 2), v135, *(&v169 + v131), 3);
            v131 += 16;
          }

          while (v131 != 64);
          v136 = 0;
          v137 = v173;
          v138 = v174;
          v139 = v175;
          v140 = v176;
          v141 = *(a3 + 1);
          v142 = *(a3 + 2);
          v143 = *(a3 + 3);
          v169 = *a3;
          v170 = v141;
          v171 = v142;
          v172 = v143;
          do
          {
            *(&v173 + v136) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v137, COERCE_FLOAT(*(&v169 + v136))), v138, *(&v169 + v136), 1), v139, *(&v169 + v136), 2), v140, *(&v169 + v136), 3);
            v136 += 16;
          }

          while (v136 != 64);
          v144 = *(a2 + 16);
          v145 = *(a2 + 32);
          v146 = vcgtq_f32(v144, v145);
          v146.i32[3] = v146.i32[2];
          v147 = vaddq_f32(v144, v145);
          v145.i64[0] = 0x3F0000003F000000;
          v145.i64[1] = 0x3F0000003F000000;
          v148 = vmulq_f32(v147, v145).u64[0];
          if ((vmaxvq_u32(v146) & 0x80000000) == 0)
          {
            v149 = v148;
          }

          else
          {
            v149 = 0;
          }

          v150 = vdupq_n_s32(v149);
          v151 = *(a2 + 40);
          v152 = vdupq_n_s32(HIDWORD(v149));
          v153 = vaddq_f32(v167, vmlaq_n_f32(vmlaq_f32(vmulq_f32(v165, v150), v152, v166), v168, *&v151));
          v154 = vaddq_f32(v176, vmlaq_n_f32(vmlaq_f32(vmulq_f32(v173, v150), v152, v174), v175, *&v151));
          v155 = vsubq_f32(vdivq_f32(v153, vdupq_laneq_s32(v153, 3)), vdivq_f32(v154, vdupq_laneq_s32(v154, 3)));
          v156 = vmulq_f32(v155, v155);
          *(a1 + 248) = sqrtf(v156.f32[2] + vaddv_f32(*v156.f32));
        }
      }

      *(a1 + 252) = 0;
      v157 = *a4;
      v158 = *(a4 + 1);
      v159 = *(a4 + 3);
      *(a1 + 128) = *(a4 + 2);
      *(a1 + 144) = v159;
      *(a1 + 96) = v157;
      *(a1 + 112) = v158;
      v160 = *a3;
      v161 = *(a3 + 1);
      v162 = *(a3 + 3);
      *(a1 + 64) = *(a3 + 2);
      *(a1 + 80) = v162;
      *(a1 + 32) = v160;
      *(a1 + 48) = v161;
      if (*(a1 + 224) == 1)
      {
        *(a1 + 224) = 0;
      }

      *(a1 + 240) = 0;
    }

    *(a1 + 24) = a5;
  }

  *a7 = *(a1 + 240);
  v163 = *(a1 + 208);
  *(a8 + 32) = *(a1 + 192);
  *(a8 + 48) = v163;
  *(a8 + 64) = *(a1 + 224);
  result = *(a1 + 176);
  *a8 = *(a1 + 160);
  *(a8 + 16) = result;
  return result;
}

uint64_t re::internal::CallableMemFn<re::MXIManager,REEventHandlerResult (re::MXIManager::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::MXIManager,REEventHandlerResult (re::MXIManager::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF0338;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::MXIManager,REEventHandlerResult (re::MXIManager::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF0338;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::MXIManager,REEventHandlerResult (re::MXIManager::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::MXIManager,REEventHandlerResult (re::MXIManager::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF0390;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::MXIManager,REEventHandlerResult (re::MXIManager::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF0390;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::MXIManager,REEventHandlerResult (re::MXIManager::*)(re::ecs2::Entity *,REComponentWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::MXIManager,REEventHandlerResult (re::MXIManager::*)(re::ecs2::Entity *,REComponentWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF03E8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::MXIManager,REEventHandlerResult (re::MXIManager::*)(re::ecs2::Entity *,REComponentWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF03E8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

double re::HashTable<unsigned long long,re::MXIManager::ContextWithProxies,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8))
    {
      v3 = 0;
      do
      {
        re::HashTable<unsigned long long,re::MXIManager::ContextWithProxies,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::free(a1, v3++);
      }

      while (v3 < *(a1 + 8));
      v2 = *a1;
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

void re::HashTable<unsigned long long,re::MXIManager::ContextWithProxies,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::free(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 16) + 816 * a2;
  if ((*v2 & 0x80000000) != 0)
  {
    *v2 &= ~0x80000000;
    re::AssetHandle::~AssetHandle((v2 + 632));
    re::AssetHandle::~AssetHandle((v2 + 608));
    v3 = *(v2 + 232);
    if (v3)
    {

      *(v2 + 232) = 0;
    }

    re::DynamicArray<re::AssetHandle>::deinit(v2 + 192);
    re::AssetHandle::~AssetHandle((v2 + 168));
    re::AssetHandle::~AssetHandle((v2 + 144));

    re::StringID::destroyString((v2 + 64));
  }
}

uint64_t re::HashTable<re::StringID,re::Vector3<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      re::HashTable<re::StringID,re::Vector3<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 48 * v4);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 48 * v4);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = 48 * v4;
  *(v7 + v9) = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *(v7 + v9) = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v7 + 48 * v4;
}

void re::HashTable<re::StringID,re::Vector3<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<unsigned long long,re::ecs2::EntityHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v9, v4, a2);
      v5 = *v9;
      *v9 = *a1;
      *a1 = v5;
      v6 = *&v9[16];
      *&v9[16] = *(a1 + 16);
      *(a1 + 16) = v6;
      v7 = *&v9[24];
      *&v9[24] = *(a1 + 24);
      *(a1 + 24) = v7;
      ++*&v9[40];
      re::HashTable<re::StringID,re::Vector3<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::move(a1, v9);
      re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v9);
    }
  }

  else
  {
    if (a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = 3;
    }
  }
}

uint64_t re::HashTable<re::StringID,re::Vector3<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::move(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    for (i = 0; i < v2; ++i)
    {
      v7 = *(a2 + 16);
      if ((*(v7 + v5) & 0x80000000) != 0)
      {
        v8 = 0xBF58476D1CE4E5B9 * ((*(v7 + v5 + 8) >> 31) ^ (*(v7 + v5 + 8) >> 1));
        v9 = (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31);
        result = re::HashTable<re::StringID,re::Vector3<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(v4, v9 % *(v4 + 24), v9);
        v10 = *(a2 + 16) + v5;
        v11 = *(v10 + 8);
        *(result + 8) = *(result + 8) & 0xFFFFFFFFFFFFFFFELL | v11 & 1;
        *(result + 8) = *(v10 + 8) & 0xFFFFFFFFFFFFFFFELL | v11 & 1;
        *(result + 16) = *(v10 + 16);
        *(v10 + 8) = 0;
        *(v10 + 16) = &str_67;
        *(result + 32) = *(*(a2 + 16) + v5 + 32);
        v2 = *(a2 + 32);
      }

      v5 += 48;
    }
  }

  return result;
}