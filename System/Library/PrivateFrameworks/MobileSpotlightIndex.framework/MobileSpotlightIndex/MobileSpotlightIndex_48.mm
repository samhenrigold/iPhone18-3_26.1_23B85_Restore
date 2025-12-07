__n128 std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,SIWordTrieFragmentGetBundleIDs::$_0 &,std::pair<unsigned int,ci_rankingbits_wrapped_s> *,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 result)
{
  if (a2[5].n128_u8[5] == 1)
  {
    result.n128_u32[0] = a2[4].n128_u32[3];
    v4 = a1[4].n128_f32[3];
    if (result.n128_f32[0] < v4)
    {
      goto LABEL_14;
    }

    if (result.n128_f32[0] != v4)
    {
      goto LABEL_28;
    }

LABEL_11:
    result.n128_u32[0] = a2[4].n128_u32[1];
    v8 = a1[4].n128_f32[1];
    if (result.n128_f32[0] < v8 || result.n128_f32[0] == v8 && a2[4].n128_u32[0] > a1[4].n128_u32[0])
    {
LABEL_14:
      if (a3[5].n128_u8[5] == 1)
      {
        v9 = a3[4].n128_f32[3];
        v10 = a2[4].n128_f32[3];
        if (v9 >= v10)
        {
          if (v9 != v10)
          {
            goto LABEL_32;
          }

LABEL_24:
          v14 = a3[4].n128_f32[1];
          v15 = a2[4].n128_f32[1];
          if (v14 < v15 || v14 == v15 && a3[4].n128_u32[0] > a2[4].n128_u32[0])
          {
            goto LABEL_27;
          }

LABEL_32:
          v21 = a1->n128_u32[0];
          a1->n128_u32[0] = a2->n128_u32[0];
          a2->n128_u32[0] = v21;
          v60 = a1[3];
          v64 = a1[4];
          v68 = a1[5];
          v52 = a1[1];
          v56 = a1[2];
          a1[1] = a2[1];
          v22 = a2[5];
          v24 = a2[2];
          v23 = a2[3];
          a1[4] = a2[4];
          a1[5] = v22;
          a1[2] = v24;
          a1[3] = v23;
          a2[4] = v64;
          a2[5] = v68;
          a2[2] = v56;
          a2[3] = v60;
          result = v52;
          a2[1] = v52;
          if (a3[5].n128_u8[5] == 1)
          {
            result.n128_u32[0] = a3[4].n128_u32[3];
            v25 = a2[4].n128_f32[3];
            if (result.n128_f32[0] >= v25)
            {
              if (result.n128_f32[0] != v25)
              {
                return result;
              }

LABEL_55:
              result.n128_u32[0] = a3[4].n128_u32[1];
              v38 = a2[4].n128_f32[1];
              if (result.n128_f32[0] >= v38 && (result.n128_f32[0] != v38 || a3[4].n128_u32[0] <= a2[4].n128_u32[0]))
              {
                return result;
              }
            }
          }

          else
          {
            v36 = a3[1].n128_u64[0];
            v35 = a3[1].n128_u64[1];
            if (__PAIR128__(v35, v36) >= *&a2[1])
            {
              if (v35 != a2[1].n128_u64[1] || v36 != a2[1].n128_u64[0])
              {
                return result;
              }

              goto LABEL_55;
            }
          }

          v39 = a2->n128_u32[0];
          a2->n128_u32[0] = a3->n128_u32[0];
          a3->n128_u32[0] = v39;
          v59 = a2[3];
          v63 = a2[4];
          v67 = a2[5];
          v51 = a2[1];
          v55 = a2[2];
          a2[1] = a3[1];
          v40 = a3[5];
          v42 = a3[2];
          v41 = a3[3];
          a2[4] = a3[4];
          a2[5] = v40;
          a2[2] = v42;
          a2[3] = v41;
          goto LABEL_59;
        }
      }

      else
      {
        v12 = a3[1].n128_u64[0];
        v11 = a3[1].n128_u64[1];
        if (__PAIR128__(v11, v12) >= *&a2[1])
        {
          if (v11 != a2[1].n128_u64[1] || v12 != a2[1].n128_u64[0])
          {
            goto LABEL_32;
          }

          goto LABEL_24;
        }
      }

LABEL_27:
      v16 = a1->n128_u32[0];
      a1->n128_u32[0] = a3->n128_u32[0];
      a3->n128_u32[0] = v16;
      v59 = a1[3];
      v63 = a1[4];
      v67 = a1[5];
      v51 = a1[1];
      v55 = a1[2];
      a1[1] = a3[1];
      v17 = a3[5];
      v19 = a3[2];
      v18 = a3[3];
      a1[4] = a3[4];
      a1[5] = v17;
      a1[2] = v19;
      a1[3] = v18;
LABEL_59:
      a3[4] = v63;
      a3[5] = v67;
      a3[2] = v55;
      a3[3] = v59;
      result = v51;
      a3[1] = v51;
      return result;
    }

    goto LABEL_28;
  }

  v6 = a2[1].n128_u64[0];
  v5 = a2[1].n128_u64[1];
  if (__PAIR128__(v5, v6) < *&a1[1])
  {
    goto LABEL_14;
  }

  if (v5 == a1[1].n128_u64[1] && v6 == a1[1].n128_u64[0])
  {
    goto LABEL_11;
  }

LABEL_28:
  if (a3[5].n128_u8[5] == 1)
  {
    result.n128_u32[0] = a3[4].n128_u32[3];
    v20 = a2[4].n128_f32[3];
    if (result.n128_f32[0] < v20)
    {
      goto LABEL_45;
    }

    if (result.n128_f32[0] != v20)
    {
      return result;
    }
  }

  else
  {
    v27 = a3[1].n128_u64[0];
    v26 = a3[1].n128_u64[1];
    if (__PAIR128__(v26, v27) < *&a2[1])
    {
      goto LABEL_45;
    }

    if (v26 != a2[1].n128_u64[1] || v27 != a2[1].n128_u64[0])
    {
      return result;
    }
  }

  result.n128_u32[0] = a3[4].n128_u32[1];
  v29 = a2[4].n128_f32[1];
  if (result.n128_f32[0] >= v29 && (result.n128_f32[0] != v29 || a3[4].n128_u32[0] <= a2[4].n128_u32[0]))
  {
    return result;
  }

LABEL_45:
  v30 = a2->n128_u32[0];
  a2->n128_u32[0] = a3->n128_u32[0];
  a3->n128_u32[0] = v30;
  v61 = a2[3];
  v65 = a2[4];
  v69 = a2[5];
  v53 = a2[1];
  v57 = a2[2];
  a2[1] = a3[1];
  v31 = a3[5];
  v33 = a3[2];
  v32 = a3[3];
  a2[4] = a3[4];
  a2[5] = v31;
  a2[2] = v33;
  a2[3] = v32;
  a3[4] = v65;
  a3[5] = v69;
  a3[2] = v57;
  a3[3] = v61;
  result = v53;
  a3[1] = v53;
  if (a2[5].n128_u8[5] != 1)
  {
    v44 = a2[1].n128_u64[0];
    v43 = a2[1].n128_u64[1];
    if (__PAIR128__(v43, v44) >= *&a1[1])
    {
      if (v43 != a1[1].n128_u64[1] || v44 != a1[1].n128_u64[0])
      {
        return result;
      }

      goto LABEL_66;
    }

LABEL_69:
    v47 = a1->n128_u32[0];
    a1->n128_u32[0] = a2->n128_u32[0];
    a2->n128_u32[0] = v47;
    v62 = a1[3];
    v66 = a1[4];
    v70 = a1[5];
    v54 = a1[1];
    v58 = a1[2];
    a1[1] = a2[1];
    v48 = a2[5];
    v50 = a2[2];
    v49 = a2[3];
    a1[4] = a2[4];
    a1[5] = v48;
    a1[2] = v50;
    a1[3] = v49;
    a2[4] = v66;
    a2[5] = v70;
    a2[2] = v58;
    a2[3] = v62;
    result = v54;
    a2[1] = v54;
    return result;
  }

  result.n128_u32[0] = a2[4].n128_u32[3];
  v34 = a1[4].n128_f32[3];
  if (result.n128_f32[0] < v34)
  {
    goto LABEL_69;
  }

  if (result.n128_f32[0] != v34)
  {
    return result;
  }

LABEL_66:
  result.n128_u32[0] = a2[4].n128_u32[1];
  v46 = a1[4].n128_f32[1];
  if (result.n128_f32[0] < v46 || result.n128_f32[0] == v46 && a2[4].n128_u32[0] > a1[4].n128_u32[0])
  {
    goto LABEL_69;
  }

  return result;
}

__n128 std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,SIWordTrieFragmentGetBundleIDs::$_0 &,std::pair<unsigned int,ci_rankingbits_wrapped_s> *,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 a5)
{
  result.n128_u64[0] = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,SIWordTrieFragmentGetBundleIDs::$_0 &,std::pair<unsigned int,ci_rankingbits_wrapped_s> *,0>(a1, a2, a3, a5).n128_u64[0];
  if (a4[5].n128_u8[5] == 1)
  {
    result.n128_u32[0] = a4[4].n128_u32[3];
    v10 = a3[4].n128_f32[3];
    if (result.n128_f32[0] < v10)
    {
      goto LABEL_14;
    }

    if (result.n128_f32[0] != v10)
    {
      return result;
    }
  }

  else
  {
    v12 = a4[1].n128_u64[0];
    v11 = a4[1].n128_u64[1];
    if (__PAIR128__(v11, v12) < *&a3[1])
    {
      goto LABEL_14;
    }

    if (v11 != a3[1].n128_u64[1] || v12 != a3[1].n128_u64[0])
    {
      return result;
    }
  }

  result.n128_u32[0] = a4[4].n128_u32[1];
  v14 = a3[4].n128_f32[1];
  if (result.n128_f32[0] >= v14 && (result.n128_f32[0] != v14 || a4[4].n128_u32[0] <= a3[4].n128_u32[0]))
  {
    return result;
  }

LABEL_14:
  v15 = a3->n128_u32[0];
  a3->n128_u32[0] = a4->n128_u32[0];
  a4->n128_u32[0] = v15;
  v43 = a3[3];
  v46 = a3[4];
  v49 = a3[5];
  v37 = a3[1];
  v40 = a3[2];
  a3[1] = a4[1];
  v16 = a4[5];
  v18 = a4[2];
  v17 = a4[3];
  a3[4] = a4[4];
  a3[5] = v16;
  a3[2] = v18;
  a3[3] = v17;
  a4[4] = v46;
  a4[5] = v49;
  a4[2] = v40;
  a4[3] = v43;
  result = v37;
  a4[1] = v37;
  if (a3[5].n128_u8[5] == 1)
  {
    result.n128_u32[0] = a3[4].n128_u32[3];
    v19 = a2[4].n128_f32[3];
    if (result.n128_f32[0] < v19)
    {
      goto LABEL_27;
    }

    if (result.n128_f32[0] != v19)
    {
      return result;
    }
  }

  else
  {
    v21 = a3[1].n128_u64[0];
    v20 = a3[1].n128_u64[1];
    if (__PAIR128__(v20, v21) < *&a2[1])
    {
      goto LABEL_27;
    }

    if (v20 != a2[1].n128_u64[1] || v21 != a2[1].n128_u64[0])
    {
      return result;
    }
  }

  result.n128_u32[0] = a3[4].n128_u32[1];
  v23 = a2[4].n128_f32[1];
  if (result.n128_f32[0] >= v23 && (result.n128_f32[0] != v23 || a3[4].n128_u32[0] <= a2[4].n128_u32[0]))
  {
    return result;
  }

LABEL_27:
  v24 = a2->n128_u32[0];
  a2->n128_u32[0] = a3->n128_u32[0];
  a3->n128_u32[0] = v24;
  v44 = a2[3];
  v47 = a2[4];
  v50 = a2[5];
  v38 = a2[1];
  v41 = a2[2];
  a2[1] = a3[1];
  v25 = a3[5];
  v27 = a3[2];
  v26 = a3[3];
  a2[4] = a3[4];
  a2[5] = v25;
  a2[2] = v27;
  a2[3] = v26;
  a3[4] = v47;
  a3[5] = v50;
  a3[2] = v41;
  a3[3] = v44;
  result = v38;
  a3[1] = v38;
  if (a2[5].n128_u8[5] != 1)
  {
    v30 = a2[1].n128_u64[0];
    v29 = a2[1].n128_u64[1];
    if (__PAIR128__(v29, v30) >= *&a1[1])
    {
      if (v29 != a1[1].n128_u64[1] || v30 != a1[1].n128_u64[0])
      {
        return result;
      }

      goto LABEL_37;
    }

LABEL_40:
    v33 = a1->n128_u32[0];
    a1->n128_u32[0] = a2->n128_u32[0];
    a2->n128_u32[0] = v33;
    v45 = a1[3];
    v48 = a1[4];
    v51 = a1[5];
    v39 = a1[1];
    v42 = a1[2];
    a1[1] = a2[1];
    v34 = a2[5];
    v36 = a2[2];
    v35 = a2[3];
    a1[4] = a2[4];
    a1[5] = v34;
    a1[2] = v36;
    a1[3] = v35;
    a2[4] = v48;
    a2[5] = v51;
    a2[2] = v42;
    a2[3] = v45;
    result = v39;
    a2[1] = v39;
    return result;
  }

  result.n128_u32[0] = a2[4].n128_u32[3];
  v28 = a1[4].n128_f32[3];
  if (result.n128_f32[0] < v28)
  {
    goto LABEL_40;
  }

  if (result.n128_f32[0] != v28)
  {
    return result;
  }

LABEL_37:
  result.n128_u32[0] = a2[4].n128_u32[1];
  v32 = a1[4].n128_f32[1];
  if (result.n128_f32[0] < v32 || result.n128_f32[0] == v32 && a2[4].n128_u32[0] > a1[4].n128_u32[0])
  {
    goto LABEL_40;
  }

  return result;
}

__n128 std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,SIWordTrieFragmentGetBundleIDs::$_0 &,std::pair<unsigned int,ci_rankingbits_wrapped_s> *,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, __n128 a6)
{
  result.n128_u64[0] = std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,SIWordTrieFragmentGetBundleIDs::$_0 &,std::pair<unsigned int,ci_rankingbits_wrapped_s> *,0>(a1, a2, a3, a4, a6).n128_u64[0];
  if (a5[5].n128_u8[5] == 1)
  {
    result.n128_u32[0] = a5[4].n128_u32[3];
    v12 = a4[4].n128_f32[3];
    if (result.n128_f32[0] < v12)
    {
      goto LABEL_14;
    }

    if (result.n128_f32[0] != v12)
    {
      return result;
    }
  }

  else
  {
    v14 = a5[1].n128_u64[0];
    v13 = a5[1].n128_u64[1];
    if (__PAIR128__(v13, v14) < *&a4[1])
    {
      goto LABEL_14;
    }

    if (v13 != a4[1].n128_u64[1] || v14 != a4[1].n128_u64[0])
    {
      return result;
    }
  }

  result.n128_u32[0] = a5[4].n128_u32[1];
  v16 = a4[4].n128_f32[1];
  if (result.n128_f32[0] >= v16 && (result.n128_f32[0] != v16 || a5[4].n128_u32[0] <= a4[4].n128_u32[0]))
  {
    return result;
  }

LABEL_14:
  v17 = a4->n128_u32[0];
  a4->n128_u32[0] = a5->n128_u32[0];
  a5->n128_u32[0] = v17;
  v56 = a4[3];
  v60 = a4[4];
  v64 = a4[5];
  v48 = a4[1];
  v52 = a4[2];
  a4[1] = a5[1];
  v18 = a5[5];
  v20 = a5[2];
  v19 = a5[3];
  a4[4] = a5[4];
  a4[5] = v18;
  a4[2] = v20;
  a4[3] = v19;
  a5[4] = v60;
  a5[5] = v64;
  a5[2] = v52;
  a5[3] = v56;
  result = v48;
  a5[1] = v48;
  if (a4[5].n128_u8[5] == 1)
  {
    result.n128_u32[0] = a4[4].n128_u32[3];
    v21 = a3[4].n128_f32[3];
    if (result.n128_f32[0] < v21)
    {
      goto LABEL_27;
    }

    if (result.n128_f32[0] != v21)
    {
      return result;
    }
  }

  else
  {
    v23 = a4[1].n128_u64[0];
    v22 = a4[1].n128_u64[1];
    if (__PAIR128__(v22, v23) < *&a3[1])
    {
      goto LABEL_27;
    }

    if (v22 != a3[1].n128_u64[1] || v23 != a3[1].n128_u64[0])
    {
      return result;
    }
  }

  result.n128_u32[0] = a4[4].n128_u32[1];
  v25 = a3[4].n128_f32[1];
  if (result.n128_f32[0] >= v25 && (result.n128_f32[0] != v25 || a4[4].n128_u32[0] <= a3[4].n128_u32[0]))
  {
    return result;
  }

LABEL_27:
  v26 = a3->n128_u32[0];
  a3->n128_u32[0] = a4->n128_u32[0];
  a4->n128_u32[0] = v26;
  v57 = a3[3];
  v61 = a3[4];
  v65 = a3[5];
  v49 = a3[1];
  v53 = a3[2];
  a3[1] = a4[1];
  v27 = a4[5];
  v29 = a4[2];
  v28 = a4[3];
  a3[4] = a4[4];
  a3[5] = v27;
  a3[2] = v29;
  a3[3] = v28;
  a4[4] = v61;
  a4[5] = v65;
  a4[2] = v53;
  a4[3] = v57;
  result = v49;
  a4[1] = v49;
  if (a3[5].n128_u8[5] == 1)
  {
    result.n128_u32[0] = a3[4].n128_u32[3];
    v30 = a2[4].n128_f32[3];
    if (result.n128_f32[0] < v30)
    {
      goto LABEL_40;
    }

    if (result.n128_f32[0] != v30)
    {
      return result;
    }
  }

  else
  {
    v32 = a3[1].n128_u64[0];
    v31 = a3[1].n128_u64[1];
    if (__PAIR128__(v31, v32) < *&a2[1])
    {
      goto LABEL_40;
    }

    if (v31 != a2[1].n128_u64[1] || v32 != a2[1].n128_u64[0])
    {
      return result;
    }
  }

  result.n128_u32[0] = a3[4].n128_u32[1];
  v34 = a2[4].n128_f32[1];
  if (result.n128_f32[0] >= v34 && (result.n128_f32[0] != v34 || a3[4].n128_u32[0] <= a2[4].n128_u32[0]))
  {
    return result;
  }

LABEL_40:
  v35 = a2->n128_u32[0];
  a2->n128_u32[0] = a3->n128_u32[0];
  a3->n128_u32[0] = v35;
  v58 = a2[3];
  v62 = a2[4];
  v66 = a2[5];
  v50 = a2[1];
  v54 = a2[2];
  a2[1] = a3[1];
  v36 = a3[5];
  v38 = a3[2];
  v37 = a3[3];
  a2[4] = a3[4];
  a2[5] = v36;
  a2[2] = v38;
  a2[3] = v37;
  a3[4] = v62;
  a3[5] = v66;
  a3[2] = v54;
  a3[3] = v58;
  result = v50;
  a3[1] = v50;
  if (a2[5].n128_u8[5] != 1)
  {
    v41 = a2[1].n128_u64[0];
    v40 = a2[1].n128_u64[1];
    if (__PAIR128__(v40, v41) >= *&a1[1])
    {
      if (v40 != a1[1].n128_u64[1] || v41 != a1[1].n128_u64[0])
      {
        return result;
      }

      goto LABEL_50;
    }

LABEL_53:
    v44 = a1->n128_u32[0];
    a1->n128_u32[0] = a2->n128_u32[0];
    a2->n128_u32[0] = v44;
    v59 = a1[3];
    v63 = a1[4];
    v67 = a1[5];
    v51 = a1[1];
    v55 = a1[2];
    a1[1] = a2[1];
    v45 = a2[5];
    v47 = a2[2];
    v46 = a2[3];
    a1[4] = a2[4];
    a1[5] = v45;
    a1[2] = v47;
    a1[3] = v46;
    a2[4] = v63;
    a2[5] = v67;
    a2[2] = v55;
    a2[3] = v59;
    result = v51;
    a2[1] = v51;
    return result;
  }

  result.n128_u32[0] = a2[4].n128_u32[3];
  v39 = a1[4].n128_f32[3];
  if (result.n128_f32[0] < v39)
  {
    goto LABEL_53;
  }

  if (result.n128_f32[0] != v39)
  {
    return result;
  }

LABEL_50:
  result.n128_u32[0] = a2[4].n128_u32[1];
  v43 = a1[4].n128_f32[1];
  if (result.n128_f32[0] < v43 || result.n128_f32[0] == v43 && a2[4].n128_u32[0] > a1[4].n128_u32[0])
  {
    goto LABEL_53;
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,SIWordTrieFragmentGetBundleIDs::$_0 &,std::pair<unsigned int,ci_rankingbits_wrapped_s> *>(__n128 *a1, __n128 *a2, __n128 a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 5);
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,SIWordTrieFragmentGetBundleIDs::$_0 &,std::pair<unsigned int,ci_rankingbits_wrapped_s> *,0>(a1, a1 + 6, a2 - 6, a3);
        return 1;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,SIWordTrieFragmentGetBundleIDs::$_0 &,std::pair<unsigned int,ci_rankingbits_wrapped_s> *,0>(a1, a1 + 6, a1 + 12, a2 - 6, a3);
        return 1;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,SIWordTrieFragmentGetBundleIDs::$_0 &,std::pair<unsigned int,ci_rankingbits_wrapped_s> *,0>(a1, a1 + 6, a1 + 12, a1 + 18, a2 - 6, a3);
        return 1;
    }
  }

  else
  {
    if (v3 < 2)
    {
      return 1;
    }

    if (v3 == 2)
    {
      if (a2[-1].n128_u8[5] == 1)
      {
        v5 = a2[-2].n128_f32[3];
        v6 = a1[4].n128_f32[3];
        if (v5 < v6)
        {
          goto LABEL_62;
        }

        if (v5 != v6)
        {
          return 1;
        }
      }

      else
      {
        v46 = a2[-5].n128_u64[0];
        v45 = a2[-5].n128_u64[1];
        if (__PAIR128__(v45, v46) < *&a1[1])
        {
          goto LABEL_62;
        }

        if (v45 != a1[1].n128_u64[1] || v46 != a1[1].n128_u64[0])
        {
          return 1;
        }
      }

      v48 = a2[-2].n128_f32[1];
      v49 = a1[4].n128_f32[1];
      if (v48 >= v49 && (v48 != v49 || a2[-2].n128_u32[0] <= a1[4].n128_u32[0]))
      {
        return 1;
      }

LABEL_62:
      v50 = a1->n128_u32[0];
      a1->n128_u32[0] = a2[-6].n128_u32[0];
      a2[-6].n128_u32[0] = v50;
      v60 = a1[3];
      v61 = a1[4];
      v62 = a1[5];
      v57 = a1[1];
      v59 = a1[2];
      a1[1] = a2[-5];
      v51 = a2[-1];
      v53 = a2[-4];
      v52 = a2[-3];
      a1[4] = a2[-2];
      a1[5] = v51;
      a1[2] = v53;
      a1[3] = v52;
      a2[-2] = v61;
      a2[-1] = v62;
      a2[-4] = v59;
      a2[-3] = v60;
      result = 1;
      a2[-5] = v57;
      return result;
    }
  }

  v7 = a1 + 12;
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,SIWordTrieFragmentGetBundleIDs::$_0 &,std::pair<unsigned int,ci_rankingbits_wrapped_s> *,0>(a1, a1 + 6, a1 + 12, a3);
  v10 = a1 + 18;
  if (&a1[18] == a2)
  {
    return 1;
  }

  v11 = 0;
  v12 = 0;
  while (1)
  {
    v14 = v10[5].n128_u8[5];
    if (v14 != 1)
    {
      break;
    }

    v15 = v10[4].n128_f32[3];
    v16 = v7[4].n128_f32[3];
    if (v15 < v16)
    {
      goto LABEL_32;
    }

    if (v15 == v16)
    {
      goto LABEL_29;
    }

LABEL_18:
    v7 = v10;
    v11 += 96;
    v10 += 6;
    if (v10 == a2)
    {
      return 1;
    }
  }

  v18 = v10[1].n128_u64[0];
  v17 = v10[1].n128_u64[1];
  if (__PAIR128__(v17, v18) < *&v7[1])
  {
    goto LABEL_32;
  }

  if (v17 != v7[1].n128_u64[1] || v18 != v7[1].n128_u64[0])
  {
    goto LABEL_18;
  }

LABEL_29:
  v20 = v10[4].n128_f32[1];
  v21 = v7[4].n128_f32[1];
  if (v20 >= v21 && (v20 != v21 || v10[4].n128_u32[0] <= v7[4].n128_u32[0]))
  {
    goto LABEL_18;
  }

LABEL_32:
  v22 = v10->n128_u32[0];
  v24 = v10[1].n128_u64[0];
  v23 = v10[1].n128_u64[1];
  v56 = v10[2];
  v58 = v10[3];
  v25 = v10[4].n128_u32[0];
  v26 = v10[4].n128_f32[1];
  v27 = v10[4].n128_u32[2];
  v28 = v10[4].n128_f32[3];
  v54 = v10[5].n128_u32[0];
  v55 = v10[5].n128_u8[4];
  v64 = v10[5].n128_u16[7];
  v63 = *(v10[5].n128_u64 + 6);
  v10->n128_u32[0] = v7->n128_u32[0];
  v13 = v7 + 1;
  v29 = v7[5];
  v10[4] = v7[4];
  v10[5] = v29;
  v30 = v7[3];
  v10[2] = v7[2];
  v10[3] = v30;
  v10[1] = v7[1];
  v31 = v11;
  if (v14)
  {
    while (1)
    {
      v34 = a1 + v31;
      v35 = *(&a1[10].n128_f32[3] + v31);
      if (v28 >= v35)
      {
        if (v28 != v35)
        {
          goto LABEL_17;
        }

        v36 = *(&a1[10].n128_f32[1] + v31);
        if (v26 >= v36)
        {
          if (v26 != v36)
          {
            goto LABEL_17;
          }

          v37 = (a1 + v31);
          if (v25 <= *(a1[10].n128_u32 + v31))
          {
            break;
          }
        }
      }

      v13 = v7 - 5;
      v7 -= 6;
      *(v34 + 48) = *(v34 + 24);
      v32 = *(v34 + 10);
      *(v34 + 15) = *(v34 + 9);
      *(v34 + 16) = v32;
      *(v34 + 17) = *(v34 + 11);
      v33 = *(v34 + 8);
      v31 -= 96;
      *(v34 + 13) = *(v34 + 7);
      *(v34 + 14) = v33;
      if (v31 == -192)
      {
LABEL_16:
        v13 = (a1 + v31 + 208);
        v7 = a1;
        goto LABEL_17;
      }
    }

    v13 = v37 + 13;
    v7 = v37 + 12;
  }

  else
  {
    while (1)
    {
      v40 = (a1 + v31);
      v41 = (a1 + v31 + 112);
      if (__PAIR128__(v23, v24) >= *v41)
      {
        if (v23 != *(&a1[7].n128_u64[1] + v31) || v24 != *(a1[7].n128_u64 + v31))
        {
          goto LABEL_17;
        }

        v43 = *(&a1[10].n128_f32[1] + v31);
        if (v26 >= v43)
        {
          if (v26 != v43)
          {
            goto LABEL_17;
          }

          v44 = (a1 + v31);
          if (v25 <= *(a1[10].n128_u32 + v31))
          {
            break;
          }
        }
      }

      v13 = v7 - 5;
      v7 -= 6;
      v40[12].n128_u32[0] = v40[6].n128_u32[0];
      v38 = *(a1 + v31 + 160);
      v40[15] = *(a1 + v31 + 144);
      v40[16] = v38;
      v40[17] = *(a1 + v31 + 176);
      v39 = *(a1 + v31 + 128);
      v31 -= 96;
      v40[13] = *v41;
      v40[14] = v39;
      if (v31 == -192)
      {
        goto LABEL_16;
      }
    }

    v13 = v44 + 13;
    v7 = v44 + 12;
  }

LABEL_17:
  v7->n128_u32[0] = v22;
  v13->n128_u64[0] = v24;
  v13->n128_u64[1] = v23;
  v7[2] = v56;
  v7[3] = v58;
  v7[4].n128_u32[0] = v25;
  v7[4].n128_f32[1] = v26;
  v7[4].n128_u32[2] = v27;
  v7[4].n128_f32[3] = v28;
  v7[5].n128_u8[4] = v55;
  v7[5].n128_u32[0] = v54;
  v7[5].n128_u8[5] = v14;
  *(v7[5].n128_u64 + 6) = v63;
  ++v12;
  v7[5].n128_u16[7] = v64;
  if (v12 != 8)
  {
    goto LABEL_18;
  }

  return &v10[6] == a2;
}

