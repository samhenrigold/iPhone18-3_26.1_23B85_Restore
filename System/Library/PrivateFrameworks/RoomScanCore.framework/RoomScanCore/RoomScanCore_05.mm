double sub_2622156D4(float32x2_t *a1, float32x2_t *a2, float32x2_t *a3, __n128 a4)
{
  v4 = a2[1].i32[1];
  v5 = a1[1].i32[1];
  if (v4 > v5 || v4 >= v5 && ((a4.n128_u32[0] = a2[1].u32[0], v12 = a1[1].f32[0], a4.n128_f32[0] > v12) || a4.n128_f32[0] >= v12 && ((a4.n128_u64[0] = vcgt_f32(*a1, *a2), (a4.n128_u8[0] & 1) != 0) || (vmvn_s8(vcgt_f32(*a2, *a1)).u8[0] & 1) != 0 && (a4.n128_u8[4] & 1) != 0)))
  {
    v6 = a3[1].i32[1];
    if (v6 > v4 || v6 >= v4 && ((v13 = a3[1].f32[0], v14 = a2[1].f32[0], v13 > v14) || v13 >= v14 && ((v15 = vcgt_f32(*a2, *a3), (v15.i8[0] & 1) != 0) || (vmvn_s8(vcgt_f32(*a3, *a2)).u8[0] & 1) != 0 && (v15.i8[4] & 1) != 0)))
    {
      a4 = *a1->f32;
      *a1->f32 = *a3->f32;
    }

    else
    {
      a4 = *a1->f32;
      *a1->f32 = *a2->f32;
      *a2->f32 = a4;
      v10 = a3[1].i32[1];
      v11 = a2[1].i32[1];
      if (v10 <= v11)
      {
        if (v10 < v11)
        {
          return a4.n128_f64[0];
        }

        a4.n128_u32[0] = a3[1].u32[0];
        v18 = a2[1].f32[0];
        if (a4.n128_f32[0] <= v18)
        {
          if (a4.n128_f32[0] < v18)
          {
            return a4.n128_f64[0];
          }

          a4.n128_u64[0] = vcgt_f32(*a2, *a3);
          if ((a4.n128_u8[0] & 1) == 0 && ((vmvn_s8(vcgt_f32(*a3, *a2)).u8[0] & 1) == 0 || (a4.n128_u8[4] & 1) == 0))
          {
            return a4.n128_f64[0];
          }
        }
      }

      a4 = *a2->f32;
      *a2->f32 = *a3->f32;
    }

    *a3->f32 = a4;
    return a4.n128_f64[0];
  }

  v7 = a3[1].i32[1];
  if (v7 > v4 || v7 >= v4 && ((a4.n128_u32[0] = a3[1].u32[0], v16 = a2[1].f32[0], a4.n128_f32[0] > v16) || a4.n128_f32[0] >= v16 && ((a4.n128_u64[0] = vcgt_f32(*a2, *a3), (a4.n128_u8[0] & 1) != 0) || (vmvn_s8(vcgt_f32(*a3, *a2)).u8[0] & 1) != 0 && (a4.n128_u8[4] & 1) != 0)))
  {
    a4 = *a2->f32;
    *a2->f32 = *a3->f32;
    *a3->f32 = a4;
    v8 = a2[1].i32[1];
    v9 = a1[1].i32[1];
    if (v8 > v9 || v8 >= v9 && ((a4.n128_u32[0] = a2[1].u32[0], v17 = a1[1].f32[0], a4.n128_f32[0] > v17) || a4.n128_f32[0] >= v17 && ((a4.n128_u64[0] = vcgt_f32(*a1, *a2), (a4.n128_u8[0] & 1) != 0) || (vmvn_s8(vcgt_f32(*a2, *a1)).u8[0] & 1) != 0 && (a4.n128_u8[4] & 1) != 0)))
    {
      a4 = *a1->f32;
      *a1->f32 = *a2->f32;
      *a2->f32 = a4;
    }
  }

  return a4.n128_f64[0];
}

double sub_2622158E4(float32x2_t *a1, float32x2_t *a2, float32x2_t *a3, float32x2_t *a4, float32x2_t *a5, __n128 a6)
{
  *&v11 = sub_2622156D4(a1, a2, a3, a6);
  v12 = a4[1].i32[1];
  v13 = a3[1].i32[1];
  if (v12 > v13 || v12 >= v13 && ((LODWORD(v11) = a4[1].i32[0], v18 = a3[1].f32[0], *&v11 > v18) || *&v11 >= v18 && ((*&v11 = vcgt_f32(*a3, *a4), (v11 & 1) != 0) || (vmvn_s8(vcgt_f32(*a4, *a3)).u8[0] & 1) != 0 && (BYTE4(v11) & 1) != 0)))
  {
    v11 = *a3->f32;
    *a3->f32 = *a4->f32;
    *a4->f32 = v11;
    v14 = a3[1].i32[1];
    v15 = a2[1].i32[1];
    if (v14 > v15 || v14 >= v15 && ((LODWORD(v11) = a3[1].i32[0], v19 = a2[1].f32[0], *&v11 > v19) || *&v11 >= v19 && ((*&v11 = vcgt_f32(*a2, *a3), (v11 & 1) != 0) || (vmvn_s8(vcgt_f32(*a3, *a2)).u8[0] & 1) != 0 && (BYTE4(v11) & 1) != 0)))
    {
      v11 = *a2->f32;
      *a2->f32 = *a3->f32;
      *a3->f32 = v11;
      v16 = a2[1].i32[1];
      v17 = a1[1].i32[1];
      if (v16 > v17 || v16 >= v17 && ((LODWORD(v11) = a2[1].i32[0], v31 = a1[1].f32[0], *&v11 > v31) || *&v11 >= v31 && ((*&v11 = vcgt_f32(*a1, *a2), (v11 & 1) != 0) || (vmvn_s8(vcgt_f32(*a2, *a1)).u8[0] & 1) != 0 && (BYTE4(v11) & 1) != 0)))
      {
        v11 = *a1->f32;
        *a1->f32 = *a2->f32;
        *a2->f32 = v11;
      }
    }
  }

  v20 = a5[1].i32[1];
  v21 = a4[1].i32[1];
  if (v20 > v21 || v20 >= v21 && ((LODWORD(v11) = a5[1].i32[0], v28 = a4[1].f32[0], *&v11 > v28) || *&v11 >= v28 && ((*&v11 = vcgt_f32(*a4, *a5), (v11 & 1) != 0) || (vmvn_s8(vcgt_f32(*a5, *a4)).u8[0] & 1) != 0 && (BYTE4(v11) & 1) != 0)))
  {
    v11 = *a4->f32;
    *a4->f32 = *a5->f32;
    *a5->f32 = v11;
    v22 = a4[1].i32[1];
    v23 = a3[1].i32[1];
    if (v22 > v23 || v22 >= v23 && ((LODWORD(v11) = a4[1].i32[0], v29 = a3[1].f32[0], *&v11 > v29) || *&v11 >= v29 && ((*&v11 = vcgt_f32(*a3, *a4), (v11 & 1) != 0) || (vmvn_s8(vcgt_f32(*a4, *a3)).u8[0] & 1) != 0 && (BYTE4(v11) & 1) != 0)))
    {
      v11 = *a3->f32;
      *a3->f32 = *a4->f32;
      *a4->f32 = v11;
      v24 = a3[1].i32[1];
      v25 = a2[1].i32[1];
      if (v24 > v25 || v24 >= v25 && ((LODWORD(v11) = a3[1].i32[0], v30 = a2[1].f32[0], *&v11 > v30) || *&v11 >= v30 && ((*&v11 = vcgt_f32(*a2, *a3), (v11 & 1) != 0) || (vmvn_s8(vcgt_f32(*a3, *a2)).u8[0] & 1) != 0 && (BYTE4(v11) & 1) != 0)))
      {
        v11 = *a2->f32;
        *a2->f32 = *a3->f32;
        *a3->f32 = v11;
        v26 = a2[1].i32[1];
        v27 = a1[1].i32[1];
        if (v26 > v27 || v26 >= v27 && ((LODWORD(v11) = a2[1].i32[0], v32 = a1[1].f32[0], *&v11 > v32) || *&v11 >= v32 && ((*&v11 = vcgt_f32(*a1, *a2), (v11 & 1) != 0) || (vmvn_s8(vcgt_f32(*a2, *a1)).u8[0] & 1) != 0 && (BYTE4(v11) & 1) != 0)))
        {
          v11 = *a1->f32;
          *a1->f32 = *a2->f32;
          *a2->f32 = v11;
        }
      }
    }
  }

  return *&v11;
}

BOOL sub_262215C10(float32x2_t *a1, float32x2_t *a2, __n128 a3)
{
  v5 = (a2 - a1) >> 4;
  if (v5 > 2)
  {
    if (v5 == 3)
    {
      sub_2622156D4(a1, a1 + 2, a2 - 2, a3);
      return 1;
    }

    if (v5 != 4)
    {
      if (v5 == 5)
      {
        sub_2622158E4(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2, a3);
        return 1;
      }

      goto LABEL_11;
    }

    v26 = a2 - 2;
    sub_2622156D4(a1, a1 + 2, a1 + 4, a3);
    v27 = a2[-1].i32[1];
    v28 = a1[5].i32[1];
    if (v27 <= v28)
    {
      if (v27 < v28)
      {
        return 1;
      }

      v40 = a2[-1].f32[0];
      v41 = a1[5].f32[0];
      if (v40 <= v41)
      {
        if (v40 < v41)
        {
          return 1;
        }

        v42 = a1[4];
        v43 = vcgt_f32(v42, *v26);
        if ((v43.i8[0] & 1) == 0)
        {
          result = 1;
          if ((vmvn_s8(vcgt_f32(*v26, v42)).u8[0] & 1) == 0 || (v43.i8[4] & 1) == 0)
          {
            return result;
          }
        }
      }
    }

    v29 = *a1[4].f32;
    *a1[4].f32 = *v26->f32;
    *v26->f32 = v29;
    v30 = a1[5].i32[1];
    v31 = a1[3].i32[1];
    if (v30 <= v31)
    {
      if (v30 < v31)
      {
        return 1;
      }

      v44 = a1[5].f32[0];
      v45 = a1[3].f32[0];
      if (v44 <= v45)
      {
        if (v44 < v45)
        {
          return 1;
        }

        v46 = a1[4];
        v47 = a1[2];
        v48 = vcgt_f32(v47, v46);
        if ((v48.i8[0] & 1) == 0)
        {
          result = 1;
          if ((vmvn_s8(vcgt_f32(v46, v47)).u8[0] & 1) == 0 || (v48.i8[4] & 1) == 0)
          {
            return result;
          }
        }
      }
    }

    v32 = *a1[2].f32;
    *a1[2].f32 = *a1[4].f32;
    *a1[4].f32 = v32;
    v33 = a1[3].i32[1];
    v34 = a1[1].i32[1];
    if (v33 <= v34)
    {
      if (v33 < v34)
      {
        return 1;
      }

      v50 = a1[3].f32[0];
      v51 = a1[1].f32[0];
      if (v50 <= v51)
      {
        if (v50 < v51)
        {
          return 1;
        }

        v52 = a1[2];
        v53 = vcgt_f32(*a1, v52);
        if ((v53.i8[0] & 1) == 0)
        {
          result = 1;
          if ((vmvn_s8(vcgt_f32(v52, *a1)).u8[0] & 1) == 0 || (v53.i8[4] & 1) == 0)
          {
            return result;
          }
        }
      }
    }

    v35 = *a1->f32;
    *a1->f32 = *a1[2].f32;
    *a1[2].f32 = v35;
    return 1;
  }

  if (v5 < 2)
  {
    return 1;
  }

  if (v5 != 2)
  {
LABEL_11:
    v10 = a1 + 4;
    sub_2622156D4(a1, a1 + 2, a1 + 4, a3);
    v11 = a1 + 6;
    if (&a1[6] == a2)
    {
      return 1;
    }

    v12 = 0;
    v13 = 0;
    while (1)
    {
      v14 = v11[1].i32[1];
      v15 = v10[1].i32[1];
      if (v14 <= v15)
      {
        if (v14 < v15)
        {
          goto LABEL_28;
        }

        v16 = v11[1].f32[0];
        v24 = v10[1].f32[0];
        if (v16 <= v24)
        {
          if (v16 < v24)
          {
            goto LABEL_28;
          }

          v25 = vcgt_f32(*v10, *v11);
          if ((v25.i8[0] & 1) == 0 && ((vmvn_s8(vcgt_f32(*v11, *v10)).u8[0] & 1) == 0 || (v25.i8[4] & 1) == 0))
          {
            goto LABEL_28;
          }
        }
      }

      else
      {
        v16 = v11[1].f32[0];
      }

      v17 = *v11;
      *v11->f32 = *v10->f32;
      v18 = v12;
      while (1)
      {
        v19 = a1 + v18;
        v20 = *(&a1[3].i32[1] + v18);
        if (v14 <= v20)
        {
          if (v14 < v20)
          {
            goto LABEL_25;
          }

          v21 = *(a1[3].f32 + v18);
          if (v16 <= v21)
          {
            if (v16 < v21)
            {
              goto LABEL_25;
            }

            v22 = *(v19 + 16);
            v23 = vcgt_f32(v22, v17);
            if ((v23.i8[0] & 1) == 0 && ((vmvn_s8(vcgt_f32(v17, v22)).u8[0] & 1) == 0 || (v23.i8[4] & 1) == 0))
            {
              break;
            }
          }
        }

        v10 -= 2;
        *(v19 + 2) = *(v19 + 1);
        v18 -= 16;
        if (v18 == -32)
        {
          v10 = a1;
          goto LABEL_25;
        }
      }

      v10 = (a1 + v18 + 32);
LABEL_25:
      *v10 = v17;
      v10[1].f32[0] = v16;
      v10[1].i32[1] = v14;
      if (++v13 == 8)
      {
        return &v11[2] == a2;
      }

LABEL_28:
      v10 = v11;
      v12 += 16;
      v11 += 2;
      if (v11 == a2)
      {
        return 1;
      }
    }
  }

  v6 = a2 - 2;
  v7 = a2[-1].i32[1];
  v8 = a1[1].i32[1];
  if (v7 > v8)
  {
    goto LABEL_5;
  }

  if (v7 < v8)
  {
    return 1;
  }

  v36 = a2[-1].f32[0];
  v37 = a1[1].f32[0];
  if (v36 > v37)
  {
    goto LABEL_5;
  }

  if (v36 < v37)
  {
    return 1;
  }

  v38 = vcgt_f32(*a1, *v6);
  if (v38.i8[0] & 1) != 0 || (v39 = vmvn_s8(vcgt_f32(*v6, *a1)).u8[0], result = 1, (v39) && (v38.i8[4])
  {
LABEL_5:
    v9 = *a1->f32;
    *a1->f32 = *v6->f32;
    *v6->f32 = v9;
    return 1;
  }

  return result;
}

double sub_262215FC0(int32x2_t *a1, int32x2_t *a2, int32x2_t *a3, uint64_t *a4)
{
  v8 = *a4;
  v67 = *a2;
  v9 = *sub_262212664(v8, &v67 + 1, &v67);
  v10 = *a4;
  v66 = *a1;
  if (v9 > *sub_262212664(v10, &v66 + 1, &v66) || (v19 = *a4, v20 = *a2, v67.i32[1] = HIDWORD(*a2), v67.i32[0] = v20.i32[0], v21 = *sub_262212664(v19, &v67 + 1, &v67), v22 = *a4, v23 = *a1, HIDWORD(v66) = HIDWORD(*a1), LODWORD(v66) = v23, v21 == *sub_262212664(v22, &v66 + 1, &v66)) && ((v24 = HIDWORD(*a2), v25 = HIDWORD(*a1), v24 < v25) || v24 == v25 && (vcgt_s32(*a1, *a2).u8[0] & 1) != 0))
  {
    v11 = *a4;
    v12 = *a3;
    v67.i32[1] = HIDWORD(*a3);
    v67.i32[0] = LODWORD(v12);
    v13 = *sub_262212664(v11, &v67 + 1, &v67);
    v14 = *a4;
    v15 = *a2;
    HIDWORD(v66) = HIDWORD(*a2);
    LODWORD(v66) = v15.i32[0];
    v16 = sub_262212664(v14, &v66 + 1, &v66);
    result = *a3;
    if (v13 > *v16 || (v34 = *a4, v67 = *a3, v35 = *sub_262212664(v34, &v67 + 1, &v67), v36 = *a4, v66 = *a2, v37 = sub_262212664(v36, &v66 + 1, &v66), v38 = *a2, v35 == *v37) && ((result = *a3, v39 = HIDWORD(*a3), v39 < v38.i32[1]) || v39 == v38.i32[1] && (vcgt_s32(v38, *&result).u8[0] & 1) != 0))
    {
      v18 = *a1;
      *a1 = result;
      *a3 = v18;
      return result;
    }

    v40 = *a1;
    *a1 = v38;
    *a2 = v40;
    v41 = *a4;
    v42 = *a3;
    v67.i32[1] = HIDWORD(*a3);
    v67.i32[0] = v42.i32[0];
    v43 = *sub_262212664(v41, &v67 + 1, &v67);
    v44 = *a4;
    v45 = *a2;
    HIDWORD(v66) = HIDWORD(*a2);
    LODWORD(v66) = v45.i32[0];
    if (v43 <= *sub_262212664(v44, &v66 + 1, &v66))
    {
      v61 = *a4;
      v67 = *a3;
      v62 = *sub_262212664(v61, &v67 + 1, &v67);
      v63 = *a4;
      v66 = *a2;
      if (v62 != *sub_262212664(v63, &v66 + 1, &v66))
      {
        return result;
      }

      result = *a3;
      v64 = HIDWORD(*a3);
      v46 = *a2;
      v65 = HIDWORD(*a2);
      if (v64 >= v65 && (v64 != v65 || (vcgt_s32(v46, *&result).u8[0] & 1) == 0))
      {
        return result;
      }
    }

    else
    {
      v46 = *a2;
      result = *a3;
    }

    *a2 = result;
    *a3 = v46;
    return result;
  }

  v26 = *a4;
  v67 = *a3;
  v27 = *sub_262212664(v26, &v67 + 1, &v67);
  v28 = *a4;
  v66 = *a2;
  if (v27 <= *sub_262212664(v28, &v66 + 1, &v66))
  {
    v47 = *a4;
    v48 = *a3;
    v67.i32[1] = HIDWORD(*a3);
    v67.i32[0] = v48.i32[0];
    v49 = *sub_262212664(v47, &v67 + 1, &v67);
    v50 = *a4;
    v51 = *a2;
    HIDWORD(v66) = HIDWORD(*a2);
    LODWORD(v66) = v51.i32[0];
    if (v49 != *sub_262212664(v50, &v66 + 1, &v66))
    {
      return result;
    }

    result = *a3;
    v52 = HIDWORD(*a3);
    v29 = *a2;
    v53 = HIDWORD(*a2);
    if (v52 >= v53 && (v52 != v53 || (vcgt_s32(v29, *&result).u8[0] & 1) == 0))
    {
      return result;
    }
  }

  else
  {
    v29 = *a2;
    result = *a3;
  }

  *a2 = result;
  *a3 = v29;
  v30 = *a4;
  v67 = *a2;
  v31 = *sub_262212664(v30, &v67 + 1, &v67);
  v32 = *a4;
  v66 = *a1;
  if (v31 > *sub_262212664(v32, &v66 + 1, &v66))
  {
    v33 = *a1;
    result = *a2;
LABEL_12:
    *a1 = result;
    *a2 = v33;
    return result;
  }

  v54 = *a4;
  v55 = *a2;
  v67.i32[1] = HIDWORD(*a2);
  v67.i32[0] = v55.i32[0];
  v56 = *sub_262212664(v54, &v67 + 1, &v67);
  v57 = *a4;
  v58 = *a1;
  HIDWORD(v66) = HIDWORD(*a1);
  LODWORD(v66) = v58.i32[0];
  if (v56 == *sub_262212664(v57, &v66 + 1, &v66))
  {
    result = *a2;
    v59 = HIDWORD(*a2);
    v33 = *a1;
    v60 = HIDWORD(*a1);
    if (v59 < v60 || v59 == v60 && (vcgt_s32(v33, *&result).u8[0] & 1) != 0)
    {
      goto LABEL_12;
    }
  }

  return result;
}

double sub_26221643C(int32x2_t *a1, int32x2_t *a2, int32x2_t *a3, int32x2_t *a4, uint64_t *a5)
{
  sub_262215FC0(a1, a2, a3, a5);
  v10 = *a5;
  v45 = *a4;
  v11 = *sub_262212664(v10, &v45 + 1, &v45);
  v12 = *a5;
  v44 = *a3;
  if (v11 <= *sub_262212664(v12, &v44 + 1, &v44))
  {
    v23 = *a5;
    v24 = *a4;
    HIDWORD(v45) = HIDWORD(*a4);
    LODWORD(v45) = v24;
    v25 = *sub_262212664(v23, &v45 + 1, &v45);
    v26 = *a5;
    v27 = *a3;
    v44.i32[1] = HIDWORD(*a3);
    v44.i32[0] = v27.i32[0];
    if (v25 != *sub_262212664(v26, &v44 + 1, &v44))
    {
      return result;
    }

    result = *a4;
    v28 = HIDWORD(*a4);
    v13 = *a3;
    v29 = HIDWORD(*a3);
    if (v28 >= v29 && (v28 != v29 || (vcgt_s32(v13, *&result).u8[0] & 1) == 0))
    {
      return result;
    }
  }

  else
  {
    v13 = *a3;
    result = *a4;
  }

  *a3 = result;
  *a4 = v13;
  v15 = *a5;
  v45 = *a3;
  v16 = *sub_262212664(v15, &v45 + 1, &v45);
  v17 = *a5;
  v44 = *a2;
  if (v16 <= *sub_262212664(v17, &v44 + 1, &v44))
  {
    v30 = *a5;
    v31 = *a3;
    HIDWORD(v45) = HIDWORD(*a3);
    LODWORD(v45) = v31.i32[0];
    v32 = *sub_262212664(v30, &v45 + 1, &v45);
    v33 = *a5;
    v34 = *a2;
    v44.i32[1] = HIDWORD(*a2);
    v44.i32[0] = v34.i32[0];
    if (v32 != *sub_262212664(v33, &v44 + 1, &v44))
    {
      return result;
    }

    result = *a3;
    v35 = HIDWORD(*a3);
    v18 = *a2;
    v36 = HIDWORD(*a2);
    if (v35 >= v36 && (v35 != v36 || (vcgt_s32(v18, *&result).u8[0] & 1) == 0))
    {
      return result;
    }
  }

  else
  {
    v18 = *a2;
    result = *a3;
  }

  *a2 = result;
  *a3 = v18;
  v19 = *a5;
  v45 = *a2;
  v20 = *sub_262212664(v19, &v45 + 1, &v45);
  v21 = *a5;
  v44 = *a1;
  if (v20 > *sub_262212664(v21, &v44 + 1, &v44))
  {
    v22 = *a1;
    result = *a2;
LABEL_7:
    *a1 = result;
    *a2 = v22;
    return result;
  }

  v37 = *a5;
  v38 = *a2;
  HIDWORD(v45) = HIDWORD(*a2);
  LODWORD(v45) = v38.i32[0];
  v39 = *sub_262212664(v37, &v45 + 1, &v45);
  v40 = *a5;
  v41 = *a1;
  v44.i32[1] = HIDWORD(*a1);
  v44.i32[0] = v41.i32[0];
  if (v39 == *sub_262212664(v40, &v44 + 1, &v44))
  {
    result = *a2;
    v42 = HIDWORD(*a2);
    v22 = *a1;
    v43 = HIDWORD(*a1);
    if (v42 < v43 || v42 == v43 && (vcgt_s32(v22, *&result).u8[0] & 1) != 0)
    {
      goto LABEL_7;
    }
  }

  return result;
}

double sub_26221671C(int32x2_t *a1, int32x2_t *a2, int32x2_t *a3, int32x2_t *a4, int32x2_t *a5, uint64_t *a6)
{
  sub_26221643C(a1, a2, a3, a4, a6);
  v12 = *a6;
  v58 = *a5;
  v13 = *sub_262212664(v12, &v58 + 1, &v58);
  v14 = *a6;
  v57 = *a4;
  if (v13 <= *sub_262212664(v14, &v57 + 1, &v57))
  {
    v29 = *a6;
    v30 = *a5;
    HIDWORD(v58) = HIDWORD(*a5);
    LODWORD(v58) = v30;
    v31 = *sub_262212664(v29, &v58 + 1, &v58);
    v32 = *a6;
    v33 = *a4;
    v57.i32[1] = HIDWORD(*a4);
    v57.i32[0] = v33.i32[0];
    if (v31 != *sub_262212664(v32, &v57 + 1, &v57))
    {
      return result;
    }

    result = *a5;
    v34 = HIDWORD(*a5);
    v15 = *a4;
    v35 = HIDWORD(*a4);
    if (v34 >= v35 && (v34 != v35 || (vcgt_s32(v15, *&result).u8[0] & 1) == 0))
    {
      return result;
    }
  }

  else
  {
    v15 = *a4;
    result = *a5;
  }

  *a4 = result;
  *a5 = v15;
  v17 = *a6;
  v58 = *a4;
  v18 = *sub_262212664(v17, &v58 + 1, &v58);
  v19 = *a6;
  v57 = *a3;
  if (v18 <= *sub_262212664(v19, &v57 + 1, &v57))
  {
    v36 = *a6;
    v37 = *a4;
    HIDWORD(v58) = HIDWORD(*a4);
    LODWORD(v58) = v37.i32[0];
    v38 = *sub_262212664(v36, &v58 + 1, &v58);
    v39 = *a6;
    v40 = *a3;
    v57.i32[1] = HIDWORD(*a3);
    v57.i32[0] = v40.i32[0];
    if (v38 != *sub_262212664(v39, &v57 + 1, &v57))
    {
      return result;
    }

    result = *a4;
    v41 = HIDWORD(*a4);
    v20 = *a3;
    v42 = HIDWORD(*a3);
    if (v41 >= v42 && (v41 != v42 || (vcgt_s32(v20, *&result).u8[0] & 1) == 0))
    {
      return result;
    }
  }

  else
  {
    v20 = *a3;
    result = *a4;
  }

  *a3 = result;
  *a4 = v20;
  v21 = *a6;
  v58 = *a3;
  v22 = *sub_262212664(v21, &v58 + 1, &v58);
  v23 = *a6;
  v57 = *a2;
  if (v22 <= *sub_262212664(v23, &v57 + 1, &v57))
  {
    v43 = *a6;
    v44 = *a3;
    HIDWORD(v58) = HIDWORD(*a3);
    LODWORD(v58) = v44.i32[0];
    v45 = *sub_262212664(v43, &v58 + 1, &v58);
    v46 = *a6;
    v47 = *a2;
    v57.i32[1] = HIDWORD(*a2);
    v57.i32[0] = v47.i32[0];
    if (v45 != *sub_262212664(v46, &v57 + 1, &v57))
    {
      return result;
    }

    result = *a3;
    v48 = HIDWORD(*a3);
    v24 = *a2;
    v49 = HIDWORD(*a2);
    if (v48 >= v49 && (v48 != v49 || (vcgt_s32(v24, *&result).u8[0] & 1) == 0))
    {
      return result;
    }
  }

  else
  {
    v24 = *a2;
    result = *a3;
  }

  *a2 = result;
  *a3 = v24;
  v25 = *a6;
  v58 = *a2;
  v26 = *sub_262212664(v25, &v58 + 1, &v58);
  v27 = *a6;
  v57 = *a1;
  if (v26 > *sub_262212664(v27, &v57 + 1, &v57))
  {
    v28 = *a1;
    result = *a2;
LABEL_9:
    *a1 = result;
    *a2 = v28;
    return result;
  }

  v50 = *a6;
  v51 = *a2;
  HIDWORD(v58) = HIDWORD(*a2);
  LODWORD(v58) = v51.i32[0];
  v52 = *sub_262212664(v50, &v58 + 1, &v58);
  v53 = *a6;
  v54 = *a1;
  v57.i32[1] = HIDWORD(*a1);
  v57.i32[0] = v54.i32[0];
  if (v52 == *sub_262212664(v53, &v57 + 1, &v57))
  {
    result = *a2;
    v55 = HIDWORD(*a2);
    v28 = *a1;
    v56 = HIDWORD(*a1);
    if (v55 < v56 || v55 == v56 && (vcgt_s32(v28, *&result).u8[0] & 1) != 0)
    {
      goto LABEL_9;
    }
  }

  return result;
}

BOOL sub_262216AE0(int32x2_t *a1, int32x2_t *a2, uint64_t *a3)
{
  v4 = a2;
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        sub_262215FC0(a1, a1 + 1, a2 - 1, a3);
        return 1;
      case 4:
        sub_26221643C(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        return 1;
      case 5:
        sub_26221671C(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
        return 1;
    }

    goto LABEL_12;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 != 2)
  {
LABEL_12:
    v12 = a1 + 2;
    sub_262215FC0(a1, a1 + 1, a1 + 2, a3);
    v13 = a1 + 3;
    if (&a1[3] == v4)
    {
      return 1;
    }

    v14 = 0;
    v47 = 0;
    v45 = v4;
    while (1)
    {
      v15 = *a3;
      v16 = *v13;
      HIDWORD(v50) = HIDWORD(*v13);
      LODWORD(v50) = v16.i32[0];
      v17 = *sub_262212664(v15, &v50 + 1, &v50);
      v18 = *a3;
      v19 = *v12;
      v49.i32[1] = HIDWORD(*v12);
      v49.i32[0] = v19.i32[0];
      v20 = sub_262212664(v18, &v49 + 1, &v49);
      v21 = *v13;
      if (v17 <= *v20)
      {
        v34 = *a3;
        v50 = *v13;
        v35 = *sub_262212664(v34, &v50 + 1, &v50);
        v36 = *a3;
        v37 = *v12;
        v49.i32[1] = HIDWORD(*v12);
        v49.i32[0] = v37.i32[0];
        if (v35 != *sub_262212664(v36, &v49 + 1, &v49))
        {
          goto LABEL_32;
        }

        v21 = *v13;
        v23 = HIDWORD(*v13);
        v22 = *v12;
        v38 = HIDWORD(*v12);
        if (v23 >= v38 && (v23 != v38 || (vcgt_s32(v22, v21).u8[0] & 1) == 0))
        {
          goto LABEL_32;
        }
      }

      else
      {
        v22 = *v12;
        v23 = HIDWORD(*v13);
      }

      *v13 = v22;
      v48 = v21;
      v24 = v21.i32[0];
      v46 = v14;
      v25 = v14;
      while (1)
      {
        v26 = (a1 + v25);
        v27 = *a3;
        v50 = __PAIR64__(v23, v24);
        v28 = *sub_262212664(v27, &v50 + 1, &v50);
        v29 = *a3;
        v49 = *(&a1[1] + v25);
        if (v28 <= *sub_262212664(v29, &v49 + 1, &v49))
        {
          break;
        }

        v30 = v26[1];
LABEL_23:
        --v12;
        v26[2] = v30;
        v25 -= 8;
        if (v25 == -16)
        {
          v12 = a1;
          goto LABEL_31;
        }
      }

      v31 = *a3;
      v50 = __PAIR64__(v23, v24);
      v32 = *sub_262212664(v31, &v50 + 1, &v50);
      v33 = *a3;
      v49 = v26[1];
      if (v32 == *sub_262212664(v33, &v49 + 1, &v49))
      {
        break;
      }

      v12 = (a1 + v25 + 16);
LABEL_31:
      *v12 = v48;
      ++v47;
      v4 = v45;
      v14 = v46;
      if (v47 == 8)
      {
        return &v13[1] == v45;
      }

LABEL_32:
      v12 = v13;
      v14 += 8;
      if (++v13 == v4)
      {
        return 1;
      }
    }

    v30 = v26[1];
    if (v23 >= v30.i32[1] && (v23 != v30.i32[1] || (vcgt_s32(v30, v48).u8[0] & 1) == 0))
    {
      goto LABEL_31;
    }

    goto LABEL_23;
  }

  v7 = *a3;
  v50 = a2[-1];
  v8 = *sub_262212664(v7, &v50 + 1, &v50);
  v9 = *a3;
  v49 = *a1;
  if (v8 > *sub_262212664(v9, &v49 + 1, &v49))
  {
    v10 = *a1;
    v11 = v4[-1];
    goto LABEL_6;
  }

  v40 = *a3;
  v50 = v4[-1];
  v41 = *sub_262212664(v40, &v50 + 1, &v50);
  v42 = *a3;
  v43 = *a1;
  v49.i32[1] = HIDWORD(*a1);
  v49.i32[0] = v43.i32[0];
  if (v41 != *sub_262212664(v42, &v49 + 1, &v49))
  {
    return 1;
  }

  v11 = v4[-1];
  v10 = *a1;
  v44 = HIDWORD(*a1);
  if (v11.i32[1] < v44 || (result = 1, v11.i32[1] == v44) && (vcgt_s32(v10, v11).u8[0] & 1) != 0)
  {
LABEL_6:
    *a1 = v11;
    v4[-1] = v10;
    return 1;
  }

  return result;
}

void sub_262216EDC(void *a1)
{
  sub_262216F14(a1);

  JUMPOUT(0x266727420);
}

void *sub_262216F14(void *a1)
{
  *a1 = &unk_2874EE330;
  a1[264] = &unk_2874EF0D8;
  v2 = a1[280];
  if (v2)
  {
    sub_2621D1B78(v2);
  }

  a1[245] = &unk_2874EF0B8;
  v3 = a1[261];
  if (v3)
  {
    sub_2621D1B78(v3);
  }

  sub_262216FC4(a1 + 206);
  sub_262216FC4(a1 + 167);
  sub_2622EB6FC((a1 + 1));
  return a1;
}

void *sub_262216FC4(void *a1)
{
  sub_262217048(a1[36]);
  sub_2622170A4(a1[31]);
  sub_2622170A4(a1[27]);
  sub_262217048(a1[21]);
  v2 = a1[11];
  if (v2)
  {
    a1[12] = v2;
    operator delete(v2);
  }

  v3 = a1[8];
  if (v3)
  {
    a1[9] = v3;
    operator delete(v3);
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void sub_262217048(void *a1)
{
  if (a1)
  {
    sub_262217048(*a1);
    sub_262217048(a1[1]);
    v2 = a1[4];
    if (v2)
    {
      a1[5] = v2;
      operator delete(v2);
    }

    operator delete(a1);
  }
}

void sub_2622170A4(void *a1)
{
  if (a1)
  {
    sub_2622170A4(*a1);
    sub_2622170A4(a1[1]);
    sub_2622170F8((a1 + 4));

    operator delete(a1);
  }
}

void sub_2622170F8(uint64_t a1)
{
  v3 = (a1 + 24);
  sub_2621E1D40(&v3);
  v2 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v2;

    operator delete(v2);
  }
}

void sub_262217160(uint64_t a1)
{
  *(a1 + 112) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  sub_2622171BC(a1 + 120);
}

void sub_2622171A0(_Unwind_Exception *a1)
{
  sub_2621C57C8(v1 + 64);
  sub_2621C57C8(v1 + 8);
  _Unwind_Resume(a1);
}

void sub_2622171BC(uint64_t a1)
{
  *v36 = *MEMORY[0x277D85DE8];
  *(a1 + 48) = 0;
  *(a1 + 40) = a1 + 48;
  v2 = (a1 + 40);
  *(a1 + 56) = 0;
  *(a1 + 96) = 0;
  *(a1 + 88) = a1 + 96;
  *(a1 + 128) = 0;
  *(a1 + 120) = a1 + 128;
  *(a1 + 104) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0x4270000041F00000;
  *(a1 + 168) = 0;
  *(a1 + 160) = a1 + 168;
  v3 = (a1 + 160);
  *(a1 + 176) = 0;
  *a1 = 512;
  *(a1 + 8) = -3272228209;
  *(a1 + 16) = 1065353216;
  *(a1 + 24) = 3;
  *(a1 + 32) = 1062323445;
  v33 = 0x3F80000000000000;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  sub_2621DC430(&v25, &v33, v34, 2uLL);
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v4 = v25;
  sub_2621C8E70(&v16, v25, v26, (v26 - v25) >> 2);
  v19 = 1;
  *&v31 = 0x42C800003F800000;
  v29 = 0;
  v28 = 0uLL;
  sub_2621DC430(&v28, &v31, &v31 + 2, 2uLL);
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v5 = v28;
  sub_2621C8E70(&v20, v28, *(&v28 + 1), (*(&v28 + 1) - v28) >> 2);
  v23 = 2;
  sub_262217F3C(v2, &v16, &v24);
  v6 = 0;
  while (1)
  {
    v7 = *(&v20 + v6);
    if (v7)
    {
      *(&v21 + v6) = v7;
      operator delete(v7);
    }

    v6 -= 32;
    if (v6 == -64)
    {
      if (v5)
      {
        operator delete(v5);
      }

      if (v4)
      {
        operator delete(v4);
      }

      *(a1 + 64) = xmmword_2623A7840;
      *(a1 + 80) = 1046085416;
      *(a1 + 152) = 1028982744;
      v33 = 0x4000000000000000;
      v26 = 0;
      v27 = 0;
      v25 = 0;
      sub_2621DC430(&v25, &v33, v34, 2uLL);
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v8 = v25;
      sub_2621C8E70(&v16, v25, v26, (v26 - v25) >> 2);
      v19 = 1;
      *&v31 = 0x42C8000040000000;
      v29 = 0;
      v28 = 0uLL;
      sub_2621DC430(&v28, &v31, &v31 + 2, 2uLL);
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v9 = v28;
      sub_2621C8E70(&v20, v28, *(&v28 + 1), (*(&v28 + 1) - v28) >> 2);
      v23 = 2;
      sub_262217F3C(v3, &v16, &v24);
      v10 = 0;
      while (1)
      {
        v11 = *(&v20 + v10);
        if (v11)
        {
          *(&v21 + v10) = v11;
          operator delete(v11);
        }

        v10 -= 32;
        if (v10 == -64)
        {
          if (v9)
          {
            operator delete(v9);
          }

          if (v8)
          {
            operator delete(v8);
          }

          *(a1 + 184) = 1036831949;
          v14 = 0x3F80000000000000;
          v34[0] = 0;
          v34[1] = 0;
          v33 = 0;
          sub_2621DC430(&v33, &v14, &v15, 2uLL);
          __p = 0x3F0000003F000000;
          v29 = 0;
          v28 = 0uLL;
          sub_2621DC430(&v28, &__p, &v13, 2uLL);
          v35 = 0x3ECCCCCD3F733333;
          memset(v30, 0, sizeof(v30));
          sub_2621DC430(v30, &v35, v36, 2uLL);
          v31 = 0uLL;
          v32 = 0;
          sub_2622180B8(&v31, &v28, &v31, 2uLL);
        }
      }
    }
  }
}

void sub_262217AE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void **a9, void **a10, void **a11, void **a12, uint64_t a13, void **a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  v65 = -144;
  v66 = v61;
  do
  {
    v66 = sub_262218330(v66) - 48;
    v65 += 48;
  }

  while (v65);
  v62[50] = &a23;
  sub_2621E1D40((v63 - 144));
  if (__p)
  {
    a21 = __p;
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  a14 = &a17;
  sub_2621E1D40(&a14);
  v67 = v62[34];
  if (v67)
  {
    v62[35] = v67;
    operator delete(v67);
  }

  v68 = v62[44];
  if (v68)
  {
    operator delete(v68);
  }

  v62[44] = v63 - 240;
  sub_2621E1D40((v63 - 192));
  v69 = v62[47];
  if (v69)
  {
    v62[48] = v69;
    operator delete(v69);
  }

  v70 = v62[22];
  if (v70)
  {
    operator delete(v70);
  }

  sub_262217048(*a9);
  sub_2622170A4(*a10);
  sub_2622170A4(*a11);
  sub_262217048(*a12);
  _Unwind_Resume(a1);
}

uint64_t ***sub_262217F3C(uint64_t ***result, float **a2, float **a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    *(v7 + 16) = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v14 = result;
    v15 = v8;
    v16 = v8;
    if (v8)
    {
      v15 = sub_2621CBE5C(v8);
      if (a2 != a3)
      {
        do
        {
          v9 = sub_2622187B0(v5, &v12, *a2, a2[1]);
          if (*v9)
          {
            v8 = v16;
          }

          else
          {
            v10 = v9;
            v13[0] = v8 + 4;
            v13[1] = v8 + 7;
            sub_262218960(v13, a2);
            sub_2621C6C50(v5, v12, v10, v8);
            v8 = v15;
            v16 = v15;
            if (!v15)
            {
              a2 += 4;
              break;
            }

            v15 = sub_2621CBE5C(v15);
          }

          a2 += 4;
          if (v8)
          {
            v11 = a2 == a3;
          }

          else
          {
            v11 = 1;
          }
        }

        while (!v11);
      }
    }

    result = sub_262218760(&v14);
  }

  while (a2 != a3)
  {
    result = sub_2622187B0(v5, v13, *a2, a2[1]);
    if (!*result)
    {
      sub_26221886C(&v14, v5, a2);
    }

    a2 += 4;
  }

  return result;
}

void sub_2622180A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_262218760(va);
  _Unwind_Resume(a1);
}

