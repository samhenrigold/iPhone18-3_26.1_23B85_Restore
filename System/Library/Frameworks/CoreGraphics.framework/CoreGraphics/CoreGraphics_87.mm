uint64_t CGPDFNodeMakeLayoutAreasConsistent(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, CGFloat a8, CGFloat a9, CGFloat a10, CGFloat a11, double a12)
{
  if (a1)
  {
    v18 = a1;
    do
    {
      if (*v18 == 517)
      {
        break;
      }

      v18 = *(v18 + 8);
    }

    while (v18);
  }

  else
  {
    v18 = 0;
  }

  for (i = *a4; i; i = *(i + 8))
  {
    if (*i == 516)
    {
      break;
    }
  }

  for (j = *a5; j; j = *(j + 8))
  {
    if (*j == 516)
    {
      break;
    }
  }

  for (k = *a6; k; k = *(k + 8))
  {
    if (*k == 516)
    {
      break;
    }
  }

  for (m = *a7; m; m = *(m + 8))
  {
    if (*m == 516)
    {
      break;
    }
  }

  IsHitByPoint = CGPDFNodeIsHitByPoint(i, a8, a9, a12);
  v24 = CGPDFNodeIsHitByPoint(j, a8, a9, a12);
  v25 = CGPDFNodeIsHitByPoint(k, a10, a11, a12);
  v26 = CGPDFNodeIsHitByPoint(m, a10, a11, a12);
  result = *a5;
  v28 = *a7;
  if (*a5)
  {
    if (v28)
    {
      result = CGPDFNodeCompareReadingOrder(result, v28);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = -1;
    }

    v29 = result == -1;
    if ((v24 & v25) == 1 && result == -1)
    {
      return result;
    }
  }

  else
  {
    if (!v28)
    {
      return result;
    }

    v29 = 0;
    result = 1;
  }

  if (result == 1)
  {
    v30 = IsHitByPoint;
  }

  else
  {
    v30 = 0;
  }

  if (v26 & v30)
  {
    return result;
  }

  v31 = v24 ^ 1;
  v32 = v26 ^ 1;
  v69 = 1;
  if (!v29)
  {
    if ((IsHitByPoint | v32))
    {
      if (((v26 | IsHitByPoint ^ 1) & 1) == 0)
      {
        result = CGPDFNodeIsHitByPoint(i, a10, a11, a12);
        v31 = v24 ^ 1;
        if (result)
        {
          v36 = i != 0;
          if (i != a1 && i)
          {
            v37 = i;
            do
            {
              v37 = *(v37 + 8);
              v36 = v37 != 0;
            }

            while (v37 != a1 && v37 != 0);
          }

          if (v36)
          {
            goto LABEL_81;
          }
        }
      }
    }

    else
    {
      result = CGPDFNodeIsHitByPoint(m, a8, a9, a12);
      v31 = v24 ^ 1;
      if (result)
      {
        v46 = m != 0;
        if (m != a1 && m)
        {
          v47 = m;
          do
          {
            v47 = *(v47 + 8);
            v46 = v47 != 0;
          }

          while (v47 != a1 && v47 != 0);
        }

        if (v46)
        {
          goto LABEL_115;
        }
      }
    }

    if ((v25 | v31))
    {
      if (((v24 | v25 ^ 1) & 1) == 0)
      {
        result = CGPDFNodeIsHitByPoint(k, a8, a9, a12);
        if (result)
        {
          v49 = k != 0;
          if (k != a1 && k)
          {
            v50 = k;
            do
            {
              v50 = *(v50 + 8);
              v49 = v50 != 0;
            }

            while (v50 != a1 && v50 != 0);
          }

          if (v49)
          {
            goto LABEL_104;
          }
        }
      }

      return result;
    }

    result = CGPDFNodeIsHitByPoint(j, a10, a11, a12);
    if (!result)
    {
      return result;
    }

    v58 = j != 0;
    if (j != a1 && j)
    {
      v59 = j;
      do
      {
        v59 = *(v59 + 8);
        v58 = v59 != 0;
      }

      while (v59 != a1 && v59 != 0);
    }

    if (!v58)
    {
      return result;
    }

    goto LABEL_128;
  }

  if (((v25 | v31) & 1) == 0)
  {
    result = CGPDFNodeIsHitByPoint(j, a10, a11, a12);
    v32 = v26 ^ 1;
    if (!result)
    {
      goto LABEL_69;
    }

    v39 = j != 0;
    if (j != a1 && j)
    {
      v40 = j;
      do
      {
        v40 = *(v40 + 8);
        v39 = v40 != 0;
      }

      while (v40 != a1 && v40 != 0);
    }

    if (!v39)
    {
      goto LABEL_69;
    }

LABEL_128:
    v45 = j;
    goto LABEL_129;
  }

  if (((v24 | v25 ^ 1) & 1) == 0)
  {
    result = CGPDFNodeIsHitByPoint(k, a8, a9, a12);
    v32 = v26 ^ 1;
    if (result)
    {
      v33 = k != 0;
      if (k != a1 && k)
      {
        v34 = k;
        do
        {
          v34 = *(v34 + 8);
          v33 = v34 != 0;
        }

        while (v34 != a1 && v34 != 0);
      }

      if (v33)
      {
LABEL_104:
        v52 = k;
LABEL_116:
        ClosestAreaDescendantToPoint = CGPDFNodeGetClosestAreaDescendantToPoint(v52, a2, a3, &v69, a8, a9, a12);
        v57 = ClosestAreaDescendantToPoint;
        if (v69 == 1)
        {
          result = CGPDFNodeGetNodeBefore(v18, ClosestAreaDescendantToPoint, a2, a3);
          *a4 = result;
        }

        else
        {
          *a4 = ClosestAreaDescendantToPoint;
          result = CGPDFNodeGetNodeAfter(v18, ClosestAreaDescendantToPoint, a2, a3);
          v57 = result;
        }

        v62 = a5;
LABEL_135:
        *v62 = v57;
        return result;
      }
    }
  }

LABEL_69:
  if (((IsHitByPoint | v32) & 1) == 0)
  {
    result = CGPDFNodeIsHitByPoint(m, a8, a9, a12);
    if (!result)
    {
      return result;
    }

    v53 = m != 0;
    if (m != a1 && m)
    {
      v54 = m;
      do
      {
        v54 = *(v54 + 8);
        v53 = v54 != 0;
      }

      while (v54 != a1 && v54 != 0);
    }

    if (!v53)
    {
      return result;
    }

LABEL_115:
    v52 = m;
    goto LABEL_116;
  }

  if (((v26 | IsHitByPoint ^ 1) & 1) == 0)
  {
    result = CGPDFNodeIsHitByPoint(i, a10, a11, a12);
    if (result)
    {
      v42 = i != 0;
      if (i != a1 && i)
      {
        v43 = i;
        do
        {
          v43 = *(v43 + 8);
          v42 = v43 != 0;
        }

        while (v43 != a1 && v43 != 0);
      }

      if (v42)
      {
LABEL_81:
        v45 = i;
LABEL_129:
        v61 = CGPDFNodeGetClosestAreaDescendantToPoint(v45, a2, a3, &v69, a10, a11, a12);
        v57 = v61;
        if (v69 == 1)
        {
          result = CGPDFNodeGetNodeBefore(v18, v61, a2, a3);
          *a6 = result;
        }

        else
        {
          *a6 = v61;
          result = CGPDFNodeGetNodeAfter(v18, v61, a2, a3);
          v57 = result;
        }

        v62 = a7;
        goto LABEL_135;
      }
    }
  }

  return result;
}

void CGPDFNodeGetNodeRangeFromIndexToPoint(__n64 *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, __n64 **a6, uint64_t *a7, uint64_t *a8, CGFloat a9, CGFloat a10, double a11)
{
  if (a1)
  {
    v21 = a1;
    while (v21->n64_u32[0] != 517)
    {
      v21 = v21[1].n64_u64[0];
      if (!v21)
      {
        goto LABEL_5;
      }
    }

    v22 = v21[13].n64_i64[0];
  }

  else
  {
LABEL_5:
    v22 = 0;
  }

  v23.n64_u64[0] = CGPDFLayoutGetRectForTextRange(v22, a3, 1).n64_u64[0];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  if (a4)
  {
    NodeFollowingTextIndex = CGPDFNodeGetNodeFollowingTextIndex(a1, a3);
  }

  else
  {
    NodeFollowingTextIndex = CGPDFNodeGetNodePrecedingTextIndex(a1, a3);
  }

  v34 = NodeFollowingTextIndex;
  v69 = a7;
  v67 = v22;
  if (NodeFollowingTextIndex)
  {
    v35 = NodeFollowingTextIndex;
    do
    {
      if (v35->n64_u32[0] == a2)
      {
        v38 = a3;
        goto LABEL_27;
      }

      v35 = v35[1].n64_u64[0];
    }

    while (v35);
    if (!a5)
    {
      goto LABEL_25;
    }

    if (*NodeFollowingTextIndex != 513 && (*NodeFollowingTextIndex & 0x100) == 0)
    {
      goto LABEL_25;
    }

    v37 = NodeFollowingTextIndex;
    do
    {
      if (v37->n64_u32[0] == 513)
      {
        break;
      }

      v37 = v37[1].n64_u64[0];
    }

    while (v37);
    v38 = a3;
    if (v37)
    {
      v35 = v37;
    }

    else
    {
      v35 = NodeFollowingTextIndex;
    }

LABEL_27:
    v39 = v35;
    do
    {
      if (v39->n64_u32[0] == 1538)
      {
        v40 = v39[13].n64_u64[0];
        if (v40)
        {
          if (*v40 == 2)
          {
            break;
          }
        }
      }

      v39 = v39[1].n64_u64[0];
    }

    while (v39);
  }

  else
  {
LABEL_25:
    v38 = a3;
    v35 = 0;
    v39 = 0;
  }

  v72 = 0;
  v31.n128_f64[0] = a9;
  v32.n128_f64[0] = a10;
  v33.n128_f64[0] = a11;
  ClosestNodeToPoint = CGPDFNodeGetClosestNodeToPoint(a1, a2, a5, &v72, v31, v32, v33);
  if (v72)
  {
    NodeBefore = CGPDFNodeGetNodeBefore(a1, ClosestNodeToPoint, a2, a5);
    NodeAfter = ClosestNodeToPoint;
  }

  else
  {
    NodeAfter = CGPDFNodeGetNodeAfter(a1, ClosestNodeToPoint, a2, a5);
    NodeBefore = ClosestNodeToPoint;
  }

  v73 = NodeAfter;
  for (i = NodeBefore; ClosestNodeToPoint; ClosestNodeToPoint = ClosestNodeToPoint[1].n64_u64[0])
  {
    if (ClosestNodeToPoint->n64_u32[0] == 1538)
    {
      v44 = ClosestNodeToPoint[13].n64_u64[0];
      if (v44)
      {
        if (*v44 == 2)
        {
          break;
        }
      }
    }
  }

  if (v34 && v39 == ClosestNodeToPoint)
  {
    if (!v35)
    {
      goto LABEL_58;
    }

    v45 = v35;
    while (*v45 != 516)
    {
      v45 = *(v45 + 8);
      if (!v45)
      {
        goto LABEL_53;
      }
    }

    if (v67)
    {
      if (v23.n64_f64[0] != INFINITY && v25 != INFINITY)
      {
        v70 = v35;
        v71 = v35;
        CGPDFNodeMakeLayoutAreasConsistent(v45, a2, a5, &v70, &v71, &i, &v73, v23.n64_f64[0] + v27 * 0.5, v25 + v29 * 0.5, a9, a10, a11);
      }
    }
  }

LABEL_53:
  if (v35)
  {
    if (a4)
    {
      v47 = v73;
      v48 = v69;
      if (!v73)
      {
LABEL_62:
        *a6 = v35;
        goto LABEL_66;
      }

LABEL_64:
      v49 = CGPDFNodeCompareReadingOrder(v35, v47);
      *a6 = v35;
      if (v49 != 1)
      {
        if (v49 == -1)
        {
LABEL_66:
          if (a4)
          {
            v50 = v73;
            if (!CGPDFNodeIsHitByPoint(v73, a9, a10, a11))
            {
              v51 = 0;
              v52 = i;
              goto LABEL_97;
            }

            goto LABEL_75;
          }

LABEL_71:
          *v48 = v35;
          goto LABEL_72;
        }

        goto LABEL_78;
      }

LABEL_70:
      if (!a4)
      {
        v50 = i;
        if (!CGPDFNodeIsHitByPoint(i, a9, a10, a11))
        {
          v51 = 0;
          v52 = v73;
LABEL_97:
          *v48 = v52;
          if (!a8)
          {
            return;
          }

          goto LABEL_119;
        }

LABEL_75:
        v51 = 0;
        *v48 = v50;
        if (!a8)
        {
          return;
        }

        goto LABEL_119;
      }

      goto LABEL_71;
    }

    v47 = i;
    v48 = v69;
    if (i)
    {
      goto LABEL_64;
    }

LABEL_69:
    *a6 = v35;
    goto LABEL_70;
  }

  NodeAfter = v73;
LABEL_58:
  v48 = v69;
  if (a4 && NodeAfter)
  {
    goto LABEL_69;
  }

  if ((a4 & 1) == 0 && i)
  {
    goto LABEL_62;
  }

  *a6 = 0;
LABEL_78:
  *v48 = v35;
  if (a4)
  {
    if (!CGPDFNodeIsHitByPoint(i, a9, a10, a11) || (CGPDFNodeIsHitByPoint(v73, a9, a10, a11) & 1) != 0)
    {
      goto LABEL_84;
    }

LABEL_72:
    v51 = 1;
    if (!a8)
    {
      return;
    }

    goto LABEL_119;
  }

  if (CGPDFNodeIsHitByPoint(v73, a9, a10, a11) && !CGPDFNodeIsHitByPoint(i, a9, a10, a11))
  {
    goto LABEL_72;
  }

LABEL_84:
  if (v35)
  {
    v53 = v35->n64_u32[0];
    if (v35->n64_u32[0] == 514 || v53 == 1)
    {
      CGPDFNodeGetBounds(v35);
      v25 = v54;
      v29 = v55;
    }

    if (a4)
    {
      v56 = v23.n64_f64[0];
    }

    else
    {
      v56 = v23.n64_f64[0] + v27;
    }

    if (a4)
    {
      v57 = v25 + v29;
    }

    else
    {
      v57 = v25;
    }

    Rotation = CGPDFNodeGetRotation(v35);
    if (Rotation == 0.0)
    {
      v61 = a9;
      v62 = a10;
    }

    else
    {
      v59 = __sincos_stret(Rotation);
      v60 = v57 * v59.__cosval - v59.__sinval * v56;
      v56 = v57 * v59.__sinval + v59.__cosval * v56 + 0.0;
      v57 = v60 + 0.0;
      v61 = a10 * v59.__sinval + v59.__cosval * a9 + 0.0;
      v62 = a10 * v59.__cosval - v59.__sinval * a9 + 0.0;
    }

    if (v53 == 1 || v53 == 516 || v53 == 514)
    {
      v63 = v56 == v61;
      if (v57 < v62)
      {
        v63 = 0;
      }

      if (v56 < v61)
      {
        v63 = 1;
      }

      goto LABEL_118;
    }
  }

  else
  {
    if (a4)
    {
      v56 = v23.n64_f64[0];
    }

    else
    {
      v56 = v23.n64_f64[0] + v27;
    }

    if (a4)
    {
      v57 = v25 + v29;
    }

    else
    {
      v57 = v25;
    }

    v62 = a10;
    v61 = a9;
  }

  v63 = v57 == v62;
  if (v56 > v61)
  {
    v63 = 0;
  }

  if (v57 > v62)
  {
    v63 = 1;
  }

LABEL_118:
  v51 = v63 ^ a4;
  if (!a8)
  {
    return;
  }

LABEL_119:
  v64 = v38 - 1;
  if (!a4)
  {
    v64 = v38 + 1;
  }

  *a8 = v64;
  if ((v51 & 1) == 0)
  {
    v65 = *v48 ? *v48 : v35;
    if (v65)
    {
      if (a4)
      {
        TextIndexBeforePoint = CGPDFNodeGetTextIndexBeforePoint(v65, a9, a10, a11);
        if (TextIndexBeforePoint < v38)
        {
          return;
        }
      }

      else
      {
        TextIndexBeforePoint = CGPDFNodeGetTextIndexAfterPoint(v65, a9, a10, a11);
        if (TextIndexBeforePoint > v38)
        {
          return;
        }
      }

      *a8 = TextIndexBeforePoint;
    }
  }
}

__n64 *CGPDFNodeGetTopmostContentNodeAtPoint(__n64 *a1, _BYTE *a2, __n128 a3, __n128 a4)
{
  v5 = a1;
  Rotation = CGPDFNodeGetRotation(a1);
  *&v7.f64[0] = a3.n128_u64[0];
  *&v7.f64[1] = a4.n128_u64[0];
  if (Rotation != 0.0)
  {
    pointa = v7;
    v9 = __sincos_stret(Rotation);
    v8.f64[0] = v9.__cosval;
    v8.f64[1] = -v9.__sinval;
    v7 = vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(v9, pointa, 1), v8, a3.n128_f64[0]), 0);
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  point = v7;
  v32.origin.x = CGPDFNodeGetBounds(v5).n64_f64[0];
  v10 = CGRectContainsPoint(v32, point);
  if (!v10)
  {
    v5 = 0;
    goto LABEL_14;
  }

  v11 = v5->n64_u32[0];
  if (v5->n64_i32[0] <= 512)
  {
    v12 = a3;
    if (v11 == 257)
    {
LABEL_9:
      LOBYTE(v10) = 1;
      goto LABEL_14;
    }

    if (v11 != 258)
    {
      goto LABEL_8;
    }

    goto LABEL_13;
  }

  v12 = a3;
  if (v11 != 515)
  {
    if (v11 != 513)
    {
LABEL_8:
      if ((v11 & 0x200) == 0)
      {
        goto LABEL_9;
      }

      *a2 = 0;
      v21 = v5[5].n64_u32[1];
      if (!v21)
      {
        return 0;
      }

      v22 = 0;
      v13 = 0;
      while (1)
      {
        v31 = 0;
        if ((v5->n64_u8[1] & 2) != 0 && v22 < v5[5].n64_u32[1])
        {
          v23 = *(v5[7].n64_u64[0] + 8 * v22);
        }

        else
        {
          v23 = 0;
        }

        TopmostContentNodeAtPoint = CGPDFNodeGetTopmostContentNodeAtPoint(v23, &v31, v12, a4);
        if (TopmostContentNodeAtPoint)
        {
          v12 = a3;
          if (!v13)
          {
            goto LABEL_50;
          }

          if (v31)
          {
            if (*a2)
            {
LABEL_39:
              v25 = TopmostContentNodeAtPoint;
              while ((*(v25 + 1) & 3) == 0)
              {
                v25 = *(v25 + 8);
                if (!v25)
                {
                  goto LABEL_44;
                }
              }

              v25 = *(v25 + 96);
LABEL_44:
              v26 = v13;
              while ((v26->n64_u8[1] & 3) == 0)
              {
                v26 = v26[1].n64_u64[0];
                if (!v26)
                {
                  goto LABEL_49;
                }
              }

              v26 = v26[12].n64_u64[0];
LABEL_49:
              if (v25 < v26)
              {
                goto LABEL_51;
              }
            }

LABEL_50:
            *a2 = v31;
            v13 = TopmostContentNodeAtPoint;
            goto LABEL_51;
          }

          if ((*a2 & 1) == 0)
          {
            goto LABEL_39;
          }
        }

        else
        {
          v12 = a3;
        }

LABEL_51:
        if (++v22 == v21)
        {
          return v13;
        }
      }
    }

LABEL_13:
    LOBYTE(v10) = 0;
    goto LABEL_14;
  }

  *a2 = 0;
  v15 = v5[5].n64_u32[1];
  if (!v15)
  {
    return v5;
  }

  v16 = 0;
  while (1)
  {
    v13 = (v5->n64_u8[1] & 2) != 0 && v16 < v5[5].n64_u32[1] ? *(v5[7].n64_u64[0] + 8 * v16) : 0;
    v17.n64_u64[0] = CGPDFNodeGetBounds(v13).n64_u64[0];
    if (v18.n64_f64[0] <= point.y)
    {
      break;
    }

    if (v15 == ++v16)
    {
      return v13;
    }
  }

  LOBYTE(v10) = CGRectContainsPoint(*v17.n64_u64, point);
  v5 = v13;
LABEL_14:
  *a2 = v10;
  return v5;
}

double CGPDFNodeGetContentRect(__n64 *a1)
{
  v1 = a1;
  v3.n64_u64[0] = CGPDFNodeGetBounds(a1).n64_u64[0];
  if (v1 && (v1->n64_u32[0] == 1537 || v1->n64_u32[0] == 514) && v3.n64_f64[0] != INFINITY && v2.n64_f64[0] != INFINITY)
  {
    while (v1->n64_u32[0] != 515)
    {
      v1 = v1[1].n64_u64[0];
      if (!v1)
      {
        return v3.n64_f64[0];
      }
    }

    v5.n64_u64[0] = CGPDFNodeGetBounds(v1).n64_u64[0];
    v6 = v5.n64_f64[0] == INFINITY;
    if (v7 == INFINITY)
    {
      v6 = 1;
    }

    if (!v6)
    {
      v3.n64_u64[0] = v5.n64_u64[0];
    }
  }

  return v3.n64_f64[0];
}

char *RIPLayerCreateWithLayer(uint64_t a1, uint64_t *a2, uint64_t *a3, int a4)
{
  if (a3)
  {
    v5 = *a3;
    if (*a3)
    {
      if (a3[4])
      {
        v6 = a2 ? a2 : (a3 + 12);
        if ((v6[1] & 0x80000000) == 0 && (*(v6 + 3) & 0x80000000) == 0)
        {
          v78 = 0;
          v79 = 0;
          v9 = (*(v5 + 32))(a3, 16, &v78);
          if (v9)
          {
            v10 = *v9;
            if (*v9)
            {
              if (v10 == RIPGetDepthForLayerFormat(0))
              {
                v13 = (*(a1 + 8))(a1);
                v14 = malloc_type_calloc(1uLL, v13, 0x24B1A8CEuLL);
                v11 = v14;
                if (!v14)
                {
                  goto LABEL_85;
                }

                *v14 = a1;
                *(v14 + 2) = 1;
                *(v14 + 12) = *v6;
                *(v14 + 7) = 0;
                *(v14 + 4) = v10;
                pthread_mutex_init((v14 + 80), 0);
              }

              else
              {
                v11 = RIPLayerCreate(a1, v6, a3[9] != 0, v10, a4);
                if (!v11)
                {
                  goto LABEL_85;
                }
              }

              if (!CGSBoundsIntersection(v11 + 3, a3 + 3, &v78))
              {
                if (v10 == RIPGetDepthForLayerFormat(0) && (*(v11 + 5) || *(v11 + 6)))
                {
                  *(v11 + 9) = &the_empty_shape;
                  *(v11 + 16) = 12;
                }

                goto LABEL_85;
              }

              if ((*(*v11 + 32))(v11, 32, v11 + 12))
              {
                v15 = v78;
                v16 = HIDWORD(v78);
                v76 = HIDWORD(v78);
                v77 = v78;
                v18 = v79;
                v17 = HIDWORD(v79);
                v74 = HIDWORD(v79);
                v75 = v79;
                v19 = RIPGetDepthForLayerFormat(0);
                if (v10 != v19)
                {
                  v20 = *(v11 + 7);
                  if (!v20)
                  {
                    goto LABEL_84;
                  }

                  v21 = v78 - *(v11 + 3);
                  v22 = *(v11 + 6) + *(v11 + 4) - (HIDWORD(v79) + HIDWORD(v78));
                  v23 = v78 - *(a3 + 3);
                  v24 = *(a3 + 4) - (HIDWORD(v79) + HIDWORD(v78)) + *(a3 + 6);
                  CGBlt_copyBytes(v18 * (*v10 >> 25), v17, (a3[7] + (*(a3 + 12) * v24) + (*v10 >> 25) * v23), (v20 + (*(v11 + 12) * v22) + (*v10 >> 25) * v21), *(a3 + 12), *(v11 + 12));
                  v25 = *(v11 + 9);
                  if (!v25 || v25 == *(v11 + 7))
                  {
                    goto LABEL_84;
                  }

                  v26 = *(v11 + 16);
                  v27 = (v26 * v22);
                  v28 = v25 + v21;
                  v29 = a3[9];
                  if (!v29 || v29 == a3[7])
                  {
                    CGBlt_fillBytes(v18, v17, -1, (v28 + v27), *(v11 + 16));
                    goto LABEL_84;
                  }

                  v30 = *(a3 + 16);
                  v31 = (v29 + v23 + (v30 * v24));
                  v32 = (v28 + v27);
                  v33 = v18;
                  v34 = v17;
                  goto LABEL_28;
                }

                v35 = a3[9];
                if (v35)
                {
                  v36 = *(a3 + 4);
                  v37 = *(a3 + 3) - *(v11 + 3);
                  v38 = *(v11 + 5);
                  v39 = *(v11 + 6);
                  v40 = v39 + *(v11 + 4);
                  v41 = *(a3 + 5);
                  v76 = v40 - (v36 + *(a3 + 6));
                  v77 = v37;
                  shape_combine(0, 0, 0, v38, v39, 0, v37, v76, v41 + v37, v40 - v36, v35);
                  if (v42)
                  {
                    v43 = v42;
                    v44 = shape_bounds(v42, &v77, &v76, &v75, &v74);
                    if (v44)
                    {
                      v46 = v44 == 9 && v77 == 0 && v76 == 0;
                      if (v46 && v75 == *(v11 + 5) && v74 == *(v11 + 6))
                      {
                        if (v43 != &the_empty_shape)
                        {
                          free(v43);
                        }

                        goto LABEL_84;
                      }

                      *(v11 + 9) = v43;
                      v57 = 4 * v44;
                      goto LABEL_83;
                    }
                  }

                  goto LABEL_82;
                }

                v47 = *(a3 + 16);
                if (v47)
                {
                  v19 = ripl_Containment(&v78, a3 + 3, v47);
                  v48 = v19;
                  v49 = *(v11 + 6);
                  v50 = *(v11 + 5);
                  if (v18 == v50 && v17 == v49)
                  {
                    *(v11 + 16) = v19;
                    goto LABEL_84;
                  }

                  v52 = v78 - *(v11 + 3);
                  v16 = v49 + *(v11 + 4) - (HIDWORD(v78) + HIDWORD(v79));
                  v76 = v16;
                  v77 = v52;
                  if (v19)
                  {
                    v53 = (v50 + 3) & 0xFFFFFFFFFFFFFFFCLL;
                    v54 = v49 * v53 + 4;
                    v55 = (v49 * v53 + 19) & 0xFFFFFFF0;
                    if (v54 >> 31)
                    {
                      v19 = 0xFFFFFFFFLL;
                    }

                    else
                    {
                      v19 = v55;
                    }

                    if (v19 >= 1)
                    {
                      v19 = malloc_type_malloc(v19, 0x941F2EFCuLL);
                      *(v11 + 7) = v19;
                      if (v19)
                      {
                        v56 = v19 + v16 * v53;
                        *(v11 + 7) &= ~2u;
                        *(v11 + 12) = v53;
                        CGBlt_fillBytes(v18, v17, -1, (v56 + v52), v53);
                        CGSCombineMask(0, 0, (v56 + v52), v53, v18, v17, v48);
                        goto LABEL_84;
                      }
                    }

                    v67 = v18 + v52;
                  }

                  else
                  {
                    v67 = v52 + v18;
                  }

                  v68 = v17 + v16;
                  v69 = v52;
                }

                else
                {
                  v58 = *(v11 + 5);
                  if (!a3[7])
                  {
                    v70 = *(v11 + 6);
                    if (v18 == v58 && v17 == v70)
                    {
                      goto LABEL_84;
                    }

                    v69 = v78 - *(v11 + 3);
                    v72 = v70 + *(v11 + 4) - (HIDWORD(v78) + HIDWORD(v79));
                    v76 = v72;
                    v77 = v69;
                    v67 = v69 + v18;
                    v68 = v17 + v72;
LABEL_80:
                    shape_alloc_bounds(v19, v69, v72, v67, v68);
                    *(v11 + 9) = v73;
                    if (v73)
                    {
                      v57 = 36;
LABEL_83:
                      *(v11 + 16) = v57;
                      goto LABEL_84;
                    }

LABEL_82:
                    *(v11 + 9) = &the_empty_shape;
                    v57 = 12;
                    goto LABEL_83;
                  }

                  v59 = (v58 + 3) & 0xFFFFFFFFFFFFFFFCLL;
                  if ((v59 * *(v11 + 6) + 4) >> 31)
                  {
                    v19 = 0xFFFFFFFFLL;
                  }

                  else
                  {
                    v19 = (v59 * *(v11 + 6) + 19) & 0xFFFFFFF0;
                  }

                  if (v19 >= 1)
                  {
                    v19 = malloc_type_malloc(v19, 0xFE4352D7uLL);
                    if (v19)
                    {
                      v60 = *(v11 + 6);
                      *(v11 + 7) &= ~2u;
                      *(v11 + 7) = v19;
                      v61 = v78 - *(v11 + 3);
                      v62 = v79;
                      v34 = HIDWORD(v79);
                      v63 = HIDWORD(v79) + HIDWORD(v78);
                      v64 = v19 + (v60 + *(v11 + 4) - (HIDWORD(v79) + HIDWORD(v78))) * v59;
                      v65 = *(a3 + 4);
                      v66 = v78 - *(a3 + 3);
                      *(v11 + 12) = v59;
                      v76 = v65 - v63 + *(a3 + 6);
                      v77 = v66;
                      v30 = *(a3 + 12);
                      v31 = (a3[7] + v66 + (v30 * v76));
                      v32 = (v64 + v61);
                      v33 = v62;
                      v26 = v59;
LABEL_28:
                      CGBlt_copyBytes(v33, v34, v31, v32, v30, v26);
LABEL_84:
                      (*(*v11 + 48))(v11, v11 + 12);
                      goto LABEL_85;
                    }
                  }

                  v67 = v18 + v15;
                  v68 = v17 + v16;
                  v69 = v15;
                }

                v72 = v16;
                goto LABEL_80;
              }
            }

            else
            {
              v11 = 0;
            }

LABEL_85:
            (*(*a3 + 48))(a3, 0);
            return v11;
          }
        }
      }
    }
  }

  return 0;
}