void word_trie_s::~word_trie_s(word_trie_s *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[4];
      v2[4] = 0;
      if (v4)
      {
        v5 = v4[13];
        if (v5)
        {
          word_trie_s::~word_trie_s(v5);
          MEMORY[0x1C691FEF0]();
        }

        v6 = v4[17];
        if (v6)
        {
          do
          {
            v7 = *v6;
            operator delete(v6);
            v6 = v7;
          }

          while (v7);
        }

        v8 = v4[15];
        v4[15] = 0;
        if (v8)
        {
          operator delete(v8);
        }

        MEMORY[0x1C691FEF0](v4, 0x10A0C4077AE0019);
      }

      v9 = v2[2];
      if (v9)
      {
        free(v9);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v10 = *this;
  *this = 0;
  if (v10)
  {
    operator delete(v10);
  }
}

uint64_t __SIWordTrieGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  __kSIWordTrieTypeID = result;
  return result;
}

void SIWordTrieInsert(uint64_t result, uint64_t a2, unint64_t a3, __n128 *a4, uint64_t a5, uint64_t a6, int a7, unsigned __int8 a8, __n128 a9, unsigned __int8 a10, int a11)
{
  if (a3)
  {
    v11 = a4[3];
    v13[2] = a4[2];
    v13[3] = v11;
    v13[4] = a4[4];
    v12 = a4[1];
    v13[0] = *a4;
    v13[1] = v12;
    v12.n128_u64[0] = 0;
    word_trie_s::insert((result + 16), a2, a3, v13, a5, U_ZERO_ERROR, a6, 0, a9, v12, a7, a8, a10, a11, 0, 0, 0);
  }
}

void word_trie_s::insert(float *a1, uint64_t a2, unint64_t a3, float *a4, uint64_t a5, UErrorCode a6, unsigned int a7, unsigned int a8, __n128 a9, __n128 a10, int a11, unsigned __int8 a12, unsigned __int8 a13, int a14, unsigned __int8 a15, unsigned __int8 a16, unint64_t a17)
{
  v146 = a8;
  v145 = a7;
  v144 = a6;
  v143 = a5;
  v149 = a3;
  v151 = a9;
  v152 = a10;
  v161 = *MEMORY[0x1E69E9840];
  v133 = a2;
  v138 = a17;
  v19 = a2 + 16 * a17;
  v20 = *v19;
  v135 = v19;
  v21 = *(v19 + 8);
  v22 = malloc_good_size(2 * v21);
  v23 = malloc_type_malloc(v22, 0x1000040BDFB0063uLL);
  pErrorCode[0] = U_ZERO_ERROR;
  for (i = u_strToLower(v23, v22 >> 1, v20, v21, 0, pErrorCode); pErrorCode[0] == U_BUFFER_OVERFLOW_ERROR; v22 *= 2)
  {
    v23 = malloc_type_realloc(v23, 2 * v22, 0x1000040BDFB0063uLL);
    i = u_strToLower(v23, (2 * v22) >> 1, v20, v21, 0, pErrorCode);
  }

  v26 = i;
  v27 = (3 * i + 1);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v128 - ((v27 + 15) & 0x1FFFFFFF0);
  bzero(v28, v27);
  v29 = &v23[v26];
  if (v27 < 4 * v26)
  {
    v30 = &v28[v27];
    v31 = v23;
    v32 = v23;
    while (1)
    {
      v41 = *v32++;
      v40 = v41;
      if (v41 > 0x7F)
      {
        if (v40 > 0x7FF)
        {
          if ((v40 & 0xF800) == 0xD800)
          {
            if ((v40 & 0x400) == 0 && v32 < v29)
            {
              v42 = *v32;
              if ((v42 & 0xFC00) == 0xDC00)
              {
                if ((v28 + 3) >= v30)
                {
                  goto LABEL_34;
                }

                v32 = v31 + 2;
                v39 = v42 + (v40 << 10) - 56613888;
                *v28 = (v39 >> 18) | 0xF0;
                v28[1] = (v39 >> 12) & 0x3F | 0x80;
                v28[2] = (v39 >> 6) & 0x3F | 0x80;
                v28[3] = v42 & 0x3F | 0x80;
                v28 += 4;
              }
            }
          }

          else
          {
            if ((v28 + 2) >= v30)
            {
              goto LABEL_34;
            }

            *v28 = (v40 >> 12) | 0xE0;
            v28[1] = (v40 >> 6) & 0x3F | 0x80;
            v28[2] = v40 & 0x3F | 0x80;
            v28 += 3;
          }
        }

        else
        {
          if ((v28 + 1) >= v30)
          {
            goto LABEL_34;
          }

          *v28 = (v40 >> 6) | 0xC0;
          v28[1] = v40 & 0x3F | 0x80;
          v28 += 2;
        }
      }

      else
      {
        if (v28 >= v30)
        {
          goto LABEL_34;
        }

        *v28++ = v40;
      }

      v31 = v32;
      if (v32 >= v29)
      {
        goto LABEL_34;
      }
    }
  }

  if (v26)
  {
    v33 = v23;
    v34 = v23;
    do
    {
      v36 = *v34++;
      v35 = v36;
      if (v36 <= 0x7F)
      {
        *v28++ = v35;
      }

      else if (v35 > 0x7FF)
      {
        if ((v35 & 0xF800) == 0xD800)
        {
          if ((v35 & 0x400) == 0 && v34 < v29)
          {
            v37 = *v34;
            if ((v37 & 0xFC00) == 0xDC00)
            {
              v34 = v33 + 2;
              v38 = v37 + (v35 << 10) - 56613888;
              *v28 = (v38 >> 18) | 0xF0;
              v28[1] = (v38 >> 12) & 0x3F | 0x80;
              v28[2] = (v38 >> 6) & 0x3F | 0x80;
              v28[3] = v37 & 0x3F | 0x80;
              v28 += 4;
            }
          }
        }

        else
        {
          *v28 = (v35 >> 12) | 0xE0;
          v28[1] = (v35 >> 6) & 0x3F | 0x80;
          v28[2] = v35 & 0x3F | 0x80;
          v28 += 3;
        }
      }

      else
      {
        *v28 = (v35 >> 6) | 0xC0;
        v28[1] = v35 & 0x3F | 0x80;
        v28 += 2;
      }

      v33 = v34;
    }

    while (v34 < v29);
  }

LABEL_34:
  v139 = a4;
  v153 = a1;
  v136 = &v128;
  v43 = -1759636613;
  v44 = -1789642873;
  v45 = 718793509;
  *v28 = 0;
  v46 = 2 * v26;
  if ((v26 & 0x40000000) != 0)
  {
    v47 = 2 * v26 + 3;
  }

  else
  {
    v47 = 2 * v26;
  }

  v48 = v47 >> 2;
  v49 = (v23 + (v47 & 0xFFFFFFFC));
  v50 = 1713515327;
  v51 = 1107688271;
  v52 = -1759636613;
  v137 = 2 * v26 + 3;
  if (v137 >= 7)
  {
    v53 = -v48;
    v52 = -1759636613;
    v54 = 718793509;
    v55 = -1789642873;
    do
    {
      v55 = 5 * v55 + 2071795100;
      v54 = 5 * v54 + 1808688022;
      HIDWORD(v56) = v55 * *&v49[2 * v53];
      LODWORD(v56) = HIDWORD(v56);
      v57 = (v56 >> 21) * v54;
      HIDWORD(v56) = v52;
      LODWORD(v56) = v52;
      v52 = v57 ^ (5 * (v56 >> 19) + 1390208809);
      v58 = __CFADD__(v53++, 1);
    }

    while (!v58);
    v50 = 5 * v55 + 2071795100;
    v51 = 5 * v54 + 1808688022;
  }

  v140 = a16;
  v147 = a14;
  v148 = a13;
  v150 = a11;
  v142 = a12;
  v132 = v48;
  if (v26)
  {
    HIDWORD(v59) = *v49 * v50;
    LODWORD(v59) = HIDWORD(v59);
    v60 = (v59 >> 21) * v51;
    HIDWORD(v59) = v52;
    LODWORD(v59) = v52;
    v52 = v60 ^ (5 * (v59 >> 19) + 1390208809);
  }

  v141 = a15;
  v61 = *(v153 + 2);
  v154 = 2 * v26;
  if (!*&v61)
  {
    goto LABEL_68;
  }

  v62 = -1028477387 * ((-2048144789 * (v52 ^ v46)) ^ ((-2048144789 * (v52 ^ v46)) >> 13));
  v63 = v62 ^ HIWORD(v62);
  v64 = vcnt_s8(v61);
  v64.i16[0] = vaddlv_u8(v64);
  v130 = v64.u32[0];
  if (v64.u32[0] > 1uLL)
  {
    v65 = v62 ^ HIWORD(v62);
    if (*&v61 <= v63)
    {
      v65 = v63 % v61.i32[0];
    }
  }

  else
  {
    v65 = (v61.i32[0] - 1) & v63;
  }

  v129 = *v153;
  v66 = *(v129 + 8 * v65);
  if (!v66 || (v67 = *v66) == 0)
  {
LABEL_68:
    v134.i32[0] = 2 * v26;
    operator new();
  }

  v131 = *&v61 - 1;
  v134 = v61;
  v68 = v65;
  if (v130 < 2)
  {
    while (1)
    {
      v69 = v67[1];
      if (v69 == v63)
      {
        if (*(v67 + 6) == v26)
        {
          v70 = memcmp(v67[2], v23, v154);
          v65 = v68;
          v61 = v134;
          if (!v70)
          {
            goto LABEL_58;
          }
        }
      }

      else if ((v69 & v131) != v65)
      {
        goto LABEL_68;
      }

      v67 = *v67;
      if (!v67)
      {
        goto LABEL_68;
      }
    }
  }

  while (1)
  {
    v73 = v67[1];
    if (v73 == v63)
    {
      break;
    }

    if (v73 >= *&v61)
    {
      v73 %= *&v61;
    }

    if (v73 != v65)
    {
      goto LABEL_68;
    }

LABEL_61:
    v67 = *v67;
    if (!v67)
    {
      goto LABEL_68;
    }
  }

  if (*(v67 + 6) != v26)
  {
    goto LABEL_61;
  }

  v74 = memcmp(v67[2], v23, v154);
  v65 = v68;
  v61 = v134;
  if (v74)
  {
    goto LABEL_61;
  }

LABEL_58:
  if (v137 >= 7)
  {
    v75 = -v132;
    do
    {
      v44 = 5 * v44 + 2071795100;
      v45 = 5 * v45 + 1808688022;
      HIDWORD(v76) = v44 * *&v49[2 * v75];
      LODWORD(v76) = HIDWORD(v76);
      v77 = (v76 >> 21) * v45;
      HIDWORD(v76) = v43;
      LODWORD(v76) = v43;
      v43 = v77 ^ (5 * (v76 >> 19) + 1390208809);
      v58 = __CFADD__(v75++, 1);
    }

    while (!v58);
    v71 = 5 * v44 + 2071795100;
    v72 = 5 * v45 + 1808688022;
  }

  else
  {
    v71 = 1713515327;
    v72 = 1107688271;
  }

  v78 = v147;
  if (v26)
  {
    HIDWORD(v79) = *v49 * v71;
    LODWORD(v79) = HIDWORD(v79);
    v80 = (v79 >> 21) * v72;
    HIDWORD(v79) = v43;
    LODWORD(v79) = v43;
    v43 = v80 ^ (5 * (v79 >> 19) + 1390208809);
  }

  v81 = v139;
  v82 = -1028477387 * ((-2048144789 * (v43 ^ v46)) ^ ((-2048144789 * (v43 ^ v46)) >> 13));
  v83 = v82 ^ HIWORD(v82);
  if (v130 > 1)
  {
    v84 = v82 ^ HIWORD(v82);
    if (*&v61 <= v83)
    {
      v84 = v83 % v61.i32[0];
    }
  }

  else
  {
    v84 = (v61.i32[0] - 1) & v83;
  }

  v85 = *(v129 + 8 * v84);
  if (!v85 || (v86 = *v85) == 0)
  {
LABEL_100:
    operator new();
  }

  if (v130 < 2)
  {
    while (1)
    {
      v87 = v86[1];
      if (v87 == v83)
      {
        if (*(v86 + 6) == v26 && !memcmp(v86[2], v23, v154))
        {
          goto LABEL_91;
        }
      }

      else if ((v87 & v131) != v84)
      {
        goto LABEL_100;
      }

      v86 = *v86;
      if (!v86)
      {
        goto LABEL_100;
      }
    }
  }

  while (2)
  {
    v91 = v86[1];
    if (v91 != v83)
    {
      if (v91 >= *&v61)
      {
        v91 %= *&v61;
      }

      if (v91 != v84)
      {
        goto LABEL_100;
      }

      goto LABEL_93;
    }

    if (*(v86 + 6) != v26 || (v92 = memcmp(v86[2], v23, v154), v61 = v134, v92))
    {
LABEL_93:
      v86 = *v86;
      if (!v86)
      {
        goto LABEL_100;
      }

      continue;
    }

    break;
  }

LABEL_91:
  v88 = v146;
  v89 = v145;
  v90 = v144;
  v93 = v86[4];
  *(v93 + 112) = *(v93 + 112) & 0xFF800000FFFFFFFFLL | ((((*(v93 + 112) + 0x100000000) >> 32) & 0x7FFFFF) << 32);
  v94 = v143;
  if (*(v81 + 69) == 1)
  {
    v95 = v81[15];
    v96 = *(v93 + 60);
    v97 = v95 == v96;
    if (v95 < v96)
    {
      goto LABEL_113;
    }
  }

  else
  {
    if (*v81 < *v93)
    {
      goto LABEL_113;
    }

    v97 = *(v81 + 1) == *(v93 + 8) && *v81 == *v93;
  }

  v98 = v81;
  if (v97)
  {
    v99 = v81[13];
    v100 = *(v93 + 52);
    if (v99 < v100 || (v98 = v81, v99 == v100) && (v98 = v81, *(v81 + 12) > *(v93 + 48)))
    {
LABEL_113:
      v98 = v93;
    }
  }

  *v93 = *v98;
  v101 = v98[1];
  v102 = v98[2];
  v103 = v98[4];
  *(v93 + 48) = v98[3];
  *(v93 + 64) = v103;
  *(v93 + 16) = v101;
  *(v93 + 32) = v102;
  *&v102.f64[0] = v151.n128_u64[0];
  *&v102.f64[1] = v152.n128_u64[0];
  *(v93 + 80) = vminnmq_f64(*(v93 + 80), v102);
  pErrorCode[0] = v90;
  v104 = *(v81 + 3);
  v158 = *(v81 + 2);
  v159 = v104;
  v160 = *(v81 + 4);
  v105 = *(v81 + 1);
  v156 = *v81;
  v157 = v105;
  std::__hash_table<std::__hash_value_type<unsigned int,ci_rankingbits_wrapped_s>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,ci_rankingbits_wrapped_s>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,ci_rankingbits_wrapped_s>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,ci_rankingbits_wrapped_s>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int,ci_rankingbits_wrapped_s>>((v93 + 120), v90, pErrorCode);
  v106 = *(v93 + 112);
  v107 = (v106 << 27) >> 27;
  if (v107 >= v89)
  {
    LOBYTE(v107) = v89;
  }

  v108 = v107 & 0x1F;
  v109 = v106 & 0xFBFFFFFFFFFFFC00;
  v110 = (v106 << 54) >> 59;
  if ((v106 << 22) >> 27 <= v88)
  {
    LOBYTE(v110) = v88;
  }

  v111 = v108 & 0xFFFFFC1F | (32 * (v110 & 0x1F));
  v112 = v140;
  *(v93 + 169) = v140;
  v113 = *(v93 + 164);
  if (v113 >= v78)
  {
    v113 = v78;
  }

  *(v93 + 164) = v113;
  v114 = v138;
  v115 = (v106 >> 58) & 1;
  if (v112 <= v138)
  {
    LODWORD(v115) = 1;
  }

  v97 = v115 == 0;
  v116 = 0x400000000000000;
  if (v97)
  {
    v116 = 0;
  }

  v117 = v109 | v116 | v111;
  *(v93 + 112) = v117;
  v118 = *(v93 + 96);
  v119 = v94;
  v120 = v149;
  v121 = v142;
  if (v118)
  {
    if (v118 != v94)
    {
      v119 = -1;
      goto LABEL_128;
    }
  }

  else
  {
LABEL_128:
    *(v93 + 96) = v119;
  }

  v122 = v148;
  if ((v148 & 1) != 0 || v121)
  {
    if (v148)
    {
      v117 |= 0x100000000000000uLL;
    }

    if (v121)
    {
      v117 |= 0x80000000000000uLL;
    }

    *(v93 + 112) = v117;
  }

  v123 = v151;
  v124 = v152;
  if (*(v93 + 160) != v150)
  {
    *(v93 + 160) = 0;
  }

  if (v114 + 1 < v120)
  {
    v125 = *(v93 + 104);
    if (!v125)
    {
      operator new();
    }

    v126 = *(v81 + 3);
    v157 = *(v81 + 2);
    v158 = v126;
    v159 = *(v81 + 4);
    v127 = *(v81 + 1);
    *pErrorCode = *v81;
    v156 = v127;
    word_trie_s::insert(v125, v133, v120, pErrorCode, v94, v90, v89, v88, v123, v124, v150, v121, v122, v78, v141, v140, v114 + 1);
  }

  if (v23)
  {
    free(v23);
  }
}

void *std::__hash_table<std::__hash_value_type<unsigned int,ci_rankingbits_wrapped_s>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,ci_rankingbits_wrapped_s>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,ci_rankingbits_wrapped_s>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,ci_rankingbits_wrapped_s>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int,ci_rankingbits_wrapped_s>>(void *result, unsigned int a2, uint64_t a3)
{
  v3 = result[1];
  if (!v3)
  {
    goto LABEL_22;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2;
    if (v3 <= a2)
    {
      v5 = a2 % v3;
    }
  }

  else
  {
    v5 = (v3 - 1) & a2;
  }

  v6 = *(*result + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_22:
    operator new();
  }

  if (v4.u32[0] < 2uLL)
  {
    while (1)
    {
      v8 = v7[1];
      if (v8 == a2)
      {
        if (*(v7 + 4) == a2)
        {
          return result;
        }
      }

      else if ((v8 & (v3 - 1)) != v5)
      {
        goto LABEL_22;
      }

      v7 = *v7;
      if (!v7)
      {
        goto LABEL_22;
      }
    }
  }

  while (1)
  {
    v9 = v7[1];
    if (v9 == a2)
    {
      break;
    }

    if (v9 >= v3)
    {
      v9 %= v3;
    }

    if (v9 != v5)
    {
      goto LABEL_22;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_22;
    }
  }

  if (*(v7 + 4) != a2)
  {
    goto LABEL_17;
  }

  return result;
}

void std::__hash_table<std::__hash_value_type<SIUnicodeString,std::unique_ptr<NGram_s>>,std::__unordered_map_hasher<SIUnicodeString,std::__hash_value_type<SIUnicodeString,std::unique_ptr<NGram_s>>,HashFunction,HashEqual,true>,std::__unordered_map_equal<SIUnicodeString,std::__hash_value_type<SIUnicodeString,std::unique_ptr<NGram_s>>,HashEqual,HashFunction,true>,std::allocator<std::__hash_value_type<SIUnicodeString,std::unique_ptr<NGram_s>>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::vector<long long>::__throw_length_error[abi:nn200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

double word_trie_s::iterateFragments(__n128 a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, __n128 *a6, uint64_t a7, int a8, unsigned int a9)
{
  v108 = a9;
  v99 = a8;
  v102 = a6;
  v130 = *MEMORY[0x1E69E9840];
  v109 = a4;
  if (a4 <= 0x13)
  {
    MEMORY[0x1EEE9AC00](a1);
    v91 = 0;
    *(&v12 + 1) = 0;
    memset(v90, 0, sizeof(v90));
    v14 = *(v13 + 16);
    if (v14)
    {
      v116 = v90;
      v107 = v10;
      v106 = v9;
      v105 = (v9 + 16 * v109);
      v101 = v11;
      v15 = -1.79769313e308;
      *&v12 = 134217984;
      v93 = v12;
      v110 = v109 + 1;
      v100 = v11 + 16;
      v94 = &v118;
      while (1)
      {
        v16 = v14[4];
        v17 = *(v16 + 14);
        v18 = v16[3];
        v122 = v16[2];
        v19 = v16[4];
        v123 = v18;
        v124 = v19;
        v20 = *v16;
        v121 = v16[1];
        v120 = v20;
        v21 = *(v16 + 12);
        v22 = *(v16 + 10);
        v23 = *(v16 + 11);
        v24 = *(v16 + 168);
        v25 = *(v16 + 169);
        v27 = *(v16 + 40);
        v26 = *(v16 + 41);
        v119 = 0;
        v118 = 0u;
        v117 = 0u;
        LODWORD(v119) = *(v16 + 38);
        prime = *(v16 + 16);
        v114 = v21;
        v113 = v24;
        v112 = v26;
        v111 = v25;
        v115 = v27;
        if (prime == 1)
        {
          break;
        }

        if ((prime & (prime - 1)) != 0)
        {
          prime = std::__next_prime(prime);
          v29 = *(&v117 + 8);
          v30 = prime >= *(&v117 + 1);
          if (prime > *(&v117 + 1))
          {
            goto LABEL_21;
          }
        }

        else
        {
          v29 = 0;
          v30 = 1;
          if (prime)
          {
            goto LABEL_21;
          }
        }

        if (!v30)
        {
          v31 = vcvtps_u32_f32(*(&v118 + 1) / *&v119);
          if (*&v29 < 3uLL || (v32 = vcnt_s8(v29), v32.i16[0] = vaddlv_u8(v32), v32.u32[0] > 1uLL))
          {
            v34 = prime;
            v31 = std::__next_prime(v31);
            prime = v34;
          }

          else
          {
            v33 = 1 << -__clz(v31 - 1);
            if (v31 >= 2)
            {
              v31 = v33;
            }
          }

          if (prime <= v31)
          {
            prime = v31;
          }

          if (prime < *&v29)
          {
            goto LABEL_21;
          }
        }

LABEL_22:
        v35 = *(v16 + 17);
        if (!v35)
        {
          goto LABEL_46;
        }

        do
        {
          v36 = *(v35 + 4);
          if (!*(&v117 + 1))
          {
            goto LABEL_44;
          }

          v37 = vcnt_s8(*(&v117 + 8));
          v37.i16[0] = vaddlv_u8(v37);
          if (v37.u32[0] > 1uLL)
          {
            v38 = *(v35 + 4);
            if (*(&v117 + 1) <= v36)
            {
              v38 = v36 % DWORD2(v117);
            }
          }

          else
          {
            v38 = (DWORD2(v117) - 1) & v36;
          }

          v39 = *(v117 + 8 * v38);
          if (!v39 || (v40 = *v39) == 0)
          {
LABEL_44:
            operator new();
          }

          if (v37.u32[0] < 2uLL)
          {
            while (1)
            {
              v41 = v40[1];
              if (v41 == v36)
              {
                if (*(v40 + 4) == v36)
                {
                  goto LABEL_45;
                }
              }

              else if ((v41 & (*(&v117 + 1) - 1)) != v38)
              {
                goto LABEL_44;
              }

              v40 = *v40;
              if (!v40)
              {
                goto LABEL_44;
              }
            }
          }

          while (1)
          {
            v42 = v40[1];
            if (v42 == v36)
            {
              break;
            }

            if (v42 >= *(&v117 + 1))
            {
              v42 %= *(&v117 + 1);
            }

            if (v42 != v38)
            {
              goto LABEL_44;
            }

LABEL_39:
            v40 = *v40;
            if (!v40)
            {
              goto LABEL_44;
            }
          }

          if (*(v40 + 4) != v36)
          {
            goto LABEL_39;
          }

LABEL_45:
          v35 = *v35;
        }

        while (v35);
LABEL_46:
        v43 = (v17 << 9) >> 41;
        v44 = v105;
        *v105 = v14[2];
        v44[1] = *(v14 + 6);
        if ((*(v16 + 119) & 2) != 0)
        {
          v57 = *(v16 + 13);
          if (v57)
          {
            v58 = v102;
            v59 = v102[1];
            v60 = v116;
            *v116 = *v102;
            v60[1] = v59;
            v61 = v58[2];
            v60[2] = v61;
            v60[3].n128_u64[0] = v58[3].n128_u64[0];
            if (v109)
            {
              v62 = v108;
            }

            else
            {
              v62 = (v17 >> 23) >> 9;
            }

            v15 = fmax(v15, word_trie_s::iterateFragments(v61, v57, v106, v110, v107, v60, v101, (v17 >> 23) >> 9, v62));
          }
        }

        else
        {
          v45 = v102;
          v46 = v102[1];
          v47 = v116;
          *v116 = *v102;
          v47[1] = v46;
          v47[2] = v45[2];
          v47[3].n128_u64[0] = v45[3].n128_u64[0];
          v48 = *(v16 + 13);
          v104 = (v17 << 27) >> 27;
          v103 = (v17 << 54) >> 59;
          if (v48)
          {
            if ((v17 & 0x400000000000000) != 0)
            {
              v63 = HIBYTE(v17) & 1;
              v64 = (v17 >> 55) & 1;
              v127 = v122;
              v128 = v123;
              v129 = v124;
              *buf = v120;
              v126 = v121;
              if (v109)
              {
                v65 = v99;
              }

              else
              {
                v65 = (v17 >> 23) >> 9;
              }

              if (v109)
              {
                v66 = v108;
              }

              else
              {
                v66 = (v17 >> 23) >> 9;
              }

              v52 = v101;
              v67 = *(v101 + 16);
              v98 = v17;
              v68 = v116;
              v92 = v63;
              v53 = v107;
              v97 = v64;
              v95 = v66;
              v54 = v106;
              v56 = v110;
              LODWORD(v96) = v65;
              v51.n128_f64[0] = v67(v101, v106, v110, v107 + 1, buf, v114, v43, v22, v23, 1.79769313e308);
              v55 = v68;
              v17 = v98;
              if (v51.n128_f64[0] > v15)
              {
                v127 = v122;
                v128 = v123;
                v129 = v124;
                *buf = v120;
                v126 = v121;
                BYTE5(v89) = v111;
                BYTE4(v89) = v113;
                LODWORD(v89) = v112;
                BYTE6(v88) = v92;
                BYTE5(v88) = v97;
                BYTE4(v88) = v115 != 0;
                LODWORD(v88) = v103;
                v51.n128_f64[0] = (*(v52 + 16))(v52, v54, v56, v53 + 1, buf, v114, v43, v96, v22, v23, 1.79769313e308, __PAIR64__(v104, v95), v88, v89, &v117, v55);
                v55 = v116;
                v15 = v51.n128_f64[0];
              }
            }

            else
            {
              v49 = *__error();
              v50 = _SILogForLogForCategory(1);
              if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
              {
                *buf = v93;
                *&buf[4] = v110;
                _os_log_impl(&dword_1C278D000, v50, OS_LOG_TYPE_DEFAULT, "Skip at %ld", buf, 0xCu);
              }

              *__error() = v49;
              v52 = v101;
              v53 = v107;
              v54 = v106;
              v55 = v116;
              v56 = v110;
            }

            if ((v17 & 0x400000000000000) == 0 || v109 == 0)
            {
              v70 = v43;
            }

            else
            {
              v70 = v108;
            }

            v15 = fmax(v15, word_trie_s::iterateFragments(v51, *(v16 + 13), v54, v56, v53 + 1, v55, v52, v43, v70));
          }

          if ((v17 & 0x400000000000000) != 0)
          {
            v73 = HIBYTE(v17) & 1;
            v74 = (v17 >> 55) & 1;
            v127 = v122;
            v128 = v123;
            v129 = v124;
            *buf = v120;
            v126 = v121;
            if (v109)
            {
              v75 = v99;
            }

            else
            {
              v75 = v43;
            }

            if (v109)
            {
              v76 = v108;
            }

            else
            {
              v76 = v43;
            }

            v77 = v101;
            v78 = *(v101 + 16);
            v79 = v111;
            v80 = v113;
            v81 = v112;
            v96 = v73;
            v98 = v74;
            v95 = v76;
            v82 = v110;
            v83 = v114;
            LODWORD(v97) = v75;
            if (v78(v101, v106, v110, v107 + 1, buf, v114, v43, v22, v23, v15) > v15)
            {
              v127 = v122;
              v128 = v123;
              v129 = v124;
              *buf = v120;
              v126 = v121;
              BYTE5(v89) = v79;
              BYTE4(v89) = v80;
              LODWORD(v89) = v81;
              BYTE6(v88) = v96;
              BYTE5(v88) = v98;
              BYTE4(v88) = v115 != 0;
              LODWORD(v88) = v103;
              v15 = (*(v77 + 16))(v77, v106, v82, v107 + 1, buf, v83, v43, v97, v22, v23, v15, __PAIR64__(v104, v95), v88, v89, &v117, v116);
            }
          }

          else
          {
            v71 = *__error();
            v72 = _SILogForLogForCategory(1);
            if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v93;
              *&buf[4] = v110;
              _os_log_impl(&dword_1C278D000, v72, OS_LOG_TYPE_DEFAULT, "Skip at %ld", buf, 0xCu);
            }

            *__error() = v71;
          }
        }

        v84 = v118;
        if (v118)
        {
          do
          {
            v85 = *v84;
            operator delete(v84);
            v84 = v85;
          }

          while (v85);
        }

        v86 = v117;
        *&v117 = 0;
        if (v86)
        {
          operator delete(v86);
        }

        v14 = *v14;
        if (!v14)
        {
          return v15;
        }
      }

      prime = 2;
LABEL_21:
      std::__hash_table<std::__hash_value_type<SIUnicodeString,std::unique_ptr<NGram_s>>,std::__unordered_map_hasher<SIUnicodeString,std::__hash_value_type<SIUnicodeString,std::unique_ptr<NGram_s>>,HashFunction,HashEqual,true>,std::__unordered_map_equal<SIUnicodeString,std::__hash_value_type<SIUnicodeString,std::unique_ptr<NGram_s>>,HashEqual,HashFunction,true>,std::allocator<std::__hash_value_type<SIUnicodeString,std::unique_ptr<NGram_s>>>>::__do_rehash<true>(&v117, prime);
      goto LABEL_22;
    }
  }

  return -1.79769313e308;
}

