uint64_t *std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::Lexicon::HasMoreProns &,std::pair<int,int> *,0>(uint64_t *result, int *a2, uint64_t *a3, uint64_t a4)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = *a3;
  v7 = HIDWORD(*a3);
  if (v5 <= *(result + 1))
  {
    if (v7 > v5)
    {
      *a2 = v6;
      *a3 = v4;
      v10 = a2 + 1;
      v11 = a2[1];
      a2[1] = *(a3 + 1);
      *(a3 + 1) = v11;
      v12 = *result;
      if (HIDWORD(*a2) > HIDWORD(*result))
      {
        *result = *a2;
        v9 = result + 1;
        *a2 = v12;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v8 = *result;
    if (v7 > v5)
    {
      *result = v6;
      v9 = result + 1;
      *a3 = v8;
      v10 = a3 + 1;
LABEL_9:
      v15 = *v9;
      *v9 = *v10;
      *v10 = v15;
      goto LABEL_10;
    }

    *result = v4;
    *a2 = v8;
    v9 = a2 + 1;
    v13 = *(result + 1);
    *(result + 1) = a2[1];
    a2[1] = v13;
    v14 = *a2;
    if (HIDWORD(*a3) > HIDWORD(*a2))
    {
      *a2 = *a3;
      *a3 = v14;
      v10 = a3 + 1;
      goto LABEL_9;
    }
  }

LABEL_10:
  v16 = *a3;
  if (HIDWORD(*a4) > HIDWORD(*a3))
  {
    *a3 = *a4;
    *a4 = v16;
    v17 = *(a3 + 1);
    *(a3 + 1) = *(a4 + 4);
    *(a4 + 4) = v17;
    v18 = *a2;
    if (HIDWORD(*a3) > HIDWORD(*a2))
    {
      *a2 = *a3;
      *a3 = v18;
      v19 = a2[1];
      a2[1] = *(a3 + 1);
      *(a3 + 1) = v19;
      v20 = *result;
      if (HIDWORD(*a2) > HIDWORD(*result))
      {
        *result = *a2;
        *a2 = v20;
        v21 = *(result + 1);
        *(result + 1) = a2[1];
        a2[1] = v21;
      }
    }
  }

  return result;
}

uint64_t *std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::Lexicon::HasMoreProns &,std::pair<int,int> *>(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result + 1;
    if (result + 1 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v6 = *v4;
        v5 = v4[1];
        v4 = v2;
        if (SHIDWORD(v5) > SHIDWORD(v6))
        {
          v7 = v3;
          while (1)
          {
            v8 = result + v7;
            v9 = *(result + v7 + 4);
            *(v8 + 2) = v6;
            *(v8 + 3) = v9;
            if (!v7)
            {
              break;
            }

            v6 = *(v8 - 1);
            v7 -= 8;
            if (SHIDWORD(v5) <= SHIDWORD(v6))
            {
              v10 = (result + v7 + 8);
              goto LABEL_10;
            }
          }

          v10 = result;
LABEL_10:
          *v10 = v5;
        }

        ++v2;
        v3 += 8;
      }

      while (v4 + 1 != a2);
    }
  }

  return result;
}

void *std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::Lexicon::HasMoreProns &,std::pair<int,int> *>(void *result, void *a2)
{
  if (result != a2)
  {
    v2 = result + 1;
    if (result + 1 != a2)
    {
      v3 = result + 12;
      do
      {
        v5 = *result;
        v4 = result[1];
        result = v2;
        if (SHIDWORD(v4) > SHIDWORD(v5))
        {
          v6 = v3;
          do
          {
            v7 = v6;
            v8 = *(v6 - 2);
            v6 -= 2;
            *(v7 - 1) = v5;
            *v7 = v8;
            v5 = *(v7 - 5);
          }

          while (SHIDWORD(v4) > SHIDWORD(v5));
          *(v6 - 1) = v4;
        }

        ++v2;
        v3 += 8;
      }

      while (result + 1 != a2);
    }
  }

  return result;
}

unint64_t std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<int,int> *,kaldi::quasar::Lexicon::HasMoreProns &>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = HIDWORD(*a1);
  if (v3 <= *(a2 - 1))
  {
    v7 = a1 + 1;
    do
    {
      v5 = v7;
      if (v7 >= a2)
      {
        break;
      }

      v8 = *(v7++ + 1);
    }

    while (v3 <= v8);
  }

  else
  {
    v4 = a1;
    do
    {
      v5 = (v4 + 1);
      v6 = *(v4++ + 3);
    }

    while (v3 <= v6);
  }

  if (v5 >= a2)
  {
    v9 = a2;
  }

  else
  {
    do
    {
      v9 = a2 - 1;
      v10 = *(a2-- - 1);
    }

    while (v3 > v10);
  }

  if (v5 < v9)
  {
    v11 = *v5;
    v12 = *v9;
    do
    {
      *v5 = v12;
      *v9 = v11;
      v13 = *(v5 + 4);
      *(v5 + 4) = *(v9 + 1);
      *(v9 + 1) = v13;
      do
      {
        v14 = *(v5 + 8);
        v5 += 8;
        v11 = v14;
      }

      while (v3 <= SHIDWORD(v14));
      do
      {
        v15 = *--v9;
        v12 = v15;
      }

      while (v3 > SHIDWORD(v15));
    }

    while (v5 < v9);
  }

  if ((v5 - 8) != a1)
  {
    *a1 = *(v5 - 8);
    *(a1 + 1) = *(v5 - 4);
  }

  *(v5 - 8) = v2;
  *(v5 - 4) = v3;
  return v5;
}

uint64_t *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<int,int> *,kaldi::quasar::Lexicon::HasMoreProns &>(unint64_t *a1, uint64_t *a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = HIDWORD(*a1);
  do
  {
    v5 = a1[++v2];
  }

  while (SHIDWORD(v5) > v4);
  v6 = &a1[v2];
  if (v2 == 1)
  {
    while (v6 < a2)
    {
      v7 = a2 - 1;
      v9 = *(a2-- - 1);
      if (v9 > v4)
      {
        goto LABEL_9;
      }
    }

    v7 = a2;
  }

  else
  {
    do
    {
      v7 = a2 - 1;
      v8 = *(a2-- - 1);
    }

    while (v8 <= v4);
  }

LABEL_9:
  if (v6 >= v7)
  {
    v11 = v6;
  }

  else
  {
    v10 = *v7;
    v11 = v6;
    v12 = v7;
    do
    {
      *v11 = v10;
      *v12 = v5;
      v13 = *(v11 + 1);
      *(v11 + 1) = *(v12 + 1);
      *(v12 + 1) = v13;
      do
      {
        v14 = v11[1];
        ++v11;
        LODWORD(v5) = v14;
      }

      while (SHIDWORD(v14) > v4);
      do
      {
        v15 = *--v12;
        v10 = v15;
      }

      while (SHIDWORD(v15) <= v4);
    }

    while (v11 < v12);
  }

  if (v11 - 1 != a1)
  {
    *a1 = *(v11 - 2);
    *(a1 + 1) = *(v11 - 1);
  }

  *(v11 - 2) = v3;
  *(v11 - 1) = v4;
  return v11 - 1;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::Lexicon::HasMoreProns &,std::pair<int,int> *>(int *a1, char *a2)
{
  v4 = (a2 - a1) >> 3;
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v20 = a1[2];
      v21 = a1[3];
      v22 = a1[1];
      v23 = *(a2 - 1);
      if (v21 <= v22)
      {
        if (SHIDWORD(v23) <= v21)
        {
          return 1;
        }

        a1[2] = v23;
        *(a2 - 2) = v20;
        v26 = a1 + 3;
        v35 = a1[3];
        a1[3] = *(a2 - 1);
        *(a2 - 1) = v35;
        v36 = *a1;
        v37 = *(a1 + 1);
        if (SHIDWORD(v37) <= HIDWORD(*a1))
        {
          return 1;
        }

        *a1 = v37;
        a1[2] = v36;
        v25 = a1 + 1;
      }

      else
      {
        v24 = *a1;
        if (SHIDWORD(v23) <= v21)
        {
          a1[1] = v21;
          a1[2] = v24;
          a1[3] = v22;
          *a1 = v20;
          v40 = *(a2 - 1);
          v41 = *(a1 + 1);
          if (SHIDWORD(v40) <= SHIDWORD(v41))
          {
            return 1;
          }

          a1[2] = v40;
          *(a2 - 2) = v41;
          v26 = (a2 - 4);
          v25 = a1 + 3;
        }

        else
        {
          *a1 = v23;
          v25 = a1 + 1;
          *(a2 - 2) = v24;
          v26 = (a2 - 4);
        }
      }

      v42 = *v25;
      *v25 = *v26;
      *v26 = v42;
      return 1;
    }

    if (v4 != 4)
    {
      if (v4 == 5)
      {
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::Lexicon::HasMoreProns &,std::pair<int,int> *,0>(a1, a1 + 2, a1 + 2, (a1 + 6));
        v8 = *(a2 - 1);
        v9 = *(a1 + 3);
        if (SHIDWORD(v8) > SHIDWORD(v9))
        {
          a1[6] = v8;
          *(a2 - 2) = v9;
          v10 = a1[7];
          a1[7] = *(a2 - 1);
          *(a2 - 1) = v10;
          v11 = *(a1 + 2);
          v12 = *(a1 + 3);
          v13 = HIDWORD(v12);
          if (SHIDWORD(v12) > SHIDWORD(v11))
          {
            *(a1 + 2) = v12;
            *(a1 + 3) = v11;
            v14 = *(a1 + 1);
            v15 = *(a1 + 2);
            if (SHIDWORD(v15) > SHIDWORD(v14))
            {
              a1[2] = v15;
              a1[3] = v13;
              *(a1 + 2) = v14;
              v16 = *a1;
              v17 = *(a1 + 1);
              v18 = HIDWORD(*a1);
              if (SHIDWORD(v17) > v18)
              {
                *a1 = v17;
                a1[1] = v13;
                result = 1;
                a1[2] = v16;
                a1[3] = v18;
                return result;
              }
            }
          }
        }

        return 1;
      }

      goto LABEL_17;
    }

    std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::Lexicon::HasMoreProns &,std::pair<int,int> *,0>(a1, a1 + 2, a1 + 2, (a2 - 8));
    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 1);
    v6 = *a1;
    if (SHIDWORD(v5) > HIDWORD(*a1))
    {
      *a1 = v5;
      *(a2 - 2) = v6;
      v7 = a1[1];
      a1[1] = *(a2 - 1);
      *(a2 - 1) = v7;
    }

    return 1;
  }

LABEL_17:
  v27 = a1 + 4;
  v28 = *(a1 + 2);
  v30 = a1[2];
  v29 = a1[3];
  v32 = *a1;
  LODWORD(v31) = a1[1];
  v33 = HIDWORD(v28);
  if (v29 > v31)
  {
    if (SHIDWORD(v28) <= v29)
    {
      a1[3] = v31;
      v34 = a1 + 3;
      a1[1] = v29;
      a1[2] = v32;
      *a1 = v30;
      v43 = *(a1 + 1);
      v31 = HIDWORD(v43);
      if (SHIDWORD(v28) <= SHIDWORD(v43))
      {
        goto LABEL_34;
      }

      a1[2] = v28;
      a1[4] = v43;
    }

    else
    {
      *a1 = v28;
      a1[4] = v32;
      v34 = a1 + 1;
    }

    v38 = a1 + 5;
    goto LABEL_33;
  }

  if (SHIDWORD(v28) > v29)
  {
    *(a1 + 1) = v28;
    v38 = a1 + 3;
    a1[4] = v30;
    a1[5] = v29;
    v39 = *(a1 + 1);
    v33 = HIDWORD(v39);
    if (SHIDWORD(v39) > v31)
    {
      *a1 = v39;
      a1[2] = v32;
      v34 = a1 + 1;
LABEL_33:
      *v34 = v33;
      *v38 = v31;
    }
  }

LABEL_34:
  v44 = (a1 + 6);
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v45 = 0;
  v46 = 0;
  while (1)
  {
    v47 = *v44;
    v48 = *v27;
    v49 = HIDWORD(*v44);
    if (v49 > SHIDWORD(v48))
    {
      v50 = v45;
      while (1)
      {
        v51 = a1 + v50;
        v52 = *(a1 + v50 + 20);
        *(v51 + 6) = v48;
        *(v51 + 7) = v52;
        if (v50 == -16)
        {
          break;
        }

        v48 = *(v51 + 1);
        v50 -= 8;
        if (v49 <= SHIDWORD(v48))
        {
          v53 = (a1 + v50 + 24);
          goto LABEL_42;
        }
      }

      v53 = a1;
LABEL_42:
      *v53 = v47;
      v53[1] = v49;
      if (++v46 == 8)
      {
        return v44 + 8 == a2;
      }
    }

    v27 = v44;
    v45 += 8;
    v44 += 8;
    if (v44 == a2)
    {
      return 1;
    }
  }
}

char *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::Lexicon::HasMoreProns &,std::pair<int,int> *,std::pair<int,int> *>(char *a1, char *a2, char *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = (a2 - a1) >> 3;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[8 * v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::Lexicon::HasMoreProns &,std::pair<int,int> *>(a1, a4, v8, v11--);
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
        v13 = *v12;
        if (HIDWORD(*v12) > HIDWORD(*a1))
        {
          *v12 = *a1;
          *a1 = v13;
          v14 = *(v12 + 1);
          *(v12 + 1) = *(a1 + 1);
          *(a1 + 1) = v14;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::Lexicon::HasMoreProns &,std::pair<int,int> *>(a1, a4, v8, a1);
        }

        v12 += 8;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v15 = a2 - 8;
      do
      {
        v17 = *a1;
        v16 = *(a1 + 1);
        v18 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::Lexicon::HasMoreProns &,std::pair<int,int> *>(a1, a4, v8);
        if (v15 == v18)
        {
          *v18 = v17;
          *(v18 + 1) = v16;
        }

        else
        {
          *v18 = *v15;
          *(v18 + 1) = *(v15 + 1);
          *v15 = v17;
          *(v15 + 1) = v16;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::Lexicon::HasMoreProns &,std::pair<int,int> *>(a1, (v18 + 8), a4, (v18 + 8 - a1) >> 3);
        }

        v15 -= 8;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::Lexicon::HasMoreProns &,std::pair<int,int> *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 3)
    {
      v6 = v4 >> 2;
      v7 = (v4 >> 2) + 1;
      v8 = result + 8 * v7;
      v9 = v6 + 2;
      v10 = *v8;
      if (v9 < a3 && SHIDWORD(v10) > HIDWORD(*(v8 + 8)))
      {
        v10 = *(v8 + 8);
        v8 += 8;
        v7 = v9;
      }

      v11 = *a4;
      v12 = HIDWORD(v10);
      v13 = HIDWORD(*a4);
      if (v12 <= v13)
      {
        LODWORD(v14) = *v8;
        do
        {
          v15 = a4;
          a4 = v8;
          *v15 = v14;
          *(v15 + 1) = *(v8 + 4);
          if (v5 < v7)
          {
            break;
          }

          v16 = (2 * v7) | 1;
          v8 = result + 8 * v16;
          v7 = 2 * v7 + 2;
          v14 = *v8;
          if (v7 >= a3)
          {
            v7 = v16;
          }

          else if (SHIDWORD(v14) <= HIDWORD(*(v8 + 8)))
          {
            v7 = v16;
          }

          else
          {
            v14 = *(v8 + 8);
            v8 += 8;
          }
        }

        while (SHIDWORD(v14) <= v13);
        *a4 = v11;
        *(a4 + 1) = v13;
      }
    }
  }

  return result;
}

_DWORD *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::Lexicon::HasMoreProns &,std::pair<int,int> *>(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = &a1[2 * v3];
    v5 = v4 + 2;
    v6 = (2 * v3) | 1;
    v3 = 2 * v3 + 2;
    if (v3 >= a3)
    {
      v3 = v6;
    }

    else if (v4[3] <= v4[5])
    {
      v3 = v6;
    }

    else
    {
      v5 = v4 + 4;
    }

    *a1 = *v5;
    a1[1] = v5[1];
    a1 = v5;
  }

  while (v3 <= (a3 - 2) / 2);
  return v5;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::Lexicon::HasMoreProns &,std::pair<int,int> *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = (result + 8 * v4);
    v6 = *v5;
    v9 = *(a2 - 8);
    v7 = (a2 - 8);
    v8 = v9;
    v10 = HIDWORD(v9);
    if (HIDWORD(*v5) > SHIDWORD(v9))
    {
      do
      {
        v11 = v7;
        v7 = v5;
        *v11 = v6;
        v11[1] = v5[1];
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = (result + 8 * v4);
        v6 = *v5;
      }

      while (HIDWORD(*v5) > v10);
      *v7 = v8;
      v7[1] = v10;
    }
  }

  return result;
}

void std::deque<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *,std::allocator<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>>::push_back(unint64_t *result, void *a2)
{
  v4 = result[2];
  v5 = result[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 6) - 1;
  }

  v7 = result[5];
  v8 = v7 + result[4];
  if (v6 == v8)
  {
    std::deque<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *,std::allocator<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>>::__add_back_capacity(result);
    v5 = result[1];
    v7 = result[5];
    v8 = result[4] + v7;
  }

  *(*(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  result[5] = v7 + 1;
}

void std::deque<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *,std::allocator<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>>::__add_back_capacity(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **>>(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  std::__split_buffer<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **>>::emplace_back<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **&>(a1, &v9);
}

void sub_1B51C6F7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node::~Node(void *a1)
{
  for (i = a1; ; i = v3)
  {
    while (i[3])
    {
      i = *(i[2] + 24);
    }

    if (i == a1)
    {
      break;
    }

    v3 = i[10];
    std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::erase(v3, *(v3 + 16));
    v4 = kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node::~Node(i);
    MEMORY[0x1B8C85350](v4, 0x10A0C40A79550FFLL);
  }

  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table((a1 + 5));

  return std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(a1);
}

uint64_t *std::vector<std::vector<std::string>>::__construct_one_at_end[abi:ne200100]<std::vector<std::string> const&>(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v3, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t *std::vector<std::vector<std::string>>::__emplace_back_slow_path<std::vector<std::string> const&>(char **a1, void *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<quasar::Token>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>((24 * v2), *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  v8 = v16 + 24;
  v9 = a1[1] - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  a1[1] = v8;
  v12 = a1[2];
  a1[2] = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  std::__split_buffer<std::vector<std::string>>::~__split_buffer(&v14);
  return v8;
}

void sub_1B51C71EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<std::vector<std::string>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void sub_1B51C750C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, char a41)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  _Unwind_Resume(a1);
}

void sub_1B51C7E98(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_1B51C80B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  if (v13 != v14)
  {
  }

  if (v18 != v12)
  {
  }

  _Unwind_Resume(a1);
}

void sub_1B51C8694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  std::pair<std::vector<std::vector<unsigned int>>,std::vector<std::vector<std::vector<quasar::Token>>>>::~pair(&a9);
  a9 = &a16;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&a9);
  a9 = &a19;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&a9);

  _Unwind_Resume(a1);
}

void **std::pair<std::vector<std::vector<unsigned int>>,std::vector<std::vector<std::vector<quasar::Token>>>>::~pair(void **a1)
{
  v3 = a1 + 3;
  std::vector<std::vector<std::vector<quasar::Token>>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = a1;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v3);
  return a1;
}

void sub_1B51C8FB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  a9 = (v10 - 80);
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&a9);
  a9 = (v10 - 56);
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&a9);

  _Unwind_Resume(a1);
}

void sub_1B51C96B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, char a15)
{
  STACK[0x250] = &a15;
  std::vector<std::vector<std::vector<quasar::Token>>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x250]);

  std::pair<std::vector<std::vector<unsigned int>>,std::vector<std::vector<std::vector<quasar::Token>>>>::~pair(a10);
  _Unwind_Resume(a1);
}

void sub_1B51C9950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void *);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  std::pair<std::vector<std::vector<unsigned int>>,std::vector<std::vector<std::vector<quasar::Token>>>>::~pair(va1);
  std::pair<std::vector<std::vector<unsigned int>>,std::vector<std::vector<std::vector<quasar::Token>>>>::~pair(va);
  _Unwind_Resume(a1);
}

void sub_1B51CA394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, id a60)
{
  _Block_object_dispose(&a55, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B51CA5D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_1B51CA76C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

uint64_t quasar::join<std::vector<int>>(unsigned int **a1, uint64_t *a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v7);
  quasar::joinToStream<std::vector<int>>(&v8, a1, a2);
  std::stringbuf::str();
  v7[0] = *MEMORY[0x1E69E54D8];
  v5 = *(MEMORY[0x1E69E54D8] + 72);
  *(v7 + *(v7[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v8 = v5;
  v9 = MEMORY[0x1E69E5548] + 16;
  if (v11 < 0)
  {
    operator delete(v10[7].__locale_);
  }

  v9 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v10);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B8C85200](&v12);
}

void sub_1B51CBBD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va, MEMORY[0x1E69E54D8]);
  MEMORY[0x1B8C85200](v3 + 128);
  _Unwind_Resume(a1);
}

id EARHelpers::VectorToArray<int>(unsigned int **a1)
{
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    do
    {
      v5 = [MEMORY[0x1E696AD98] numberWithInt:*v3];
      [v2 addObject:v5];

      ++v3;
    }

    while (v3 != v4);
  }

  v6 = [v2 copy];

  return v6;
}

void sub_1B51CC1A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  *(v14 - 40) = v13;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100]((v14 - 40));
  *(v14 - 40) = &a13;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100]((v14 - 40));

  _Unwind_Resume(a1);
}

void sub_1B51CC2FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  a9 = &a18;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&a9);
  a9 = &a21;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&a9);

  _Unwind_Resume(a1);
}

void sub_1B51CC51C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14)
{
  a14 = &a9;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&a14);

  _Unwind_Resume(a1);
}

void sub_1B51CC614(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id EARSpeechRecognitionResultFromQuasarResult(void *a1, quasar::Token **a2, void *a3, void *a4, uint64_t a5, unsigned int a6, int a7, char a8, uint64_t *a9, int a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t *a15, unsigned __int8 a16, unsigned __int8 a17, uint64_t a18)
{
  v22 = a18;
  v23 = a1;
  v46 = a3;
  v45 = a4;
  dispatch_assert_queue_V2(v23[1]);
  v85 = 0uLL;
  v86 = 0;
  memset(v84, 0, sizeof(v84));
  memset(v83, 0, sizeof(v83));
  memset(v82, 0, sizeof(v82));
  memset(v81, 0, sizeof(v81));
  memset(v80, 0, sizeof(v80));
  if ((a16 & a17) != 0)
  {
    v24 = 0.0;
  }

  else
  {
    v24 = a6 / 1000.0;
  }

  v25 = [(dispatch_queue_t *)v23 relevantTextContext];
  v43 = a7;
  v74 = 0;
  v75 = &v74;
  v76 = 0x3032000000;
  v77 = __Block_byref_object_copy__2;
  v78 = __Block_byref_object_dispose__2;
  v79 = &stru_1F2D44B60;
  v68 = 0;
  v69 = &v68;
  v70 = 0x3032000000;
  v71 = __Block_byref_object_copy__2;
  v72 = __Block_byref_object_dispose__2;
  v73 = &stru_1F2D44B60;
  v66[0] = 0;
  v66[1] = v66;
  v66[2] = 0x4812000000;
  v66[3] = __Block_byref_object_copy__420;
  v66[4] = __Block_byref_object_dispose__421;
  v66[5] = &unk_1B5CADD23;
  memset(v67, 0, sizeof(v67));
  v59 = 0;
  v60 = &v59;
  v61 = 0x4812000000;
  v62 = __Block_byref_object_copy__420;
  v63 = __Block_byref_object_dispose__421;
  v64 = &unk_1B5CADD23;
  memset(v65, 0, sizeof(v65));
  if ((-[dispatch_queue_t continuousListeningFormatAcrossUtterances](v23, "continuousListeningFormatAcrossUtterances") & 1) != 0 || ([v25 leftContextWasAppended] & 1) == 0)
  {
    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 3221225472;
    v58[2] = ___Z42EARSpeechRecognitionResultFromQuasarResultP20_EARSpeechRecognizerRKNSt3__16vectorIN6quasar5TokenENS1_9allocatorIS4_EEEEP8NSStringSB_S9_jjbNS1_10shared_ptrINS3_25ContinuousListeningConfigEEEiS9_bS9_bNSC_IbEEbbRK14FormattingInfo_block_invoke;
    v58[3] = &unk_1E7C1A3C0;
    v58[4] = &v74;
    v58[5] = &v68;
    v58[6] = v66;
    v58[7] = &v59;
    [v25 getLeftAndRightContextWithCompletion:v58];
    if ([v25 leftContextEndsWithAppendedAutoPunctuation])
    {
      v26 = 1;
    }

    else
    {
      v26 = [v25 leftContextWasAppended] ^ 1;
    }
  }

  else
  {
    v26 = 0;
  }

  v27 = v23[2];
  if (v27)
  {
    v28 = a9[1];
    v54 = *a9;
    v55 = v28;
    if (v28)
    {
      atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v42 = v25;
    v29 = [(dispatch_queue_t *)v23 itnEnablingFlags];
    v30 = [(dispatch_queue_t *)v23 recognizeEmoji];
    v31 = v60;
    v32 = v75[5];
    v33 = v69[5];
    v34 = a15[1];
    v52 = *a15;
    v53 = v34;
    if (v34)
    {
      atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = ___Z42EARSpeechRecognitionResultFromQuasarResultP20_EARSpeechRecognizerRKNSt3__16vectorIN6quasar5TokenENS1_9allocatorIS4_EEEEP8NSStringSB_S9_jjbNS1_10shared_ptrINS3_25ContinuousListeningConfigEEEiS9_bS9_bNSC_IbEEbbRK14FormattingInfo_block_invoke_2;
    v50[3] = &unk_1E7C1A3E8;
    v51 = v23;
    LOBYTE(v41) = 0;
    HIBYTE(v40) = a14;
    LOBYTE(v40) = 0;
    HIBYTE(v39) = a12;
    BYTE2(v39) = v30;
    LOWORD(v39) = v29;
    BYTE4(v38) = a8;
    LODWORD(v38) = v43;
    objc_msgSend_formatWords_unrepairedWordsOut_task_language_preItnLeftContext_separateAutoEndPunctuation_partialResults_timestampOffset_zeroTimestamp_continuousListeningConfig_postItnLeftContext_itnResult_itnOverrides_itnEnablingFlags_recognizeEmoji_leftContextProvidedByClient_preItnRightContext_postItnLeftContextStr_postItnRightContextStr_stripLeadingAppendedAutoPunctuation_emojiTokenIndices_persistEmoji_shouldHideTrailingPunctuation_isTrailingPunctuationHidden_isFinal_choiceIdx_itnCompletion_(v27, v84, v38, &v54, a11, v83, v81, v39, v31 + 6, v32, v33, v26, v80, v40, &v52, v41, v50);
    std::vector<quasar::Token>::__vdeallocate(&v85);
    v85 = v56;
    v86 = v57;
    v57 = 0;
    v56 = 0uLL;
    v87 = &v56;
    std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v87);
    v22 = a18;
    v25 = v42;
    if (v53)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v53);
    }

    if (v55)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v55);
    }
  }

  else if (&v85 != a2)
  {
    std::vector<quasar::Token>::__assign_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(&v85, *a2, a2[1], 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 5));
  }

  v35 = [_EARSpeechRecognitionResult alloc];
  memset(v49, 0, sizeof(v49));
  std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(v49, v85, SDWORD2(v85), 0x6DB6DB6DB6DB6DB7 * ((*(&v85 + 1) - v85) >> 5));
  memset(v48, 0, sizeof(v48));
  std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(v48, *a2, a2[1], 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 5));
  v36 = [(_EARSpeechRecognitionResult *)v35 _initWithTokens:v49 preITNTokens:v48 confidence:0 voiceCommandInterpretations:0 preITNVoiceCommandInterpretations:1 utteranceStart:v22 preITNUseHatText:a10 formattingInfo:v24];
  *&v56 = v48;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v56);
  *&v56 = v49;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v56);
  _Block_object_dispose(&v59, 8);
  *&v56 = v65;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v56);
  _Block_object_dispose(v66, 8);
  v59 = v67;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v59);
  _Block_object_dispose(&v68, 8);

  _Block_object_dispose(&v74, 8);
  v66[0] = v80;
  std::vector<std::pair<int,std::vector<std::string>>>::__destroy_vector::operator()[abi:ne200100](v66);
  v66[0] = v81;
  std::vector<quasar::ItnOverride>::__destroy_vector::operator()[abi:ne200100](v66);
  v66[0] = v82;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v66);
  v66[0] = v83;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v66);
  v66[0] = v84;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v66);
  v66[0] = &v85;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v66);

  return v36;
}