uint64_t ***sub_2622181A8(uint64_t ***result, float **a2, float **a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    *(v7 + 16) = 0;
    result[1] = 0;
    result[2] = 0;
    if (*(v6 + 8))
    {
      v8 = *(v6 + 8);
    }

    else
    {
      v8 = v6;
    }

    v14 = result;
    v15 = v8;
    v16 = v8;
    if (v8)
    {
      v15 = sub_2621CBE5C(v8);
      if (a2 != a3)
      {
        do
        {
          v9 = sub_2622187B0(v5, &v12, *a2, a2[1]);
          if (*v9)
          {
            v8 = v16;
          }

          else
          {
            v10 = v9;
            v13[0] = v8 + 4;
            v13[1] = v8 + 7;
            sub_262218550(v13, a2);
            sub_2621C6C50(v5, v12, v10, v8);
            v8 = v15;
            v16 = v15;
            if (!v15)
            {
              a2 += 6;
              break;
            }

            v15 = sub_2621CBE5C(v15);
          }

          a2 += 6;
          if (v8)
          {
            v11 = a2 == a3;
          }

          else
          {
            v11 = 1;
          }
        }

        while (!v11);
      }
    }

    result = sub_26221837C(&v14);
  }

  while (a2 != a3)
  {
    result = sub_2622187B0(v5, v13, *a2, a2[1]);
    if (!*result)
    {
      sub_2622183CC(&v14, v5, a2);
    }

    a2 += 6;
  }

  return result;
}

void sub_26221831C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_26221837C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_262218330(uint64_t a1)
{
  v4 = (a1 + 24);
  sub_2621E1D40(&v4);
  v2 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_26221837C(uint64_t a1)
{
  sub_2622170A4(*(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    sub_2622170A4(v2);
  }

  return a1;
}

void sub_262218470(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 40) = v5;
    operator delete(v5);
  }

  sub_26221849C(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_26221849C(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_2622170F8(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_2622184E8(float *a1, uint64_t a2, float *a3, uint64_t a4)
{
  v4 = (a2 - a1) >> 2;
  v5 = (a4 - a3) >> 2;
  if (v5 >= v4)
  {
    v6 = (a2 - a1) >> 2;
  }

  else
  {
    v6 = (a4 - a3) >> 2;
  }

  if (v6 < 1)
  {
LABEL_15:
    if (v4 < v5)
    {
      LODWORD(v7) = -1;
    }

    else
    {
      LODWORD(v7) = 1;
    }

    if (v4 == v5)
    {
      return 0;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    while (1)
    {
      if (*a1 == *a3)
      {
        LODWORD(v7) = 0;
      }

      else
      {
        LODWORD(v7) = -127;
      }

      if (*a1 > *a3)
      {
        LODWORD(v7) = 1;
      }

      v7 = *a1 < *a3 ? 0xFFFFFFFFLL : v7;
      if (v7)
      {
        break;
      }

      ++a1;
      ++a3;
      if (!--v6)
      {
        goto LABEL_15;
      }
    }
  }

  return v7;
}

uint64_t **sub_262218550(uint64_t **a1, uint64_t a2)
{
  v4 = *a1;
  if (v4 != a2)
  {
    sub_2621CA9DC(v4, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
  }

  v5 = a1[1];
  if (v5 != a2 + 24)
  {
    v7 = *(a2 + 24);
    v6 = *(a2 + 32);
    v8 = v6 - v7;
    v9 = *(v5 + 16);
    v10 = *v5;
    if (v9 - *v5 < (v6 - v7))
    {
      v11 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
      if (v10)
      {
        sub_2621E1D94(a1[1]);
        operator delete(*v5);
        v9 = 0;
        *v5 = 0;
        *(v5 + 8) = 0;
        *(v5 + 16) = 0;
      }

      if (v11 <= 0xAAAAAAAAAAAAAAALL)
      {
        v12 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 3);
        v13 = 2 * v12;
        if (2 * v12 <= v11)
        {
          v13 = v11;
        }

        if (v12 >= 0x555555555555555)
        {
          v14 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v14 = v13;
        }

        sub_2621E1E94(v5, v14);
      }

      sub_2621CBEB0();
    }

    v15 = *(v5 + 8) - v10;
    if (v15 >= v8)
    {
      sub_2622186F0(v7, v6, v10);
      v18 = v17;
      v19 = *(v5 + 8);
      if (v19 != v17)
      {
        v20 = *(v5 + 8);
        do
        {
          v22 = *(v20 - 24);
          v20 -= 24;
          v21 = v22;
          if (v22)
          {
            *(v19 - 16) = v21;
            operator delete(v21);
          }

          v19 = v20;
        }

        while (v20 != v18);
      }

      *(v5 + 8) = v18;
    }

    else
    {
      v16 = sub_2622186F0(v7, (v7 + v15), v10);
      *(v5 + 8) = sub_26220A974(v5, v16, v6, *(v5 + 8));
    }
  }

  return a1;
}

char **sub_2622186F0(char **a1, char **a2, uint64_t *a3)
{
  v4 = a1;
  if (a1 != a2)
  {
    do
    {
      if (v4 != a3)
      {
        sub_2621CA9DC(a3, *v4, v4[1], (v4[1] - *v4) >> 2);
      }

      v4 += 3;
      a3 += 3;
    }

    while (v4 != a2);
    return a2;
  }

  return v4;
}

uint64_t sub_262218760(uint64_t a1)
{
  sub_262217048(*(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    sub_262217048(v2);
  }

  return a1;
}

void *sub_2622187B0(uint64_t a1, void *a2, float *a3, uint64_t a4)
{
  v6 = (a1 + 8);
  v5 = *(a1 + 8);
  if (v5)
  {
    do
    {
      while (1)
      {
        v9 = v5;
        v10 = *(v5 + 32);
        v11 = *(v5 + 40);
        if (sub_2622184E8(a3, a4, v10, v11) != 0xFF)
        {
          break;
        }

        v5 = *v9;
        v6 = v9;
        if (!*v9)
        {
          goto LABEL_9;
        }
      }

      if (sub_2622184E8(v10, v11, a3, a4) != 0xFF)
      {
        break;
      }

      v6 = v9 + 1;
      v5 = v9[1];
    }

    while (v5);
  }

  else
  {
    v9 = (a1 + 8);
  }

LABEL_9:
  *a2 = v9;
  return v6;
}

void sub_2622188E8(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_262218904(0, v2);
  _Unwind_Resume(a1);
}

void sub_262218904(char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[4];
    if (v3)
    {
      __p[5] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t **sub_262218960(uint64_t **a1, uint64_t a2)
{
  v4 = *a1;
  if (v4 != a2)
  {
    sub_2621CA9DC(v4, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
  }

  *a1[1] = *(a2 + 24);
  return a1;
}

void sub_2622189B0(uint64_t a1)
{
  *a1 = &unk_2874EE330;
  *(a1 + 8) = &unk_2874EE748;
  *(a1 + 16) = &unk_2874EE5C0;
  *(a1 + 48) = 0u;
  *(a1 + 40) = a1 + 48;
  *(a1 + 72) = 0u;
  *(a1 + 64) = a1 + 72;
  *(a1 + 88) = &unk_2874EF080;
  *(a1 + 96) = &unk_2874EF0B8;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 257;
  *(a1 + 248) = &unk_2874EF0B8;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 257;
  *(a1 + 400) = &unk_2874EF0B8;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 257;
  *(a1 + 552) = &unk_2874EF6A8;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 688) = 257;
  *(a1 + 704) = &unk_2874EF6A8;
  *(a1 + 776) = 0u;
  *(a1 + 792) = 0u;
  *(a1 + 744) = 0u;
  *(a1 + 760) = 0u;
  *(a1 + 712) = 0u;
  *(a1 + 728) = 0u;
  *(a1 + 824) = 0u;
  *(a1 + 840) = 257;
  *(a1 + 856) = &unk_2874EF6A8;
  *(a1 + 928) = 0u;
  *(a1 + 944) = 0u;
  *(a1 + 896) = 0u;
  *(a1 + 912) = 0u;
  *(a1 + 864) = 0u;
  *(a1 + 880) = 0u;
  *(a1 + 976) = 0u;
  *(a1 + 992) = 257;
  *(a1 + 1016) = &unk_2874EF0B8;
  *(a1 + 1104) = 0u;
  *(a1 + 1088) = 0u;
  *(a1 + 1072) = 0u;
  *(a1 + 1056) = 0u;
  *(a1 + 1040) = 0u;
  *(a1 + 1024) = 0u;
  *(a1 + 1136) = 0u;
  *(a1 + 1152) = 257;
  *(a1 + 1192) = 0;
  *(a1 + 1176) = 0u;
  *(a1 + 1208) = 0u;
  *(a1 + 1200) = a1 + 1208;
  *(a1 + 1224) = 70;
  *(a1 + 1240) = 0;
  *(a1 + 1232) = 0x42C800003C23D70ALL;
  *(a1 + 1248) = 64;
  *(a1 + 1272) = 64;
  *(a1 + 1256) = xmmword_2623A7850;
  *(a1 + 1280) = 1008981770;
  *(a1 + 1284) = 1;
  *(a1 + 1296) = 0u;
  *(a1 + 1288) = a1 + 1296;
  *(a1 + 1320) = 0u;
  *(a1 + 1312) = a1 + 1320;
  sub_262217160(a1 + 1336);
}

void sub_262218D18(_Unwind_Exception *a1)
{
  sub_262216FC4((v1 + 1336));
  sub_2622EB6FC(v2);
  _Unwind_Resume(a1);
}

void sub_262218D3C(uint64_t a1, uint64_t a2, char **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12[7] = *MEMORY[0x277D85DE8];
  sub_2621D0F64(&v8, "loi_input_2");
  sub_2621D0F64(&v9, "jmap");
  sub_2621D0F64(v10, "jmap_peaks");
  sub_2621D0F64(&v11, "lmap");
  memset(v7, 0, sizeof(v7));
  sub_2622C70D0(v7, &v8, v12, 4uLL);
}

void sub_262219B18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, std::__shared_weak_count *a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, std::__shared_weak_count *a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62)
{
  if (a57)
  {
    sub_2621D1B78(a57);
  }

  a19 = &unk_2874EF6A8;
  if (a35)
  {
    sub_2621D1B78(a35);
  }

  a19 = &a62;
  sub_2621DED18(&a19);
  _Unwind_Resume(a1);
}

float sub_262219CD8(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[1];
  *(a1 + 152) = *(a2 + 8);
  *(a1 + 136) = v5;
  *(a1 + 120) = v4;
  if ((a1 + 120) == a2)
  {
    v8 = a2[4];
    *(a1 + 200) = *(a2 + 20);
    *(a1 + 184) = v8;
    *(a1 + 232) = *(a2 + 14);
    v9 = *(a2 + 18);
    *(a1 + 272) = *(a2 + 38);
    *(a1 + 264) = v9;
  }

  else
  {
    sub_262219DB8((a1 + 160), *(a2 + 5), a2 + 6);
    v6 = a2[4];
    *(a1 + 200) = *(a2 + 20);
    *(a1 + 184) = v6;
    sub_262219F74((a1 + 208), *(a2 + 11), a2 + 12);
    *(a1 + 232) = *(a2 + 14);
    sub_262219F74((a1 + 240), *(a2 + 15), a2 + 16);
    v7 = *(a2 + 18);
    *(a1 + 272) = *(a2 + 38);
    *(a1 + 264) = v7;
    sub_262219DB8((a1 + 280), *(a2 + 20), a2 + 21);
  }

  result = *(a2 + 46);
  *(a1 + 304) = result;
  return result;
}

uint64_t **sub_262219DB8(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v15 = result;
    v16 = v8;
    v17 = v8;
    if (v8)
    {
      v16 = sub_2621CBE5C(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          v14[0] = v8 + 4;
          v14[1] = v8 + 7;
          sub_262218960(v14, (v9 + 4));
          v10 = v17;
          v11 = sub_26221A13C(v5, v14, v17[4], v17[5]);
          sub_2621C6C50(v5, v14[0], v11, v10);
          v17 = v16;
          if (v16)
          {
            v16 = sub_2621CBE5C(v16);
          }

          v12 = v9[1];
          if (v12)
          {
            do
            {
              a2 = v12;
              v12 = *v12;
            }

            while (v12);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v13 = *a2 == v9;
              v9 = a2;
            }

            while (!v13);
          }

          v8 = v17;
          if (v17)
          {
            v13 = a2 == a3;
          }

          else
          {
            v13 = 1;
          }

          v9 = a2;
        }

        while (!v13);
      }
    }

    result = sub_262218760(&v15);
  }

  if (a2 != a3)
  {
    sub_26221886C(&v15, v5, (a2 + 4));
  }

  return result;
}

void sub_262219F60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_262218760(va);
  _Unwind_Resume(a1);
}

uint64_t ***sub_262219F74(uint64_t ***result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    *(v7 + 16) = 0;
    result[1] = 0;
    result[2] = 0;
    if (*(v6 + 8))
    {
      v8 = *(v6 + 8);
    }

    else
    {
      v8 = v6;
    }

    v15 = result;
    v16 = v8;
    v17 = v8;
    if (v8)
    {
      v16 = sub_2621CBE5C(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          v14[0] = v8 + 4;
          v14[1] = v8 + 7;
          sub_262218550(v14, (v9 + 4));
          v10 = v17;
          v11 = sub_26221A13C(v5, v14, v17[4], v17[5]);
          sub_2621C6C50(v5, v14[0], v11, v10);
          v17 = v16;
          if (v16)
          {
            v16 = sub_2621CBE5C(v16);
          }

          v12 = v9[1];
          if (v12)
          {
            do
            {
              a2 = v12;
              v12 = *v12;
            }

            while (v12);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v13 = *a2 == v9;
              v9 = a2;
            }

            while (!v13);
          }

          v8 = v17;
          if (v17)
          {
            v13 = a2 == a3;
          }

          else
          {
            v13 = 1;
          }

          v9 = a2;
        }

        while (!v13);
      }
    }

    result = sub_26221837C(&v15);
  }

  if (a2 != a3)
  {
    sub_2622183CC(&v15, v5, (a2 + 4));
  }

  return result;
}

void sub_26221A128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_26221837C(va);
  _Unwind_Resume(a1);
}

void *sub_26221A13C(uint64_t a1, void *a2, float *a3, uint64_t a4)
{
  v6 = (a1 + 8);
  v5 = *(a1 + 8);
  if (v5)
  {
    do
    {
      while (1)
      {
        v6 = v5;
        if (sub_2622184E8(a3, a4, *(v5 + 32), *(v5 + 40)) != 0xFF)
        {
          break;
        }

        v5 = *v6;
        result = v6;
        if (!*v6)
        {
          goto LABEL_8;
        }
      }

      v5 = v6[1];
    }

    while (v5);
    result = v6 + 1;
  }

  else
  {
    result = (a1 + 8);
  }

LABEL_8:
  *a2 = v6;
  return result;
}