void *ContentIndexQueryNodeForOidPath(const void *a1, uint64_t a2, int a3)
{
  v4 = a2;
  v6 = 8 * a2;
  v7 = 8 * a2 + 104;
  if (v7 >> 17)
  {
    v8 = 1;
  }

  else
  {
    v8 = *MEMORY[0x1E69E9AC8] >= v7;
  }

  if (!v8)
  {
    ++sTotal_6326;
  }

  v9 = malloc_type_zone_calloc(queryZone, 1uLL, v7, 0x5BAF1CEAuLL);
  if (!v9 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    *v12 = 0;
    _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", v12, 2u);
  }

  *v9 = 1;
  memcpy(v9 + 13, a1, v6);
  v9[5] = v9 + 13;
  v9[4] = v9 + 5;
  v9[6] = 0;
  if (a3)
  {
    v10 = 512;
  }

  else
  {
    v10 = 1024;
  }

  *(v9 + 14) = v10;
  *(v9 + 15) = v4;
  *(v9 + 4) = 0u;
  *(v9 + 5) = 0u;
  v9[12] = 0;
  *(v9 + 6) = 1;
  return v9;
}

void assert_invalid_doc_type(_DWORD *a1)
{
  v2 = *__error();
  v3 = _SILogForLogForCategory(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = a1[12];
    *buf = 136315906;
    v9 = "assert_invalid_doc_type";
    v10 = 1024;
    v11 = 117;
    v12 = 2048;
    v13 = a1;
    v14 = 1024;
    v15 = v4;
    _os_log_error_impl(&dword_1C278D000, v3, OS_LOG_TYPE_ERROR, "%s:%d: Expected valid doc set type for %p. Got %d", buf, 0x22u);
  }

  *__error() = v2;
  v5 = __si_assert_copy_extra_332();
  v6 = v5;
  v7 = "";
  if (v5)
  {
    v7 = v5;
  }

  __message_assert("%s:%u: failed assertion '%s' %s Expected valid doc set type for %p. Got %d", "ContentIndexQuery.c", 118, "0", v7, a1, a1[12]);
  free(v6);
  if (__valid_fs(-1))
  {
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  MEMORY[0xC00] = -559038737;
  abort();
}

unsigned int *ContentIndexDocSetCreateEmpty(uint64_t a1)
{
  if (*MEMORY[0x1E69E9AC8] <= 0x97uLL)
  {
    ++sTotal_6326;
  }

  result = malloc_type_zone_calloc(queryZone, 1uLL, 0x98uLL, 0x5BAF1CEAuLL);
  if (!result)
  {
    v3 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT);
    result = 0;
    if (v3)
    {
      *v4 = 0;
      _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", v4, 2u);
      result = 0;
    }
  }

  atomic_store(1u, result);
  result[1] = -1073627135;
  *(result + 7) = a1;
  result[12] = 0;
  *(result + 5) = -1;
  result[5] = 0;
  return result;
}

uint64_t *extractConstrainingDocSets(int a1, uint64_t *a2, const __CFSet *a3, _DWORD *a4, _BYTE *a5)
{
  *a5 = 0;
  if (a2)
  {
    v6 = a2;
    v7 = malloc_type_zone_malloc(queryZone, 8 * a1, 0xA4971684uLL);
    if (!v7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *v72 = 0;
      _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", v72, 2u);
    }

    v70 = a4;
    LODWORD(v8) = 0;
    v9 = *MEMORY[0x1E695E480];
    v10 = 1;
    do
    {
      v11 = v9;
      v12 = v8;
      v13 = v10;
      v14 = *v6;
      v15 = *(v6 + 2);
      v16 = malloc_type_zone_malloc(queryZone, 0x98uLL, 0xA4971684uLL);
      if (!v16 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
      }

      v17 = v7;
      v18 = *(v14 + 16);
      *v16 = *v14;
      v16[1] = v18;
      v19 = *(v14 + 32);
      v20 = *(v14 + 48);
      v21 = *(v14 + 80);
      v16[4] = *(v14 + 64);
      v16[5] = v21;
      v16[2] = v19;
      v16[3] = v20;
      v22 = *(v14 + 96);
      v23 = *(v14 + 112);
      v24 = *(v14 + 128);
      *(v16 + 18) = *(v14 + 144);
      v16[7] = v23;
      v16[8] = v24;
      v16[6] = v22;
      atomic_store(1u, v16);
      *(v16 + 2) = 0;
      *(v16 + 18) = 0;
      *(v16 + 13) = 0;
      *(v16 + 10) = 0;
      *(v16 + 11) = 0;
      v25 = *(v14 + 20);
      if (v25 != 0.0)
      {
        *(v16 + 5) = v25;
      }

      *(v16 + 14) = 0;
      *(v16 + 15) = 0;
      *(v16 + 32) &= 0x80000000;
      *(v16 + 33) = 0;
      *(v16 + 17) = 0;
      v26 = malloc_type_zone_malloc(queryZone, 8 * *(v14 + 96), 0xA4971684uLL);
      if (!v26 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        *v74 = 0;
        _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", v74, 2u);
      }

      *(v16 + 9) = v26;
      v27 = *(v14 + 96);
      if (v27 >= v15)
      {
        v28 = v15;
      }

      else
      {
        v28 = *(v14 + 96);
      }

      if (v28)
      {
        v29 = 0;
        v9 = v11;
        do
        {
          v30 = *(*(v14 + 72) + v29);
          if (v30)
          {
            atomic_fetch_add(v30, 1u);
          }

          *(*(v16 + 9) + v29) = v30;
          v29 += 8;
        }

        while (8 * v28 != v29);
        v27 = *(v14 + 96);
      }

      else
      {
        v9 = v11;
      }

      v31 = v28 + 1;
      if (v31 < v27)
      {
        v32 = v28;
        do
        {
          v33 = *(*(v14 + 72) + 8 * v31);
          if (v33)
          {
            atomic_fetch_add(v33, 1u);
          }

          *(*(v16 + 9) + 8 * v32) = v33;
          ++v31;
          ++v32;
        }

        while (v31 < *(v14 + 96));
      }

      --*(v16 + 24);
      *(v16 + 64) = 1;
      if (!v28 && *(v16 + 12) == 7)
      {
        *(v16 + 12) = 4;
        v34 = ContentIndexDocSetNotLazy(v16, 0.0);
        ContentIndexDocSetDispose(v16);
        v16 = v34;
      }

      Mutable = CFArrayCreateMutable(v9, 2, 0);
      v36 = _ContentIndexMemoizeDocSet(v16, a3, Mutable);
      CFRelease(Mutable);
      if (!v36[2])
      {
        ContentIndexFlattenDocSet(v36, a3);
        v37 = CFArrayCreateMutable(v9, 2, 0);
        v36 = _ContentIndexMemoizeDocSet(v36, a3, v37);
        CFRelease(v37);
      }

      v8 = v12 + 1;
      v17[v12] = v36;
      v7 = v17;
      v6 = v6[2];
      v10 = v13 + 1;
    }

    while (v6);
    if (v12 == -1)
    {
LABEL_39:
      a4 = v70;
    }

    else
    {
      v38 = 0;
      while (*(v17[v38] + 48) != 6)
      {
        if (v13 == ++v38)
        {
          goto LABEL_39;
        }
      }

      qsort_b(v17, v12 + 1, 8uLL, &__block_literal_global_6366);
      v39 = 0;
      v40 = -1;
      while (*(v17[v39] + 48) != 6)
      {
        ++v39;
        ++v40;
        if (v12 + 1 == v39)
        {
          goto LABEL_50;
        }
      }

      if (v39)
      {
        if (v39 == 1)
        {
          v41 = ContentIndexDocSetExceptLazy_Array(*v17, v12, (v17 + 1));
          v42 = v13;
          v43 = v17;
          do
          {
            v44 = *v43++;
            ContentIndexDocSetDispose(v44);
            --v42;
          }

          while (v42);
          a4 = v70;
        }

        else
        {
          v69 = v39 - 1;
          v58 = v8 - v40;
          v59 = ContentIndexDocSetIntersectionLazy(v39, v17, 0.0);
          ContentIndexFlattenDocSet(v59, a3);
          v60 = CFArrayCreateMutable(v11, 2, 0);
          v61 = _ContentIndexMemoizeDocSet(v59, a3, v60);
          CFRelease(v60);
          v62 = 0;
          do
          {
            ContentIndexDocSetDispose(v17[v62++]);
          }

          while (v39 != v62);
          v17[v69] = v61;
          v41 = ContentIndexDocSetExceptLazy_Array(v61, v8 - v39, &v17[v39]);
          if (v69 < v8)
          {
            v63 = &v17[v40];
            a4 = v70;
            v64 = a3;
            do
            {
              v65 = *v63++;
              ContentIndexDocSetDispose(v65);
              --v58;
            }

            while (v58);
            v7 = v17;
            goto LABEL_79;
          }

          a4 = v70;
          v7 = v17;
        }

        v64 = a3;
LABEL_79:
        ContentIndexFlattenDocSet(v41, v64);
        v66 = CFArrayCreateMutable(v11, 2, 0);
        v55 = _ContentIndexMemoizeDocSet(v41, v64, v66);
        CFRelease(v66);
        goto LABEL_80;
      }

LABEL_50:
      v45 = 0;
      v46 = 0;
      *a5 = 1;
      v47 = v17;
      do
      {
        v48 = v47;
        v49 = *(v7[v45] + 96);
        v46 += v49;
        if (v49 <= 1)
        {
          v47 = v48;
        }

        else
        {
          v47 = 0;
        }

        ++v45;
      }

      while (v13 != v45);
      a4 = v70;
      if (!v47)
      {
        v48 = malloc_type_zone_malloc(queryZone, 8 * v46, 0xA4971684uLL);
        if (!v48)
        {
          _log_fault_for_malloc_failure();
        }
      }

      v50 = 0;
      v51 = 0;
      do
      {
        v52 = v7[v50];
        if (*(v52 + 96))
        {
          v53 = 0;
          do
          {
            v54 = *(*(v52 + 72) + 8 * v53);
            if (v54)
            {
              atomic_fetch_add(v54, 1u);
            }

            v48[(v51 + v53++)] = v54;
          }

          while (v53 < *(v52 + 96));
          v51 = (v51 + v53);
        }

        ContentIndexDocSetDispose(v52);
        ++v50;
      }

      while (v50 != v8);
      v55 = ContentIndexDocSetUnionLazy(v51, v48, 0.0);
      if (v51)
      {
        v56 = v48;
        do
        {
          v57 = *v56++;
          ContentIndexDocSetDispose(v57);
          --v51;
        }

        while (v51);
      }

      if (v48 != v7)
      {
        free(v48);
      }

LABEL_80:
      *v7 = v55;
      LODWORD(v8) = 1;
    }
  }

  else
  {
    v7 = 0;
    LODWORD(v8) = 0;
  }

  *a4 = v8;
  return v7;
}

void recomputeConstraints(atomic_uint **a1, unsigned int a2, uint64_t *a3, int a4, int a5, int a6, char a7, int a8)
{
  v35 = *MEMORY[0x1E69E9840];
  v33 = 0;
  v34 = 0;
  v15 = *a3;
  v16 = *(*a3 + 128);
  v17 = v16 & 0x7FFFFFFF;
  if ((v16 & 0x7FFFFFFFu) < 2)
  {
    v20 = **(v15 + 120);
    if (v20)
    {
      atomic_fetch_add(v20, 1u);
    }

    v33 = v20;
  }

  else
  {
    v18 = *(v15 + 120);
    if (a4 == 5)
    {
      v19 = ContentIndexDocSetIntersectionLazy(v17, v18, 0.0);
    }

    else
    {
      v19 = ContentIndexDocSetUnionLazy(v17, v18, 0.0);
    }

    v20 = v19;
    v33 = v19;
  }

  v21 = *a3;
  if ((*(*a3 + 128) & 0x7FFFFFFF) != 0)
  {
    v22 = 0;
    do
    {
      ContentIndexDocSetDispose(*(*(v21 + 120) + 8 * v22++));
      v21 = *a3;
    }

    while (v22 < (*(*a3 + 128) & 0x7FFFFFFFu));
  }

  if (a5 == 5)
  {
    v23 = ContentIndexDocSetIntersectionLazy(a2, a1, 0.0);
  }

  else
  {
    v23 = ContentIndexDocSetUnionLazy(a2, a1, 0.0);
  }

  v24 = v23;
  v25 = 0;
  v34 = v23;
  do
  {
    ContentIndexDocSetDispose(a1[v25++]);
  }

  while (a2 != v25);
  free(a1);
  if (a7)
  {
    v33 = v24;
    v34 = v20;
    v26 = v20;
    if (a6 != 4)
    {
      goto LABEL_19;
    }

LABEL_23:
    v27 = ContentIndexDocSetUnionLazy(2, &v33, 0.0);
    goto LABEL_25;
  }

  v26 = v24;
  v24 = v20;
  if (a6 == 4)
  {
    goto LABEL_23;
  }

LABEL_19:
  if (a6 == 7)
  {
    v27 = ContentIndexDocSetExceptLazy(v24, v26, 0.0);
  }

  else
  {
    if (a6 != 5)
    {
      v29 = __si_assert_copy_extra_332();
      v30 = v29;
      v31 = "";
      if (v29)
      {
        v31 = v29;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "ContentIndexQuery.c", 1099, "0", v31);
      free(v30);
      if (__valid_fs(-1))
      {
        v32 = 2989;
      }

      else
      {
        v32 = 3072;
      }

      *v32 = -559038737;
      abort();
    }

    v27 = ContentIndexDocSetIntersectionLazy(2, &v33, 0.0);
  }

LABEL_25:
  **(*a3 + 120) = v27;
  ContentIndexDocSetDispose(v24);
  ContentIndexDocSetDispose(v26);
  *(*a3 + 128) = *(*a3 + 128) & 0x80000000 | 1;
  if (a8)
  {
    v28 = 0x80000000;
  }

  else
  {
    v28 = 0;
  }

  *(*a3 + 128) = v28 & 0x80000000 | *(*a3 + 128) & 0x7FFFFFFF;
}

unsigned int *ContentIndexDocSetExceptLazy_Array(uint64_t a1, int a2, uint64_t a3)
{
  v6 = *(a1 + 52);
  if (a2)
  {
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v9 = *(a3 + 8 * v7);
      v10 = *(v9 + 96);
      if (v10)
      {
        v11 = *(v9 + 72);
        if (v10 == 1)
        {
          v12 = 0;
        }

        else
        {
          v13 = 0;
          v12 = v10 & 0xFFFFFFFE;
          v14 = v11 + 8;
          v15 = v12;
          do
          {
            v6 |= *(*(v14 - 8) + 52);
            v13 |= *(*v14 + 52);
            v14 += 16;
            v15 -= 2;
          }

          while (v15);
          v6 |= v13;
          if (v12 == v10)
          {
            goto LABEL_3;
          }
        }

        v16 = v10 - v12;
        v17 = (v11 + 8 * v12);
        do
        {
          v18 = *v17++;
          v6 |= *(v18 + 52);
          --v16;
        }

        while (v16);
      }

LABEL_3:
      v8 += v10;
      if (++v7 == a2)
      {
        v19 = v8 + 1;
        goto LABEL_15;
      }
    }
  }

  v19 = 1;
LABEL_15:
  v20 = MEMORY[0x1E69E9AC8];
  if (*MEMORY[0x1E69E9AC8] <= 0x97uLL)
  {
    ++sTotal_6326;
  }

  v21 = *(a1 + 56);
  v22 = malloc_type_zone_calloc(queryZone, 1uLL, 0x98uLL, 0x5BAF1CEAuLL);
  if (!v22 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    v31[0] = 0;
    _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", v31, 2u);
  }

  atomic_store(1u, v22);
  v22[1] = -1073627135;
  *(v22 + 7) = v21;
  *(v22 + 5) = -1;
  v22[12] = 7;
  v22[13] = v6;
  v23 = 8 * v19;
  v22[24] = v19;
  if (!(v19 >> 14) && *v20 < v23)
  {
    ++sTotal_6326;
  }

  v24 = malloc_type_zone_calloc(queryZone, 1uLL, v23, 0x5BAF1CEAuLL);
  if (!v24 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
  }

  *(v22 + 9) = v24;
  atomic_fetch_add(a1, 1u);
  **(v22 + 9) = a1;
  if (a2)
  {
    v25 = 0;
    v26 = 1;
    do
    {
      v27 = *(a3 + 8 * v25);
      if (*(v27 + 96))
      {
        v28 = 0;
        do
        {
          v29 = *(*(v27 + 72) + 8 * v28);
          if (v29)
          {
            atomic_fetch_add(v29, 1u);
          }

          *(*(v22 + 9) + 8 * (v26 + v28++)) = v29;
          v27 = *(a3 + 8 * v25);
        }

        while (v28 < *(v27 + 96));
        v26 += v28;
      }

      ++v25;
    }

    while (v25 != a2);
  }

  return v22;
}

uint64_t __extractConstrainingDocSets_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*a2 + 48);
  v4 = *(*a3 + 48);
  if (v3 == v4)
  {
    return 0;
  }

  if (v3 == 6)
  {
    return 1;
  }

  if (v4 == 6)
  {
    return 0xFFFFFFFFLL;
  }

  return 0;
}

void ContentIndexOrganizeWeightedTree(uint64_t a1)
{
  v3 = *(a1 + 12);
  v2 = *(a1 + 16);
  if (v3 != 0.0 || v2 != 0.0)
  {
LABEL_2:
    v2 = fmaxf(v3, v2);
    goto LABEL_3;
  }

  v4 = *(a1 + 48);
  if (v4 <= 3)
  {
    switch(v4)
    {
      case 0:
        goto LABEL_3;
      case 1:
        v2 = *(a1 + 12);
        goto LABEL_3;
      case 2:
LABEL_3:
        *(a1 + 24) = v2;
        break;
    }
  }

  else
  {
    if (v4 <= 5)
    {
      if (v4 != 4)
      {
        v5 = 0;
        v6 = *(a1 + 72);
        while (1)
        {
          v7 = *(a1 + 96);
          if (v5 >= v7)
          {
            break;
          }

          ContentIndexOrganizeWeightedTree(v6[v5]);
          v6 = *(a1 + 72);
          v8 = v6[v5];
          v9 = *(v8 + 24);
          if (v9 == 0.0)
          {
            v3 = *(v8 + 24);
          }

          else
          {
            v3 = v9 + v3;
          }

          ++v5;
          if (v3 == 0.0)
          {
            v7 = *(a1 + 96);
            break;
          }
        }

        qsort_b(v6, v7, 8uLL, &__block_literal_global_15_6372);
        v2 = *(a1 + 20) + v3;
        goto LABEL_3;
      }

      goto LABEL_26;
    }

    if (v4 == 6)
    {
LABEL_26:
      v13 = *(a1 + 96);
      v14 = *(a1 + 72);
      if (v13)
      {
        v15 = 0;
        do
        {
          ContentIndexOrganizeWeightedTree(v14[v15]);
          v14 = *(a1 + 72);
          v3 = fmaxf(v3, *(v14[v15++] + 24));
          v16 = *(a1 + 96);
        }

        while (v15 < v16);
      }

      else
      {
        v16 = 0;
      }

      qsort_b(v14, v16, 8uLL, &__block_literal_global_12);
      v2 = *(a1 + 20);
      goto LABEL_2;
    }

    if (v4 == 7)
    {
      if (*(a1 + 96))
      {
        v10 = 0;
        do
        {
          ContentIndexOrganizeWeightedTree(*(*(a1 + 72) + 8 * v10++));
          v11 = *(a1 + 96);
        }

        while (v10 < v11);
        v12 = (v11 - 1);
      }

      else
      {
        v12 = 0xFFFFFFFFLL;
      }

      qsort_b((*(a1 + 72) + 8), v12, 8uLL, &__block_literal_global_12);
      v2 = *(**(a1 + 72) + 24);
      goto LABEL_3;
    }
  }
}

uint64_t __sort_children_prefer_false_zero_block_invoke(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = *(*a2 + 16);
  v6 = *(*a3 + 16);
  if (v5 != v6)
  {
    if (v5 == 0.0)
    {
      return 0xFFFFFFFFLL;
    }

    if (v6 == 0.0)
    {
      return 1;
    }
  }

  v8 = *(v3 + 12);
  v9 = *(v4 + 12);
  if (v8 == v9)
  {
    goto LABEL_11;
  }

  if (v8 == 0.0)
  {
    return 0xFFFFFFFFLL;
  }

  if (v9 == 0.0)
  {
    return 1;
  }

LABEL_11:
  v10 = *(v3 + 24);
  v11 = *(v4 + 24);
  if (v10 <= v11)
  {
    return v10 < v11;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t __sort_children_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*a2 + 24);
  v4 = *(*a3 + 24);
  if (v3 > v4)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v3 < v4;
  }
}

uint64_t ContentIndexAnnotateWeightedTreeInner(uint64_t result, double a2)
{
  v2 = *&a2;
  LODWORD(a2) = *(result + 12);
  if (*&a2 != 0.0)
  {
    return result;
  }

  v3 = result;
  v4 = *(result + 16);
  if (v4 != 0.0)
  {
    return result;
  }

  v5 = *(result + 48);
  if (v5 <= 5)
  {
    if (v5 != 4)
    {
      if (v5 == 5)
      {
        v6 = *(result + 96);
        if (v6)
        {
          v7 = fmaxf(*&a2, v4);
          *&a2 = v7 + v2;
          v8 = 8 * v6 - 8;
          do
          {
            result = ContentIndexAnnotateWeightedTreeInner(*(*(v3 + 72) + v8), a2);
            v9 = *(*(v3 + 72) + v8);
            v7 = *(v9 + 24) + v7;
            *&a2 = v7 + v2;
            *(v9 + 28) = v7 + v2;
            v8 -= 8;
          }

          while (v8 != -8);
        }
      }

      return result;
    }

    goto LABEL_14;
  }

  if (v5 == 6)
  {
LABEL_14:
    v11 = *(result + 96);
    if (v11)
    {
      v12 = fmaxf(*&a2, v4);
      *&a2 = v12 + v2;
      v13 = 8 * v11 - 8;
      do
      {
        result = ContentIndexAnnotateWeightedTreeInner(*(*(v3 + 72) + v13), a2);
        v14 = *(*(v3 + 72) + v13);
        v12 = fmaxf(v12, *(v14 + 24));
        *&a2 = v12 + v2;
        *(v14 + 28) = v12 + v2;
        v13 -= 8;
      }

      while (v13 != -8);
    }

    return result;
  }

  if (v5 == 7)
  {
    v10 = fmaxf(*&a2, v4) + v2;
    *&a2 = v10;
    result = ContentIndexAnnotateWeightedTreeInner(**(result + 72), a2);
    *(v3 + 28) = *(**(v3 + 72) + 24) + v10;
  }

  return result;
}

uint64_t ContentIndexDocSetSetProximities(uint64_t a1, unsigned int a2, const void *a3)
{
  if (*(a1 + 48) != 9 || !*(a1 + 36))
  {
    return 0;
  }

  if (*(a1 + 96) >= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(a1 + 96);
  }

  if (v3 > *(a1 + 132))
  {
    v4 = a3;
    v5 = 4 * v3;
    v6 = a1;
    result = reallocf(*(a1 + 136), v5);
    *(v6 + 136) = result;
    if (!result)
    {
      return result;
    }

    a3 = v4;
    goto LABEL_12;
  }

  if (v3)
  {
    v6 = a1;
    result = *(a1 + 136);
    v5 = 4 * v3;
LABEL_12:
    memcpy(result, a3, v5);
    *(v6 + 132) = v3;
    return 1;
  }

  return 0;
}

uint64_t ContentIndexDocSetGrabConstrainingVector(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 <= 3)
  {
    if (v1 < 3)
    {
      return 0;
    }

    if (v1 != 3)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if ((v1 - 4) < 4)
    {
LABEL_3:
      if ((*(a1 + 32) & 1) == 0)
      {
        v5 = __si_assert_copy_extra_332();
        v6 = v5;
        v7 = "";
        if (v5)
        {
          v7 = v5;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "ContentIndexQuery.c", 1940, "docs->processed", v7);
        free(v6);
        if (__valid_fs(-1))
        {
          MEMORY[0xBAA] = -559038737;
          abort();
        }

        MEMORY[0xC00] = -559038737;
        abort();
      }

      v2 = a1 + 104;
      return *v2;
    }

    if (v1 != 8)
    {
      if (v1 == 9)
      {
        goto LABEL_3;
      }

LABEL_19:
      assert_invalid_doc_type(a1);
    }
  }

  v4 = *(a1 + 64);
  if (!v4)
  {
    return 0;
  }

  v2 = v4 + 88;
  return *v2;
}

uint64_t ContentIndexDocSet_PositionRead(uint64_t *a1, void *a2, int a3, _BYTE *a4, int8x8_t a5)
{
  v153 = *MEMORY[0x1E69E9840];
  v147 = 1;
  v9 = a1 + 10;
  v8 = a1[10];
  v10 = v8;
  v131 = *(v9 - 1);
  v11 = *(v9 - 13);
  v12 = *(v9 - 14) + 1;
  v145 = v11;
  v146 = v12;
  if (*(v9 - 27) == 1)
  {
    v13 = *(v8 + 48);
    if (v13 <= 3)
    {
      if (v13 < 3)
      {
        goto LABEL_35;
      }

      if (v13 != 3)
      {
        goto LABEL_147;
      }
    }

    else
    {
      if ((v13 - 4) < 4)
      {
        goto LABEL_4;
      }

      if (v13 != 8)
      {
        if (v13 == 9)
        {
LABEL_4:
          v14 = *(v8 + 80);
          if (v14)
          {
LABEL_5:
            locked = lockedCountItemsInRange(v14, *(a1 + 11), (*(a1 + 10) - 1), a5);
LABEL_36:
            if (a3)
            {
              v49 = (*(a1 + 10) - *(a1 + 11)) - locked;
              v50 = v49 & ~(v49 >> 63);
            }

            else
            {
              v50 = locked;
            }

            v51 = *__error();
            v52 = _SILogForLogForCategory(10);
            v53 = 2 * (dword_1EBF46AF4 < 4);
            if (os_log_type_enabled(v52, v53))
            {
              *buf = 134217984;
              *&buf[4] = v50;
              _os_log_impl(&dword_1C278D000, v52, v53, "Found: %ld", buf, 0xCu);
            }

            *__error() = v51;
            *a2 += v50;
            return 0;
          }

LABEL_35:
          locked = 0;
          goto LABEL_36;
        }

LABEL_147:
        assert_invalid_doc_type(v10);
      }
    }

    locked = *(v8 + 64);
    if (!locked)
    {
      goto LABEL_36;
    }

    v14 = *(locked + 88);
    if (v14)
    {
      goto LABEL_5;
    }

    goto LABEL_35;
  }

  v128 = v8;
  v129 = v8;
  v17 = *MEMORY[0x1E695E480];
  Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  v19 = CFSetCreateMutable(v17, 0, 0);
  if (*(a1 + 18))
  {
    v20 = 0;
    do
    {
      v21 = v20;
      ContentIndexDocSetIteratorFlatten(v9[v20], Mutable, v19, 0);
      v20 = v21 + 1;
    }

    while (v21 + 1 < *(a1 + 18));
  }

  v22 = v131;
  if (*(a1 + 52))
  {
    *buf = a1[1];
    *&buf[8] = 0u;
    v151 = 0u;
    v152 = 0;
    add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v24 = setThreadIdAndInfo(-1, sAssertExceptionCallbacks, 0, 0, add_explicit + 1);
    v143 = HIDWORD(v24);
    v144 = v24;
    v142 = __PAIR64__(v25, v26);
    v27 = threadData[9 * v24 + 1] + 320 * HIDWORD(v24);
    v28 = *(v27 + 312);
    v29 = *(v27 + 224);
    if (v29)
    {
      v29(*(v27 + 288));
    }

    v141 = v144;
    v140 = v143;
    v139 = v142;
    if (_setjmp(v27))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v148 = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v148, 2u);
      }

      *(v27 + 312) = v28;
      if (__THREAD_SLOT_KEY[0])
      {
        v30 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
        if (!v30)
        {
          goto LABEL_129;
        }
      }

      else
      {
        makeThreadId();
        v30 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
        if (!v30)
        {
          goto LABEL_129;
        }
      }

      v31 = v30;
      if (v30 < 0x801)
      {
LABEL_18:
        v32 = &threadData[9 * v31];
        v34 = *(v32 - 4);
        v33 = v32 - 2;
        if (v34 > v139)
        {
          v35 = v31 - 1;
          do
          {
            CIOnThreadCleanUpPop(v35);
          }

          while (*v33 > v139);
        }

        dropThreadId(v141, 1, add_explicit + 1);
        CICleanUpReset(v141, HIDWORD(v139));
LABEL_107:
        CIIndexSetDisposePerThreadCache(buf);
        if (v147 == 1)
        {
          *(a1 + 58) = 1;
        }

        CFRelease(Mutable);
        CFRelease(v19);
        return 0;
      }