void sub_1B51CCDB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void **a32, void **a33, void *a34, void *a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, std::__shared_weak_count *a50, uint64_t a51, std::__shared_weak_count *a52, void **a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a50)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a50);
  }

  if (a52)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a52);
  }

  _Block_object_dispose(&a64, 8);
  a53 = a32;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&a53);
  _Block_object_dispose(&STACK[0x200], 8);
  a64 = a33;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&a64);
  _Block_object_dispose(&STACK[0x248], 8);

  _Block_object_dispose(&STACK[0x278], 8);
  STACK[0x200] = &STACK[0x2A8];
  std::vector<std::pair<int,std::vector<std::string>>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x200]);
  STACK[0x200] = v64 - 240;
  std::vector<quasar::ItnOverride>::__destroy_vector::operator()[abi:ne200100](&STACK[0x200]);
  STACK[0x200] = v64 - 216;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&STACK[0x200]);
  STACK[0x200] = v64 - 192;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&STACK[0x200]);
  STACK[0x200] = v64 - 168;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&STACK[0x200]);
  STACK[0x200] = v64 - 144;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&STACK[0x200]);

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__420(__n128 *a1, __n128 *a2)
{
  a1[3] = 0uLL;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3] = 0uLL;
  a2[4].n128_u64[0] = 0;
  return result;
}

void ___Z42EARSpeechRecognitionResultFromQuasarResultP20_EARSpeechRecognizerRKNSt3__16vectorIN6quasar5TokenENS1_9allocatorIS4_EEEEP8NSStringSB_S9_jjbNS1_10shared_ptrINS3_25ContinuousListeningConfigEEEiS9_bS9_bNSC_IbEEbbRK14FormattingInfo_block_invoke(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v10 = a2;
  v11 = a3;
  v12 = a5;
  objc_storeStrong((*(a1[4] + 8) + 40), a2);
  v13 = a4;
  objc_storeStrong((*(a1[5] + 8) + 40), a3);
  stringsToTokensWithZeroTimestamps(v13, &v16);

  v14 = *(a1[6] + 8);
  std::vector<quasar::Token>::__vdeallocate((v14 + 48));
  *(v14 + 48) = v16;
  *(v14 + 64) = v17;
  v17 = 0;
  v16 = 0uLL;
  v18 = &v16;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v18);
  stringsToTokensWithZeroTimestamps(v12, &v16);
  v15 = *(a1[7] + 8);
  std::vector<quasar::Token>::__vdeallocate((v15 + 48));
  *(v15 + 48) = v16;
  *(v15 + 64) = v17;
  v17 = 0;
  v16 = 0uLL;
  v18 = &v16;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v18);
}

void stringsToTokensWithZeroTimestamps(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a1;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v5)
  {
    v6 = *v23;
    do
    {
      v7 = 0;
      do
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v22 + 1) + 8 * v7);
        v9 = quasar::Token::Token(__p);
        if (v8)
        {
          objc_msgSend_ear_toString(v8, v9);
        }

        else
        {
          v26 = 0uLL;
          v27 = 0;
        }

        if (SHIBYTE(v11) < 0)
        {
          operator delete(__p[0]);
        }

        *__p = v26;
        v11 = v27;

        std::vector<quasar::Token>::push_back[abi:ne200100](a2, __p);
        if (v21 < 0)
        {
          operator delete(v20);
        }

        if (v19 < 0)
        {
          operator delete(v18);
        }

        *&v26 = &v17;
        std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&v26);
        if (v16 < 0)
        {
          operator delete(v15);
        }

        *&v26 = &v14;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v26);
        if (v13 < 0)
        {
          operator delete(v12);
        }

        if (SHIBYTE(v11) < 0)
        {
          operator delete(__p[0]);
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v5);
  }
}

void sub_1B51CD2AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&a9);

  _Unwind_Resume(a1);
}

void ___Z42EARSpeechRecognitionResultFromQuasarResultP20_EARSpeechRecognizerRKNSt3__16vectorIN6quasar5TokenENS1_9allocatorIS4_EEEEP8NSStringSB_S9_jjbNS1_10shared_ptrINS3_25ContinuousListeningConfigEEEiS9_bS9_bNSC_IbEEbbRK14FormattingInfo_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [*(a1 + 32) recognitionMetrics];
  v8[0] = v5;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  [v6 addItnRunIntervals:v7];
}

void sub_1B51CD3BC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id RHPackageToEARPackage(quasar::result_handler::Package *a1)
{
  v2 = [_EARSpeechRecognition alloc];
  v38 = 0;
  *__p = 0u;
  v37 = 0u;
  std::string::basic_string[abi:ne200100]<0>(&__p[1], "▁");
  LOBYTE(v38) = 0;
  v33 = [(_EARSpeechRecognition *)v2 _initWithNBestList:a1 useHatText:0 endsOfSentencePunctuations:0 formattingInfo:__p];
  if (SHIBYTE(v37) < 0)
  {
    operator delete(__p[1]);
  }

  v3 = [_EARSpeechRecognition alloc];
  v38 = 0;
  *__p = 0u;
  v37 = 0u;
  std::string::basic_string[abi:ne200100]<0>(&__p[1], "▁");
  LOBYTE(v38) = 0;
  v32 = [(_EARSpeechRecognition *)v3 _initWithNBestList:a1 + 48 useHatText:0 endsOfSentencePunctuations:0 formattingInfo:__p];
  if (SHIBYTE(v37) < 0)
  {
    operator delete(__p[1]);
  }

  v4 = [_EARSpeechRecognition alloc];
  v38 = 0;
  *__p = 0u;
  v37 = 0u;
  std::string::basic_string[abi:ne200100]<0>(&__p[1], "▁");
  LOBYTE(v38) = 0;
  v31 = [(_EARSpeechRecognition *)v4 _initWithNBestList:a1 + 24 useHatText:0 endsOfSentencePunctuations:0 formattingInfo:__p];
  if (SHIBYTE(v37) < 0)
  {
    operator delete(__p[1]);
  }

  v30 = *(a1 + 19);
  if (*(a1 + 368) != 1)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v34 = 0;
    goto LABEL_49;
  }

  v34 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = EARHelpers::EARVoiceCommandInterpretationsFromQuasarCommandData((a1 + 184), v5);
  if ([v6 count])
  {
    [v34 addObject:v6];
  }

  if ((*(a1 + 368) & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  quasar::topChoice2Str(a1 + 23, __p);
  if ((SBYTE7(v37) & 0x8000000000000000) != 0)
  {
    if (__p[1])
    {
      v7 = __p[0];
      goto LABEL_17;
    }
  }

  else if (BYTE7(v37))
  {
    v7 = __p;
LABEL_17:
    v12 = [MEMORY[0x1E696AEC0] ear_stringWithStringView:v7];
    goto LABEL_19;
  }

  v12 = 0;
LABEL_19:
  if ((*(a1 + 368) & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  quasar::topChoice2Str(a1 + 26, &v35);
  if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (v35.__r_.__value_.__l.__size_)
    {
      v13 = v35.__r_.__value_.__r.__words[0];
      goto LABEL_25;
    }
  }

  else if (*(&v35.__r_.__value_.__s + 23))
  {
    v13 = &v35;
LABEL_25:
    v10 = [MEMORY[0x1E696AEC0] ear_stringWithStringView:v13];
    goto LABEL_27;
  }

  v10 = 0;
LABEL_27:
  if ((*(a1 + 368) & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  v14 = *(a1 + 42);
  if (*(a1 + 43) == v14)
  {
    v8 = 0;
    v9 = 0;
    goto LABEL_44;
  }

  v15 = (v14 + 24);
  if ((*(v14 + 47) & 0x8000000000000000) != 0)
  {
    if (!*(v14 + 32))
    {
LABEL_36:
      v9 = 0;
      goto LABEL_37;
    }

    v15 = *v15;
  }

  else if (!*(v14 + 47))
  {
    goto LABEL_36;
  }

  v9 = [MEMORY[0x1E696AEC0] ear_stringWithStringView:v15];
LABEL_37:
  v16 = (v14 + 48);
  if ((*(v14 + 71) & 0x8000000000000000) != 0)
  {
    if (!*(v14 + 56))
    {
LABEL_43:
      v8 = 0;
      goto LABEL_44;
    }

    v16 = *v16;
  }

  else if (!*(v14 + 71))
  {
    goto LABEL_43;
  }

  v8 = [MEMORY[0x1E696AEC0] ear_stringWithStringView:v16];
LABEL_44:
  v11 = v12;
  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  if (SBYTE7(v37) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_49:
  v17 = [_EARVoiceCommandDebugInfo alloc];
  BYTE2(v28) = *(a1 + 460);
  LOWORD(v28) = *(a1 + 229);
  v18 = [_EARVoiceCommandDebugInfo initWithPrecedingUtterance:v17 commandUtterance:"initWithPrecedingUtterance:commandUtterance:target:payload:hasVoiceCommandInExhaustiveParses:hasVoiceCommandParses:hasVoiceCommandEditIntent:hasVoiceCommandAfterReranking:hasNoVoiceCommandAfterRespeakCheck:commandParserMachContinuousStartTicks:commandParserMachContinuousEndTicks:commandParserMachAbsoluteStartTicks:commandParserMachAbsoluteEndTicks:" target:v11 payload:v10 hasVoiceCommandInExhaustiveParses:v9 hasVoiceCommandParses:v8 hasVoiceCommandEditIntent:*(a1 + 456) hasVoiceCommandAfterReranking:*(a1 + 457) hasNoVoiceCommandAfterRespeakCheck:v28 commandParserMachContinuousStartTicks:*(a1 + 58) commandParserMachContinuousEndTicks:*(a1 + 59) commandParserMachAbsoluteStartTicks:*(a1 + 60) commandParserMachAbsoluteEndTicks:*(a1 + 61)];
  v19 = [_EARPerformanceMarkers alloc];
  v20 = EARHelpers::VectorToArray<int>(a1 + 11);
  v21 = EARHelpers::VectorToArray<int>(a1 + 14);
  v22 = EARHelpers::VectorToArray<int>(a1 + 17);
  v23 = [(_EARPerformanceMarkers *)v19 initWithCorrectPartialResultIndexList:v20 correctAlignedPartialResultIndexList:v21 tokenDelayInMilliseconds:v22];

  v24 = [_EARSpeechRecognitionResultPackage alloc];
  LOWORD(v29) = *(a1 + 40);
  v25 = [(_EARSpeechRecognitionResultPackage *)v24 _initWithRecognition:v32 preITNRecognition:v33 unrepairedRecognition:v31 recognitionIsFormatted:1 isFinal:*(a1 + 72) audioAnalytics:0 utteranceStart:v30 / 1000.0 latticeMitigatorResult:0 nBestVoiceCommandInterpretations:v34 preITNNBestVoiceCommandInterpretations:0 recognitionPaused:v29 firstResultAfterResume:0 endOfSentenceLikelihood:0 numTokensExcludingTriggerPhrase:v18 voiceCommandDebugInfo:v23 performanceMarkers:?];
  v26 = EARHelpers::VectorToArray<int>(a1 + 11);
  [v25 setCorrectPartialResultIndexList:v26];

  return v25;
}

void sub_1B51CD894(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, void *a19, void *a20, void *a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, void *a29, int a30, __int16 a31, char a32, char a33, int a34, __int16 a35, char a36, char a37)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1B51CDDE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void ***a10, uint64_t a11, void *a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::unique_ptr<quasar::result_handler::Package>::~unique_ptr[abi:ne200100](a10);
  _Unwind_Resume(a1);
}

void ***std::unique_ptr<quasar::result_handler::Package>::~unique_ptr[abi:ne200100](void ***a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    quasar::result_handler::Package::~Package(v2);
    MEMORY[0x1B8C85350]();
  }

  return a1;
}

id RHPackageToEARResult(uint64_t *a1)
{
  v2 = a1[6];
  v3 = a1[7];
  v15 = 0;
  v16 = 0;
  v14 = 0;
  if (v2 != v3)
  {
    std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(&v14, *v2, *(v2 + 8), 0x6DB6DB6DB6DB6DB7 * ((*(v2 + 8) - *v2) >> 5));
  }

  v4 = *a1;
  v5 = a1[1];
  v12 = 0;
  v13 = 0;
  v11 = 0;
  if (v4 != v5)
  {
    std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(&v11, *v4, *(v4 + 8), 0x6DB6DB6DB6DB6DB7 * ((*(v4 + 8) - *v4) >> 5));
  }

  v6 = [_EARSpeechRecognitionResult alloc];
  memset(v10, 0, sizeof(v10));
  std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(v10, v14, v15, 0x6DB6DB6DB6DB6DB7 * ((v15 - v14) >> 5));
  memset(v9, 0, sizeof(v9));
  std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(v9, v11, v12, 0x6DB6DB6DB6DB6DB7 * ((v12 - v11) >> 5));
  v7 = [(_EARSpeechRecognitionResult *)v6 _initWithTokens:v10 preITNTokens:v9];
  v17 = v9;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v17);
  v17 = v10;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v17);
  v17 = &v11;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v17);
  v11 = &v14;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v11);

  return v7;
}

void sub_1B51CE014(_Unwind_Exception *a1)
{
  *(v1 - 40) = v1 - 64;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100]((v1 - 40));
  _Unwind_Resume(a1);
}

void EARResultToRHPackage(_EARSpeechRecognitionResult *a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v2 = a1;
  operator new();
}

void sub_1B51CE230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, char a11)
{
  a10 = &a11;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&a10);

  std::unique_ptr<quasar::result_handler::Package>::~unique_ptr[abi:ne200100](v12);
  _Unwind_Resume(a1);
}

void sub_1B51CE3B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, std::locale a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  quasar::QuasarTraceMessage::~QuasarTraceMessage(&a16);
  _Unwind_Resume(a1);
}

void sub_1B51CE680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, char a13)
{
  a10 = &a13;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t std::vector<quasar::Token>::push_back[abi:ne200100](uint64_t a1, const quasar::Token *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<quasar::Token>::__emplace_back_slow_path<quasar::Token const&>(a1, a2);
  }

  else
  {
    quasar::Token::Token(*(a1 + 8), a2);
    result = v3 + 224;
    *(a1 + 8) = v3 + 224;
  }

  *(a1 + 8) = result;
  return result;
}

void EARContinuousListeningResultHelper::writePartialImpl(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, char a9, uint64_t *a10, uint64_t a11)
{
  v14 = a3;
  EARContinuousListeningResultHelper::setParser(a1);
  memset(v31, 0, sizeof(v31));
  std::vector<std::vector<quasar::Token>>::__init_with_size[abi:ne200100]<std::vector<quasar::Token>*,std::vector<quasar::Token>*>(v31, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  WeakRetained = objc_loadWeakRetained((a1 + 208));
  v17 = objc_loadWeakRetained((a1 + 216));
  v18 = *(a1 + 232);
  v19 = *(a1 + 240);
  quasar::ContinuousListeningResultHelper::getContinuousListeningConfig(&v29, a1);
  v20 = objc_loadWeakRetained((a1 + 224));
  v21 = a10[1];
  v28[0] = *a10;
  v28[1] = v21;
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v22 = *(a1 + 248);
  v23 = *(a1 + 256);
  v27[0] = v22;
  v27[1] = v23;
  if (v23)
  {
    atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  writePartialToResultStream(v31, WeakRetained, v17, v18, v19, a5, v14, v14, a4, &v29, 0, v20, a6, a7, a8, a9, v28, v27, a11);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  v32 = v31;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v32);
}

void sub_1B51CEC74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23)
{
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  v29 = *(v27 - 128);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  *(v27 - 96) = v27 - 120;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100]((v27 - 96));
  _Unwind_Resume(a1);
}

void EARContinuousListeningResultHelper::setParser(EARContinuousListeningResultHelper *this)
{
  WeakRetained = objc_loadWeakRetained(this + 26);
  v3 = WeakRetained;
  if (WeakRetained && *(this + 35))
  {
    dispatch_assert_queue_V2(WeakRetained[1]);
    v4 = *(this + 35);
    objc_msgSend_getParser(v3);
    quasar::result_handler::VoiceEditingResultHandler::setParser(v4, &v5);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    *(this + 35) = 0;
  }
}

void sub_1B51CED4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void writePartialToResultStream(quasar::Token ***a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, int a7, unsigned int a8, unsigned int a9, uint64_t *a10, int a11, void *a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t *a17, uint64_t *a18, uint64_t a19)
{
  v56 = *MEMORY[0x1E69E9840];
  v24 = a2;
  v25 = a3;
  v43 = a4;
  v44 = a5;
  v41 = a12;
  if (*a1 == a1[1])
  {
    memset(v55, 0, sizeof(v55));
    std::vector<std::vector<quasar::Token>>::__assign_with_size[abi:ne200100]<std::vector<quasar::Token> const*,std::vector<quasar::Token> const*>(a1, v55, &v56, 1uLL);
    v54 = v55;
    std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v54);
  }

  if (objc_opt_respondsToSelector())
  {
    v45 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v27 = *a1;
    v26 = a1[1];
    while (v27 != v26)
    {
      v28 = a10[1];
      v52 = *a10;
      v53 = v28;
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v29 = a17[1];
      v50 = *a17;
      v51 = v29;
      if (v29)
      {
        atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v30 = [v24 hasUtteranceDetection];
      v31 = [v24 concatenateUtterances];
      v33 = EARSpeechRecognitionResultFromQuasarResult(v24, v27, v43, v44, v32, 0, a7, 0, &v52, 0, a13, a14, v40, a16, &v50, v30, v31, a19);
      [(_EARSpeechRecognitionResult *)v45 addObject:v33];

      if (v51)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v51);
      }

      if (v53)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v53);
      }

      v27 += 3;
    }

    [v25 speechRecognizer:v24 didRecognizePartialResultNbest:v45];
  }

  else
  {
    v34 = *a1;
    v35 = a10[1];
    v48 = *a10;
    v49 = v35;
    if (v35)
    {
      atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v36 = a17[1];
    v46 = *a17;
    v47 = v36;
    if (v36)
    {
      atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v37 = [v24 hasUtteranceDetection];
    v38 = [v24 concatenateUtterances];
    v45 = EARSpeechRecognitionResultFromQuasarResult(v24, v34, v43, v44, v39, a8, a7, 0, &v48, a11, a13, a14, v40, a16, &v46, v37, v38, a19);
    if (v47)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v47);
    }

    if (v49)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v49);
    }

    if (*a18)
    {
      EARResultToRHPackage(v45);
    }

    [v25 speechRecognizer:v24 didRecognizePartialResult:v45];
  }

  [v41 addPartialResultToContext:*a1];
}

void sub_1B51CF0E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20, uint64_t a21, uint64_t a22, void *a23, void *a24, void *a25, quasar::result_handler::Package *a26)
{
  std::unique_ptr<quasar::result_handler::Package>::~unique_ptr[abi:ne200100](&a26);

  _Unwind_Resume(a1);
}

void EARContinuousListeningResultHelper::writeFinalImpl(uint64_t a1, __int128 ***a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6, unsigned __int8 a7, uint64_t a8, uint64_t a9, uint64_t a10, __int16 a11, uint64_t a12, unsigned __int8 a13, uint64_t a14)
{
  v17 = a4;
  EARContinuousListeningResultHelper::setParser(a1);
  WeakRetained = objc_loadWeakRetained((a1 + 208));
  v26 = objc_loadWeakRetained((a1 + 216));
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v40 = 0u;
  memset(v39, 0, sizeof(v39));
  v37 = 0u;
  *__p = 0u;
  v36 = 0u;
  v38 = 1065353216;
  v22 = *(a1 + 232);
  v21 = *(a1 + 240);
  v23 = objc_loadWeakRetained((a1 + 224));
  quasar::ContinuousListeningResultHelper::getContinuousListeningConfig(&v33, a1);
  memset(v32, 0, sizeof(v32));
  v31[0] = 0;
  v31[1] = 0;
  v30 = v31;
  memset(v29, 0, sizeof(v29));
  v24 = *(a1 + 248);
  v25 = *(a1 + 256);
  v28[0] = v24;
  v28[1] = v25;
  if (v25)
  {
    atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  writeFinalChoicesToResultStream(a2, a3, v17, WeakRetained, v26, v39, __p, v22, -1000.0, 9.0, a5, a6, v21, v23, 1, a7, &v33, a9, a10, v32, &v30, v29, a11, a13, 0, v28, a14);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  v47 = v29;
  std::vector<std::set<std::string>>::__destroy_vector::operator()[abi:ne200100](&v47);
  std::__tree<std::string>::destroy(&v30, v31[0]);
  v30 = v32;
  std::vector<quasar::ItnOverride>::__destroy_vector::operator()[abi:ne200100](&v30);
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  if (SHIBYTE(v36) < 0)
  {
    operator delete(__p[1]);
  }

  if (v44)
  {
    *(&v44 + 1) = v44;
    operator delete(v44);
  }

  if (v42)
  {
    *(&v42 + 1) = v42;
    operator delete(v42);
  }

  if (v40)
  {
    *(&v40 + 1) = v40;
    operator delete(v40);
  }

  if (v39[0])
  {
    v39[1] = v39[0];
    operator delete(v39[0]);
  }
}

void sub_1B51CF3D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, void *a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, char *a29, char *a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, std::__shared_weak_count *a36, uint64_t a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  }

  *(v45 - 104) = &a26;
  std::vector<std::set<std::string>>::__destroy_vector::operator()[abi:ne200100]((v45 - 104));
  std::__tree<std::string>::destroy(&a29, a30);
  a29 = &a32;
  std::vector<quasar::ItnOverride>::__destroy_vector::operator()[abi:ne200100](&a29);
  if (a36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a36);
  }

  if (a43 < 0)
  {
    operator delete(__p);
  }

  quasar::AudioAnalytics::~AudioAnalytics((v45 - 256));

  _Unwind_Resume(a1);
}