char *RIPLayerConvertLayer(uint64_t a1, char a2, uint64_t a3, int a4)
{
  v35 = *MEMORY[0x1E69E9840];
  v32 = xmmword_184562D40;
  v33 = xmmword_184562D50;
  v28 = unk_184562D00;
  v29 = xmmword_184562D10;
  v30 = unk_184562D20;
  v31 = xmmword_184562D30;
  v24 = unk_184562CC0;
  v25 = xmmword_184562CD0;
  v34 = 0;
  v26 = unk_184562CE0;
  v27 = xmmword_184562CF0;
  memset(v20, 0, sizeof(v20));
  v21 = xmmword_184562C90;
  v22 = unk_184562CA0;
  v23 = xmmword_184562CB0;
  v19 = 0;
  v18 = 0u;
  v17 = 0u;
  if (!a3)
  {
    return 0;
  }

  if (!*a3)
  {
    return 0;
  }

  if (!*(a3 + 32))
  {
    return 0;
  }

  if ((*(a3 + 20) & 0x80000000) != 0)
  {
    return 0;
  }

  if ((*(a3 + 24) & 0x80000000) != 0)
  {
    return 0;
  }

  v8 = (*(*a3 + 32))(a3, 16, a3 + 12);
  if (!v8)
  {
    return 0;
  }

  *&v21 = *v8;
  if (!v21 || (*&v22 = 0, v14 = 0, v9 = *(a3 + 24), DWORD2(v22) = *(a3 + 20), HIDWORD(v22) = v9, v15 = DWORD2(v22), v16 = v9, *(&v21 + 1) = __PAIR64__(v9, DWORD2(v22)), !*(a3 + 56)) && (ripl_CreateMask(a3, 0) & 1) == 0)
  {
    (*(*a3 + 48))(a3, 0);
    return 0;
  }

  v10 = RIPLayerCreate(a1, &v14, (*(a3 + 72) != 0) | a2, 0, a4);
  v11 = v10;
  if (v10)
  {
    *(&v23 + 1) = *(a3 + 56);
    LODWORD(v23) = *(a3 + 48);
    LODWORD(v24) = *(a3 + 64);
    v12 = *(a3 + 72);
    v25 = 0uLL;
    *(&v24 + 1) = v12;
    v19 = 0;
    *&v18 = 0;
    v17 = v20;
    DWORD2(v18) = 0;
    RIPLayerBltImage(v10, 0, 0, &v14, &unk_1845629E8);
    *(v11 + 12) = *(a3 + 12);
    (*(*a3 + 48))(a3, v11 + 12);
  }

  else
  {
    (*(*a3 + 48))(a3, 0);
  }

  return v11;
}

uint64_t ripl_BltOpSourceLayer(uint64_t a1, _DWORD *a2, _DWORD *a3, int32x2_t *a4, uint64_t a5)
{
  v5 = *(a5 + 12);
  v6 = *(a5 + 20);
  v7 = *(a5 + 24);
  if (a4)
  {
    v5 = vadd_s32(*a4, v5);
  }

  if (v6 <= 1 && v7 <= 1)
  {
    v6 = 0;
    v7 = 0;
    v9 = 4;
    *(a1 + 1) = 4;
    *(a1 + 56) = 0;
  }

  else if (a5 != a3 && (*(a5 + 28) & 8) != 0)
  {
    v9 = 2;
    *(a1 + 1) = 2;
    v10 = v5.i32[1] + v7 - (a3[4] + a3[6]) + *(a1 + 16);
    *(a1 + 56) = a3[3] - v5.i32[0] + *(a1 + 12);
    *(a1 + 60) = v10;
  }

  else
  {
    v9 = 1;
    *(a1 + 1) = 1;
    *(a1 + 56) = *a2 - v5.i32[0];
    *(a1 + 60) = v5.i32[1] + v7 - (a2[1] + a2[3]);
  }

  *(a1 + 64) = v6;
  *(a1 + 68) = v7;
  v11 = *(a5 + 48);
  *(a1 + 72) = 0;
  *(a1 + 76) = v11;
  v12 = *(a5 + 56);
  *(a1 + 80) = *(a5 + 64);
  v13 = *(a5 + 72);
  *(a1 + 88) = v12;
  *(a1 + 96) = v13;
  return v9;
}

void RIPLayerResample(uint64_t a1, float *a2)
{
  if (a1)
  {
    v4 = !*a1 || a2 == 0;
    if (!v4 && (*a2 != 0.0 || a2[1] != 1.0))
    {
      v5 = *(a1 + 32);
      if (v5 && v5 == RIPGetDepthForLayerFormat(0) && (*(a1 + 56) || ripl_CreateMask(a1, 1)))
      {
        v6 = decode_create(*v5 >> 12, *v5 >> 22, *v5 >> 22, a2, 1);
        if (v6)
        {
          v9 = v6;
          decode_data(v6, *(a1 + 20), *(a1 + 24), *(a1 + 56), *(a1 + 48), *(a1 + 56), *(a1 + 48), 0, v7, v8, 0);

          free(v9);
        }
      }
    }
  }
}

uint64_t RIPLayerTransfer(uint64_t result, int *a2, uint64_t a3)
{
  if (result)
  {
    if (a3)
    {
      v4 = result;
      if (*result)
      {
        v18 = 0uLL;
        v5 = *(result + 32);
        if ((!v5 || (*v5 & 0x3F0000) == 0x80000) && (*(result + 20) & 0x80000000) == 0)
        {
          v6 = *(result + 24);
          if ((v6 & 0x80000000) == 0)
          {
            if (a2)
            {
              result = CGSBoundsIntersection((result + 12), a2, &v18);
              if (!result)
              {
                return result;
              }

              v7 = v18 - *(v4 + 12);
              v8 = v6 + *(v4 + 16) - (DWORD1(v18) + HIDWORD(v18));
            }

            else
            {
              v7 = 0;
              v8 = 0;
              v18 = *(result + 12);
            }

            if (*(v4 + 56) || (result = ripl_CreateMask(v4, 1), result))
            {
              v9 = HIDWORD(v18);
              if (SHIDWORD(v18) >= 1)
              {
                v10 = *v5 >> 25;
                v11 = DWORD2(v18) * v10;
                v12 = *(v4 + 48);
                v13 = (*(v4 + 56) + (v12 * v8) + v10 * v7);
                v14 = v12 - v11;
                do
                {
                  v15 = v11;
                  if (v11 >= 4)
                  {
                    do
                    {
                      *v13 = *(a3 + *v13) | (*(a3 + BYTE1(*v13)) << 8) | (*(a3 + BYTE2(*v13)) << 16) | (*(a3 + (*v13 >> 24)) << 24);
                      ++v13;
                      v16 = v15 > 7;
                      v15 -= 4;
                    }

                    while (v16);
                  }

                  if (v15 >= 1)
                  {
                    v17 = v15 + 1;
                    do
                    {
                      *v13 = *(a3 + *v13);
                      v13 = (v13 + 1);
                      --v17;
                    }

                    while (v17 > 1);
                  }

                  v13 = (v13 + v14);
                  v16 = v9-- <= 1;
                }

                while (!v16);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

char *RIPLayerClip(uint64_t a1, signed int *a2, unsigned int a3, int a4)
{
  v4 = a1;
  if (!a2)
  {
    return v4;
  }

  v7 = *a2;
  v8 = a2[1];
  v9 = *a2 + a2[2];
  v10 = v8 + a2[3];
  v11 = (a1 + 12);
  v12 = *(a1 + 12);
  v14 = *(a1 + 20);
  v13 = *(a1 + 24);
  v15 = *(a1 + 16);
  v16 = v12 + v14;
  v17 = v15 + v13;
  v18 = *(a1 + 72);
  if (v18 || (v26 = *(a1 + 64)) == 0)
  {
    v19 = a3 & 0xFFFFFF;
    if (v12 > v7)
    {
      v7 = v12;
    }

    else
    {
      v19 = a3;
    }

    if (v15 > v8)
    {
      v19 &= 0xFFFFFF00;
      v8 = v15;
    }

    if (v16 < v9)
    {
      v19 &= 0xFFFF00FF;
      v9 = v12 + v14;
    }

    if (v17 >= v10)
    {
      a3 = v19;
    }

    else
    {
      a3 = v19 & 0xFF00FFFF;
    }

    if (v17 < v10)
    {
      v10 = v15 + v13;
    }
  }

  else if (a3)
  {
    if (v12 <= v7)
    {
      if (v12 == v7)
      {
        v35 = (~v26 >> 24) * (~a3 >> 24);
        a3 = (-131072 - ((v35 + (v35 >> 8)) << 16)) & 0xFF000000 | a3 & 0xFFFFFF;
      }
    }

    else
    {
      a3 = v26 & 0xFF000000 | a3 & 0xFFFFFF;
      v7 = *(v4 + 3);
    }

    if (v15 <= v8)
    {
      if (v15 == v8)
      {
        v36 = ~a3 * ~v26;
        a3 = (a3 & 0xFFFFFF00) - ((v36 + (v36 >> 8) + 1) >> 8) + 255;
      }
    }

    else
    {
      a3 = a3 & 0xFFFFFF00 | v26;
      v8 = *(v4 + 4);
    }

    if (v16 >= v9)
    {
      if (v16 == v9)
      {
        v37 = ~(a3 >> 8) * ~(v26 >> 8);
        a3 = (a3 & 0xFFFF00FF) - ((v37 + (v37 >> 8) + 1) & 0x3FF00) + 65280;
      }
    }

    else
    {
      a3 = a3 & 0xFFFF00FF | (BYTE1(v26) << 8);
      v9 = v12 + v14;
    }

    if (v17 >= v10)
    {
      v38 = (a3 & 0xFF00FFFF) - ((((257 * ~HIWORD(v26) * ~HIWORD(a3)) & 0xFFFF00) + 256) & 0x1FF0000) + 16711680;
      if (v17 == v10)
      {
        a3 = v38;
      }
    }

    else
    {
      a3 = a3 & 0xFF00FFFF | (BYTE2(v26) << 16);
      v10 = v17;
    }
  }

  else
  {
    v29 = v26 & 0xFF000000;
    if (v12 > v7)
    {
      v7 = v12;
    }

    else
    {
      v29 = 0;
    }

    v30 = v26;
    if (v15 <= v8)
    {
      v30 = 0;
    }

    v31 = v29 | v30;
    if (v15 > v8)
    {
      v8 = v15;
    }

    v32 = v26 & 0xFF00;
    if (v16 >= v9)
    {
      v32 = 0;
    }

    v33 = v31 | v32;
    if (v16 < v9)
    {
      v9 = v12 + v14;
    }

    v34 = v33 | v26 & 0xFF0000;
    if (v17 < v10)
    {
      a3 = v34;
    }

    else
    {
      a3 = v33;
    }

    if (v17 < v10)
    {
      v10 = v17;
    }
  }

  v20 = __OFSUB__(v9, v7);
  v21 = v9 - v7;
  if ((v21 < 0) ^ v20 | (v21 == 0))
  {
    v22 = 1;
  }

  else
  {
    v22 = v10 <= v8;
  }

  if (!v22)
  {
    *&v39 = __PAIR64__(v8, v7);
    v24 = v10 - v8;
    *(&v39 + 1) = __PAIR64__(v24, v21);
    if (v21 != v14 || v24 != v13)
    {
      if (*(v4 + 2) == 1 && v12 == v7 && v17 == v10)
      {
        *v11 = v39;
        if (!v18 && *(v4 + 16))
        {
          *(v4 + 16) = 0;
        }
      }

      else
      {
        v4 = RIPLayerCreateWithLayer(RIPLayer_ripl_class, &v39, v4, a4);
      }
    }

    if (a3)
    {
      if (v4)
      {
        v27 = *(v4 + 7);
        if (!v27 && !*(v4 + 9))
        {
          if (*(v4 + 2) != 1)
          {
            v4 = RIPLayerCreateWithLayer(RIPLayer_ripl_class, &v39, v4, a4);
          }

          *(v4 + 16) = a3;
          return v4;
        }

        if (*(v4 + 2) != 1)
        {
          v4 = RIPLayerCreateWithLayer(RIPLayer_ripl_class, &v39, v4, a4);
          v27 = *(v4 + 7);
        }

        if (!v27)
        {
          if (!ripl_CreateMask(v4, 1))
          {
            return 0;
          }

          v27 = *(v4 + 7);
        }

        CGSCombineMask(v27, *(v4 + 12), v27, *(v4 + 12), SDWORD2(v39), SHIDWORD(v39), a3);
        return v4;
      }

      v28 = a3;
    }

    else
    {
      if (v4)
      {
        return v4;
      }

      v28 = 0;
    }

    return RIPLayerCreateWithData(&v39, 0, 0, 0, 0, v28, 0, a4);
  }

  return RIPLayerCreate(RIPLayer_ripl_class, 0, 0, 0, a4);
}

__n128 RIPLayerDefine(uint64_t a1, __n128 *a2)
{
  if (a1)
  {
    if (a2)
    {
      if (!*(a1 + 56))
      {
        v4 = a2->n128_i32[2];
        if (v4 >= 1)
        {
          v5 = a2->n128_i32[3];
          if (v5 >= 1)
          {
            v6 = RIPGetDepthForLayerFormat(0);
            if (v4 <= 0x7FFFFE)
            {
              v8 = v6;
              v9 = ((((*v6 >> 22) * v4) >> 3) + 3) & 0x3FFFFFFC;
              v10 = (*v6 >> 2) & 3;
              v11 = (v4 + 3) & 0xFFFFFC;
              if (v10 != 1)
              {
                v11 = 0;
              }

              if (v10 == 2)
              {
                v12 = ((((*v6 >> 22) * v4) >> 3) + 3) & 0x3FFFFFFC;
              }

              else
              {
                v12 = v11;
              }

              v13 = v5 * (v12 + v9);
              if (v13 > 0x7FFFFFFB)
              {
                v14 = 0xFFFFFFFFLL;
              }

              else
              {
                v14 = (v13 + 19) & 0xFFFFFFF0;
              }

              if ((v14 & 0x80000000) == 0)
              {
                v15 = malloc_type_calloc(1uLL, v14, 0xFE37F4F0uLL);
                if (v15)
                {
                  v16 = v15;
                  if (v12)
                  {
                    v17 = (*v8 >> 2) & 3;
                    v18 = v15;
                    if (v17 != 2)
                    {
                      if (v17 == 1)
                      {
                        v18 = &v15[v9 * v5];
                      }

                      else
                      {
                        v18 = 0;
                      }
                    }
                  }

                  else
                  {
                    v18 = 0;
                  }

                  v19 = *(a1 + 28) | initialize_deep_mask(v8);
                  *(a1 + 28) = v19;
                  if (v8[4])
                  {
                    *(a1 + 28) = v19 | 0x200;
                  }

                  *(a1 + 32) = v8;
                  result = *a2;
                  *(a1 + 12) = *a2;
                  *(a1 + 64) = v12;
                  *(a1 + 72) = v18;
                  *(a1 + 48) = v9;
                  *(a1 + 56) = v16;
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

_BYTE *RIPLayerCreateImage(uint64_t a1, CGColorSpaceRef space, char a3)
{
  v45 = *MEMORY[0x1E69E9840];
  v44 = xmmword_184562A30;
  if (a1)
  {
    if (*a1 == RIPLayer_ripl_class && *(a1 + 20) >= 1)
    {
      v6 = *(a1 + 24);
      if (v6 >= 1)
      {
        v7 = *(a1 + 56);
        if (v7)
        {
          v8 = *(a1 + 32);
          if (v8)
          {
            v4 = 0;
            v11 = (*v8 >> 8) & 0xF;
            if (v11 <= 2)
            {
              if (v11)
              {
                if (v11 == 1)
                {
                  if ((*v8 & 0xCC) == 4)
                  {
                    if (space && CGColorSpaceGetModel(space) == kCGColorSpaceModelMonochrome)
                    {
                      DeviceGray = 0;
                    }

                    else
                    {
                      DeviceGray = CGColorSpaceCreateDeviceGray();
                    }

                    v18 = *(a1 + 48);
                    v15 = HIWORD(*v8) & 0x3F;
                    v19 = *v8 >> 22;
                    switch(v15)
                    {
                      case 8u:
                        v29 = *v8 >> 6;
                        if (v29 == 2)
                        {
                          v17 = 5;
                          if ((*v8 & 0xC) == 8)
                          {
                            if (*(a1 + 72) == *(a1 + 56))
                            {
                              v17 = 1;
                            }

                            else
                            {
                              v17 = 5;
                            }
                          }
                        }

                        else
                        {
                          if (v29 != 1)
                          {
                            goto LABEL_93;
                          }

                          v17 = 6;
                          if ((*v8 & 0xC) == 8)
                          {
                            if (*(a1 + 72) == *(a1 + 56))
                            {
                              v17 = 2;
                            }

                            else
                            {
                              v17 = 6;
                            }
                          }
                        }

                        break;
                      case 0x10u:
                        if ((*v8 & 0x30) == 0x20)
                        {
                          v17 = ((*v8 & 1) << 8) | 0x1000;
                        }

                        else
                        {
                          v17 = (*v8 & 1) << 8;
                        }

                        break;
                      case 0x20u:
                        if ((*v8 & 0x30) == 0x20)
                        {
                          v17 = 8448;
                        }

                        else
                        {
                          v17 = 256;
                        }

                        break;
                      default:
LABEL_93:
                        v17 = 0;
                        break;
                    }

                    if ((*v8 & 0xC) == 4)
                    {
                      v25 = *(a1 + 72);
                      if (v25)
                      {
                        v27 = *(a1 + 64);
LABEL_99:
                        v24 = HIWORD(*v8) & 0x3F;
                        v28 = *v8 >> 22;
LABEL_100:
                        v30 = *(a1 + 24);
                        if (is_mul_ok(v30, v18))
                        {
                          bitsPerPixel = v28;
                          bitsPerPixel_4 = v24;
                          v31 = v18;
                          spacea = DeviceGray;
                          provider_18746 = create_provider_18746(*(a1 + 56), v30 * v18, a3);
                          if (provider_18746)
                          {
                            v33 = provider_18746;
                            if (spacea)
                            {
                              v34 = spacea;
                            }

                            else
                            {
                              v34 = space;
                            }

                            v35 = CGImageCreate(*(a1 + 20), *(a1 + 24), v15, v19, v31, v34, v17, provider_18746, 0, 0, kCGRenderingIntentDefault);
                            CGDataProviderRelease(v33);
                            if (v25 && (v36 = *(a1 + 24), is_mul_ok(v36, v27)))
                            {
                              v37 = create_provider_18746(v25, v36 * v27, a3);
                              v38 = CGColorSpaceCreateDeviceGray();
                              if (bitsPerPixel_4 <= 8)
                              {
                                v39 = 0;
                              }

                              else
                              {
                                v39 = v17 & 0x3100;
                              }

                              v40 = CGImageCreate(*(a1 + 20), *(a1 + 24), bitsPerPixel_4, bitsPerPixel, v27, v38, v39, v37, 0, 0, kCGRenderingIntentDefault);
                              CGColorSpaceRelease(v38);
                              CGDataProviderRelease(v37);
                              v4 = CGImageCreateWithMaskAndMatte(v35, v40, RIPLayerCreateImage_matte);
                              if (v40)
                              {
                                CFRelease(v40);
                              }

                              if (v35)
                              {
                                CFRelease(v35);
                              }
                            }

                            else
                            {
                              v4 = v35;
                            }
                          }

                          else
                          {
                            v4 = 0;
                          }

                          DeviceGray = spacea;
                        }

                        else
                        {
                          v4 = 0;
                        }

                        if (DeviceGray)
                        {
                          CGColorSpaceRelease(DeviceGray);
                        }

                        goto LABEL_120;
                      }
                    }

                    else
                    {
                      v25 = 0;
                    }

                    v27 = 0;
                    goto LABEL_99;
                  }

                  goto LABEL_24;
                }

LABEL_120:
                (*(*a1 + 48))(a1, 0);
                CGImageSetCachingFlags(v4, 1);
                return v4;
              }

              v13 = create_provider_18746(v7, *(a1 + 48) * v6, a3);
              if (v13)
              {
                v14 = v13;
                v4 = mask_create(*(a1 + 20), *(a1 + 24), 8uLL, 8uLL, *(a1 + 48), v13, &v44, 1, 4);
                CGDataProviderRelease(v14);
                goto LABEL_120;
              }

LABEL_24:
              v4 = 0;
              goto LABEL_120;
            }

            if (v11 != 3)
            {
              if (v11 != 4)
              {
                goto LABEL_120;
              }

              if ((*v8 & 0xCC) == 4)
              {
                if (space && CGColorSpaceGetModel(space) == kCGColorSpaceModelCMYK)
                {
                  DeviceGray = 0;
                }

                else
                {
                  DeviceGray = CGColorSpaceCreateDeviceCMYK();
                }

                v18 = *(a1 + 48);
                v15 = HIWORD(*v8) & 0x3F;
                v19 = *v8 >> 22;
                if (v15 == 16)
                {
                  if ((*v8 & 0x30) == 0x20)
                  {
                    v17 = ((*v8 & 1) << 8) | 0x1000;
                  }

                  else
                  {
                    v17 = (*v8 & 1) << 8;
                  }
                }

                else if (v15 == 32)
                {
                  if ((*v8 & 0x30) == 0x20)
                  {
                    v17 = 8448;
                  }

                  else
                  {
                    v17 = 256;
                  }
                }

                else
                {
                  v17 = 0;
                }

                v25 = *(a1 + 72);
                if (v25)
                {
                  v27 = *(a1 + 64);
                }

                else
                {
                  v27 = 0;
                }

                v24 = HIWORD(*v8) & 0x3F;
                v28 = v24;
                goto LABEL_100;
              }

              goto LABEL_24;
            }

            if (space && CGColorSpaceGetModel(space) == kCGColorSpaceModelRGB)
            {
              DeviceGray = 0;
            }

            else
            {
              DeviceGray = CGColorSpaceCreateDeviceRGB();
            }

            v15 = HIWORD(*v8) & 0x3F;
            v16 = *v8 >> 6;
            if (v16 == 2)
            {
              v17 = 5;
              if ((*v8 & 0xC) == 8)
              {
                if (*(a1 + 72) == *(a1 + 56))
                {
                  v17 = 1;
                }

                else
                {
                  v17 = 5;
                }
              }
            }

            else if (v16 == 1)
            {
              v17 = 6;
              if ((*v8 & 0xC) == 8)
              {
                if (*(a1 + 72) == *(a1 + 56))
                {
                  v17 = 2;
                }

                else
                {
                  v17 = 6;
                }
              }
            }

            else
            {
              v17 = 0;
            }

            v18 = *(a1 + 48);
            v19 = *v8 >> 22;
            if ((HIWORD(*v8) & 0x3Fu) > 0xF)
            {
              if (v15 != 16)
              {
                if (v15 == 32)
                {
                  if ((*v8 & 0x30) == 0x20)
                  {
                    v22 = 8448;
                  }

                  else
                  {
                    v22 = 256;
                  }

                  v17 |= v22;
                }

                goto LABEL_63;
              }

              v17 = v17 & 0xFFFFFEFF | ((*v8 & 1) << 8);
              v21 = v17 | 0x1000;
              v23 = (*v8 & 0x30) == 32;
              goto LABEL_61;
            }

            if (v15 == 5)
            {
              if (v19 == 16)
              {
                v20 = *v8 & 0x30;
                v21 = v17 | 0x1000;
                goto LABEL_59;
              }
            }

            else if (v15 == 8 && v19 == 32)
            {
              v20 = *v8 & 0x30;
              v21 = v17 | 0x2000;
LABEL_59:
              v23 = v20 == 16;
LABEL_61:
              if (v23)
              {
                v17 = v21;
              }
            }

LABEL_63:
            if ((*v8 & 0xC) == 4)
            {
              v24 = 0;
              v25 = 0;
              v26 = *(a1 + 72);
              if (!v26 || v26 == *(a1 + 56))
              {
                v28 = 0;
                v27 = 0;
              }

              else
              {
                v27 = *(a1 + 64);
                v24 = (v15 + 7) & 0x78;
                v25 = *(a1 + 72);
                v28 = v24;
              }
            }

            else
            {
              v25 = 0;
              v24 = 0;
              v28 = 0;
              v27 = 0;
            }

            goto LABEL_100;
          }
        }
      }
    }
  }

  return 0;
}

const __CFData *create_provider_18746(UInt8 *bytes, unint64_t length, char a3)
{
  if (a3)
  {

    return CGDataProviderCreateWithCopyOfData(bytes, length);
  }

  else
  {
    v5 = CFDataCreateWithBytesNoCopy(0, bytes, length, *MEMORY[0x1E695E498]);
    v6 = CGDataProviderCreateWithCFData(v5);
    if (v5)
    {
      CFRelease(v5);
    }

    return v6;
  }
}

void RIPLayerSaveTGA(uint64_t a1, const char *a2)
{
  if (a1)
  {
    if (*a1 == RIPLayer_ripl_class && *(a1 + 20) >= 1 && *(a1 + 24) >= 1)
    {
      if (*(a1 + 56))
      {
        if (**(a1 + 32))
        {
          __filename = 0;
          asprintf(&__filename, "%s-%d.tga", a2, RIPLayerSaveTGA_count);
          ++RIPLayerSaveTGA_count;
          __ptr = 196608;
          v9 = 0;
          v10 = 0;
          v3 = *(a1 + 24);
          WORD2(v9) = *(a1 + 20);
          HIWORD(v9) = v3;
          LOBYTE(v10) = 8;
          if (__filename)
          {
            v4 = fopen(__filename, "wb");
            if (v4)
            {
              v5 = v4;
              fprintf(*MEMORY[0x1E69E9848], "Writing layer contents to '%s'\n", __filename);
              fwrite(&__ptr, 0x12uLL, 1uLL, v5);
              if (*(a1 + 24) >= 1)
              {
                v6 = 0;
                v7 = *(a1 + 56);
                do
                {
                  fwrite(v7, *(a1 + 20), 1uLL, v5);
                  ++v6;
                  v7 += *(a1 + 48);
                }

                while (v6 < *(a1 + 24));
              }

              fclose(v5);
            }

            free(__filename);
          }
        }
      }
    }
  }
}

uint64_t CGDisplayListEntryGetType(uint64_t a1)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryGetType", 34, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "entry != nullptr", "entry argument is NULL", v1, v2);
  }

  return *(a1 + 8);
}

double CGDisplayListEntryGetBoundingBox(uint64_t a1)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryGetBoundingBox", 40, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "entry != nullptr", "entry argument is NULL", v1, v2);
  }

  return *(a1 + 16);
}

uint64_t _CGDisplayListEntryIsHidden(uint64_t a1)
{
  if (!a1)
  {
    _CGHandleAssert("_CGDisplayListEntryIsHidden", 48, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "entryRef != nullptr", "entry argument is NULL", v1, v2);
  }

  return (*(a1 + 10) >> 6) & 1;
}

uint64_t _CGDisplayListEntrySetHidden(uint64_t result, int a2)
{
  if (!result)
  {
    _CGHandleAssert("_CGDisplayListEntrySetHidden", 57, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "entryRef != nullptr", "entry argument is NULL", v2, v3);
  }

  if (a2)
  {
    v4 = 0x400000;
  }

  else
  {
    v4 = 0;
  }

  *(result + 8) = *(result + 8) & 0xFFBFFFFF | v4;
  return result;
}

uint64_t CGDisplayListEntryImageGetImage(const void *a1)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryImageGetImage", 70, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "entry != nullptr", "entry argument is NULL");
  }

  if (!v1)
  {
    _CGHandleAssert("CGDisplayListEntryImageGetImage", 70, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "imageEntry != nullptr", "entry is not of typeDisplayListEntryImage");
  }

  v2 = v1[10];
  if (v2)
  {
    return *(v2 + 16);
  }

  else
  {
    return 0;
  }
}

__n128 CGDisplayListEntryImageGetCTM@<Q0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryImageGetCTM", 79, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "entry != nullptr", "entry argument is NULL");
  }

  if (!v3)
  {
    _CGHandleAssert("CGDisplayListEntryImageGetCTM", 79, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "imageEntry != nullptr", "entry is not of typeDisplayListEntryImage");
  }

  v4 = *(v3 + 104);
  *a2 = *(v3 + 88);
  *(a2 + 16) = v4;
  result = *(v3 + 120);
  *(a2 + 32) = result;
  return result;
}

uint64_t CGDisplayListEntryImageGetInterpolationQuality(const void *a1)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryImageGetInterpolationQuality", 86, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "entry != nullptr", "entry argument is NULL");
  }

  if (!v1)
  {
    _CGHandleAssert("CGDisplayListEntryImageGetInterpolationQuality", 86, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "imageEntry != nullptr", "entry is not of typeDisplayListEntryImage");
  }

  return v1[34];
}

uint64_t CGDisplayListEntryImageGetRenderingIntent(const void *a1)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryImageGetRenderingIntent", 93, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "entry != nullptr", "entry argument is NULL");
  }

  if (!v1)
  {
    _CGHandleAssert("CGDisplayListEntryImageGetRenderingIntent", 93, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "imageEntry != nullptr", "entry is not of typeDisplayListEntryImage");
  }

  return v1[37];
}

uint64_t CGDisplayListEntryGlyphsGetFont(const void *a1)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryGlyphsGetFont", 102, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "entry != nullptr", "entry argument is NULL");
  }

  if (!v1)
  {
    _CGHandleAssert("CGDisplayListEntryGlyphsGetFont", 102, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "glyphsEntry != nullptr", "entry is not of typeDisplayListEntryGlyphs");
  }

  v2 = v1[10];
  if (v2)
  {
    return *(v2 + 16);
  }

  else
  {
    return 0;
  }
}

__n128 CGDisplayListEntryGlyphsGetCTM@<Q0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryGlyphsGetCTM", 111, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "entry != nullptr", "entry argument is NULL");
  }

  if (!v3)
  {
    _CGHandleAssert("CGDisplayListEntryGlyphsGetCTM", 111, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "glyphsEntry != nullptr", "entry is not of typeDisplayListEntryGlyphs");
  }

  v4 = *(v3 + 104);
  *a2 = *(v3 + 88);
  *(a2 + 16) = v4;
  result = *(v3 + 120);
  *(a2 + 32) = result;
  return result;
}

__n128 CGDisplayListEntryGlyphsGetFTM@<Q0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryGlyphsGetFTM", 118, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "entry != nullptr", "entry argument is NULL");
  }

  if (!v3)
  {
    _CGHandleAssert("CGDisplayListEntryGlyphsGetFTM", 118, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "glyphsEntry != nullptr", "entry is not of typeDisplayListEntryGlyphs");
  }

  v4 = *(v3 + 152);
  *a2 = *(v3 + 136);
  *(a2 + 16) = v4;
  result = *(v3 + 168);
  *(a2 + 32) = result;
  return result;
}