LABEL_129:
      makeThreadId();
      v31 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
      goto LABEL_18;
    }

    v130 = v28;
    v135 = v19;
    v136 = Mutable;
    *(a1 + 53) = 1;
    if (v131 >= 1)
    {
      v54 = v9;
      v55 = v131;
      do
      {
        v56 = v55;
        v57 = v54 + 1;
        ContentIndexDocSetSquashUpdatesForPulse(*v54, 1, *(a1 + 6));
        v54 = v57;
        v55 = v56 - 1;
      }

      while (v56 != 1);
    }

    BulkPayloadIterator_Step(a1[2], &v146, &v145);
    v59 = *(a1 + 6);
    *(a1 + 11) = 1;
    v60 = v59;
    if (v131 >= 1)
    {
      v61 = v9;
      v62 = v131;
      do
      {
        v63 = v62;
        v64 = *(a1 + 6);
        v65 = v61 + 1;
        ContentIndexDocSetSquashUpdate(*v61, 0, v58);
        v61 = v65;
        v62 = v63 - 1;
      }

      while (v63 != 1);
      v60 = v64;
    }

    v133 = add_explicit;
    v137 = v60;
    j = 1;
    ContentIndexDocSetIteratorPreProcess(v9, v131, 0, 1, v60, *(a1 + 7));
    v67 = (*(a1[10] + 56) + 36);
    v68 = atomic_load(v67);
    v69 = atomic_load(v67);
    if ((v68 & 4) != 0 && (v69 & 0x40) != 0 && (v70 = *(a1 + 6), LODWORD(v71) = v70 - 0x4000, v70 > 0x4000))
    {
      v72 = 0;
      v73 = *(a1 + 6);
      if (v70 == 16385)
      {
        v71 = 0;
      }

      else
      {
        v71 = v71;
      }

      v126 = v146;
      v125 = v146 + 0x4000;
      do
      {
        v75 = v71;
        if (v131 >= 1)
        {
          for (i = 0; i != v131; ++i)
          {
            v137 = v73;
            for (j = v75; ContentIndexDocSetIteratorReadPositions(v9[i], a1[1], &j, &v137, v73, *(a1 + 7), v75, v72, a4); j = v75)
            {
              v137 = j;
            }

            ContentIndexDocSetIteratorProcessPositions(v9[i], buf, v75, v73, *(a1 + 7));
          }
        }

        v124 = *(a1 + 7);
        v123 = a1[1];
        processLeaves(v135, v124, 0, v75, v73, v123);
        processNodes(v136, v124, 0, v75, v73, v123);
        if (v75 <= v125)
        {
          v74 = v126;
        }

        else
        {
          v74 = (v75 - 0x4000);
        }

        v71 = v74;
        v72 = (v72 + 1);
        v73 = (v75 - 1);
      }

      while (v75 > v74);
    }

    else
    {
      if (v131 >= 1)
      {
        for (k = 0; k != v131; ++k)
        {
          while (ContentIndexDocSetIteratorReadPositions(v9[k], a1[1], &j, &v137, v59, *(a1 + 7), 1u, 0, a4))
          {
            v137 = j;
            j = 1;
          }

          v88 = *(a1 + 6);
          if (v88)
          {
            ContentIndexDocSetIteratorProcessPositions(v9[k], buf, 1, v88, *(a1 + 7));
          }
        }
      }

      v89 = *(a1 + 6);
      if (v89)
      {
        v90 = *(a1 + 7);
        v91 = a1[1];
        processLeaves(v135, v90, 0, 1, *(a1 + 6), v91);
        processNodes(v136, v90, 0, 1, v89, v91);
      }
    }

    v10 = v129;
    v92 = *(v129 + 48);
    if (v92 <= 3)
    {
      v19 = v135;
      Mutable = v136;
      v93 = v133;
      if (v92 < 3)
      {
        goto LABEL_98;
      }

      if (v92 != 3)
      {
        goto LABEL_147;
      }
    }

    else
    {
      v19 = v135;
      Mutable = v136;
      v93 = v133;
      if ((v92 - 4) < 4)
      {
        goto LABEL_91;
      }

      if (v92 != 8)
      {
        if (v92 != 9)
        {
          goto LABEL_147;
        }

LABEL_91:
        v94 = *(v128 + 80);
        if (v94)
        {
LABEL_92:
          v95 = lockedCountItemsInRange(v94, *(a1 + 11), (*(a1 + 10) - 1), v66);
          goto LABEL_99;
        }

LABEL_98:
        v95 = 0;
LABEL_99:
        if (dword_1EBF46AF4 >= 5)
        {
          v112 = *__error();
          v113 = _SILogForLogForCategory(10);
          if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
          {
            v114 = *(a1 + 11);
            v115 = *(a1 + 10) - 1;
            *v148 = 67109376;
            *v149 = v114;
            *&v149[4] = 1024;
            *&v149[6] = v115;
            _os_log_impl(&dword_1C278D000, v113, OS_LOG_TYPE_DEFAULT, "OID Range %d to %d", v148, 0xEu);
          }

          *__error() = v112;
          v19 = v135;
          Mutable = v136;
          v93 = v133;
          if (!a3)
          {
            goto LABEL_102;
          }
        }

        else if (!a3)
        {
LABEL_102:
          v97 = *__error();
          v98 = _SILogForLogForCategory(10);
          v99 = 2 * (dword_1EBF46AF4 < 4);
          if (os_log_type_enabled(v98, v99))
          {
            *v148 = 134217984;
            *v149 = v95;
            _os_log_impl(&dword_1C278D000, v98, v99, "Found: %ld", v148, 0xCu);
          }

          *__error() = v97;
          v100 = *(a1 + 7);
          *(a1 + 8) = 1;
          *(a1 + 9) = v100;
          *a2 += v95;
          v147 = 0;
          v101 = threadData[9 * v141 + 1] + 320 * v140;
          *(v101 + 312) = v130;
          v102 = *(v101 + 232);
          if (v102)
          {
            v102(*(v101 + 288));
          }

          dropThreadId(v141, 0, v93 + 1);
          goto LABEL_107;
        }

        v96 = (*(a1 + 10) - *(a1 + 11)) - v95;
        v95 = v96 & ~(v96 >> 63);
        goto LABEL_102;
      }
    }

    v109 = *(v129 + 64);
    if (v109)
    {
      v94 = *(v109 + 88);
      if (v94)
      {
        goto LABEL_92;
      }
    }

    goto LABEL_98;
  }

  v36 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v37 = setThreadIdAndInfo(-1, sAssertExceptionCallbacks, 0, 0, v36 + 1);
  v144 = HIDWORD(v37);
  *v148 = v37;
  v143 = v38;
  HIDWORD(v142) = v39;
  v40 = threadData[9 * v37 + 1] + 320 * HIDWORD(v37);
  v41 = *(v40 + 312);
  v42 = *(v40 + 224);
  if (v42)
  {
    v42(*(v40 + 288));
  }

  LODWORD(v142) = *v148;
  v141 = v144;
  v140 = v143;
  HIDWORD(v139) = HIDWORD(v142);
  if (!_setjmp(v40))
  {
    v127 = v41;
    if (v12 != v11)
    {
      ContentIndexDocSetIteratorPreProcess(v9, v131, 1, v12, v11, *(a1 + 7));
      _CIDocSetIteratorProcessPositionsUpdates(v9, v131, v12, v11, *(a1 + 7), *(*a1 + 40));
      v77 = *(a1 + 7);
      v78 = a1[1];
      processLeaves(v19, v77, 1, v12, v11, v78);
      processNodes(Mutable, v77, 1, v12, v11, v78);
    }

    if (dword_1EBF46AF4 >= 5)
    {
      v110 = *__error();
      v111 = _SILogForLogForCategory(10);
      if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        *&buf[4] = v12;
        *&buf[8] = 1024;
        *&buf[10] = v11;
        _os_log_impl(&dword_1C278D000, v111, OS_LOG_TYPE_DEFAULT, "Updates from %d to %d", buf, 0xEu);
      }

      *__error() = v110;
    }

    v79 = *a1;
    v80 = *(*a1 + 24);
    if (v80)
    {
      if (v80 != (*(*v9 + 56) + 14184))
      {
        v120 = __si_assert_copy_extra_332();
        v121 = v120;
        v122 = "";
        if (v120)
        {
          v122 = v120;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "ContentIndexQuery.c", 4072, "iterator->context->positionLock == ContentIndexGetPositionsLock(iterator->docSets[0]->ref)", v122);
        free(v121);
        if (__valid_fs(-1))
        {
          MEMORY[0xBAD] = -559038737;
          abort();
        }

        MEMORY[0xC00] = -559038737;
        abort();
      }

      posreadunlock(v80);
      v81 = *a1;
      *(v81 + 24) = 0;
      v79 = v81;
    }

    *(a1 + 52) = 1;
    *(a1 + 54) = 1;
    *(a1 + 8) = v12;
    *(a1 + 9) = v11;
    v82 = *(v79 + 36);
    if (v11 + 1 < v82)
    {
      v82 = v11 + 1;
    }

    *(a1 + 10) = v82;
    *(a1 + 11) = v12;
    BulkPayloadIterator_Step(a1[2], &v146, &v145);
    v83 = *(a1 + 9);
    if (v131 < 1)
    {
      v86 = *(a1 + 9);
    }

    else
    {
      do
      {
        v84 = *v9++;
        v85 = ContentIndexDocSetSquashUpdatesForPulse(v84, *(a1 + 8), v83);
        v86 = v85;
        *(a1 + 9) = v85;
        v83 = v85;
        --v22;
      }

      while (v22);
    }

    v105 = *(a1 + 7);
    v104 = *(a1 + 8);
    v106 = a1[1];
    processLeaves(v19, v105, 0, v104, v86, v106);
    processNodes(Mutable, v105, 0, v104, v86, v106);
    if (dword_1EBF46AF4 > 4)
    {
      v116 = *__error();
      v117 = _SILogForLogForCategory(10);
      if (os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
      {
        v118 = *(a1 + 8);
        v119 = *(a1 + 9);
        *buf = 67109376;
        *&buf[4] = v118;
        *&buf[8] = 1024;
        *&buf[10] = v119;
        _os_log_impl(&dword_1C278D000, v117, OS_LOG_TYPE_DEFAULT, "1 Disk from %d to %d", buf, 0xEu);
      }

      *__error() = v116;
    }

    v147 = 0;
    v107 = threadData[9 * v142 + 1] + 320 * v141;
    *(v107 + 312) = v127;
    v108 = *(v107 + 232);
    if (v108)
    {
      v108(*(v107 + 288));
    }

    dropThreadId(v142, 0, v36 + 1);
    goto LABEL_116;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
  }

  *(v40 + 312) = v41;
  if (__THREAD_SLOT_KEY[0])
  {
    v43 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
    if (!v43)
    {
LABEL_131:
      makeThreadId();
      v44 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
      goto LABEL_30;
    }
  }

  else
  {
    makeThreadId();
    v43 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
    if (!v43)
    {
      goto LABEL_131;
    }
  }

  v44 = v43;
  if (v43 >= 0x801)
  {
    goto LABEL_131;
  }

LABEL_30:
  v45 = &threadData[9 * v44];
  v47 = *(v45 - 4);
  v46 = v45 - 2;
  if (v47 > HIDWORD(v139))
  {
    v48 = v44 - 1;
    do
    {
      CIOnThreadCleanUpPop(v48);
    }

    while (*v46 > HIDWORD(v139));
  }

  dropThreadId(v142, 1, v36 + 1);
  CICleanUpReset(v142, v140);
LABEL_116:
  CFRelease(Mutable);
  CFRelease(v19);
  if (v147 == 1)
  {
    *(a1 + 58) = 1;
  }

  if (v147)
  {
    return 0;
  }

  else
  {
    return 35;
  }
}

void ContentIndexDocSetIteratorPreProcess(uint64_t *a1, int a2, char a3, int a4, int a5, int a6)
{
  LODWORD(v10) = a2;
  Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  if (v10)
  {
    v10 = v10;
    do
    {
      v13 = *a1++;
      ContentIndexDocSetIteratorFlatten(v13, Mutable, 0, 1);
      --v10;
    }

    while (v10);
  }

  Count = CFSetGetCount(Mutable);
  v15 = malloc_type_malloc(8 * Count, 0x2004093837F09uLL);
  CFSetGetValues(Mutable, v15);
  do
  {
    if (Count)
    {
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = Count;
      do
      {
        v20 = v15[v18];
        if (v20[8])
        {
          v19 = (v19 - 1);
          if (v18 < v19)
          {
            v15[v18] = v15[v19];
            v15[v19] = v20;
          }
        }

        else
        {
          v21 = v20[12];
          v22 = v21 - 4 < 4 || v21 == 9;
          if (v22 && (v23 = v20[24], v23))
          {
            v24 = *(v20 + 9);
            while (*(*v24 + 32) == 1)
            {
              v24 += 8;
              if (!--v23)
              {
                goto LABEL_22;
              }
            }

            v16 = 1;
          }

          else
          {
LABEL_22:
            if (v17 < v18)
            {
              v25 = v15[v17];
              v15[v17] = v20;
              v15[v18] = v25;
            }

            ++v17;
          }

          ++v18;
        }
      }

      while (v18 < v19);
    }

    else
    {
      v19 = 0;
      v17 = 0;
      v16 = 0;
    }

    if (Count < v19)
    {
      v26 = __si_assert_copy_extra_332();
      v27 = v26;
      v28 = "";
      if (v26)
      {
        v28 = v26;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "ContentIndexQuery.c", 3496, "oldNodeCount >= nodeCount", v28);
LABEL_42:
      free(v27);
      if (__valid_fs(-1))
      {
        v33 = 2989;
      }

      else
      {
        v33 = 3072;
      }

      *v33 = -559038737;
      abort();
    }

    if (v19 && !v17)
    {
      v29 = __si_assert_copy_extra_332();
      v27 = v29;
      v30 = "";
      if (v29)
      {
        v30 = v29;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "ContentIndexQuery.c", 3506, "processCount || nodeCount == 0", v30);
      goto LABEL_42;
    }

    v39 = 0;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __ContentIndexDocSetIteratorPreProcess_block_invoke;
    block[3] = &__block_descriptor_tmp_28_6446;
    block[4] = &v39;
    block[5] = v15;
    v38 = a3;
    v35 = a4;
    v36 = a5;
    v37 = a6;
    block[6] = &v39 + 1;
    dispatch_apply(v17, 0, block);
    if ((v39 & 0x100) != 0)
    {
      v31 = __si_assert_copy_extra_332();
      v27 = v31;
      v32 = "";
      if (v31)
      {
        v32 = v31;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "ContentIndexQuery.c", 3535, "__c11_atomic_load(didAssertPtr, memory_order_relaxed)==0", v32);
      goto LABEL_42;
    }

    if (v39)
    {
      break;
    }

    Count = v19;
  }

  while (((v19 != 0) & v16) != 0);
  CFRelease(Mutable);
  free(v15);
}

uint64_t ContentIndexDocSetSquashUpdatesForPulse(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = *(a1 + 48);
  if ((v6 - 4) < 4)
  {
    if (*(a1 + 96))
    {
      v7 = 0;
      do
      {
        v3 = ContentIndexDocSetSquashUpdatesForPulse(*(*(a1 + 72) + 8 * v7++), a2, v3);
      }

      while (v7 < *(a1 + 96));
    }

    return v3;
  }

  if (v6 != 3)
  {
    return v3;
  }

  v8 = *(a1 + 64);
  if (!v8 || PayloadIterator_ConsumeUpdates(v8, a2) <= a3)
  {
    return v3;
  }

  v9 = *(a1 + 64);

  return PayloadIterator_ConsumeUpdates(v9, a2);
}

uint64_t ContentIndexDocSetIteratorReadPositions(uint64_t a1, uint64_t a2, _DWORD *a3, unsigned int *a4, unsigned int a5, uint64_t a6, unsigned int a7, uint64_t a8, _BYTE *a9)
{
  v54 = *MEMORY[0x1E69E9840];
  v9 = *a3;
  v10 = *a4;
  v46 = *a4;
  v47 = v9;
  if (*a9)
  {
    goto LABEL_7;
  }

  if (v10 < v9)
  {
    v46 = v9;
    v10 = v9;
  }

  v16 = 0x1EBF46000uLL;
  if (dword_1EBF46AF4 >= 5)
  {
    v37 = *__error();
    v38 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109632;
      v49 = v9;
      v50 = 1024;
      v51 = v10;
      v52 = 1024;
      v53 = a5;
      _os_log_impl(&dword_1C278D000, v38, OS_LOG_TYPE_DEFAULT, "from %d to %d, with old end at %d", buf, 0x14u);
    }

    *__error() = v37;
    v16 = 0x1EBF46000;
  }

  v17 = *(a1 + 48);
  if (v17 > 9)
  {
    assert_invalid_doc_type(a1);
  }

  v18 = 1 << v17;
  if ((v18 & 0x10F) != 0)
  {
LABEL_7:
    LOBYTE(v19) = 0;
  }

  else if ((v18 & 0xF0) != 0)
  {
    v20 = *(a1 + 96);
    if (v20)
    {
      v21 = 0;
      v19 = 0;
      while (1)
      {
        *buf = *a3;
        v45 = *a4;
        v22 = *(*(a1 + 72) + 8 * v21);
        if (v22 != a1)
        {
          v19 |= ContentIndexDocSetIteratorReadPositions(v22, a2, buf, &v45, a5, a6, a7, a8, a9);
          if (v9 <= *buf)
          {
            LODWORD(v9) = *buf;
          }

          if (v10 >= v45)
          {
            LODWORD(v10) = v45;
          }

          if (*a9)
          {
            goto LABEL_20;
          }

          v20 = *(a1 + 96);
        }

        if (++v21 >= v20)
        {
          goto LABEL_20;
        }
      }
    }

    LOBYTE(v19) = 0;
LABEL_20:
    *a3 = v9;
    *a4 = v10;
  }

  else
  {
    if (!*(a1 + 104))
    {
      *(a1 + 104) = NormalResolvedDocSet(a6);
    }

    if (v9 <= v10)
    {
      v24 = *(a1 + 128);
      v25 = v24 & 0x7FFFFFFF;
      if (v24 < 0)
      {
        if (v25)
        {
          v29 = 0;
          v30 = 8 * v25;
          do
          {
            v31 = ContentIndexDocSetGrabConstrainingVector(*(*(a1 + 120) + v29));
            if (v31)
            {
              CIIndexSetRemoveRange(*(a1 + 104), v31, v9, v10);
            }

            v29 += 8;
          }

          while (v30 != v29);
        }
      }

      else if (v25)
      {
        v26 = 0;
        v27 = 8 * (v24 & 0x7FFFFFFF);
        do
        {
          v28 = ContentIndexDocSetGrabConstrainingVector(*(*(a1 + 120) + v26));
          if (v28)
          {
            CIIndexSetIntersectRanges(*(a1 + 104), v28, v9, v10);
          }

          v26 += 8;
        }

        while (v27 != v26);
      }

      v33 = *(a1 + 104);
      v32 = *(a1 + 112);
      if (*(v32 + 3176) == 1)
      {
        v34 = BulkPositionIterator_Step_Compressed(*(a1 + 56), v32, a2, &v47, &v46, a5, v33, a7, a8, a9);
      }

      else
      {
        if (a7 != 1)
        {
          v39 = __si_assert_copy_extra(0);
          v40 = v39;
          v41 = "";
          if (v39)
          {
            v41 = v39;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "PayloadIterator.c", 5454, "limit == 1", v41);
          free(v40);
          if (__valid_fs(-1))
          {
            MEMORY[0xBAD] = -559038737;
            abort();
          }

          MEMORY[0xC00] = -559038737;
          abort();
        }

        v34 = BulkPositionIterator_Step_Live(v32, a2, &v47, &v46, a5, v33, a9);
      }

      LOBYTE(v19) = v34;
      LODWORD(v9) = v47;
    }

    else
    {
      LOBYTE(v19) = 0;
    }

    *a3 = v9;
    *a4 = v10;
    if (*(v16 + 2804) >= 5)
    {
      v35 = *__error();
      v36 = _SILogForLogForCategory(10);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        v49 = v9;
        v50 = 1024;
        v51 = v10;
        _os_log_impl(&dword_1C278D000, v36, OS_LOG_TYPE_DEFAULT, "actually from %d to %d", buf, 0xEu);
      }

      *__error() = v35;
    }
  }

  return v19 & 1;
}