void writeFinalChoicesToResultStream(__int128 ***a1, uint64_t a2, unsigned int a3, void *a4, void *a5, uint64_t a6, unsigned __int8 *a7, void *a8, double a9, double a10, unsigned int a11, int a12, void *a13, void *a14, int a15, unsigned __int8 a16, uint64_t *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, __int16 a23, unsigned __int8 a24, int a25, uint64_t *a26, uint64_t a27)
{
  v297 = *MEMORY[0x1E69E9840];
  v32 = a4;
  v193 = a5;
  v189 = a8;
  v188 = a13;
  v200 = a14;
  v198 = v32;
  dispatch_assert_queue_V2(v32[1]);
  v187 = a1;
  if (*a1 == a1[1])
  {
    std::string::basic_string[abi:ne200100]<0>(&__s, "");
  }

  else
  {
    quasar::TextProc::GetOrthography(*a1, 0, &__s);
  }

  if (v200)
  {
    objc_msgSend_prevBestRecogText(v200);
    v33 = BYTE7(v220);
    v34 = *(&__p + 1);
  }

  else
  {
    v34 = 0;
    v33 = 0;
    __p = 0uLL;
    *&v220 = 0;
  }

  if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__s.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __s.__r_.__value_.__l.__size_;
  }

  if ((v33 & 0x80u) == 0)
  {
    v34 = v33;
  }

  if (size != v34 || ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (p_s = &__s) : (p_s = __s.__r_.__value_.__r.__words[0]), (v33 & 0x80u) == 0 ? (p_p = &__p) : (p_p = __p), memcmp(p_s, p_p, size)))
  {
    v192 = 0;
    if ((v33 & 0x80) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v192 = [v200 countOfIsFinalFalseAlreadyWritten] != 0;
  if ((BYTE7(v220) & 0x80) != 0)
  {
LABEL_21:
    operator delete(__p);
  }

LABEL_22:
  v282 = 0;
  v283 = &v282;
  v284 = 0x3032000000;
  v285 = __Block_byref_object_copy__2;
  v286 = __Block_byref_object_dispose__2;
  v287 = 0;
  v276 = 0;
  v277 = &v276;
  v278 = 0x3032000000;
  v279 = __Block_byref_object_copy__2;
  v280 = __Block_byref_object_dispose__2;
  v281 = 0;
  v270 = 0;
  v271 = &v270;
  v272 = 0x3032000000;
  v273 = __Block_byref_object_copy__2;
  v274 = __Block_byref_object_dispose__2;
  v275 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v192)
  {
    v38 = [(dispatch_queue_t *)v32 canCloneIsFinalAsLastNonFinal];
  }

  else
  {
    v38 = 0;
  }

  if ([(dispatch_queue_t *)v32 enableDRTOptimization])
  {
    if ([v189 isEqualToString:@"Dictation"])
    {
      v39 = v192;
    }

    else
    {
      v39 = v38;
    }

    if (!v39)
    {
      goto LABEL_30;
    }
  }

  else if (!v38)
  {
LABEL_30:
    v194 = v32[2];
    v264 = 0;
    v40 = a17[1];
    v262 = *a17;
    v263 = v40;
    if (v40)
    {
      atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v190 = [(dispatch_queue_t *)v32 hasUtteranceDetection];
    v41 = [(dispatch_queue_t *)v32 concatenateUtterances];
    v42 = [(dispatch_queue_t *)v32 itnEnablingFlags];
    v43 = [(dispatch_queue_t *)v32 recognizeEmoji];
    v261 = 0;
    v44 = *(a21 + 16);
    if (v44)
    {
      v45 = &v260;
    }

    else
    {
      v45 = 0;
    }

    if (v44)
    {
      v260 = 0;
    }

    v46 = v283 + 5;
    v259 = v283[5];
    v47 = (v277 + 5);
    v258 = v277[5];
    v257 = 0;
    v48 = v198[7];
    v184 = [(dispatch_queue_t *)v198 relevantTextContext];
    objc_msgSend_getParser(v198);
    v49 = resultPackageWithResultChoices(v187, a3, v194, a6, a7, v189, a11, v188, a9, a10, a16, &v264, &v262, v190, v41, a18, a19, a20, v42, v43, 1u, &v261, a22, v45, a23, HIBYTE(a23), a24, &v259, &v258, &v257, v48, a25, v184, a27, [(dispatch_queue_t *)v198 continuousListeningFormatAcrossUtterances]);
    v191 = v264;
    v195 = v261;
    v197 = v49;
    if (v44)
    {
      obja = v260;
    }

    else
    {
      obja = 0;
    }

    objc_storeStrong(v46, v259);
    objc_storeStrong(v47, v258);
    v186 = v257;
    if (v256)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v256);
    }

    if (v263)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v263);
    }

    [v271[5] addObjectsFromArray:v186];
    v51 = [(_EARSpeechRecognitionResultPackage *)v49 hasNonEmptyToken];
    v254 = 0u;
    v255 = 0u;
    v252 = 0u;
    v253 = 0u;
    objb = obja;
    v85 = [objb countByEnumeratingWithState:&v252 objects:v295 count:16];
    if (v85)
    {
      v86 = *v253;
      do
      {
        for (i = 0; i != v85; ++i)
        {
          if (*v253 != v86)
          {
            objc_enumerationMutation(objb);
          }

          v88 = [objb objectForKeyedSubscript:*(*(&v252 + 1) + 8 * i)];
          v89 = [v88 hasNonEmptyToken];

          v51 |= v89;
        }

        v85 = [objb countByEnumeratingWithState:&v252 objects:v295 count:16];
      }

      while (v85);
    }

    if (objb)
    {
      v90 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v250 = 0u;
      v251 = 0u;
      v248 = 0u;
      v249 = 0u;
      v91 = objb;
      v92 = [v91 countByEnumeratingWithState:&v248 objects:v294 count:16];
      if (v92)
      {
        v93 = *v249;
        do
        {
          for (j = 0; j != v92; ++j)
          {
            if (*v249 != v93)
            {
              objc_enumerationMutation(v91);
            }

            v95 = *(*(&v248 + 1) + 8 * j);
            v96 = [v91 objectForKeyedSubscript:v95];
            v97 = [v96 copy];
            [v90 setObject:v97 forKeyedSubscript:v95];
          }

          v92 = [v91 countByEnumeratingWithState:&v248 objects:v294 count:16];
        }

        while (v92);
      }

      v98 = v90;
    }

    else
    {
      v98 = 0;
    }

    [v200 setAnyResults:v51 & 1];
    v112 = [(_EARSpeechRecognitionResultPackage *)v197 copy];
    [v200 setPrevPackage:v112];

    [v200 setPrevMuxPackages:v98];
    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v247, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
    }

    else
    {
      v247 = __s;
    }

    [v200 setPrevBestRecogText:&v247];
    if (SHIBYTE(v247.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v247.__r_.__value_.__l.__data_);
    }

    [v200 setPrevPackageWithoutPersonalization:v195];
    if ((a3 & 1) == 0)
    {
      [v200 incrementCountOfIsFinalFalseAlreadyWritten];
    }

    goto LABEL_83;
  }

  v50 = [v200 prevPackage];
  v51 = [v200 anyResults];
  [(_EARSpeechRecognitionResultPackage *)v50 setIsFinal:a3];
  v52 = v32[2];
  v269[0] = MEMORY[0x1E69E9820];
  v269[1] = 3221225472;
  v269[2] = ___ZL31writeFinalChoicesToResultStreamRKNSt3__16vectorINS0_IN6quasar5TokenENS_9allocatorIS2_EEEENS3_IS5_EEEERKNS0_IdNS3_IdEEEEbP20_EARSpeechRecognizerPU44objcproto33_EARSpeechRecognitionResultStream11objc_objectRKNS1_14AudioAnalyticsERKNS1_20LatnnMitigatorResultEdP8NSStringjjSP_P17_EARResultContextNS1_21RecogResultStreamBase11RecogStatusEbRKS5_NS_10shared_ptrINS1_25ContinuousListeningConfigEEESV_RS7_RKNS0_INS1_11ItnOverrideENS3_IS10_EEEERKNS_3setINS_12basic_stringIcNS_11char_traitsIcEENS3_IcEEEENS_4lessIS1A_EENS3_IS1A_EEEERKNS0_IS1E_NS3_IS1E_EEEEbbSV_bdiNSW_INS1_14result_handler13ResultHandlerEEERK14FormattingInfo_block_invoke;
  v269[3] = &unk_1E7C1A638;
  v269[4] = &v282;
  v269[5] = &v276;
  v269[6] = &v270;
  [v52 setItnMetricsWithCompletion:v269];
  v197 = v50;
  v53 = [(_EARSpeechRecognitionResultPackage *)v50 recognition];
  v54 = [v53 tokenSausage];
  v55 = (a12 + a11) / 1000.0;
  v56 = tokenSausageWithExtendedEndTime(v54, v55);
  v57 = [(_EARSpeechRecognitionResultPackage *)v197 recognition];
  [v57 setTokenSausage:v56];

  v58 = [(_EARSpeechRecognitionResultPackage *)v197 preITNRecognition];
  v59 = [v58 tokenSausage];
  v60 = tokenSausageWithExtendedEndTime(v59, v55);
  v61 = [(_EARSpeechRecognitionResultPackage *)v197 preITNRecognition];
  [v61 setTokenSausage:v60];

  v62 = [(_EARSpeechRecognitionResultPackage *)v197 unrepairedRecognition];
  v63 = [v62 tokenSausage];
  v64 = tokenSausageWithExtendedEndTime(v63, v55);
  v65 = [(_EARSpeechRecognitionResultPackage *)v197 unrepairedRecognition];
  [v65 setTokenSausage:v64];

  [(_EARSpeechRecognitionResultPackage *)v197 setFirstResultAfterResume:0];
  [(_EARSpeechRecognitionResultPackage *)v197 setRecognitionPaused:HIBYTE(a23)];
  if (*(a21 + 16))
  {
    v66 = [v200 prevMuxPackages];
    v267 = 0u;
    v268 = 0u;
    v265 = 0u;
    v266 = 0u;
    objb = v66;
    v67 = [objb countByEnumeratingWithState:&v265 objects:v296 count:16];
    if (v67)
    {
      v68 = *v266;
      do
      {
        for (k = 0; k != v67; ++k)
        {
          if (*v266 != v68)
          {
            objc_enumerationMutation(objb);
          }

          v70 = *(*(&v265 + 1) + 8 * k);
          v71 = [v200 prevMuxPackages];
          v72 = [v71 objectForKeyedSubscript:v70];

          [v72 setIsFinal:a3];
          v73 = [v72 recognition];
          v74 = [v73 tokenSausage];
          v75 = tokenSausageWithExtendedEndTime(v74, v55);
          v76 = [v72 recognition];
          [v76 setTokenSausage:v75];

          v77 = [v72 preITNRecognition];
          v78 = [v77 tokenSausage];
          v79 = tokenSausageWithExtendedEndTime(v78, v55);
          v80 = [v72 preITNRecognition];
          [v80 setTokenSausage:v79];

          v81 = [v72 unrepairedRecognition];
          v82 = [v81 tokenSausage];
          v83 = tokenSausageWithExtendedEndTime(v82, v55);
          v84 = [v72 unrepairedRecognition];
          [v84 setTokenSausage:v83];
        }

        v67 = [objb countByEnumeratingWithState:&v265 objects:v296 count:16];
      }

      while (v67);
    }
  }

  else
  {
    objb = 0;
  }

  v99 = [v200 prevPackageWithoutPersonalization];
  [v99 setIsFinal:a3];
  v100 = [v99 recognition];
  v195 = v99;
  v101 = [v100 tokenSausage];
  v102 = tokenSausageWithExtendedEndTime(v101, v55);
  v103 = [v195 recognition];
  [v103 setTokenSausage:v102];

  v104 = [v195 preITNRecognition];
  v105 = [v104 tokenSausage];
  v106 = tokenSausageWithExtendedEndTime(v105, v55);
  v107 = [v195 preITNRecognition];
  [v107 setTokenSausage:v106];

  v108 = [v195 unrepairedRecognition];
  v109 = [v108 tokenSausage];
  v110 = tokenSausageWithExtendedEndTime(v109, v55);
  v111 = [v195 unrepairedRecognition];
  [v111 setTokenSausage:v110];

  [v195 setFirstResultAfterResume:0];
  [v195 setRecognitionPaused:HIBYTE(a23)];
  v191 = 0;
LABEL_83:
  if (a15 != 1 || (a3 & 1) == 0 || v192)
  {
    v113 = 0;
  }

  else
  {
    v113 = [(dispatch_queue_t *)v198 canCloneIsFinalAsLastNonFinal];
  }

  if (quasar::gLogLevel >= 5)
  {
    if (*(a21 + 16))
    {
      v245 = 0u;
      v246 = 0u;
      v243 = 0u;
      v244 = 0u;
      v114 = objb;
      v115 = [v114 countByEnumeratingWithState:&v243 objects:v293 count:16];
      if (v115)
      {
        v116 = *v244;
        do
        {
          for (m = 0; m != v115; ++m)
          {
            if (*v244 != v116)
            {
              objc_enumerationMutation(v114);
            }

            v118 = *(*(&v243 + 1) + 8 * m);
            v119 = [v114 objectForKeyedSubscript:v118];
            logPackageToQuasarDebug(v119, v118, 0);
          }

          v115 = [v114 countByEnumeratingWithState:&v243 objects:v293 count:16];
        }

        while (v115);
      }
    }

    else
    {
      logPackageToQuasarDebug(v197, 0, 0);
    }
  }

  if ((v51 & 1) == 0 && ![(_EARSpeechRecognitionResultPackage *)v197 recognitionPaused])
  {
    goto LABEL_151;
  }

  v120 = *(a21 + 16);
  if (!v120)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      if (objc_opt_respondsToSelector())
      {
        v139 = [(_EARSpeechRecognitionResultPackage *)v197 nBestResults];
        v140 = [(_EARSpeechRecognitionResultPackage *)v197 recognition];
        v141 = [v140 tokenSausage];
        v142 = [(_EARSpeechRecognitionResultPackage *)v197 recognition];
        v143 = [v142 interpretationIndices];
        [v193 speechRecognizer:v198 didRecognizeFinalResults:v139 tokenSausage:v141 nBestChoices:v143];
      }

      else
      {
        v144 = [(_EARSpeechRecognitionResultPackage *)v197 nBestResults];
        [v193 speechRecognizer:v198 didRecognizeFinalResults:v144];
      }

      goto LABEL_151;
    }

    if (v113)
    {
      v138 = [(_EARSpeechRecognitionResultPackage *)v197 copy];
      [v138 setIsFinal:0];
      [v193 speechRecognizer:v198 didRecognizeFinalResultPackage:v138];
    }

    if (*a26)
    {
      EARPackageToRHPackage(v197);
    }

    if ([(dispatch_queue_t *)v198 hasUtteranceDetection])
    {
      if (![(dispatch_queue_t *)v198 concatenateUtterances]|| (a3 & 1) != 0)
      {
LABEL_144:
        if (v200)
        {
          objc_msgSend_partialResults(v200);
        }

        else
        {
          __p = 0uLL;
          *&v220 = 0;
        }

        v145 = *v187;
        v146 = v187[1];
        *&v216 = 0;
        v215 = 0uLL;
        if (v145 != v146)
        {
          std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(&v215, *v145, *(v145 + 8), 0x6DB6DB6DB6DB6DB7 * ((*(v145 + 8) - *v145) >> 5));
        }

        -[_EARSpeechRecognitionResultPackage setCorrectPartialResultIndexList:oneBestFinalResult:partialResultIndexOffset:](v197, "setCorrectPartialResultIndexList:oneBestFinalResult:partialResultIndexOffset:", &__p, &v215, [v200 partialResultIndexOffset]);
        v232 = &v215;
        std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v232);
        *&v215 = &__p;
        std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v215);
      }
    }

    else if (a3)
    {
      goto LABEL_144;
    }

    [v193 speechRecognizer:v198 didRecognizeFinalResultPackage:v197];
    goto LABEL_151;
  }

  if (v120 != [objb count])
  {
    v182 = [MEMORY[0x1E696AAA8] currentHandler];
    v183 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void writeFinalChoicesToResultStream(const std::vector<std::vector<Token>> &, const std::vector<double> &, BOOL, _EARSpeechRecognizer *__strong, __strong id<_EARSpeechRecognitionResultStream>, const AudioAnalytics &, const LatnnMitigatorResult &, const double, NSString *__strong, const unsigned int, const unsigned int, NSString *__strong, _EARResultContext *__strong, RecogResultStreamBase::RecogStatus, BOOL, const std::vector<Token> &, std::shared_ptr<ContinuousListeningConfig>, const std::vector<Token> &, std::vector<std::vector<Token>> &, const std::vector<quasar::ItnOverride> &, const std::set<std::string> &, const std::vector<std::set<std::string>> &, BOOL, BOOL, const std::vector<quasar::Token> &, BOOL, double, int, std::shared_ptr<result_handler::ResultHandler>, const FormattingInfo &)"}];
    [v182 handleFailureInFunction:v183 file:@"EARSpeechRecognizer.mm" lineNumber:2558 description:{@"There are results, but not every user has results"}];
  }

  if (objc_opt_respondsToSelector())
  {
    if (v113)
    {
      v121 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v241 = 0u;
      v242 = 0u;
      v239 = 0u;
      v240 = 0u;
      v122 = objb;
      v123 = [v122 countByEnumeratingWithState:&v239 objects:v292 count:16];
      if (v123)
      {
        v124 = *v240;
        do
        {
          for (n = 0; n != v123; ++n)
          {
            if (*v240 != v124)
            {
              objc_enumerationMutation(v122);
            }

            v126 = *(*(&v239 + 1) + 8 * n);
            v127 = [v122 objectForKeyedSubscript:v126];
            v128 = [v127 copy];

            [v128 setIsFinal:0];
            [v121 setObject:v128 forKeyedSubscript:v126];
          }

          v123 = [v122 countByEnumeratingWithState:&v239 objects:v292 count:16];
        }

        while (v123);
      }

      v129 = [(dispatch_queue_t *)v198 _unmaskMuxPackages:v121];
      [v193 speechRecognizer:v198 didRecognizeFinalResultMultiUserPackages:v129];
    }

    v237 = 0u;
    v238 = 0u;
    v235 = 0u;
    v236 = 0u;
    v130 = objb;
    v131 = [v130 countByEnumeratingWithState:&v235 objects:v291 count:16];
    if (v131)
    {
      v132 = *v236;
      do
      {
        for (ii = 0; ii != v131; ++ii)
        {
          if (*v236 != v132)
          {
            objc_enumerationMutation(v130);
          }

          v134 = *(*(&v235 + 1) + 8 * ii);
          if ([(dispatch_queue_t *)v198 hasUtteranceDetection])
          {
            if ([(dispatch_queue_t *)v198 concatenateUtterances]&& (a3 & 1) == 0)
            {
              continue;
            }
          }

          else if (!a3)
          {
            continue;
          }

          v135 = [v130 objectForKeyedSubscript:v134];
          v136 = [v135 preITNRecognition];
          EARHelpers::QuasarNbestFromEARSpeechRecognition(&__p, v136);

          if (v200)
          {
            objc_msgSend_partialResults(v200);
          }

          else
          {
            v215 = 0uLL;
            *&v216 = 0;
          }

          v234 = 0;
          v232 = 0;
          v233 = 0;
          if (__p != *(&__p + 1))
          {
            std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(&v232, *__p, *(__p + 8), 0x6DB6DB6DB6DB6DB7 * ((*(__p + 8) - *__p) >> 5));
          }

          [v135 setCorrectPartialResultIndexList:&v215 oneBestFinalResult:&v232 partialResultIndexOffset:{objc_msgSend(v200, "partialResultIndexOffset")}];
          v214[0] = &v232;
          std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v214);
          v232 = &v215;
          std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v232);
          *&v215 = &__p;
          std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v215);
        }

        v131 = [v130 countByEnumeratingWithState:&v235 objects:v291 count:16];
      }

      while (v131);
    }

    v137 = [(dispatch_queue_t *)v198 _unmaskMuxPackages:v130];
    [v193 speechRecognizer:v198 didRecognizeFinalResultMultiUserPackages:v137];
  }

LABEL_151:
  if ((a23 & 0x100) == 0 && [(dispatch_queue_t *)v198 hasUtteranceDetection]&& ([(dispatch_queue_t *)v198 concatenateUtterances]& 1) == 0)
  {
    v147 = [(_EARSpeechRecognitionResultPackage *)v197 recognition];
    v148 = [v147 oneBest];

    v149 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v230 = 0u;
    v231 = 0u;
    v228 = 0u;
    v229 = 0u;
    v150 = [(_EARSpeechRecognitionResultPackage *)v197 preITNRecognition];
    v151 = [v150 oneBest];

    v152 = [v151 countByEnumeratingWithState:&v228 objects:v290 count:16];
    if (v152)
    {
      v153 = *v229;
      do
      {
        for (jj = 0; jj != v152; ++jj)
        {
          if (*v229 != v153)
          {
            objc_enumerationMutation(v151);
          }

          v155 = [*(*(&v228 + 1) + 8 * jj) tokenName];
          [v149 addObject:v155];
        }

        v152 = [v151 countByEnumeratingWithState:&v228 objects:v290 count:16];
      }

      while (v152);
    }

    v156 = [(dispatch_queue_t *)v198 relevantTextContext];
    v157 = EARHelpers::EarTokensToNSString(v148);
    [v156 appendToLeftContext:v157 preItnLeftContext:v149];

    v158 = [v148 lastObject];
    LOBYTE(v157) = v158 == 0;

    if ((v157 & 1) == 0)
    {
      v159 = [(dispatch_queue_t *)v198 relevantTextContext];
      v160 = [v148 lastObject];
      [v159 setLeftContextEndsWithAppendedAutoPunctuation:{objc_msgSend(v160, "appendedAutoPunctuation")}];
    }
  }

  if ([(dispatch_queue_t *)v198 hasUtteranceDetection]&& ([(dispatch_queue_t *)v198 concatenateUtterances]& 1) == 0)
  {
    [v200 updateLoggableResultWithCurrentResult:v187 currentCosts:a2 startMilliseconds:a11];
    [v200 resetPartialResultContext];
  }

  v161 = [(_EARSpeechRecognitionResult *)v191 tokens];
  if ([v161 count])
  {
    v162 = [(_EARSpeechRecognitionResultPackage *)v197 recognitionPaused];

    if (!v162)
    {
      if (*a26)
      {
        EARResultToRHPackage(v191);
      }

      [v193 speechRecognizer:v198 didRecognizePartialResult:v191];
      if (v191)
      {
        objc_msgSend_quasarPreItnTokens(v191);
      }

      else
      {
        __p = 0uLL;
        *&v220 = 0;
      }

      [v200 addPartialResultToContext:&__p];
      *&v215 = &__p;
      std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v215);
    }
  }

  else
  {
  }

  if (a3)
  {
    if (*(a21 + 16))
    {
      if (objb && (objc_opt_respondsToSelector() & 1) != 0)
      {
        v163 = [(dispatch_queue_t *)v198 _unmaskMuxPackages:objb];
        [v193 speechRecognizer:v198 didProduceLoggableMultiUserPackages:v163];
      }
    }

    else if (v197 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      if ([(dispatch_queue_t *)v198 hasUtteranceDetection]&& ([(dispatch_queue_t *)v198 concatenateUtterances]& 1) == 0)
      {
        if (v200)
        {
          objc_msgSend_loggableConcatResult(v200);
        }

        else
        {
          v233 = 0;
          v232 = 0;
          v234 = 0;
        }

        if (v283[5])
        {
          v164 = v277[5] != 0;
        }

        else
        {
          v164 = 0;
        }

        v165 = v198[2];
        v226 = 0u;
        v227 = 0u;
        v224 = 0u;
        v225 = 0u;
        v222 = 0u;
        v223 = 0u;
        v220 = 0u;
        v221 = 0u;
        __p = 0u;
        v216 = 0u;
        v217 = 0u;
        v215 = 0u;
        v218 = 1065353216;
        memset(v214, 0, sizeof(v214));
        v212 = 0;
        v213 = 0;
        v211 = 0;
        v166 = [(dispatch_queue_t *)v198 hasUtteranceDetection];
        v167 = [(dispatch_queue_t *)v198 concatenateUtterances];
        memset(v210, 0, sizeof(v210));
        memset(v209, 0, sizeof(v209));
        v168 = [(dispatch_queue_t *)v198 itnEnablingFlags];
        v169 = [(dispatch_queue_t *)v198 recognizeEmoji];
        v170 = 0;
        v171 = 0;
        memset(v208, 0, sizeof(v208));
        memset(v207, 0, sizeof(v207));
        v172 = &v206;
        if (v164)
        {
          v172 = 0;
        }

        v173 = v283;
        if (!v164)
        {
          v174 = v283[5];
          v170 = (v277 + 5);
          v205 = v277[5];
          v206 = v174;
          v171 = &v205;
        }

        v204 = 0;
        v175 = resultPackageWithResultChoices(&v232, 1u, v165, &__p, &v215, v189, 0, v188, -1000.0, 9.0, 0, &v213, &v211, v166, v167, v210, a19, v209, v168, v169, 0, 0, v208, 0, 0, HIBYTE(a23), a24, v172, v171, &v204, v198[7], 0, 0, a27, 0);
        v176 = v213;
        if (!v164)
        {
          objc_storeStrong(v173 + 5, v206);
          objc_storeStrong(v170, v205);
        }

        v177 = v204;
        v289 = v207;
        std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v289);
        v207[0] = v208;
        std::vector<std::set<std::string>>::__destroy_vector::operator()[abi:ne200100](v207);
        v208[0] = v209;
        std::vector<quasar::ItnOverride>::__destroy_vector::operator()[abi:ne200100](v208);
        v209[0] = v210;
        std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v209);
        if (v212)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v212);
        }

        v210[0] = v214;
        std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v210);
        if (SHIBYTE(v216) < 0)
        {
          operator delete(*(&v215 + 1));
        }

        quasar::AudioAnalytics::~AudioAnalytics(&__p);
        [v271[5] addObjectsFromArray:v177];
        if (v175)
        {
          [v193 speechRecognizer:v198 didProduceLoggablePackage:v175];
        }

        *&__p = &v232;
        std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&__p);
      }

      else
      {
        [v193 speechRecognizer:v198 didProduceLoggablePackage:v195];
      }
    }

    v178 = [(dispatch_queue_t *)v198 recognitionMetrics];
    [v178 addPauseDurationMetric];

    v179 = [(dispatch_queue_t *)v198 recognitionMetrics];
    [v179 addItnRunIntervals:v271[5]];

    if (v283[5] && v277[5])
    {
      v180 = [(dispatch_queue_t *)v198 recognitionMetrics];
      [v180 addEmojiRecognitionMetrics:v283[5] recognizedEmojis:v277[5]];
    }

    v181 = [(dispatch_queue_t *)v198 relevantTextContext];
    [v181 reset];

    [v193 speechRecognizer:v198 didFinishRecognitionWithError:0];
    [v200 resetPartialResultContext];
  }

  _Block_object_dispose(&v270, 8);

  _Block_object_dispose(&v276, 8);
  _Block_object_dispose(&v282, 8);

  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }
}

void sub_1B51D0F08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, void *a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, void *a46, void *a47, void *a48, uint64_t a49, void *a50, void *a51)
{
  _Block_object_dispose(&STACK[0x578], 8);

  _Block_object_dispose(&STACK[0x5A8], 8);
  _Block_object_dispose(&STACK[0x5D8], 8);

  if (SLOBYTE(STACK[0x61F]) < 0)
  {
    operator delete(STACK[0x608]);
  }

  _Unwind_Resume(a1);
}

void quasar::AudioAnalytics::~AudioAnalytics(quasar::AudioAnalytics *this)
{
  v2 = *(this + 12);
  if (v2)
  {
    *(this + 13) = v2;
    operator delete(v2);
  }

  v3 = *(this + 8);
  if (v3)
  {
    *(this + 9) = v3;
    operator delete(v3);
  }

  v4 = *(this + 4);
  if (v4)
  {
    *(this + 5) = v4;
    operator delete(v4);
  }

  v5 = *this;
  if (*this)
  {
    *(this + 1) = v5;
    operator delete(v5);
  }
}

void EARContinuousListeningResultHelper::writeFinalCandidateImpl(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, char a10, uint64_t a11)
{
  EARContinuousListeningResultHelper::setParser(a1);
  memset(v43, 0, sizeof(v43));
  WeakRetained = objc_loadWeakRetained((a1 + 208));
  v21 = objc_loadWeakRetained((a1 + 216));
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v34 = 0u;
  v32 = 0u;
  *__p = 0u;
  v31 = 0u;
  v33 = 1065353216;
  v16 = *(a1 + 232);
  v15 = *(a1 + 240);
  quasar::ContinuousListeningResultHelper::getContinuousListeningConfig(&v28, a1);
  memset(v27, 0, sizeof(v27));
  v26[0] = 0;
  v26[1] = 0;
  v25 = v26;
  memset(v24, 0, sizeof(v24));
  v17 = *(a1 + 256);
  v23[0] = *(a1 + 248);
  v23[1] = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = objc_loadWeakRetained((a1 + 224));
  writeFinalCandidateChoicesToResultStream(a2, WeakRetained, v21, &v34, __p, v16, a4, -1000.0, 9.0, a5, v15, &v28, a7, v43, v27, &v25, v24, a8, a10, 0, v23, v18, a11);

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  v44 = v24;
  std::vector<std::set<std::string>>::__destroy_vector::operator()[abi:ne200100](&v44);
  std::__tree<std::string>::destroy(&v25, v26[0]);
  v25 = v27;
  std::vector<quasar::ItnOverride>::__destroy_vector::operator()[abi:ne200100](&v25);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  if (SHIBYTE(v31) < 0)
  {
    operator delete(__p[1]);
  }

  if (v40)
  {
    *(&v40 + 1) = v40;
    operator delete(v40);
  }

  if (v38)
  {
    *(&v38 + 1) = v38;
    operator delete(v38);
  }

  if (v36)
  {
    *(&v36 + 1) = v36;
    operator delete(v36);
  }

  if (v34)
  {
    *(&v34 + 1) = v34;
    operator delete(v34);
  }

  *&v34 = v43;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v34);
}

void sub_1B51D18D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, void *a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, char *a29, char *a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, std::__shared_weak_count *a36, uint64_t a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }

  *(v50 - 104) = &a26;
  std::vector<std::set<std::string>>::__destroy_vector::operator()[abi:ne200100]((v50 - 104));
  std::__tree<std::string>::destroy(&a29, a30);
  a29 = &a32;
  std::vector<quasar::ItnOverride>::__destroy_vector::operator()[abi:ne200100](&a29);
  if (a36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a36);
  }

  if (a43 < 0)
  {
    operator delete(__p);
  }

  quasar::AudioAnalytics::~AudioAnalytics(&a48);

  a48 = v50 - 128;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&a48);
  _Unwind_Resume(a1);
}