void sub_26221A1CC(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v97 = v4;
  v6 = v5;
  v136 = *MEMORY[0x277D85DE8];
  v90 = v1;
  v7 = *(v5 + 8);
  v8 = *(v5 + 40);
  *(v1 + 2136) = *(v5 + 24);
  *(v1 + 2152) = v8;
  *(v1 + 2120) = v7;
  v9 = *(v5 + 56);
  v10 = *(v5 + 72);
  v11 = *(v5 + 104);
  *(v1 + 2200) = *(v5 + 88);
  *(v1 + 2216) = v11;
  *(v1 + 2168) = v9;
  *(v1 + 2184) = v10;
  v13 = *(v5 + 120);
  v12 = *(v5 + 128);
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  *(v1 + 2232) = v13;
  v14 = *(v1 + 2240);
  *(v90 + 2240) = v12;
  if (v14)
  {
    sub_2621D1B78(v14);
  }

  *(v90 + 2256) = *(v6 + 144);
  *(v90 + 2248) = *(v6 + 136);
  v131 = 0;
  v130 = 0;
  v132 = 0;
  __b[0].__locale_ = 0;
  sub_2621C9004(&v130, __b);
  v15 = *(v3 + 8);
  v126[0] = 1;
  v16 = MEMORY[0x277D82670];
  v94 = v15;
  if (v15 < 2)
  {
    goto LABEL_57;
  }

  v17 = 1;
  v18 = MEMORY[0x277D82680];
  while (1)
  {
    sub_26221FC34(v101, v3, v126);
    *v125 = 0;
    v95 = v130;
    if (v131 == v130)
    {
      goto LABEL_51;
    }

    v19 = 0;
    if (((v131 - v130) >> 3) <= 1)
    {
      v20 = 1;
    }

    else
    {
      v20 = (v131 - v130) >> 3;
    }

    while (1)
    {
      sub_26221FC34(__p, v3, v125);
      if (v104 == 1)
      {
        sub_2621D552C(v16, "runtime_err in ", 15);
        sub_2621D552C(v16, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/function/tensor_equal.hpp", 107);
        sub_2621D552C(v16, " ", 1);
        v21 = MEMORY[0x266727260](v16, 38);
        sub_2621D552C(v21, " ", 1);
        sub_2621D552C(v21, "operator==", 10);
        std::ios_base::getloc((v21 + *(*v21 - 24)));
        v22 = std::locale::use_facet(__b, v18);
        (v22->__vftable[2].~facet_0)(v22, 10);
        std::locale::~locale(__b);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D8074("err", "empty tensor in");
        std::ios_base::getloc((v16 + *(*v16 - 24)));
        v23 = std::locale::use_facet(__b, v18);
        (v23->__vftable[2].~facet_0)(v23, 10);
        std::locale::~locale(__b);
        std::ostream::put();
        std::ostream::flush();
      }

      if (v100 == 1)
      {
        sub_2621D552C(v16, "runtime_err in ", 15);
        sub_2621D552C(v16, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/function/tensor_equal.hpp", 107);
        sub_2621D552C(v16, " ", 1);
        v24 = MEMORY[0x266727260](v16, 39);
        sub_2621D552C(v24, " ", 1);
        sub_2621D552C(v24, "operator==", 10);
        std::ios_base::getloc((v24 + *(*v24 - 24)));
        v25 = std::locale::use_facet(__b, v18);
        (v25->__vftable[2].~facet_0)(v25, 10);
        std::locale::~locale(__b);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D8074("err", "empty tensor in");
        std::ios_base::getloc((v16 + *(*v16 - 24)));
        v26 = std::locale::use_facet(__b, v18);
        (v26->__vftable[2].~facet_0)(v26, 10);
        std::locale::~locale(__b);
        std::ostream::put();
        std::ostream::flush();
      }

      if (v101[1].__locale_ != __p[1])
      {
        v39 = 0;
        goto LABEL_45;
      }

      v106 = 0u;
      v107 = 0u;
      *&__b[0].__locale_ = 0u;
      sub_262229F7C(&v108, v101);
      sub_262229F7C(&v117, __p);
      if (v109 != v118[0])
      {
        sub_2621D552C(v16, "runtime_err in ", 15);
        sub_2621D552C(v16, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/function/../expression/exp_element_binary.hpp", 127);
        sub_2621D552C(v16, " ", 1);
        v27 = MEMORY[0x266727260](v16, 64);
        sub_2621D552C(v27, " ", 1);
        sub_2621D552C(v27, "TensorBinaryExp", 15);
        std::ios_base::getloc((v27 + *(*v27 - 24)));
        v28 = std::locale::use_facet(v133, v18);
        (v28->__vftable[2].~facet_0)(v28, 10);
        std::locale::~locale(v133);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D6B98("err", "Binary Exp shape should equal");
        std::ios_base::getloc((v16 + *(*v16 - 24)));
        v29 = std::locale::use_facet(v133, v18);
        (v29->__vftable[2].~facet_0)(v29, 10);
        std::locale::~locale(v133);
        std::ostream::put();
        std::ostream::flush();
      }

      *&__b[0].__locale_ = v109;
      v106 = v110;
      v107 = v111;
      if ((v115 & 1) != 0 && v122 == 1)
      {
        if (v101[1].__locale_)
        {
          v30 = v116;
          v31 = v123;
          v32 = v101[1].__locale_ - 1;
          do
          {
            v33 = *v30++;
            v34 = v33;
            v35 = *v31++;
            v36 = v34 - v35;
            v37 = v32-- != 0;
            v38 = v37;
            v39 = v36 == 0.0;
          }

          while (v36 == 0.0 && (v38 & 1) != 0);
          goto LABEL_41;
        }
      }

      else if (v101[1].__locale_)
      {
        v40 = 0;
        v41 = 0;
        do
        {
          v42 = v40 * v112;
          if (v115)
          {
            v42 = v41;
          }

          v43 = v116[v42];
          v44 = v40 * v119;
          if (v122)
          {
            v44 = v41;
          }

          v45 = v43 - v123[v44];
          v39 = v45 == 0.0;
          if (v45 != 0.0)
          {
            goto LABEL_41;
          }

          if ((v40 + 1) == v101[1].__locale_)
          {
            v40 = 0;
          }

          else
          {
            ++v40;
          }
        }

        while (v101[1].__locale_ != ++v41);
      }

      v39 = 1;
LABEL_41:
      v117 = &unk_2874EF6A8;
      if (v121)
      {
        sub_2621D1B78(v121);
      }

      v108 = &unk_2874EF6A8;
      if (v114)
      {
        sub_2621D1B78(v114);
      }

LABEL_45:
      __p[0] = &unk_2874EF6A8;
      if (v99)
      {
        sub_2621D1B78(v99);
      }

      if (v39)
      {
        break;
      }

      *v125 = ++v19;
      if (v19 == v20)
      {
        goto LABEL_51;
      }
    }

    if (v19 == -1)
    {
LABEL_51:
      sub_2621C9004(&v130, v126);
    }

    else
    {
      v95[v19] = v17;
    }

    v101[0].__locale_ = &unk_2874EF6A8;
    if (v103)
    {
      sub_2621D1B78(v103);
    }

    v126[0] = ++v17;
    if (v17 == v94)
    {
LABEL_57:
      v128 = 0;
      v127 = 0;
      v129 = 0;
      __b[0].__locale_ = 0;
      sub_2621C9004(&v127, __b);
      v46 = *(v97 + 8);
      v126[0] = 1;
      v91 = v46;
      if (v46 < 2)
      {
        goto LABEL_114;
      }

      v93 = 1;
LABEL_59:
      sub_26221FFC8(v101, v97, v126);
      *v125 = 0;
      v92 = v127;
      if (v128 == v127)
      {
        goto LABEL_108;
      }

      v47 = 0;
      v96 = (v128 - v127) >> 3;
      while (1)
      {
        sub_26221FFC8(__p, v97, v125);
        if (v104 == 1)
        {
          sub_2621D552C(v16, "runtime_err in ", 15);
          sub_2621D552C(v16, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/function/tensor_equal.hpp", 107);
          sub_2621D552C(v16, " ", 1);
          v48 = MEMORY[0x266727260](v16, 38);
          sub_2621D552C(v48, " ", 1);
          sub_2621D552C(v48, "operator==", 10);
          std::ios_base::getloc((v48 + *(*v48 - 24)));
          v49 = std::locale::use_facet(__b, MEMORY[0x277D82680]);
          (v49->__vftable[2].~facet_0)(v49, 10);
          std::locale::~locale(__b);
          std::ostream::put();
          std::ostream::flush();
          sub_2621D8074("err", "empty tensor in");
          std::ios_base::getloc((v16 + *(*v16 - 24)));
          v50 = std::locale::use_facet(__b, MEMORY[0x277D82680]);
          (v50->__vftable[2].~facet_0)(v50, 10);
          std::locale::~locale(__b);
          std::ostream::put();
          std::ostream::flush();
        }

        if (v100 == 1)
        {
          sub_2621D552C(v16, "runtime_err in ", 15);
          sub_2621D552C(v16, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/function/tensor_equal.hpp", 107);
          sub_2621D552C(v16, " ", 1);
          v51 = MEMORY[0x266727260](v16, 39);
          sub_2621D552C(v51, " ", 1);
          sub_2621D552C(v51, "operator==", 10);
          std::ios_base::getloc((v51 + *(*v51 - 24)));
          v52 = std::locale::use_facet(__b, MEMORY[0x277D82680]);
          (v52->__vftable[2].~facet_0)(v52, 10);
          std::locale::~locale(__b);
          std::ostream::put();
          std::ostream::flush();
          sub_2621D8074("err", "empty tensor in");
          std::ios_base::getloc((v16 + *(*v16 - 24)));
          v53 = std::locale::use_facet(__b, MEMORY[0x277D82680]);
          (v53->__vftable[2].~facet_0)(v53, 10);
          std::locale::~locale(__b);
          std::ostream::put();
          std::ostream::flush();
        }

        v54 = 0;
        v55 = 1;
        do
        {
          locale = v101[v54 + 1].__locale_;
          v57 = __p[v54 + 1];
          if ((v55 & 1) == 0)
          {
            break;
          }

          v55 = 0;
          v54 = 1;
        }

        while (locale == v57);
        if (locale != v57)
        {
          v75 = 0;
          goto LABEL_102;
        }

        v106 = 0u;
        v107 = 0u;
        *&__b[0].__locale_ = 0u;
        sub_262223F30(&v108, v101);
        sub_262223F30(&v117, __p);
        v58 = 0;
        v59 = 1;
        do
        {
          v60 = *(&v109 + v58);
          v61 = v118[v58];
          if ((v59 & 1) == 0)
          {
            break;
          }

          v59 = 0;
          v58 = 1;
        }

        while (v60 == v61);
        if (v60 != v61)
        {
          sub_2621D552C(v16, "runtime_err in ", 15);
          sub_2621D552C(v16, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/function/../expression/exp_element_binary.hpp", 127);
          sub_2621D552C(v16, " ", 1);
          v62 = MEMORY[0x266727260](v16, 64);
          sub_2621D552C(v62, " ", 1);
          sub_2621D552C(v62, "TensorBinaryExp", 15);
          std::ios_base::getloc((v62 + *(*v62 - 24)));
          v63 = std::locale::use_facet(v133, MEMORY[0x277D82680]);
          (v63->__vftable[2].~facet_0)(v63, 10);
          std::locale::~locale(v133);
          std::ostream::put();
          std::ostream::flush();
          sub_2621D6B98("err", "Binary Exp shape should equal");
          std::ios_base::getloc((v16 + *(*v16 - 24)));
          v64 = std::locale::use_facet(v133, MEMORY[0x277D82680]);
          (v64->__vftable[2].~facet_0)(v64, 10);
          std::locale::~locale(v133);
          std::ostream::put();
          std::ostream::flush();
        }

        *&__b[0].__locale_ = v109;
        v106 = v110;
        v107 = v111;
        v65 = v102 * v101[1].__locale_;
        v135 = 0u;
        v134 = 0u;
        *v133 = 0u;
        v66 = v115;
        if ((v115 & 1) != 0 && v122 == 1)
        {
          if (v65)
          {
            v67 = v116;
            v68 = v123;
            v69 = v65 - 1;
            do
            {
              v70 = *v67++;
              v71 = v70;
              v72 = *v68++;
              v73 = v71 - v72;
              v37 = v69-- != 0;
              v74 = v37;
              v75 = v73 == 0.0;
            }

            while (v73 == 0.0 && (v74 & 1) != 0);
            goto LABEL_98;
          }
        }

        else if (v65)
        {
          v76 = 0;
          v77 = v112;
          v78 = v113;
          v79 = v122;
          v80 = v116;
          v81 = v119;
          v82 = v120;
          v83 = v123;
          do
          {
            v84 = &v80[v76];
            if (!v66)
            {
              v84 = &v80[v133[1] * v78 + v133[0] * v77];
            }

            v85 = *v84;
            v86 = &v83[v76];
            if (!v79)
            {
              v86 = &v83[v133[1] * v82 + v133[0] * v81];
            }

            v87 = v85 - *v86;
            v75 = v87 == 0.0;
            if (v87 != 0.0)
            {
              break;
            }

            for (i = 0; i != -2; --i)
            {
              v89 = v133[i + 1] + 1;
              v133[i + 1] = v89;
              if (v89 != *(&v102 + i * 8))
              {
                break;
              }

              v133[i + 1] = 0;
            }

            ++v76;
          }

          while (v76 != v65);
          goto LABEL_98;
        }

        v75 = 1;
LABEL_98:
        v117 = &unk_2874EF0B8;
        if (v121)
        {
          sub_2621D1B78(v121);
        }

        v108 = &unk_2874EF0B8;
        if (v114)
        {
          sub_2621D1B78(v114);
        }

LABEL_102:
        __p[0] = &unk_2874EF0B8;
        if (v99)
        {
          sub_2621D1B78(v99);
        }

        if (v75)
        {
          if (v47 == -1)
          {
LABEL_108:
            sub_2621C9004(&v127, v126);
          }

          else
          {
            v92[v47] = v93;
          }

          v101[0].__locale_ = &unk_2874EF0B8;
          if (v103)
          {
            sub_2621D1B78(v103);
          }

          v126[0] = ++v93;
          if (v93 == v91)
          {
LABEL_114:
            sub_26221FF48(v126, &v127);
            sub_26221FF48(v125, &v130);
            LODWORD(v101[0].__locale_) = 0;
            sub_2622202E0(__b, v97, v101, v126);
            sub_262220944(v124, __b);
          }

          goto LABEL_59;
        }

        *v125 = ++v47;
        if (v47 >= v96)
        {
          goto LABEL_108;
        }
      }
    }
  }
}

void sub_26221F29C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, unint64_t a20, unint64_t a21, unint64_t a22, uint64_t a23, uint64_t a24, unint64_t a25, unint64_t a26, uint64_t a27, uint64_t a28, unint64_t a29, unint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, std::locale a37)
{
  std::locale::~locale(&STACK[0x1270]);
  sub_2621C57C8(&STACK[0x12A0]);
  if (STACK[0x710])
  {
    sub_2621D1B78(STACK[0x710]);
  }

  sub_262222F4C(&STACK[0x3A0]);
  sub_262223020(&a37);
  sub_262223020(&STACK[0x240]);
  STACK[0x728] = &unk_2874EF0B8;
  if (STACK[0x7A8])
  {
    sub_2621D1B78(STACK[0x7A8]);
  }

  STACK[0x7C0] = &unk_2874EF0B8;
  if (STACK[0x840])
  {
    sub_2621D1B78(STACK[0x840]);
  }

  STACK[0x858] = &unk_2874EF0B8;
  if (STACK[0x8D8])
  {
    sub_2621D1B78(STACK[0x8D8]);
  }

  STACK[0x8F0] = a20;
  if (STACK[0x970])
  {
    sub_2621D1B78(STACK[0x970]);
  }

  STACK[0x988] = a21;
  if (STACK[0xA08])
  {
    sub_2621D1B78(STACK[0xA08]);
  }

  STACK[0xA20] = a22;
  if (STACK[0xAA0])
  {
    sub_2621D1B78(STACK[0xAA0]);
  }

  STACK[0xAB8] = a26;
  if (STACK[0xB38])
  {
    sub_2621D1B78(STACK[0xB38]);
  }

  STACK[0x11A0] = &unk_2874EEC90;
  if (STACK[0x1220])
  {
    sub_2621D1B78(STACK[0x1220]);
  }

  STACK[0xB50] = &unk_2874EEC90;
  if (STACK[0xBD0])
  {
    sub_2621D1B78(STACK[0xBD0]);
  }

  STACK[0xBE8] = a25;
  if (STACK[0xC68])
  {
    sub_2621D1B78(STACK[0xC68]);
  }

  STACK[0xC80] = a29;
  if (STACK[0xD00])
  {
    sub_2621D1B78(STACK[0xD00]);
  }

  STACK[0xD18] = &unk_2874EE7E8;
  if (STACK[0xD98])
  {
    sub_2621D1B78(STACK[0xD98]);
  }

  STACK[0xDB0] = a30;
  if (STACK[0xE30])
  {
    sub_2621D1B78(STACK[0xE30]);
  }

  STACK[0xE48] = &unk_2874EF0B8;
  if (STACK[0xEC8])
  {
    sub_2621D1B78(STACK[0xEC8]);
  }

  STACK[0xEE0] = &unk_2874EF0B8;
  if (STACK[0xF60])
  {
    sub_2621D1B78(STACK[0xF60]);
  }

  STACK[0xF78] = &unk_2874EF0D8;
  if (STACK[0xFF8])
  {
    sub_2621D1B78(STACK[0xFF8]);
  }

  STACK[0x1010] = &unk_2874EE7E8;
  if (STACK[0x1090])
  {
    sub_2621D1B78(STACK[0x1090]);
  }

  STACK[0x10A8] = &unk_2874EE7E8;
  if (STACK[0x1128])
  {
    sub_2621D1B78(STACK[0x1128]);
  }

  if (STACK[0x1140])
  {
    operator delete(STACK[0x1140]);
  }

  if (STACK[0x1158])
  {
    operator delete(STACK[0x1158]);
  }

  _Unwind_Resume(a1);
}

void sub_26221FC34(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v7 = a2 + 8;
  v6 = *(a2 + 8);
  v21[0] = 0;
  v21[1] = v6;
  v22 = xmmword_2623A7680;
  v23 = *(a2 + 16);
  v24 = 1;
  v15[0] = 0;
  sub_2621C9004(&v17, v15);
  sub_2621D7514(v7, v21, 0, *a3, *a3 + 1, 1);
  sub_262208B38(v15, a2, v21);
  v8 = v17;
  if (v18 - v17 != 8)
  {
    v9 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v10 = sub_2621D552C(v9, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
    sub_2621D552C(v10, " ", 1);
    v11 = MEMORY[0x277D82670];
    v12 = MEMORY[0x266727260](MEMORY[0x277D82670], 1098);
    sub_2621D552C(v12, " ", 1);
    sub_2621D552C(v12, "slice", 5);
    std::ios_base::getloc((v12 + *(*v12 - 24)));
    v13 = std::locale::use_facet(&v20, MEMORY[0x277D82680]);
    (v13->__vftable[2].~facet_0)(v13, 10);
    std::locale::~locale(&v20);
    std::ostream::put();
    std::ostream::flush();
    LODWORD(v20.__locale_) = 0;
    sub_262201E08("err", &v20);
    std::ios_base::getloc((v11 + *(*v11 - 24)));
    v14 = std::locale::use_facet(&v20, MEMORY[0x277D82680]);
    (v14->__vftable[2].~facet_0)(v14, 10);
    std::locale::~locale(&v20);
    std::ostream::put();
    std::ostream::flush();
  }

  sub_262208CB8(a1, v15, *v8);
  v15[0] = &unk_2874EF0B8;
  if (v16)
  {
    sub_2621D1B78(v16);
  }

  operator delete(v8);
}

void sub_26221FEDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25)
{
  if (a25)
  {
    sub_2621D1B78(a25);
  }

  if (v25)
  {
    operator delete(v25);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_26221FF48(uint64_t a1, uint64_t **a2)
{
  v11 = a2[1] - *a2;
  sub_26222AF58(v12, &v11);
  result = sub_262228A5C(a1, v12);
  v5 = *a2;
  v6 = a2[1];
  v7 = v6 - *a2;
  if (v6 != *a2)
  {
    v8 = *(a1 + 144);
    v9 = v7 >> 3;
    if (v9 <= 1)
    {
      v9 = 1;
    }

    do
    {
      v10 = *v5;
      v5 += 8;
      *v8++ = v10;
      --v9;
    }

    while (v9);
  }

  return result;
}

void sub_26221FFC8(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v23[7] = *MEMORY[0x277D85DE8];
  v6 = v23;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  for (i = 8; i != 32; i += 8)
  {
    v8 = *(a2 + i);
    *(v6 - 2) = 0;
    *(v6 - 1) = v8;
    *v6 = 1;
    v6 += 3;
  }

  v16[0] = 0;
  sub_2621C9004(&v18, v16);
  sub_262202A58(a2 + 8, v22, 0, *a3, *a3 + 1, 1);
  sub_262224D0C(v16, a2, v22);
  v9 = v18;
  if (v19 - v18 != 8)
  {
    v10 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v11 = sub_2621D552C(v10, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
    sub_2621D552C(v11, " ", 1);
    v12 = MEMORY[0x277D82670];
    v13 = MEMORY[0x266727260](MEMORY[0x277D82670], 1098);
    sub_2621D552C(v13, " ", 1);
    sub_2621D552C(v13, "slice", 5);
    std::ios_base::getloc((v13 + *(*v13 - 24)));
    v14 = std::locale::use_facet(&v21, MEMORY[0x277D82680]);
    (v14->__vftable[2].~facet_0)(v14, 10);
    std::locale::~locale(&v21);
    std::ostream::put();
    std::ostream::flush();
    LODWORD(v21.__locale_) = 0;
    sub_262201E08("err", &v21);
    std::ios_base::getloc((v12 + *(*v12 - 24)));
    v15 = std::locale::use_facet(&v21, MEMORY[0x277D82680]);
    (v15->__vftable[2].~facet_0)(v15, 10);
    std::locale::~locale(&v21);
    std::ostream::put();
    std::ostream::flush();
  }

  sub_262224E88(a1, v16, *v9);
  v16[0] = &unk_2874EF0D8;
  if (v17)
  {
    sub_2621D1B78(v17);
  }

  operator delete(v9);
}

void sub_262220274(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  if (a26)
  {
    sub_2621D1B78(a26);
  }

  if (v29)
  {
    operator delete(v29);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2622202E0(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  *(a1 + 48) = 0u;
  v7 = (a1 + 48);
  *(a1 + 104) = 0;
  v8 = a1 + 104;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  sub_26222AE80(a1 + 208, a2);
  v9 = *a3;
  v37 = v9;
  if (v9 >= 0)
  {
    v10 = v9;
  }

  else
  {
    v10 = -v9;
  }

  if (v10 >= 3)
  {
    v11 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v12 = sub_2621D552C(v11, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/expression/../common/gather_scatter_dim_helper.hpp", 132);
    sub_2621D552C(v12, " ", 1);
    v13 = MEMORY[0x277D82670];
    v14 = MEMORY[0x266727260](MEMORY[0x277D82670], 72);
    sub_2621D552C(v14, " ", 1);
    sub_2621D552C(v14, "init", 4);
    std::ios_base::getloc((v14 + *(*v14 - 24)));
    v15 = std::locale::use_facet(&v38, MEMORY[0x277D82680]);
    (v15->__vftable[2].~facet_0)(v15, 10);
    std::locale::~locale(&v38);
    std::ostream::put();
    std::ostream::flush();
    sub_262229DB0("err", "the absolute value of axis should be less than dim");
    std::ios_base::getloc((v13 + *(*v13 - 24)));
    v16 = std::locale::use_facet(&v38, MEMORY[0x277D82680]);
    (v16->__vftable[2].~facet_0)(v16, 10);
    std::locale::~locale(&v38);
    std::ostream::put();
    std::ostream::flush();
  }

  if (v9 < 0)
  {
    v9 += 3;
    v37 = v9;
  }

  if (v9 >= 3)
  {
    v17 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v18 = sub_2621D552C(v17, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/expression/../common/gather_scatter_dim_helper.hpp", 132);
    sub_2621D552C(v18, " ", 1);
    v19 = MEMORY[0x277D82670];
    v20 = MEMORY[0x266727260](MEMORY[0x277D82670], 76);
    sub_2621D552C(v20, " ", 1);
    sub_2621D552C(v20, "init", 4);
    std::ios_base::getloc((v20 + *(*v20 - 24)));
    v21 = std::locale::use_facet(&v38, MEMORY[0x277D82680]);
    (v21->__vftable[2].~facet_0)(v21, 10);
    std::locale::~locale(&v38);
    std::ostream::put();
    std::ostream::flush();
    sub_262201E08("err", &v37);
    std::ios_base::getloc((v19 + *(*v19 - 24)));
    v22 = std::locale::use_facet(&v38, MEMORY[0x277D82680]);
    (v22->__vftable[2].~facet_0)(v22, 10);
    std::locale::~locale(&v38);
    std::ostream::put();
    std::ostream::flush();
    if (v9 < 0)
    {
      v23 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
      v24 = sub_2621D552C(v23, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/expression/../common/gather_scatter_dim_helper.hpp", 132);
      sub_2621D552C(v24, " ", 1);
      v25 = MEMORY[0x277D82670];
      v26 = MEMORY[0x266727260](MEMORY[0x277D82670], 77);
      sub_2621D552C(v26, " ", 1);
      sub_2621D552C(v26, "init", 4);
      std::ios_base::getloc((v26 + *(*v26 - 24)));
      v27 = std::locale::use_facet(&v38, MEMORY[0x277D82680]);
      (v27->__vftable[2].~facet_0)(v27, 10);
      std::locale::~locale(&v38);
      std::ostream::put();
      std::ostream::flush();
      sub_262201E08("err", &v37);
      std::ios_base::getloc((v25 + *(*v25 - 24)));
      v28 = std::locale::use_facet(&v38, MEMORY[0x277D82680]);
      (v28->__vftable[2].~facet_0)(v28, 10);
      std::locale::~locale(&v38);
      std::ostream::put();
      std::ostream::flush();
    }
  }

  *(a1 + 96) = v9;
  sub_26222A054(v7, a4);
  v29 = *(a1 + 232);
  *a1 = *(a1 + 216);
  *(a1 + 16) = v29;
  *(a1 + 32) = *(a1 + 248);
  v30 = *(a1 + 48);
  *(a1 + 8 * *(a1 + 96)) = *(v30 + 8);
  sub_2621C9004(a1 + 72, (v30 + 56));
  v38.__locale_ = 0;
  for (i = 1; i != 4; ++i)
  {
    if (i - 1 != *(a1 + 96))
    {
      sub_2621C9004(v8, &v38);
    }

    v38.__locale_ = i;
  }

  v32 = 0;
  v33 = a1 + 160;
  do
  {
    *(v33 + 8 * v32) = 1;
    if (v32 <= 1)
    {
      v34 = v32;
      v35 = 1;
      do
      {
        v35 *= *(a1 + 224 + 8 * v34);
        *(v33 + 8 * v32) = v35;
        ++v34;
      }

      while (v34 != 2);
    }

    ++v32;
  }

  while (v32 != 3);
  return a1;
}

void sub_2622208E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10)
{
  std::locale::~locale(&a10);
  *(v10 + 208) = &unk_2874EF0D8;
  v13 = *(v10 + 336);
  if (v13)
  {
    sub_2621D1B78(v13);
  }

  sub_262220A30(v11);
  _Unwind_Resume(a1);
}

void sub_262220944(uint64_t a1, __int128 *a2)
{
  *a1 = &unk_2874EF0D8;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  sub_262204784(a1 + 8, a2);
  sub_262224B84(&v3, (a1 + 104));
}

void sub_262220A14(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 128);
  if (v3)
  {
    sub_2621D1B78(v3);
  }

  _Unwind_Resume(exception_object);
}

void **sub_262220A30(void **a1)
{
  v2 = a1[11];
  if (v2)
  {
    a1[12] = v2;
    operator delete(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    a1[8] = v3;
    operator delete(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    a1[4] = v4;
    operator delete(v4);
  }

  v6 = a1;
  sub_262229EBC(&v6);
  return a1;
}

uint64_t sub_262220A98(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  *(a1 + 48) = 0u;
  v7 = (a1 + 48);
  *(a1 + 104) = 0;
  v8 = a1 + 104;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  sub_262223F30(a1 + 208, a2);
  v9 = *a3;
  v33 = v9;
  if (v9 >= 0)
  {
    v10 = v9;
  }

  else
  {
    v10 = -v9;
  }

  if (v10 >= 2)
  {
    v11 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v12 = sub_2621D552C(v11, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/expression/../common/gather_scatter_dim_helper.hpp", 132);
    sub_2621D552C(v12, " ", 1);
    v13 = MEMORY[0x277D82670];
    v14 = MEMORY[0x266727260](MEMORY[0x277D82670], 72);
    sub_2621D552C(v14, " ", 1);
    sub_2621D552C(v14, "init", 4);
    std::ios_base::getloc((v14 + *(*v14 - 24)));
    v15 = std::locale::use_facet(&v34, MEMORY[0x277D82680]);
    (v15->__vftable[2].~facet_0)(v15, 10);
    std::locale::~locale(&v34);
    std::ostream::put();
    std::ostream::flush();
    sub_262229DB0("err", "the absolute value of axis should be less than dim");
    std::ios_base::getloc((v13 + *(*v13 - 24)));
    v16 = std::locale::use_facet(&v34, MEMORY[0x277D82680]);
    (v16->__vftable[2].~facet_0)(v16, 10);
    std::locale::~locale(&v34);
    std::ostream::put();
    std::ostream::flush();
  }

  if (v9 < 0)
  {
    v9 += 2;
    v33 = v9;
  }

  if (v9 >= 2)
  {
    v17 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v18 = sub_2621D552C(v17, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/expression/../common/gather_scatter_dim_helper.hpp", 132);
    sub_2621D552C(v18, " ", 1);
    v19 = MEMORY[0x277D82670];
    v20 = MEMORY[0x266727260](MEMORY[0x277D82670], 76);
    sub_2621D552C(v20, " ", 1);
    sub_2621D552C(v20, "init", 4);
    std::ios_base::getloc((v20 + *(*v20 - 24)));
    v21 = std::locale::use_facet(&v34, MEMORY[0x277D82680]);
    (v21->__vftable[2].~facet_0)(v21, 10);
    std::locale::~locale(&v34);
    std::ostream::put();
    std::ostream::flush();
    sub_262201E08("err", &v33);
    std::ios_base::getloc((v19 + *(*v19 - 24)));
    v22 = std::locale::use_facet(&v34, MEMORY[0x277D82680]);
    (v22->__vftable[2].~facet_0)(v22, 10);
    std::locale::~locale(&v34);
    std::ostream::put();
    std::ostream::flush();
    if (v9 < 0)
    {
      v23 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
      v24 = sub_2621D552C(v23, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/expression/../common/gather_scatter_dim_helper.hpp", 132);
      sub_2621D552C(v24, " ", 1);
      v25 = MEMORY[0x277D82670];
      v26 = MEMORY[0x266727260](MEMORY[0x277D82670], 77);
      sub_2621D552C(v26, " ", 1);
      sub_2621D552C(v26, "init", 4);
      std::ios_base::getloc((v26 + *(*v26 - 24)));
      v27 = std::locale::use_facet(&v34, MEMORY[0x277D82680]);
      (v27->__vftable[2].~facet_0)(v27, 10);
      std::locale::~locale(&v34);
      std::ostream::put();
      std::ostream::flush();
      sub_262201E08("err", &v33);
      std::ios_base::getloc((v25 + *(*v25 - 24)));
      v28 = std::locale::use_facet(&v34, MEMORY[0x277D82680]);
      (v28->__vftable[2].~facet_0)(v28, 10);
      std::locale::~locale(&v34);
      std::ostream::put();
      std::ostream::flush();
    }
  }

  *(a1 + 96) = v9;
  sub_26222A054(v7, a4);
  v29 = *(a1 + 232);
  *a1 = *(a1 + 216);
  *(a1 + 16) = v29;
  *(a1 + 32) = *(a1 + 248);
  v30 = *(a1 + 48);
  *(a1 + 8 * *(a1 + 96)) = *(v30 + 8);
  sub_2621C9004(a1 + 72, (v30 + 56));
  v31 = 0;
  v34.__locale_ = 0;
  do
  {
    if (v31 != *(a1 + 96))
    {
      sub_2621C9004(v8, &v34);
    }

    v34.__locale_ = ++v31;
  }

  while (v31 != 2);
  *(a1 + 160) = *(a1 + 224);
  *(a1 + 168) = 1;
  return a1;
}

void sub_262221058(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10)
{
  std::locale::~locale(&a10);
  *(v11 + 208) = &unk_2874EF0B8;
  v13 = *(v11 + 336);
  if (v13)
  {
    sub_2621D1B78(v13);
  }

  sub_262220A30(v10);
  _Unwind_Resume(a1);
}

void sub_2622210BC(uint64_t a1, __int128 *a2)
{
  *a1 = &unk_2874EF0B8;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 128) = 0;
  v3 = a2[1];
  v2 = a2[2];
  *(a1 + 8) = *a2;
  *(a1 + 40) = v2;
  *(a1 + 24) = v3;
  v4 = *(a1 + 16);
  *(a1 + 56) = v4;
  *(a1 + 64) = 1;
  *(a1 + 104) = *(a1 + 8) * v4;
  *(a1 + 112) = 0;
  sub_262224B84(v5, (a1 + 104));
}

void sub_262221430(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25)
{
  if (a25)
  {
    sub_2621D1B78(a25);
  }

  v27 = *(v25 + 128);
  if (v27)
  {
    sub_2621D1B78(v27);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_262221490(uint64_t a1, uint64_t a2, signed int *a3, uint64_t a4)
{
  *(a1 + 48) = 0u;
  v7 = (a1 + 48);
  *(a1 + 104) = 0;
  v8 = a1 + 104;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  sub_262229F7C(a1 + 208, a2);
  v9 = *a3;
  v32 = v9;
  if (v9)
  {
    v10 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v11 = sub_2621D552C(v10, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/expression/../common/gather_scatter_dim_helper.hpp", 132);
    sub_2621D552C(v11, " ", 1);
    v12 = MEMORY[0x277D82670];
    v13 = MEMORY[0x266727260](MEMORY[0x277D82670], 72);
    sub_2621D552C(v13, " ", 1);
    sub_2621D552C(v13, "init", 4);
    std::ios_base::getloc((v13 + *(*v13 - 24)));
    v14 = std::locale::use_facet(&v33, MEMORY[0x277D82680]);
    (v14->__vftable[2].~facet_0)(v14, 10);
    std::locale::~locale(&v33);
    std::ostream::put();
    std::ostream::flush();
    sub_262229DB0("err", "the absolute value of axis should be less than dim");
    std::ios_base::getloc((v12 + *(*v12 - 24)));
    v15 = std::locale::use_facet(&v33, MEMORY[0x277D82680]);
    (v15->__vftable[2].~facet_0)(v15, 10);
    std::locale::~locale(&v33);
    std::ostream::put();
    std::ostream::flush();
    if (v9 < 0 && (v16 = __CFADD__(v9, 1), ++v9, v32 = v9, v16))
    {
      v9 = 0;
    }

    else
    {
      v17 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
      v18 = sub_2621D552C(v17, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/expression/../common/gather_scatter_dim_helper.hpp", 132);
      sub_2621D552C(v18, " ", 1);
      v19 = MEMORY[0x277D82670];
      v20 = MEMORY[0x266727260](MEMORY[0x277D82670], 76);
      sub_2621D552C(v20, " ", 1);
      sub_2621D552C(v20, "init", 4);
      std::ios_base::getloc((v20 + *(*v20 - 24)));
      v21 = std::locale::use_facet(&v33, MEMORY[0x277D82680]);
      (v21->__vftable[2].~facet_0)(v21, 10);
      std::locale::~locale(&v33);
      std::ostream::put();
      std::ostream::flush();
      sub_262201E08("err", &v32);
      std::ios_base::getloc((v19 + *(*v19 - 24)));
      v22 = std::locale::use_facet(&v33, MEMORY[0x277D82680]);
      (v22->__vftable[2].~facet_0)(v22, 10);
      std::locale::~locale(&v33);
      std::ostream::put();
      std::ostream::flush();
      if (v9 < 0)
      {
        v23 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v24 = sub_2621D552C(v23, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/expression/../common/gather_scatter_dim_helper.hpp", 132);
        sub_2621D552C(v24, " ", 1);
        v25 = MEMORY[0x277D82670];
        v26 = MEMORY[0x266727260](MEMORY[0x277D82670], 77);
        sub_2621D552C(v26, " ", 1);
        sub_2621D552C(v26, "init", 4);
        std::ios_base::getloc((v26 + *(*v26 - 24)));
        v27 = std::locale::use_facet(&v33, MEMORY[0x277D82680]);
        (v27->__vftable[2].~facet_0)(v27, 10);
        std::locale::~locale(&v33);
        std::ostream::put();
        std::ostream::flush();
        sub_262201E08("err", &v32);
        std::ios_base::getloc((v25 + *(*v25 - 24)));
        v28 = std::locale::use_facet(&v33, MEMORY[0x277D82680]);
        (v28->__vftable[2].~facet_0)(v28, 10);
        std::locale::~locale(&v33);
        std::ostream::put();
        std::ostream::flush();
      }
    }
  }

  *(a1 + 96) = v9;
  sub_26222A054(v7, a4);
  v29 = *(a1 + 232);
  *a1 = *(a1 + 216);
  *(a1 + 16) = v29;
  *(a1 + 32) = *(a1 + 248);
  v30 = *(a1 + 48);
  *(a1 + 8 * *(a1 + 96)) = *(v30 + 8);
  sub_2621C9004(a1 + 72, (v30 + 56));
  v33.__locale_ = 0;
  if (*(a1 + 96))
  {
    sub_2621C9004(v8, &v33);
    v33.__locale_ = 1;
  }

  *(a1 + 160) = 1;
  return a1;
}

void sub_262221A34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10)
{
  std::locale::~locale(&a10);
  *(v11 + 208) = &unk_2874EF6A8;
  v13 = *(v11 + 336);
  if (v13)
  {
    sub_2621D1B78(v13);
  }

  sub_262220A30(v10);
  _Unwind_Resume(a1);
}

uint64_t sub_262221A98(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2874EE7E8;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  v4 = *(a2 + 8);
  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = v5;
  *(a1 + 8) = v4;
  v6 = *(a2 + 56);
  v7 = *(a2 + 72);
  v8 = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = v8;
  *(a1 + 72) = v7;
  *(a1 + 56) = v6;
  v9 = *(a2 + 120);
  v10 = *(a2 + 128);
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    v11 = *(a1 + 128);
    *(a1 + 120) = v9;
    *(a1 + 128) = v10;
    if (v11)
    {
      sub_2621D1B78(v11);
    }
  }

  else
  {
    *(a1 + 120) = v9;
    *(a1 + 128) = 0;
  }

  *(a1 + 144) = *(a2 + 144);
  *(a1 + 136) = *(a2 + 136);
  return a1;
}

uint64_t sub_262221B70(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2874EE808;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  v4 = *(a2 + 8);
  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = v5;
  *(a1 + 8) = v4;
  v6 = *(a2 + 56);
  v7 = *(a2 + 72);
  v8 = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = v8;
  *(a1 + 72) = v7;
  *(a1 + 56) = v6;
  v9 = *(a2 + 120);
  v10 = *(a2 + 128);
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    v11 = *(a1 + 128);
    *(a1 + 120) = v9;
    *(a1 + 128) = v10;
    if (v11)
    {
      sub_2621D1B78(v11);
    }
  }

  else
  {
    *(a1 + 120) = v9;
    *(a1 + 128) = 0;
  }

  *(a1 + 144) = *(a2 + 144);
  *(a1 + 136) = *(a2 + 136);
  return a1;
}

void sub_262221C48(uint64_t a1, uint64_t a2)
{
  sub_262221B70(&v16, a2);
  *&v12[0] = 0;
  sub_2622233BC(&__p, 1uLL, v12);
  if (!v19)
  {
    goto LABEL_18;
  }

  v3 = 0;
  v4 = 0;
  v5 = __p;
  v6 = v21;
  v7 = *__p;
  do
  {
    v3 += *(v6 + v18 * v7);
    *v5 = v7 + 1;
    if (v7 + 1 == v17)
    {
      v7 = 0;
    }

    else
    {
      ++v7;
    }

    *v5 = v7;
    ++v4;
  }

  while (v4 < v19);
  v13 = v3;
  if (v3)
  {
    if (v15 - __p >= 1)
    {
      bzero(__p, v15 - __p);
    }

    v11 = 1;
    sub_262223490(v12, &v13, &v11);
    sub_262223720(a1, v12);
    v11 = 0;
    sub_26222381C(a1, &v11);
    v8 = 0;
    v9 = __p;
    v10 = *__p;
    do
    {
      if (*(v21 + v18 * v10) == 1)
      {
        *(*(a1 + 144) + 8 * v8++) = v10;
        v9 = __p;
        v10 = *__p;
      }

      *v9 = v10 + 1;
      if (v10 + 1 == v17)
      {
        v10 = 0;
      }

      else
      {
        ++v10;
      }

      *v9 = v10;
    }

    while (v8 < v13);
  }

  else
  {
LABEL_18:
    *a1 = &unk_2874EEC90;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
    *(a1 + 136) = 257;
  }

  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  v16 = &unk_2874EE808;
  if (v20)
  {
    sub_2621D1B78(v20);
  }
}

void sub_262221E18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, std::__shared_weak_count *a36)
{
  *v36 = &unk_2874EEC90;
  v38 = v36[16];
  if (v38)
  {
    sub_2621D1B78(v38);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a36)
  {
    sub_2621D1B78(a36);
  }

  _Unwind_Resume(exception_object);
}

void sub_262221E9C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  *a1 = &unk_2874EE7E8;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 120) = 0;
  v5 = (a1 + 120);
  *(a1 + 136) = 257;
  v6 = a2 + 8;
  *(a1 + 128) = 0;
  sub_2621D6120(&v13, a2 + 8, a3);
  v7 = v13;
  *(a1 + 8) = *(v6 + 8 * v13);
  *(a1 + 56) = *(a2 + 8 * v7 + 56);
  *(a1 + 104) = *(a2 + 104);
  v8 = *(a2 + 120);
  v9 = *(a2 + 128);
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = *(a1 + 128);
  *(a1 + 120) = v8;
  *(a1 + 128) = v9;
  if (v10)
  {
    sub_2621D1B78(v10);
    v8 = *v5;
  }

  *(a1 + 144) = *v8 + 8 * *(a1 + 112);
  *(a1 + 137) = 0;
  v12 = *(a1 + 8) == 1 || *(a1 + 56) == 1;
  *(a1 + 136) = v12;
}

void sub_262221FAC(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  v4 = v1[16];
  if (v4)
  {
    sub_2621D1B78(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_262221FC8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 345) == 1)
  {
    v4 = MEMORY[0x277D82670];
    v5 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v6 = sub_2621D552C(v5, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
    v7 = sub_2621D552C(v6, " ", 1);
    v8 = MEMORY[0x266727260](v7, 664);
    v9 = sub_2621D552C(v8, " ", 1);
    v10 = sub_2621D552C(v9, "operator=", 9);
    std::ios_base::getloc((v10 + *(*v10 - 24)));
    v11 = std::locale::use_facet(v14, MEMORY[0x277D82680]);
    (v11->__vftable[2].~facet_0)(v11, 10);
    std::locale::~locale(v14);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D8074("err", "empty tensor in");
    std::ios_base::getloc((v4 + *(*v4 - 24)));
    v12 = std::locale::use_facet(v14, MEMORY[0x277D82680]);
    (v12->__vftable[2].~facet_0)(v12, 10);
    std::locale::~locale(v14);
    std::ostream::put();
    std::ostream::flush();
  }

  if (*(a1 + 137) == 1)
  {
    sub_262204784(a1 + 8, a2);
    sub_262224B84(v14, (a1 + 104));
  }

  if (*(a2 + 328) == *(a1 + 120))
  {
    sub_262226244(v14, a2);
    sub_26222632C(v14, a2);
    sub_262226C64(a1, v14);
    *&v14[0] = &unk_2874EF0D8;
    if (v15)
    {
      sub_2621D1B78(v15);
    }
  }

  else
  {
    sub_26222632C(a1, a2);
  }

  return a1;
}

void sub_262222258(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25)
{
  if (a25)
  {
    sub_2621D1B78(a25);
  }

  _Unwind_Resume(exception_object);
}

void sub_2622222A0(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0;
  v15 = 0;
  v16 = 0;
  sub_2622055B0((a2 + 8), v18, &v14, a3);
  sub_262208B38(v12, a2, v18);
  v5 = v14;
  if (v15 - v14 != 8)
  {
    v6 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v7 = sub_2621D552C(v6, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
    sub_2621D552C(v7, " ", 1);
    v8 = MEMORY[0x277D82670];
    v9 = MEMORY[0x266727260](MEMORY[0x277D82670], 1098);
    sub_2621D552C(v9, " ", 1);
    sub_2621D552C(v9, "slice", 5);
    std::ios_base::getloc((v9 + *(*v9 - 24)));
    v10 = std::locale::use_facet(&v17, MEMORY[0x277D82680]);
    (v10->__vftable[2].~facet_0)(v10, 10);
    std::locale::~locale(&v17);
    std::ostream::put();
    std::ostream::flush();
    LODWORD(v17.__locale_) = 0;
    sub_262201E08("err", &v17);
    std::ios_base::getloc((v8 + *(*v8 - 24)));
    v11 = std::locale::use_facet(&v17, MEMORY[0x277D82680]);
    (v11->__vftable[2].~facet_0)(v11, 10);
    std::locale::~locale(&v17);
    std::ostream::put();
    std::ostream::flush();
  }

  sub_262208CB8(a1, v12, *v5);
  v12[0] = &unk_2874EF0B8;
  if (v13)
  {
    sub_2621D1B78(v13);
  }

  operator delete(v5);
}

void sub_262222508(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25)
{
  if (a25)
  {
    sub_2621D1B78(a25);
  }

  if (v25)
  {
    operator delete(v25);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_262222574(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 345) == 1)
  {
    v4 = MEMORY[0x277D82670];
    v5 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v6 = sub_2621D552C(v5, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
    v7 = sub_2621D552C(v6, " ", 1);
    v8 = MEMORY[0x266727260](v7, 664);
    v9 = sub_2621D552C(v8, " ", 1);
    v10 = sub_2621D552C(v9, "operator=", 9);
    std::ios_base::getloc((v10 + *(*v10 - 24)));
    v11 = std::locale::use_facet(v16, MEMORY[0x277D82680]);
    (v11->__vftable[2].~facet_0)(v11, 10);
    std::locale::~locale(v16);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D8074("err", "empty tensor in");
    std::ios_base::getloc((v4 + *(*v4 - 24)));
    v12 = std::locale::use_facet(v16, MEMORY[0x277D82680]);
    (v12->__vftable[2].~facet_0)(v12, 10);
    std::locale::~locale(v16);
    std::ostream::put();
    std::ostream::flush();
  }

  if (*(a1 + 137) == 1)
  {
    v14 = *(a2 + 16);
    v13 = *(a2 + 32);
    *(a1 + 8) = *a2;
    *(a1 + 104) = *(a1 + 8);
    *(a1 + 24) = v14;
    *(a1 + 40) = v13;
    *(a1 + 56) = 1;
    *(a1 + 112) = 0;
    sub_262224B84(v16, (a1 + 104));
  }

  if (*(a2 + 328) == *(a1 + 120))
  {
    sub_262224FE8(v16, a2);
    sub_2622250E0(v16, a2);
    sub_262225A24(a1, v16);
    *&v16[0] = &unk_2874EF6A8;
    if (v17)
    {
      sub_2621D1B78(v17);
    }
  }

  else
  {
    sub_2622250E0(a1, a2);
  }

  return a1;
}

void sub_26222281C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25)
{
  if (a25)
  {
    sub_2621D1B78(a25);
  }

  _Unwind_Resume(exception_object);
}

void **sub_262222864(void **a1)
{
  a1[26] = &unk_2874EF0D8;
  v2 = a1[42];
  if (v2)
  {
    sub_2621D1B78(v2);
  }

  sub_262220A30(a1 + 6);
  return a1;
}

void **sub_2622228BC(void **a1)
{
  a1[26] = &unk_2874EF0B8;
  v2 = a1[42];
  if (v2)
  {
    sub_2621D1B78(v2);
  }

  sub_262220A30(a1 + 6);
  return a1;
}

void **sub_262222914(void **a1)
{
  a1[26] = &unk_2874EF6A8;
  v2 = a1[42];
  if (v2)
  {
    sub_2621D1B78(v2);
  }

  sub_262220A30(a1 + 6);
  return a1;
}

void sub_26222296C(uint64_t a1, uint64_t a2, signed int *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0;
  v15 = 0;
  v16 = 0;
  sub_262201F94(a2 + 8, v18, &v14, a3);
  sub_262224D0C(v12, a2, v18);
  v5 = v14;
  if (v15 - v14 != 8)
  {
    v6 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v7 = sub_2621D552C(v6, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
    sub_2621D552C(v7, " ", 1);
    v8 = MEMORY[0x277D82670];
    v9 = MEMORY[0x266727260](MEMORY[0x277D82670], 1098);
    sub_2621D552C(v9, " ", 1);
    sub_2621D552C(v9, "slice", 5);
    std::ios_base::getloc((v9 + *(*v9 - 24)));
    v10 = std::locale::use_facet(&v17, MEMORY[0x277D82680]);
    (v10->__vftable[2].~facet_0)(v10, 10);
    std::locale::~locale(&v17);
    std::ostream::put();
    std::ostream::flush();
    LODWORD(v17.__locale_) = 0;
    sub_262201E08("err", &v17);
    std::ios_base::getloc((v8 + *(*v8 - 24)));
    v11 = std::locale::use_facet(&v17, MEMORY[0x277D82680]);
    (v11->__vftable[2].~facet_0)(v11, 10);
    std::locale::~locale(&v17);
    std::ostream::put();
    std::ostream::flush();
  }

  sub_262224E88(a1, v12, *v5);
  v12[0] = &unk_2874EF0D8;
  if (v13)
  {
    sub_2621D1B78(v13);
  }

  operator delete(v5);
}

void sub_262222BD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  if (a26)
  {
    sub_2621D1B78(a26);
  }

  if (v29)
  {
    operator delete(v29);
  }

  _Unwind_Resume(exception_object);
}

void sub_262222C74(_Unwind_Exception *exception_object)
{
  *v1 = &unk_2874EF0B8;
  v3 = v1[16];
  if (v3)
  {
    sub_2621D1B78(v3);
  }

  _Unwind_Resume(exception_object);
}

_OWORD *sub_262222CA8(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  sub_262223F30((a1 + 3), a2);
  sub_262223F30(a1 + 200, a3);
  v5 = 0;
  v6 = (a1 + 56);
  v7 = 1;
  do
  {
    v8 = *(v6 + v5);
    v9 = *(a1 + v5 + 26);
    if ((v7 & 1) == 0)
    {
      break;
    }

    v7 = 0;
    v5 = 1;
  }

  while (v8 == v9);
  if (v8 != v9)
  {
    v10 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v11 = sub_2621D552C(v10, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/function/../expression/exp_element_binary.hpp", 127);
    sub_2621D552C(v11, " ", 1);
    v12 = MEMORY[0x277D82670];
    v13 = MEMORY[0x266727260](MEMORY[0x277D82670], 64);
    sub_2621D552C(v13, " ", 1);
    sub_2621D552C(v13, "TensorBinaryExp", 15);
    std::ios_base::getloc((v13 + *(*v13 - 24)));
    v14 = std::locale::use_facet(&v18, MEMORY[0x277D82680]);
    (v14->__vftable[2].~facet_0)(v14, 10);
    std::locale::~locale(&v18);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D6B98("err", "Binary Exp shape should equal");
    std::ios_base::getloc((v12 + *(*v12 - 24)));
    v15 = std::locale::use_facet(&v18, MEMORY[0x277D82680]);
    (v15->__vftable[2].~facet_0)(v15, 10);
    std::locale::~locale(&v18);
    std::ostream::put();
    std::ostream::flush();
  }

  v16 = *(a1 + 72);
  *a1 = *v6;
  a1[1] = v16;
  a1[2] = *(a1 + 88);
  return a1;
}

void sub_262222EDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10)
{
  std::locale::~locale(&a10);
  v10[25] = &unk_2874EF0B8;
  v12 = v10[41];
  if (v12)
  {
    sub_2621D1B78(v12);
  }

  v10[6] = &unk_2874EF0B8;
  v13 = v10[22];
  if (v13)
  {
    sub_2621D1B78(v13);
  }

  _Unwind_Resume(a1);
}

void *sub_262222F4C(void *a1)
{
  a1[75] = &unk_2874EF0B8;
  v2 = a1[91];
  if (v2)
  {
    sub_2621D1B78(v2);
  }

  a1[56] = &unk_2874EF0B8;
  v3 = a1[72];
  if (v3)
  {
    sub_2621D1B78(v3);
  }

  a1[31] = &unk_2874EF0B8;
  v4 = a1[47];
  if (v4)
  {
    sub_2621D1B78(v4);
  }

  a1[12] = &unk_2874EF0B8;
  v5 = a1[28];
  if (v5)
  {
    sub_2621D1B78(v5);
  }

  return a1;
}

void *sub_262223020(void *a1)
{
  a1[25] = &unk_2874EF0B8;
  v2 = a1[41];
  if (v2)
  {
    sub_2621D1B78(v2);
  }

  a1[6] = &unk_2874EF0B8;
  v3 = a1[22];
  if (v3)
  {
    sub_2621D1B78(v3);
  }

  return a1;
}

void sub_26222309C(void *a1)
{
  *a1 = &unk_2874EECE8;
  v1 = a1[16];
  if (v1)
  {
    sub_2621D1B78(v1);
  }

  JUMPOUT(0x266727420);
}

void *sub_262223108(void *a1)
{
  *a1 = &unk_2874EECE8;
  v2 = a1[16];
  if (v2)
  {
    sub_2621D1B78(v2);
  }

  return a1;
}

void sub_262223154(void *a1)
{
  *a1 = &unk_2874EEC90;
  v1 = a1[16];
  if (v1)
  {
    sub_2621D1B78(v1);
  }

  JUMPOUT(0x266727420);
}

void *sub_2622231C0(void *a1)
{
  *a1 = &unk_2874EEC90;
  v2 = a1[16];
  if (v2)
  {
    sub_2621D1B78(v2);
  }

  return a1;
}

uint64_t sub_26222320C(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2874EEC90;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  v4 = *(a2 + 8);
  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = v5;
  *(a1 + 8) = v4;
  v6 = *(a2 + 56);
  v7 = *(a2 + 72);
  v8 = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = v8;
  *(a1 + 72) = v7;
  *(a1 + 56) = v6;
  v9 = *(a2 + 120);
  v10 = *(a2 + 128);
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    v11 = *(a1 + 128);
    *(a1 + 120) = v9;
    *(a1 + 128) = v10;
    if (v11)
    {
      sub_2621D1B78(v11);
    }
  }

  else
  {
    *(a1 + 120) = v9;
    *(a1 + 128) = 0;
  }

  *(a1 + 144) = *(a2 + 144);
  *(a1 + 136) = *(a2 + 136);
  return a1;
}

uint64_t sub_2622232E4(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2874EECE8;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  v4 = *(a2 + 8);
  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = v5;
  *(a1 + 8) = v4;
  v6 = *(a2 + 56);
  v7 = *(a2 + 72);
  v8 = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = v8;
  *(a1 + 72) = v7;
  *(a1 + 56) = v6;
  v9 = *(a2 + 120);
  v10 = *(a2 + 128);
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    v11 = *(a1 + 128);
    *(a1 + 120) = v9;
    *(a1 + 128) = v10;
    if (v11)
    {
      sub_2621D1B78(v11);
    }
  }

  else
  {
    *(a1 + 120) = v9;
    *(a1 + 128) = 0;
  }

  *(a1 + 144) = *(a2 + 144);
  *(a1 + 136) = *(a2 + 136);
  return a1;
}

uint64_t *sub_2622233BC(uint64_t *a1, unint64_t a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_2621CC71C(a1, a2);
  }

  return a1;
}

void sub_262223474(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

_OWORD *sub_262223490(_OWORD *a1, void *a2, uint64_t *a3)
{
  v4 = 0;
  v16[2] = *MEMORY[0x277D85DE8];
  a1[1] = 0u;
  a1[2] = 0u;
  v5 = 1;
  *a1 = 0u;
  v6 = MEMORY[0x277D82670];
  v7 = MEMORY[0x277D82680];
  v8 = *a3;
  v16[0] = *a2;
  v16[1] = v8;
  v14 = 0;
  do
  {
    v9 = v16[v4];
    if (v9 >= 0xBEBC200)
    {
      sub_2621D552C(v6, "runtime_err in ", 15);
      sub_2621D552C(v6, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/../common/../tensor/shape.hpp", 118);
      sub_2621D552C(v6, " ", 1);
      v10 = MEMORY[0x266727260](v6, 71);
      sub_2621D552C(v10, " ", 1);
      sub_2621D552C(v10, "Shape", 5);
      std::ios_base::getloc((v10 + *(*v10 - 24)));
      v11 = std::locale::use_facet(&v15, v7);
      (v11->__vftable[2].~facet_0)(v11, 10);
      std::locale::~locale(&v15);
      std::ostream::put();
      std::ostream::flush();
      sub_262223C90("err", "shape[", &v14, "]", " is ", &v16[v4], " ,it should <= 6");
      std::ios_base::getloc((v6 + *(*v6 - 24)));
      v12 = std::locale::use_facet(&v15, v7);
      (v12->__vftable[2].~facet_0)(v12, 10);
      std::locale::~locale(&v15);
      std::ostream::put();
      std::ostream::flush();
    }

    v14 = v5;
    *(a1 + v4 * 8) = v9;
    ++v4;
    ++v5;
  }

  while (v4 != 2);
  return a1;
}

uint64_t sub_262223720(uint64_t a1, _OWORD *a2)
{
  *a1 = &unk_2874EEC90;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 1;
  v3 = a2[1];
  v2 = a2[2];
  *(a1 + 8) = *a2;
  *(a1 + 40) = v2;
  *(a1 + 24) = v3;
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  *(a1 + 56) = v4;
  *(a1 + 64) = 1;
  v6 = v5 * v4;
  *(a1 + 104) = v6;
  *(a1 + 112) = 0;
  if (v6)
  {
    sub_262223B08(&v7, (a1 + 104));
  }

  *(a1 + 137) = 1;
  return a1;
}

void sub_262223804(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 128);
  if (v3)
  {
    sub_2621D1B78(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_26222381C(uint64_t a1, uint64_t *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a1 + 137) == 1)
  {
    v4 = MEMORY[0x277D82670];
    v5 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v6 = sub_2621D552C(v5, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
    v7 = sub_2621D552C(v6, " ", 1);
    v8 = MEMORY[0x266727260](v7, 664);
    v9 = sub_2621D552C(v8, " ", 1);
    v10 = sub_2621D552C(v9, "operator=", 9);
    std::ios_base::getloc((v10 + *(*v10 - 24)));
    v11 = std::locale::use_facet(v26, MEMORY[0x277D82680]);
    (v11->__vftable[2].~facet_0)(v11, 10);
    std::locale::~locale(v26);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D5EE8("err", "scalar assign should create a storage first");
    std::ios_base::getloc((v4 + *(*v4 - 24)));
    v12 = std::locale::use_facet(v26, MEMORY[0x277D82680]);
    (v12->__vftable[2].~facet_0)(v12, 10);
    std::locale::~locale(v26);
    std::ostream::put();
    std::ostream::flush();
  }

  v13 = *a2;
  memset(v26, 0, sizeof(v26));
  v14 = *(a1 + 104);
  v15 = *(a1 + 144);
  if (*(a1 + 136))
  {
    if (v14)
    {
      v16 = (v14 + 1) & 0xFFFFFFFFFFFFFFFELL;
      v17 = vdupq_n_s64(v14 - 1);
      v18 = xmmword_2623A7620;
      v19 = (v15 + 8);
      v20 = vdupq_n_s64(2uLL);
      do
      {
        v21 = vmovn_s64(vcgeq_u64(v17, v18));
        if (v21.i8[0])
        {
          *(v19 - 1) = v13;
        }

        if (v21.i8[4])
        {
          *v19 = v13;
        }

        v18 = vaddq_s64(v18, v20);
        v19 += 2;
        v16 -= 2;
      }

      while (v16);
    }
  }

  else if (v14)
  {
    for (i = 0; i != v14; ++i)
    {
      v23 = 0;
      *(v15 + 8 * *(a1 + 64) * *(&v26[0] + 1) + 8 * *(a1 + 56) * *&v26[0]) = v13;
      do
      {
        v24 = *(v26 + v23 + 8) + 1;
        *(v26 + v23 + 8) = v24;
        if (v24 != *(a1 + 16 + v23))
        {
          break;
        }

        *(v26 + v23 + 8) = 0;
        v23 -= 8;
      }

      while (v23 != -16);
    }
  }

  return a1;
}

void sub_262223BB0(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t sub_262223BCC(uint64_t result)
{
  if (*(result + 40) == 1)
  {
    v1 = result;
    result = *(result + 24);
    if (result)
    {
      result = MEMORY[0x266727400](result, 0x1000C8000313F17);
      *(v1 + 24) = 0;
    }
  }

  return result;
}

void sub_262223C1C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2874EECB0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x266727420);
}

uint64_t sub_262223C90(const char *a1, const char *a2, void *a3, const char *a4, const char *a5, void *a6, const char *a7)
{
  v14 = strlen(a1);
  v15 = MEMORY[0x277D82670];
  v16 = sub_2621D552C(MEMORY[0x277D82670], a1, v14);
  sub_2621D552C(v16, " ", 1);
  v17 = strlen(a2);
  v18 = sub_2621D552C(v15, a2, v17);
  v19 = sub_2621D552C(v18, " ", 1);
  v20 = MEMORY[0x266727270](v19, *a3);
  sub_2621D552C(v20, " ", 1);
  v21 = strlen(a4);
  v22 = sub_2621D552C(v15, a4, v21);
  sub_2621D552C(v22, " ", 1);
  v23 = strlen(a5);
  v24 = sub_2621D552C(v15, a5, v23);
  v25 = sub_2621D552C(v24, " ", 1);
  v26 = MEMORY[0x266727270](v25, *a6);
  sub_2621D552C(v26, " ", 1);

  return sub_2621D99BC(a7);
}

void sub_262223E50(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t sub_262223E6C(uint64_t result)
{
  if (*(result + 40) == 1)
  {
    v1 = result;
    result = *(result + 24);
    if (result)
    {
      result = MEMORY[0x266727400](result, 0x1000C8077774924);
      *(v1 + 24) = 0;
    }
  }

  return result;
}

void sub_262223EBC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2874EED08;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x266727420);
}

uint64_t sub_262223F30(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2874EF0B8;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  v4 = *(a2 + 8);
  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = v5;
  *(a1 + 8) = v4;
  v6 = *(a2 + 56);
  v7 = *(a2 + 72);
  v8 = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = v8;
  *(a1 + 72) = v7;
  *(a1 + 56) = v6;
  v9 = *(a2 + 120);
  v10 = *(a2 + 128);
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    v11 = *(a1 + 128);
    *(a1 + 120) = v9;
    *(a1 + 128) = v10;
    if (v11)
    {
      sub_2621D1B78(v11);
    }
  }

  else
  {
    *(a1 + 120) = v9;
    *(a1 + 128) = 0;
  }

  *(a1 + 144) = *(a2 + 144);
  *(a1 + 136) = *(a2 + 136);
  return a1;
}

uint64_t sub_262224008(uint64_t a1, _OWORD *a2)
{
  *a1 = &unk_2874EF0B8;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 1;
  v3 = a2[1];
  v2 = a2[2];
  *(a1 + 8) = *a2;
  *(a1 + 40) = v2;
  *(a1 + 24) = v3;
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  *(a1 + 56) = v4;
  *(a1 + 64) = 1;
  v6 = v5 * v4;
  *(a1 + 104) = v6;
  *(a1 + 112) = 0;
  if (v6)
  {
    sub_262224B84(&v7, (a1 + 104));
  }

  *(a1 + 137) = 1;
  return a1;
}

void sub_2622240EC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 128);
  if (v3)
  {
    sub_2621D1B78(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_262224104(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = 0;
  v163 = *MEMORY[0x277D85DE8];
  v5 = (result + 8);
  v6 = (a2 + 8);
  v7 = 1;
  do
  {
    v8 = *(v5 + v4);
    v9 = *(v6 + v4);
    if ((v7 & 1) == 0)
    {
      break;
    }

    v7 = 0;
    v4 = 1;
  }

  while (v8 == v9);
  if (v8 == v9)
  {
    if (*(a2 + 136))
    {
      v149 = 0uLL;
      v150 = 0uLL;
      v148 = 0uLL;
      v10 = *(result + 104);
      v11 = *(result + 144);
      if (*(result + 136))
      {
        if (v10)
        {
          v12 = *(a2 + 144);
          do
          {
            v13 = *v12++;
            *v11++ = v13;
            --v10;
          }

          while (v10);
        }
      }

      else if (v10)
      {
        v82 = 0;
        v83 = *(result + 56);
        v84 = *(result + 64);
        v85 = *(a2 + 144);
        do
        {
          v86 = 0;
          v11[v84 * *(&v148 + 1) + v83 * v148] = *(v85 + 4 * v82);
          do
          {
            v87 = *(&v148 + v86 + 8) + 1;
            *(&v148 + v86 + 8) = v87;
            result = *(v3 + 16 + v86);
            if (v87 != result)
            {
              break;
            }

            *(&v148 + v86 + 8) = 0;
            v86 -= 8;
          }

          while (v86 != -16);
          ++v82;
        }

        while (v82 != v10);
      }
    }

    else
    {
      v149 = 0uLL;
      v150 = 0uLL;
      v148 = 0uLL;
      v42 = *(result + 104);
      v43 = *(result + 144);
      if (*(result + 136))
      {
        if (v42)
        {
          v44 = 0;
          v45 = *(a2 + 56);
          v46 = *(a2 + 64);
          v47 = *(a2 + 144);
          do
          {
            v48 = 0;
            *(v43 + 4 * v44) = *(v47 + 4 * v46 * *(&v148 + 1) + 4 * v45 * v148);
            do
            {
              v49 = *(&v148 + v48 + 8) + 1;
              *(&v148 + v48 + 8) = v49;
              result = *(v3 + 16 + v48);
              if (v49 != result)
              {
                break;
              }

              *(&v148 + v48 + 8) = 0;
              v48 -= 8;
            }

            while (v48 != -16);
            ++v44;
          }

          while (v44 != v42);
        }
      }

      else if (v42)
      {
        v88 = 0;
        v89 = *(result + 56);
        v90 = *(result + 64);
        v91 = *(a2 + 56);
        v92 = *(a2 + 64);
        v93 = *(a2 + 144);
        do
        {
          result = 0;
          *(v43 + 4 * v90 * *(&v148 + 1) + 4 * v89 * v148) = *(v93 + 4 * v92 * *(&v148 + 1) + 4 * v91 * v148);
          do
          {
            v94 = *(&v148 + result + 8) + 1;
            *(&v148 + result + 8) = v94;
            if (v94 != *(v3 + 16 + result))
            {
              break;
            }

            *(&v148 + result + 8) = 0;
            result -= 8;
          }

          while (result != -16);
          ++v88;
        }

        while (v88 != v42);
      }
    }
  }

  else
  {
    if (*(a2 + 136))
    {
      v161 = 0uLL;
      v162 = 0uLL;
      v159 = 0uLL;
      v160 = 0uLL;
      v157 = 0uLL;
      v158 = 0uLL;
      v155 = 0uLL;
      v156 = 0uLL;
      v153 = 0uLL;
      v154 = 0uLL;
      v151 = 0uLL;
      v152 = 0uLL;
      v149 = 0uLL;
      v150 = 0uLL;
      v148 = 0uLL;
      v140 = 0uLL;
      v141 = 0uLL;
      v139 = 0uLL;
      sub_2621D96E4(&v148, v5, v6, &v139);
      v14 = 0;
      v15 = &v139;
      v16 = 1;
      do
      {
        v17 = *v15;
        v18 = *(v5 + v14);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v16 = 0;
        v15 = &v139 + 1;
        v14 = 1;
      }

      while (v17 == v18);
      if (v17 != v18)
      {
        v19 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v20 = sub_2621D552C(v19, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v20, " ", 1);
        v21 = MEMORY[0x277D82670];
        v22 = MEMORY[0x266727260](MEMORY[0x277D82670], 190);
        sub_2621D552C(v22, " ", 1);
        sub_2621D552C(v22, "broadcast_assign_continue", 25);
        std::ios_base::getloc((v22 + *(*v22 - 24)));
        v23 = std::locale::use_facet(v145, MEMORY[0x277D82680]);
        (v23->__vftable[2].~facet_0)(v23, 10);
        std::locale::~locale(v145);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v21 + *(*v21 - 24)));
        v24 = std::locale::use_facet(v145, MEMORY[0x277D82680]);
        (v24->__vftable[2].~facet_0)(v24, 10);
        std::locale::~locale(v145);
        std::ostream::put();
        std::ostream::flush();
      }

      v146 = 0u;
      v147 = 0u;
      v144 = 0u;
      *&v145[0].__locale_ = 0u;
      v142 = 0u;
      v143 = 0u;
      v25 = *(v3 + 104);
      v26 = *(v3 + 144);
      if (*(v3 + 136))
      {
        if (v25)
        {
          v27 = 0;
          v29 = *(&v149 + 1);
          v28 = v150;
          v30 = (v150 - *(&v149 + 1)) >> 3;
          if (v30 <= 1)
          {
            v30 = 1;
          }

          v31 = *(a2 + 144);
          do
          {
            v142 = *&v145[0].__locale_;
            if (v28 != v29)
            {
              v32 = v29;
              v33 = v30;
              do
              {
                v34 = *v32++;
                *(&v142 + v34) = 0;
                --v33;
              }

              while (v33);
            }

            v35 = 0;
            v36 = 0;
            v37 = &v142;
            v38 = 1;
            do
            {
              v39 = v38;
              v36 += *(&v160 + v35) * *v37;
              v37 = (&v142 + 8);
              v35 = 1;
              v38 = 0;
            }

            while ((v39 & 1) != 0);
            *(v26 + 4 * v27) = *(v31 + 4 * v36);
            for (i = 1; i != -1; --i)
            {
              v41 = (v145[i].__locale_ + 1);
              v145[i].__locale_ = v41;
              if (v41 != *(&v139 + i * 8))
              {
                break;
              }

              v145[i].__locale_ = 0;
            }

            ++v27;
          }

          while (v27 != v25);
        }
      }

      else if (v25)
      {
        v95 = 0;
        v97 = *(&v149 + 1);
        v96 = v150;
        v98 = (v150 - *(&v149 + 1)) >> 3;
        if (v98 <= 1)
        {
          v98 = 1;
        }

        v99 = *(v3 + 56);
        v100 = *(v3 + 64);
        v101 = *(a2 + 144);
        do
        {
          locale = v145[0].__locale_;
          v103 = v145[1].__locale_;
          v142 = *&v145[0].__locale_;
          if (v96 != v97)
          {
            v104 = v97;
            v105 = v98;
            do
            {
              v106 = *v104++;
              *(&v142 + v106) = 0;
              --v105;
            }

            while (v105);
          }

          v107 = 0;
          v108 = 0;
          v109 = &v142;
          v110 = 1;
          do
          {
            v111 = v110;
            v108 += *(&v160 + v107) * *v109;
            v109 = (&v142 + 8);
            v107 = 1;
            v110 = 0;
          }

          while ((v111 & 1) != 0);
          *(v26 + 4 * v103 * v100 + 4 * locale * v99) = *(v101 + 4 * v108);
          for (j = 1; j != -1; --j)
          {
            v113 = (v145[j].__locale_ + 1);
            v145[j].__locale_ = v113;
            if (v113 != *(&v139 + j * 8))
            {
              break;
            }

            v145[j].__locale_ = 0;
          }

          ++v95;
        }

        while (v95 != v25);
      }
    }

    else
    {
      v161 = 0uLL;
      v162 = 0uLL;
      v159 = 0uLL;
      v160 = 0uLL;
      v157 = 0uLL;
      v158 = 0uLL;
      v155 = 0uLL;
      v156 = 0uLL;
      v153 = 0uLL;
      v154 = 0uLL;
      v151 = 0uLL;
      v152 = 0uLL;
      v149 = 0uLL;
      v150 = 0uLL;
      v148 = 0uLL;
      v140 = 0uLL;
      v141 = 0uLL;
      v139 = 0uLL;
      sub_2621D96E4(&v148, v5, v6, &v139);
      v50 = 0;
      v51 = &v139;
      v52 = 1;
      do
      {
        v53 = *v51;
        v54 = *(v5 + v50);
        if ((v52 & 1) == 0)
        {
          break;
        }

        v52 = 0;
        v51 = &v139 + 1;
        v50 = 1;
      }

      while (v53 == v54);
      if (v53 != v54)
      {
        v55 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v56 = sub_2621D552C(v55, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v56, " ", 1);
        v57 = MEMORY[0x277D82670];
        v58 = MEMORY[0x266727260](MEMORY[0x277D82670], 239);
        sub_2621D552C(v58, " ", 1);
        sub_2621D552C(v58, "broadcast_assign_stride", 23);
        std::ios_base::getloc((v58 + *(*v58 - 24)));
        v59 = std::locale::use_facet(v145, MEMORY[0x277D82680]);
        (v59->__vftable[2].~facet_0)(v59, 10);
        std::locale::~locale(v145);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v57 + *(*v57 - 24)));
        v60 = std::locale::use_facet(v145, MEMORY[0x277D82680]);
        (v60->__vftable[2].~facet_0)(v60, 10);
        std::locale::~locale(v145);
        std::ostream::put();
        std::ostream::flush();
      }

      v146 = 0u;
      v147 = 0u;
      v144 = 0u;
      *&v145[0].__locale_ = 0u;
      v142 = 0u;
      v143 = 0u;
      v61 = *(v3 + 104);
      v62 = *(v3 + 144);
      if (*(v3 + 136))
      {
        if (v61)
        {
          v63 = 0;
          v65 = *(&v149 + 1);
          v64 = v150;
          v66 = (v150 - *(&v149 + 1)) >> 3;
          if (v66 <= 1)
          {
            v66 = 1;
          }

          v67 = *(a2 + 136);
          v68 = *(a2 + 56);
          v69 = *(a2 + 64);
          v70 = *(a2 + 144);
          do
          {
            v142 = *&v145[0].__locale_;
            if (v64 != v65)
            {
              v71 = v65;
              v72 = v66;
              do
              {
                v73 = *v71++;
                *(&v142 + v73) = 0;
                --v72;
              }

              while (v72);
            }

            v74 = 0;
            v75 = 0;
            v76 = &v142;
            v77 = 1;
            do
            {
              v78 = v77;
              v75 += *(&v160 + v74) * *v76;
              v76 = (&v142 + 8);
              v74 = 1;
              v77 = 0;
            }

            while ((v78 & 1) != 0);
            v79 = (v70 + 4 * v75);
            if (!v67)
            {
              v79 = (v70 + 4 * *(&v142 + 1) * v69 + 4 * v142 * v68);
            }

            *(v62 + 4 * v63) = *v79;
            for (k = 1; k != -1; --k)
            {
              v81 = (v145[k].__locale_ + 1);
              v145[k].__locale_ = v81;
              if (v81 != *(&v139 + k * 8))
              {
                break;
              }

              v145[k].__locale_ = 0;
            }

            ++v63;
          }

          while (v63 != v61);
        }
      }

      else if (v61)
      {
        v114 = 0;
        v116 = *(&v149 + 1);
        v115 = v150;
        v117 = (v150 - *(&v149 + 1)) >> 3;
        if (v117 <= 1)
        {
          v117 = 1;
        }

        v118 = *(v3 + 56);
        v119 = *(v3 + 64);
        v120 = *(a2 + 136);
        v121 = *(a2 + 56);
        v122 = *(a2 + 64);
        v123 = *(a2 + 144);
        do
        {
          v124 = v145[0].__locale_;
          v125 = v145[1].__locale_;
          v142 = *&v145[0].__locale_;
          if (v115 != v116)
          {
            v126 = v116;
            v127 = v117;
            do
            {
              v128 = *v126++;
              *(&v142 + v128) = 0;
              --v127;
            }

            while (v127);
          }

          v129 = 0;
          v130 = 0;
          v131 = &v142;
          v132 = 1;
          do
          {
            v133 = v132;
            v130 += *(&v160 + v129) * *v131;
            v131 = (&v142 + 8);
            v129 = 1;
            v132 = 0;
          }

          while ((v133 & 1) != 0);
          v134 = v124 * v118;
          v135 = v125 * v119;
          v136 = (v123 + 4 * v130);
          if (!v120)
          {
            v136 = (v123 + 4 * *(&v142 + 1) * v122 + 4 * v142 * v121);
          }

          *(v62 + 4 * v135 + 4 * v134) = *v136;
          for (m = 1; m != -1; --m)
          {
            v138 = (v145[m].__locale_ + 1);
            v145[m].__locale_ = v138;
            if (v138 != *(&v139 + m * 8))
            {
              break;
            }

            v145[m].__locale_ = 0;
          }

          ++v114;
        }

        while (v114 != v61);
      }
    }

    return sub_2621C57C8(&v148);
  }

  return result;
}

void sub_262224B50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::locale a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  std::locale::~locale(&a21);
  sub_2621C57C8(va);
  _Unwind_Resume(a1);
}

void sub_262224C2C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t sub_262224C48(uint64_t result)
{
  if (*(result + 40) == 1)
  {
    v1 = result;
    result = *(result + 24);
    if (result)
    {
      result = MEMORY[0x266727400](result, 0x1000C8052888210);
      *(v1 + 24) = 0;
    }
  }

  return result;
}

void sub_262224C98(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2874EF6C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x266727420);
}

void sub_262224D0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  *a1 = &unk_2874EF0D8;
  *(a1 + 120) = 0;
  v5 = (a1 + 120);
  *(a1 + 128) = 0;
  *(a1 + 136) = 257;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  v6 = (a1 + 56);
  v7 = (a3 + 16);
  *(a1 + 40) = *(a2 + 40);
  do
  {
    v8 = *(v7 - 2);
    v9 = (*(v7 - 1) - v8);
    v10 = *v7;
    v7 += 3;
    *(v6 - 6) = vcvtps_u32_f32(v9 / v10);
    *v6++ *= v10;
    *(a1 + 112) += *(a2 + 56 + 8 * v4++) * v8;
  }

  while (v4 != 3);
  *(a1 + 104) = *(a1 + 16) * *(a1 + 8) * *(a1 + 24);
  v11 = *(a2 + 120);
  v12 = *(a2 + 128);
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    v13 = *(a1 + 128);
    *(a1 + 120) = v11;
    *(a1 + 128) = v12;
    if (v13)
    {
      sub_2621D1B78(v13);
      v11 = *v5;
    }
  }

  else
  {
    *(a1 + 120) = v11;
    *(a1 + 128) = 0;
  }

  *(a1 + 144) = *v11 + 4 * *(a1 + 112);
  *(a1 + 137) = 0;
  v14 = (a1 + 72);
  v15 = -3;
  v16 = 1;
  while (1)
  {
    v17 = *(v14 - 6);
    if (v17 != 1)
    {
      break;
    }

LABEL_11:
    --v14;
    if (__CFADD__(v15++, 1))
    {
      v19 = 1;
      goto LABEL_15;
    }
  }

  if (*v14 == v16)
  {
    v16 *= v17;
    goto LABEL_11;
  }

  v19 = 0;
LABEL_15:
  *(a1 + 136) = v19;
}

void sub_262224E88(uint64_t a1, uint64_t a2, int a3)
{
  *a1 = &unk_2874EF0B8;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 120) = 0;
  v5 = (a1 + 120);
  *(a1 + 136) = 257;
  v6 = a2 + 8;
  *(a1 + 128) = 0;
  sub_262202308(&v20, a2 + 8, a3);
  v7 = v21;
  v8 = *(a2 + 56 + 8 * v20);
  v9 = *(v6 + 8 * v21);
  *(a1 + 8) = *(v6 + 8 * v20);
  *(a1 + 16) = v9;
  v10 = *(a2 + 56 + 8 * v7);
  *(a1 + 56) = v8;
  *(a1 + 64) = v10;
  *(a1 + 104) = *(a2 + 104);
  v11 = *(a2 + 120);
  v12 = *(a2 + 128);
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = *(a1 + 128);
  *(a1 + 120) = v11;
  *(a1 + 128) = v12;
  if (v13)
  {
    sub_2621D1B78(v13);
    v11 = *v5;
  }

  *(a1 + 144) = *v11 + 4 * *(a1 + 112);
  *(a1 + 137) = 0;
  v14 = (a1 + 64);
  v15 = -2;
  v16 = 1;
  while (1)
  {
    v17 = *(v14 - 6);
    if (v17 != 1)
    {
      break;
    }

LABEL_9:
    --v14;
    if (__CFADD__(v15++, 1))
    {
      v19 = 1;
      goto LABEL_13;
    }
  }

  if (*v14 == v16)
  {
    v16 *= v17;
    goto LABEL_9;
  }

  v19 = 0;
LABEL_13:
  *(a1 + 136) = v19;
}

void sub_262224FCC(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  v4 = v1[16];
  if (v4)
  {
    sub_2621D1B78(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_262224FE8(uint64_t a1, _OWORD *a2)
{
  *a1 = &unk_2874EF6A8;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 1;
  v3 = a2[1];
  v2 = a2[2];
  *(a1 + 8) = *a2;
  *(a1 + 40) = v2;
  *(a1 + 24) = v3;
  *(a1 + 56) = 1;
  v4 = *(a1 + 8);
  *(a1 + 104) = v4;
  *(a1 + 112) = 0;
  if (v4)
  {
    sub_262224B84(&v5, (a1 + 104));
  }

  *(a1 + 137) = 1;
  return a1;
}

void sub_2622250C8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 128);
  if (v3)
  {
    sub_2621D1B78(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2622250E0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v112 = *MEMORY[0x277D85DE8];
  v4 = (result + 8);
  v5 = *(result + 8);
  if (v5 == *a2)
  {
    if (*(a2 + 344))
    {
      v110 = 0uLL;
      v111 = 0uLL;
      *&v109[0].__locale_ = 0uLL;
      v6 = *(result + 104);
      v7 = *(result + 144);
      if (*(result + 136))
      {
        if (v6)
        {
          v8 = 0;
          v9 = *(a2 + 160);
          v10 = *(a2 + 352);
          do
          {
            v95 = 0u;
            v96 = 0u;
            v94 = 0u;
            result = sub_26222AE2C(a2 + 48, v109, &v94);
            *v7++ = *(v10 + 4 * v9 * v94);
            if ((v8 + 1) == v5)
            {
              v8 = 0;
            }

            else
            {
              v8 = (v8 + 1);
            }

            v109[0].__locale_ = v8;
            --v6;
          }

          while (v6);
        }
      }

      else if (v6)
      {
        v52 = 0;
        v53 = *(result + 56);
        v54 = *(a2 + 160);
        v55 = *(a2 + 352);
        do
        {
          v95 = 0u;
          v96 = 0u;
          v94 = 0u;
          result = sub_26222AE2C(a2 + 48, v109, &v94);
          v7[v53 * v52] = *(v55 + 4 * v54 * v94);
          if ((v52 + 1) == v5)
          {
            v52 = 0;
          }

          else
          {
            v52 = (v52 + 1);
          }

          v109[0].__locale_ = v52;
          --v6;
        }

        while (v6);
      }
    }

    else
    {
      v110 = 0uLL;
      v111 = 0uLL;
      *&v109[0].__locale_ = 0uLL;
      v29 = *(result + 104);
      v30 = *(result + 144);
      if (*(result + 136))
      {
        if (v29)
        {
          v31 = 0;
          v32 = *(a2 + 352);
          v33 = *(a2 + 264);
          do
          {
            v95 = 0u;
            v96 = 0u;
            v94 = 0u;
            result = sub_26222AE2C(a2 + 48, v109, &v94);
            *v30++ = *(v32 + 4 * v33 * v94);
            if ((v31 + 1) == v5)
            {
              v31 = 0;
            }

            else
            {
              v31 = (v31 + 1);
            }

            v109[0].__locale_ = v31;
            --v29;
          }

          while (v29);
        }
      }

      else if (v29)
      {
        v56 = 0;
        v57 = *(result + 56);
        v58 = *(a2 + 352);
        v59 = *(a2 + 264);
        do
        {
          v95 = 0u;
          v96 = 0u;
          v94 = 0u;
          result = sub_26222AE2C(a2 + 48, v109, &v94);
          v30[v57 * v56] = *(v58 + 4 * v59 * v94);
          if ((v56 + 1) == v5)
          {
            v56 = 0;
          }

          else
          {
            v56 = (v56 + 1);
          }

          v109[0].__locale_ = v56;
          --v29;
        }

        while (v29);
      }
    }
  }

  else
  {
    if (*(a2 + 344))
    {
      v107 = 0uLL;
      v108 = 0uLL;
      v105 = 0uLL;
      v106 = 0uLL;
      v103 = 0uLL;
      v104 = 0uLL;
      v101 = 0uLL;
      v102 = 0uLL;
      v99 = 0uLL;
      v100 = 0uLL;
      v97 = 0uLL;
      v98 = 0uLL;
      v95 = 0uLL;
      v96 = 0uLL;
      v94 = 0uLL;
      v89 = 0uLL;
      v90 = 0uLL;
      v88 = 0uLL;
      sub_262205FA8(&v94, v4, a2, &v88);
      v85 = v88;
      if (v88 != *v4)
      {
        v11 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v12 = sub_2621D552C(v11, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v12, " ", 1);
        v13 = MEMORY[0x277D82670];
        v14 = MEMORY[0x266727260](MEMORY[0x277D82670], 190);
        sub_2621D552C(v14, " ", 1);
        sub_2621D552C(v14, "broadcast_assign_continue", 25);
        std::ios_base::getloc((v14 + *(*v14 - 24)));
        v15 = std::locale::use_facet(v109, MEMORY[0x277D82680]);
        (v15->__vftable[2].~facet_0)(v15, 10);
        std::locale::~locale(v109);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v13 + *(*v13 - 24)));
        v16 = std::locale::use_facet(v109, MEMORY[0x277D82680]);
        (v16->__vftable[2].~facet_0)(v16, 10);
        std::locale::~locale(v109);
        std::ostream::put();
        std::ostream::flush();
      }

      v92 = 0u;
      v93 = 0u;
      v91 = 0u;
      v17 = *(v3 + 104);
      v18 = *(v3 + 144);
      if (*(v3 + 136))
      {
        if (v17)
        {
          v19 = 0;
          v20 = 0;
          v22 = *(&v95 + 1);
          v21 = v96;
          if (((v96 - *(&v95 + 1)) >> 3) <= 1)
          {
            v23 = 1;
          }

          else
          {
            v23 = (v96 - *(&v95 + 1)) >> 3;
          }

          v24 = *(a2 + 160);
          v25 = *(a2 + 352);
          do
          {
            *&v91 = v19;
            if (v21 != v22)
            {
              v26 = v22;
              v27 = v23;
              do
              {
                v28 = *v26++;
                *(&v91 + v28) = 0;
                --v27;
              }

              while (v27);
            }

            v110 = 0u;
            v111 = 0u;
            *&v109[0].__locale_ = 0u;
            sub_26222AE2C(a2 + 48, &v91, v109);
            *(v18 + 4 * v20) = *(v25 + 4 * v24 * v109[0].__locale_);
            if (v19 + 1 == v85)
            {
              v19 = 0;
            }

            else
            {
              ++v19;
            }

            ++v20;
          }

          while (v20 != v17);
        }
      }

      else if (v17)
      {
        v60 = 0;
        v61 = 0;
        v62 = *(&v95 + 1);
        v83 = v96;
        v63 = (v96 - *(&v95 + 1)) >> 3;
        if (v63 <= 1)
        {
          v63 = 1;
        }

        v80 = v63;
        v64 = *(v3 + 56);
        v65 = *(a2 + 160);
        v66 = *(a2 + 352);
        do
        {
          *&v91 = v60;
          if (v83 != v62)
          {
            v67 = v62;
            v68 = v80;
            do
            {
              v69 = *v67++;
              *(&v91 + v69) = 0;
              --v68;
            }

            while (v68);
          }

          v110 = 0u;
          v111 = 0u;
          *&v109[0].__locale_ = 0u;
          sub_26222AE2C(a2 + 48, &v91, v109);
          *(v18 + 4 * v64 * v60) = *(v66 + 4 * v65 * v109[0].__locale_);
          if (v60 + 1 == v85)
          {
            v60 = 0;
          }

          else
          {
            ++v60;
          }

          ++v61;
        }

        while (v61 != v17);
      }
    }

    else
    {
      v107 = 0uLL;
      v108 = 0uLL;
      v105 = 0uLL;
      v106 = 0uLL;
      v103 = 0uLL;
      v104 = 0uLL;
      v101 = 0uLL;
      v102 = 0uLL;
      v99 = 0uLL;
      v100 = 0uLL;
      v97 = 0uLL;
      v98 = 0uLL;
      v95 = 0uLL;
      v96 = 0uLL;
      v94 = 0uLL;
      v89 = 0uLL;
      v90 = 0uLL;
      v88 = 0uLL;
      sub_262205FA8(&v94, v4, a2, &v88);
      v86 = v88;
      if (v88 != *v4)
      {
        v34 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v35 = sub_2621D552C(v34, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v35, " ", 1);
        v36 = MEMORY[0x277D82670];
        v37 = MEMORY[0x266727260](MEMORY[0x277D82670], 239);
        sub_2621D552C(v37, " ", 1);
        sub_2621D552C(v37, "broadcast_assign_stride", 23);
        std::ios_base::getloc((v37 + *(*v37 - 24)));
        v38 = std::locale::use_facet(v109, MEMORY[0x277D82680]);
        (v38->__vftable[2].~facet_0)(v38, 10);
        std::locale::~locale(v109);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v36 + *(*v36 - 24)));
        v39 = std::locale::use_facet(v109, MEMORY[0x277D82680]);
        (v39->__vftable[2].~facet_0)(v39, 10);
        std::locale::~locale(v109);
        std::ostream::put();
        std::ostream::flush();
      }

      v92 = 0u;
      v93 = 0u;
      v91 = 0u;
      v40 = *(v3 + 104);
      v41 = *(v3 + 144);
      if (*(v3 + 136))
      {
        if (v40)
        {
          v42 = 0;
          v43 = 0;
          v45 = *(&v95 + 1);
          v44 = v96;
          v46 = (v96 - *(&v95 + 1)) >> 3;
          if (v46 <= 1)
          {
            v46 = 1;
          }

          v82 = v46;
          if (*(a2 + 344))
          {
            v47 = 160;
          }

          else
          {
            v47 = 264;
          }

          v48 = *(a2 + 352);
          do
          {
            *&v91 = v42;
            if (v44 != v45)
            {
              v49 = v45;
              v50 = v82;
              do
              {
                v51 = *v49++;
                *(&v91 + v51) = 0;
                --v50;
              }

              while (v50);
            }

            v110 = 0u;
            v111 = 0u;
            *&v109[0].__locale_ = 0u;
            sub_26222AE2C(a2 + 48, &v91, v109);
            *(v41 + 4 * v43) = *(v48 + 4 * *(a2 + v47) * v109[0].__locale_);
            if (v42 + 1 == v86)
            {
              v42 = 0;
            }

            else
            {
              ++v42;
            }

            ++v43;
          }

          while (v43 != v40);
        }
      }

      else if (v40)
      {
        v70 = 0;
        v71 = 0;
        v72 = *(&v95 + 1);
        v84 = v96;
        if (((v96 - *(&v95 + 1)) >> 3) <= 1)
        {
          v73 = 1;
        }

        else
        {
          v73 = (v96 - *(&v95 + 1)) >> 3;
        }

        v79 = v73;
        v81 = *(v3 + 56);
        if (*(a2 + 344))
        {
          v74 = 160;
        }

        else
        {
          v74 = 264;
        }

        v75 = *(a2 + 352);
        do
        {
          *&v91 = v70;
          if (v84 != v72)
          {
            v76 = v72;
            v77 = v79;
            do
            {
              v78 = *v76++;
              *(&v91 + v78) = 0;
              --v77;
            }

            while (v77);
          }

          v110 = 0u;
          v111 = 0u;
          *&v109[0].__locale_ = 0u;
          sub_26222AE2C(a2 + 48, &v91, v109);
          *(v41 + 4 * v81 * v70) = *(v75 + 4 * *(a2 + v74) * v109[0].__locale_);
          if (v70 + 1 == v86)
          {
            v70 = 0;
          }

          else
          {
            ++v70;
          }

          ++v71;
        }

        while (v71 != v40);
      }
    }

    return sub_2621C57C8(&v94);
  }

  return result;
}

void sub_2622259F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  std::locale::~locale((v26 - 144));
  sub_2621C57C8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_262225A24(uint64_t result, uint64_t a2)
{
  v3 = result;
  v109 = *MEMORY[0x277D85DE8];
  v5 = (result + 8);
  v4 = *(result + 8);
  v6 = (a2 + 8);
  if (v4 == *(a2 + 8))
  {
    v7 = *(result + 104);
    v8 = *(result + 144);
    if (*(a2 + 136))
    {
      if (*(result + 136))
      {
        if (v7)
        {
          v9 = *(a2 + 144);
          do
          {
            v10 = *v9++;
            *v8++ = v10;
            --v7;
          }

          while (v7);
        }
      }

      else if (v7)
      {
        v55 = 0;
        v56 = *(result + 56);
        v57 = *(a2 + 144);
        do
        {
          v58 = *v57++;
          v8[v56 * v55] = v58;
          if (v55 + 1 == v4)
          {
            v55 = 0;
          }

          else
          {
            ++v55;
          }

          --v7;
        }

        while (v7);
      }
    }

    else if (*(result + 136))
    {
      if (v7)
      {
        v31 = 0;
        v32 = *(a2 + 144);
        do
        {
          *v8++ = *(v32 + 4 * *(a2 + 56) * v31);
          if (v31 + 1 == v4)
          {
            v31 = 0;
          }

          else
          {
            ++v31;
          }

          --v7;
        }

        while (v7);
      }
    }

    else if (v7)
    {
      v59 = 0;
      v60 = *(result + 56);
      v61 = *(a2 + 144);
      do
      {
        v8[v60 * v59] = *(v61 + 4 * *(a2 + 56) * v59);
        if (v59 + 1 == v4)
        {
          v59 = 0;
        }

        else
        {
          ++v59;
        }

        --v7;
      }

      while (v7);
    }
  }

  else
  {
    if (*(a2 + 136))
    {
      v104 = 0uLL;
      v105 = 0uLL;
      v102 = 0uLL;
      v103 = 0uLL;
      v100 = 0uLL;
      v101 = 0uLL;
      v98 = 0uLL;
      v99 = 0uLL;
      v96 = 0uLL;
      v97 = 0uLL;
      v94 = 0uLL;
      v95 = 0uLL;
      v92 = 0uLL;
      v93 = 0uLL;
      v90 = 0uLL;
      v91 = 0uLL;
      v88 = 0uLL;
      v89 = 0uLL;
      sub_262205FA8(&v91, v5, v6, &v88);
      v11 = v88;
      if (v88 != *v5)
      {
        v12 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v13 = sub_2621D552C(v12, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v13, " ", 1);
        v14 = MEMORY[0x277D82670];
        v15 = MEMORY[0x266727260](MEMORY[0x277D82670], 190);
        sub_2621D552C(v15, " ", 1);
        sub_2621D552C(v15, "broadcast_assign_continue", 25);
        std::ios_base::getloc((v15 + *(*v15 - 24)));
        v16 = std::locale::use_facet(v106, MEMORY[0x277D82680]);
        (v16->__vftable[2].~facet_0)(v16, 10);
        std::locale::~locale(v106);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v14 + *(*v14 - 24)));
        v17 = std::locale::use_facet(v106, MEMORY[0x277D82680]);
        (v17->__vftable[2].~facet_0)(v17, 10);
        std::locale::~locale(v106);
        std::ostream::put();
        std::ostream::flush();
      }

      v107 = 0u;
      v108 = 0u;
      *&v106[0].__locale_ = 0u;
      v18 = *(v3 + 104);
      v19 = *(v3 + 144);
      if (*(v3 + 136))
      {
        if (v18)
        {
          v20 = 0;
          v21 = 0;
          v23 = *(&v92 + 1);
          v22 = v93;
          v24 = (v93 - *(&v92 + 1)) >> 3;
          if (v24 <= 1)
          {
            v24 = 1;
          }

          v25 = v103;
          v26 = *(a2 + 144);
          do
          {
            v106[0].__locale_ = v20;
            locale = v20;
            if (v22 != v23)
            {
              v28 = v23;
              v29 = v24;
              do
              {
                v30 = *v28++;
                v106[v30].__locale_ = 0;
                --v29;
              }

              while (v29);
              locale = v106[0].__locale_;
            }

            *(v19 + 4 * v21) = *(v26 + 4 * locale * v25);
            if ((v20 + 1) == v11)
            {
              v20 = 0;
            }

            else
            {
              v20 = (v20 + 1);
            }

            ++v21;
          }

          while (v21 != v18);
        }
      }

      else if (v18)
      {
        v62 = 0;
        v63 = 0;
        v65 = *(&v92 + 1);
        v64 = v93;
        v66 = (v93 - *(&v92 + 1)) >> 3;
        if (v66 <= 1)
        {
          v66 = 1;
        }

        v67 = v103;
        v68 = *(v3 + 56);
        v69 = *(a2 + 144);
        do
        {
          v106[0].__locale_ = v62;
          v70 = v62;
          if (v64 != v65)
          {
            v71 = v65;
            v72 = v66;
            do
            {
              v73 = *v71++;
              v106[v73].__locale_ = 0;
              --v72;
            }

            while (v72);
            v70 = v106[0].__locale_;
          }

          *(v19 + 4 * v62 * v68) = *(v69 + 4 * v70 * v67);
          if ((v62 + 1) == v11)
          {
            v62 = 0;
          }

          else
          {
            v62 = (v62 + 1);
          }

          ++v63;
        }

        while (v63 != v18);
      }
    }

    else
    {
      v104 = 0uLL;
      v105 = 0uLL;
      v102 = 0uLL;
      v103 = 0uLL;
      v100 = 0uLL;
      v101 = 0uLL;
      v98 = 0uLL;
      v99 = 0uLL;
      v96 = 0uLL;
      v97 = 0uLL;
      v94 = 0uLL;
      v95 = 0uLL;
      v92 = 0uLL;
      v93 = 0uLL;
      v90 = 0uLL;
      v91 = 0uLL;
      v88 = 0uLL;
      v89 = 0uLL;
      sub_262205FA8(&v91, v5, v6, &v88);
      v33 = v88;
      if (v88 != *v5)
      {
        v34 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v35 = sub_2621D552C(v34, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v35, " ", 1);
        v36 = MEMORY[0x277D82670];
        v37 = MEMORY[0x266727260](MEMORY[0x277D82670], 239);
        sub_2621D552C(v37, " ", 1);
        sub_2621D552C(v37, "broadcast_assign_stride", 23);
        std::ios_base::getloc((v37 + *(*v37 - 24)));
        v38 = std::locale::use_facet(v106, MEMORY[0x277D82680]);
        (v38->__vftable[2].~facet_0)(v38, 10);
        std::locale::~locale(v106);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v36 + *(*v36 - 24)));
        v39 = std::locale::use_facet(v106, MEMORY[0x277D82680]);
        (v39->__vftable[2].~facet_0)(v39, 10);
        std::locale::~locale(v106);
        std::ostream::put();
        std::ostream::flush();
      }

      v107 = 0u;
      v108 = 0u;
      *&v106[0].__locale_ = 0u;
      v40 = *(v3 + 104);
      v41 = *(v3 + 144);
      if (*(v3 + 136))
      {
        if (v40)
        {
          v42 = 0;
          v43 = 0;
          v45 = *(&v92 + 1);
          v44 = v93;
          v46 = (v93 - *(&v92 + 1)) >> 3;
          if (v46 <= 1)
          {
            v46 = 1;
          }

          v47 = v103;
          v48 = *(a2 + 136);
          v49 = *(a2 + 144);
          do
          {
            v106[0].__locale_ = v42;
            v50 = v42;
            if (v44 != v45)
            {
              v51 = v45;
              v52 = v46;
              do
              {
                v53 = *v51++;
                v106[v53].__locale_ = 0;
                --v52;
              }

              while (v52);
              v50 = v106[0].__locale_;
            }

            v54 = *(a2 + 56);
            if (v48)
            {
              v54 = v47;
            }

            *(v41 + 4 * v43) = *(v49 + 4 * v54 * v50);
            if ((v42 + 1) == v33)
            {
              v42 = 0;
            }

            else
            {
              v42 = (v42 + 1);
            }

            ++v43;
          }

          while (v43 != v40);
        }
      }

      else if (v40)
      {
        v74 = 0;
        v75 = 0;
        v77 = *(&v92 + 1);
        v76 = v93;
        v78 = (v93 - *(&v92 + 1)) >> 3;
        if (v78 <= 1)
        {
          v78 = 1;
        }

        v79 = v103;
        v80 = *(v3 + 56);
        v81 = *(a2 + 136);
        v82 = *(a2 + 144);
        do
        {
          v106[0].__locale_ = v74;
          v83 = v74;
          if (v76 != v77)
          {
            v84 = v77;
            v85 = v78;
            do
            {
              v86 = *v84++;
              v106[v86].__locale_ = 0;
              --v85;
            }

            while (v85);
            v83 = v106[0].__locale_;
          }

          v87 = *(a2 + 56);
          if (v81)
          {
            v87 = v79;
          }

          *(v41 + 4 * v74 * v80) = *(v82 + 4 * v87 * v83);
          if ((v74 + 1) == v33)
          {
            v74 = 0;
          }

          else
          {
            v74 = (v74 + 1);
          }

          ++v75;
        }

        while (v75 != v40);
      }
    }

    return sub_2621C57C8(&v91);
  }

  return result;
}