void ContentIndexDocSetIteratorProcessPositions(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  v202 = *MEMORY[0x1E69E9840];
  if (dword_1EBF46AF4 >= 5)
  {
    v45 = *__error();
    v46 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(block) = 67109376;
      DWORD1(block) = a3;
      WORD4(block) = 1024;
      *(&block + 10) = a4;
      _os_log_impl(&dword_1C278D000, v46, OS_LOG_TYPE_DEFAULT, "from %d to %d", &block, 0xEu);
    }

    *__error() = v45;
    v7 = a3;
  }

  v10 = *(a1 + 48);
  if (v10 > 9)
  {
    assert_invalid_doc_type(a1);
  }

  v11 = 1 << v10;
  if ((v11 & 0x10F) == 0)
  {
    if ((v11 & 0xF0) != 0)
    {
      if (*(a1 + 96))
      {
        v12 = 0;
        do
        {
          ContentIndexDocSetIteratorProcessPositions(*(*(a1 + 72) + 8 * v12++), a2, v7, a4, a5);
        }

        while (v12 < *(a1 + 96));
      }

      return;
    }

    LODWORD(v180) = a5;
    LODWORD(v181) = v7;
    v182 = a4;
    v183 = a1;
    v13 = *(a1 + 112);
    v186 = a2;
    v14 = *a2;
    v15 = *(v13 + 3348);
    if (v15)
    {
      v16 = 0;
      v185 = v13 + 24;
      v17 = v13;
      v184 = v13;
      do
      {
        v18 = v185 + 392 * v16;
        v19 = *(v18 + 384);
        if (*(v19 + 20))
        {
          v20 = 0;
          do
          {
            v21 = v17 + 4 * v20;
            v22 = *(v21 + 344);
            if (v22)
            {
              v23 = *(v19 + 8 * v20 + 32);
              v24 = v17 + 8 * v20;
              v25 = *(v24 + 216);
              v26 = *(v19 + 19) ^ 1;
              *&block = MEMORY[0x1E69E9820];
              *(&block + 1) = 0x40000000;
              *&v196 = ___innerIssueBuffer_block_invoke;
              *(&v196 + 1) = &__block_descriptor_tmp_62_13736;
              v200 = v22;
              v197 = v14;
              v198 = v25;
              v201 = v26;
              v199 = 0;
              dispatch_async(v23, &block);
              *(v21 + 344) = 0;
              *(v24 + 216) = 0;
              v19 = *(v18 + 384);
            }

            ++v20;
          }

          while (v20 < *(v19 + 20));
          v13 = v184;
          v15 = *(v184 + 3348);
        }

        ++v16;
        v17 += 392;
      }

      while (v16 < v15);
    }

    else
    {
      v27 = *(v13 + 408);
      if (*(v27 + 20))
      {
        v28 = 0;
        v29 = v13 + 344;
        do
        {
          v30 = *(v29 + 4 * v28);
          if (v30)
          {
            v31 = *(v27 + 8 * v28 + 32);
            v32 = v29 + 8 * v28;
            v33 = *(v32 - 128);
            v34 = *(v27 + 19) ^ 1;
            *&block = MEMORY[0x1E69E9820];
            *(&block + 1) = 0x40000000;
            *&v196 = ___innerIssueBuffer_block_invoke;
            *(&v196 + 1) = &__block_descriptor_tmp_62_13736;
            v200 = v30;
            v197 = v14;
            v198 = v33;
            v201 = v34;
            v199 = 0;
            dispatch_async(v31, &block);
            *(v29 + 4 * v28) = 0;
            *(v32 - 128) = 0;
            v27 = *(v13 + 408);
          }

          ++v28;
        }

        while (v28 < *(v27 + 20));
      }
    }

    if (*(v13 + 3180))
    {
      v35 = 0;
      do
      {
        dispatch_barrier_sync(*(v13 + 3192 + 8 * v35++), &__block_literal_global_65);
      }

      while (v35 < *(v13 + 3180));
    }

    dispatch_barrier_sync(*(v13 + 3184), &__block_literal_global_68);
    v36 = v183;
    v37 = v182;
    if (!*(v183 + 80))
    {
      *(v183 + 80) = CIIndexSetCreateWithRange(0, v180, 1);
    }

    v38 = v181;
    if (v181 <= v37)
    {
      block = 0u;
      v196 = 0u;
      initializeEnumberatorForRangeLocked(&block, *(v36 + 104), v181, v37);
      if (dword_1EBF46AF4 >= 5)
      {
        v47 = *__error();
        v48 = _SILogForLogForCategory(10);
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 67109376;
          DWORD1(buf) = v181;
          WORD4(buf) = 1024;
          *(&buf + 10) = v182;
          _os_log_impl(&dword_1C278D000, v48, OS_LOG_TYPE_DEFAULT, "Read range: %d %d", &buf, 0xEu);
        }

        *__error() = v47;
        v36 = v183;
        v37 = v182;
        v38 = v181;
      }

      locked = lockedCountItemsInRange(*(v36 + 104), v38, v37, v39);
      if (dword_1EBF46AF4 >= 5)
      {
        v49 = locked;
        v50 = *__error();
        v51 = _SILogForLogForCategory(10);
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 67109120;
          DWORD1(buf) = v49;
          _os_log_impl(&dword_1C278D000, v51, OS_LOG_TYPE_DEFAULT, "%d items", &buf, 8u);
        }

        *__error() = v50;
        v36 = v183;
        locked = v49;
        v42 = *(v183 + 132);
        if (v42)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v42 = *(v36 + 132);
        if (v42)
        {
LABEL_32:
          v43 = *(*(v36 + 136) + 4 * (v42 - 1));
LABEL_43:
          v176 = v43;
          v52 = 0;
          LODWORD(v184) = locked;
          v53 = locked;
          *&v41 = 67109120;
          v174 = v41;
          *&v41 = 67109376;
          v175 = v41;
          while (1)
          {
            while (1)
            {
              v54 = _CIIndexSetEnumeratorNext(&block);
              v55 = v54 - 1 > 0xFFFFFFFD || v52 >= v53;
              if (v55)
              {
                goto LABEL_156;
              }

              buf = 0u;
              v194 = 0u;
              v56 = *(**(v36 + 72) + 72);
              if (v52 < *(v56 + 168))
              {
                if (*(*(v56 + 160) + 8 * v52))
                {
                  break;
                }
              }

              if (dword_1EBF46AF4 >= 5)
              {
                v145 = v54;
                v146 = *__error();
                v147 = _SILogForLogForCategory(10);
                if (os_log_type_enabled(v147, OS_LOG_TYPE_DEFAULT))
                {
                  v148 = *(*(**(v36 + 72) + 72) + 168);
                  *v189 = v175;
                  v190 = v145;
                  v191 = 1024;
                  v192 = v148;
                  _os_log_impl(&dword_1C278D000, v147, OS_LOG_TYPE_DEFAULT, "!!! No: %d (size %d)", v189, 0xEu);
                }

                *__error() = v146;
              }

              ++v52;
            }

            v182 = v54;
            v181 = v172;
            MEMORY[0x1EEE9AC00](0);
            v58 = &v172[-((v57 + 15) & 0x7FFFFFFFF0)];
            bzero(v58, v57);
            v59 = *(v36 + 96);
            bzero(v58, 40 * v59);
            if (v59)
            {
              v60 = 0;
              v61 = *(v36 + 72);
              v62 = v58 + 1;
              while (1)
              {
                v63 = *(*(v61 + 8 * v60) + 72);
                if (*(v63 + 168) <= v52)
                {
                  break;
                }

                v64 = *(*(v63 + 160) + 8 * v52);
                *(v62 - 1) = v64;
                *v62 = v60;
                if (!v64)
                {
                  goto LABEL_45;
                }

                ++v60;
                v62 += 10;
                if (v59 == v60)
                {
                  goto LABEL_57;
                }
              }

LABEL_156:
              bzero(v188, 0x400uLL);
              if (*(v36 + 96))
              {
                v155 = v184 == 0;
              }

              else
              {
                v155 = 1;
              }

              if (!v155)
              {
                v156 = 0;
                v157 = 0;
                v158 = *(v36 + 72);
                do
                {
                  v159 = 0;
                  v160 = *(*(v158 + 8 * v156) + 72);
                  v161 = *(v160 + 160);
                  v185 = v160;
                  do
                  {
                    if (v159 >= *(v160 + 168))
                    {
                      break;
                    }

                    v162 = *(v161 + 8 * v159);
                    if (v162)
                    {
                      if (v157 == 127)
                      {
                        v163 = v53;
                        v164 = 0;
                        v165 = 0;
                        do
                        {
                          v166 = v188[v164];
                          if (*(v166 + 16) <= 0xFFFFFFF6)
                          {
                            blob_free(*(v166 + 40), *(v166 + 32), v186);
                            *(v166 + 32) = 0;
                          }

                          *(v166 + 40) = v165;
                          ++v164;
                          v165 = v166;
                        }

                        while (v164 != 127);
                        cicachelistenqueue(*v186 + 8, v166, 20);
                        v157 = 0;
                        v53 = v163;
                        v160 = v185;
                      }

                      v188[v157++] = v162;
                    }

                    *(v161 + 8 * v159) = 0;
                    if (dword_1EBF46AF4 >= 5)
                    {
                      v182 = *__error();
                      v167 = _SILogForLogForCategory(10);
                      if (os_log_type_enabled(v167, OS_LOG_TYPE_DEFAULT))
                      {
                        *&buf = __PAIR64__(v159, v175);
                        WORD4(buf) = 1024;
                        *(&buf + 10) = v156;
                        _os_log_impl(&dword_1C278D000, v167, OS_LOG_TYPE_DEFAULT, "Cleaning up %d for child %d", &buf, 0xEu);
                      }

                      *__error() = v182;
                    }

                    ++v159;
                  }

                  while (v159 != v53);
                  v168 = v183;
                  v158 = *(v183 + 72);
                  v169 = *(*(v158 + 8 * v156) + 72);
                  if (v184 < *(v169 + 168))
                  {
                    v170 = 0;
                    v171 = v53;
                    do
                    {
                      *(*(v169 + 160) + v170) = *(*(v169 + 160) + 8 * v171);
                      *(*(*(*(*(v168 + 72) + 8 * v156) + 72) + 160) + 8 * v171++) = 0;
                      v158 = *(v168 + 72);
                      v169 = *(*(v158 + 8 * v156) + 72);
                      v170 += 8;
                    }

                    while (v171 < *(v169 + 168));
                  }

                  ++v156;
                }

                while (v156 < *(v168 + 96));
                if (v157)
                {
                  CIIndexSetReleaseToCache(v188, v157, v186);
                }
              }

              return;
            }

LABEL_57:
            v65 = *(v36 + 36);
            if (!v65)
            {
              goto LABEL_66;
            }

            if (v65 != 3)
            {
              goto LABEL_75;
            }

            if (*(v36 + 132))
            {
              *(v58 + 4) = 0;
              if (v59 <= 1)
              {
                qsort(v58, v59, 0x28uLL, compare_indexSetByCount);
                goto LABEL_125;
              }

              v66 = 0;
              v67 = *(v36 + 136);
              v68 = v59 - 1;
              v69 = v58 + 7;
              do
              {
                v70 = *v67++;
                v66 += v70;
                *v69 = v66;
                v69 += 10;
                --v68;
              }

              while (v68);
            }

            else
            {
LABEL_66:
              *(v58 + 3) = 0;
              if (v59 < 2)
              {
                goto LABEL_75;
              }

              if (v59 == 2)
              {
                v71 = 1;
                goto LABEL_73;
              }

              v72 = v59 - 1;
              v73 = (v58 + 12);
              v74 = 2;
              v75 = (v59 - 1) & 0xFFFFFFFFFFFFFFFELL;
              do
              {
                *(v73 - 10) = v74 - 1;
                *v73 = v74;
                v73 += 20;
                v74 += 2;
                v75 -= 2;
              }

              while (v75);
              if (v72 != ((v59 - 1) & 0xFFFFFFFFFFFFFFFELL))
              {
                v71 = v72 | 1;
LABEL_73:
                v76 = &v58[5 * v71 + 2];
                do
                {
                  *v76 = v71;
                  v76 += 10;
                  ++v71;
                }

                while (v59 != v71);
              }
            }

LABEL_75:
            qsort(v58, v59, 0x28uLL, compare_indexSetByCount);
            if (v65 && v65 != 3)
            {
              v77 = *(v36 + 96);
              v78 = v176;
              if (v77 >= 2)
              {
                v79 = 0;
                v80 = *(v36 + 132);
                v81 = v77 - 1;
                v82 = v58 + 52;
                do
                {
                  v83 = v79 + 1;
                  v84 = v78;
                  if (v79 + 1 <= v80)
                  {
                    v84 = *(*(v36 + 136) + 4 * v79);
                  }

                  *(v82 + 3) = v84;
                  *v82 = 0;
                  v82[8] = 0;
                  v82 += 40;
                  ++v79;
                }

                while (v81 != v83);
              }

              *(v58 + 20) = 0;
              *(v58 + 12) = 0;
              initializeEnumberatorForRangeLocked(&buf, *v58, 0, 0x7FFFFFFFu);
              LODWORD(v185) = 0;
              v177 = v58 + 3;
              v178 = v58 - 1;
              v85 = -1;
              v179 = v182;
              v180 = v58 + 4;
              while (1)
              {
                do
                {
                  v86 = _CIIndexSetEnumeratorNext(&buf);
                  if (v86 - 1 > 0xFFFFFFFD)
                  {
                    goto LABEL_45;
                  }

                  v187 = v85;
                  v87 = *(v58 + 2);
                  v88 = v87;
                  LODWORD(v58[5 * v87 + 2]) = v86;
                  v89 = *(v36 + 96);
                  v90 = &v58[5 * v87];
                  v91 = *(v90 + 4);
                  *(v90 + 7) = v91;
                  *(v90 + 8) = v91;
                  *(v90 + 20) = 1;
                  if (v65 == 2)
                  {
                    if (v87 + 1 < v89)
                    {
                      v105 = v89 - 1;
                      v106 = v91 + 1;
                      v107 = &v180[5 * v87 + 5];
                      v108 = v87;
                      do
                      {
                        *(v107 - 12) = 0;
                        v109 = *(v107 - 2) + LODWORD(v58[5 * v108 + 4]);
                        *(v107 - 1) = v106;
                        *v107 = v109;
                        ++v108;
                        ++v106;
                        v107 += 10;
                      }

                      while (v105 != v108);
                    }

                    if (v87)
                    {
                      v110 = &v177[5 * v87];
                      v111 = &v180[5 * v87 - 5];
                      v112 = -v87;
                      v113 = 1;
                      do
                      {
                        *(v111 - 12) = 0;
                        v114 = *(v111 - 1);
                        v115 = *v110;
                        v110 -= 10;
                        v55 = v114 >= v115;
                        v116 = v114 - v115;
                        if (!v55)
                        {
                          v116 = 0;
                        }

                        v117 = v91 - v113;
                        if (v91 < v113)
                        {
                          v117 = 0;
                        }

                        *(v111 - 1) = v116;
                        *v111 = v117;
                        v111 -= 10;
                        ++v113;
                      }

                      while (v112 + v113 != 1);
                    }
                  }

                  else if (v65 == 1)
                  {
                    if (v87 + 1 < v89)
                    {
                      v92 = v89 - 1;
                      v93 = &v180[5 * v87 + 5];
                      v94 = v87;
                      do
                      {
                        *(v93 - 12) = 0;
                        v95 = &v58[5 * v94];
                        v96 = *(v93 - 2);
                        v98 = *(v95 + 7);
                        v97 = *(v95 + 8);
                        v55 = v98 >= v96;
                        v99 = v98 - v96;
                        if (!v55)
                        {
                          v99 = 0;
                        }

                        *(v93 - 1) = v99;
                        *v93 = v97 + v96;
                        ++v94;
                        v93 += 10;
                      }

                      while (v92 != v94);
                    }

                    if (v87)
                    {
                      v100 = &v58[5 * v87];
                      v101 = *(v100 + 7);
                      v102 = *(v100 + 8);
                      v103 = &v178[5 * v88];
                      do
                      {
                        *(v103 - 12) = 0;
                        v104 = *(v103 - 2);
                        v55 = v101 >= v104;
                        v101 -= v104;
                        if (!v55)
                        {
                          v101 = 0;
                        }

                        v102 += v104;
                        *(v103 - 1) = v101;
                        *v103 = v102;
                        v103 -= 10;
                        --v88;
                      }

                      while (v88);
                    }
                  }

                  if (*(v36 + 144))
                  {
                    v118 = &v187;
                  }

                  else
                  {
                    v118 = 0;
                  }
                }

                while (!checkNearness(1u, v36, v86, v58, v86, v86, v118, v65));
                v120 = v187;
                v121 = v36;
                v122 = ++v187;
                v123 = *(v121 + 144);
                if (v123 && v122 < v85)
                {
                  changesSetMinCount(v123, v179, v120 + 1);
                  v85 = v122;
                }

                v36 = v183;
                if (dword_1EBF46AF4 >= 5)
                {
                  v173 = *__error();
                  v124 = _SILogForLogForCategory(10);
                  if (os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT))
                  {
                    *v189 = v174;
                    v190 = v182;
                    _os_log_impl(&dword_1C278D000, v124, OS_LOG_TYPE_DEFAULT, "Yes: %d", v189, 8u);
                  }

                  *__error() = v173;
                  if (v185)
                  {
LABEL_116:
                    if (!*(v36 + 144))
                    {
                      goto LABEL_45;
                    }

                    goto LABEL_122;
                  }
                }

                else if (v185)
                {
                  goto LABEL_116;
                }

                v125 = *(v36 + 80);
                *v189 = -1;
                _CIIndexSetAddIndex(v125, v182, 0, v189, v119);
                if (!*(v36 + 144))
                {
                  goto LABEL_45;
                }

LABEL_122:
                if (v85 == *(v36 + 96))
                {
                  goto LABEL_45;
                }

                LODWORD(v185) = 1;
              }
            }

LABEL_125:
            v126 = *(v36 + 96);
            if (v126 < 2)
            {
              goto LABEL_134;
            }

            v127 = *(v58 + 4);
            if (v126 == 2)
            {
              v128 = 1;
              goto LABEL_132;
            }

            v129 = v126 - 1;
            v130 = v58 + 12;
            v131 = (v126 - 1) & 0xFFFFFFFFFFFFFFFELL;
            do
            {
              v132 = *v130 - v127;
              *(v130 - 11) = *(v130 - 10) - v127;
              *(v130 - 1) = v132;
              v130 += 20;
              v131 -= 2;
            }

            while (v131);
            if (v129 != ((v126 - 1) & 0xFFFFFFFFFFFFFFFELL))
            {
              v128 = v129 | 1;
LABEL_132:
              v133 = v126 - v128;
              v134 = &v58[5 * v128 + 2];
              do
              {
                *(v134 - 1) = *v134 - v127;
                v134 += 10;
                --v133;
              }

              while (v133);
            }

LABEL_134:
            *(v58 + 3) = 0;
            initializeEnumberatorForRangeLocked(&buf, *v58, 0, 0x7FFFFFFFu);
            if (dword_1EBF46AF4 > 4)
            {
              v149 = *__error();
              v150 = _SILogForLogForCategory(10);
              if (os_log_type_enabled(v150, OS_LOG_TYPE_DEFAULT))
              {
                *v189 = v175;
                v190 = buf;
                v191 = 1024;
                v192 = DWORD1(buf);
                _os_log_impl(&dword_1C278D000, v150, OS_LOG_TYPE_DEFAULT, "Enumerator for range: %d %d", v189, 0xEu);
              }

              *__error() = v149;
              v36 = v183;
            }

            v135 = v58 + 13;
LABEL_136:
            v136 = _CIIndexSetEnumeratorNext(&buf);
            if ((v136 + 1) < 2)
            {
              *&buf = 0xFFFFFFFF00000000;
              if (dword_1EBF46AF4 >= 5)
              {
                v153 = *__error();
                v154 = _SILogForLogForCategory(10);
                if (os_log_type_enabled(v154, OS_LOG_TYPE_DEFAULT))
                {
                  *v189 = v174;
                  v190 = v182;
                  _os_log_impl(&dword_1C278D000, v154, OS_LOG_TYPE_DEFAULT, "No: %d", v189, 8u);
                }

                *__error() = v153;
                v36 = v183;
              }
            }

            else
            {
              v138 = v136;
              v139 = 0;
              v140 = v135;
              while (++v139 < *(v36 + 96))
              {
                v141 = v140 + 10;
                v142 = *(v140 - 3);
                if (v142)
                {
                  HasIndex = CIIndexSetHasIndex(v142, *v140 + v138);
                  v140 = v141;
                  if (HasIndex)
                  {
                    continue;
                  }
                }

                goto LABEL_136;
              }

              if (dword_1EBF46AF4 >= 5)
              {
                v151 = *__error();
                v152 = _SILogForLogForCategory(10);
                if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
                {
                  *v189 = v174;
                  v190 = v182;
                  _os_log_impl(&dword_1C278D000, v152, OS_LOG_TYPE_DEFAULT, "Yes: %d", v189, 8u);
                }

                *__error() = v151;
                v36 = v183;
              }

              v144 = *(v36 + 80);
              *v189 = -1;
              _CIIndexSetAddIndex(v144, v182, 0, v189, v137);
              *&buf = 0xFFFFFFFF00000000;
            }

LABEL_45:
            ++v52;
          }
        }
      }

      v43 = 5;
      goto LABEL_43;
    }
  }
}

uint64_t checkNearness(unsigned int a1, uint64_t a2, int a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int *a7, uint64_t a8)
{
  v9 = a4 + 40 * a1;
  v10 = *v9;
  if (*v9)
  {
    v17 = *(a2 + 96);
    memset(v97, 0, sizeof(v97));
    v18 = a4 + 40 * *(v9 + 8);
    initializeEnumberatorForRangeLocked(v97, v10, *(v18 + 28), *(v18 + 32));
    v91 = a2;
    v92 = a7;
    if (a7)
    {
      v19 = *a7;
    }

    else
    {
      v19 = -1;
    }

    v95 = v19;
    v93 = 0;
    v21 = a1 + 1;
    v94 = v17 - 2 - a1 + 1;
    v22 = v17 - 1;
    while (1)
    {
      while (1)
      {
        do
        {
          v25 = _CIIndexSetEnumeratorNext(v97);
          if (v25 - 1 > 0xFFFFFFFD)
          {
LABEL_116:
            v20 = v93;
            return v20 & 1;
          }
        }

        while (v25 == a3);
        *(v9 + 12) = v25;
        v26 = *(v9 + 8);
        *(a4 + 40 * v26 + 16) = v25;
        if (v21 < v17)
        {
          v27 = a1 + 1;
          if (v17 - 2 == a1)
          {
            goto LABEL_21;
          }

          v28 = (a4 + 40 * v21 + 48);
          v29 = v94 & 0x1FFFFFFFELL;
          do
          {
            v30 = *(v28 - 10);
            v31 = *v28;
            v28 += 20;
            *(a4 + 40 * v30 + 20) = 0;
            *(a4 + 40 * v31 + 20) = 0;
            v29 -= 2;
          }

          while (v29);
          v27 = (v94 & 0x1FFFFFFFELL) + v21;
          if (v94 != (v94 & 0x1FFFFFFFELL))
          {
LABEL_21:
            v32 = v17 - v27;
            v33 = (a4 + 8 + 40 * v27);
            do
            {
              v34 = *v33;
              v33 += 10;
              *(a4 + 40 * v34 + 20) = 0;
              --v32;
            }

            while (v32);
          }
        }

        v35 = a4 + 40 * v26;
        v36 = *(v35 + 16);
        *(v35 + 28) = v36;
        *(v35 + 32) = v36;
        *(v35 + 20) = 1;
        if (a8 <= 1)
        {
          break;
        }

        if (a8 == 2)
        {
          if (v26 + 1 >= v17)
          {
LABEL_46:
            if (!v26)
            {
              goto LABEL_7;
            }

            v53 = 40 * v26 + 24;
            v54 = 40 * (v26 - 1);
            v55 = 1;
            v56 = a4;
            while (1)
            {
              v57 = (v56 + v54);
              if (*(v56 + v54 + 20) == 1)
              {
                break;
              }

              v58 = v57[7];
              v59 = *(v56 + v53);
              v66 = v58 >= v59;
              v60 = v58 - v59;
              if (!v66)
              {
                v60 = 0;
              }

              v61 = v36 - v55;
              if (v36 < v55)
              {
                v61 = 0;
              }

              v57[7] = v60;
              v57[8] = v61;
              v56 -= 40;
              ++v55;
              LODWORD(v26) = v26 - 1;
              if (!v26)
              {
                goto LABEL_7;
              }
            }

            v73 = v57[4];
            if (v73 < v36)
            {
              v74 = *(a4 + 40 * v26 + 24);
              v66 = v36 >= v74;
              v75 = v36 - v74;
              if (!v66)
              {
                v75 = 0;
              }

              if (v73 > v75)
              {
                goto LABEL_7;
              }
            }
          }

          else
          {
            v49 = v36 + 1;
            v50 = a4 + 40 * (v26 + 1);
            v51 = v26;
            while (*(v50 + 20) != 1)
            {
              v52 = *(v50 + 24) + *(a4 + 40 * v51 + 32);
              *(v50 + 28) = v49;
              *(v50 + 32) = v52;
              ++v51;
              ++v49;
              v50 += 40;
              if (v22 == v51)
              {
                goto LABEL_46;
              }
            }

            v67 = *(v50 + 16);
            if (v67 > v36 && v67 < *(v50 + 24) + v36)
            {
              goto LABEL_7;
            }
          }
        }

        else if (a8 != 3)
        {
          goto LABEL_7;
        }
      }

      if (a8)
      {
        if (a8 == 1)
        {
          if (v26 + 1 >= v17)
          {
LABEL_32:
            if (!v26)
            {
              goto LABEL_7;
            }

            v44 = a4 - 40 + 40 * v26;
            while ((*(v44 + 20) & 1) == 0)
            {
              v45 = *(v44 + 24);
              v46 = *(v44 + 68);
              v47 = *(v44 + 72);
              v66 = v46 >= v45;
              v48 = v46 - v45;
              if (!v66)
              {
                v48 = 0;
              }

              *(v44 + 28) = v48;
              *(v44 + 32) = v47 + v45;
              v44 -= 40;
              if (!--v26)
              {
                goto LABEL_7;
              }
            }

            v68 = *(v44 + 16);
            v69 = *(a4 + 40 * v26 + 24);
            v70 = v36 - v69;
            if (v36 < v69)
            {
              v70 = 0;
            }

            v71 = v69 + v36;
            if (v68 > v70 && v68 < v71)
            {
              goto LABEL_7;
            }
          }

          else
          {
            v37 = a4 + 40 * (v26 + 1);
            v38 = v26;
            while (*(v37 + 20) != 1)
            {
              v39 = a4 + 40 * v38;
              v40 = *(v37 + 24);
              v42 = *(v39 + 28);
              v41 = *(v39 + 32);
              v66 = v42 >= v40;
              v43 = v42 - v40;
              if (!v66)
              {
                v43 = 0;
              }

              *(v37 + 28) = v43;
              *(v37 + 32) = v41 + v40;
              ++v38;
              v37 += 40;
              if (v22 == v38)
              {
                goto LABEL_32;
              }
            }

            v62 = *(v37 + 16);
            v63 = *(v37 + 24);
            v64 = v36 - v63;
            if (v36 < v63)
            {
              v64 = 0;
            }

            v65 = v63 + v36;
            v66 = v62 <= v64 || v62 >= v65;
            if (!v66)
            {
              goto LABEL_7;
            }
          }
        }

        else
        {
LABEL_7:
          if (v25 >= a5)
          {
            v23 = a5;
          }

          else
          {
            v23 = v25;
          }

          if (v25 <= a6)
          {
            v24 = a6;
          }

          else
          {
            v24 = v25;
          }

          if (v24 - v23 <= v95)
          {
            if (v21 >= v17)
            {
              v77 = *(a4 + 16);
              if (a8 > 1)
              {
                if (a8 != 2)
                {
                  v81 = *(a4 + 16);
                  goto LABEL_109;
                }

                if (v17 < 2)
                {
LABEL_108:
                  v81 = *(a4 + 16);
                  goto LABEL_109;
                }

                v86 = (a4 + 64);
                v87 = v17 - 1;
                v88 = *(a4 + 16);
                v81 = v88;
                while (1)
                {
                  v89 = *(v86 - 2);
                  if (v89 <= v88 || v89 >= *v86 + v88)
                  {
                    break;
                  }

                  if (v81 >= v89)
                  {
                    v81 = *(v86 - 2);
                  }

                  if (v77 <= v89)
                  {
                    v77 = *(v86 - 2);
                  }

                  v86 += 10;
                  v88 = v89;
                  if (!--v87)
                  {
                    goto LABEL_109;
                  }
                }
              }

              else
              {
                if (a8 != 1)
                {
                  goto LABEL_108;
                }

                v78 = (a4 + 64);
                v79 = v17 - 1;
                v80 = *(a4 + 16);
                v81 = v80;
                if (v17 < 2)
                {
LABEL_109:
                  if (!v92)
                  {
LABEL_115:
                    v93 = 1;
                    goto LABEL_116;
                  }

                  v76 = v77 - v81;
                  if (*v92 < v76)
                  {
                    v76 = *v92;
                  }

                  *v92 = v76;
LABEL_113:
                  v93 = 1;
                  if (v76 + 1 == v17)
                  {
                    goto LABEL_116;
                  }
                }

                else
                {
                  while (1)
                  {
                    v82 = *(v78 - 2);
                    v83 = v80 - *v78;
                    if (v80 < *v78)
                    {
                      v83 = 0;
                    }

                    v84 = *v78 + v80;
                    if (v82 <= v83 || v82 >= v84)
                    {
                      break;
                    }

                    v78 += 10;
                    if (v81 >= v82)
                    {
                      v81 = v82;
                    }

                    if (v77 <= v82)
                    {
                      v77 = v82;
                    }

                    v80 = v82;
                    if (!--v79)
                    {
                      goto LABEL_109;
                    }
                  }
                }
              }
            }

            else if (checkNearness(v21, v91, v25, a4, v23, v24, v92, a8))
            {
              if (!v92)
              {
                goto LABEL_115;
              }

              v76 = *v92;
              goto LABEL_113;
            }
          }
        }
      }
    }
  }

  v20 = 0;
  return v20 & 1;
}

uint64_t compare_indexSetByCount(_DWORD **a1, uint64_t a2, int8x8_t a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = v3[4];
  v6 = *(*a2 + 16);
  if (v5 == -1)
  {
    if (v6 == -1)
    {
      locked = lockedCountItemsInRange(v3, v3[5], v3[6], a3);
      return locked - lockedCountItemsInRange(v4, v4[5], v4[6], v10);
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v7 = v5 - v6;
    if (v6 == -1)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return v7;
    }
  }
}

void __ContentIndexDocSetIteratorPreProcess_block_invoke(uint64_t a1, uint64_t a2)
{
  makeThreadId();
  v52 = 0;
  v51 = 1;
  if (**(a1 + 32))
  {
    return;
  }

  v4 = *(*(*(a1 + 40) + 8 * a2) + 56);
  if (*(v4 + 8) != 1)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", buf, 2u);
    }

    goto LABEL_38;
  }

  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v6 = setThreadIdAndInfo(*(v4 + 64), sIndexExceptionCallbacks, v4, 0x20000000, add_explicit + 1);
  *buf = v6;
  v7 = threadData[9 * v6 + 1] + 320 * HIDWORD(v6);
  v49 = HIDWORD(v6);
  v48 = __PAIR64__(v8, v9);
  *(v7 + 216) = 0;
  v10 = *(v7 + 312);
  v11 = *(v7 + 224);
  if (v11)
  {
    v11(*(v7 + 288));
  }

  v47 = *buf;
  v46 = v49;
  v45 = v48;
  if (!_setjmp(v7))
  {
    v51 = 0;
    v20 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v21 = setThreadIdAndInfo(-1, sAssertExceptionCallbacks, 0, 0, v20 + 1);
    v43 = HIDWORD(v21);
    *v44 = v21;
    v42 = __PAIR64__(v22, v23);
    v24 = threadData[9 * v21 + 1] + 320 * HIDWORD(v21);
    v25 = *(v24 + 312);
    v26 = *(v24 + 224);
    if (v26)
    {
      v26(*(v24 + 288));
    }

    v41 = *v44;
    v40 = v43;
    v39 = v42;
    if (!_setjmp(v24))
    {
      v52 = 1;
      ContentIndexDocSetIteratorPreProcessNode(*(*(a1 + 40) + 8 * a2), *(a1 + 56), *(a1 + 60), *(a1 + 64));
      v52 = 0;
      v34 = threadData[9 * v41 + 1] + 320 * v40;
      *(v34 + 312) = v25;
      v35 = *(v34 + 232);
      if (v35)
      {
        v35(*(v34 + 288));
      }

      dropThreadId(v41, 0, v20 + 1);
      goto LABEL_35;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v38 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v38, 2u);
    }

    *(v24 + 312) = v25;
    v27 = v39;
    if (__THREAD_SLOT_KEY[0])
    {
      v28 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
      if (!v28)
      {
        goto LABEL_46;
      }
    }

    else
    {
      makeThreadId();
      v28 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
      if (!v28)
      {
        goto LABEL_46;
      }
    }

    v29 = v28;
    if (v28 < 0x801)
    {
LABEL_28:
      v30 = &threadData[9 * v29];
      v32 = *(v30 - 4);
      v31 = (v30 - 2);
      if (v32 > v27)
      {
        v33 = v29 - 1;
        do
        {
          CIOnThreadCleanUpPop(v33);
        }

        while (*v31 > v27);
      }

      dropThreadId(v41, 1, v20 + 1);
      CICleanUpReset(v41, HIDWORD(v39));
LABEL_35:
      v36 = threadData[9 * v47 + 1] + 320 * v46;
      *(v36 + 312) = v10;
      v37 = *(v36 + 232);
      if (v37)
      {
        v37(*(v36 + 288));
      }

      dropThreadId(v47, 0, add_explicit + 1);
      goto LABEL_38;
    }

LABEL_46:
    makeThreadId();
    v29 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
    goto LABEL_28;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *v44 = 0;
    _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v44, 2u);
  }

  *(v7 + 312) = v10;
  if ((~*(v7 + 212) & 0xA0000000) == 0)
  {
    v12 = *(v7 + 288);
    if (v12)
    {
      _CIMakeInvalid(v12);
    }
  }

  v13 = v45;
  if (__THREAD_SLOT_KEY[0])
  {
    v14 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
    if (!v14)
    {
LABEL_44:
      makeThreadId();
      v15 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
      goto LABEL_14;
    }
  }

  else
  {
    makeThreadId();
    v14 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
    if (!v14)
    {
      goto LABEL_44;
    }
  }

  v15 = v14;
  if (v14 >= 0x801)
  {
    goto LABEL_44;
  }

LABEL_14:
  v16 = &threadData[9 * v15];
  v18 = *(v16 - 4);
  v17 = (v16 - 2);
  if (v18 > v13)
  {
    v19 = v15 - 1;
    do
    {
      CIOnThreadCleanUpPop(v19);
    }

    while (*v17 > v13);
  }

  dropThreadId(v47, 1, add_explicit + 1);
  CICleanUpReset(v47, HIDWORD(v45));
LABEL_38:
  if (v52 == 1)
  {
    **(a1 + 48) = 1;
  }

  if (v51 == 1)
  {
    **(a1 + 32) = 1;
  }
}