void writeFinalCandidateChoicesToResultStream(uint64_t *a1, void *a2, void *a3, uint64_t a4, unsigned __int8 *a5, void *a6, unsigned int a7, double a8, double a9, uint64_t a10, void *a11, uint64_t *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, char a18, char a19, int a20, uint64_t *a21, void *a22, uint64_t a23)
{
  v27 = a2;
  v49 = a3;
  v53 = a6;
  v52 = a11;
  v54 = a22;
  if (*(a16 + 16))
  {
    v43 = [MEMORY[0x1E696AAA8] currentHandler];
    v44 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void writeFinalCandidateChoicesToResultStream(const std::vector<std::vector<Token>> &, const std::vector<double> &, _EARSpeechRecognizer *__strong, __strong id<_EARSpeechRecognitionResultStream>, const AudioAnalytics &, const LatnnMitigatorResult &, const double, NSString *__strong, const unsigned int, const unsigned int, NSString *__strong, const std::vector<Token> &, std::shared_ptr<ContinuousListeningConfig>, const std::vector<Token> &, std::vector<std::vector<Token>> &, const std::vector<quasar::ItnOverride> &, const std::set<std::string> &, const std::vector<std::set<std::string>> &, BOOL, const std::vector<quasar::Token> &, double, BOOL, int, std::shared_ptr<result_handler::ResultHandler>, _EARResultContext *__strong, const FormattingInfo &)"}];
    [v43 handleFailureInFunction:v44 file:@"EARSpeechRecognizer.mm" lineNumber:2758 description:@"Mux is not supported for candidate packages"];
  }

  if (*a17 != a17[1])
  {
    v45 = [MEMORY[0x1E696AAA8] currentHandler];
    v46 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void writeFinalCandidateChoicesToResultStream(const std::vector<std::vector<Token>> &, const std::vector<double> &, _EARSpeechRecognizer *__strong, __strong id<_EARSpeechRecognitionResultStream>, const AudioAnalytics &, const LatnnMitigatorResult &, const double, NSString *__strong, const unsigned int, const unsigned int, NSString *__strong, const std::vector<Token> &, std::shared_ptr<ContinuousListeningConfig>, const std::vector<Token> &, std::vector<std::vector<Token>> &, const std::vector<quasar::ItnOverride> &, const std::set<std::string> &, const std::vector<std::set<std::string>> &, BOOL, const std::vector<quasar::Token> &, double, BOOL, int, std::shared_ptr<result_handler::ResultHandler>, _EARResultContext *__strong, const FormattingInfo &)"}];
    [v45 handleFailureInFunction:v46 file:@"EARSpeechRecognizer.mm" lineNumber:2759 description:@"Mux is not supported for candidate packages"];
  }

  dispatch_assert_queue_V2(v27[1]);
  v28 = v27[2];
  v29 = a12[1];
  v60 = *a12;
  v61 = v29;
  if (v29)
  {
    atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v30 = [(dispatch_queue_t *)v27 hasUtteranceDetection];
  v31 = [(dispatch_queue_t *)v27 concatenateUtterances];
  v32 = [(dispatch_queue_t *)v27 itnEnablingFlags];
  v33 = [(dispatch_queue_t *)v27 recognizeEmoji];
  v58 = 0;
  v59 = 0;
  v34 = v27[7];
  v35 = [(dispatch_queue_t *)v27 relevantTextContext];
  objc_msgSend_getParser(v27);
  v36 = resultPackageWithResultChoices(a1, 0, v28, a4, a5, v53, a7, v52, a8, a9, 0, 0, &v60, v30, v31, a13, a14, a15, v32, v33, 0, &v59, a17, 0, a18, 0, 0, 0, 0, &v58, v34, a20, v35, a23, [(dispatch_queue_t *)v27 continuousListeningFormatAcrossUtterances]);
  v37 = v59;
  v38 = v58;
  if (v57)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v57);
  }

  if (v61)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v61);
  }

  v39 = [(_EARSpeechRecognitionResultPackage *)v36 hasNonEmptyToken];
  if (quasar::gLogLevel > 4)
  {
    logPackageToQuasarDebug(v36, 0, 1);
  }

  if ([(dispatch_queue_t *)v27 enableDRTOptimization])
  {
    [v54 setAnyResults:v39];
    v40 = [(_EARSpeechRecognitionResultPackage *)v36 copy];
    [v54 setPrevPackage:v40];

    if (*a1 == a1[1])
    {
      std::string::basic_string[abi:ne200100]<0>(&v56, "");
    }

    else
    {
      quasar::TextProc::GetOrthography(*a1, 0, &v56);
    }

    if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v55, v56.__r_.__value_.__l.__data_, v56.__r_.__value_.__l.__size_);
    }

    else
    {
      v55 = v56;
    }

    [v54 setPrevBestRecogText:&v55];
    if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v55.__r_.__value_.__l.__data_);
    }

    [v54 setPrevPackageWithoutPersonalization:v37];
    [v54 incrementCountOfIsFinalFalseAlreadyWritten];
    if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v56.__r_.__value_.__l.__data_);
    }
  }

  else if (v39)
  {
    v41 = *a21;
    if (a19)
    {
      if (v41)
      {
        EARPackageToRHPackage(v36);
      }

      if (objc_opt_respondsToSelector())
      {
        [v49 speechRecognizer:v27 didRecognizeVoiceCommandCandidatePackage:v36];
      }
    }

    else
    {
      if (v41)
      {
        EARPackageToRHPackage(v36);
      }

      if (objc_opt_respondsToSelector())
      {
        [v49 speechRecognizer:v27 didRecognizeFinalResultCandidatePackage:v36];
      }
    }
  }

  v42 = [(dispatch_queue_t *)v27 recognitionMetrics];
  [v42 addItnRunIntervals:v38];
}

void sub_1B51D20F4(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1B51D21C0(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_1B51D2D44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, void *a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *__p, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose((v71 - 200), 8);
  a65 = a23;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a65);

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__531(__n128 *a1, __n128 *a2)
{
  a1[3] = 0uLL;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3] = 0uLL;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_1B51D3310(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char *a18)
{
  quasar::SpeechRecognizerActiveConfiguration::~SpeechRecognizerActiveConfiguration(&a18);

  _Unwind_Resume(a1);
}

void sub_1B51D3384(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1B51D337CLL);
}

void sub_1B51D3458(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1B51D38B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, char a46, uint64_t a47, uint64_t a48, void *__p, uint64_t a50, int a51, __int16 a52, char a53, char a54, uint64_t a55, uint64_t a56)
{
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a56);
  if (a54 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::vector<quasar::Token>::push_back[abi:ne200100](uint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<quasar::Token>::__emplace_back_slow_path<quasar::Token>(a1, a2);
  }

  else
  {
    std::allocator_traits<std::allocator<quasar::Token>>::construct[abi:ne200100]<quasar::Token,quasar::Token,0>(a1, a1[1], a2);
    result = v3 + 224;
    a1[1] = v3 + 224;
  }

  a1[1] = result;
  return result;
}

void sub_1B51D3D24(_Unwind_Exception *a1)
{
  v9 = v8;

  _Unwind_Resume(a1);
}

void sub_1B51D43FC(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  if (a2 == 4)
  {
    v8 = __cxa_begin_catch(exception_object);
    v9 = EARLogger::QuasarOSLogger(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [_EARSpeechRecognizer loadParser];
    }

    __cxa_rethrow();
  }

  if (a2 == 3)
  {
    v3 = __cxa_begin_catch(exception_object);
    v4 = EARLogger::QuasarOSLogger(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      [_EARSpeechRecognizer loadParser];
    }
  }

  else
  {
    v5 = __cxa_begin_catch(exception_object);
    if (a2 == 2)
    {
      v6 = v5;
      v7 = EARLogger::QuasarOSLogger(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        [_EARSpeechRecognizer loadParser];
      }

      __cxa_end_catch();
LABEL_18:
      JUMPOUT(0x1B51D43C8);
    }

    v4 = EARLogger::QuasarOSLogger(v5);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      [_EARSpeechRecognizer loadParser];
    }
  }

  __cxa_end_catch();
  goto LABEL_18;
}

void sub_1B51D5A40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    quasar::artifact::CreatePhraseCountsArtifact();
  }

  quasar::LmeDataStreams::~LmeDataStreams((v28 - 80));

  _Unwind_Resume(a1);
}

void addAotLmeStreams(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  if (v4)
  {
    memset(v22, 0, sizeof(v22));
    obj = v4;
    if ([obj countByEnumeratingWithState:v22 objects:v23 count:16])
    {
      v6 = **(&v22[0] + 1);
      v7 = MEMORY[0x1E696AEC0];
      v8 = [**(&v22[0] + 1) userId];
      v9 = v8;
      if (v8)
      {
        objc_msgSend_ear_toString(v8);
        v10 = HIBYTE(v21);
        v12 = __p;
        v11 = v20;
      }

      else
      {
        v11 = 0;
        v12 = 0;
        v10 = 0;
        __p = 0;
        v20 = 0;
        v21 = 0;
      }

      if ((v10 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = v12;
      }

      if ((v10 & 0x80u) == 0)
      {
        v14 = v10;
      }

      else
      {
        v14 = v11;
      }

      v15 = [v7 ear_stringWithStringView:{p_p, v14}];
      if (SHIBYTE(v21) < 0)
      {
        operator delete(__p);
      }

      v16 = [v5 objectForKeyedSubscript:v15];
      v17 = v16;
      if (v6)
      {
        objc_msgSend_lmeData(v6);
        if (v17)
        {
LABEL_16:
          objc_msgSend_ear_toString(v17);
          goto LABEL_19;
        }
      }

      else if (v16)
      {
        goto LABEL_16;
      }

      __p = 0;
      v20 = 0;
      v21 = 0;
LABEL_19:
      std::allocate_shared[abi:ne200100]<quasar::LmeContainer,std::allocator<quasar::LmeContainer>,std::shared_ptr<quasar::LmeData const>,std::string,quasar::LmeDataFactoryBase::LmeType,0>();
    }
  }
}

void *__copy_helper_block_ea8_40c29_ZTSN6quasar14LmeDataStreamsE(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  v3 = a1 + 5;
  a1[7] = 0;
  std::vector<quasar::LmeDataFactoryBase::LmeType>::__init_with_size[abi:ne200100]<quasar::LmeDataFactoryBase::LmeType*,quasar::LmeDataFactoryBase::LmeType*>(a1 + 5, *(a2 + 40), *(a2 + 48), (*(a2 + 48) - *(a2 + 40)) >> 2);
  return std::map<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>::map[abi:ne200100](v3 + 3, a2 + 64);
}

void sub_1B51D5E98(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 48) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_ea8_40c29_ZTSN6quasar14LmeDataStreamsE(void *a1)
{
  std::__tree<std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>,std::__map_value_compare<quasar::LmeDataFactoryBase::LmeType,std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>,std::less<quasar::LmeDataFactoryBase::LmeType>,true>,std::allocator<std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>>>::destroy((a1 + 8), a1[9]);
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;

    operator delete(v2);
  }
}

void quasar::LmeDataStreams::~LmeDataStreams(char **this)
{
  std::__tree<std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>,std::__map_value_compare<quasar::LmeDataFactoryBase::LmeType,std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>,std::less<quasar::LmeDataFactoryBase::LmeType>,true>,std::allocator<std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>>>::destroy((this + 3), this[4]);
  v2 = *this;
  if (*this)
  {
    this[1] = v2;
    operator delete(v2);
  }
}

void sub_1B51D61F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    quasar::artifact::CreatePhraseCountsArtifact();
  }

  quasar::LmeDataStreams::~LmeDataStreams((v28 - 80));

  _Unwind_Resume(a1);
}

void sub_1B51D6564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, void *a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a21, 8);

  _Unwind_Resume(a1);
}

void sub_1B51D679C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B51D6898(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B51D7948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (v65)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v65);
  }

  STACK[0x2E0] = &a65;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2E0]);
  a65 = &STACK[0x200];
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&a65);
  if (SLOBYTE(STACK[0x22F]) < 0)
  {
    operator delete(STACK[0x218]);
  }

  if (SLOBYTE(STACK[0x2DF]) < 0)
  {
    operator delete(STACK[0x2C8]);
  }

  STACK[0x2C8] = &STACK[0x230];
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2C8]);
  STACK[0x2C8] = &STACK[0x248];
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2C8]);
  std::promise<quasar::Location>::~promise(&STACK[0x260]);
  quasar::LmeDataStreams::~LmeDataStreams(&STACK[0x288]);

  _Unwind_Resume(a1);
}

uint64_t ResultStreamWrapper::hasInterUtteranceLeftContext(ResultStreamWrapper *this, const char *a2)
{
  v3 = *(this + 10);
  if (!v3)
  {
    return 0;
  }

  objc_msgSend_continuousListeningResultHelper(v3, a2);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (!v9)
  {
    return 0;
  }

  v4 = *(this + 10);
  if (v4)
  {
    objc_msgSend_continuousListeningResultHelper(v4);
    v4 = v7;
  }

  else
  {
    v8 = 0;
  }

  quasar::ContinuousListeningResultHelper::getContinuousListeningConfig(&v9, v4);
  v5 = *(v9 + 12);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  return v5;
}

void sub_1B51D7F18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

__n128 __Block_byref_object_copy__586(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  a2[3] = 0uLL;
  return result;
}

void __Block_byref_object_dispose__587(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void _EARSpeechRecognizerExecutor(void *a1, void (*a2)(void *), void *a3)
{
  v3 = a1[18];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = ___ZL28_EARSpeechRecognizerExecutorPvPFvS_ES__block_invoke;
  v4[3] = &__block_descriptor_48_e5_v8__0l;
  v4[4] = a2;
  v4[5] = a3;
  dispatch_async(v3, v4);
}

uint64_t __copy_helper_block_ea8_48c51_ZTSNSt3__110shared_ptrIN6quasar14RunAsyncParamsEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 56);
  *(result + 48) = *(a2 + 48);
  *(result + 56) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_ea8_48c51_ZTSNSt3__110shared_ptrIN6quasar14RunAsyncParamsEEE(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void sub_1B51D81F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v15);

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__593(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  a2[3] = 0uLL;
  return result;
}

void __Block_byref_object_dispose__594(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void getModelFilesWithSuffix(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  memset(v3, 0, sizeof(v3));
  memset(v5, 0, sizeof(v5));
  v6 = 1065353216;
  quasar::SystemConfig::SystemConfig(v4, a1, v3, v5);
}

void sub_1B51D92A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, char a24)
{
  v26 = std::__function::__value_func<BOOL ()(std::string const&)>::~__value_func[abi:ne200100](v24 - 112);
  *(v24 - 112) = &a21;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v26);
  quasar::SystemConfig::~SystemConfig(&a24);
  _Unwind_Resume(a1);
}

void sub_1B51D9884(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, char a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, char *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53)
{
  if (a2)
  {
    if (a26 < 0)
    {
      operator delete(__p);
    }

    if (a32 < 0)
    {
      operator delete(a27);
    }

    quasar::ModelLoader::~ModelLoader(&a48);
    a48 = &a41;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a48);
    v55 = __cxa_begin_catch(exception_object);
    if (a2 == 2)
    {
      v56 = EARLogger::QuasarOSLogger(v55);
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        +[_EARSpeechRecognizer compileRecognizerModels2WithConfiguration:error:];
      }
    }

    else
    {
      v56 = EARLogger::QuasarOSLogger(v55);
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        +[_EARSpeechRecognizer compileRecognizerModels2WithConfiguration:error:];
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x1B51D9760);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B51DA16C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31, uint64_t a32, uint64_t a33, char *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a2)
  {
    if (a17 < 0)
    {
      operator delete(__p);
    }

    if (a23 < 0)
    {
      operator delete(a18);
    }

    quasar::ModelLoader::~ModelLoader(&a34);
    a34 = &a31;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a34);
    v41 = __cxa_begin_catch(exception_object);
    if (a2 == 2)
    {
      v42 = EARLogger::QuasarOSLogger(v41);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        +[_EARSpeechRecognizer compileRecognizerModels2WithConfiguration:error:];
      }
    }

    else
    {
      v42 = EARLogger::QuasarOSLogger(v41);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        +[_EARSpeechRecognizer purgeCompiledRecognizerModelsWithConfiguration:];
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x1B51DA12CLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B51DA708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char *a17)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&a13, a14);
  std::__tree<std::string>::destroy(&a16, a17);
  _Unwind_Resume(a1);
}

void sub_1B51DA8F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char *a17)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&a13, a14);
  std::__tree<std::string>::destroy(&a16, a17);
  _Unwind_Resume(a1);
}

void sub_1B51DA9EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  quasar::PTree::~PTree(&a10);
  a10 = (v10 - 40);
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void sub_1B51DAE98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  _Unwind_Resume(a1);
}

void sub_1B51DB018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_1B51DB470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char *a41)
{
  a41 = &a15;
  std::vector<std::vector<std::vector<quasar::Token>>>::__destroy_vector::operator()[abi:ne200100](&a41);

  _Unwind_Resume(a1);
}

void sub_1B51DBB30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location, char *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char *a41)
{
  a41 = &a10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a41);
  __p = &a13;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  __p = &a17;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);

  objc_destroyWeak((v46 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1B51DC2D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *__p, uint64_t a57, int a58, __int16 a59, char a60, char a61)
{
  if (a61 < 0)
  {
    operator delete(__p);
  }

  quasar::QuasarTraceMessage::~QuasarTraceMessage(&a18);

  _Unwind_Resume(a1);
}

void sub_1B51DC5E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  __p = &a9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void sub_1B51DCE8C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  v15 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v16 = EARLogger::QuasarOSLogger(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      +[_EARSpeechRecognizer compileRecognizerModels2WithConfiguration:error:];
    }
  }

  else
  {
    v16 = EARLogger::QuasarOSLogger(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [_EARSpeechModelInfo initWithConfig:];
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x1B51DCE10);
}

void sub_1B51DCF2C(_Unwind_Exception *a1)
{
  __cxa_end_catch();

  _Unwind_Resume(a1);
}

void sub_1B51DDB4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, char a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, uint64_t a54, char *a55)
{
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&a55);
  a55 = &a24;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&a55);
  a55 = (v56 - 112);
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&a55);

  _Unwind_Resume(a1);
}

void sub_1B51DDE6C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id EARHelpers::ContainerToNSSet<std::set<unsigned int>>(void *a1)
{
  v2 = [MEMORY[0x1E695DFA8] setWithCapacity:a1[2]];
  v3 = *a1;
  v4 = a1 + 1;
  if (*a1 != a1 + 1)
  {
    do
    {
      v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v3 + 7)];
      [v2 addObject:v5];

      v6 = v3[1];
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
          v7 = v3[2];
          v8 = *v7 == v3;
          v3 = v7;
        }

        while (!v8);
      }

      v3 = v7;
    }

    while (v7 != v4);
  }

  v9 = [v2 copy];

  return v9;
}

id EARHelpers::ContainerToNSSet<std::set<BOOL>>(void *a1)
{
  v2 = [MEMORY[0x1E695DFA8] setWithCapacity:a1[2]];
  v3 = *a1;
  v4 = a1 + 1;
  if (*a1 != a1 + 1)
  {
    do
    {
      v5 = [MEMORY[0x1E696AD98] numberWithBool:*(v3 + 25)];
      [v2 addObject:v5];

      v6 = v3[1];
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
          v7 = v3[2];
          v8 = *v7 == v3;
          v3 = v7;
        }

        while (!v8);
      }

      v3 = v7;
    }

    while (v7 != v4);
  }

  v9 = [v2 copy];

  return v9;
}

void sub_1B51DE9A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  std::__tree<int>::destroy(&a13, a14);

  quasar::SpeechRecognizerActiveConfiguration::~SpeechRecognizerActiveConfiguration(v14);
  _Unwind_Resume(a1);
}

uint64_t std::optional<std::set<unsigned int>>::operator=[abi:ne200100]<std::set<unsigned int>,void>(uint64_t a1, void *a2)
{
  if (*(a1 + 24) == 1)
  {
    std::__tree<int>::__move_assign(a1, a2);
  }

  else
  {
    *a1 = *a2;
    v3 = a2 + 1;
    v4 = a2[1];
    *(a1 + 8) = v4;
    v5 = a1 + 8;
    v6 = a2[2];
    *(a1 + 16) = v6;
    if (v6)
    {
      *(v4 + 16) = v5;
      *a2 = v3;
      *v3 = 0;
      a2[2] = 0;
    }

    else
    {
      *a1 = v5;
    }

    *(a1 + 24) = 1;
  }

  return a1;
}

uint64_t std::optional<std::set<std::string>>::operator=[abi:ne200100]<std::set<std::string>,void>(uint64_t a1, void *a2)
{
  if (*(a1 + 24) == 1)
  {
    std::__tree<std::string>::__move_assign(a1, a2);
  }

  else
  {
    *a1 = *a2;
    v3 = a2 + 1;
    v4 = a2[1];
    *(a1 + 8) = v4;
    v5 = a1 + 8;
    v6 = a2[2];
    *(a1 + 16) = v6;
    if (v6)
    {
      *(v4 + 16) = v5;
      *a2 = v3;
      *v3 = 0;
      a2[2] = 0;
    }

    else
    {
      *a1 = v5;
    }

    *(a1 + 24) = 1;
  }

  return a1;
}

void sub_1B51DEE0C(_Unwind_Exception *a1, uint64_t a2, void *__p, uint64_t a4, int a5, __int16 a6, char a7, char a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, ...)
{
  va_start(va, a55);
  if (SHIBYTE(a12) < 0)
  {
    operator delete(a10);
  }

  std::ostringstream::~ostringstream(&a42, MEMORY[0x1E69E54E8]);
  MEMORY[0x1B8C85200](va);
  _Unwind_Resume(a1);
}

void sub_1B51DF0C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  _Unwind_Resume(a1);
}

id EARHelpers::VectorToArray<float>(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF70] array];
  v4 = *a1;
  v5 = *(a1 + 8);
  if (*a1 != v5)
  {
    do
    {
      LODWORD(v3) = *v4;
      v6 = [MEMORY[0x1E696AD98] numberWithFloat:v3];
      [v2 addObject:v6];

      ++v4;
    }

    while (v4 != v5);
  }

  v7 = [v2 copy];

  return v7;
}

void EARContinuousListeningResultHelper::~EARContinuousListeningResultHelper(EARContinuousListeningResultHelper *this)
{
  *this = &unk_1F2D04140;
  v2 = *(this + 34);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 32);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  objc_destroyWeak(this + 28);
  objc_destroyWeak(this + 27);
  objc_destroyWeak(this + 26);

  quasar::ContinuousListeningResultHelper::~ContinuousListeningResultHelper(this);
}

{
  *this = &unk_1F2D04140;
  v2 = *(this + 34);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 32);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  objc_destroyWeak(this + 28);
  objc_destroyWeak(this + 27);
  objc_destroyWeak(this + 26);
  quasar::ContinuousListeningResultHelper::~ContinuousListeningResultHelper(this);

  JUMPOUT(0x1B8C85350);
}

void quasar::Align::~Align(void **this)
{
  if (*(this + 207) < 0)
  {
    operator delete(this[23]);
  }

  v3 = this + 20;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = this + 17;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = this[13];
  if (v2)
  {
    operator delete(v2);
  }

  v3 = this + 10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = this + 7;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = this + 4;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = this + 1;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void std::__throw_bad_optional_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E55D8] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E5418], MEMORY[0x1E69E52A0]);
}

void ___ZL31writeFinalChoicesToResultStreamRKNSt3__16vectorINS0_IN6quasar5TokenENS_9allocatorIS2_EEEENS3_IS5_EEEERKNS0_IdNS3_IdEEEEbP20_EARSpeechRecognizerPU44objcproto33_EARSpeechRecognitionResultStream11objc_objectRKNS1_14AudioAnalyticsERKNS1_20LatnnMitigatorResultEdP8NSStringjjSP_P17_EARResultContextNS1_21RecogResultStreamBase11RecogStatusEbRKS5_NS_10shared_ptrINS1_25ContinuousListeningConfigEEESV_RS7_RKNS0_INS1_11ItnOverrideENS3_IS10_EEEERKNS_3setINS_12basic_stringIcNS_11char_traitsIcEENS3_IcEEEENS_4lessIS1A_EENS3_IS1A_EEEERKNS0_IS1E_NS3_IS1E_EEEEbbSV_bdiNSW_INS1_14result_handler13ResultHandlerEEERK14FormattingInfo_block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  v10 = a2;
  v8 = a3;
  v9 = a4;
  objc_storeStrong((*(a1[4] + 8) + 40), a2);
  objc_storeStrong((*(a1[5] + 8) + 40), a3);
  if (v9)
  {
    [*(*(a1[6] + 8) + 40) addObject:v9];
  }
}

id tokenSausageWithExtendedEndTime(void *a1, double a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v22 = a1;
  v24 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v22, "count")}];
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v22;
  v3 = [obj countByEnumeratingWithState:&v45 objects:v52 count:16];
  if (v3)
  {
    v4 = *v46;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v46 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v45 + 1) + 8 * i);
        v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v6, "count")}];
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v8 = v6;
        v9 = [v8 countByEnumeratingWithState:&v41 objects:v51 count:16];
        if (v9)
        {
          v10 = *v42;
          do
          {
            for (j = 0; j != v9; ++j)
            {
              if (*v42 != v10)
              {
                objc_enumerationMutation(v8);
              }

              v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:*(*(&v41 + 1) + 8 * j) copyItems:1];
              [v7 addObject:v12];
            }

            v9 = [v8 countByEnumeratingWithState:&v41 objects:v51 count:16];
          }

          while (v9);
        }

        [v24 addObject:v7];
      }

      v3 = [obj countByEnumeratingWithState:&v45 objects:v52 count:16];
    }

    while (v3);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v13 = [v24 lastObject];
  v14 = [v13 countByEnumeratingWithState:&v37 objects:v50 count:16];
  if (v14)
  {
    v15 = *v38;
    do
    {
      for (k = 0; k != v14; ++k)
      {
        if (*v38 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v37 + 1) + 8 * k);
        if ([v17 count])
        {
          v18 = [v17 lastObject];
          v19 = v18;
          if (v18)
          {
            objc_msgSend_quasarToken(v18);
          }

          else
          {
            v35 = 0u;
            v36 = 0u;
            v33 = 0u;
            *__p = 0u;
            *v32 = 0u;
            *v30 = 0u;
            memset(v31, 0, sizeof(v31));
            memset(v29, 0, sizeof(v29));
            v27 = 0u;
            *v28 = 0u;
            *v25 = 0u;
            v26 = 0u;
          }

          LODWORD(v27) = (a2 * 1000.0);
          v20 = [[_EARSpeechRecognitionToken alloc] _initWithQuasarToken:v25];
          [v17 replaceObjectAtIndex:objc_msgSend(v17 withObject:{"count") - 1, v20}];

          if (SBYTE7(v35) < 0)
          {
            operator delete(__p[0]);
          }

          if (SBYTE7(v33) < 0)
          {
            operator delete(v32[0]);
          }

          v49 = v31 + 1;
          std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&v49);
          if (SBYTE7(v31[0]) < 0)
          {
            operator delete(v30[0]);
          }

          v49 = v29 + 1;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v49);
          if (SBYTE7(v29[0]) < 0)
          {
            operator delete(v28[0]);
          }

          if (SBYTE7(v26) < 0)
          {
            operator delete(v25[0]);
          }
        }
      }

      v14 = [v13 countByEnumeratingWithState:&v37 objects:v50 count:16];
    }

    while (v14);
  }

  return v24;
}