double CGDisplayListEntryGlyphsGetScale(const void *a1)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryGlyphsGetScale", 125, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "entry != nullptr", "entry argument is NULL");
  }

  if (!v1)
  {
    _CGHandleAssert("CGDisplayListEntryGlyphsGetScale", 125, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "glyphsEntry != nullptr", "entry is not of typeDisplayListEntryGlyphs");
  }

  return v1[23];
}

double CGDisplayListEntryGlyphsGetDilation(const void *a1)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryGlyphsGetDilation", 132, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "entry != nullptr", "entry argument is NULL");
  }

  if (!v1)
  {
    _CGHandleAssert("CGDisplayListEntryGlyphsGetDilation", 132, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "glyphsEntry != nullptr", "entry is not of typeDisplayListEntryGlyphs");
  }

  return v1[24];
}

uint64_t CGDisplayListEntryGlyphsGetSmoothingBGColor(const void *a1)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryGlyphsGetSmoothingBGColor", 139, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "entry != nullptr", "entry argument is NULL");
  }

  if (!v1)
  {
    _CGHandleAssert("CGDisplayListEntryGlyphsGetSmoothingBGColor", 139, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "glyphsEntry != nullptr", "entry is not of typeDisplayListEntryGlyphs");
  }

  v2 = v1[26];
  if (v2)
  {
    return *(v2 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t CGDisplayListEntryGlyphsGetTextDrawingMode(const void *a1)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryGlyphsGetTextDrawingMode", 147, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "entry != nullptr", "entry argument is NULL");
  }

  if (!v1)
  {
    _CGHandleAssert("CGDisplayListEntryGlyphsGetTextDrawingMode", 147, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "glyphsEntry != nullptr", "entry is not of typeDisplayListEntryGlyphs");
  }

  return v1[54];
}

uint64_t CGDisplayListEntryGlyphsGetFontRenderingStyle(const void *a1)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryGlyphsGetFontRenderingStyle", 154, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "entry != nullptr", "entry argument is NULL");
  }

  if (!v1)
  {
    _CGHandleAssert("CGDisplayListEntryGlyphsGetFontRenderingStyle", 154, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "glyphsEntry != nullptr", "entry is not of typeDisplayListEntryGlyphs");
  }

  return v1[55];
}

uint64_t CGDisplayListEntryGlyphsGetShouldDrawBitmapRuns(const void *a1)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryGlyphsGetShouldDrawBitmapRuns", 161, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "entry != nullptr", "entry argument is NULL");
  }

  if (!v1)
  {
    _CGHandleAssert("CGDisplayListEntryGlyphsGetShouldDrawBitmapRuns", 161, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "glyphsEntry != nullptr", "entry is not of typeDisplayListEntryGlyphs");
  }

  return v1[224];
}

uint64_t CGDisplayListEntryGlyphsGetCount(const void *a1)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryGlyphsGetCount", 168, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "entry != nullptr", "entry argument is NULL");
  }

  if (!v1)
  {
    _CGHandleAssert("CGDisplayListEntryGlyphsGetCount", 168, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "glyphsEntry != nullptr", "entry is not of typeDisplayListEntryGlyphs");
  }

  return v1[31];
}

CFDataRef CGDisplayListEntryGlyphsCopyGlyphs(const void *a1)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryGlyphsCopyGlyphs", 175, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "entry != nullptr", "entry argument is NULL");
  }

  if (!v1)
  {
    _CGHandleAssert("CGDisplayListEntryGlyphsCopyGlyphs", 175, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "glyphsEntry != nullptr", "entry is not of typeDisplayListEntryGlyphs");
  }

  v2 = *(v1 + 29);
  if (!v2)
  {
    return 0;
  }

  v3 = 2 * *(v1 + 31);
  v4 = *MEMORY[0x1E695E480];

  return CFDataCreate(v4, v2, v3);
}

CFDataRef CGDisplayListEntryGlyphsCopyPositions(const void *a1)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryGlyphsCopyPositions", 186, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "entry != nullptr", "entry argument is NULL");
  }

  if (!v1)
  {
    _CGHandleAssert("CGDisplayListEntryGlyphsCopyPositions", 186, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "glyphsEntry != nullptr", "entry is not of typeDisplayListEntryGlyphs");
  }

  v2 = *(v1 + 30);
  if (!v2)
  {
    return 0;
  }

  v3 = 16 * *(v1 + 31);
  v4 = *MEMORY[0x1E695E480];

  return CFDataCreate(v4, v2, v3);
}

__CFString *CGDisplayListEntryGlyphsCopyCharacters(const void *a1)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryGlyphsCopyCharacters", 197, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "entry != nullptr", "entry argument is NULL");
  }

  if (!v1)
  {
LABEL_44:
    _CGHandleAssert("CGDisplayListEntryGlyphsCopyCharacters", 197, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "glyphsEntry != nullptr", "entry is not of typeDisplayListEntryGlyphs");
  }

  v2 = v1;
  if (!v1[31])
  {
    return 0;
  }

  if (!v1[29])
  {
    return 0;
  }

  v3 = v1[10];
  if (!v3)
  {
    return 0;
  }

  v4 = *(v3 + 16);
  if (v4)
  {
    explicit = atomic_load_explicit(&v4[2].length, memory_order_acquire);
    if (explicit)
    {
      Property = CGPropertiesGetProperty(explicit, @"com.apple.CoreGraphics.CGPDFFontToUnicodeCMap");
    }

    else
    {
      Property = 0;
    }

    get_unimap(v4);
    std::vector<unsigned short>::vector[abi:fe200100](&__src, 256);
    v8 = v2[31];
    if (v8 < 1)
    {
      goto LABEL_37;
    }

    v9 = 0;
    v10 = v2[29];
    v11 = &v10[v8];
    while (Property)
    {
      v22 = 0;
      if (CGFontGetCIDsForGlyphs(v4, v10, 1, &v22))
      {
        if (v24 == __src)
        {
          goto LABEL_43;
        }

        v12 = &v22;
      }

      else
      {
        v12 = v10;
        if (v24 == __src)
        {
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }
      }

      v14 = *(Property[2] + 48);
      if (v14)
      {
        unichars = cmap_bf_set_get_unichars(*(v14 + 16), *v12, __src);
LABEL_23:
        if (unichars > 0)
        {
          v15 = __src;
          v16 = 2 * unichars;
          if (unichars <= -v9 >> 1)
          {
            memmove(v9, __src, 2 * unichars);
            v9 += v16;
          }

          else
          {
            v17 = v11;
            v18 = v9;
            v19 = unichars + (v9 >> 1);
            if (v19 < 0)
            {
              std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
            }

            if (v19)
            {
              std::__allocate_at_least[abi:fe200100]<std::allocator<unsigned short>>(v19);
            }

            v20 = (2 * (v9 >> 1));
            v9 = &v20[unichars];
            do
            {
              v21 = *v15++;
              *v20++ = v21;
              v16 -= 2;
            }

            while (v16);
            memcpy(0, 0, v18);
            v11 = v17;
          }
        }
      }

      if (++v10 >= v11)
      {
        if (v9)
        {
          v4 = CFStringCreateWithCharacters(*MEMORY[0x1E695E480], 0, v9 >> 1);
LABEL_38:
          if (__src)
          {
            v24 = __src;
            operator delete(__src);
          }

          return v4;
        }

LABEL_37:
        v4 = 0;
        goto LABEL_38;
      }
    }

    if (v24 == __src)
    {
      goto LABEL_43;
    }

    unichars = CGFontGetUnicharsForGlyph(v4, *v10, __src);
    goto LABEL_23;
  }

  return v4;
}

void sub_1842B4F90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (v13)
  {
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CGDisplayListEntryPathGetPath(const void *a1)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryPathGetPath", 241, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "entry != nullptr", "entry argument is NULL");
  }

  if (!v1)
  {
    _CGHandleAssert("CGDisplayListEntryPathGetPath", 241, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "pathEntry != nullptr", "entry is not of typeDisplayListEntryPath");
  }

  return v1[11];
}

__n128 CGDisplayListEntryPathGetCTM@<Q0>(const void *a1@<X0>, __n128 *a2@<X8>)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryPathGetCTM", 247, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "entry != nullptr", "entry argument is NULL");
  }

  if (!v3)
  {
    _CGHandleAssert("CGDisplayListEntryPathGetCTM", 247, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "pathEntry != nullptr", "entry is not of typeDisplayListEntryPath");
  }

  v4 = v3[7];
  *a2 = v3[6];
  a2[1] = v4;
  result = v3[8];
  a2[2] = result;
  return result;
}

uint64_t CGDisplayListEntryPathGetDrawingMode(const void *a1)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryPathGetDrawingMode", 253, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "entry != nullptr", "entry argument is NULL");
  }

  if (!v1)
  {
    _CGHandleAssert("CGDisplayListEntryPathGetDrawingMode", 253, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "pathEntry != nullptr", "entry is not of typeDisplayListEntryPath");
  }

  return v1[20];
}

__n128 CGDisplayListEntryRectsGetCTM@<Q0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryRectsGetCTM", 262, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "entry != nullptr", "entry argument is NULL");
  }

  if (!v3)
  {
    _CGHandleAssert("CGDisplayListEntryRectsGetCTM", 262, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "rectsEntry != nullptr", "entry is not of typeDisplayListEntryRects");
  }

  v4 = *(v3 + 104);
  *a2 = *(v3 + 88);
  *(a2 + 16) = v4;
  result = *(v3 + 120);
  *(a2 + 32) = result;
  return result;
}

uint64_t CGDisplayListEntryRectsGetDrawingMode(const void *a1)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryRectsGetDrawingMode", 269, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "entry != nullptr", "entry argument is NULL");
  }

  if (!v1)
  {
    _CGHandleAssert("CGDisplayListEntryRectsGetDrawingMode", 269, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "rectsEntry != nullptr", "entry is not of typeDisplayListEntryRects");
  }

  return v1[20];
}

CFDataRef CGDisplayListEntryRectsCopyRects(const void *a1)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryRectsCopyRects", 276, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "entry != nullptr", "entry argument is NULL");
  }

  if (!v1)
  {
    _CGHandleAssert("CGDisplayListEntryRectsCopyRects", 276, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "rectsEntry != nullptr", "entry is not of typeDisplayListEntryRects");
  }

  v2 = *(v1 + 17);
  if (!v2)
  {
    return 0;
  }

  v3 = 32 * *(v1 + 18);
  v4 = *MEMORY[0x1E695E480];

  return CFDataCreate(v4, v2, v3);
}

CFDataRef CGDisplayListEntryLinesCopyPoints(const void *a1)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryLinesCopyPoints", 289, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "entry != nullptr", "entry argument is NULL");
  }

  if (!v1)
  {
    _CGHandleAssert("CGDisplayListEntryLinesCopyPoints", 289, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "linesEntry != nullptr", "entry is not of typeDisplayListEntryLines");
  }

  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = 16 * *(v1 + 17);
  v4 = *MEMORY[0x1E695E480];

  return CFDataCreate(v4, v2, v3);
}

__n128 CGDisplayListEntryLinesGetCTM@<Q0>(const void *a1@<X0>, __n128 *a2@<X8>)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryLinesGetCTM", 300, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "entry != nullptr", "entry argument is NULL");
  }

  if (!v3)
  {
    _CGHandleAssert("CGDisplayListEntryLinesGetCTM", 300, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "linesEntry != nullptr", "entry is not of typeDisplayListEntryLines");
  }

  v4 = v3[6];
  *a2 = v3[5];
  a2[1] = v4;
  result = v3[7];
  a2[2] = result;
  return result;
}

uint64_t CGDisplayListEntryShadingGetShading(const void *a1)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryShadingGetShading", 309, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "entry != nullptr", "entry argument is NULL");
  }

  if (!v1)
  {
    _CGHandleAssert("CGDisplayListEntryShadingGetShading", 309, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "shadingEntry != nullptr", "entry is not of typeDisplayListEntryShading");
  }

  v2 = v1[10];
  if (v2)
  {
    return *(v2 + 16);
  }

  else
  {
    return 0;
  }
}

__n128 CGDisplayListEntryShadingGetCTM@<Q0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryShadingGetCTM", 318, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "entry != nullptr", "entry argument is NULL");
  }

  if (!v3)
  {
    _CGHandleAssert("CGDisplayListEntryShadingGetCTM", 318, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "shadingEntry != nullptr", "entry is not of typeDisplayListEntryShading");
  }

  v4 = *(v3 + 104);
  *a2 = *(v3 + 88);
  *(a2 + 16) = v4;
  result = *(v3 + 120);
  *(a2 + 32) = result;
  return result;
}

uint64_t CGDisplayListEntryShadingGetInterpolationQuality(const void *a1)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryShadingGetInterpolationQuality", 325, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "entry != nullptr", "entry argument is NULL");
  }

  if (!v1)
  {
    _CGHandleAssert("CGDisplayListEntryShadingGetInterpolationQuality", 325, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "shadingEntry != nullptr", "entry is not of typeDisplayListEntryShading");
  }

  return v1[34];
}

uint64_t CGDisplayListEntryShadingGetRenderingIntent(const void *a1)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryShadingGetRenderingIntent", 332, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "entry != nullptr", "entry argument is NULL");
  }

  if (!v1)
  {
    _CGHandleAssert("CGDisplayListEntryShadingGetRenderingIntent", 332, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "shadingEntry != nullptr", "entry is not of typeDisplayListEntryShading");
  }

  return v1[35];
}

uint64_t CGDisplayListEntryGradientGetGradient(const void *a1)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryGradientGetGradient", 341, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "entry != nullptr", "entry argument is NULL");
  }

  if (!v1)
  {
    _CGHandleAssert("CGDisplayListEntryGradientGetGradient", 341, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "gradientEntry != nullptr", "entry is not of typeDisplayListEntryGradient");
  }

  v2 = v1[10];
  if (v2)
  {
    return *(v2 + 16);
  }

  else
  {
    return 0;
  }
}

__n128 CGDisplayListEntryGradientGetCTM@<Q0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryGradientGetCTM", 350, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "entry != nullptr", "entry argument is NULL");
  }

  if (!v3)
  {
    _CGHandleAssert("CGDisplayListEntryGradientGetCTM", 350, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "gradientEntry != nullptr", "entry is not of typeDisplayListEntryGradient");
  }

  v4 = *(v3 + 104);
  *a2 = *(v3 + 88);
  *(a2 + 16) = v4;
  result = *(v3 + 120);
  *(a2 + 32) = result;
  return result;
}

uint64_t CGDisplayListEntryGradientGetGradientType(const void *a1)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryGradientGetGradientType", 357, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "entry != nullptr", "entry argument is NULL");
  }

  if (!v1)
  {
    _CGHandleAssert("CGDisplayListEntryGradientGetGradientType", 357, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "gradientEntry != nullptr", "entry is not of typeDisplayListEntryGradient");
  }

  v2 = v1[34];
  if (v2 - 1 >= 3)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t CGDisplayListEntryGradientGetDrawingOptions(const void *a1)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryGradientGetDrawingOptions", 379, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "entry != nullptr", "entry argument is NULL");
  }

  if (!v1)
  {
    _CGHandleAssert("CGDisplayListEntryGradientGetDrawingOptions", 379, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "gradientEntry != nullptr", "entry is not of typeDisplayListEntryGradient");
  }

  return v1[35];
}

double CGDisplayListEntryGradientGetStartPoint(const void *a1)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryGradientGetStartPoint", 387, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "entry != nullptr", "entry argument is NULL");
  }

  if (!v1)
  {
    _CGHandleAssert("CGDisplayListEntryGradientGetStartPoint", 387, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "gradientEntry != nullptr", "entry is not of typeDisplayListEntryGradient");
  }

  if (*(v1 + 34) != 1)
  {
    _CGHandleAssert("CGDisplayListEntryGradientGetStartPoint", 388, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "gradientEntry->getGradientType() == CG::DisplayListEntryGradient::DLGradientTypeLinear", "gradient entry is not of type CGDisplayListEntryGradientLinear");
  }

  return v1[18];
}

double CGDisplayListEntryGradientGetEndPoint(const void *a1)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryGradientGetEndPoint", 395, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "entry != nullptr", "entry argument is NULL");
  }

  if (!v1)
  {
    _CGHandleAssert("CGDisplayListEntryGradientGetEndPoint", 395, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "gradientEntry != nullptr", "entry is not of typeDisplayListEntryGradient");
  }

  if (*(v1 + 34) != 1)
  {
    _CGHandleAssert("CGDisplayListEntryGradientGetEndPoint", 396, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "gradientEntry->getGradientType() == CG::DisplayListEntryGradient::DLGradientTypeLinear", "gradient entry is not of type CGDisplayListEntryGradientLinear");
  }

  return v1[20];
}

double CGDisplayListEntryGradientGetStartCenter(const void *a1)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryGradientGetStartCenter", 404, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "entry != nullptr", "entry argument is NULL");
  }

  if (!v1)
  {
    _CGHandleAssert("CGDisplayListEntryGradientGetStartCenter", 404, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "gradientEntry != nullptr", "entry is not of typeDisplayListEntryGradient");
  }

  if (*(v1 + 34) != 2)
  {
    _CGHandleAssert("CGDisplayListEntryGradientGetStartCenter", 405, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "gradientEntry->getGradientType() == CG::DisplayListEntryGradient::DLGradientTypeRadial", "gradient entry is not of type CGDisplayListEntryGradientRadial");
  }

  return v1[22];
}

double CGDisplayListEntryGradientGetEndCenter(const void *a1)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryGradientGetEndCenter", 412, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "entry != nullptr", "entry argument is NULL");
  }

  if (!v1)
  {
    _CGHandleAssert("CGDisplayListEntryGradientGetEndCenter", 412, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "gradientEntry != nullptr", "entry is not of typeDisplayListEntryGradient");
  }

  if (*(v1 + 34) != 2)
  {
    _CGHandleAssert("CGDisplayListEntryGradientGetEndCenter", 413, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "gradientEntry->getGradientType() == CG::DisplayListEntryGradient::DLGradientTypeRadial", "gradient entry is not of type CGDisplayListEntryGradientRadial");
  }

  return v1[24];
}

double CGDisplayListEntryGradientGetStartRadius(const void *a1)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryGradientGetStartRadius", 420, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "entry != nullptr", "entry argument is NULL");
  }

  if (!v1)
  {
    _CGHandleAssert("CGDisplayListEntryGradientGetStartRadius", 420, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "gradientEntry != nullptr", "entry is not of typeDisplayListEntryGradient");
  }

  if (*(v1 + 34) != 2)
  {
    _CGHandleAssert("CGDisplayListEntryGradientGetStartRadius", 421, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "gradientEntry->getGradientType() == CG::DisplayListEntryGradient::DLGradientTypeRadial", "gradient entry is not of type CGDisplayListEntryGradientRadial");
  }

  return v1[26];
}

double CGDisplayListEntryGradientGetEndRadius(const void *a1)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryGradientGetEndRadius", 428, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "entry != nullptr", "entry argument is NULL");
  }

  if (!v1)
  {
    _CGHandleAssert("CGDisplayListEntryGradientGetEndRadius", 428, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "gradientEntry != nullptr", "entry is not of typeDisplayListEntryGradient");
  }

  if (*(v1 + 34) != 2)
  {
    _CGHandleAssert("CGDisplayListEntryGradientGetEndRadius", 429, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "gradientEntry->getGradientType() == CG::DisplayListEntryGradient::DLGradientTypeRadial", "gradient entry is not of type CGDisplayListEntryGradientRadial");
  }

  return v1[27];
}

double CGDisplayListEntryGradientGetCenter(const void *a1)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryGradientGetCenter", 437, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "entry != nullptr", "entry argument is NULL");
  }

  if (!v1)
  {
    _CGHandleAssert("CGDisplayListEntryGradientGetCenter", 437, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "gradientEntry != nullptr", "entry is not of typeDisplayListEntryGradient");
  }

  if (*(v1 + 34) != 3)
  {
    _CGHandleAssert("CGDisplayListEntryGradientGetCenter", 438, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "gradientEntry->getGradientType() == CG::DisplayListEntryGradient::DLGradientTypeConic", "gradient entry is not of type CGDisplayListEntryGradientConic");
  }

  return v1[28];
}

double CGDisplayListEntryGradientGetAngle(const void *a1)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryGradientGetAngle", 445, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "entry != nullptr", "entry argument is NULL");
  }

  if (!v1)
  {
    _CGHandleAssert("CGDisplayListEntryGradientGetAngle", 445, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "gradientEntry != nullptr", "entry is not of typeDisplayListEntryGradient");
  }

  if (*(v1 + 34) != 3)
  {
    _CGHandleAssert("CGDisplayListEntryGradientGetAngle", 446, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "gradientEntry->getGradientType() == CG::DisplayListEntryGradient::DLGradientTypeConic", "gradient entry is not of type CGDisplayListEntryGradientConic");
  }

  return v1[30];
}

uint64_t CGDisplayListEntryDisplayListGetDisplayList(const void *a1)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryDisplayListGetDisplayList", 455, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "entry != nullptr", "entry argument is NULL");
  }

  if (!v1)
  {
    _CGHandleAssert("CGDisplayListEntryDisplayListGetDisplayList", 455, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "displayListEntry != nullptr", "entry is not of typeDisplayListEntryDisplayList");
  }

  v2 = v1[10];
  if (v2)
  {
    return *(v2 + 16);
  }

  else
  {
    return 0;
  }
}

