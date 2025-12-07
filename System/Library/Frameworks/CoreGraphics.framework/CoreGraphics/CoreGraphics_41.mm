BOOL CGPDFLayoutPointSelectsFirstIndex(uint64_t a1, uint64_t a2, uint64_t a3, double a4, CGFloat a5, double a6)
{
  HitTestRectAtIndex = CGPDFLayoutGetHitTestRectAtIndex(a1, a2, a6);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  if (a1 && (a2 & 0x8000000000000000) == 0 && *(a1 + 48) > a2 && (v17 = *(a1 + 24)) != 0 && (v18 = *(v17 + 24 * a2 + 8)) != 0)
  {
    v19 = *(v18 + 40);
    v20.f64[0] = a4;
    v20.f64[1] = a5;
    v41 = v20;
    if (v19 == 0.0)
    {
      v23 = v20;
    }

    else
    {
      v22 = __sincos_stret(v19);
      v21.f64[0] = v22.__cosval;
      v21.f64[1] = -v22.__sinval;
      v23 = vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(v22, v41, 1), v21, a4), 0);
    }
  }

  else
  {
    v23.x = a4;
    v23.y = a5;
    v41 = v23;
  }

  y = v23.y;
  v43.origin.x = HitTestRectAtIndex;
  v43.origin.y = v12;
  v43.size.width = v14;
  v43.size.height = v16;
  if (CGRectContainsPoint(v43, v23))
  {
    return 1;
  }

  v26 = CGPDFLayoutGetHitTestRectAtIndex(a1, a3, a6);
  v28 = v27;
  v30 = v29;
  v32 = v31;
  if (a1)
  {
    v33 = v41;
    if ((a3 & 0x8000000000000000) == 0 && *(a1 + 48) > a3)
    {
      v34 = *(a1 + 24);
      if (v34)
      {
        v35 = *(v34 + 24 * a3 + 8);
        if (v35)
        {
          v36 = *(v35 + 40);
          if (v36 != 0.0)
          {
            v38 = __sincos_stret(v36);
            v37.f64[0] = v38.__cosval;
            v37.f64[1] = -v38.__sinval;
            v33 = vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(v38, v41, 1), v37, a4), 0);
          }
        }
      }
    }
  }

  else
  {
    v33 = v41;
  }

  v39 = v33.y;
  v44.origin.x = v26;
  v44.origin.y = v28;
  v44.size.width = v30;
  v44.size.height = v32;
  return !CGRectContainsPoint(v44, v33);
}

double CGPDFLayoutGetHitTestRectAtIndex(uint64_t a1, uint64_t a2, double a3)
{
  v9.origin.x = CGPDFLayoutGetCharacterBounds(a1, a2);
  *&v6 = CGRectInset(v9, -a3, -a3);
  NodeContainingTextRange = CGPDFNodeGetNodeContainingTextRange(*(a1 + 104), a2, 1);
  if (NodeContainingTextRange)
  {
    while (*NodeContainingTextRange != 514)
    {
      NodeContainingTextRange = *(NodeContainingTextRange + 1);
      if (!NodeContainingTextRange)
      {
        return v6;
      }
    }

    CGPDFNodeGetHitTestRect(NodeContainingTextRange, a3);
  }

  return v6;
}

uint64_t CGPDFLayoutGetStringDirectionFromCursorRange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 1;
  if ((a2 & 0x8000000000000000) == 0 && a3 >= 1)
  {
    v6 = a2 + a3;
    if (a2 + a3 > *(a1 + 48))
    {
      return 1;
    }

    if (*(a1 + 72) != 1)
    {
      return 1;
    }

    v11[0] = 0;
    v11[1] = 0;
    v12 = 0;
    CGPDFLayoutGetRTLData(v11, a1);
    if (v12 < 1)
    {
      return 1;
    }

    v7 = v6 - 1;
    if (a2 == v6 - 1)
    {
      return CGPDFLayoutReadsLeftToRightAtIndex(a1, a2);
    }

    v3 = 1;
    StringRangeFromRange = CGPDFLayoutGetStringRangeFromRange(a1, a2, 1);
    v9 = CGPDFLayoutGetStringRangeFromRange(a1, v7, 1);
    if ((StringRangeFromRange & 0x8000000000000000) == 0 && (v9 & 0x8000000000000000) == 0)
    {
      return StringRangeFromRange <= v9;
    }
  }

  return v3;
}

uint64_t CGPDFLayoutGetIndexFromStringIndex(uint64_t a1, uint64_t a2)
{
  if (a2 == -1)
  {
    return -1;
  }

  v11 = v2;
  v12 = v3;
  if (*(a1 + 72) == 1)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    CGPDFLayoutGetRTLData(&v8, a1);
    if (v10 > a2)
    {
      v6 = *(v9 + 4 * a2);
      if ((v6 & 0x80000000) == 0)
      {
        if (*(a1 + 48) <= v6)
        {
          return -1;
        }

        else
        {
          return *(v9 + 4 * a2);
        }
      }

      return -1;
    }
  }

  result = CPMultiUnicodesGetCharacterIndexAtUnicodeIndex(*(a1 + 56), a2);
  if (result < 0)
  {
    return -1;
  }

  if (result >= *(a1 + 48))
  {
    return -1;
  }

  return result;
}

uint64_t CGPDFLayoutCreateDirectionalSelection(uint64_t a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  if (!a1)
  {
    __assert_rtn("CGPDFLayoutCreateDirectionalSelection", "CGPDFLayout.m", 1496, "layout");
  }

  v5 = a5.n128_u64[0];
  v6 = a4.n128_u64[0];
  v7 = a3.n128_u64[0];
  v8 = a2.n128_u64[0];
  v10 = *(a1 + 104);
  v20 = 0;
  v18 = 0;
  v19 = 0;
  if (*(a1 + 72) == 1)
  {
    v16 = 0;
    v17 = 0;
    CGPDFNodeGetNodeRangeBetweenPoints(v10, 1, 1, &v19, &v18, &v20, &v16, a2, a3, a4, a5.n128_f64[0], 0.0);
    if ((CGPDFLayoutGetStringDirectionFromCursorRange(a1, v16, v17) & 1) == 0)
    {
      v20 ^= 1u;
    }
  }

  else
  {
    CGPDFNodeGetNodeRangeBetweenPoints(v10, 1, 1, &v19, &v18, &v20, 0, a2, a3, a4, a5.n128_f64[0], 0.0);
  }

  if (!v20)
  {
    return 0;
  }

  v11.n128_u64[0] = v8;
  v12.n128_u64[0] = v7;
  v13.n128_u64[0] = v6;
  v14.n128_u64[0] = v5;
  return CreateCharacterSelectionBetweenPoints(a1, 1, v11, v12, v13, v14);
}

uint64_t CGPDFLayoutCreateSelectionBetweenIndexAndPoint(uint64_t a1, uint64_t a2, uint64_t a3, CGFloat a4, CGFloat a5)
{
  *v42 = a4;
  *&v42[1] = a5;
  if (!a1)
  {
    return 0;
  }

  v5 = a3;
  v10 = *(a1 + 104);
  v40 = 0;
  v41 = 0;
  v39 = 0;
  CGPDFNodeGetNodeRangeFromIndexToPoint(v10, 1, a2, a3, 1, &v41, &v40, &v39, a4, a5, 0.0);
  if (v39 >= a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = v39;
  }

  if (v39 >= a2)
  {
    v12 = v39 - a2 + 1;
  }

  else
  {
    v12 = a2 + 1 - v39;
  }

  if (*(a1 + 72) == 1 && (CGPDFLayoutGetStringDirectionFromCursorRange(a1, v11, v12) & 1) == 0)
  {
    v5 ^= 1u;
    CGPDFNodeGetNodeRangeFromIndexToPoint(v10, 1, a2, v5, 1, &v41, &v40, &v39, a4, a5, 0.0);
    if (v39 >= a2)
    {
      v12 = v39 - a2 + 1;
    }

    else
    {
      v12 = a2 + 1 - v39;
    }

    if (v39 >= a2)
    {
      v11 = a2;
    }

    else
    {
      v11 = v39;
    }
  }

  v13 = 0;
  v14 = v41;
  if (v41 && v40)
  {
    if (v5)
    {
      if (v39 >= a2)
      {
        v15 = v41;
        v14 = v40;
        goto LABEL_23;
      }
    }

    else if (v39 <= a2)
    {
      v15 = v40;
LABEL_23:
      IndexSet = CreateIndexSet(v15, v14, 1, 1);
      v17 = IndexSet;
      if (IndexSet)
      {
        if (IndexSet[2].i8[8])
        {
          CPIndexSetNormalize(IndexSet);
        }

        v18 = *(v17 + 16);
        if (v18 < 1)
        {
          goto LABEL_64;
        }

        Range = CPIndexSetGetRange(v17, 0);
        v21 = v20;
        v22 = CPIndexSetGetRange(v17, v18 - 1);
        if (Range != v11)
        {
          v24 = v21 - v11 + Range;
          if (v24 < 1)
          {
            v25 = -1;
          }

          else
          {
            v25 = v11;
          }

          if (v24 < 1)
          {
            v24 = 0;
          }

          if (*(v17 + 16) >= 1)
          {
            v26 = *(v17 + 32);
            *v26 = v25;
            v26[1] = v24;
            *(v17 + 40) = 1;
          }

          if (v18 == 1)
          {
            v22 = v25;
            v23 = v24;
          }
        }

        if (v22 < 0 || v23 + v22 == v11 + v12 || *(v17 + 16) < v18)
        {
          if (!*(v17 + 40))
          {
            goto LABEL_49;
          }
        }

        else
        {
          v28 = v11 + v12 - v22;
          if (v28 >= 1)
          {
            v29 = v22;
          }

          else
          {
            v28 = 0;
            v29 = -1;
          }

          v30 = (*(v17 + 32) + 16 * (v18 - 1));
          *v30 = v29;
          v30[1] = v28;
          *(v17 + 40) = 1;
        }

        CPIndexSetNormalize(v17);
LABEL_49:
        if (*(v17 + 16) < 1)
        {
          v31 = -1;
        }

        else
        {
          v31 = **(v17 + 32);
        }

        LastIndex = CPIndexSetGetLastIndex(v17);
        v13 = 0;
        if (LastIndex == -1 || v31 == -1 || LastIndex < v31)
        {
          goto LABEL_67;
        }

        if (*(a1 + 72) != 1)
        {
          v37 = CGPDFSelectionCreateWithIndexSet(*(a1 + 16), v17);
          goto LABEL_66;
        }

        if (v5)
        {
          v33 = 0;
        }

        else
        {
          v33 = v42;
        }

        if (v5)
        {
          v34 = v42;
        }

        else
        {
          v34 = 0;
        }

        v38 = 0;
        StringRangeFromCursorRange = CGPDFLayoutGetStringRangeFromCursorRange(a1, v31, LastIndex - v31 + 1, v33, v34, 1, &v38, 0.0);
        if ((StringRangeFromCursorRange & 0x8000000000000000) == 0)
        {
          v37 = CGPDFSelectionCreateForStringRange(*(a1 + 16), StringRangeFromCursorRange, v36);
LABEL_66:
          v13 = v37;
          goto LABEL_67;
        }

LABEL_64:
        v13 = 0;
LABEL_67:
        CFRelease(v17);
        return v13;
      }
    }

    return 0;
  }

  return v13;
}

uint64_t CGPDFLayoutCreateSelectionBetweenRangeAndPoint(uint64_t a1, uint64_t a2, uint64_t a3, int a4, CGFloat a5, CGFloat a6)
{
  if (!a1)
  {
    return 0;
  }

  v12 = *(a1 + 104);
  if ((a4 - 1) > 4)
  {
    v13 = 0;
  }

  else
  {
    v13 = dword_1844DC0C8[a4 - 1];
  }

  SelectionBetweenIndexAndPoint = CGPDFLayoutCreateSelectionBetweenIndexAndPoint(a1, a2, 1, a5, a6);
  if (SelectionBetweenIndexAndPoint)
  {
    v14 = SelectionBetweenIndexAndPoint;
    if (a4)
    {
      LastIndex = CGPDFSelectionGetLastIndex(SelectionBetweenIndexAndPoint);
      NodePrecedingTextIndex = CGPDFNodeGetNodePrecedingTextIndex(v12, LastIndex);
      if (NodePrecedingTextIndex)
      {
        while (*NodePrecedingTextIndex != v13)
        {
          NodePrecedingTextIndex = *(NodePrecedingTextIndex + 1);
          if (!NodePrecedingTextIndex)
          {
            return v14;
          }
        }

        TextRange = CGPDFNodeGetTextRange(NodePrecedingTextIndex);
        v24 = v23 + ~LastIndex + TextRange;
        if (a4 == 1 && (v24 & 0x8000000000000000) == 0)
        {
          v25 = TextRange;
          v26 = CPIndexSetCreateWithRange(TextRange, v23);
          if (CGPDFLayoutExtendRangeToWordBoundaries(a1, v26, LastIndex, 1))
          {
            v27 = CPIndexSetGetLastIndex(v26);
            if (v27 != -1 && v27 >= v25)
            {
              v24 = v27 - LastIndex;
            }
          }

          if (v26)
          {
            CFRelease(v26);
          }
        }

        if (v24)
        {
          CGPDFSelectionExtendAtEnd(v14, v24);
        }
      }
    }
  }

  else
  {
    v18 = CGPDFLayoutCreateSelectionBetweenIndexAndPoint(a1, a3 + a2 - 1, 0, a5, a6);
    if (v18)
    {
      v14 = v18;
      if (a4)
      {
        v19 = *(v18 + 184);
        v20 = *(v18 + 192) == v19 ? -1 : *(v19 + 8);
        NodeFollowingTextIndex = CGPDFNodeGetNodeFollowingTextIndex(v12, v20);
        if (NodeFollowingTextIndex)
        {
          while (*NodeFollowingTextIndex != v13)
          {
            NodeFollowingTextIndex = *(NodeFollowingTextIndex + 1);
            if (!NodeFollowingTextIndex)
            {
              return v14;
            }
          }

          v30 = CGPDFNodeGetTextRange(NodeFollowingTextIndex);
          v32 = v20 - v30;
          if (a4 == 1 && (v32 & 0x8000000000000000) == 0)
          {
            v33 = v30;
            v34 = v31;
            v35 = CPIndexSetCreateWithRange(v30, v31);
            if (CGPDFLayoutExtendRangeToWordBoundaries(a1, v35, v20, 1))
            {
              FirstIndex = CPIndexSetGetFirstIndex(v35);
              if (FirstIndex != -1 && FirstIndex < v33 + v34)
              {
                v32 = v20 - FirstIndex;
              }
            }

            if (v35)
            {
              CFRelease(v35);
            }
          }

          if (v32)
          {
            CGPDFSelectionExtendAtStart(v14, v32);
          }
        }
      }
    }

    else
    {
      v21 = CPIndexSetCreateWithRange(a2, a3);
      v14 = CGPDFSelectionCreateWithIndexSet(*(a1 + 16), v21);
      if (v21)
      {
        CFRelease(v21);
      }
    }
  }

  return v14;
}

uint64_t CGPDFLayoutCreateSelectionFromPointWithOptions(uint64_t a1, uint64_t a2, int a3, __n128 a4, __n128 a5, __n128 a6)
{
  v6 = a1;
  v52[0] = a4.n128_u64[0];
  v52[1] = a5.n128_u64[0];
  if (a1)
  {
    v8 = a2;
    v9 = a5.n128_f64[0];
    v10 = a4.n128_f64[0];
    if (a2 == 1)
    {
      v11 = 1.0;
    }

    else
    {
      v11 = 2.0;
    }

    if (a2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0.0;
    }

    v13 = *(a1 + 104);
    if (a2)
    {
      if (a2 > 5)
      {
        v14 = 0;
      }

      else
      {
        v14 = dword_1844DC0C8[(a2 - 1)];
      }
    }

    else
    {
      v14 = 1;
    }

    a6.n128_f64[0] = v12;
    NodeAfterPoint = CGPDFNodeGetNodeAfterPoint(*(a1 + 104), v14, a3 == 1, a4, a5, a6);
    NodeBefore = CGPDFNodeGetNodeBefore(v13, NodeAfterPoint, v14, a3 == 1);
    if (CGPDFNodeIsHitByPoint(NodeBefore, v10, v9, v12))
    {
      NodeAfterPoint = NodeBefore;
    }

    TextRange = CGPDFNodeGetTextRange(NodeAfterPoint);
    v19 = v18;
    v20 = CGPDFNodeGetNodeBefore(v13, 0, v14, a3 == 1);
    if (NodeAfterPoint)
    {
      v21 = v20 == 0;
    }

    else
    {
      v21 = 1;
    }

    if (!v21)
    {
      IndexSet = CreateIndexSet(NodeAfterPoint, v20, v14, a3 == 1);
      v51 = IndexSet;
      if (IndexSet)
      {
        v23 = IndexSet;
        if (IndexSet[2].i8[8])
        {
          CPIndexSetNormalize(IndexSet);
        }

        if (v23[1].i64[0] < 1)
        {
          goto LABEL_42;
        }

        v44 = v19;
        TextIndexAfterPoint = CGPDFNodeGetTextIndexAfterPoint(NodeAfterPoint, v10, v9, v12);
        Range = CPIndexSetGetRange(v23, 0);
        v27 = TextRange < TextIndexAfterPoint && v8 == 0;
        v28 = TextRange <= TextIndexAfterPoint && !v27;
        if (!v28 && v23[1].i64[0] >= 1)
        {
          v29 = v26 - TextIndexAfterPoint + Range;
          if (v29 >= 1)
          {
            v30 = TextIndexAfterPoint;
          }

          else
          {
            v29 = 0;
            v30 = -1;
          }

          v31 = v23[2].i64[0];
          *v31 = v30;
          v31[1] = v29;
          v23[2].i8[8] = 1;
        }

        FirstIndex = CPIndexSetGetFirstIndex(v23);
        LastIndex = CPIndexSetGetLastIndex(v23);
        if (FirstIndex == -1 || LastIndex == -1)
        {
LABEL_42:
          v6 = 0;
LABEL_43:
          CFRelease(v23);
          return v6;
        }

        v49 = TextIndexAfterPoint;
        v50 = LastIndex - TextIndexAfterPoint + 1;
        if (*(v6 + 72) != 1 || (v47 = 0uLL, v48 = 0, CGPDFLayoutGetRTLData(&v47, v6), v36 = v48, v48 < 2))
        {
LABEL_67:
          if (v8 == 1 && !CGPDFLayoutExtendRangeToWordBoundaries(v6, v23, v49, v50))
          {
            v6 = 0;
            if (!v23)
            {
              return v6;
            }
          }

          else
          {
            v6 = CGPDFSelectionCreateWithIndexSet(*(v6 + 16), v23);
            if (!v23)
            {
              return v6;
            }
          }

          goto LABEL_43;
        }

        CFRelease(v23);
        v37 = *(*(&v47 + 1) + 4 * v36 - 8);
        if (v8)
        {
          v38 = TextRange + v44;
          v39 = v52;
          if (TextIndexAfterPoint >= v38 && CGPDFNodeIsHitByPoint(NodeAfterPoint, v10, v9, v11))
          {
            TextIndexAfterPoint = v38 - 1;
            v39 = 0;
          }
        }

        else
        {
          v39 = v52;
        }

        if (TextIndexAfterPoint <= v37)
        {
          v40 = TextIndexAfterPoint;
        }

        else
        {
          v40 = v37;
        }

        if (TextIndexAfterPoint > v37)
        {
          v41 = TextIndexAfterPoint - v37 + 1;
        }

        else
        {
          v41 = v37 - TextIndexAfterPoint + 1;
        }

        if (TextIndexAfterPoint <= v37)
        {
          v42 = v39;
        }

        else
        {
          v42 = 0;
        }

        if (TextIndexAfterPoint <= v37)
        {
          v43 = 0;
        }

        else
        {
          v43 = v39;
        }

        v49 = v40;
        v50 = v41;
        v45 = v47;
        v46 = v48;
        if (LayoutCreateSelectionSupport(v6, &v49, v42, v43, a3 == 1, &v51, v8, &v45, v12, v13, v14))
        {
          v23 = v51;
          goto LABEL_67;
        }
      }
    }

    return 0;
  }

  return v6;
}

uint64_t LayoutCreateSelectionSupport(uint64_t a1, uint64_t *a2, double *a3, double *a4, uint64_t a5, int64x2_t **a6, int a7, uint64_t a8, double a9, int *a10, int a11)
{
  v14 = a5;
  v35 = 0;
  StringRangeFromCursorRange = CGPDFLayoutGetStringRangeFromCursorRange(a1, *a2, a2[1], a3, a4, a5, &v35, a9);
  if (StringRangeFromCursorRange < 0)
  {
    return 0;
  }

  v19 = StringRangeFromCursorRange;
  v20 = v18;
  IndexSetForStringRange = CGPDFLayoutCreateIndexSetForStringRange(a1, StringRangeFromCursorRange, v18);
  *a6 = IndexSetForStringRange;
  if ((v14 & 1) == 0)
  {
    v22 = CGPDFLayoutCopyIndexSetRemovingGraphics(a1, IndexSetForStringRange);
    *a6 = v22;
    if (!IndexSetForStringRange)
    {
      if (v22)
      {
        goto LABEL_6;
      }

      return 0;
    }

    CFRelease(IndexSetForStringRange);
    IndexSetForStringRange = *a6;
  }

  if (!IndexSetForStringRange)
  {
    return 0;
  }

LABEL_6:
  if (!a7)
  {
    return 1;
  }

  *a2 = CGPDFLayoutGetRangeFromStringRange(a1, v19, v20);
  a2[1] = v23;
  v24 = (*(a8 + 8) + 4 * v19);
  v25 = v24[v20 - 1];
  for (i = CGPDFNodeGetNodeContainingTextRange(a10, *v24, 1); i; i = *(i + 1))
  {
    if (*i == a11)
    {
      break;
    }
  }

  for (j = CGPDFNodeGetNodeContainingTextRange(a10, v25, 1); j; j = *(j + 1))
  {
    if (*j == a11)
    {
      break;
    }
  }

  if (i)
  {
    v28 = *a6;
    TextRange = CGPDFNodeGetTextRange(i);
    CPIndexSetAddRange(v28, TextRange, v30);
  }

  result = 1;
  if (j && j != i)
  {
    v32 = *a6;
    v33 = CGPDFNodeGetTextRange(j);
    CPIndexSetAddRange(v32, v33, v34);
    return 1;
  }

  return result;
}

uint64_t CGPDFLayoutCreateSelectionToPointWithOptions(uint64_t a1, unsigned int a2, int a3, __n128 a4, __n128 a5, __n128 a6)
{
  v51[0] = a4.n128_u64[0];
  v51[1] = a5.n128_u64[0];
  if (!a1)
  {
    return 0;
  }

  v8 = a5.n128_f64[0];
  v9 = a4.n128_f64[0];
  if (a2 == 1)
  {
    v11 = 1.0;
  }

  else
  {
    v11 = 2.0;
  }

  if (a2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0.0;
  }

  v13 = *(a1 + 104);
  if (a2)
  {
    if (a2 > 5)
    {
      v14 = 0;
    }

    else
    {
      v14 = dword_1844DC0C8[a2 - 1];
    }
  }

  else
  {
    v14 = 1;
  }

  a6.n128_f64[0] = v12;
  NodeAfterPoint = CGPDFNodeGetNodeAfterPoint(*(a1 + 104), v14, a3 == 1, a4, a5, a6);
  NodeBefore = CGPDFNodeGetNodeBefore(v13, NodeAfterPoint, v14, a3 == 1);
  if (CGPDFNodeIsHitByPoint(NodeAfterPoint, v9, v8, v12))
  {
    NodeBefore = NodeAfterPoint;
  }

  TextRange = CGPDFNodeGetTextRange(NodeBefore);
  v19 = v18;
  NodeAfter = CGPDFNodeGetNodeAfter(v13, 0, v14, a3 == 1);
  if (!NodeBefore || NodeAfter == 0)
  {
    return 0;
  }

  IndexSet = CreateIndexSet(NodeAfter, NodeBefore, v14, a3 == 1);
  v50 = IndexSet;
  if (!IndexSet)
  {
    return 0;
  }

  v24 = IndexSet;
  v43 = TextRange;
  if (IndexSet[2].i8[8])
  {
    CPIndexSetNormalize(IndexSet);
  }

  v25 = v24[1].i64[0];
  if (v25 < 1)
  {
    v22 = 0;
    goto LABEL_61;
  }

  v42 = a3;
  TextIndexBeforePoint = CGPDFNodeGetTextIndexBeforePoint(NodeBefore, v9, v8, v12);
  Range = CPIndexSetGetRange(v24, v25 - 1);
  if (a2)
  {
    v28 = 1;
  }

  else
  {
    v28 = TextRange + v19 - 1 <= TextIndexBeforePoint;
  }

  v29 = !v28;
  v30 = TextRange + v19 > TextIndexBeforePoint && v29 == 0;
  if (!v30 && v24[1].i64[0] >= v25)
  {
    v31 = TextIndexBeforePoint - Range + 1;
    if (v31 >= 1)
    {
      v32 = TextIndexBeforePoint - Range + 1;
    }

    else
    {
      v32 = 0;
    }

    if (v31 < 1)
    {
      v33 = -1;
    }

    else
    {
      v33 = Range;
    }

    v34 = (v24[2].i64[0] + 16 * (v25 - 1));
    *v34 = v33;
    v34[1] = v32;
    v24[2].i8[8] = 1;
  }

  FirstIndex = CPIndexSetGetFirstIndex(v24);
  LastIndex = CPIndexSetGetLastIndex(v24);
  v22 = 0;
  if (FirstIndex == -1 || LastIndex == -1)
  {
    goto LABEL_61;
  }

  v48 = FirstIndex;
  v49 = TextIndexBeforePoint - FirstIndex + 1;
  if (*(a1 + 72) != 1)
  {
    goto LABEL_58;
  }

  v46 = 0uLL;
  v47 = 0;
  CGPDFLayoutGetRTLData(&v46, a1);
  if (v47 < 2)
  {
    goto LABEL_58;
  }

  CFRelease(v24);
  v37 = **(&v46 + 1);
  v38 = v51;
  if (a2 && TextIndexBeforePoint < v43)
  {
    if (CGPDFNodeIsHitByPoint(NodeBefore, v9, v8, v11))
    {
      TextIndexBeforePoint = v43;
      v38 = 0;
    }

    else
    {
      v38 = v51;
    }
  }

  if (TextIndexBeforePoint >= v37)
  {
    v40 = 0;
    v39 = TextIndexBeforePoint - v37 + 1;
    TextIndexBeforePoint = v37;
  }

  else
  {
    v39 = v37 - TextIndexBeforePoint + 1;
    v40 = v38;
    v38 = 0;
  }

  v48 = TextIndexBeforePoint;
  v49 = v39;
  v44 = v46;
  v45 = v47;
  if (!LayoutCreateSelectionSupport(a1, &v48, v40, v38, v42 == 1, &v50, a2, &v44, v12, v13, v14))
  {
    return 0;
  }

  v24 = v50;
LABEL_58:
  if (a2 == 1 && !CGPDFLayoutExtendRangeToWordBoundaries(a1, v24, v48, v49))
  {
    v22 = 0;
    if (!v24)
    {
      return v22;
    }

    goto LABEL_61;
  }

  v22 = CGPDFSelectionCreateWithIndexSet(*(a1 + 16), v24);
  if (v24)
  {
LABEL_61:
    CFRelease(v24);
  }

  return v22;
}