id resultPackageWithResultChoices(uint64_t *a1, unsigned int a2, void *a3, uint64_t a4, unsigned __int8 *a5, void *a6, unsigned int a7, void *a8, double a9, double a10, unsigned __int8 a11, void *a12, uint64_t *a13, unsigned __int8 a14, unsigned __int8 a15, uint64_t a16, uint64_t a17, uint64_t a18, __int16 a19, unsigned __int8 a20, unsigned __int8 a21, void *a22, void *a23, void *a24, char a25, unsigned __int8 a26, unsigned __int8 a27, uint64_t a28, uint64_t a29, void *a30, void *a31, int a32, void *a33, uint64_t a34, char a35)
{
  v39 = a3;
  v134 = a6;
  v133 = a8;
  v142 = a31;
  v125 = a33;
  v124 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v123 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v135 = objc_alloc_init(MEMORY[0x1E695DF70]);
  memset(v199, 0, sizeof(v199));
  memset(v198, 0, sizeof(v198));
  v195 = 0;
  v196 = 0;
  v197 = 0;
  memset(v194, 0, sizeof(v194));
  v193[0] = 0;
  v193[1] = 0;
  v192 = v193;
  v191[1] = 0;
  v191[0] = 0;
  v190 = v191;
  v189[1] = 0;
  v189[0] = 0;
  v188 = v189;
  v187[1] = 0;
  v187[0] = 0;
  v186 = v187;
  if (a24 && a1[1] - *a1 != a23[1] - *a23)
  {
    v114 = [MEMORY[0x1E696AAA8] currentHandler];
    v115 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"_EARSpeechRecognitionResultPackage *resultPackageWithResultChoices(const std::vector<std::vector<Token>> &, BOOL, _EARFormatter *__strong, const AudioAnalytics &, const LatnnMitigatorResult &, const double, NSString *__strong, const unsigned int, NSString *__strong, BOOL, const std::vector<Token> &, _EARSpeechRecognitionResult *__autoreleasing *, std::shared_ptr<ContinuousListeningConfig>, BOOL, BOOL, const std::vector<Token> &, std::vector<std::vector<Token>> &, const std::vector<quasar::ItnOverride> &, quasar::ItnEnablingFlags::Flags, BOOL, BOOL, _EARSpeechRecognitionResultPackage *__autoreleasing *, const std::vector<std::set<std::string>> &, NSDictionary<NSString *, _EARSpeechRecognitionResultPackage *> *__autoreleasing *, BOOL, BOOL, const std::vector<quasar::Token> &, BOOL, BOOL, NSDictionary<NSString *, NSNumber *> *__autoreleasing *, NSArray<NSString *> *__autoreleasing *, double, NSArray<NSArray<NSNumber *> *> *__autoreleasing *, BOOL, BOOL, NSSet<NSString *> *__strong, int, _EARRelevantTextContext *__strong, std::shared_ptr<quasar::corrective_reranking::Parser>, const FormattingInfo &, BOOL)"}];
    [v114 handleFailureInFunction:v115 file:@"EARSpeechRecognizer.mm" lineNumber:2062 description:@"Results are not properly labeled"];
  }

  v180 = 0;
  v181 = &v180;
  v182 = 0x3032000000;
  v183 = __Block_byref_object_copy__2;
  v184 = __Block_byref_object_dispose__2;
  v185 = &stru_1F2D44B60;
  v174 = 0;
  v175 = &v174;
  v176 = 0x3032000000;
  v177 = __Block_byref_object_copy__2;
  v178 = __Block_byref_object_dispose__2;
  v179 = &stru_1F2D44B60;
  v172[0] = 0;
  v172[1] = v172;
  v172[2] = 0x4812000000;
  v172[3] = __Block_byref_object_copy__420;
  v172[4] = __Block_byref_object_dispose__421;
  v172[5] = &unk_1B5CADD23;
  memset(v173, 0, sizeof(v173));
  v165 = 0;
  v166 = &v165;
  v167 = 0x4812000000;
  v168 = __Block_byref_object_copy__420;
  v169 = __Block_byref_object_dispose__421;
  v170 = &unk_1B5CADD23;
  memset(v171, 0, sizeof(v171));
  if ((a35 & 1) != 0 || ([v125 leftContextWasAppended] & 1) == 0)
  {
    v164[0] = MEMORY[0x1E69E9820];
    v164[1] = 3221225472;
    v164[2] = ___ZL30resultPackageWithResultChoicesRKNSt3__16vectorINS0_IN6quasar5TokenENS_9allocatorIS2_EEEENS3_IS5_EEEEbP13_EARFormatterRKNS1_14AudioAnalyticsERKNS1_20LatnnMitigatorResultEdP8NSStringjSJ_bRKS5_PU15__autoreleasingP27_EARSpeechRecognitionResultNS_10shared_ptrINS1_25ContinuousListeningConfigEEEbbSL_RS7_RKNS0_INS1_11ItnOverrideENS3_ISU_EEEEtbbPU15__autoreleasingP34_EARSpeechRecognitionResultPackageRKNS0_INS_3setINS_12basic_stringIcNS_11char_traitsIcEENS3_IcEEEENS_4lessIS18_EENS3_IS18_EEEENS3_IS1C_EEEEPU15__autoreleasingP12NSDictionaryISJ_S10_EbbSL_bbPU15__autoreleasingPS1H_ISJ_P8NSNumberEPU15__autoreleasingP7NSArrayISJ_EdPU15__autoreleasingPS1S_IPS1S_IS1N_EEbbP5NSSetISJ_EiP23_EARRelevantTextContextNSQ_INS1_20corrective_reranking6ParserEEERK14FormattingInfob_block_invoke;
    v164[3] = &unk_1E7C1A3C0;
    v164[4] = &v180;
    v164[5] = &v174;
    v164[6] = v172;
    v164[7] = &v165;
    [v125 getLeftAndRightContextWithCompletion:v164];
    if ([v125 leftContextEndsWithAppendedAutoPunctuation])
    {
      LOBYTE(v40) = 1;
    }

    else
    {
      v40 = [v125 leftContextWasAppended] ^ 1;
    }

    v127 = v40;
  }

  else
  {
    v127 = 0;
  }

  v41 = *a1;
  v42 = 0x6DB6DB6DB6DB6DB7;
  if (a1[1] != *a1)
  {
    v43 = 0;
    do
    {
      v44 = v41 + 24 * v43;
      v162 = 0uLL;
      v163 = 0;
      std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(&v162, *v44, *(v44 + 8), ((*(v44 + 8) - *v44) >> 5) * v42);
      memset(v161, 0, sizeof(v161));
      memset(v160, 0, sizeof(v160));
      memset(v159, 0, sizeof(v159));
      memset(v158, 0, sizeof(v158));
      v156 = 0uLL;
      v157 = 0;
      std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(&v156, *v44, *(v44 + 8), ((*(v44 + 8) - *v44) >> 5) * v42);
      if (v39)
      {
        v45 = v42;
        v46 = a13[1];
        v152 = *a13;
        v153 = v46;
        if (v46)
        {
          atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v47 = v166;
        v48 = v181[5];
        v49 = v175[5];
        v151 = 0;
        v150 = 0;
        v145[0] = MEMORY[0x1E69E9820];
        v145[1] = 3221225472;
        v145[2] = ___ZL30resultPackageWithResultChoicesRKNSt3__16vectorINS0_IN6quasar5TokenENS_9allocatorIS2_EEEENS3_IS5_EEEEbP13_EARFormatterRKNS1_14AudioAnalyticsERKNS1_20LatnnMitigatorResultEdP8NSStringjSJ_bRKS5_PU15__autoreleasingP27_EARSpeechRecognitionResultNS_10shared_ptrINS1_25ContinuousListeningConfigEEEbbSL_RS7_RKNS0_INS1_11ItnOverrideENS3_ISU_EEEEtbbPU15__autoreleasingP34_EARSpeechRecognitionResultPackageRKNS0_INS_3setINS_12basic_stringIcNS_11char_traitsIcEENS3_IcEEEENS_4lessIS18_EENS3_IS18_EEEENS3_IS1C_EEEEPU15__autoreleasingP12NSDictionaryISJ_S10_EbbSL_bbPU15__autoreleasingPS1H_ISJ_P8NSNumberEPU15__autoreleasingP7NSArrayISJ_EdPU15__autoreleasingPS1S_IPS1S_IS1N_EEbbP5NSSetISJ_EiP23_EARRelevantTextContextNSQ_INS1_20corrective_reranking6ParserEEERK14FormattingInfob_block_invoke_2;
        v145[3] = &unk_1E7C1A660;
        v50 = v135;
        v149 = v43;
        v146 = v50;
        v147 = a28;
        v148 = a29;
        HIDWORD(v121) = v43;
        LOBYTE(v121) = a2;
        LOWORD(v120) = a21;
        LOBYTE(v119) = v127;
        BYTE3(v118) = a25;
        BYTE2(v118) = a20;
        LOWORD(v118) = a19;
        BYTE4(v116) = 0;
        LODWORD(v116) = a7;
        objc_msgSend_formatWords_unrepairedWordsOut_task_language_preItnLeftContext_separateAutoEndPunctuation_partialResults_timestampOffset_zeroTimestamp_continuousListeningConfig_postItnLeftContext_itnResult_itnOverrides_itnEnablingFlags_recognizeEmoji_leftContextProvidedByClient_preItnRightContext_postItnLeftContextStr_postItnRightContextStr_stripLeadingAppendedAutoPunctuation_emojiTokenIndices_persistEmoji_shouldHideTrailingPunctuation_isTrailingPunctuationHidden_isFinal_choiceIdx_itnCompletion_(v39, v161, v116, &v152, a16, v160, a18, v118, v47 + 6, v48, v49, v119, v158, v120, &v150, v121, v145);
        std::vector<quasar::Token>::__vdeallocate(&v162);
        v162 = v154;
        v163 = v155;
        v155 = 0;
        v154 = 0uLL;
        v201[0] = &v154;
        std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v201);
        if (v151)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v151);
        }

        v42 = v45;
        if (v153)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v153);
        }

        objc_msgSend_formattedTokensWithoutEmojiModifier_emojiTokenIndices_recognizeEmoji_(v39);
        std::vector<quasar::Token>::__vdeallocate(&v156);
        v156 = v154;
        v157 = v155;
        v155 = 0;
        v154 = 0uLL;
        v201[0] = &v154;
        std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v201);
      }

      std::vector<std::vector<quasar::Token>>::push_back[abi:ne200100](v199, &v162);
      std::vector<std::vector<quasar::Token>>::push_back[abi:ne200100](v198, &v156);
      if (v39 && !v43)
      {
        [v39 appendNbestListWithEmojiAlternativesForFormattedTokens:&v162 formattedTokensWithoutEmojiModifier:&v156 formattedNBestList:v199 formattedNBestListWithoutEmojiModifier:v198 emojiTokenIndices:v158 recognizeEmoji:a20];
      }

      std::vector<std::vector<quasar::Token>>::push_back[abi:ne200100](&v195, v161);
      std::vector<std::vector<quasar::Token>>::push_back[abi:ne200100](a17, v160);
      std::vector<std::vector<quasar::Token>>::push_back[abi:ne200100](v194, v159);
      if (a24)
      {
        v51 = (*a23 + 24 * v43);
        v54 = *v51;
        v52 = v51 + 1;
        v53 = v54;
        if (v54 != v52)
        {
          do
          {
            v201[0] = (v53 + 4);
            v55 = std::__tree<std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v192, v53 + 4, &std::piecewise_construct, v201, &v200);
            std::vector<std::vector<quasar::Token>>::push_back[abi:ne200100]((v55 + 7), v44);
            v201[0] = (v53 + 4);
            v56 = std::__tree<std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v190, v53 + 4, &std::piecewise_construct, v201, &v200);
            std::vector<std::vector<quasar::Token>>::push_back[abi:ne200100]((v56 + 7), &v162);
            v201[0] = (v53 + 4);
            v57 = std::__tree<std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v188, v53 + 4, &std::piecewise_construct, v201, &v200);
            std::vector<std::vector<quasar::Token>>::push_back[abi:ne200100]((v57 + 7), v161);
            v201[0] = (v53 + 4);
            v58 = std::__tree<std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v186, v53 + 4, &std::piecewise_construct, v201, &v200);
            std::vector<std::vector<quasar::Token>>::push_back[abi:ne200100]((v58 + 7), v159);
            v59 = v53[1];
            if (v59)
            {
              do
              {
                v60 = v59;
                v59 = *v59;
              }

              while (v59);
            }

            else
            {
              do
              {
                v60 = v53[2];
                v61 = *v60 == v53;
                v53 = v60;
              }

              while (!v61);
            }

            v53 = v60;
          }

          while (v60 != v52);
        }
      }

      *&v154 = &v156;
      std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v154);
      *&v156 = v158;
      std::vector<std::pair<int,std::vector<std::string>>>::__destroy_vector::operator()[abi:ne200100](&v156);
      v158[0] = v159;
      std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v158);
      v159[0] = v160;
      std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v159);
      v160[0] = v161;
      std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v160);
      v161[0] = &v162;
      std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v161);
      ++v43;
      v41 = *a1;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) > v43);
  }

  if (a30)
  {
    *a30 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v135];
  }

  v62 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v63 = [MEMORY[0x1E696AD98] numberWithDouble:*(a4 + 128)];
  [v62 setObject:v63 forKeyedSubscript:@"speakingRate"];

  v64 = [MEMORY[0x1E696AD98] numberWithDouble:*(a4 + 136)];
  [v62 setObject:v64 forKeyedSubscript:@"averagePauseDuration"];

  v130 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v65 = getEARAcousticFeature(a4);
  [v130 setObject:v65 forKeyedSubscript:@"jitter"];

  v66 = getEARAcousticFeature(a4 + 32);
  [v130 setObject:v66 forKeyedSubscript:@"shimmer"];

  v67 = getEARAcousticFeature(a4 + 64);
  [v130 setObject:v67 forKeyedSubscript:@"pitch"];

  v68 = getEARAcousticFeature(a4 + 96);
  [v130 setObject:v68 forKeyedSubscript:@"voicing"];

  v137 = [[_EARAudioAnalytics alloc] _initWithSpeechRecognitionFeatures:v62 acousticFeatures:v130 snr:a9];
  v69 = a5[31];
  if (v69 >= 0)
  {
    v70 = a5 + 8;
  }

  else
  {
    v70 = *(a5 + 1);
  }

  if (v69 >= 0)
  {
    v71 = a5[31];
  }

  else
  {
    v71 = *(a5 + 2);
  }

  v129 = [MEMORY[0x1E696AEC0] ear_stringWithStringView:{v70, v71}];
  if (*a5 == 1 && [v129 length])
  {
    v72 = [_EARLatticeMitigatorResult alloc];
    v74 = *(a5 + 4);
    v73 = *(a5 + 5);
    *&v73 = v73;
    *&v74 = v74;
    LODWORD(v75) = *(a5 + 12);
    LODWORD(v76) = *(a5 + 13);
    v136 = [(_EARLatticeMitigatorResult *)v72 initWithVersion:v129 score:*a5 threshold:v73 calibrationScale:v74 calibrationOffset:v75 processed:v76];
  }

  else
  {
    v136 = 0;
  }

  if ((a14 & a15) != 0)
  {
    v77 = 0.0;
  }

  else
  {
    v77 = a7 / 1000.0;
  }

  if (a12 && v195 != v196)
  {
    v78 = [_EARSpeechRecognitionResult alloc];
    memset(v144, 0, sizeof(v144));
    std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(v144, *v195, *(v195 + 8), ((*(v195 + 8) - *v195) >> 5) * v42);
    memset(v143, 0, sizeof(v143));
    *a12 = [(_EARSpeechRecognitionResult *)v78 _initWithTokens:v144 preITNTokens:v143 confidence:0 voiceCommandInterpretations:0 preITNVoiceCommandInterpretations:1 utteranceStart:a34 preITNUseHatText:0.0 formattingInfo:v77];
    *&v162 = v143;
    std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v162);
    *&v162 = v144;
    std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v162);
  }

  p_superclass = &OBJC_METACLASS____EARPeopleSuggesterConfig.superclass;
  v128 = v62;
  if (a24)
  {
    v132 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v80 = v190;
    if (v190 != v191)
    {
      v81 = &std::piecewise_construct;
      do
      {
        v82 = objc_autoreleasePoolPush();
        v83 = objc_alloc((p_superclass + 199));
        v84 = v80 + 4;
        v161[0] = (v80 + 4);
        v85 = [v83 _initWithNBestList:std::__tree<std::__value_type<std::string useHatText:std::vector<std::vector<quasar::Token>>> endsOfSentencePunctuations:std::__map_value_compare<std::string formattingInfo:{std::__value_type<std::string, std::vector<std::vector<quasar::Token>>>, std::less<std::string>, true>, std::allocator<std::__value_type<std::string, std::vector<std::vector<quasar::Token>>>>>::__emplace_unique_key_args<std::string, std::piecewise_construct_t const&, std::tuple<std::string const&>, std::tuple<>>(&v192, v80 + 4, v81, v161, v160) + 7, 1, v142, a34}];
        v86 = v85;
        context = v82;
        if (v39)
        {
          v87 = objc_alloc((p_superclass + 199));
          v161[0] = (v80 + 4);
          v88 = [v87 _initWithNBestList:std::__tree<std::__value_type<std::string useHatText:std::vector<std::vector<quasar::Token>>> endsOfSentencePunctuations:std::__map_value_compare<std::string formattingInfo:{std::__value_type<std::string, std::vector<std::vector<quasar::Token>>>, std::less<std::string>, true>, std::allocator<std::__value_type<std::string, std::vector<std::vector<quasar::Token>>>>>::__emplace_unique_key_args<std::string, std::piecewise_construct_t const&, std::tuple<std::string const&>, std::tuple<>>(&v190, v80 + 4, v81, v161, v160) + 7, 0, v142, a34}];
        }

        else
        {
          v88 = v85;
        }

        v89 = v88;
        v90 = v39;
        v91 = p_superclass;
        v92 = objc_alloc((p_superclass + 199));
        v161[0] = (v80 + 4);
        v93 = [v92 _initWithNBestList:std::__tree<std::__value_type<std::string useHatText:std::vector<std::vector<quasar::Token>>> endsOfSentencePunctuations:std::__map_value_compare<std::string formattingInfo:{std::__value_type<std::string, std::vector<std::vector<quasar::Token>>>, std::less<std::string>, true>, std::allocator<std::__value_type<std::string, std::vector<std::vector<quasar::Token>>>>>::__emplace_unique_key_args<std::string, std::piecewise_construct_t const&, std::tuple<std::string const&>, std::tuple<>>(&v186, v80 + 4, v81, v161, v160) + 7, 0, v142, a34}];
        v94 = v81;
        v95 = [_EARSpeechRecognitionResultPackage alloc];
        v96 = [MEMORY[0x1E696AD98] numberWithDouble:a10];
        LOWORD(v117) = __PAIR16__(a27, a26);
        v97 = [(_EARSpeechRecognitionResultPackage *)v95 _initWithRecognition:v89 preITNRecognition:v86 unrepairedRecognition:v93 recognitionIsFormatted:v90 != 0 isFinal:a2 audioAnalytics:v137 utteranceStart:v77 latticeMitigatorResult:v136 nBestVoiceCommandInterpretations:0 preITNNBestVoiceCommandInterpretations:0 recognitionPaused:v117 firstResultAfterResume:v96 endOfSentenceLikelihood:a32 numTokensExcludingTriggerPhrase:0 voiceCommandDebugInfo:0 performanceMarkers:?];

        v98 = *(v80 + 55);
        if (v98 < 0)
        {
          v84 = v80[4];
          v98 = v80[5];
        }

        v99 = [MEMORY[0x1E696AEC0] ear_stringWithStringView:{v84, v98}];
        [v132 setObject:v97 forKeyedSubscript:v99];

        objc_autoreleasePoolPop(context);
        v100 = v80[1];
        p_superclass = v91;
        v81 = v94;
        if (v100)
        {
          do
          {
            v101 = v100;
            v100 = *v100;
          }

          while (v100);
        }

        else
        {
          do
          {
            v101 = v80[2];
            v61 = *v101 == v80;
            v80 = v101;
          }

          while (!v61);
        }

        v80 = v101;
        v39 = v90;
      }

      while (v101 != v191);
    }

    *a24 = [v132 copy];
  }

  v102 = [objc_alloc((p_superclass + 199)) _initWithNBestList:a1 useHatText:1 endsOfSentencePunctuations:v142 formattingInfo:a34];
  v103 = v102;
  if (v39)
  {
    v104 = [objc_alloc((p_superclass + 199)) _initWithNBestList:v199 useHatText:0 endsOfSentencePunctuations:v142 formattingInfo:a34];
  }

  else
  {
    v104 = v102;
  }

  v105 = v104;
  v106 = [objc_alloc((p_superclass + 199)) _initWithNBestList:v194 useHatText:0 endsOfSentencePunctuations:v142 formattingInfo:a34];
  if (v39)
  {
    v107 = [objc_alloc((p_superclass + 199)) _initWithNBestList:v198 useHatText:0 endsOfSentencePunctuations:v142 formattingInfo:a34];
  }

  else
  {
    v107 = v103;
  }

  v108 = v107;
  if (a22)
  {
    v109 = [_EARSpeechRecognitionResultPackage alloc];
    v110 = [MEMORY[0x1E696AD98] numberWithDouble:a10];
    LOWORD(v117) = __PAIR16__(a27, a26);
    *a22 = [(_EARSpeechRecognitionResultPackage *)v109 _initWithRecognition:v108 preITNRecognition:v103 unrepairedRecognition:v106 recognitionIsFormatted:v39 != 0 isFinal:a2 audioAnalytics:v137 utteranceStart:v77 latticeMitigatorResult:v136 nBestVoiceCommandInterpretations:0 preITNNBestVoiceCommandInterpretations:0 recognitionPaused:v117 firstResultAfterResume:v110 endOfSentenceLikelihood:a32 numTokensExcludingTriggerPhrase:0 voiceCommandDebugInfo:0 performanceMarkers:?];
  }

  v111 = [_EARSpeechRecognitionResultPackage alloc];
  v112 = [MEMORY[0x1E696AD98] numberWithDouble:a10];
  LOWORD(v117) = __PAIR16__(a27, a26);
  v141 = [(_EARSpeechRecognitionResultPackage *)v111 _initWithRecognition:v105 preITNRecognition:v103 unrepairedRecognition:v106 recognitionIsFormatted:v39 != 0 isFinal:a2 audioAnalytics:v137 utteranceStart:v77 latticeMitigatorResult:v136 nBestVoiceCommandInterpretations:v124 preITNNBestVoiceCommandInterpretations:v123 recognitionPaused:v117 firstResultAfterResume:v112 endOfSentenceLikelihood:a32 numTokensExcludingTriggerPhrase:0 voiceCommandDebugInfo:0 performanceMarkers:?];

  _Block_object_dispose(&v165, 8);
  *&v162 = v171;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v162);
  _Block_object_dispose(v172, 8);
  v165 = v173;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v165);
  _Block_object_dispose(&v174, 8);

  _Block_object_dispose(&v180, 8);
  std::__tree<std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>>>::destroy(&v186, v187[0]);
  std::__tree<std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>>>::destroy(&v188, v189[0]);
  std::__tree<std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>>>::destroy(&v190, v191[0]);
  std::__tree<std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>>>::destroy(&v192, v193[0]);
  v172[0] = v194;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](v172);
  v172[0] = &v195;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](v172);
  v172[0] = v198;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](v172);
  v172[0] = v199;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](v172);

  return v141;
}

void sub_1B51E0C24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, void *a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void *a60)
{
  std::__tree<std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>>>::destroy(&STACK[0x418], STACK[0x420]);
  std::__tree<std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>>>::destroy(&STACK[0x430], STACK[0x438]);
  std::__tree<std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>>>::destroy(&STACK[0x448], STACK[0x450]);
  std::__tree<std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>>>::destroy(v63 - 256, *(v63 - 248));
  STACK[0x370] = v63 - 232;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x370]);
  STACK[0x370] = v63 - 208;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x370]);
  STACK[0x370] = v63 - 184;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x370]);
  STACK[0x370] = v63 - 160;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x370]);

  _Unwind_Resume(a1);
}

void logPackageToQuasarDebug(_EARSpeechRecognitionResultPackage *a1, NSString *a2, uint64_t a3)
{
  v54 = a1;
  v5 = a2;
  if (quasar::gLogLevel >= 5)
  {
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v63 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v63);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v63, "Quasar PostITN Result. isFinal=", 31);
    v7 = MEMORY[0x1B8C84BD0](v6, [(_EARSpeechRecognitionResultPackage *)v54 isFinal]);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " candidate=", 11);
    MEMORY[0x1B8C84BD0](v8, a3);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(&v63);
  }

  v56 = [(_EARSpeechRecognitionResultPackage *)v54 nBestResults];
  v9 = [v56 count];
  if (v9)
  {
    v10 = [v56 firstObject];
    v11 = [v10 tokens];

    v52 = v11;
    v53 = transcriptFromTokens(v11);
    if (quasar::gLogLevel >= 5)
    {
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v63 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v63);
      v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v63, "PostITN 1-Best: ", 16);
      if (v53)
      {
        objc_msgSend_ear_toString(v53);
        v13 = HIBYTE(v62);
        v15 = __p;
        v14 = v61;
      }

      else
      {
        v14 = 0;
        v15 = 0;
        v13 = 0;
        __p = 0;
        v61 = 0;
        v62 = 0;
      }

      if ((v13 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = v15;
      }

      if ((v13 & 0x80u) == 0)
      {
        v17 = v13;
      }

      else
      {
        v17 = v14;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, p_p, v17);
      if (SHIBYTE(v62) < 0)
      {
        operator delete(__p);
      }

      quasar::QuasarDebugMessage::~QuasarDebugMessage(&v63);
    }

    if (v9 >= 1)
    {
      v18 = 0;
      v55 = v9 & 0x7FFFFFFF;
      do
      {
        if (quasar::gLogLevel >= 5)
        {
          v78 = 0u;
          v79 = 0u;
          v76 = 0u;
          v77 = 0u;
          v74 = 0u;
          v75 = 0u;
          v72 = 0u;
          v73 = 0u;
          v70 = 0u;
          v71 = 0u;
          v68 = 0u;
          v69 = 0u;
          v66 = 0u;
          v67 = 0u;
          v64 = 0u;
          v65 = 0u;
          v63 = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v63);
          v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v63, "PostITN Choice: ", 16);
          MEMORY[0x1B8C84C00](v19, v18);
          quasar::QuasarDebugMessage::~QuasarDebugMessage(&v63);
        }

        v20 = [v56 objectAtIndexedSubscript:v18];
        v21 = [v20 tokens];

        for (i = 0; [v21 count] > i; ++i)
        {
          if (quasar::gLogLevel >= 5)
          {
            v78 = 0u;
            v79 = 0u;
            v76 = 0u;
            v77 = 0u;
            v74 = 0u;
            v75 = 0u;
            v72 = 0u;
            v73 = 0u;
            v70 = 0u;
            v71 = 0u;
            v68 = 0u;
            v69 = 0u;
            v66 = 0u;
            v67 = 0u;
            v64 = 0u;
            v65 = 0u;
            v63 = 0u;
            kaldi::KaldiWarnMessage::KaldiWarnMessage(&v63);
            v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v63, "PostITN Token[", 14);
            if (v5)
            {
              objc_msgSend_ear_toString(v5);
              v24 = HIBYTE(v62);
              v26 = __p;
              v25 = v61;
            }

            else
            {
              v25 = 0;
              v26 = 0;
              v24 = 0;
              __p = 0;
              v61 = 0;
              v62 = 0;
            }

            if ((v24 & 0x80u) == 0)
            {
              v27 = &__p;
            }

            else
            {
              v27 = v26;
            }

            if ((v24 & 0x80u) == 0)
            {
              v28 = v24;
            }

            else
            {
              v28 = v25;
            }

            v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, v27, v28);
            v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "][", 2);
            v31 = MEMORY[0x1B8C84C00](v30, v18);
            v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, "][", 2);
            v33 = MEMORY[0x1B8C84C00](v32, i);
            v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, "]: ", 3);
            v35 = [v21 objectAtIndexedSubscript:i];
            v36 = [v35 description];
            v37 = v36;
            if (v36)
            {
              objc_msgSend_ear_toString(v36);
              v38 = HIBYTE(v59);
              v40 = v57;
              v39 = v58;
            }

            else
            {
              v39 = 0;
              v40 = 0;
              v38 = 0;
              v57 = 0;
              v58 = 0;
              v59 = 0;
            }

            if ((v38 & 0x80u) == 0)
            {
              v41 = &v57;
            }

            else
            {
              v41 = v40;
            }

            if ((v38 & 0x80u) == 0)
            {
              v42 = v38;
            }

            else
            {
              v42 = v39;
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, v41, v42);
            if (SHIBYTE(v59) < 0)
            {
              operator delete(v57);
            }

            if (SHIBYTE(v62) < 0)
            {
              operator delete(__p);
            }

            quasar::QuasarDebugMessage::~QuasarDebugMessage(&v63);
          }
        }

        ++v18;
      }

      while (v18 != v55);
    }
  }

  if (quasar::gLogLevel >= 5)
  {
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v63 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v63);
    v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v63, "latticeMitigatorResult: ", 24);
    v44 = [(_EARSpeechRecognitionResultPackage *)v54 latticeMitigatorResult];
    v45 = [v44 description];
    v46 = v45;
    if (v45)
    {
      objc_msgSend_ear_toString(v45);
      v47 = HIBYTE(v62);
      v49 = __p;
      v48 = v61;
    }

    else
    {
      v48 = 0;
      v49 = 0;
      v47 = 0;
      __p = 0;
      v61 = 0;
      v62 = 0;
    }

    if ((v47 & 0x80u) == 0)
    {
      v50 = &__p;
    }

    else
    {
      v50 = v49;
    }

    if ((v47 & 0x80u) == 0)
    {
      v51 = v47;
    }

    else
    {
      v51 = v48;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, v50, v51);
    if (SHIBYTE(v62) < 0)
    {
      operator delete(__p);
    }

    quasar::QuasarDebugMessage::~QuasarDebugMessage(&v63);
  }
}