void sub_262226184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::locale::~locale((v13 - 128));
  sub_2621C57C8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_262226244(uint64_t a1, __int128 *a2)
{
  *a1 = &unk_2874EF0D8;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 1;
  sub_262204784(a1 + 8, a2);
  if (*(a1 + 104))
  {
    sub_262224B84(&v4, (a1 + 104));
  }

  *(a1 + 137) = 1;
  return a1;
}

void sub_262226314(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 128);
  if (v3)
  {
    sub_2621D1B78(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_26222632C(uint64_t a1, uint64_t a2)
{
  v94 = *MEMORY[0x277D85DE8];
  v4 = (a1 + 8);
  if (*(a1 + 8) == *a2 && *(a1 + 16) == *(a2 + 8) && *(a1 + 24) == *(a2 + 16))
  {
    if (*(a2 + 344) == 1)
    {
      v80 = 0uLL;
      v81 = 0uLL;
      v79 = 0uLL;
      v5 = *(a1 + 104);
      v6 = *(a1 + 144);
      if (*(a1 + 136))
      {
        if (v5)
        {
          v7 = 0;
          v8 = a1 + 24;
          do
          {
            v9 = sub_2622276C4(a2, &v79);
            v10 = 0;
            *(v6 + 4 * v7) = v9;
            do
            {
              v11 = *(&v80 + v10) + 1;
              *(&v80 + v10) = v11;
              if (v11 != *(v8 + v10))
              {
                break;
              }

              *(&v80 + v10) = 0;
              v10 -= 8;
            }

            while (v10 != -24);
            ++v7;
          }

          while (v7 != v5);
        }
      }

      else if (v5)
      {
        v53 = 0;
        v54 = a1 + 56;
        v55 = a1 + 24;
        do
        {
          v56 = 0;
          v57 = 0;
          do
          {
            v57 += *(v54 + v56) * *(&v79 + v56);
            v56 += 8;
          }

          while (v56 != 24);
          v58 = sub_2622276C4(a2, &v79);
          v59 = 0;
          *(v6 + 4 * v57) = v58;
          do
          {
            v60 = *(&v80 + v59) + 1;
            *(&v80 + v59) = v60;
            if (v60 != *(v55 + v59))
            {
              break;
            }

            *(&v80 + v59) = 0;
            v59 -= 8;
          }

          while (v59 != -24);
          ++v53;
        }

        while (v53 != v5);
      }
    }

    else
    {
      v80 = 0uLL;
      v81 = 0uLL;
      v79 = 0uLL;
      v46 = *(a1 + 104);
      v47 = *(a1 + 144);
      if (*(a1 + 136))
      {
        if (v46)
        {
          v48 = 0;
          v49 = a1 + 24;
          do
          {
            v50 = sub_2622275F8(a2, &v79);
            v51 = 0;
            *(v47 + 4 * v48) = v50;
            do
            {
              v52 = *(&v80 + v51) + 1;
              *(&v80 + v51) = v52;
              if (v52 != *(v49 + v51))
              {
                break;
              }

              *(&v80 + v51) = 0;
              v51 -= 8;
            }

            while (v51 != -24);
            ++v48;
          }

          while (v48 != v46);
        }
      }

      else if (v46)
      {
        v61 = 0;
        v62 = a1 + 56;
        v63 = a1 + 24;
        do
        {
          v64 = 0;
          v65 = 0;
          do
          {
            v65 += *(v62 + v64) * *(&v79 + v64);
            v64 += 8;
          }

          while (v64 != 24);
          v66 = sub_2622275F8(a2, &v79);
          v67 = 0;
          *(v47 + 4 * v65) = v66;
          do
          {
            v68 = *(&v80 + v67) + 1;
            *(&v80 + v67) = v68;
            if (v68 != *(v63 + v67))
            {
              break;
            }

            *(&v80 + v67) = 0;
            v67 -= 8;
          }

          while (v67 != -24);
          ++v61;
        }

        while (v61 != v46);
      }
    }
  }

  else
  {
    if (*(a2 + 344) == 1)
    {
      v92 = 0uLL;
      v93 = 0uLL;
      v90 = 0uLL;
      v91 = 0uLL;
      v88 = 0uLL;
      v89 = 0uLL;
      v86 = 0uLL;
      v87 = 0uLL;
      v84 = 0uLL;
      v85 = 0uLL;
      v82 = 0uLL;
      v83 = 0uLL;
      v80 = 0uLL;
      v81 = 0uLL;
      v79 = 0uLL;
      v71 = 0uLL;
      v72 = 0uLL;
      v70 = 0uLL;
      sub_2622063F0(&v79, v4, a2, &v70);
      if (v70 != __PAIR128__(*(a1 + 16), *v4) || v71 != *(a1 + 24))
      {
        v12 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v13 = sub_2621D552C(v12, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v13, " ", 1);
        v14 = MEMORY[0x277D82670];
        v15 = MEMORY[0x266727260](MEMORY[0x277D82670], 190);
        sub_2621D552C(v15, " ", 1);
        sub_2621D552C(v15, "broadcast_assign_continue", 25);
        std::ios_base::getloc((v15 + *(*v15 - 24)));
        v16 = std::locale::use_facet(v76, MEMORY[0x277D82680]);
        (v16->__vftable[2].~facet_0)(v16, 10);
        std::locale::~locale(v76);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v14 + *(*v14 - 24)));
        v17 = std::locale::use_facet(v76, MEMORY[0x277D82680]);
        (v17->__vftable[2].~facet_0)(v17, 10);
        std::locale::~locale(v76);
        std::ostream::put();
        std::ostream::flush();
      }

      v78 = 0u;
      *&v76[0].__locale_ = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v73 = 0u;
      v18 = *(a1 + 104);
      v19 = *(a1 + 144);
      if (*(a1 + 136))
      {
        if (v18)
        {
          for (i = 0; i != v18; ++i)
          {
            v69 = 0;
            sub_2622066E4(&v79, v76, &v69, &v73);
            *(v19 + 4 * i) = sub_2622276C4(a2, &v73);
            for (j = 2; j != -1; --j)
            {
              v22 = (v76[j].__locale_ + 1);
              v76[j].__locale_ = v22;
              if (v22 != *(&v70 + j * 8))
              {
                break;
              }

              v76[j].__locale_ = 0;
            }
          }
        }
      }

      else if (v18)
      {
        v34 = 0;
        v35 = a1 + 56;
        do
        {
          v69 = 0;
          sub_2622066E4(&v79, v76, &v69, &v73);
          v36 = 0;
          v37 = 0;
          do
          {
            v37 += *(v35 + v36 * 8) * v76[v36].__locale_;
            ++v36;
          }

          while (v36 != 3);
          *(v19 + 4 * v37) = sub_2622276C4(a2, &v73);
          for (k = 2; k != -1; --k)
          {
            v39 = (v76[k].__locale_ + 1);
            v76[k].__locale_ = v39;
            if (v39 != *(&v70 + k * 8))
            {
              break;
            }

            v76[k].__locale_ = 0;
          }

          ++v34;
        }

        while (v34 != v18);
      }
    }

    else
    {
      v92 = 0uLL;
      v93 = 0uLL;
      v90 = 0uLL;
      v91 = 0uLL;
      v88 = 0uLL;
      v89 = 0uLL;
      v86 = 0uLL;
      v87 = 0uLL;
      v84 = 0uLL;
      v85 = 0uLL;
      v82 = 0uLL;
      v83 = 0uLL;
      v80 = 0uLL;
      v81 = 0uLL;
      v79 = 0uLL;
      v71 = 0uLL;
      v72 = 0uLL;
      v70 = 0uLL;
      sub_2622063F0(&v79, v4, a2, &v70);
      if (v70 != __PAIR128__(*(a1 + 16), *v4) || v71 != *(a1 + 24))
      {
        v23 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v24 = sub_2621D552C(v23, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v24, " ", 1);
        v25 = MEMORY[0x277D82670];
        v26 = MEMORY[0x266727260](MEMORY[0x277D82670], 239);
        sub_2621D552C(v26, " ", 1);
        sub_2621D552C(v26, "broadcast_assign_stride", 23);
        std::ios_base::getloc((v26 + *(*v26 - 24)));
        v27 = std::locale::use_facet(v76, MEMORY[0x277D82680]);
        (v27->__vftable[2].~facet_0)(v27, 10);
        std::locale::~locale(v76);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v25 + *(*v25 - 24)));
        v28 = std::locale::use_facet(v76, MEMORY[0x277D82680]);
        (v28->__vftable[2].~facet_0)(v28, 10);
        std::locale::~locale(v76);
        std::ostream::put();
        std::ostream::flush();
      }

      v78 = 0u;
      *&v76[0].__locale_ = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v73 = 0u;
      v29 = *(a1 + 104);
      v30 = *(a1 + 144);
      if (*(a1 + 136))
      {
        if (v29)
        {
          for (m = 0; m != v29; ++m)
          {
            v69 = 0;
            sub_2622066E4(&v79, v76, &v69, &v73);
            *(v30 + 4 * m) = sub_2622275F8(a2, &v73);
            for (n = 2; n != -1; --n)
            {
              v33 = (v76[n].__locale_ + 1);
              v76[n].__locale_ = v33;
              if (v33 != *(&v70 + n * 8))
              {
                break;
              }

              v76[n].__locale_ = 0;
            }
          }
        }
      }

      else if (v29)
      {
        v40 = 0;
        v41 = a1 + 56;
        do
        {
          v69 = 0;
          sub_2622066E4(&v79, v76, &v69, &v73);
          v42 = 0;
          v43 = 0;
          do
          {
            v43 += *(v41 + v42 * 8) * v76[v42].__locale_;
            ++v42;
          }

          while (v42 != 3);
          *(v30 + 4 * v43) = sub_2622275F8(a2, &v73);
          for (ii = 2; ii != -1; --ii)
          {
            v45 = (v76[ii].__locale_ + 1);
            v76[ii].__locale_ = v45;
            if (v45 != *(&v70 + ii * 8))
            {
              break;
            }

            v76[ii].__locale_ = 0;
          }

          ++v40;
        }

        while (v40 != v29);
      }
    }

    sub_2621C57C8(&v79);
  }
}