void ContentIndexDocSetIteratorPreProcessNode(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v87 = *MEMORY[0x1E69E9840];
  makeThreadId();
  v8 = *(a1 + 56);
  if (*(v8 + 8) == 1)
  {
    add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    *buf = 0;
    v85 = 0;
    v10 = setThreadIdAndInfo(*(v8 + 64), sIndexExceptionCallbacks, v8, 0x20000000, add_explicit + 1);
    *buf = HIDWORD(v10);
    *&buf[4] = v10;
    v85 = __PAIR64__(v11, v12);
    v13 = threadData;
    v14 = threadData[9 * v10 + 1] + 320 * HIDWORD(v10);
    *(v14 + 216) = 0;
    v15 = *(v14 + 312);
    v16 = *(v14 + 224);
    v17 = v14;
    if (v16)
    {
      v16(*(v14 + 288));
    }

    v84 = *&buf[4];
    v83 = *buf;
    v82 = v85;
    if (_setjmp(v17))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *&v81[4] = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", &v81[4], 2u);
      }

      *(v17 + 312) = v15;
      if ((~*(v17 + 212) & 0xA0000000) == 0)
      {
        v18 = *(v17 + 288);
        if (v18)
        {
          _CIMakeInvalid(v18);
        }
      }

      v19 = v82;
      if (__THREAD_SLOT_KEY[0])
      {
        v20 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
        if (!v20)
        {
          goto LABEL_95;
        }
      }

      else
      {
        makeThreadId();
        v20 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
        if (!v20)
        {
          goto LABEL_95;
        }
      }

      v21 = v20;
      if (v20 < 0x801)
      {
LABEL_13:
        v22 = &threadData[9 * v21];
        v24 = *(v22 - 4);
        v23 = (v22 - 2);
        if (v24 > v19)
        {
          v25 = v21 - 1;
          do
          {
            CIOnThreadCleanUpPop(v25);
          }

          while (*v23 > v19);
        }

        dropThreadId(v84, 1, add_explicit + 1);
        CICleanUpReset(v84, HIDWORD(v82));
        goto LABEL_93;
      }

LABEL_95:
      makeThreadId();
      v21 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
      goto LABEL_13;
    }

    v26 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v27 = setThreadIdAndInfo(-1, sAssertExceptionCallbacks, 0, 0, v26 + 1);
    *v81 = HIDWORD(v27);
    *&v81[4] = v27;
    v80 = __PAIR64__(v28, v29);
    v30 = threadData[9 * v27 + 1] + 320 * HIDWORD(v27);
    v31 = *(v30 + 312);
    v32 = *(v30 + 224);
    if (v32)
    {
      v32(*(v30 + 288));
    }

    v79 = *&v81[4];
    v78 = *v81;
    v77 = v80;
    if (_setjmp(v30))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v76 = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v76, 2u);
      }

      *(v30 + 312) = v31;
      v34 = v77;
      if (__THREAD_SLOT_KEY[0])
      {
        v35 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
        if (!v35)
        {
          goto LABEL_97;
        }
      }

      else
      {
        makeThreadId();
        v35 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
        if (!v35)
        {
          goto LABEL_97;
        }
      }

      v36 = v35;
      if (v35 < 0x801)
      {
LABEL_27:
        v37 = &threadData[9 * v36];
        v39 = *(v37 - 4);
        v38 = (v37 - 2);
        if (v39 > v34)
        {
          v40 = v36 - 1;
          do
          {
            CIOnThreadCleanUpPop(v40);
          }

          while (*v38 > v34);
        }

        dropThreadId(v79, 1, v26 + 1);
        CICleanUpReset(v79, HIDWORD(v77));
LABEL_90:
        v69 = v13[9 * v84 + 1] + 320 * v83;
        *(v69 + 312) = v15;
        v70 = *(v69 + 232);
        if (v70)
        {
          v70(*(v69 + 288));
        }

        dropThreadId(v84, 0, add_explicit + 1);
        goto LABEL_93;
      }

LABEL_97:
      makeThreadId();
      v36 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
      goto LABEL_27;
    }

    v41 = *(a1 + 48);
    if (v41 <= 4)
    {
      if (v41 >= 4)
      {
        if (v41 == 4)
        {
          if (!*(a1 + 104))
          {
            *(a1 + 104) = NormalResolvedDocSet(a4);
          }

          if (*(a1 + 96))
          {
            v42 = 0;
            do
            {
              v43 = ContentIndexDocSetGrabConstrainingVector(*(*(a1 + 72) + 8 * v42));
              if (v43)
              {
                CIIndexSetAddRange(*(a1 + 104), v43, a2, a3, v33.n128_u64[0]);
              }

              ++v42;
            }

            while (v42 < *(a1 + 96));
          }

          goto LABEL_83;
        }

LABEL_98:
        assert_invalid_doc_type(a1);
      }

LABEL_83:
      if (a2 == 1)
      {
        v66 = *(a1 + 48);
        if (v66 == 9 || (v66 & 0xFFFFFFFC) == 4)
        {
          CIIndexSetShrink(*(a1 + 104), v33.n128_u64[0]);
        }
      }

      v67 = v13[9 * v79 + 1] + 320 * v78;
      *(v67 + 312) = v31;
      v68 = *(v67 + 232);
      if (v68)
      {
        v68(*(v67 + 288));
      }

      dropThreadId(v79, 0, v26 + 1);
      goto LABEL_90;
    }

    if (v41 <= 6)
    {
      if (v41 != 5)
      {
        if (*(a1 + 96))
        {
          if (!*(a1 + 104))
          {
            *(a1 + 104) = NormalResolvedDocSet(a4);
          }

          v44 = ContentIndexDocSetGrabConstrainingVector(**(a1 + 72));
          _CIIndexSetClearRange(*(a1 + 104), a2, a3);
          if (v44)
          {
            CIIndexSetAddRange(*(a1 + 104), v44, a2, a3, v45);
          }

          CIIndexSetInvertRange(*(a1 + 104), a2, a3);
        }

        goto LABEL_83;
      }
    }

    else
    {
      if (v41 == 7)
      {
        if (*(a1 + 96))
        {
          if (!*(a1 + 104))
          {
            *(a1 + 104) = NormalResolvedDocSet(a4);
          }

          v51 = ContentIndexDocSetGrabConstrainingVector(**(a1 + 72));
          if (v51)
          {
            v52 = v51;
            if (v51[4] != -1 && (v53 = v51, locked = lockedCountItemsInRange(v51, a2, a3, v33.n128_u64[0]), v52 = v53, locked >> 13))
            {
              CIIndexSetAddRange(*(a1 + 104), v53, a2, a3, v33.n128_u64[0]);
              if (*(a1 + 96) >= 2u)
              {
                v64 = 1;
                do
                {
                  v65 = ContentIndexDocSetGrabConstrainingVector(*(*(a1 + 72) + 8 * v64));
                  if (v65)
                  {
                    CIIndexSetRemoveRange(*(a1 + 104), v65, a2, a3);
                  }

                  ++v64;
                }

                while (v64 < *(a1 + 96));
              }
            }

            else
            {
              v55 = a3 - 0x2000;
              v73 = a2 + 0x2000;
              v74 = v15;
              if (a2 + 0x2000 >= a3)
              {
                v55 = a2;
              }

              v56 = a3;
              do
              {
                v57 = v13;
                v58 = v31;
                v59 = v26;
                v60 = v55;
                v61 = v52;
                CIIndexSetAddRange(*(a1 + 104), v52, v55, v56, v33.n128_u64[0]);
                if (*(a1 + 96) >= 2u)
                {
                  v62 = 1;
                  do
                  {
                    v63 = ContentIndexDocSetGrabConstrainingVector(*(*(a1 + 72) + 8 * v62));
                    if (v63)
                    {
                      CIIndexSetRemoveRange(*(a1 + 104), v63, v60, v56);
                    }

                    ++v62;
                  }

                  while (v62 < *(a1 + 96));
                }

                v55 = v60 - 0x2000;
                if (v60 <= v73)
                {
                  v55 = a2;
                }

                v56 = v60;
                v52 = v61;
                v26 = v59;
                v31 = v58;
                v13 = v57;
                v15 = v74;
              }

              while (v60 > a2);
            }
          }
        }

        goto LABEL_83;
      }

      if (v41 == 8)
      {
        goto LABEL_83;
      }

      if (v41 != 9)
      {
        goto LABEL_98;
      }
    }

    v46 = *(a1 + 96);
    if (!*(a1 + 104))
    {
      *(a1 + 104) = NormalResolvedDocSet(a4);
    }

    if (v46)
    {
      v75 = v31;
      v71 = &v71;
      v72 = v46;
      v47 = 8 * v46;
      MEMORY[0x1EEE9AC00](v33);
      v48 = &v71 - ((8 * v46 + 15) & 0xFFFFFFFF0);
      bzero(&v71 - ((v47 + 15) & 0xFFFFFFFF0), v47);
      v49 = 0;
      while (1)
      {
        v50 = ContentIndexDocSetGrabConstrainingVector(*(*(a1 + 72) + v49));
        if (!v50)
        {
          break;
        }

        *&v48[v49] = v50;
        v49 += 8;
        if (v47 == v49)
        {
          CIIndexSetAddIntersectionInRange(*(a1 + 104), (&v71 - ((v47 + 15) & 0xFFFFFFFF0)), v72, a2, a3, v33);
          break;
        }
      }

      LODWORD(v31) = v75;
    }

    goto LABEL_83;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *&buf[4] = 0;
    _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", &buf[4], 2u);
  }

LABEL_93:
  *(a1 + 32) = 1;
}

BOOL ci_lt_l1_score(uint64_t a1, unint64_t a2, unint64_t a3, unsigned int a4, float a5, float a6)
{
  if (*(a1 + 69) != 1)
  {
    if (*a1 >= __PAIR128__(a3, a2))
    {
      if (*(a1 + 8) != a3 || *a1 != a2)
      {
        return 0;
      }

      v10 = *(a1 + 52);
      if (v10 >= a6 && (v10 != a6 || *(a1 + 48) < a4))
      {
        return 0;
      }
    }

    return 1;
  }

  v6 = *(a1 + 60);
  if (v6 == a5)
  {
    v7 = *(a1 + 52);
    if (v7 < a6 || v7 == a6 && *(a1 + 48) >= a4)
    {
      return 1;
    }
  }

  if (v6 >= a5)
  {
    return v6 == 100.0;
  }

  else
  {
    return a5 != 100.0;
  }
}

float ContentIndexDocSetComputeScore(uint64_t a1, uint64_t a2, uint64_t a3, uint8_t *a4, __n128 a5)
{
  v61 = *MEMORY[0x1E69E9840];
  if (dword_1EBF46AD0 >= 5)
  {
    v50 = a5.n128_u32[0];
    v51 = a2;
    v52 = *__error();
    v53 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      v54 = *(a1 + 12);
      v55 = *(a1 + 16);
      *buf = 134218240;
      v58 = v54;
      v59 = 2048;
      v60 = v55;
      _os_log_impl(&dword_1C278D000, v53, OS_LOG_TYPE_DEFAULT, "ContentIndexDocSetComputeScore: (%f, %f)", buf, 0x16u);
    }

    *__error() = v52;
    a2 = v51;
    a5.n128_u32[0] = v50;
  }

  v8 = 0.0;
  if (*(a1 + 28) >= a5.n128_f32[0])
  {
    v9 = *(a1 + 48);
    if (v9 > 2 || (v8 = *(a1 + 20), v8 == 0.0))
    {
      if (*(a1 + 12) != 0.0 || *(a1 + 16) != 0.0)
      {
        v8 = *(a1 + 20);
        if (v9 <= 3)
        {
          if (v9 < 3)
          {
            goto LABEL_16;
          }

          if (v9 != 3)
          {
            goto LABEL_69;
          }
        }

        else
        {
          if ((v9 - 4) < 4)
          {
            goto LABEL_9;
          }

          if (v9 != 8)
          {
            if (v9 != 9)
            {
              goto LABEL_69;
            }

LABEL_9:
            v10 = *(a1 + 80);
            if (v10)
            {
              goto LABEL_10;
            }

            goto LABEL_16;
          }
        }

        v19 = *(a1 + 64);
        if (v19)
        {
          v10 = *(v19 + 88);
          if (v10)
          {
LABEL_10:
            v11 = a2;
            HasIndexWithHint = CIIndexSetHasIndexWithHint(v10, a2, (a1 + 40));
            a2 = v11;
            if (!a3)
            {
              goto LABEL_11;
            }

            goto LABEL_17;
          }
        }

LABEL_16:
        HasIndexWithHint = v9 == 1;
        if (!a3)
        {
LABEL_11:
          if (HasIndexWithHint)
          {
            v13 = *(a1 + 52);
            if (v13 != 3)
            {
              if (v13 != 1)
              {
                goto LABEL_23;
              }

              goto LABEL_21;
            }

            goto LABEL_27;
          }

          goto LABEL_18;
        }

LABEL_17:
        if (!HasIndexWithHint)
        {
          v15 = *(a1 + 52);
          if (v15 != 3)
          {
            if (v15 != 1)
            {
              goto LABEL_23;
            }

LABEL_21:
            v16 = *(a1 + 48);
            if (v16 <= 9)
            {
              v17 = 1 << v16;
              if ((v17 & 0x307) == 0)
              {
                if ((v17 & 0xF0) != 0)
                {
                  v18 = *(a1 + 88);
                  if (!v18)
                  {
                    goto LABEL_38;
                  }
                }

                else
                {
                  v38 = *(a1 + 64);
                  if (!v38)
                  {
                    goto LABEL_23;
                  }

                  v18 = *(v38 + 96);
                  if (!v18)
                  {
                    goto LABEL_38;
                  }
                }

                LOBYTE(v18) = CIIndexSetHasIndexWithHint(v18, a2, (a1 + 44));
                goto LABEL_38;
              }

LABEL_23:
              LOBYTE(v18) = 0;
LABEL_38:
              *a4 = v18;
              v14 = 12;
              goto LABEL_39;
            }

LABEL_69:
            assert_invalid_doc_type(a1);
          }

LABEL_27:
          LOBYTE(v18) = 1;
          goto LABEL_38;
        }

LABEL_18:
        v14 = 16;
LABEL_39:
        v20 = *(a1 + v14);
        return v20 + v8;
      }

      if (v9 <= 4)
      {
        if (v9 < 3)
        {
          return a3;
        }

        v8 = 0.0;
        if (v9 == 3)
        {
          return v8;
        }

        if (v9 != 4)
        {
          goto LABEL_69;
        }

        if (*(a1 + 96))
        {
          v30 = 0;
          v31 = 0;
          v32 = -3.4028e38;
          do
          {
            buf[0] = 0;
            v33 = *(*(a1 + 72) + 8 * v30);
            if (v32 > *(v33 + 24))
            {
              break;
            }

            v34 = a2;
            v35 = a5.n128_u32[0];
            a5.n128_f32[0] = ContentIndexDocSetComputeScore(v33, a2, a3, buf, a5);
            v36 = a5.n128_f32[0] <= v32;
            if (a5.n128_f32[0] < v32)
            {
              a2 = v34;
              a5.n128_u32[0] = v35;
            }

            else
            {
              v37 = a5.n128_u32[0];
              a2 = v34;
              a5.n128_u32[0] = v35;
              if (v36)
              {
                v31 = (v31 & 1) != 0 ? buf[0] : 0;
              }

              else
              {
                v31 = buf[0];
                v32 = *&v37;
              }
            }

            ++v30;
          }

          while (v30 < *(a1 + 96));
          goto LABEL_91;
        }

LABEL_90:
        v31 = 0;
        v32 = -3.4028e38;
LABEL_91:
        *a4 = v31 & 1;
        return fmaxf(*(a1 + 20), v32);
      }

      if (v9 > 7)
      {
        v8 = 0.0;
        if ((v9 - 8) < 2)
        {
          return v8;
        }

        goto LABEL_69;
      }

      if (v9 == 5)
      {
        buf[0] = 0;
        v44 = a2;
        v45 = a5.n128_f32[0];
        v8 = ContentIndexDocSetComputeScore(**(a1 + 72), a2, a3, buf, a5);
        v47 = buf[0];
        if (v8 != 0.0)
        {
          v48 = 1;
          while (v48 < *(a1 + 96))
          {
            v56 = 0;
            v46.n128_f32[0] = v45 - v8;
            v46.n128_f32[0] = ContentIndexDocSetComputeScore(*(*(a1 + 72) + 8 * v48), v44, a3, &v56, v46);
            if (v46.n128_f32[0] == 0.0)
            {
              *a4 = v56;
              return 0.0;
            }

            v8 = v46.n128_f32[0] + v8;
            v47 |= v56;
            ++v48;
            if (v8 == 0.0)
            {
              break;
            }
          }
        }

        *a4 = v47;
        if (v8 != 0.0)
        {
          v20 = *(a1 + 20);
          return v20 + v8;
        }
      }

      else
      {
        if (v9 == 6)
        {
          if (*(a1 + 96))
          {
            v39 = 0;
            v31 = 0;
            v32 = -3.4028e38;
            do
            {
              buf[0] = 0;
              v40 = a2;
              v41 = a5.n128_u32[0];
              a5.n128_f32[0] = ContentIndexDocSetComputeScore(*(*(a1 + 72) + 8 * v39), a2, a3 ^ 1, buf, a5);
              v42 = a5.n128_f32[0] <= v32;
              if (a5.n128_f32[0] < v32)
              {
                a2 = v40;
                a5.n128_u32[0] = v41;
              }

              else
              {
                v43 = a5.n128_u32[0];
                a2 = v40;
                a5.n128_u32[0] = v41;
                if (v42)
                {
                  if (v31)
                  {
                    v31 = buf[0];
                  }

                  else
                  {
                    v31 = 0;
                  }
                }

                else
                {
                  v31 = buf[0];
                  v32 = *&v43;
                }
              }

              ++v39;
            }

            while (v39 < *(a1 + 96));
            goto LABEL_91;
          }

          goto LABEL_90;
        }

        buf[0] = 0;
        v22 = a2;
        v24 = ContentIndexDocSetComputeScore(**(a1 + 72), a2, a3, buf, a5);
        v25 = buf[0];
        if (*(a1 + 96) < 2u)
        {
          v29 = 1;
          v26 = 3.4028e38;
        }

        else
        {
          v26 = 3.4028e38;
          v27 = 1;
          v28 = v22;
          do
          {
            v56 = 0;
            v23.n128_u64[0] = 0;
            v23.n128_f32[0] = ContentIndexDocSetComputeScore(*(*(a1 + 72) + 8 * v27), v28, a3 ^ 1, &v56, v23);
            if (v23.n128_f32[0] <= v26)
            {
              if (v23.n128_f32[0] >= v26)
              {
                if (v25)
                {
                  v25 = v56;
                }
              }

              else
              {
                v26 = v23.n128_f32[0];
              }
            }

            v28 = v22;
            ++v27;
            v29 = v26 != 0.0;
          }

          while (v27 < *(a1 + 96) && v26 != 0.0);
        }

        *a4 = v25;
        v49 = v26 + v24;
        if ((v26 + v24) != 0.0)
        {
          v24 = *(a1 + 20) + v24;
          v49 = v24 + v26;
        }

        if (v24 != 0.0 && v29)
        {
          return v49;
        }

        else
        {
          return 0.0;
        }
      }
    }
  }

  return v8;
}

_BYTE *do_shifted_and(_BYTE *result, const unsigned __int8 *a2, unsigned int a3, char a4)
{
  if (a3 >= 1)
  {
    v4 = a3;
    v5 = a2 + 1;
    do
    {
      v6 = *(v5 - 1) >> a4;
      v7 = *v5++;
      *result++ &= (v7 << (8 - a4)) | v6;
      --v4;
    }

    while (v4);
  }

  return result;
}

_BYTE *_lt_trie_make_node()
{
  v0 = malloc_type_malloc(0x18uLL, 0x1090040201C2EDAuLL);
  v0[17] = 4;
  *v0 = malloc_type_malloc(4uLL, 0x100004077774924uLL);
  *(v0 + 1) = malloc_type_malloc(0x20uLL, 0x2004093837F09uLL);
  v0[18] = 0;
  v0[16] = -1;
  return v0;
}

_BYTE *lt_trie_make_with_unicode(unsigned __int8 *a1, int a2, char a3)
{
  LODWORD(v4) = a2;
  node = _lt_trie_make_node();
  v7 = node;
  if (v4)
  {
    v4 = v4;
    do
    {
      v8 = node;
      v9 = *a1++;
      *(*node + node[18]) = *(&tcm + v9);
      node = _lt_trie_make_node();
      v10 = v8[18];
      *(*(v8 + 1) + 8 * v10) = node;
      v8[18] = v10 + 1;
      if (v4 == 1)
      {
        node[16] = a3;
      }

      --v4;
    }

    while (v4);
  }

  return v7;
}

void **lt_trie_union(uint64_t a1, void **a2)
{
  if (!a1)
  {
    return a2;
  }

  if (!a2)
  {
    return a1;
  }

  node = _lt_trie_make_node();
  v5 = node;
  v6 = *(a1 + 16);
  if (v6 != 255 || (v6 = *(a2 + 16), v6 != 255))
  {
    node[16] = v6;
  }

  v7 = 0;
  v8 = 0;
  while (v8 < *(a1 + 18) || v7 < *(a2 + 18))
  {
    v9 = v5[17];
    if (v5[18] >= v9)
    {
      v5[17] = 2 * v9;
      *v5 = malloc_type_realloc(*v5, 2 * (v9 & 0x7F), 0x100004077774924uLL);
      *(v5 + 1) = malloc_type_realloc(*(v5 + 1), 8 * v5[17], 0x2004093837F09uLL);
    }

    if (v7 == *(a2 + 18))
    {
      LOBYTE(v10) = *(*a1 + v8);
      v11 = v5[18];
      goto LABEL_15;
    }

    v12 = *a2;
    if (v8 == *(a1 + 18))
    {
      LOBYTE(v13) = v12[v7];
      v11 = v5[18];
      goto LABEL_19;
    }

    v10 = *(*a1 + v8);
    v13 = v12[v7];
    v11 = v5[18];
    if (v10 >= v13)
    {
      if (v10 <= v13)
      {
        *(*v5 + v11) = v10;
        v16 = lt_trie_union(*(*(a1 + 8) + 8 * v8), *(a2[1] + v7));
        v17 = v5[18];
        *(*(v5 + 1) + 8 * v17) = v16;
        v5[18] = v17 + 1;
        ++v8;
        goto LABEL_20;
      }

LABEL_19:
      *(*v5 + v11) = v13;
      v15 = v5[18];
      *(*(v5 + 1) + 8 * v15) = *(a2[1] + v7);
      v5[18] = v15 + 1;
LABEL_20:
      ++v7;
    }

    else
    {
LABEL_15:
      *(*v5 + v11) = v10;
      v14 = v5[18];
      *(*(v5 + 1) + 8 * v14) = *(*(a1 + 8) + 8 * v8);
      v5[18] = v14 + 1;
      ++v8;
    }
  }

  _lt_trie_free_node(a1);
  _lt_trie_free_node(a2);
  return v5;
}

void _lt_trie_free_node(void **a1)
{
  free(*a1);
  free(a1[1]);

  free(a1);
}

void lt_trie_free(uint64_t a1)
{
  if (*(a1 + 18))
  {
    v2 = 0;
    do
    {
      lt_trie_free(*(*(a1 + 8) + 8 * v2++));
    }

    while (v2 < *(a1 + 18));
  }

  _lt_trie_free_node(a1);
}

uint64_t __SIIsAppleInternal_block_invoke()
{
  result = MGGetBoolAnswer();
  SIIsAppleInternal_internal = result;
  return result;
}

uint64_t __SIBullseyeNoForceUnigramsDefault_block_invoke()
{
  keyExistsAndHasValidFormat = 0;
  v0 = *MEMORY[0x1E695E8A8];
  CFPreferencesAddSuitePreferencesToApp(*MEMORY[0x1E695E8A8], @"com.apple.spotlightui");
  result = CFPreferencesGetAppBooleanValue(@"SIBullseyeNoForceUnigrams", v0, &keyExistsAndHasValidFormat);
  if (result)
  {
    v2 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  SIBullseyeNoForceUnigramsDefault_sUnigrams = v3;
  return result;
}

void SISimulateCrashForPid(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    v4 = 3134249728;
    if (a1)
    {
      v4 = a1;
    }

    v5 = 134218242;
    v6 = v4;
    v7 = 2112;
    v8 = a2;
    _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "%lld %@", &v5, 0x16u);
  }
}

uint64_t versionNineResetSentinelData(unsigned int a1, unsigned __int8 *a2, double *a3, unsigned int *a4, __n128 a5, double a6)
{
  v42 = *MEMORY[0x1E69E9840];
  if (a1 - 366 < 0xFFFFFE93 || a2 == 0)
  {
    return 0;
  }

  if (*a3 == 0.0)
  {
    return 0;
  }

  v12 = *a4;
  if (!*a4)
  {
    return 0;
  }

  v14 = 0;
  v15 = 0;
  a5.n128_f64[0] = vabdd_f64(a5.n128_f64[0], *a3) / 86400.0;
  v16 = llround(a5.n128_f64[0]);
  LODWORD(v17) = *a2;
  v18 = a2;
  while (v12 > 2 * v14 && v16 > v17)
  {
    v19 = v15 + 1;
    v20 = v14 + 1;
    if (v14 + 1 < a1)
    {
      v18 = &a2[2 * v20];
      v21 = *v18;
      LODWORD(v17) = v17 + v21;
      if (2 * v20 < v12 && v21 == 255)
      {
        v22 = v14 + 2;
        v18 = &a2[2 * v22];
        if (!v18[1])
        {
          v17 = v17 + *v18;
          v23 = v15 + 2;
          if (v16 > v17)
          {
            v19 = v23;
          }

          v20 = v22;
        }
      }
    }

    v14 = v20;
    v15 = v19;
    if (v20 >= a1)
    {
      goto LABEL_21;
    }
  }

  v19 = v15;
LABEL_21:
  MEMORY[0x1EEE9AC00](a5);
  v25 = &buf[-((v24 + 15) & 0x1FFFFFFF0)];
  bzero(v25, v24);
  v26 = *a4;
  bzero(v25, *a4);
  if (a1 == v19)
  {
    LOBYTE(v27) = 0;
    LODWORD(v28) = 0;
    *a3 = a6;
LABEL_23:
    *&v25[v28] = v27 | 0x100;
    v29 = (v26 + 2);
    *a4 = v29;
    memcpy(a2, v25, v29);
    return 1;
  }

  v30 = 0;
  v31 = a1;
  v32 = a2;
  do
  {
    v33 = *v32;
    v32 += 2;
    v30 += v33;
    --v31;
  }

  while (v31);
  v34 = v17 * 86400.0 + *a3;
  *a3 = v34;
  *v18 = 0;
  v27 = v17 - v30 + ((a6 - v34) / 86400.0);
  if (v27 < 0x16E)
  {
    v28 = 2 * (a1 - v19);
    *a4 = v28;
    memcpy(v25, &a2[2 * v19], v28);
    *v25 = *v18;
    if (v27 < 0x100)
    {
      v26 = v28;
    }

    else
    {
      *&v25[v28 + 2] = (v27 + 1);
      v26 = v28 + 2;
      LOBYTE(v27) = -1;
    }

    goto LABEL_23;
  }

  v35 = *__error();
  v36 = _SILogForLogForCategory(7);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v39 = "versionNineResetSentinelData";
    v40 = 1024;
    v41 = 176;
    _os_log_error_impl(&dword_1C278D000, v36, OS_LOG_TYPE_ERROR, "%s:%d: Date too distant while restting sentinel", buf, 0x12u);
  }

  v37 = __error();
  result = 0;
  *v37 = v35;
  return result;
}

void *__versionNineUpdateDataAndLength_block_invoke(uint64_t a1, void *__dst)
{
  __src = 256;
  result = memcpy(__dst, &__src, *(a1 + 40));
  **(a1 + 32) = *(a1 + 40);
  return result;
}