uint64_t CGPDFLayoutCreateSelectionAtPointWithOptions(void *a1, int a2, int a3, __n128 a4, __n128 a5)
{
  if (!a1)
  {
    return 0;
  }

  v6 = a5.n128_f64[0];
  v7 = a4.n128_f64[0];
  v9 = a1[13];
  if (a2 > 3)
  {
    switch(a2)
    {
      case 4:
        v11 = 1537;
        break;
      case 5:
        v11 = 515;
        break;
      case 6:
        LOBYTE(v71) = 0;
        TopmostContentNodeAtPoint = CGPDFNodeGetTopmostContentNodeAtPoint(v9, &v71, a4, a5);
        if (!TopmostContentNodeAtPoint)
        {
          return 0;
        }

        v13 = TopmostContentNodeAtPoint;
        TextRange = CGPDFNodeGetTextRange(TopmostContentNodeAtPoint);
        v16 = CPIndexSetCreateWithRange(TextRange, v15);
        if (!v16)
        {
          return 0;
        }

        v17 = v16;
        v18 = CGPDFSelectionCreateWithIndexSet(a1[2], v16);
        pthread_mutex_lock((v18 + 96));
        *(v18 + 40) = v13;
        pthread_mutex_unlock((v18 + 96));
LABEL_63:
        CFRelease(v17);
        return v18;
      default:
        v11 = 0;
        break;
    }

LABEL_37:
    v72 = 0;
    v71 = 0;
    BestNodeContainingPoint = CGPDFNodeGetBestNodeContainingPoint(v9, v11, a3 == 1, &v71, &v72, a4.n128_f64[0], a5.n128_f64[0], 0.0);
    if (!BestNodeContainingPoint)
    {
      return 0;
    }

    v44 = CGPDFNodeGetTextRange(BestNodeContainingPoint);
    v46 = v45;
    v47 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
    if (v47 && [objc_msgSend(v47 objectForKey:{@"ShowRange", "isEqualToString:", @"YES"}])
    {
      NSLog(&cfstr_RangeDD.isa, v44, v46);
    }

    v48 = v46 - 1;
    if (v46 < 1)
    {
      return 0;
    }

    v49 = CPIndexSetCreateWithRange(v44, v46);
    if (!v49)
    {
      return 0;
    }

    v17 = v49;
    if (a2 != 1)
    {
      goto LABEL_62;
    }

    v50 = v46 + v44 - 1;
    if (v44 < v50)
    {
      v51 = (a1[3] + 24 * v44 + 8);
      while (1)
      {
        p_height = &CGRectNull.size.height;
        p_size = &CGRectNull.size;
        p_y = &CGRectNull.origin.y;
        v56 = *(v51 - 1);
        v55 = *v51;
        v57 = (v56 + 16);
        v58 = (v56 + 24);
        v59 = (v56 + 32);
        v33 = v56 == 0;
        v60 = (v56 + 40);
        if (v33)
        {
          v61 = &CGRectNull;
        }

        else
        {
          p_y = v58;
          p_size = v59;
          p_height = v60;
          v61 = v57;
        }

        x = v61->origin.x;
        v63 = *p_height;
        width = p_size->width;
        v65 = *p_y;
        v66 = v7;
        if (v55)
        {
          v67 = *(v55 + 40);
          v66 = v7;
          if (v67 != 0.0)
          {
            v68 = __sincos_stret(v67);
            v66 = v6 * v68.__sinval + v68.__cosval * v7 + 0.0;
          }
        }

        if (width < 0.0 || v63 < 0.0)
        {
          v76.origin.x = x;
          v76.origin.y = v65;
          v76.size.width = width;
          v76.size.height = v63;
          v77 = CGRectStandardize(v76);
          x = v77.origin.x;
          width = v77.size.width;
        }

        if (v66 <= x + width)
        {
          break;
        }

        ++v44;
        v51 += 3;
        if (!--v48)
        {
          v44 = v50;
          break;
        }
      }
    }

    if (CGPDFLayoutExtendRangeToWordBoundaries(a1, v17, v44, 1))
    {
LABEL_62:
      v18 = CGPDFSelectionCreateWithIndexSet(a1[2], v17);
    }

    else
    {
      v18 = 0;
    }

    goto LABEL_63;
  }

  if (a2)
  {
    if (a2 == 2)
    {
      v10 = 514;
    }

    else
    {
      v10 = 0;
    }

    if (a2 == 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v10;
    }

    goto LABEL_37;
  }

  v72 = 0;
  v71 = 0;
  v19 = CGPDFNodeGetBestNodeContainingPoint(v9, 514, 0, &v71, &v72, a4.n128_f64[0], a5.n128_f64[0], 0.0);
  if (!v19)
  {
    return 0;
  }

  v20 = CGPDFNodeGetTextRange(v19);
  if (v21 < 1)
  {
    return 0;
  }

  v22 = v20;
  v23 = v20 + v21;
  for (i = (a1[3] + 24 * v20 + 8); ; i += 3)
  {
    v25 = &CGRectNull.size.height;
    v26 = &CGRectNull.size;
    v27 = &CGRectNull.origin.y;
    v29 = *(i - 1);
    v28 = *i;
    v30 = (v29 + 16);
    v31 = (v29 + 24);
    v32 = (v29 + 32);
    v33 = v29 == 0;
    v34 = (v29 + 40);
    if (v33)
    {
      v35 = &CGRectNull;
    }

    else
    {
      v27 = v31;
      v26 = v32;
      v25 = v34;
      v35 = v30;
    }

    v36 = v35->origin.x;
    v37 = *v25;
    v38 = v26->width;
    v39 = *v27;
    v40 = v7;
    if (v28)
    {
      v41 = *(v28 + 40);
      v40 = v7;
      if (v41 != 0.0)
      {
        v42 = __sincos_stret(v41);
        v40 = v6 * v42.__sinval + v42.__cosval * v7 + 0.0;
      }
    }

    if (v38 >= 0.0 && v37 >= 0.0)
    {
      break;
    }

    v73.origin.x = v36;
    v73.origin.y = v39;
    v73.size.width = v38;
    v73.size.height = v37;
    if (COERCE_DOUBLE(CGRectStandardize(v73)) <= v40)
    {
      v74.origin.x = v36;
      v74.origin.y = v39;
      v74.size.width = v38;
      v74.size.height = v37;
      v75 = CGRectStandardize(v74);
      v36 = v75.origin.x;
      v38 = v75.size.width;
      goto LABEL_31;
    }

LABEL_32:
    v18 = 0;
    if (++v22 >= v23)
    {
      return v18;
    }
  }

  if (v36 > v40)
  {
    goto LABEL_32;
  }

LABEL_31:
  if (v40 > v36 + v38)
  {
    goto LABEL_32;
  }

  v69 = CPIndexSetCreateWithRange(v22, 1);
  if (v69)
  {
    v17 = v69;
    goto LABEL_62;
  }

  return 0;
}

uint64_t CGPDFLayoutCreateSelectionContainingSelection(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a1;
  if (a1)
  {
    if ((a3 - 1) >= 6)
    {
      ContainingNode = CGPDFSelectionGetContainingNode(a2);
      v6 = 0;
      goto LABEL_9;
    }

    v6 = dword_1844DC0B0[a3 - 1];
    v7 = CGPDFSelectionGetContainingNode(a2);
    ContainingNode = v7;
    if (a3 != 6)
    {
      goto LABEL_9;
    }

    if (!v7)
    {
      return 0;
    }

    if (*v7 != 513 && (*v7 & 0x100) == 0)
    {
      while (*ContainingNode != v6)
      {
        ContainingNode = *(ContainingNode + 8);
LABEL_9:
        if (!ContainingNode)
        {
          return 0;
        }
      }
    }

    TextRange = CGPDFNodeGetTextRange(ContainingNode);
    v11 = CPIndexSetCreateWithRange(TextRange, v10);
    if (v11)
    {
      v12 = v11;
      if (a3 == 1 && (FirstIndex = CGPDFSelectionGetFirstIndex(a2), LastIndex = CGPDFSelectionGetLastIndex(a2), !CGPDFLayoutExtendRangeToWordBoundaries(v3, v12, FirstIndex, LastIndex - FirstIndex + 1)))
      {
        v3 = 0;
      }

      else
      {
        v3 = CGPDFSelectionCreateWithIndexSet(*(v3 + 16), v12);
        pthread_mutex_lock((v3 + 96));
        *(v3 + 40) = ContainingNode;
        pthread_mutex_unlock((v3 + 96));
      }

      CFRelease(v12);
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

uint64_t CGPDFLayoutCreateSelectionForRect(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  if (!a1)
  {
    return 0;
  }

  v5 = a3;
  v6 = a2;
  if (a2 == INFINITY || a3 == INFINITY)
  {
    return 0;
  }

  v9 = a1[6];
  if (v9 < 1)
  {
    return 0;
  }

  v10 = a5;
  v11 = a4;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = -1;
  v16 = 1;
  v17 = -1;
  do
  {
    v18 = a1[3];
    v19 = *(v18 + v12);
    p_height = &CGRectNull.size.height;
    p_size = &CGRectNull.size;
    v22 = (v19 + 16);
    v23 = (v19 + 32);
    v24 = (v19 + 40);
    v25 = v19 == 0;
    if (v19)
    {
      p_y = (v19 + 24);
    }

    else
    {
      p_y = &CGRectNull.origin.y;
    }

    if (v25)
    {
      v27 = &CGRectNull;
    }

    else
    {
      p_size = v23;
      p_height = v24;
      v27 = v22;
    }

    x = v27->origin.x;
    v29 = *p_height;
    width = p_size->width;
    y = *p_y;
    v32 = *(v18 + v12 + 8);
    if (!v32 || (v33 = *(v32 + 40), v33 == 0.0))
    {
      v57.origin.x = v6;
      v57.origin.y = v5;
      v57.size.width = v11;
      v57.size.height = v10;
      v72.origin.x = v27->origin.x;
      v72.origin.y = *p_y;
      v72.size.width = p_size->width;
      v72.size.height = *p_height;
      if (!CGRectContainsRect(v57, v72))
      {
        goto LABEL_38;
      }

LABEL_17:
      v34 = v16 - 1;
      if (v15 != -1)
      {
        if (v34 == v17)
        {
          v13 = v16 - v15;
          v34 = v15;
LABEL_32:
          v9 = a1[6];
          v17 = v16;
          v15 = v34;
          goto LABEL_38;
        }

        if (v14)
        {
          CPIndexSetAddRange(v14, v15, v13);
        }

        else
        {
          v14 = CPIndexSetCreateWithRange(v15, v13);
        }
      }

      v13 = 1;
      goto LABEL_32;
    }

    v35 = __sincos_stret(v33);
    v36 = fmin(width, v29);
    v37 = v36 < 0.0;
    v38 = x;
    v39 = y;
    if (v36 < 0.0)
    {
      v58.origin.x = x;
      v58.origin.y = y;
      v58.size.width = width;
      v58.size.height = v29;
      *&v38 = CGRectStandardize(v58);
      v59.origin.x = x;
      v59.origin.y = y;
      v59.size.width = width;
      v59.size.height = v29;
      *(&v39 - 1) = CGRectStandardize(v59);
    }

    v40 = -v35.__sinval;
    v53.x = v39 * -v35.__sinval + v35.__cosval * v38 + 0.0;
    v53.y = v35.__cosval * v39 + v35.__sinval * v38 + 0.0;
    v60.origin.x = a2;
    v60.origin.y = a3;
    v60.size.width = a4;
    v10 = a5;
    v60.size.height = a5;
    if (!CGRectContainsPoint(v60, v53))
    {
      goto LABEL_37;
    }

    v41 = x;
    v42 = y;
    v43 = v29;
    if (v37)
    {
      v61.origin.x = x;
      v61.origin.y = y;
      v61.size.width = width;
      v61.size.height = v29;
      *&v41 = CGRectStandardize(v61);
      v62.origin.x = x;
      v62.origin.y = y;
      v62.size.width = width;
      v62.size.height = v29;
      *(&v42 - 1) = CGRectStandardize(v62);
    }

    v54.x = (v42 + v43) * v40 + v35.__cosval * v41 + 0.0;
    v54.y = v35.__cosval * (v42 + v43) + v35.__sinval * v41 + 0.0;
    v63.origin.x = a2;
    v63.origin.y = a3;
    v63.size.width = a4;
    v10 = a5;
    v63.size.height = a5;
    if (!CGRectContainsPoint(v63, v54))
    {
      goto LABEL_37;
    }

    if (v37)
    {
      v64.origin.x = x;
      v64.origin.y = y;
      v64.size.width = width;
      v64.size.height = v29;
      v65 = CGRectStandardize(v64);
      v44 = v65.origin.x + v65.size.width;
      v65.origin.x = x;
      v65.origin.y = y;
      v65.size.width = width;
      v65.size.height = v29;
      v66 = CGRectStandardize(v65);
    }

    else
    {
      v44 = x + width;
      v66.origin.y = y;
      v66.size.height = v29;
    }

    v55.x = (v66.origin.y + v66.size.height) * v40 + v35.__cosval * v44 + 0.0;
    v55.y = v35.__cosval * (v66.origin.y + v66.size.height) + v35.__sinval * v44 + 0.0;
    v67.origin.x = a2;
    v67.origin.y = a3;
    v67.size.width = a4;
    v10 = a5;
    v67.size.height = a5;
    if (CGRectContainsPoint(v67, v55))
    {
      if (v37)
      {
        v68.origin.x = x;
        v68.origin.y = y;
        v68.size.width = width;
        v68.size.height = v29;
        v69 = CGRectStandardize(v68);
        v45 = v69.origin.x + v69.size.width;
        v69.origin.x = x;
        v69.origin.y = y;
        v69.size.width = width;
        v69.size.height = v29;
        v70 = CGRectStandardize(v69);
        y = v70.origin.y;
      }

      else
      {
        v45 = x + width;
      }

      v56.x = y * v40 + v35.__cosval * v45 + 0.0;
      v56.y = v35.__cosval * y + v35.__sinval * v45 + 0.0;
      v6 = a2;
      v5 = a3;
      v71.origin.x = a2;
      v71.origin.y = a3;
      v11 = a4;
      v71.size.width = a4;
      v10 = a5;
      v71.size.height = a5;
      if (CGRectContainsPoint(v71, v56))
      {
        goto LABEL_17;
      }
    }

    else
    {
LABEL_37:
      v5 = a3;
      v11 = a4;
      v6 = a2;
    }

LABEL_38:
    v12 += 24;
  }

  while (v16++ < v9);
  if (v15 != -1)
  {
    if (v14)
    {
      CPIndexSetAddRange(v14, v15, v13);
      goto LABEL_48;
    }

    v14 = CPIndexSetCreateWithRange(v15, v13);
  }

  if (v14)
  {
LABEL_48:
    v47 = CGPDFSelectionCreateWithIndexSet(a1[2], v14);
    CFRelease(v14);
    return v47;
  }

  return 0;
}

uint64_t CGPDFLayoutCreateSelectionForPath(uint64_t a1, CGPathRef path, unsigned __int8 a3)
{
  v3 = a1;
  if (!a1)
  {
    return v3;
  }

  v4 = *(a1 + 104);
  v12 = 0;
  v8[0] = a1;
  v8[1] = path;
  v8[2] = a3;
  PathBoundingBox = CGPathGetPathBoundingBox(path);
  cf_8 = 0;
  v11 = CPRangeNull;
  CGPDFFindContainedRanges(v5, v4, v8);
  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_5:
    v6 = cf_8;
    if (cf_8)
    {
      goto LABEL_6;
    }

    return 0;
  }

  if (cf_8)
  {
    CPIndexSetAddRange(cf_8, v11, *(&v11 + 1));
    goto LABEL_5;
  }

  v6 = CPIndexSetCreateWithRange(v11, *(&v11 + 1));
  cf_8 = v6;
  if (!v6)
  {
    return 0;
  }

LABEL_6:
  v3 = CGPDFSelectionCreateWithIndexSet(*(v3 + 16), v6);
  if (cf_8)
  {
    CFRelease(cf_8);
  }

  return v3;
}

BOOL CGPDFFindContainedRanges(uint64_t a1, __n64 *a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  v6 = *(a3 + 40);
  v46 = *(a3 + 24);
  v47 = v6;
  v7.n64_u64[0] = CGPDFNodeGetBounds(a2).n64_u64[0];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  if (a2 && a2->n64_u32[0] == 516 && (Rotation = CGPDFNodeGetRotation(a2), Rotation != 0.0))
  {
    v15 = __sincos_stret(Rotation);
    v45.a = v15.__cosval;
    v45.b = -v15.__sinval;
    *&v45.c = v15;
    v45.tx = 0.0;
    v45.ty = 0.0;
    v16 = CGPathCreateMutableCopyByTransformingPath(v5, &v45);
    *(a3 + 8) = v16;
    *(a3 + 24) = CGPathGetBoundingBox(v16);
    v17 = 1;
  }

  else
  {
    v17 = 0;
  }

  v52.origin.x = v7.n64_f64[0];
  v52.origin.y = v9;
  v52.size.width = v11;
  v52.size.height = v13;
  if (!CGRectIntersectsRect(*(a3 + 24), v52))
  {
    *(a3 + 80) = 0;
    goto LABEL_37;
  }

  if (!a2 || (v18 = a2->n64_u32[0], (a2->n64_u32[0] & 0x200) == 0) || !a2[5].n64_u32[1] || v18 == 513 || (v18 & 0x100) != 0)
  {
    TextRange = CGPDFNodeGetTextRange(a2);
    v22 = TextRange + v21;
    if (TextRange + v21 > TextRange)
    {
      v23 = TextRange;
      v24 = TextRange + 1;
      while (1)
      {
        v25 = *(*(*a3 + 24) + 24 * v23);
        if (v25)
        {
          v26 = (v25 + 16);
          p_y = (v25 + 24);
          p_size = (v25 + 32);
          p_height = (v25 + 40);
        }

        else
        {
          p_height = &CGRectNull.size.height;
          p_size = &CGRectNull.size;
          p_y = &CGRectNull.origin.y;
          v26 = &CGRectNull;
        }

        x = v26->origin.x;
        v31 = *p_height;
        width = p_size->width;
        v33 = *p_y;
        v53.origin.x = v26->origin.x;
        v53.origin.y = *p_y;
        v53.size.width = p_size->width;
        v53.size.height = *p_height;
        if (CGRectContainsRect(*(a3 + 24), v53))
        {
          v48.x = x;
          v48.y = v33;
          if (CGPathContainsPoint(*(a3 + 8), 0, v48, *(a3 + 16)))
          {
            v34 = x + width;
            v49.x = v34;
            v49.y = v33;
            if (CGPathContainsPoint(*(a3 + 8), 0, v49, *(a3 + 16)))
            {
              v35 = v33 + v31;
              v50.x = v34;
              v50.y = v35;
              if (CGPathContainsPoint(*(a3 + 8), 0, v50, *(a3 + 16)))
              {
                v51.x = v34 - width;
                v51.y = v35;
                if (CGPathContainsPoint(*(a3 + 8), 0, v51, *(a3 + 16)))
                {
                  break;
                }
              }
            }
          }
        }

        v39 = 0;
LABEL_29:
        *(a3 + 80) = v39;
        v23 = v24;
        if (v22 <= v24++)
        {
          goto LABEL_37;
        }
      }

      v36 = *(a3 + 64);
      v37 = *(a3 + 72);
      if (v36 != 0x7FFFFFFFFFFFFFFFLL || v37)
      {
        if (*(a3 + 80) == 1)
        {
          v38 = v24 - v36;
LABEL_35:
          *(a3 + 72) = v38;
          v39 = 1;
          goto LABEL_29;
        }

        v41 = *(a3 + 56);
        if (v41)
        {
          CPIndexSetAddRange(v41, v36, v37);
        }

        else
        {
          *(a3 + 56) = CPIndexSetCreateWithRange(*(a3 + 64), *(a3 + 72));
        }
      }

      *(a3 + 64) = v23;
      v38 = 1;
      goto LABEL_35;
    }

LABEL_37:
    v19 = 1;
    if (!v17)
    {
      return v19;
    }

    goto LABEL_38;
  }

  v19 = CGPDFNodeMap(a2, CGPDFFindContainedRanges, a3);
  if (!v17)
  {
    return v19;
  }

LABEL_38:
  v42 = *(a3 + 8);
  if (v42)
  {
    CFRelease(v42);
  }

  *(a3 + 8) = v5;
  v43 = v47;
  *(a3 + 24) = v46;
  *(a3 + 40) = v43;
  return v19;
}

uint64_t CGPDFLayoutCreateSelectionForQuadPoints(uint64_t a1, double *a2, int a3)
{
  v3 = a1;
  if (a1)
  {
    v4 = a3;
    v5 = *(a1 + 104);
    v18 = 0;
    v13 = a1;
    v14 = a2;
    v15 = CGRectNull;
    cf = 0;
    v17 = CPRangeNull;
    if (!a3)
    {
      return 0;
    }

    do
    {
      v6 = CPPolygonBounds(a2);
      v15.origin.x = v7;
      v15.origin.y = v8;
      v15.size.width = v9;
      v15.size.height = v10;
      CGPDFFindQuadrangleRanges(v6, v5, &v13);
      if (v17 != 0x7FFFFFFFFFFFFFFFLL || *(&v17 + 1) != 0)
      {
        if (cf)
        {
          CPIndexSetAddRange(cf, v17, *(&v17 + 1));
        }

        else
        {
          cf = CPIndexSetCreateWithRange(v17, *(&v17 + 1));
        }
      }

      v17 = CPRangeNull;
      LOBYTE(v18) = 0;
      a2 = v14 + 8;
      v14 += 8;
      --v4;
    }

    while (v4);
    if (cf)
    {
      v3 = CGPDFSelectionCreateWithIndexSet(*(v3 + 16), cf);
      if (cf)
      {
        CFRelease(cf);
      }
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

BOOL CGPDFFindQuadrangleRanges(uint64_t a1, __n64 *a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  v61 = *(a3 + 16);
  v62 = *(a3 + 32);
  v6.n64_u64[0] = CGPDFNodeGetBounds(a2).n64_u64[0];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  if (a2 && a2->n64_u32[0] == 516 && (Rotation = CGPDFNodeGetRotation(a2), Rotation != 0.0))
  {
    v14 = Rotation;
    v15 = malloc_type_malloc(0x40uLL, 0x1000040451B5BE8uLL);
    *(a3 + 8) = v15;
    v17 = __sincos_stret(v14);
    v16.f64[0] = v17.__cosval;
    v18 = 0;
    v19 = (v5 + 8);
    do
    {
      v16.f64[1] = -v17.__sinval;
      *&v15[2 * v18++] = vaddq_f64(vmlaq_n_f64(vmulq_n_f64(v17, *v19), v16, *(v19 - 1)), 0);
      v19 += 2;
    }

    while (v18 != 4);
    CPPolygonBounds(v15);
    *(a3 + 16) = v20;
    *(a3 + 24) = v21;
    *(a3 + 32) = v22;
    *(a3 + 40) = v23;
    v24 = 1;
  }

  else
  {
    v24 = 0;
  }

  v66.origin.x = v6.n64_f64[0];
  v66.origin.y = v8;
  v66.size.width = v10;
  v66.size.height = v12;
  if (!CGRectIntersectsRect(*(a3 + 16), v66))
  {
    *(a3 + 72) = 0;
    goto LABEL_45;
  }

  if (!a2)
  {
    goto LABEL_17;
  }

  v25 = a2->n64_u32[0];
  v26 = 1;
  if (a2->n64_u32[0] != 513 && (v25 & 0x100) == 0)
  {
    if ((v25 & 0x200) != 0 && a2[5].n64_u32[1])
    {
      v27 = CGPDFNodeMap(a2, CGPDFFindQuadrangleRanges, a3);
      if (!v24)
      {
        return v27;
      }

      goto LABEL_46;
    }

LABEL_17:
    v26 = 0;
  }

  TextRange = CGPDFNodeGetTextRange(a2);
  v30 = TextRange + v29;
  if (TextRange + v29 > TextRange)
  {
    v31 = TextRange;
    v32 = TextRange + 1;
    do
    {
      v33 = *(*(*a3 + 24) + 24 * v31);
      if (v33)
      {
        v34 = (v33 + 16);
        p_y = (v33 + 24);
        p_size = (v33 + 32);
        p_height = (v33 + 40);
      }

      else
      {
        v34 = &CGRectNull;
        p_height = &CGRectNull.size.height;
        p_size = &CGRectNull.size;
        p_y = &CGRectNull.origin.y;
      }

      x = v34->origin.x;
      v39 = *p_height;
      width = p_size->width;
      v41 = *p_y;
      v43 = *(a3 + 16);
      v42 = *(a3 + 24);
      v45 = *(a3 + 32);
      v44 = *(a3 + 40);
      v63.origin.x = v43;
      v63.origin.y = v42;
      v63.size.width = v45;
      v63.size.height = v44;
      v67.origin.x = v34->origin.x;
      v67.origin.y = *p_y;
      v67.size.width = p_size->width;
      v67.size.height = *p_height;
      if (CGRectIntersectsRect(v63, v67))
      {
        if (v26)
        {
          v64.origin.x = x;
          v64.origin.y = v41;
          v64.size.width = width;
          v64.size.height = v39;
          v65 = CGRectInset(v64, width * 0.1, v39 * 0.1);
          v46 = v65.origin.x;
          y = v65.origin.y;
          v48 = v65.size.width;
          height = v65.size.height;
          v50 = *(a3 + 8);
          if (CPPointIsInsidePolygonWithBounds(v50, v65.origin.x, v65.origin.y, v43, v42, v45, v44))
          {
            v51 = v46 + v48;
            if (CPPointIsInsidePolygonWithBounds(v50, v51, y, v43, v42, v45, v44))
            {
              v52 = y + height;
              if (CPPointIsInsidePolygonWithBounds(v50, v51, v52, v43, v42, v45, v44) && CPPointIsInsidePolygonWithBounds(v50, v51 - v48, v52, v43, v42, v45, v44))
              {
                goto LABEL_34;
              }
            }
          }
        }

        else
        {
          if (v33)
          {
            v55 = *(v33 + 88);
          }

          else
          {
            v55 = 0.0;
          }

          if (CPPointIsInsidePolygonWithBounds(*(a3 + 8), x + width * 0.5, v55, v43, v42, v45, v44))
          {
LABEL_34:
            v56 = *(a3 + 56);
            v57 = *(a3 + 64);
            if (v56 != 0x7FFFFFFFFFFFFFFFLL || v57)
            {
              if (*(a3 + 72) == 1)
              {
                v58 = v32 - v56;
LABEL_42:
                *(a3 + 64) = v58;
                v53 = 1;
                goto LABEL_29;
              }

              v59 = *(a3 + 48);
              if (v59)
              {
                CPIndexSetAddRange(v59, v56, v57);
              }

              else
              {
                *(a3 + 48) = CPIndexSetCreateWithRange(*(a3 + 56), *(a3 + 64));
              }
            }

            *(a3 + 56) = v31;
            v58 = 1;
            goto LABEL_42;
          }
        }
      }

      v53 = 0;
LABEL_29:
      *(a3 + 72) = v53;
      v31 = v32;
    }

    while (v30 > v32++);
  }

LABEL_45:
  v27 = 1;
  if (v24)
  {
LABEL_46:
    free(*(a3 + 8));
    *(a3 + 8) = v5;
    *(a3 + 16) = v61;
    *(a3 + 32) = v62;
  }

  return v27;
}

uint64_t CGPDFLayoutCreateSelectionForIntersectingRectWithOptions(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9, double a10, double a11)
{
  v11 = a1;
  if (a1)
  {
    if ((a2 - 1) > 4)
    {
      v12 = 0;
    }

    else
    {
      v12 = dword_1844DC0C8[a2 - 1];
    }

    v13 = *(a1 + 104);
    *&v17[8] = 0;
    *v15 = a8;
    *&v15[1] = a9;
    *&v15[2] = a10;
    *&v15[3] = a11;
    v15[4] = 0;
    v15[5] = 0;
    v16 = v12;
    *v17 = a3 == 1;
    CGPDFFindIntersectionRanges(a1, v13, v15);
    if (*&v17[4])
    {
      v11 = CGPDFSelectionCreateWithIndexSet(*(v11 + 16), *&v17[4]);
      if (*&v17[4])
      {
        CFRelease(*&v17[4]);
      }
    }

    else
    {
      return 0;
    }
  }

  return v11;
}

BOOL CGPDFFindIntersectionRanges(uint64_t a1, __n64 *a2, uint64_t a3)
{
  v27[8] = *MEMORY[0x1E69E9840];
  v5.n64_u64[0] = CGPDFNodeGetBounds(a2).n64_u64[0];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if (!a2)
  {
    v12 = 0;
    v18 = 0;
    v13 = (a3 + 40);
    v14 = *(a3 + 40);
    v15 = (a3 + 32);
    v16 = *(a3 + 32);
    goto LABEL_10;
  }

  v12 = a2->n64_u32[0];
  v13 = (a3 + 40);
  v14 = *(a3 + 40);
  v15 = (a3 + 32);
  v16 = *(a3 + 32);
  if (a2->n64_u32[0] != 516)
  {
    v18 = 0;
LABEL_10:
    v21 = v14;
    if (!v14)
    {
      goto LABEL_6;
    }

LABEL_11:
    if (!CGPDFRectIntersectsQuadrangleSide(v21, v5.n64_f64[0], v7, v9, v11))
    {
      CGPDFGetVerticesFromRotatedRect(v27, v5.n64_f64[0], v7, v9, v11, *(a3 + 32));
      if (!CGPDFRectIntersectsQuadrangleSide(v27, *a3, *(a3 + 8), *(a3 + 16), *(a3 + 24)))
      {
        goto LABEL_23;
      }
    }

    goto LABEL_13;
  }

  Rotation = CGPDFNodeGetRotation(a2);
  v18 = Rotation != 0.0;
  if (Rotation != 0.0)
  {
    v19 = Rotation;
    *(a3 + 32) = Rotation;
    v20 = malloc_type_malloc(0x40uLL, 0x1000040451B5BE8uLL);
    *(a3 + 40) = v20;
    CGPDFGetVerticesFromRotatedRect(v20, *a3, *(a3 + 8), *(a3 + 16), *(a3 + 24), -v19);
  }

  v21 = *v13;
  v12 = 516;
  if (*v13)
  {
    goto LABEL_11;
  }

LABEL_6:
  v28.origin.x = v5.n64_f64[0];
  v28.origin.y = v7;
  v28.size.width = v9;
  v28.size.height = v11;
  if (!CGRectIntersectsRect(v28, *a3))
  {
    goto LABEL_23;
  }

LABEL_13:
  if (v12 != *(a3 + 48) && (!a2 || (*(a3 + 52) & 1) == 0 || a2->n64_u32[0] != 513 && (a2->n64_u32[0] & 0x100) == 0))
  {
    v25 = CGPDFNodeMap(a2, CGPDFFindIntersectionRanges, a3);
    if (!v18)
    {
      return v25;
    }

    goto LABEL_24;
  }

  TextRange = CGPDFNodeGetTextRange(a2);
  v24 = *(a3 + 56);
  if (v24)
  {
    CPIndexSetAddRange(v24, TextRange, v22);
  }

  else
  {
    *(a3 + 56) = CPIndexSetCreateWithRange(TextRange, v22);
  }

LABEL_23:
  v25 = 1;
  if (v18)
  {
LABEL_24:
    *v15 = v16;
    free(*v13);
    *v13 = v14;
  }

  return v25;
}

double CGPDFGetVerticesFromRotatedRect(double *a1, double a2, double a3, double a4, double a5, double a6)
{
  v11 = __sincos_stret(a6);
  *a1 = v11.__cosval * a2 - v11.__sinval * a3 + 0.0;
  a1[1] = a3 * v11.__cosval + v11.__sinval * a2 + 0.0;
  a1[2] = v11.__cosval * (a2 + a4) - v11.__sinval * a3 + 0.0;
  a1[3] = a3 * v11.__cosval + v11.__sinval * (a2 + a4) + 0.0;
  v12 = (a3 + a5) * v11.__cosval;
  a1[4] = v11.__cosval * (a2 + a4) - v11.__sinval * (a3 + a5) + 0.0;
  a1[5] = v12 + v11.__sinval * (a2 + a4) + 0.0;
  v13 = a2 + a4 - a4;
  result = v12 + v11.__sinval * v13 + 0.0;
  a1[6] = v11.__cosval * v13 - v11.__sinval * (a3 + a5) + 0.0;
  a1[7] = result;
  return result;
}

BOOL CGPDFRectIntersectsQuadrangleSide(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v8 = 0;
  for (i = (a1 + 8); v8 != 4; i += 2)
  {
    v10 = v8 == 3 ? 0 : v8 + 1;
    v11 = (a1 + 16 * v10);
    v13 = *(i - 1);
    v12 = *i;
    v14 = *v11 - v13;
    v15 = CGIntervalIntersection(v13, v14, a2, a4);
    v17 = v16;
    if (fabs(v15) != INFINITY)
    {
      v18 = v11[1] - v12;
      v19 = CGIntervalIntersection(v12, v18, a3, a5);
      if (fabs(v19) != INFINITY && (v14 == 0.0 || v18 == 0.0 || fabs(CGIntervalIntersection(v18 * (v15 - v13), v18 * v17, v14 * (v19 - v12), v14 * v20)) != INFINITY))
      {
        break;
      }
    }

    ++v8;
  }

  return v8 < 4;
}

uint64_t CGPDFLayoutCreateSelectionForEntireLayout(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    TextRange = CGPDFNodeGetTextRange(*(a1 + 104));
    if (v3 < 1)
    {
      return 0;
    }

    else
    {
      v4 = CPIndexSetCreateWithRange(TextRange, v3);
      v1 = CGPDFSelectionCreateWithIndexSet(*(v1 + 16), v4);
      if (v4)
      {
        CFRelease(v4);
      }
    }
  }

  return v1;
}

int64x2_t *CGPDFLayoutCreateSelectionForStringRange(uint64_t a1, uint64_t a2, unint64_t a3)
{
  result = CGPDFLayoutCreateIndexSetForStringRange(a1, a2, a3);
  if (result)
  {
    v5 = result;
    v6 = CGPDFSelectionCreateWithIndexSet(*(a1 + 16), result);
    CFRelease(v5);
    return v6;
  }

  return result;
}

uint64_t CGPDFLayoutCreateSelectionForRange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 0;
  }

  v3 = 0;
  if ((a2 & 0x8000000000000000) == 0 && a3 >= 1)
  {
    if (a2 + a3 > *(a1 + 48))
    {
      return 0;
    }

    v5 = CPIndexSetCreateWithRange(a2, a3);
    v3 = CGPDFSelectionCreateWithIndexSet(*(a1 + 16), v5);
    if (v5)
    {
      CFRelease(v5);
    }
  }

  return v3;
}

double CGPDFLayoutGetBoundsForTextRange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  height = 0.0;
  if (!a1)
  {
    return INFINITY;
  }

  v4 = a2;
  if (a2 < 0)
  {
    return INFINITY;
  }

  v5 = *(a1 + 48);
  if (a2 >= v5 || a3 < 1)
  {
    return INFINITY;
  }

  if (v5 >= a2 + a3)
  {
    v8 = a2 + a3;
  }

  else
  {
    v8 = *(a1 + 48);
  }

  v9 = (*(a1 + 24) + 24 * a2 + 8);
  width = 0.0;
  x = INFINITY;
  y = INFINITY;
  do
  {
    p_height = &CGRectNull.size.height;
    p_size = &CGRectNull.size;
    p_y = &CGRectNull.origin.y;
    v16 = *(v9 - 1);
    v15 = *v9;
    v17 = (v16 + 16);
    v18 = (v16 + 24);
    v19 = (v16 + 32);
    v20 = v16 == 0;
    v21 = (v16 + 40);
    if (v20)
    {
      v22 = &CGRectNull;
    }

    else
    {
      p_y = v18;
      p_size = v19;
      p_height = v21;
      v22 = v17;
    }

    v23 = 0.0;
    if (v15)
    {
      v23 = *(v15 + 40);
    }

    v30.origin.x = CGRectUprightBoundsForRotation(v22->origin.x, *p_y, p_size->width, *p_height, v23);
    v30.origin.y = v24;
    v30.size.width = v25;
    v30.size.height = v26;
    v28.origin.x = x;
    v28.origin.y = y;
    v28.size.width = width;
    v28.size.height = height;
    v29 = CGRectUnion(v28, v30);
    x = v29.origin.x;
    y = v29.origin.y;
    width = v29.size.width;
    height = v29.size.height;
    ++v4;
    v9 += 3;
  }

  while (v4 < v8);
  return x;
}

__n64 CGPDFLayoutGetRectForTextRange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v3 = a2;
    if (a2 < 0)
    {
      return 0x7FF0000000000000;
    }

    v4 = *(a1 + 48);
    if (a2 >= v4 || a3 < 1)
    {
      return 0x7FF0000000000000;
    }

    else
    {
      if (v4 >= a2 + a3)
      {
        v7 = a2 + a3;
      }

      else
      {
        v7 = *(a1 + 48);
      }

      v8 = (*(a1 + 24) + 24 * a2);
      v9 = 0;
      result.n64_u64[0] = 0x7FF0000000000000;
      v10 = 0x7FF0000000000000;
      v11 = 0;
      do
      {
        v12 = *v8;
        v8 += 3;
        p_height = &CGRectNull.size.height;
        p_size = &CGRectNull.size;
        v15 = (v12 + 16);
        v16 = (v12 + 24);
        v17 = (v12 + 32);
        v18 = (v12 + 40);
        v19 = v12 == 0;
        if (v12)
        {
          p_y = v16;
        }

        else
        {
          p_y = &CGRectNull.origin.y;
        }

        if (v19)
        {
          v21 = &CGRectNull;
        }

        else
        {
          p_size = v17;
          p_height = v18;
          v21 = v15;
        }

        v22.origin.x = v21->origin.x;
        v22.size.height = *p_height;
        v22.size.width = p_size->width;
        v22.origin.y = *p_y;
        *result.n64_u64 = CGRectUnion(*result.n64_u64, v22);
        ++v3;
      }

      while (v3 < v7);
    }
  }

  else
  {
    return 0x7FF0000000000000;
  }

  return result;
}