void sub_262226C30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::locale a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  std::locale::~locale(&a23);
  sub_2621C57C8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_262226C64(uint64_t result, uint64_t a2)
{
  v3 = result;
  v101 = *MEMORY[0x277D85DE8];
  v4 = (result + 8);
  v5 = (a2 + 8);
  if (*(result + 8) == *(a2 + 8) && *(result + 16) == *(a2 + 16) && *(result + 24) == *(a2 + 24))
  {
    if (*(a2 + 136) == 1)
    {
      v87 = 0uLL;
      v88 = 0uLL;
      v86 = 0uLL;
      v6 = *(result + 104);
      v7 = *(result + 144);
      if (*(result + 136))
      {
        if (v6)
        {
          v8 = *(a2 + 144);
          do
          {
            v9 = *v8++;
            *v7++ = v9;
            --v6;
          }

          while (v6);
        }
      }

      else if (v6)
      {
        v64 = 0;
        v65 = *(a2 + 144);
        do
        {
          v66 = 0;
          v67 = 0;
          do
          {
            v67 += *(v3 + 56 + v66) * *(&v86 + v66);
            v66 += 8;
          }

          while (v66 != 24);
          v68 = 0;
          v7[v67] = *(v65 + 4 * v64);
          do
          {
            v69 = *(&v87 + v68) + 1;
            *(&v87 + v68) = v69;
            result = *(v3 + 24 + v68);
            if (v69 != result)
            {
              break;
            }

            *(&v87 + v68) = 0;
            v68 -= 8;
          }

          while (v68 != -24);
          ++v64;
        }

        while (v64 != v6);
      }
    }

    else
    {
      v87 = 0uLL;
      v88 = 0uLL;
      v86 = 0uLL;
      v56 = *(result + 104);
      v57 = *(result + 144);
      if (*(result + 136))
      {
        if (v56)
        {
          v58 = 0;
          v59 = *(a2 + 144);
          do
          {
            v60 = 0;
            v61 = 0;
            do
            {
              v61 += *(a2 + 56 + v60) * *(&v86 + v60);
              v60 += 8;
            }

            while (v60 != 24);
            v62 = 0;
            *(v57 + 4 * v58) = *(v59 + 4 * v61);
            do
            {
              v63 = *(&v87 + v62) + 1;
              *(&v87 + v62) = v63;
              result = *(v3 + 24 + v62);
              if (v63 != result)
              {
                break;
              }

              *(&v87 + v62) = 0;
              v62 -= 8;
            }

            while (v62 != -24);
            ++v58;
          }

          while (v58 != v56);
        }
      }

      else if (v56)
      {
        v70 = 0;
        v71 = *(a2 + 144);
        do
        {
          v72 = 0;
          v73 = 0;
          do
          {
            v73 += *(v3 + 56 + v72) * *(&v86 + v72);
            v72 += 8;
          }

          while (v72 != 24);
          v74 = 0;
          v75 = 0;
          do
          {
            v75 += *(a2 + 56 + v74) * *(&v86 + v74);
            v74 += 8;
          }

          while (v74 != 24);
          result = 0;
          *(v57 + 4 * v73) = *(v71 + 4 * v75);
          do
          {
            v76 = *(&v87 + result) + 1;
            *(&v87 + result) = v76;
            if (v76 != *(v3 + 24 + result))
            {
              break;
            }

            *(&v87 + result) = 0;
            result -= 8;
          }

          while (result != -24);
          ++v70;
        }

        while (v70 != v56);
      }
    }
  }

  else
  {
    if (*(a2 + 136) == 1)
    {
      v99 = 0uLL;
      v100 = 0uLL;
      v97 = 0uLL;
      v98 = 0uLL;
      v95 = 0uLL;
      v96 = 0uLL;
      v93 = 0uLL;
      v94 = 0uLL;
      v91 = 0uLL;
      v92 = 0uLL;
      v89 = 0uLL;
      v90 = 0uLL;
      v87 = 0uLL;
      v88 = 0uLL;
      v86 = 0uLL;
      v79 = 0uLL;
      memset(v78, 0, sizeof(v78));
      sub_2622063F0(&v86, v4, v5, v78);
      if (*&v78[0] != *v4 || *(v78 + 8) != *(v3 + 16))
      {
        v10 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v11 = sub_2621D552C(v10, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v11, " ", 1);
        v12 = MEMORY[0x277D82670];
        v13 = MEMORY[0x266727260](MEMORY[0x277D82670], 190);
        sub_2621D552C(v13, " ", 1);
        sub_2621D552C(v13, "broadcast_assign_continue", 25);
        std::ios_base::getloc((v13 + *(*v13 - 24)));
        v14 = std::locale::use_facet(v83, MEMORY[0x277D82680]);
        (v14->__vftable[2].~facet_0)(v14, 10);
        std::locale::~locale(v83);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v12 + *(*v12 - 24)));
        v15 = std::locale::use_facet(v83, MEMORY[0x277D82680]);
        (v15->__vftable[2].~facet_0)(v15, 10);
        std::locale::~locale(v83);
        std::ostream::put();
        std::ostream::flush();
      }

      v85 = 0u;
      *&v83[0].__locale_ = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v80 = 0u;
      v16 = *(v3 + 104);
      v17 = *(v3 + 144);
      if (*(v3 + 136))
      {
        if (v16)
        {
          v18 = 0;
          v19 = *(a2 + 144);
          do
          {
            v77 = 0;
            sub_2622066E4(&v86, v83, &v77, &v80);
            *(v17 + 4 * v18) = *(v19 + 4 * v77);
            for (i = 2; i != -1; --i)
            {
              v21 = (v83[i].__locale_ + 1);
              v83[i].__locale_ = v21;
              if (v21 != *(v78 + i * 8))
              {
                break;
              }

              v83[i].__locale_ = 0;
            }

            ++v18;
          }

          while (v18 != v16);
        }
      }

      else if (v16)
      {
        v38 = 0;
        v39 = v3 + 56;
        v40 = *(a2 + 144);
        do
        {
          v77 = 0;
          sub_2622066E4(&v86, v83, &v77, &v80);
          v41 = 0;
          v42 = 0;
          do
          {
            v42 += *(v39 + v41 * 8) * v83[v41].__locale_;
            ++v41;
          }

          while (v41 != 3);
          *(v17 + 4 * v42) = *(v40 + 4 * v77);
          for (j = 2; j != -1; --j)
          {
            v44 = (v83[j].__locale_ + 1);
            v83[j].__locale_ = v44;
            if (v44 != *(v78 + j * 8))
            {
              break;
            }

            v83[j].__locale_ = 0;
          }

          ++v38;
        }

        while (v38 != v16);
      }
    }

    else
    {
      v99 = 0uLL;
      v100 = 0uLL;
      v97 = 0uLL;
      v98 = 0uLL;
      v95 = 0uLL;
      v96 = 0uLL;
      v93 = 0uLL;
      v94 = 0uLL;
      v91 = 0uLL;
      v92 = 0uLL;
      v89 = 0uLL;
      v90 = 0uLL;
      v87 = 0uLL;
      v88 = 0uLL;
      v86 = 0uLL;
      v79 = 0uLL;
      memset(v78, 0, sizeof(v78));
      sub_2622063F0(&v86, v4, v5, v78);
      if (*&v78[0] != *v4 || *(v78 + 8) != *(v3 + 16))
      {
        v22 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v23 = sub_2621D552C(v22, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v23, " ", 1);
        v24 = MEMORY[0x277D82670];
        v25 = MEMORY[0x266727260](MEMORY[0x277D82670], 239);
        sub_2621D552C(v25, " ", 1);
        sub_2621D552C(v25, "broadcast_assign_stride", 23);
        std::ios_base::getloc((v25 + *(*v25 - 24)));
        v26 = std::locale::use_facet(v83, MEMORY[0x277D82680]);
        (v26->__vftable[2].~facet_0)(v26, 10);
        std::locale::~locale(v83);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v24 + *(*v24 - 24)));
        v27 = std::locale::use_facet(v83, MEMORY[0x277D82680]);
        (v27->__vftable[2].~facet_0)(v27, 10);
        std::locale::~locale(v83);
        std::ostream::put();
        std::ostream::flush();
      }

      v85 = 0u;
      *&v83[0].__locale_ = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v80 = 0u;
      v28 = *(v3 + 104);
      v29 = *(v3 + 144);
      if (*(v3 + 136))
      {
        if (v28)
        {
          v30 = 0;
          v31 = a2 + 56;
          v32 = *(a2 + 136);
          v33 = *(a2 + 144);
          do
          {
            v77 = 0;
            sub_2622066E4(&v86, v83, &v77, &v80);
            if (v32)
            {
              v34 = v77;
            }

            else
            {
              v35 = 0;
              v34 = 0;
              do
              {
                v34 += *(v31 + v35) * *(&v80 + v35);
                v35 += 8;
              }

              while (v35 != 24);
            }

            *(v29 + 4 * v30) = *(v33 + 4 * v34);
            for (k = 2; k != -1; --k)
            {
              v37 = (v83[k].__locale_ + 1);
              v83[k].__locale_ = v37;
              if (v37 != *(v78 + k * 8))
              {
                break;
              }

              v83[k].__locale_ = 0;
            }

            ++v30;
          }

          while (v30 != v28);
        }
      }

      else if (v28)
      {
        v45 = 0;
        v46 = v3 + 56;
        v47 = a2 + 56;
        v48 = *(a2 + 136);
        v49 = *(a2 + 144);
        do
        {
          v77 = 0;
          sub_2622066E4(&v86, v83, &v77, &v80);
          v50 = 0;
          v51 = 0;
          do
          {
            v51 += *(v46 + v50 * 8) * v83[v50].__locale_;
            ++v50;
          }

          while (v50 != 3);
          if (v48)
          {
            v52 = v77;
          }

          else
          {
            v53 = 0;
            v52 = 0;
            do
            {
              v52 += *(v47 + v53) * *(&v80 + v53);
              v53 += 8;
            }

            while (v53 != 24);
          }

          *(v29 + 4 * v51) = *(v49 + 4 * v52);
          for (m = 2; m != -1; --m)
          {
            v55 = (v83[m].__locale_ + 1);
            v83[m].__locale_ = v55;
            if (v55 != *(v78 + m * 8))
            {
              break;
            }

            v83[m].__locale_ = 0;
          }

          ++v45;
        }

        while (v45 != v28);
      }
    }

    return sub_2621C57C8(&v86);
  }

  return result;
}