uint64_t markItemAsRenderedOrEngaged(uint64_t a1, uint64_t a2, unsigned int a3, _DWORD *a4, int a5, double a6)
{
  v8 = a3;
  v50 = *MEMORY[0x1E69E9840];
  v41 = a3;
  v11 = a6;
  v12 = 86400 * (a6 / 0x15180);
  v13 = v12;
  v14.n128_f64[0] = CFAbsoluteTimeGetCurrent();
  result = 0;
  if (v8)
  {
    v16 = 0;
  }

  else
  {
    v16 = a5;
  }

  if (((((86400 * (v14.n128_f64[0] / 0x15180)) - v12) / 86400.0) - 366) >= 0xFFFFFE91 && (v16 & 1) == 0)
  {
    v40 = 0.0;
    v17 = 0.0;
    if (a5)
    {
      if (v8 >= 0x2E4)
      {
        v18 = *__error();
        v19 = _SILogForLogForCategory(7);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "markItemAsRenderedOrEngaged";
          *&buf[12] = 1024;
          *&buf[14] = 312;
          v20 = "%s:%d: Incorrect data size in counts code";
LABEL_38:
          _os_log_error_impl(&dword_1C278D000, v19, OS_LOG_TYPE_ERROR, v20, buf, 0x12u);
          goto LABEL_39;
        }

        goto LABEL_39;
      }

      if (a2 && v8 >= 9 && *a2 == 9)
      {
        v40 = *(a2 + 1);
        memcpy((a1 + 9), (a2 + 9), v8 - 9);
        v41 = v8 - 9;
        v17 = v40;
        v8 -= 9;
      }
    }

    v21 = (a1 + 9);
    if (v11 == v11 - v12)
    {
      v13 = (86400 * (CFAbsoluteTimeGetCurrent() / 0x15180));
    }

    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 0x40000000;
    *&buf[16] = __versionNineUpdateDataAndLength_block_invoke;
    v47 = &__block_descriptor_tmp_6531;
    v49 = 2;
    v48 = &v41;
    if (v17 == 0.0)
    {
      *v21 = 256;
    }

    else
    {
      v22 = llround((v8 >> 1));
      if (!v22)
      {
        goto LABEL_30;
      }

      v23 = v21 + v8 - 2;
      if (!*(v23 + 1))
      {
        v23 = v23 & 0xFFFFFFFFFFFF0000 | *(v21 + v8 - 4);
      }

      v24 = 0;
      v25 = llround((v13 - v17) / 86400.0);
      v26 = v22;
      v27 = (a1 + 9);
      do
      {
        v28 = *v27;
        v27 += 2;
        v24 += v28;
        --v26;
      }

      while (v26);
      if (v25 >= 365)
      {
        v14.n128_f64[0] = fabs(v13 + -31449600.0);
        if ((versionNineResetSentinelData(v22, (a1 + 9), &v40, &v41, v14, v13) & 1) == 0)
        {
          v29 = *__error();
          v30 = _SILogForLogForCategory(7);
          if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
LABEL_25:
            v31 = __error();
            v32 = 0;
            *v31 = v29;
            goto LABEL_31;
          }

          *v42 = 136315394;
          v43 = "versionNineUpdateDataAndLength";
          v44 = 1024;
          v45 = 233;
          v35 = "%s:%d: Failed reseting sentinel date";
LABEL_56:
          _os_log_error_impl(&dword_1C278D000, v30, OS_LOG_TYPE_ERROR, v35, v42, 0x12u);
          goto LABEL_25;
        }

        goto LABEL_30;
      }

      if (v25 > -2)
      {
        if (v25 == v24)
        {
          v34 = *(v23 + 1);
          if (v34 != 255)
          {
            *(v23 + 1) = v34 + 1;
          }
        }

        else
        {
          if (v22 >= 0x16D)
          {
            v29 = *__error();
            v30 = _SILogForLogForCategory(7);
            if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_25;
            }

            *v42 = 136315394;
            v43 = "versionNineUpdateDataAndLength";
            v44 = 1024;
            v45 = 241;
            v35 = "%s:%d: Beyond max entries in counts or tried adding out of order";
            goto LABEL_56;
          }

          v36 = v17 + v24 * 86400.0;
          if (v13 < v36 || (v37 = ((v13 - v36) / 86400.0), v37 >= 0x16E))
          {
            v29 = *__error();
            v30 = _SILogForLogForCategory(7);
            if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_25;
            }

            *v42 = 136315394;
            v43 = "versionNineUpdateDataAndLength";
            v44 = 1024;
            v45 = 251;
            v35 = "%s:%d: Beyond max entries in counts or tried adding out of order in adding new";
            goto LABEL_56;
          }

          if (v37 < 0x100)
          {
            *(v21 + v8) = v37 | 0x100;
            v39 = v8 + 2;
          }

          else
          {
            v38 = (v21 + v8);
            *v38 = 511;
            v38[1] = (v37 + 1);
            v39 = v8 + 4;
          }

          v41 = v39;
        }

LABEL_30:
        v32 = 1;
LABEL_31:
        if (v41 - 731 > 0xFFFFFD1B)
        {
          if (v32)
          {
            *a4 = v41 + 9;
            *a1 = 9;
            *(a1 + 1) = v40;
            return 1;
          }

          v18 = *__error();
          v19 = _SILogForLogForCategory(7);
          if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_39;
          }

          *buf = 136315394;
          *&buf[4] = "markItemAsRenderedOrEngaged";
          *&buf[12] = 1024;
          *&buf[14] = 339;
          v20 = "%s:%d: Failed updating render/engagement data";
          goto LABEL_38;
        }

        v18 = *__error();
        v19 = _SILogForLogForCategory(7);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "markItemAsRenderedOrEngaged";
          *&buf[12] = 1024;
          *&buf[14] = 331;
          v20 = "%s:%d: Incorrect data size in counts code";
          goto LABEL_38;
        }

LABEL_39:
        v33 = __error();
        result = 0;
        *v33 = v18;
        return result;
      }

      *v21 = 256;
    }

    v41 = 2;
    v40 = v13;
    goto LABEL_30;
  }

  return result;
}

uint64_t _sdbGetProtectionClass(int *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  if (*a1 != 1685287992)
  {
    v5 = *__error();
    v6 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *a1;
      *buf = 136315650;
      v12 = "db_get_protection_class";
      v13 = 1024;
      v14 = 259;
      v15 = 1024;
      v16 = v7;
      _os_log_error_impl(&dword_1C278D000, v6, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v5;
    v8 = __si_assert_copy_extra_332();
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 259, v10);
    free(v9);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  v1 = *(a1 + 106);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 44);
  if (v2 == -1)
  {
    return 0;
  }

  return fcntl(v2, 63);
}

uint64_t _sdbMatchAddress(uint64_t result, char *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v2 = result;
    if (*result != 1685287992)
    {
      v5 = *__error();
      v6 = _SILogForLogForCategory(4);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = *v2;
        *buf = 136315650;
        v12 = "db_match_address";
        v13 = 1024;
        v14 = 438;
        v15 = 1024;
        v16 = v7;
        _os_log_error_impl(&dword_1C278D000, v6, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
      }

      *__error() = v5;
      v8 = __si_assert_copy_extra_332();
      v9 = v8;
      if (v8)
      {
        v10 = v8;
      }

      else
      {
        v10 = "";
      }

      __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 438, v10);
      free(v9);
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    if ((*(result + 804) & 0x14) != 0)
    {
      if (_data_map_match_address(*(result + 880), a2) & 1) != 0 || (_data_map_match_address(*(v2 + 888), a2) & 1) != 0 || (_data_map_match_address(*(v2 + 896), a2) & 1) != 0 || (_data_map_match_address(*(v2 + 904), a2) & 1) != 0 || (_data_map_match_address(*(v2 + 912), a2))
      {
        return 1;
      }

      else
      {
        v4 = *(v2 + 920);

        return _data_map_match_address(v4, a2);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

char *db_create_datastore(unsigned int a1, uint64_t a2, int a3, unsigned __int8 a4)
{
  if ((a3 & 0xF000) != 0x2000)
  {
    return 0;
  }

  v12 = v4;
  v13 = v5;
  v8 = 0u;
  v10 = 0;
  v7[0] = a1;
  v7[1] = a2;
  LODWORD(v8) = a3 & 0xFFFF0FFF;
  v9 = a4;
  v11 = 0;
  return db2_create_datastore_with_ctx(v7);
}

char *db_get_datastore(unsigned int a1, uint64_t a2, int a3)
{
  if ((a3 & 0x1000) != 0)
  {
    return 0;
  }

  v5 = 0u;
  v6 = 0;
  v7 = 0;
  v4[0] = a1;
  v4[1] = a2;
  LODWORD(v5) = a3;
  v8 = 0;
  return db2_get_datastore_with_ctx(v4);
}

uint64_t db_check_datastore(int a1, __int16 a2)
{
  v62 = *MEMORY[0x1E69E9840];
  if ((a2 & 0xF000) != 0x2000)
  {
    return 0;
  }

  bzero(v61, 0x400uLL);
  bzero(__dst, 0x400uLL);
  v3 = malloc_type_calloc(1uLL, 0x1000uLL, 0x10A0040B82A6DE8uLL);
  v4 = malloc_type_calloc(1uLL, 0x1000uLL, 0x10A0040B82A6DE8uLL);
  v5 = v4;
  if (!v3 || !v4)
  {
    v8 = 0;
    v11 = 0;
    v16 = 0xFFFFFFFFLL;
    if (!v3)
    {
      if (!v4)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    goto LABEL_34;
  }

  v6 = (*(v3 + 1) << 13) >> 31;
  v7 = fd_create_protected(a1, "store.db", 0, v6 & 3);
  if (!v7)
  {
    v18 = *__error();
    v19 = *__error();
    v20 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "db2_check_datastore";
      v53 = 1024;
      v54 = 6946;
      v55 = 1024;
      *v56 = v18;
      _os_log_error_impl(&dword_1C278D000, v20, OS_LOG_TYPE_ERROR, "%s:%d: db2_check_datastore: ERR: could not get parent fdp %d\n", buf, 0x18u);
    }

    *__error() = v19;
    v21 = __error();
    v8 = 0;
    goto LABEL_32;
  }

  v8 = v7;
  v51 = 0;
  v9 = _fd_acquire_fd(v7, &v51);
  if (v9 < 0)
  {
    v18 = *__error();
    v22 = *__error();
    v23 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "db2_check_datastore";
      v53 = 1024;
      v54 = 6956;
      v55 = 1024;
      *v56 = v18;
      _os_log_error_impl(&dword_1C278D000, v23, OS_LOG_TYPE_ERROR, "%s:%d: db2_check_datastore: ERR: could not open parent %d\n", buf, 0x18u);
    }

    *__error() = v22;
    goto LABEL_31;
  }

  _fd_release_fd(v8, v9, 0, v51);
  strcpy(__dst, ".");
  strlcat(__dst, "store.db", 0x400uLL);
  *__error() = 0;
  v10 = fd_create_protected(a1, __dst, 0, v6 & 3);
  if (!v10)
  {
    v18 = *__error();
    v24 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v41 = *__error();
      *buf = 136315650;
      *&buf[4] = "db2_check_datastore";
      v53 = 1024;
      v54 = 6967;
      v55 = 1024;
      *v56 = v41;
      _os_log_error_impl(&dword_1C278D000, v24, OS_LOG_TYPE_ERROR, "%s:%d: db2_check_datastore: ERR:%d could not get shadow fdp\n", buf, 0x18u);
    }

LABEL_31:
    v21 = __error();
LABEL_32:
    v11 = 0;
    *v21 = v18;
LABEL_33:
    v16 = 0xFFFFFFFFLL;
    goto LABEL_34;
  }

  v11 = v10;
  v51 = 0;
  v12 = _fd_acquire_fd(v10, &v51);
  if (v12 < 0)
  {
    if (*__error() == 2)
    {
      v16 = 2;
    }

    else
    {
      v16 = 0xFFFFFFFFLL;
    }

    v25 = *__error();
    v26 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v42 = *__error();
      *buf = 136315650;
      *&buf[4] = "db2_check_datastore";
      v53 = 1024;
      v54 = 6975;
      v55 = 1024;
      *v56 = v42;
      _os_log_error_impl(&dword_1C278D000, v26, OS_LOG_TYPE_ERROR, "%s:%d: db2_check_datastore: ERR:%d could not open shadow\n", buf, 0x18u);
    }

    *__error() = v25;
  }

  else
  {
    _fd_release_fd(v11, v12, 0, v51);
    v13 = fd_pread(v8, v3, 0x1000uLL, 0);
    if (v13 != 4096)
    {
      v27 = v13;
      *buf = 0;
      v28 = _fd_acquire_fd(v8, buf);
      if (v28 != -1)
      {
        v29 = v28;
        fcntl(v28, 50, v61);
        _fd_release_fd(v8, v29, 0, *buf);
      }

      v30 = *__error();
      v31 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        *&buf[4] = "db2_check_datastore";
        v53 = 1024;
        v54 = 6984;
        v55 = 2080;
        *v56 = v61;
        *&v56[8] = 1024;
        v57 = 4096;
        v58 = 2048;
        v59 = v27;
        _os_log_error_impl(&dword_1C278D000, v31, OS_LOG_TYPE_ERROR, "%s:%d: %s : db2_check_datastore: ERR: could not read %d bytes (read %zd bytes)\n", buf, 0x2Cu);
      }

      *__error() = v30;
      goto LABEL_33;
    }

    if (fd_pread(v11, v5, 0x1000uLL, 0) != 4096)
    {
      bzero(v5, 0x1000uLL);
    }

    *(v3 + 105) = v8;
    *(v3 + 106) = v11;
    if (*v3 == 947155812)
    {
      v14 = vrev32q_s8(*v3);
      *v3 = v14;
      *(v3 + 4) = bswap32(*(v3 + 4));
      *(v3 + 20) = vrev64q_s8(*(v3 + 20));
      *(v3 + 36) = vrev32q_s8(*(v3 + 36));
      *(v3 + 52) = vrev32q_s8(*(v3 + 52));
      v15 = v14.i32[1] & 0x7FFFFF7F | 0x80;
    }

    else
    {
      v15 = *(v3 + 1) & 0x7FFFFF7F;
    }

    *(v3 + 1) = v15;
    if (v5->i32[0] == 947155812)
    {
      v32 = vrev32q_s8(*v5);
      *v5 = v32;
      v5[1].i32[0] = bswap32(v5[1].u32[0]);
      *(v5 + 20) = vrev64q_s8(*(v5 + 20));
      *(v5 + 36) = vrev32q_s8(*(v5 + 36));
      *(v5 + 52) = vrev32q_s8(*(v5 + 52));
      v33 = v32.i32[1] & 0x7FFFFF7F | 0x80;
    }

    else
    {
      v33 = v5->i32[1] & 0x7FFFFF7F;
    }

    v5->i32[1] = v33;
    if (*v3 != 1685287992)
    {
      fd_realpath(v8, v61);
      v35 = *__error();
      v40 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v43 = *v3;
        *buf = 136316162;
        *&buf[4] = "db2_check_datastore";
        v53 = 1024;
        v54 = 7030;
        v55 = 2080;
        *v56 = v61;
        *&v56[8] = 1024;
        v57 = v43;
        v58 = 1024;
        LODWORD(v59) = 1685287992;
        v37 = "%s:%d: %s : db2_check_datastore: ERR: signature 0x%x != 0x%x. bailing out.\n";
        v38 = v40;
        v39 = 40;
        goto LABEL_67;
      }

LABEL_59:
      *__error() = v35;
      goto LABEL_33;
    }

    if (v5->i32[0] != 1685287992)
    {
      bzero(v5, 0x1000uLL);
      LOWORD(v33) = 0;
    }

    v34 = *(v3 + 1);
    if ((v34 & 0x30) != 0 || (v33 & 0x30) != 0)
    {
      v35 = *__error();
      v36 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "db2_check_datastore";
        v53 = 1024;
        v54 = 7041;
        v55 = 2080;
        *v56 = v61;
        v37 = "%s:%d: %s : db2_check_datastore: ERR: DST_BUSY\n";
        v38 = v36;
        v39 = 28;
LABEL_67:
        _os_log_error_impl(&dword_1C278D000, v38, OS_LOG_TYPE_ERROR, v37, buf, v39);
        goto LABEL_59;
      }

      goto LABEL_59;
    }

    if ((v33 & 0x200) != 0)
    {
      v16 = 1;
    }

    else if (v33)
    {
      v16 = 0;
    }

    else if ((v34 & 0x201) != 0)
    {
      v16 = 2;
    }

    else
    {
      v16 = 0xFFFFFFFFLL;
    }

    v44 = *__error();
    v45 = _SILogForLogForCategory(7);
    v46 = 2 * (dword_1EBF46AE8 < 4);
    if (os_log_type_enabled(v45, v46))
    {
      v47 = fd_realpath(v8, v61);
      v48 = "";
      v49 = v5->i32[1];
      v50 = *(v3 + 1);
      if (v47)
      {
        v48 = v47;
      }

      *buf = 136315906;
      *&buf[4] = v48;
      v53 = 1024;
      v54 = v16;
      v55 = 1024;
      *v56 = v49;
      *&v56[4] = 1024;
      *&v56[6] = v50;
      _os_log_impl(&dword_1C278D000, v45, v46, "%s : db2_check_datastore:%d (s_flags:%x m_flags:%x)\n", buf, 0x1Eu);
    }

    *__error() = v44;
  }

LABEL_34:
  free(v3);
  if (v5)
  {
LABEL_16:
    free(v5);
  }

LABEL_17:
  if (v11 && v11 != v8)
  {
    fd_release(v11);
  }

  if (v8)
  {
    fd_release(v8);
  }

  return v16;
}

uint64_t db_delete_datastore(uint64_t a1, char *a2, int a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if ((a3 & 0xF000) != 0x2000)
  {
    return 0;
  }

  v5 = a1;
  bzero(__dst, 0x400uLL);
  v6 = (a3 & 0x40000u) >> 10;
  v7 = strrchr(a2, 47);
  if (v7)
  {
    v8 = v7;
    strlcpy(__dst, a2, v7 - a2 + 2);
    strlcat(__dst, ".", 0x400uLL);
    v9 = v8 + 1;
  }

  else
  {
    strcpy(__dst, ".");
    v9 = a2;
  }

  strlcat(__dst, v9, 0x400uLL);
  if ((a3 & 0x40000) != 0)
  {
    v11 = 3;
  }

  else
  {
    v11 = 0;
  }

  v12 = fd_create_protected(v5, a2, 2, v11);
  v13 = _fd_unlink_with_origin(v12, 0);
  fd_release(v12);
  v14 = fd_create_protected(v5, __dst, 2, v11);
  v15 = _fd_unlink_with_origin(v14, 0);
  fd_release(v14);
  if ((a3 & 0x20000) != 0)
  {
    v16 = 0;
    if ((asprintf(&v16, "%sStr-%d.map", a2, 1) & 0x80000000) == 0)
    {
      data_map_delete_files(v5, v16, v6);
      free(v16);
    }

    v16 = 0;
    if ((asprintf(&v16, "%sStr-%d.map", a2, 2) & 0x80000000) == 0)
    {
      data_map_delete_files(v5, v16, v6);
      free(v16);
    }

    v16 = 0;
    if ((asprintf(&v16, "%sStr-%d.map", a2, 3) & 0x80000000) == 0)
    {
      data_map_delete_files(v5, v16, v6);
      free(v16);
    }

    v16 = 0;
    if ((asprintf(&v16, "%sStr-%d.map", a2, 4) & 0x80000000) == 0)
    {
      data_map_delete_files(v5, v16, v6);
      free(v16);
    }

    v16 = 0;
    if ((asprintf(&v16, "%sStr-%d.map", a2, 5) & 0x80000000) == 0)
    {
      data_map_delete_files(v5, v16, v6);
      free(v16);
    }
  }

  v16 = 0;
  if ((asprintf(&v16, "%sStr-%d.map", a2, 6) & 0x80000000) == 0)
  {
    data_map_delete_files(v5, v16, v6);
    free(v16);
  }

  if (v13)
  {
    return v13;
  }

  else
  {
    return v15;
  }
}

uint64_t db_datastore_largest_oid(int *a1)
{
  v37 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v25 = *__error();
    v26 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = *a1;
      *buf = 136315650;
      *&buf[4] = "db_datastore_largest_oid";
      v33 = 1024;
      v34 = 237;
      v35 = 1024;
      v36 = v27;
      _os_log_error_impl(&dword_1C278D000, v26, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v25;
    v28 = __si_assert_copy_extra_332();
    v29 = v28;
    if (v28)
    {
      v30 = v28;
    }

    else
    {
      v30 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 237, v30);
    free(v29);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  if (db_read_lock((a1 + 146)))
  {
    sdb2_die(a1, "Multiple threads entering in sdb!", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 15106);
  }

  v2 = *(a1 + 107);
  v3 = *(v2 + 8);
  v4 = __OFSUB__(v3, 1);
  v5 = (v3 - 1);
  if (v5 < 0 != v4)
  {
    v8 = -1;
  }

  else
  {
    v6 = v2 + 20;
    v7 = v2 + 20 + 16 * v5;
    v8 = *v7;
    if (!(*(v7 + 12) >> 28))
    {
      goto LABEL_38;
    }

    v9 = (v2 + 16 * v5 + 16);
    while (v5 > 0)
    {
      v10 = v5--;
      v11 = *v9;
      v9 -= 4;
      if (!(v11 >> 28))
      {
        v12 = *(v6 + 16 * v5);
        v6 += 16 * v10;
        if (v8 <= v12)
        {
          v8 = v12;
        }

        break;
      }
    }

    *buf = 0;
    if (!_page_fetch_with_fd(a1, buf, *(v6 + 8), *(v6 + 12) & 0xFFFFFFF, 9, &v31, 0xFFFFFFFFLL, 0))
    {
      v13 = *(*buf + 8);
      if (v13 >= 21)
      {
        v14 = *buf + v13;
        v15 = *buf + 20;
        do
        {
          v16 = *(v15 + 4);
          if (*(v15 + 4) < 0)
          {
            v17 = *(v15 + 4);
            if (v17 > 0xBF)
            {
              if (v17 <= 0xDF)
              {
                v18 = ((v16 & 0x1F) << 16) | (*(v15 + 5) << 8);
                v19 = *(v15 + 6);
LABEL_29:
                v16 = v18 | v19;
                goto LABEL_30;
              }

              if (v17 <= 0xEF)
              {
                v18 = ((v16 & 0xF) << 24) | (*(v15 + 5) << 16) | (*(v15 + 6) << 8);
                v19 = *(v15 + 7);
                goto LABEL_29;
              }

              if (v17 <= 0xF7)
              {
                v18 = ((v16 & 7) << 32) | (*(v15 + 5) << 24) | (*(v15 + 6) << 16) | (*(v15 + 7) << 8);
                v19 = *(v15 + 8);
                goto LABEL_29;
              }

              if (v17 <= 0xFB)
              {
                v18 = ((v16 & 3) << 40) | (*(v15 + 5) << 32) | (*(v15 + 6) << 24) | (*(v15 + 7) << 16) | (*(v15 + 8) << 8);
                v19 = *(v15 + 9);
                goto LABEL_29;
              }

              if (v17 <= 0xFD)
              {
                v18 = ((v16 & 1) << 48) | (*(v15 + 5) << 40) | (*(v15 + 6) << 32) | (*(v15 + 7) << 24) | (*(v15 + 8) << 16) | (*(v15 + 9) << 8);
                v19 = *(v15 + 10);
                goto LABEL_29;
              }

              if (v17 != 255)
              {
                v18 = (*(v15 + 5) << 48) | (*(v15 + 6) << 40) | (*(v15 + 7) << 32) | (*(v15 + 8) << 24) | (*(v15 + 9) << 16) | (*(v15 + 10) << 8);
                v19 = *(v15 + 11);
                goto LABEL_29;
              }

              v16 = *(v15 + 5);
            }

            else
            {
              v16 = *(v15 + 5) | ((v16 & 0x3F) << 8);
            }
          }

LABEL_30:
          if (v8 <= v16)
          {
            v8 = v16;
          }

          v15 += (*v15 + 4);
        }

        while (v15 < v14);
      }

      page_release(a1, *buf, *(v6 + 8), 0x10u, 0);
    }
  }

  v20 = *(a1 + 124);
  if (v20)
  {
    v21 = *(v20 + 64);
    if (v8 <= v21)
    {
      v8 = v21;
    }
  }

LABEL_38:
  v22 = pthread_mutex_lock((a1 + 146));
  v23 = a1[195] - 1;
  a1[195] = v23;
  if (!v23)
  {
    db_rwlock_wakeup((a1 + 146), 0, 0);
  }

  pthread_mutex_unlock((a1 + 146));
  if (v22)
  {
    sdb2_die(a1, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 15143);
  }

  return v8;
}

uint64_t db_datastore_set_bg_assertion_flag(uint64_t result, char a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*result != 1685287992)
  {
    v2 = result;
    v3 = *__error();
    v4 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *v2;
      *buf = 136315650;
      v10 = "db_datastore_set_bg_assertion_flag";
      v11 = 1024;
      v12 = 241;
      v13 = 1024;
      v14 = v5;
      _os_log_error_impl(&dword_1C278D000, v4, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v3;
    v6 = __si_assert_copy_extra_332();
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 241, v8);
    free(v7);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  *(result + 988) = a2;
  return result;
}

uint64_t db_dirty_datastore(int *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v3 = *__error();
    v4 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *a1;
      *buf = 136315650;
      v10 = "db_dirty_datastore";
      v11 = 1024;
      v12 = 252;
      v13 = 1024;
      v14 = v5;
      _os_log_error_impl(&dword_1C278D000, v4, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v3;
    v6 = __si_assert_copy_extra_332();
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 252, v8);
    free(v7);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  return db2_dirty_datastore(a1);
}

void db_release_datastore(int *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v2 = *__error();
    v3 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = *a1;
      *buf = 136315650;
      v9 = "db_release_datastore";
      v10 = 1024;
      v11 = 256;
      v12 = 1024;
      v13 = v4;
      _os_log_error_impl(&dword_1C278D000, v3, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v2;
    v5 = __si_assert_copy_extra_332();
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 256, v7);
    free(v6);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  db2_sync_datastore(a1, 1);

  db2_release_datastore_no_sync(a1);
}

uint64_t db_unlock_datastore(int *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v5 = *__error();
    v6 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *a1;
      *buf = 136315650;
      v12 = "db_unlock_datastore";
      v13 = 1024;
      v14 = 265;
      v15 = 1024;
      v16 = v7;
      _os_log_error_impl(&dword_1C278D000, v6, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v5;
    v8 = __si_assert_copy_extra_332();
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 265, v10);
    free(v9);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  pthread_mutex_lock((a1 + 146));
  a1[197] = 0;
  v2 = *(a1 + 95);
  *(a1 + 190) = 0u;
  v3 = a1[195] != 0;
  *(a1 + 796) = 0;
  db_rwlock_wakeup((a1 + 146), v3, 0);
  result = pthread_mutex_unlock((a1 + 146));
  if (v2)
  {

    return pthread_override_qos_class_end_np(v2);
  }

  return result;
}

uint64_t db_commit_shadow_datastore(int *a1)
{
  v30 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v17 = *__error();
    v18 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = *a1;
      *buf = 136315650;
      *&buf[4] = "db_commit_shadow_datastore";
      v24 = 1024;
      v25 = 271;
      v26 = 1024;
      LODWORD(v27) = v19;
      _os_log_error_impl(&dword_1C278D000, v18, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v17;
    v20 = __si_assert_copy_extra_332();
    v21 = v20;
    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 271, v22);
    free(v21);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  if (dword_1EBF46AE8 >= 5)
  {
    v11 = *__error();
    v12 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = data_map_count(*(a1 + 115));
      *buf = 134217984;
      *&buf[4] = v13;
      _os_log_impl(&dword_1C278D000, v12, OS_LOG_TYPE_DEFAULT, "Commit shadow at vector count %lld", buf, 0xCu);
    }

    *__error() = v11;
  }

  a1[1] = a1[1] & 0xFFFFFDFE | 1;
  v2 = fd_pwrite(*(a1 + 105), a1, 0x1000uLL, 0);
  v3 = *__error();
  if (a1[1] < 0)
  {
    *a1 = vrev32q_s8(*a1);
    a1[4] = bswap32(a1[4]);
    *(a1 + 5) = vrev64q_s8(*(a1 + 5));
    *(a1 + 9) = vrev32q_s8(*(a1 + 9));
    *(a1 + 13) = vrev32q_s8(*(a1 + 13));
  }

  if (v2 == 4096)
  {
    goto LABEL_41;
  }

  if (v2 >= 0)
  {
    v4 = 22;
  }

  else
  {
    v4 = v3;
  }

  v5 = *__error();
  v6 = _SILogForLogForCategory(7);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315906;
    *&buf[4] = "db2_commit_shadow_datastore";
    v24 = 1024;
    v25 = 8838;
    v26 = 2080;
    v27 = a1 + 81;
    v28 = 1024;
    v29 = v4;
    _os_log_error_impl(&dword_1C278D000, v6, OS_LOG_TYPE_ERROR, "%s:%d: %s : ERR: Can't write DST master header (2: %d)\n", buf, 0x22u);
  }

  *__error() = v5;
  a1[1] |= 2u;
  a1[200] = v4;
  if (!v4)
  {
LABEL_41:
    if ((a1[201] & 0x14) != 0)
    {
      data_map_commit_shadow(*(a1 + 110));
      if ((a1[201] & 0x14) != 0)
      {
        data_map_commit_shadow(*(a1 + 111));
        if ((a1[201] & 0x14) != 0)
        {
          data_map_commit_shadow(*(a1 + 112));
          if ((a1[201] & 0x14) != 0)
          {
            data_map_commit_shadow(*(a1 + 113));
            if ((a1[201] & 0x14) != 0)
            {
              data_map_commit_shadow(*(a1 + 114));
            }
          }
        }
      }
    }

    data_map_commit_shadow(*(a1 + 115));
    v4 = 0;
  }

  v7 = *(a1 + 105);
  if (_gSystemStatusBool == 1)
  {
    pthread_mutex_lock(&_gSystemStatusLock);
    if (_gSystemStatusBool == 1)
    {
      do
      {
        pthread_cond_wait(&_gSystemStatusCond, &_gSystemStatusLock);
      }

      while ((_gSystemStatusBool & 1) != 0);
    }

    pthread_mutex_unlock(&_gSystemStatusLock);
  }

  *buf = 0;
  v8 = _fd_acquire_fd(v7, buf);
  if (v8 != -1)
  {
    v9 = v8;
    prot_fsync(v8, 0);
    _fd_release_fd(v7, v9, 0, *buf);
  }

  if (dword_1EBF46AE8 >= 5)
  {
    v14 = *__error();
    v15 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = data_map_count(*(a1 + 115));
      *buf = 134217984;
      *&buf[4] = v16;
      _os_log_impl(&dword_1C278D000, v15, OS_LOG_TYPE_DEFAULT, "Commit shadow completed at vector count %lld", buf, 0xCu);
    }

    *__error() = v14;
  }

  return v4;
}