void sub_1B51E150C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, uint64_t a13, void *a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, std::locale a27)
{
  quasar::QuasarDebugMessage::~QuasarDebugMessage(&a27);

  _Unwind_Resume(a1);
}

void ___ZL30resultPackageWithResultChoicesRKNSt3__16vectorINS0_IN6quasar5TokenENS_9allocatorIS2_EEEENS3_IS5_EEEEbP13_EARFormatterRKNS1_14AudioAnalyticsERKNS1_20LatnnMitigatorResultEdP8NSStringjSJ_bRKS5_PU15__autoreleasingP27_EARSpeechRecognitionResultNS_10shared_ptrINS1_25ContinuousListeningConfigEEEbbSL_RS7_RKNS0_INS1_11ItnOverrideENS3_ISU_EEEEtbbPU15__autoreleasingP34_EARSpeechRecognitionResultPackageRKNS0_INS_3setINS_12basic_stringIcNS_11char_traitsIcEENS3_IcEEEENS_4lessIS18_EENS3_IS18_EEEENS3_IS1C_EEEEPU15__autoreleasingP12NSDictionaryISJ_S10_EbbSL_bbPU15__autoreleasingPS1H_ISJ_P8NSNumberEPU15__autoreleasingP7NSArrayISJ_EdPU15__autoreleasingPS1S_IPS1S_IS1N_EEbbP5NSSetISJ_EiP23_EARRelevantTextContextNSQ_INS1_20corrective_reranking6ParserEEERK14FormattingInfob_block_invoke(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v10 = a2;
  v11 = a3;
  v12 = a5;
  objc_storeStrong((*(a1[4] + 8) + 40), a2);
  v13 = a4;
  objc_storeStrong((*(a1[5] + 8) + 40), a3);
  stringsToTokensWithZeroTimestamps(v13, &v16);

  v14 = *(a1[6] + 8);
  std::vector<quasar::Token>::__vdeallocate((v14 + 48));
  *(v14 + 48) = v16;
  *(v14 + 64) = v17;
  v17 = 0;
  v16 = 0uLL;
  v18 = &v16;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v18);
  stringsToTokensWithZeroTimestamps(v12, &v16);
  v15 = *(a1[7] + 8);
  std::vector<quasar::Token>::__vdeallocate((v15 + 48));
  *(v15 + 48) = v16;
  *(v15 + 64) = v17;
  v17 = 0;
  v16 = 0uLL;
  v18 = &v16;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v18);
}

void ___ZL30resultPackageWithResultChoicesRKNSt3__16vectorINS0_IN6quasar5TokenENS_9allocatorIS2_EEEENS3_IS5_EEEEbP13_EARFormatterRKNS1_14AudioAnalyticsERKNS1_20LatnnMitigatorResultEdP8NSStringjSJ_bRKS5_PU15__autoreleasingP27_EARSpeechRecognitionResultNS_10shared_ptrINS1_25ContinuousListeningConfigEEEbbSL_RS7_RKNS0_INS1_11ItnOverrideENS3_ISU_EEEEtbbPU15__autoreleasingP34_EARSpeechRecognitionResultPackageRKNS0_INS_3setINS_12basic_stringIcNS_11char_traitsIcEENS3_IcEEEENS_4lessIS18_EENS3_IS18_EEEENS3_IS1C_EEEEPU15__autoreleasingP12NSDictionaryISJ_S10_EbbSL_bbPU15__autoreleasingPS1H_ISJ_P8NSNumberEPU15__autoreleasingP7NSArrayISJ_EdPU15__autoreleasingPS1S_IPS1S_IS1N_EEbbP5NSSetISJ_EiP23_EARRelevantTextContextNSQ_INS1_20corrective_reranking6ParserEEERK14FormattingInfob_block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v9 = a2;
  v7 = a3;
  v8 = a4;
  [*(a1 + 32) addObject:v8];
  if (!*(a1 + 56) && *(a1 + 40) && *(a1 + 48))
  {
    **(a1 + 40) = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v9];
    **(a1 + 48) = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v7];
  }
}

id getEARAcousticFeature(uint64_t a1)
{
  v2 = [[_EARLazyDoubleArray alloc] _initWithDoubleVector:a1];
  v3 = [_EARAcousticFeature alloc];
  v4 = *(a1 + 24) / 1000.0;
  *&v4 = v4;
  v5 = [(_EARAcousticFeature *)v3 _initWithAcousticFeatureValues:v2 frameDuration:v4];

  return v5;
}

void *std::__tree<std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t **a1, const void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, &v7, a2);
  if (!v5)
  {
    std::__tree<std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v5;
}

char **std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>,void *>>>>::~unique_ptr[abi:ne200100](char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<std::vector<quasar::Token>>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<std::vector<quasar::Token>>>,0>(uint64_t a1)
{
  v2 = (a1 + 24);
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void std::__tree<std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<std::vector<quasar::Token>>>,0>((a2 + 4));

    operator delete(a2);
  }
}

id transcriptFromTokens(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ([v1 count])
  {
    v2 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = *v11;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v11 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v7 = *(*(&v10 + 1) + 8 * i);
          if ([v7 hasSpaceBefore])
          {
            [v2 appendString:@" "];
          }

          v8 = [v7 tokenName];
          [v2 appendString:v8];

          if ([v7 hasSpaceAfter])
          {
            [v2 appendString:@" "];
          }
        }

        v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v4);
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void quasar::SpeechRecognizerActiveConfiguration::~SpeechRecognizerActiveConfiguration(char **this)
{
  if (*(this + 248) == 1)
  {
    std::__tree<std::string>::destroy((this + 28), this[29]);
  }

  if (*(this + 216) == 1)
  {
    std::__tree<std::string>::destroy((this + 24), this[25]);
  }

  if (*(this + 184) == 1)
  {
    std::__tree<std::string>::destroy((this + 20), this[21]);
  }

  if (*(this + 152) == 1)
  {
    std::__tree<int>::destroy((this + 16), this[17]);
  }

  if (*(this + 120) == 1)
  {
    std::__tree<int>::destroy((this + 12), this[13]);
  }

  if (*(this + 88) == 1)
  {
    std::__tree<std::string>::destroy((this + 8), this[9]);
  }

  if (*(this + 56) == 1)
  {
    std::__tree<std::string>::destroy((this + 4), this[5]);
  }

  if (*(this + 24) == 1)
  {
    std::__tree<int>::destroy(this, this[1]);
  }
}

void *std::__shared_ptr_emplace<quasar::LmeContainer>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<quasar::LmeData const>,std::string,quasar::LmeDataFactoryBase::LmeType,std::allocator<quasar::LmeContainer>,0>(void *a1, __int128 *a2, __int128 *a3, unsigned int *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D04190;
  std::allocator<quasar::LmeContainer>::construct[abi:ne200100]<quasar::LmeContainer,std::shared_ptr<quasar::LmeData const>,std::string,quasar::LmeDataFactoryBase::LmeType>(&v6, (a1 + 3), a2, a3, a4);
  return a1;
}

void std::__shared_ptr_emplace<quasar::LmeContainer>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D04190;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::allocator<quasar::LmeContainer>::construct[abi:ne200100]<quasar::LmeContainer,std::shared_ptr<quasar::LmeData const>,std::string,quasar::LmeDataFactoryBase::LmeType>(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4, unsigned int *a5)
{
  v5 = *a3;
  *a3 = 0uLL;
  quasar::LmeContainer::LmeContainer(a2, &v5, a4, *a5);
  if (*(&v5 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v5 + 1));
  }
}

void sub_1B51E1FF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<quasar::LmeDataFactoryBase::LmeType>::__init_with_size[abi:ne200100]<quasar::LmeDataFactoryBase::LmeType*,quasar::LmeDataFactoryBase::LmeType*>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B51E206C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::map<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>::map[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>,std::__tree_node<std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

void *std::map<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>,std::__tree_node<std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>,void *> *,long>>>(void *result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>,std::__map_value_compare<quasar::LmeDataFactoryBase::LmeType,std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>,std::less<quasar::LmeDataFactoryBase::LmeType>,true>,std::allocator<std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>>>::__emplace_hint_unique_key_args<quasar::LmeDataFactoryBase::LmeType,std::pair<quasar::LmeDataFactoryBase::LmeType const,std::vector<std::shared_ptr<quasar::LmeContainer>>> const&>(v5, (v5 + 8), v4 + 8, (v4 + 8));
      v6 = *(v4 + 1);
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
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

void *std::__tree<std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>,std::__map_value_compare<quasar::LmeDataFactoryBase::LmeType,std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>,std::less<quasar::LmeDataFactoryBase::LmeType>,true>,std::allocator<std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>>>::__emplace_hint_unique_key_args<quasar::LmeDataFactoryBase::LmeType,std::pair<quasar::LmeDataFactoryBase::LmeType const,std::vector<std::shared_ptr<quasar::LmeContainer>>> const&>(uint64_t **a1, uint64_t *a2, int *a3, uint64_t a4)
{
  result = *std::__tree<std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>,std::__map_value_compare<quasar::LmeDataFactoryBase::LmeType,std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>,std::less<quasar::LmeDataFactoryBase::LmeType>,true>,std::allocator<std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>>>::__find_equal<quasar::LmeDataFactoryBase::LmeType>(a1, a2, &v6, &v5, a3);
  if (!result)
  {
    std::__tree<std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>,std::__map_value_compare<quasar::LmeDataFactoryBase::LmeType,std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>,std::less<quasar::LmeDataFactoryBase::LmeType>,true>,std::allocator<std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>>>::__construct_node<std::pair<quasar::LmeDataFactoryBase::LmeType const,std::vector<std::shared_ptr<quasar::LmeContainer>>> const&>();
  }

  return result;
}

uint64_t *std::__tree<std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>,std::__map_value_compare<quasar::LmeDataFactoryBase::LmeType,std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>,std::less<quasar::LmeDataFactoryBase::LmeType>,true>,std::allocator<std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>>>::__find_equal<quasar::LmeDataFactoryBase::LmeType>(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, int *a5)
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

void sub_1B51E2420(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<std::shared_ptr<quasar::LmeContainer>>::__init_with_size[abi:ne200100]<std::shared_ptr<quasar::LmeContainer>*,std::shared_ptr<quasar::LmeContainer>*>(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::shared_ptr<kaldi::quasar::ComputeEngineItf>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B51E24A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<quasar::LmeContainer>>,std::shared_ptr<quasar::LmeContainer>*,std::shared_ptr<quasar::LmeContainer>*,std::shared_ptr<quasar::LmeContainer>*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<quasar::LmeContainer>>,std::shared_ptr<quasar::LmeContainer>*>>::~__exception_guard_exceptions[abi:ne200100](v7);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<quasar::LmeContainer>>,std::shared_ptr<quasar::LmeContainer>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<kaldi::quasar::ComputeEngineItf>>,std::shared_ptr<kaldi::quasar::ComputeEngineItf>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p + 5;
    std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v3);
  }

  if (__p)
  {
    operator delete(__p);
  }
}

void std::__tree<std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>,std::__map_value_compare<quasar::LmeDataFactoryBase::LmeType,std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>,std::less<quasar::LmeDataFactoryBase::LmeType>,true>,std::allocator<std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>,std::__map_value_compare<quasar::LmeDataFactoryBase::LmeType,std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>,std::less<quasar::LmeDataFactoryBase::LmeType>,true>,std::allocator<std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>,std::__map_value_compare<quasar::LmeDataFactoryBase::LmeType,std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>,std::less<quasar::LmeDataFactoryBase::LmeType>,true>,std::allocator<std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>>>::destroy(a1, *(a2 + 1));
    v4 = (a2 + 40);
    std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v4);
    operator delete(a2);
  }
}

uint64_t *std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<long long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B51E2818(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<std::vector<quasar::Token>>::__init_with_size[abi:ne200100]<std::vector<quasar::Token>*,std::vector<quasar::Token>*>(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B51E289C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<quasar::Token>>,std::vector<quasar::Token>*,std::vector<quasar::Token>*,std::vector<quasar::Token>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(v4, *v6, *(v6 + 8), 0x6DB6DB6DB6DB6DB7 * ((*(v6 + 8) - *v6) >> 5));
      v6 += 24;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<quasar::Token>>,std::vector<quasar::Token>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<quasar::Token>>,std::vector<quasar::Token>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<quasar::Token>>,std::vector<quasar::Token>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<quasar::Token>>,std::vector<quasar::Token>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v1 -= 3;
    v3 = v1;
    std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v3);
  }
}

void std::vector<std::vector<std::vector<quasar::Token>>>::__destroy_vector::operator()[abi:ne200100](void *****a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 3;
        v6 = v4;
        std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

const void **std::vector<std::vector<unsigned int>>::push_back[abi:ne200100](const void **result, uint64_t a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    v16[4] = result;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<int>>>(result, v10);
    }

    v11 = 24 * v7;
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *v11 = *a2;
    *(v11 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = 24 * v7 + 24;
    v12 = result[1] - *result;
    v13 = (v11 - v12);
    memcpy((v11 - v12), *result, v12);
    v14 = *v3;
    *v3 = v13;
    v3[1] = v6;
    v15 = v3[2];
    v3[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = std::__split_buffer<std::vector<int>>::~__split_buffer(v16);
  }

  else
  {
    *v4 = 0;
    *(v4 + 1) = 0;
    *(v4 + 2) = 0;
    *v4 = *a2;
    *(v4 + 2) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = (v4 + 24);
  }

  v3[1] = v6;
  return result;
}

void **std::vector<std::vector<std::vector<quasar::Token>>>::push_back[abi:ne200100](void **result, uint64_t a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    v16[4] = result;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<quasar::Token>>>(result, v10);
    }

    v11 = 24 * v7;
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *v11 = *a2;
    *(v11 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = 24 * v7 + 24;
    v12 = result[1] - *result;
    v13 = (v11 - v12);
    memcpy((v11 - v12), *result, v12);
    v14 = *v3;
    *v3 = v13;
    v3[1] = v6;
    v15 = v3[2];
    v3[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = std::__split_buffer<std::vector<std::vector<quasar::Token>>>::~__split_buffer(v16);
  }

  else
  {
    *v4 = 0;
    *(v4 + 1) = 0;
    *(v4 + 2) = 0;
    *v4 = *a2;
    *(v4 + 2) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = (v4 + 24);
  }

  v3[1] = v6;
  return result;
}

void **std::__split_buffer<std::vector<std::vector<quasar::Token>>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::vector<std::vector<quasar::Token>>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<std::vector<quasar::Token>>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v5);
  }
}

void std::vector<std::vector<std::vector<quasar::Token>>>::__vdeallocate(void ***a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 3;
        v5 = v3;
        std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v5);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void *quasar::joinToStream<std::vector<int>>(void *result, unsigned int **a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    v6 = result;
    v7 = 1;
    do
    {
      if ((v7 & 1) == 0)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, *a3, a3[1]);
      }

      v8 = *v3++;
      result = MEMORY[0x1B8C84C00](v6, v8);
      v7 = 0;
    }

    while (v3 != v4);
  }

  return result;
}

void std::vector<quasar::ItnOverride>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<quasar::ItnOverride>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<quasar::ItnOverride>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    do
    {
      if (*(v3 - 1) < 0)
      {
        operator delete(*(v3 - 3));
      }

      if (*(v3 - 25) < 0)
      {
        operator delete(*(v3 - 6));
      }

      v4 = v3 - 9;
      if (*(v3 - 49) < 0)
      {
        operator delete(*v4);
      }

      v3 -= 9;
    }

    while (v4 != v2);
  }

  a1[1] = v2;
}

void std::vector<std::pair<int,std::vector<std::string>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = v4 - 32;
        v7 = (v4 - 24);
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v7);
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void quasar::result_handler::Package::~Package(void **this)
{
  v5 = this + 54;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v5);
  v5 = this + 50;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v5);
  v5 = this + 47;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v5);
  if (*(this + 368) == 1)
  {
    v5 = this + 42;
    std::vector<quasar::result_handler::CommandInterpretation>::__destroy_vector::operator()[abi:ne200100](&v5);
    if (*(this + 335) < 0)
    {
      operator delete(this[39]);
    }

    if (*(this + 303) < 0)
    {
      operator delete(this[35]);
    }

    v5 = this + 32;
    std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v5);
    v5 = this + 29;
    std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v5);
    v5 = this + 26;
    std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v5);
    v5 = this + 23;
    std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v5);
  }

  v5 = this + 20;
  std::vector<quasar::result_handler::CommandData>::__destroy_vector::operator()[abi:ne200100](&v5);
  v2 = this[17];
  if (v2)
  {
    this[18] = v2;
    operator delete(v2);
  }

  v3 = this[14];
  if (v3)
  {
    this[15] = v3;
    operator delete(v3);
  }

  v4 = this[11];
  if (v4)
  {
    this[12] = v4;
    operator delete(v4);
  }

  v5 = this + 6;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v5 = this + 3;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v5 = this;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v5);
}

void std::vector<quasar::result_handler::CommandInterpretation>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        quasar::result_handler::CommandInterpretation::~CommandInterpretation(v4 - 33);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void quasar::result_handler::CommandInterpretation::~CommandInterpretation(void **this)
{
  v2 = this + 28;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this + 25;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this + 22;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 152) == 1 && *(this + 151) < 0)
  {
    operator delete(this[16]);
  }

  if (*(this + 120) == 1 && *(this + 119) < 0)
  {
    operator delete(this[12]);
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

void std::vector<quasar::result_handler::CommandData>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<quasar::result_handler::CommandData>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<quasar::result_handler::CommandData>::clear[abi:ne200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = v2 - 88;
    do
    {
      v6 = (v4 + 56);
      std::vector<quasar::result_handler::CommandInterpretation>::__destroy_vector::operator()[abi:ne200100](&v6);
      if (*(v4 + 55) < 0)
      {
        operator delete(*(v4 + 32));
      }

      if (*(v4 + 23) < 0)
      {
        operator delete(*v4);
      }

      v5 = v4 - 96;
      v6 = (v4 - 24);
      std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v6);
      v6 = (v4 - 48);
      std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v6);
      v6 = (v4 - 72);
      std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v6);
      v6 = (v4 - 96);
      std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v6);
      v4 -= 184;
    }

    while (v5 != v3);
  }

  a1[1] = v3;
}

void std::vector<std::vector<quasar::Token>>::__vdeallocate(void ***a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 3;
        v5 = v3;
        std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v5);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<std::vector<quasar::Token>>::__assign_with_size[abi:ne200100]<std::vector<quasar::Token> const*,std::vector<quasar::Token> const*>(uint64_t a1, quasar::Token **a2, quasar::Token **a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) < a4)
  {
    std::vector<std::vector<quasar::Token>>::__vdeallocate(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v11 = *(a1 + 8) - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v11 >> 3) >= a4)
  {
    std::__copy_impl::operator()[abi:ne200100]<std::vector<quasar::Token> const*,std::vector<quasar::Token> const*,std::vector<quasar::Token>*>(&v16, a2, a3, v8);
    v13 = v12;
    v14 = *(a1 + 8);
    if (v14 != v12)
    {
      do
      {
        v14 -= 3;
        v17 = v14;
        std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v17);
      }

      while (v14 != v13);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<std::vector<quasar::Token> const*,std::vector<quasar::Token> const*,std::vector<quasar::Token>*>(&v15, a2, (a2 + v11), v8);
    *(a1 + 8) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<quasar::Token>>,std::vector<quasar::Token> const*,std::vector<quasar::Token> const*,std::vector<quasar::Token>*>(a1, a2 + v11, a3, *(a1 + 8));
  }
}

uint64_t *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<quasar::Token>>,std::vector<quasar::Token> const*,std::vector<quasar::Token> const*,std::vector<quasar::Token>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(v4, *v6, *(v6 + 8), 0x6DB6DB6DB6DB6DB7 * ((*(v6 + 8) - *v6) >> 5));
      v6 += 24;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<quasar::Token>>,std::vector<quasar::Token>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

quasar::Token **std::__copy_impl::operator()[abi:ne200100]<std::vector<quasar::Token> const*,std::vector<quasar::Token> const*,std::vector<quasar::Token>*>(int a1, quasar::Token **a2, quasar::Token **a3, quasar::Token **a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (v5 != a4)
      {
        std::vector<quasar::Token>::__assign_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(a4, *v5, v5[1], 0x6DB6DB6DB6DB6DB7 * ((v5[1] - *v5) >> 5));
      }

      v5 += 3;
      a4 += 3;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void std::vector<std::vector<quasar::Token>>::__assign_with_size[abi:ne200100]<std::vector<quasar::Token>*,std::vector<quasar::Token>*>(uint64_t a1, quasar::Token **a2, quasar::Token **a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) < a4)
  {
    std::vector<std::vector<quasar::Token>>::__vdeallocate(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v11 = *(a1 + 8) - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v11 >> 3) >= a4)
  {
    std::__copy_impl::operator()[abi:ne200100]<std::vector<quasar::Token> const*,std::vector<quasar::Token> const*,std::vector<quasar::Token>*>(&v16, a2, a3, v8);
    v13 = v12;
    v14 = *(a1 + 8);
    if (v14 != v12)
    {
      do
      {
        v14 -= 3;
        v17 = v14;
        std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v17);
      }

      while (v14 != v13);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<std::vector<quasar::Token> const*,std::vector<quasar::Token> const*,std::vector<quasar::Token>*>(&v15, a2, (a2 + v11), v8);
    *(a1 + 8) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<quasar::Token>>,std::vector<quasar::Token>*,std::vector<quasar::Token>*,std::vector<quasar::Token>*>(a1, a2 + v11, a3, *(a1 + 8));
  }
}

uint64_t std::vector<quasar::Token>::__emplace_back_slow_path<quasar::Token const&>(uint64_t a1, const quasar::Token *a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 8) - *a1) >> 5);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x124924924924924)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 5) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 5);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 5)) >= 0x92492492492492)
  {
    v6 = 0x124924924924924;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::Token>>(a1, v6);
  }

  v13 = 0;
  v14 = 224 * v2;
  quasar::Token::Token((224 * v2), a2);
  v15 = (224 * v2 + 224);
  v7 = *(a1 + 8);
  v8 = 224 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::Token>,quasar::Token*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<quasar::Token>::~__split_buffer(&v13);
  return v12;
}

void sub_1B51E3918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<quasar::Token>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<std::set<std::string>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = v4 - 3;
        std::__tree<std::string>::destroy((v4 - 3), *(v4 - 2));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__shared_ptr_emplace<EARModelInitializeContext>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D041E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t EARModelInitializeContext::EARModelInitializeContext(uint64_t a1, void *a2)
{
  *(a1 + 8) = 0;
  *a1 = &unk_1F2D04230;
  v3 = a2;
  *(a1 + 16) = 0;
  objc_storeWeak((a1 + 16), v3);

  return a1;
}

void EARModelInitializeContext::~EARModelInitializeContext(EARModelInitializeContext *this)
{
  objc_destroyWeak(this + 2);

  quasar::Bitmap::~Bitmap(this);
}

{
  objc_destroyWeak(this + 2);
  quasar::Bitmap::~Bitmap(this);

  JUMPOUT(0x1B8C85350);
}

void EARModelInitializeContext::didFinishModelInitializing(uint64_t a1, uint64_t *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 16));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = EARLogger::QuasarOSLogger(WeakRetained);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      if (*(a2 + 23) >= 0)
      {
        v6 = a2;
      }

      else
      {
        v6 = *a2;
      }

      v11 = 136315138;
      v12 = v6;
      _os_log_impl(&dword_1B501D000, v5, OS_LOG_TYPE_INFO, "Finished initializing model, fileName=%s", &v11, 0xCu);
    }

    v7 = *(a2 + 23);
    if (v7 >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    if (v7 >= 0)
    {
      v9 = *(a2 + 23);
    }

    else
    {
      v9 = a2[1];
    }

    v10 = [MEMORY[0x1E696AEC0] ear_stringWithStringView:{v8, v9}];
    [(EARLogger *)v4 didFinishModelInitializing:v10];
  }
}

void *std::__shared_ptr_emplace<std::istringstream>::__shared_ptr_emplace[abi:ne200100]<std::string,std::allocator<std::istringstream>,0>(void *a1, const std::string *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D04278;
  std::istringstream::basic_istringstream[abi:ne200100](a1 + 3, a2, 8);
  return a1;
}

void std::__shared_ptr_emplace<std::istringstream>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D04278;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *std::__shared_ptr_emplace<quasar::corrective_reranking::Parser>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<quasar::corrective_reranking::Parser>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D042C8;
  quasar::corrective_reranking::Parser::Parser((a1 + 3));
  return a1;
}

void std::__shared_ptr_emplace<quasar::corrective_reranking::Parser>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D042C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<quasar::corrective_reranking::Parser>::__on_zero_shared(uint64_t a1)
{
  quasar::corrective_reranking::Models::~Models((a1 + 728));

  quasar::corrective_reranking::Config::~Config((a1 + 24));
}