void sub_2622275C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::locale a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  std::locale::~locale(&a23);
  sub_2621C57C8(va);
  _Unwind_Resume(a1);
}

float sub_2622275F8(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  sub_26222AE2C(a1 + 48, a2, v7);
  v3 = 0;
  v4 = 0;
  do
  {
    v4 += *(a1 + 160 + v3) * *(v7 + v3);
    v3 += 8;
  }

  while (v3 != 24);
  if ((*(a1 + 344) & 1) == 0)
  {
    v5 = 0;
    v4 = 0;
    do
    {
      v4 += *(a1 + 264 + v5) * *(v7 + v5);
      v5 += 8;
    }

    while (v5 != 24);
  }

  return *(*(a1 + 352) + 4 * v4);
}

float sub_2622276C4(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  memset(v6, 0, sizeof(v6));
  sub_26222AE2C(a1 + 48, a2, v6);
  v3 = 0;
  v4 = 0;
  do
  {
    v4 += *(a1 + 160 + v3) * *(v6 + v3);
    v3 += 8;
  }

  while (v3 != 24);
  return *(*(a1 + 352) + 4 * v4);
}

void sub_262227760(void *a1)
{
  *a1 = &unk_2874EE808;
  v1 = a1[16];
  if (v1)
  {
    sub_2621D1B78(v1);
  }

  JUMPOUT(0x266727420);
}