__n128 CGDisplayListEntryDisplayListGetCTM@<Q0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryDisplayListGetCTM", 464, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "entry != nullptr", "entry argument is NULL");
  }

  if (!v3)
  {
    _CGHandleAssert("CGDisplayListEntryDisplayListGetCTM", 464, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "displayListEntry != nullptr", "entry is not of typeDisplayListEntryDisplayList");
  }

  v4 = *(v3 + 104);
  *a2 = *(v3 + 88);
  *(a2 + 16) = v4;
  result = *(v3 + 120);
  *(a2 + 32) = result;
  return result;
}

uint64_t CGDisplayListEntryDisplayListGetInterpolationQuality(const void *a1)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryDisplayListGetInterpolationQuality", 471, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "entry != nullptr", "entry argument is NULL");
  }

  if (!v1)
  {
    _CGHandleAssert("CGDisplayListEntryDisplayListGetInterpolationQuality", 471, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "displayListEntry != nullptr", "entry is not of typeDisplayListEntryDisplayList");
  }

  return v1[34];
}

uint64_t CGDisplayListEntryDisplayListGetImageRenderingIntent(const void *a1)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryDisplayListGetImageRenderingIntent", 478, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "entry != nullptr", "entry argument is NULL");
  }

  if (!v1)
  {
    _CGHandleAssert("CGDisplayListEntryDisplayListGetImageRenderingIntent", 478, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "displayListEntry != nullptr", "entry is not of typeDisplayListEntryDisplayList");
  }

  return v1[35];
}