uint64_t db_commit_shadow_complete_datastore(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v15 = *__error();
    v16 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = *a1;
      *buf = 136315650;
      *&buf[4] = "db_commit_shadow_complete_datastore";
      v22 = 1024;
      v23 = 272;
      v24 = 1024;
      LODWORD(v25) = v17;
      _os_log_error_impl(&dword_1C278D000, v16, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v15;
    v18 = __si_assert_copy_extra_332();
    v19 = v18;
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 272, v20);
    free(v19);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  if (dword_1EBF46AE8 >= 5)
  {
    v12 = *__error();
    v13 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = data_map_count(*(a1 + 920));
      *buf = 134217984;
      *&buf[4] = v14;
      _os_log_impl(&dword_1C278D000, v13, OS_LOG_TYPE_DEFAULT, "Commit shadow complete at vector count %lld", buf, 0xCu);
    }

    *__error() = v12;
  }

  v2 = *(a1 + 4);
  *(a1 + 4) = v2 & 0xFFFFFDFF;
  if ((v2 & 0x80) != 0)
  {
    v3.i32[0] = *a1;
    v3.i32[1] = v2 & 0xFFFFFDFF;
    v3.i64[1] = *(a1 + 8);
    *a1 = vrev32q_s8(v3);
    *(a1 + 16) = bswap32(*(a1 + 16));
    *(a1 + 20) = vrev64q_s8(*(a1 + 20));
    *(a1 + 36) = vrev32q_s8(*(a1 + 36));
    *(a1 + 52) = vrev32q_s8(*(a1 + 52));
  }

  v4 = fd_pwrite(*(a1 + 848), a1, 0x1000uLL, 0);
  __error();
  if ((*(a1 + 4) & 0x80000000) != 0)
  {
    *a1 = vrev32q_s8(*a1);
    *(a1 + 16) = bswap32(*(a1 + 16));
    *(a1 + 20) = vrev64q_s8(*(a1 + 20));
    *(a1 + 36) = vrev32q_s8(*(a1 + 36));
    *(a1 + 52) = vrev32q_s8(*(a1 + 52));
  }

  if (v4 == 4096)
  {
    v5 = 0;
  }

  else
  {
    if (v4 < 0)
    {
      v5 = *__error();
    }

    else
    {
      v5 = 22;
    }

    v6 = *__error();
    v7 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "db2_commit_shadow_complete_datastore";
      v22 = 1024;
      v23 = 8893;
      v24 = 2080;
      v25 = a1 + 324;
      v26 = 1024;
      v27 = v5;
      _os_log_error_impl(&dword_1C278D000, v7, OS_LOG_TYPE_ERROR, "%s:%d: %s : ERR: Can't write DST header (2: %d)\n", buf, 0x22u);
    }

    *__error() = v6;
    *(a1 + 4) |= 2u;
    *(a1 + 800) = v5;
  }

  if ((*(a1 + 804) & 0x14) != 0)
  {
    data_map_commit_shadow_complete(*(a1 + 880));
    if ((*(a1 + 804) & 0x14) != 0)
    {
      data_map_commit_shadow_complete(*(a1 + 888));
      if ((*(a1 + 804) & 0x14) != 0)
      {
        data_map_commit_shadow_complete(*(a1 + 896));
        if ((*(a1 + 804) & 0x14) != 0)
        {
          data_map_commit_shadow_complete(*(a1 + 904));
          if ((*(a1 + 804) & 0x14) != 0)
          {
            data_map_commit_shadow_complete(*(a1 + 912));
          }
        }
      }
    }
  }

  data_map_commit_shadow_complete(*(a1 + 920));
  v8 = *(a1 + 848);
  if (_gSystemStatusBool == 1)
  {
    pthread_mutex_lock(&_gSystemStatusLock);
    if (_gSystemStatusBool == 1)
    {
      do
      {
        pthread_cond_wait(&_gSystemStatusCond, &_gSystemStatusLock);
      }

      while ((_gSystemStatusBool & 1) != 0);
    }

    pthread_mutex_unlock(&_gSystemStatusLock);
  }

  *buf = 0;
  v9 = _fd_acquire_fd(v8, buf);
  if (v9 != -1)
  {
    v10 = v9;
    prot_fsync(v9, 0);
    _fd_release_fd(v8, v10, 0, *buf);
  }

  return v5;
}

void db_release_datastore_no_sync(int *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v2 = *__error();
    v3 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = *a1;
      *buf = 136315650;
      v9 = "db_release_datastore_no_sync";
      v10 = 1024;
      v11 = 273;
      v12 = 1024;
      v13 = v4;
      _os_log_error_impl(&dword_1C278D000, v3, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v2;
    v5 = __si_assert_copy_extra_332();
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 273, v7);
    free(v6);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  db2_release_datastore_no_sync(a1);
}

uint64_t db_get_vector_store(int *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v3 = *__error();
    v4 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *a1;
      *buf = 136315650;
      v10 = "db_get_vector_store";
      v11 = 1024;
      v12 = 280;
      v13 = 1024;
      v14 = v5;
      _os_log_error_impl(&dword_1C278D000, v4, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v3;
    v6 = __si_assert_copy_extra_332();
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 280, v8);
    free(v7);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  return *(a1 + 115);
}

uint64_t db_set_host(char *a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v11 = *__error();
    v12 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = *a1;
      *__str = 136315650;
      v23 = "db_set_host";
      v24 = 1024;
      v25 = 283;
      v26 = 1024;
      v27 = v13;
      _os_log_error_impl(&dword_1C278D000, v12, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", __str, 0x18u);
    }

    *__error() = v11;
    v14 = __si_assert_copy_extra_332();
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 283, v16);
    free(v15);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  v4 = *(a1 + 115);
  if (!v4)
  {
    bzero(__str, 0x400uLL);
    v5 = strrchr(a1 + 324, 47);
    v6 = "db";
    if (v5)
    {
      v7 = v5;
      if (strcmp(v5 + 1, "store.db"))
      {
        v6 = v7 + 1;
      }
    }

    snprintf(__str, 0x400uLL, "%sStr-%d.map", v6, 6);
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v17 = 0u;
    v8 = *(a1 + 105);
    if (v8)
    {
      v9 = *(v8 + 44);
    }

    else
    {
      v9 = -1;
    }

    LODWORD(v17) = v9;
    *(&v17 + 1) = __str;
    *(&v18 + 1) = _db2_synced_block_callback;
    *&v19 = _db2_unmap_callback;
    *(&v19 + 1) = 0;
    *&v20 = 0;
    *(&v20 + 1) = a1;
    DWORD2(v21) = 0;
    *&v18 = 0x24100000004;
    v4 = data_map_init_with_ctx(&v17);
    *(a1 + 115) = v4;
  }

  return data_map_set_host(v4, a2);
}

uint64_t db_create_id_for_field(_DWORD *a1, char *__s, unsigned int a3, int a4)
{
  if (*a1 != 1685287992)
  {
    v16 = __si_assert_copy_extra_332();
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 334, v18);
    free(v17);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  v6 = a1[201];
  if ((a3 & 0x400) != 0)
  {
    a4 = 0;
  }

  v8 = (a3 >> 4) & 2 | (a3 >> 7) & 1 | (a3 >> 1) & 4 | (a3 >> 5) & 8 | (a3 >> 3) & 0x40;
  v9 = (a3 >> 8) & 0x20 | (a3 >> 7) & 0x180 | v8;
  v10 = (a3 >> 5) & 0x780 | (a3 >> 6) & 0x20 | v8;
  if (a4 == 14 && (a3 & 0x4000) != 0)
  {
    LOWORD(v10) = v10 | 0xFF80;
  }

  if ((v6 & 4) != 0)
  {
    LOWORD(v10) = v9;
  }

  if ((a3 & 0x10) != 0)
  {
    v12 = 15;
  }

  else
  {
    v12 = 11;
  }

  if (a4 == 11)
  {
    LOBYTE(a4) = v12;
  }

  v19 = a4 | (v10 << 8);
  v13 = ((v6 >> 3) & 1) == 0;
  v14 = strlen(__s);
  return _get_id_for_string(a1, 0, __s, v14, v13, &v19);
}

uint64_t db_create_id_for_value(int *a1, char *__s)
{
  v19 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v7 = *__error();
    v8 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *a1;
      *buf = 136315650;
      v14 = "db_create_id_for_value";
      v15 = 1024;
      v16 = 336;
      v17 = 1024;
      v18 = v9;
      _os_log_error_impl(&dword_1C278D000, v8, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v7;
    v10 = __si_assert_copy_extra_332();
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 336, v12);
    free(v11);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  if ((a1[201] & 8) != 0)
  {
    v4 = 0;
  }

  else
  {
    v4 = -2147483647;
  }

  v5 = strlen(__s);
  return _get_id_for_string(a1, 1u, __s, v5, v4, 0);
}

uint64_t db_delete_field(int *a1, uint64_t *a2, char *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v6 = *__error();
    v7 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *a1;
      *buf = 136315650;
      v13 = "db_delete_field";
      v14 = 1024;
      v15 = 365;
      v16 = 1024;
      v17 = v8;
      _os_log_error_impl(&dword_1C278D000, v7, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v6;
    v9 = __si_assert_copy_extra_332();
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 365, v11);
    free(v10);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  v3 = *a2;

  return _delete_field(a1, v3, a3, 0);
}

uint64_t db_get_field_locked(int *a1, uint64_t a2, char *__s, unint64_t *a4, void *a5)
{
  v27 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v18 = *__error();
    v19 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = *a1;
      *buf = 136315650;
      *&buf[4] = "db_get_field_locked";
      *&buf[12] = 1024;
      *&buf[14] = 369;
      v25 = 1024;
      v26 = v20;
      _os_log_error_impl(&dword_1C278D000, v19, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v18;
    v21 = __si_assert_copy_extra_332();
    v22 = v21;
    if (v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 369, v23);
    free(v22);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  *buf = 0;
  *&buf[8] = 0;
  v8 = internal_copy_field_ids(a1, __s, buf, 4uLL, 1);
  if (!v8)
  {
    return 2;
  }

  v9 = *(a2 + 12);
  if (v9 >= 0x31 && *v8)
  {
    v10 = a2 + v9;
    v11 = a2 + 48;
    while (2)
    {
      v12 = 1;
      v13 = *v8;
      do
      {
        if (*(v11 + 4) == v13)
        {
          if (a4)
          {
            *a4 = v11;
          }

          if (a5)
          {
            *a5 = v11 + 13;
          }

          v14 = 0;
          v15 = 0;
          goto LABEL_21;
        }

        v13 = v8[v12++];
      }

      while (v13);
      v11 += *(v11 + 8) + 13;
      if (v11 < v10)
      {
        continue;
      }

      break;
    }
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  v14 = 2;
  v15 = 2;
LABEL_21:
  if (buf != v8)
  {
    free(v8);
    return v14;
  }

  return v15;
}

char *db_get_field_name_for_id(int *a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v4 = *__error();
    v5 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *a1;
      *buf = 136315650;
      v11 = "db_get_field_name_for_id";
      v12 = 1024;
      v13 = 391;
      v14 = 1024;
      v15 = v6;
      _os_log_error_impl(&dword_1C278D000, v5, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v4;
    v7 = __si_assert_copy_extra_332();
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 391, v9);
    free(v8);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  return get_string_and_length_for_id_15021(a1, 0, a2, 0, 0);
}

unint64_t db_get_field_id_limit(int *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v5 = *__error();
    v6 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *a1;
      *buf = 136315650;
      v12 = "db_get_field_id_limit";
      v13 = 1024;
      v14 = 392;
      v15 = 1024;
      v16 = v7;
      _os_log_error_impl(&dword_1C278D000, v6, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v5;
    v8 = __si_assert_copy_extra_332();
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 392, v10);
    free(v9);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  v1 = *(a1 + 110);
  if ((a1[201] & 0x14) == 0)
  {
    return *(v1 + 56);
  }

  result = 0;
  if (v1)
  {
    v3 = *(v1 + 216);
    if (v3 > 842150449)
    {
      if (v3 == 1684300900)
      {
        return *(v1 + 224) - 1;
      }

      if (v3 == 842150450)
      {
        return (*(v1 + 220) - 1);
      }
    }

    else
    {
      if (v3 != -572662307)
      {
        if (v3 != -270471200)
        {
          return result;
        }

        return *(v1 + 224) - 1;
      }

      return data_map_double_count(v1);
    }
  }

  return result;
}

uint64_t db_get_vector_for_id_locked(uint64_t a1, unint64_t a2, _DWORD *a3, _DWORD *a4)
{
  if (*a1 != 1685287992)
  {
    v7 = __si_assert_copy_extra_332();
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 398, v9);
    free(v8);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  v5 = *(a1 + 920);

  return db2_get_vector_for_id_locked(v5, a2, a3, a4);
}

_DWORD *db_clear_docids_setup(int *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v3 = *__error();
    v4 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *a1;
      *buf = 136315650;
      v10 = "db_clear_docids_setup";
      v11 = 1024;
      v12 = 412;
      v13 = 1024;
      v14 = v5;
      _os_log_error_impl(&dword_1C278D000, v4, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v3;
    v6 = __si_assert_copy_extra_332();
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 412, v8);
    free(v7);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  result = malloc_type_malloc(4uLL, 0x100004052888210uLL);
  *result = 0;
  return result;
}

void db_clear_docids_cleanup(int *a1, _DWORD *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v6 = *__error();
    v7 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *a1;
      *buf = 136315650;
      v13 = "db_clear_docids_cleanup";
      v14 = 1024;
      v15 = 413;
      v16 = 1024;
      v17 = v8;
      _os_log_error_impl(&dword_1C278D000, v7, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v6;
    v9 = __si_assert_copy_extra_332();
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 413, v11);
    free(v10);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  if (a2)
  {
    if (*a2)
    {
      a1[1] &= ~0x20u;
      pthread_mutex_lock((a1 + 146));
      a1[197] = 0;
      v4 = *(a1 + 95);
      *(a1 + 190) = 0u;
      v5 = a1[195] != 0;
      *(a1 + 796) = 0;
      db_rwlock_wakeup((a1 + 146), v5, 0);
      pthread_mutex_unlock((a1 + 146));
      if (v4)
      {
        pthread_override_qos_class_end_np(v4);
      }
    }

    free(a2);
  }
}

uint64_t db_clear_docids_matching_bundles(_DWORD *a1, _DWORD *a2, _DWORD *a3, unsigned int *a4, unsigned int a5, unsigned int (*a6)(void *, uint64_t), uint64_t a7)
{
  v7 = a1;
  v117 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v91 = *__error();
    v92 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
    {
      v93 = *v7;
      *buf = 136315650;
      *&buf[4] = "db_clear_docids_matching_bundles";
      *&buf[12] = 1024;
      *&buf[14] = 415;
      *&buf[18] = 1024;
      *&buf[20] = v93;
      _os_log_error_impl(&dword_1C278D000, v92, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v91;
    v94 = __si_assert_copy_extra_332();
    v95 = v94;
    if (v94)
    {
      v96 = v94;
    }

    else
    {
      v96 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 415, v96);
    free(v95);
LABEL_148:
    v90 = 2989;
LABEL_150:
    *v90 = -559038737;
    abort();
  }

  v113 = 0;
  if (!a5)
  {
    v15 = 0;
    v16 = 0;
    v17 = 2;
    goto LABEL_95;
  }

  HIDWORD(v13) = qos_class_self() - 9;
  LODWORD(v13) = HIDWORD(v13);
  v12 = v13 >> 2;
  if (v12 > 6)
  {
    v14 = 0;
  }

  else
  {
    v14 = dword_1C2BFF8F0[v12];
  }

  pthread_mutex_lock((v7 + 146));
  if (*(v7 + 96) || v7[195] || (v7[199] & 1) != 0)
  {
LABEL_10:
    db_rwlock_wait((v7 + 146), v14, 2);
    goto LABEL_11;
  }

  if (v14 <= 5)
  {
    v60 = v14 - 6;
    v61 = &v7[4 * v14 + 162];
    while (!*v61)
    {
      v61 += 2;
      if (__CFADD__(v60++, 1))
      {
        goto LABEL_105;
      }
    }

    goto LABEL_10;
  }

LABEL_105:
  *(v7 + 96) = pthread_self();
LABEL_11:
  pthread_mutex_unlock((v7 + 146));
  if (a2)
  {
    *a2 = 1;
  }

  if (!flush_updateset_locked(v7, 1))
  {
    v18 = *(v7 + 116);
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 0x40000000;
    *&buf[16] = ___db2_clear_cache_locked_block_invoke;
    *&buf[24] = &__block_descriptor_tmp_159_14950;
    *&buf[32] = v7;
    buf[40] = 0;
    db_cache_clear(v18, buf);
  }

  if (sdbLargeCacheArray)
  {
    cache_remove_all(sdbLargeCacheArray);
  }

  v19 = *(v7 + 107);
  if (*(v19 + 8) < 1)
  {
    v15 = 0;
    v16 = 0;
    goto LABEL_39;
  }

  v104 = a7;
  v109 = a2;
  v111 = v7;
  v20 = 0;
  v15 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  do
  {
    v24 = 0;
    v25 = v23;
    v23 = *(v19 + 16 * v20 + 24) & 0x7FFFFFFF;
    v26 = a4;
    v27 = a5;
    do
    {
      v29 = *v26++;
      v28 = v29;
      v30 = v29 < v25 || v28 > v23;
      v31 = !v30;
      v24 |= v31;
      --v27;
    }

    while (v27);
    if (v24)
    {
      if (v21 + 1 >= v22)
      {
        if (v22)
        {
          v22 *= 2;
        }

        else
        {
          v22 = 128;
        }

        v17 = 12;
        v15 = reallocf(v15, 12 * v22);
        if (!v15)
        {
          v16 = 0;
          v7 = v111;
          goto LABEL_95;
        }

        v19 = *(v111 + 856);
      }

      v32 = &v15[12 * v21];
      *v32 = *(v19 + 16 * v20 + 28);
      *(v32 + 1) = v20;
      *(v32 + 2) = 0;
      ++v21;
    }

    ++v20;
  }

  while (v20 < *(v19 + 8));
  if (v21 < 2)
  {
    if (!v21)
    {
      v16 = 0;
      goto LABEL_93;
    }
  }

  else
  {
    qsort(v15, v21, 0xCuLL, _db_page_info_cmp);
  }

  v33 = malloc_type_valloc(*(v111 + 44), 0x1000040A86A77D5uLL);
  v16 = v33;
  if (!v33)
  {
    v17 = 12;
LABEL_94:
    v7 = v111;
    goto LABEL_95;
  }

  if (v21 < 1)
  {
LABEL_93:
    v17 = 0;
    goto LABEL_94;
  }

  v34 = 0;
  v99 = 0;
  v35 = v21;
  v36 = v33;
  v7 = v111;
  while (1)
  {
    if (*a3)
    {
      v17 = 89;
      goto LABEL_95;
    }

    if ((~*(v111 + 4) & 0x60) == 0)
    {
      v17 = 22;
      goto LABEL_95;
    }

    v37 = v35;
    v38 = &v15[12 * v34];
    v39 = *v38 << *(v111 + 12);
    v40 = fd_pread(*(v111 + 848), v36, *(v111 + 44), v39);
    if (v40 <= 0)
    {
      v17 = v40;
      if ((v40 & 0x8000000000000000) == 0)
      {
        v17 = 96;
        goto LABEL_95;
      }

      v35 = v37;
      *(v111 + 4) |= 4u;
      goto LABEL_117;
    }

    if (*v36 != 846226020 && *v36 != 1684172850)
    {
      v46 = v36;
      v47 = *__error();
      v48 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        v56 = *v46;
        *buf = 136315906;
        *&buf[4] = "db2_clear_docids_matching_bundles";
        *&buf[12] = 1024;
        *&buf[14] = 10055;
        *&buf[18] = 1024;
        *&buf[20] = v56;
        *&buf[24] = 2048;
        *&buf[26] = v39;
        _os_log_error_impl(&dword_1C278D000, v48, OS_LOG_TYPE_ERROR, "%s:%d: unexpected page signature 0x%x at offset %lld", buf, 0x22u);
      }

      *__error() = v47;
      v35 = v37;
      v36 = v46;
      goto LABEL_68;
    }

    v41 = db2_page_uncompress_swap(v111, v36, &v113, 0);
    if (v41)
    {
      v17 = v41;
      goto LABEL_95;
    }

    v42 = v113;
    if (v113)
    {
      v36 = v113;
    }

    if (*v36 != 1684172850)
    {
      v35 = v37;
      if (v113)
      {
        goto LABEL_67;
      }

      goto LABEL_68;
    }

    if ((v36[3] & 0xF0) == 0)
    {
      break;
    }

LABEL_60:
    v35 = v37;
LABEL_61:
    v42 = v113;
    if (v113)
    {
LABEL_67:
      free(v42);
      v113 = 0;
      v36 = v16;
    }

LABEL_68:
    if (++v34 == v35)
    {
      v17 = 0;
LABEL_117:
      if (v17 || !v99)
      {
        goto LABEL_95;
      }

      if (!flush_updateset_locked(v111, 1))
      {
        v67 = *(v111 + 928);
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 0x40000000;
        *&buf[16] = ___db2_clear_cache_locked_block_invoke;
        *&buf[24] = &__block_descriptor_tmp_159_14950;
        *&buf[32] = v111;
        buf[40] = 0;
        db_cache_clear(v67, buf);
      }

      v68 = v36;
      if (sdbLargeCacheArray)
      {
        cache_remove_all(sdbLargeCacheArray);
      }

      *(*(v111 + 856) + 12) |= 1u;
      do
      {
        v69 = &v15[12 * v35 - 12];
        if (!*(v69 + 2))
        {
          v70 = *(v111 + 856);
          v71 = *(v70 + 8);
          if (v71 >= 1)
          {
            v72 = 0;
            v73 = *v69;
            v74 = v70 + 20;
            v75 = (v70 + 28);
            v76 = -1;
            v77 = -1;
            do
            {
              v79 = *v75;
              v75 += 4;
              v78 = v79;
              if (v77 == -1 || v78 > *(v74 + 16 * v77 + 8))
              {
                v77 = v72;
              }

              if (v78 == v73)
              {
                v76 = v72;
              }

              ++v72;
            }

            while (v71 != v72);
            if (v76 != -1)
            {
              v80 = v74 + 16 * v77;
              v83 = *(v80 + 8);
              v81 = (v80 + 8);
              v82 = v83;
              v84 = v76 == v71 - 1 && v77 == -1;
              if (!v84)
              {
                v85 = (v74 + 16 * v76);
                *v81 = v85[2];
                memmove(v85, v85 + 4, 16 * (v71 - v76));
                if (v82 != v73)
                {
                  fd_pread(*(v111 + 848), v68, *(v111 + 44), v82 << *(v111 + 12));
                  fd_pwrite(*(v111 + 848), v68, *(v111 + 44), v73 << *(v111 + 12));
                }
              }

              --*(*(v111 + 856) + 8);
              fd_truncate(*(v111 + 848), v82 << *(v111 + 12));
              v84 = v82 == v73;
              a2 = v109;
              if (!v84)
              {
                _add_dirty_chunk(v111, v73, *(v111 + 44), 0);
              }
            }
          }
        }

        v30 = v35-- <= 1;
      }

      while (!v30);
LABEL_39:
      v17 = 0;
      goto LABEL_95;
    }
  }

  v100 = v16;
  v43 = v36 + 5;
  v44 = v36[2];
  v103 = (v36 + v44);
  if (v36 + v36[5] + 20 > v36 + v44 || v44 < 21)
  {
    v16 = v100;
    goto LABEL_60;
  }

  v101 = v36;
  v102 = 0;
  v105 = 0;
  v106 = 0;
  v49 = 0;
  v97 = *(v38 + 1);
  v98 = v39 >> *(v111 + 12);
  __dst = (v36 + 5);
  while (1)
  {
    if (*v43 == -4)
    {
LABEL_83:
      v16 = v100;
      v35 = v37;
      if ((v49 & 1) == 0)
      {
        goto LABEL_89;
      }

      *(v38 + 2) = v106;
      if (!v106)
      {
        ++v99;
LABEL_89:
        a2 = v109;
        goto LABEL_61;
      }

      v36[2] = __dst - v36;
      a2 = v109;
      if (v102)
      {
        v55 = *(v111 + 856);
        *(v55 + 12) |= 1u;
        *(v55 + 16 * v97 + 20) = v102;
      }

      page_release(v111, v36, v98, 5u, 0);
      goto LABEL_61;
    }

    v112 = 0;
    v50 = _inflateDBO(v111, v43, &v112, 0, 0x10000, 0);
    if (v50)
    {
      break;
    }

    v51 = v112;
    if (*(v112 + 3) <= 0x2Fu)
    {
      v87 = __si_assert_copy_extra_3233(0, -1);
      v88 = v87;
      v89 = "";
      if (v87)
      {
        v89 = v87;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "sdb2.c", 13531, "dbo->used_bytes >= sizeof(external_db_obj)", v89);
      free(v88);
      if (__valid_fs(-1))
      {
        goto LABEL_148;
      }

      v90 = 3072;
      goto LABEL_150;
    }

    if (!v105)
    {
      v105 = *v112;
    }

    if ((*(v112 + 40) & 5) != 0 || !a6(v112, v104))
    {
      ++v106;
      v102 = *v51;
      v52 = *v43 + 4;
      v53 = (v43 + v52);
      if (v49)
      {
        memcpy(__dst, v43, *v43 + 4);
        v54 = __dst;
        v49 = 1;
        v51 = v112;
      }

      else
      {
        v49 = 0;
        v54 = __dst;
      }

      __dst = &v54[v52];
      v36 = v101;
    }

    else
    {
      v53 = (v43 + *v43 + 4);
      v49 = 1;
    }

    free(v51);
    v43 = v53;
    if (v53 >= v103)
    {
      goto LABEL_83;
    }
  }

  v17 = v50;
  v63 = *__error();
  v64 = _SILogForLogForCategory(7);
  v65 = os_log_type_enabled(v64, OS_LOG_TYPE_ERROR);
  v66 = v112;
  if (v65)
  {
    v86 = *v43 + 4;
    *buf = 136316418;
    *&buf[4] = "db2_clear_docids_matching_bundles";
    *&buf[12] = 1024;
    *&buf[14] = 10099;
    *&buf[18] = 2080;
    *&buf[20] = __dst;
    *&buf[28] = 1024;
    *&buf[30] = v86;
    *&buf[34] = 2048;
    *&buf[36] = v112;
    v115 = 1024;
    v116 = v17;
    _os_log_error_impl(&dword_1C278D000, v64, OS_LOG_TYPE_ERROR, "%s:%d: failed to inflate DBO: mark:%s size:%d mdbo:%p err:%d", buf, 0x32u);
  }

  *__error() = v63;
  a2 = v109;
  if (v66)
  {
    free(v66);
  }

  v16 = v100;
LABEL_95:
  free(v113);
  free(v16);
  free(v15);
  pthread_mutex_lock((v7 + 146));
  v7[197] = 0;
  v57 = *(v7 + 95);
  *(v7 + 190) = 0u;
  v58 = v7[195] != 0;
  *(v7 + 796) = 0;
  db_rwlock_wakeup((v7 + 146), v58, 0);
  pthread_mutex_unlock((v7 + 146));
  if (v57)
  {
    pthread_override_qos_class_end_np(v57);
  }

  if (a2)
  {
    *a2 = 0;
  }

  return v17;
}