void *sub_2622277CC(void *a1)
{
  *a1 = &unk_2874EE808;
  v2 = a1[16];
  if (v2)
  {
    sub_2621D1B78(v2);
  }

  return a1;
}

uint64_t sub_262227818(uint64_t a1, _OWORD *a2)
{
  *a1 = &unk_2874EE808;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 1;
  v3 = a2[1];
  v2 = a2[2];
  *(a1 + 8) = *a2;
  *(a1 + 40) = v2;
  *(a1 + 24) = v3;
  *(a1 + 56) = 1;
  v4 = *(a1 + 8);
  *(a1 + 104) = v4;
  *(a1 + 112) = 0;
  if (v4)
  {
    sub_262223DB8(&v5, (a1 + 104));
  }

  *(a1 + 137) = 1;
  return a1;
}

void sub_2622278F8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 128);
  if (v3)
  {
    sub_2621D1B78(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_262227910(uint64_t result, uint64_t a2)
{
  v3 = result;
  v118 = *MEMORY[0x277D85DE8];
  v5 = (result + 8);
  v4 = *(result + 8);
  if (v4 == *a2)
  {
    v6 = *(result + 104);
    v7 = *(result + 144);
    if (*(a2 + 288))
    {
      if (*(result + 136))
      {
        if (v6)
        {
          v8 = *(a2 + 144);
          v9 = *(a2 + 296);
          do
          {
            v10 = *v9++;
            *v7++ = v8 != v10;
            --v6;
          }

          while (v6);
        }
      }

      else if (v6)
      {
        v59 = 0;
        v60 = *(result + 56);
        v61 = *(a2 + 144);
        v62 = *(a2 + 296);
        do
        {
          v63 = *v62++;
          v7[v60 * v59] = v61 != v63;
          if (v59 + 1 == v4)
          {
            v59 = 0;
          }

          else
          {
            ++v59;
          }

          --v6;
        }

        while (v6);
      }
    }

    else if (*(result + 136))
    {
      if (v6)
      {
        v32 = 0;
        v33 = 0;
        v34 = *(a2 + 144);
        v35 = *(a2 + 296);
        do
        {
          if (*(a2 + 288))
          {
            v36 = v33;
          }

          else
          {
            v36 = *(a2 + 208) * v32;
          }

          v7[v33] = v34 != *(v35 + v36);
          if (v32 + 1 == v4)
          {
            v32 = 0;
          }

          else
          {
            ++v32;
          }

          ++v33;
        }

        while (v6 != v33);
      }
    }

    else if (v6)
    {
      v64 = 0;
      v65 = 0;
      v66 = *(result + 56);
      v67 = *(a2 + 144);
      v68 = *(a2 + 296);
      do
      {
        result = *(a2 + 208) * v64;
        if (*(a2 + 288))
        {
          v69 = v65;
        }

        else
        {
          v69 = *(a2 + 208) * v64;
        }

        v7[v66 * v64] = v67 != *(v68 + v69);
        if (v64 + 1 == v4)
        {
          v64 = 0;
        }

        else
        {
          ++v64;
        }

        ++v65;
      }

      while (v6 != v65);
    }
  }

  else
  {
    if (*(a2 + 288))
    {
      v113 = 0uLL;
      v114 = 0uLL;
      v111 = 0uLL;
      v112 = 0uLL;
      v109 = 0uLL;
      v110 = 0uLL;
      v107 = 0uLL;
      v108 = 0uLL;
      v105 = 0uLL;
      v106 = 0uLL;
      v103 = 0uLL;
      v104 = 0uLL;
      v101 = 0uLL;
      v102 = 0uLL;
      v99 = 0uLL;
      v100 = 0uLL;
      v97 = 0uLL;
      v98 = 0uLL;
      sub_262205FA8(&v100, v5, a2, &v97);
      v11 = v97;
      if (v97 != *v5)
      {
        v12 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v13 = sub_2621D552C(v12, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v13, " ", 1);
        v14 = MEMORY[0x277D82670];
        v15 = MEMORY[0x266727260](MEMORY[0x277D82670], 190);
        sub_2621D552C(v15, " ", 1);
        sub_2621D552C(v15, "broadcast_assign_continue", 25);
        std::ios_base::getloc((v15 + *(*v15 - 24)));
        v16 = std::locale::use_facet(v115, MEMORY[0x277D82680]);
        (v16->__vftable[2].~facet_0)(v16, 10);
        std::locale::~locale(v115);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v14 + *(*v14 - 24)));
        v17 = std::locale::use_facet(v115, MEMORY[0x277D82680]);
        (v17->__vftable[2].~facet_0)(v17, 10);
        std::locale::~locale(v115);
        std::ostream::put();
        std::ostream::flush();
      }

      v116 = 0u;
      v117 = 0u;
      *&v115[0].__locale_ = 0u;
      v18 = *(v3 + 104);
      v19 = *(v3 + 144);
      if (*(v3 + 136))
      {
        if (v18)
        {
          v20 = 0;
          v21 = 0;
          v23 = *(&v101 + 1);
          v22 = v102;
          v24 = (v102 - *(&v101 + 1)) >> 3;
          if (v24 <= 1)
          {
            v24 = 1;
          }

          v25 = v112;
          v26 = *(a2 + 144);
          v27 = *(a2 + 296);
          do
          {
            v115[0].__locale_ = v20;
            locale = v20;
            if (v22 != v23)
            {
              v29 = v23;
              v30 = v24;
              do
              {
                v31 = *v29++;
                v115[v31].__locale_ = 0;
                --v30;
              }

              while (v30);
              locale = v115[0].__locale_;
            }

            *(v19 + v21) = v26 != *(v27 + locale * v25);
            if ((v20 + 1) == v11)
            {
              v20 = 0;
            }

            else
            {
              v20 = (v20 + 1);
            }

            ++v21;
          }

          while (v21 != v18);
        }
      }

      else if (v18)
      {
        v70 = 0;
        v71 = 0;
        v73 = *(&v101 + 1);
        v72 = v102;
        v74 = (v102 - *(&v101 + 1)) >> 3;
        if (v74 <= 1)
        {
          v74 = 1;
        }

        v75 = v112;
        v76 = *(v3 + 56);
        v77 = *(a2 + 144);
        v78 = *(a2 + 296);
        do
        {
          v115[0].__locale_ = v70;
          v79 = v70;
          if (v72 != v73)
          {
            v80 = v73;
            v81 = v74;
            do
            {
              v82 = *v80++;
              v115[v82].__locale_ = 0;
              --v81;
            }

            while (v81);
            v79 = v115[0].__locale_;
          }

          *(v19 + v70 * v76) = v77 != *(v78 + v79 * v75);
          if ((v70 + 1) == v11)
          {
            v70 = 0;
          }

          else
          {
            v70 = (v70 + 1);
          }

          ++v71;
        }

        while (v71 != v18);
      }
    }

    else
    {
      v113 = 0uLL;
      v114 = 0uLL;
      v111 = 0uLL;
      v112 = 0uLL;
      v109 = 0uLL;
      v110 = 0uLL;
      v107 = 0uLL;
      v108 = 0uLL;
      v105 = 0uLL;
      v106 = 0uLL;
      v103 = 0uLL;
      v104 = 0uLL;
      v101 = 0uLL;
      v102 = 0uLL;
      v99 = 0uLL;
      v100 = 0uLL;
      v97 = 0uLL;
      v98 = 0uLL;
      sub_262205FA8(&v100, v5, a2, &v97);
      v37 = v97;
      if (v97 != *v5)
      {
        v38 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v39 = sub_2621D552C(v38, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v39, " ", 1);
        v40 = MEMORY[0x277D82670];
        v41 = MEMORY[0x266727260](MEMORY[0x277D82670], 239);
        sub_2621D552C(v41, " ", 1);
        sub_2621D552C(v41, "broadcast_assign_stride", 23);
        std::ios_base::getloc((v41 + *(*v41 - 24)));
        v42 = std::locale::use_facet(v115, MEMORY[0x277D82680]);
        (v42->__vftable[2].~facet_0)(v42, 10);
        std::locale::~locale(v115);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v40 + *(*v40 - 24)));
        v43 = std::locale::use_facet(v115, MEMORY[0x277D82680]);
        (v43->__vftable[2].~facet_0)(v43, 10);
        std::locale::~locale(v115);
        std::ostream::put();
        std::ostream::flush();
      }

      v116 = 0u;
      v117 = 0u;
      *&v115[0].__locale_ = 0u;
      v44 = *(v3 + 104);
      v45 = *(v3 + 144);
      if (*(v3 + 136))
      {
        if (v44)
        {
          v46 = 0;
          v47 = 0;
          v49 = *(&v101 + 1);
          v48 = v102;
          v50 = (v102 - *(&v101 + 1)) >> 3;
          if (v50 <= 1)
          {
            v50 = 1;
          }

          v51 = v112;
          v52 = *(a2 + 144);
          v53 = *(a2 + 296);
          do
          {
            v115[0].__locale_ = v46;
            v54 = v46;
            if (v48 != v49)
            {
              v55 = v49;
              v56 = v50;
              do
              {
                v57 = *v55++;
                v115[v57].__locale_ = 0;
                --v56;
              }

              while (v56);
              v54 = v115[0].__locale_;
            }

            if (*(a2 + 288))
            {
              v58 = v51;
            }

            else
            {
              v58 = *(a2 + 208);
            }

            *(v45 + v47) = v52 != *(v53 + v58 * v54);
            if ((v46 + 1) == v37)
            {
              v46 = 0;
            }

            else
            {
              v46 = (v46 + 1);
            }

            ++v47;
          }

          while (v47 != v44);
        }
      }

      else if (v44)
      {
        v83 = 0;
        v84 = 0;
        v86 = *(&v101 + 1);
        v85 = v102;
        v87 = (v102 - *(&v101 + 1)) >> 3;
        if (v87 <= 1)
        {
          v87 = 1;
        }

        v88 = v112;
        v89 = *(v3 + 56);
        v90 = *(a2 + 144);
        v91 = *(a2 + 296);
        do
        {
          v115[0].__locale_ = v83;
          v92 = v83;
          if (v85 != v86)
          {
            v93 = v86;
            v94 = v87;
            do
            {
              v95 = *v93++;
              v115[v95].__locale_ = 0;
              --v94;
            }

            while (v94);
            v92 = v115[0].__locale_;
          }

          if (*(a2 + 288))
          {
            v96 = v88;
          }

          else
          {
            v96 = *(a2 + 208);
          }

          *(v45 + v83 * v89) = v90 != *(v91 + v96 * v92);
          if ((v83 + 1) == v37)
          {
            v83 = 0;
          }

          else
          {
            v83 = (v83 + 1);
          }

          ++v84;
        }

        while (v84 != v44);
      }
    }

    return sub_2621C57C8(&v100);
  }

  return result;
}

void sub_2622280FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::locale::~locale((v13 - 128));
  sub_2621C57C8(va);
  _Unwind_Resume(a1);
}

void sub_262228130(void *a1)
{
  *a1 = &unk_2874EE7E8;
  v1 = a1[16];
  if (v1)
  {
    sub_2621D1B78(v1);
  }

  JUMPOUT(0x266727420);
}

void *sub_26222819C(void *a1)
{
  *a1 = &unk_2874EE7E8;
  v2 = a1[16];
  if (v2)
  {
    sub_2621D1B78(v2);
  }

  return a1;
}

uint64_t sub_2622281E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  sub_262223F30(a1 + 128, a2);
  sub_262229664((a1 + 48), a3);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *a1 = *(a2 + 8 + 8 * v6);
  *(a1 + 8) = *(a2 + 8 + 8 * v7);
  *(a1 + 64 + 8 * v6) = 0;
  *(a1 + 64 + 8 * *(a1 + 56)) = 1;
  *(a1 + 80) = 1;
  *(a1 + 80) = *(a2 + 16);
  *(a1 + 88) = 1;
  return a1;
}

void sub_262228280(_Unwind_Exception *exception_object)
{
  *(v1 + 128) = &unk_2874EF0B8;
  v3 = *(v1 + 256);
  if (v3)
  {
    sub_2621D1B78(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2622282B4(uint64_t a1, __int128 *a2)
{
  *a1 = &unk_2874EF0B8;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 128) = 0;
  v3 = a2[1];
  v2 = a2[2];
  *(a1 + 8) = *a2;
  *(a1 + 40) = v2;
  *(a1 + 24) = v3;
  v4 = *(a1 + 16);
  *(a1 + 56) = v4;
  *(a1 + 64) = 1;
  *(a1 + 104) = *(a1 + 8) * v4;
  *(a1 + 112) = 0;
  sub_262224B84(v5, (a1 + 104));
}

void sub_262228628(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25)
{
  if (a25)
  {
    sub_2621D1B78(a25);
  }

  v27 = *(v25 + 128);
  if (v27)
  {
    sub_2621D1B78(v27);
  }

  _Unwind_Resume(exception_object);
}

_OWORD *sub_262228688(_OWORD *__b, char **a2)
{
  __b[1] = 0u;
  __b[2] = 0u;
  *__b = 0u;
  v4 = *a2;
  v5 = a2[1];
  if (*a2 == v5)
  {
    v6 = MEMORY[0x277D82670];
    v7 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v8 = sub_2621D552C(v7, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/../common/../tensor/shape.hpp", 118);
    v9 = sub_2621D552C(v8, " ", 1);
    v10 = MEMORY[0x266727260](v9, 89);
    v11 = sub_2621D552C(v10, " ", 1);
    v12 = sub_2621D552C(v11, "Shape", 5);
    std::ios_base::getloc((v12 + *(*v12 - 24)));
    v13 = std::locale::use_facet(&v31, MEMORY[0x277D82680]);
    (v13->__vftable[2].~facet_0)(v13, 10);
    std::locale::~locale(&v31);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D72FC("err", "size of input shape vector is 0");
    std::ios_base::getloc((v6 + *(*v6 - 24)));
    v14 = std::locale::use_facet(&v31, MEMORY[0x277D82680]);
    (v14->__vftable[2].~facet_0)(v14, 10);
    std::locale::~locale(&v31);
    std::ostream::put();
    std::ostream::flush();
    v4 = *a2;
    v5 = a2[1];
  }

  v15 = v5 - v4;
  if ((v5 - v4) >= 9)
  {
    v16 = MEMORY[0x277D82670];
    v17 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v18 = sub_2621D552C(v17, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/../common/../tensor/shape.hpp", 118);
    v19 = sub_2621D552C(v18, " ", 1);
    v20 = MEMORY[0x266727260](v19, 90);
    v21 = sub_2621D552C(v20, " ", 1);
    v22 = sub_2621D552C(v21, "Shape", 5);
    std::ios_base::getloc((v22 + *(*v22 - 24)));
    v23 = std::locale::use_facet(&v31, MEMORY[0x277D82680]);
    (v23->__vftable[2].~facet_0)(v23, 10);
    std::locale::~locale(&v31);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D7408("err", "size of input shape vector > current dim");
    std::ios_base::getloc((v16 + *(*v16 - 24)));
    v24 = std::locale::use_facet(&v31, MEMORY[0x277D82680]);
    (v24->__vftable[2].~facet_0)(v24, 10);
    std::locale::~locale(&v31);
    std::ostream::put();
    std::ostream::flush();
    v4 = *a2;
    v5 = a2[1];
    v15 = v5 - *a2;
  }

  v25 = v15 >> 3;
  if (v15 == 8)
  {
    v26 = 0;
  }

  else
  {
    if (v25 != 0 && v25 != 1)
    {
      v26 = 1 - v25;
    }

    else
    {
      v26 = 1;
    }

    memset_pattern16(__b, &unk_2623A7E50, 8 * v26);
  }

  if (v5 != v4)
  {
    if (v25 <= 1)
    {
      v27 = 1;
    }

    else
    {
      v27 = v25;
    }

    v28 = __b + v26;
    do
    {
      v29 = *v4;
      v4 += 8;
      *v28++ = v29;
      --v27;
    }

    while (v27);
  }

  return __b;
}

uint64_t sub_262228A5C(uint64_t a1, _OWORD *a2)
{
  *a1 = &unk_2874EE7E8;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 1;
  v3 = a2[1];
  v2 = a2[2];
  *(a1 + 8) = *a2;
  *(a1 + 40) = v2;
  *(a1 + 24) = v3;
  *(a1 + 56) = 1;
  v4 = *(a1 + 8);
  *(a1 + 104) = v4;
  *(a1 + 112) = 0;
  if (v4)
  {
    sub_262223B08(&v5, (a1 + 104));
  }

  *(a1 + 137) = 1;
  return a1;
}

void sub_262228B3C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 128);
  if (v3)
  {
    sub_2621D1B78(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_262228B54(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v164 = *MEMORY[0x277D85DE8];
  v5 = (a1 + 8);
  v6 = 1;
  do
  {
    v7 = *(v5 + v4);
    v8 = *(a2 + 8 * v4);
    if ((v6 & 1) == 0)
    {
      break;
    }

    v6 = 0;
    v4 = 1;
  }

  while (v7 == v8);
  if (v7 == v8)
  {
    if (*(a2 + 264))
    {
      v150 = 0uLL;
      v151 = 0uLL;
      v149 = 0uLL;
      v9 = *(a1 + 104);
      v10 = *(a1 + 144);
      if (*(a1 + 136))
      {
        if (v9)
        {
          v11 = 0;
          v12 = *(a2 + 272);
          do
          {
            v13 = 0;
            v14 = 0;
            v15 = &v140;
            v16 = 1;
            do
            {
              v17 = v16;
              v18 = *(&v149 + *(a2 + 64 + 8 * v14));
              v15->__locale_ = v18;
              v13 += *(a2 + 80 + 8 * v14) * v18;
              v15 = v146;
              v14 = 1;
              v16 = 0;
            }

            while ((v17 & 1) != 0);
            v19 = 0;
            *(v10 + 4 * v11) = *(v12 + 4 * v13);
            do
            {
              v20 = *(&v149 + v19 + 8) + 1;
              *(&v149 + v19 + 8) = v20;
              if (v20 != *(a1 + 16 + v19))
              {
                break;
              }

              *(&v149 + v19 + 8) = 0;
              v19 -= 8;
            }

            while (v19 != -16);
            ++v11;
          }

          while (v11 != v9);
        }
      }

      else if (v9)
      {
        v79 = 0;
        v80 = *(a1 + 56);
        v81 = *(a1 + 64);
        v82 = *(a2 + 272);
        do
        {
          v83 = 0;
          v84 = 0;
          v85 = v149;
          v86 = v81 * *(&v149 + 1);
          v87 = &v140;
          v88 = 1;
          do
          {
            v89 = v88;
            v90 = *(&v149 + *(a2 + 64 + 8 * v84));
            v87->__locale_ = v90;
            v83 += *(a2 + 80 + 8 * v84) * v90;
            v87 = v146;
            v84 = 1;
            v88 = 0;
          }

          while ((v89 & 1) != 0);
          v91 = 0;
          *(v10 + 4 * v86 + 4 * v80 * v85) = *(v82 + 4 * v83);
          do
          {
            v92 = *(&v149 + v91 + 8) + 1;
            *(&v149 + v91 + 8) = v92;
            if (v92 != *(a1 + 16 + v91))
            {
              break;
            }

            *(&v149 + v91 + 8) = 0;
            v91 -= 8;
          }

          while (v91 != -16);
          ++v79;
        }

        while (v79 != v9);
      }
    }

    else
    {
      v150 = 0uLL;
      v151 = 0uLL;
      v149 = 0uLL;
      v50 = *(a1 + 104);
      v51 = *(a1 + 144);
      if (*(a1 + 136))
      {
        if (v50)
        {
          v52 = 0;
          v53 = a1 + 16;
          do
          {
            v54 = sub_2622295E0(a2, &v149);
            v55 = 0;
            *(v51 + 4 * v52) = v54;
            do
            {
              v56 = *(&v149 + v55 + 8) + 1;
              *(&v149 + v55 + 8) = v56;
              if (v56 != *(v53 + v55))
              {
                break;
              }

              *(&v149 + v55 + 8) = 0;
              v55 -= 8;
            }

            while (v55 != -16);
            ++v52;
          }

          while (v52 != v50);
        }
      }

      else if (v50)
      {
        v93 = 0;
        v94 = *(a1 + 56);
        v95 = *(a1 + 64);
        v96 = a1 + 16;
        do
        {
          v97 = v94 * v149;
          v98 = v51 + 4 * v95 * *(&v149 + 1);
          v99 = sub_2622295E0(a2, &v149);
          v100 = 0;
          *(v98 + 4 * v97) = v99;
          do
          {
            v101 = *(&v149 + v100 + 8) + 1;
            *(&v149 + v100 + 8) = v101;
            if (v101 != *(v96 + v100))
            {
              break;
            }

            *(&v149 + v100 + 8) = 0;
            v100 -= 8;
          }

          while (v100 != -16);
          ++v93;
        }

        while (v93 != v50);
      }
    }
  }

  else
  {
    if (*(a2 + 264))
    {
      v162 = 0uLL;
      v163 = 0uLL;
      v160 = 0uLL;
      v161 = 0uLL;
      v158 = 0uLL;
      v159 = 0uLL;
      v156 = 0uLL;
      v157 = 0uLL;
      v154 = 0uLL;
      v155 = 0uLL;
      v152 = 0uLL;
      v153 = 0uLL;
      v150 = 0uLL;
      v151 = 0uLL;
      v149 = 0uLL;
      v141 = 0uLL;
      v142 = 0uLL;
      v140 = 0uLL;
      sub_2621D96E4(&v149, v5, a2, &v140);
      v21 = 0;
      v22 = &v140;
      v23 = 1;
      do
      {
        v24 = *v22;
        v25 = *(v5 + v21);
        if ((v23 & 1) == 0)
        {
          break;
        }

        v23 = 0;
        v22 = &v140 + 1;
        v21 = 1;
      }

      while (v24 == v25);
      if (v24 != v25)
      {
        v26 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v27 = sub_2621D552C(v26, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v27, " ", 1);
        v28 = MEMORY[0x277D82670];
        v29 = MEMORY[0x266727260](MEMORY[0x277D82670], 190);
        sub_2621D552C(v29, " ", 1);
        sub_2621D552C(v29, "broadcast_assign_continue", 25);
        std::ios_base::getloc((v29 + *(*v29 - 24)));
        v30 = std::locale::use_facet(v146, MEMORY[0x277D82680]);
        (v30->__vftable[2].~facet_0)(v30, 10);
        std::locale::~locale(v146);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v28 + *(*v28 - 24)));
        v31 = std::locale::use_facet(v146, MEMORY[0x277D82680]);
        (v31->__vftable[2].~facet_0)(v31, 10);
        std::locale::~locale(v146);
        std::ostream::put();
        std::ostream::flush();
      }

      v147 = 0u;
      v148 = 0u;
      v145 = 0u;
      *&v146[0].__locale_ = 0u;
      v143 = 0u;
      v144 = 0u;
      v32 = *(a1 + 104);
      v33 = *(a1 + 144);
      if (*(a1 + 136))
      {
        if (v32)
        {
          v34 = 0;
          v36 = *(&v150 + 1);
          v35 = v151;
          v37 = (v151 - *(&v150 + 1)) >> 3;
          if (v37 <= 1)
          {
            v37 = 1;
          }

          v38 = *(a2 + 272);
          do
          {
            v143 = *&v146[0].__locale_;
            v39 = v36;
            v40 = v37;
            if (v35 != v36)
            {
              do
              {
                v41 = *v39++;
                *(&v143 + v41) = 0;
                --v40;
              }

              while (v40);
            }

            v42 = 0;
            v43 = 0;
            v44 = &v139;
            v45 = 1;
            do
            {
              v46 = v45;
              v47 = *(&v143 + *(a2 + 64 + 8 * v43));
              *v44 = v47;
              v42 += *(a2 + 80 + 8 * v43) * v47;
              v44 = &v138;
              v43 = 1;
              v45 = 0;
            }

            while ((v46 & 1) != 0);
            *(v33 + 4 * v34) = *(v38 + 4 * v42);
            for (i = 1; i != -1; --i)
            {
              v49 = (v146[i].__locale_ + 1);
              v146[i].__locale_ = v49;
              if (v49 != *(&v140 + i * 8))
              {
                break;
              }

              v146[i].__locale_ = 0;
            }

            ++v34;
          }

          while (v34 != v32);
        }
      }

      else if (v32)
      {
        v102 = 0;
        v104 = *(&v150 + 1);
        v103 = v151;
        v105 = (v151 - *(&v150 + 1)) >> 3;
        if (v105 <= 1)
        {
          v105 = 1;
        }

        v106 = *(a1 + 56);
        v107 = *(a1 + 64);
        v108 = a2 + 64;
        v109 = a2 + 80;
        v110 = *(a2 + 272);
        do
        {
          locale = v146[0].__locale_;
          v112 = v146[1].__locale_;
          v143 = *&v146[0].__locale_;
          v113 = v104;
          v114 = v105;
          if (v103 != v104)
          {
            do
            {
              v115 = *v113++;
              *(&v143 + v115) = 0;
              --v114;
            }

            while (v114);
          }

          v116 = 0;
          v117 = 0;
          v118 = &v139;
          v119 = 1;
          do
          {
            v120 = v119;
            v121 = *(&v143 + *(v108 + 8 * v117));
            *v118 = v121;
            v116 += *(v109 + 8 * v117) * v121;
            v118 = &v138;
            v117 = 1;
            v119 = 0;
          }

          while ((v120 & 1) != 0);
          *(v33 + 4 * v112 * v107 + 4 * locale * v106) = *(v110 + 4 * v116);
          for (j = 1; j != -1; --j)
          {
            v123 = (v146[j].__locale_ + 1);
            v146[j].__locale_ = v123;
            if (v123 != *(&v140 + j * 8))
            {
              break;
            }

            v146[j].__locale_ = 0;
          }

          ++v102;
        }

        while (v102 != v32);
      }
    }

    else
    {
      v162 = 0uLL;
      v163 = 0uLL;
      v160 = 0uLL;
      v161 = 0uLL;
      v158 = 0uLL;
      v159 = 0uLL;
      v156 = 0uLL;
      v157 = 0uLL;
      v154 = 0uLL;
      v155 = 0uLL;
      v152 = 0uLL;
      v153 = 0uLL;
      v150 = 0uLL;
      v151 = 0uLL;
      v149 = 0uLL;
      v141 = 0uLL;
      v142 = 0uLL;
      v140 = 0uLL;
      sub_2621D96E4(&v149, v5, a2, &v140);
      v57 = 0;
      v58 = &v140;
      v59 = 1;
      do
      {
        v60 = *v58;
        v61 = *(v5 + v57);
        if ((v59 & 1) == 0)
        {
          break;
        }

        v59 = 0;
        v58 = &v140 + 1;
        v57 = 1;
      }

      while (v60 == v61);
      if (v60 != v61)
      {
        v62 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v63 = sub_2621D552C(v62, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v63, " ", 1);
        v64 = MEMORY[0x277D82670];
        v65 = MEMORY[0x266727260](MEMORY[0x277D82670], 239);
        sub_2621D552C(v65, " ", 1);
        sub_2621D552C(v65, "broadcast_assign_stride", 23);
        std::ios_base::getloc((v65 + *(*v65 - 24)));
        v66 = std::locale::use_facet(v146, MEMORY[0x277D82680]);
        (v66->__vftable[2].~facet_0)(v66, 10);
        std::locale::~locale(v146);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v64 + *(*v64 - 24)));
        v67 = std::locale::use_facet(v146, MEMORY[0x277D82680]);
        (v67->__vftable[2].~facet_0)(v67, 10);
        std::locale::~locale(v146);
        std::ostream::put();
        std::ostream::flush();
      }

      v147 = 0u;
      v148 = 0u;
      v145 = 0u;
      *&v146[0].__locale_ = 0u;
      v143 = 0u;
      v144 = 0u;
      v68 = *(a1 + 104);
      v69 = *(a1 + 144);
      if (*(a1 + 136))
      {
        if (v68)
        {
          v70 = 0;
          v72 = *(&v150 + 1);
          v71 = v151;
          if (((v151 - *(&v150 + 1)) >> 3) <= 1)
          {
            v73 = 1;
          }

          else
          {
            v73 = (v151 - *(&v150 + 1)) >> 3;
          }

          do
          {
            v143 = *&v146[0].__locale_;
            if (v71 != v72)
            {
              v74 = v72;
              v75 = v73;
              do
              {
                v76 = *v74++;
                *(&v143 + v76) = 0;
                --v75;
              }

              while (v75);
            }

            *(v69 + 4 * v70) = sub_2622295E0(a2, &v143);
            for (k = 1; k != -1; --k)
            {
              v78 = (v146[k].__locale_ + 1);
              v146[k].__locale_ = v78;
              if (v78 != *(&v140 + k * 8))
              {
                break;
              }

              v146[k].__locale_ = 0;
            }

            ++v70;
          }

          while (v70 != v68);
        }
      }

      else if (v68)
      {
        v124 = 0;
        v125 = *(&v150 + 1);
        v137 = v151;
        if (((v151 - *(&v150 + 1)) >> 3) <= 1)
        {
          v126 = 1;
        }

        else
        {
          v126 = (v151 - *(&v150 + 1)) >> 3;
        }

        v136 = *(a1 + 64);
        v134 = v126;
        v135 = *(a1 + 56);
        do
        {
          v128 = v146[0].__locale_;
          v127 = v146[1].__locale_;
          v143 = *&v146[0].__locale_;
          if (v137 != v125)
          {
            v129 = v125;
            v130 = v134;
            do
            {
              v131 = *v129++;
              *(&v143 + v131) = 0;
              --v130;
            }

            while (v130);
          }

          *(v69 + 4 * v136 * v127 + 4 * v135 * v128) = sub_2622295E0(a2, &v143);
          for (m = 1; m != -1; --m)
          {
            v133 = (v146[m].__locale_ + 1);
            v146[m].__locale_ = v133;
            if (v133 != *(&v140 + m * 8))
            {
              break;
            }

            v146[m].__locale_ = 0;
          }

          ++v124;
        }

        while (v124 != v68);
      }
    }

    sub_2621C57C8(&v149);
  }
}

void sub_2622295AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, std::locale a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  std::locale::~locale(&a27);
  sub_2621C57C8(va);
  _Unwind_Resume(a1);
}