uint64_t CGDisplayListEntryActionGetParameters(const void *a1)
{
  if (!a1)
  {
    _CGHandleAssert("CGDisplayListEntryActionGetParameters", 487, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "entry != nullptr", "entry argument is NULL");
  }

  if (!v1)
  {
    _CGHandleAssert("CGDisplayListEntryActionGetParameters", 487, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DisplayList/CGDisplayListEntry.cpp", "actionEntry != nullptr", "entry is not of typeDisplayListEntryAction");
  }

  v2 = v1[11];
  if (v2)
  {
    return *(v2 + 16);
  }

  else
  {
    return 0;
  }
}

void CGPDFContentStreamRelease(CGPDFContentStreamRef cs)
{
  if (cs)
  {
    CFRelease(cs);
  }
}

CGPDFContentStreamRef CGPDFContentStreamRetain(CGPDFContentStreamRef cs)
{
  if (cs)
  {
    CFRetain(cs);
  }

  return cs;
}

CFArrayRef CGPDFContentStreamGetStreams(CFArrayRef cs)
{
  if (cs)
  {
    return *(cs + 3);
  }

  return cs;
}

CGPDFObjectRef CGPDFContentStreamGetResource(CGPDFContentStreamRef cs, const char *category, const char *name)
{
  if (!name)
  {
    return 0;
  }

  v4 = cs;
  if (!*name || cs == 0)
  {
    return 0;
  }

  do
  {
    v9 = *(v4 + 4);
    os_unfair_lock_lock(v9 + 20);
    resource = get_resource(v9, category, name);
    os_unfair_lock_unlock(v9 + 20);
    if (resource)
    {
      break;
    }

    if (!*name)
    {
      break;
    }

    v4 = *(v4 + 5);
  }

  while (v4);
  return resource;
}

CGColorSpace *CGPDFContentStreamGetColorSpace(CGColorSpace *result, const char *a2)
{
  if (result)
  {
    v3 = result;
    while (1)
    {
      result = CGPDFResourcesGetColorSpace(*(v3 + 4), a2);
      if (result)
      {
        break;
      }

      v3 = *(v3 + 5);
      if (!v3)
      {
        return 0;
      }
    }
  }

  return result;
}

const void *CGPDFContentStreamGetFont(uint64_t a1, const char *a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = a1;
  v4 = *MEMORY[0x1E695E480];
  v5 = *MEMORY[0x1E695E498];
  while (1)
  {
    v6 = *(v3 + 32);
    if (v6 && a2 != 0)
    {
      os_unfair_lock_lock((v6 + 80));
      v8 = CFStringCreateWithCStringNoCopy(v4, a2, 0x600u, v5);
      v9 = *(v6 + 32);
      if (!v8 || !v9 || (Value = CFDictionaryGetValue(v9, v8)) == 0)
      {
        resource = get_resource(v6, "Font", a2);
        if (resource && *(resource + 2) == 8 && (v12 = CGPDFFontCreate(*(resource + 4))) != 0)
        {
          v13 = table_set_value((v6 + 32), v8, v12);
          Value = v13;
          if (v13)
          {
            CFRelease(v13);
          }
        }

        else
        {
          Value = 0;
        }
      }

      CFRelease(v8);
      os_unfair_lock_unlock((v6 + 80));
      if (Value)
      {
        break;
      }
    }

    v3 = *(v3 + 40);
    if (!v3)
    {
      return 0;
    }
  }

  return Value;
}

void *CGPDFContentStreamGetXObject(void *result, const char *a2)
{
  if (result)
  {
    v3 = result;
    while (1)
    {
      result = CGPDFResourcesCopyXObject(v3[4], a2);
      if (result)
      {
        break;
      }

      v3 = v3[5];
      if (!v3)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t CGPDFContentStreamGetXObjectStream(uint64_t result, const char *a2)
{
  if (result)
  {
    v3 = result;
    while (1)
    {
      v4 = CGPDFResourcesCopyXObject(*(v3 + 32), a2);
      if (v4)
      {
        break;
      }

      v3 = *(v3 + 40);
      if (!v3)
      {
        return 0;
      }
    }

    return v4[3];
  }

  return result;
}

void *CGPDFContentStreamGetPattern(void *result, const char *a2)
{
  if (result)
  {
    v3 = result;
    while (1)
    {
      result = CGPDFResourcesGetPattern(v3[4], a2);
      if (result)
      {
        break;
      }

      v3 = v3[5];
      if (!v3)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t CGPDFContentStreamGetPatternStream(uint64_t result, const char *a2)
{
  if (result)
  {
    v3 = result;
    while (1)
    {
      Pattern = CGPDFResourcesGetPattern(*(v3 + 32), a2);
      if (Pattern)
      {
        break;
      }

      v3 = *(v3 + 40);
      if (!v3)
      {
        return 0;
      }
    }

    if (*(Pattern + 4) == 1)
    {
      return Pattern[3];
    }

    return 0;
  }

  return result;
}

void *CGPDFContentStreamGetShading(void *result, const char *a2)
{
  if (result)
  {
    v3 = result;
    while (1)
    {
      result = CGPDFResourcesGetShading(v3[4], a2);
      if (result)
      {
        break;
      }

      v3 = v3[5];
      if (!v3)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t CGPDFContentStreamGetShadingDictionary(uint64_t result, const char *a2)
{
  if (result)
  {
    v3 = result;
    while (1)
    {
      Shading = CGPDFResourcesGetShading(*(v3 + 32), a2);
      if (Shading)
      {
        break;
      }

      v3 = *(v3 + 40);
      if (!v3)
      {
        return 0;
      }
    }

    return Shading[3];
  }

  return result;
}

void *CGPDFContentStreamGetPropertyList(uint64_t a1, const char *a2)
{
  if (a1)
  {
    v3 = a1;
    v4 = *MEMORY[0x1E695E480];
    v5 = *MEMORY[0x1E695E498];
    do
    {
      v6 = *(v3 + 32);
      if (v6)
      {
        v7 = a2 == 0;
      }

      else
      {
        v7 = 1;
      }

      if (!v7)
      {
        os_unfair_lock_lock((v6 + 80));
        v8 = CFStringCreateWithCStringNoCopy(v4, a2, 0x600u, v5);
        v9 = *(v6 + 72);
        if (v8)
        {
          if (v9)
          {
            Value = CFDictionaryGetValue(v9, v8);
            if (Value)
            {
              goto LABEL_13;
            }
          }
        }

        resource = get_resource(v6, "Properties", a2);
        if (resource && *(resource + 2) == 8)
        {
          Value = table_set_value((v6 + 72), v8, *(resource + 4));
LABEL_13:
          CFRelease(v8);
          os_unfair_lock_unlock((v6 + 80));
          if (Value)
          {
            return Value;
          }

          goto LABEL_16;
        }

        CFRelease(v8);
        os_unfair_lock_unlock((v6 + 80));
      }

LABEL_16:
      v3 = *(v3 + 40);
    }

    while (v3);
  }

  return 0;
}

CGColorRef CGPDFContentStreamCreateResolvedColor(uint64_t a1, CGColorSpaceRef *cf)
{
  v2 = cf;
  if (a1)
  {
    if (cf)
    {
      if ((cf & 0x8000000000000000) != 0)
      {
        ColorSpace = CGTaggedColorGetColorSpace(cf);
      }

      else
      {
        ColorSpace = cf[3];
      }
    }

    else
    {
      ColorSpace = 0;
    }

    v5 = *(a1 + 64);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 0x40000000;
    v9[2] = __CGColorSpaceCreateResolved_block_invoke;
    v9[3] = &__block_descriptor_tmp_39_23493;
    v10 = *(a1 + 48);
    v11 = v5;
    ResolvedColorSpace = CGColorSpaceCreateResolvedColorSpace(ColorSpace, v9);
    if (ColorSpace == ResolvedColorSpace)
    {
      if (v2)
      {
        CFRetain(v2);
      }
    }

    else
    {
      Components = CGColorGetComponents(v2);
      v2 = CGColorCreate(ResolvedColorSpace, Components);
    }

    CGColorSpaceRelease(ResolvedColorSpace);
  }

  else if (cf)
  {
    CFRetain(cf);
  }

  return v2;
}

uint64_t PBPageLayoutPkg::PBPageLayout::formatText(PBPageLayoutPkg::PBPageLayout *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(a2, "baselineOffsets", v7);
  }

  v8 = *(this + 22);
  v9 = *(this + 23);
  while (v8 != v9)
  {
    v10 = *v8++;
    (*(*v10 + 32))(v10, a2, "charStyleFontData");
  }

  v11 = *(this + 4);
  v12 = *(this + 5);
  while (v11 != v12)
  {
    v11 += 4;
    PB::TextFormatter::format(a2, "characterStyleIndexes");
  }

  v13 = *(this + 25);
  v14 = *(this + 26);
  while (v13 != v14)
  {
    v15 = *v13++;
    (*(*v15 + 32))(v15, a2, "characterStyles");
  }

  if (*(this + 308))
  {
    PB::TextFormatter::format(a2, "hasRTL");
  }

  v16 = *(this + 7);
  v17 = *(this + 8);
  while (v16 != v17)
  {
    v16 += 8;
    PB::TextFormatter::format(a2, "logicalMap");
  }

  v18 = *(this + 10);
  v19 = *(this + 11);
  while (v18 != v19)
  {
    v18 += 8;
    PB::TextFormatter::format(a2, "mcids");
  }

  if (*(this + 28))
  {
    PB::TextFormatter::format();
  }

  v20 = *(this + 29);
  v21 = *(this + 30);
  while (v20 != v21)
  {
    v22 = *v20++;
    (*(*v22 + 32))(v22, a2, "preciseBBoxes");
  }

  v23 = *(this + 32);
  v24 = *(this + 33);
  while (v23 != v24)
  {
    v25 = *v23++;
    (*(*v25 + 32))(v25, a2, "selectionBBoxes");
  }

  v26 = *(this + 35);
  v27 = *(this + 36);
  while (v26 != v27)
  {
    v28 = *v26++;
    (*(*v28 + 32))(v28, a2, "textLines");
  }

  v29 = *(this + 13);
  v30 = *(this + 14);
  while (v29 != v30)
  {
    v29 += 4;
    PB::TextFormatter::format(a2, "textRangeMap");
  }

  v31 = *(this + 16);
  v32 = *(this + 17);
  while (v31 != v32)
  {
    v31 += 4;
    PB::TextFormatter::format(a2, "uniCharCounts");
  }

  v33 = *(this + 19);
  v34 = *(this + 20);
  while (v33 != v34)
  {
    v33 += 4;
    PB::TextFormatter::format(a2, "uniChars");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t PBPageLayoutPkg::PBPageLayout::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  if (*(this + 308))
  {
    this = PB::Writer::write(a2);
  }

  if (v3[28])
  {
    this = PB::Writer::write();
  }

  v4 = v3[35];
  v5 = v3[36];
  while (v4 != v5)
  {
    v6 = *v4++;
    this = PB::Writer::writeSubmessage(a2, v6);
  }

  v7 = v3[19];
  v8 = v3[20];
  while (v7 != v8)
  {
    v7 += 4;
    this = PB::Writer::writeVarInt(a2);
  }

  v9 = v3[16];
  v10 = v3[17];
  while (v9 != v10)
  {
    v9 += 4;
    this = PB::Writer::writeVarInt(a2);
  }

  v11 = v3[32];
  v12 = v3[33];
  while (v11 != v12)
  {
    v13 = *v11++;
    this = PB::Writer::writeSubmessage(a2, v13);
  }

  v14 = v3[29];
  v15 = v3[30];
  while (v14 != v15)
  {
    v16 = *v14++;
    this = PB::Writer::writeSubmessage(a2, v16);
  }

  v17 = v3[13];
  v18 = v3[14];
  while (v17 != v18)
  {
    v17 += 4;
    this = PB::Writer::writeVarInt(a2);
  }

  v19 = v3[25];
  v20 = v3[26];
  while (v19 != v20)
  {
    v21 = *v19++;
    this = PB::Writer::writeSubmessage(a2, v21);
  }

  v22 = v3[4];
  v23 = v3[5];
  while (v22 != v23)
  {
    v22 += 4;
    this = PB::Writer::writeVarInt(a2);
  }

  v24 = v3[1];
  v25 = v3[2];
  while (v24 != v25)
  {
    v26 = *v24++;
    this = PB::Writer::write(a2, v26);
  }

  v27 = v3[22];
  v28 = v3[23];
  while (v27 != v28)
  {
    v29 = *v27++;
    this = PB::Writer::writeSubmessage(a2, v29);
  }

  v30 = v3[10];
  v31 = v3[11];
  while (v30 != v31)
  {
    v30 += 8;
    this = PB::Writer::writeVarInt(a2);
  }

  v33 = v3[7];
  v32 = v3[8];
  while (v33 != v32)
  {
    v33 += 8;
    this = PB::Writer::writeVarInt(a2);
  }

  return this;
}

void PBPageLayoutPkg::PBPageLayout::readFrom(PBPageLayoutPkg::PBPageLayout *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
  {
    return;
  }

  while (1)
  {
    v6 = *a2;
    if (v2 <= 0xFFFFFFFFFFFFFFF5 && v2 + 10 <= v3)
    {
      break;
    }

    v13 = 0;
    v14 = 0;
    v9 = 0;
    v15 = (v6 + v2);
    v16 = v3 >= v2;
    v17 = v3 - v2;
    if (!v16)
    {
      v17 = 0;
    }

    v18 = v2 + 1;
    do
    {
      if (!v17)
      {
        *(a2 + 24) = 1;
        return;
      }

      v19 = *v15;
      *(a2 + 1) = v18;
      v9 |= (v19 & 0x7F) << v13;
      if ((v19 & 0x80) == 0)
      {
        goto LABEL_19;
      }

      v13 += 7;
      ++v15;
      --v17;
      ++v18;
      v40 = v14++ > 8;
    }

    while (!v40);
LABEL_17:
    if ((PB::Reader::skip(a2) & 1) == 0)
    {
      return;
    }

LABEL_365:
    v2 = *(a2 + 1);
    v3 = *(a2 + 2);
    if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
    {
      return;
    }
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = (v6 + v2);
  v11 = v2 + 1;
  while (1)
  {
    *(a2 + 1) = v11;
    v12 = *v10++;
    v9 |= (v12 & 0x7F) << v7;
    if ((v12 & 0x80) == 0)
    {
      break;
    }

    v7 += 7;
    ++v11;
    v40 = v8++ > 8;
    if (v40)
    {
      goto LABEL_17;
    }
  }

LABEL_19:
  v20 = v9 & 7;
  if (v20 == 4)
  {
    return;
  }

  switch((v9 >> 3))
  {
    case 1u:
      *(this + 308) |= 1u;
      v21 = *(a2 + 1);
      if (v21 >= *(a2 + 2))
      {
        v24 = 0;
        *(a2 + 24) = 1;
      }

      else
      {
        v22 = v21 + 1;
        v23 = *(*a2 + v21);
        *(a2 + 1) = v22;
        v24 = v23 != 0;
      }

      *(this + 304) = v24;
      goto LABEL_365;
    case 2u:
      operator new();
    case 3u:
      operator new();
    case 4u:
      if (v20 == 2)
      {
        if ((PB::Reader::placeMark() & 1) == 0)
        {
          if (*(a2 + 1) < *(a2 + 2) && (*(a2 + 24) & 1) == 0)
          {
            v25 = *(this + 20);
            do
            {
              v90 = *(this + 21);
              if (v25 >= v90)
              {
                v91 = *(this + 19);
                v92 = v25 - v91;
                v93 = (v25 - v91) >> 2;
                v94 = v93 + 1;
                if ((v93 + 1) >> 62)
                {
                  goto LABEL_496;
                }

                v95 = v90 - v91;
                if (v95 >> 1 > v94)
                {
                  v94 = v95 >> 1;
                }

                if (v95 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v96 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v96 = v94;
                }

                if (v96)
                {
                  std::__allocate_at_least[abi:fe200100]<std::allocator<unsigned int>>(v96);
                }

                *(4 * v93) = 0;
                v25 = (4 * v93 + 4);
                memcpy(0, v91, v92);
                v97 = *(this + 19);
                *(this + 19) = 0;
                *(this + 20) = v25;
                *(this + 21) = 0;
                if (v97)
                {
                  operator delete(v97);
                }
              }

              else
              {
                *v25 = 0;
                v25 += 4;
              }

              *(this + 20) = v25;
              if (*(this + 19) == v25)
              {
                goto LABEL_499;
              }

              v99 = *(a2 + 1);
              v98 = *(a2 + 2);
              v100 = *a2;
              v101 = 0;
              v102 = 0;
              v103 = 0;
              if (v99 > 0xFFFFFFFFFFFFFFF5 || v99 + 10 > v98)
              {
                if (v98 <= v99)
                {
                  v105 = *(a2 + 1);
                }

                else
                {
                  v105 = *(a2 + 2);
                }

                while (1)
                {
                  if (v105 == v99)
                  {
                    goto LABEL_290;
                  }

                  v106 = v99 + 1;
                  v107 = *(v100 + v99);
                  *(a2 + 1) = v106;
                  v103 |= (v107 & 0x7F) << v101;
                  if ((v107 & 0x80) == 0)
                  {
                    break;
                  }

                  v101 += 7;
                  v99 = v106;
                  v40 = v102++ > 8;
                  if (v40)
                  {
LABEL_179:
                    LODWORD(v103) = 0;
                    goto LABEL_182;
                  }
                }

                if (*(a2 + 24))
                {
                  LODWORD(v103) = 0;
                }
              }

              else
              {
                v108 = (v100 + v99);
                v109 = v99 + 1;
                while (1)
                {
                  v106 = v109;
                  *(a2 + 1) = v109;
                  v110 = *v108++;
                  v103 |= (v110 & 0x7F) << v101;
                  if ((v110 & 0x80) == 0)
                  {
                    break;
                  }

                  v101 += 7;
                  ++v109;
                  v40 = v102++ > 8;
                  if (v40)
                  {
                    goto LABEL_179;
                  }
                }
              }

LABEL_182:
              *(v25 - 1) = v103;
            }

            while (v106 < v98 && (*(a2 + 24) & 1) == 0);
          }

LABEL_364:
          PB::Reader::recallMark();
          goto LABEL_365;
        }

        return;
      }

      v175 = *(this + 20);
      v174 = *(this + 21);
      if (v175 < v174)
      {
        *v175 = 0;
        v168 = (v175 + 4);
        goto LABEL_425;
      }

      v201 = *(this + 19);
      v202 = v175 - v201;
      v203 = (v175 - v201) >> 2;
      v204 = v203 + 1;
      if (!((v203 + 1) >> 62))
      {
        v205 = v174 - v201;
        if (v205 >> 1 > v204)
        {
          v204 = v205 >> 1;
        }

        if (v205 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v206 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v206 = v204;
        }

        if (v206)
        {
          std::__allocate_at_least[abi:fe200100]<std::allocator<unsigned int>>(v206);
        }

        *(4 * v203) = 0;
        v168 = 4 * v203 + 4;
        memcpy(0, v201, v202);
        v272 = *(this + 19);
        *(this + 19) = 0;
        *(this + 20) = v168;
        *(this + 21) = 0;
        if (v272)
        {
          operator delete(v272);
        }

LABEL_425:
        *(this + 20) = v168;
        if (*(this + 19) != v168)
        {
          v274 = *(a2 + 1);
          v273 = *(a2 + 2);
          v275 = *a2;
          if (v274 <= 0xFFFFFFFFFFFFFFF5 && v274 + 10 <= v273)
          {
            v276 = 0;
            v277 = 0;
            v231 = 0;
            v278 = (v275 + v274);
            v279 = v274 + 1;
            while (1)
            {
              *(a2 + 1) = v279;
              v280 = *v278++;
              v231 |= (v280 & 0x7F) << v276;
              if ((v280 & 0x80) == 0)
              {
                goto LABEL_462;
              }

              v276 += 7;
              ++v279;
              v40 = v277++ > 8;
              if (v40)
              {
                goto LABEL_458;
              }
            }
          }

          v281 = 0;
          v282 = 0;
          v231 = 0;
          v283 = (v275 + v274);
          v16 = v273 >= v274;
          v284 = v273 - v274;
          if (!v16)
          {
            v284 = 0;
          }

          v285 = v274 + 1;
          while (v284)
          {
            v286 = *v283;
            *(a2 + 1) = v285;
            v231 |= (v286 & 0x7F) << v281;
            if ((v286 & 0x80) == 0)
            {
              goto LABEL_460;
            }

            v281 += 7;
            ++v283;
            --v284;
            ++v285;
            v40 = v282++ > 8;
            if (v40)
            {
              goto LABEL_458;
            }
          }

LABEL_459:
          LODWORD(v231) = 0;
          *(a2 + 24) = 1;
LABEL_462:
          *(v168 - 4) = v231;
          goto LABEL_365;
        }

        goto LABEL_499;
      }

      goto LABEL_496;
    case 5u:
      if (v20 != 2)
      {
        v167 = *(this + 17);
        v166 = *(this + 18);
        if (v167 < v166)
        {
          *v167 = 0;
          v168 = (v167 + 4);
          goto LABEL_371;
        }

        v183 = *(this + 16);
        v184 = v167 - v183;
        v185 = (v167 - v183) >> 2;
        v186 = v185 + 1;
        if (!((v185 + 1) >> 62))
        {
          v187 = v166 - v183;
          if (v187 >> 1 > v186)
          {
            v186 = v187 >> 1;
          }

          if (v187 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v188 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v188 = v186;
          }

          if (v188)
          {
            std::__allocate_at_least[abi:fe200100]<std::allocator<unsigned int>>(v188);
          }

          *(4 * v185) = 0;
          v168 = 4 * v185 + 4;
          memcpy(0, v183, v184);
          v225 = *(this + 16);
          *(this + 16) = 0;
          *(this + 17) = v168;
          *(this + 18) = 0;
          if (v225)
          {
            operator delete(v225);
          }

LABEL_371:
          *(this + 17) = v168;
          if (*(this + 16) != v168)
          {
            v227 = *(a2 + 1);
            v226 = *(a2 + 2);
            v228 = *a2;
            if (v227 <= 0xFFFFFFFFFFFFFFF5 && v227 + 10 <= v226)
            {
              v229 = 0;
              v230 = 0;
              v231 = 0;
              v232 = (v228 + v227);
              v233 = v227 + 1;
              while (1)
              {
                *(a2 + 1) = v233;
                v234 = *v232++;
                v231 |= (v234 & 0x7F) << v229;
                if ((v234 & 0x80) == 0)
                {
                  goto LABEL_462;
                }

                v229 += 7;
                ++v233;
                v40 = v230++ > 8;
                if (v40)
                {
                  goto LABEL_458;
                }
              }
            }

            v235 = 0;
            v236 = 0;
            v231 = 0;
            v237 = (v228 + v227);
            v16 = v226 >= v227;
            v238 = v226 - v227;
            if (!v16)
            {
              v238 = 0;
            }

            v239 = v227 + 1;
            while (v238)
            {
              v240 = *v237;
              *(a2 + 1) = v239;
              v231 |= (v240 & 0x7F) << v235;
              if ((v240 & 0x80) == 0)
              {
                goto LABEL_460;
              }

              v235 += 7;
              ++v237;
              --v238;
              ++v239;
              v40 = v236++ > 8;
              if (v40)
              {
                goto LABEL_458;
              }
            }

            goto LABEL_459;
          }

          goto LABEL_499;
        }

LABEL_496:
        std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
      }

      if ((PB::Reader::placeMark() & 1) == 0)
      {
        if (*(a2 + 1) < *(a2 + 2) && (*(a2 + 24) & 1) == 0)
        {
          v25 = *(this + 17);
          while (1)
          {
            v26 = *(this + 18);
            if (v25 >= v26)
            {
              v27 = *(this + 16);
              v28 = v25 - v27;
              v29 = (v25 - v27) >> 2;
              v30 = v29 + 1;
              if ((v29 + 1) >> 62)
              {
                goto LABEL_496;
              }

              v31 = v26 - v27;
              if (v31 >> 1 > v30)
              {
                v30 = v31 >> 1;
              }

              if (v31 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v32 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v32 = v30;
              }

              if (v32)
              {
                std::__allocate_at_least[abi:fe200100]<std::allocator<unsigned int>>(v32);
              }

              *(4 * v29) = 0;
              v25 = (4 * v29 + 4);
              memcpy(0, v27, v28);
              v33 = *(this + 16);
              *(this + 16) = 0;
              *(this + 17) = v25;
              *(this + 18) = 0;
              if (v33)
              {
                operator delete(v33);
              }
            }

            else
            {
              *v25 = 0;
              v25 += 4;
            }

            *(this + 17) = v25;
            if (*(this + 16) == v25)
            {
              goto LABEL_499;
            }

            v35 = *(a2 + 1);
            v34 = *(a2 + 2);
            v36 = *a2;
            v37 = 0;
            v38 = 0;
            v39 = 0;
            v40 = v35 > 0xFFFFFFFFFFFFFFF5 || v35 + 10 > v34;
            if (v40)
            {
              if (v34 <= v35)
              {
                v41 = *(a2 + 1);
              }

              else
              {
                v41 = *(a2 + 2);
              }

              while (1)
              {
                if (v41 == v35)
                {
                  goto LABEL_290;
                }

                v42 = v35 + 1;
                v43 = *(v36 + v35);
                *(a2 + 1) = v42;
                v39 |= (v43 & 0x7F) << v37;
                if ((v43 & 0x80) == 0)
                {
                  break;
                }

                v37 += 7;
                v35 = v42;
                v40 = v38++ > 8;
                if (v40)
                {
LABEL_58:
                  LODWORD(v39) = 0;
                  goto LABEL_61;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v39) = 0;
              }
            }

            else
            {
              v44 = (v36 + v35);
              v45 = v35 + 1;
              while (1)
              {
                v42 = v45;
                *(a2 + 1) = v45;
                v46 = *v44++;
                v39 |= (v46 & 0x7F) << v37;
                if ((v46 & 0x80) == 0)
                {
                  break;
                }

                v37 += 7;
                ++v45;
                v40 = v38++ > 8;
                if (v40)
                {
                  goto LABEL_58;
                }
              }
            }

LABEL_61:
            *(v25 - 1) = v39;
            if (v42 >= v34 || (*(a2 + 24) & 1) != 0)
            {
              goto LABEL_364;
            }
          }
        }

        goto LABEL_364;
      }

      return;
    case 6u:
      PB::PtrVector<PBPageLayoutPkg::PBRect>::emplace_back<>(this + 256);
    case 7u:
      PB::PtrVector<PBPageLayoutPkg::PBRect>::emplace_back<>(this + 232);
    case 8u:
      if (v20 == 2)
      {
        if ((PB::Reader::placeMark() & 1) == 0)
        {
          if (*(a2 + 1) < *(a2 + 2) && (*(a2 + 24) & 1) == 0)
          {
            v25 = *(this + 14);
            while (1)
            {
              v111 = *(this + 15);
              if (v25 >= v111)
              {
                v112 = *(this + 13);
                v113 = v25 - v112;
                v114 = (v25 - v112) >> 2;
                v115 = v114 + 1;
                if ((v114 + 1) >> 62)
                {
                  goto LABEL_496;
                }

                v116 = v111 - v112;
                if (v116 >> 1 > v115)
                {
                  v115 = v116 >> 1;
                }

                if (v116 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v117 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v117 = v115;
                }

                if (v117)
                {
                  std::__allocate_at_least[abi:fe200100]<std::allocator<unsigned int>>(v117);
                }

                *(4 * v114) = 0;
                v25 = (4 * v114 + 4);
                memcpy(0, v112, v113);
                v118 = *(this + 13);
                *(this + 13) = 0;
                *(this + 14) = v25;
                *(this + 15) = 0;
                if (v118)
                {
                  operator delete(v118);
                }
              }

              else
              {
                *v25 = 0;
                v25 += 4;
              }

              *(this + 14) = v25;
              if (*(this + 13) == v25)
              {
                goto LABEL_499;
              }

              v120 = *(a2 + 1);
              v119 = *(a2 + 2);
              v121 = *a2;
              v122 = 0;
              v123 = 0;
              v124 = 0;
              if (v120 > 0xFFFFFFFFFFFFFFF5 || v120 + 10 > v119)
              {
                if (v119 <= v120)
                {
                  v126 = *(a2 + 1);
                }

                else
                {
                  v126 = *(a2 + 2);
                }

                while (1)
                {
                  if (v126 == v120)
                  {
                    goto LABEL_290;
                  }

                  v127 = v120 + 1;
                  v128 = *(v121 + v120);
                  *(a2 + 1) = v127;
                  v124 |= (v128 & 0x7F) << v122;
                  if ((v128 & 0x80) == 0)
                  {
                    break;
                  }

                  v122 += 7;
                  v120 = v127;
                  v40 = v123++ > 8;
                  if (v40)
                  {
LABEL_219:
                    LODWORD(v124) = 0;
                    goto LABEL_222;
                  }
                }

                if (*(a2 + 24))
                {
                  LODWORD(v124) = 0;
                }
              }

              else
              {
                v129 = (v121 + v120);
                v130 = v120 + 1;
                while (1)
                {
                  v127 = v130;
                  *(a2 + 1) = v130;
                  v131 = *v129++;
                  v124 |= (v131 & 0x7F) << v122;
                  if ((v131 & 0x80) == 0)
                  {
                    break;
                  }

                  v122 += 7;
                  ++v130;
                  v40 = v123++ > 8;
                  if (v40)
                  {
                    goto LABEL_219;
                  }
                }
              }

LABEL_222:
              *(v25 - 1) = v124;
              if (v127 >= v119 || (*(a2 + 24) & 1) != 0)
              {
                goto LABEL_364;
              }
            }
          }

          goto LABEL_364;
        }

        return;
      }

      v177 = *(this + 14);
      v176 = *(this + 15);
      if (v177 >= v176)
      {
        v207 = *(this + 13);
        v208 = v177 - v207;
        v209 = (v177 - v207) >> 2;
        v210 = v209 + 1;
        if ((v209 + 1) >> 62)
        {
          goto LABEL_496;
        }

        v211 = v176 - v207;
        if (v211 >> 1 > v210)
        {
          v210 = v211 >> 1;
        }

        if (v211 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v212 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v212 = v210;
        }

        if (v212)
        {
          std::__allocate_at_least[abi:fe200100]<std::allocator<unsigned int>>(v212);
        }

        *(4 * v209) = 0;
        v168 = 4 * v209 + 4;
        memcpy(0, v207, v208);
        v287 = *(this + 13);
        *(this + 13) = 0;
        *(this + 14) = v168;
        *(this + 15) = 0;
        if (v287)
        {
          operator delete(v287);
        }
      }

      else
      {
        *v177 = 0;
        v168 = (v177 + 4);
      }

      *(this + 14) = v168;
      if (*(this + 13) != v168)
      {
        v289 = *(a2 + 1);
        v288 = *(a2 + 2);
        v290 = *a2;
        if (v289 <= 0xFFFFFFFFFFFFFFF5 && v289 + 10 <= v288)
        {
          v291 = 0;
          v292 = 0;
          v231 = 0;
          v293 = (v290 + v289);
          v294 = v289 + 1;
          while (1)
          {
            *(a2 + 1) = v294;
            v295 = *v293++;
            v231 |= (v295 & 0x7F) << v291;
            if ((v295 & 0x80) == 0)
            {
              goto LABEL_462;
            }

            v291 += 7;
            ++v294;
            v40 = v292++ > 8;
            if (v40)
            {
              goto LABEL_458;
            }
          }
        }

        v296 = 0;
        v297 = 0;
        v231 = 0;
        v298 = (v290 + v289);
        v16 = v288 >= v289;
        v299 = v288 - v289;
        if (!v16)
        {
          v299 = 0;
        }

        v300 = v289 + 1;
        while (v299)
        {
          v301 = *v298;
          *(a2 + 1) = v300;
          v231 |= (v301 & 0x7F) << v296;
          if ((v301 & 0x80) == 0)
          {
            goto LABEL_460;
          }

          v296 += 7;
          ++v298;
          --v299;
          ++v300;
          v40 = v297++ > 8;
          if (v40)
          {
            goto LABEL_458;
          }
        }

        goto LABEL_459;
      }

      goto LABEL_499;
    case 9u:
      operator new();
    case 0xAu:
      if (v20 == 2)
      {
        if ((PB::Reader::placeMark() & 1) == 0)
        {
          if (*(a2 + 1) < *(a2 + 2) && (*(a2 + 24) & 1) == 0)
          {
            v25 = *(this + 5);
            while (1)
            {
              v69 = *(this + 6);
              if (v25 >= v69)
              {
                v70 = *(this + 4);
                v71 = v25 - v70;
                v72 = (v25 - v70) >> 2;
                v73 = v72 + 1;
                if ((v72 + 1) >> 62)
                {
                  goto LABEL_496;
                }

                v74 = v69 - v70;
                if (v74 >> 1 > v73)
                {
                  v73 = v74 >> 1;
                }

                if (v74 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v75 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v75 = v73;
                }

                if (v75)
                {
                  std::__allocate_at_least[abi:fe200100]<std::allocator<unsigned int>>(v75);
                }

                *(4 * v72) = 0;
                v25 = (4 * v72 + 4);
                memcpy(0, v70, v71);
                v76 = *(this + 4);
                *(this + 4) = 0;
                *(this + 5) = v25;
                *(this + 6) = 0;
                if (v76)
                {
                  operator delete(v76);
                }
              }

              else
              {
                *v25 = 0;
                v25 += 4;
              }

              *(this + 5) = v25;
              if (*(this + 4) == v25)
              {
                goto LABEL_499;
              }

              v78 = *(a2 + 1);
              v77 = *(a2 + 2);
              v79 = *a2;
              v80 = 0;
              v81 = 0;
              v82 = 0;
              if (v78 > 0xFFFFFFFFFFFFFFF5 || v78 + 10 > v77)
              {
                break;
              }

              v87 = (v79 + v78);
              v88 = v78 + 1;
              while (1)
              {
                v85 = v88;
                *(a2 + 1) = v88;
                v89 = *v87++;
                v82 |= (v89 & 0x7F) << v80;
                if ((v89 & 0x80) == 0)
                {
                  break;
                }

                v80 += 7;
                ++v88;
                v40 = v81++ > 8;
                if (v40)
                {
                  goto LABEL_138;
                }
              }

LABEL_141:
              *(v25 - 1) = v82;
              if (v85 >= v77 || (*(a2 + 24) & 1) != 0)
              {
                goto LABEL_364;
              }
            }

            if (v77 <= v78)
            {
              v84 = *(a2 + 1);
            }

            else
            {
              v84 = *(a2 + 2);
            }

            while (v84 != v78)
            {
              v85 = v78 + 1;
              v86 = *(v79 + v78);
              *(a2 + 1) = v85;
              v82 |= (v86 & 0x7F) << v80;
              if ((v86 & 0x80) == 0)
              {
                if (*(a2 + 24))
                {
                  LODWORD(v82) = 0;
                }

                goto LABEL_141;
              }

              v80 += 7;
              v78 = v85;
              v40 = v81++ > 8;
              if (v40)
              {
LABEL_138:
                LODWORD(v82) = 0;
                goto LABEL_141;
              }
            }

LABEL_290:
            *(a2 + 24) = 1;
            *(v25 - 1) = 0;
          }

          goto LABEL_364;
        }

        return;
      }

      v173 = *(this + 5);
      v172 = *(this + 6);
      if (v173 >= v172)
      {
        v195 = *(this + 4);
        v196 = v173 - v195;
        v197 = (v173 - v195) >> 2;
        v198 = v197 + 1;
        if ((v197 + 1) >> 62)
        {
          goto LABEL_496;
        }

        v199 = v172 - v195;
        if (v199 >> 1 > v198)
        {
          v198 = v199 >> 1;
        }

        if (v199 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v200 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v200 = v198;
        }

        if (v200)
        {
          std::__allocate_at_least[abi:fe200100]<std::allocator<unsigned int>>(v200);
        }

        *(4 * v197) = 0;
        v168 = 4 * v197 + 4;
        memcpy(0, v195, v196);
        v257 = *(this + 4);
        *(this + 4) = 0;
        *(this + 5) = v168;
        *(this + 6) = 0;
        if (v257)
        {
          operator delete(v257);
        }
      }

      else
      {
        *v173 = 0;
        v168 = (v173 + 4);
      }

      *(this + 5) = v168;
      if (*(this + 4) != v168)
      {
        v259 = *(a2 + 1);
        v258 = *(a2 + 2);
        v260 = *a2;
        if (v259 <= 0xFFFFFFFFFFFFFFF5 && v259 + 10 <= v258)
        {
          v261 = 0;
          v262 = 0;
          v231 = 0;
          v263 = (v260 + v259);
          v264 = v259 + 1;
          while (1)
          {
            *(a2 + 1) = v264;
            v265 = *v263++;
            v231 |= (v265 & 0x7F) << v261;
            if ((v265 & 0x80) == 0)
            {
              goto LABEL_462;
            }

            v261 += 7;
            ++v264;
            v40 = v262++ > 8;
            if (v40)
            {
              goto LABEL_458;
            }
          }
        }

        v266 = 0;
        v267 = 0;
        v231 = 0;
        v268 = (v260 + v259);
        v16 = v258 >= v259;
        v269 = v258 - v259;
        if (!v16)
        {
          v269 = 0;
        }

        v270 = v259 + 1;
        while (v269)
        {
          v271 = *v268;
          *(a2 + 1) = v270;
          v231 |= (v271 & 0x7F) << v266;
          if ((v271 & 0x80) == 0)
          {
LABEL_460:
            if (*(a2 + 24))
            {
              LODWORD(v231) = 0;
            }

            goto LABEL_462;
          }

          v266 += 7;
          ++v268;
          --v269;
          ++v270;
          v40 = v267++ > 8;
          if (v40)
          {
LABEL_458:
            LODWORD(v231) = 0;
            goto LABEL_462;
          }
        }

        goto LABEL_459;
      }

LABEL_499:
      __break(1u);
      return;
    case 0xBu:
      if (v20 == 2)
      {
        if ((PB::Reader::placeMark() & 1) == 0)
        {
          v153 = *(a2 + 1);
          v154 = *(a2 + 2);
          while (v153 < v154 && (*(a2 + 24) & 1) == 0)
          {
            v156 = *(this + 2);
            v155 = *(this + 3);
            if (v156 >= v155)
            {
              v158 = *(this + 1);
              v159 = v156 - v158;
              v160 = (v156 - v158) >> 2;
              v161 = v160 + 1;
              if ((v160 + 1) >> 62)
              {
                goto LABEL_498;
              }

              v162 = v155 - v158;
              if (v162 >> 1 > v161)
              {
                v161 = v162 >> 1;
              }

              if (v162 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v163 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v163 = v161;
              }

              if (v163)
              {
                std::__allocate_at_least[abi:fe200100]<std::allocator<unsigned int>>(v163);
              }

              *(4 * v160) = 0;
              v157 = 4 * v160 + 4;
              memcpy(0, v158, v159);
              v164 = *(this + 1);
              *(this + 1) = 0;
              *(this + 2) = v157;
              *(this + 3) = 0;
              if (v164)
              {
                operator delete(v164);
              }
            }

            else
            {
              *v156 = 0;
              v157 = (v156 + 4);
            }

            *(this + 2) = v157;
            if (*(this + 1) == v157)
            {
              goto LABEL_499;
            }

            v165 = *(a2 + 1);
            if (v165 > 0xFFFFFFFFFFFFFFFBLL || v165 + 4 > *(a2 + 2))
            {
              *(a2 + 24) = 1;
              goto LABEL_364;
            }

            *(v157 - 4) = *(*a2 + v165);
            v154 = *(a2 + 2);
            v153 = *(a2 + 1) + 4;
            *(a2 + 1) = v153;
          }

          goto LABEL_364;
        }

        return;
      }

      v181 = *(this + 2);
      v180 = *(this + 3);
      if (v181 >= v180)
      {
        v219 = *(this + 1);
        v220 = v181 - v219;
        v221 = (v181 - v219) >> 2;
        v222 = v221 + 1;
        if ((v221 + 1) >> 62)
        {
LABEL_498:
          std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
        }

        v223 = v180 - v219;
        if (v223 >> 1 > v222)
        {
          v222 = v223 >> 1;
        }

        if (v223 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v224 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v224 = v222;
        }

        if (v224)
        {
          std::__allocate_at_least[abi:fe200100]<std::allocator<unsigned int>>(v224);
        }

        *(4 * v221) = 0;
        v182 = 4 * v221 + 4;
        memcpy(0, v219, v220);
        v317 = *(this + 1);
        *(this + 1) = 0;
        *(this + 2) = v182;
        *(this + 3) = 0;
        if (v317)
        {
          operator delete(v317);
        }
      }

      else
      {
        *v181 = 0;
        v182 = (v181 + 4);
      }

      *(this + 2) = v182;
      if (*(this + 1) != v182)
      {
        v318 = *(a2 + 1);
        if (v318 <= 0xFFFFFFFFFFFFFFFBLL && v318 + 4 <= *(a2 + 2))
        {
          *(v182 - 4) = *(*a2 + v318);
          *(a2 + 1) += 4;
        }

        else
        {
          *(a2 + 24) = 1;
        }

        goto LABEL_365;
      }

      goto LABEL_499;
    case 0xCu:
      operator new();
    case 0xDu:
      if (v20 == 2)
      {
        if ((PB::Reader::placeMark() & 1) == 0)
        {
          if (*(a2 + 1) < *(a2 + 2) && (*(a2 + 24) & 1) == 0)
          {
            v47 = *(this + 11);
            while (1)
            {
              v48 = *(this + 12);
              if (v47 >= v48)
              {
                v49 = *(this + 10);
                v50 = v47 - v49;
                v51 = (v47 - v49) >> 3;
                v52 = v51 + 1;
                if ((v51 + 1) >> 61)
                {
                  goto LABEL_497;
                }

                v53 = v48 - v49;
                if (v53 >> 2 > v52)
                {
                  v52 = v53 >> 2;
                }

                if (v53 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v54 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v54 = v52;
                }

                if (v54)
                {
                  std::__allocate_at_least[abi:fe200100]<std::allocator<unsigned long>>(v54);
                }

                *(8 * v51) = 0;
                v47 = (8 * v51 + 8);
                memcpy(0, v49, v50);
                v55 = *(this + 10);
                *(this + 10) = 0;
                *(this + 11) = v47;
                *(this + 12) = 0;
                if (v55)
                {
                  operator delete(v55);
                }
              }

              else
              {
                *v47 = 0;
                v47 += 8;
              }

              *(this + 11) = v47;
              if (*(this + 10) == v47)
              {
                goto LABEL_499;
              }

              v57 = *(a2 + 1);
              v56 = *(a2 + 2);
              v58 = *a2;
              v59 = 0;
              v60 = 0;
              v61 = 0;
              if (v57 > 0xFFFFFFFFFFFFFFF5 || v57 + 10 > v56)
              {
                if (v56 <= v57)
                {
                  v63 = *(a2 + 1);
                }

                else
                {
                  v63 = *(a2 + 2);
                }

                while (1)
                {
                  if (v63 == v57)
                  {
                    goto LABEL_307;
                  }

                  v64 = v57 + 1;
                  v65 = *(v58 + v57);
                  *(a2 + 1) = v64;
                  v61 |= (v65 & 0x7F) << v59;
                  if ((v65 & 0x80) == 0)
                  {
                    break;
                  }

                  v59 += 7;
                  v57 = v64;
                  v40 = v60++ > 8;
                  if (v40)
                  {
LABEL_98:
                    v61 = 0;
                    goto LABEL_101;
                  }
                }

                if (*(a2 + 24))
                {
                  v61 = 0;
                }
              }

              else
              {
                v66 = (v58 + v57);
                v67 = v57 + 1;
                while (1)
                {
                  v64 = v67;
                  *(a2 + 1) = v67;
                  v68 = *v66++;
                  v61 |= (v68 & 0x7F) << v59;
                  if ((v68 & 0x80) == 0)
                  {
                    break;
                  }

                  v59 += 7;
                  ++v67;
                  v40 = v60++ > 8;
                  if (v40)
                  {
                    goto LABEL_98;
                  }
                }
              }

LABEL_101:
              *(v47 - 1) = v61;
              if (v64 >= v56 || (*(a2 + 24) & 1) != 0)
              {
                goto LABEL_364;
              }
            }
          }

          goto LABEL_364;
        }

        return;
      }

      v170 = *(this + 11);
      v169 = *(this + 12);
      if (v170 < v169)
      {
        *v170 = 0;
        v171 = (v170 + 8);
LABEL_389:
        *(this + 11) = v171;
        if (*(this + 10) == v171)
        {
          goto LABEL_499;
        }

        v243 = *(a2 + 1);
        v242 = *(a2 + 2);
        v244 = *a2;
        if (v243 <= 0xFFFFFFFFFFFFFFF5 && v243 + 10 <= v242)
        {
          v245 = 0;
          v246 = 0;
          v247 = 0;
          v248 = (v244 + v243);
          v249 = v243 + 1;
          while (1)
          {
            *(a2 + 1) = v249;
            v250 = *v248++;
            v247 |= (v250 & 0x7F) << v245;
            if ((v250 & 0x80) == 0)
            {
              goto LABEL_484;
            }

            v245 += 7;
            ++v249;
            v40 = v246++ > 8;
            if (v40)
            {
              goto LABEL_480;
            }
          }
        }

        v251 = 0;
        v252 = 0;
        v247 = 0;
        v253 = (v244 + v243);
        v16 = v242 >= v243;
        v254 = v242 - v243;
        if (!v16)
        {
          v254 = 0;
        }

        v255 = v243 + 1;
        while (v254)
        {
          v256 = *v253;
          *(a2 + 1) = v255;
          v247 |= (v256 & 0x7F) << v251;
          if ((v256 & 0x80) == 0)
          {
            goto LABEL_482;
          }

          v251 += 7;
          ++v253;
          --v254;
          ++v255;
          v40 = v252++ > 8;
          if (v40)
          {
            goto LABEL_480;
          }
        }

LABEL_481:
        v247 = 0;
        *(a2 + 24) = 1;
LABEL_484:
        *(v171 - 8) = v247;
        goto LABEL_365;
      }

      v189 = *(this + 10);
      v190 = v170 - v189;
      v191 = (v170 - v189) >> 3;
      v192 = v191 + 1;
      if (!((v191 + 1) >> 61))
      {
        v193 = v169 - v189;
        if (v193 >> 2 > v192)
        {
          v192 = v193 >> 2;
        }

        if (v193 >= 0x7FFFFFFFFFFFFFF8)
        {
          v194 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v194 = v192;
        }

        if (v194)
        {
          std::__allocate_at_least[abi:fe200100]<std::allocator<unsigned long>>(v194);
        }

        *(8 * v191) = 0;
        v171 = 8 * v191 + 8;
        memcpy(0, v189, v190);
        v241 = *(this + 10);
        *(this + 10) = 0;
        *(this + 11) = v171;
        *(this + 12) = 0;
        if (v241)
        {
          operator delete(v241);
        }

        goto LABEL_389;
      }

      goto LABEL_497;
    case 0xEu:
      if (v20 == 2)
      {
        if ((PB::Reader::placeMark() & 1) == 0)
        {
          if (*(a2 + 1) < *(a2 + 2) && (*(a2 + 24) & 1) == 0)
          {
            v47 = *(this + 8);
            while (1)
            {
              v132 = *(this + 9);
              if (v47 >= v132)
              {
                v133 = *(this + 7);
                v134 = v47 - v133;
                v135 = (v47 - v133) >> 3;
                v136 = v135 + 1;
                if ((v135 + 1) >> 61)
                {
                  goto LABEL_497;
                }

                v137 = v132 - v133;
                if (v137 >> 2 > v136)
                {
                  v136 = v137 >> 2;
                }

                if (v137 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v138 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v138 = v136;
                }

                if (v138)
                {
                  std::__allocate_at_least[abi:fe200100]<std::allocator<unsigned long>>(v138);
                }

                *(8 * v135) = 0;
                v47 = (8 * v135 + 8);
                memcpy(0, v133, v134);
                v139 = *(this + 7);
                *(this + 7) = 0;
                *(this + 8) = v47;
                *(this + 9) = 0;
                if (v139)
                {
                  operator delete(v139);
                }
              }

              else
              {
                *v47 = 0;
                v47 += 8;
              }

              *(this + 8) = v47;
              if (*(this + 7) == v47)
              {
                goto LABEL_499;
              }

              v141 = *(a2 + 1);
              v140 = *(a2 + 2);
              v142 = *a2;
              v143 = 0;
              v144 = 0;
              v145 = 0;
              if (v141 > 0xFFFFFFFFFFFFFFF5 || v141 + 10 > v140)
              {
                break;
              }

              v150 = (v142 + v141);
              v151 = v141 + 1;
              while (1)
              {
                v148 = v151;
                *(a2 + 1) = v151;
                v152 = *v150++;
                v145 |= (v152 & 0x7F) << v143;
                if ((v152 & 0x80) == 0)
                {
                  break;
                }

                v143 += 7;
                ++v151;
                v40 = v144++ > 8;
                if (v40)
                {
                  goto LABEL_261;
                }
              }

LABEL_264:
              *(v47 - 1) = v145;
              if (v148 >= v140 || (*(a2 + 24) & 1) != 0)
              {
                goto LABEL_364;
              }
            }

            if (v140 <= v141)
            {
              v147 = *(a2 + 1);
            }

            else
            {
              v147 = *(a2 + 2);
            }

            while (v147 != v141)
            {
              v148 = v141 + 1;
              v149 = *(v142 + v141);
              *(a2 + 1) = v148;
              v145 |= (v149 & 0x7F) << v143;
              if ((v149 & 0x80) == 0)
              {
                if (*(a2 + 24))
                {
                  v145 = 0;
                }

                goto LABEL_264;
              }

              v143 += 7;
              v141 = v148;
              v40 = v144++ > 8;
              if (v40)
              {
LABEL_261:
                v145 = 0;
                goto LABEL_264;
              }
            }

LABEL_307:
            *(a2 + 24) = 1;
            *(v47 - 1) = 0;
          }

          goto LABEL_364;
        }

        return;
      }

      v179 = *(this + 8);
      v178 = *(this + 9);
      if (v179 >= v178)
      {
        v213 = *(this + 7);
        v214 = v179 - v213;
        v215 = (v179 - v213) >> 3;
        v216 = v215 + 1;
        if ((v215 + 1) >> 61)
        {
LABEL_497:
          std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
        }

        v217 = v178 - v213;
        if (v217 >> 2 > v216)
        {
          v216 = v217 >> 2;
        }

        if (v217 >= 0x7FFFFFFFFFFFFFF8)
        {
          v218 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v218 = v216;
        }

        if (v218)
        {
          std::__allocate_at_least[abi:fe200100]<std::allocator<unsigned long>>(v218);
        }

        *(8 * v215) = 0;
        v171 = 8 * v215 + 8;
        memcpy(0, v213, v214);
        v302 = *(this + 7);
        *(this + 7) = 0;
        *(this + 8) = v171;
        *(this + 9) = 0;
        if (v302)
        {
          operator delete(v302);
        }
      }

      else
      {
        *v179 = 0;
        v171 = (v179 + 8);
      }

      *(this + 8) = v171;
      if (*(this + 7) == v171)
      {
        goto LABEL_499;
      }

      v304 = *(a2 + 1);
      v303 = *(a2 + 2);
      v305 = *a2;
      if (v304 <= 0xFFFFFFFFFFFFFFF5 && v304 + 10 <= v303)
      {
        v306 = 0;
        v307 = 0;
        v247 = 0;
        v308 = (v305 + v304);
        v309 = v304 + 1;
        while (1)
        {
          *(a2 + 1) = v309;
          v310 = *v308++;
          v247 |= (v310 & 0x7F) << v306;
          if ((v310 & 0x80) == 0)
          {
            goto LABEL_484;
          }

          v306 += 7;
          ++v309;
          v40 = v307++ > 8;
          if (v40)
          {
            goto LABEL_480;
          }
        }
      }

      v311 = 0;
      v312 = 0;
      v247 = 0;
      v313 = (v305 + v304);
      v16 = v303 >= v304;
      v314 = v303 - v304;
      if (!v16)
      {
        v314 = 0;
      }

      v315 = v304 + 1;
      while (v314)
      {
        v316 = *v313;
        *(a2 + 1) = v315;
        v247 |= (v316 & 0x7F) << v311;
        if ((v316 & 0x80) == 0)
        {
LABEL_482:
          if (*(a2 + 24))
          {
            v247 = 0;
          }

          goto LABEL_484;
        }

        v311 += 7;
        ++v313;
        --v314;
        ++v315;
        v40 = v312++ > 8;
        if (v40)
        {
LABEL_480:
          v247 = 0;
          goto LABEL_484;
        }
      }

      goto LABEL_481;
    default:
      goto LABEL_17;
  }
}

void PBPageLayoutPkg::PBPageLayout::~PBPageLayout(PBPageLayoutPkg::PBPageLayout *this)
{
  PBPageLayoutPkg::PBPageLayout::~PBPageLayout(this);

  JUMPOUT(0x1865EE610);
}

{
  *this = &unk_1EF2413A8;
  v2 = *(this + 35);
  if (v2)
  {
    v3 = *(this + 36);
    v4 = *(this + 35);
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          (*(*v5 + 8))(v5);
        }
      }

      while (v3 != v2);
      v4 = *(this + 35);
    }

    *(this + 36) = v2;
    operator delete(v4);
  }

  v25 = (this + 256);
  std::vector<std::unique_ptr<PBPageLayoutPkg::PBRect>>::__destroy_vector::operator()[abi:fe200100](&v25);
  v25 = (this + 232);
  std::vector<std::unique_ptr<PBPageLayoutPkg::PBRect>>::__destroy_vector::operator()[abi:fe200100](&v25);
  v7 = *(this + 28);
  *(this + 28) = 0;
  if (v7)
  {
    std::default_delete<std::string>::operator()[abi:fe200100](v7);
  }

  v8 = *(this + 25);
  if (v8)
  {
    v9 = *(this + 26);
    v10 = *(this + 25);
    if (v9 != v8)
    {
      do
      {
        v12 = *--v9;
        v11 = v12;
        *v9 = 0;
        if (v12)
        {
          (*(*v11 + 8))(v11);
        }
      }

      while (v9 != v8);
      v10 = *(this + 25);
    }

    *(this + 26) = v8;
    operator delete(v10);
  }

  v13 = *(this + 22);
  if (v13)
  {
    v14 = *(this + 23);
    v15 = *(this + 22);
    if (v14 != v13)
    {
      do
      {
        v17 = *--v14;
        v16 = v17;
        *v14 = 0;
        if (v17)
        {
          (*(*v16 + 8))(v16);
        }
      }

      while (v14 != v13);
      v15 = *(this + 22);
    }

    *(this + 23) = v13;
    operator delete(v15);
  }

  v18 = *(this + 19);
  if (v18)
  {
    *(this + 20) = v18;
    operator delete(v18);
  }

  v19 = *(this + 16);
  if (v19)
  {
    *(this + 17) = v19;
    operator delete(v19);
  }

  v20 = *(this + 13);
  if (v20)
  {
    *(this + 14) = v20;
    operator delete(v20);
  }

  v21 = *(this + 10);
  if (v21)
  {
    *(this + 11) = v21;
    operator delete(v21);
  }

  v22 = *(this + 7);
  if (v22)
  {
    *(this + 8) = v22;
    operator delete(v22);
  }

  v23 = *(this + 4);
  if (v23)
  {
    *(this + 5) = v23;
    operator delete(v23);
  }

  v24 = *(this + 1);
  if (v24)
  {
    *(this + 2) = v24;
    operator delete(v24);
  }

  PB::Base::~Base(this);
}

void std::vector<std::unique_ptr<PBPageLayoutPkg::PBRect>>::__destroy_vector::operator()[abi:fe200100](void ***a1)
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
        v7 = *--v4;
        v6 = v7;
        *v4 = 0;
        if (v7)
        {
          (*(*v6 + 8))(v6);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t pdf_document_unlock_with_password(uint64_t a1, char *__s)
{
  if (!a1)
  {
    return 1;
  }

  v4 = strlen(__s);

  return CGPDFSecurityManagerUnlock(a1, __s, v4);
}

CGPDFDictionaryRef pdf_document_get_catalog(uint64_t a1)
{
  value = 0;
  trailer = pdf_xref_get_trailer(a1);
  if (CGPDFDictionaryGetDictionary(trailer, "Root", &value))
  {
    return value;
  }

  else
  {
    return 0;
  }
}

_BYTE *PDFResourceSetEmit(uint64_t a1)
{
  PDFDocumentBeginObject(*(a1 + 8), *(a1 + 16));
  PDFDocumentPrintf(*(a1 + 8), "<<");
  if (*(a1 + 24))
  {
    PDFDocumentPrintf(*(a1 + 8), "/ProcSet [");
    v2 = *(a1 + 24);
    if (v2)
    {
      PDFDocumentPrintf(*(a1 + 8), "/PDF");
      v2 = *(a1 + 24);
      if ((v2 & 2) == 0)
      {
LABEL_4:
        if ((v2 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_33;
      }
    }

    else if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

    PDFDocumentPrintf(*(a1 + 8), "/Text");
    v2 = *(a1 + 24);
    if ((v2 & 4) == 0)
    {
LABEL_5:
      if ((v2 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_34;
    }

LABEL_33:
    PDFDocumentPrintf(*(a1 + 8), "/ImageB");
    v2 = *(a1 + 24);
    if ((v2 & 8) == 0)
    {
LABEL_6:
      if ((v2 & 0x10) == 0)
      {
LABEL_8:
        PDFDocumentPrintf(*(a1 + 8), "]");
        goto LABEL_9;
      }

LABEL_7:
      PDFDocumentPrintf(*(a1 + 8), "/ImageI");
      goto LABEL_8;
    }

LABEL_34:
    PDFDocumentPrintf(*(a1 + 8), "/ImageC");
    if ((*(a1 + 24) & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_9:
  if (*(a1 + 32))
  {
    PDFDocumentPrintf(*(a1 + 8), "/ColorSpace <<");
    v3 = *(a1 + 8);
    v4 = *(*(a1 + 32) + 8);
    v24.length = CFArrayGetCount(v4);
    v24.location = 0;
    CFArrayApplyFunction(v4, v24, emitColorSpace_19035, v3);
    PDFDocumentPrintf(*(a1 + 8), ">>");
  }

  if (*(a1 + 40))
  {
    PDFDocumentPrintf(*(a1 + 8), "/ExtGState <<");
    v5 = *(a1 + 8);
    v6 = *(*(a1 + 40) + 8);
    v25.length = CFArrayGetCount(v6);
    v25.location = 0;
    CFArrayApplyFunction(v6, v25, emitEState, v5);
    PDFDocumentPrintf(*(a1 + 8), ">>");
  }

  if (*(a1 + 48))
  {
    PDFDocumentPrintf(*(a1 + 8), "/Font <<");
    v7 = *(a1 + 8);
    v8 = *(*(a1 + 48) + 8);
    v26.length = CFArrayGetCount(v8);
    v26.location = 0;
    CFArrayApplyFunction(v8, v26, emitFont, v7);
    PDFDocumentPrintf(*(a1 + 8), ">>");
  }

  if (*(a1 + 56) || *(a1 + 64))
  {
    PDFDocumentPrintf(*(a1 + 8), "/XObject <<");
    v9 = *(a1 + 64);
    if (v9)
    {
      v10 = *(a1 + 8);
      v11 = *(v9 + 8);
      v27.length = CFArrayGetCount(v11);
      v27.location = 0;
      CFArrayApplyFunction(v11, v27, emitImage, v10);
    }

    v12 = *(a1 + 56);
    if (v12)
    {
      v13 = *(a1 + 8);
      v14 = *(v12 + 8);
      v28.length = CFArrayGetCount(v14);
      v28.location = 0;
      CFArrayApplyFunction(v14, v28, emitForm, v13);
    }

    PDFDocumentPrintf(*(a1 + 8), ">>");
  }

  if (*(a1 + 72))
  {
    PDFDocumentPrintf(*(a1 + 8), "/Pattern <<");
    v15 = *(a1 + 8);
    v16 = *(*(a1 + 72) + 8);
    v29.length = CFArrayGetCount(v16);
    v29.location = 0;
    CFArrayApplyFunction(v16, v29, emitPattern_19034, v15);
    PDFDocumentPrintf(*(a1 + 8), ">>");
  }

  if (*(a1 + 80))
  {
    PDFDocumentPrintf(*(a1 + 8), "/Properties <<");
    v17 = *(a1 + 8);
    v18 = *(*(a1 + 80) + 8);
    v30.length = CFArrayGetCount(v18);
    v30.location = 0;
    CFArrayApplyFunction(v18, v30, emitProperties, v17);
    PDFDocumentPrintf(*(a1 + 8), ">>");
  }

  if (*(a1 + 88))
  {
    PDFDocumentPrintf(*(a1 + 8), "/Shading <<");
    v19 = *(a1 + 8);
    v20 = *(*(a1 + 88) + 8);
    v31.length = CFArrayGetCount(v20);
    v31.location = 0;
    CFArrayApplyFunction(v20, v31, emitShading, v19);
    PDFDocumentPrintf(*(a1 + 8), ">>");
  }

  PDFDocumentPrintf(*(a1 + 8), ">>");
  v21 = *(a1 + 8);

  return PDFDocumentEndObject(v21);
}

void emitProperties(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    v4 = PDFXRefTableAddObject(*(*(a1 + 8) + 504));
    *(a1 + 16) = v4;
  }

  PDFDocumentPrintNameReferencePair(a2, "/%N %R", a1 + 24, v4);
}

void emitPattern_19034(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    PDFDocumentPrintNameReferencePair(a2, "/%N %R", a1 + 80, *(v2 + 8));
  }

  else
  {
    PDFDocumentPrintNameReferencePair(a2, "/%N %R", a1 + 80, 0);
  }
}

void emitForm(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    PDFDocumentPrintNameReferencePair(a2, "/%N %R", a1 + 40, *(v2 + 8));
  }

  else
  {
    PDFDocumentPrintNameReferencePair(a2, "/%N %R", a1 + 40, 0);
  }
}

void emitImage(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    PDFDocumentPrintNameReferencePair(a2, "/%N %R", a1 + 24, *(v2 + 8));
  }

  else
  {
    PDFDocumentPrintNameReferencePair(a2, "/%N %R", a1 + 24, 0);
  }
}

void emitEState(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    v4 = PDFXRefTableAddObject(*(*(a1 + 8) + 504));
    *(a1 + 16) = v4;
  }

  PDFDocumentPrintNameReferencePair(a2, "/%N %R", a1 + 24, v4);
}

void emitColorSpace_19035(void *a1, uint64_t a2)
{
  v3 = a1 + 5;
  if (!a1)
  {
    v3 = 0;
  }

  PDFDocumentPrintf(a2, "/%N", v3);

  PDFColorSpaceEmitReference(a1);
}

void PDFResourceSetAddEState(uint64_t a1, const void *a2)
{
  v4 = *(a1 + 40);
  if (!v4)
  {
    v4 = CGOrderedSetCreate();
    *(a1 + 40) = v4;
  }

  CGOrderedSetAddValue(v4, a2);
}

BOOL shape_data_valid(_DWORD *a1, unint64_t a2)
{
  v2 = 0;
  if (a1 && a2 >= 0xC)
  {
    v3 = a2 >> 2;
    v4 = (a2 >> 2) - 1;
    if ((v4 & 1) != 0 || *a1 != 0x80000000 || a1[v4] != 0x7FFFFFFF)
    {
      return 0;
    }

    v5 = a1[1];
    if (v4 == v5)
    {
      return ((v3 - 3) & 0xFFFFFFFFFFFFFFFDLL) == 0;
    }

    if (v5 != 2)
    {
      return 0;
    }

    if (a2 < 0x10)
    {
      return 1;
    }

    else
    {
      v6 = 2;
      v7 = 2;
      do
      {
        v2 = 0;
        v8 = &a1[v6];
        v9 = v8[1];
        if ((v9 & 1) != 0 || (v9 - 1024) < 0xFFFFFC02)
        {
          break;
        }

        v10 = v7 + v9;
        if (__OFADD__(v7, v9) || v3 <= v10)
        {
          return 0;
        }

        v6 = v10;
        if (v9 != 2 && v4 == v10)
        {
          return 0;
        }

        if (v4 > v10)
        {
          v12 = a1[v10];
          if (v12 == 0x7FFFFFFF || v12 <= *v8)
          {
            return 0;
          }
        }

        v13 = v7 + 2;
        if (v7 + 2 < v10)
        {
          v14 = a1[v13];
          v15 = &a1[v13 + 2];
          for (i = v13 + 2; ; i += 2)
          {
            v17 = *(v15 - 1);
            if (v17 <= v14)
            {
              break;
            }

            if (i >= v10)
            {
              goto LABEL_28;
            }

            v2 = 0;
            v18 = *v15;
            v15 += 2;
            v14 = v18;
            if (v18 <= v17)
            {
              return v2;
            }
          }

          return 0;
        }

LABEL_28:
        v2 = 1;
        v7 = v10;
      }

      while (v4 > v10);
    }
  }

  return v2;
}

double shape_alloc_bounds(uint64_t a1, int a2, int a3, int a4, int a5)
{
  if (a5 >= 2147483646)
  {
    v5 = 2147483646;
  }

  else
  {
    v5 = a5;
  }

  if (a3 == 0x80000000 || a3 == -2147483647)
  {
    v6 = -2147483647;
  }

  else
  {
    v6 = a3;
  }

  if (a2 < a4 && v6 < v5)
  {
    v9 = malloc_type_malloc(0x200uLL, 0x4C113E60uLL);
    *v9 = 0x280000000;
    *(v9 + 2) = v6;
    *(v9 + 3) = 4;
    *(v9 + 4) = a2;
    *(v9 + 5) = a4;
    *(v9 + 6) = v5;
    result = NAN;
    *(v9 + 28) = 0x7FFFFFFF00000002;
  }

  return result;
}

uint64_t rect_to_bounds_19063(signed int *a1, signed int *a2, signed int *a3, signed int *a4, double a5, double a6, double a7, double a8)
{
  if (a7 < 0.0)
  {
    a5 = a5 + a7;
    a7 = -a7;
  }

  v8 = vcvtmd_s64_f64(a5 + 0.00390625);
  v9 = vcvtpd_s64_f64(a5 + a7 + -0.00390625);
  if (v8 >= v9)
  {
    return 0xFFFFFFFFLL;
  }

  *a1 = v8;
  *a3 = v9;
  v10 = a6 + a8;
  if (a8 < 0.0)
  {
    v11 = -a8;
  }

  else
  {
    v10 = a6;
    v11 = a8;
  }

  v12 = vcvtmd_s64_f64(v10 + 0.00390625);
  v13 = vcvtpd_s64_f64(v10 + v11 + -0.00390625);
  if (v12 >= v13)
  {
    return 0xFFFFFFFFLL;
  }

  *a2 = v12;
  *a4 = v13;
  return 1;
}

int *shape_union_with_bounds(int *a1, int a2, int a3, int a4, int a5)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a5 >= 2147483646)
  {
    v5 = 2147483646;
  }

  else
  {
    v5 = a5;
  }

  if (a3 == 0x80000000 || a3 == -2147483647)
  {
    v6 = -2147483647;
  }

  else
  {
    v6 = a3;
  }

  if (a2 >= a4 || v6 >= v5)
  {

    return shape_copy(a1);
  }

  else
  {
    v8 = 0x280000000;
    v9 = v6;
    v10 = 4;
    v11 = a2;
    v12 = a4;
    v13 = v5;
    v14 = 0x7FFFFFFF00000002;
    return shape_union(a1, a1, &v8);
  }
}

_DWORD *shape_copy(_DWORD *result)
{
  if (result)
  {
    v1 = result;
    if (*result == 0x80000000 && (v2 = result[1], v2 >= 1))
    {
      result = &the_empty_shape;
      if (v1 != &the_empty_shape && v1[v2] != 0x7FFFFFFF)
      {
        v3 = shape_length(v1);
        if (v3 >= 4)
        {
          v4 = v3;
          result = malloc_type_malloc((4 * v3 + 511) & 0xFFFFFFFFFFFFFE00, 0x4C113E60uLL);
          v5 = 0;
          do
          {
            result[v5] = v1[v5];
            ++v5;
          }

          while (v4 != v5);
        }

        else
        {
          return &the_empty_shape;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t shape_length(uint64_t a1)
{
  if (*a1 == 0x80000000 && *(a1 + 4) == 4 && *(a1 + 16) == 0x7FFFFFFF)
  {
    return 5;
  }

  if (a1 == &the_empty_shape)
  {
    return 3;
  }

  v2 = (a1 + 4 * *(a1 + 4));
  if (*v2 == 0x7FFFFFFF)
  {
    return 3;
  }

  do
  {
    v3 = v2;
    v2 += v2[1];
  }

  while (*v2 != 0x7FFFFFFF);
  return ((v3 - a1) >> 2) + 3;
}

_DWORD *shape_alloc_data(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  if (*a2 != 0x80000000)
  {
    return 0;
  }

  v4 = *(a2 + 4);
  if (v4 < 1)
  {
    return 0;
  }

  result = &the_empty_shape;
  if (a2 != &the_empty_shape && *(a2 + 4 * v4) != 0x7FFFFFFF && a3 >= 0x10)
  {
    v6 = a3 >> 2;
    if (*(a2 + 4 * (a3 >> 2) - 4) == 0x7FFFFFFF)
    {
      result = malloc_type_malloc(((a3 & 0xFFFFFFFFFFFFFFFCLL) + 511) & 0xFFFFFFFFFFFFFE00, 0x4C113E60uLL);
      v7 = 0;
      do
      {
        result[v7] = *(a2 + 4 * v7);
        ++v7;
      }

      while (v6 != v7);
    }
  }

  return result;
}

void shape_free(int a1, void *a2)
{
  if (a2)
  {
    if (a2 != &the_empty_shape)
    {
      free(a2);
    }
  }
}

uint64_t shape_count(uint64_t a1)
{
  v1 = (a1 + 4 * *(a1 + 4));
  if (*v1 == 0x7FFFFFFF)
  {
    return 0;
  }

  v2 = v1[1];
  v3 = &v1[v2];
  if (*v3 == 0x7FFFFFFF)
  {
    return 0;
  }

  LODWORD(result) = 0;
  do
  {
    result = (result + v2 / 2 - 1);
    v2 = v3[1];
    v3 += v2;
  }

  while (*v3 != 0x7FFFFFFF);
  return result;
}

BOOL shape_is_rectangular(uint64_t a1)
{
  if (a1 == &the_empty_shape || *(a1 + 4 * *(a1 + 4)) == 0x7FFFFFFF)
  {
    return 1;
  }

  if (*(a1 + 12) == 4 && *(a1 + 28) == 2)
  {
    return *(a1 + 32) == 0x7FFFFFFF;
  }

  return 0;
}

uint64_t shape_contains_point(uint64_t result, int a2, int a3)
{
  if (result)
  {
    v3 = result;
    if (*result != 0x80000000)
    {
      return 0;
    }

    result = 0;
    if (v3 != &the_empty_shape)
    {
      v4 = *(v3 + 4);
      if (v4 >= 1)
      {
        v5 = (v3 + 4 * v4);
        v6 = *v5;
        if (*v5 == 0x7FFFFFFF)
        {
          return 0;
        }

        do
        {
          result = 0;
          if (v6 > a3)
          {
            break;
          }

          v7 = v5[1];
          if (v5[v7] == 0x7FFFFFFF)
          {
            break;
          }

          v8 = &v5[v7];
          v6 = *v8;
          if (*v8 > a3 && v7 != 2)
          {
            v10 = 4 * v7 - 8;
            v11 = v5 + 3;
            while (*(v11 - 1) > a2 || *v11 <= a2)
            {
              v11 += 2;
              v10 -= 8;
              if (!v10)
              {
                goto LABEL_18;
              }
            }

            return 1;
          }

LABEL_18:
          result = 0;
          v5 = v8;
        }

        while (v6 != 0x7FFFFFFF);
      }
    }
  }

  return result;
}

uint64_t shape_contains_bounds(unint64_t a1, int a2, signed int a3, int a4, signed int a5)
{
  if (a2 >= a4)
  {
    return 0;
  }

  v5 = 0;
  if (a1 && a1 != &the_empty_shape && a3 < a5)
  {
    if (*a1 == 0x80000000)
    {
      v6 = *(a1 + 4);
      if (v6 >= 1 && *(a1 + 4 * v6) != 0x7FFFFFFF)
      {
        v8 = 0x80000000;
        while (a3 >= v8)
        {
          v9 = a1;
          v10 = *(a1 + 4);
          a1 += 4 * v10;
          v8 = *a1;
          if (a3 < *a1 && v10 >= 3)
          {
            v12 = (v9 + 8);
            while (*v12 > a2 || v12[1] < a4)
            {
              v12 += 2;
              if (v12 >= a1)
              {
                goto LABEL_22;
              }
            }

            a3 = *a1;
            if (v8 >= a5)
            {
              return 1;
            }
          }

LABEL_22:
          v5 = 0;
          if (v8 == 0x7FFFFFFF)
          {
            return v5;
          }
        }
      }
    }

    return 0;
  }

  return v5;
}

int *shape_enclose_with_bounds(uint64_t a1, int a2, signed int a3, signed int a4, int a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = &the_empty_shape;
  if (a1 != &the_empty_shape && a1 != 0 && *a1 == 0x80000000)
  {
    v7 = *(a1 + 4);
    if (v7 >= 1 && *(a1 + 4 * v7) != 0x7FFFFFFF && a2 < a4 && a3 < a5)
    {
      *v15 = 0x280000000;
      *&v15[8] = a3;
      v16[0] = 4;
      v16[1] = a2;
      v16[2] = a4;
      v16[3] = a5;
      v17 = 0x7FFFFFFF00000002;
      v13 = shape_intersect(a1, a1, v15);
      if (v13 != &the_empty_shape)
      {
        v14 = v13;
        if (shape_bounds(v13, v15, &v15[4], &v15[8], v16) == 9 && *v15 == a2 && *&v15[4] == a3 && *&v15[8] == a4 && v16[0] == a5)
        {
          if (v14)
          {
            free(v14);
          }

          return 0;
        }

        else
        {
          return v14;
        }
      }
    }
  }

  return v5;
}

int *shape_intersect(uint64_t a1, int *a2, int *a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = a2;
  if (*a2 != 0x80000000)
  {
    return 0;
  }

  v4 = a3;
  result = 0;
  if (!a3)
  {
    return result;
  }

  v6 = a2[1];
  if (v6 < 1)
  {
    return result;
  }

  if (*a3 != 0x80000000)
  {
    return 0;
  }

  v7 = a3[1];
  if (v7 < 1)
  {
    return 0;
  }

  if (a2[v6] == 0x7FFFFFFF || a3[v7] == 0x7FFFFFFF)
  {
    return &the_empty_shape;
  }

  result = malloc_type_malloc(0x800uLL, 0x4C113E60uLL);
  if (result)
  {
    v8 = result;
    if (*v3 == 0x7FFFFFFF)
    {
      v9 = 512;
      v10 = result;
LABEL_13:
      *v8 = 0x7FFFFFFF;

      return final_check(v10, v9, v8 - v10 + 1);
    }

    v38 = 0;
    v11 = 0;
    v12 = 0;
    v9 = 512;
    v10 = result;
    while (1)
    {
      if (*v4 == 0x7FFFFFFF)
      {
        goto LABEL_13;
      }

      v13 = v4;
      if (v8 - v10 + 4 > v9)
      {
        v14 = 2 * v9;
        v15 = malloc_type_realloc(v10, (8 * v9 + 511) & 0xFFFFFFFFFFFFFE00, 0x9C99BB6EuLL);
        v16 = &v12[v15 - v10];
        if (!v12)
        {
          v16 = 0;
        }

        if (v15 != v10)
        {
          v8 = (v8 + v15 - v10);
          v12 = v16;
          v10 = v15;
        }

        v9 = v14;
      }

      if (!v10)
      {
        return 0;
      }

      v17 = *v3;
      v18 = *v13;
      if (*v13 < *v3)
      {
        break;
      }

      if (v17 == 0x7FFFFFFF)
      {
        v19 = v3;
        v3 = v11;
      }

      else
      {
        *v8 = v17;
        v19 = &v3[v3[1]];
      }

      if (v17 >= v18)
      {
        v18 = *v13;
        if (*v13 != 0x7FFFFFFF)
        {
          goto LABEL_27;
        }
      }

      v20 = v3;
      v3 = v19;
      v4 = v13;
      v13 = v38;
LABEL_34:
      v38 = v13;
      v39 = v20;
      v21 = v20 + 2;
      v22 = (v8 + 1);
      v8 += 2;
      if (v20 + 2 != v3)
      {
        v23 = v13 + 2;
        if (v13 + 2 != v4)
        {
          v24 = 0;
          do
          {
            if (v8 - v10 + 4 > v9)
            {
              v25 = 2 * v9;
              result = malloc_type_realloc(v10, (8 * v9 + 511) & 0xFFFFFFFFFFFFFE00, 0x9C99BB6EuLL);
              v26 = (result - v10);
              if (result == v10)
              {
                v9 = v25;
              }

              else
              {
                if (v12)
                {
                  v12 = &v26[v12];
                }

                else
                {
                  v12 = 0;
                }

                if (!result)
                {
                  return result;
                }

                v8 = &v26[v8];
                v22 = &v26[v22];
                v9 = v25;
                v10 = result;
              }
            }

            v27 = *v21;
            v28 = *v23;
            if (*v21 <= *v23)
            {
              v29 = v24 ^ 1;
              ++v21;
              *v8 = v27;
              v28 = *v23;
            }

            else
            {
              v29 = v24;
            }

            if (v28 <= v27)
            {
              v29 = v29 ^ 2;
              ++v23;
              *v8 = v28;
            }

            v31 = v24 == 3 || v29 == 3;
            v8 += v31;
            if (v21 == v3)
            {
              break;
            }

            v24 = v29;
          }

          while (v23 != v4);
        }
      }

      v32 = ((v8 - v22) >> 2) + 1;
      *v22 = v32;
      if (v12)
      {
        v11 = v39;
        if (v32 == *v12)
        {
          if (((v8 - v22) >> 2) != 1)
          {
            v33 = (v12 + 4);
            v34 = (v22 + 4);
            while (v34 != v8)
            {
              v36 = *v33++;
              v35 = v36;
              v37 = *v34++;
              if (v35 != v37)
              {
                goto LABEL_66;
              }
            }
          }

          v8 = (v22 - 4);
        }

        else
        {
LABEL_66:
          v12 = v22;
        }
      }

      else
      {
        v12 = v22;
        v11 = v39;
      }

      if (*v3 == 0x7FFFFFFF)
      {
        goto LABEL_13;
      }
    }

    v19 = v3;
    v3 = v11;
LABEL_27:
    *v8 = v18;
    v4 = &v13[v13[1]];
    v20 = v3;
    v3 = v19;
    goto LABEL_34;
  }

  return result;
}

uint64_t shape_intersects_shape(signed int *a1, signed int *a2)
{
  if (!a1 || *a1 != 0x80000000)
  {
    return 0;
  }

  v2 = 0;
  if (a2)
  {
    v3 = a1[1];
    if (v3 >= 1)
    {
      if (*a2 != 0x80000000)
      {
        return 0;
      }

      v4 = a2[1];
      if (v4 < 1 || a1[v3] == 0x7FFFFFFF || a2[v4] == 0x7FFFFFFF)
      {
        return 0;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0x80000000;
      do
      {
        v9 = *a2;
        if (*a2 == 0x7FFFFFFF)
        {
          return 0;
        }

        if (v9 >= v8)
        {
          v10 = &a1[a1[1]];
          v7 = a1;
          if (v8 < v9)
          {
            v7 = a1;
            goto LABEL_18;
          }
        }

        else
        {
          v10 = a1;
        }

        v6 = a2;
        a2 += a2[1];
LABEL_18:
        a1 = v10;
        v11 = 0;
        v12 = v7 + 2;
        v13 = v6 + 2;
        while (v12 != a1 && v13 != a2)
        {
          v14 = *v13 <= *v12;
          v11 ^= *v12 <= *v13;
          v12 += *v12 <= *v13;
          if (v14)
          {
            v11 ^= 2u;
          }

          v13 += v14;
          v2 = 1;
          if (v11 == 3)
          {
            return v2;
          }
        }

        v2 = 0;
        v8 = *a1;
      }

      while (*a1 != 0x7FFFFFFF);
    }
  }

  return v2;
}

int32x2_t *shape_offset(uint64_t a1, int32x2_t *a2, unsigned int a3, __int32 a4)
{
  v7 = shape_length(a2);
  if (v7 <= 3)
  {
    goto LABEL_4;
  }

  if (v7 == 5)
  {
    a3 += a2[1].u32[0];
    a4 += a2[1].i32[1];
LABEL_4:
    if (a4 | a3)
    {
      result = malloc_type_malloc(0x200uLL, 0x4C113E60uLL);
      *result = 0x480000000;
      result[1].i32[0] = a3;
      result[1].i32[1] = a4;
      v9 = result + 2;
LABEL_6:
      v9->i32[0] = 0x7FFFFFFF;
      return result;
    }

    return &the_empty_shape;
  }

  result = malloc_type_malloc((4 * v7 + 511) & 0x3FFFFFE00, 0x4C113E60uLL);
  if (result)
  {
    result->i32[0] = a2->i32[0];
    result->i32[1] = a2->i32[1];
    v12 = a2[1].i32[0];
    v11 = a2 + 1;
    v10 = v12;
    v9 = result + 1;
    if (v12 != 0x7FFFFFFF)
    {
      v13 = vdup_n_s32(a3);
      do
      {
        v14 = v11->i32[1];
        v9->i32[0] = v10 + a4;
        v9->i32[1] = v14;
        v15 = (v11 + 4 * v14);
        if (v14 >= 3)
        {
          v16 = v11 + 1;
          v17 = v9 + 1;
          do
          {
            v18 = *v16++;
            *v17++ = vadd_s32(v18, v13);
          }

          while (v16 < v15);
        }

        v9 = (v9 + 4 * v14);
        v10 = v15->i32[0];
        v11 = (v11 + 4 * v14);
      }

      while (v15->i32[0] != 0x7FFFFFFF);
    }

    goto LABEL_6;
  }

  return result;
}

int *shape_intersect_with_bounds(uint64_t a1, int *a2, int a3, int a4, int a5, int a6)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a6 >= 2147483646)
  {
    v6 = 2147483646;
  }

  else
  {
    v6 = a6;
  }

  if (a4 == 0x80000000 || a4 == -2147483647)
  {
    v7 = -2147483647;
  }

  else
  {
    v7 = a4;
  }

  result = &the_empty_shape;
  if (a3 < a5 && v7 < v6)
  {
    v9 = 0x280000000;
    v10 = v7;
    v11 = 4;
    v12 = a3;
    v13 = a5;
    v14 = v6;
    v15 = 0x7FFFFFFF00000002;
    return shape_intersect(&the_empty_shape, a2, &v9);
  }

  return result;
}

int *shape_difference(uint64_t a1, int *a2, int *a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = a2;
  if (*a2 != 0x80000000)
  {
    return 0;
  }

  v4 = a3;
  result = 0;
  if (!a3)
  {
    return result;
  }

  v6 = a2[1];
  if (v6 < 1)
  {
    return result;
  }

  if (*a3 != 0x80000000)
  {
    return 0;
  }

  v7 = a3[1];
  if (v7 < 1)
  {
    return 0;
  }

  if (a2[v6] == 0x7FFFFFFF)
  {
    return &the_empty_shape;
  }

  if (a3[v7] == 0x7FFFFFFF)
  {

    return shape_copy(a2);
  }

  result = malloc_type_malloc(0x800uLL, 0x4C113E60uLL);
  if (!result)
  {
    return result;
  }

  v8 = result;
  if (*v3 != 0x7FFFFFFF)
  {
    v40 = 0;
    v11 = 0;
    v12 = 0;
    v9 = 512;
    v10 = result;
    while (1)
    {
      v13 = v4;
      if (v10 - v8 + 4 > v9)
      {
        v14 = 2 * v9;
        v15 = malloc_type_realloc(v8, (8 * v9 + 511) & 0xFFFFFFFFFFFFFE00, 0x9C99BB6EuLL);
        v16 = &v12[v15 - v8];
        if (!v12)
        {
          v16 = 0;
        }

        if (v15 != v8)
        {
          v10 = (v10 + v15 - v8);
          v12 = v16;
          v8 = v15;
        }

        v9 = v14;
      }

      if (!v8)
      {
        return 0;
      }

      v17 = *v3;
      v18 = *v13;
      if (*v13 >= *v3)
      {
        if (v17 == 0x7FFFFFFF)
        {
          v19 = v3;
          v3 = v11;
        }

        else
        {
          *v10 = v17;
          v19 = &v3[v3[1]];
        }

        if (v17 < v18 || (v18 = *v13, *v13 == 0x7FFFFFFF))
        {
          v20 = v3;
          v3 = v19;
          v4 = v13;
          goto LABEL_36;
        }
      }

      else
      {
        v19 = v3;
        v3 = v11;
      }

      *v10 = v18;
      v4 = &v13[v13[1]];
      v20 = v3;
      v3 = v19;
      v40 = v13;
LABEL_36:
      v41 = v20;
      v21 = v20 + 2;
      v22 = (v10 + 1);
      v10 += 2;
      if (v20 + 2 != v3)
      {
        v23 = 0;
        v24 = v40 + 2;
        do
        {
          if (v10 - v8 + 4 > v9)
          {
            v25 = 2 * v9;
            result = malloc_type_realloc(v8, (8 * v9 + 511) & 0xFFFFFFFFFFFFFE00, 0x9C99BB6EuLL);
            v26 = (result - v8);
            if (result == v8)
            {
              v9 = v25;
            }

            else
            {
              if (v12)
              {
                v12 = &v26[v12];
              }

              else
              {
                v12 = 0;
              }

              if (!result)
              {
                return result;
              }

              v10 = &v26[v10];
              v22 = &v26[v22];
              v9 = v25;
              v8 = result;
            }
          }

          v27 = *v21;
          v28 = *v24;
          if (*v21 <= *v24 || v24 == v4)
          {
            v30 = v23 ^ 1;
            ++v21;
            *v10 = v27;
            v28 = *v24;
          }

          else
          {
            v30 = v23;
          }

          if (v28 <= v27 && v24 != v4)
          {
            v30 = v30 ^ 2;
            ++v24;
            *v10 = v28;
          }

          v33 = v23 == 1 || v30 == 1;
          v10 += v33;
          v23 = v30;
        }

        while (v21 != v3);
      }

      v34 = ((v10 - v22) >> 2) + 1;
      *v22 = v34;
      if (v12)
      {
        v11 = v41;
        if (v34 == *v12)
        {
          if (((v10 - v22) >> 2) != 1)
          {
            v35 = (v12 + 4);
            v36 = (v22 + 4);
            while (v36 != v10)
            {
              v38 = *v35++;
              v37 = v38;
              v39 = *v36++;
              if (v37 != v39)
              {
                goto LABEL_72;
              }
            }
          }

          v10 = (v22 - 4);
          v34 = ((v22 - 4 - v12) >> 2) + 1;
        }

        else
        {
LABEL_72:
          v12 = v22;
        }
      }

      else
      {
        v12 = v22;
        v11 = v41;
      }

      *v12 = v34;
      if (*v3 == 0x7FFFFFFF)
      {
        goto LABEL_16;
      }
    }
  }

  v9 = 512;
  v10 = result;
LABEL_16:
  *v10 = 0x7FFFFFFF;

  return final_check(v8, v9, v10 - v8 + 1);
}

int *shape_xor(uint64_t a1, int *a2, int *a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = a2;
  if (*a2 != 0x80000000)
  {
    return 0;
  }

  v4 = a3;
  if (!a3)
  {
    return 0;
  }

  v5 = a2[1];
  if (v5 < 1)
  {
    return 0;
  }

  if (*a3 != 0x80000000)
  {
    return 0;
  }

  v6 = a3[1];
  if (v6 < 1)
  {
    return 0;
  }

  if (a2[v5] == 0x7FFFFFFF)
  {
    v7 = a3;
LABEL_11:

    return shape_copy(v7);
  }

  if (a3[v6] == 0x7FFFFFFF)
  {
    v7 = a2;
    goto LABEL_11;
  }

  v9 = malloc_type_malloc(0x800uLL, 0x4C113E60uLL);
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  v11 = 0;
  v45 = 0;
  v46 = 0;
  v12 = 512;
  v13 = v9;
  while (1)
  {
    v14 = v4;
    if (*v3 == 0x7FFFFFFF && *v4 == 0x7FFFFFFF)
    {
      break;
    }

    if (v10 - v13 + 4 <= v12)
    {
      v48 = v11;
    }

    else
    {
      v15 = 2 * v12;
      v16 = malloc_type_realloc(v13, (8 * v12 + 511) & 0xFFFFFFFFFFFFFE00, 0x9C99BB6EuLL);
      v17 = (v11 + v16 - v13);
      if (!v11)
      {
        v17 = 0;
      }

      if (v16 != v13)
      {
        v10 = (v10 + v16 - v13);
        v11 = v17;
      }

      v48 = v11;
      if (v16 != v13)
      {
        v13 = v16;
      }

      v12 = v15;
    }

    if (!v13)
    {
      return 0;
    }

    v18 = *v3;
    v19 = *v14;
    if (*v14 >= *v3)
    {
      if (v18 == 0x7FFFFFFF)
      {
        v20 = v3;
        v3 = v46;
      }

      else
      {
        *v10 = v18;
        v20 = &v3[v3[1]];
      }

      if (v18 < v19 || (v19 = *v14, *v14 == 0x7FFFFFFF))
      {
        v21 = v3;
        v3 = v20;
        v4 = v14;
        v14 = v45;
        goto LABEL_37;
      }
    }

    else
    {
      v20 = v3;
      v3 = v46;
    }

    *v10 = v19;
    v4 = &v14[v14[1]];
    v21 = v3;
    v3 = v20;
LABEL_37:
    v45 = v14;
    v46 = v21;
    v22 = v21 + 2;
    v23 = v14 + 2;
    v47 = v10 + 1;
    v10 += 2;
    v24 = v14 + 2 != v4;
    v25 = v21 + 2 != v3;
    if (v21 + 2 != v3 || v23 != v4)
    {
      v26 = 0;
      while (1)
      {
        if (v10 - v13 + 4 > v12)
        {
          v27 = 2 * v12;
          v28 = malloc_type_realloc(v13, (8 * v12 + 511) & 0xFFFFFFFFFFFFFE00, 0x9C99BB6EuLL);
          v29 = v28 - v13;
          if (v28 == v13)
          {
            v12 = v27;
          }

          else
          {
            v30 = (v48 + v29);
            if (!v48)
            {
              v30 = 0;
            }

            v48 = v30;
            if (!v28)
            {
              return 0;
            }

            v10 = (v10 + v29);
            v47 = (v47 + v29);
            v12 = v27;
            v13 = v28;
          }
        }

        v31 = *v22;
        v32 = *v23;
        v34 = *v22 <= *v23 || v23 == v4;
        if (v25 && v34)
        {
          v35 = v26 ^ 1;
          *v10 = v31;
          v36 = v22 + 1;
          v31 = *v22;
          v32 = *v23;
        }

        else
        {
          v35 = v26;
          v36 = v22;
        }

        v38 = v22 == v3 || v32 <= v31;
        if (v38 && v24)
        {
          v35 = v35 ^ 2;
          ++v23;
          *v10 = v32;
        }

        v10 += ((v26 - 1) < 2) ^ ((v35 - 1) < 2);
        v24 = v23 != v4;
        v22 = v36;
        v26 = v35;
        v25 = v36 != v3;
        if (v36 == v3)
        {
          v22 = v36;
          v26 = v35;
          if (v23 == v4)
          {
            break;
          }
        }
      }
    }

    v11 = v48;
    v39 = ((v10 - v47) >> 2) + 1;
    *v47 = v39;
    if (v48 && v39 == *v48)
    {
      if (((v10 - v47) >> 2) != 1)
      {
        v40 = v48 + 1;
        v41 = v47 + 1;
        while (v41 != v10)
        {
          v43 = *v40++;
          v42 = v43;
          v44 = *v41++;
          if (v42 != v44)
          {
            goto LABEL_73;
          }
        }
      }

      v10 = v47 - 1;
      v39 = (((v47 - 1) - v48) >> 2) + 1;
    }

    else
    {
LABEL_73:
      v11 = v47;
    }

    *v11 = v39;
  }

  *v10 = 0x7FFFFFFF;

  return final_check(v13, v12, v10 - v13 + 1);
}

void shape_inset(uint64_t a1, int *a2, int a3, uint64_t a4)
{
  v4 = a2;
  if (!(a4 | a3) || (v5 = a4, v44 = 0, v45 = 0, v7 = shape_bounds(a2, &v45 + 1, &v45, &v44 + 1, &v44), v7 <= 3))
  {

    shape_copy(v4);
    return;
  }

  v9 = v45;
  v8 = HIDWORD(v45);
  v10 = HIDWORD(v45) + a3;
  v11 = v45 + v5;
  LODWORD(v45) = v45 + v5;
  HIDWORD(v45) = v10;
  v13 = v44;
  v12 = HIDWORD(v44);
  v14 = HIDWORD(v44) - a3;
  v15 = v44 - v5;
  LODWORD(v44) = v44 - v5;
  HIDWORD(v44) = v14;
  if (v10 >= v14 || v11 >= v15)
  {
    v17 = v12 + v8 + ((v12 + v8) >> 31);
    v18 = v13 + v9;
LABEL_11:
    v19 = v18 / 2;
    if ((v18 / 2) | (v17 >> 1))
    {
      v20 = v17 >> 1;
      v21 = malloc_type_malloc(0x200uLL, 0x4C113E60uLL);
      *v21 = 0x480000000;
      v21[2] = v20;
      v21[3] = v19;
      v21[4] = 0x7FFFFFFF;
    }

    return;
  }

  v22 = v7;
  if (v7 != 9)
  {
    if (!a3)
    {
      v43 = shape_vinset(v4, v5);
LABEL_53:
      if (v43 != &the_empty_shape)
      {
        return;
      }

      v17 = HIDWORD(v44) + HIDWORD(v45) + ((HIDWORD(v44) + HIDWORD(v45)) >> 31);
      v18 = v44 + v45;
      goto LABEL_11;
    }

    v23 = malloc_type_malloc((4 * v7 + 511) & 0x3FFFFFE00, 0x4C113E60uLL);
    if (v23)
    {
      v24 = *v4;
      v25 = v23;
      if (*v4 != 0x7FFFFFFF)
      {
        v26 = 0;
        v27 = v23;
        do
        {
          v28 = v27 + 2;
          v29 = v4[1];
          v30 = v4 + 2;
          v4 += v29;
          if (a3 <= 0)
          {
            if (v29 >= 3)
            {
              v33 = -2147483647;
              v25 = v27 + 2;
              do
              {
                v34 = v30[1];
                v35 = *v30 + a3;
                if (v35 <= v33)
                {
                  v36 = v25 - 1;
                }

                else
                {
                  *v25 = v35;
                  v36 = v25 + 1;
                }

                v33 = v34 - a3;
                *v36 = v34 - a3;
                v25 = v36 + 1;
                v30 += 2;
              }

              while (v30 < v4);
              goto LABEL_36;
            }
          }

          else if (v29 >= 3)
          {
            v25 = v27 + 2;
            do
            {
              v31 = *v30 + a3;
              v32 = v30[1] - a3;
              if (v31 < v32)
              {
                *v25 = v31;
                v25[1] = v32;
                v25 += 2;
              }

              v30 += 2;
            }

            while (v30 < v4);
            goto LABEL_36;
          }

          v25 = v27 + 2;
LABEL_36:
          v37 = (v25 - v27) >> 2;
          *v27 = v24;
          v27[1] = v37;
          v38 = v27 + 1;
          if (v26 && *v26 == v37)
          {
            if (v37 != 2)
            {
              v39 = 0;
              while (&v28[v39] != v25)
              {
                v40 = v26[v39 + 1];
                v41 = v28[v39++];
                if (v40 != v41)
                {
                  goto LABEL_43;
                }
              }
            }

            v38 = v26;
            v25 = v27;
          }

LABEL_43:
          v24 = *v4;
          v26 = v38;
          v27 = v25;
        }

        while (*v4 != 0x7FFFFFFF);
      }

      *v25 = 0x7FFFFFFF;
      v42 = final_check(v23, v22, v25 - v23 + 1);
      if (!v5)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v42 = 0;
      if (!v5)
      {
LABEL_52:
        v43 = v42;
        goto LABEL_53;
      }
    }

    if (v42 != &the_empty_shape)
    {
      v43 = shape_vinset(v42, v5);
      if (v42)
      {
        free(v42);
      }

      goto LABEL_53;
    }

    goto LABEL_52;
  }

  shape_alloc_bounds(v7, v10, v11, v14, v15);
}

int *shape_vinset(int *a1, int a2)
{
  v2 = a1;
  if (!a2)
  {
    return a1;
  }

  if (a1 == &the_empty_shape || a1 == 0)
  {
    return a1;
  }

  v4 = a2;
  v5 = 0;
  v6 = 0;
  v7 = a1;
  while (1)
  {
    if (v4 >= 0)
    {
      v8 = v4;
    }

    else
    {
      v8 = -v4;
    }

    v9 = 0x7FFFFFFF;
    v10 = v7;
    while (1)
    {
      v11 = *v10;
      if (*v10 == 0x7FFFFFFF)
      {
        break;
      }

      v12 = *(v10 + 1);
      v10 += 4 * v12;
      if (v12 >= 3)
      {
        v13 = *v10 - v11;
        if (v13 < v9)
        {
          v9 = v13;
        }

        if (v13 < v8)
        {
          v8 = v13;
        }
      }
    }

    v14 = (v10 - v7) >> 2;
    v15 = v14 + 1;
    v16 = v9 >> 1;
    v18 = v9 < 1 || v8 <= v16;
    if (v4 <= -v8)
    {
      v19 = -v8;
    }

    else
    {
      v19 = v4;
    }

    if (v8 < v16)
    {
      v16 = v8;
    }

    if (v9 > 1)
    {
      v8 = v16;
    }

    if (v8 >= v4)
    {
      v8 = v4;
    }

    v20 = v4 >= 1 ? v8 : v19;
    v21 = v4 >= 1 || v18;
    if (!v6)
    {
      break;
    }

    if (v5 >= v15)
    {
      goto LABEL_45;
    }

    v5 = (v14 & 0xFFFFFE00) + 512;
    a1 = malloc_type_realloc(v6, 8 * v5, 0x9C99BB6EuLL);
    if (!a1)
    {
      goto LABEL_65;
    }

LABEL_44:
    v6 = a1;
LABEL_45:
    v22 = &v6[v15];
    v23 = *v7;
    *v22 = *v7;
    *v6 = v23;
    v24 = v7[1];
    v22[1] = v24;
    v6[1] = v24;
    v25 = v7 + 2;
    v26 = v7[2];
    v27 = v6 + 2;
    v28 = v22 + 2;
    while (v26 != 0x7FFFFFFF)
    {
      v29 = v25[1];
      *v27 = v26 + v20;
      v27[1] = v29;
      v27 += 2;
      *v28 = v26 - v20;
      v28[1] = v29;
      v28 += 2;
      v30 = &v25[v29];
      if (v29 >= 3)
      {
        v31 = v25 + 2;
        do
        {
          v32 = *v31;
          v33 = v31[1];
          v31 += 2;
          *v27 = v32;
          *v28 = v32;
          v27[1] = v33;
          v28[1] = v33;
          v28 += 2;
          v27 += 2;
        }

        while (v31 < v30);
      }

      v26 = *v30;
      v25 = v30;
    }

    *v28 = 0x7FFFFFFF;
    *v27 = 0x7FFFFFFF;
    if (v20 < 1)
    {
      a1 = shape_union(a1, v6, v22);
      v35 = a1;
      if (v21)
      {
        v34 = a1;
      }

      else
      {
        a1 = shape_union(a1, a1, v7);
        v34 = a1;
        if (v35 && v35 != &the_empty_shape)
        {
          free(v35);
        }
      }
    }

    else
    {
      a1 = shape_intersect(a1, v6, v22);
      v34 = a1;
    }

    if (v7 != v2)
    {
      free(v7);
    }

    v4 -= v20;
    if (v4)
    {
      if (v34 != &the_empty_shape)
      {
        v7 = v34;
        if (v34)
        {
          continue;
        }
      }
    }

    free(v6);
    return v34;
  }

  v5 = (v14 & 0xFFFFFE00) + 512;
  a1 = malloc_type_malloc(8 * v5, 0x4C113E60uLL);
  if (a1)
  {
    goto LABEL_44;
  }

LABEL_65:
  if (v7 != v2)
  {
    free(v7);
  }

  return 0;
}

double shape_combine(int32x2_t *a1, int a2, int a3, int a4, int a5, int *a6, int a7, int a8, int a9, int a10, int32x2_t *a11)
{
  v12 = a1;
  v13 = a9;
  v14 = a10;
  v48 = *MEMORY[0x1E69E9840];
  v15 = a7 < a2;
  if (a7 <= a2)
  {
    v16 = a2;
  }

  else
  {
    v16 = a7;
  }

  if (a8 <= a3)
  {
    v17 = a3;
  }

  else
  {
    v17 = a8;
  }

  if (a8 < a3)
  {
    v15 = 1;
  }

  if (a9 >= a4)
  {
    v13 = a4;
  }

  if (a9 > a4)
  {
    v15 = 1;
  }

  v18 = a10 > a5 || v15;
  v19 = v13 - v16;
  if (v19 < 0)
  {
    return result;
  }

  if (a10 >= a5)
  {
    v14 = a5;
  }

  v21 = v14 - v17;
  if (v21 < 0)
  {
    return result;
  }

  v22 = a6;
  if (!a11)
  {
    v26 = v16 - a2;
    v27 = v17 - a3;
    if (a6)
    {
      goto LABEL_28;
    }

    if (a1)
    {
      if (a1 <= 0)
      {
        v36 = xmmword_18439CEB0;
        v37 = 0;
        v38 = a4 - a2;
        v39 = a5 - a3;
        v40 = 0x7FFFFFFF00000002;
        v41 = 0x280000000;
        v42 = v27;
        v43 = 4;
        v44 = v26;
        v45 = v19 + v26;
        v46 = v21 + v27;
        v47 = 0x7FFFFFFF00000002;
        shape_difference(a1, &v36, &v41);
        return result;
      }

      if (a1 == 1)
      {
LABEL_28:
        v18 = 0;
        v41 = 0x280000000;
        v42 = v27;
        v43 = 4;
        v44 = v26;
        v45 = v19 + v26;
        v46 = v21 + v27;
        v47 = 0x7FFFFFFF00000002;
        v25 = &v41;
        if (a6)
        {
          goto LABEL_32;
        }

        goto LABEL_31;
      }

      v34 = a4 - a2;
      v35 = a5 - a3;
      v26 = 0;
      v27 = 0;
    }

    else
    {
      v34 = v19 + v26;
      v35 = v21 + v27;
    }

    return shape_alloc_bounds(a1, v26, v27, v34, v35);
  }

  if (a7 == a2 && a8 == a3)
  {
    v25 = a11;
    if (a6)
    {
      goto LABEL_32;
    }
  }

  else
  {
    a1 = shape_offset(a1, a11, a7 - a2, a8 - a3);
    v25 = a1;
    if (v22)
    {
      goto LABEL_32;
    }
  }

LABEL_31:
  v36 = xmmword_18439CEB0;
  v37 = 0;
  v38 = a4 - a2;
  v39 = a5 - a3;
  v40 = 0x7FFFFFFF00000002;
  v22 = &v36;
LABEL_32:
  v29 = v25 != a11 && v25 != &v41;
  if (v12)
  {
    if ((v12 & 0x80000000) == 0)
    {
      v30 = shape_union(a1, v22, v25);
      v32 = v30;
      if (v29 && v25 && v25 != &the_empty_shape)
      {
        free(v25);
      }

      if (v18)
      {
        v36 = xmmword_18439CEB0;
        v37 = 0;
        v38 = a4 - a2;
        v39 = a5 - a3;
        v40 = 0x7FFFFFFF00000002;
        shape_intersect(v30, &v36, v32);
        if (v32)
        {
          if (v32 != &the_empty_shape)
          {
            v33 = v32;
LABEL_54:
            free(v33);
            return result;
          }
        }
      }

      return result;
    }

    shape_difference(a1, v22, v25);
  }

  else
  {
    shape_intersect(a1, v22, v25);
  }

  if (v29 && v25 && v25 != &the_empty_shape)
  {
    v33 = v25;
    goto LABEL_54;
  }

  return result;
}

_DWORD *shape_reverse_y(uint64_t a1, int a2, int a3, int a4, int a5)
{
  result = &the_empty_shape;
  if (a1 != &the_empty_shape)
  {
    v11 = shape_length(a1);
    if (v11 == 5)
    {
      v12 = a4 + *(a1 + 8) * a2;
      v13 = a5 + *(a1 + 12) * a3;
      if (v13 | v12)
      {
        result = malloc_type_malloc(0x200uLL, 0x4C113E60uLL);
        *result = 0x480000000;
        result[2] = v12;
        result[3] = v13;
        result[4] = 0x7FFFFFFF;
      }

      else
      {
        return &the_empty_shape;
      }
    }

    else
    {
      v14 = v11;
      result = malloc_type_malloc((4 * v11 + 511) & 0xFFFFFFFFFFFFFE00, 0x4C113E60uLL);
      if (result)
      {
        v15 = &result[v14];
        *(v15 - 1) = 0x7FFFFFFF;
        v16 = *(a1 + 4);
        v17 = (a1 + 4 * v16);
        v18 = *v17;
        if (*v17 != 0x7FFFFFFF)
        {
          v19 = v15 - 2;
          do
          {
            if (v16 >= 3)
            {
              v20 = v16 - 1;
              v21 = v17 - 1;
              do
              {
                v22 = *v21--;
                *v19-- = a4 + v22 * a2;
                --v20;
              }

              while (v20 > 1);
            }

            *(v19 - 1) = a5 + v18 * a3;
            *v19 = v16;
            v15 = v19;
            v19 -= 2;
            v16 = v17[1];
            v17 += v16;
            v18 = *v17;
          }

          while (*v17 != 0x7FFFFFFF);
        }

        *(v15 - 3) = 0x80000000;
        *(v15 - 2) = v16;
      }
    }
  }

  return result;
}

void CGContextSelectFont(CGContextRef c, const char *name, CGFloat size, CGTextEncoding textEncoding)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!c)
  {
    v13 = 0;
LABEL_12:

    handle_invalid_context("CGContextSelectFont", v13);
    return;
  }

  if (*(c + 4) != 1129601108)
  {
    v13 = c;
    goto LABEL_12;
  }

  if (name)
  {
    v6 = *&textEncoding;
    if (*(c + 10) || (Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]), (*(c + 10) = Mutable) != 0))
    {
      v9 = CFStringCreateWithFormat(0, 0, @"%s/%d", name, v6);
      if (v9)
      {
        v10 = v9;
        Value = CFDictionaryGetValue(*(c + 10), v9);
        if (Value)
        {
          v12 = Value;
LABEL_9:
          CFRelease(v10);
          CGContextSetFont(c, v12);
          CGContextSetFontSize(c, size);
          return;
        }

        v14 = CGFontCreateWithName(name);
        if (v14)
        {
          v12 = v14;
          if (v6 == 1)
          {
            (*(*(v14 + 2) + 288))(*(v14 + 14), CGPDFEncodingVectorMacRoman, v18, 256);
LABEL_24:
            CGFontSetEncodingVector(v12, v18);
            CFDictionarySetValue(*(c + 10), v10, v12);
            CFRelease(v12);
            goto LABEL_9;
          }

          if (!v6)
          {
            v15 = 0;
            v16 = xmmword_18439C5D0;
            v17.i64[0] = 0x8000800080008;
            v17.i64[1] = 0x8000800080008;
            do
            {
              *&v18[v15] = v16;
              v16 = vaddq_s16(v16, v17);
              v15 += 16;
            }

            while (v15 != 512);
            goto LABEL_24;
          }

          CGPostError("%s: invalid encoding %d.", "get_selected_font", v6);
          CFRelease(v12);
        }

        CFRelease(v10);
      }
    }
  }

  else
  {
    CGPostError("%s: font name is NULL.", "CGContextSelectFont");
  }
}

CGAffineTransform *__cdecl CGContextGetTextMatrix(CGAffineTransform *__return_ptr retstr, CGAffineTransform *c)
{
  if (c && LODWORD(c->c) == 1129601108)
  {
    v3 = *&c[2].ty;
    *&retstr->a = *&c[2].d;
    *&retstr->c = v3;
    v4 = *&c[3].b;
  }

  else
  {
    handle_invalid_context("CGContextGetTextMatrix", c);
    *&retstr->a = *&CGAffineTransformIdentity.a;
    *&retstr->c = *&CGAffineTransformIdentity.c;
    v4 = *&CGAffineTransformIdentity.tx;
  }

  *&retstr->tx = v4;
  return c;
}

CGPoint CGContextGetTextPosition(CGContextRef c)
{
  if (c && *(c + 4) == 1129601108)
  {
    v1 = (c + 152);
    p_y = (c + 160);
  }

  else
  {
    handle_invalid_context("CGContextGetTextPosition", c);
    v1 = &CGPointZero;
    p_y = &CGPointZero.y;
  }

  v3 = *p_y;
  x = v1->x;
  result.y = v3;
  result.x = x;
  return result;
}

void CGContextShowText(CGContextRef c, const char *string, size_t length)
{
  v29 = *MEMORY[0x1E69E9840];
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      if (string && length)
      {
        v6 = MEMORY[0x1EEE9AC00](2 * length);
        v9 = (v28 - v8);
        if (v7 <= 0x7FFFFFFFFFFFFFFELL)
        {
          v10 = (v28 - v8);
        }

        else
        {
          v10 = 0;
        }

        if (v7 - 0x7FFFFFFFFFFFFFFFLL >= 0x8000000000000066)
        {
          v10 = malloc_type_malloc(v6, 0x5CD9DE6EuLL);
        }

        if (v10)
        {
          v11 = MEMORY[0x1EEE9AC00](16 * length);
          v14 = (v28 - v12 - 15);
          if (v13 <= 0xFFFFFFFFFFFFFFELL)
          {
            v15 = (v28 - v12 - 15);
          }

          else
          {
            v15 = 0;
          }

          if (v13 - 0xFFFFFFFFFFFFFFFLL >= 0xF000000000000066)
          {
            v15 = malloc_type_malloc(v11, 0xD61DDB81uLL);
          }

          if (v15)
          {
            v16 = *(*(c + 12) + 136);
            v17 = *(v16 + 8);
            if (v17)
            {
              v18 = *(v16 + 16);
              if (v18 != 0.0)
              {
                explicit = atomic_load_explicit(v17 + 4, memory_order_acquire);
                if (explicit)
                {
                  v20 = 0;
                  do
                  {
                    v10[v20] = *(explicit + 2 * string[v20]);
                    ++v20;
                  }

                  while (length != v20);
                  v21 = vmulq_n_f64(*(c + 120), v18);
                  v22 = vmulq_n_f64(*(c + 136), v18);
                  v28[0] = v21;
                  v28[1] = v22;
                  v28[2] = *(c + 152);
                  CGFontGetGlyphAdvancesForStyle(v17, v28, 13, v10, length, v15);
                  v23 = *(*(*(c + 12) + 136) + 24);
                  if (v23 != 0.0)
                  {
                    v24 = vmlaq_n_f64(vmulq_f64(*(c + 136), 0), *(c + 120), v23);
                    v25 = v15;
                    v26 = length;
                    do
                    {
                      *v25 = vaddq_f64(v24, *v25);
                      ++v25;
                      --v26;
                    }

                    while (v26);
                  }

                  CGContextShowGlyphsWithAdvances(c, v10, v15, length);
                }
              }
            }

            if (v15 != v14)
            {
              free(v15);
            }
          }

          if (v10 != v9)
          {
            free(v10);
          }
        }
      }

      return;
    }

    v27 = c;
  }

  else
  {
    v27 = 0;
  }

  handle_invalid_context("CGContextShowText", v27);
}

void draw_glyphs_19159(uint64_t a1, uint64_t a2, uint64_t a3, size_t a4)
{
  v4 = a4;
  v8 = *(a1 + 96);
  v9 = *(v8 + 136);
  v10 = *(v9 + 32);
  if (v10 <= 0.0)
  {
    goto LABEL_18;
  }

  if ((*(v9 + 1) | 4) == 7)
  {
    return;
  }

  v11 = *(v9 + 16);
  v12 = vmulq_n_f64(*(a1 + 136), v11);
  v13 = vmulq_n_f64(*(a1 + 120), v11);
  v14 = *(v8 + 24);
  v15 = *(v8 + 40);
  v16 = vmlaq_n_f64(vmulq_laneq_f64(v15, v13, 1), v14, v13.f64[0]);
  v17 = vmlaq_n_f64(vmulq_laneq_f64(v15, v12, 1), v14, v12.f64[0]);
  v18 = COERCE_DOUBLE(*&vmulq_f64(v16, v16).f64[1]) + v16.f64[0] * v16.f64[0];
  v19 = COERCE_DOUBLE(*&vmulq_f64(v17, v17).f64[1]) + v17.f64[0] * v17.f64[0];
  v20 = v10 * v10;
  if (v18 > v20 && v19 > v20)
  {
    goto LABEL_18;
  }

  v43 = v13;
  v44 = *(v9 + 16);
  v42 = v12;
  v23 = *(a1 + 152);
  v22 = *(a1 + 160);
  v24 = malloc_type_malloc(32 * a4, 0x3EF24866uLL);
  v25 = *(*(*(a1 + 96) + 136) + 8);
  font_info = get_font_info(v25);
  if (font_info)
  {
    v27 = font_info[2];
  }

  else
  {
    v27 = 0.0;
  }

  if ((CGFontGetGlyphBBoxesForStyle(v25, 0, 13, a2, v4, v24) & 1) == 0)
  {
    free(v24);
LABEL_18:
    v32 = *(a1 + 40);
    if (v32)
    {
      v33 = *(v32 + 88);
      if (v33)
      {

        v33();
      }
    }

    return;
  }

  v28 = 0;
  v45 = vdupq_lane_s64(v44, 0);
  p_size = &v24->size;
  v30 = 1.0 / v27;
  do
  {
    v48 = *&p_size[-1].width;
    transform.b = 0.0;
    transform.c = 0.0;
    transform.a = v30;
    transform.d = v30;
    transform.tx = 0.0;
    transform.ty = 0.0;
    v49 = CGRectApplyAffineTransform(v48, &transform);
    *&p_size[-1].width = v49;
    y = v49.origin.y;
    p_size[-1] = vaddq_f64(v49.origin, vdivq_f64(*(a3 + 16 * v28++), v45));
    p_size += 2;
  }

  while (v4 != v28);
  CGContextSaveGState(a1);
  *&transform.a = v43;
  *&transform.c = v42;
  transform.tx = v23;
  transform.ty = v22;
  CGContextConcatCTM(a1, &transform);
  if (v18 < 6.25 || v19 < 6.25)
  {
    p_width = &v24->size.width;
    width = 0.0;
    x = INFINITY;
    v37 = INFINITY;
    v38 = 0.0;
    height = 0.0;
    do
    {
      v53.origin.x = *(p_width - 2);
      v53.origin.y = *(p_width - 1);
      v40 = *p_width;
      v41 = p_width[1];
      p_width += 4;
      v50.origin.x = x;
      v50.origin.y = v37;
      v50.size.width = width;
      v50.size.height = height;
      v53.size.width = v40;
      v53.size.height = v41;
      v51 = CGRectUnion(v50, v53);
      x = v51.origin.x;
      v37 = v51.origin.y;
      width = v51.size.width;
      height = v51.size.height;
      v38 = v38 + v40 * v41;
      --v4;
    }

    while (v4);
    if (v38 <= 0.0)
    {
      goto LABEL_29;
    }

    CGContextSetAlpha(a1, v38 / (v51.size.height * v51.size.width) * 0.33);
    CGContextBeginPath(a1);
    v52.origin.x = x;
    v52.origin.y = v37;
    v52.size.width = width;
    v52.size.height = height;
    CGContextAddRect(a1, v52);
  }

  else
  {
    CGContextSetAlpha(a1, 0.33);
    CGContextBeginPath(a1);
    CGContextAddRects(a1, v24, v4);
  }

  CGContextDrawPath(a1, kCGPathFill);
LABEL_29:
  CGContextRestoreGState(a1);

  free(v24);
}

void clip_to_glyphs(uint64_t a1, __int16 *a2, __int128 *a3, uint64_t a4)
{
  v8 = malloc_type_malloc(0x18uLL, 0x1020040F89CB87BuLL);
  *v8 = 1;
  v8[1] = 0;
  v8[2] = 0;
  v9 = *(*(a1 + 96) + 136);
  v10 = *(v9 + 16);
  v11 = vmulq_n_f64(*(a1 + 120), v10);
  v12 = vmulq_n_f64(*(a1 + 136), v10);
  *&v13.a = v11;
  *&v13.c = v12;
  *&v13.tx = *(a1 + 152);
  CGTextClippingAppendGlyphs(v8, *(v9 + 8), &v13, a2, a3, a4);
  CGGStateClipToTextClipping(*(a1 + 96), v8);
  CGTextClippingRelease(v8);
}

void CGContextShowTextAtPoint(CGContextRef c, CGFloat x, CGFloat y, const char *string, size_t length)
{
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      *(c + 19) = x;
      *(c + 20) = y;
      CGContextShowText(c, string, length);
    }

    else
    {
      handle_invalid_context("CGContextShowTextAtPoint", c);
    }
  }

  else
  {
    handle_invalid_context("CGContextShowTextAtPoint", 0);
  }
}

void CGContextShowGlyphs(CGContextRef c, const CGGlyph *g, size_t count)
{
  v26 = *MEMORY[0x1E69E9840];
  if (!c)
  {
    v23 = 0;
LABEL_21:

    handle_invalid_context("CGContextShowGlyphs", v23);
    return;
  }

  if (*(c + 4) != 1129601108)
  {
    v23 = c;
    goto LABEL_21;
  }

  if (g)
  {
    if (count)
    {
      v6 = *(*(c + 12) + 136);
      v7 = *(v6 + 8);
      if (v7)
      {
        v8 = *(v6 + 16);
        if (v8 != 0.0)
        {
          v9 = MEMORY[0x1EEE9AC00](16 * count);
          v12 = (&v24 - v10 - 15);
          if (v11 <= 0xFFFFFFFFFFFFFFELL)
          {
            v13 = (&v24 - v10 - 15);
          }

          else
          {
            v13 = 0;
          }

          if (v11 - 0xFFFFFFFFFFFFFFFLL >= 0xF00000000000003ELL)
          {
            v13 = malloc_type_malloc(v9, 0xD5344E91uLL);
          }

          advances = 0;
          font_info = get_font_info(v7);
          *&v15 = 0;
          v16 = 0.0;
          if (font_info)
          {
            v16 = font_info[2];
          }

          v17 = 0;
          v18 = *(*(*(c + 12) + 136) + 24);
          v19 = count;
          do
          {
            v24 = v15;
            v20 = &v13[v17];
            *v20 = v15;
            *(v20 + 1) = 0;
            CGFontGetGlyphAdvances(v7, &g[v17], 1uLL, &advances);
            *(&v21 + 1) = *(&v24 + 1);
            *&v21 = *&v24 + v18 + v8 * advances / v16;
            v24 = v21;
            v15 = v21;
            ++v17;
            --v19;
          }

          while (v19);
          v22 = *(*(*(c + 12) + 136) + 1);
          if (v22 < 4)
          {
            draw_glyphs_19159(c, g, v13, count);
            goto LABEL_27;
          }

          if (v22 - 4 >= 3)
          {
            if (v22 != 7)
            {
              goto LABEL_27;
            }
          }

          else
          {
            draw_glyphs_19159(c, g, v13, count);
          }

          clip_to_glyphs(c, g, v13, count);
LABEL_27:
          *(c + 152) = vaddq_f64(*(c + 152), vmlaq_n_f64(vmulq_f64(*(c + 136), 0), *(c + 120), *&v24));
          if (v13 != v12)
          {
            free(v13);
          }
        }
      }
    }
  }
}

void CGContextShowGlyphsAtPoint(CGContextRef c, CGFloat x, CGFloat y, const CGGlyph *glyphs, size_t count)
{
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      *(c + 19) = x;
      *(c + 20) = y;
      CGContextShowGlyphs(c, glyphs, count);
    }

    else
    {
      handle_invalid_context("CGContextShowGlyphsAtPoint", c);
    }
  }

  else
  {
    handle_invalid_context("CGContextShowGlyphsAtPoint", 0);
  }
}

void CGContextShowGlyphsAtPositionsWithString(CGContext *a1, const CGGlyph *a2, const CGPoint *a3, CFIndex *a4, int64_t a5, const __CFString *a6, CFIndex a7, CFIndex a8, CFDictionaryRef theDict)
{
  v145 = a2;
  v146 = a5;
  v148 = a4;
  v137 = a3;
  __s2[1] = *MEMORY[0x1E69E9840];
  LOBYTE(__s2[0]) = 0;
  if (CGCFDictionaryGetBoolean(theDict, @"rightToLeft", __s2))
  {
    v13 = LOBYTE(__s2[0]) == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13 && CGContextGetType(a1) == 1)
  {
    LOBYTE(__s2[0]) = 0;
    Boolean = CGCFDictionaryGetBoolean(theDict, @"begin", __s2);
    if (LOBYTE(__s2[0]))
    {
      v15 = Boolean;
    }

    else
    {
      v15 = 0;
    }

    v141 = v15;
    LOBYTE(__s2[0]) = 0;
    v143 = theDict;
    v16 = CGCFDictionaryGetBoolean(theDict, @"finished", __s2);
    v128[1] = v128;
    if (LOBYTE(__s2[0]))
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v142 = v17;
    if (a8 < 0)
    {
      v18 = -1;
    }

    else
    {
      v18 = a8;
    }

    if (v18 < 0x3D)
    {
      v19 = 2 * a8 + 1;
    }

    else
    {
      v19 = 1;
    }

    MEMORY[0x1EEE9AC00](v16);
    v21 = v128 - v20;
    if (v18 <= 0x7FFFFFFFFFFFFFFELL)
    {
      v22 = v128 - v20;
    }

    else
    {
      v22 = 0;
    }

    if (v18 - 0x7FFFFFFFFFFFFFFFLL >= 0x800000000000003ELL)
    {
      v22 = malloc_type_malloc(2 * a8, 0x675EA0BEuLL);
    }

    v23 = MEMORY[0x1EEE9AC00](v22);
    v129 = v128 - v25;
    if (v24 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v26 = v128 - v25;
    }

    else
    {
      v26 = 0;
    }

    v134 = v23;
    if (v24 - 0x3FFFFFFFFFFFFFFFLL >= 0xC00000000000007ALL)
    {
      v26 = malloc_type_malloc(8 * a8, 0x749840DuLL);
    }

    v131 = v26;
    v27 = memset(v26, 255, 8 * a8);
    v140 = v128;
    MEMORY[0x1EEE9AC00](v27);
    v28 = v128 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v18 <= 0x7FFFFFFFFFFFFFFELL)
    {
      if (v18 > 0x3C)
      {
        v29 = malloc_type_calloc(2 * a8, 1uLL, 0x53429C02uLL);
      }

      else
      {
        bzero(v28, 2 * a8);
        v29 = v28;
      }
    }

    else
    {
      v29 = 0;
    }

    v153.location = a7;
    v153.length = a8;
    CFStringGetCharacters(a6, v153, v29);
    v30 = v131;
    if (v146 >= 1)
    {
      for (i = 0; i != v146; ++i)
      {
        v32 = v148[i];
        if (v32 >= a7 && a7 + a8 > v32)
        {
          v34 = &v30[8 * (v32 - a7)];
          v35 = *v34;
          if (v35 == -1 || i < v35)
          {
            *v34 = i;
          }

          v37 = *(v34 + 1);
          if (v37 == -1 || i > v37)
          {
            *(v34 + 1) = i;
          }
        }
      }
    }

    Font = CGContextGetFont(a1);
    v136 = a1;
    v130 = v21;
    v138 = v28;
    if (Font)
    {
      Font = (*(*(Font + 16) + 104))(*(Font + 112));
    }

    v144 = Font;
    v139 = a8;
    FPFontGetGlyphsForCharacters();
    Predefined = CFCharacterSetGetPredefined(kCFCharacterSetNewline);
    if (v146)
    {
      v41 = Predefined;
      v42 = a7 + v139;
      v43 = v148;
      v44 = v145;
      v45 = v146;
      v147 = Predefined;
      do
      {
        v47 = *v43++;
        v46 = v47;
        v48 = v47 - a7;
        if (v47 >= a7 && v42 > v46)
        {
          v50 = v29;
          v51 = &v29[v48];
          v52 = *v51;
          v53 = v46 + 1;
          if ((v52 & 0xFC00) != 0xD800 || v42 <= v53)
          {
            v55 = 1;
            if (!v41)
            {
              goto LABEL_79;
            }
          }

          else
          {
            v56 = v51[1];
            v57 = (v56 & 0xFC00) == 56320;
            v58 = v56 + (v52 << 10) - 56613888;
            if (v57)
            {
              v55 = 2;
            }

            else
            {
              v55 = 1;
            }

            if (v57)
            {
              v52 = v58;
            }

            if (!v41)
            {
LABEL_79:
              __s2[0] = 0;
              if (v55 != FPFontGetUnicharsForGlyph() || memcmp(v51, __s2, 2 * v55))
              {
                v134[v48] = 0;
              }

              v29 = v50;
              v41 = v147;
              goto LABEL_83;
            }
          }

          IsLongCharacterMember = CFCharacterSetIsLongCharacterMember(v41, v52);
          v41 = v147;
          if (!IsLongCharacterMember)
          {
            goto LABEL_79;
          }

          v134[v48] = *v44;
          v29 = v50;
        }

LABEL_83:
        ++v44;
        --v45;
      }

      while (v45);
    }

    if (v29 != v138)
    {
      free(v29);
    }

    v149 = 0;
    TypeID = CFStringGetTypeID();
    CFTypeRef = CGCFDictionaryGetCFTypeRef(v143, @"CGPDFTagPropertyLanguageText", TypeID, &v149);
    v62 = *MEMORY[0x1E695E480];
    v63 = v136;
    v64 = v142;
    v65 = v139;
    if (CFTypeRef)
    {
      values = v149;
      __s2[0] = @"CGPDFTagPropertyLanguageText";
      v66 = CFDictionaryCreate(v62, __s2, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CGPDFContextBeginAccessibilitySpan(v63);
      CFRelease(v66);
    }

    Mutable = CFBitVectorCreateMutable(v62, 0);
    CFBitVectorSetCount(Mutable, v65);
    if (v146)
    {
      v132 = v62;
      v133 = 0;
      v68 = 0;
      v69 = a7 + v65;
      v147 = &v131[-8 * a7 + 4];
      v143 = 0;
      v144 = &v134[-a7];
      v140 = Mutable;
      do
      {
        v70 = v148[v68];
        v71 = v70 < a7 || v69 <= v70;
        if (v71 || !CFBitVectorGetBitAtIndex(Mutable, v70 - a7))
        {
          v142 = v64;
          RangeOfCharacterClusterAtIndex = CFStringGetRangeOfCharacterClusterAtIndex();
          v74 = v73;
          v75 = v68;
          v139 = v68;
          do
          {
            if (v74 >= 1)
            {
              v76 = v147 + 8 * RangeOfCharacterClusterAtIndex;
              v77 = RangeOfCharacterClusterAtIndex;
              do
              {
                if (a7 <= v77 && v69 > v77)
                {
                  v78 = *(v76 - 1);
                  if (v68 >= v78)
                  {
                    v79 = *(v76 - 1);
                  }

                  else
                  {
                    v79 = v68;
                  }

                  if (v78 != -1)
                  {
                    v68 = v79;
                  }

                  v80 = *v76;
                  if (v75 <= v80)
                  {
                    v81 = *v76;
                  }

                  else
                  {
                    v81 = v75;
                  }

                  if (v80 != -1)
                  {
                    v75 = v81;
                  }
                }

                ++v77;
                v76 += 8;
              }

              while (v77 < v74 + RangeOfCharacterClusterAtIndex);
            }

            if (v68 > v75)
            {
              break;
            }

            v82 = 0;
            v83 = v75 - v68 + 1;
            v84 = &v148[v68];
            do
            {
              v86 = *v84++;
              v85 = v86;
              v87 = v74 + RangeOfCharacterClusterAtIndex;
              if (RangeOfCharacterClusterAtIndex > v86 || v87 <= v85)
              {
                v89 = CFStringGetRangeOfCharacterClusterAtIndex();
                if (RangeOfCharacterClusterAtIndex >= v89)
                {
                  RangeOfCharacterClusterAtIndex = v89;
                }

                v91 = v89 + v90;
                if (v87 > v89 + v90)
                {
                  v91 = v87;
                }

                v74 = v91 - RangeOfCharacterClusterAtIndex;
                v82 = 1;
              }

              --v83;
            }

            while (v83);
          }

          while ((v82 & 1) != 0);
          v92 = v75 + 1;
          v93 = RangeOfCharacterClusterAtIndex;
          if (v75 + 1 < v146)
          {
            while (v145[v92] == -1)
            {
              v94 = v148[v92];
              v95 = CFStringGetRangeOfCharacterClusterAtIndex();
              v97 = v95 + v96;
              if (v94 < v95 + v96)
              {
                v98 = v147 + 8 * v94;
                do
                {
                  if (a7 <= v94 && v69 > v94)
                  {
                    v99 = *(v98 - 1);
                    if (v68 >= v99)
                    {
                      v100 = *(v98 - 1);
                    }

                    else
                    {
                      v100 = v68;
                    }

                    if (v99 != -1)
                    {
                      v68 = v100;
                    }

                    v101 = *v98;
                    if (v75 <= v101)
                    {
                      v102 = *v98;
                    }

                    else
                    {
                      v102 = v75;
                    }

                    if (v101 != -1)
                    {
                      v75 = v102;
                    }
                  }

                  ++v94;
                  v98 += 8;
                }

                while (v97 != v94);
              }

              if (RangeOfCharacterClusterAtIndex >= v95)
              {
                v93 = v95;
              }

              else
              {
                v93 = RangeOfCharacterClusterAtIndex;
              }

              if (v74 + RangeOfCharacterClusterAtIndex > v97)
              {
                v97 = v74 + RangeOfCharacterClusterAtIndex;
              }

              v74 = v97 - v93;
              ++v92;
              RangeOfCharacterClusterAtIndex = v93;
              if (v92 == v146)
              {
                goto LABEL_150;
              }
            }

            v93 = RangeOfCharacterClusterAtIndex;
          }

LABEL_150:
          v103 = v74 + v93;
          if (v74 + v93 >= v69)
          {
            v104 = v69;
          }

          else
          {
            v104 = v74 + v93;
          }

          if (a7 > v93 || v93 >= v69)
          {
            v107 = v104 - a7;
            if (a7 < v103)
            {
              v108 = a7;
            }

            else
            {
              v108 = 0;
            }

            if (a7 < v103)
            {
              v109 = v107;
            }

            else
            {
              v109 = 0;
            }

            if (v93 <= a7)
            {
              v106 = v108;
            }

            else
            {
              v106 = 0;
            }

            if (v93 <= a7)
            {
              v105.length = v109;
            }

            else
            {
              v105.length = 0;
            }
          }

          else
          {
            v105.length = v104 - v93;
            v106 = v93;
          }

          v110 = v143;
          v105.location = v106 - a7;
          v111 = 1;
          CFBitVectorSetBits(v140, v105, 1u);
          v135 = v75 + 1;
          v138 = (v75 + 1 - v68);
          v63 = v136;
          if (v74 == v138)
          {
            if (v74 >= 1)
            {
              v112 = v147 + 8 * v93;
              v113 = v93;
              while (1)
              {
                if (a7 <= v113 && v69 > v113)
                {
                  v114 = *&v144[2 * v113];
                  if (*&v144[2 * v113] || (CFStringGetCharacterAtIndex(a6, v113) & 0xFC00) != 0xDC00 || v113 <= v93 || (CFStringGetCharacterAtIndex(a6, v113 - 1) & 0xFC00) != 0xD800)
                  {
                    v115 = *(v112 - 1);
                    if (v115 == -1 || v115 != *v112)
                    {
                      v63 = v136;
                      v110 = v143;
                      if ((v141 & 1) == 0)
                      {
                        goto LABEL_193;
                      }

LABEL_195:
                      if (v110 >= 1)
                      {
                        CGContextShowGlyphsAtPositions(v63, &v145[v133], &v137[v133], v110);
                      }

                      v117 = v132;
                      v154.location = v93;
                      v154.length = v74;
                      v118 = CFStringCreateWithSubstring(v132, a6, v154);
                      values = v118;
                      __s2[0] = @"CGPDFTagPropertyActualText";
                      v119 = CFDictionaryCreate(v117, __s2, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                      CGPDFContextBeginAccessibilitySpan(v63);
                      CFRelease(v119);
                      CFRelease(v118);
                      v120 = 0;
                      v121 = v142;
                      v122 = v138;
                      goto LABEL_206;
                    }

                    if (v145[v115] != v114)
                    {
                      break;
                    }
                  }
                }

                ++v113;
                v112 += 8;
                if (v113 >= v103)
                {
                  v111 = 0;
LABEL_190:
                  v63 = v136;
                  v110 = v143;
                  goto LABEL_191;
                }
              }

              v111 = 1;
              goto LABEL_190;
            }

            v111 = 0;
          }

LABEL_191:
          if (v141)
          {
            goto LABEL_195;
          }

          if (v111)
          {
LABEL_193:
            if (a7 <= v93 && v103 <= v69)
            {
              goto LABEL_195;
            }
          }

          if (v133 >= v68)
          {
            v123 = v68;
          }

          else
          {
            v123 = v133;
          }

          v124 = v133 + v110;
          if (v133 + v110 <= v135)
          {
            v124 = v135;
          }

          v120 = (v124 - v123);
          v122 = v138;
          if (!v110)
          {
            v120 = v138;
            v123 = v68;
          }

          v133 = v123;
          v121 = v142;
          if (v142)
          {
LABEL_206:
            v143 = v120;
            CGContextShowGlyphsAtPositions(v63, &v145[v68], &v137[v68], v122);
            v126 = a7 <= v93 && v103 <= v69;
            if ((v121 | v126))
            {
              CGPDFContextEndAccessibilitySpan(v63);
            }
          }

          else
          {
            v143 = v120;
          }

          v64 = 0;
          v141 = 0;
          v68 = v139;
          Mutable = v140;
        }

        ++v68;
      }

      while (v68 != v146);
      CFRelease(Mutable);
      v127 = v129;
      if (v143 > 0)
      {
        CGContextShowGlyphsAtPositions(v63, &v145[v133], &v137[v133], v143);
      }
    }

    else
    {
      CFRelease(Mutable);
      v127 = v129;
    }

    if (v149)
    {
      CGPDFContextEndAccessibilitySpan(v63);
    }

    if (v64)
    {
      CGPDFContextEndAccessibilitySpan(v63);
    }

    if (v131 != v127)
    {
      free(v131);
    }

    if (v134 != v130)
    {
      free(v134);
    }
  }

  else
  {

    CGContextShowGlyphsAtPositions(a1, v145, v137, v146);
  }
}