CFMutableStringRef CGPDFLayoutCreateString(uint64_t a1)
{
  Mutable = a1;
  if (!a1)
  {
    return Mutable;
  }

  if (*(a1 + 72) != 1)
  {
    v2 = *(a1 + 56);
    if (v2)
    {
      v4 = v2 + 8;
      v2 = *(v2 + 8);
      v3 = *(v4 + 8);
    }

    else
    {
      v3 = 0;
    }

    v5 = malloc_type_malloc(2 * (*(a1 + 48) + v3 - v2), 0x1000040BDFB0063uLL);
    length = Mutable[1].length;
    if (length && (v7 = *(length + 24)) != 0)
    {
      Count = CFArrayGetCount(v7);
      if ((Count & 0x8000000000000000) != 0)
      {
        Mutable = CFStringCreateMutable(0, 0);
LABEL_43:
        free(v5);
        return Mutable;
      }
    }

    else
    {
      Count = 0;
    }

    v9 = 0;
    v10 = 0;
    v11 = -1;
    do
    {
      p_data = &Mutable[1].data;
      if (v10 >= Count || (v13 = Mutable[1].length) != 0 && (v14 = *(v13 + 24)) != 0 && (p_data = CFArrayGetValueAtIndex(v14, v10)) != 0)
      {
        v15 = *p_data;
      }

      else
      {
        v15 = 0;
      }

      if (v11 + 1 >= v15)
      {
        v19 = v9;
      }

      else
      {
        v16 = ~v11 + v15;
        v17 = (Mutable->length + 24 * v11 + 24);
        do
        {
          v18 = *v17;
          if (*v17)
          {
            LOWORD(v18) = *(v18 + 8);
          }

          v19 = v9 + 1;
          *&v5[2 * v9] = v18;
          v17 += 3;
          ++v9;
          --v16;
        }

        while (v16);
      }

      if (v10 >= Count)
      {
        v9 = v19;
      }

      else
      {
        v20 = Mutable[1].length;
        if (v20 && (v21 = *(v20 + 24)) != 0 && (ValueAtIndex = CFArrayGetValueAtIndex(v21, v10)) != 0)
        {
          v24 = ValueAtIndex[2];
          v23 = ValueAtIndex[3];
        }

        else
        {
          v24 = 0;
          v23 = 0;
        }

        memcpy(&v5[2 * v19], v23, 2 * v24);
        v9 = v24 + v19;
      }

      v11 = v15;
    }

    while (v10++ != Count);
    Mutable = CFStringCreateMutable(0, 0);
    if (v9 >= 1)
    {
      v26 = v5;
      do
      {
        if (*v26 == -4)
        {
          LOWORD(cf[0]) = 32;
          v27 = cf;
          v28 = Mutable;
        }

        else
        {
          v28 = Mutable;
          v27 = v26;
        }

        CFStringAppendCharacters(v28, v27, 1);
        v26 = (v26 + 2);
        --v9;
      }

      while (v9);
    }

    goto LABEL_43;
  }

  memset(cf, 0, sizeof(cf));
  CGPDFLayoutGetRTLData(cf, a1);
  Mutable = cf[0];
  if (cf[0])
  {
    CFRetain(cf[0]);
  }

  return Mutable;
}