float sub_2622295E0(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = 0;
  v4 = &v11;
  v5 = 1;
  do
  {
    v6 = v5;
    v7 = *(a2 + 8 * *(a1 + 64 + 8 * v3));
    *v4 = v7;
    v2 += *(a1 + 80 + 8 * v3) * v7;
    v4 = &v10;
    v3 = 1;
    v5 = 0;
  }

  while ((v6 & 1) != 0);
  if (*(a1 + 264) == 1)
  {
    v8 = *(a1 + 272);
  }

  else
  {
    v2 = *(a1 + 184) * v11;
    v8 = *(a1 + 272) + 4 * *(a1 + 192) * v10;
  }

  return *(v8 + 4 * v2);
}

void sub_262229664(void *a1, uint64_t a2)
{
  v3 = 0;
  v39 = 0;
  v40 = 0;
  v4 = 1;
  v41 = 0;
  v5 = MEMORY[0x277D82670];
  v6 = MEMORY[0x277D82680];
  do
  {
    v7 = v4;
    v8 = *(a2 + 4 * v3);
    v38 = v8;
    if (v8 >= 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = -v8;
    }

    if (v9 >= 2)
    {
      sub_2621D552C(v5, "runtime_err in ", 15);
      sub_2621D552C(v5, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/../common/transpose_helper.hpp", 119);
      sub_2621D552C(v5, " ", 1);
      v10 = MEMORY[0x266727260](v5, 57);
      sub_2621D552C(v10, " ", 1);
      sub_2621D552C(v10, "init", 4);
      std::ios_base::getloc((v10 + *(*v10 - 24)));
      v11 = std::locale::use_facet(&v42, v6);
      (v11->__vftable[2].~facet_0)(v11, 10);
      std::locale::~locale(&v42);
      std::ostream::put();
      std::ostream::flush();
      sub_262229DB0("err", "the absolute value of axis should be less than dim");
      std::ios_base::getloc((v5 + *(*v5 - 24)));
      v12 = std::locale::use_facet(&v42, v6);
      (v12->__vftable[2].~facet_0)(v12, 10);
      std::locale::~locale(&v42);
      std::ostream::put();
      std::ostream::flush();
    }

    if (v8 < 0)
    {
      v8 += 2;
      v38 = v8;
    }

    if (v8 >= 2)
    {
      sub_2621D552C(v5, "runtime_err in ", 15);
      sub_2621D552C(v5, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/../common/transpose_helper.hpp", 119);
      sub_2621D552C(v5, " ", 1);
      v13 = MEMORY[0x266727260](v5, 61);
      sub_2621D552C(v13, " ", 1);
      sub_2621D552C(v13, "init", 4);
      std::ios_base::getloc((v13 + *(*v13 - 24)));
      v14 = std::locale::use_facet(&v42, v6);
      (v14->__vftable[2].~facet_0)(v14, 10);
      std::locale::~locale(&v42);
      std::ostream::put();
      std::ostream::flush();
      sub_262201E08("err", &v38);
      std::ios_base::getloc((v5 + *(*v5 - 24)));
      v15 = std::locale::use_facet(&v42, v6);
      (v15->__vftable[2].~facet_0)(v15, 10);
      std::locale::~locale(&v42);
      std::ostream::put();
      std::ostream::flush();
      if (v8 < 0)
      {
        sub_2621D552C(v5, "runtime_err in ", 15);
        sub_2621D552C(v5, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/../common/transpose_helper.hpp", 119);
        sub_2621D552C(v5, " ", 1);
        v16 = MEMORY[0x266727260](v5, 62);
        sub_2621D552C(v16, " ", 1);
        sub_2621D552C(v16, "init", 4);
        std::ios_base::getloc((v16 + *(*v16 - 24)));
        v17 = std::locale::use_facet(&v42, v6);
        (v17->__vftable[2].~facet_0)(v17, 10);
        std::locale::~locale(&v42);
        std::ostream::put();
        std::ostream::flush();
        sub_262201E08("err", &v38);
        std::ios_base::getloc((v5 + *(*v5 - 24)));
        v18 = std::locale::use_facet(&v42, v6);
        (v18->__vftable[2].~facet_0)(v18, 10);
        std::locale::~locale(&v42);
        std::ostream::put();
        std::ostream::flush();
      }
    }

    v42.__locale_ = v8;
    sub_2621C9004(&v39, &v42);
    v4 = 0;
    v3 = 1;
  }

  while ((v7 & 1) != 0);
  v19 = v39;
  if (v40 != v39)
  {
    v20 = 0;
    v21 = 0;
    v22 = v40 - v39;
    v23 = v22 - 1;
    if (v22 <= 1)
    {
      v24 = 1;
    }

    else
    {
      v24 = v40 - v39;
    }

    v25 = v39 + 1;
    do
    {
      v26 = v20 + 1;
      if (v20 + 1 < v22)
      {
        v27 = v39[v20];
        v28 = v25;
        v29 = v23;
        do
        {
          v30 = *v28++;
          v21 |= v27 == v30;
          --v29;
        }

        while (v29);
      }

      --v23;
      ++v25;
      v20 = v26;
    }

    while (v26 != v24);
    if (v21)
    {
      v31 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
      v32 = sub_2621D552C(v31, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/../common/transpose_helper.hpp", 119);
      sub_2621D552C(v32, " ", 1);
      v33 = MEMORY[0x277D82670];
      v34 = MEMORY[0x266727260](MEMORY[0x277D82670], 73);
      sub_2621D552C(v34, " ", 1);
      sub_2621D552C(v34, "init", 4);
      std::ios_base::getloc((v34 + *(*v34 - 24)));
      v35 = std::locale::use_facet(&v42, MEMORY[0x277D82680]);
      (v35->__vftable[2].~facet_0)(v35, 10);
      std::locale::~locale(&v42);
      std::ostream::put();
      std::ostream::flush();
      sub_2621D6A8C("err", "duplicate dim idx");
      std::ios_base::getloc((v33 + *(*v33 - 24)));
      v36 = std::locale::use_facet(&v42, MEMORY[0x277D82680]);
      (v36->__vftable[2].~facet_0)(v36, 10);
      std::locale::~locale(&v42);
      std::ostream::put();
      std::ostream::flush();
    }
  }

  *a1 = *v19;
  a1[1] = v19[1];
  operator delete(v19);
}

void sub_262229D50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::locale a14)
{
  std::locale::~locale(&a14);
  if (v14)
  {
    operator delete(v14);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_262229DB0(const char *a1, const char *a2)
{
  v4 = strlen(a1);
  v5 = MEMORY[0x277D82670];
  v6 = sub_2621D552C(MEMORY[0x277D82670], a1, v4);
  sub_2621D552C(v6, " ", 1);
  v7 = strlen(a2);
  sub_2621D552C(v5, a2, v7);
  std::ios_base::getloc((v5 + *(*v5 - 24)));
  v8 = std::locale::use_facet(&v10, MEMORY[0x277D82680]);
  (v8->__vftable[2].~facet_0)(v8, 10);
  std::locale::~locale(&v10);
  std::ostream::put();
  return std::ostream::flush();
}

void sub_262229EBC(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 19;
      v7 = v4 - 19;
      v8 = v4 - 19;
      do
      {
        v9 = *v8;
        v8 -= 19;
        (*v9)(v7);
        v6 -= 19;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_262229F7C(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2874EF6A8;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  v4 = *(a2 + 8);
  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = v5;
  *(a1 + 8) = v4;
  v6 = *(a2 + 56);
  v7 = *(a2 + 72);
  v8 = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = v8;
  *(a1 + 72) = v7;
  *(a1 + 56) = v6;
  v9 = *(a2 + 120);
  v10 = *(a2 + 128);
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    v11 = *(a1 + 128);
    *(a1 + 120) = v9;
    *(a1 + 128) = v10;
    if (v11)
    {
      sub_2621D1B78(v11);
    }
  }

  else
  {
    *(a1 + 120) = v9;
    *(a1 + 128) = 0;
  }

  *(a1 + 144) = *(a2 + 144);
  *(a1 + 136) = *(a2 + 136);
  return a1;
}

void sub_26222A054(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v6 = 0x86BCA1AF286BCA1BLL * ((v3 - *a1) >> 3);
    if (v6 + 1 > 0x1AF286BCA1AF286)
    {
      sub_2621CBEB0();
    }

    v7 = 0x86BCA1AF286BCA1BLL * ((v4 - *a1) >> 3);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + 1)
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0xD79435E50D7943)
    {
      v9 = 0x1AF286BCA1AF286;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      if (v9 <= 0x1AF286BCA1AF286)
      {
        operator new();
      }

      sub_2621C6A34();
    }

    v10 = 8 * ((v3 - *a1) >> 3);
    sub_262221A98(v10, a2);
    v5 = v10 + 152;
    v21 = (v10 + 152);
    v11 = *a1;
    v12 = a1[1];
    v13 = v10 + *a1 - v12;
    if (v12 != *a1)
    {
      v14 = *a1;
      v15 = v13;
      do
      {
        v16 = sub_262221A98(v15, v14);
        v14 += 152;
        v15 = v16 + 152;
      }

      while (v14 != v12);
      v17 = v11;
      v18 = v11;
      do
      {
        v19 = *v18;
        v18 += 19;
        (*v19)(v11);
        v17 += 19;
        v11 = v18;
      }

      while (v18 != v12);
    }

    v20 = *a1;
    *a1 = v13;
    *(a1 + 1) = v21;
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    v5 = sub_262221A98(v3, a2) + 152;
  }

  a1[1] = v5;
}

void sub_26222A214(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v160 = *MEMORY[0x277D85DE8];
  v5 = (a1 + 8);
  v6 = 1;
  do
  {
    v7 = *(v5 + v4);
    v8 = *(a2 + 8 * v4);
    if ((v6 & 1) == 0)
    {
      break;
    }

    v6 = 0;
    v4 = 1;
  }

  while (v7 == v8);
  if (v7 == v8)
  {
    if (*(a2 + 344))
    {
      v143 = 0uLL;
      v144 = 0uLL;
      *&v142[0].__locale_ = 0uLL;
      v9 = *(a1 + 104);
      v132 = *(a1 + 144);
      if (*(a1 + 136))
      {
        if (v9)
        {
          v10 = 0;
          v11 = *(a2 + 352);
          v12 = a1 + 16;
          do
          {
            v146 = 0u;
            v147 = 0u;
            v145 = 0u;
            v13 = &v145;
            sub_26222AE2C(a2 + 48, v142, &v145);
            v14 = 0;
            v15 = 0;
            v16 = 1;
            do
            {
              v17 = v16;
              v15 += *(a2 + 160 + 8 * v14) * *v13;
              v13 = (&v145 + 8);
              v14 = 1;
              v16 = 0;
            }

            while ((v17 & 1) != 0);
            v18 = 0;
            *(v132 + 4 * v10) = *(v11 + 4 * v15);
            do
            {
              v19 = (v142[v18 + 1].__locale_ + 1);
              v142[v18 + 1].__locale_ = v19;
              if (v19 != *(v12 + v18 * 8))
              {
                break;
              }

              v142[v18-- + 1].__locale_ = 0;
            }

            while (v18 != -2);
            ++v10;
          }

          while (v10 != v9);
        }
      }

      else if (v9)
      {
        v74 = 0;
        v126 = *(a1 + 64);
        v130 = *(a1 + 56);
        v122 = *(a2 + 352);
        v75 = a1 + 16;
        do
        {
          locale = v142[0].__locale_;
          v77 = v126 * v142[1].__locale_;
          v146 = 0u;
          v147 = 0u;
          v145 = 0u;
          v78 = &v145;
          sub_26222AE2C(a2 + 48, v142, &v145);
          v79 = 0;
          v80 = 0;
          v81 = 1;
          do
          {
            v82 = v81;
            v80 += *(a2 + 160 + 8 * v79) * *v78;
            v78 = (&v145 + 8);
            v79 = 1;
            v81 = 0;
          }

          while ((v82 & 1) != 0);
          v83 = 0;
          *(v132 + 4 * v77 + 4 * v130 * locale) = *(v122 + 4 * v80);
          do
          {
            v84 = (v142[v83 + 1].__locale_ + 1);
            v142[v83 + 1].__locale_ = v84;
            if (v84 != *(v75 + v83 * 8))
            {
              break;
            }

            v142[v83-- + 1].__locale_ = 0;
          }

          while (v83 != -2);
          ++v74;
        }

        while (v74 != v9);
      }
    }

    else
    {
      v146 = 0uLL;
      v147 = 0uLL;
      v145 = 0uLL;
      v46 = *(a1 + 104);
      v47 = *(a1 + 144);
      if (*(a1 + 136))
      {
        if (v46)
        {
          for (i = 0; i != v46; ++i)
          {
            v49 = sub_26222AD54(a2, &v145);
            v50 = 0;
            *(v47 + 4 * i) = v49;
            do
            {
              v51 = *(&v145 + v50 + 8) + 1;
              *(&v145 + v50 + 8) = v51;
              if (v51 != *(a1 + 16 + v50))
              {
                break;
              }

              *(&v145 + v50 + 8) = 0;
              v50 -= 8;
            }

            while (v50 != -16);
          }
        }
      }

      else if (v46)
      {
        v85 = 0;
        v86 = *(a1 + 56);
        v87 = *(a1 + 64);
        v88 = a1 + 16;
        do
        {
          v89 = v86 * v145;
          v90 = v47 + 4 * v87 * *(&v145 + 1);
          v91 = sub_26222AD54(a2, &v145);
          v92 = 0;
          *(v90 + 4 * v89) = v91;
          do
          {
            v93 = *(&v145 + v92 + 8) + 1;
            *(&v145 + v92 + 8) = v93;
            if (v93 != *(v88 + v92))
            {
              break;
            }

            *(&v145 + v92 + 8) = 0;
            v92 -= 8;
          }

          while (v92 != -16);
          ++v85;
        }

        while (v85 != v46);
      }
    }
  }

  else
  {
    if (*(a2 + 344))
    {
      v158 = 0uLL;
      v159 = 0uLL;
      v156 = 0uLL;
      v157 = 0uLL;
      v154 = 0uLL;
      v155 = 0uLL;
      v152 = 0uLL;
      v153 = 0uLL;
      v150 = 0uLL;
      v151 = 0uLL;
      v148 = 0uLL;
      v149 = 0uLL;
      v146 = 0uLL;
      v147 = 0uLL;
      v145 = 0uLL;
      v140 = 0uLL;
      v141 = 0uLL;
      *&v139[0].__locale_ = 0uLL;
      sub_2621D96E4(&v145, v5, a2, v139);
      v20 = 0;
      v21 = v139;
      v22 = 1;
      do
      {
        v23 = v21->__locale_;
        v24 = *(v5 + v20);
        if ((v22 & 1) == 0)
        {
          break;
        }

        v22 = 0;
        v21 = &v139[1];
        v20 = 1;
      }

      while (v23 == v24);
      if (v23 != v24)
      {
        v25 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v26 = sub_2621D552C(v25, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v26, " ", 1);
        v27 = MEMORY[0x277D82670];
        v28 = MEMORY[0x266727260](MEMORY[0x277D82670], 190);
        sub_2621D552C(v28, " ", 1);
        sub_2621D552C(v28, "broadcast_assign_continue", 25);
        std::ios_base::getloc((v28 + *(*v28 - 24)));
        v29 = std::locale::use_facet(v142, MEMORY[0x277D82680]);
        (v29->__vftable[2].~facet_0)(v29, 10);
        std::locale::~locale(v142);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v27 + *(*v27 - 24)));
        v30 = std::locale::use_facet(v142, MEMORY[0x277D82680]);
        (v30->__vftable[2].~facet_0)(v30, 10);
        std::locale::~locale(v142);
        std::ostream::put();
        std::ostream::flush();
      }

      v137 = 0u;
      v138 = 0u;
      v136 = 0u;
      memset(v135, 0, sizeof(v135));
      v31 = *(a1 + 104);
      v129 = *(a1 + 144);
      v133 = v31;
      if (*(a1 + 136))
      {
        if (v31)
        {
          v32 = 0;
          v33 = *(&v146 + 1);
          v125 = v147;
          v34 = (v147 - *(&v146 + 1)) >> 3;
          if (v34 <= 1)
          {
            v34 = 1;
          }

          v121 = v34;
          v35 = *(a2 + 352);
          do
          {
            v135[0] = v136;
            v36 = v33;
            v37 = v121;
            if (v125 != v33)
            {
              do
              {
                v38 = *v36++;
                *(v135 + v38) = 0;
                --v37;
              }

              while (v37);
            }

            v143 = 0u;
            v144 = 0u;
            *&v142[0].__locale_ = 0u;
            v39 = v142;
            sub_26222AE2C(a2 + 48, v135, v142);
            v40 = 0;
            v41 = 0;
            v42 = 1;
            do
            {
              v43 = v42;
              v41 += *(a2 + 160 + 8 * v40) * v39->__locale_;
              v39 = &v142[1];
              v40 = 1;
              v42 = 0;
            }

            while ((v43 & 1) != 0);
            *(v129 + 4 * v32) = *(v35 + 4 * v41);
            for (j = 1; j != -1; --j)
            {
              v45 = (*(&v136 + j * 8) + 1);
              *(&v136 + j * 8) = v45;
              if (v45 != v139[j].__locale_)
              {
                break;
              }

              *(&v136 + j * 8) = 0;
            }

            ++v32;
          }

          while (v32 != v133);
        }
      }

      else if (v31)
      {
        v94 = 0;
        v123 = *(&v146 + 1);
        v127 = v147;
        if (((v147 - *(&v146 + 1)) >> 3) <= 1)
        {
          v95 = 1;
        }

        else
        {
          v95 = (v147 - *(&v146 + 1)) >> 3;
        }

        v119 = *(a1 + 56);
        v120 = v95;
        v117 = *(a2 + 352);
        v118 = *(a1 + 64);
        do
        {
          v96 = v136;
          v135[0] = v136;
          v97 = v120;
          v98 = v123;
          if (v127 != v123)
          {
            do
            {
              v99 = *v98++;
              *(v135 + v99) = 0;
              --v97;
            }

            while (v97);
          }

          v143 = 0u;
          v144 = 0u;
          *&v142[0].__locale_ = 0u;
          v100 = v142;
          sub_26222AE2C(a2 + 48, v135, v142);
          v101 = 0;
          v102 = 0;
          v103 = 1;
          do
          {
            v104 = v103;
            v102 += *(a2 + 160 + 8 * v101) * v100->__locale_;
            v100 = &v142[1];
            v101 = 1;
            v103 = 0;
          }

          while ((v104 & 1) != 0);
          *(v129 + 4 * v118 * *(&v96 + 1) + 4 * v119 * v96) = *(v117 + 4 * v96);
          for (k = 1; k != -1; --k)
          {
            v106 = (*(&v136 + k * 8) + 1);
            *(&v136 + k * 8) = v106;
            if (v106 != v139[k].__locale_)
            {
              break;
            }

            *(&v136 + k * 8) = 0;
          }

          ++v94;
        }

        while (v94 != v133);
      }
    }

    else
    {
      v158 = 0uLL;
      v159 = 0uLL;
      v156 = 0uLL;
      v157 = 0uLL;
      v154 = 0uLL;
      v155 = 0uLL;
      v152 = 0uLL;
      v153 = 0uLL;
      v150 = 0uLL;
      v151 = 0uLL;
      v148 = 0uLL;
      v149 = 0uLL;
      v146 = 0uLL;
      v147 = 0uLL;
      v144 = 0uLL;
      v145 = 0uLL;
      *&v142[0].__locale_ = 0uLL;
      v143 = 0uLL;
      sub_2621D96E4(&v145, v5, a2, v142);
      v52 = 0;
      v53 = v142;
      v54 = 1;
      do
      {
        v55 = v53->__locale_;
        v56 = *(v5 + v52);
        if ((v54 & 1) == 0)
        {
          break;
        }

        v54 = 0;
        v53 = &v142[1];
        v52 = 1;
      }

      while (v55 == v56);
      if (v55 != v56)
      {
        v57 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v58 = sub_2621D552C(v57, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v58, " ", 1);
        v59 = MEMORY[0x277D82670];
        v60 = MEMORY[0x266727260](MEMORY[0x277D82670], 239);
        sub_2621D552C(v60, " ", 1);
        sub_2621D552C(v60, "broadcast_assign_stride", 23);
        std::ios_base::getloc((v60 + *(*v60 - 24)));
        v61 = std::locale::use_facet(v139, MEMORY[0x277D82680]);
        (v61->__vftable[2].~facet_0)(v61, 10);
        std::locale::~locale(v139);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v59 + *(*v59 - 24)));
        v62 = std::locale::use_facet(v139, MEMORY[0x277D82680]);
        (v62->__vftable[2].~facet_0)(v62, 10);
        std::locale::~locale(v139);
        std::ostream::put();
        std::ostream::flush();
      }

      v140 = 0u;
      v141 = 0u;
      v138 = 0u;
      *&v139[0].__locale_ = 0u;
      v136 = 0u;
      v137 = 0u;
      v63 = *(a1 + 104);
      v64 = *(a1 + 144);
      if (*(a1 + 136))
      {
        if (v63)
        {
          v65 = 0;
          v67 = *(&v146 + 1);
          v66 = v147;
          if (((v147 - *(&v146 + 1)) >> 3) <= 1)
          {
            v68 = 1;
          }

          else
          {
            v68 = (v147 - *(&v146 + 1)) >> 3;
          }

          do
          {
            v136 = *&v139[0].__locale_;
            if (v66 != v67)
            {
              v69 = v67;
              v70 = v68;
              do
              {
                v71 = *v69++;
                *(&v136 + v71) = 0;
                --v70;
              }

              while (v70);
            }

            *(v64 + 4 * v65) = sub_26222AD54(a2, &v136);
            for (m = 1; m != -1; --m)
            {
              v73 = (v139[m].__locale_ + 1);
              v139[m].__locale_ = v73;
              if (v73 != v142[m].__locale_)
              {
                break;
              }

              v139[m].__locale_ = 0;
            }

            ++v65;
          }

          while (v65 != v63);
        }
      }

      else if (v63)
      {
        v107 = 0;
        v108 = *(&v146 + 1);
        v134 = v147;
        if (((v147 - *(&v146 + 1)) >> 3) <= 1)
        {
          v109 = 1;
        }

        else
        {
          v109 = (v147 - *(&v146 + 1)) >> 3;
        }

        v131 = *(a1 + 56);
        v124 = v109;
        v128 = *(a1 + 64);
        do
        {
          v110 = v139[0].__locale_;
          v111 = v139[1].__locale_;
          v136 = *&v139[0].__locale_;
          if (v134 != v108)
          {
            v112 = v108;
            v113 = v124;
            do
            {
              v114 = *v112++;
              *(&v136 + v114) = 0;
              --v113;
            }

            while (v113);
          }

          *(v64 + 4 * v128 * v111 + 4 * v131 * v110) = sub_26222AD54(a2, &v136);
          for (n = 1; n != -1; --n)
          {
            v116 = (v139[n].__locale_ + 1);
            v139[n].__locale_ = v116;
            if (v116 != v142[n].__locale_)
            {
              break;
            }

            v139[n].__locale_ = 0;
          }

          ++v107;
        }

        while (v107 != v63);
      }
    }

    sub_2621C57C8(&v145);
  }
}