void quasar::corrective_reranking::Config::~Config(void **this)
{
  quasar::PTree::~PTree(this + 80);
  if (*(this + 631) < 0)
  {
    operator delete(this[76]);
  }

  if (*(this + 599) < 0)
  {
    operator delete(this[72]);
  }

  if (*(this + 575) < 0)
  {
    operator delete(this[69]);
  }

  if (*(this + 543) < 0)
  {
    operator delete(this[65]);
  }

  if (*(this + 519) < 0)
  {
    operator delete(this[62]);
  }

  if (*(this + 495) < 0)
  {
    operator delete(this[59]);
  }

  if (*(this + 471) < 0)
  {
    operator delete(this[56]);
  }

  if (*(this + 447) < 0)
  {
    operator delete(this[53]);
  }

  if (*(this + 423) < 0)
  {
    operator delete(this[50]);
  }

  if (*(this + 391) < 0)
  {
    operator delete(this[46]);
  }

  if (*(this + 367) < 0)
  {
    operator delete(this[43]);
  }

  v2 = this[40];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = this[35];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v5 = this + 30;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v5);
  if (*(this + 239) < 0)
  {
    operator delete(this[27]);
  }

  if (*(this + 215) < 0)
  {
    operator delete(this[24]);
  }

  if (*(this + 191) < 0)
  {
    operator delete(this[21]);
  }

  if (*(this + 167) < 0)
  {
    operator delete(this[18]);
  }

  v5 = this + 15;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v5);
  v5 = this + 8;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v5);
  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }

  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }

  v4 = this[1];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void std::__shared_ptr_pointer<std::istream  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__shared_ptr_pointer<std::istream  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<std::istream  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<ResultStreamWrapper>::__shared_ptr_emplace[abi:ne200100]<_EARSpeechRecognizer * const {__strong}&,NSDictionary<NSString *,NSString> * {__strong}&,_EARSpeechRecognizer * const {__strong}&* {__strong}&<NSString,NSNumber *>,objc_object  {objcproto33_EARSpeechRecognitionResultStream}* const {__strong}&,NSString const {__strong}&,objc_object  {objcproto30_EARSpeakerCodeWriterInterface}* const {__strong}&,objc_object  {objcproto33_EARSpeechRecognitionResultStream}* const {__strong},std::allocator<ResultStreamWrapper>,0>(void *a1, void **a2, void **a3, void **a4, void **a5, void **a6, void **a7, void **a8)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D04378;
  ResultStreamWrapper::ResultStreamWrapper((a1 + 3), *a2, *a3, *a4, *a5, *a6, *a7, *a8);
}

void std::__shared_ptr_emplace<ResultStreamWrapper>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D04378;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void ResultStreamWrapper::ResultStreamWrapper(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v32 = *MEMORY[0x1E69E9840];
  v15 = a2;
  v27 = v15;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v26 = v18;
  v25 = a6;
  v19 = a7;
  v24 = a8;
  quasar::RecogResultStreamBase::RecogResultStreamBase(a1);
  *a1 = &unk_1F2D043C8;
  *(a1 + 24) = v18;
  *(a1 + 32) = v19;
  objc_initWeak((a1 + 40), v15);
  v23 = v16;
  v20 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v23, "count")}];
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  v29 = ___ZL18LowercasedDictKeysP12NSDictionaryIP8NSStringP11objc_objectE_block_invoke;
  v30 = &unk_1E7C1A6A8;
  v21 = v20;
  v31 = v21;
  [v23 enumerateKeysAndObjectsUsingBlock:buf];

  *(a1 + 48) = v21;
  *(a1 + 56) = v17;
  *(a1 + 64) = [v25 copy];
  v22 = [v24 copy];
  *(a1 + 80) = 0;
  *(a1 + 72) = v22;
  _ZNSt3__115allocate_sharedB8ne200100IN6quasar18DoublePartialLogicENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

void sub_1B51E48EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id location, void *a34, void *a35, void *a36, void *a37)
{
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  if (a26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a26);
  }

  v43 = *(v41 - 200);
  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  }

  objc_destroyWeak(&a32);
  objc_destroyWeak(&location);
  v44 = *(v37 + 112);
  if (v44)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v44);
  }

  v45 = *(v37 + 96);
  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  }

  objc_destroyWeak((v37 + 40));
  quasar::RecogResultStreamBase::~RecogResultStreamBase(v37);

  _Unwind_Resume(a1);
}

void ___ZN19ResultStreamWrapperC2EP20_EARSpeechRecognizerP12NSDictionaryIP8NSStringS4_EPS2_IS4_P8NSNumberEPU44objcproto33_EARSpeechRecognitionResultStream11objc_objectS4_PU41objcproto30_EARSpeakerCodeWriterInterface11objc_objectS4__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v1 = WeakRetained[2];
    if (v1)
    {
      if ([v1 refreshEmojiRecognizer])
      {
        v2 = [WeakRetained recognizeEmoji];
      }

      else
      {
        v2 = 0;
      }

      [WeakRetained setRecognizeEmoji:v2];
    }
  }
}

void EARContinuousListeningResultHelper::setUtteranceDelayResultStream(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 264);
  if (v2)
  {
    v3 = *a2;
    v4 = a2[1];
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v5 = *(v2 + 24);
    *(v2 + 16) = v3;
    *(v2 + 24) = v4;
    if (v5)
    {
      std::__shared_weak_count::__release_weak(v5);
    }

    if (v4)
    {

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void ResultStreamWrapper::~ResultStreamWrapper(ResultStreamWrapper *this)
{
  ResultStreamWrapper::~ResultStreamWrapper(this);

  JUMPOUT(0x1B8C85350);
}

{
  *this = &unk_1F2D043C8;
  v2 = *(this + 10);
  *(this + 10) = 0;

  v3 = *(this + 14);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 12);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  objc_destroyWeak(this + 5);

  quasar::RecogResultStreamBase::~RecogResultStreamBase(this);
}

void ResultStreamWrapper::writePartial(uint64_t a1, __int128 **a2, int a3, int a4, int a5, int a6, quasar::Token ***a7, uint64_t a8, uint64_t a9, char a10, char a11, char *a12)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v20 = WeakRetained;
  if (WeakRetained)
  {
    if (a4 && ([WeakRetained disablePartialResults] & 1) == 0)
    {
      v37 = a5;
      v38 = a6;
      v79 = 0;
      v80 = 0;
      v81 = 0;
      v21 = a7[1];
      v39 = v20;
      if (*a7 == v21)
      {
        memset(buf, 0, 24);
        std::vector<std::vector<quasar::Token>>::push_back[abi:ne200100](&v79, buf);
        *&v64 = buf;
        std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v64);
        v23 = *a2;
        v24 = a2[1];
        if (*a2 != v24)
        {
          do
          {
            v25 = v80;
            if (*(v23 + 23) < 0)
            {
              std::string::__init_copy_ctor_external(&v66, *v23, *(v23 + 1));
            }

            else
            {
              v26 = *v23;
              v66.__r_.__value_.__r.__words[2] = *(v23 + 2);
              *&v66.__r_.__value_.__l.__data_ = v26;
            }

            std::string::basic_string[abi:ne200100]<0>(&v64, "");
            std::string::basic_string[abi:ne200100]<0>(&v62, "");
            v59 = 0;
            v60 = 0;
            v61 = 0;
            std::string::basic_string[abi:ne200100]<0>(v57, "");
            quasar::Token::Token(buf, &v66, 0, 0, 0, 1, 0, &v64, 0.0, &v62, &v59, 0, v57, 0, 0, 0);
            std::vector<quasar::Token>::push_back[abi:ne200100]((v25 - 24), buf);
            if (v78 < 0)
            {
              operator delete(__p);
            }

            if (v76 < 0)
            {
              operator delete(v75);
            }

            v82[0] = &v74;
            std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](v82);
            if (v73 < 0)
            {
              operator delete(v72);
            }

            v82[0] = &v71;
            std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v82);
            if (v70 < 0)
            {
              operator delete(v69);
            }

            if ((buf[23] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }

            if (v58 < 0)
            {
              operator delete(v57[0]);
            }

            v57[0] = &v59;
            std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](v57);
            if (SHIBYTE(v63) < 0)
            {
              operator delete(v62);
            }

            if (SHIBYTE(v65) < 0)
            {
              operator delete(v64);
            }

            if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v66.__r_.__value_.__l.__data_);
            }

            v23 = (v23 + 24);
          }

          while (v23 != v24);
        }
      }

      else if (&v79 != a7)
      {
        std::vector<std::vector<quasar::Token>>::__assign_with_size[abi:ne200100]<std::vector<quasar::Token>*,std::vector<quasar::Token>*>(&v79, *a7, v21, 0xAAAAAAAAAAAAAAABLL * (v21 - *a7));
      }

      v27 = v79;
      v28 = v80;
      while (v27 != v28)
      {
        v30 = *v27;
        v29 = v27[1];
        while (v30 != v29)
        {
          if (*a12 == 1)
          {
            quasar::resetWhiteSpace(v30, a12 + 8);
            v31 = *a12;
          }

          else
          {
            v31 = 0;
          }

          ResultStreamWrapper::replacementTokenName(a1, v30, v31 & 1, buf);
          if (*(v30 + 23) < 0)
          {
            operator delete(*v30);
          }

          v32 = *buf;
          *(v30 + 16) = *&buf[16];
          *v30 = v32;
          v30 += 224;
        }

        v27 += 3;
      }

      v33 = *(a1 + 104);
      v34 = *(a1 + 112);
      if (v34)
      {
        atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v35 = *(a1 + 80);
      v20 = v39;
      if (v35)
      {
        objc_msgSend_continuousListeningResultHelper(v35);
      }

      else
      {
        v57[0] = 0;
        v57[1] = 0;
      }

      v64 = 0uLL;
      v65 = 0;
      v62 = 0uLL;
      v63 = 0;
      v59 = 0;
      v60 = 0;
      v61 = 0;
      buf[0] = *a12;
      if (a12[31] < 0)
      {
        std::string::__init_copy_ctor_external(&buf[8], *(a12 + 1), *(a12 + 2));
      }

      else
      {
        *&buf[8] = *(a12 + 8);
        *&buf[24] = *(a12 + 3);
      }

      v68 = a12[32];
      v36 = v39[1];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3321888768;
      block[2] = ___ZN19ResultStreamWrapper12writePartialERKNSt3__16vectorINS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEENS5_IS7_EEEE27PartialUtteranceStartMillisbiiRKNS1_INS1_IN6quasar5TokenENS5_ISE_EEEENS5_ISG_EEEESB_SB_bbRK14FormattingInfo_block_invoke;
      block[3] = &__block_descriptor_215_ea8_32c63_ZTSKNSt3__110shared_ptrI34EARContinuousListeningResultHelperEE48c59_ZTSKNSt3__110shared_ptrIN6quasar21RecogResultStreamBaseEEE64c90_ZTSKNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEE88c72_ZTSNSt3__16vectorINS0_IN6quasar5TokenENS_9allocatorIS2_EEEENS3_IS5_EEEE112c90_ZTSKNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEE136c90_ZTSKNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEE160c21_ZTSK14FormattingInfo_e5_v8__0l;
      block[4] = v57[0];
      v41 = v57[1];
      if (v57[1])
      {
        atomic_fetch_add_explicit(v57[1] + 1, 1uLL, memory_order_relaxed);
      }

      v42 = v33;
      v43 = v34;
      if (v34)
      {
        atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      memset(v44, 0, sizeof(v44));
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v44, v64, SDWORD2(v64), 0xAAAAAAAAAAAAAAABLL * ((*(&v64 + 1) - v64) >> 3));
      v54 = a4;
      v51 = a3;
      v52 = v37;
      v53 = v38;
      memset(v45, 0, sizeof(v45));
      std::vector<std::vector<quasar::Token>>::__init_with_size[abi:ne200100]<std::vector<quasar::Token>*,std::vector<quasar::Token>*>(v45, v79, v80, 0xAAAAAAAAAAAAAAABLL * ((v80 - v79) >> 3));
      memset(v46, 0, sizeof(v46));
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v46, v62, SDWORD2(v62), 0xAAAAAAAAAAAAAAABLL * ((*(&v62 + 1) - v62) >> 3));
      memset(v47, 0, sizeof(v47));
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v47, v59, v60, 0xAAAAAAAAAAAAAAABLL * ((v60 - v59) >> 3));
      v55 = a10;
      v56 = a11;
      v48 = buf[0];
      if ((buf[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v49, *&buf[8], *&buf[16]);
      }

      else
      {
        v49 = *&buf[8];
      }

      v50 = v68;
      dispatch_async(v36, block);
      if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v49.__r_.__value_.__l.__data_);
      }

      v82[0] = v47;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v82);
      v82[0] = v46;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v82);
      v82[0] = v45;
      std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](v82);
      v82[0] = v44;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v82);
      if (v43)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v43);
      }

      if (v41)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v41);
      }

      if ((buf[31] & 0x80000000) != 0)
      {
        operator delete(*&buf[8]);
      }

      *buf = &v59;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](buf);
      *buf = &v62;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](buf);
      *buf = &v64;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](buf);
      if (v57[1])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v57[1]);
      }

      if (v34)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v34);
      }

      *buf = &v79;
      std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](buf);
    }
  }

  else
  {
    v22 = EARLogger::QuasarOSLogger(0);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B501D000, v22, OS_LOG_TYPE_INFO, "Recognizer has been deallocated; not writing partial results", buf, 2u);
    }
  }
}

void sub_1B51E521C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, uint64_t a24, std::__shared_weak_count *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, std::__shared_weak_count *a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, uint64_t a60, void **a61, void *__p, uint64_t a63)
{
  *(v70 - 104) = v67;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v70 - 104));
  *(v70 - 104) = v66;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v70 - 104));
  *(v70 - 104) = v65;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100]((v70 - 104));
  *(v70 - 104) = v69;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v70 - 104));
  if (a25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a25);
  }

  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  if (a65 < 0)
  {
    operator delete(__p);
  }

  a61 = &a48;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a61);
  a61 = &a51;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a61);
  a61 = &a54;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a61);
  if (a46)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a46);
  }

  if (v68)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v68);
  }

  a61 = (v70 - 128);
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&a61);

  _Unwind_Resume(a1);
}

void ResultStreamWrapper::writeFinalChoices(uint64_t a1, quasar::PTree *a2, unsigned int a3)
{
  v54[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v28 = *(a1 + 24);
    if (v28)
    {
      if (a3 == 1)
      {
        memset(v52, 0, sizeof(v52));
        String = quasar::PTree::getString(a2);
        v7 = *String;
        v30 = String[1];
        if (*String != v30)
        {
          do
          {
            v49 = 0;
            v50 = 0;
            v51 = 0;
            v8 = *v7;
            v9 = v7[1];
            while (v8 != v9)
            {
              quasar::Token::Token(&__p, v8);
              if (*(a2 + 584) == 1)
              {
                quasar::resetWhiteSpace(&__p, a2 + 592);
                v10 = *(a2 + 584);
              }

              else
              {
                v10 = 0;
              }

              ResultStreamWrapper::replacementTokenName(a1, &__p, v10 & 1, &v48);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              __p = v48;
              v11 = *(a1 + 56);
              if (v11)
              {
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

                v14 = [MEMORY[0x1E696AEC0] ear_stringWithStringView:{p_p, size}];
                v15 = [v11 objectForKey:v14];

                if (v15)
                {
                  [v15 floatValue];
                  v17 = v37 - v16;
                  if (v17 < 0.0)
                  {
                    v17 = 0.0;
                  }

                  v37 = v17;
                }
              }

              std::vector<quasar::Token>::push_back[abi:ne200100](&v49, &__p);
              if (v47 < 0)
              {
                operator delete(v46);
              }

              if (v45 < 0)
              {
                operator delete(v44);
              }

              v48.__r_.__value_.__r.__words[0] = &v43;
              std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&v48);
              if (v42 < 0)
              {
                operator delete(v41);
              }

              v48.__r_.__value_.__r.__words[0] = &v40;
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v48);
              if (v39 < 0)
              {
                operator delete(v38);
              }

              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              v8 = (v8 + 224);
            }

            std::vector<std::vector<quasar::Token>>::push_back[abi:ne200100](v52, &v49);
            __p.__r_.__value_.__r.__words[0] = &v49;
            std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&__p);
            v7 += 3;
          }

          while (v7 != v30);
        }

        v18 = *(a1 + 104);
        v19 = *(a1 + 112);
        if (v19)
        {
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v20 = *(a1 + 80);
        if (v20)
        {
          objc_msgSend_continuousListeningResultHelper(v20);
        }

        else
        {
          v49 = 0;
          v50 = 0;
        }

        quasar::RecogResult::RecogResult(&__p, a2);
        quasar::RecogResult::setResultChoices(&__p, v52);
        v27 = WeakRetained[1];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3321888768;
        block[2] = ___ZN19ResultStreamWrapper17writeFinalChoicesERKN6quasar11RecogResultENS0_21RecogResultStreamBase11RecogStatusE_block_invoke;
        block[3] = &__block_descriptor_716_ea8_32c63_ZTSKNSt3__110shared_ptrI34EARContinuousListeningResultHelperEE48c59_ZTSKNSt3__110shared_ptrIN6quasar21RecogResultStreamBaseEEE64c26_ZTSN6quasar11RecogResultE_e5_v8__0l;
        block[4] = v49;
        v32 = v50;
        if (v50)
        {
          atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v33 = v18;
        v34 = v19;
        if (v19)
        {
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        quasar::RecogResult::RecogResult(v35, &__p);
        v35[162] = 1;
        dispatch_async(v27, block);
        quasar::RecogResult::~RecogResult(v35);
        if (v34)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v34);
        }

        if (v32)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v32);
        }

        quasar::RecogResult::~RecogResult(&__p);
        if (v50)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v50);
        }

        if (v19)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v19);
        }

        __p.__r_.__value_.__r.__words[0] = v52;
        std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&__p);
      }

      else
      {
        v23 = [WeakRetained relevantTextContext];
        [v23 reset];

        v24 = MEMORY[0x1E696ABC0];
        v53 = *MEMORY[0x1E696A578];
        v54[0] = @"Recognition was unsuccessful";
        v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:&v53 count:1];
        v26 = [v24 errorWithDomain:@"EARErrorDomain" code:a3 userInfo:v25];
        [v28 speechRecognizer:WeakRetained didFinishRecognitionWithError:v26];
      }
    }

    else
    {
      v22 = EARLogger::QuasarOSLogger(0);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        LOWORD(__p.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&dword_1B501D000, v22, OS_LOG_TYPE_INFO, "Result stream has been deallocated; not writing final choices", &__p, 2u);
      }
    }
  }

  else
  {
    v21 = EARLogger::QuasarOSLogger(0);
    v28 = v21;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      LOWORD(__p.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_1B501D000, v21, OS_LOG_TYPE_INFO, "Recognizer has been deallocated; not writing final choices", &__p, 2u);
    }
  }
}

void sub_1B51E58A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11)
{
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  STACK[0x2F0] = v12 - 152;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2F0]);

  _Unwind_Resume(a1);
}

void ResultStreamWrapper::reportRecognizerProgressStatus(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 24);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (!WeakRetained)
  {
    v7 = EARLogger::QuasarOSLogger(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v11 = 0;
      v8 = "Recognizer has been deallocated; not reporting result progress";
      v9 = &v11;
LABEL_9:
      _os_log_impl(&dword_1B501D000, v7, OS_LOG_TYPE_INFO, v8, v9, 2u);
    }

LABEL_10:

    goto LABEL_11;
  }

  if (!v4)
  {
    v7 = EARLogger::QuasarOSLogger(WeakRetained);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v10 = 0;
      v8 = "Result stream has been deallocated; not reporting result progress";
      v9 = &v10;
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 speechRecognizer:v6 didReportStatus:*a2 != 0 statusContext:0];
  }

LABEL_11:
}

void ResultStreamWrapper::reportRecognitionProgress(ResultStreamWrapper *this, int a2)
{
  WeakRetained = objc_loadWeakRetained(this + 5);
  if (WeakRetained)
  {
    v5 = *(this + 3);
    if (v5)
    {
      if (objc_opt_respondsToSelector())
      {
        [v5 speechRecognizer:WeakRetained didProcessAudioDuration:a2 * 0.001];
      }
    }

    else
    {
      v6 = EARLogger::QuasarOSLogger(0);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v7 = 0;
        _os_log_impl(&dword_1B501D000, v6, OS_LOG_TYPE_INFO, "Result stream has been deallocated; not reporting result progress", v7, 2u);
      }
    }
  }

  else
  {
    v5 = EARLogger::QuasarOSLogger(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B501D000, v5, OS_LOG_TYPE_INFO, "Recognizer has been deallocated; not reporting result progress", buf, 2u);
    }
  }
}

void ResultStreamWrapper::reportHighResolutionRecognitionProgress(ResultStreamWrapper *this, const char *a2)
{
  v3 = *(this + 10);
  if (v3)
  {
    v4 = a2;
    objc_msgSend_continuousListeningResultHelper(v3);
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    if (v6)
    {
      v5 = *(this + 10);
      if (v5)
      {
        objc_msgSend_continuousListeningResultHelper(v5);
        v5 = v6;
      }

      else
      {
        v7 = 0;
      }

      EARContinuousListeningResultHelper::reportHighResolutionRecognitionProgress(v5, v4);
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }
    }
  }
}

void ResultStreamWrapper::reportPause(ResultStreamWrapper *this, const char *a2)
{
  v3 = *(this + 10);
  if (v3)
  {
    objc_msgSend_continuousListeningResultHelper(v3, a2);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    if (v5)
    {
      v4 = *(this + 10);
      if (v4)
      {
        objc_msgSend_continuousListeningResultHelper(v4);
        v4 = v5;
      }

      else
      {
        v6 = 0;
      }

      EARContinuousListeningResultHelper::reportPause(v4);
      if (v6)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      }
    }
  }
}

void ResultStreamWrapper::reportResume(ResultStreamWrapper *this, const char *a2)
{
  v3 = *(this + 10);
  if (v3)
  {
    objc_msgSend_continuousListeningResultHelper(v3, a2);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    if (v5)
    {
      v4 = *(this + 10);
      if (v4)
      {
        objc_msgSend_continuousListeningResultHelper(v4);
        v4 = v5;
      }

      else
      {
        v6 = 0;
      }

      EARContinuousListeningResultHelper::reportResume(v4);
      if (v6)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      }
    }
  }
}

void ResultStreamWrapper::writeEndPointData(uint64_t a1, int a2, int a3, double a4, double a5, double a6, uint64_t a7, unsigned int **a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v21 = *(a1 + 24);
    if (v21)
    {
      if (objc_opt_respondsToSelector())
      {
        v22 = EARHelpers::VectorToArray<unsigned int>(a8);
        [v21 speechRecognizer:WeakRetained didProduceEndpointFeaturesWithWordCount:a2 trailingSilenceDuration:a13 * a3 eosLikelihood:v22 pauseCounts:a12 silencePosterior:a4 processedAudioDurationInMilliseconds:a6 acousticEndpointerScore:a5];
      }

      else
      {
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          goto LABEL_13;
        }

        v22 = EARHelpers::VectorToArray<unsigned int>(a8);
        [v21 speechRecognizer:WeakRetained didProduceEndpointFeaturesWithWordCount:a2 trailingSilenceDuration:a13 * a3 eosLikelihood:v22 pauseCounts:a12 silencePosterior:a4 processedAudioDurationInMilliseconds:a6];
      }

LABEL_13:
      if (objc_opt_respondsToSelector())
      {
        [v21 speechRecognizer:WeakRetained didProcessAudioDuration:a12 * 0.001];
      }

      goto LABEL_15;
    }

    v23 = EARLogger::QuasarOSLogger(0);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *v24 = 0;
      _os_log_impl(&dword_1B501D000, v23, OS_LOG_TYPE_INFO, "Result stream has been deallocated; not writing end point data", v24, 2u);
    }
  }

  else
  {
    v21 = EARLogger::QuasarOSLogger(0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B501D000, v21, OS_LOG_TYPE_INFO, "Recognizer has been deallocated; not writing end point data", buf, 2u);
    }
  }

LABEL_15:
}

void ResultStreamWrapper::writeTrainingData(id *a1, int64x2_t *a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained[4];
    v8 = WeakRetained[5];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v9)
    {
      v10 = a1[4];
      if (v10)
      {
        v18 = a1[9];
        *buf = 0;
        v34 = buf;
        v35 = 0x4812000000;
        v36 = __Block_byref_object_copy__1425;
        v37 = __Block_byref_object_dispose__1426;
        v38 = &unk_1B5CADD23;
        memset(v39, 0, 24);
        v26 = 0;
        v27 = &v26;
        v28 = 0x4812000000;
        v29 = __Block_byref_object_copy__1425;
        v30 = __Block_byref_object_dispose__1426;
        v31 = &unk_1B5CADD23;
        memset(v32, 0, sizeof(v32));
        while (a2[2].i64[1])
        {
          v11 = a2[2].i64[0];
          v12 = (v11 * 0xA41A41A41A41A41BLL) >> 64;
          v13 = *(a2->i64[1] + 8 * ((v12 + ((v11 - v12) >> 1)) >> 5)) + 104 * (v11 - 39 * ((v12 + ((v11 - v12) >> 1)) >> 5));
          if (*(v13 + 96) != 1 || (v14 = a3 < 1, --a3, !v14))
          {
            std::vector<kaldi::CuMatrix<float>>::push_back[abi:ne200100]((v34 + 48), *(a2->i64[1] + 8 * ((v12 + ((v11 - v12) >> 1)) >> 5)) + 104 * (v11 - 39 * ((v12 + ((v11 - v12) >> 1)) >> 5)));
            std::vector<kaldi::CuMatrix<float>>::push_back[abi:ne200100]((v27 + 6), v13 + 48);
          }

          std::deque<quasar::SpeakerCodeTraining::AlignedData>::pop_front(a2);
        }

        quasar::SpeakerCodeTraining::start(v9);
        v16 = v7[3];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3321888768;
        block[2] = ___ZN19ResultStreamWrapper17writeTrainingDataERNSt3__15dequeIN6quasar19SpeakerCodeTraining11AlignedDataENS0_9allocatorIS4_EEEEl_block_invoke;
        block[3] = &unk_1F2D048C0;
        v24 = v9;
        v25 = v8;
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v22 = buf;
        v23 = &v26;
        v20 = v10;
        v17 = v18;
        v21 = v17;
        dispatch_async(v16, block);

        if (v25)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v25);
        }

        _Block_object_dispose(&v26, 8);
        v40 = v32;
        std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v40);
        _Block_object_dispose(buf, 8);
        v26 = v39;
        std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v26);
      }

      else
      {
        v17 = EARLogger::QuasarOSLogger(0);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1B501D000, v17, OS_LOG_TYPE_INFO, "Speaker code writer has been deallocated; not training speaker code.", buf, 2u);
        }
      }
    }

    else
    {
      v10 = EARLogger::QuasarOSLogger(WeakRetained);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B501D000, v10, OS_LOG_TYPE_INFO, "Training instance has been deallocated; not training speaker code.", buf, 2u);
      }
    }

    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  else
  {
    v15 = EARLogger::QuasarOSLogger(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B501D000, v15, OS_LOG_TYPE_INFO, "Recognizer has been deallocated; not training speaker code.", buf, 2u);
    }
  }
}

void sub_1B51E6360(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  _Unwind_Resume(a1);
}

void ___ZL18LowercasedDictKeysP12NSDictionaryIP8NSStringP11objc_objectE_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  v5 = *(a1 + 32);
  v6 = [a2 lowercaseString];
  [v5 setObject:v7 forKey:v6];
}