const __CFAttributedString *CGPDFLayoutCreateAttributedStringForRanges(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Mutable = 0;
  if (a1)
  {
    v4 = a2;
    if (a2)
    {
      v67 = a3 - 1;
      if (a3 >= 1)
      {
        if (*(a1 + 72) == 1)
        {
          alloc = *MEMORY[0x1E695E480];
          Mutable = CFAttributedStringCreateMutable(*MEMORY[0x1E695E480], 0);
          v6 = 0;
          do
          {
            v7 = (v4 + 16 * v6);
            v8 = v7[1];
            if (v8)
            {
              v72 = v6;
              v9 = *v7;
              String = CFAttributedStringGetString(Mutable);
              MutableCopy = CFStringCreateMutableCopy(alloc, 0, String);
              v81 = 0;
              v12 = v9 + v8;
              v75 = v9 + v8;
              v77 = MutableCopy;
              do
              {
                *v80 = 0;
                appended = CPTextServicesAppendTextLine(MutableCopy, a1, v9, v8, &v81, v80);
                v14 = appended;
                if (v12 > appended)
                {
                  if (appended < 1 || *(a1 + 48) < appended)
                  {
                    LOWORD(v15) = 0;
                  }

                  else
                  {
                    v15 = *(a1 + 24);
                    if (v15)
                    {
                      v15 = *(v15 + 24 * appended - 24);
                      if (v15)
                      {
                        LOWORD(v15) = *(v15 + 8);
                      }
                    }
                  }

                  chars = v15;
                  CFStringAppendCharacters(MutableCopy, &chars, 1);
                }

                Length = CFAttributedStringGetLength(Mutable);
                v82.location = 0;
                v82.length = Length;
                CFAttributedStringReplaceString(Mutable, v82, MutableCopy);
                v17 = CFStringGetLength(MutableCopy);
                if (v12 <= v14)
                {
                  v18 = 0;
                }

                else
                {
                  v18 = -1;
                }

                v19 = v18 - Length + v17;
                if (*v80 >= v19)
                {
                  v20 = v19;
                }

                else
                {
                  v20 = *v80;
                }

                if (v20 < 1)
                {
                  v20 = 0;
                  v22 = 0;
                  v21 = 0;
                }

                else
                {
                  v21 = 0;
                  v22 = 0;
                  v23 = 0;
                  v24 = v81;
                  do
                  {
                    v25 = v24[v23];
                    if ((v25 & 0x80000000) == 0 && v14 + ~v9 > v25)
                    {
                      v26 = v9 + v25;
                      if (v26 >= 0 && *(a1 + 48) > v26 && (v27 = *(a1 + 24)) != 0)
                      {
                        v28 = *(v27 + 24 * v26 + 8);
                      }

                      else
                      {
                        v28 = 0;
                      }

                      if (v28 != v22)
                      {
                        if (v23)
                        {
                          CGPDFLayoutApplyStyleToStringForRange(v22, Mutable, v21 + Length, v23 - v21);
                          v22 = v28;
                          v21 = v23;
                        }

                        else
                        {
                          v21 = 0;
                          v22 = v28;
                        }
                      }
                    }

                    ++v23;
                  }

                  while (v20 != v23);
                  v12 = v75;
                  MutableCopy = v77;
                }

                CGPDFLayoutApplyStyleToStringForRange(v22, Mutable, v21 + Length, v20 - v21);
                free(v81);
                v81 = 0;
                v9 = v14;
                v29 = __OFSUB__(v12, v14);
                v8 = v12 - v14;
              }

              while (!((v8 < 0) ^ v29 | (v8 == 0)));
              CFRelease(MutableCopy);
              v6 = v72;
              if (v72 < v67)
              {
                v30 = CFAttributedStringGetString(Mutable);
                v31 = CFStringCreateMutableCopy(alloc, 0, v30);
                v80[0] = 10;
                CFStringAppendCharacters(v31, v80, 1);
                v83.length = CFAttributedStringGetLength(Mutable);
                v83.location = 0;
                CFAttributedStringReplaceString(Mutable, v83, v31);
                CFRelease(v31);
              }

              v4 = a2;
            }

            ++v6;
          }

          while (v6 != a3);
        }

        else
        {
          StringForRanges = CGPDFLayoutCreateStringForRanges(a1, a2, a3);
          if (StringForRanges)
          {
            v33 = StringForRanges;
            v34 = CFStringGetLength(StringForRanges);
            if (v34 >= 1 && (v35 = v34, v36 = *MEMORY[0x1E695E480], (v37 = CFAttributedStringCreate(*MEMORY[0x1E695E480], v33, 0)) != 0))
            {
              v38 = v37;
              Mutable = CFAttributedStringCreateMutableCopy(v36, v35, v37);
              if (Mutable)
              {
                v68 = v38;
                alloca = v33;
                v39 = 0;
                v40 = 0;
                v41 = 0;
                do
                {
                  v73 = v39;
                  v42 = (a2 + 16 * v39);
                  v44 = *v42;
                  v43 = v42[1];
                  RangeInCharacterRange = CPMultiUnicodesGetRangeInCharacterRange(*(a1 + 56), *v42, v43);
                  v47 = RangeInCharacterRange == 0x7FFFFFFFFFFFFFFFLL;
                  v48 = v46 == 0;
                  if (v47 && v48)
                  {
                    v49 = 0;
                  }

                  else
                  {
                    v49 = RangeInCharacterRange;
                  }

                  if (v47 && v48)
                  {
                    v50 = 0;
                  }

                  else
                  {
                    v50 = RangeInCharacterRange + v46;
                  }

                  v78 = v50;
                  if (v49 <= v50)
                  {
                    v51 = 0;
                    v76 = v43 + v44;
                    v52 = 1;
                    v53 = v50;
                    do
                    {
                      v54 = v44;
                      v44 = v76;
                      if (v49 < v53)
                      {
                        v55 = *(a1 + 56);
                        if (v55 && (v56 = *(v55 + 24)) != 0 && (ValueAtIndex = CFArrayGetValueAtIndex(v56, v49)) != 0)
                        {
                          v44 = *ValueAtIndex;
                        }

                        else
                        {
                          v44 = 0;
                        }
                      }

                      v58 = v44 - v54;
                      if (v44 <= v54)
                      {
                        v61 = v52;
                      }

                      else
                      {
                        v59 = 24 * v54 + 8;
                        v60 = v51;
                        do
                        {
                          v51 = *(*(a1 + 24) + v59);
                          if (v51 == v60)
                          {
                            v51 = v60;
                          }

                          else
                          {
                            if (v41 >= 1)
                            {
                              CGPDFLayoutApplyStyleToStringForRange(v60, Mutable, v40, v41 - v40);
                            }

                            v40 = v41;
                          }

                          v41 += v52;
                          v59 += 24;
                          v52 = 1;
                          v60 = v51;
                          v61 = 1;
                          --v58;
                        }

                        while (v58);
                      }

                      v52 = v61;
                      v53 = v78;
                      if (v49 < v78)
                      {
                        v62 = *(a1 + 56);
                        if (v62 && (v63 = *(v62 + 24)) != 0 && (v64 = CFArrayGetValueAtIndex(v63, v49)) != 0)
                        {
                          v52 = v64[2];
                        }

                        else
                        {
                          v52 = 0;
                        }
                      }
                    }

                    while (v49++ != v78);
                  }

                  else
                  {
                    v51 = 0;
                  }

                  CGPDFLayoutApplyStyleToStringForRange(v51, Mutable, v40, v41 - v40);
                  ++v41;
                  v39 = v73 + 1;
                }

                while (v73 + 1 != a3);
                v38 = v68;
                v33 = alloca;
              }

              CFRelease(v33);
            }

            else
            {
              Mutable = 0;
              v38 = v33;
            }

            CFRelease(v38);
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }

  return Mutable;
}

void CGPDFLayoutApplyStyleToStringForRange(uint64_t a1, __CFAttributedString *a2, CFIndex a3, CFIndex a4)
{
  v23 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return;
  }

  *v22 = 0u;
  *cf = 0u;
  keys[0] = kCGPDFTextStyleFont;
  keys[1] = kCGPDFTextStyleFontSize;
  keys[2] = kCGPDFTextStyleFillColor;
  keys[3] = kCGPDFTextStyleFillColorSpace;
  keys[4] = kCGPDFTextStyleBaseLineOffset;
  *bytes = *(a1 + 8);
  v15 = *(a1 + 16);
  v8 = *(a1 + 24);
  if (v8)
  {
    if ((v8 & 0x8000000000000000) != 0)
    {
      ColorSpace = CGTaggedColorGetColorSpace(*(a1 + 24));
      if (ColorSpace)
      {
LABEL_5:
        v10 = 0;
LABEL_9:
        v11 = v8;
        goto LABEL_10;
      }
    }

    else
    {
      ColorSpace = v8[3];
      if (ColorSpace)
      {
        goto LABEL_5;
      }
    }

    v10 = 1;
    ColorSpace = CGColorSpaceCreateDeviceRGB();
    goto LABEL_9;
  }

  ColorSpace = CGColorSpaceCreateDeviceRGB();
  *components = xmmword_184564878;
  v18 = unk_184564888;
  v11 = CGColorCreate(ColorSpace, components);
  v10 = 1;
LABEL_10:
  components[0] = *(a1 + 48);
  v12 = *MEMORY[0x1E695E480];
  values = CFDataCreate(*MEMORY[0x1E695E480], bytes, 8);
  cf[0] = CFDataCreate(v12, &v15, 8);
  cf[1] = v11;
  v22[0] = ColorSpace;
  v22[1] = CFDataCreate(v12, components, 8);
  v13 = CFDictionaryCreate(v12, keys, &values, 5, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v13)
  {
    v14 = v13;
    v24.location = a3;
    v24.length = a4;
    CFAttributedStringSetAttributes(a2, v24, v13, 0);
    CFRelease(v14);
  }

  if (v10)
  {
    CGColorSpaceRelease(ColorSpace);
  }

  if (!v8 && v11)
  {
    CFRelease(v11);
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (values)
  {
    CFRelease(values);
  }

  if (v22[1])
  {
    CFRelease(v22[1]);
  }
}

uint64_t CGPDFLayoutGetLineRangesForTextRange(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (a5)
  {
    v6 = *a5;
    *a5 = 0;
    if (result)
    {
      if ((a2 & 0x8000000000000000) == 0 && a3 >= 1)
      {
        NodeContainingTextRange = CGPDFNodeGetNodeContainingTextRange(*(result + 104), a2, a3);
        v14[0] = a2;
        v14[1] = a3;
        v14[2] = a4;
        v14[3] = a5;
        v14[4] = v6;
        if (NodeContainingTextRange)
        {
          v11 = *NodeContainingTextRange;
        }

        else
        {
          v11 = 0;
        }

        v12 = 1;
        while (kCGPDFNodeTypeOrder[v12] != v11)
        {
          if (++v12 == 12)
          {
            v13 = 0;
            return (*(&lineRangeFuncArray + v13))(0, NodeContainingTextRange, v14);
          }
        }

        v13 = v12;
        return (*(&lineRangeFuncArray + v13))(0, NodeContainingTextRange, v14);
      }
    }
  }

  return result;
}

BOOL mapLineRangeRecurse(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  TextRange = CGPDFNodeGetTextRange(a2);
  v7 = *a3;
  v8 = a3[1];
  v9 = *a3 + v8;
  v10 = v8 <= 0;
  if (v8 <= 0)
  {
    v11 = *a3 + v8;
  }

  else
  {
    v11 = *a3;
  }

  if (!v10)
  {
    v7 = v9;
  }

  v12 = TextRange + v6;
  if (v6 <= 0)
  {
    v13 = TextRange + v6;
  }

  else
  {
    v13 = TextRange;
  }

  if (v6 <= 0)
  {
    v12 = TextRange;
  }

  result = v12 <= v11 && v7 > v13;
  if (v7 > v13 && v12 > v11)
  {

    return CGPDFNodeMapByType(a2, &lineRangeFuncArray);
  }

  return result;
}

BOOL mapLineRangeFetch(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  TextRange = CGPDFNodeGetTextRange(a2);
  v6 = v5;
  v7 = a3[1];
  if (v7 <= 0)
  {
    v8 = *a3 + v7;
  }

  else
  {
    v8 = *a3;
  }

  if (v7 <= 0)
  {
    v9 = *a3;
  }

  else
  {
    v9 = *a3 + v7;
  }

  if (v6 <= 0)
  {
    v10 = TextRange + v6;
  }

  else
  {
    v10 = TextRange;
  }

  if (v6 <= 0)
  {
    v11 = TextRange;
  }

  else
  {
    v11 = TextRange + v6;
  }

  v12 = v11 <= v8 && v9 > v10;
  if (v9 > v10 && v11 > v8)
  {
    v15 = a3[2];
    v14 = a3[3];
    v16 = *v14;
    if (v15 && v16 < a3[4])
    {
      v17 = CPRangeIntersection(*a3, v7, TextRange, v6);
      v18 = (v15 + 16 * v16);
      *v18 = v17;
      v18[1] = v19;
      v16 = *v14;
    }

    *v14 = v16 + 1;
    return 1;
  }

  return v12;
}

uint64_t CGPDFLayoutRangeIsOfType(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  if (!a1)
  {
LABEL_55:
    v5 = 0;
    return v5 & 1;
  }

  v5 = 1;
  if (a3 && a4)
  {
    v9 = a3;
    v11 = a4 - 1;
    if ((a4 - 1) > 5)
    {
      v12 = 0;
      v13 = 0;
    }

    else
    {
      v12 = dword_1844DC0DC[v11];
      v13 = dword_1844DC0F4[v11];
    }

    if (a2 < 0 || a1[6] <= a2 || (v14 = a1[3]) == 0)
    {
      v15 = 0;
    }

    else
    {
      v15 = *(v14 + 24 * a2 + 16);
    }

    if (v15 & v13) != 0 || (CGPDFLayoutIsWhiteSpaceCharacter(a1, a2))
    {
      v16 = 1;
    }

    else
    {
      if (a2 < 0 || a1[6] <= a2)
      {
        LOBYTE(v23) = 0;
      }

      else
      {
        v23 = a1[3];
        if (v23)
        {
          v23 = *(v23 + 24 * a2);
          if (v23)
          {
            LOBYTE(v23) = *(v23 + 8) == -4;
          }
        }
      }

      v16 = (v15 & 1) != 0 ? 0 : v23;
    }

    v17 = a2 + a3;
    v18 = a2 + a3 - 1;
    if (a2 + a3 >= 1 && a1[6] >= v17 && (v19 = a1[3]) != 0)
    {
      v20 = *(v19 + 24 * v18 + 16);
    }

    else
    {
      v20 = 0;
    }

    if ((v20 & v12) != 0)
    {
      LOBYTE(v21) = 1;
    }

    else
    {
      v22 = v16;
      if (CGPDFLayoutIsWhiteSpaceCharacter(a1, a2 + a3 - 1))
      {
        LOBYTE(v21) = 1;
        v16 = v22;
      }

      else
      {
        if (v17 < 1 || a1[6] < v17)
        {
          LOBYTE(v21) = 0;
          v16 = v22;
        }

        else
        {
          v21 = a1[3];
          v16 = v22;
          if (v21)
          {
            v21 = *(v21 + 24 * v18);
            if (v21)
            {
              LOBYTE(v21) = *(v21 + 8) == -4;
            }
          }
        }

        if ((v20 & 2) != 0)
        {
          LOBYTE(v21) = 0;
        }
      }
    }

    v5 = v16 & v21;
    if (a4 == 1 && (v16 & v21 & 1) == 0)
    {
      v38 = v21;
      v39 = v16;
      v24 = a2;
      v25 = a1[13];
      NodeContainingTextRange = CGPDFNodeGetNodeContainingTextRange(v25, a2, 1);
      v27 = NodeContainingTextRange;
      if (NodeContainingTextRange)
      {
        v28 = *NodeContainingTextRange == 1;
      }

      else
      {
        v28 = 0;
      }

      v29 = CGPDFNodeGetNodeContainingTextRange(v25, a2 + a3 - 1, 1);
      v30 = v29;
      if (v29)
      {
        v31 = *v29 == 1;
        if (v28)
        {
LABEL_44:
          TextRange = CGPDFNodeGetTextRange(v27);
          if (TextRange >= a2)
          {
            v9 = a3;
          }

          else
          {
            v9 = v17 - TextRange;
          }

          if (TextRange >= a2)
          {
            v24 = a2;
          }

          else
          {
            v24 = TextRange;
          }
        }
      }

      else
      {
        v31 = 0;
        if (v28)
        {
          goto LABEL_44;
        }
      }

      if (v31)
      {
        v33 = CGPDFNodeGetTextRange(v30);
        if (v33 + v34 > v17)
        {
          v9 = v33 + v34 - v24;
        }
      }

      if (v24 == a2 && v9 == a3)
      {
        goto LABEL_55;
      }

      v36 = CPIndexSetCreateWithRange(v24, v9);
      if (CGPDFLayoutExtendRangeToWordBoundaries(a1, v36, a2, a3))
      {
        FirstIndex = CPIndexSetGetFirstIndex(v36);
        v5 = ((CPIndexSetGetLastIndex(v36) + 1 == v17) | v38) & ((FirstIndex == a2) | v39);
      }

      else
      {
        v5 = 0;
      }

      if (v36)
      {
        CFRelease(v36);
      }
    }
  }

  return v5 & 1;
}

uint64_t CGPDFLayoutGetOffsetInLine(uint64_t a1, uint64_t a2, uint64_t a3, int64_t a4)
{
  if ((*(a1 + 72) & 1) == 0)
  {
    RangeInCharacterRange = CPMultiUnicodesGetRangeInCharacterRange(*(a1 + 56), a2, a3);
    v9 = 0;
    v10 = RangeInCharacterRange == 0x7FFFFFFFFFFFFFFFLL;
    v11 = v8 == 0;
    if (v10 && v11)
    {
      v12 = 0;
    }

    else
    {
      v12 = RangeInCharacterRange;
    }

    if (v10 && v11)
    {
      v13 = 0;
    }

    else
    {
      v13 = RangeInCharacterRange + v8;
    }

    if (v12 <= v13)
    {
      v9 = 0;
      v14 = 0;
      v15 = a2 - 1;
      v16 = a2 + a3;
      do
      {
        v17 = v16;
        if (v12 < v13)
        {
          v18 = *(a1 + 56);
          if (v18 && (v19 = *(v18 + 24)) != 0 && (ValueAtIndex = CFArrayGetValueAtIndex(v19, v12)) != 0)
          {
            v17 = *ValueAtIndex;
          }

          else
          {
            v17 = 0;
          }
        }

        v21 = ~v14 + a4;
        if (v21 >= v17 - v15 - 2)
        {
          v21 = v17 - v15 - 2;
        }

        v22 = v9 + v21;
        v23 = v14 + v21;
        if (v14 < a4)
        {
          v24 = v23 + 1;
        }

        else
        {
          v24 = v14;
        }

        if (v14 < a4)
        {
          v25 = v22 + 1;
        }

        else
        {
          v25 = v9;
        }

        if (v15 + 1 < v17)
        {
          v14 = v24;
          v9 = v25;
        }

        if (v12 < v13)
        {
          v26 = *(a1 + 56);
          if (v26)
          {
            v27 = *(v26 + 24);
            if (v27 && (v28 = CFArrayGetValueAtIndex(v27, v12)) != 0)
            {
              v26 = v28[2];
            }

            else
            {
              v26 = 0;
            }
          }

          v14 += v26;
          if (v14 >= a4)
          {
            return v9 + a2;
          }

          ++v9;
        }

        ++v12;
        v15 = v17;
      }

      while (v13 + 1 != v12);
    }

    return v9 + a2;
  }

  return a4;
}

uint64_t __CGPDFSoftMaskGetTypeID_block_invoke()
{
  result = pdf_register_cftype(&CGPDFSoftMaskGetTypeID_class);
  CGPDFSoftMaskGetTypeID_id = result;
  return result;
}

void CGPDFSoftMaskFinalize(void *a1)
{
  CGPDFGroupRelease(a1[4]);
  v2 = a1[5];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[6];
  if (v3)
  {

    CFRelease(v3);
  }
}

void upsample_provider_release_info(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    CGDataProviderUnlock(*a1);
  }

  CGDataProviderRelease(*a1);
  v2 = *(a1 + 136);
  if (v2)
  {
    free(v2);
  }

  free(a1);
}

void upsample_provider_rewind(uint64_t *a1)
{
  v2 = *a1;
  if (!v2)
  {
    _CGHandleAssert("CGDataProviderGetType", 212, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProvider.c", "provider != NULL", "provider is NULL");
  }

  if ((*(v2 + 20) | 2) != 3)
  {
    _CGHandleAssert("upsample_provider_rewind", 400, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderUpsample.c", "", "Unimplemented");
  }

  CGDataProviderRewind(v2);
  a1[6] = 0;
  a1[11] = 0;
}

unint64_t upsample_provider_skip_forward(uint64_t *a1, unint64_t a2)
{
  v2 = a2;
  v4 = *a1;
  v5 = upsample_provider_destination_byte_count_to_source_byte_count(a1, a2);
  v6 = CGDataProviderSkipForwardInternal(v4, v5);
  if ((v6 & 0x8000000000000000) != 0)
  {
    _CGHandleAssert("upsample_provider_skip_forward", 375, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderUpsample.c", "skipped >= 0", "");
  }

  v7 = v6;
  if (v6 != v5)
  {
    v2 = upsample_provider_source_byte_count_to_destination_byte_count(a1, v6);
  }

  a1[11] += v7;
  a1[6] += v2;
  return v2;
}

unint64_t upsample_provider_byte_count_to_byte_count(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10)
{
  if (!a4)
  {
    _CGHandleAssert("upsample_provider_byte_count_to_byte_count", 177, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderUpsample.c", "input_bytes_per_row != 0", "rowbytes %zu", 0);
  }

  if (!a10)
  {
    return 0;
  }

  if (a4 == a5 || !a9)
  {
    v12 = a10 / a1 / a2;
    v13 = a10 / a1 % a2;
    if (a10 / a1 >= a2 && v12 != 1)
    {
      v12 = vcvtas_u32_f32((a8 * v12) / a3);
      if (a8 - 1 < v12)
      {
        v12 = a8 - 1;
      }
    }

    if (v13 >= 2)
    {
      v13 = vcvtas_u32_f32((a7 * v13) / a2);
      if (a7 - 1 < v13)
      {
        v13 = a7 - 1;
      }
    }

    return (v13 + v12 * a7) * a1;
  }

  else
  {
    if (a10 >= a4)
    {
      v10 = a10 / a4;
    }

    else
    {
      v10 = 0;
    }

    v14 = a10 - v10 * a4;
    v15 = v14 + a6 % a4;
    if (v15 >= a4)
    {
      v14 = v15 - a4;
      ++v10;
      v15 -= a4;
    }

    v16 = v15 >= a5;
    v17 = v15 - a5;
    if (v16)
    {
      v18 = a5;
    }

    else
    {
      v18 = 0;
    }

    if (v16)
    {
      v14 = v17;
    }

    v19 = v18 / a1;
    if (v10 >= 2)
    {
      v10 = vcvtas_u32_f32((a8 * v10) / a3);
      if (a8 - 1 < v10)
      {
        v10 = a8 - 1;
      }
    }

    if (v19 != 1 && v18 >= a1)
    {
      v19 = vcvtas_u32_f32((a7 * v19) / a2);
      if (a7 - 1 < v19)
      {
        v19 = a7 - 1;
      }
    }

    return v14 + v10 * a9 + v19 * a1;
  }
}

unint64_t upsample_provider_get_bytes(uint64_t a1, _DWORD *a2, unint64_t a3)
{
  if (*(a1 + 8))
  {
    _CGHandleAssert("upsample_provider_get_bytes", 361, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderUpsample.c", "info->src_provider_uses_random_access == false", "", v3, v4);
  }

  return upsample_provider_get_bytes_at_position_inner(a1, a2, 0, a3, 1);
}

unint64_t upsample_provider_get_bytes_at_position_inner(uint64_t a1, _DWORD *a2, unint64_t a3, unint64_t a4, int a5)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    _CGHandleAssert("upsample_provider_get_bytes_at_position_inner", 290, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderUpsample.c", "pos >= 0", "pos %lld", a3);
  }

  v6 = a4;
  v8 = *(a1 + 32);
  if (v8 < a4)
  {
    _CGHandleAssert("upsample_provider_get_bytes_at_position_inner", 296, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderUpsample.c", "length <= dst_scaline_size", "length %zu size %zu", a4, v8);
  }

  v11 = upsample_provider_destination_byte_count_to_source_byte_count(a1, a4);
  v12 = upsample_provider_byte_count_to_byte_count(*(a1 + 112), *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), 0, *(a1 + 56), *(a1 + 64), *(a1 + 72), a3);
  if (v12 >= 0x7FFFFFFF)
  {
    _CGHandleAssert("upsample_provider_get_bytes_at_position_inner", 314, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderUpsample.c", "src_pos >= 0 && src_pos < INT_MAX", "pos %lld", v12);
  }

  v13 = *a1;
  v14 = *(a1 + 144);
  if (v11 > v14)
  {
    CGPostError("%s: bytes_to_read %zd > work_buffer_size %zd", "upsample_provider_get_bytes_at_position_inner", v11, v14);
    v15 = *(a1 + 144);
    if (v11 > v15)
    {
      _CGHandleAssert("upsample_provider_get_bytes_at_position_inner", 322, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderUpsample.c", "bytes_to_read <= info->work_buffer_size", "bytes to read %zu  buffer size %zu", v11, v15);
    }
  }

  BytesAtPositionInternal = CGDataProviderGetBytesAtPositionInternal(v13, *(a1 + 8), *(a1 + 136), v12, v11);
  if (BytesAtPositionInternal)
  {
    v17 = *(a1 + 136);
    v18 = *(a1 + 96);
    switch(v18)
    {
      case 32:
        if (v8 >= 4)
        {
          v35 = 0;
          v36 = *(a1 + 120);
          v37 = v36 >> 1;
          v38 = *(a1 + 104);
          v39 = 4 * v38;
          do
          {
            if (v38)
            {
              v40 = (v17 + v39 * (v37 >> 16));
              v41 = a2;
              v42 = v38;
              do
              {
                v43 = *v40++;
                *v41++ = v43;
                --v42;
              }

              while (v42);
            }

            v37 += v36;
            v35 += v38;
            a2 = (a2 + v39);
          }

          while (v35 < v8 >> 2);
        }

        break;
      case 16:
        if (v8 >= 2)
        {
          v26 = 0;
          v27 = *(a1 + 120);
          v28 = v27 >> 1;
          v29 = *(a1 + 104);
          v30 = 2 * v29;
          do
          {
            if (v29)
            {
              v31 = (v17 + v30 * (v28 >> 16));
              v32 = a2;
              v33 = v29;
              do
              {
                v34 = *v31++;
                *v32++ = v34;
                --v33;
              }

              while (v33);
            }

            v28 += v27;
            v26 += v29;
            a2 = (a2 + v30);
          }

          while (v26 < v8 >> 1);
        }

        break;
      case 8:
        if (v8)
        {
          v19 = 0;
          v20 = *(a1 + 120);
          v21 = v20 >> 1;
          v22 = *(a1 + 104);
          v23 = v22;
          do
          {
            if (v23)
            {
              v24 = 0;
              v25 = v17 + (v21 >> 16) * v22;
              do
              {
                *(a2 + v19 + v24) = *(v25 + v24);
                ++v24;
                v22 = *(a1 + 104);
              }

              while (v24 < v22);
              v20 = *(a1 + 120);
              v23 = *(a1 + 104);
            }

            v21 += v20;
            v19 += v23;
          }

          while (v19 < v8);
        }

        break;
      default:
        _CGHandleAssert("upsample_data", 159, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderUpsample.c", "", "Unimplemented");
    }
  }

  if (v11 < BytesAtPositionInternal)
  {
    _CGHandleAssert("upsample_provider_get_bytes_at_position_inner", 336, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderUpsample.c", "src_length >= bytes_read", "length %zu  to read %zu", v11, BytesAtPositionInternal);
  }

  if (BytesAtPositionInternal < v11)
  {
    v6 = upsample_provider_source_byte_count_to_destination_byte_count(a1, BytesAtPositionInternal);
  }

  if (a5)
  {
    *(a1 + 88) += BytesAtPositionInternal;
    *(a1 + 48) += v6;
  }

  return v6;
}

uint64_t upsample_provider_release_data(uint64_t *a1)
{
  CGDataProviderReleaseBytePtr(*a1);
  v2 = *a1;

  return CGDataProviderReleaseData(v2);
}

uint64_t upsample_provider_retain_data(uint64_t *a1)
{
  CGDataProviderRetainBytePtr(*a1);
  v2 = *a1;

  return CGDataProviderRetainData(v2);
}

unint64_t upsample_provider_get_bytes_at_position(uint64_t a1, _DWORD *a2, unint64_t a3, unint64_t a4)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    _CGHandleAssert("upsample_provider_get_bytes_at_position", 353, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderUpsample.c", "info->src_provider_uses_random_access == true", "", v4, v5);
  }

  return upsample_provider_get_bytes_at_position_inner(a1, a2, a3, a4, 0);
}

uint64_t cmap_bf_set_release(uint64_t result)
{
  if (result)
  {
    v1 = result;
    free(*(result + 8));
    free(*(v1 + 32));
    v2 = *(v1 + 64);
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

    v4 = *(v1 + 48);
    *(v1 + 48) = 0;
    if (v4)
    {
      operator delete(v4);
    }

    JUMPOUT(0x1865EE610);
  }

  return result;
}

void cmap_bf_set_add_range(uint64_t a1, unsigned int a2, uint64_t a3, unint64_t a4, _WORD *a5)
{
  if (!a1 || a4 > 0x400)
  {
    return;
  }

  v7 = a3;
  if (*(a1 + 40) < a4)
  {
    *(a1 + 40) = a4;
  }

  v11 = *(a1 + 16);
  v10 = *(a1 + 24);
  v12 = a4 + v10 + 1;
  if (v12 <= v11)
  {
    v13 = *(a1 + 32);
  }

  else
  {
    do
    {
      v11 = 2 * v11 + 10;
    }

    while (v11 < v12);
    v13 = malloc_type_realloc(*(a1 + 32), 2 * v11, 0x1000040BDFB0063uLL);
    if (!v13)
    {
      return;
    }

    *(a1 + 32) = v13;
    *(a1 + 16) = v11;
    v10 = *(a1 + 24);
  }

  *(a1 + 24) = v10 + 1;
  v13[v10] = a4;
  memcpy(&v13[v10 + 1], a5, 2 * a4);
  *(a1 + 24) += a4;
  if (*a1 > v7)
  {
    if (a2 > v7)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v14 = grow_code_map(a1, v7);
  if (a2 <= v7 && (v14 & 1) != 0)
  {
LABEL_15:
    v15 = 0;
    v16 = *(a1 + 8);
    v17 = a2;
    do
    {
      v18 = (v16 + 8 * v17);
      *v18 = v10;
      v18[1] = v15;
      ++v17;
      ++v15;
    }

    while (v17 <= v7);
  }

LABEL_17:
  if (a4 == 1 && a2 <= v7)
  {
    do
    {
      v19 = *a5;
      v20 = *(a1 + 56);
      if (!*&v20)
      {
        goto LABEL_35;
      }

      v21 = vcnt_s8(v20);
      v21.i16[0] = vaddlv_u8(v21);
      if (v21.u32[0] > 1uLL)
      {
        v22 = *a5;
        if (*&v20 <= v19)
        {
          v22 = v19 % *(a1 + 56);
        }
      }

      else
      {
        v22 = (v20.i32[0] - 1) & v19;
      }

      v23 = *(*(a1 + 48) + 8 * v22);
      if (!v23 || (v24 = *v23) == 0)
      {
LABEL_35:
        operator new();
      }

      while (1)
      {
        v25 = v24[1];
        if (v25 == v19)
        {
          break;
        }

        if (v21.u32[0] > 1uLL)
        {
          if (v25 >= *&v20)
          {
            v25 %= *&v20;
          }
        }

        else
        {
          v25 &= *&v20 - 1;
        }

        if (v25 != v22)
        {
          goto LABEL_35;
        }

LABEL_34:
        v24 = *v24;
        if (!v24)
        {
          goto LABEL_35;
        }
      }

      if (*(v24 + 8) != v19)
      {
        goto LABEL_34;
      }

      *(v24 + 9) = a2++;
    }

    while (a2 <= v7);
  }
}

uint64_t grow_code_map(void **a1, unsigned int a2)
{
  LODWORD(v2) = *a1;
  if (*a1 > a2)
  {
    return 1;
  }

  do
  {
    v2 = (2 * v2 + 10);
  }

  while (v2 <= a2);
  result = malloc_type_realloc(a1[1], 8 * v2, 0x100004000313F17uLL);
  if (result)
  {
    v5 = *a1;
    if (v5 < v2)
    {
      v6 = v2 - v5;
      v7 = (result + 8 * v5);
      do
      {
        *v7++ = 0xFFFFFFFFLL;
        --v6;
      }

      while (v6);
    }

    a1[1] = result;
    *a1 = v2;
    return 1;
  }

  return result;
}

unint64_t cmap_bf_set_get_unichars(unint64_t result, unsigned int a2, uint64_t a3)
{
  if (result)
  {
    v3 = result;
    if (*result <= a2)
    {
      return 0;
    }

    v4 = (*(result + 8) + 8 * a2);
    v5 = *v4;
    if (v5 == -1)
    {
      return 0;
    }

    else
    {
      v6 = (*(result + 32) + 2 * v5);
      result = *v6;
      if (a3 && *v6)
      {
        v7 = v4[1];
        v8 = result;
        do
        {
          v9 = v7 + v6[v8];
          v7 = HIWORD(v9);
          *(a3 - 2 + v8 * 2) = v9;
          --v8;
        }

        while (v8 * 2);
      }

      v10 = *(v3 + 40);
      if (v10 < result)
      {
        _CGHandleAssert("cmap_bf_set_get_unichars", 242, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphicsRIP/CMaps/cmap-bf-set.cpp", "n <= set->max_unichar_length", "n (%lu) overflowed unichar length (%lu)", result, v10);
      }
    }
  }

  return result;
}

uint64_t CG::DisplayListXMLSerializer::serialize(CG::DisplayListXMLSerializer *this)
{
  propertyValueTypeRefPtr = 0;
  if (CFURLCopyResourcePropertyForKey(*(this + 2), *MEMORY[0x1E695EB28], &propertyValueTypeRefPtr, 0))
  {
    Value = CFBooleanGetValue(propertyValueTypeRefPtr);
    CFRelease(propertyValueTypeRefPtr);
    if (!Value)
    {
      CGPostError("%s: The destination is not an existing directory");
      return 0;
    }
  }

  v3 = *MEMORY[0x1E695E480];
  v4 = CFURLCreateCopyAppendingPathComponent(*MEMORY[0x1E695E480], *(this + 2), @"Resources", 1u);
  *(this + 5) = v4;
  if (!v4)
  {
    CGPostError("%s: Failed to create URL for Resources directory");
    return 0;
  }

  v5 = CFURLCreateCopyAppendingPathComponent(v3, *(this + 2), @"displayList.xml", 0);
  if (v5)
  {
    v6 = v5;
    *(this + 6) = CGDataConsumerCreateWithURL(v5);
    CFRelease(v6);
  }

  if (!*(this + 6))
  {
    CGPostError("%s: Failed to create a data consumer from given URL");
    return 0;
  }

  xmlTextWriterSetIndent(*(this + 4), 2);
  xmlTextWriterSetIndentString(*(this + 4), " ");
  if (xmlTextWriterStartDocument(*(this + 4), 0, "UTF-8", 0) < 0)
  {
    return 0;
  }

  if ((xmlTextWriterStartElement(*(this + 4), "dl") & 0x80000000) == 0)
  {
    v59[0] = 0;
    v59[1] = 0;
    v58 = v59;
    v7 = *(this + 1);
    v8 = *(v7 + 40);
    v67 = *(v7 + 24);
    v68 = v8;
    CG::DisplayListXMLHelper::addRectToAttributes(&v58, "frame", &v67);
    CG::DisplayListXMLHelper::addFormatToAttributes(&v58, "flags", "0x%.8X", *(*(this + 1) + 64));
    v9 = *(this + 1);
    if (*(v9 + 672) == *(v9 + 680))
    {
      v10 = &CGRectNull;
      p_height = &CGRectNull.size.height;
      p_y = &CGRectNull.origin.y;
      p_size = &CGRectNull.size;
    }

    else
    {
      v10 = (v9 + 72);
      p_y = (v9 + 80);
      p_size = (v9 + 88);
      p_height = (v9 + 96);
    }

    v15 = *p_height;
    v16 = *p_y;
    width = p_size->width;
    v67.f64[0] = v10->origin.x;
    v67.f64[1] = v16;
    *&v68 = width;
    *(&v68 + 1) = v15;
    CG::DisplayListXMLHelper::addRectToAttributes(&v58, "bounds", &v67);
    CG::DisplayListXMLHelper::writeAttributes(&v58, *(this + 4));
    v67.f64[0] = 0.0;
    *&v67.f64[1] = &v67;
    *&v68 = 0x4002000000;
    *(&v68 + 1) = __Block_byref_object_copy__3962;
    v69 = __Block_byref_object_dispose__3963;
    __p = 0;
    v71 = 0;
    v72 = 0;
    v18 = *(this + 1);
    v61 = MEMORY[0x1E69E9820];
    v62 = 0x40000000;
    v63 = ___ZN2CG24DisplayListXMLSerializer14writeResourcesEv_block_invoke;
    v64 = &unk_1E6E18020;
    v65 = &v67;
    v66 = this;
    CG::DisplayList::enumerateAllResourcesWithBlock(v18, 0, &v61);
    if ((xmlTextWriterStartElement(*(this + 4), "resources") & 0x80000000) == 0)
    {
      v19 = *(*&v67.f64[1] + 40);
      for (i = *(*&v67.f64[1] + 48); v19 != i; v19 += 8)
      {
        v21 = *v19;
        switch(*(*v19 + 11))
        {
          case 0:
            v78 = this;
            v79 = v22;
            v77[0] = &unk_1EF238DF0;
            DisplayListXMLWriterResource::write(v77, *(this + 4));
            break;
          case 1:
            v78 = this;
            v79 = v30;
            v77[0] = &unk_1EF238E50;
            DisplayListXMLWriterResource::write(v77, *(this + 4));
            break;
          case 2:
            v78 = this;
            v79 = v27;
            v77[0] = &unk_1EF238EA0;
            DisplayListXMLWriterResource::write(v77, *(this + 4));
            break;
          case 3:
            v78 = this;
            v79 = v28;
            v77[0] = &unk_1EF238EF0;
            DisplayListXMLWriterResource::write(v77, *(this + 4));
            break;
          case 4:
            v78 = this;
            v79 = v24;
            v77[0] = &unk_1EF238F40;
            DisplayListXMLWriterResource::write(v77, *(this + 4));
            break;
          case 5:
            v78 = this;
            v79 = v31;
            v77[0] = &unk_1EF238F90;
            DisplayListXMLWriterResource::write(v77, *(this + 4));
            break;
          case 6:
            v78 = this;
            v79 = v33;
            v77[0] = &unk_1EF238FE0;
            DisplayListXMLWriterResource::write(v77, *(this + 4));
            break;
          case 7:
            v78 = this;
            v79 = v29;
            v77[0] = &unk_1EF239080;
            DisplayListXMLWriterResource::write(v77, *(this + 4));
            break;
          case 8:
            v78 = this;
            v79 = v35;
            v77[0] = &unk_1EF2390D0;
            DisplayListXMLWriterResource::write(v77, *(this + 4));
            break;
          case 9:
            v78 = this;
            v79 = v26;
            v77[0] = &unk_1EF239120;
            DisplayListXMLWriterResource::write(v77, *(this + 4));
            break;
          case 0xA:
            v78 = this;
            v79 = v34;
            v77[0] = &unk_1EF239170;
            DisplayListXMLWriterResource::write(v77, *(this + 4));
            break;
          case 0xB:
            v78 = this;
            v79 = v23;
            v77[0] = &unk_1EF2391C0;
            DisplayListXMLWriterResource::write(v77, *(this + 4));
            break;
          case 0xC:
            v78 = this;
            v79 = v25;
            v77[0] = &unk_1EF239210;
            DisplayListXMLWriterResource::write(v77, *(this + 4));
            break;
          case 0xD:
            v78 = this;
            v79 = v32;
            v77[0] = &unk_1EF239030;
            DisplayListXMLWriterResource::write(v77, *(this + 4));
            break;
          default:
            continue;
        }
      }

      xmlTextWriterEndElement(*(this + 4));
    }

    _Block_object_dispose(&v67, 8);
    if (__p)
    {
      v71 = __p;
      operator delete(__p);
    }

    if ((xmlTextWriterStartElement(*(this + 4), "entryStates") & 0x80000000) == 0)
    {
      v36 = *(this + 1);
      *&v67.f64[0] = MEMORY[0x1E69E9820];
      *&v67.f64[1] = 0x40000000;
      *&v68 = ___ZN2CG24DisplayListXMLSerializer16writeEntryStatesEv_block_invoke;
      *(&v68 + 1) = &__block_descriptor_tmp_19_3952;
      v69 = this;
      v37 = v36[72];
      v38 = v36 + 73;
      if (v37 != v36 + 73)
      {
        do
        {
          (v68)(&v67, v37[4]);
          v39 = v37[1];
          if (v39)
          {
            do
            {
              v40 = v39;
              v39 = *v39;
            }

            while (v39);
          }

          else
          {
            do
            {
              v40 = v37[2];
              v41 = *v40 == v37;
              v37 = v40;
            }

            while (!v41);
          }

          v37 = v40;
        }

        while (v40 != v38);
        v36 = *(this + 1);
      }

      v61 = MEMORY[0x1E69E9820];
      v62 = 0x40000000;
      v63 = ___ZN2CG24DisplayListXMLSerializer16writeEntryStatesEv_block_invoke_2;
      v64 = &__block_descriptor_tmp_21_3953;
      v65 = this;
      v42 = v36[75];
      v43 = v36 + 76;
      if (v42 != v36 + 76)
      {
        do
        {
          v63(&v61, v42[4]);
          v44 = v42[1];
          if (v44)
          {
            do
            {
              v45 = v44;
              v44 = *v44;
            }

            while (v44);
          }

          else
          {
            do
            {
              v45 = v42[2];
              v41 = *v45 == v42;
              v42 = v45;
            }

            while (!v41);
          }

          v42 = v45;
        }

        while (v45 != v43);
        v36 = *(this + 1);
      }

      v77[0] = MEMORY[0x1E69E9820];
      v77[1] = 0x40000000;
      v78 = ___ZN2CG24DisplayListXMLSerializer16writeEntryStatesEv_block_invoke_3;
      v79 = &__block_descriptor_tmp_23_3954;
      v80 = this;
      v46 = v36[78];
      v47 = v36 + 79;
      if (v46 != v36 + 79)
      {
        do
        {
          v78(v77, v46[4]);
          v48 = v46[1];
          if (v48)
          {
            do
            {
              v49 = v48;
              v48 = *v48;
            }

            while (v48);
          }

          else
          {
            do
            {
              v49 = v46[2];
              v41 = *v49 == v46;
              v46 = v49;
            }

            while (!v41);
          }

          v46 = v49;
        }

        while (v49 != v47);
        v36 = *(this + 1);
      }

      v73[0] = MEMORY[0x1E69E9820];
      v73[1] = 0x40000000;
      v74 = ___ZN2CG24DisplayListXMLSerializer16writeEntryStatesEv_block_invoke_4;
      v75 = &__block_descriptor_tmp_25_3955;
      v76 = this;
      v50 = v36[81];
      v51 = v36 + 82;
      if (v50 != v36 + 82)
      {
        do
        {
          v74(v73, v50[4]);
          v52 = v50[1];
          if (v52)
          {
            do
            {
              v53 = v52;
              v52 = *v52;
            }

            while (v52);
          }

          else
          {
            do
            {
              v53 = v50[2];
              v41 = *v53 == v50;
              v50 = v53;
            }

            while (!v41);
          }

          v50 = v53;
        }

        while (v53 != v51);
      }

      xmlTextWriterEndElement(*(this + 4));
    }

    if ((xmlTextWriterStartElement(*(this + 4), "entries") & 0x80000000) == 0)
    {
      v54 = *(this + 1);
      *&v67.f64[0] = MEMORY[0x1E69E9820];
      *&v67.f64[1] = 0x40000000;
      *&v68 = ___ZN2CG24DisplayListXMLSerializer12writeEntriesEv_block_invoke;
      *(&v68 + 1) = &__block_descriptor_tmp_28;
      v69 = this;
      for (j = *(v54 + 672); j != *(v54 + 680); j += 2)
      {
        LOBYTE(v61) = 0;
        (v68)(&v67, *j, &v61);
        if (v61 == 1)
        {
          break;
        }
      }

      xmlTextWriterEndElement(*(this + 4));
    }

    xmlTextWriterEndElement(*(this + 4));
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v59[0]);
  }

  if (xmlTextWriterEndDocument(*(this + 4)) < 0)
  {
    return 0;
  }

  result = CGDataConsumerPutBytes(*(this + 6), **(this + 3), *(*(this + 3) + 8));
  if (result)
  {
    v56 = *(this + 6);
    if (v56 && (*(v56 + 56) & 1) == 0)
    {
      v57 = *(v56 + 80);
      if (v57)
      {
        v57(*(v56 + 16));
      }
    }

    return 1;
  }

  return result;
}

void sub_184085498(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  _Block_object_dispose(&a21, 8);
  if (__p)
  {
    a27 = __p;
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a12);
  _Unwind_Resume(a1);
}

void std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1[1]);
    std::__destroy_at[abi:fe200100]<std::pair<std::string const,std::string>,0>((a1 + 4));

    operator delete(a1);
  }
}

void std::__destroy_at[abi:fe200100]<std::pair<std::string const,std::string>,0>(uint64_t a1)
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

void ___ZN2CG24DisplayListXMLSerializer12writeEntriesEv_block_invoke(uint64_t result, char *lpsrc)
{
  v2 = *(result + 32);
  v3 = lpsrc[8];
  if (v3 <= 3)
  {
    if (v3 > 1)
    {
      if (v3 == 2)
      {
        v7 = v2;
        v5 = &unk_1EF239460;
      }

      else
      {
        v7 = v2;
        v5 = &unk_1EF2394B0;
      }
    }

    else if (lpsrc[8])
    {
      if (v3 != 1)
      {
        return;
      }

      v7 = v2;
      v5 = &unk_1EF239410;
    }

    else
    {
      v7 = v2;
      v5 = &unk_1EF2393B0;
    }
  }

  else if (v3 <= 5)
  {
    if (v3 == 4)
    {
      v7 = v2;
      v5 = &unk_1EF239500;
    }

    else
    {
      v7 = v2;
      v5 = &unk_1EF239550;
    }
  }

  else
  {
    switch(v3)
    {
      case 6:
        v7 = v2;
        v5 = &unk_1EF2395A0;
        break;
      case 7:
        v7 = v2;
        v5 = &unk_1EF2395F0;
        break;
      case 8:
        v7 = v2;
        v5 = &unk_1EF239640;
        break;
      default:
        return;
    }
  }

  v6 = v5;
  v8 = v4;
  DisplayListXMLWriterEntry::write(&v6, *(v2 + 32));
}

void DisplayListXMLWriterEntry::write(DisplayListXMLWriterEntry *this, xmlTextWriterPtr writer)
{
  *(this + 2) = writer;
  if ((xmlTextWriterStartElement(writer, "entry") & 0x80000000) == 0)
  {
    v4[0] = 0;
    v4[1] = 0;
    v3 = v4;
    (*(*this + 16))(this, &v3);
    CG::DisplayListXMLHelper::writeAttributes(&v3, *(this + 2));
    (*(*this + 24))(this);
    xmlTextWriterEndElement(*(this + 2));
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v4[0]);
  }
}

void DisplayListXMLWriterEntry::writeAttributes(void *a1, uint64_t **a2)
{
  v4 = (*(*a1 + 32))(a1);
  v5 = *(v4 + 8);
  if (v5 > 8)
  {
    v6 = 0;
  }

  else
  {
    v6 = off_1E6E344F0[v5];
  }

  CG::DisplayListXMLHelper::addStringToAttributes(a2, "type", v6);
  CG::DisplayListXMLHelper::addFormatToAttributes(a2, "flags", "0x%.6X", *(v4 + 8) >> 8);
  v7 = *(v4 + 32);
  v16[0] = *(v4 + 16);
  v16[1] = v7;
  CG::DisplayListXMLHelper::addRectToAttributes(a2, "boundingBox", v16);
  v8 = *(v4 + 48);
  if (v8)
  {
    ElementIDForEntryState = CG::DisplayListXMLSerializer::getElementIDForEntryState(a1[1], v8);
    CG::DisplayListXMLHelper::addFormatToAttributes(a2, "drawState", "%llu", ElementIDForEntryState);
  }

  v10 = *(v4 + 56);
  if (v10)
  {
    v11 = CG::DisplayListXMLSerializer::getElementIDForEntryState(a1[1], v10);
    CG::DisplayListXMLHelper::addFormatToAttributes(a2, "fillState", "%llu", v11);
  }

  v12 = *(v4 + 64);
  if (v12)
  {
    v13 = CG::DisplayListXMLSerializer::getElementIDForEntryState(a1[1], v12);
    CG::DisplayListXMLHelper::addFormatToAttributes(a2, "strokeState", "%llu", v13);
  }

  v14 = *(v4 + 72);
  if (v14)
  {
    v15 = CG::DisplayListXMLSerializer::getElementIDForEntryState(a1[1], v14);
    CG::DisplayListXMLHelper::addFormatToAttributes(a2, "patternState", "%llu", v15);
  }
}

uint64_t CG::DisplayListXMLSerializer::getElementIDForEntryState(uint64_t a1, const void *a2)
{
  v4 = *(a1 + 96);
  v2 = a1 + 96;
  v3 = v4;
  if (v4)
  {
    v5 = v2;
    do
    {
      v6 = *(v3 + 32);
      v7 = v6 >= a2;
      v8 = v6 < a2;
      if (v7)
      {
        v5 = v3;
      }

      v3 = *(v3 + 8 * v8);
    }

    while (v3);
    if (v5 != v2 && *(v5 + 32) <= a2)
    {
      return *(v5 + 40);
    }
  }

  CGPostError("%s: Failed to find ID of entryState: %p", "DisplayListElementID CG::DisplayListXMLSerializer::getElementIDForEntryState(const DisplayListEntryState *)", a2);
  return -1;
}

uint64_t DisplayListXMLWriterEntryDisplayList::writeAttributes(uint64_t a1, uint64_t **a2)
{
  DisplayListXMLWriterEntry::writeAttributes(a1, a2);
  v4 = *(a1 + 24);
  v5 = *(v4 + 80);
  if (v5)
  {
    ElementIDForResource = CG::DisplayListXMLSerializer::getElementIDForResource(*(a1 + 8), v5);
    CG::DisplayListXMLHelper::addFormatToAttributes(a2, "displayList", "%llu", ElementIDForResource);
    v4 = *(a1 + 24);
  }

  CG::DisplayListXMLHelper::addFormatToAttributes(a2, "ctm", "[%.17lg %.17lg %.17lg %.17lg %.17lg %.17lg]", *(v4 + 88), *(v4 + 96), *(v4 + 104), *(v4 + 112), *(v4 + 120), *(v4 + 128));
  v7 = *(*(a1 + 24) + 136);
  if (v7 > 4)
  {
    v8 = 0;
  }

  else
  {
    v8 = off_1E6E33BA0[v7];
  }

  CG::DisplayListXMLHelper::addStringToAttributes(a2, "interpolationQuality", v8);
  v9 = *(*(a1 + 24) + 140);
  if (v9 > 4)
  {
    v10 = 0;
  }

  else
  {
    v10 = off_1E6E33A00[v9];
  }

  CG::DisplayListXMLHelper::addStringToAttributes(a2, "renderingIntent", v10);
  return 1;
}

uint64_t CG::DisplayListXMLSerializer::getElementIDForResource(CG::DisplayListXMLSerializer *this, const CG::DisplayListResource *a2)
{
  v4 = *(this + 9);
  v2 = this + 72;
  v3 = v4;
  if (v4)
  {
    v5 = v2;
    do
    {
      v6 = *(v3 + 4);
      v7 = v6 >= a2;
      v8 = v6 < a2;
      if (v7)
      {
        v5 = v3;
      }

      v3 = *&v3[8 * v8];
    }

    while (v3);
    if (v5 != v2 && *(v5 + 4) <= a2)
    {
      return *(v5 + 5);
    }
  }

  CGPostError("%s: Failed to find ID of resource: %p", "DisplayListElementID CG::DisplayListXMLSerializer::getElementIDForResource(const DisplayListResource *)", a2);
  return -1;
}

uint64_t DisplayListXMLWriterEntryGradient::writeAttributes(uint64_t a1, uint64_t **a2)
{
  DisplayListXMLWriterEntry::writeAttributes(a1, a2);
  v4 = *(a1 + 24);
  v5 = *(v4 + 80);
  if (v5)
  {
    ElementIDForResource = CG::DisplayListXMLSerializer::getElementIDForResource(*(a1 + 8), v5);
    CG::DisplayListXMLHelper::addFormatToAttributes(a2, "gradient", "%llu", ElementIDForResource);
    v4 = *(a1 + 24);
  }

  CG::DisplayListXMLHelper::addFormatToAttributes(a2, "ctm", "[%.17lg %.17lg %.17lg %.17lg %.17lg %.17lg]", *(v4 + 88), *(v4 + 96), *(v4 + 104), *(v4 + 112), *(v4 + 120), *(v4 + 128));
  CG::DisplayListXMLHelper::addFormatToAttributes(a2, "options", "%d", *(*(a1 + 24) + 140));
  v7 = *(*(a1 + 24) + 136);
  switch(v7)
  {
    case 3:
      CG::DisplayListXMLHelper::addStringToAttributes(a2, "gradientType", "conic");
      CG::DisplayListXMLHelper::addFormatToAttributes(a2, "center", "{%.17lg, %.17lg}", *(*(a1 + 24) + 224), *(*(a1 + 24) + 232));
      CG::DisplayListXMLHelper::addFormatToAttributes(a2, "angle", "%g");
      return 1;
    case 2:
      CG::DisplayListXMLHelper::addStringToAttributes(a2, "gradientType", "radial");
      CG::DisplayListXMLHelper::addFormatToAttributes(a2, "startCenter", "{%.17lg, %.17lg}", *(*(a1 + 24) + 176), *(*(a1 + 24) + 184));
      CG::DisplayListXMLHelper::addFormatToAttributes(a2, "endCenter", "{%.17lg, %.17lg}", *(*(a1 + 24) + 192), *(*(a1 + 24) + 200));
      v8 = "%g";
      CG::DisplayListXMLHelper::addFormatToAttributes(a2, "startRadius", "%g", *(*(a1 + 24) + 208));
      *&v11 = *(*(a1 + 24) + 216);
      v9 = "endRadius";
      break;
    case 1:
      CG::DisplayListXMLHelper::addStringToAttributes(a2, "gradientType", "linear");
      v8 = "{%.17lg, %.17lg}";
      CG::DisplayListXMLHelper::addFormatToAttributes(a2, "startPt", "{%.17lg, %.17lg}", *(*(a1 + 24) + 144), *(*(a1 + 24) + 152));
      v11 = *(*(a1 + 24) + 160);
      v9 = "endPt";
      break;
    default:
      CGPostError("%s: Invalid gradient type", "virtual BOOL DisplayListXMLWriterEntryGradient::writeAttributes(DLXMLAttributes &)");
      return 1;
  }

  CG::DisplayListXMLHelper::addFormatToAttributes(a2, v9, v8, v11);
  return 1;
}

uint64_t DisplayListXMLWriterEntryShading::writeAttributes(uint64_t a1, uint64_t **a2)
{
  DisplayListXMLWriterEntry::writeAttributes(a1, a2);
  v4 = *(a1 + 24);
  v5 = *(v4 + 80);
  if (v5)
  {
    ElementIDForResource = CG::DisplayListXMLSerializer::getElementIDForResource(*(a1 + 8), v5);
    CG::DisplayListXMLHelper::addFormatToAttributes(a2, "shading", "%llu", ElementIDForResource);
    v4 = *(a1 + 24);
  }

  CG::DisplayListXMLHelper::addFormatToAttributes(a2, "ctm", "[%.17lg %.17lg %.17lg %.17lg %.17lg %.17lg]", *(v4 + 88), *(v4 + 96), *(v4 + 104), *(v4 + 112), *(v4 + 120), *(v4 + 128));
  v7 = *(*(a1 + 24) + 136);
  if (v7 > 4)
  {
    v8 = 0;
  }

  else
  {
    v8 = off_1E6E33BA0[v7];
  }

  CG::DisplayListXMLHelper::addStringToAttributes(a2, "interpolationQuality", v8);
  v9 = *(*(a1 + 24) + 140);
  if (v9 > 4)
  {
    v10 = 0;
  }

  else
  {
    v10 = off_1E6E33A00[v9];
  }

  CG::DisplayListXMLHelper::addStringToAttributes(a2, "renderingIntent", v10);
  return 1;
}

BOOL DisplayListXMLWriterEntryLines::writeChildElements(xmlTextWriterPtr *this)
{
  started = xmlTextWriterStartElement(this[2], "lines");
  if ((started & 0x80000000) == 0)
  {
    if (*(this[3] + 17))
    {
      v3 = 0;
      v4 = 0;
      do
      {
        if ((xmlTextWriterStartElement(this[2], "line") & 0x80000000) == 0)
        {
          v5 = (*(this[3] + 16) + v3);
          xmlTextWriterWriteFormatRaw(this[2], "{%.17lg, %.17lg}", *v5, v5[1]);
          xmlTextWriterEndElement(this[2]);
        }

        ++v4;
        v3 += 16;
      }

      while (v4 < *(this[3] + 17));
    }

    xmlTextWriterEndElement(this[2]);
  }

  return started >= 0;
}

uint64_t DisplayListXMLWriterEntryLines::writeAttributes(void *a1, uint64_t **a2)
{
  DisplayListXMLWriterEntry::writeAttributes(a1, a2);
  v4 = a1[3];
  CG::DisplayListXMLHelper::addFormatToAttributes(a2, "ctm", "[%.17lg %.17lg %.17lg %.17lg %.17lg %.17lg]", v4[10], v4[11], v4[12], v4[13], v4[14], v4[15]);
  CG::DisplayListXMLHelper::addFormatToAttributes(a2, "count", "%zu", *(a1[3] + 136));
  return 1;
}

BOOL DisplayListXMLWriterEntryRects::writeChildElements(xmlTextWriterPtr *this)
{
  started = xmlTextWriterStartElement(this[2], "rects");
  if ((started & 0x80000000) == 0)
  {
    if (*(this[3] + 18))
    {
      v3 = 0;
      v4 = 0;
      do
      {
        if ((xmlTextWriterStartElement(this[2], "rect") & 0x80000000) == 0)
        {
          v5 = (*(this[3] + 17) + v3);
          xmlTextWriterWriteFormatRaw(this[2], "{%.17lg, %.17lg}, {%.17lg, %.17lg}", *v5, v5[1], v5[2], v5[3]);
          xmlTextWriterEndElement(this[2]);
        }

        ++v4;
        v3 += 32;
      }

      while (v4 < *(this[3] + 18));
    }

    xmlTextWriterEndElement(this[2]);
  }

  return started >= 0;
}

uint64_t DisplayListXMLWriterEntryRects::writeAttributes(void *a1, uint64_t **a2)
{
  DisplayListXMLWriterEntry::writeAttributes(a1, a2);
  v4 = *(a1[3] + 80);
  if (v4 > 4)
  {
    v5 = 0;
  }

  else
  {
    v5 = off_1E6E33B08[v4];
  }

  CG::DisplayListXMLHelper::addStringToAttributes(a2, "drawingMode", v5);
  v6 = a1[3];
  CG::DisplayListXMLHelper::addFormatToAttributes(a2, "ctm", "[%.17lg %.17lg %.17lg %.17lg %.17lg %.17lg]", v6[11], v6[12], v6[13], v6[14], v6[15], v6[16]);
  CG::DisplayListXMLHelper::addFormatToAttributes(a2, "count", "%zu", *(a1[3] + 144));
  return 1;
}

BOOL DisplayListXMLWriterEntryPath::writeChildElements(xmlTextWriterPtr *this)
{
  if (xmlTextWriterStartElement(this[2], "cgpath") < 0)
  {
    return 0;
  }

  v3 = CG::DisplayListXMLHelper::writeCGPath(*(this[3] + 11), this[2], v2);
  xmlTextWriterEndElement(this[2]);
  return v3;
}

uint64_t DisplayListXMLWriterEntryPath::writeAttributes(void *a1, uint64_t **a2)
{
  DisplayListXMLWriterEntry::writeAttributes(a1, a2);
  v4 = *(a1[3] + 80);
  if (v4 > 4)
  {
    v5 = 0;
  }

  else
  {
    v5 = off_1E6E33B08[v4];
  }

  CG::DisplayListXMLHelper::addStringToAttributes(a2, "drawingMode", v5);
  CG::DisplayListXMLHelper::addBoolToAttributes(a2, "direct", *(a1[3] + 84));
  v6 = a1[3];
  CG::DisplayListXMLHelper::addFormatToAttributes(a2, "ctm", "[%.17lg %.17lg %.17lg %.17lg %.17lg %.17lg]", v6[12], v6[13], v6[14], v6[15], v6[16], v6[17]);
  return 1;
}

BOOL DisplayListXMLWriterEntryGlyphs::writeChildElements(xmlTextWriterPtr *this)
{
  started = xmlTextWriterStartElement(this[2], "glyphs");
  if ((started & 0x80000000) == 0)
  {
    if (*(this[3] + 31))
    {
      v3 = 0;
      v4 = 0;
      do
      {
        if ((xmlTextWriterStartElement(this[2], "glyph") & 0x80000000) == 0)
        {
          v8[0] = 0;
          v8[1] = 0;
          v7 = v8;
          v5 = (*(this[3] + 30) + v3);
          CG::DisplayListXMLHelper::addFormatToAttributes(&v7, "position", "{%.17lg, %.17lg}", *v5, v5[1]);
          CG::DisplayListXMLHelper::addFormatToAttributes(&v7, "glyph", "%d", *(*(this[3] + 29) + 2 * v4));
          CG::DisplayListXMLHelper::writeAttributes(&v7, this[2]);
          xmlTextWriterEndElement(this[2]);
          std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v8[0]);
        }

        ++v4;
        v3 += 16;
      }

      while (v4 < *(this[3] + 31));
    }

    xmlTextWriterEndElement(this[2]);
  }

  return started >= 0;
}

uint64_t DisplayListXMLWriterEntryGlyphs::writeAttributes(uint64_t a1, uint64_t **a2)
{
  DisplayListXMLWriterEntry::writeAttributes(a1, a2);
  v4 = *(a1 + 24);
  v5 = *(v4 + 80);
  if (v5)
  {
    ElementIDForResource = CG::DisplayListXMLSerializer::getElementIDForResource(*(a1 + 8), v5);
    CG::DisplayListXMLHelper::addFormatToAttributes(a2, "font", "%llu", ElementIDForResource);
    v4 = *(a1 + 24);
  }

  CG::DisplayListXMLHelper::addFormatToAttributes(a2, "ctm", "[%.17lg %.17lg %.17lg %.17lg %.17lg %.17lg]", *(v4 + 88), *(v4 + 96), *(v4 + 104), *(v4 + 112), *(v4 + 120), *(v4 + 128));
  v7 = *(a1 + 24);
  CG::DisplayListXMLHelper::addFormatToAttributes(a2, "ftm", "[%.17lg %.17lg %.17lg %.17lg %.17lg %.17lg]", v7[17], v7[18], v7[19], v7[20], v7[21], v7[22]);
  CG::DisplayListXMLHelper::addFormatToAttributes(a2, "scale", "%.17lg", *(*(a1 + 24) + 184));
  CG::DisplayListXMLHelper::addFormatToAttributes(a2, "dilation", "{%.17lg, %.17lg}", *(*(a1 + 24) + 192), *(*(a1 + 24) + 200));
  v8 = *(a1 + 24);
  v9 = *(v8 + 208);
  if (v9)
  {
    v10 = CG::DisplayListXMLSerializer::getElementIDForResource(*(a1 + 8), v9);
    CG::DisplayListXMLHelper::addFormatToAttributes(a2, "fontSmoothingBGColor", "%llu", v10);
    v8 = *(a1 + 24);
  }

  v11 = *(v8 + 216);
  if (v11 > 7)
  {
    v12 = 0;
  }

  else
  {
    v12 = off_1E6E33B30[v11];
  }

  CG::DisplayListXMLHelper::addStringToAttributes(a2, "textDrawingMode", v12);
  CG::DisplayListXMLHelper::addFormatToAttributes(a2, "fontRenderingStyle", "0x%.8X", *(*(a1 + 24) + 220));
  CG::DisplayListXMLHelper::addBoolToAttributes(a2, "shouldDrawBMRuns", *(*(a1 + 24) + 224));
  CG::DisplayListXMLHelper::addFormatToAttributes(a2, "count", "%zu", *(*(a1 + 24) + 248));
  return 1;
}

uint64_t DisplayListXMLWriterEntryImage::writeAttributes(uint64_t a1, uint64_t **a2)
{
  DisplayListXMLWriterEntry::writeAttributes(a1, a2);
  v4 = *(a1 + 24);
  v5 = *(v4 + 80);
  if (v5)
  {
    ElementIDForResource = CG::DisplayListXMLSerializer::getElementIDForResource(*(a1 + 8), v5);
    CG::DisplayListXMLHelper::addFormatToAttributes(a2, "image", "%llu", ElementIDForResource);
    v4 = *(a1 + 24);
  }

  CG::DisplayListXMLHelper::addFormatToAttributes(a2, "ctm", "[%.17lg %.17lg %.17lg %.17lg %.17lg %.17lg]", *(v4 + 88), *(v4 + 96), *(v4 + 104), *(v4 + 112), *(v4 + 120), *(v4 + 128));
  v7 = *(*(a1 + 24) + 136);
  if (v7 > 4)
  {
    v8 = 0;
  }

  else
  {
    v8 = off_1E6E33BA0[v7];
  }

  CG::DisplayListXMLHelper::addStringToAttributes(a2, "interpolationQuality", v8);
  v9 = *(*(a1 + 24) + 140);
  if (v9 > 4)
  {
    v10 = 0;
  }

  else
  {
    v10 = off_1E6E33BA0[v9];
  }

  CG::DisplayListXMLHelper::addStringToAttributes(a2, "interpolationMin", v10);
  v11 = *(*(a1 + 24) + 144);
  if (v11 > 4)
  {
    v12 = 0;
  }

  else
  {
    v12 = off_1E6E33BA0[v11];
  }

  CG::DisplayListXMLHelper::addStringToAttributes(a2, "interpolationMax", v12);
  v13 = *(*(a1 + 24) + 148);
  if (v13 > 4)
  {
    v14 = 0;
  }

  else
  {
    v14 = off_1E6E33A00[v13];
  }

  CG::DisplayListXMLHelper::addStringToAttributes(a2, "renderingIntent", v14);
  return 1;
}

void ___ZN2CG24DisplayListXMLSerializer16writeEntryStatesEv_block_invoke(uint64_t a1, uint64_t **a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 56);
  *(v3 + 56) = v4 + 1;
  v6 = a2;
  v5[0] = &v6;
  std::__tree<std::__value_type<CG::DisplayListEntryState const*,unsigned long long>,std::__map_value_compare<CG::DisplayListEntryState const*,std::__value_type<CG::DisplayListEntryState const*,unsigned long long>,std::less<CG::DisplayListEntryState const*>,true>,std::allocator<std::__value_type<CG::DisplayListEntryState const*,unsigned long long>>>::__emplace_unique_key_args<CG::DisplayListEntryState const*,std::piecewise_construct_t const&,std::tuple<CG::DisplayListEntryState const*&&>,std::tuple<>>((v3 + 88), a2, v5)[5] = v4;
  v5[0] = &unk_1EF239260;
  v5[1] = v3;
  v5[3] = a2;
  DisplayListXMLWriterEntryState::write(v5, *(v3 + 32));
}

void ___ZN2CG24DisplayListXMLSerializer16writeEntryStatesEv_block_invoke_2(uint64_t a1, uint64_t **a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 56);
  *(v3 + 56) = v4 + 1;
  v6 = a2;
  v5[0] = &v6;
  std::__tree<std::__value_type<CG::DisplayListEntryState const*,unsigned long long>,std::__map_value_compare<CG::DisplayListEntryState const*,std::__value_type<CG::DisplayListEntryState const*,unsigned long long>,std::less<CG::DisplayListEntryState const*>,true>,std::allocator<std::__value_type<CG::DisplayListEntryState const*,unsigned long long>>>::__emplace_unique_key_args<CG::DisplayListEntryState const*,std::piecewise_construct_t const&,std::tuple<CG::DisplayListEntryState const*&&>,std::tuple<>>((v3 + 88), a2, v5)[5] = v4;
  v5[0] = &unk_1EF2392C0;
  v5[1] = v3;
  v5[3] = a2;
  DisplayListXMLWriterEntryState::write(v5, *(v3 + 32));
}

void ___ZN2CG24DisplayListXMLSerializer16writeEntryStatesEv_block_invoke_3(uint64_t a1, uint64_t **a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 56);
  *(v3 + 56) = v4 + 1;
  v6 = a2;
  v5[0] = &v6;
  std::__tree<std::__value_type<CG::DisplayListEntryState const*,unsigned long long>,std::__map_value_compare<CG::DisplayListEntryState const*,std::__value_type<CG::DisplayListEntryState const*,unsigned long long>,std::less<CG::DisplayListEntryState const*>,true>,std::allocator<std::__value_type<CG::DisplayListEntryState const*,unsigned long long>>>::__emplace_unique_key_args<CG::DisplayListEntryState const*,std::piecewise_construct_t const&,std::tuple<CG::DisplayListEntryState const*&&>,std::tuple<>>((v3 + 88), a2, v5)[5] = v4;
  v5[0] = &unk_1EF239310;
  v5[1] = v3;
  v5[3] = a2;
  DisplayListXMLWriterEntryState::write(v5, *(v3 + 32));
}

void ___ZN2CG24DisplayListXMLSerializer16writeEntryStatesEv_block_invoke_4(uint64_t a1, uint64_t **a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 56);
  *(v3 + 56) = v4 + 1;
  v6 = a2;
  v5[0] = &v6;
  std::__tree<std::__value_type<CG::DisplayListEntryState const*,unsigned long long>,std::__map_value_compare<CG::DisplayListEntryState const*,std::__value_type<CG::DisplayListEntryState const*,unsigned long long>,std::less<CG::DisplayListEntryState const*>,true>,std::allocator<std::__value_type<CG::DisplayListEntryState const*,unsigned long long>>>::__emplace_unique_key_args<CG::DisplayListEntryState const*,std::piecewise_construct_t const&,std::tuple<CG::DisplayListEntryState const*&&>,std::tuple<>>((v3 + 88), a2, v5)[5] = v4;
  v5[0] = &unk_1EF239360;
  v5[1] = v3;
  v5[3] = a2;
  DisplayListXMLWriterEntryState::write(v5, *(v3 + 32));
}

uint64_t **std::__tree<std::__value_type<CG::DisplayListEntryState const*,unsigned long long>,std::__map_value_compare<CG::DisplayListEntryState const*,std::__value_type<CG::DisplayListEntryState const*,unsigned long long>,std::less<CG::DisplayListEntryState const*>,true>,std::allocator<std::__value_type<CG::DisplayListEntryState const*,unsigned long long>>>::__emplace_unique_key_args<CG::DisplayListEntryState const*,std::piecewise_construct_t const&,std::tuple<CG::DisplayListEntryState const*&&>,std::tuple<>>(uint64_t **a1, unint64_t a2, uint64_t ***a3)
{
  v3 = a1[1];
  if (!v3)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = v3[4];
      if (v5 <= a2)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if (v5 >= a2)
    {
      return v4;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }
}

void DisplayListXMLWriterEntryState::write(DisplayListXMLWriterEntryState *this, xmlTextWriterPtr writer)
{
  *(this + 2) = writer;
  if ((xmlTextWriterStartElement(writer, "entryState") & 0x80000000) == 0)
  {
    v4[0] = 0;
    v4[1] = 0;
    v3 = v4;
    (*(*this + 16))(this, &v3);
    CG::DisplayListXMLHelper::writeAttributes(&v3, *(this + 2));
    (*(*this + 24))(this);
    xmlTextWriterEndElement(*(this + 2));
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v4[0]);
  }
}

uint64_t DisplayListXMLWriterEntryStatePattern::writeAttributes(void *a1, uint64_t **a2)
{
  DisplayListXMLWriterEntryState::writeAttributes(a1, a2);
  CG::DisplayListXMLHelper::addStringToAttributes(a2, "type", "pattern");
  v4 = a1[3];
  CG::DisplayListXMLHelper::addFormatToAttributes(a2, "baseCTM", "[%.17lg %.17lg %.17lg %.17lg %.17lg %.17lg]", v4[1], v4[2], v4[3], v4[4], v4[5], v4[6]);
  CG::DisplayListXMLHelper::addFormatToAttributes(a2, "phase", "{%.17lg, %.17lg}", *(a1[3] + 56), *(a1[3] + 64));
  CG::DisplayListXMLHelper::addFormatToAttributes(a2, "smoothness", "%.17lg", *(a1[3] + 72));
  return 1;
}

void DisplayListXMLWriterEntryState::writeAttributes(void *a1, uint64_t **a2)
{
  v3 = a1[1];
  v4 = (*(*a1 + 32))(a1);
  ElementIDForEntryState = CG::DisplayListXMLSerializer::getElementIDForEntryState(v3, v4);
  CG::DisplayListXMLHelper::addFormatToAttributes(a2, "_id", "%llu", ElementIDForEntryState);
}

uint64_t DisplayListXMLWriterEntryStateStroke::writeAttributes(uint64_t a1, uint64_t **a2)
{
  DisplayListXMLWriterEntryState::writeAttributes(a1, a2);
  CG::DisplayListXMLHelper::addStringToAttributes(a2, "type", "stroke");
  v4 = *(a1 + 24);
  v5 = *(v4 + 8);
  if (v5)
  {
    ElementIDForResource = CG::DisplayListXMLSerializer::getElementIDForResource(*(a1 + 8), v5);
    CG::DisplayListXMLHelper::addFormatToAttributes(a2, "color", "%llu", ElementIDForResource);
    v4 = *(a1 + 24);
  }

  CG::DisplayListXMLHelper::addFormatToAttributes(a2, "width", "%.17lg", *(v4 + 16));
  CG::DisplayListXMLHelper::addFormatToAttributes(a2, "thresh", "%.17lg", *(*(a1 + 24) + 24));
  CG::DisplayListXMLHelper::addFormatToAttributes(a2, "limit", "%.17lg", *(*(a1 + 24) + 32));
  v7 = *(a1 + 24);
  v8 = *(v7 + 40);
  if (v8)
  {
    v9 = CG::DisplayListXMLSerializer::getElementIDForResource(*(a1 + 8), v8);
    CG::DisplayListXMLHelper::addFormatToAttributes(a2, "dash", "%llu", v9);
    v7 = *(a1 + 24);
  }

  v10 = *(v7 + 48);
  if (v10 > 2)
  {
    v11 = 0;
  }

  else
  {
    v11 = off_1E6E33B70[v10];
  }

  CG::DisplayListXMLHelper::addStringToAttributes(a2, "cap", v11);
  if (*(*(a1 + 24) + 49) > 2)
  {
    v12 = 0;
  }

  else
  {
    v12 = off_1E6E33B88[*(*(a1 + 24) + 49)];
  }

  CG::DisplayListXMLHelper::addStringToAttributes(a2, "join", v12);
  CG::DisplayListXMLHelper::addBoolToAttributes(a2, "adjust", *(*(a1 + 24) + 50));
  return 1;
}

uint64_t DisplayListXMLWriterEntryStateFill::writeAttributes(uint64_t a1, uint64_t **a2)
{
  DisplayListXMLWriterEntryState::writeAttributes(a1, a2);
  CG::DisplayListXMLHelper::addStringToAttributes(a2, "type", "fill");
  v4 = *(*(a1 + 24) + 8);
  if (v4)
  {
    ElementIDForResource = CG::DisplayListXMLSerializer::getElementIDForResource(*(a1 + 8), v4);
    CG::DisplayListXMLHelper::addFormatToAttributes(a2, "color", "%llu", ElementIDForResource);
  }

  return 1;
}

uint64_t DisplayListXMLWriterEntryStateDrawing::writeAttributes(uint64_t a1, uint64_t **a2)
{
  DisplayListXMLWriterEntryState::writeAttributes(a1, a2);
  CG::DisplayListXMLHelper::addStringToAttributes(a2, "type", "drawing");
  v4 = *(a1 + 24);
  v5 = *(v4 + 8);
  if (v5)
  {
    ElementIDForResource = CG::DisplayListXMLSerializer::getElementIDForResource(*(a1 + 8), v5);
    CG::DisplayListXMLHelper::addFormatToAttributes(a2, "clip", "%llu", ElementIDForResource);
    v4 = *(a1 + 24);
  }

  v7 = *(v4 + 16);
  if (v7)
  {
    v8 = CG::DisplayListXMLSerializer::getElementIDForResource(*(a1 + 8), v7);
    CG::DisplayListXMLHelper::addFormatToAttributes(a2, "softMask", "%llu", v8);
    v4 = *(a1 + 24);
  }

  v9 = *(v4 + 24);
  if (v9)
  {
    v10 = CG::DisplayListXMLSerializer::getElementIDForResource(*(a1 + 8), v9);
    CG::DisplayListXMLHelper::addFormatToAttributes(a2, "style", "%llu", v10);
    v4 = *(a1 + 24);
  }

  v11 = *(v4 + 32);
  if (v11)
  {
    v12 = CG::DisplayListXMLSerializer::getElementIDForResource(*(a1 + 8), v11);
    CG::DisplayListXMLHelper::addFormatToAttributes(a2, "BG", "%llu", v12);
    v4 = *(a1 + 24);
  }

  v13 = *(v4 + 40);
  if (v13)
  {
    v14 = CG::DisplayListXMLSerializer::getElementIDForResource(*(a1 + 8), v13);
    CG::DisplayListXMLHelper::addFormatToAttributes(a2, "UCR", "%llu", v14);
    v4 = *(a1 + 24);
  }

  CG::DisplayListXMLHelper::addFormatToAttributes(a2, "flatness", "%.17lg", *(v4 + 48));
  CG::DisplayListXMLHelper::addFormatToAttributes(a2, "alpha", "%.17lg", *(*(a1 + 24) + 56));
  v15 = (*(*(a1 + 24) + 96) << 26) >> 26;
  if (v15 > 0x1B)
  {
    v16 = "Unknown";
  }

  else
  {
    v16 = off_1E6E33A28[v15];
  }

  CG::DisplayListXMLHelper::addStringToAttributes(a2, "compositeOp", v16);
  CG::DisplayListXMLHelper::addBoolToAttributes(a2, "antialias", (*(*(a1 + 24) + 96) >> 6) & 1);
  CG::DisplayListXMLHelper::addBoolToAttributes(a2, "alphaIsShape", (*(*(a1 + 24) + 96) >> 7) & 1);
  v17 = (*(*(a1 + 24) + 96) << 18) >> 26;
  if (v17 > 4)
  {
    v18 = 0;
  }

  else
  {
    v18 = off_1E6E33A00[v17];
  }

  CG::DisplayListXMLHelper::addStringToAttributes(a2, "intent", v18);
  CG::DisplayListXMLHelper::addBoolToAttributes(a2, "fillOverprint", (*(*(a1 + 24) + 96) >> 14) & 1);
  CG::DisplayListXMLHelper::addBoolToAttributes(a2, "strokeOverprint", (*(*(a1 + 24) + 96) >> 15) & 1);
  CG::DisplayListXMLHelper::addFormatToAttributes(a2, "overprintMode", "%d", *(*(a1 + 24) + 100));
  return 1;
}

__n128 __Block_byref_object_copy__3962(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void __Block_byref_object_dispose__3963(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void ___ZN2CG24DisplayListXMLSerializer14writeResourcesEv_block_invoke(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 40);
  v39 = a2;
  (*(*a2 + 16))(&__p, a2);
  v5 = __p;
  v6 = v38;
  if (__p != v38)
  {
    v7 = (v4 + 72);
    do
    {
      v8 = *v5;
      v36 = *v5;
      v9 = *v7;
      if (!*v7)
      {
        goto LABEL_11;
      }

      v10 = (v4 + 72);
      do
      {
        v11 = v9[4];
        v12 = v11 >= v8;
        v13 = v11 < v8;
        if (v12)
        {
          v10 = v9;
        }

        v9 = v9[v13];
      }

      while (v9);
      if (v10 == v7 || v8 < v10[4])
      {
LABEL_11:
        v14 = *(v4 + 56);
        *(v4 + 56) = v14 + 1;
        v40 = &v36;
        v15 = std::__tree<std::__value_type<CG::DisplayListResource const*,std::pair<unsigned long long,BOOL>>,std::__map_value_compare<CG::DisplayListResource const*,std::__value_type<CG::DisplayListResource const*,std::pair<unsigned long long,BOOL>>,std::less<CG::DisplayListResource const*>,true>,std::allocator<std::__value_type<CG::DisplayListResource const*,std::pair<unsigned long long,BOOL>>>>::__emplace_unique_key_args<CG::DisplayListResource const*,std::piecewise_construct_t const&,std::tuple<CG::DisplayListResource const* const&>,std::tuple<>>((v4 + 64), v8, &v40);
        v15[5] = v14;
        *(v15 + 48) = 0;
      }

      ++v5;
    }

    while (v5 != v6);
  }

  v16 = *(v4 + 72);
  if (!v16)
  {
    goto LABEL_21;
  }

  v17 = v4 + 72;
  do
  {
    v18 = *(v16 + 32);
    v12 = v18 >= a2;
    v19 = v18 < a2;
    if (v12)
    {
      v17 = v16;
    }

    v16 = *(v16 + 8 * v19);
  }

  while (v16);
  if (v17 == v4 + 72 || *(v17 + 32) > a2)
  {
LABEL_21:
    v20 = *(v4 + 56);
    *(v4 + 56) = v20 + 1;
    v40 = &v39;
    v21 = std::__tree<std::__value_type<CG::DisplayListResource const*,std::pair<unsigned long long,BOOL>>,std::__map_value_compare<CG::DisplayListResource const*,std::__value_type<CG::DisplayListResource const*,std::pair<unsigned long long,BOOL>>,std::less<CG::DisplayListResource const*>,true>,std::allocator<std::__value_type<CG::DisplayListResource const*,std::pair<unsigned long long,BOOL>>>>::__emplace_unique_key_args<CG::DisplayListResource const*,std::piecewise_construct_t const&,std::tuple<CG::DisplayListResource const* const&>,std::tuple<>>((v4 + 64), a2, &v40);
    v21[5] = v20;
    *(v21 + 48) = 0;
  }

  if (__p)
  {
    v38 = __p;
    operator delete(__p);
  }

  v22 = *(*(a1 + 32) + 8);
  v24 = v22[6];
  v23 = v22[7];
  if (v24 >= v23)
  {
    v26 = v22[5];
    v27 = (v24 - v26) >> 3;
    if ((v27 + 1) >> 61)
    {
      std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
    }

    v28 = v23 - v26;
    v29 = v28 >> 2;
    if (v28 >> 2 <= (v27 + 1))
    {
      v29 = v27 + 1;
    }

    if (v28 >= 0x7FFFFFFFFFFFFFF8)
    {
      v30 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v30 = v29;
    }

    if (v30)
    {
      std::__allocate_at_least[abi:fe200100]<std::allocator<CG::DisplayListResource const*>>(v30);
    }

    v31 = (8 * v27);
    *v31 = a2;
    v25 = 8 * v27 + 8;
    v32 = v22[5];
    v33 = v22[6] - v32;
    v34 = v31 - v33;
    memcpy(v31 - v33, v32, v33);
    v35 = v22[5];
    v22[5] = v34;
    v22[6] = v25;
    v22[7] = 0;
    if (v35)
    {
      operator delete(v35);
    }
  }

  else
  {
    *v24 = a2;
    v25 = (v24 + 1);
  }

  v22[6] = v25;
}

void sub_184087848(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void DisplayListXMLWriterResource::write(DisplayListXMLWriterResource *this, xmlTextWriterPtr writer)
{
  *(this + 1) = writer;
  if ((xmlTextWriterStartElement(writer, "resource") & 0x80000000) == 0)
  {
    v4[0] = 0;
    v4[1] = 0;
    v3 = v4;
    (*(*this + 16))(this, &v3);
    CG::DisplayListXMLHelper::writeAttributes(&v3, *(this + 1));
    (*(*this + 24))(this);
    xmlTextWriterEndElement(*(this + 1));
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v4[0]);
  }
}

uint64_t DisplayListXMLWriterResource::writeAttributes(uint64_t (***a1)(CG::DisplayListXMLSerializer **), uint64_t **a2)
{
  v4 = (*a1)[4](a1);
  ElementIDForResource = CG::DisplayListXMLSerializer::getElementIDForResource(a1[2], v4);
  CG::DisplayListXMLHelper::addFormatToAttributes(a2, "_id", "%llu", ElementIDForResource);
  v6 = *(v4 + 11);
  if (v6 > 0xD)
  {
    v7 = 0;
  }

  else
  {
    v7 = off_1E6E34538[v6];
  }

  CG::DisplayListXMLHelper::addStringToAttributes(a2, "type", v7);
  CG::DisplayListXMLHelper::addFormatToAttributes(a2, "flags", "0x%.6X", (*(v4 + 8) << 8) >> 8);
  return 1;
}

uint64_t DisplayListXMLWriterResourceDisplayList::writeAttributes(uint64_t (***a1)(CG::DisplayListXMLSerializer **), uint64_t **a2)
{
  v18 = *MEMORY[0x1E69E9840];
  DisplayListXMLWriterResource::writeAttributes(a1, a2);
  v4 = *MEMORY[0x1E695E480];
  ElementIDForResource = CG::DisplayListXMLSerializer::getElementIDForResource(a1[2], a1[3]);
  v6 = CFStringCreateWithFormat(v4, 0, @"DisplayList-%llu.dlist", ElementIDForResource);
  if (v6)
  {
    v7 = v6;
    ResourcesDirectory = CG::DisplayListXMLSerializer::getResourcesDirectory(a1[2]);
    if (ResourcesDirectory)
    {
      v9 = CFURLCreateCopyAppendingPathComponent(v4, ResourcesDirectory, v7, 0);
      if (v9)
      {
        v11 = v9;
        v12 = a1[3][2];
        if (v12)
        {
          v13 = CG::DisplayList::serializeToURL((v12 + 16), v9, v10);
          if (v13)
          {
            v14 = v13;
            PathComponent = CFURLCopyLastPathComponent(v13);
            if (PathComponent)
            {
              CFStringGetCString(PathComponent, buffer, 1024, 0x8000100u);
              CG::DisplayListXMLHelper::addStringToAttributes(a2, "fileName", buffer);
            }

            CFRelease(v14);
          }
        }

        CFRelease(v11);
      }
    }

    CFRelease(v7);
  }

  return 1;
}

uint64_t CG::DisplayListXMLSerializer::getResourcesDirectory(CG::DisplayListXMLSerializer *this)
{
  v4 = *MEMORY[0x1E69E9840];
  if (CFURLGetFileSystemRepresentation(*(this + 5), 1u, buffer, 1025) && (!mkdir(buffer, 0x1FFu) || *__error() == 17))
  {
    return *(this + 5);
  }

  CGPostError("%s: Failed to create Resources directory", "CFURLRef CG::DisplayListXMLSerializer::getResourcesDirectory(BOOL)");
  return 0;
}

BOOL DisplayListXMLWriterResourceSoftMask::writeAttributes(uint64_t a1, uint64_t **a2)
{
  v44 = *MEMORY[0x1E69E9840];
  DisplayListXMLWriterResource::writeAttributes(a1, a2);
  v4 = *(*(a1 + 24) + 16);
  p_height = &CGRectNull.size.height;
  p_y = &CGRectNull.origin.y;
  p_size = &CGRectNull.size;
  v8 = (v4 + 72);
  if (v4)
  {
    p_size = (v4 + 88);
    p_y = (v4 + 80);
    p_height = (v4 + 96);
  }

  else
  {
    v8 = &CGRectNull;
  }

  v9 = *p_height;
  v10 = *p_y;
  width = p_size->width;
  buffer.f64[0] = v8->origin.x;
  buffer.f64[1] = v10;
  v42 = width;
  v43 = v9;
  CG::DisplayListXMLHelper::addRectToAttributes(a2, "bbox", &buffer);
  v12 = (v4 + 24);
  if (!v4)
  {
    v12 = &CGAffineTransformIdentity;
  }

  CG::DisplayListXMLHelper::addFormatToAttributes(a2, "matrix", "[%.17lg %.17lg %.17lg %.17lg %.17lg %.17lg]", v12->a, v12->b, v12->c, v12->d, v12->tx, v12->ty);
  v13 = *(a1 + 24);
  if (v13[3])
  {
    ElementIDForResource = CG::DisplayListXMLSerializer::getElementIDForResource(*(a1 + 16), v13[3]);
    CG::DisplayListXMLHelper::addFormatToAttributes(a2, "bg", "%llu", ElementIDForResource);
    v13 = *(a1 + 24);
  }

  v15 = *MEMORY[0x1E695E480];
  v16 = CG::DisplayListXMLSerializer::getElementIDForResource(*(a1 + 16), v13);
  v17 = CFStringCreateWithFormat(v15, 0, @"SoftMask-%llu.dlist", v16);
  if (!v17)
  {
    return 0;
  }

  v18 = v17;
  ResourcesDirectory = CG::DisplayListXMLSerializer::getResourcesDirectory(*(a1 + 16));
  if (ResourcesDirectory && (v20 = CFURLCreateCopyAppendingPathComponent(v15, ResourcesDirectory, v18, 0)) != 0)
  {
    v22 = v20;
    v23 = &CGRectNull.size.height;
    v24 = &CGRectNull.origin.y;
    v25 = &CGRectNull.size;
    v26 = (v4 + 72);
    if (v4)
    {
      v25 = (v4 + 88);
      v24 = (v4 + 80);
      v23 = (v4 + 96);
    }

    else
    {
      v26 = &CGRectNull;
    }

    v27 = *v23;
    v28 = *v24;
    v29 = v25->width;
    buffer.f64[0] = v26->origin.x;
    buffer.f64[1] = v28;
    v42 = v29;
    v43 = v27;
    CGDisplayList = CG::DisplayList::createCGDisplayList(0, &buffer, v21);
    if (CGDisplayList)
    {
      v31 = CGDisplayList;
      v32 = CGDisplayListContextCreate(CGDisplayList);
      if (v32)
      {
        v34 = v32;
        if (v4)
        {
          v35 = *(v4 + 136);
          if (v35)
          {
            v35(*(v4 + 120), v32);
          }
        }

        v36 = CG::DisplayList::serializeToURL((v31 + 16), v22, v33);
        if (v36)
        {
          v37 = v36;
          PathComponent = CFURLCopyLastPathComponent(v36);
          v39 = PathComponent != 0;
          if (PathComponent)
          {
            CFStringGetCString(PathComponent, &buffer, 1024, 0x8000100u);
            CG::DisplayListXMLHelper::addStringToAttributes(a2, "dl", &buffer);
          }

          CFRelease(v37);
        }

        else
        {
          v39 = 0;
        }

        CFRelease(v34);
      }

      else
      {
        v39 = 0;
      }

      CFRelease(v31);
    }

    else
    {
      v39 = 0;
    }

    CFRelease(v22);
  }

  else
  {
    v39 = 0;
  }

  CFRelease(v18);
  return v39;
}

uint64_t DisplayListXMLWriterResourceStyle::writeAttributes(uint64_t a1, uint64_t **a2)
{
  DisplayListXMLWriterResource::writeAttributes(a1, a2);
  v4 = *(*(a1 + 24) + 16);
  if (v4)
  {
    v5 = *(v4 + 20);
    if (v5 <= 2)
    {
      if (v5 == 1)
      {
        CG::DisplayListXMLHelper::addStringToAttributes(a2, "styleType", "shadow");
        CG::DisplayListXMLHelper::addFormatToAttributes(a2, "elevation", "%.17lg", *(v4 + 40));
        CG::DisplayListXMLHelper::addFormatToAttributes(a2, "azimuth", "%.17lg", *(v4 + 48));
        CG::DisplayListXMLHelper::addFormatToAttributes(a2, "ambient", "%.17lg", *(v4 + 56));
        CG::DisplayListXMLHelper::addFormatToAttributes(a2, "height", "%.17lg", *(v4 + 64));
        CG::DisplayListXMLHelper::addFormatToAttributes(a2, "radius", "%.17lg", *(v4 + 72));
        CG::DisplayListXMLHelper::addFormatToAttributes(a2, "saturation", "%.17lg");
        goto LABEL_22;
      }

      if (v5 == 2)
      {
        CG::DisplayListXMLHelper::addStringToAttributes(a2, "styleType", "focusRing");
        v6 = *(v4 + 36);
        v7 = "graphite";
        if (v6 != 1)
        {
          v7 = 0;
        }

        if (v6)
        {
          v8 = v7;
        }

        else
        {
          v8 = "blue";
        }

        CG::DisplayListXMLHelper::addStringToAttributes(a2, "tint", v8);
        v9 = 0;
        v10 = *(v4 + 40);
        if (v10 <= 2)
        {
          v9 = off_1E6E33BC8[v10];
        }

        CG::DisplayListXMLHelper::addStringToAttributes(a2, "ordering", v9);
        CG::DisplayListXMLHelper::addFormatToAttributes(a2, "alpha", "%.17lg", *(v4 + 48));
        CG::DisplayListXMLHelper::addFormatToAttributes(a2, "radius", "%.17lg", *(v4 + 56));
        CG::DisplayListXMLHelper::addFormatToAttributes(a2, "threshold", "%.17lg", *(v4 + 64));
        CG::DisplayListXMLHelper::addRectToAttributes(a2, "bounds", (v4 + 72));
        v11 = "accumulate";
        v18 = *(v4 + 104);
        v12 = "%d";
        goto LABEL_21;
      }

      goto LABEL_18;
    }

    if (v5 == 3)
    {
      CG::DisplayListXMLHelper::addStringToAttributes(a2, "styleType", "gaussianBlur");
      v11 = "radius";
      v18 = *(v4 + 40);
      v12 = "%.17lg";
LABEL_21:
      CG::DisplayListXMLHelper::addFormatToAttributes(a2, v11, v12, v18);
      goto LABEL_22;
    }

    if (v5 != 4)
    {
LABEL_18:
      CGPostError("Unknown CGStyleType");
      goto LABEL_22;
    }

    CG::DisplayListXMLHelper::addStringToAttributes(a2, "styleType", "colorMatrix");
    v13 = 0;
    v14 = v4 + 40;
    do
    {
      CG::DisplayListXMLHelper::addFormatToAttributes(a2, CG::DisplayListXMLHelper::colorMatrixIndexKey::keys[v13], "%.17lg", *(v14 + v13 * 8));
      ++v13;
    }

    while (v13 != 20);
  }

LABEL_22:
  v15 = *(*(a1 + 24) + 24);
  if (v15)
  {
    ElementIDForResource = CG::DisplayListXMLSerializer::getElementIDForResource(*(a1 + 16), v15);
    CG::DisplayListXMLHelper::addFormatToAttributes(a2, "colorSpace", "%llu", ElementIDForResource);
  }

  return 1;
}

BOOL DisplayListXMLWriterResourcePattern::writeAttributes(uint64_t (***a1)(CG::DisplayListXMLSerializer **), uint64_t **a2)
{
  values[1] = *MEMORY[0x1E69E9840];
  DisplayListXMLWriterResource::writeAttributes(a1, a2);
  v4 = a1[3][2];
  v5 = *(v4 + 5);
  v6 = "shading";
  if (v5 != 1)
  {
    v6 = 0;
  }

  if (v5)
  {
    v7 = v6;
  }

  else
  {
    v7 = "tiling";
  }

  CG::DisplayListXMLHelper::addStringToAttributes(a2, "patternType", v7);
  v8 = *(v4 + 120);
  *keys = *(v4 + 104);
  v32 = v8;
  CG::DisplayListXMLHelper::addRectToAttributes(a2, "patternBounds", keys);
  CG::DisplayListXMLHelper::addFormatToAttributes(a2, "patternMatrix", "[%.17lg %.17lg %.17lg %.17lg %.17lg %.17lg]", *(v4 + 3), *(v4 + 4), *(v4 + 5), *(v4 + 6), *(v4 + 7), *(v4 + 8));
  CG::DisplayListXMLHelper::addFormatToAttributes(a2, "step", "{%.17lg, %.17lg}", *(v4 + 17), *(v4 + 18));
  v9 = 0;
  v10 = *(v4 + 38);
  if (v10 <= 2)
  {
    v9 = off_1E6E33C48[v10];
  }

  CG::DisplayListXMLHelper::addStringToAttributes(a2, "tiling", v9);
  CG::DisplayListXMLHelper::addBoolToAttributes(a2, "isColored", *(v4 + 185));
  v11 = *MEMORY[0x1E695E480];
  ElementIDForResource = CG::DisplayListXMLSerializer::getElementIDForResource(a1[2], a1[3]);
  v13 = CFStringCreateWithFormat(v11, 0, @"PatternCell-%llu.dlist", ElementIDForResource);
  if (!v13)
  {
    return 0;
  }

  v14 = v13;
  ResourcesDirectory = CG::DisplayListXMLSerializer::getResourcesDirectory(a1[2]);
  if (ResourcesDirectory && (v16 = CFURLCreateCopyAppendingPathComponent(v11, ResourcesDirectory, v14, 0)) != 0)
  {
    v18 = v16;
    if (*(v4 + 185))
    {
      v19 = 0;
    }

    else
    {
      keys[0] = @"trackColors";
      values[0] = *MEMORY[0x1E695E4C0];
      v19 = CFDictionaryCreate(v11, keys, values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    v21 = *(v4 + 120);
    *keys = *(v4 + 104);
    v32 = v21;
    CGDisplayList = CG::DisplayList::createCGDisplayList(v19, keys, v17);
    if (v19)
    {
      CFRelease(v19);
    }

    if (CGDisplayList)
    {
      v23 = CGDisplayListContextCreate(CGDisplayList);
      if (v23)
      {
        v25 = v23;
        v26 = *(v4 + 21);
        if (v26)
        {
          v26(*(v4 + 10), v23);
        }

        v27 = CG::DisplayList::serializeToURL((CGDisplayList + 16), v18, v24);
        if (v27)
        {
          v28 = v27;
          PathComponent = CFURLCopyLastPathComponent(v27);
          v20 = PathComponent != 0;
          if (PathComponent)
          {
            CFStringGetCString(PathComponent, keys, 1024, 0x8000100u);
            CG::DisplayListXMLHelper::addStringToAttributes(a2, "drawCell", keys);
          }

          CFRelease(v28);
        }

        else
        {
          v20 = 0;
        }

        CFRelease(v25);
      }

      else
      {
        v20 = 0;
      }

      CFRelease(CGDisplayList);
    }

    else
    {
      v20 = 0;
    }

    CFRelease(v18);
  }

  else
  {
    v20 = 0;
  }

  CFRelease(v14);
  return v20;
}

BOOL DisplayListXMLWriterResourceGradient::writeChildElements(DisplayListXMLWriterResourceGradient *this)
{
  v2 = *(*(this + 3) + 16);
  if (!v2)
  {
    return 0;
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x4002000000;
  v19 = __Block_byref_object_copy__83;
  v20 = __Block_byref_object_dispose__84;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x4002000000;
  v11 = __Block_byref_object_copy__83;
  v12 = __Block_byref_object_dispose__84;
  __p = 0;
  v14 = 0;
  v15 = 0;
  v3 = *(v2 + 24);
  if (v3)
  {
    v4 = *(*(v3 + 24) + 48) + 1;
  }

  else
  {
    v4 = 1;
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = ___ZN36DisplayListXMLWriterResourceGradient18writeChildElementsEv_block_invoke;
  v7[3] = &unk_1E6E180E8;
  v7[5] = &v8;
  v7[6] = v4;
  v7[4] = &v16;
  CGGradientApplyWithBlock(v2, v7);
  v5 = CG::DisplayListXMLHelper::writeCGFloatArray("locations", v17 + 5, *(this + 1)) && CG::DisplayListXMLHelper::writeCGFloatArray("components", v9 + 5, *(this + 1));
  _Block_object_dispose(&v8, 8);
  if (__p)
  {
    v14 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&v16, 8);
  if (v21)
  {
    v22 = v21;
    operator delete(v21);
  }

  return v5;
}

void sub_184088754(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  _Block_object_dispose(&a17, 8);
  if (__p)
  {
    a23 = __p;
    operator delete(__p);
  }

  _Block_object_dispose((v23 - 80), 8);
  v25 = *(v23 - 40);
  if (v25)
  {
    *(v23 - 32) = v25;
    operator delete(v25);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__83(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void __Block_byref_object_dispose__84(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void ___ZN36DisplayListXMLWriterResourceGradient18writeChildElementsEv_block_invoke(void *a1, uint64_t *a2, double a3)
{
  v6 = a3;
  std::vector<double>::push_back[abi:fe200100](*(a1[4] + 8) + 40, &v6);
  if (a1[6])
  {
    v5 = 0;
    do
    {
      std::vector<double>::push_back[abi:fe200100](*(a1[5] + 8) + 40, a2);
      ++v5;
      ++a2;
    }

    while (v5 < a1[6]);
  }
}

void std::vector<double>::push_back[abi:fe200100](uint64_t a1, uint64_t *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:fe200100]<std::allocator<unsigned long>>(v11);
    }

    v12 = (8 * (v8 >> 3));
    *v12 = *a2;
    v6 = v12 + 1;
    memcpy(0, v7, v8);
    v13 = *a1;
    *a1 = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

uint64_t DisplayListXMLWriterResourceGradient::writeAttributes(uint64_t a1, uint64_t **a2)
{
  DisplayListXMLWriterResource::writeAttributes(a1, a2);
  v4 = *(a1 + 24);
  v5 = *(v4 + 24);
  if (v5)
  {
    ElementIDForResource = CG::DisplayListXMLSerializer::getElementIDForResource(*(a1 + 16), v5);
    CG::DisplayListXMLHelper::addFormatToAttributes(a2, "colorSpace", "%llu", ElementIDForResource);
    v4 = *(a1 + 24);
  }

  v7 = *(v4 + 16);
  if (v7)
  {
    v7 = *(v7 + 48);
  }

  CG::DisplayListXMLHelper::addFormatToAttributes(a2, "count", "%zu", v7);
  return 1;
}

uint64_t DisplayListXMLWriterResourceShading::writeAttributes(uint64_t a1, uint64_t **a2)
{
  DisplayListXMLWriterResource::writeAttributes(a1, a2);
  v4 = *(*(a1 + 24) + 32);
  if (v4)
  {
    ElementIDForResource = CG::DisplayListXMLSerializer::getElementIDForResource(*(a1 + 16), v4);
    CG::DisplayListXMLHelper::addFormatToAttributes(a2, "colorSpace", "%llu", ElementIDForResource);
  }

  return 1;
}

uint64_t DisplayListXMLWriterResourceImage::writeAttributes(uint64_t (***a1)(CG::DisplayListXMLSerializer **), uint64_t **a2)
{
  v26 = *MEMORY[0x1E69E9840];
  DisplayListXMLWriterResource::writeAttributes(a1, a2);
  v4 = a1[3];
  v5 = *(v4 + 5);
  if (v5)
  {
    ElementIDForResource = CG::DisplayListXMLSerializer::getElementIDForResource(a1[2], v5);
    CG::DisplayListXMLHelper::addFormatToAttributes(a2, "colorSpace", "%llu", ElementIDForResource);
    v4 = a1[3];
  }

  CG::DisplayListXMLHelper::addFormatToAttributes(a2, "width", "%zu", *(v4 + 3));
  CG::DisplayListXMLHelper::addFormatToAttributes(a2, "height", "%zu", a1[3][4]);
  v7 = *(a1[3] + 48) << 28 >> 28;
  if (v7 > 4)
  {
    v8 = 0;
  }

  else
  {
    v8 = off_1E6E33A00[v7];
  }

  CG::DisplayListXMLHelper::addFormatToAttributes(a2, "renderingIntent", "%s", v8);
  if ((a1[3][6] & 0x10) != 0)
  {
    v9 = "true";
  }

  else
  {
    v9 = "false";
  }

  CG::DisplayListXMLHelper::addFormatToAttributes(a2, "interpolate", "%s", v9);
  if ((a1[3][6] & 0x20) != 0)
  {
    v10 = "true";
  }

  else
  {
    v10 = "false";
  }

  CG::DisplayListXMLHelper::addFormatToAttributes(a2, "isMask", "%s", v10);
  if ((a1[3][6] & 0x40) != 0)
  {
    v11 = "true";
  }

  else
  {
    v11 = "false";
  }

  CG::DisplayListXMLHelper::addFormatToAttributes(a2, "isTransparent", "%s", v11);
  v12 = *MEMORY[0x1E695E480];
  v13 = CG::DisplayListXMLSerializer::getElementIDForResource(a1[2], a1[3]);
  v14 = CFStringCreateWithFormat(v12, 0, @"Image-%llu.br2", v13);
  ResourcesDirectory = CG::DisplayListXMLSerializer::getResourcesDirectory(a1[2]);
  if (ResourcesDirectory)
  {
    v16 = CFURLCreateCopyAppendingPathComponent(v12, ResourcesDirectory, v14, 0);
    if (v16)
    {
      v17 = v16;
      CFURLGetFileSystemRepresentation(v16, 1u, buffer, 1025);
      FileNameForBufferReader = CGImageCreateFileNameForBufferReader(a1[3][2], buffer);
      if (FileNameForBufferReader)
      {
        v19 = FileNameForBufferReader;
        CFStringGetCString(FileNameForBufferReader, __s, 1025, 0x8000100u);
        CGImageDumpToFile(a1[3][2], __s);
        v20 = strrchr(__s, 47);
        if (v20)
        {
          v21 = v20;
          if (v14)
          {
            CFRelease(v14);
          }

          v14 = CFStringCreateWithCString(v12, v21 + 1, 0x8000100u);
        }

        CFRelease(v19);
      }

      CFRelease(v17);
    }
  }

  if (v14)
  {
    CStringPtr = CFStringGetCStringPtr(v14, 0x8000100u);
    CG::DisplayListXMLHelper::addStringToAttributes(a2, "imageName", CStringPtr);
    CFRelease(v14);
  }

  return 1;
}

uint64_t DisplayListXMLWriterResourceFont::writeAttributes(uint64_t (***a1)(CG::DisplayListXMLSerializer **), uint64_t **a2)
{
  DisplayListXMLWriterResource::writeAttributes(a1, a2);
  v4 = CGFontCopyURL(a1[3][2]);
  if (v4)
  {
    v5 = v4;
    v6 = CFURLGetString(v4);
    if (!v6)
    {
LABEL_5:
      CFRelease(v5);
      goto LABEL_13;
    }

    CStringPtr = CFStringGetCStringPtr(v6, 0x8000100u);
    v8 = "fontURL";
LABEL_4:
    CG::DisplayListXMLHelper::addStringToAttributes(a2, v8, CStringPtr);
    goto LABEL_5;
  }

  v29 = 0;
  if (CGFontGetIntProperty(a1[3][2], @"com.apple.CoreGraphics.CGPDFFontFormat", &v29))
  {
    v9 = a1[3][2];
    if (v9)
    {
      explicit = atomic_load_explicit(v9 + 11, memory_order_acquire);
      if (explicit)
      {
        Property = CGPropertiesGetProperty(explicit, @"com.apple.CoreGraphics.CGPDFFontData");
        if (Property)
        {
          v12 = Property;
          v13 = CFGetTypeID(Property);
          if (v13 == CFDataGetTypeID())
          {
            if ((v29 - 1) > 5)
            {
              v14 = "font";
            }

            else
            {
              v14 = off_1E6E18108[v29 - 1];
            }

            v16 = *MEMORY[0x1E695E480];
            ElementIDForResource = CG::DisplayListXMLSerializer::getElementIDForResource(a1[2], a1[3]);
            v5 = CFStringCreateWithFormat(v16, 0, @"Font-%llu.%s", ElementIDForResource, v14);
            ResourcesDirectory = CG::DisplayListXMLSerializer::getResourcesDirectory(a1[2]);
            if (ResourcesDirectory)
            {
              v19 = CFURLCreateCopyAppendingPathComponent(v16, ResourcesDirectory, v5, 0);
              if (v19)
              {
                v20 = v19;
                v21 = CGDataConsumerCreateWithURL(v19);
                if (v21)
                {
                  v22 = v21;
                  BytePtr = CFDataGetBytePtr(v12);
                  Length = CFDataGetLength(v12);
                  if ((*(v22 + 56) & 1) == 0)
                  {
                    v25 = *(v22 + 9);
                    if (!v25)
                    {
                      goto LABEL_23;
                    }

                    v26 = *(v22 + 5);
                    v27 = *(v22 + 6) + Length;
                    *(v22 + 6) = v27;
                    if (v27 > v26)
                    {
                      *(v22 + 5) = v27;
                    }

                    v25(*(v22 + 2), BytePtr, Length);
                    if ((*(v22 + 56) & 1) == 0)
                    {
LABEL_23:
                      v28 = *(v22 + 10);
                      if (v28)
                      {
                        v28(*(v22 + 2));
                      }
                    }
                  }

                  CFRelease(v22);
                }

                CFRelease(v20);
              }
            }

            CStringPtr = CFStringGetCStringPtr(v5, 0x8000100u);
            v8 = "fontResourceURL";
            goto LABEL_4;
          }
        }
      }
    }
  }

LABEL_13:
  CG::DisplayListXMLHelper::addFormatToAttributes(a2, "em", "%.17lg", *(a1[3] + 3));
  return 1;
}

BOOL DisplayListXMLWriterResourceDash::writeChildElements(xmlTextWriterPtr *this)
{
  started = xmlTextWriterStartElement(this[1], "pattern");
  if (started < 1)
  {
    v5 = started;
  }

  else
  {
    v3 = *(this[3] + 2);
    if (v3)
    {
      v4 = *(v3 + 16);
    }

    else
    {
      v4 = 0;
    }

    if (v3)
    {
      v6 = (v3 + 24);
    }

    else
    {
      v6 = 0;
    }

    memset(&v16, 0, sizeof(v16));
    std::string::append(&v16, "[", 1uLL);
    if (v4)
    {
      CG::DisplayListXMLHelper::appendFormatToString(&v16, v7, v8, v9, v10, v11, v12, v13, *v6);
    }

    std::string::append(&v16, "]", 1uLL);
    if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = &v16;
    }

    else
    {
      v14 = v16.__r_.__value_.__r.__words[0];
    }

    xmlTextWriterWriteRaw(this[1], v14);
    v5 = xmlTextWriterEndElement(this[1]);
    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }
  }

  return v5 >= 0;
}

void sub_1840890EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DisplayListXMLWriterResourceDash::writeAttributes(uint64_t a1, uint64_t **a2)
{
  DisplayListXMLWriterResource::writeAttributes(a1, a2);
  v4 = *(*(a1 + 24) + 16);
  if (v4)
  {
    v5 = *(v4 + 8);
    v6 = *(v4 + 16);
  }

  else
  {
    v6 = 0;
    v5 = 0.0;
  }

  CG::DisplayListXMLHelper::addFormatToAttributes(a2, "phase", "%.17lg", v5);
  CG::DisplayListXMLHelper::addFormatToAttributes(a2, "count", "%zu", v6);
  return 1;
}

const __CFString *DisplayListXMLWriterResourceColorSpace::writeAttributes(uint64_t (***a1)(CG::DisplayListXMLSerializer **), uint64_t **a2)
{
  DisplayListXMLWriterResource::writeAttributes(a1, a2);
  v4 = a1[3][2];
  v5 = CGColorSpaceGetType(v4) + 1;
  if (v5 > 0xC)
  {
    v6 = 0;
  }

  else
  {
    v6 = off_1E6E33BE0[v5];
  }

  CG::DisplayListXMLHelper::addStringToAttributes(a2, "csType", v6);
  if (v4)
  {
    v7 = *(*(v4 + 3) + 80);
    if (v7)
    {
      CStringPtr = CFStringGetCStringPtr(v7, 0x8000100u);
      v9 = "name";
LABEL_11:
      CG::DisplayListXMLHelper::addStringToAttributes(a2, v9, CStringPtr);
      return 1;
    }
  }

  if (CGColorSpaceGetType(v4) != 9)
  {
    if (CGColorSpaceIsICCCompatible(v4))
    {
      v11 = *MEMORY[0x1E695E480];
      ElementIDForResource = CG::DisplayListXMLSerializer::getElementIDForResource(a1[2], a1[3]);
      v13 = CFStringCreateWithFormat(v11, 0, @"ColorSpace-%llu.icc", ElementIDForResource);
      v14 = CGColorSpaceCopyICCData(v4);
      v15 = a1[2];
      if (v14)
      {
        ResourcesDirectory = CG::DisplayListXMLSerializer::getResourcesDirectory(v15);
        if (ResourcesDirectory)
        {
          v17 = CFURLCreateCopyAppendingPathComponent(v11, ResourcesDirectory, v13, 0);
          if (v17)
          {
            v18 = v17;
            v19 = CGDataConsumerCreateWithURL(v17);
            if (v19)
            {
              v20 = v19;
              BytePtr = CFDataGetBytePtr(v14);
              Length = CFDataGetLength(v14);
              if ((*(v20 + 56) & 1) != 0 || (v23 = *(v20 + 9)) == 0)
              {
                v26 = 0;
              }

              else
              {
                v24 = *(v20 + 5);
                v25 = *(v20 + 6) + Length;
                *(v20 + 6) = v25;
                if (v25 > v24)
                {
                  *(v20 + 5) = v25;
                }

                v26 = v23(*(v20 + 2), BytePtr, Length);
              }

              v27 = CFDataGetLength(v14);
              v29 = v27 >= 0 && v26 == v27;
              if ((*(v20 + 56) & 1) == 0)
              {
                v30 = *(v20 + 10);
                if (v30)
                {
                  v30(*(v20 + 2));
                }
              }

              CFRelease(v20);
              CFRelease(v18);
              CFRelease(v14);
              if (v29)
              {
                CStringPtr = CFStringGetCStringPtr(v13, 0x8000100u);
                v9 = "profile";
                goto LABEL_11;
              }

              return 0;
            }

            CFRelease(v18);
          }
        }

        CFRelease(v14);
      }

      else
      {
        CG::DisplayListXMLSerializer::getElementIDForResource(v15, a1[3]);
        CGPostError("%s: CGColorSpaceCopyICCData() returned NULL for ColorSpaceResource with id = %llu");
      }
    }

    else
    {
      CGPostError("%s: Unhanded colorspace kind");
    }

    return 0;
  }

  result = CGColorSpaceGetBaseColorSpace(v4);
  if (result)
  {
    result = *(result->length + 80);
    if (result)
    {
      CStringPtr = CFStringGetCStringPtr(result, 0x8000100u);
      v9 = "patternBaseName";
      goto LABEL_11;
    }
  }

  return result;
}

uint64_t DisplayListXMLWriterResourceColor::writeAttributes(uint64_t a1, uint64_t **a2)
{
  DisplayListXMLWriterResource::writeAttributes(a1, a2);
  v4 = *(a1 + 24);
  v5 = v4[3];
  if (v5)
  {
    ElementIDForResource = CG::DisplayListXMLSerializer::getElementIDForResource(*(a1 + 16), v5);
    CG::DisplayListXMLHelper::addFormatToAttributes(a2, "colorSpace", "%llu", ElementIDForResource);
    v4 = *(a1 + 24);
  }

  v7 = v4[4];
  if (v7)
  {
    v8 = CG::DisplayListXMLSerializer::getElementIDForResource(*(a1 + 16), v7);
    CG::DisplayListXMLHelper::addFormatToAttributes(a2, "pattern", "%llu", v8);
    v4 = *(a1 + 24);
  }

  v9 = v4[2];
  Components = CGColorGetComponents(v9);
  if (v9)
  {
    if (v9 < 0)
    {
      NumberOfComponents = CGTaggedColorGetNumberOfComponents(v9);
    }

    else
    {
      NumberOfComponents = *(v9 + 56);
    }
  }

  else
  {
    NumberOfComponents = 0;
  }

  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  if (Mutable)
  {
    v13 = Mutable;
    CFStringAppend(Mutable, @"(");
    if (NumberOfComponents)
    {
      v14 = 1;
      v15 = NumberOfComponents;
      do
      {
        CFStringAppendFormat(v13, 0, @"%.17lg", *Components);
        if (v14 < NumberOfComponents)
        {
          CFStringAppendCString(v13, " ", 0x8000100u);
        }

        ++v14;
        ++Components;
        --v15;
      }

      while (v15);
    }

    CFStringAppend(v13, @""));
    CStringPtr = CFStringGetCStringPtr(v13, 0x8000100u);
    CG::DisplayListXMLHelper::addStringToAttributes(a2, "components", CStringPtr);
    CFRelease(v13);
  }

  return 1;
}

BOOL DisplayListXMLWriterResourceClip::writeChildElements(DisplayListXMLWriterResourceClip *this)
{
  v38 = *MEMORY[0x1E69E9840];
  v1 = *(*(this + 3) + 16);
  if (!v1)
  {
    return 1;
  }

  v2 = *(v1 + 120);
  if (!v2)
  {
    return 1;
  }

  if ((xmlTextWriterStartElement(*(this + 1), "stack") & 0x80000000) == 0)
  {
    xmlTextWriterWriteFormatAttribute(*(this + 1), "count", "%zu", v2);
    v4 = 0;
    alloc = *MEMORY[0x1E695E480];
    for (i = 16; ; ++i)
    {
      v6 = *(*(this + 3) + 16);
      if (v6 && v6[15] > v4)
      {
        if (v6[14] == 3)
        {
          v7 = &v6[i];
        }

        else
        {
          v7 = (v6[16] + 8 * v4);
        }

        v8 = *v7;
      }

      else
      {
        v8 = 0;
      }

      v9 = *(v8 + 8);
      if (v9 > 4 || v9 == 1)
      {
        CGPostError("%s: Unexpected clip type (%d) encountered,", "virtual BOOL DisplayListXMLWriterResourceClip::writeChildElements()", v9);
      }

      else if ((xmlTextWriterStartElement(*(this + 1), "clip") & 0x80000000) == 0)
      {
        v35[0] = 0;
        v35[1] = 0;
        v34 = v35;
        v11 = *(v8 + 8);
        v12 = v11;
        if (v12 > 2)
        {
          if (v12 == 3)
          {
            if (v11 == 3)
            {
              v17 = *(v8 + 24);
              if (v17)
              {
                v18 = *(v17 + 80);
                *buffer = *(v17 + 64);
                *v37 = v18;
                CG::DisplayListXMLHelper::addRectToAttributes(&v34, "rect", buffer);
                CG::DisplayListXMLHelper::addFormatToAttributes(&v34, "matrix", "[%.17lg %.17lg %.17lg %.17lg %.17lg %.17lg]", *(v17 + 8), *(v17 + 16), *(v17 + 24), *(v17 + 32), *(v17 + 40), *(v17 + 48));
                v32 = *(v17 + 56);
                if (v32)
                {
                  ElementIDForResource = CG::DisplayListXMLSerializer::getElementIDForResource(*(this + 2), *(this + 3));
                  v20 = CFStringCreateWithFormat(alloc, 0, @"Clip-%llu_Mask-%lu.tiff", ElementIDForResource, v4 + 1);
                  ResourcesDirectory = CG::DisplayListXMLSerializer::getResourcesDirectory(*(this + 2));
                  if (ResourcesDirectory)
                  {
                    v22 = CFURLCreateCopyAppendingPathComponent(alloc, ResourcesDirectory, v20, 0);
                    v23 = v22;
                    if (v22)
                    {
                      CFURLGetFileSystemRepresentation(v22, 1u, buffer, 1025);
                      CGImageWriteToFile(v32, buffer);
                      CFRelease(v23);
                    }
                  }

                  CStringPtr = CFStringGetCStringPtr(v20, 0x8000100u);
                  CG::DisplayListXMLHelper::addStringToAttributes(&v34, "maskImage", CStringPtr);
                }
              }
            }

            CG::DisplayListXMLHelper::addStringToAttributes(&v34, "type", "mask");
            goto LABEL_37;
          }

          if (v12 == 4)
          {
            goto LABEL_23;
          }
        }

        else if (v11)
        {
          if (v12 != 2)
          {
            goto LABEL_37;
          }

LABEL_23:
          CG::DisplayListXMLHelper::addStringToAttributes(&v34, "type", off_1E6E339D0[(v11 + 1)]);
        }

        else
        {
          CG::DisplayListXMLHelper::addStringToAttributes(&v34, "type", "rect");
          if (*(v8 + 8))
          {
            v13 = &CGRectNull;
            p_height = &CGRectNull.size.height;
            p_y = &CGRectNull.origin.y;
            p_size = &CGRectNull.size;
          }

          else
          {
            v13 = (v8 + 24);
            p_y = (v8 + 32);
            p_size = (v8 + 40);
            p_height = (v8 + 48);
          }

          v25 = *p_height;
          v26 = *p_y;
          width = p_size->width;
          *buffer = v13->origin.x;
          *&buffer[8] = v26;
          v37[0] = width;
          v37[1] = v25;
          CG::DisplayListXMLHelper::addRectToAttributes(&v34, "rect", buffer);
        }

LABEL_37:
        CG::DisplayListXMLHelper::writeAttributes(&v34, *(this + 1));
        v28 = *(v8 + 8);
        if (v28 == 4)
        {
          CGPostError("%s: kCGClipTypeTextClipping is unimplemented", "virtual BOOL DisplayListXMLWriterResourceClip::writeChildElements()");
        }

        else if (v28 == 2 && v28 == 2)
        {
          v29 = *(v8 + 24);
          if (v29)
          {
            if ((xmlTextWriterStartElement(*(this + 1), "cgpath") & 0x80000000) == 0)
            {
              CG::DisplayListXMLHelper::writeCGPath(v29, *(this + 1), v30);
              xmlTextWriterEndElement(*(this + 1));
            }
          }
        }

        xmlTextWriterEndElement(*(this + 1));
        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v35[0]);
      }

      if (v2 == ++v4)
      {
        return xmlTextWriterEndElement(*(this + 1)) >= 0;
      }
    }
  }

  return 0;
}

uint64_t DisplayListXMLWriterResourceClip::writeAttributes(uint64_t a1, uint64_t **a2)
{
  DisplayListXMLWriterResource::writeAttributes(a1, a2);
  v4 = *(a1 + 24);
  v5 = *(v4 + 40);
  v7[0] = *(v4 + 24);
  v7[1] = v5;
  CG::DisplayListXMLHelper::addRectToAttributes(a2, "bbox", v7);
  return 1;
}

uint64_t *std::__tree<std::__value_type<CG::DisplayListResource const*,std::pair<unsigned long long,BOOL>>,std::__map_value_compare<CG::DisplayListResource const*,std::__value_type<CG::DisplayListResource const*,std::pair<unsigned long long,BOOL>>,std::less<CG::DisplayListResource const*>,true>,std::allocator<std::__value_type<CG::DisplayListResource const*,std::pair<unsigned long long,BOOL>>>>::__emplace_unique_key_args<CG::DisplayListResource const*,std::piecewise_construct_t const&,std::tuple<CG::DisplayListResource const* const&>,std::tuple<>>(uint64_t **a1, unint64_t a2, void **a3)
{
  v3 = a1[1];
  if (!v3)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = v3[4];
      if (v5 <= a2)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if (v5 >= a2)
    {
      return v4;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }
}

void CG::DisplayListXMLSerializer::~DisplayListXMLSerializer(CG::DisplayListXMLSerializer *this)
{
  CG::DisplayListXMLSerializer::~DisplayListXMLSerializer(this);

  JUMPOUT(0x1865EE610);
}

{
  *this = &unk_1EF238D68;
  xmlFreeTextWriter(*(this + 4));
  xmlBufferFree(*(this + 3));
  v2 = *(this + 6);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 5);
  if (v3)
  {
    CFRelease(v3);
  }

  std::__tree<unsigned long>::destroy(*(this + 12));
  std::__tree<unsigned long>::destroy(*(this + 9));

  CG::DisplayListSerializer::~DisplayListSerializer(this);
}

void CG::DisplayListSerializer::~DisplayListSerializer(CG::DisplayListSerializer *this)
{
  *this = &unk_1EF238DC8;
  v1 = *(this + 2);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t CGFontGetGlyphPaths(void *a1, unsigned __int16 *a2, float64x2_t *a3, uint64_t a4, float64x2_t *a5, double *a6, uint64_t a7, uint64_t a8)
{
  if ((CGFontGetGlyphPaths_warned & 1) == 0)
  {
    CGFontGetGlyphPaths_warned = 1;
  }

  if (!a1)
  {
    return 0;
  }

  result = 0;
  if (a4)
  {
    v17 = a2 == 0;
  }

  else
  {
    v17 = 0;
  }

  if (!v17 && a8)
  {
    if (!a4)
    {
      return 1;
    }

    info[0] = a7;
    info[1] = a8;
    result = get_font_info(a1);
    if (!result)
    {
      return result;
    }

    v18 = *(result + 8);
    if (v18)
    {
      v19 = 1.0 / v18;
      if (a6 && *a6 != 72.0)
      {
        v19 = v19 * (72.0 / *a6);
      }

      v30 = *&v19;
      v31.f64[0] = 0.0;
      v31.f64[1] = v19;
      v32 = 0uLL;
      if (a5)
      {
        v20 = a5[1];
        v21 = vmulq_f64(v20, 0);
        v22 = vmlaq_n_f64(v21, *a5, v19);
        v23 = vmlaq_f64(vmulq_n_f64(v20, v19), 0, *a5);
        v24 = vaddq_f64(a5[2], vmlaq_f64(v21, 0, *a5));
        v30 = v22;
        v31 = v23;
        v32 = v24;
      }

      do
      {
        if (*a8)
        {
          (*a8)(a7, *a2);
        }

        v25 = (*(a1[2] + 408))(a1[14], 0, *a2);
        if (v25)
        {
          v26 = v25;
          CGPathApply(v25, info, process_path_element);
          CFRelease(v26);
        }

        else
        {
          CGPathApply(0, info, process_path_element);
        }

        v27 = *(a8 + 48);
        if (v27)
        {
          v27(a7, *a2);
        }

        if (a3)
        {
          v28 = *a3++;
          v32 = vaddq_f64(v28, v32);
        }

        ++a2;
        --a4;
      }

      while (a4);
      return 1;
    }

    return 0;
  }

  return result;
}

float64x2_t *process_path_element(float64x2_t *result, uint64_t a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7, __n128 a8)
{
  v9 = result->f64[1];
  v10 = *a2;
  if (*a2 <= 1)
  {
    if (v10)
    {
      if (v10 != 1)
      {
        goto LABEL_26;
      }

      v13 = *(*&v9 + 16);
      if (!v13)
      {
        return result;
      }
    }

    else
    {
      v13 = *(*&v9 + 8);
      if (!v13)
      {
        return result;
      }
    }

    v42 = vmlaq_n_f64(vmulq_n_f64(result[2], *(*(a2 + 8) + 8)), result[1], **(a2 + 8));
    v40 = vaddq_f64(result[3], v42);
    v41 = result->f64[0];
    v42.n128_u64[0] = v40.n128_u64[1];

    return v13(*&v41, v40, v42);
  }

  else
  {
    switch(v10)
    {
      case 2:
        v14 = *(*&v9 + 24);
        if (v14)
        {
          v15 = *(a2 + 8);
          v16 = v15[1];
          v17 = result[1].f64[0];
          v18 = result[1].f64[1];
          v19 = result[2].f64[0];
          v20 = result[2].f64[1];
          v21 = result[3].f64[0];
          v22 = result[3].f64[1];
          a3.n128_f64[0] = v21 + v16 * v19 + v17 * *v15;
          a4.n128_f64[0] = v22 + v16 * v20 + v18 * *v15;
          v23 = v15[2];
          v24 = v15[3];
          a5.n128_f64[0] = v21 + v19 * v24 + v17 * v23;
          v25 = result->f64[0];

          a6.n128_f64[0] = v22 + v20 * v24 + v18 * v23;
          return v14(*&v25, a3, a4, a5, a6);
        }

        break;
      case 3:
        v26 = *(*&v9 + 32);
        if (v26)
        {
          v27 = *(a2 + 8);
          v28 = v27[1];
          v29 = result[1].f64[0];
          v30 = result[1].f64[1];
          v31 = result[2].f64[0];
          v32 = result[2].f64[1];
          v33 = result[3].f64[0];
          v34 = result[3].f64[1];
          a3.n128_f64[0] = v33 + v28 * v31 + v29 * *v27;
          a4.n128_f64[0] = v34 + v28 * v32 + v30 * *v27;
          v35 = v27[2];
          v36 = v27[3];
          a5.n128_f64[0] = v33 + v31 * v36 + v29 * v35;
          a6.n128_f64[0] = v34 + v32 * v36 + v30 * v35;
          v37 = v27[4];
          v38 = v27[5];
          a7.n128_f64[0] = v33 + v31 * v38 + v29 * v37;
          a8.n128_f64[0] = v34 + v32 * v38 + v30 * v37;
          v39 = result->f64[0];

          return v26(*&v39, a3, a4, a5, a6, a7, a8);
        }

        break;
      case 4:
        v11 = *(*&v9 + 40);
        if (v11)
        {
          v12 = result->f64[0];

          return v11(*&v12, a3, a4, a5, a6, a7, a8);
        }

        return result;
      default:
LABEL_26:
        abort();
    }
  }

  return result;
}

void *CGPDFXRefStreamCreate(const void **a1, uint64_t a2, int a3)
{
  v4 = a2;
  v17 = a2;
  v6 = malloc_type_calloc(1uLL, 0x20uLL, 0x102004016EE4530uLL);
  __CFSetLastAllocationEventName();
  if (v6)
  {
    *v6 = a1;
    v6[3] = v4;
    v7 = pdf_object_scanner_create_with_xref(a1, 0);
    v6[2] = v7;
    if (v7)
    {
      v8 = v6 + 1;
      while (1)
      {
        v9 = xref_stream_create(v7, v4);
        if (!v9)
        {
          break;
        }

        v10 = v9;
        v11 = *v8;
        v12 = malloc_type_calloc(1uLL, 0x10uLL, 0xA0040AFF93C70uLL);
        *v12 = v11;
        v12[1] = v10;
        *v8 = v12;
        if (!a3)
        {
          goto LABEL_16;
        }

        if (!CGPDFDictionaryGetOffset(*(v10 + 1), "Prev", &v17))
        {
          v12 = *v8;
          if (*v8)
          {
LABEL_16:
            v15 = 0;
            do
            {
              v16 = v12;
              v12 = *v12;
              *v16 = v15;
              v15 = v16;
            }

            while (v12);
          }

          else
          {
            v16 = 0;
          }

          *v8 = v16;
          return v6;
        }

        v4 = v17;
        if (!v17)
        {
          break;
        }

        v13 = v6 + 1;
        while (1)
        {
          v13 = *v13;
          if (!v13)
          {
            break;
          }

          if (*v13[1] == v17)
          {
            goto LABEL_13;
          }
        }

        v7 = v6[2];
      }
    }

LABEL_13:
    CGPDFXRefStreamRelease(v6);
    return 0;
  }

  return v6;
}

char *xref_stream_create(uint64_t *a1, uint64_t a2)
{
  v41[3] = *MEMORY[0x1E69E9840];
  v29 = 0;
  value = 0;
  memset(v28, 0, sizeof(v28));
  CGPDFSourceSetPosition(a1[1], a2);
  if ((pdf_object_scanner_read_indirect_object(a1, v28) & 1) == 0)
  {
    pdf_error("missing or invalid cross-reference stream.");
    return 0;
  }

  if (DWORD2(v28[0]) != 9)
  {
    pdf_error("missing or invalid cross-reference stream.");
LABEL_11:
    if ((DWORD2(v28[0]) - 5) <= 4)
    {
      pdf_object_release_compound_value(v28);
    }

    return 0;
  }

  v3 = v29;
  if (v29)
  {
    *(v29 + 41) = 1;
  }

  v4 = malloc_type_calloc(1uLL, 0x18uLL, 0x102004023CB03E4uLL);
  __CFSetLastAllocationEventName();
  if (!v4)
  {
    goto LABEL_11;
  }

  if (v3)
  {
    v5 = *(v3 + 48);
    if (v5)
    {
      CFRetain(*(v3 + 48));
    }
  }

  else
  {
    v5 = 0;
  }

  *(v4 + 1) = v5;
  if (!CGPDFDictionaryGetName(v5, "Type", &value))
  {
LABEL_18:
    pdf_error(v6);
    goto LABEL_19;
  }

  if (strcmp(value, "XRef"))
  {
LABEL_19:
    if ((DWORD2(v28[0]) - 5) <= 4)
    {
      pdf_object_release_compound_value(v28);
    }

    xref_stream_release(v4);
    return 0;
  }

  v40 = 0;
  v39 = 0;
  v38 = 0;
  v36 = 0;
  v37 = 0;
  if (!CGPDFDictionaryGetInteger(*(v4 + 1), "Size", &v38))
  {
    goto LABEL_19;
  }

  if (!CGPDFDictionaryGetIntegers(*(v4 + 1), "W", v41, 3))
  {
    goto LABEL_19;
  }

  v8 = 0;
  do
  {
    if (v41[v8] > 8uLL)
    {
      goto LABEL_18;
    }

    ++v8;
  }

  while (v8 != 3);
  v32 = 0;
  v33 = &v32;
  v34 = 0x2000000000;
  v35 = 0;
  description = pdf_filter_chain_create_description(v3, *(v3 + 40));
  if (description)
  {
    v10 = description;
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 0x40000000;
    v31[2] = __xref_stream_read_sections_block_invoke;
    v31[3] = &unk_1E6E18140;
    v31[4] = &v32;
    CGCFArrayApplyBlock(description, v31);
    CFRelease(v10);
  }

  if (*(v33 + 24) == 1)
  {
LABEL_53:
    _Block_object_dispose(&v32, 8);
    goto LABEL_19;
  }

  v11 = CGPDFStreamCreateFilterChain(v3, &v39);
  if (!v11 || v39)
  {
    if (!v11)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  if (CGPDFDictionaryGetArray(*(v4 + 1), "Index", &v40))
  {
    if (v40)
    {
      v13 = *(v40 + 2);
      v12 = *(v40 + 3);
      if (((v12 - v13) & 8) != 0)
      {
LABEL_51:
        goto LABEL_52;
      }

      v14 = v4 + 16;
      if (v12 != v13)
      {
        v15 = 0;
        v16 = (v12 - v13) >> 3;
        while (CGPDFArrayGetInteger(v40, v15, &v37))
        {
          v17 = v15 + 1;
          if (!CGPDFArrayGetInteger(v40, v17, &v36))
          {
            break;
          }

          section = xref_stream_read_section(v11, v41, v37, v36);
          if (!section)
          {
            goto LABEL_52;
          }

          v19 = section;
          v20 = *v14;
          v21 = malloc_type_calloc(1uLL, 0x10uLL, 0xA0040AFF93C70uLL);
          *v21 = v20;
          v21[1] = v19;
          *v14 = v21;
          v15 = v17 + 1;
          if (v15 >= v16)
          {
            goto LABEL_56;
          }
        }

        goto LABEL_51;
      }
    }

    else
    {
      v14 = v4 + 16;
    }

    v21 = *v14;
    if (*v14)
    {
LABEL_56:
      v26 = 0;
      do
      {
        v27 = v21;
        v21 = *v21;
        *v27 = v26;
        v26 = v27;
      }

      while (v21);
    }

    else
    {
      v27 = 0;
    }

    *v14 = v27;
  }

  else
  {
    v22 = xref_stream_read_section(v11, v41, 0, v38);
    if (!v22)
    {
LABEL_52:
      CFRelease(v11);
      goto LABEL_53;
    }

    v23 = v22;
    v24 = *(v4 + 2);
    v25 = malloc_type_calloc(1uLL, 0x10uLL, 0xA0040AFF93C70uLL);
    *v25 = v24;
    v25[1] = v23;
    *(v4 + 2) = v25;
  }

  CFRelease(v11);
  _Block_object_dispose(&v32, 8);
  if ((DWORD2(v28[0]) - 5) <= 4)
  {
    pdf_object_release_compound_value(v28);
  }

  return v4;
}

void xref_stream_release(void *a1)
{
  if (a1)
  {
    v2 = a1[2];
    if (v2)
    {
      do
      {
        free(v2[1]);
        v2 = *v2;
      }

      while (v2);
      v3 = a1[2];
      if (v3)
      {
        do
        {
          v4 = *v3;
          free(v3);
          v3 = v4;
        }

        while (v4);
      }
    }

    v5 = a1[1];
    if (v5)
    {
      CFRelease(v5);
    }

    free(a1);
  }
}

uint64_t __xref_stream_read_sections_block_invoke(uint64_t a1, CFTypeRef cf)
{
  v4 = CFGetTypeID(cf);
  result = CFNumberGetTypeID();
  if (v4 == result)
  {
    valuePtr = 0;
    result = CFNumberGetValue(cf, kCFNumberIntType, &valuePtr);
    if (result)
    {
      if (valuePtr == 6)
      {
        *(*(*(a1 + 32) + 8) + 24) = 1;
      }
    }
  }

  return result;
}

void *xref_stream_read_section(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  v29 = *MEMORY[0x1E69E9840];
  if (a4 > 0x155555555555555)
  {
    return 0;
  }

  v8 = malloc_type_calloc(1uLL, 24 * a4 + 16, 0x1000040451B5BE8uLL);
  __CFSetLastAllocationEventName();
  if (v8)
  {
    *v8 = a3;
    v8[1] = a4;
    if (a4)
    {
      v9 = 0;
      v23 = v8;
      v24 = a4;
      v25 = v8 + 2;
      while (2)
      {
        v10 = 0;
        v26 = &v25[3 * v9];
        do
        {
          v11 = a2[v10];
          if (v11)
          {
            v12 = 0;
            v13 = 0;
            v14 = 1;
            v15 = a2[v10];
            while (1)
            {
              v16 = CGPDFSourceGetc(a1);
              if (v16 == -1)
              {
                break;
              }

              v13 = v16 | (v13 << 8);
              v12 = v14++ >= v11;
              if (!--v15)
              {
                goto LABEL_12;
              }
            }

            if (!v12)
            {
              goto LABEL_27;
            }
          }

          else
          {
            v13 = 0;
LABEL_12:
            *(&v27 + v10) = v13;
          }

          ++v10;
        }

        while (v10 != 3);
        if (*a2)
        {
          v17 = v27;
        }

        else
        {
          v17 = 1;
        }

        if (v17 == 2)
        {
          *v26 = v28;
          *(v26 + 8) = 0;
          *(v26 + 18) |= 3u;
        }

        else
        {
          if (v17 == 1)
          {
            v21 = WORD4(v28);
            v19 = &v25[3 * v9];
            *v26 = v28;
            *(v26 + 8) = v21;
            LOBYTE(v20) = *(v26 + 18) & 0xFC | 1;
          }

          else
          {
            if (v17)
            {
LABEL_27:
              free(v23);
              return 0;
            }

            v18 = WORD4(v28);
            v19 = &v25[3 * v9];
            *v26 = v28;
            *(v26 + 8) = v18;
            v20 = *(v26 + 18) & 0xFC;
          }

          *(v19 + 18) = v20;
        }

        if (++v9 != v24)
        {
          continue;
        }

        return v23;
      }
    }
  }

  return v8;
}

uint64_t CGPDFXRefStreamGetObject(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v8 = a1 + 1;
  do
  {
    v8 = *v8;
    if (!v8)
    {
      return 0;
    }

    entry = xref_stream_get_entry(*(v8[1] + 16), a2, v5);
  }

  while (!entry);
  v10 = *entry;
  if ((*(entry + 18) & 2) != 0)
  {
    if (!v10)
    {
      return 0;
    }

    v13 = *a1;
    v14 = pdf_xref_resolve(*a1, v10, 0);
    if (!v14)
    {
      return 0;
    }

    v15 = v14;
    v16 = CGPDFObjectCopyAssociation(v14, "ObjectStream");
    if (v16)
    {
      v17 = v16;
      Object = CGPDFObjectStreamGetObject(v16, a2, v5, a4);
    }

    else
    {
      if (*(v15 + 8) != 9)
      {
        return 0;
      }

      v19 = CGPDFObjectStreamCreate(v13, *(v15 + 32));
      if (!v19)
      {
        return 0;
      }

      v17 = CGPDFObjectSetAssociation(v15, v19, "ObjectStream");
      Object = CGPDFObjectStreamGetObject(v17, a2, v5, a4);
      if (!v17)
      {
        return Object;
      }
    }

    CFRelease(v17);
    return Object;
  }

  if (!v10)
  {
    return 0;
  }

  CGPDFSourceSetPosition(*(a1[2] + 8), v10);
  v11 = a1[2];

  return pdf_object_scanner_read_indirect_object(v11, a4);
}

void *xref_stream_get_entry(void *result, unint64_t a2, unsigned __int16 a3)
{
  if (result)
  {
    while (1)
    {
      v3 = result[1];
      if (a2 >= *v3 && a2 < v3[1] + *v3)
      {
        v4 = &v3[3 * (a2 - *v3)];
        if (*(v4 + 16) == a3)
        {
          break;
        }
      }

      result = *result;
      if (!result)
      {
        return result;
      }
    }

    return v4 + 2;
  }

  return result;
}

BOOL CGPDFXRefStreamGetEntry(uint64_t a1, unint64_t a2, unsigned __int16 a3, uint64_t a4)
{
  v7 = (a1 + 8);
  while (1)
  {
    v7 = *v7;
    if (!v7)
    {
      break;
    }

    entry = xref_stream_get_entry(*(v7[1] + 16), a2, a3);
    if (entry)
    {
      if ((*(entry + 18) & 2) != 0)
      {
        *a4 = 1;
        *(a4 + 8) = *entry;
        *(a4 + 16) = entry[1];
      }

      else
      {
        *a4 = 0;
        *(a4 + 8) = *entry;
      }

      *(a4 + 24) = *(entry + 18) & 1;
      *(a4 + 26) = *(entry + 8);
      return v7 != 0;
    }
  }

  return v7 != 0;
}

uint64_t CGPDFXRefStreamPrint(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = (a2 ? a2 : *MEMORY[0x1E69E9858]);
    v3 = *(result + 8);
    if (v3)
    {
      do
      {
        v11 = v3;
        v4 = v3[1];
        result = fprintf(v2, "xref stream %p:\n", v4);
        v5 = v4[2];
        if (v5)
        {
          v6 = 0;
          do
          {
            v7 = v5[1];
            fprintf(v2, "  Section %zu\n", v6);
            fprintf(v2, "    start = %ld\n", *v7);
            result = fprintf(v2, "    count = %ld\n", v7[1]);
            if (v7[1] >= 1)
            {
              v8 = 0;
              v9 = v7 + 34;
              do
              {
                if (*v9)
                {
                  v10 = "used";
                }

                else
                {
                  v10 = "free";
                }

                fprintf(v2, "    Entry %ld %hu (%s)\n", v8 + *v7, *(v9 - 1), v10);
                if ((*v9 & 2) != 0)
                {
                  result = fprintf(v2, "      Stream: %lu index: %ld\n");
                }

                else
                {
                  result = fprintf(v2, "      Offset: %lld\n");
                }

                ++v8;
                v9 += 24;
              }

              while (v8 < v7[1]);
            }

            ++v6;
            v5 = *v5;
          }

          while (v5);
        }

        v3 = *v11;
      }

      while (*v11);
    }
  }

  return result;
}

uint64_t PBPageLayoutPkg::PBTextLine::formatText(PBPageLayoutPkg::PBTextLine *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "bbox");
  }

  if ((*(this + 36) & 2) != 0)
  {
    PB::TextFormatter::format(a2, "rotation", *(this + 8));
  }

  v6 = *(this + 2);
  if (v6)
  {
    (*(*v6 + 32))(v6, a2, "textRange");
  }

  if (*(this + 36))
  {
    PB::TextFormatter::format(a2, "uniCharStart");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t PBPageLayoutPkg::PBTextLine::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 16);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  if (*(v3 + 36))
  {
    this = PB::Writer::writeVarInt(a2);
  }

  v5 = *(v3 + 8);
  if (v5)
  {
    this = PB::Writer::writeSubmessage(a2, v5);
  }

  if ((*(v3 + 36) & 2) != 0)
  {
    v6 = *(v3 + 32);

    return PB::Writer::write(a2, v6);
  }

  return this;
}

uint64_t PBPageLayoutPkg::PBTextLine::readFrom(PBPageLayoutPkg::PBTextLine *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  while (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v7 = *a2;
    if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
    {
      v15 = 0;
      v16 = 0;
      v10 = 0;
      v17 = (v7 + v2);
      v18 = v3 >= v2;
      v19 = v3 - v2;
      if (!v18)
      {
        v19 = 0;
      }

      v20 = v2 + 1;
      while (v19)
      {
        v21 = *v17;
        *(a2 + 1) = v20;
        v10 |= (v21 & 0x7F) << v15;
        if ((v21 & 0x80) == 0)
        {
          goto LABEL_19;
        }

        v15 += 7;
        ++v17;
        --v19;
        ++v20;
        v14 = v16++ > 8;
        if (v14)
        {
          goto LABEL_17;
        }
      }

      v4 = 1;
      *(a2 + 24) = 1;
      break;
    }

    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = (v7 + v2);
    v12 = v2 + 1;
    while (1)
    {
      *(a2 + 1) = v12;
      v13 = *v11++;
      v10 |= (v13 & 0x7F) << v8;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v8 += 7;
      ++v12;
      v14 = v9++ > 8;
      if (v14)
      {
        goto LABEL_17;
      }
    }

LABEL_19:
    if ((v10 & 7) == 4)
    {
      v4 = 0;
      break;
    }

    v22 = v10 >> 3;
    if ((v10 >> 3) > 2)
    {
      if (v22 == 3)
      {
        operator new();
      }

      if (v22 == 4)
      {
        *(this + 36) |= 2u;
        v32 = *(a2 + 1);
        if (v32 <= 0xFFFFFFFFFFFFFFFBLL && v32 + 4 <= *(a2 + 2))
        {
          *(this + 8) = *(*a2 + v32);
          *(a2 + 1) += 4;
        }

        else
        {
          *(a2 + 24) = 1;
        }

        goto LABEL_50;
      }
    }

    else
    {
      if (v22 == 1)
      {
        operator new();
      }

      if (v22 == 2)
      {
        *(this + 36) |= 1u;
        v24 = *(a2 + 1);
        v23 = *(a2 + 2);
        v25 = *a2;
        if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
        {
          v33 = 0;
          v34 = 0;
          v28 = 0;
          v35 = (v25 + v24);
          v18 = v23 >= v24;
          v36 = v23 - v24;
          if (!v18)
          {
            v36 = 0;
          }

          v37 = v24 + 1;
          while (1)
          {
            if (!v36)
            {
              v28 = 0;
              *(a2 + 24) = 1;
              goto LABEL_49;
            }

            v38 = *v35;
            *(a2 + 1) = v37;
            v28 |= (v38 & 0x7F) << v33;
            if ((v38 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            ++v35;
            --v36;
            ++v37;
            v14 = v34++ > 8;
            if (v14)
            {
LABEL_44:
              v28 = 0;
              goto LABEL_49;
            }
          }

          if (*(a2 + 24))
          {
            v28 = 0;
          }
        }

        else
        {
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v29 = (v25 + v24);
          v30 = v24 + 1;
          while (1)
          {
            *(a2 + 1) = v30;
            v31 = *v29++;
            v28 |= (v31 & 0x7F) << v26;
            if ((v31 & 0x80) == 0)
            {
              break;
            }

            v26 += 7;
            ++v30;
            v14 = v27++ > 8;
            if (v14)
            {
              goto LABEL_44;
            }
          }
        }

LABEL_49:
        *(this + 3) = v28;
        goto LABEL_50;
      }
    }

LABEL_17:
    if ((PB::Reader::skip(a2) & 1) == 0)
    {
      v40 = 0;
      return v40 & 1;
    }

LABEL_50:
    v2 = *(a2 + 1);
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v40 = v4 ^ 1;
  return v40 & 1;
}

void PBPageLayoutPkg::PBTextLine::~PBTextLine(PBPageLayoutPkg::PBTextLine *this)
{
  PBPageLayoutPkg::PBTextLine::~PBTextLine(this);

  JUMPOUT(0x1865EE610);
}

{
  *this = &unk_1EF239690;
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 1);
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  PB::Base::~Base(this);
}

char *CGPDFFontCreateWithObject(uint64_t a1)
{
  if (a1 && *(a1 + 8) == 8)
  {
    return CGPDFFontCreate(*(a1 + 32));
  }

  else
  {
    return 0;
  }
}

char *CGPDFFontCreate(CGPDFDictionary *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = CGPDFDictionaryCopyAssociation(a1, "Font");
  if (v2)
  {
    return v2;
  }

  if (CGPDFFontGetTypeID_onceToken != -1)
  {
    dispatch_once(&CGPDFFontGetTypeID_onceToken, &__block_literal_global_4095);
  }

  cftype = pdf_create_cftype(CGPDFFontGetTypeID_id, 312);
  v2 = cftype;
  if (!cftype)
  {
    return v2;
  }

  v12 = 0;
  *(cftype + 16) = a1;
  v14.__sig = 0;
  *v14.__opaque = 0;
  pthread_mutexattr_init(&v14);
  pthread_mutexattr_settype(&v14, 2);
  pthread_mutex_init((v2 + 136), &v14);
  pthread_mutexattr_destroy(&v14);
  font_subtype = get_font_subtype(a1);
  *(v2 + 50) = font_subtype;
  if (((1 << font_subtype) & 0x3C) == 0)
  {
    if (((1 << font_subtype) & 0xC2) != 0)
    {
      v2[24] = 1;
    }

    else
    {
      *(v2 + 50) = 2;
    }
  }

  if (CGPDFDictionaryGetName(a1, "BaseFont", &v12))
  {
    *(v2 + 4) = v12;
  }

  *(v2 + 10) = 0;
  v6 = *(v2 + 50);
  if (v6 == 4 || v6 == 2)
  {
    v7 = *(v2 + 4);
    if (!v7)
    {
LABEL_32:
      *(v2 + 7) = 0x3F50624DD2F1A9FCLL;
      *(v2 + 8) = 0;
      *(v2 + 9) = 0;
      *(v2 + 10) = 0x3F50624DD2F1A9FCLL;
      *(v2 + 11) = 0;
      *(v2 + 12) = 0;
      *(v2 + 104) = CGRectNull;
      return CGPDFDictionarySetAssociation(a1, v2, "Font");
    }

    base14_name = get_base14_name(v7);
    if (base14_name >= 15)
    {
      v9 = 0;
    }

    else
    {
      v9 = base14_name;
    }

    *(v2 + 10) = v9;
    v6 = *(v2 + 50);
  }

  if (v6 == 1)
  {
    value[0] = 0;
    v13 = 0;
    if (CGPDFDictionaryGetArray(*(v2 + 2), "DescendantFonts", value))
    {
      if (value[0] && *(value[0] + 3) - *(value[0] + 2) == 8)
      {
        if (!CGPDFArrayGetDictionary(value[0], 0, &v13))
        {
          pdf_error("invalid descendant font for Type0 font.", v12);
          goto LABEL_40;
        }

        if ((~get_font_subtype(v13) & 6) != 0)
        {
          pdf_error("invalid descendant font subtype for Type0 font.", v12);
          goto LABEL_40;
        }

        v10 = CGPDFFontCreate(v13);
        *(v2 + 6) = v10;
        if (v10)
        {
          v6 = *(v2 + 50);
          goto LABEL_27;
        }
      }

      else
      {
      }
    }

    else
    {
    }

LABEL_40:
    CFRelease(v2);
    return 0;
  }

LABEL_27:
  if (v6 != 5)
  {
    goto LABEL_32;
  }

  if (!CGPDFDictionaryGetNumbers(a1, "FontMatrix", value, 6))
  {
    goto LABEL_40;
  }

  v11 = v16;
  *(v2 + 56) = *value;
  *(v2 + 72) = v11;
  *(v2 + 88) = v17;
  if (!CGPDFDictionaryGetRect(a1, "FontBBox", v2 + 13))
  {
    goto LABEL_40;
  }

  if (*(v2 + 50) != 5)
  {
    return CGPDFDictionarySetAssociation(a1, v2, "Font");
  }

  return v2;
}

uint64_t get_font_subtype(CGPDFDictionary *a1)
{
  value = 0;
  if (CGPDFDictionaryGetName(a1, "Subtype", &value))
  {
    v1 = value;
    if (!strcmp(value, "Type1"))
    {
      return 2;
    }

    else if (!strcmp(v1, "MMType1"))
    {
      return 3;
    }

    else if (!strcmp(v1, "TrueType"))
    {
      return 4;
    }

    else if (!strcmp(v1, "Type3"))
    {
      return 5;
    }

    else if (!strcmp(v1, "Type0"))
    {
      return 1;
    }

    else if (!strcmp(v1, "CIDFontType0"))
    {
      return 6;
    }

    else if (!strcmp(v1, "CIDFontType2"))
    {
      return 7;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t __CGPDFFontGetTypeID_block_invoke()
{
  result = pdf_register_cftype(&CGPDFFontGetTypeID_class);
  CGPDFFontGetTypeID_id = result;
  return result;
}

void CGPDFFontFinalize(uint64_t a1)
{
  pthread_mutex_destroy((a1 + 136));
  CGPDFAdvancesRelease(*(a1 + 208));
  v2 = *(a1 + 224);
  if (v2)
  {
    CFRelease(v2);
  }

  CGPDFEncodingRelease(*(a1 + 216));
  v3 = *(a1 + 232);
  if (v3)
  {
    v4 = *(v3 + 24);
    if (v4)
    {
      CFRelease(v4);
    }

    free(*v3);
    free(*(v3 + 8));
    free(v3);
  }

  v5 = *(a1 + 240);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 248);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(a1 + 288);
  if (v8)
  {
    CFRelease(v8);
  }

  CGFontIndexMapRelease(*(a1 + 264));
  CGPDFFontMutatorRelease(*(a1 + 296));
  v9 = *(a1 + 272);

  free(v9);
}

void CGPDFFontRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

CFTypeRef CGPDFFontRetain(CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  return cf;
}

uint64_t CGPDFFontGetDictionary(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t CGPDFFontGetType(uint64_t result)
{
  if (result)
  {
    return *(result + 200);
  }

  return result;
}

uint64_t CGPDFFontGetName(uint64_t result)
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

uint64_t CGPDFFontIsBase14(uint64_t result, _DWORD *a2)
{
  if (result)
  {
    v2 = *(result + 40);
    if (v2)
    {
      if (a2)
      {
        *a2 = v2;
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

float64x2_t *CGPDFFontGetAdvances(float64x2_t *result)
{
  if (result)
  {
    v1 = result;
    while (LODWORD(v1[12].f64[1]) == 1)
    {
      v1 = *&v1[3].f64[0];
      if (!v1)
      {
        return 0;
      }
    }

    v2 = &v1[13];
    result = atomic_load_explicit(&v1[13], memory_order_acquire);
    if (!result)
    {
      result = CGPDFAdvancesCreate(v1);
      v3 = 0;
      atomic_compare_exchange_strong(v2, &v3, result);
      if (v3)
      {
        CGPDFAdvancesRelease(result);
        return v3;
      }
    }
  }

  return result;
}

__n128 CGPDFFontGetFontMatrix@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = (a1 + 56);
  if (!a1)
  {
    v2 = &CGAffineTransformIdentity;
  }

  v3 = *&v2->c;
  *a2 = *&v2->a;
  *(a2 + 16) = v3;
  result = *&v2->tx;
  *(a2 + 32) = result;
  return result;
}

CGFloat CGPDFFontGetFontBBox(uint64_t a1)
{
  if (!a1)
  {
    return INFINITY;
  }

  if (*(a1 + 200) == 5)
  {
    return *(a1 + 104);
  }

  FontDescriptor = CGPDFFontGetFontDescriptor(a1);
  v3 = &CGRectNull;
  if (FontDescriptor)
  {
    v3 = (FontDescriptor + 48);
  }

  return v3->origin.x;
}

unint64_t CGPDFFontGetFontDescriptor(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  while (*(v1 + 200) == 1)
  {
    v1 = *(v1 + 48);
    if (!v1)
    {
      return 0;
    }
  }

  explicit = atomic_load_explicit((v1 + 248), memory_order_acquire);
  if (!explicit)
  {
    if (CGPDFFontDescriptorGetTypeID_onceToken != -1)
    {
      dispatch_once(&CGPDFFontDescriptorGetTypeID_onceToken, &__block_literal_global_17373);
    }

    cftype = pdf_create_cftype(CGPDFFontDescriptorGetTypeID_id, 80);
    explicit = cftype;
    if (!cftype)
    {
      goto LABEL_21;
    }

    dict = 0;
    value = 0;
    *(cftype + 16) = v1;
    *(cftype + 24) = 0;
    if (CGPDFDictionaryGetDictionary(*(v1 + 16), "FontDescriptor", &dict))
    {
      if (!CGPDFDictionaryGetRect(dict, "FontBBox", (explicit + 48)))
      {
        *(explicit + 48) = CGRectNull;
      }

      *(explicit + 40) = 0;
      if (CGPDFDictionaryGetInteger(dict, "Flags", &value))
      {
        *(explicit + 40) = value;
      }

      *(explicit + 32) = dict;
      goto LABEL_21;
    }

    v4 = *(v1 + 40);
    if (v4)
    {
      if (v4 <= 0xE)
      {
        v5 = off_1E6E05260[v4 - 1];
        v6 = *(v5 + 24);
        *(explicit + 48) = *(v5 + 8);
        *(explicit + 64) = v6;
        *(explicit + 40) = *(v5 + 10);
        goto LABEL_21;
      }
    }

    else
    {
      CFRelease(explicit);
    }

    explicit = 0;
LABEL_21:
    v7 = 0;
    atomic_compare_exchange_strong((v1 + 248), &v7, explicit);
    if (v7)
    {
      if (explicit)
      {
        CFRelease(explicit);
      }

      return v7;
    }
  }

  return explicit;
}

uint64_t CGPDFFontCreateToUnicodeCMap(uint64_t result)
{
  if (result)
  {
    value = 0;
    if (CGPDFDictionaryGetObject(*(result + 16), "ToUnicode", &value))
    {
      return CGPDFCMapCreate(value);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CGPDFFontGetToUnicodeCMap(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  pthread_mutex_lock((a1 + 136));
  v2 = *(a1 + 240);
  if (!v2)
  {
    v2 = CGPDFFontCreateToUnicodeCMap(a1);
    *(a1 + 240) = v2;
  }

  pthread_mutex_unlock((a1 + 136));
  return v2;
}

_DWORD *CGPDFFontGetEncoding(_DWORD *result)
{
  if (result)
  {
    v1 = result;
    if (result[50] == 1)
    {
      return 0;
    }

    else
    {
      v2 = (result + 54);
      result = atomic_load_explicit(result + 27, memory_order_acquire);
      if (!result)
      {
        result = CGPDFEncodingCreate(v1);
        v3 = 0;
        atomic_compare_exchange_strong(v2, &v3, result);
        if (v3)
        {
          CGPDFEncodingRelease(result);
          return v3;
        }
      }
    }
  }

  return result;
}

uint64_t CGPDFFontGetDescendant(uint64_t result)
{
  if (result)
  {
    return *(result + 48);
  }

  return result;
}

void *CGPDFFontGetCIDSystemInfo(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  while (*(v1 + 200) == 1)
  {
    v1 = *(v1 + 48);
    if (!v1)
    {
      return 0;
    }
  }

  pthread_mutex_lock((v1 + 136));
  v2 = *(v1 + 232);
  if (!v2)
  {
    if ((*(v1 + 200) & 0xFFFFFFFE) == 6 && (value = 0, v15 = 0, dict = 0, v13 = 0, CGPDFDictionaryGetDictionary(*(v1 + 16), "CIDSystemInfo", &dict)) && CGPDFDictionaryGetString(dict, "Registry", &value) && CGPDFDictionaryGetString(dict, "Ordering", &v13) && CGPDFDictionaryGetInteger(dict, "Supplement", &v15))
    {
      v3 = 1;
      v2 = malloc_type_calloc(1uLL, 0x28uLL, 0x10300404E4CC20FuLL);
      __CFSetLastAllocationEventName();
      v4 = value;
      if (value)
      {
        if (*(value + 3))
        {
          decrypt_string(value);
        }

        v3 = *(v4 + 9) + 1;
      }

      v5 = malloc_type_malloc(v3, 0xF4BAD50EuLL);
      __CFSetLastAllocationEventName();
      *v2 = v5;
      v6 = value;
      if (*(value + 3))
      {
        decrypt_string(value);
      }

      strcpy(v5, v6 + 80);
      v7 = v13;
      if (v13)
      {
        if (*(v13 + 3))
        {
          decrypt_string(v13);
        }

        v8 = *(v7 + 9) + 1;
      }

      else
      {
        v8 = 1;
      }

      v10 = malloc_type_malloc(v8, 0x36A393E1uLL);
      __CFSetLastAllocationEventName();
      v2[1] = v10;
      v11 = v13;
      if (*(v13 + 3))
      {
        decrypt_string(v13);
      }

      strcpy(v10, v11 + 80);
      *(v2 + 4) = v15;
      *(v2 + 8) = 0;
    }

    else
    {
      v2 = 0;
    }

    *(v1 + 232) = v2;
  }

  pthread_mutex_unlock((v1 + 136));
  return v2;
}

unint64_t CGPDFFontGetCMap(unint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 200) == 1)
    {
      result = atomic_load_explicit((result + 224), memory_order_acquire);
      if (!result)
      {
        value = 0;
        Object = CGPDFDictionaryGetObject(*(v1 + 16), "Encoding", &value);
        result = 0;
        if (Object)
        {
          result = CGPDFCMapCreate(value);
          v3 = 0;
          atomic_compare_exchange_strong((v1 + 224), &v3, result);
          if (v3)
          {
            if (result)
            {
              CFRelease(result);
            }

            return v3;
          }
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

char *CGPDFFontGetROSUnicodeCMap(char *result)
{
  if (result)
  {
    while (1)
    {
      if (result[24] != 1)
      {
        return 0;
      }

      if (*(result + 50) != 1)
      {
        break;
      }

      result = *(result + 6);
      if (!result)
      {
        return result;
      }
    }

    result = CGPDFFontGetCIDSystemInfo(result);
    if (result)
    {
      v1 = result;
      result = *(result + 3);
      if (!result)
      {
        os_unfair_lock_lock(v1 + 8);
        if (v1[3])
        {
LABEL_11:
          os_unfair_lock_unlock(v1 + 8);
          return v1[3];
        }

        v2 = strlen(*v1);
        v3 = strlen(v1[1]);
        v4 = malloc_type_malloc(v2 + v3 + 35, 0x279DFCBBuLL);
        sprintf_l(v4, 0, "%s-%s-UCS2", *v1, v1[1]);
        v5 = CGPDFCMapCreateWithName(v4);
        v1[3] = v5;
        if (v5)
        {
          free(v4);
          goto LABEL_11;
        }

        free(v4);
        os_unfair_lock_unlock(v1 + 8);
        return 0;
      }
    }
  }

  return result;
}

uint64_t CGPDFFontGetCIDToGlyphMap(uint64_t result)
{
  if (result)
  {
    v1 = result;
    while (1)
    {
      if (*(v1 + 24) != 1)
      {
        return 0;
      }

      v2 = *(v1 + 200);
      if (v2 != 1)
      {
        break;
      }

      v1 = *(v1 + 48);
      if (!v1)
      {
        return 0;
      }
    }

    if (v2 != 7)
    {
      return 0;
    }

    result = *(v1 + 264);
    if (!result)
    {
      pthread_mutex_lock((v1 + 136));
      if (!*(v1 + 264) && (*(v1 + 256) & 1) == 0)
      {
        *(v1 + 264) = CGPDFCIDToGlyphMapCreate(v1);
        *(v1 + 256) = 1;
      }

      pthread_mutex_unlock((v1 + 136));
      return *(v1 + 264);
    }
  }

  return result;
}

BOOL CGPDFFontIsEmbedded(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  while (1)
  {
    v1 = *(a1 + 200);
    if (v1 != 1)
    {
      break;
    }

    a1 = *(a1 + 48);
    if (!a1)
    {
      return 0;
    }
  }

  v2 = 0;
  if (v1 <= 3)
  {
    if ((v1 - 2) < 2)
    {
      font_stream_20687 = get_font_stream_20687(a1, &v5);
      return font_stream_20687 != 0;
    }
  }

  else
  {
    switch(v1)
    {
      case 4:
        font_stream_20687 = get_font_stream(a1);
        return font_stream_20687 != 0;
      case 6:
        font_stream_20687 = get_font_stream_8586(a1, &v6);
        return font_stream_20687 != 0;
      case 7:
        font_stream_20687 = get_font_stream_20977(a1);
        return font_stream_20687 != 0;
    }
  }

  return v2;
}

uint64_t CGPDFFontGetFont(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  pthread_mutex_lock((a1 + 136));
  if ((*(a1 + 280) & 1) == 0)
  {
    load_font(a1);
  }

  v2 = *(a1 + 288);
  pthread_mutex_unlock((a1 + 136));
  return v2;
}

void load_font(uint64_t a1)
{
  if ((*(a1 + 280) & 1) == 0)
  {
    v2 = *(a1 + 200);
    if (v2 <= 4)
    {
      if ((v2 - 2) < 2)
      {
        goto LABEL_68;
      }

      if (v2 == 1)
      {
        v16 = *(a1 + 48);
        if (v16)
        {
          pthread_mutex_lock((v16 + 136));
          v17 = *(a1 + 48);
          if (!*(v17 + 240))
          {
            v18 = CGPDFFontCreateToUnicodeCMap(a1);
            v17 = *(a1 + 48);
            *(v17 + 240) = v18;
          }

          pthread_mutex_unlock((v17 + 136));
          v19 = *(a1 + 48);
        }

        else
        {
          v19 = 0;
        }

        Font = CGPDFFontGetFont(v19);
        if (!Font)
        {
          *(a1 + 288) = 0;
          goto LABEL_102;
        }

        v21 = Font;
        CFRetain(Font);
        *(a1 + 288) = v21;
        v22 = *(*(a1 + 48) + 240);
        if (!v22)
        {
          goto LABEL_102;
        }

        v23 = v21;
LABEL_101:
        CGFontSetProperty(v23, @"com.apple.CoreGraphics.CGPDFFontToUnicodeCMap", v22);
        goto LABEL_102;
      }

      if (v2 == 4)
      {
        font_stream = get_font_stream(a1);
        if (font_stream)
        {
          LODWORD(value) = 0;
          DataProvider = CGPDFStreamCreateDataProvider(font_stream, &value);
          v5 = DataProvider;
          if (DataProvider && !value)
          {
            v6 = CGDataProviderCopyData(DataProvider);
            v7 = CGFontCreateWithPDFFontDataAndZapfData(v6, 0);
            if (v7)
            {
              v8 = v7;
              CGFontSetIntProperty(v7, 1);
              CGFontSetProperty(v8, @"com.apple.CoreGraphics.CGPDFFontData", v6);
              CFRelease(v6);
              CGDataProviderRelease(v5);
              *(a1 + 288) = v8;
              goto LABEL_102;
            }

            if (v6)
            {
              CFRelease(v6);
            }
          }

          CGDataProviderRelease(v5);
        }

        TrueTypeOrCIDType2 = CGPDFFontFindTrueTypeOrCIDType2(a1);
        *(a1 + 288) = TrueTypeOrCIDType2;
        if (TrueTypeOrCIDType2)
        {
LABEL_102:
          if (*(a1 + 288))
          {
LABEL_141:
            *(a1 + 280) = 1;
            return;
          }

          if ((*(a1 + 200) - 2) > 2 || (v54 = malloc_type_calloc(1uLL, 0x1228uLL, 0x10600408B370AF9uLL), __CFSetLastAllocationEventName(), !v54))
          {
LABEL_113:
            *(a1 + 296) = 0;
            FontDescriptor = CGPDFFontGetFontDescriptor(a1);
            Style = CGPDFFontDescriptorGetStyle(FontDescriptor);
            if (Style)
            {
              v61 = Style;
              v62 = *(a1 + 32);
              if (v62 && !strcmp(v62, "LucidaConsole") || (*(v61 + 19) & 1) != 0)
              {
                if ((*(v61 + 17) & 1) != 0 || *v61 > 78.0)
                {
                  v64 = *(v61 + 16);
                  v65 = "Courier-Bold";
                  v66 = "Courier-BoldOblique";
                }

                else
                {
                  v64 = *(v61 + 16);
                  v65 = "Courier";
                  v66 = "Courier-Oblique";
                }
              }

              else if (*(v61 + 18) == 1)
              {
                if ((*(v61 + 17) & 1) != 0 || *v61 > 111.0)
                {
                  v64 = *(v61 + 16);
                  v65 = "Times-Bold";
                  v66 = "Times-BoldItalic";
                }

                else
                {
                  v64 = *(v61 + 16);
                  v65 = "Times-Roman";
                  v66 = "Times-Italic";
                }
              }

              else if ((*(v61 + 17) & 1) != 0 || *v61 > 114.0)
              {
                v64 = *(v61 + 16);
                v65 = "Helvetica-Bold";
                v66 = "Helvetica-BoldOblique";
              }

              else
              {
                v64 = *(v61 + 16);
                v65 = "Helvetica";
                v66 = "Helvetica-Oblique";
              }

              if (v64)
              {
                v67 = v66;
              }

              else
              {
                v67 = v65;
              }

              v63 = CGFontCreateWithName(v67);
              if (v63)
              {
                if (*(a1 + 200) == 4)
                {
                  v68 = "TrueType";
                }

                else
                {
                  v68 = "Type1";
                }
              }
            }

            else
            {
              v63 = 0;
            }

            *(a1 + 288) = v63;
            *(a1 + 304) = 1;
            goto LABEL_141;
          }

          *v54 = a1;
          v55 = CGPDFFontGetFontDescriptor(a1);
          v56 = CGPDFFontDescriptorGetStyle(v55);
          pthread_once(&choose_font_for_style_once, create_agars);
          if (v56)
          {
            if (*(v56 + 18) == 1)
            {
              v57 = agar_TimesLTMM;
              if (agar_TimesLTMM)
              {
                goto LABEL_108;
              }
            }

            else
            {
              v57 = agar_HelveticaLTMM;
              if (agar_HelveticaLTMM)
              {
LABEL_108:
                *(v54 + 3) = v57;
                *(v54 + 2) = *v56;
                *(v54 + 2) = *(v56 + 8) * -3.14159265 / 180.0;
                Encoding = CGPDFFontGetEncoding(*v54);
                if (CGPDFEncodingGetGlyphVectorWithFont(Encoding, *(*(v54 + 3) + 64), *(v56 + 20), v54 + 16))
                {
                  *(v54 + 1160) = 0;
                  *(a1 + 296) = v54;
                  goto LABEL_141;
                }

                goto LABEL_112;
              }
            }
          }

          *(v54 + 3) = 0;
LABEL_112:
          CGPDFFontMutatorRelease(v54);
          goto LABEL_113;
        }

LABEL_68:
        value = 0;
        v70 = 0;
        v69 = 0;
        font_stream_20687 = get_font_stream_20687(a1, &v69);
        if (font_stream_20687)
        {
          v35 = font_stream_20687;
          v36 = v69;
          if (v69 == 2)
          {
            v37 = *(font_stream_20687 + 6);
            if (CGPDFDictionaryGetInteger(v37, "Length1", &value) && CGPDFDictionaryGetInteger(v37, "Length2", &v70) && !(value >> 62) && !(v70 >> 62))
            {
              v38 = value + v70;
              v39 = malloc_type_malloc(value + v70 + 540, 0x371847FDuLL);
              __CFSetLastAllocationEventName();
              if (v39)
              {
                Data = CGPDFStreamGetData(v35, v39, v70 + value);
                if (Data == v70 + value)
                {
                  v41 = &v39[value + v70];
                  v42 = 16;
                  *&v43 = 0x3030303030303030;
                  *(&v43 + 1) = 0x3030303030303030;
                  do
                  {
                    *v41 = v43;
                    *(v41 + 16) = v43;
                    *(v41 + 32) = 10;
                    v41 += 33;
                    --v42;
                  }

                  while (v42);
                  *(v41 + 8) = 174813793;
                  *v41 = *"cleartomark\n";
                  v44 = CFDataCreateWithBytesNoCopy(0, v39, v38 + 540, *MEMORY[0x1E695E488]);
                  v45 = CGFontCreateWithPDFFontDataAndZapfData(v44, 0);
                  if (v45)
                  {
                    v46 = v45;
                    CGFontSetIntProperty(v45, 2);
                    CGFontSetProperty(v46, @"com.apple.CoreGraphics.CGPDFFontData", v44);
                    CFRelease(v44);
LABEL_99:
                    *(a1 + 288) = v46;
                    v53 = CGPDFFontCreateToUnicodeCMap(a1);
                    *(a1 + 240) = v53;
                    if (!v53)
                    {
                      goto LABEL_102;
                    }

                    v22 = v53;
                    v23 = *(a1 + 288);
                    goto LABEL_101;
                  }

                  if (v44)
                  {
                    CFRelease(v44);
                  }

                  if (!a1)
                  {
LABEL_98:
                    v46 = 0;
                    goto LABEL_99;
                  }
                }

                else
                {
                  free(v39);
                }
              }
            }
          }

          else
          {
            v71 = 0;
            v47 = CGPDFStreamCreateDataProvider(font_stream_20687, &v71);
            v48 = v47;
            if (v47 && !v71)
            {
              v49 = CGDataProviderCopyData(v47);
              v50 = CGFontCreateWithPDFFontDataAndZapfData(v49, 0);
              if (v50)
              {
                v46 = v50;
                CGFontSetIntProperty(v50, v36);
                CGFontSetProperty(v46, @"com.apple.CoreGraphics.CGPDFFontData", v49);
                CFRelease(v49);
                CGDataProviderRelease(v48);
                goto LABEL_99;
              }

              if (v49)
              {
                CFRelease(v49);
              }
            }

            CGDataProviderRelease(v48);
          }
        }

        v51 = *(a1 + 32);
        if (!v51)
        {
          goto LABEL_98;
        }

        value = 0;
        v46 = 0;
        if (!CGPDFFontNameHasAlias(v51, &value))
        {
          goto LABEL_99;
        }

        v46 = CGFontCreateWithName(value);
        if (v46)
        {
          *(a1 + 200) = 4;
          v52 = value;
          if (!strcmp(v51, value))
          {
LABEL_93:
            free(v52);
            goto LABEL_99;
          }
        }

        v52 = value;
        goto LABEL_93;
      }

LABEL_143:
      abort();
    }

    switch(v2)
    {
      case 5:
        goto LABEL_102;
      case 6:
        LODWORD(value) = 0;
        LODWORD(v70) = 0;
        font_stream_8586 = get_font_stream_8586(a1, &value);
        if (font_stream_8586)
        {
          v10 = CGPDFStreamCreateDataProvider(font_stream_8586, &v70);
          if (v10 && !v70)
          {
            v14 = CGPDFFontGetToUnicodeCMap(a1);
            if (v14)
            {
              ZapfTable = CGPDFCMapGetZapfTable(v14);
            }

            else
            {
              ZapfTable = 0;
            }

            v24 = CGDataProviderCopyData(v10);
            matched = CGFontCreateWithPDFFontDataAndZapfData(v24, ZapfTable);
            if (ZapfTable)
            {
              CFRelease(ZapfTable);
            }

            if (matched)
            {
              v26 = value;
              v27 = matched;
LABEL_57:
              CGFontSetIntProperty(v27, v26);
              CGFontSetProperty(matched, @"com.apple.CoreGraphics.CGPDFFontData", v24);
              CFRelease(v24);
              CGDataProviderRelease(v10);
LABEL_63:
              *(a1 + 288) = matched;
              goto LABEL_102;
            }

            if (v24)
            {
              CFRelease(v24);
            }
          }

          CGDataProviderRelease(v10);
        }

        v28 = *(a1 + 32);
        if (v28)
        {
          v29 = 0;
          while (v28[v29] - 91 >= 0xFFFFFFE6)
          {
            if (++v29 == 6)
            {
              v30 = 7;
              if (v28[6] != 43)
              {
                v30 = 0;
              }

              v28 += v30;
              break;
            }
          }

          v31 = CGFontCreateWithName(v28);
          if (v31)
          {
            matched = v31;
            v32 = (*(*(v31 + 2) + 152))(*(v31 + 14));
            if (strcmp(v32, ".PhoneFallback") && CGPDFFontHasMatchingROS(a1, matched))
            {
              goto LABEL_63;
            }

            CFRelease(matched);
          }
        }

        break;
      case 7:
        font_stream_20977 = get_font_stream_20977(a1);
        if (font_stream_20977)
        {
          LODWORD(value) = 0;
          v10 = CGPDFStreamCreateDataProvider(font_stream_20977, &value);
          if (v10 && !value)
          {
            v11 = CGPDFFontGetToUnicodeCMap(a1);
            if (v11)
            {
              v12 = CGPDFCMapGetZapfTable(v11);
            }

            else
            {
              v12 = 0;
            }

            v24 = CGDataProviderCopyData(v10);
            matched = CGFontCreateWithPDFFontDataAndZapfData(v24, v12);
            if (v12)
            {
              CFRelease(v12);
            }

            if (matched)
            {
              v27 = matched;
              v26 = 5;
              goto LABEL_57;
            }

            if (v24)
            {
              CFRelease(v24);
            }
          }

          CGDataProviderRelease(v10);
        }

        matched = CGPDFFontFindTrueTypeOrCIDType2(a1);
        if (matched)
        {
          goto LABEL_63;
        }

        break;
      default:
        goto LABEL_143;
    }

    matched = CGPDFFontMatchCID(a1);
    goto LABEL_63;
  }
}