void _ZNSt3__120__shared_ptr_emplaceIN6quasar18DoublePartialLogicENS_9allocatorIS2_EEEC2B8ne200100IJES4_Li0EEES4_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D04480;
  quasar::DoublePartialLogic::DoublePartialLogic((a1 + 3));
}

void std::__shared_ptr_emplace<quasar::DoublePartialLogic>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D04480;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<quasar::DoublePartialLogic>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__shared_ptr_emplace<EARFormatterResultStream>::__shared_ptr_emplace[abi:ne200100]<_EARSpeechRecognizer * {__strong}&,objc_object  {objcproto33_EARSpeechRecognitionResultStream}* {__strong}&,NSString * {__strong}&,NSString * {__strong},_EARResultContext * {__strong}&,std::allocator<EARFormatterResultStream>,0>(void *a1, void **a2, void **a3, void **a4, void **a5, void **a6)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D044D0;
  EARFormatterResultStream::EARFormatterResultStream((a1 + 3), *a2, *a3, *a4, *a5, *a6);
}

void std::__shared_ptr_emplace<EARFormatterResultStream>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D044D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void EARFormatterResultStream::EARFormatterResultStream(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  quasar::RecogResultStreamBase::RecogResultStreamBase(a1);
  *a1 = &unk_1F2D04520;
  objc_initWeak((a1 + 24), v11);
  *(a1 + 32) = v12;
  *(a1 + 40) = [v13 copy];
  *(a1 + 48) = [v14 copy];
  *(a1 + 56) = v15;
  _ZNSt3__115allocate_sharedB8ne200100IN6quasar18DoublePartialLogicENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

void sub_1B51E6858(_Unwind_Exception *a1)
{
  objc_destroyWeak(v2 + 3);
  quasar::RecogResultStreamBase::~RecogResultStreamBase(v2);

  _Unwind_Resume(a1);
}

void EARFormatterResultStream::~EARFormatterResultStream(EARFormatterResultStream *this)
{
  *this = &unk_1F2D04520;
  v2 = *(this + 9);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  objc_destroyWeak(this + 3);

  quasar::RecogResultStreamBase::~RecogResultStreamBase(this);
}

{
  *this = &unk_1F2D04520;
  v2 = *(this + 9);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  objc_destroyWeak(this + 3);
  quasar::RecogResultStreamBase::~RecogResultStreamBase(this);

  JUMPOUT(0x1B8C85350);
}

void EARFormatterResultStream::writePartial(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, unsigned int a5, int a6, uint64_t *a7, uint64_t a8, uint64_t a9, BOOL a10, BOOL a11, uint64_t a12)
{
  WeakRetained = objc_loadWeakRetained((a1 + 24));
  v18 = *(a1 + 32);
  v19 = v18;
  if (WeakRetained && v18)
  {
    dispatch_assert_queue_V2(WeakRetained[1]);
    v20 = WeakRetained[2];
    if (v20)
    {
      v21 = *(a1 + 48);
      if (v21)
      {
        objc_msgSend_ear_toString(v21);
      }

      else
      {
        v46 = 0;
        v47 = 0;
        v48 = 0;
      }

      v22 = *(a1 + 40);
      if (v22)
      {
        objc_msgSend_ear_toString(v22);
      }

      else
      {
        v43 = 0;
        v44 = 0;
        v45 = 0;
      }

      LODWORD(v20) = [v20 isEnableAutoPunctuation:&v46 task:&v43 itnEnablingFlags:[(dispatch_queue_t *)WeakRetained itnEnablingFlags]];
      if (SHIBYTE(v45) < 0)
      {
        operator delete(v43);
      }

      if (SHIBYTE(v48) < 0)
      {
        operator delete(v46);
      }
    }

    v42 = 0;
    quasar::DoublePartialLogic::handlePartial(*(a1 + 64), v20, a10, a11, &v42);
    if (!v42)
    {
      v23 = *(a1 + 56);
      if (v23)
      {
        objc_msgSend_continuousListeningResultHelper(v23);
        if (v40)
        {
          quasar::ContinuousListeningResultHelper::getContinuousListeningConfig(&v38, v40);
          if (v40)
          {
            v24 = v40[32];
            v31 = v40[31];
            if (v24)
            {
              atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
            }
          }

          else
          {
            v31 = 0;
            v24 = 0;
          }

          goto LABEL_22;
        }
      }

      else
      {
        v40 = 0;
        v41 = 0;
      }

      v31 = 0;
      v24 = 0;
      v38 = 0;
      v39 = 0;
LABEL_22:
      memset(v37, 0, sizeof(v37));
      std::vector<std::vector<quasar::Token>>::__init_with_size[abi:ne200100]<std::vector<quasar::Token>*,std::vector<quasar::Token>*>(v37, *a7, a7[1], 0xAAAAAAAAAAAAAAABLL * ((a7[1] - *a7) >> 3));
      v25 = *(a1 + 48);
      v29 = *(a1 + 40);
      v30 = a3;
      v46 = 0;
      v47 = 0;
      v48 = 0;
      v26 = v39;
      v36[0] = v38;
      v36[1] = v39;
      if (v39)
      {
        atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v43 = 0;
      v44 = 0;
      v45 = 0;
      memset(v35, 0, sizeof(v35));
      v27 = *(a1 + 56);
      ShouldHideTrailingPunctuation = quasar::DoublePartialLogic::getShouldHideTrailingPunctuation(*(a1 + 64));
      quasar::DoublePartialLogic::getIsLastPartialTrailingPunctuationHidden(&v33, *(a1 + 64));
      v32[0] = v31;
      v32[1] = v24;
      if (v24)
      {
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      writePartialToResultStream(v37, WeakRetained, v19, v29, v25, &v46, 0, v30, a5, v36, a6, v27, &v43, 0, v35, ShouldHideTrailingPunctuation, &v33, v32, a12);
      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      }

      if (v34)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v34);
      }

      v49 = v35;
      std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v49);
      v35[0] = &v43;
      std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v35);
      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }

      v43 = &v46;
      std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v43);
      v46 = v37;
      std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v46);
      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      }

      if (v39)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v39);
      }

      if (v41)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v41);
      }
    }
  }
}

void sub_1B51E6CE0(_Unwind_Exception *a1)
{
  v5 = *(v3 - 160);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  _Unwind_Resume(a1);
}

void EARFormatterResultStream::writeFinalChoices(uint64_t a1, uint64_t a2, int a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 24));
  v7 = *(a1 + 32);
  v8 = v7;
  if (!WeakRetained || !v7)
  {
    goto LABEL_51;
  }

  v51 = v7;
  dispatch_assert_queue_V2(WeakRetained[1]);
  ContinuousListeningConfig = *(a1 + 56);
  if (!ContinuousListeningConfig)
  {
    v80 = 0;
    v81 = 0;
    goto LABEL_9;
  }

  objc_msgSend_continuousListeningResultHelper(ContinuousListeningConfig);
  ContinuousListeningConfig = v80;
  if (!v80)
  {
LABEL_9:
    v11 = 0;
    v52 = 0;
    v78 = 0;
    v79 = 0;
    goto LABEL_12;
  }

  ContinuousListeningConfig = quasar::ContinuousListeningResultHelper::getContinuousListeningConfig(&v78, v80);
  if (v80)
  {
    v11 = v80[31];
    v10 = v80[32];
    if (v10)
    {
      v52 = v80[32];
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
      goto LABEL_12;
    }
  }

  else
  {
    v11 = 0;
  }

  v52 = 0;
LABEL_12:
  v77[0] = 0;
  v77[1] = 0;
  v76 = v77;
  v12 = *(a2 + 360);
  if (v12)
  {
    if (&v76 != (v12 + 344))
    {
      std::__tree<std::string>::__assign_multi<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>>(&v76, *(v12 + 344), (v12 + 352));
    }
  }

  else
  {
    v13 = EARLogger::QuasarOSLogger(ContinuousListeningConfig);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      EARFormatterResultStream::writeFinalChoices();
    }
  }

  String = quasar::PTree::getString(a2);
  v73 = 0;
  v74 = 0;
  v75 = 0;
  std::vector<std::vector<quasar::Token>>::__init_with_size[abi:ne200100]<std::vector<quasar::Token>*,std::vector<quasar::Token>*>(&v73, *String, String[1], 0xAAAAAAAAAAAAAAABLL * ((String[1] - *String) >> 3));
  BitmapRegion = quasar::GeoRegion::getBitmapRegion(a2);
  v70 = 0;
  v71 = 0;
  v72 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v70, *BitmapRegion, *(BitmapRegion + 8), (*(BitmapRegion + 8) - *BitmapRegion) >> 3);
  DestToks = quasar::Align::getDestToks(a2);
  memset(v69, 0, sizeof(v69));
  std::vector<std::set<std::string>>::__init_with_size[abi:ne200100]<std::set<std::string>*,std::set<std::string>*>(v69, *DestToks, DestToks[1], 0xAAAAAAAAAAAAAAABLL * ((DestToks[1] - *DestToks) >> 3));
  if ([(dispatch_queue_t *)WeakRetained continuousListeningFormatAcrossUtterances]&& v73 == v74)
  {
    v66 = 0;
    v67 = 0;
    v68 = 0;
    std::vector<std::vector<quasar::Token>>::assign(&v73, 1uLL, &v66);
    v63 = &v66;
    std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v63);
    v66 = 0;
    std::vector<double>::assign(&v70, 1uLL, &v66);
    v67 = 0;
    v68 = 0;
    v66 = &v67;
    std::vector<std::set<std::string>>::assign(v69, 1uLL, &v66);
    std::__tree<std::string>::destroy(&v66, v67);
  }

  v66 = 0;
  v67 = 0;
  v68 = 0;
  if ((*(a2 + 568) & 1) != 0 || *(a2 + 569) == 1)
  {
    MultiChainMultiAudioBuffer = quasar::SpeechRequestData::getMultiChainMultiAudioBuffer(a2);
    v18 = *(a2 + 408);
    v19 = *(a2 + 388);
    v20 = *(a2 + 392);
    v22 = *(a1 + 40);
    v21 = *(a1 + 48);
    v63 = 0;
    v64 = 0;
    v65 = 0;
    v23 = v79;
    v62[0] = v78;
    v62[1] = v79;
    if (v79)
    {
      atomic_fetch_add_explicit(&v79->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v59 = 0;
    v60 = 0;
    v61 = 0;
    Config = kaldi::quasar::CEInferenceNet::GetConfig(a2);
    v56 = 0;
    v57 = 0;
    v58 = 0;
    v25 = *(a2 + 560);
    v26 = *(a2 + 568);
    v27 = *(a2 + 572);
    v55[0] = v11;
    v28 = v52;
    v55[1] = v52;
    if (v52)
    {
      atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v45 = v21;
    v8 = v51;
    writeFinalCandidateChoicesToResultStream(&v73, WeakRetained, v51, MultiChainMultiAudioBuffer, (a2 + 440), v22, v19, v18, v25, v20, v45, v62, &v59, &v66, Config, &v76, v69, 0, v26, v27, v55, *(a1 + 56), a2 + 584);
    if (v52)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v52);
    }

    v82[0] = &v56;
    std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v82);
    v56 = &v59;
    std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v56);
    if (!v23)
    {
      goto LABEL_43;
    }

    v29 = v23;
  }

  else
  {
    v30 = [(dispatch_queue_t *)WeakRetained continuousListeningFormatAcrossUtterances];
    v31 = 0;
    v32 = v30 | *(a2 + 396);
    if (v30 && (*(a2 + 396) & 1) == 0)
    {
      v32 = 0;
      v31 = *(a2 + 556) ^ 1;
    }

    v50 = v32;
    v33 = quasar::SpeechRequestData::getMultiChainMultiAudioBuffer(a2);
    v34 = v11;
    v35 = *(a2 + 408);
    v47 = *(a2 + 388);
    v36 = *(a2 + 392);
    v37 = *(a1 + 48);
    v48 = *(a1 + 40);
    v49 = v33;
    v38 = *(a1 + 56);
    v63 = 0;
    v64 = 0;
    v65 = 0;
    v39 = v79;
    v54[0] = v78;
    v54[1] = v79;
    if (v79)
    {
      atomic_fetch_add_explicit(&v79->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v59 = 0;
    v60 = 0;
    v61 = 0;
    v40 = kaldi::quasar::CEInferenceNet::GetConfig(a2);
    v41 = *(a2 + 556);
    v56 = 0;
    v57 = 0;
    v58 = 0;
    v42 = *(a2 + 557);
    v43 = *(a2 + 560);
    v44 = *(a2 + 572);
    v53[0] = v34;
    v53[1] = v52;
    if (v52)
    {
      atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    HIBYTE(v46) = v41;
    LOBYTE(v46) = 0;
    writeFinalChoicesToResultStream(&v73, &v70, v50 & 1, WeakRetained, v8, v49, (a2 + 440), v48, v35, v43, v47, v36, v37, v38, a3, v31 & 1, v54, &v59, &v66, v40, &v76, v69, v46, v42, v44, v53, a2 + 584);
    v28 = v52;
    if (v52)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v52);
    }

    v82[0] = &v56;
    std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v82);
    v56 = &v59;
    std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v56);
    if (!v39)
    {
      goto LABEL_43;
    }

    v29 = v39;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v29);
LABEL_43:
  v59 = &v63;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v59);
  v63 = &v66;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v63);
  v66 = v69;
  std::vector<std::set<std::string>>::__destroy_vector::operator()[abi:ne200100](&v66);
  if (v70)
  {
    v71 = v70;
    operator delete(v70);
  }

  v70 = &v73;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v70);
  std::__tree<std::string>::destroy(&v76, v77[0]);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  if (v79)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v79);
  }

  if (v81)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v81);
  }

LABEL_51:
}

void sub_1B51E7360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, std::__shared_weak_count *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void **a46, char *a47)
{
  std::__tree<std::string>::destroy(&a46, a47);
  a46 = (v48 - 240);
  std::vector<std::set<std::string>>::__destroy_vector::operator()[abi:ne200100](&a46);
  v50 = *(v48 - 216);
  if (v50)
  {
    *(v48 - 208) = v50;
    operator delete(v50);
  }

  *(v48 - 216) = v48 - 192;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100]((v48 - 216));
  std::__tree<std::string>::destroy(v48 - 168, *(v48 - 160));
  if (a28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a28);
  }

  v51 = *(v48 - 136);
  if (v51)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v51);
  }

  v52 = *(v48 - 120);
  if (v52)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v52);
  }

  _Unwind_Resume(a1);
}

void std::vector<std::vector<quasar::Token>>::assign(uint64_t a1, unint64_t a2, quasar::Token **a3)
{
  v6 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) < a2)
  {
    std::vector<std::vector<quasar::Token>>::__vdeallocate(a1);
    if (a2 <= 0xAAAAAAAAAAAAAAALL)
    {
      v7 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
      if (v7 <= a2)
      {
        v7 = a2;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
      {
        v8 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v8 = v7;
      }

      std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>::__vallocate[abi:ne200100](a1, v8);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v9 = (*(a1 + 8) - v6) >> 3;
  v10 = 0xAAAAAAAAAAAAAAABLL * v9;
  if (0xAAAAAAAAAAAAAAABLL * v9 >= a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = 0xAAAAAAAAAAAAAAABLL * v9;
  }

  for (; v11; --v11)
  {
    if (v6 != a3)
    {
      std::vector<quasar::Token>::__assign_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(v6, *a3, a3[1], 0x6DB6DB6DB6DB6DB7 * ((a3[1] - *a3) >> 5));
    }

    v6 += 3;
  }

  if (a2 <= v10)
  {
    v15 = *(a1 + 8);
    v16 = *a1 + 24 * a2;
    while (v15 != v16)
    {
      v15 -= 3;
      v17 = v15;
      std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v17);
    }

    *(a1 + 8) = v16;
  }

  else
  {
    v12 = *(a1 + 8);
    v13 = &v12[3 * (a2 - v10)];
    v14 = 24 * a2 - 24 * v10;
    do
    {
      *v12 = 0;
      v12[1] = 0;
      v12[2] = 0;
      std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(v12, *a3, a3[1], 0x6DB6DB6DB6DB6DB7 * ((a3[1] - *a3) >> 5));
      v12 += 3;
      v14 -= 24;
    }

    while (v14);
    *(a1 + 8) = v13;
  }
}

void *std::vector<double>::assign(uint64_t *a1, unint64_t a2, uint64_t *a3)
{
  v5 = a1[2];
  result = *a1;
  if (a2 > (v5 - result) >> 3)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v5 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a2 >> 61))
    {
      v7 = v5 >> 2;
      if (v5 >> 2 <= a2)
      {
        v7 = a2;
      }

      if (v5 >= 0x7FFFFFFFFFFFFFF8)
      {
        v8 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v8 = v7;
      }

      std::vector<long long>::__vallocate[abi:ne200100](a1, v8);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v9 = a1[1];
  v10 = (v9 - result) >> 3;
  if (v10 >= a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = (v9 - result) >> 3;
  }

  if (v11)
  {
    v12 = 0;
    v13 = *a3;
    v14 = (v11 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v15 = vdupq_n_s64(v11 - 1);
    v16 = result + 1;
    do
    {
      v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v12), xmmword_1B5AE0060)));
      if (v17.i8[0])
      {
        *(v16 - 1) = v13;
      }

      if (v17.i8[4])
      {
        *v16 = v13;
      }

      v12 += 2;
      v16 += 2;
    }

    while (v14 != v12);
  }

  v18 = a2 >= v10;
  v19 = a2 - v10;
  if (v19 != 0 && v18)
  {
    v20 = 0;
    v21 = v9 + 8 * v19;
    v22 = *a3;
    v23 = (8 * a2 - (v9 - result) - 8) >> 3;
    v24 = vdupq_n_s64(v23);
    v25 = (v9 + 8);
    do
    {
      v26 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(vdupq_n_s64(v20), xmmword_1B5AE0060)));
      if (v26.i8[0])
      {
        *(v25 - 1) = v22;
      }

      if (v26.i8[4])
      {
        *v25 = v22;
      }

      v20 += 2;
      v25 += 2;
    }

    while (((v23 + 2) & 0x3FFFFFFFFFFFFFFELL) != v20);
    a1[1] = v21;
  }

  else
  {
    a1[1] = &result[a2];
  }

  return result;
}

void std::vector<std::set<std::string>>::assign(char ***a1, unint64_t a2, const void ***a3)
{
  v6 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) < a2)
  {
    std::vector<std::set<std::string>>::__vdeallocate(a1);
    if (a2 <= 0xAAAAAAAAAAAAAAALL)
    {
      v7 = 0x5555555555555556 * (a1[2] - *a1);
      if (v7 <= a2)
      {
        v7 = a2;
      }

      if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x555555555555555)
      {
        v8 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v8 = v7;
      }

      std::vector<quasar::AlternativeSelectionSpan::Alternative>::__vallocate[abi:ne200100](a1, v8);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v9 = a1[1] - v6;
  v10 = 0xAAAAAAAAAAAAAAABLL * v9;
  if (0xAAAAAAAAAAAAAAABLL * v9 >= a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = 0xAAAAAAAAAAAAAAABLL * v9;
  }

  for (; v11; --v11)
  {
    if (v6 != a3)
    {
      std::__tree<std::string>::__assign_multi<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>>(v6, *a3, a3 + 1);
    }

    v6 += 3;
  }

  if (a2 <= v10)
  {
    v15 = a1[1];
    v16 = &(*a1)[3 * a2];
    if (v15 != v16)
    {
      do
      {
        v17 = v15 - 24;
        std::__tree<std::string>::destroy(v15 - 24, *(v15 - 16));
        v15 = v17;
      }

      while (v17 != v16);
    }

    a1[1] = v16;
  }

  else
  {
    v12 = a1[1];
    v13 = &v12[3 * (a2 - v10)];
    v14 = 24 * a2 - 24 * v10;
    do
    {
      std::set<std::string>::set[abi:ne200100](v12, a3);
      v12 += 3;
      v14 -= 24;
    }

    while (v14);
    a1[1] = v13;
  }
}

uint64_t *std::vector<std::set<std::string>>::__init_with_size[abi:ne200100]<std::set<std::string>*,std::set<std::string>*>(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<quasar::AlternativeSelectionSpan::Alternative>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B51E7B1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::set<std::string>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t **std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::set<std::string>>,std::set<std::string>*,std::set<std::string>*,std::set<std::string>*>(uint64_t a1, const void ***a2, const void ***a3, uint64_t **a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      std::set<std::string>::set[abi:ne200100](v4, v6);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::set<std::string>>,std::set<std::string>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::set<std::string>>,std::set<std::string>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::set<std::string>>,std::set<std::string>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::set<std::string>>,std::set<std::string>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    do
    {
      v3 = v1 - 24;
      std::__tree<std::string>::destroy(v1 - 24, *(v1 - 16));
      v1 = v3;
    }

    while (v3 != v2);
  }
}

void std::vector<std::set<std::string>>::__vdeallocate(char ***a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v5 = v3 - 3;
        std::__tree<std::string>::destroy((v3 - 3), *(v3 - 2));
        v3 = v5;
      }

      while (v5 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::__shared_ptr_emplace<EARContinuousListeningResultHelper>::__shared_ptr_emplace[abi:ne200100]<_EARSpeechRecognizer * {__strong}&,objc_object  {objcproto33_EARSpeechRecognitionResultStream}* {__strong}&,_EARResultContext * {__strong}&,NSString * {__strong}&,NSString * {__strong},NSString *,std::allocator<EARContinuousListeningResultHelper>,0>(void *a1, void **a2, void **a3, void **a4, void **a5, void **a6, void **a7)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D045D8;
  EARContinuousListeningResultHelper::EARContinuousListeningResultHelper((a1 + 3), *a2, *a3, *a4, *a5, *a6, *a7);
}

void std::__shared_ptr_emplace<EARContinuousListeningResultHelper>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D045D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void EARContinuousListeningResultHelper::EARContinuousListeningResultHelper(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = [v13 allowUtteranceDelay];
  if (v18)
  {
    objc_msgSend_ear_toString(v18);
  }

  else
  {
    __p[0] = 0;
    __p[1] = 0;
    v21 = 0;
  }

  quasar::ContinuousListeningResultHelper::ContinuousListeningResultHelper(a1, v19, __p);
}

void sub_1B51E82A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  v32 = *(v30 - 96);
  *(v30 - 96) = 0;
  if (v32)
  {
    (*(*v32 + 8))(v32, a2, a3, a4, a5, a6, a7, a8);
  }

  v33 = *(v26 + 272);
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  v34 = *(v26 + 256);
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  objc_destroyWeak(v29);
  objc_destroyWeak((v26 + 216));
  objc_destroyWeak((v26 + 208));
  quasar::ContinuousListeningResultHelper::~ContinuousListeningResultHelper(v26);

  _Unwind_Resume(a1);
}

void sub_1B51E84B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, uint64_t a6, std::__shared_weak_count *a7, ...)
{
  va_start(va, a7);
  if (a7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a7);
  }

  std::make_unique[abi:ne200100]<quasar::result_handler::VoiceEditingRecoveryHandler,std::unique_ptr<quasar::result_handler::ResultHandler>,std::shared_ptr<EARVoiceEditingClient> &,0>(va);
  MEMORY[0x1B8C85350](v8, v7);
  _Unwind_Resume(a1);
}

void sub_1B51E85CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, uint64_t a6, std::__shared_weak_count *a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  if (a7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a7);
  }

  std::make_unique[abi:ne200100]<quasar::result_handler::VoiceEditingResultHandler,quasar::result_handler::VoiceEditingResultHandlerConfig &,std::unique_ptr<quasar::result_handler::ResultHandler>,decltype(nullptr),std::shared_ptr<EARVoiceEditingClient> &,0>(va, va1);
  MEMORY[0x1B8C85350](v8, v7);
  _Unwind_Resume(a1);
}

void *std::shared_ptr<quasar::result_handler::ResultHandler>::operator=[abi:ne200100]<quasar::result_handler::ResultHandler,std::default_delete<quasar::result_handler::ResultHandler>,0>(void *a1, uint64_t *a2)
{
  std::shared_ptr<quasar::result_handler::ResultHandler>::shared_ptr[abi:ne200100]<quasar::result_handler::ResultHandler,std::default_delete<quasar::result_handler::ResultHandler>,0>(&v6, a2);
  v3 = a1[1];
  v4 = v6;
  *&v6 = *a1;
  *(&v6 + 1) = v3;
  *a1 = v4;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

uint64_t EAROutputResultHandler::EAROutputResultHandler(uint64_t a1, void *a2, void *a3)
{
  *(a1 + 8) = 0;
  *a1 = &unk_1F2D04628;
  v5 = a3;
  objc_initWeak((a1 + 16), a2);
  objc_initWeak((a1 + 24), v5);

  if (quasar::gLogLevel >= 5)
  {
    memset(v7, 0, sizeof(v7));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Created EAROutputResultHandler", 30);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(v7);
  }

  return a1;
}

void sub_1B51E872C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::locale a9)
{
  quasar::QuasarDebugMessage::~QuasarDebugMessage(&a9);
  objc_destroyWeak(v9 + 3);
  objc_destroyWeak(v9 + 2);
  quasar::Bitmap::~Bitmap(v9);
  _Unwind_Resume(a1);
}

void EAROutputResultHandler::~EAROutputResultHandler(id *this)
{
  objc_destroyWeak(this + 3);
  objc_destroyWeak(this + 2);

  quasar::Bitmap::~Bitmap(this);
}

{
  objc_destroyWeak(this + 3);
  objc_destroyWeak(this + 2);
  quasar::Bitmap::~Bitmap(this);

  JUMPOUT(0x1B8C85350);
}

void EAROutputResultHandler::handlePartial(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 16));
  v6 = objc_loadWeakRetained((a1 + 24));
  v7 = v6;
  if (WeakRetained)
  {
    if (v6)
    {
      dispatch_assert_queue_V2(WeakRetained[1]);
      if (objc_opt_respondsToSelector())
      {
        v8 = RHPackageToEARResult(*a3);
        if (quasar::gLogLevel >= 5)
        {
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          v30 = 0u;
          v31 = 0u;
          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          v24 = 0u;
          v25 = 0u;
          v23 = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v23);
          v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v23, "EAROutputResultHandler: partial: ", 33);
          v10 = [v8 tokens];
          v11 = transcriptFromTokens(v10);
          v12 = v11;
          if (v11)
          {
            objc_msgSend_ear_toString(v11);
            v13 = HIBYTE(v22);
            v15 = __p;
            v14 = v21;
          }

          else
          {
            v14 = 0;
            v15 = 0;
            v13 = 0;
            __p = 0;
            v21 = 0;
            v22 = 0;
          }

          if ((v13 & 0x80u) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = v15;
          }

          if ((v13 & 0x80u) == 0)
          {
            v17 = v13;
          }

          else
          {
            v17 = v14;
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, p_p, v17);
          if (SHIBYTE(v22) < 0)
          {
            operator delete(__p);
          }

          quasar::QuasarDebugMessage::~QuasarDebugMessage(&v23);
        }

        [v7 speechRecognizer:WeakRetained didRecognizePartialResult:v8];
        v18 = (*a3)[6];
        v19 = (*a3)[7];
        *&v24 = 0;
        v23 = 0uLL;
        if (v18 != v19)
        {
          std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(&v23, *v18, *(v18 + 8), 0x6DB6DB6DB6DB6DB7 * ((*(v18 + 8) - *v18) >> 5));
        }

        __p = &v23;
        std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&__p);
      }
    }
  }
}