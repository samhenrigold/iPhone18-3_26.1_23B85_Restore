void HullLibrary::BringOutYourDead(HullLibrary *this, const btVector3 *a2, int a3, btVector3 *a4, unsigned int *a5, unsigned int *a6, int a7)
{
  v14 = *(this + 9);
  if (v14 < 1)
  {
    v16 = 0;
  }

  else
  {
    v15 = 4 * v14;
    v16 = btAlignedAllocInternal(4 * v14, 16);
    bzero(v16, v15);
    if (*(this + 9) >= 1)
    {
      v17 = 0;
      v18 = *(this + 6);
      do
      {
        *(v16 + v17) = *(v18 + 4 * v17);
        ++v17;
      }

      while (v17 < *(this + 9));
    }
  }

  if (a3 < 1)
  {
    v19 = 0;
  }

  else
  {
    v19 = btAlignedAllocInternal(4 * a3, 16);
    bzero(v19, 4 * a3);
  }

  bzero(v19, 4 * a3);
  *a5 = 0;
  if (a7 < 1)
  {
    if (!v19)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v20 = 0;
    do
    {
      v21 = a6[v20];
      v22 = *(v19 + v21);
      if (v22)
      {
        a6[v20] = v22 - 1;
      }

      else
      {
        v23 = *a5;
        a6[v20] = v23;
        v24 = &a2[v21];
        v25 = &a4[v23];
        v25->var0.var0[0] = v24->var0.var0[0];
        v25->var0.var0[1] = v24->var0.var0[1];
        v25->var0.var0[2] = v24->var0.var0[2];
        v26 = *(this + 9);
        if (v26 >= 1)
        {
          for (i = 0; i < v26; ++i)
          {
            if (*(v16 + i) == v21)
            {
              *(*(this + 6) + 4 * i) = v23;
              v26 = *(this + 9);
            }
          }
        }

        v28 = v23 + 1;
        *a5 = v28;
        *(v19 + v21) = v28;
      }

      ++v20;
    }

    while (v20 != a7);
  }

  btAlignedFreeInternal(v19);
LABEL_24:
  if (v16)
  {

    btAlignedFreeInternal(v16);
  }
}

uint64_t HullLibrary::ReleaseResult(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 12))
  {
    *(a2 + 4) = 0;
    v3 = *(a2 + 24);
    if (v3 && *(a2 + 32) == 1)
    {
      btAlignedFreeInternal(v3);
    }

    *(a2 + 32) = 1;
    *(a2 + 24) = 0;
    *(a2 + 12) = 0;
    *(a2 + 16) = 0;
  }

  if (*(a2 + 52))
  {
    *(a2 + 44) = 0;
    v4 = *(a2 + 64);
    if (v4 && *(a2 + 72) == 1)
    {
      btAlignedFreeInternal(v4);
    }

    *(a2 + 72) = 1;
    *(a2 + 64) = 0;
    *(a2 + 52) = 0;
    *(a2 + 56) = 0;
  }

  return 0;
}

unint64_t btConvexHullInternal::Int128::operator*(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = *(a1 + 8);
  if (v3 >= 0)
  {
    v4 = *a1;
  }

  else
  {
    v4 = -*a1;
  }

  if (a2 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = -a2;
  }

  v6 = v3 ^ a2;
  result = btConvexHullInternal::Int128::mul(v4, v5);
  if (v6 < 0)
  {
    return -result;
  }

  return result;
}

unint64_t btConvexHullInternal::Int128::mul(uint64_t this, uint64_t a2)
{
  if (this >= 0)
  {
    v2 = this;
  }

  else
  {
    v2 = -this;
  }

  if (a2 >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = -a2;
  }

  if ((a2 ^ this) >= 0)
  {
    return v3 * v2 + (((HIDWORD(v3) * v2) + (v3 * HIDWORD(v2))) << 32);
  }

  else
  {
    return -(v3 * v2 + (((HIDWORD(v3) * v2) + (v3 * HIDWORD(v2))) << 32));
  }
}

uint64_t btConvexHullInternal::Rational64::compare(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = *(a2 + 16);
  result = (v3 - v4);
  if (v3 == v4)
  {
    if (v3)
    {
      v7 = btConvexHullInternal::Int128::mul(*a1, *(a2 + 8));
      v9 = v8;
      v10 = btConvexHullInternal::Int128::mul(*(a1 + 8), *a2);
      if (v7 >= v10)
      {
        v12 = v7 > v10;
      }

      else
      {
        v12 = -1;
      }

      if (v9 <= v11)
      {
        v13 = v12;
      }

      else
      {
        v13 = 1;
      }

      if (v9 >= v11)
      {
        v14 = v13;
      }

      else
      {
        v14 = -1;
      }

      return (v14 * v3);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t btConvexHullInternal::Rational128::compare(btConvexHullInternal::Rational128 *this, const btConvexHullInternal::Rational128 *a2, unint64_t a3)
{
  v5 = *(this + 8);
  v6 = *(a2 + 8);
  if (v5 != v6)
  {
    return (v5 - v6);
  }

  if (!v5)
  {
    return 0;
  }

  v19 = v3;
  v20 = v4;
  if (*(this + 36) == 1)
  {
    return -btConvexHullInternal::Rational128::compare(a2, *this * v5, a3);
  }

  btConvexHullInternal::DMul<btConvexHullInternal::Int128,unsigned long long>::mul(*this, *(this + 1), *(a2 + 2), *(a2 + 3), &v17, &v15);
  btConvexHullInternal::DMul<btConvexHullInternal::Int128,unsigned long long>::mul(*(this + 2), *(this + 3), *a2, *(a2 + 1), &v13, &v11);
  if (v16 < v12)
  {
    goto LABEL_8;
  }

  if (v16 > v12)
  {
LABEL_10:
    v10 = 1;
    return (*(this + 8) * v10);
  }

  if (v15 >= v11)
  {
    if (v15 > v11)
    {
      goto LABEL_10;
    }

    if (v18 >= v14)
    {
      if (v18 <= v14)
      {
        v10 = v17 > v13;
        if (v17 < v13)
        {
          v10 = -1;
        }

        return (*(this + 8) * v10);
      }

      goto LABEL_10;
    }
  }

LABEL_8:
  v10 = -1;
  return (*(this + 8) * v10);
}

uint64_t btConvexHullInternal::Rational128::compare(btConvexHullInternal::Rational128 *this, uint64_t a2, unint64_t a3)
{
  if (*(this + 36) == 1)
  {
    v4 = *this * *(this + 8);
    v5 = v4 <= a2;
    if (v4 >= a2)
    {
      v6 = 0;
    }

    else
    {
      v6 = -1;
    }

    if (v5)
    {
      return v6;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    if (a2 < 1)
    {
      v7 = *(this + 8);
      if ((a2 & 0x8000000000000000) == 0)
      {
        return v7;
      }

      if ((v7 & 0x80000000) == 0)
      {
        return 1;
      }

      a2 = -a2;
    }

    else
    {
      LODWORD(v7) = *(this + 8);
      if (v7 < 1)
      {
        return 0xFFFFFFFFLL;
      }
    }

    v8 = btConvexHullInternal::Int128::operator*(this + 16, a2, a3);
    v10 = *(this + 1);
    if (v10 >= v9)
    {
      if (v10 > v9)
      {
        v11 = 1;
      }

      else
      {
        v11 = *this > v8;
        if (*this < v8)
        {
          v11 = -1;
        }
      }
    }

    else
    {
      v11 = -1;
    }

    return (v7 * v11);
  }
}

unint64_t btConvexHullInternal::DMul<btConvexHullInternal::Int128,unsigned long long>::mul(btConvexHullInternal::Int128 *a1, btConvexHullInternal::Int128 *a2, uint64_t a3, uint64_t a4, unint64_t *a5, void *a6)
{
  v12 = btConvexHullInternal::Int128::mul(a1, a3);
  v14 = v13;
  v15 = btConvexHullInternal::Int128::mul(a1, a4);
  v17 = v16;
  v18 = btConvexHullInternal::Int128::mul(a2, a3);
  v20 = v19;
  result = btConvexHullInternal::Int128::mul(a2, a4);
  v23 = result + v17;
  v24 = __CFADD__(result, v17);
  v25 = __CFADD__(__CFADD__(v18, v15), v23);
  v26 = __CFADD__(v18, v15) + v23;
  v25 |= __CFADD__(v20, v26);
  v26 += v20;
  v27 = v24 + v25 + v22;
  v28 = v26 == -1;
  v29 = __CFADD__(v18 + v15, v14);
  if (__CFADD__(v18 + v15, v14))
  {
    ++v26;
  }

  *a5 = v12;
  a5[1] = v18 + v15 + v14;
  *a6 = v26;
  a6[1] = v27 + (v29 & v28);
  return result;
}

uint64_t btConvexHullInternal::newEdgePair(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  btConvexHullInternal::Pool<btConvexHullInternal::Edge>::newObject((a1 + 16));
  v7 = v6;
  btConvexHullInternal::Pool<btConvexHullInternal::Edge>::newObject((a1 + 16));
  v8 = a1[40];
  *(v7 + 40) = v8;
  *(v9 + 40) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = a3;
  *(v9 + 16) = v7;
  *(v9 + 24) = a2;
  *(v7 + 32) = 0;
  *(v9 + 32) = 0;
  v10 = a1[44];
  v11 = a1[45];
  a1[44] = v10 + 1;
  if (v10 >= v11)
  {
    a1[45] = v10 + 1;
  }

  return v7;
}

double btConvexHullInternal::Pool<btConvexHullInternal::Edge>::newObject(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      *(a1 + 8) = *(v3 + 16);
      v2 = *v3;
    }

    else
    {
      v3 = btAlignedAllocInternal(24, 16);
      v4 = *(a1 + 24);
      *(v3 + 8) = v4;
      *(v3 + 16) = 0;
      v2 = btAlignedAllocInternal(48 * v4, 16);
      *v3 = v2;
      *(v3 + 16) = *a1;
      *a1 = v3;
    }

    v5 = *(v3 + 8);
    if (v5 >= 1)
    {
      v6 = 0;
      v7 = vdupq_n_s64(v5 - 1);
      v8 = 0x100000000;
      v9 = (v2 + 48);
      do
      {
        v10 = vmovn_s64(vcgeq_u64(v7, vorrq_s8(vdupq_n_s64(v6), xmmword_21C27F640)));
        v11 = vadd_s32(v8, 0x100000001);
        if (v10.i8[0])
        {
          if (v11.i32[0] >= v5)
          {
            v12 = 0;
          }

          else
          {
            v12 = v9;
          }

          *(v9 - 6) = v12;
        }

        if (v10.i8[4])
        {
          v13 = v9 + 6;
          if (v11.i32[1] >= v5)
          {
            v13 = 0;
          }

          *v9 = v13;
        }

        v6 += 2;
        v8 = vadd_s32(v8, 0x200000002);
        v9 += 12;
      }

      while (((v5 + 1) & 0xFFFFFFFE) != v6);
    }
  }

  *(a1 + 16) = *v2;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *v2 = 0u;
  return result;
}

uint64_t btConvexHullInternal::mergeProjection(uint64_t a1, uint64_t *a2, uint64_t **a3, uint64_t ***a4, uint64_t **a5)
{
  v5 = a2[3];
  v6 = a3[2];
  if (*(v5 + 104) == v6[13])
  {
    v7 = v6[1];
    if (v7 == v6)
    {
      *a4 = v5;
      v67 = v6[2];
      result = 0;
      if (v67)
      {
        v6 = *(v67 + 24);
      }

      goto LABEL_77;
    }

    v8 = *v6;
    *v7 = *v6;
    *(v8 + 8) = v7;
    if (v6 == *a3)
    {
      v9 = *(v8 + 104);
      v10 = *(v7 + 104);
      v11 = v8;
      if (v9 >= v10)
      {
        if (v9 != v10 || (v11 = v8, *(v8 + 108) >= *(v7 + 108)))
        {
          v11 = v7;
        }
      }

      *a3 = v11;
    }

    if (v6 == a3[1])
    {
      v12 = *(v8 + 104);
      v13 = *(v7 + 104);
      if (v12 <= v13 && (v12 != v13 || *(v8 + 108) <= *(v7 + 108)))
      {
        v8 = v7;
      }

      a3[1] = v8;
    }
  }

  v14 = 0;
  v15 = 0;
  v17 = *a2;
  v16 = a2[1];
  v18 = 1;
  v20 = *a3;
  v19 = a3[1];
  v21 = v16;
  v22 = v19;
  v23 = 1;
  do
  {
    v24 = v23;
    v6 = v15;
    v25 = v14;
    v26 = *(v21 + 104);
    v27 = (*(v22 + 26) - v26) * v18;
    if (v27 < 1)
    {
      if (v27 < 0)
      {
        v51 = (v24 & 1) == 0;
LABEL_56:
        v52 = *(v22 + 27);
        v53 = v22[v51];
        v54 = v21;
        while (1)
        {
          v21 = v54;
          v55 = v27;
          v56 = *(v54 + 108);
          v57 = v52 - v56;
          if (v53 != v22)
          {
            v58 = *(v53 + 108) - v52;
            if (v58 >= 0)
            {
              v59 = *(v53 + 104);
              v60 = *(v22 + 26);
              if (v59 == v60 || (v61 = (v59 - v60) * v18, v61 < 0) && v58 * v55 <= v61 * v57)
              {
                v27 = (v59 - *(v21 + 104)) * v18;
                v22 = v22[v51];
                goto LABEL_56;
              }
            }
          }

          v54 = *(v21 + v51 * 8);
          if (v54 == v21)
          {
            break;
          }

          v62 = *(v54 + 104);
          v27 = (*(v22 + 26) - v62) * v18;
          if ((v27 & 0x80000000) == 0)
          {
            break;
          }

          v63 = *(v54 + 108) - v56;
          if (v63 < 1)
          {
            break;
          }

          v64 = *(v21 + 104);
          if (v62 != v64)
          {
            v65 = (v62 - v64) * v18;
            if ((v65 & 0x80000000) == 0 || v63 * v55 >= v65 * v57)
            {
              break;
            }
          }
        }

        v15 = v22;
        v14 = v21;
      }

      else
      {
        v44 = *(v21 + 108);
        if (v24)
        {
          v45 = 8;
        }

        else
        {
          v45 = 0;
        }

        v46 = v21;
        do
        {
          v14 = v46;
          v46 = *(v46 + v45);
          if (v46 == v21)
          {
            break;
          }

          if (*(v46 + 104) != v26)
          {
            break;
          }

          v47 = *(v46 + 108) <= v44;
          v44 = *(v46 + 108);
        }

        while (v47);
        v48 = *(v22 + 27);
        v49 = (v24 & 1) == 0;
        v50 = v22;
        do
        {
          v15 = v50;
          v50 = v50[v49];
          if (v50 == v22)
          {
            break;
          }

          if (*(v50 + 26) != v26)
          {
            break;
          }

          v47 = *(v50 + 27) < v48;
          v48 = *(v50 + 27);
        }

        while (!v47);
      }
    }

    else
    {
      v28 = (v24 & 1) != 0;
      v14 = v21;
      while (1)
      {
        v15 = v22;
        v29 = *(v22 + 27);
        v30 = v27;
        while (1)
        {
          v31 = *(v14 + 108);
          v32 = v29 - v31;
          v33 = *(v14 + v28 * 8);
          if (v33 == v14)
          {
            break;
          }

          v34 = *(v33 + 108);
          v35 = __OFSUB__(v34, v31);
          v36 = v34 - v31;
          if (!((v36 < 0) ^ v35 | (v36 == 0)))
          {
            break;
          }

          v37 = *(v33 + 104);
          v38 = *(v14 + 104);
          if (v37 != v38)
          {
            v39 = (v37 - v38) * v18;
            if ((v39 & 0x80000000) == 0 || v36 * v30 > v39 * v32)
            {
              break;
            }
          }

          v30 = (*(v15 + 26) - v37) * v18;
          v14 = *(v14 + v28 * 8);
        }

        v22 = v15[v28];
        if (v22 == v15)
        {
          break;
        }

        v40 = *(v22 + 26);
        v27 = (v40 - *(v14 + 104)) * v18;
        if (v27 < 1)
        {
          break;
        }

        v41 = *(v22 + 27) - v29;
        if ((v41 & 0x80000000) == 0)
        {
          break;
        }

        v42 = *(v15 + 26);
        if (v40 != v42)
        {
          v43 = (v40 - v42) * v18;
          if ((v43 & 0x80000000) == 0 || v41 * v30 >= v43 * v32)
          {
            break;
          }
        }
      }
    }

    v23 = 0;
    v18 = -1;
    v21 = *a2;
    v22 = *a3;
  }

  while ((v24 & 1) != 0);
  *(v14 + 8) = v15;
  *v15 = v14;
  *v25 = v6;
  v6[1] = v25;
  if (*(v20 + 104) < *(v17 + 104))
  {
    *a2 = v20;
  }

  if (*(v19 + 26) >= *(v16 + 104))
  {
    a2[1] = v19;
  }

  a2[3] = a3[3];
  *a4 = v25;
  result = 1;
LABEL_77:
  *a5 = v6;
  return result;
}

void btConvexHullInternal::computeInternal(uint64_t result, int a2, int a3, uint64_t a4)
{
  v5 = a3 - a2;
  if (a3 == a2)
  {
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  else if (v5 == 2)
  {
    v7 = *(*(result + 144) + 8 * a2);
    v8 = v7 + 128;
    v10 = *(v7 + 104);
    v9 = *(v7 + 108);
    v12 = *(v7 + 232);
    v11 = *(v7 + 236);
    if (v10 == v12 && v9 == v11)
    {
      v33 = *(v7 + 112);
      v34 = *(v7 + 240);
      v35 = v33 <= v34;
      if (v33 == v34)
      {
        goto LABEL_5;
      }

      v36 = v33 > v34;
      if (v35)
      {
        v22 = *(*(result + 144) + 8 * a2);
      }

      else
      {
        v22 = v7 + 128;
      }

      *(v7 + (v36 << 7)) = v7 + (v36 << 7);
      *(v22 + 8) = v22;
      if (!v35)
      {
        v8 = v7;
      }

      *a4 = v22;
      *(a4 + 8) = v22;
      v23 = v22;
      v7 = v22;
    }

    else
    {
      v14 = v10 == v12;
      if (v9 >= v11)
      {
        v14 = 0;
      }

      v17 = v10 < v12;
      v15 = v10 < v12;
      v16 = v17 || v14;
      v17 = v9 < v11;
      *v7 = v8;
      *(v7 + 8) = v8;
      *(v7 + 128) = v7;
      *(v7 + 136) = v7;
      v18 = v9 == v11 && v15;
      if (v17)
      {
        v18 = 1;
      }

      if (v16)
      {
        v19 = v7;
      }

      else
      {
        v19 = v7 + 128;
      }

      if (v16)
      {
        v20 = v7 + 128;
      }

      else
      {
        v20 = v7;
      }

      *a4 = v19;
      *(a4 + 8) = v20;
      v21 = v18 == 0;
      if (v18)
      {
        v22 = v7;
      }

      else
      {
        v22 = v7 + 128;
      }

      if (v21)
      {
        v23 = v7;
      }

      else
      {
        v23 = v7 + 128;
      }
    }

    *(a4 + 16) = v22;
    *(a4 + 24) = v23;
    v37 = btConvexHullInternal::newEdgePair(result, v7, v8);
    *v37 = v37;
    v37[1] = v37;
    *(v7 + 16) = v37;
    v38 = v37[2];
    *v38 = v38;
    v38[1] = v38;
    *(v8 + 16) = v38;
  }

  else
  {
    if (v5 == 1)
    {
      v7 = *(*(result + 144) + 8 * a2);
LABEL_5:
      *(v7 + 8) = v7;
      *(v7 + 16) = 0;
      *v7 = v7;
      *a4 = v7;
      *(a4 + 8) = v7;
      *(a4 + 16) = v7;
      *(a4 + 24) = v7;
      return;
    }

    v25 = ((v5 + (v5 >> 31)) >> 1) + a2;
    LODWORD(v26) = v25;
    if (v5 / 2 + a2 < a3)
    {
      v27 = *(result + 144);
      v28 = *(v27 + 8 * v25 - 8);
      v29 = v28[26];
      v30 = v28[27];
      v31 = v28[28];
      v26 = v25;
      while (1)
      {
        v32 = *(v27 + 8 * v26);
        if (v32[26] != v29 || v32[27] != v30 || v32[28] != v31)
        {
          break;
        }

        if (++v26 >= a3)
        {
          LODWORD(v26) = a3;
          break;
        }
      }
    }

    btConvexHullInternal::computeInternal(result, a2, v25, a4);
    memset(v39, 0, sizeof(v39));
    btConvexHullInternal::computeInternal(result, v26, a3, v39);
    btConvexHullInternal::merge(result, a4, v39);
  }
}

void btConvexHullInternal::merge(_DWORD *result, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 8))
  {
    return;
  }

  if (!*(a2 + 8))
  {
    v32 = *(a3 + 16);
    *a2 = *a3;
    *(a2 + 16) = v32;
    return;
  }

  --result[40];
  v127 = 0;
  v128 = 0;
  if (btConvexHullInternal::mergeProjection(result, a2, a3, &v128, &v127))
  {
    v4 = v127;
    v96 = *(v127 + 26);
    v5 = v96;
    v7 = *(v128 + 26);
    v6 = *(v128 + 27);
    v8 = v96 - v7;
    v111 = *(v127 + 27);
    v9 = v111;
    v10 = v111 - v6;
    v94 = *(v127 + 28);
    v11 = *(v128 + 28);
    v12 = v94 - v11;
    v13 = v7 - v96;
    v14 = v8 * v12;
    v123 = (v96 - v7) | (v10 << 32);
    v124 = v12 | 0xFFFFFFFF00000000;
    v15 = v10 * v12;
    v16 = -(v8 * v8) - v10 * v10;
    v101 = v128;
    v17 = v128[2];
    v118 = 0;
    v18 = &xmmword_21C2A4000;
    v106 = v14;
    if (v17)
    {
      v99 = v127;
      v19 = 0;
      v20 = v17;
      v103 = v6;
      do
      {
        v21 = v20[3];
        v22 = v21[26] - v7;
        v23 = v21[27] - v6;
        if (!(v23 * v13 + v10 * v22) && v22 * v14 + v15 * v23 + v16 * (v21[28] - v11) >= 1)
        {
          if (!v19 || (v121 = xmmword_21C2A4790, v24 = v10, v25 = v13, v26 = v19, v27 = v16, v28 = v15, v29 = v11, Orientation = btConvexHullInternal::getOrientation(v19, v20, &v123, &v121), v19 = v26, v13 = v25, v10 = v24, v11 = v29, v15 = v28, v16 = v27, v14 = v106, v9 = v111, v5 = v96, v83 = Orientation == 1, v6 = v103, v83))
          {
            v19 = v20;
          }
        }

        v20 = *v20;
      }

      while (v20 != v17);
      v118 = v19;
      v31 = v19 != 0;
      v4 = v99;
      v18 = &xmmword_21C2A4000;
    }

    else
    {
      v31 = 0;
    }

    v36 = v4[2];
    v115 = 0;
    if (v36)
    {
      v37 = v4;
      v38 = 0;
      v104 = v18[121];
      v39 = v36;
      do
      {
        v40 = v39[3];
        v41 = v40[26] - v5;
        v42 = v40[27] - v9;
        if (!(v42 * v13 + v10 * v41) && v41 * v14 + v15 * v42 + v16 * (v40[28] - v94) >= 1)
        {
          if (!v38 || (v121 = v104, v43 = btConvexHullInternal::getOrientation(v38, v39, &v123, &v121), v14 = v106, v9 = v111, v5 = v96, v43 == 2))
          {
            v38 = v39;
          }
        }

        v39 = *v39;
      }

      while (v39 != v36);
      v115 = v38;
      v44 = v38 != 0;
      v4 = v37;
    }

    else
    {
      v44 = 0;
    }

    v33 = v101;
    v35 = v96;
    if (!v31 && !v44)
    {
      goto LABEL_32;
    }

    btConvexHullInternal::findEdgeForCoplanarFaces(result, v101, v4, &v118, &v115, 0, 0);
    if (v118)
    {
      v33 = v118[3];
      v128 = v33;
    }

    if (v115)
    {
      v4 = v115[3];
      v127 = v4;
      v35 = *(v4 + 26);
      v111 = *(v4 + 27);
      v45 = *(v4 + 28);
    }

    else
    {
LABEL_32:
      v45 = v94;
    }

    v34 = (v45 + 1);
  }

  else
  {
    v4 = v127;
    v33 = v128;
    v111 = *(v127 + 27);
    v34 = *(v127 + 28);
    v35 = (*(v127 + 26) + 1);
  }

  v107 = 0;
  v108 = 0;
  v95 = 0;
  v97 = 0;
  v109 = 0;
  v110 = 0;
  v102 = v33;
  v105 = 0;
  v98 = 0;
  v46 = 1;
  v47 = v33;
  v100 = v4;
  v48 = v4;
  while (1)
  {
    v49 = *(v47 + 26);
    v50 = *(v47 + 27);
    v51 = *(v48 + 26) - v49;
    v52 = *(v48 + 27) - v50;
    v53 = *(v47 + 28);
    v54 = *(v48 + 28) - v53;
    v55 = v35;
    LODWORD(v49) = v35 - v49;
    LODWORD(v50) = v111 - v50;
    v56 = v34;
    LODWORD(v53) = v34 - v53;
    v126[0] = v51 | (v52 << 32);
    v126[1] = v54 | 0xFFFFFFFF00000000;
    v123 = v54 * v50 - v52 * v53;
    v124 = v51 * v53 - v54 * v49;
    v125 = v52 * v49 - v51 * v50;
    *&v121 = v125 * v52 - v124 * v54;
    *(&v121 + 1) = v123 * v54 - v125 * v51;
    v122 = v124 * v51 - v123 * v52;
    v118 = 0;
    v119 = 0;
    v120 = 0;
    MaxAngle = btConvexHullInternal::findMaxAngle(result, 0, v47, v126, &v123, &v121, &v118);
    v115 = 0;
    v116 = 0;
    v117 = 0;
    v58 = btConvexHullInternal::findMaxAngle(result, 1, v48, v126, &v123, &v121, &v115);
    if (!(MaxAngle | v58))
    {
      v84 = btConvexHullInternal::newEdgePair(result, v47, v48);
      *v84 = v84;
      v84[1] = v84;
      v47[2] = v84;
      v85 = v84[2];
      *v85 = v85;
      v85[1] = v85;
      v48[2] = v85;
      return;
    }

    v59 = v58;
    if (MaxAngle)
    {
      v60 = -1;
    }

    else
    {
      v60 = 1;
    }

    if (MaxAngle && v58)
    {
      v60 = btConvexHullInternal::Rational64::compare(&v118, &v115);
    }

    if ((v46 & 1) == 0)
    {
      if (v60 < 0)
      {
        if (v120 < 0 && !v119)
        {
          v114 = MaxAngle;
          v63 = v105;
          v35 = v55;
          v65 = v107;
          v62 = v109;
          v73 = v110;
          goto LABEL_70;
        }
      }

      else if (v117 < 0 && !v116)
      {
        v64 = v108;
        v62 = v109;
        v63 = v105;
        v65 = v107;
        goto LABEL_48;
      }
    }

    v61 = btConvexHullInternal::newEdgePair(result, v47, v48);
    v62 = v61;
    v63 = v61;
    if (v109)
    {
      v109[1] = v61;
      v63 = v105;
    }

    *v61 = v109;
    v64 = v61[2];
    v65 = v64;
    if (v108)
    {
      *v108 = v64;
      v65 = v107;
    }

    v64[1] = v108;
LABEL_48:
    v113 = v59;
    v114 = MaxAngle;
    v66 = v59;
    if (v60)
    {
      if (v60 < 0)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v67 = v65;
      v68 = v63;
      btConvexHullInternal::findEdgeForCoplanarFaces(result, v128, v127, &v114, &v113, 0, 0);
      v63 = v68;
      v65 = v67;
      v66 = v113;
    }

    if (v66)
    {
      v69 = v110;
      if (v110)
      {
        v112 = v63;
        v70 = v65;
        v71 = *v110;
        if (*v110 != v59)
        {
          do
          {
            v72 = *v71;
            btConvexHullInternal::removeEdgePair(result, v71);
            v71 = v72;
          }

          while (v72 != v59);
        }

        v65 = v70;
        v63 = v112;
        if (!v64)
        {
          goto LABEL_69;
        }

LABEL_68:
        *v69 = v65;
        v65[1] = v69;
        v65 = 0;
        *v64 = v59;
        *(v59 + 8) = v64;
        v66 = v113;
      }

      else
      {
        if (v64)
        {
          v69 = *(v59 + 8);
          v95 = v65;
          goto LABEL_68;
        }

        v95 = v59;
      }

LABEL_69:
      v108 = 0;
      v35 = *(v127 + 26);
      v111 = *(v127 + 27);
      v56 = *(v127 + 28);
      v73 = *(v66 + 16);
      v127 = *(v66 + 24);
      goto LABEL_70;
    }

LABEL_62:
    v108 = v64;
    v35 = v55;
    v73 = v110;
LABEL_70:
    if (v60 > 0 || (v74 = v114) == 0)
    {
      v47 = v128;
      v81 = v100;
      v80 = v102;
      v34 = v56;
      goto LABEL_84;
    }

    if (v98)
    {
      v75 = v63;
      v76 = v65;
      v78 = (v98 + 2);
      v77 = *(v98 + 1);
      if (v77 != MaxAngle)
      {
        do
        {
          v79 = v77[1];
          btConvexHullInternal::removeEdgePair(result, v77);
          v77 = v79;
        }

        while (v79 != MaxAngle);
      }

      if (!v62)
      {
        v80 = v102;
        v65 = v76;
        v63 = v75;
        goto LABEL_83;
      }

      v63 = v75;
      *v75 = v98;
      v80 = v102;
      v65 = v76;
    }

    else
    {
      if (!v62)
      {
        v97 = MaxAngle;
        v80 = v102;
        goto LABEL_83;
      }

      v82 = *MaxAngle;
      *v63 = *MaxAngle;
      v78 = (v82 + 2);
      v97 = v63;
      v80 = v102;
    }

    *v78 = v63;
    *MaxAngle = v62;
    v62[1] = MaxAngle;
    v74 = v114;
    v63 = 0;
LABEL_83:
    v62 = 0;
    v35 = *(v128 + 26);
    v111 = *(v128 + 27);
    v34 = *(v128 + 28);
    v47 = v74[3];
    v98 = v74[2];
    v128 = v47;
    v81 = v100;
LABEL_84:
    v48 = v127;
    v83 = v47 == v80 && v127 == v81;
    if (v83)
    {
      break;
    }

    v109 = v62;
    v110 = v73;
    v107 = v65;
    v46 = 0;
    v105 = v63;
  }

  if (!v98)
  {
    *v63 = v62;
    v62[1] = v63;
    v128[2] = v62;
    if (v73)
    {
      goto LABEL_97;
    }

    goto LABEL_102;
  }

  v86 = v63;
  v87 = v65;
  v88 = *(v98 + 1);
  if (v88 != v97)
  {
    do
    {
      v89 = v88[1];
      btConvexHullInternal::removeEdgePair(result, v88);
      v88 = v89;
    }

    while (v89 != v97);
  }

  v65 = v87;
  if (v62)
  {
    *v86 = v98;
    *(v98 + 1) = v86;
    *v97 = v62;
    v62[1] = v97;
  }

  if (!v73)
  {
LABEL_102:
    *v108 = v65;
    v65[1] = v108;
    v127[2] = v108;
    return;
  }

LABEL_97:
  v90 = v65;
  v91 = v73;
  v92 = *v73;
  if (*v73 != v95)
  {
    do
    {
      v93 = *v92;
      btConvexHullInternal::removeEdgePair(result, v92);
      v92 = v93;
    }

    while (v93 != v95);
  }

  if (v108)
  {
    *v91 = v90;
    v90[1] = v91;
    *v108 = v95;
    v95[1] = v108;
  }
}

uint64_t btConvexHullInternal::getOrientation(void *a1, uint64_t a2, _DWORD *a3, _DWORD *a4)
{
  v4 = a1[1];
  if (*a1 != a2)
  {
    return v4 == a2;
  }

  if (v4 != a2)
  {
    return 2;
  }

  v7 = a3[1];
  v6 = a3[2];
  v8 = a4[1];
  v9 = a4[2];
  v10 = v6 * v8 - v7 * v9;
  v11 = *a3 * v9 - *a4 * v6;
  v12 = *a4 * v7 - *a3 * v8;
  v13 = a1[3];
  v14 = *(a2 + 24);
  v15 = *(*(a2 + 16) + 24);
  v16 = v15[26];
  v17 = v15[27];
  LODWORD(v15) = v15[28];
  if (((v14[28] - v15) * (v13[27] - v17) - (v14[27] - v17) * (v13[28] - v15)) * v10 + ((v14[27] - v17) * (v13[26] - v16) - (v14[26] - v16) * (v13[27] - v17)) * v12 + ((v14[26] - v16) * (v13[28] - v15) - (v14[28] - v15) * (v13[26] - v16)) * v11 <= 0)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

void *btConvexHullInternal::findMaxAngle(uint64_t a1, int a2, uint64_t a3, _DWORD *a4, void *a5, void *a6, uint64_t a7)
{
  v7 = *(a3 + 16);
  if (v7)
  {
    v15 = 0;
    v16 = *(a3 + 16);
    while (*(v16 + 40) <= *(a1 + 160))
    {
LABEL_19:
      v16 = *v16;
      if (v16 == v7)
      {
        return v15;
      }
    }

    v17 = *(v16 + 24);
    v18 = v17[26] - *(a3 + 104);
    v19 = v17[27] - *(a3 + 108);
    v20 = v17[28] - *(a3 + 112);
    v29[0] = v18 | (v19 << 32);
    v29[1] = v20 | 0xFFFFFFFF00000000;
    v21 = *a6 * v18 + a6[1] * v19 + a6[2] * v20;
    if (v21 < 1)
    {
      if (v21 < 0)
      {
        v22 = 0;
        v28 = -1;
        v21 = -v21;
        v23 = 1;
      }

      else
      {
        v21 = 0;
        v23 = 0;
        v28 = 0;
        v22 = 1;
      }
    }

    else
    {
      v22 = 0;
      v28 = 1;
      v23 = -1;
    }

    v24 = *a5 * v18 + a5[1] * v19 + a5[2] * v20;
    *&v27 = v21;
    if (v24 <= 0)
    {
      if ((v24 & 0x8000000000000000) == 0)
      {
        *(&v27 + 1) = 0;
        if (v22)
        {
LABEL_18:
          v7 = *(a3 + 16);
          goto LABEL_19;
        }

LABEL_11:
        if (!v15 || (v25 = btConvexHullInternal::Rational64::compare(&v27, a7), v25 < 0))
        {
          *a7 = v27;
          *(a7 + 16) = v28;
          v15 = v16;
        }

        else if (!v25 && (btConvexHullInternal::getOrientation(v15, v16, a4, v29) != 2) != a2)
        {
          v15 = v16;
        }

        goto LABEL_18;
      }

      v28 = v23;
      v24 = -v24;
    }

    *(&v27 + 1) = v24;
    goto LABEL_11;
  }

  return 0;
}

uint64_t btConvexHullInternal::findEdgeForCoplanarFaces(uint64_t a1, unsigned int *a2, unsigned int *a3, unsigned int ***a4, uint64_t *a5, unsigned int *a6, unsigned int *a7)
{
  v9 = *a5;
  v10 = a2;
  if (*a4)
  {
    v10 = (*a4)[3];
  }

  v148 = *a4;
  v11 = v10[26];
  v12 = v10[27];
  v13 = v10[28];
  v14 = a3;
  if (v9)
  {
    v14 = *(v9 + 24);
  }

  v15 = v14[26];
  v16 = v14[27];
  v17 = v14[28];
  v18 = a2[26];
  v19 = a2[27];
  v20 = a3[26] - v18;
  v21 = a3[27] - v19;
  v22 = a2[28];
  v23 = a3[28] - v22;
  if (v148)
  {
    v24 = v148;
  }

  else
  {
    v24 = v9;
  }

  v25 = *(v24 + 24);
  v26 = v25[26] - v18;
  v27 = v25[27] - v19;
  LODWORD(v25) = v25[28] - v22;
  v28 = v27 * v23 - v25 * v21;
  v29 = v25 * v20 - v26 * v23;
  result = (v26 * v21 - v27 * v20);
  v31 = result;
  v32 = v22 * result + v18 * v28 + v19 * v29;
  v33 = result * v21 - v29 * v23;
  v34 = v28 * v23 - result * v20;
  v35 = v29 * v20 - v28 * v21;
  v36 = v33 * v11 + v34 * v12 + v35 * v13;
  v157 = v35;
  v147 = a5;
  if (!v148 || v148[3] == a6)
  {
    v42 = v9;
  }

  else
  {
    v37 = *(v148[2] + 1);
    v39 = *(v37 + 24);
    v38 = (v37 + 24);
    v40 = v39[26];
    v41 = v39[27];
    result = v39[28];
    if (v40 * v28 + v41 * v29 + result * v31 >= v32)
    {
      v94 = *(a1 + 160);
      do
      {
        v95 = v33 * v40 + v34 * v41 + v35 * result;
        if (*(v37 + 40) == v94 || v95 <= v36)
        {
          break;
        }

        v36 = v95;
        *a4 = v37;
        v97 = *v38;
        v11 = v97[26];
        v12 = v97[27];
        v13 = v97[28];
        if (v97 == a6)
        {
          break;
        }

        v37 = *(*(v37 + 16) + 8);
        v38 = (v37 + 24);
        v98 = *(v37 + 24);
        v40 = v98[26];
        v41 = v98[27];
        result = v98[28];
      }

      while (v40 * v28 + v41 * v29 + result * v31 >= v32);
    }

    v42 = *a5;
    v35 = v29 * v20 - v28 * v21;
  }

  v43 = v33 * v15 + v34 * v16 + v35 * v17;
  if (v42)
  {
    if (*(v42 + 24) == a7 || (v44 = **(v42 + 16), v46 = *(v44 + 24), v45 = (v44 + 24), v47 = v46[26], v48 = v46[27], result = v47 * v28 + v48 * v29, v49 = v46[28], result + v49 * v31 < v32))
    {
LABEL_16:
      v50 = v42;
    }

    else
    {
      v99 = *(a1 + 160);
      do
      {
        v50 = v42;
        v42 = v44;
        if (*(v44 + 40) == v99 || v33 * v47 + v34 * v48 + v35 * v49 <= v43)
        {
          break;
        }

        v43 = v33 * v47 + v34 * v48 + v35 * v49;
        *v147 = v44;
        v101 = *v45;
        v15 = v101[26];
        v16 = v101[27];
        v17 = v101[28];
        if (v101 == a7)
        {
          goto LABEL_16;
        }

        v44 = **(v44 + 16);
        v102 = **(v42 + 16);
        v103 = *(v102 + 24);
        v45 = (v102 + 24);
        v47 = v103[26];
        v48 = v103[27];
        v49 = v103[28];
        result = v47 * v28 + v48 * v29 + v49 * v31;
        v50 = v42;
      }

      while (result >= v32);
    }
  }

  else
  {
    v50 = 0;
  }

  v51 = v43 - v36;
  v153 = v21;
  v154 = v20;
  v151 = v33;
  v152 = v23;
  v145 = v29;
  v146 = v28;
  v144 = v31;
  v150 = v34;
  if (v43 - v36 < 1)
  {
    if ((v51 & 0x8000000000000000) == 0)
    {
      return result;
    }

    v104 = v15;
    v105 = v17;
    v106 = v16;
    v107 = v43 - v36;
    v143 = v9;
LABEL_97:
    v159 = v105;
    v161 = v104;
    v156 = v106;
    while (1)
    {
      v108 = (v104 - v11) * v20 + (v106 - v12) * v21 + (v105 - v13) * v23;
      if (v50)
      {
        if (*(v50 + 24) != a7)
        {
          v109 = *(*(v50 + 8) + 16);
          if (*(v109 + 40) > *(a1 + 160))
          {
            v110 = *(v109 + 24);
            v111 = v110[26];
            v112 = v110[27];
            v113 = v110[28];
            v114 = v33 * (v111 - v104) + v34 * (v112 - v106) + v35 * (v113 - v105);
            v115 = (v111 - v104) * v20 + (v112 - v106) * v21 + (v113 - v105) * v23;
            if (v114)
            {
              if (v114 < 0)
              {
                v116 = v115 <= 0;
                if ((v115 & 0x80000000) != 0)
                {
                  v117 = -v115;
                }

                else
                {
                  v117 = 0;
                }

                v118 = (v115 >> 31) & 1;
                if (v115 <= 0)
                {
                  v115 = v117;
                }

                if (v116)
                {
                  v119 = v118;
                }

                else
                {
                  v119 = -1;
                }

                v170 = v119;
                v168 = v115;
                v169 = -v114;
                v149 = (v104 - v11) * v20 + (v106 - v12) * v21 + (v105 - v13) * v23;
                if (v108 < 1)
                {
                  v122 = v107;
                  if ((v108 & 0x80000000) != 0)
                  {
                    v167 = -1;
                    v121 = -v108;
                    v120 = 1;
                  }

                  else
                  {
                    v121 = 0;
                    v120 = 0;
                    v167 = 0;
                  }
                }

                else
                {
                  v167 = 1;
                  v120 = -1;
                  v121 = (v104 - v11) * v20 + (v106 - v12) * v21 + (v105 - v13) * v23;
                  v122 = v107;
                }

                v123 = v50;
                v165 = v121;
                v124 = v122;
                if (v122 <= 0)
                {
                  if (v122 < 0)
                  {
                    v167 = v120;
                    v124 = -v122;
                  }

                  else
                  {
                    v124 = 0;
                  }
                }

                v166 = v124;
                result = btConvexHullInternal::Rational64::compare(&v168, &v165);
                LODWORD(v21) = v153;
                LODWORD(v20) = v154;
                v33 = v151;
                LODWORD(v23) = v152;
                v35 = v157;
                v105 = v159;
                v104 = v161;
                v106 = v156;
                v50 = v123;
                v108 = v149;
                v34 = v150;
                if (result < 1)
                {
LABEL_151:
                  v107 = v33 * (v111 - v11) + v34 * (v112 - v12) + v35 * (v113 - v13);
                  if (v50 == v143)
                  {
                    v50 = 0;
                  }

                  else
                  {
                    v50 = v109;
                  }

                  *v147 = v50;
                  v104 = v111;
                  v106 = v112;
                  v105 = v113;
                  goto LABEL_97;
                }
              }
            }

            else if (v115 > 0)
            {
              goto LABEL_151;
            }
          }
        }
      }

      v125 = *a4;
      if (!*a4)
      {
        return result;
      }

      if (v125[3] == a6)
      {
        return result;
      }

      v126 = *(v125[2] + 1);
      if (*(v126 + 40) <= *(a1 + 160))
      {
        return result;
      }

      v127 = *(v126 + 24);
      v128 = v127[26];
      v129 = v127[27];
      v130 = v128 - v11;
      v131 = v129 - v12;
      v132 = v127[28];
      if (v146 * (v128 - v11) + v145 * (v129 - v12) + v144 * (v132 - v13))
      {
        return result;
      }

      v133 = v33 * (v104 - v128) + v34 * (v106 - v129) + v35 * (v105 - v132);
      if ((v133 & 0x8000000000000000) == 0)
      {
        return result;
      }

      v134 = v33 * v130 + v34 * v131 + v35 * (v132 - v13);
      v135 = v130 * v20 + v131 * v21 + (v132 - v13) * v23;
      if (v134)
      {
        if ((v134 & 0x8000000000000000) == 0)
        {
          return result;
        }

        v136 = v135 <= 0;
        if ((v135 & 0x80000000) != 0)
        {
          v137 = -v135;
        }

        else
        {
          v137 = 0;
        }

        v138 = (v135 >> 31) & 1;
        if (v135 <= 0)
        {
          v135 = v137;
        }

        if (v136)
        {
          v139 = v138;
        }

        else
        {
          v139 = -1;
        }

        v170 = v139;
        v168 = v135;
        v169 = -v134;
        if (v108 < 1)
        {
          if ((v108 & 0x80000000) != 0)
          {
            v167 = -1;
            v108 = -v108;
            v140 = 1;
          }

          else
          {
            v108 = 0;
            v140 = 0;
            v167 = 0;
          }
        }

        else
        {
          v167 = 1;
          v140 = -1;
        }

        v165 = v108;
        if (v107 <= 0)
        {
          if (v107 < 0)
          {
            v167 = v140;
            v107 = -v107;
          }

          else
          {
            v107 = 0;
          }
        }

        v166 = v107;
        result = btConvexHullInternal::Rational64::compare(&v168, &v165);
        LODWORD(v21) = v153;
        LODWORD(v20) = v154;
        v33 = v151;
        LODWORD(v23) = v152;
        v34 = v150;
        v35 = v157;
        v105 = v159;
        v104 = v161;
        v106 = v156;
        if ((result & 0x80000000) == 0)
        {
          return result;
        }
      }

      else if (v135 <= 0)
      {
        return result;
      }

      *a4 = v126;
      v141 = *(v126 + 24);
      LODWORD(v11) = v141[26];
      LODWORD(v12) = v141[27];
      LODWORD(v13) = v141[28];
      v50 = *v147;
      v107 = v133;
    }
  }

  v142 = a7;
  v52 = v15;
  v53 = v17;
  v54 = v16;
  v55 = v148;
  while (1)
  {
    v56 = *a4;
    v155 = v54;
    while (1)
    {
      v57 = ((v52 - v11) * v20 + (v54 - v12) * v21 + (v53 - v13) * v23);
      if (!v56)
      {
        break;
      }

      if (v56[3] == a6)
      {
        break;
      }

      v58 = *(*v56 + 2);
      if (*(v58 + 40) <= *(a1 + 160))
      {
        break;
      }

      v59 = *(v58 + 24);
      v60 = v59[26];
      v61 = v59[27];
      v62 = v59[28];
      v63 = v33 * (v60 - v11) + v34 * (v61 - v12) + v35 * (v62 - v13);
      v64 = (v60 - v11) * v20 + (v61 - v12) * v21 + (v62 - v13) * v23;
      if (v63)
      {
        if ((v63 & 0x8000000000000000) == 0)
        {
          break;
        }

        v158 = v12;
        v160 = v13;
        v65 = v64 <= 0;
        if ((v64 & 0x80000000) != 0)
        {
          v66 = -v64;
        }

        else
        {
          v66 = 0;
        }

        v67 = (v64 >> 31) & 1;
        if (v64 <= 0)
        {
          v64 = v66;
        }

        if (v65)
        {
          v68 = v67;
        }

        else
        {
          v68 = -1;
        }

        v170 = v68;
        v168 = v64;
        v169 = -v63;
        v69 = v11;
        if (v57 < 1)
        {
          if ((v57 & 0x80000000) != 0)
          {
            v167 = -1;
            v71 = -v57;
            v70 = 1;
          }

          else
          {
            v71 = 0;
            v70 = 0;
            v167 = 0;
          }
        }

        else
        {
          v167 = 1;
          v70 = -1;
          v71 = v57;
        }

        v72 = v53;
        v73 = v52;
        v165 = v71;
        v74 = v51;
        if (v51 <= 0)
        {
          if (v51 < 0)
          {
            v167 = v70;
            v74 = -v51;
          }

          else
          {
            v74 = 0;
          }
        }

        v166 = v74;
        v75 = v51;
        v76 = btConvexHullInternal::Rational64::compare(&v168, &v165);
        v51 = v75;
        LODWORD(v21) = v153;
        LODWORD(v20) = v154;
        v33 = v151;
        LODWORD(v23) = v152;
        v52 = v73;
        v11 = v69;
        v35 = v157;
        v12 = v158;
        v13 = v160;
        v54 = v155;
        v53 = v72;
        v55 = v148;
        v34 = v150;
        if (v76 < 0)
        {
          break;
        }
      }

      else if ((v64 & 0x80000000) == 0)
      {
        break;
      }

      v51 = v33 * (v52 - v60) + v34 * (v54 - v61) + v35 * (v53 - v62);
      if (v56 == v55)
      {
        v56 = 0;
      }

      else
      {
        v56 = v58;
      }

      *a4 = v56;
      v11 = v60;
      v12 = v61;
      v13 = v62;
    }

    result = v51;
    v77 = *v147;
    if (!*v147)
    {
      return result;
    }

    if (*(v77 + 24) == v142)
    {
      return result;
    }

    v78 = **(v77 + 16);
    if (*(v78 + 40) <= *(a1 + 160))
    {
      return result;
    }

    v79 = *(v78 + 24);
    v80 = v79[26];
    v81 = v79[27];
    v82 = v80 - v52;
    v83 = v81 - v54;
    v84 = v79[28];
    if (v146 * v82 + v145 * (v81 - v54) + v144 * (v84 - v53))
    {
      return result;
    }

    v85 = v33 * (v80 - v11) + v34 * (v81 - v12) + v35 * (v84 - v13);
    if (v85 < 1)
    {
      return result;
    }

    v86 = v33 * v82 + v34 * v83 + v35 * (v84 - v53);
    v87 = v82 * v20 + v83 * v21 + (v84 - v53) * v23;
    if (!v86)
    {
      if ((v87 & 0x80000000) != 0)
      {
        goto LABEL_77;
      }

      return result;
    }

    if ((v86 & 0x8000000000000000) == 0)
    {
      return result;
    }

    v88 = v87 <= 0;
    if ((v87 & 0x80000000) != 0)
    {
      v89 = -v87;
    }

    else
    {
      v89 = 0;
    }

    v90 = (v87 >> 31) & 1;
    if (v87 <= 0)
    {
      v87 = v89;
    }

    if (v88)
    {
      v91 = v90;
    }

    else
    {
      v91 = -1;
    }

    v170 = v91;
    v168 = v87;
    v169 = -v86;
    if (v57 < 1)
    {
      if ((v57 & 0x80000000) != 0)
      {
        v167 = -1;
        v57 = -v57;
        v92 = 1;
      }

      else
      {
        v57 = 0;
        v92 = 0;
        v167 = 0;
      }
    }

    else
    {
      v167 = 1;
      v92 = -1;
    }

    v165 = v57;
    if (v51 <= 0)
    {
      if (v51 < 0)
      {
        v167 = v92;
        result = -v51;
      }

      else
      {
        result = 0;
      }
    }

    v166 = result;
    result = btConvexHullInternal::Rational64::compare(&v168, &v165);
    LODWORD(v21) = v153;
    LODWORD(v20) = v154;
    v33 = v151;
    LODWORD(v23) = v152;
    v34 = v150;
    v35 = v157;
    if (result <= 0)
    {
      return result;
    }

LABEL_77:
    *v147 = v78;
    v93 = *(v78 + 24);
    v52 = v93[26];
    v54 = v93[27];
    v53 = v93[28];
    v51 = v85;
  }
}

double btConvexHullInternal::removeEdgePair(uint64_t a1, void *a2)
{
  v2 = *a2;
  v3 = a2[2];
  if (*a2 == a2)
  {
    v2 = 0;
  }

  else
  {
    v4 = a2[1];
    v2[1] = v4;
    *v4 = v2;
  }

  *(v3[3] + 16) = v2;
  v5 = *v3;
  if (*v3 == v3)
  {
    v5 = 0;
  }

  else
  {
    v6 = v3[1];
    v5[1] = v6;
    *v6 = v5;
  }

  *(a2[3] + 16) = v5;
  result = 0.0;
  a2[4] = 0;
  *a2 = 0u;
  *(a2 + 1) = 0u;
  *a2 = *(a1 + 80);
  *(a1 + 80) = a2;
  v3[4] = 0;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *v3 = *(a1 + 80);
  *(a1 + 80) = v3;
  --*(a1 + 176);
  return result;
}

void btConvexHullInternal::compute(float32x4_t *this, char *a2, char a3, int a4, int a5, double a6, double a7, double a8, int32x4_t a9, int32x4_t a10)
{
  if (a3)
  {
    if (a5 >= 1)
    {
      v15 = xmmword_21C2A47B0;
      v16 = xmmword_21C2A47A0;
      v17 = (a2 + 16);
      v18 = a5;
      do
      {
        *v19.f32 = vcvt_f32_f64(*(v17 - 1));
        a9.i64[0] = *v17;
        *a9.i32 = *v17;
        v19.i64[1] = a9.u32[0];
        v16 = vminq_f32(v16, v19);
        v15 = vmaxq_f32(v15, v19);
        v17 = (v17 + a4);
        --v18;
      }

      while (v18);
      goto LABEL_11;
    }
  }

  else if (a5 >= 1)
  {
    v15 = xmmword_21C2A47B0;
    v16 = xmmword_21C2A47A0;
    v20 = (a2 + 8);
    v21 = a5;
    do
    {
      v22.i64[0] = *(v20 - 1);
      v22.i32[2] = *v20;
      v20 = (v20 + a4);
      v22.i64[1] = v22.u32[2];
      v16 = vminq_f32(v16, v22);
      v15 = vmaxq_f32(v15, v22);
      --v21;
    }

    while (v21);
    goto LABEL_11;
  }

  v16 = xmmword_21C2A47A0;
  v15 = xmmword_21C2A47B0;
LABEL_11:
  v23 = vsubq_f32(v15, v16);
  v24 = v23.f32[1];
  if (v23.f32[0] >= v23.f32[1])
  {
    v25 = v23.f32[0];
  }

  else
  {
    v25 = v23.f32[1];
  }

  if (v23.f32[0] < v23.f32[1])
  {
    v24 = v23.f32[0];
  }

  v23.i32[3] = 0;
  v26 = v23.f32[0] >= v23.f32[1];
  v27 = v23.f32[0] < v23.f32[1];
  if (v25 < v23.f32[2])
  {
    v27 = 2;
  }

  if (v24 >= v23.f32[2])
  {
    v26 = 2;
  }

  if ((v27 + 1) < 3)
  {
    v28 = v27 + 1;
  }

  else
  {
    v28 = v27 - 2;
  }

  if (v26 == v27)
  {
    v26 = v28;
  }

  this[10].i32[1] = v26;
  this[10].i32[2] = 3 - (v26 + v27);
  this[10].i32[3] = v27;
  a9.i32[0] = (4 - (v26 + v27)) % 3;
  a10.i32[0] = v27;
  v29 = vmulq_f32(vbslq_s8(vdupq_lane_s32(*&vceqq_s32(a9, a10), 0), vdupq_n_s32(0x38CD47F8u), vdupq_n_s32(0xB8CD47F8)), v23);
  *this = v29;
  v23.i64[0] = 0;
  v30 = v29;
  *v30.i32 = 1.0 / v29.f32[0];
  v31 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(v29, v23)), 0), v30, v29);
  if (v31.f32[1] != 0.0)
  {
    v31.f32[1] = 1.0 / v31.f32[1];
  }

  if (v31.f32[2] != 0.0)
  {
    v31.f32[2] = 1.0 / v31.f32[2];
  }

  v32 = vaddq_f32(v16, v15);
  v33.i64[0] = 0x3F0000003F000000;
  v33.i64[1] = 0x3F0000003F000000;
  v34 = vmulq_f32(v32, v33);
  v34.i32[3] = 0;
  this[1] = v34;
  v65 = 1;
  v64 = 0;
  HIDWORD(v63) = 0;
  if ((a5 & 0x80000000) == 0)
  {
    if (!a5)
    {
      LODWORD(v63) = 0;
      goto LABEL_43;
    }

    v59 = v31;
    v35 = btAlignedAllocInternal(16 * a5, 16);
    v31 = v59;
    v65 = 1;
    v64 = v35;
    HIDWORD(v63) = a5;
  }

  LODWORD(v63) = a5;
  if (a3)
  {
    if (a5 < 1)
    {
      goto LABEL_43;
    }

    v36 = 0;
    v38 = this[10].i32[2];
    v37 = this[10].i32[3];
    v39 = this[10].i32[1];
    v40 = (a2 + 16);
    v41 = v64 + 8;
    do
    {
      *&v42 = *v40;
      *v60.f32 = vcvt_f32_f64(*(v40 - 2));
      v60.i64[1] = v42;
      v43 = vsubq_f32(v60, this[1]);
      v43.i32[3] = 0;
      v60 = vmulq_f32(v31, v43);
      *(v41 - 2) = v60.f32[v38];
      *(v41 - 1) = v60.f32[v37];
      *v41 = v60.f32[v39];
      v41[1] = v36;
      v41 += 4;
      ++v36;
      v40 = (v40 + a4);
    }

    while (a5 != v36);
  }

  else
  {
    if (a5 < 1)
    {
      goto LABEL_43;
    }

    v44 = 0;
    v46 = this[10].i32[2];
    v45 = this[10].i32[3];
    v47 = this[10].i32[1];
    v48 = a2 + 8;
    v49 = v64 + 8;
    do
    {
      v60.i64[0] = *(v48 - 1);
      v60.i64[1] = *v48;
      v50 = vsubq_f32(v60, this[1]);
      v50.i32[3] = 0;
      v60 = vmulq_f32(v31, v50);
      *(v49 - 2) = v60.f32[v46];
      *(v49 - 1) = v60.f32[v45];
      *v49 = v60.f32[v47];
      v49[1] = v44;
      v49 += 4;
      ++v44;
      v48 += a4;
    }

    while (a5 != v44);
  }

  if (a5 >= 2)
  {
    btAlignedObjectArray<btConvexHullInternal::Point32>::quickSortInternal<pointCmp>(v62, &v60, 0, a5 - 1);
  }

LABEL_43:
  this[2].i64[1] = this[2].i64[0];
  this[3].i64[0] = 0;
  this[3].i32[2] = a5;
  v51 = this[8].i32[1];
  if (v51 < a5)
  {
    v52 = v51;
    if (this[8].i32[2] < a5)
    {
      if (a5)
      {
        v53 = btAlignedAllocInternal(8 * a5, 16);
        v51 = this[8].i32[1];
      }

      else
      {
        v53 = 0;
      }

      if (v51 >= 1)
      {
        v54 = 0;
        v55 = 8 * v51;
        do
        {
          *(v53 + v54) = *(this[9].i64[0] + v54);
          v54 += 8;
        }

        while (v55 != v54);
      }

      v56 = this[9].i64[0];
      if (v56 && this[9].i8[8] == 1)
      {
        btAlignedFreeInternal(v56);
      }

      this[9].i8[8] = 1;
      this[9].i64[0] = v53;
      this[8].i32[2] = a5;
    }

    do
    {
      *(this[9].i64[0] + 8 * v52++) = 0;
    }

    while (a5 != v52);
  }

  this[8].i32[1] = a5;
  if (a5 >= 1)
  {
    v57 = 0;
    do
    {
      btConvexHullInternal::Pool<btConvexHullInternal::Vertex>::newObject(&this[2]);
      *(v58 + 16) = 0;
      *(v58 + 104) = *(v64 + v57);
      *(v58 + 120) = -1;
      *(this[9].i64[0] + 8 * v57++) = v58;
    }

    while (v57 != a5);
  }

  if (v64 && v65 == 1)
  {
    btAlignedFreeInternal(v64);
  }

  v65 = 1;
  v64 = 0;
  v63 = 0;
  this[4].i64[1] = this[4].i64[0];
  this[5].i64[0] = 0;
  this[5].i32[2] = 6 * a5;
  this[11].i64[0] = 0;
  this[10].i32[0] = -3;
  v60 = 0u;
  v61 = 0u;
  btConvexHullInternal::computeInternal(this, 0, a5, &v60);
  this[11].i64[1] = v60.i64[0];
  if (v64)
  {
    if (v65 == 1)
    {
      btAlignedFreeInternal(v64);
    }
  }
}

double btConvexHullInternal::Pool<btConvexHullInternal::Vertex>::newObject(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      *(a1 + 8) = *(v3 + 16);
      v2 = *v3;
    }

    else
    {
      v3 = btAlignedAllocInternal(24, 16);
      v4 = *(a1 + 24);
      *(v3 + 8) = v4;
      *(v3 + 16) = 0;
      v2 = btAlignedAllocInternal(v4 << 7, 16);
      *v3 = v2;
      *(v3 + 16) = *a1;
      *a1 = v3;
    }

    v5 = *(v3 + 8);
    if (v5 >= 1)
    {
      v6 = 0;
      v7 = vdupq_n_s64(v5 - 1);
      v8 = 0x100000000;
      v9 = (v2 + 128);
      do
      {
        v10 = vmovn_s64(vcgeq_u64(v7, vorrq_s8(vdupq_n_s64(v6), xmmword_21C27F640)));
        v11 = vadd_s32(v8, 0x100000001);
        if (v10.i8[0])
        {
          if (v11.i32[0] >= v5)
          {
            v12 = 0;
          }

          else
          {
            v12 = v9;
          }

          *(v9 - 16) = v12;
        }

        if (v10.i8[4])
        {
          v13 = v9 + 16;
          if (v11.i32[1] >= v5)
          {
            v13 = 0;
          }

          *v9 = v13;
        }

        v6 += 2;
        v8 = vadd_s32(v8, 0x200000002);
        v9 += 32;
      }

      while (((v5 + 1) & 0xFFFFFFFE) != v6);
    }
  }

  *(a1 + 16) = *v2;
  result = 0.0;
  *(v2 + 32) = 0;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 120) = -1;
  return result;
}

float32x4_t btConvexHullInternal::getBtNormal@<Q0>(float32x4_t *a1@<X0>, int *a2@<X1>, float32x4_t *a3@<X8>)
{
  v3 = a2[11];
  v5 = a1[10].i32[1];
  v4 = a1[10].i32[2];
  v16.f32[v4] = a2[10];
  v6 = a1[10].i32[3];
  v16.f32[v6] = v3;
  v16.f32[v5] = a2[12];
  v7 = v16;
  v8 = *a1;
  v9 = a2[15];
  v16.f32[v4] = a2[14];
  v10 = vmulq_f32(v8, v7);
  v16.f32[v6] = v9;
  v16.f32[v5] = a2[16];
  v11 = vmulq_f32(v16, v8);
  v12 = vmlaq_f32(vnegq_f32(vmulq_f32(v11, vextq_s8(vextq_s8(v10, v10, 0xCuLL), v10, 8uLL))), v10, vextq_s8(vextq_s8(v11, v11, 0xCuLL), v11, 8uLL));
  v13 = vextq_s8(vextq_s8(v12, v12, 0xCuLL), v12, 8uLL);
  v13.i32[3] = 0;
  v14 = vmulq_f32(v13, v13);
  result = vmulq_n_f32(v13, 1.0 / sqrtf(vadd_f32(*&vextq_s8(v14, v14, 8uLL), vpadd_f32(*v14.i8, *v14.i8)).f32[0]));
  *a3 = result;
  return result;
}

double btConvexHullInternal::getCoordinates@<D0>(float32x4_t *a1@<X0>, int *a2@<X1>, float32x4_t *a3@<X8>)
{
  if ((a2[29] & 0x80000000) == 0)
  {
    v15.f32[a1[10].i32[2]] = a2[26];
LABEL_4:
    v15.f32[a1[10].i32[3]] = a2[27];
    goto LABEL_5;
  }

  v6 = btConvexHullInternal::Int128::toScalar((a2 + 10));
  v7 = btConvexHullInternal::Int128::toScalar((a2 + 22));
  v8 = a2[29];
  v15.f32[a1[10].i32[2]] = v6 / v7;
  if ((v8 & 0x80000000) == 0)
  {
    goto LABEL_4;
  }

  v11 = btConvexHullInternal::Int128::toScalar((a2 + 14));
  v12 = btConvexHullInternal::Int128::toScalar((a2 + 22));
  v13 = a2[29];
  v15.f32[a1[10].i32[3]] = v11 / v12;
  if (v13 < 0)
  {
    v14 = btConvexHullInternal::Int128::toScalar((a2 + 18));
    v9 = v14 / btConvexHullInternal::Int128::toScalar((a2 + 22));
    goto LABEL_6;
  }

LABEL_5:
  v9 = a2[28];
LABEL_6:
  v15.f32[a1[10].i32[1]] = v9;
  result = *v15.i64;
  *a3 = vmlaq_f32(a1[1], v15, *a1);
  return result;
}

float btConvexHullInternal::shrink(float32x4_t *this, float a2, float a3)
{
  v3 = this[11].i64[1];
  if (!v3)
  {
    return 0.0;
  }

  v7 = this[10].i32[0] - 1;
  this[10].i32[0] = v7;
  v120 = 1;
  v118 = 0;
  *(v3 + 120) = v7;
  v8 = btAlignedAllocInternal(8, 16);
  v9 = 1;
  v10 = 0;
  v84 = this;
  v85 = 0;
  v11 = 0;
  v12 = 0;
  v97 = 0;
  v98 = 0;
  v13 = 0;
  v14 = 0;
  v100 = 0;
  v15 = 0;
  v16 = 0;
  v119 = v8;
  v17 = this[11].i64[1];
  *v8 = v17;
  v19 = v17[26];
  v18 = v17[27];
  v20 = v17[28];
  v115 = 0;
  v116 = 0;
  v113 = 0;
  v114 = 0;
  v111 = 0;
  v112 = 0;
  v95 = 1;
  v109 = 0;
  v110 = 0;
  do
  {
    v21 = v119[--v9];
    v22 = v21[2];
    if (v22)
    {
      v23 = v10;
      while (1)
      {
        v24 = v22[3];
        if (*(v24 + 120) == v7)
        {
          goto LABEL_23;
        }

        *(v24 + 120) = v7;
        LODWORD(v24) = v95;
        if (v9 == v95)
        {
          v25 = v95 ? 2 * v95 : 1;
          LODWORD(v24) = v95;
          if (v95 < v25)
          {
            break;
          }
        }

        v25 = v24;
LABEL_22:
        v119[v9++] = v22[3];
        v95 = v25;
LABEL_23:
        if (*(v22 + 10) != v7)
        {
          v89 = v23;
          v92 = v15;
          v87 = v9;
          v94 = v11;
          v32 = btConvexHullInternal::Pool<btConvexHullInternal::Face>::newObject(&v84[6]);
          btConvexHullInternal::Face::init(v32, v22[3], *(*(v22[2] + 8) + 24), v21);
          v33 = v94;
          if (v94 == v85)
          {
            v34 = 2 * v94;
            if (!v94)
            {
              v34 = 1;
            }

            v15 = v92;
            v35 = v89;
            if (v94 >= v34)
            {
              v85 = v94;
              v10 = v89;
            }

            else
            {
              v85 = v34;
              if (v34)
              {
                v36 = btAlignedAllocInternal(8 * v34, 16);
                v33 = v94;
                v10 = v36;
                v35 = v89;
              }

              else
              {
                v10 = 0;
              }

              if (v33 < 1)
              {
                if (v35)
                {
                  goto LABEL_39;
                }
              }

              else
              {
                v37 = v33;
                v38 = v10;
                v39 = v35;
                do
                {
                  v40 = *v39++;
                  *v38++ = v40;
                  --v37;
                }

                while (v37);
LABEL_39:
                v90 = v10;
                btAlignedFreeInternal(v35);
                v10 = v90;
                v33 = v94;
              }

LABEL_40:
              v15 = v92;
            }

            v41 = 0;
            v42 = 0;
            v10[v33] = v32;
            v43 = v22;
            do
            {
              v44 = v42;
              v42 = v41;
              if (v44 && v41)
              {
                v45 = v44[26];
                v46 = v44[27];
                v47 = v44[28];
                v48 = v42[26];
                v49 = v42[27];
                v50 = v42[28];
                v51 = *(v21 + 26);
                v52 = *(v21 + 27);
                v53 = *(v21 + 28);
                v54 = ((v50 - v20) * (v46 - v18) - (v49 - v18) * (v47 - v20)) * (v51 - v19) + ((v49 - v18) * (v45 - v19) - (v48 - v19) * (v46 - v18)) * (v53 - v20) + ((v48 - v19) * (v47 - v20) - (v50 - v20) * (v45 - v19)) * (v52 - v18);
                v55 = v54 * (v51 + v19 + v45 + v48);
                v56 = __CFADD__(v55, v12);
                v12 += v55;
                v97 += v56 + (v55 >> 63);
                v13 = (__PAIR128__(v13, v98) + v54 * (v52 + v18 + v46 + v49)) >> 64;
                v98 += v54 * (v52 + v18 + v46 + v49);
                v57 = v54 * (v53 + v20 + v47 + v50);
                v56 = __CFADD__(v14, v57);
                v14 += v57;
                v100 += v56 + (v57 >> 63);
                v16 = (__PAIR128__(v16, v15) + v54) >> 64;
                v15 += v54;
              }

              *(v43 + 10) = v7;
              v43[4] = v32;
              v41 = v43[3];
              v43 = *(v43[2] + 8);
            }

            while (v43 != v22);
            v11 = v33 + 1;
            v23 = v10;
            v9 = v87;
            goto LABEL_47;
          }

          v10 = v89;
          goto LABEL_40;
        }

        v10 = v23;
LABEL_47:
        v22 = *v22;
        if (v22 == v21[2])
        {
          goto LABEL_48;
        }
      }

      v88 = v23;
      v91 = v15;
      v86 = v9;
      v93 = v11;
      if (v25)
      {
        v26 = btAlignedAllocInternal(8 * v25, 16);
        LODWORD(v24) = v95;
        v27 = v26;
      }

      else
      {
        v27 = 0;
      }

      v28 = v119;
      if (v24 < 1)
      {
        if (!v119)
        {
LABEL_21:
          v119 = v27;
          v11 = v93;
          v9 = v86;
          v15 = v91;
          v23 = v88;
          goto LABEL_22;
        }
      }

      else
      {
        v24 = v24;
        v29 = v27;
        v30 = v119;
        do
        {
          v31 = *v30++;
          *v29++ = v31;
          --v24;
        }

        while (v24);
      }

      v96 = v27;
      btAlignedFreeInternal(v28);
      v27 = v96;
      goto LABEL_21;
    }

LABEL_48:
    ;
  }

  while (v9 > 0);
  v118 = __PAIR64__(v95, v9);
  v120 = 1;
  v115 = v12;
  v116 = v97;
  v113 = v98;
  v114 = v13;
  v111 = v14;
  v112 = v100;
  v58 = 0.0;
  v109 = v15;
  v110 = v16;
  if ((v16 & 0x8000000000000000) == 0 && v16 | v15)
  {
    v59 = v10;
    v60 = v11;
    v108.f32[v84[10].i32[2]] = btConvexHullInternal::Int128::toScalar(&v115);
    v108.f32[v84[10].i32[3]] = btConvexHullInternal::Int128::toScalar(&v113);
    v108.f32[v84[10].i32[1]] = btConvexHullInternal::Int128::toScalar(&v111);
    v61 = btConvexHullInternal::Int128::toScalar(&v109);
    v62 = *v84;
    v63 = vmulq_f32(vmulq_n_f32(v108, 0.25 / v61), *v84);
    v108 = v63;
    if (a3 <= 0.0)
    {
      v64 = v60;
      v10 = v59;
    }

    else
    {
      v64 = v60;
      if (v60 < 1)
      {
        v69 = 3.4028e38;
        v10 = v59;
      }

      else
      {
        v66 = v84[10].i32[2];
        v65 = v84[10].i32[3];
        v67 = v84[10].i32[1];
        v68 = v60;
        v69 = 3.4028e38;
        v99 = vnegq_f32(v63);
        v101 = v62;
        v70 = v59;
        do
        {
          btConvexHullInternal::getBtNormal(v84, *v70, &v107);
          v71 = *v70++;
          v72 = v71[7];
          v121.f32[v66] = v71[6];
          v121.f32[v65] = v72;
          v121.f32[v67] = v71[8];
          v73 = vmlaq_f32(v99, v101, v121);
          v73.i32[3] = 0;
          v74 = vmulq_f32(v107, v73);
          v69 = fminf(vadd_f32(*&vextq_s8(v74, v74, 8uLL), vpadd_f32(*v74.i8, *v74.i8)).f32[0], v69);
          --v68;
        }

        while (v68);
        v58 = 0.0;
        v64 = v60;
        v10 = v59;
        if (v69 <= 0.0)
        {
          goto LABEL_74;
        }
      }

      a2 = fminf(v69 * a3, a2);
    }

    if (v64 < 1)
    {
      v58 = a2;
    }

    else
    {
      v75 = v64;
      v76 = 243703;
      v77 = v64;
      v78 = v10;
      do
      {
        v79 = *v78;
        *v78++ = v10[v76 % v64];
        v10[v76 % v64] = v79;
        v76 = 1664525 * v76 + 1013904223;
        --v77;
      }

      while (v77);
      v80 = v10;
      while (1)
      {
        v81 = *v80;
        btAlignedObjectArray<btRigidBody *>::btAlignedObjectArray(v102, v117);
        v82 = btConvexHullInternal::shiftFace(v84, v81, v102, a2);
        if (v105 && v106 == 1)
        {
          btAlignedFreeInternal(v105);
        }

        v106 = 1;
        v105 = 0;
        v103 = 0;
        v104 = 0;
        if ((v82 & 1) == 0)
        {
          break;
        }

        ++v80;
        if (!--v75)
        {
          v58 = a2;
          goto LABEL_73;
        }
      }

      v58 = -a2;
LABEL_73:
      v10 = v59;
    }
  }

LABEL_74:
  if (v10)
  {
    btAlignedFreeInternal(v10);
  }

  if (v119 && v120 == 1)
  {
    btAlignedFreeInternal(v119);
  }

  return v58;
}

void *btConvexHullInternal::Pool<btConvexHullInternal::Face>::newObject(uint64_t a1)
{
  result = *(a1 + 16);
  if (!result)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      *(a1 + 8) = *(v3 + 16);
      result = *v3;
    }

    else
    {
      v3 = btAlignedAllocInternal(24, 16);
      v4 = *(a1 + 24);
      *(v3 + 8) = v4;
      *(v3 + 16) = 0;
      result = btAlignedAllocInternal(72 * v4, 16);
      *v3 = result;
      *(v3 + 16) = *a1;
      *a1 = v3;
    }

    v5 = *(v3 + 8);
    if (v5 >= 1)
    {
      v6 = 0;
      v7 = vdupq_n_s64(v5 - 1);
      v8 = 0x100000000;
      v9 = result + 9;
      do
      {
        v10 = vmovn_s64(vcgeq_u64(v7, vorrq_s8(vdupq_n_s64(v6), xmmword_21C27F640)));
        v11 = vadd_s32(v8, 0x100000001);
        if (v10.i8[0])
        {
          if (v11.i32[0] >= v5)
          {
            v12 = 0;
          }

          else
          {
            v12 = v9;
          }

          *(v9 - 9) = v12;
        }

        if (v10.i8[4])
        {
          v13 = v9 + 9;
          if (v11.i32[1] >= v5)
          {
            v13 = 0;
          }

          *v9 = v13;
        }

        v6 += 2;
        v8 = vadd_s32(v8, 0x200000002);
        v9 += 18;
      }

      while (((v5 + 1) & 0xFFFFFFFE) != v6);
    }
  }

  *(a1 + 16) = *result;
  result[1] = 0;
  result[2] = 0;
  *result = 0;
  return result;
}

uint64_t btConvexHullInternal::Face::init(uint64_t result, uint64_t a2, _DWORD *a3, _DWORD *a4)
{
  *(result + 8) = a2;
  *(result + 24) = *(a2 + 104);
  v4 = (a3[28] - *(a2 + 112)) | 0xFFFFFFFF00000000;
  *(result + 40) = (a3[26] - *(a2 + 104)) | ((a3[27] - *(a2 + 108)) << 32);
  *(result + 48) = v4;
  v5 = (a4[28] - *(a2 + 112)) | 0xFFFFFFFF00000000;
  *(result + 56) = (a4[26] - *(a2 + 104)) | ((a4[27] - *(a2 + 108)) << 32);
  *(result + 64) = v5;
  v6 = *(a2 + 32);
  if (v6)
  {
    v7 = (v6 + 16);
  }

  else
  {
    v7 = (a2 + 24);
  }

  *v7 = result;
  *(a2 + 32) = result;
  return result;
}

float btConvexHullInternal::Int128::toScalar(btConvexHullInternal::Int128 *this)
{
  v3 = *(this + 1);
  if ((v3 & 0x8000000000000000) == 0)
  {
    return *this + (v3 * 1.8447e19);
  }

  v6[2] = v1;
  v6[3] = v2;
  if (*this)
  {
    v5 = ~v3;
  }

  else
  {
    v5 = -v3;
  }

  v6[0] = -*this;
  v6[1] = v5;
  return -btConvexHullInternal::Int128::toScalar(v6);
}

uint64_t btConvexHullInternal::shiftFace(float32x4_t *a1, int *a2, uint64_t a3, float a4)
{
  v7 = a2;
  btConvexHullInternal::getBtNormal(a1, a2, &v280);
  v9 = vmulq_n_f32(v280, -a4);
  v9.i32[3] = 0;
  v285 = v9;
  if (a1->f32[0] != 0.0)
  {
    v285.f32[0] = v9.f32[0] / a1->f32[0];
  }

  v10 = a1->f32[1];
  if (v10 != 0.0)
  {
    v285.f32[1] = v9.f32[1] / v10;
  }

  v11 = a1->f32[2];
  if (v11 != 0.0)
  {
    v285.f32[2] = v9.f32[2] / v11;
  }

  v12 = v285.f32[a1[10].i32[2]];
  v13 = v285.f32[a1[10].i32[3]];
  v14 = v285.f32[a1[10].i32[1]];
  if (v12)
  {
    v15 = 0;
  }

  else
  {
    v15 = v13 == 0;
  }

  if (v15 && v14 == 0)
  {
    return 1;
  }

  v18 = v7[15];
  v17 = v7[16];
  v20 = v7[10];
  v19 = v7[11];
  v21 = v7[12];
  v22 = v7[14];
  v282 = v17 * v19 - v18 * v21;
  v283 = v22 * v21 - v20 * v17;
  v284 = v20 * v18 - v22 * v19;
  v23 = v7[6];
  v24 = v7[7];
  v25 = v7[8];
  v263 = v23 + v12;
  v264 = v25 + v14;
  v265 = v24 + v13;
  v26 = v263 * v282 + v265 * v283 + v264 * v284;
  if (v26 >= v23 * v282 + v24 * v283 + v25 * v284)
  {
    return 0;
  }

  v27 = *(v7 + 1);
  v28 = *(v27 + 16);
  btConvexHullInternal::Vertex::dot(v27, &v282, v8, &v280);
  v30 = btConvexHullInternal::Rational128::compare(&v280, v26, v29);
  if ((v30 & 0x80000000) == 0)
  {
    v32 = v30;
    v33 = v28;
    while (1)
    {
      btConvexHullInternal::Vertex::dot(*(v28 + 24), &v282, v31, &v278);
      if ((btConvexHullInternal::Rational128::compare(&v278, &v280, v34) & 0x80000000) != 0)
      {
        v35 = btConvexHullInternal::Rational128::compare(&v278, v26, v31);
        *&v281[13] = *&v279[13];
        v280 = v278;
        *v281 = *v279;
        v28 = *(v28 + 16);
        if (v35 < 0)
        {
          if (v28)
          {
            if (!v32)
            {
              goto LABEL_186;
            }

            goto LABEL_32;
          }

          return 0;
        }

        v32 = v35;
        v33 = v28;
      }

      v28 = *(v28 + 8);
      if (v28 == v33)
      {
        return 0;
      }
    }
  }

  v37 = v28;
  while (1)
  {
    btConvexHullInternal::Vertex::dot(*(v28 + 24), &v282, v31, &v278);
    if (btConvexHullInternal::Rational128::compare(&v278, &v280, v38) >= 1)
    {
      break;
    }

LABEL_26:
    v28 = *(v28 + 8);
    if (v28 == v37)
    {
      return 1;
    }
  }

  v39 = btConvexHullInternal::Rational128::compare(&v278, v26, v31);
  if (v39 < 0)
  {
    *&v281[13] = *&v279[13];
    v280 = v278;
    *v281 = *v279;
    v28 = *(v28 + 16);
    v37 = v28;
    goto LABEL_26;
  }

  v32 = v39;
  if (!v39)
  {
LABEL_186:
    v185 = **(v28 + 16);
    while (1)
    {
      btConvexHullInternal::Vertex::dot(v185[3], &v282, v31, &v278);
      if (btConvexHullInternal::Rational128::compare(&v278, v26, v186) > 0)
      {
        break;
      }

      v185 = *v185;
      if (v185 == *(v28 + 16))
      {
        return 1;
      }
    }
  }

LABEL_32:
  v40 = 0;
  v41 = 0;
  v262 = 0;
  v240 = v7;
  v241 = v26;
  while (2)
  {
    v42 = v41;
    v276 = v41;
    v275 = v32;
    if (v32 || (v43 = **(v28 + 16), btConvexHullInternal::Vertex::dot(*(v43 + 24), &v282, v31, &v278), (btConvexHullInternal::Rational128::compare(&v278, v26, v44) & 0x80000000) == 0))
    {
LABEL_39:
      v49 = v28;
      v50 = v32;
      if (v262)
      {
        if (v28 == v262)
        {
          if (v32 < 1)
          {
            v189 = *(a3 + 4);
            if (v40 != v42[2])
            {
              v190 = *(a3 + 8);
              if (v189 == v190)
              {
                if (v189)
                {
                  v190 = 2 * v189;
                }

                else
                {
                  v190 = 1;
                }

                if (v189 >= v190)
                {
                  v190 = *(a3 + 4);
                }

                else
                {
                  if (v190)
                  {
                    v191 = btAlignedAllocInternal(8 * v190, 16);
                    v189 = *(a3 + 4);
                  }

                  else
                  {
                    v191 = 0;
                  }

                  if (v189 >= 1)
                  {
                    v192 = 0;
                    do
                    {
                      *(v191 + v192) = *(*(a3 + 16) + v192);
                      v192 += 8;
                    }

                    while (8 * v189 != v192);
                  }

                  v193 = *(a3 + 16);
                  if (v193 && *(a3 + 24) == 1)
                  {
                    btAlignedFreeInternal(v193);
                    v189 = *(a3 + 4);
                  }

                  *(a3 + 24) = 1;
                  *(a3 + 16) = v191;
                  *(a3 + 8) = v190;
                  v42 = v41;
                }
              }

              *(*(a3 + 16) + 8 * v189) = v42[3];
              v194 = v189 + 1;
              *(a3 + 4) = v189 + 1;
              v195 = *v40;
              if (*v40 != v42[2])
              {
                v196 = v40;
                do
                {
                  v197 = v195[3];
                  btConvexHullInternal::removeEdgePair(a1, v195);
                  v198 = *(a3 + 4);
                  v199 = *(a3 + 8);
                  if (v198 == v199)
                  {
                    if (v198)
                    {
                      v199 = 2 * v198;
                    }

                    else
                    {
                      v199 = 1;
                    }

                    if (v198 >= v199)
                    {
                      v199 = *(a3 + 4);
                    }

                    else
                    {
                      if (v199)
                      {
                        v200 = btAlignedAllocInternal(8 * v199, 16);
                        v198 = *(a3 + 4);
                      }

                      else
                      {
                        v200 = 0;
                      }

                      if (v198 >= 1)
                      {
                        v201 = 0;
                        do
                        {
                          *(v200 + v201) = *(*(a3 + 16) + v201);
                          v201 += 8;
                        }

                        while (8 * v198 != v201);
                      }

                      v202 = *(a3 + 16);
                      if (v202 && *(a3 + 24) == 1)
                      {
                        btAlignedFreeInternal(v202);
                        v198 = *(a3 + 4);
                      }

                      *(a3 + 24) = 1;
                      *(a3 + 16) = v200;
                      *(a3 + 8) = v199;
                      v42 = v41;
                    }
                  }

                  *(*(a3 + 16) + 8 * v198) = v197;
                  v194 = v198 + 1;
                  *(a3 + 4) = v194;
                  v195 = *v196;
                }

                while (*v196 != v42[2]);
                v190 = v199;
              }

              if (v194 == v190)
              {
                if (v190)
                {
                  v203 = 2 * v190;
                }

                else
                {
                  v203 = 1;
                }

                if (v190 < v203)
                {
                  if (v203)
                  {
                    v204 = btAlignedAllocInternal(8 * v203, 16);
                    v190 = *(a3 + 4);
                  }

                  else
                  {
                    v204 = 0;
                  }

                  if (v190 >= 1)
                  {
                    v205 = 0;
                    do
                    {
                      *(v204 + v205) = *(*(a3 + 16) + v205);
                      v205 += 8;
                    }

                    while (8 * v190 != v205);
                  }

                  v206 = *(a3 + 16);
                  if (v206 && *(a3 + 24) == 1)
                  {
                    btAlignedFreeInternal(v206);
                    v190 = *(a3 + 4);
                  }

                  *(a3 + 24) = 1;
                  *(a3 + 16) = v204;
                  *(a3 + 8) = v203;
                }

                v194 = v190;
              }

              *(*(a3 + 16) + 8 * v194) = 0;
              v189 = v194 + 1;
              *(a3 + 4) = v194 + 1;
            }
          }

          else
          {
            *(v40[2] + 24) = v42[3];
            v187 = *(v262 + 16);
            *v187 = v40;
            v40[1] = v187;
            v188 = v42[2];
            *v40 = v188;
            *(v188 + 8) = v40;
            v189 = *(a3 + 4);
          }

          a1[11].i64[1] = **(a3 + 16);
          if (v189 >= 1)
          {
            LODWORD(v207) = 0;
            do
            {
              v277 = v189;
              do
              {
                v208 = (*(a3 + 16) + 8 * v207);
                LODWORD(v207) = v207 + 2;
                v209 = v208[1];
                if (v209)
                {
                  v210 = 0;
                  v211 = *v208;
                  v212 = *v208 + 24;
                  v207 = v207;
LABEL_251:
                  v213 = v207;
                  do
                  {
                    v214 = v209 + 3;
                    v215 = v209[3];
                    v216 = *(v211 + 32);
                    if (v216)
                    {
                      v217 = (v216 + 16);
                    }

                    else
                    {
                      v217 = v212;
                    }

                    *v217 = v215;
                    v218 = v209[4];
                    if (v218)
                    {
                      *(v211 + 32) = v218;
                      v215 = *v214;
                    }

                    for (; v215; v215 = *(v215 + 16))
                    {
                      *(v215 + 8) = v211;
                    }

                    *v214 = 0;
                    v209[4] = 0;
                    v219 = v209[2];
                    if (v219)
                    {
                      if ((v210 & 1) == 0)
                      {
                        v221 = *(a3 + 4);
                        if (v221 == *(a3 + 8))
                        {
                          v222 = v221 ? 2 * v221 : 1;
                          if (v221 < v222)
                          {
                            if (v222)
                            {
                              v223 = btAlignedAllocInternal(8 * v222, 16);
                              v221 = *(a3 + 4);
                            }

                            else
                            {
                              v223 = 0;
                            }

                            if (v221 >= 1)
                            {
                              v224 = 0;
                              do
                              {
                                *(v223 + v224) = *(*(a3 + 16) + v224);
                                v224 += 8;
                              }

                              while (8 * v221 != v224);
                            }

                            v225 = *(a3 + 16);
                            if (v225 && *(a3 + 24) == 1)
                            {
                              btAlignedFreeInternal(v225);
                              v221 = *(a3 + 4);
                            }

                            *(a3 + 24) = 1;
                            *(a3 + 16) = v223;
                            *(a3 + 8) = v222;
                          }
                        }

                        *(*(a3 + 16) + 8 * v221) = v211;
                        *(a3 + 4) = v221 + 1;
                        v219 = v209[2];
                      }

                      do
                      {
                        v226 = *(a3 + 4);
                        if (v226 == *(a3 + 8))
                        {
                          v227 = v226 ? 2 * v226 : 1;
                          if (v226 < v227)
                          {
                            if (v227)
                            {
                              v228 = btAlignedAllocInternal(8 * v227, 16);
                              v226 = *(a3 + 4);
                            }

                            else
                            {
                              v228 = 0;
                            }

                            if (v226 >= 1)
                            {
                              v229 = 0;
                              do
                              {
                                *(v228 + v229) = *(*(a3 + 16) + v229);
                                v229 += 8;
                              }

                              while (8 * v226 != v229);
                            }

                            v230 = *(a3 + 16);
                            if (v230 && *(a3 + 24) == 1)
                            {
                              btAlignedFreeInternal(v230);
                              v226 = *(a3 + 4);
                            }

                            *(a3 + 24) = 1;
                            *(a3 + 16) = v228;
                            *(a3 + 8) = v227;
                          }
                        }

                        *(*(a3 + 16) + 8 * v226) = *(v219 + 24);
                        *(a3 + 4) = v226 + 1;
                        btConvexHullInternal::removeEdgePair(a1, v209[2]);
                        v219 = v209[2];
                      }

                      while (v219);
                      v207 = v213 + 1;
                      v220 = *(a3 + 16);
                      v209 = *(v220 + 8 * v213);
                      v210 = 1;
                      if (!v209)
                      {
                        v189 = v277;
                        goto LABEL_298;
                      }

                      goto LABEL_251;
                    }

                    LODWORD(v207) = v213 + 1;
                    v220 = *(a3 + 16);
                    v209 = *(v220 + 8 * v213++);
                  }

                  while (v209);
                  v189 = v277;
                  if ((v210 & 1) == 0)
                  {
                    continue;
                  }

LABEL_298:
                  v231 = *(a3 + 4);
                  if (v231 == *(a3 + 8))
                  {
                    v232 = v231 ? 2 * v231 : 1;
                    if (v231 < v232)
                    {
                      if (v232)
                      {
                        v220 = btAlignedAllocInternal(8 * v232, 16);
                        v231 = *(a3 + 4);
                      }

                      else
                      {
                        v220 = 0;
                      }

                      if (v231 >= 1)
                      {
                        v233 = 0;
                        do
                        {
                          *(v220 + v233) = *(*(a3 + 16) + v233);
                          v233 += 8;
                        }

                        while (8 * v231 != v233);
                      }

                      v234 = *(a3 + 16);
                      if (v234 && *(a3 + 24) == 1)
                      {
                        btAlignedFreeInternal(v234);
                        v231 = *(a3 + 4);
                      }

                      *(a3 + 24) = 1;
                      *(a3 + 16) = v220;
                      *(a3 + 8) = v232;
                    }
                  }

                  *(v220 + 8 * v231) = 0;
                  *(a3 + 4) = v231 + 1;
                }
              }

              while (v207 < v189);
              v189 = *(a3 + 4);
            }

            while (v207 < v189);
            v236 = v264 | 0xFFFFFFFF00000000;
            v235 = v240;
            v237 = v265 << 32;
            if (v189 <= 0)
            {
LABEL_320:
              if (v189 < 0)
              {
                if ((*(a3 + 8) & 0x80000000) != 0)
                {
                  v238 = *(a3 + 16);
                  if (v238 && *(a3 + 24) == 1)
                  {
                    btAlignedFreeInternal(v238);
                  }

                  *(a3 + 24) = 1;
                  *(a3 + 16) = 0;
                  *(a3 + 8) = 0;
                }

                v239 = v189;
                do
                {
                  *(*(a3 + 16) + 8 * v239++) = 0;
                }

                while (v239);
              }
            }

            *(a3 + 4) = 0;
            *(v235 + 3) = v237 | v263;
            *(v235 + 4) = v236;
            return 1;
          }

          v236 = v264 | 0xFFFFFFFF00000000;
          v235 = v240;
          v237 = v265 << 32;
          goto LABEL_320;
        }

        v49 = v262;
      }

      v262 = v49;
      v274 = v28;
      v28 = *(v28 + 16);
      do
      {
        v28 = *(*(v28 + 16) + 8);
        btConvexHullInternal::Vertex::dot(*(v28 + 24), &v282, v31, &v278);
        v52 = btConvexHullInternal::Rational128::compare(&v278, v26, v51);
      }

      while (v52 < 0);
      v32 = v52;
      if (!v52)
      {
LABEL_115:
        v31 = *(v28 + 24);
        if (!(v32 | v50))
        {
          v41 = **(v274 + 16);
          if (v41[3] == v31)
          {
LABEL_126:
            if (v42)
            {
              v167 = v42[2];
              if (v50 < 1)
              {
                if (v41 != v167)
                {
                  v168 = *(a3 + 4);
                  v169 = *(a3 + 8);
                  if (v168 == v169)
                  {
                    if (v168)
                    {
                      v169 = 2 * v168;
                    }

                    else
                    {
                      v169 = 1;
                    }

                    if (v168 >= v169)
                    {
                      v169 = *(a3 + 4);
                    }

                    else
                    {
                      if (v169)
                      {
                        v170 = btAlignedAllocInternal(8 * v169, 16);
                        v168 = *(a3 + 4);
                      }

                      else
                      {
                        v170 = 0;
                      }

                      if (v168 >= 1)
                      {
                        v171 = 0;
                        do
                        {
                          *(v170 + v171) = *(*(a3 + 16) + v171);
                          v171 += 8;
                        }

                        while (8 * v168 != v171);
                      }

                      v172 = *(a3 + 16);
                      if (v172 && *(a3 + 24) == 1)
                      {
                        btAlignedFreeInternal(v172);
                        v168 = *(a3 + 4);
                      }

                      *(a3 + 24) = 1;
                      *(a3 + 16) = v170;
                      *(a3 + 8) = v169;
                      v42 = v276;
                    }
                  }

                  *(*(a3 + 16) + 8 * v168) = v42[3];
                  v173 = v168 + 1;
                  *(a3 + 4) = v173;
                  v174 = *v41;
                  if (*v41 != v42[2])
                  {
                    do
                    {
                      v175 = v174[3];
                      btConvexHullInternal::removeEdgePair(a1, v174);
                      v176 = *(a3 + 4);
                      v177 = *(a3 + 8);
                      if (v176 == v177)
                      {
                        if (v176)
                        {
                          v177 = 2 * v176;
                        }

                        else
                        {
                          v177 = 1;
                        }

                        if (v176 >= v177)
                        {
                          v177 = *(a3 + 4);
                        }

                        else
                        {
                          if (v177)
                          {
                            v178 = btAlignedAllocInternal(8 * v177, 16);
                            v176 = *(a3 + 4);
                          }

                          else
                          {
                            v178 = 0;
                          }

                          if (v176 >= 1)
                          {
                            v179 = 0;
                            do
                            {
                              *(v178 + v179) = *(*(a3 + 16) + v179);
                              v179 += 8;
                            }

                            while (8 * v176 != v179);
                          }

                          v180 = *(a3 + 16);
                          if (v180 && *(a3 + 24) == 1)
                          {
                            btAlignedFreeInternal(v180);
                            v176 = *(a3 + 4);
                          }

                          *(a3 + 24) = 1;
                          *(a3 + 16) = v178;
                          *(a3 + 8) = v177;
                          v42 = v276;
                        }
                      }

                      *(*(a3 + 16) + 8 * v176) = v175;
                      v173 = v176 + 1;
                      *(a3 + 4) = v173;
                      v174 = *v41;
                    }

                    while (*v41 != v42[2]);
                    v169 = v177;
                    v26 = v241;
                  }

                  if (v173 == v169)
                  {
                    if (v169)
                    {
                      v181 = 2 * v169;
                    }

                    else
                    {
                      v181 = 1;
                    }

                    if (v169 >= v181)
                    {
                      v173 = v169;
                    }

                    else
                    {
                      if (v181)
                      {
                        v182 = btAlignedAllocInternal(8 * v181, 16);
                        v169 = *(a3 + 4);
                      }

                      else
                      {
                        v182 = 0;
                      }

                      if (v169 >= 1)
                      {
                        v183 = 0;
                        do
                        {
                          *(v182 + v183) = *(*(a3 + 16) + v183);
                          v183 += 8;
                        }

                        while (8 * v169 != v183);
                      }

                      v184 = *(a3 + 16);
                      if (v184 && *(a3 + 24) == 1)
                      {
                        btAlignedFreeInternal(v184);
                        v169 = *(a3 + 4);
                      }

                      *(a3 + 24) = 1;
                      *(a3 + 16) = v182;
                      v173 = v169;
                      *(a3 + 8) = v181;
                    }

                    v26 = v241;
                  }

                  *(*(a3 + 16) + 8 * v173) = 0;
                  *(a3 + 4) = v173 + 1;
                }
              }

              else
              {
                *v41 = v167;
                v167[1] = v41;
              }
            }

            v41[4] = v7;
            *(v41[2] + 32) = *(v28 + 32);
            if (!v40)
            {
              v40 = v41;
            }

            continue;
          }
        }

        v161 = btConvexHullInternal::newEdgePair(a1, *(v274 + 24), v31);
        if (v50)
        {
          v41 = v161;
          if (!v42)
          {
LABEL_122:
            if (v32)
            {
              v164 = v41[2];
              v165 = *(v28 + 16);
            }

            else
            {
              v165 = *(v28 + 16);
              v166 = *(v165 + 8);
              v164 = v41[2];
              *v166 = v164;
              v164[1] = v166;
            }

            *v164 = v165;
            *(v165 + 8) = v164;
            goto LABEL_126;
          }

          v162 = *(v274 + 16);
        }

        else
        {
          v162 = *(v274 + 16);
          v163 = *v162;
          *v161 = *v162;
          *(v163 + 8) = v161;
          v41 = v161;
        }

        *v162 = v41;
        v41[1] = v162;
        goto LABEL_122;
      }

      v53 = *(v28 + 16);
      v54 = *(v28 + 24);
      v55 = v53[1];
      v259 = v40;
      if (v55 == v53)
      {
        v55 = 0;
      }

      else
      {
        v56 = *v53;
        *v55 = *v53;
        *(v56 + 8) = v55;
        *v53 = v53;
        v53[1] = v53;
      }

      v258 = v54;
      *(v54 + 16) = v55;
      v57 = *(v28 + 32);
      v59 = v57[15];
      v58 = v57[16];
      v61 = v57[10];
      v60 = v57[11];
      v62 = v57[12];
      v63 = v57[14];
      v64 = v58 * v60 - v59 * v62;
      v65 = v63 * v62 - v61 * v58;
      v66 = v61 * v59 - v63 * v60;
      v67 = v53[4];
      v68 = v67[15];
      v69 = v67[16];
      v257 = v53;
      v70 = v67[10];
      v71 = v67[11];
      v72 = v67[12];
      v73 = v67[14];
      v74 = v69 * v71 - v68 * v72;
      v75 = v73 * v72 - v70 * v69;
      v76 = v70 * v68 - v73 * v71;
      v77 = v7[10];
      v78 = v7[11];
      v79 = v7[12];
      v80 = v7[14];
      v81 = v7[15];
      v82 = v7[16];
      v83 = v80 * v64 + v81 * v65 + v82 * v66;
      v270 = v83;
      v272 = v77 * v64 + v78 * v65 + v79 * v66;
      v84 = v77 * v74 + v78 * v75 + v79 * v76;
      v269 = v84;
      v266 = (v57[6] - v263) * v64 + (v57[7] - v265) * v65 + (v57[8] - v264) * v66;
      v267 = (v67[6] - v263) * v74 + (v67[7] - v265) * v75 + (v67[8] - v264) * v76;
      v85 = v80 * v74 + v81 * v75 + v82 * v76;
      v260 = v85;
      v86 = btConvexHullInternal::Int128::mul(v272, v85);
      v88 = v87;
      v89 = btConvexHullInternal::Int128::mul(v83, v84);
      v91 = v88 + ~v90;
      if (!v89)
      {
        v91 = v88 - v90;
      }

      if (v86 - v89 < v86)
      {
        ++v91;
      }

      v255 = v91;
      v256 = v86 - v89;
      v278.i64[0] = v86 - v89;
      v278.i64[1] = v91;
      btConvexHullInternal::Pool<btConvexHullInternal::Vertex>::newObject(&a1[2]);
      v246 = v92;
      *(v92 + 116) = -1;
      v93 = v7[10];
      v94 = btConvexHullInternal::Int128::mul(v266 * v93, v85);
      v254 = v95;
      v96 = btConvexHullInternal::Int128::mul(v267 * v93, v270);
      v250 = v97;
      v252 = v94 - v96;
      v98 = v7[14];
      v247 = btConvexHullInternal::Int128::mul(v267 * v98, v272);
      v244 = v99;
      v100 = btConvexHullInternal::Int128::mul(v266 * v98, v269);
      v102 = v101;
      v103 = v7;
      v105 = btConvexHullInternal::Int128::operator*(&v278, v263, v104);
      v107 = v254 - v250;
      if (!v96)
      {
        ++v107;
      }

      v108 = v107 + v244 - v102;
      if (v252 < v94)
      {
        ++v108;
      }

      v109 = v105 + v247 + v252 - v100;
      v253 = (__PAIR128__((__PAIR128__(v108 + v106 - 2, v247) + __PAIR128__(v100 == 0, v252)) >> 64, v105) + __PAIR128__(v247 + v252 >= v100, v247 + v252 - v100)) >> 64;
      v110 = v7[11];
      v248 = btConvexHullInternal::Int128::mul(v266 * v110, v260);
      v251 = v111;
      v112 = btConvexHullInternal::Int128::mul(v267 * v110, v270);
      v245 = v113;
      v114 = v248 - v112;
      v115 = v7[15];
      v116 = btConvexHullInternal::Int128::mul(v267 * v115, v272);
      v242 = v117;
      v243 = v116;
      v118 = btConvexHullInternal::Int128::mul(v266 * v115, v269);
      v120 = v119;
      v122 = btConvexHullInternal::Int128::operator*(&v278, v265, v121);
      v124 = v251 - v245;
      if (!v112)
      {
        ++v124;
      }

      v125 = v124 + v242 - v120;
      if (v114 < v248)
      {
        ++v125;
      }

      v249 = __PAIR128__((__PAIR128__(v125 + v123 - 2, v243) + __PAIR128__(v118 == 0, v114)) >> 64, v122) + __PAIR128__(v243 + v114 >= v118, v243 + v114 - v118);
      v126 = v103[12];
      v127 = btConvexHullInternal::Int128::mul(v266 * v126, v260);
      v261 = v128;
      v129 = btConvexHullInternal::Int128::mul(v267 * v126, v270);
      v271 = v130;
      v131 = v127 - v129;
      v132 = v103[16];
      v273 = btConvexHullInternal::Int128::mul(v267 * v132, v272);
      v268 = v133;
      v134 = btConvexHullInternal::Int128::mul(v266 * v132, v269);
      v136 = v135;
      v138 = btConvexHullInternal::Int128::operator*(&v278, v264, v137);
      v140 = v261 - v271;
      if (!v129)
      {
        ++v140;
      }

      v141 = v140 + v268 - v136;
      if (v131 < v127)
      {
        ++v141;
      }

      *(v246 + 40) = v109;
      *(v246 + 48) = v253;
      *(v246 + 56) = v249;
      *(v246 + 72) = v138 + v273 + v131 - v134;
      *(v246 + 64) = *(&v249 + 1);
      *(v246 + 80) = (__PAIR128__((__PAIR128__(v141 + v139 - 2, v273) + __PAIR128__(v134 == 0, v131)) >> 64, v138) + __PAIR128__(v273 + v131 >= v134, v273 + v131 - v134)) >> 64;
      *(v246 + 88) = v256;
      *(v246 + 96) = v255;
      v142 = btConvexHullInternal::Int128::toScalar((v246 + 40));
      *(v246 + 104) = (v142 / btConvexHullInternal::Int128::toScalar((v246 + 88)));
      v143 = btConvexHullInternal::Int128::toScalar((v246 + 56));
      *(v246 + 108) = (v143 / btConvexHullInternal::Int128::toScalar((v246 + 88)));
      v144 = btConvexHullInternal::Int128::toScalar((v246 + 72));
      *(v246 + 112) = (v144 / btConvexHullInternal::Int128::toScalar((v246 + 88)));
      *(v28 + 24) = v246;
      *(v246 + 16) = v257;
      v145 = *(a3 + 4);
      v146 = *(a3 + 8);
      if (v145 == v146)
      {
        if (v145)
        {
          v146 = 2 * v145;
        }

        else
        {
          v146 = 1;
        }

        if (v145 < v146)
        {
          v7 = v240;
          v147 = v258;
          v40 = v259;
          if (v146)
          {
            v148 = btAlignedAllocInternal(8 * v146, 16);
            v145 = *(a3 + 4);
          }

          else
          {
            v148 = 0;
          }

          if (v145 >= 1)
          {
            v149 = 0;
            do
            {
              *(v148 + v149) = *(*(a3 + 16) + v149);
              v149 += 8;
            }

            while (8 * v145 != v149);
          }

          v150 = *(a3 + 16);
          if (v150 && *(a3 + 24) == 1)
          {
            btAlignedFreeInternal(v150);
            v145 = *(a3 + 4);
          }

          *(a3 + 24) = 1;
          *(a3 + 16) = v148;
          *(a3 + 8) = v146;
          goto LABEL_81;
        }

        v146 = *(a3 + 4);
      }

      v7 = v240;
      v147 = v258;
      v40 = v259;
LABEL_81:
      v42 = v276;
      *(*(a3 + 16) + 8 * v145) = v246;
      v151 = v145 + 1;
      *(a3 + 4) = v151;
      if (v151 == v146)
      {
        if (v146)
        {
          v152 = 2 * v146;
        }

        else
        {
          v152 = 1;
        }

        if (v146 >= v152)
        {
          v152 = v146;
          v151 = v146;
        }

        else
        {
          if (v152)
          {
            v153 = btAlignedAllocInternal(8 * v152, 16);
            v146 = *(a3 + 4);
          }

          else
          {
            v153 = 0;
          }

          if (v146 >= 1)
          {
            v154 = 0;
            do
            {
              *(v153 + v154) = *(*(a3 + 16) + v154);
              v154 += 8;
            }

            while (8 * v146 != v154);
          }

          v155 = *(a3 + 16);
          if (v155 && *(a3 + 24) == 1)
          {
            btAlignedFreeInternal(v155);
            v146 = *(a3 + 4);
          }

          *(a3 + 24) = 1;
          *(a3 + 16) = v153;
          v151 = v146;
          *(a3 + 8) = v152;
          v42 = v276;
        }
      }

      else
      {
        v152 = v146;
      }

      *(*(a3 + 16) + 8 * v151) = v147;
      v156 = v151 + 1;
      *(a3 + 4) = v156;
      if (v156 == v152)
      {
        if (v152)
        {
          v157 = 2 * v152;
        }

        else
        {
          v157 = 1;
        }

        if (v152 >= v157)
        {
          v156 = v152;
        }

        else
        {
          if (v157)
          {
            v158 = btAlignedAllocInternal(8 * v157, 16);
            v152 = *(a3 + 4);
          }

          else
          {
            v158 = 0;
          }

          if (v152 >= 1)
          {
            v159 = 0;
            do
            {
              *(v158 + v159) = *(*(a3 + 16) + v159);
              v159 += 8;
            }

            while (8 * v152 != v159);
          }

          v160 = *(a3 + 16);
          if (v160 && *(a3 + 24) == 1)
          {
            btAlignedFreeInternal(v160);
            v152 = *(a3 + 4);
          }

          *(a3 + 24) = 1;
          *(a3 + 16) = v158;
          v156 = v152;
          *(a3 + 8) = v157;
          v42 = v276;
        }
      }

      *(*(a3 + 16) + 8 * v156) = 0;
      *(a3 + 4) = v156 + 1;
      v26 = v241;
      v50 = v275;
      goto LABEL_115;
    }

    break;
  }

  v45 = v43;
  while (1)
  {
    v46 = *v45;
    if (*v45 == v43)
    {
      return 1;
    }

    v28 = v45[2];
    btConvexHullInternal::Vertex::dot(*(v46 + 24), &v282, v31, &v278);
    v48 = btConvexHullInternal::Rational128::compare(&v278, v26, v47);
    v45 = v46;
    if ((v48 & 0x80000000) == 0)
    {
      v42 = v41;
      goto LABEL_39;
    }
  }
}

double btConvexHullInternal::Vertex::dot@<D0>(int *a1@<X0>, uint64_t *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if ((a1[29] & 0x80000000) == 0)
  {
    v7 = *a2 * a1[26] + a2[1] * a1[27] + a2[2] * a1[28];
    if (v7 < 1)
    {
      if ((v7 & 0x8000000000000000) == 0)
      {
        *(a4 + 32) = 0;
        *a4 = 0;
        *(a4 + 8) = 0;
        goto LABEL_11;
      }

      *(a4 + 32) = -1;
      v7 = -v7;
    }

    else
    {
      *(a4 + 32) = 1;
    }

    *a4 = v7;
    *(a4 + 8) = 0;
LABEL_11:
    *&result = 1;
    *(a4 + 16) = xmmword_21C2816A0;
    *(a4 + 36) = 1;
    return result;
  }

  v8 = btConvexHullInternal::Int128::operator*((a1 + 10), *a2, a3);
  v10 = v9;
  v12 = btConvexHullInternal::Int128::operator*((a1 + 14), a2[1], v11);
  v15 = __CFADD__(v12, v8);
  v16 = v12 + v8;
  v17 = v15;
  v18 = v13 + v10;
  v19 = btConvexHullInternal::Int128::operator*((a1 + 18), a2[2], v14);
  v22 = __PAIR128__(v18 + v20, v19) + __PAIR128__(v17, v16);
  btConvexHullInternal::Rational128::Rational128(a4, &v22, (a1 + 22));
  return result;
}

float btConvexHullComputer::compute(btConvexHullComputer *this, char *a2, char a3, int a4, int a5, float a6, double a7, double a8, int32x4_t a9, int32x4_t a10)
{
  if (a5 <= 0)
  {
    v81 = *(this + 2);
    if (v81 && *(this + 24) == 1)
    {
      btAlignedFreeInternal(v81);
    }

    *(this + 24) = 1;
    *(this + 2) = 0;
    *(this + 1) = 0;
    *(this + 2) = 0;
    v82 = *(this + 6);
    if (v82 && *(this + 56) == 1)
    {
      btAlignedFreeInternal(v82);
    }

    *(this + 56) = 1;
    *(this + 6) = 0;
    *(this + 9) = 0;
    *(this + 10) = 0;
    v83 = *(this + 10);
    if (v83 && *(this + 88) == 1)
    {
      btAlignedFreeInternal(v83);
    }

    *(this + 88) = 1;
    *(this + 10) = 0;
    *(this + 17) = 0;
    *(this + 18) = 0;
    return 0.0;
  }

  v11 = *&a7;
  v93 = 0;
  v92 = 0u;
  v102 = 1;
  v94 = 256;
  memset(v95, 0, sizeof(v95));
  v96 = 256;
  memset(v97, 0, sizeof(v97));
  v101 = 0;
  v99 = 0;
  v100 = 0;
  v98 = 256;
  btConvexHullInternal::compute(v91, a2, a3, a4, a5, 0.0, a7, a8, a9, a10);
  v13 = 0.0;
  if (a6 > 0.0)
  {
    v13 = btConvexHullInternal::shrink(v91, a6, v11);
    if (v13 < 0.0)
    {
      v14 = *(this + 2);
      if (v14 && *(this + 24) == 1)
      {
        btAlignedFreeInternal(v14);
      }

      *(this + 24) = 1;
      *(this + 2) = 0;
      *(this + 1) = 0;
      *(this + 2) = 0;
      v15 = *(this + 6);
      if (v15 && *(this + 56) == 1)
      {
        btAlignedFreeInternal(v15);
      }

      *(this + 56) = 1;
      *(this + 6) = 0;
      *(this + 9) = 0;
      *(this + 10) = 0;
      v16 = *(this + 10);
      if (v16 && *(this + 88) == 1)
      {
        btAlignedFreeInternal(v16);
      }

      *(this + 88) = 1;
      *(this + 10) = 0;
      *(this + 17) = 0;
      *(this + 18) = 0;
      goto LABEL_130;
    }
  }

  if ((*(this + 1) & 0x80000000) != 0 && (*(this + 2) & 0x80000000) != 0)
  {
    v17 = *(this + 2);
    if (v17 && *(this + 24) == 1)
    {
      btAlignedFreeInternal(v17);
    }

    *(this + 24) = 1;
    *(this + 2) = 0;
    *(this + 2) = 0;
  }

  *(this + 1) = 0;
  v18 = *(this + 9);
  if ((v18 & 0x80000000) != 0)
  {
    if ((*(this + 10) & 0x80000000) != 0)
    {
      v19 = *(this + 6);
      if (v19 && *(this + 56) == 1)
      {
        btAlignedFreeInternal(v19);
      }

      *(this + 56) = 1;
      *(this + 6) = 0;
      *(this + 10) = 0;
    }

    v20 = 12 * v18;
    v21 = v18 + 1;
    do
    {
      v22 = *(this + 6) + v20;
      *(v22 + 8) = 0;
      *v22 = 0;
      v20 += 12;
      LODWORD(v22) = v21++;
    }

    while (v22);
  }

  *(this + 9) = 0;
  v23 = *(this + 17);
  if ((v23 & 0x80000000) != 0)
  {
    if ((*(this + 18) & 0x80000000) != 0)
    {
      v24 = *(this + 10);
      if (v24 && *(this + 88) == 1)
      {
        btAlignedFreeInternal(v24);
      }

      *(this + 88) = 1;
      *(this + 10) = 0;
      *(this + 18) = 0;
    }

    bzero((*(this + 10) + 4 * v23), 4 * ~v23 + 4);
  }

  *(this + 17) = 0;
  v90 = 1;
  v89 = 0;
  v87 = 0;
  v88 = 0;
  getVertexCopy(v103, v86);
  v25 = v87;
  if (v87 <= 0)
  {
    v68 = v89;
    if (v89)
    {
      goto LABEL_128;
    }

    goto LABEL_130;
  }

  v26 = 0;
  do
  {
    v27 = *(v89 + v26);
    btConvexHullInternal::getCoordinates(v91, v27, &v85);
    v28 = *(this + 1);
    if (v28 == *(this + 2))
    {
      v29 = v28 ? 2 * v28 : 1;
      if (v28 < v29)
      {
        if (v29)
        {
          v30 = btAlignedAllocInternal(16 * v29, 16);
          v28 = *(this + 1);
        }

        else
        {
          v30 = 0;
        }

        if (v28 >= 1)
        {
          v31 = 0;
          v32 = 16 * v28;
          do
          {
            *(v30 + v31) = *(*(this + 2) + v31);
            v31 += 16;
          }

          while (v32 != v31);
        }

        v33 = *(this + 2);
        if (v33 && *(this + 24) == 1)
        {
          btAlignedFreeInternal(v33);
        }

        *(this + 24) = 1;
        *(this + 2) = v30;
        *(this + 2) = v29;
        v28 = *(this + 1);
      }
    }

    *(*(this + 2) + 16 * v28) = v85;
    ++*(this + 1);
    v34 = *(v27 + 16);
    if (v34)
    {
      v35 = -1;
      v36 = *(v27 + 16);
      v37 = 0xFFFFFFFFLL;
      do
      {
        if ((v36[5] & 0x80000000) != 0)
        {
          v38 = *(this + 9);
          v39 = v38;
          if (v38 == *(this + 10))
          {
            v40 = v38 ? 2 * v38 : 1;
            v39 = *(this + 9);
            if (v38 < v40)
            {
              if (v40)
              {
                v41 = btAlignedAllocInternal(12 * v40, 16);
              }

              else
              {
                v41 = 0;
              }

              v42 = *(this + 9);
              if (v42 >= 1)
              {
                v43 = 0;
                v44 = 12 * v42;
                do
                {
                  v45 = v41 + v43;
                  v46 = (*(this + 6) + v43);
                  v47 = *v46;
                  *(v45 + 8) = *(v46 + 2);
                  *v45 = v47;
                  v43 += 12;
                }

                while (v44 != v43);
              }

              v48 = *(this + 6);
              if (v48 && *(this + 56) == 1)
              {
                btAlignedFreeInternal(v48);
              }

              *(this + 56) = 1;
              *(this + 6) = v41;
              *(this + 10) = v40;
              v39 = *(this + 9);
            }
          }

          v49 = *(this + 6) + 12 * v39;
          *(v49 + 8) = 0;
          *v49 = 0;
          v50 = *(this + 10);
          v51 = *(this + 9) + 1;
          *(this + 9) = v51;
          if (v51 == v50)
          {
            v52 = v51 ? 2 * v51 : 1;
            if (v51 < v52)
            {
              if (v52)
              {
                v53 = btAlignedAllocInternal(12 * v52, 16);
                v51 = *(this + 9);
              }

              else
              {
                v53 = 0;
              }

              if (v51 >= 1)
              {
                v54 = 0;
                v55 = 12 * v51;
                do
                {
                  v56 = v53 + v54;
                  v57 = (*(this + 6) + v54);
                  v58 = *v57;
                  *(v56 + 8) = *(v57 + 2);
                  *v56 = v58;
                  v54 += 12;
                }

                while (v55 != v54);
              }

              v59 = *(this + 6);
              if (v59 && *(this + 56) == 1)
              {
                btAlignedFreeInternal(v59);
              }

              *(this + 56) = 1;
              *(this + 6) = v53;
              *(this + 10) = v52;
              v51 = *(this + 9);
            }
          }

          v60 = *(this + 6) + 12 * v51;
          *(v60 + 8) = 0;
          *v60 = 0;
          ++*(this + 9);
          *(v36 + 10) = v38;
          v61 = v36[3];
          *(v36[2] + 40) = v38 + 1;
          v62 = *(this + 6);
          v63 = v62 + 12 * v38;
          v64 = v62 + 12 * (v38 + 1);
          *(v63 + 4) = 1;
          *(v64 + 4) = -1;
          *(v63 + 8) = getVertexCopy(v61, v86);
          *(v64 + 8) = v26;
        }

        v65 = *(v36 + 10);
        v66 = v65;
        if ((v35 & 0x80000000) == 0)
        {
          *(*(this + 6) + 12 * v65) = v35 - v65;
          v66 = v37;
        }

        v36 = *v36;
        v35 = v65;
        v37 = v66;
      }

      while (v36 != v34);
      *(*(this + 6) + 12 * v66) = v65 - v66;
      v25 = v87;
    }

    ++v26;
  }

  while (v26 < v25);
  v67 = 0;
  v68 = v89;
  do
  {
    v69 = v68[v67];
    v70 = v69[2];
    if (v70)
    {
      v71 = v69[2];
      while (1)
      {
        v72 = *(v71 + 10);
        if ((v72 & 0x80000000) == 0)
        {
          break;
        }

LABEL_113:
        v71 = *v71;
        if (v71 == v70)
        {
          goto LABEL_114;
        }
      }

      LODWORD(v73) = *(this + 17);
      if (v73 != *(this + 18) || (!v73 ? (v74 = 1) : (v74 = 2 * v73), v73 >= v74))
      {
LABEL_111:
        *(*(this + 10) + 4 * v73) = v72;
        ++*(this + 17);
        v80 = v71;
        do
        {
          *(v80 + 10) = -1;
          v80 = *(v80[2] + 8);
        }

        while (v80 != v71);
        goto LABEL_113;
      }

      if (v74)
      {
        v75 = btAlignedAllocInternal(4 * v74, 16);
        LODWORD(v73) = *(this + 17);
      }

      else
      {
        v75 = 0;
      }

      v76 = *(this + 10);
      if (v73 < 1)
      {
        if (!v76)
        {
LABEL_110:
          *(this + 88) = 1;
          *(this + 10) = v75;
          *(this + 18) = v74;
          LODWORD(v73) = *(this + 17);
          v72 = *(v71 + 10);
          goto LABEL_111;
        }
      }

      else
      {
        v73 = v73;
        v77 = v75;
        v78 = *(this + 10);
        do
        {
          v79 = *v78++;
          *v77++ = v79;
          --v73;
        }

        while (v73);
      }

      if (*(this + 88) == 1)
      {
        btAlignedFreeInternal(v76);
      }

      goto LABEL_110;
    }

LABEL_114:
    ++v67;
  }

  while (v67 != v26);
  if (!v68)
  {
    goto LABEL_130;
  }

LABEL_128:
  if (v90 == 1)
  {
    btAlignedFreeInternal(v68);
  }

LABEL_130:
  if (v101 && v102 == 1)
  {
    btAlignedFreeInternal(v101);
  }

  v102 = 1;
  v101 = 0;
  v99 = 0;
  v100 = 0;
  btConvexHullInternal::Pool<btConvexHullInternal::Face>::~Pool(v97);
  btConvexHullInternal::Pool<btConvexHullInternal::Face>::~Pool(v95);
  btConvexHullInternal::Pool<btConvexHullInternal::Face>::~Pool(&v92);
  return v13;
}

uint64_t getVertexCopy(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 120);
  if ((v2 & 0x80000000) != 0)
  {
    v2 = *(a2 + 4);
    v5 = *(a2 + 8);
    *(a1 + 120) = v2;
    v6 = v2;
    if (v2 == v5)
    {
      v7 = v2 ? 2 * v2 : 1;
      v6 = v2;
      if (v2 < v7)
      {
        if (v7)
        {
          v8 = btAlignedAllocInternal(8 * v7, 16);
          v6 = *(a2 + 4);
        }

        else
        {
          v8 = 0;
          v6 = v2;
        }

        if (v6 >= 1)
        {
          v9 = 0;
          do
          {
            *(v8 + v9) = *(*(a2 + 16) + v9);
            v9 += 8;
          }

          while (8 * v6 != v9);
        }

        v10 = *(a2 + 16);
        if (v10 && *(a2 + 24) == 1)
        {
          btAlignedFreeInternal(v10);
          v6 = *(a2 + 4);
        }

        *(a2 + 24) = 1;
        *(a2 + 16) = v8;
        *(a2 + 8) = v7;
      }
    }

    *(*(a2 + 16) + 8 * v6) = a1;
    *(a2 + 4) = v6 + 1;
  }

  return v2;
}

uint64_t btConvexHullInternal::Rational128::Rational128(uint64_t this, const btConvexHullInternal::Int128 *a2, const btConvexHullInternal::Int128 *a3)
{
  v3 = *(this + 8);
  if (v3 < 0)
  {
    v4 = -1;
    *(this + 32) = -1;
    v5 = *(a2 + 1);
    if (*a2)
    {
      v6 = ~v5;
    }

    else
    {
      v6 = -v5;
    }

    *this = -*a2;
    *(this + 8) = v6;
  }

  else
  {
    if (v3)
    {
      v4 = 1;
    }

    else
    {
      v4 = *this != 0;
    }

    *(this + 32) = v4;
    *this = *a2;
  }

  v7 = *(this + 24);
  if (v7 < 0)
  {
    *(this + 32) = -v4;
    v8 = *(this + 16);
    v9 = -v8;
    if (v8)
    {
      v10 = ~v7;
    }

    else
    {
      v10 = -v7;
    }

    *(this + 16) = v9;
    *(this + 24) = v10;
  }

  else
  {
    *(this + 16) = *a3;
  }

  *(this + 36) = 0;
  return this;
}

uint64_t *btConvexHullInternal::Pool<btConvexHullInternal::Face>::~Pool(uint64_t *a1)
{
  for (i = *a1; *a1; i = *a1)
  {
    *a1 = *(i + 16);
    btAlignedFreeInternal(*i);
    btAlignedFreeInternal(i);
  }

  return a1;
}

uint64_t btAlignedObjectArray<btConvexHullInternal::Point32>::quickSortInternal<pointCmp>(uint64_t result, uint64_t a2, uint64_t i, int a4)
{
  v7 = result;
  do
  {
    v8 = i;
    v9 = (*(v7 + 16) + 16 * ((i + a4) / 2));
    v10 = *v9;
    v11 = v9[1];
    v12 = v9[2];
    LODWORD(j) = a4;
    do
    {
      v14 = *(v7 + 16);
      v15 = (v14 + 16 * i);
      for (i = i; ; ++i)
      {
        v16 = v15[1];
        if (v16 >= v11 && (v16 != v11 || *v15 >= v10 && (*v15 != v10 || v15[2] >= v12)))
        {
          break;
        }

        v15 += 4;
      }

      v17 = 16 * j;
      for (j = j; ; --j)
      {
        v18 = *(v14 + v17 + 4);
        if (v11 >= v18)
        {
          if (v11 != v18)
          {
            break;
          }

          v19 = *(v14 + v17);
          if (v10 >= v19 && (v10 != v19 || v12 >= *(v14 + v17 + 8)))
          {
            break;
          }
        }

        v17 -= 16;
      }

      if (i <= j)
      {
        v20 = *v15;
        *v15 = *(v14 + v17);
        *(*(v7 + 16) + v17) = v20;
        i = (i + 1);
        LODWORD(j) = j - 1;
      }
    }

    while (i <= j);
    if (j > v8)
    {
      result = btAlignedObjectArray<btConvexHullInternal::Point32>::quickSortInternal<pointCmp>(v7, a2, v8, j);
    }
  }

  while (i < a4);
  return result;
}

void btGeometryUtil::getPlaneEquationsFromVertices(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 4);
  if (v2 >= 1)
  {
    v5 = 0;
    v43 = 2;
    v42 = 1;
    do
    {
      v41 = v5 + 1;
      if (v5 + 1 < v2)
      {
        v6 = *(a1 + 16);
        v7 = v42;
        v45 = v43;
        do
        {
          v44 = v7 + 1;
          if (v2 > v7 + 1)
          {
            v46 = *(a1 + 16);
            v8 = v45;
            do
            {
              v9 = *(v6 + 16 * v5);
              v10 = vsubq_f32(*(v46 + 16 * v7), v9);
              v10.i32[3] = 0;
              v11 = vsubq_f32(*(*(a1 + 16) + 16 * v8), v9);
              v11.i32[3] = 0;
              v12 = vmlaq_f32(vnegq_f32(vmulq_f32(vextq_s8(vextq_s8(v10, v10, 0xCuLL), v10, 8uLL), v11)), v10, vextq_s8(vextq_s8(v11, v11, 0xCuLL), v11, 8uLL));
              v13 = vextq_s8(vextq_s8(v12, v12, 0xCuLL), v12, 8uLL);
              v13.i32[3] = 0;
              v14 = 1.0;
              v15 = 1;
              v47 = v13;
              do
              {
                v16 = vmulq_n_f32(v13, v14);
                v16.i32[3] = 0;
                v17 = v15;
                v18 = vmulq_f32(v16, v16);
                v19 = vadd_f32(vpadd_f32(*v18.i8, *v18.i8), *&vextq_s8(v18, v18, 8uLL)).f32[0];
                if (v19 > 0.0001)
                {
                  v20 = vmulq_n_f32(v16, 1.0 / sqrtf(v19));
                  v21 = *(a2 + 4);
                  if (v21 < 1)
                  {
                    goto LABEL_15;
                  }

                  v22 = *(a2 + 16);
                  v23 = vmulq_f32(*v22, v20);
                  if (vadd_f32(*&vextq_s8(v23, v23, 8uLL), vpadd_f32(*v23.i8, *v23.i8)).f32[0] <= 0.999)
                  {
                    v24 = 1;
                    do
                    {
                      v25 = v24;
                      if (v21 == v24)
                      {
                        break;
                      }

                      v26 = vmulq_f32(v22[v24++], v20);
                    }

                    while (vadd_f32(*&vextq_s8(v26, v26, 8uLL), vpadd_f32(*v26.i8, *v26.i8)).f32[0] <= 0.999);
                    if (v25 >= v21)
                    {
LABEL_15:
                      v27 = vmulq_f32(*(v6 + 16 * v5), v20);
                      v28 = vadd_f32(*&vextq_s8(v27, v27, 8uLL), vpadd_f32(*v27.i8, *v27.i8));
                      v20.f32[3] = -v28.f32[0];
                      v29 = *(a1 + 4);
                      if (v29 < 1)
                      {
                        goto LABEL_25;
                      }

                      v30 = *(a1 + 16);
                      v31 = vmulq_f32(*v30, v20);
                      if (vsub_f32(vadd_f32(*&vextq_s8(v31, v31, 8uLL), vpadd_f32(*v31.i8, *v31.i8)), v28).f32[0] <= 0.01)
                      {
                        v32 = 1;
                        do
                        {
                          v33 = v32;
                          if (v29 == v32)
                          {
                            break;
                          }

                          v34 = vmulq_f32(v30[v32++], v20);
                        }

                        while (vsub_f32(vadd_f32(*&vextq_s8(v34, v34, 8uLL), vpadd_f32(*v34.i8, *v34.i8)), v28).f32[0] <= 0.01);
                        if (v33 >= v29)
                        {
LABEL_25:
                          if (v21 == *(a2 + 8))
                          {
                            v35 = v21 ? 2 * v21 : 1;
                            if (v21 < v35)
                            {
                              v48 = v20;
                              if (v35)
                              {
                                v36 = btAlignedAllocInternal(16 * v35, 16);
                                v13 = v47;
                                v20 = v48;
                                v37 = v36;
                                LODWORD(v21) = *(a2 + 4);
                              }

                              else
                              {
                                v37 = 0;
                              }

                              if (v21 >= 1)
                              {
                                v38 = 0;
                                v39 = 16 * v21;
                                do
                                {
                                  *(v37 + v38) = *(*(a2 + 16) + v38);
                                  v38 += 16;
                                }

                                while (v39 != v38);
                              }

                              v40 = *(a2 + 16);
                              if (v40)
                              {
                                if (*(a2 + 24) == 1)
                                {
                                  btAlignedFreeInternal(v40);
                                  v13 = v47;
                                  v20 = v48;
                                }
                              }

                              *(a2 + 24) = 1;
                              *(a2 + 16) = v37;
                              *(a2 + 8) = v35;
                              LODWORD(v21) = *(a2 + 4);
                            }
                          }

                          *(*(a2 + 16) + 16 * v21) = v20;
                          ++*(a2 + 4);
                        }
                      }
                    }
                  }
                }

                v15 = 0;
                v14 = -1.0;
              }

              while ((v17 & 1) != 0);
              ++v8;
            }

            while (v2 > v8);
          }

          ++v45;
          ++v7;
        }

        while (v44 != v2);
      }

      ++v42;
      ++v43;
      ++v5;
    }

    while (v41 != v2);
  }
}

void btGeometryUtil::getVerticesFromPlaneEquations(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 4);
  if (v2 >= 1)
  {
    v5 = 0;
    v48 = 2;
    v47 = 1;
    do
    {
      v46 = v5 + 1;
      if (v5 + 1 < v2)
      {
        v6 = *(a1 + 16);
        v8 = v47;
        v7 = v48;
        do
        {
          v9 = v8 + 1;
          if (v2 > v8 + 1)
          {
            v10 = *(a1 + 16);
            v11 = v7;
            do
            {
              v12 = *(a1 + 16);
              v13 = *(v10 + 16 * v8);
              v14 = v12[v11];
              v15 = vextq_s8(vextq_s8(v13, v13, 0xCuLL), v13, 8uLL);
              v16 = vextq_s8(vextq_s8(v14, v14, 0xCuLL), v14, 8uLL);
              v17 = vmlaq_f32(vnegq_f32(vmulq_f32(v15, v14)), v13, v16);
              v18 = vextq_s8(vextq_s8(v17, v17, 0xCuLL), v17, 8uLL);
              v18.i32[3] = 0;
              v19 = vmulq_f32(v18, v18);
              if (vadd_f32(*&vextq_s8(v19, v19, 8uLL), vpadd_f32(*v19.i8, *v19.i8)).f32[0] > 0.0001)
              {
                v20 = *(v6 + 16 * v5);
                v21 = vextq_s8(vextq_s8(v20, v20, 0xCuLL), v20, 8uLL);
                v22 = vmlaq_f32(vnegq_f32(vmulq_f32(v16, v20)), v14, v21);
                v23 = vextq_s8(vextq_s8(v22, v22, 0xCuLL), v22, 8uLL);
                v23.i32[3] = 0;
                v24 = vmulq_f32(v23, v23);
                if (vadd_f32(vpadd_f32(*v24.i8, *v24.i8), *&vextq_s8(v24, v24, 8uLL)).f32[0] > 0.0001)
                {
                  v25 = vmlaq_f32(vnegq_f32(vmulq_f32(v21, v13)), v20, v15);
                  v26 = vextq_s8(vextq_s8(v25, v25, 0xCuLL), v25, 8uLL);
                  v26.i32[3] = 0;
                  v27 = vmulq_f32(v26, v26);
                  if (vadd_f32(vpadd_f32(*v27.i8, *v27.i8), *&vextq_s8(v27, v27, 8uLL)).f32[0] > 0.0001)
                  {
                    v28 = vmulq_f32(v20, v18);
                    LODWORD(v29) = vadd_f32(vpadd_f32(*v28.i8, *v28.i8), *&vextq_s8(v28, v28, 8uLL)).u32[0];
                    if (fabsf(v29) > 0.000001)
                    {
                      v30 = vmulq_n_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v18, v20, 3), v23, v13, 3), v26, v14, 3), -1.0 / v29);
                      v31 = *(a1 + 4);
                      if (v31 < 1)
                      {
                        goto LABEL_17;
                      }

                      v32 = vmulq_f32(*v12, v30);
                      if ((vadd_f32(*&vextq_s8(v32, v32, 8uLL), vpadd_f32(*v32.i8, *v32.i8)).f32[0] + COERCE_FLOAT(HIDWORD(*v12))) <= 0.01)
                      {
                        v33 = 1;
                        do
                        {
                          v34 = v33;
                          if (v31 == v33)
                          {
                            break;
                          }

                          v35 = vmulq_f32(v12[v33], v30);
                          v36 = vadd_f32(*&vextq_s8(v35, v35, 8uLL), vpadd_f32(*v35.i8, *v35.i8)).f32[0] + COERCE_FLOAT(HIDWORD(*&v12[v33++]));
                        }

                        while (v36 <= 0.01);
                        if (v34 >= v31)
                        {
LABEL_17:
                          v37 = *(a2 + 4);
                          if (v37 == *(a2 + 8))
                          {
                            v38 = 2 * v37;
                            if (!v37)
                            {
                              v38 = 1;
                            }

                            if (v37 < v38)
                            {
                              v49 = v30;
                              v50 = v38;
                              if (v38)
                              {
                                v39 = v9;
                                v40 = btAlignedAllocInternal(16 * v38, 16);
                                v30 = v49;
                                v9 = v39;
                                v41 = v40;
                                v37 = *(a2 + 4);
                              }

                              else
                              {
                                v41 = 0;
                              }

                              if (v37 >= 1)
                              {
                                v42 = 0;
                                v43 = 16 * v37;
                                do
                                {
                                  *(v41 + v42) = *(*(a2 + 16) + v42);
                                  v42 += 16;
                                }

                                while (v43 != v42);
                              }

                              v44 = *(a2 + 16);
                              if (v44)
                              {
                                if (*(a2 + 24) == 1)
                                {
                                  v45 = v9;
                                  btAlignedFreeInternal(v44);
                                  v30 = v49;
                                  v9 = v45;
                                }
                              }

                              *(a2 + 24) = 1;
                              *(a2 + 16) = v41;
                              *(a2 + 8) = v50;
                              v37 = *(a2 + 4);
                            }
                          }

                          *(*(a2 + 16) + 16 * v37) = v30;
                          ++*(a2 + 4);
                        }
                      }
                    }
                  }
                }
              }

              ++v11;
            }

            while (v2 > v11);
          }

          ++v7;
          v8 = v9;
        }

        while (v9 != v2);
      }

      ++v47;
      ++v48;
      ++v5;
    }

    while (v46 != v2);
  }
}

uint64_t _maxdot_large_sel(const float *a1, const float *a2, unint64_t a3, float *a4)
{
  if ((btGetCpuCapabilities(void)::testedCapabilities & 1) == 0)
  {
    v11 = 0;
    v10 = 4;
    if (!sysctlbyname("hw.optional.neon_hpfp", &v11, &v10, 0, 0) && v11)
    {
      btGetCpuCapabilities(void)::capabilities |= 0x2000u;
    }

    btGetCpuCapabilities(void)::testedCapabilities = 1;
  }

  v8 = _maxdot_large_v1;
  if (btGetCpuCapabilities(void)::capabilities < 0x2000)
  {
    v8 = _maxdot_large_v0;
  }

  _maxdot_large = v8;
  return v8(a1, a2, a3, a4);
}

uint64_t _maxdot_large_v1(const float *a1, int32x4_t *a2, unint64_t a3, float *a4)
{
  v4 = *a2;
  v5 = vdupq_lane_s64(a2->i64[0], 0);
  v6 = vdupq_laneq_s32(*a2, 2);
  v7 = xmmword_21C280330;
  if (a3 >= 8)
  {
    v9.i64[0] = 0x7F0000007FLL;
    v9.i64[1] = 0x7F0000007FLL;
    v8.i64[0] = -1;
    v8.i64[1] = -1;
    v10 = 4;
    v11.i64[0] = 0x400000004;
    v11.i64[1] = 0x400000004;
    v12.i64[0] = 0x800000008;
    v12.i64[1] = 0x800000008;
    do
    {
      v13 = *(a1 + 4);
      v14 = *(a1 + 12);
      v15.i64[0] = *a1;
      v15.i64[1] = *(a1 + 2);
      v16.i64[0] = *(a1 + 4);
      v16.i64[1] = *(a1 + 6);
      v13.i32[0] = *(a1 + 1);
      v14.i32[0] = *(a1 + 5);
      v17 = vmlaq_f32(vpaddq_f32(vmulq_f32(v15, v5), vmulq_f32(v16, v5)), v6, vuzp1q_s32(v13, v14));
      v18 = vcgeq_f32(v9, v17);
      v19 = vmaxnmq_f32(v17, v9);
      v20 = vbslq_s8(v18, v8, v7);
      v21 = *(a1 + 4);
      v22 = *(a1 + 20);
      v23 = *(a1 + 6);
      v24 = *(a1 + 28);
      a1 += 32;
      v16.i64[0] = v21;
      v16.i64[1] = v22.i64[0];
      v25.i64[0] = v23;
      v25.i64[1] = v24.i64[0];
      v22.i32[0] = DWORD2(v21);
      v24.i32[0] = DWORD2(v23);
      v26 = vmlaq_f32(vpaddq_f32(vmulq_f32(v16, v5), vmulq_f32(v25, v5)), v6, vuzp1q_s32(v22, v24));
      v27 = vcgeq_f32(v19, v26);
      v9 = vmaxnmq_f32(v26, v19);
      v8 = vbslq_s8(v27, v20, vaddq_s32(v7, v11));
      v7 = vaddq_s32(v7, v12);
      v28 = v10 + 12;
      v10 += 8;
    }

    while (v28 <= a3);
  }

  else
  {
    v8.i64[0] = -1;
    v8.i64[1] = -1;
    v9.i64[0] = 0x7F0000007FLL;
    v9.i64[1] = 0x7F0000007FLL;
    v10 = 4;
  }

  if (v10 <= a3)
  {
    v29.i64[0] = 0x400000004;
    v29.i64[1] = 0x400000004;
    do
    {
      v30 = *(a1 + 4);
      v31 = *(a1 + 12);
      v32.i64[0] = *a1;
      v32.i64[1] = *(a1 + 2);
      v33.i64[0] = *(a1 + 4);
      v33.i64[1] = *(a1 + 6);
      v30.i32[0] = *(a1 + 1);
      v31.i32[0] = *(a1 + 5);
      a1 += 16;
      v34 = vmlaq_f32(vpaddq_f32(vmulq_f32(v32, v5), vmulq_f32(v33, v5)), v6, vuzp1q_s32(v30, v31));
      v35 = vcgeq_f32(v9, v34);
      v9 = vmaxnmq_f32(v34, v9);
      v8 = vbslq_s8(v35, v8, v7);
      v7 = vaddq_s32(v7, v29);
      v10 += 4;
    }

    while (v10 <= a3);
  }

  if ((a3 & 3) > 1)
  {
    if ((a3 & 3) != 2)
    {
      v42 = *(a1 + 4);
      v43.i64[0] = *a1;
      v43.i64[1] = *(a1 + 2);
      v42.i32[0] = *(a1 + 1);
      v44 = vmlaq_f32(vpaddq_f32(vmulq_f32(v43, v5), vdupq_lane_s64(vmulq_f32(*(a1 + 8), v4).i64[0], 0)), v6, vuzp1q_s32(v42, vdupq_laneq_s32(*(a1 + 8), 2)));
      v45 = vcgeq_f32(v9, v44);
      v9 = vmaxnmq_f32(v44, v9);
      v8 = vbslq_s8(v45, v8, v7);
      goto LABEL_15;
    }

    v38 = *a1;
    v39 = vuzp1q_s32(*a1, *(a1 + 4));
    v38.i64[1] = *(a1 + 2);
    v40 = vmulq_f32(v38, v5);
    v37 = vaddq_f32(vmlaq_f32(vuzp2q_s32(v40, v40), v6, vuzp2q_s32(v39, v39)), vuzp1q_s32(v40, v40));
    goto LABEL_13;
  }

  if ((a3 & 3) != 0)
  {
    v36 = vmulq_f32(*a1, v4);
    v37 = vaddq_f32(vaddq_f32(vdupq_lane_s32(*v36.i8, 0), vdupq_lane_s32(*v36.i8, 1)), vdupq_laneq_s32(v36, 2));
LABEL_13:
    v41 = vcgeq_f32(v9, v37);
    v9 = vmaxnmq_f32(v37, v9);
    v8 = vbslq_s8(v41, v8, v7);
  }

LABEL_15:
  v46 = vextq_s8(v9, v9, 8uLL).u64[0];
  v47 = vcge_f32(*v9.f32, v46);
  v48 = vmaxnm_f32(v46, *v9.f32);
  v49 = vbsl_s8(v47, *v8.i8, *&vextq_s8(v8, v8, 8uLL));
  v50 = vdup_lane_s32(v48, 1);
  *a4 = vmaxnm_f32(v50, v48).u32[0];
  return vbsl_s8(vcge_f32(v48, v50), v49, vdup_lane_s32(v49, 1)).u32[0];
}

float _maxdot_large_v0(const float *a1, int32x4_t *a2, unint64_t a3, float *a4)
{
  v4 = *a2;
  v5 = vdup_laneq_s32(*a2, 2);
  if (a3 >= 8)
  {
    v11 = -1;
    v7 = 0x300000002;
    v6 = 0x100000000;
    v12 = 0x7F0000007FLL;
    v10 = 4;
    v9 = 0x7F0000007FLL;
    v8 = -1;
    do
    {
      v13 = *(a1 + 4);
      v14 = *(a1 + 8);
      v15 = *(a1 + 12);
      v16 = vmul_f32(*v13.i8, *v4.f32);
      v17 = vmul_f32(*v14.i8, *v4.f32);
      v18 = vzip1_s32(*&vextq_s8(*a1, *a1, 8uLL), *&vextq_s8(v13, v13, 8uLL));
      *v13.i8 = vzip1_s32(*&vextq_s8(v14, v14, 8uLL), *&vextq_s8(v15, v15, 8uLL));
      *v14.i8 = vmla_f32(vpadd_f32(vmul_f32(*a1, *v4.f32), v16), v5, v18);
      *v15.i8 = vmla_f32(vpadd_f32(v17, vmul_f32(*v15.i8, *v4.f32)), v5, *v13.i8);
      v19 = vcge_f32(v12, *v14.i8);
      *v13.i8 = vcge_f32(v9, *v15.i8);
      v20 = vmaxnm_f32(*v14.i8, v12);
      v21 = vmaxnm_f32(*v15.i8, v9);
      v22 = *(a1 + 16);
      v23 = *(a1 + 20);
      v24 = *(a1 + 24);
      v25 = *(a1 + 28);
      a1 += 32;
      v26 = vmul_f32(*v22.i8, *v4.f32);
      v27 = vmul_f32(*v23.i8, *v4.f32);
      v28 = vmul_f32(*v24.i8, *v4.f32);
      *v22.i8 = vzip1_s32(*&vextq_s8(v22, v22, 8uLL), *&vextq_s8(v23, v23, 8uLL));
      *v23.i8 = vzip1_s32(*&vextq_s8(v24, v24, 8uLL), *&vextq_s8(v25, v25, 8uLL));
      *v24.i8 = vmla_f32(vpadd_f32(v26, v27), v5, *v22.i8);
      *v25.i8 = vmla_f32(vpadd_f32(v28, vmul_f32(*v25.i8, *v4.f32)), v5, *v23.i8);
      *v22.i8 = vcge_f32(v20, *v24.i8);
      *v23.i8 = vcge_f32(v21, *v25.i8);
      v12 = vmaxnm_f32(*v24.i8, v20);
      v9 = vmaxnm_f32(*v25.i8, v21);
      v11 = vbsl_s8(*v22.i8, vbsl_s8(v19, v11, v6), vadd_s32(v6, 0x400000004));
      v8 = vbsl_s8(*v23.i8, vbsl_s8(*v13.i8, v8, v7), vadd_s32(v7, 0x400000004));
      v6 = vadd_s32(v6, 0x800000008);
      v7 = vadd_s32(v7, 0x800000008);
      v29 = v10 + 12;
      v10 += 8;
    }

    while (v29 <= a3);
  }

  else
  {
    v6 = 0x100000000;
    v7 = 0x300000002;
    v8 = -1;
    v9 = 0x7F0000007FLL;
    v10 = 4;
    v11 = -1;
    v12 = 0x7F0000007FLL;
  }

  for (; v10 <= a3; v10 += 4)
  {
    v30 = *a1;
    v31 = *(a1 + 4);
    v32 = *(a1 + 8);
    v33 = *(a1 + 12);
    a1 += 16;
    v34 = vmul_f32(*v30.i8, *v4.f32);
    v35 = vmul_f32(*v31.i8, *v4.f32);
    v36 = vmul_f32(*v32.i8, *v4.f32);
    *v30.i8 = vzip1_s32(*&vextq_s8(v30, v30, 8uLL), *&vextq_s8(v31, v31, 8uLL));
    *v31.i8 = vzip1_s32(*&vextq_s8(v32, v32, 8uLL), *&vextq_s8(v33, v33, 8uLL));
    *v32.i8 = vmla_f32(vpadd_f32(v34, v35), v5, *v30.i8);
    *v33.i8 = vmla_f32(vpadd_f32(v36, vmul_f32(*v33.i8, *v4.f32)), v5, *v31.i8);
    *v30.i8 = vcge_f32(v12, *v32.i8);
    *v31.i8 = vcge_f32(v9, *v33.i8);
    v12 = vmaxnm_f32(*v32.i8, v12);
    v9 = vmaxnm_f32(*v33.i8, v9);
    v11 = vbsl_s8(*v30.i8, v11, v6);
    v8 = vbsl_s8(*v31.i8, v8, v7);
    v6 = vadd_s32(v6, 0x400000004);
    v7 = vadd_s32(v7, 0x400000004);
  }

  if ((a3 & 3) > 1)
  {
    if ((a3 & 3) == 2)
    {
      v39 = vmla_f32(vpadd_f32(vmul_f32(*a1, *v4.f32), vmul_f32(*(a1 + 4), *v4.f32)), v5, vzip1_s32(*&vextq_s8(*a1, *a1, 8uLL), *&vextq_s8(*(a1 + 4), *(a1 + 4), 8uLL)));
      v40 = vcge_f32(v12, v39);
      v12 = vmaxnm_f32(v39, v12);
      v11 = vbsl_s8(v40, v11, v6);
    }

    else
    {
      v41 = *(a1 + 4);
      v42 = vmul_f32(*a1, *v4.f32);
      v43 = vmul_f32(*v41.i8, *v4.f32);
      v44 = vmulq_f32(*(a1 + 8), v4);
      v45 = vmla_f32(vpadd_f32(v42, v43), v5, vzip1_s32(*&vextq_s8(*a1, *a1, 8uLL), *&vextq_s8(v41, v41, 8uLL)));
      v46 = vadd_f32(vpadd_f32(*v44.i8, *v44.i8), vdup_laneq_s32(v44, 2));
      *v44.i8 = vcge_f32(v12, v45);
      v47 = vcge_f32(v9, v46);
      v12 = vmaxnm_f32(v45, v12);
      v9 = vmaxnm_f32(v46, v9);
      v11 = vbsl_s8(*v44.i8, v11, v6);
      v8 = vbsl_s8(v47, v8, v7);
    }
  }

  else if ((a3 & 3) != 0)
  {
    v37 = vmulq_f32(*a1, v4);
    *v37.i8 = vadd_f32(vdup_laneq_s32(v37, 2), vpadd_f32(*v37.i8, *v37.i8));
    v38 = vcge_f32(v12, *v37.i8);
    v12 = vmaxnm_f32(*v37.i8, v12);
    v11 = vbsl_s8(v38, v11, v6);
  }

  v48 = vmaxnm_f32(v9, v12);
  v49 = vbsl_s8(vcge_f32(v12, v9), v11, v8);
  v50 = vdup_lane_s32(v48, 1);
  LODWORD(result) = vbsl_s8(vcge_f32(v48, v50), v49, vdup_lane_s32(v49, 1)).u32[0];
  *a4 = vmaxnm_f32(v50, v48).u32[0];
  return result;
}

double OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::FVarLevel(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  *(a1 + 8) = *(a1 + 8) & 0xFE00 | 0x14;
  *(a1 + 12) = 0;
  *(a1 + 14) = 0;
  *(a1 + 16) = 0;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  return result;
}

void OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::~FVarLevel(OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel *this)
{
  v2 = *(this + 24);
  if (v2)
  {
    *(this + 25) = v2;
    operator delete(v2);
  }

  v3 = *(this + 21);
  if (v3)
  {
    *(this + 22) = v3;
    operator delete(v3);
  }

  v4 = *(this + 18);
  if (v4)
  {
    *(this + 19) = v4;
    operator delete(v4);
  }

  v5 = *(this + 15);
  if (v5)
  {
    *(this + 16) = v5;
    operator delete(v5);
  }

  v6 = *(this + 12);
  if (v6)
  {
    *(this + 13) = v6;
    operator delete(v6);
  }

  v7 = *(this + 9);
  if (v7)
  {
    *(this + 10) = v7;
    operator delete(v7);
  }

  v8 = *(this + 6);
  if (v8)
  {
    *(this + 7) = v8;
    operator delete(v8);
  }

  v9 = *(this + 3);
  if (v9)
  {
    *(this + 4) = v9;
    operator delete(v9);
  }
}

void OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::resizeComponents(std::vector<int> *this)
{
  std::vector<float>::resize(this + 1, ((*(this->__begin_ + 7) - *(this->__begin_ + 6)) >> 2));
  begin = this[2].__begin_;
  v8 = 0;
  v3 = this->__begin_;
  v4 = this->__begin_[1];
  v5 = (this[2].__end_ - begin);
  if (v4 <= v5)
  {
    if (v4 < v5)
    {
      this[2].__end_ = (begin + v4);
    }
  }

  else
  {
    std::vector<OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::ETag>::__append(&this[2], v4 - v5, &v8);
    v3 = this->__begin_;
  }

  std::vector<unsigned short>::resize(&this[3].__begin_, v3[2]);
  std::vector<float>::resize(this + 4, this->__begin_[2]);
  v6 = ((*(this->__begin_ + 37) - *(this->__begin_ + 36)) >> 2);
  v7 = 0;
  std::vector<unsigned short>::resize(&this[5].__begin_, v6, &v7);
}

void std::vector<unsigned short>::resize(void *result, unint64_t a2, __int16 *a3)
{
  v3 = (result[1] - *result) >> 1;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      result[1] = *result + 2 * a2;
    }
  }

  else
  {
    std::vector<unsigned short>::__append(result, a2 - v3, a3);
  }
}

void OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::resizeVertexValues(std::vector<int> *this, int a2)
{
  v3 = a2;
  std::vector<float>::resize(this + 6, a2);
  v6 = 0;
  begin = this[7].__begin_;
  v5 = (this[7].__end_ - begin);
  if (v3 <= v5)
  {
    if (v3 < v5)
    {
      this[7].__end_ = (begin + v3);
    }
  }

  else
  {
    std::vector<OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::ValueTag>::__append(&this[7], v3 - v5, &v6);
  }

  if ((BYTE5(this->__end_) & 1) == 0)
  {
    std::vector<OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::CreaseEndPair>::resize(&this[8].__begin_, v3);
  }
}

void std::vector<OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::CreaseEndPair>::resize(void *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 2;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      result[1] = *result + 4 * a2;
    }
  }

  else
  {
    std::vector<OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::CreaseEndPair>::__append(result, a2 - v2);
  }
}

void OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::completeTopologyFromFaceValues(OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel *this, int a2)
{
  v148 = *MEMORY[0x277D85DE8];
  v3 = *(this + 4);
  v4 = v3 >> 2;
  v5 = (v3 >> 2) & 7;
  if (v5)
  {
    v6 = (v3 & 3) != 2;
  }

  else
  {
    v6 = 0;
  }

  v120 = v6;
  *(this + 12) = v5 == 5;
  v119 = (v4 & 6) == 4;
  *(this + 13) = v119;
  v123 = v5;
  v121 = v5 - 3;
  v118 = v5 == 3;
  *(this + 14) = (v4 & 6) == 2;
  v7 = *this;
  v8 = *(*this + 8);
  v126 = 0;
  v127 = 0;
  v125 = 0;
  if (v8)
  {
    std::vector<unsigned short>::__vallocate[abi:nn200100](&v125, v8);
  }

  v9 = ((*(v7 + 296) - *(v7 + 288)) >> 2);
  LOWORD(v128) = 0;
  std::vector<unsigned short>::resize(this + 15, v9, &v128);
  v10 = *this;
  v11 = *(*this + 20);
  v143 = &v146;
  v144 = v11;
  v145 = 16;
  v147 = 0;
  if (v11 <= 0x10)
  {
    v12 = v141;
    v137 = 0;
    v138 = v141;
    v139 = v11;
    v140 = 16;
    v142 = 0;
    v13 = v136;
    __p = 0;
    v133 = v136;
    v134 = v11;
    v135 = 16;
    v128 = v131;
    v129 = v11;
    v130 = 16;
  }

  else
  {
    v147 = operator new(4 * v11);
    v143 = v147;
    v145 = v11;
    v138 = v141;
    v139 = v11;
    v140 = 16;
    v142 = 0;
    v142 = operator new(4 * v11);
    v137 = 0;
    v138 = v142;
    v140 = v11;
    v133 = v136;
    v134 = v11;
    v135 = 16;
    v137 = operator new(2 * v11);
    __p = 0;
    v133 = v137;
    v135 = v11;
    v128 = v131;
    v129 = v11;
    v130 = 16;
    __p = operator new(10 * v11);
    v128 = __p;
    v130 = v11;
    v12 = v138;
    v13 = v133;
    v10 = *this;
  }

  if (*(v10 + 8) < 1)
  {
    v15 = 0;
    goto LABEL_84;
  }

  v14 = 0;
  v15 = 0;
  do
  {
    v16 = (2 * (v14 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
    v17 = *(v10 + 264);
    v18 = *(v17 + 8 * v14);
    v19 = v143;
    if (v18 >= 1)
    {
      v20 = *(v17 + 4 * v16);
      v21 = (*(v10 + 288) + 4 * v20);
      v22 = (*(v10 + 312) + 2 * v20);
      v23 = *(v10 + 24);
      v24 = *(this + 3);
      v25 = v18;
      v26 = v143;
      do
      {
        v27 = *v21++;
        v28 = *(v23 + 8 * v27 + 4);
        LODWORD(v27) = *v22++;
        *v26 = *(v24 + 4 * (v28 + v27));
        v26 = (v26 + 4);
        --v25;
      }

      while (v25);
    }

    v29 = *(v10 + 336);
    v30 = *(v29 + 4 * v16);
    v31 = *(v29 + 8 * v14);
    v32 = (*(v10 + 360) + 4 * v30);
    v33 = *(*(v10 + 432) + 2 * v14);
    if (v33)
    {
      if (v18 >= 1 && v31 >= 1)
      {
        v41 = 0;
        v42 = *(v10 + 384) + 2 * v30;
        do
        {
          v43 = v32[v41];
          v44 = *this;
          v45 = *(*this + 144);
          v46 = *(v45 + 8 * v43);
          if (v46 >= 2)
          {
            v47 = 0;
            v48 = 0;
            v49 = *(v45 + 8 * v43 + 4);
            v50 = v44[21] + 4 * v49;
            v51 = v44[24] + 2 * v49;
            v52 = (v44[15] + 8 * v43);
            while (v46 != v47)
            {
              v53 = *(v50 + 4 * v47);
              v54 = 2 * v53;
              v55 = v44[3];
              v56 = *(v55 + 8 * v53 + 4);
              v57 = v44[6] + 4 * v56;
              v58 = *(v55 + 4 * v54);
              v59 = *(v51 + 2 * v47);
              v60 = *(this + 3) + 4 * v56;
              v61 = *v52;
              if (*(v42 + 2 * v41) != (v61 != *(v57 + 4 * v59)))
              {
                LODWORD(v59) = v59 + 1;
              }

              if (v59 == v58)
              {
                LODWORD(v59) = 0;
              }

              v62 = *(v60 + 4 * v59);
              if (v47)
              {
                ++v47;
                if (v62 != v48)
                {
                  v63 = v125;
                  *(v125 + v61) = 1;
                  v63[v52[1]] = 1;
                  v64 = *(this + 6);
                  v65 = *(v64 + v43) & 0xFD | (2 * (v14 == v61));
                  *(v64 + v43) = v65;
                  v66 = v65 & 0xFB | (4 * (v14 == v52[1])) | 1;
                  *(v64 + v43) = v66;
                  *(v64 + v43) = v66 & 0xF7 | (8 * *(this + 13));
                  break;
                }
              }

              else
              {
                v47 = 1;
                v48 = v62;
              }
            }
          }

          ++v41;
        }

        while (v41 != v31);
      }
    }

    else if (v18 > (v33 & 4) >> 2)
    {
      v34 = (v33 >> 2) & 1;
      do
      {
        if (v34)
        {
          v35 = v34;
        }

        else
        {
          v35 = v18;
        }

        if (*(v19 + v34) != *(v19 + v35 - 1))
        {
          v36 = v32[v34];
          v37 = *(*this + 120) + 8 * v36;
          v38 = *v37;
          v39 = v125;
          *(v125 + v38) = 1;
          v39[*(v37 + 4)] = 1;
          v40 = *(this + 6);
          LOBYTE(v38) = *(v40 + v36) & 0xFD | (2 * (v14 == v38));
          *(v40 + v36) = v38;
          LOBYTE(v37) = v38 & 0xFB | (4 * (v14 == *(v37 + 4))) | 1;
          *(v40 + v36) = v37;
          *(v40 + v36) = v37 & 0xF7 | (8 * *(this + 13));
        }

        ++v34;
      }

      while (v18 != v34);
    }

    if ((v33 & 4) != 0 && !*(v125 + v14))
    {
      if (*(this + 13) == 1)
      {
        if (v18 < 1)
        {
          goto LABEL_68;
        }

        *(v125 + v14) = 1;
        if (v33)
        {
          if (v31 >= 1)
          {
            do
            {
              v77 = *v32++;
              v76 = v77;
              if ((*(*(*this + 240) + v77) & 2) != 0)
              {
                *(*(this + 6) + v76) |= 8u;
              }

              --v31;
            }

            while (v31);
          }
        }

        else
        {
          *(*(this + 6) + *v32) |= 8u;
          v72 = v32[v31 - 1];
          *(*(this + 6) + v72) |= 8u;
        }
      }

      else if (v18 == 1 && v120)
      {
        *(v125 + v14) = 1;
LABEL_68:
        *v12 = *v19;
        *v13 = 0;
LABEL_69:
        v68 = 1;
        if (v33)
        {
          goto LABEL_70;
        }

        goto LABEL_72;
      }
    }

    *v12 = *v19;
    *v13 = 0;
    if (v18 <= 1)
    {
      goto LABEL_69;
    }

    v67 = 1;
    v68 = 1;
    do
    {
      v69 = *(v19 + v67);
      if (v69 == *(v19 + v67 - 1))
      {
        v13[v67] = v13[v67 - 1];
        goto LABEL_59;
      }

      v13[v67] = v68;
      if (v68 == 2)
      {
        if (*v12 != v69)
        {
          v12[2] = v69;
          v68 = 3;
          goto LABEL_59;
        }

        v70 = v12 + 2;
      }

      else
      {
        if (v68 == 1)
        {
          v12[1] = v69;
          v68 = 2;
          goto LABEL_59;
        }

        v70 = &v12[v68];
        v71 = v12;
        if (!v68)
        {
          goto LABEL_55;
        }
      }

      v71 = v12;
      while (*v71 != v69)
      {
        if (++v71 == v70)
        {
          goto LABEL_57;
        }
      }

LABEL_55:
      if (v71 == v70)
      {
LABEL_57:
        ++v68;
        *v70 = v69;
      }

      else
      {
        v13[v67] = (v71 - v12) >> 2;
      }

LABEL_59:
      ++v67;
    }

    while (v67 != v18);
    if ((v33 & 1) == 0)
    {
      goto LABEL_72;
    }

LABEL_70:
    if (!*(v125 + v14))
    {
      *(v125 + v14) = v68 > 1;
    }

LABEL_72:
    *(*(this + 9) + 2 * v14) = v68;
    *(*(this + 12) + 4 * v14) = v15;
    v10 = *this;
    if (v68 >= 2 && v18 >= 1)
    {
      v73 = (*(this + 15) + 2 * *(*(v10 + 264) + 4 * v16));
      v74 = v13;
      do
      {
        v75 = *v74++;
        *v73++ = v75;
        --v18;
      }

      while (v18);
    }

    v15 += v68;
    ++v14;
  }

  while (v14 < *(v10 + 8));
LABEL_84:
  OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::resizeVertexValues(this, v15);
  v78 = *this;
  if (*(*this + 8) >= 1)
  {
    v79 = 0;
    while (2)
    {
      v80 = (2 * v79) | 1;
      v81 = v78[33];
      v82 = *(v81 + 4 * v80);
      v83 = v78[36];
      v84 = *(v81 + 8 * v79);
      v85 = v78[39];
      if (v84 < 1)
      {
        v86 = 0;
      }

      else
      {
        v86 = *(*(this + 3) + 4 * (*(v78[3] + 8 * *(v83 + 4 * v82) + 4) + *(v85 + 2 * v82)));
      }

      v87 = *(*(this + 9) + 2 * v79);
      v88 = *(this + 12);
      v89 = (*(this + 18) + 4 * *(v88 + 4 * v79));
      *v89 = v86;
      if (!*(v125 + v79))
      {
        goto LABEL_158;
      }

      if (v87 >= 2 && v84 >= 2)
      {
        v90 = *(v81 + 4 * v80);
        v91 = (v85 + 2 * v82 + 2);
        v92 = (v83 + 4 * v82 + 4);
        v93 = (*(this + 15) + 2 * v90 + 2);
        v94 = v84 - 1;
        v95 = 1;
        do
        {
          v96 = *v93++;
          if (v95 == v96)
          {
            v89[v95++] = *(*(this + 3) + 4 * (*(v78[3] + 8 * *v92 + 4) + *v91));
          }

          ++v91;
          ++v92;
          --v94;
        }

        while (v94);
      }

      v124 = *(v88 + 4 * v79);
      v97 = *(this + 21);
      v98 = *(v78[54] + 2 * v79);
      v99 = 1;
      if ((*(this + 13) & 1) == 0 && (v98 & 0x11) == 0)
      {
        if (*(this + 14) == 1)
        {
          v99 = v87 > 2;
          if (v87 <= 2 && (v118 || v119))
          {
            if (v87 != 1)
            {
              v99 = 0;
              goto LABEL_105;
            }

LABEL_104:
            v99 = (v98 & 4) == 0;
          }
        }

        else
        {
          v99 = 0;
          if (v121 <= 2 && v87 == 1)
          {
            goto LABEL_104;
          }
        }
      }

LABEL_105:
      v100 = v128;
      bzero(v128, 10 * v87);
      OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::gatherValueSpans(this, v79, v100);
      if ((v99 & 1) == 0 && *(this + 14) == 1 && v87 == 2)
      {
        v101 = a2;
        v99 = v100[4] || v100[9] || v100[2] || v100[7] != 0;
        if (v123 == 3)
        {
          v103 = *v100;
          if (v103 != 1)
          {
            LOBYTE(v103) = v100[5] == 1;
          }

          v99 |= v103;
        }

        if ((v100[3] != 0) != (v100[8] != 0))
        {
          v102 = 48;
        }

        else
        {
          v102 = 8;
        }

LABEL_121:
        v104 = (v97 + v124);
        v105 = v100 + 4;
        v106 = 2;
        while (2)
        {
          *v104 = 1;
          if (*(v105 - 2))
          {
            *v104 = 5;
            goto LABEL_124;
          }

          v107 = *(v105 - 4);
          if (!*(v105 - 4))
          {
            OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::completeTopologyFromFaceValues();
          }

          if ((v99 & 1) != 0 || *v105)
          {
            v108 = v107 == 1;
            if (v107 == v101)
            {
              v109 = 1;
            }

            else
            {
              v109 = 3;
            }

            v110 = 1;
            goto LABEL_133;
          }

          v110 = v123 != 0;
          v108 = v107 == 1;
          if (v107 != 1)
          {
            v110 = 0;
          }

          v111 = 3;
          if (v107 == v101)
          {
            v109 = 1;
          }

          else
          {
            v109 = 3;
          }

          if (v110)
          {
LABEL_133:
            v111 = 1;
          }

          if (v108)
          {
            v109 = v111;
          }

          *v104 = v109;
          v112 = v109 | ((*v105 != 0) << 6);
          *v104 = v112;
          if (*v105)
          {
            LOBYTE(v112) = v112 | ((*(v105 - 4) - *v105 > 1) << 7);
            *v104 = v112;
            if (!v110)
            {
              goto LABEL_149;
            }
          }

          else if (v110)
          {
            *v104 = v112 | ((*(v105 - 4) > 1u) << 7);
          }

          else
          {
            v112 = v112 & 0xFFFFFF7F | (((v109 >> 1) & 1) << 7);
            *v104 = v112;
LABEL_149:
            if (*(v105 - 1) | v98 & 0x20)
            {
              v113 = 16;
            }

            else
            {
              v113 = v102;
            }

            *v104 = v112 | v113;
            if ((*(this + 13) & 1) == 0)
            {
              v114 = *(this + 24) + 4 * *(*(this + 12) + 4 * v79);
              v115 = *(v105 - 3);
              *(v114 + v106 - 2) = v115;
              v116 = *(v105 - 4);
              if (v106 == 2 && v115)
              {
                v117 = v115 + ~v84 + v116;
              }

              else
              {
                v117 = v115 + v116 - 1;
              }

              *(v114 + v106) = v117;
            }
          }

LABEL_124:
          v106 += 4;
          ++v104;
          v105 += 5;
          if (!--v87)
          {
            goto LABEL_158;
          }

          continue;
        }
      }

      v101 = a2;
      if (v87)
      {
        v102 = 8;
        goto LABEL_121;
      }

LABEL_158:
      ++v79;
      v78 = *this;
      if (v79 >= *(*this + 8))
      {
        break;
      }

      continue;
    }
  }

  operator delete(__p);
  operator delete(v137);
  operator delete(v142);
  operator delete(v147);
  if (v125)
  {
    v126 = v125;
    operator delete(v125);
  }
}

void *OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::gatherValueSpans(void *result, int a2, uint64_t a3)
{
  v3 = *result;
  v4 = *(result[9] + 2 * a2);
  if (*(*(*result + 432) + 2 * a2))
  {
    if (*(result[9] + 2 * a2))
    {
      v19 = (a3 + 4);
      do
      {
        *(v19 - 2) = 0;
        *v19 = 1;
        v19 += 5;
        --v4;
      }

      while (v4);
    }
  }

  else
  {
    v5 = v3[42];
    v6 = (8 * ((2 * a2) >> 1)) | 4;
    v7 = (v3[45] + 4 * *(v5 + v6));
    v8 = 8 * a2;
    v9 = *(v5 + v8);
    v10 = v3[33];
    v11 = *(v10 + v8);
    v12 = *(v10 + v8);
    if (v4 != 1 || v9 > v12)
    {
      v14 = result[15] + 2 * *(v10 + v6);
      *a3 = 1;
      v15 = v14 + 2 * v11;
      if (v9 > v11 || *(v15 - 2))
      {
        goto LABEL_33;
      }

      v16 = *v7;
      if (*(result[6] + v16))
      {
        v18 = 4;
      }

      else
      {
        v17 = *(v3[30] + v16);
        if ((v17 & 4) != 0)
        {
          v18 = 8;
        }

        else
        {
          if ((v17 & 8) == 0)
          {
LABEL_33:
            if (v11 >= 2)
            {
              v25 = 0;
              v26 = v7 + 1;
              v27 = v11 - 1;
              do
              {
                v28 = (v14 + 2 * v25);
                v29 = v28[1];
                if (v29 == *v28)
                {
                  v30 = v26[v25];
                  if (*(result[6] + v30))
                  {
                    ++*(a3 + 10 * v28[1] + 4);
                  }

                  else
                  {
                    v31 = *(v3[30] + v30);
                    if ((v31 & 4) != 0)
                    {
                      ++*(a3 + 10 * v28[1] + 8);
                    }

                    else if ((v31 & 8) != 0)
                    {
                      ++*(a3 + 10 * v28[1] + 6);
                    }
                  }
                }

                else
                {
                  if (*(a3 + 10 * v28[1]))
                  {
                    ++*(a3 + 10 * v28[1] + 4);
                    v29 = v28[1];
                  }

                  *(a3 + 10 * v29 + 2) = v25 + 1;
                }

                ++*(a3 + 10 * v28[1]);
                ++v25;
              }

              while (v27 != v25);
            }

            if (!*(v15 - 2) && v9 <= v12)
            {
              --*(a3 + 4);
            }

            return result;
          }

          v18 = 6;
        }
      }

      ++*(a3 + v18);
      goto LABEL_33;
    }

    *a3 = 0;
    if (v9 > 0)
    {
      v20 = 0;
      v21 = 0;
      v22 = result[6];
      do
      {
        v23 = v7[v21];
        if (*(v22 + v23))
        {
          if (v20)
          {
            *(a3 + 4) = 1;
            break;
          }

          *a3 = v12;
          *(a3 + 2) = v21;
          v20 = v12;
        }

        else
        {
          v24 = *(v3[30] + v23);
          if ((v24 & 4) != 0)
          {
            ++*(a3 + 8);
          }

          else if ((v24 & 8) != 0)
          {
            ++*(a3 + 6);
          }
        }

        ++v21;
      }

      while (v9 != v21);
    }

    *a3 = v12;
  }

  return result;
}

void *OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getVertexCreaseEndValues(void *this, int a2, unsigned int a3, int *a4)
{
  v4 = *(*(*this + 264) + 8 * a2 + 4);
  v5 = *(*this + 288) + 4 * v4;
  v6 = *(*this + 312) + 2 * v4;
  v7 = (this[24] + 4 * *(this[12] + 4 * a2) + 4 * a3);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v5 + 4 * v8);
  v11 = *(*this + 24);
  v12 = *(v11 + 8 * v10);
  v13 = this[3];
  v14 = v13 + 4 * *(v11 + 4 * ((2 * v10) | 1));
  v15 = *(v5 + 4 * v9);
  v16 = *(v11 + 8 * v15);
  v17 = *(v11 + 4 * ((2 * v15) | 1));
  v18 = *(v6 + 2 * v8);
  v19 = *(v6 + 2 * v9);
  v20 = v13 + 4 * v17;
  if (!v19)
  {
    v19 = v16;
  }

  if (v12 - 1 == v18)
  {
    v21 = 0;
  }

  else
  {
    v21 = v18 + 1;
  }

  *a4 = *(v14 + 4 * v21);
  a4[1] = *(v20 + 4 * v19 - 4);
  return this;
}

void *OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::initializeFaceValuesFromVertexFaceSiblings(void *this)
{
  v1 = *this;
  v2 = *(*this + 48);
  v3 = *(*this + 56) - v2;
  if ((v3 >> 2) >= 1)
  {
    v4 = this[12];
    v5 = this[3];
    v6 = (v3 >> 2) & 0x7FFFFFFF;
    do
    {
      v7 = *v2++;
      *v5++ = *(v4 + 4 * v7);
      --v6;
    }

    while (v6);
  }

  v8 = *(v1 + 8);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = this[9];
    do
    {
      if (*(v10 + 2 * v9) >= 2u)
      {
        v11 = (*(v1 + 264) + 8 * v9);
        v12 = *v11;
        if (v12 >= 1)
        {
          v13 = v11[1];
          v14 = (*(v1 + 288) + 4 * v13);
          v15 = (*(v1 + 312) + 2 * v13);
          v16 = (this[15] + 2 * v13);
          do
          {
            v18 = *v16++;
            v17 = v18;
            if (v18)
            {
              v19 = *(*(v1 + 24) + 8 * *v14 + 4) + *v15;
              *(this[3] + 4 * v19) += v17;
            }

            ++v15;
            ++v14;
            --v12;
          }

          while (v12);
          v8 = *(v1 + 8);
        }
      }

      ++v9;
    }

    while (v9 < v8);
  }

  return this;
}

void *OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getEdgeFaceValues(void *this, int a2, int a3, int *a4)
{
  v4 = *this;
  v5 = (*(*this + 120) + 8 * a2);
  v6 = *v5;
  if (*(this[9] + 2 * v5[1]) + *(this[9] + 2 * v6) < 3)
  {
    if (*(v4 + 12) < 1)
    {
      v18 = this[12];
      v19 = this[18];
      *a4 = *(v19 + 4 * *(v18 + 4 * v6));
      v17 = *(v19 + 4 * *(v18 + 4 * v5[1]));
    }

    else
    {
      v16 = this[12];
      *a4 = *(v16 + 4 * v6);
      v17 = *(v16 + 4 * v5[1]);
    }

    a4[1] = v17;
  }

  else
  {
    v7 = *(*(v4 + 144) + 8 * a2 + 4);
    v8 = *(*(v4 + 168) + 4 * v7 + 4 * a3);
    v9 = *(*(v4 + 192) + 2 * v7 + 2 * a3);
    v10 = *(v4 + 24);
    LODWORD(v7) = *(v10 + 8 * v8);
    v11 = (2 * v8) | 1;
    v12 = this[3] + 4 * *(v10 + 4 * v11);
    v13 = *(v12 + 4 * v9);
    *a4 = v13;
    if (v9 + 1 < v7)
    {
      v14 = v9 + 1;
    }

    else
    {
      v14 = 0;
    }

    v15 = *(v12 + 4 * v14);
    a4[1] = v15;
    if (*v5 != *(*(v4 + 48) + 4 * *(v10 + 4 * v11) + 4 * v9))
    {
      *a4 = v15;
      a4[1] = v13;
    }
  }

  return this;
}

void *OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getVertexEdgeValues(void *this, int a2, int *a3)
{
  v3 = *this;
  v4 = *(*this + 336);
  v5 = *(v4 + 8 * a2);
  if (v5 >= 1)
  {
    v6 = (8 * ((2 * a2) >> 1)) | 4;
    v7 = *(v4 + v6);
    v8 = (*(v3 + 360) + 4 * v7);
    v9 = (*(v3 + 384) + 2 * v7);
    v10 = *(*(v3 + 264) + v6);
    v11 = *(v3 + 288) + 4 * v10;
    v12 = *(v3 + 312) + 2 * v10;
    v13 = *(*(v3 + 432) + 2 * a2);
    v14 = *(v3 + 12);
    v15 = (v5 - 1);
    v16 = v15 - 1;
    v17 = this[6];
    v18 = v11;
    v19 = v12;
    v20 = v15;
    v21 = a3;
    do
    {
      v23 = *v8++;
      v22 = v23;
      if (*(v17 + v23))
      {
        OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getVertexEdgeValues();
      }

      v24 = 2 * v22;
      v25 = *(*(v3 + 120) + 8 * v22 + 4 * (*v9 == 0));
      if (*(this[9] + 2 * v25) == 1)
      {
        v26 = (this[12] + 4 * v25);
        if (!v14)
        {
          v26 = (this[18] + 4 * *v26);
        }

        v27 = *v26;
      }

      else if (v13)
      {
        v33 = *(*(v3 + 144) + 4 * (v24 | 1));
        v34 = *(*(v3 + 168) + 4 * v33);
        v35 = *(*(v3 + 192) + 2 * v33);
        v36 = *(v3 + 24);
        v37 = *(v36 + 8 * v34 + 4);
        v38 = *(v3 + 48) + 4 * v37;
        v39 = this[3] + 4 * v37;
        if (v25 == *(v38 + 4 * v35))
        {
          v27 = *(v39 + 4 * v35);
        }

        else
        {
          if (*(v36 + 8 * v34) - 1 == v35)
          {
            v46 = 0;
          }

          else
          {
            v46 = v35 + 1;
          }

          v27 = *(v39 + 4 * v46);
        }
      }

      else
      {
        if ((v13 & 4) != 0 && !v20)
        {
          v28 = *(v11 + 4 * v16);
          v29 = *(v3 + 24);
          v30 = *(v29 + 8 * v28);
          v31 = this[3] + 4 * *(v29 + 4 * ((2 * v28) | 1));
          v32 = *(v12 + 2 * v16);
          if (!*(v12 + 2 * v16))
          {
            v32 = v30;
          }

          a3[v15] = *(v31 + 4 * v32 - 4);
          goto LABEL_9;
        }

        v40 = *v18;
        v41 = *(v3 + 24);
        v42 = *(v41 + 8 * v40);
        v43 = this[3] + 4 * *(v41 + 4 * ((2 * v40) | 1));
        v44 = *v19;
        if (v42 - 1 == v44)
        {
          v45 = 0;
        }

        else
        {
          v45 = v44 + 1;
        }

        v27 = *(v43 + 4 * v45);
      }

      *v21 = v27;
LABEL_9:
      ++v21;
      --v20;
      ++v19;
      ++v18;
      ++v9;
      --v5;
    }

    while (v5);
  }

  return this;
}

void *OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getFaceValueTags(void *result, int a2, uint64_t a3)
{
  v3 = *(*result + 24);
  v4 = *(v3 + 8 * a2);
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = *(v3 + 8 * a2 + 4);
    v7 = result[3] + 4 * v6;
    v8 = *(*result + 48) + 4 * v6;
    do
    {
      v9 = *(v7 + 4 * v5);
      v10 = result[18];
      v11 = v9;
      if (*(*result + 12) <= 0)
      {
        v12 = *(result[12] + 4 * *(v8 + 4 * v5));
        v11 = v12 - 1;
        v13 = (v10 + 4 * v12);
        do
        {
          v14 = *v13++;
          ++v11;
        }

        while (v14 != v9);
      }

      if (*(v10 + 4 * v11) != v9)
      {
        OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getFaceValueTags();
      }

      *(a3 + v5++) = *(result[21] + v11);
    }

    while (v5 != v4);
  }

  return result;
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getFaceCompositeValueTag(OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel *this, int a2)
{
  v2 = *this;
  v3 = *(*this + 24);
  v4 = *(v3 + 8 * a2);
  if (v4 < 1)
  {
    return 0;
  }

  v5 = 0;
  LODWORD(v6) = 0;
  v7 = *(v3 + 8 * a2 + 4);
  v8 = *(this + 3) + 4 * v7;
  v9 = *(v2 + 48) + 4 * v7;
  v10 = *(v2 + 12);
  v11 = *(this + 18);
  do
  {
    v12 = *(v8 + 4 * v5);
    v13 = v12;
    if (v10 <= 0)
    {
      v14 = *(*(this + 12) + 4 * *(v9 + 4 * v5));
      v13 = v14 - 1;
      v15 = (v11 + 4 * v14);
      do
      {
        v16 = *v15++;
        ++v13;
      }

      while (v16 != v12);
    }

    if (*(v11 + 4 * v13) != v12)
    {
      OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getFaceCompositeValueTag();
    }

    v6 = *(*(this + 21) + v13) | v6;
    ++v5;
  }

  while (v5 != v4);
  return v6;
}

void std::vector<OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::ETag>::__append(char **a1, size_t __len, unsigned __int8 *a3)
{
  v6 = a1[1];
  v5 = a1[2];
  if (v5 - v6 >= __len)
  {
    if (__len)
    {
      memset(a1[1], *a3, __len);
      v6 += __len;
    }

    a1[1] = v6;
  }

  else
  {
    v7 = *a1;
    v8 = (v6 - *a1);
    v9 = &v8[__len];
    if (&v8[__len] < 0)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = v5 - v7;
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      operator new();
    }

    v12 = v6 - *a1;
    memset(v8, *a3, __len);
    memcpy(&v8[v7 - v6], v7, v12);
    *a1 = &v8[v7 - v6];
    a1[1] = &v8[__len];
    a1[2] = 0;
    if (v7)
    {

      operator delete(v7);
    }
  }
}

void std::vector<unsigned short>::__append(uint64_t a1, unint64_t a2, __int16 *a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v6) >> 1)
  {
    if (a2)
    {
      v12 = 0;
      v13 = (a2 + 0x7FFFFFFFFFFFFFFFLL) & 0x7FFFFFFFFFFFFFFFLL;
      v14 = v13 - ((a2 + 0x7FFFFFFFFFFFFFFFLL) & 7);
      v15 = vdupq_n_s64(v13);
      v16 = v6 + 2 * a2;
      v17 = *a3;
      v18 = v14 + 8;
      v19 = (v6 + 8);
      do
      {
        v20 = vdupq_n_s64(v12);
        v21 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_21C27F640)));
        if (vuzp1_s8(vuzp1_s16(v21, *v15.i8), *v15.i8).u8[0])
        {
          *(v19 - 4) = v17;
        }

        if (vuzp1_s8(vuzp1_s16(v21, *&v15), *&v15).i8[1])
        {
          *(v19 - 3) = v17;
        }

        if (vuzp1_s8(vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_21C27F630)))), *&v15).i8[2])
        {
          *(v19 - 2) = v17;
          *(v19 - 1) = v17;
        }

        v22 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_21C2A1A10)));
        if (vuzp1_s8(*&v15, vuzp1_s16(v22, *&v15)).i32[1])
        {
          *v19 = v17;
        }

        if (vuzp1_s8(*&v15, vuzp1_s16(v22, *&v15)).i8[5])
        {
          v19[1] = v17;
        }

        if (vuzp1_s8(*&v15, vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_21C2A1A00))))).i8[6])
        {
          v19[2] = v17;
          v19[3] = v17;
        }

        v12 += 8;
        v19 += 8;
      }

      while (v18 != v12);
    }

    else
    {
      v16 = *(a1 + 8);
    }

    *(a1 + 8) = v16;
  }

  else
  {
    v7 = v6 - *a1;
    if ((a2 + (v7 >> 1)) < 0)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v8 = v7 >> 1;
    v9 = v5 - *a1;
    if (v9 <= a2 + (v7 >> 1))
    {
      v10 = a2 + (v7 >> 1);
    }

    else
    {
      v10 = v9;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned short>>(a1, v11);
    }

    v23 = 0;
    v24 = 2 * v8;
    v25 = 2 * v8 + 2 * a2;
    v26 = *a3;
    v27 = (a2 + 0x7FFFFFFFFFFFFFFFLL) & 0x7FFFFFFFFFFFFFFFLL;
    v28 = v27 - ((a2 + 0x7FFFFFFFFFFFFFFFLL) & 7) + 8;
    v29 = vdupq_n_s64(v27);
    v30 = (v24 + 8);
    do
    {
      v31 = vdupq_n_s64(v23);
      v32 = vmovn_s64(vcgeq_u64(v29, vorrq_s8(v31, xmmword_21C27F640)));
      if (vuzp1_s8(vuzp1_s16(v32, *v29.i8), *v29.i8).u8[0])
      {
        *(v30 - 4) = v26;
      }

      if (vuzp1_s8(vuzp1_s16(v32, *&v29), *&v29).i8[1])
      {
        *(v30 - 3) = v26;
      }

      if (vuzp1_s8(vuzp1_s16(*&v29, vmovn_s64(vcgeq_u64(v29, vorrq_s8(v31, xmmword_21C27F630)))), *&v29).i8[2])
      {
        *(v30 - 2) = v26;
        *(v30 - 1) = v26;
      }

      v33 = vmovn_s64(vcgeq_u64(v29, vorrq_s8(v31, xmmword_21C2A1A10)));
      if (vuzp1_s8(*&v29, vuzp1_s16(v33, *&v29)).i32[1])
      {
        *v30 = v26;
      }

      if (vuzp1_s8(*&v29, vuzp1_s16(v33, *&v29)).i8[5])
      {
        v30[1] = v26;
      }

      if (vuzp1_s8(*&v29, vuzp1_s16(*&v29, vmovn_s64(vcgeq_u64(v29, vorrq_s8(v31, xmmword_21C2A1A00))))).i8[6])
      {
        v30[2] = v26;
        v30[3] = v26;
      }

      v23 += 8;
      v30 += 8;
    }

    while (v28 != v23);
    v34 = *(a1 + 8) - *a1;
    v35 = v24 - v34;
    memcpy((v24 - v34), *a1, v34);
    v36 = *a1;
    *a1 = v35;
    *(a1 + 8) = v25;
    *(a1 + 16) = 0;
    if (v36)
    {

      operator delete(v36);
    }
  }
}

void std::vector<OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::ValueTag>::__append(char **a1, size_t __len, unsigned __int8 *a3)
{
  v6 = a1[1];
  v5 = a1[2];
  if (v5 - v6 >= __len)
  {
    if (__len)
    {
      memset(a1[1], *a3, __len);
      v6 += __len;
    }

    a1[1] = v6;
  }

  else
  {
    v7 = *a1;
    v8 = (v6 - *a1);
    v9 = &v8[__len];
    if (&v8[__len] < 0)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = v5 - v7;
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      operator new();
    }

    v12 = v6 - *a1;
    memset(v8, *a3, __len);
    memcpy(&v8[v7 - v6], v7, v12);
    *a1 = &v8[v7 - v6];
    a1[1] = &v8[__len];
    a1[2] = 0;
    if (v7)
    {

      operator delete(v7);
    }
  }
}

void std::vector<OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::CreaseEndPair>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 2)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 4 * a2);
      v5 += 4 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 2);
    if (v7 >> 62)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 1 > v7)
    {
      v7 = v8 >> 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v9 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<float>>(a1, v9);
    }

    v10 = (4 * (v6 >> 2));
    bzero(v10, 4 * a2);
    v11 = &v10[4 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void std::vector<unsigned short>::__vallocate[abi:nn200100](uint64_t *a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned short>>(a1, a2);
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void OpenSubdiv::v3_1_1::Sdc::staticTraitsTable(uint64_t this)
{
  if ((atomic_load_explicit(_MergedGlobals_7, memory_order_acquire) & 1) == 0)
  {
    OpenSubdiv::v3_1_1::Sdc::staticTraitsTable();
  }
}

uint64_t OpenSubdiv::v3_1_1::Sdc::SchemeTypeTraits::GetTopologicalSplitType(uint64_t a1)
{
  v1 = a1;
  OpenSubdiv::v3_1_1::Sdc::staticTraitsTable(a1);
  return *&_MergedGlobals_7[24 * v1 + 16];
}

uint64_t OpenSubdiv::v3_1_1::Sdc::SchemeTypeTraits::GetRegularFaceSize(uint64_t a1)
{
  v1 = a1;
  OpenSubdiv::v3_1_1::Sdc::staticTraitsTable(a1);
  return *&_MergedGlobals_7[24 * v1 + 20];
}

uint64_t OpenSubdiv::v3_1_1::Sdc::SchemeTypeTraits::GetRegularVertexValence(uint64_t a1)
{
  v1 = a1;
  OpenSubdiv::v3_1_1::Sdc::staticTraitsTable(a1);
  return *&_MergedGlobals_7[24 * v1 + 24];
}

uint64_t OpenSubdiv::v3_1_1::Sdc::SchemeTypeTraits::GetLocalNeighborhoodSize(uint64_t a1)
{
  v1 = a1;
  OpenSubdiv::v3_1_1::Sdc::staticTraitsTable(a1);
  return *&_MergedGlobals_7[24 * v1 + 28];
}

void OpenSubdiv::v3_1_1::Sdc::staticTraitsTable()
{
  if (__cxa_guard_acquire(_MergedGlobals_7))
  {
    qword_27CDDB870 = "bilinear";
    xmmword_27CDDB878 = xmmword_21C2A47C0;
    qword_27CDDB888 = "catmark";
    *algn_27CDDB890 = xmmword_21C2A47D0;
    qword_27CDDB8A0 = "loop";
    xmmword_27CDDB8A8 = xmmword_21C2A47E0;

    __cxa_guard_release(_MergedGlobals_7);
  }
}

uint64_t OpenSubdiv::v3_1_1::Osd::createBuffer(OpenSubdiv::v3_1_1::Osd *this, const void *a2, id *a3, MTLContext *a4)
{
  v7 = objc_autoreleasePoolPush();
  v8 = [a3[1] commandBuffer];
  v9 = [v8 blitCommandEncoder];
  v10 = [*a3 newBufferWithBytes:this length:a2 options:0];
  v11 = [*a3 newBufferWithLength:a2 options:32];
  [v9 copyFromBuffer:v10 sourceOffset:0 toBuffer:v11 destinationOffset:0 size:a2];
  [v9 endEncoding];
  [v8 commit];
  [v8 waitUntilCompleted];

  objc_autoreleasePoolPop(v7);
  return v11;
}

uint64_t OpenSubdiv::v3_1_1::Far::StencilTable::StencilTable(uint64_t a1, int a2, uint64_t *a3, void *a4, void *a5, void *a6, int a7, unint64_t a8)
{
  *a1 = &unk_282DCB388;
  *(a1 + 8) = a2;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0u;
  return a1;
}

void OpenSubdiv::v3_1_1::Far::anonymous namespace::copyStencilData(int a1, int a2, unint64_t a3, uint64_t *a4, std::vector<int> *this, void *a6, std::vector<int> *a7, void *a8, std::vector<int> *a9, void *a10, std::vector<int> *a11, void *a12, std::vector<int> *a13, void *a14, std::vector<int> *a15, void *a16, std::vector<int> *a17, void *a18, std::vector<int> *a19, void *a20, std::vector<int> *a21)
{
  v33 = a2;
  if (a2)
  {
    v24 = 0;
  }

  else
  {
    v24 = a3;
  }

  std::vector<float>::resize(this, (a4[1] - *a4) >> 2);
  v35 = a6;
  v38 = a7;
  std::vector<float>::resize(a7, (a6[1] - *a6) >> 2);
  std::vector<float>::resize(a9, (a8[1] - *a8) >> 2);
  std::vector<float>::resize(a11, (a10[1] - *a10) >> 2);
  if (a13)
  {
    std::vector<float>::resize(a13, (a12[1] - *a12) >> 2);
  }

  if (a15)
  {
    std::vector<float>::resize(a15, (a14[1] - *a14) >> 2);
  }

  if (a17)
  {
    std::vector<float>::resize(a17, (a16[1] - *a16) >> 2);
  }

  if (a19)
  {
    std::vector<float>::resize(a19, (a18[1] - *a18) >> 2);
  }

  if (a21)
  {
    std::vector<float>::resize(a21, (a20[1] - *a20) >> 2);
  }

  v25 = *a4;
  if (v24 >= (a4[1] - *a4) >> 2)
  {
    v28 = 0;
    v27 = 0;
  }

  else
  {
    v26 = 0;
    v27 = 0;
    v28 = 0;
    do
    {
      if (((v24 == a1) & v33) != 0)
      {
        v29 = a3;
      }

      else
      {
        v29 = v24;
      }

      v30 = *(*v35 + 4 * v29);
      v31 = *(v25 + 4 * v29);
      this->__begin_[v27] = v26;
      v38->__begin_[v27] = v30;
      memcpy(&a9->__begin_[v26], (*a8 + 4 * v31), 4 * v30);
      memcpy(&a11->__begin_[v26], (*a10 + 4 * v31), 4 * v30);
      if (a13 && a13->__begin_ != a13->__end_)
      {
        memcpy(&a13->__begin_[v26], (*a12 + 4 * v31), 4 * v30);
      }

      if (a15 && a15->__begin_ != a15->__end_)
      {
        memcpy(&a15->__begin_[v26], (*a14 + 4 * v31), 4 * v30);
      }

      if (a17 && a17->__begin_ != a17->__end_)
      {
        memcpy(&a17->__begin_[v26], (*a16 + 4 * v31), 4 * v30);
      }

      if (a19 && a19->__begin_ != a19->__end_)
      {
        memcpy(&a19->__begin_[v26], (*a18 + 4 * v31), 4 * v30);
      }

      if (a21 && a21->__begin_ != a21->__end_)
      {
        memcpy(&a21->__begin_[v26], (*a20 + 4 * v31), 4 * v30);
      }

      v26 += v30;
      ++v27;
      v28 += v30;
      v24 = v29 + 1;
      v25 = *a4;
    }

    while (v29 + 1 < (a4[1] - *a4) >> 2);
  }

  std::vector<float>::resize(this, v27);
  std::vector<float>::resize(v38, v27);
  std::vector<float>::resize(a9, v28);
  if (a13 && a13->__begin_ != a13->__end_)
  {
    std::vector<float>::resize(a13, v28);
  }

  if (a15 && a15->__begin_ != a15->__end_)
  {
    std::vector<float>::resize(a15, v28);
  }

  if (a17 && a17->__begin_ != a17->__end_)
  {
    std::vector<float>::resize(a17, v28);
  }

  if (a19 && a19->__begin_ != a19->__end_)
  {
    std::vector<float>::resize(a19, v28);
  }

  if (a21 && a21->__begin_ != a21->__end_)
  {

    std::vector<float>::resize(a21, v28);
  }
}

void OpenSubdiv::v3_1_1::Far::StencilTable::~StencilTable(OpenSubdiv::v3_1_1::Far::StencilTable *this)
{
  OpenSubdiv::v3_1_1::Far::StencilTable::~StencilTable(this);

  JUMPOUT(0x21CF07610);
}

{
  *this = &unk_282DCB388;
  v2 = *(this + 11);
  if (v2)
  {
    *(this + 12) = v2;
    operator delete(v2);
  }

  v3 = *(this + 8);
  if (v3)
  {
    *(this + 9) = v3;
    operator delete(v3);
  }

  v4 = *(this + 5);
  if (v4)
  {
    *(this + 6) = v4;
    operator delete(v4);
  }

  v5 = *(this + 2);
  if (v5)
  {
    *(this + 3) = v5;
    operator delete(v5);
  }
}

void OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::~StencilBuilder(OpenSubdiv::v3_1_1::Far::internal::WeightTable **this)
{
  v1 = *this;
  if (v1)
  {
    OpenSubdiv::v3_1_1::Far::internal::WeightTable::~WeightTable(v1);
    MEMORY[0x21CF07610]();
  }
}

uint64_t OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::GetNumVertsInStencil(OpenSubdiv::v3_1_1::Far::internal::StencilBuilder *this, unint64_t a2)
{
  v2 = *(*this + 216);
  if (((*(*this + 224) - v2) >> 2) - 1 >= a2)
  {
    return *(v2 + 4 * a2);
  }

  else
  {
    return 0;
  }
}

void OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index::AddWithWeight(uint64_t result, uint64_t a2, float a3)
{
  if (a3 != 0.0)
  {
    OpenSubdiv::v3_1_1::Far::internal::WeightTable::AddWithWeight<float,OpenSubdiv::v3_1_1::Far::internal::WeightTable::ScalarAccumulator>(**result, *(a2 + 8), a3, *(result + 8), **result);
  }
}

void OpenSubdiv::v3_1_1::Far::internal::WeightTable::AddWithWeight<float,OpenSubdiv::v3_1_1::Far::internal::WeightTable::ScalarAccumulator>(uint64_t result, int a2, float a3, uint64_t a4, uint64_t a5)
{
  v7 = a4;
  if (*(result + 248) <= a2)
  {
    v11 = *(*(result + 216) + 4 * a2);
    if (v11 >= 1)
    {
      v12 = *(*(result + 192) + 4 * a2);
      v13 = v12 + v11;
      do
      {
        v14 = *(*(result + 24) + 4 * v12);
        if (v14 >= *(result + 248))
        {
          OpenSubdiv::v3_1_1::Far::internal::WeightTable::AddWithWeight<float,OpenSubdiv::v3_1_1::Far::internal::WeightTable::ScalarAccumulator>();
        }

        OpenSubdiv::v3_1_1::Far::internal::WeightTable::merge<float,OpenSubdiv::v3_1_1::Far::internal::WeightTable::ScalarAccumulator>(result, v14, v7, *(result + 244), *(result + 240), a5, *(*(a5 + 48) + 4 * v12++), a3);
      }

      while (v12 < v13);
    }
  }

  else
  {
    v10 = *(result + 240);
    v9 = *(result + 244);

    OpenSubdiv::v3_1_1::Far::internal::WeightTable::merge<float,OpenSubdiv::v3_1_1::Far::internal::WeightTable::ScalarAccumulator>(result, a2, a4, v9, v10, a5, a3, 1.0);
  }
}

void OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index::AddWithWeight(uint64_t result, unsigned int **a2, float a3)
{
  if (a3 != 0.0)
  {
    v3 = **a2;
    if (v3 >= 1)
    {
      v6 = a2[1];
      v7 = a2[2];
      do
      {
        if (*v7 != 0.0)
        {
          OpenSubdiv::v3_1_1::Far::internal::WeightTable::AddWithWeight<float,OpenSubdiv::v3_1_1::Far::internal::WeightTable::ScalarAccumulator>(**result, *v6, *v7 * a3, *(result + 8), **result);
        }

        ++v6;
        ++v7;
        --v3;
      }

      while (v3);
    }
  }
}

OpenSubdiv::v3_1_1::Far::internal::WeightTable *OpenSubdiv::v3_1_1::Far::internal::WeightTable::WeightTable(OpenSubdiv::v3_1_1::Far::internal::WeightTable *this, int a2, int a3, char a4)
{
  *(this + 3) = 0u;
  v7 = (this + 48);
  v8 = 2 * a2;
  if (a2 >= 2621440)
  {
    v8 = 5242880;
  }

  *(this + 12) = 0uLL;
  v9 = (this + 192);
  *(this + 30) = 0;
  *(this + 13) = 0uLL;
  *(this + 14) = 0uLL;
  *(this + 10) = 0uLL;
  *(this + 11) = 0uLL;
  *(this + 8) = 0uLL;
  *(this + 9) = 0uLL;
  *(this + 6) = 0uLL;
  *(this + 7) = 0uLL;
  *(this + 4) = 0uLL;
  *(this + 5) = 0uLL;
  *(this + 1) = 0uLL;
  *(this + 2) = 0uLL;
  *this = 0uLL;
  *(this + 62) = a2;
  if (v8 <= a2)
  {
    v8 = a2;
  }

  v10 = v8;
  *(this + 252) = a4;
  std::vector<unsigned int>::reserve(this, v8);
  std::vector<unsigned int>::reserve(this + 1, v10);
  std::vector<unsigned int>::reserve(v7, v10);
  if (a3)
  {
    std::vector<float>::resize(this + 1, a2);
    std::vector<float>::resize(v7, a2);
    std::vector<float>::resize(this, a2);
    std::vector<float>::resize(v9, a2);
    std::vector<float>::resize(this + 9, a2);
    v11 = *(this + 3);
    if (a2 >= 1)
    {
      v12 = 0;
      v13 = *(this + 24);
      v14 = *(this + 27);
      v15 = *this;
      v16 = *(this + 6);
      do
      {
        *(v13 + 4 * v12) = v12;
        *(v14 + 4 * v12) = 1;
        *(v15 + 4 * v12) = v12;
        *(v11 + 4 * v12) = v12;
        *(v16 + 4 * v12++) = 1065353216;
      }

      while (a2 != v12);
    }

    v17 = (*(this + 4) - v11) >> 2;
    *(this + 60) = v17;
    *(this + 61) = v17 - 1;
  }

  return this;
}

void OpenSubdiv::v3_1_1::Far::internal::WeightTable::~WeightTable(OpenSubdiv::v3_1_1::Far::internal::WeightTable *this)
{
  v2 = *(this + 27);
  if (v2)
  {
    *(this + 28) = v2;
    operator delete(v2);
  }

  v3 = *(this + 24);
  if (v3)
  {
    *(this + 25) = v3;
    operator delete(v3);
  }

  v4 = *(this + 21);
  if (v4)
  {
    *(this + 22) = v4;
    operator delete(v4);
  }

  v5 = *(this + 18);
  if (v5)
  {
    *(this + 19) = v5;
    operator delete(v5);
  }

  v6 = *(this + 15);
  if (v6)
  {
    *(this + 16) = v6;
    operator delete(v6);
  }

  v7 = *(this + 12);
  if (v7)
  {
    *(this + 13) = v7;
    operator delete(v7);
  }

  v8 = *(this + 9);
  if (v8)
  {
    *(this + 10) = v8;
    operator delete(v8);
  }

  v9 = *(this + 6);
  if (v9)
  {
    *(this + 7) = v9;
    operator delete(v9);
  }

  v10 = *(this + 3);
  if (v10)
  {
    *(this + 4) = v10;
    operator delete(v10);
  }

  v11 = *this;
  if (*this)
  {
    *(this + 1) = v11;
    operator delete(v11);
  }
}

float OpenSubdiv::v3_1_1::Far::internal::WeightTable::merge<float,OpenSubdiv::v3_1_1::Far::internal::WeightTable::ScalarAccumulator>(uint64_t a1, int a2, int a3, int a4, int a5, uint64_t a6, float a7, float a8)
{
  if (*(a1 + 252) == 1 && *a1 != *(a1 + 8) && (*(*a1 + 4 * a4) == a3 ? (v8 = a4 < a5) : (v8 = 0), v8))
  {
    v9 = a4;
    while (*(*(a1 + 24) + 4 * v9) != a2)
    {
      if (a5 == ++v9)
      {
        goto LABEL_11;
      }
    }

    v11 = *(a6 + 48);
    result = (a7 * a8) + *(v11 + 4 * v9);
    *(v11 + 4 * v9) = result;
  }

  else
  {
LABEL_11:
    OpenSubdiv::v3_1_1::Far::internal::WeightTable::add<float,OpenSubdiv::v3_1_1::Far::internal::WeightTable::ScalarAccumulator>(a1, a2, a3, a6, a7 * a8);
  }

  return result;
}

void OpenSubdiv::v3_1_1::Far::internal::WeightTable::add<float,OpenSubdiv::v3_1_1::Far::internal::WeightTable::ScalarAccumulator>(uint64_t a1, int a2, int a3, uint64_t a4, float a5)
{
  v16 = a3;
  v17 = a2;
  v9 = *(a1 + 8);
  if (*a1 == v9 || *(v9 - 4) != a3)
  {
    v13 = *(a1 + 192);
    v12 = (a1 + 192);
    if (((*(a1 + 200) - v13) >> 2) <= a3)
    {
      v14 = a3 + 1;
      std::vector<float>::resize(v12, v14);
      std::vector<float>::resize((a1 + 216), v14);
      v13 = *(a1 + 192);
    }

    v15 = (*(a1 + 32) - *(a1 + 24)) >> 2;
    v11 = a3;
    *(v13 + 4 * a3) = v15;
    v10 = *(a1 + 216);
    *(v10 + 4 * a3) = 0;
    *(a1 + 244) = v15;
  }

  else
  {
    v10 = *(a1 + 216);
    v11 = a3;
  }

  ++*(a1 + 240);
  ++*(v10 + 4 * v11);
  std::vector<int>::push_back[abi:nn200100](a1, &v16);
  std::vector<int>::push_back[abi:nn200100]((a1 + 24), &v17);
  v18 = a5;
  std::vector<float>::push_back[abi:nn200100]((a4 + 48), &v18);
}

uint64_t OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::BuilderContext(uint64_t a1, const OpenSubdiv::v3_1_1::Far::TopologyRefiner *a2, uint64_t a3, uint64_t a4)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  OpenSubdiv::v3_1_1::Far::PtexIndices::PtexIndices((a1 + 32), a2);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 24) = 1;
  if ((*(a1 + 9) & 0x10) != 0)
  {
    v5 = *(a1 + 12);
    if (v5 == -1)
    {
      std::vector<float>::resize((a1 + 144), ((*(**(*a1 + 40) + 464) - *(**(*a1 + 40) + 456)) >> 3));
      v6 = *(a1 + 144);
      v7 = *(a1 + 152) - v6;
      if ((v7 >> 2) >= 1)
      {
        v8 = 0;
        v9 = vdupq_n_s64(((v7 >> 2) & 0x7FFFFFFF) - 1);
        v10 = xmmword_21C27F630;
        v11 = xmmword_21C27F640;
        v12 = (v6 + 8);
        v13 = vdupq_n_s64(4uLL);
        do
        {
          v14 = vmovn_s64(vcgeq_u64(v9, v11));
          if (vuzp1_s16(v14, *v9.i8).u8[0])
          {
            *(v12 - 2) = v8;
          }

          if (vuzp1_s16(v14, *&v9).i8[2])
          {
            *(v12 - 1) = v8 + 1;
          }

          if (vuzp1_s16(*&v9, vmovn_s64(vcgeq_u64(v9, *&v10))).i32[1])
          {
            *v12 = v8 + 2;
            v12[1] = v8 + 3;
          }

          v8 += 4;
          v10 = vaddq_s64(v10, v13);
          v11 = vaddq_s64(v11, v13);
          v12 += 4;
        }

        while ((((v7 >> 2) + 3) & 0xFFFFFFFC) != v8);
      }
    }

    else
    {
      std::vector<int>::__assign_with_size[abi:nn200100]<int const*,int const*>((a1 + 144), *(a1 + 16), (*(a1 + 16) + 4 * v5), v5);
    }
  }

  return a1;
}

uint64_t OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GatherLinearPatchPoints(void *a1, _DWORD *a2, int *a3, unsigned int a4)
{
  v6 = a3[1];
  v7 = *(*(*a1 + 40) + 8 * v6);
  if ((a4 & 0x80000000) != 0)
  {
    v8 = *(a1[12] + 4 * v6);
  }

  else
  {
    v8 = *(*(a1[15] + 24 * a4) + 4 * v6);
    v9 = *(a1[18] + 4 * a4);
    if ((v9 & 0x80000000) == 0)
    {
      FaceFVarValues = OpenSubdiv::v3_1_1::Vtr::internal::Level::getFaceFVarValues(v7, *a3, v9);
      goto LABEL_6;
    }
  }

  v12 = *a3;
  v13 = *(v7 + 3);
  FaceFVarValues = (*(v7 + 6) + 4 * *(v13 + 8 * v12 + 4));
  v11 = *(v13 + 8 * v12);
LABEL_6:
  if (v11 >= 1)
  {
    v14 = v11;
    do
    {
      v15 = *FaceFVarValues++;
      *a2++ = v15 + v8;
      --v14;
    }

    while (v14);
  }

  return v11;
}

uint64_t OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GatherRegularPatchPoints(void *a1, uint64_t a2, int *a3, int a4, unsigned int a5)
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a3[1];
  v8 = *(*(*a1 + 40) + 8 * v7);
  if ((a5 & 0x80000000) != 0)
  {
    v9 = a1 + 12;
    v10 = -1;
  }

  else
  {
    v9 = (a1[15] + 24 * a5);
    v10 = *(a1[18] + 4 * a5);
  }

  v11 = *(*v9 + 4 * v7);
  if (!a4)
  {
    goto LABEL_8;
  }

  v12 = OpenSubdiv::v3_1_1::Far::PatchTableFactory::PatchFaceTag::assignBoundaryPropertiesFromEdgeMask(int)::edgeMaskToCount[a4];
  v13 = OpenSubdiv::v3_1_1::Far::PatchTableFactory::PatchFaceTag::assignBoundaryPropertiesFromEdgeMask(int)::edgeMaskToIndex[a4];
  switch(v12)
  {
    case 2:
      v14 = &OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GatherRegularPatchPoints(int *,OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::PatchTuple const&,int,int)const::permuteCorner + 64 * v13;
      OpenSubdiv::v3_1_1::Vtr::internal::Level::gatherQuadRegularCornerPatchPoints(v8, *a3, v22, v13, v10);
LABEL_11:
      v15 = 0;
      v16 = v22[0];
      do
      {
        v17 = *&v14[v15];
        v18 = v16;
        if ((v17 & 0x80000000) == 0)
        {
          v18 = v22[v17];
        }

        *(a2 + v15) = v18 + v11;
        v15 += 4;
      }

      while (v15 != 64);
      return 16;
    case 1:
      v14 = &OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GatherRegularPatchPoints(int *,OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::PatchTuple const&,int,int)const::permuteBoundary + 64 * v13;
      OpenSubdiv::v3_1_1::Vtr::internal::Level::gatherQuadRegularBoundaryPatchPoints(v8, *a3, v22, v13, v10);
      goto LABEL_11;
    case 0:
LABEL_8:
      OpenSubdiv::v3_1_1::Vtr::internal::Level::gatherQuadRegularInteriorPatchPoints(v8, *a3, v22, 0, v10);
      v14 = &OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GatherRegularPatchPoints(int *,OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::PatchTuple const&,int,int)const::permuteRegular;
      goto LABEL_11;
  }

  if (v11)
  {
    v20 = 0;
    v21 = vdupq_n_s32(v11);
    do
    {
      *(a2 + v20 * 4) = vaddq_s32(*&v22[v20], v21);
      v20 += 4;
    }

    while (v20 != 16);
  }

  return 16;
}

BOOL OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::IsPatchEligible(OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext *this, uint64_t a2, int a3)
{
  v3 = *this;
  v4 = *(*(*this + 40) + 8 * a2);
  if (*(v4[12] + a3) & 1) != 0 || ((*(v3 + 8) >> 2) & 0xF) > a2 && (*(*(*(*(v3 + 64) + 8 * a2) + 408) + a3))
  {
    return 0;
  }

  v5 = v4[3];
  v6 = *(v5 + 8 * a3);
  v8 = (v4[6] + 4 * *(v5 + 8 * a3 + 4));
  v9 = v6;
  if (v6 != 4)
  {
    OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::IsPatchEligible();
  }

  return (OpenSubdiv::v3_1_1::Vtr::internal::Level::getFaceCompositeVTag(v4, &v8) & 0x800) == 0;
}

BOOL OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::IsPatchSmoothCorner(OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext *this, int a2, uint64_t a3, unsigned int a4)
{
  v4 = a3;
  v20[1] = *MEMORY[0x277D85DE8];
  v7 = *(*(*this + 40) + 8 * a2);
  if ((a4 & 0x80000000) != 0 || OpenSubdiv::v3_1_1::Vtr::internal::Level::doesFaceFVarTopologyMatch(*(*(*this + 40) + 8 * a2), a3, *(*(this + 18) + 4 * a4)))
  {
    v9 = -1;
  }

  else
  {
    v9 = *(*(this + 18) + 4 * a4);
  }

  if (*(v7[3] + 8 * v4) != 4)
  {
    return 0;
  }

  OpenSubdiv::v3_1_1::Vtr::internal::Level::getFaceVTags(v7, v4, v20, v9);
  v10 = (*(this + 4) & 8) != 0 ? 6016 : 1924;
  v11 = (*(this + 4) & 8) != 0 ? 4608 : 516;
  v12 = vand_s8(vceq_s16(vand_s8(v20[0], vdup_n_s16(v10)), vdup_n_s16(v11)), 0x8000400020001);
  v12.i32[0] = vaddv_s16(v12) & 0xF;
  v13 = vcnt_s8(v12);
  v13.i16[0] = vaddlv_u8(v13);
  v14 = (v20[0].u16[0] >> 1) & 1;
  v15 = (v20[0].u16[1] >> 1) & 1;
  v16 = (v20[0].u16[2] >> 1) & 1;
  if (v13.i32[0] != 3 || v15 + v14 + v16 + ((v20[0].u16[3] >> 1) & 1) != 1)
  {
    return 0;
  }

  if (a2 > 1)
  {
    return 1;
  }

  if (v14)
  {
    v19 = v20[0].i16[2] & 0x780;
  }

  else if (v15)
  {
    v19 = v20[0].i16[3] & 0x780;
  }

  else if (v16)
  {
    v19 = v20[0].i16[0] & 0x780;
  }

  else
  {
    v19 = v20[0].i16[1] & 0x780;
  }

  return v19 == 128;
}

BOOL OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::IsPatchRegular(OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext *this, int a2, uint64_t a3, unsigned int a4)
{
  v5 = a2;
  v21[1] = *MEMORY[0x277D85DE8];
  v7 = *(*(*this + 40) + 8 * a2);
  if ((a4 & 0x80000000) != 0 || OpenSubdiv::v3_1_1::Vtr::internal::Level::doesFaceFVarTopologyMatch(v7, a3, *(*(this + 18) + 4 * a4)))
  {
    v9 = -1;
  }

  else
  {
    v9 = *(*(this + 18) + 4 * a4);
  }

  FaceCompositeVTag = OpenSubdiv::v3_1_1::Vtr::internal::Level::getFaceCompositeVTag(v7, a3, v9);
  v11 = FaceCompositeVTag;
  LOBYTE(v12) = ((FaceCompositeVTag & 2) == 0) | FaceCompositeVTag;
  if ((*(this + 4) & 8) != 0 && (FaceCompositeVTag & 0x1010) != 0)
  {
    v12 = (FaceCompositeVTag & 0x4001) != 0x4000;
    if ((FaceCompositeVTag & 0x5001) == 0x5000)
    {
      v18 = v5;
      OpenSubdiv::v3_1_1::Vtr::internal::Level::getFaceVTags(v7, a3, v21, v9);
      v13 = 0;
      v12 = 0;
      v20 = 0;
      v19 = 0;
      do
      {
        v14 = v21[0].i16[v13];
        if ((v14 & 0x4000) != 0)
        {
          v15 = (v14 & 0x2000) != 0 ? 2 : 1;
          if (v15 != v19)
          {
            break;
          }
        }

        v12 = v13++ > 2;
      }

      while (v13 != 4);
      v5 = v18;
    }

    if (v5 <= 1 && (v11 & 2) != 0)
    {
      OpenSubdiv::v3_1_1::Vtr::internal::Level::getFaceVTags(v7, a3, v21, v9);
      v16 = vceq_s16(vand_s8(v21[0], vdup_n_s16(0x782u)), 0x82008200820082);
      v16.i16[0] = vmaxv_u16(v16);
      if ((v12 & ~v16.i32[0] & 1) == 0)
      {
        goto LABEL_19;
      }

      return 1;
    }
  }

  if (v12)
  {
    return 1;
  }

LABEL_19:
  result = 0;
  if (*(this + 24) == 1 && (v11 & 7) == 6)
  {
    return OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::IsPatchSmoothCorner(this, v5, a3, v9);
  }

  return result;
}

uint64_t OpenSubdiv::v3_1_1::Far::anonymous namespace::identifyManifoldCornerSpan(void *a1, int a2, int a3, int a4, uint64_t a5, unsigned int a6)
{
  if ((a6 & 0x80000000) != 0)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(a1[57] + 8 * a6);
  }

  v7 = 1;
  v8 = *(a1[3] + 4 * ((2 * a2) | 1));
  v9 = *(a1[6] + 4 * v8 + 4 * a3);
  v10 = 2 * v9;
  v11 = a1[42];
  v12 = a1[45] + 4 * *(v11 + 8 * v9 + 4);
  v13 = *(v11 + 4 * v10);
  if (v13 < 1)
  {
LABEL_8:
    LODWORD(v14) = -1;
  }

  else
  {
    v14 = 0;
    v15 = *(a1[9] + 4 * v8 + 4 * a3);
    while (*(v12 + 4 * v14) != v15)
    {
      if (v13 == ++v14)
      {
        goto LABEL_8;
      }
    }
  }

  v16 = (v14 + 1) % v13;
  *(a5 + 2) = 0;
  *a5 = 1;
  v17 = a1[30];
  v18 = v14;
  while (1)
  {
    result = *(v12 + 4 * v18);
    v20 = *(v17 + result);
    if (v6)
    {
      result = *(*(v6 + 48) + result);
      if (result)
      {
        v20 |= 6u;
      }
    }

    if ((v20 & a4) != 0)
    {
      break;
    }

    *a5 = ++v7;
    v18 = (v13 - 1 + v18) % v13;
    if (v18 == v16)
    {
      v18 = (v14 + 1) % v13;
      goto LABEL_16;
    }
  }

  do
  {
LABEL_16:
    v21 = *(v12 + 4 * v16);
    v22 = *(v17 + v21);
    if (v6)
    {
      result = v22 | 6u;
      if (*(*(v6 + 48) + v21))
      {
        v22 |= 6u;
      }
    }

    if ((v22 & a4) != 0)
    {
      break;
    }

    *a5 = ++v7;
    v16 = (v16 + 1) % v13;
  }

  while (v16 != v14);
  *(a5 + 2) = v18;
  return result;
}

uint64_t OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GetRegularPatchBoundaryMask(OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext *this, int a2, uint64_t a3, unsigned int a4)
{
  v4 = a3;
  v15[1] = *MEMORY[0x277D85DE8];
  v6 = *(*(*this + 40) + 8 * a2);
  if ((a4 & 0x80000000) != 0 || OpenSubdiv::v3_1_1::Vtr::internal::Level::doesFaceFVarTopologyMatch(v6, a3, *(*(this + 18) + 4 * a4)))
  {
    v8 = -1;
  }

  else
  {
    v8 = *(*(this + 18) + 4 * a4);
  }

  OpenSubdiv::v3_1_1::Vtr::internal::Level::getFaceVTags(v6, v4, v15, v8);
  v9 = OpenSubdiv::v3_1_1::Vtr::internal::Level::VTag::BitwiseOr(v15, 4u);
  if ((v9 & 0x1000) == 0)
  {
    goto LABEL_6;
  }

  if ((*(this + 4) & 8) != 0)
  {
    v11 = vand_s8(vshl_u16(v15[0], 0xFFF7FFF6FFF5FFF4), 0x8000400020001);
    LOWORD(v10) = v11.i16[0] | v11.i16[2] | ((v11.i32[0] | v11.i32[1]) >> 16);
    goto LABEL_11;
  }

  if ((v9 & 4) != 0)
  {
    v10 = (v15[0].u16[1] >> 1) & 2 | (v15[0].u16[0] >> 2) & 1 | v15[0].i8[4] & 4 | (8 * ((v15[0].u16[3] >> 2) & 1));
  }

  else
  {
LABEL_6:
    LOWORD(v10) = 0;
  }

LABEL_11:
  v10 = v10;
  if (v9 & 1) != 0 && (v12 = vbicq_s8(vbslq_s8(vmovl_s16(vceqz_s16(vand_s8(v15[0], 0x10001000100010))), xmmword_21C27FE30, xmmword_21C2A47F0), vmovl_s16(vceqz_s16(vand_s8(v15[0], 0x1000100010001)))), *v12.i8 = vorr_s8(*v12.i8, *&vextq_s8(v12, v12, 8uLL)), v10 = v12.i32[0] | v10 | v12.i32[1], v13 = v10 - 1, (v10 - 1) < 8) && ((0x8Bu >> v13))
  {
    v10 = dword_21C2A4B14[v13];
  }

  else if (!v10)
  {
    return 0;
  }

  if ((0x8536uLL >> v10))
  {
    OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GetRegularPatchBoundaryMask();
  }

  return OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GetRegularPatchBoundaryMask(int,int,int)const::vBoundaryMaskToEMask[v10];
}

uint64_t OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GetIrregularPatchCornerSpans(uint64_t a1, int a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v6 = a3;
  v40 = *MEMORY[0x277D85DE8];
  v8 = *(*(*a1 + 40) + 8 * a2);
  if ((a5 & 0x80000000) != 0 || OpenSubdiv::v3_1_1::Vtr::internal::Level::doesFaceFVarTopologyMatch(v8, a3, *(*(a1 + 144) + 4 * a5)))
  {
    v10 = -1;
    result = OpenSubdiv::v3_1_1::Vtr::internal::Level::getFaceVTags(v8, v6, v39, 0xFFFFFFFF);
  }

  else
  {
    v10 = *(*(a1 + 144) + 4 * a5);
    result = OpenSubdiv::v3_1_1::Vtr::internal::Level::getFaceVTags(v8, v6, v39, v10);
    if ((v10 & 0x80000000) == 0)
    {
      result = OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getFaceValueTags(*(*(v8 + 57) + 8 * v10), v6, v38);
    }
  }

  v12 = *(v8 + 3);
  v13 = *(v12 + 8 * v6);
  if (v13 >= 1)
  {
    v14 = 0;
    v37 = (2 * v6) | 1;
    v15 = *(v8 + 6) + 4 * *(v12 + 4 * v37);
    v16 = 7;
    if ((*(a1 + 8) & 8) == 0)
    {
      v16 = 3;
    }

    v35 = v15;
    v36 = v16;
    do
    {
      if ((v10 & 0x80000000) != 0)
      {
        v17 = 0;
      }

      else
      {
        v17 = v38[v14] & 1;
      }

      if ((*(a1 + 8) & 8) != 0)
      {
        v18 = (v39[v14] & 0x1000) != 0 && (v39[v14] & 0x780) != 256;
      }

      else
      {
        v18 = 0;
      }

      if ((v17 | v18))
      {
        v19 = v39[v14];
        v20 = a4 + 6 * v14;
        if (v19)
        {
          v23 = *(*(v8 + 6) + 4 * *(*(v8 + 3) + 4 * v37) + 4 * v14);
          v24 = *(v8 + 36);
          v25 = *(v8 + 33);
          v26 = *(v25 + 8 * v23 + 4);
          v27 = *(v25 + 8 * v23);
          v28 = *(v8 + 39);
          *(v20 + 4) = 0;
          *v20 = 0;
          if (v27 < 1)
          {
LABEL_43:
            OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GetIrregularPatchCornerSpans();
          }

          v29 = 0;
          v30 = v24 + 4 * v26;
          v31 = v28 + 2 * v26;
          while (*(v30 + 4 * v29) != v6 || v14 != *(v31 + 2 * v29))
          {
            if (v27 == ++v29)
            {
              goto LABEL_43;
            }
          }

          *(v20 + 2) = v29;
          *v20 = 1;
          *(v20 + 4) = 2;
          if ((v19 & 8) != 0)
          {
LABEL_34:
            v32 = a4 + 6 * v14;
            v22 = *(v32 + 4) | 2;
            goto LABEL_35;
          }
        }

        else
        {
          if ((v19 & 8) != 0)
          {
            goto LABEL_34;
          }
        }
      }

      else
      {
        v21 = a4 + 6 * v14;
        *(v21 + 4) = 0;
        *v21 = 0;
        v19 = v39[v14];
        if ((v19 & 8) != 0)
        {
          goto LABEL_34;
        }
      }

      if ((*(a1 + 8) & 8) == 0)
      {
        v22 = *(a4 + 6 * v14 + 4);
        if ((v22 & 2) == 0)
        {
          goto LABEL_36;
        }

        goto LABEL_41;
      }

      v32 = a4 + 6 * v14;
      v22 = *(v32 + 4) & 0xFD | (v19 >> 13) & (2 * ((v19 & 0x780) == 1024));
LABEL_35:
      *(v32 + 4) = v22;
      if ((v22 & 2) == 0)
      {
LABEL_36:
        if (v19 & 7) == 6 && (*(a1 + 24))
        {
          v33 = (a4 + 6 * v14);
          v34 = *v33;
          if (!*v33)
          {
            v34 = *(*(v8 + 33) + 8 * *(v35 + 4 * v14));
          }

          *(v33 + 4) = v22 | (2 * (v34 == 1));
        }
      }

LABEL_41:
      ++v14;
    }

    while (v14 != v13);
  }

  return result;
}

void OpenSubdiv::v3_1_1::Far::PatchTableFactory::allocateVertexTables(OpenSubdiv::v3_1_1::Far::PatchTableFactory *this, const OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext *a2, OpenSubdiv::v3_1_1::Far::PatchTable *a3)
{
  if (OpenSubdiv::v3_1_1::Far::PatchTable::GetNumPatchArrays(a2) >= 1)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    do
    {
      v6 += OpenSubdiv::v3_1_1::Far::PatchTable::GetNumPatches(a2, v5);
      v7 += OpenSubdiv::v3_1_1::Far::PatchTable::GetNumControlVertices(a2, v5);
      v5 = (v5 + 1);
    }

    while (v5 < OpenSubdiv::v3_1_1::Far::PatchTable::GetNumPatchArrays(a2));
    if (v7 && v6)
    {
      std::vector<float>::resize((a2 + 32), v7);
      std::vector<ClippedCorner>::resize(a2 + 7, v6);
      if ((*(*this + 8) & 1) == 0)
      {
        v8 = 3;
        OpenSubdiv::v3_1_1::Far::PatchTable::allocateVaryingVertices(a2, &v8, v6);
      }

      if ((*(this + 4) & 4) != 0)
      {
        std::vector<int>::resize((a2 + 224), v6, &OpenSubdiv::v3_1_1::Vtr::INDEX_INVALID);
      }
    }
  }
}

void OpenSubdiv::v3_1_1::Far::PatchTableFactory::allocateFVarChannels(OpenSubdiv::v3_1_1::Far::PatchTableFactory *this, const OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext *a2, OpenSubdiv::v3_1_1::Far::PatchTable *a3)
{
  v5 = *this;
  NumPatchesTotal = OpenSubdiv::v3_1_1::Far::PatchTable::GetNumPatchesTotal(a2);
  OpenSubdiv::v3_1_1::Far::PatchTable::allocateFVarPatchChannels(a2, (*(this + 19) - *(this + 18)) >> 2);
  v7 = *(this + 18);
  if (((*(this + 19) - v7) >> 2) >= 1)
  {
    v8 = 0;
    do
    {
      v9 = (OpenSubdiv::v3_1_1::Vtr::internal::Level::getFVarOptions(**(v5 + 40), *(v7 + 4 * v8)) >> 2) & 7;
      OpenSubdiv::v3_1_1::Far::PatchTable::setFVarPatchChannelLinearInterpolation(a2, v9, v8);
      v10 = *(this + 4);
      if (*(v5 + 8))
      {
        if ((v10 & 2) != 0)
        {
          v14 = 4;
        }

        else
        {
          v14 = 3;
        }

        v16 = v14;
        v13 = &v16;
      }

      else
      {
        v11 = (v10 >> 13) & 1;
        if (v9 == 5)
        {
          v11 = 1;
        }

        if ((v10 & 0x700) == 0x300)
        {
          v12 = 9;
        }

        else
        {
          v12 = 6;
        }

        if (v11)
        {
          v12 = 3;
        }

        v15 = v12;
        v13 = &v15;
      }

      OpenSubdiv::v3_1_1::Far::PatchTable::allocateFVarPatchChannelValues(a2, v13, NumPatchesTotal, v8++);
      v7 = *(this + 18);
    }

    while (v8 < ((*(this + 19) - v7) >> 2));
  }
}

unint64_t OpenSubdiv::v3_1_1::Far::PatchTableFactory::computePatchParam(OpenSubdiv::v3_1_1::Far::PatchTableFactory *this, const OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext *a2, uint64_t a3, char a4, unsigned __int8 a5)
{
  v7 = a2;
  v8 = *this;
  v9 = *(*(*(*(*this + 88) + 24 * a2) + 24) + 8 * a3) != 4;
  if (a2 < 1)
  {
    v26 = 0;
    v25 = 0;
    v10 = 0;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = *(v8 + 64);
    v14 = *(v8 + 40);
    v15 = 1;
    v16 = a2;
    do
    {
      v17 = *(v13 + 8 * (v16 - 1));
      v18 = a3;
      a3 = *(v17[33] + 4 * a3);
      if (*(*(*(v14 + 8 * (v16 - 1)) + 24) + 8 * a3) == 4)
      {
        v10 = (*(v17[42] + v18) >> 3) & 3;
        if (v10 == 2)
        {
          v19 = v11 + v15;
        }

        else
        {
          v19 = v11;
        }

        if (v10)
        {
          v11 += v15;
        }

        if (v10 > 1)
        {
          v12 += v15;
          v11 = v19;
        }

        v15 = 2 * (v15 & 0x7FFF);
      }

      else
      {
        v20 = v17[11];
        v21 = *(v20 + 8 * a3);
        if (v21 < 1)
        {
LABEL_16:
          v9 = 1;
        }

        else
        {
          v22 = 0;
          v23 = v17[15] + 4 * *(v20 + 4 * ((2 * a3) | 1));
          while (*(v23 + 4 * v22) != v18)
          {
            if (v21 == ++v22)
            {
              goto LABEL_16;
            }
          }

          v9 = 1;
          v10 = v22;
        }
      }
    }

    while (v16-- > 1);
    v25 = v11 << 22;
    v26 = (v12 & 0x3FF) << 12;
  }

  FaceId = OpenSubdiv::v3_1_1::Far::PtexIndices::GetFaceId((this + 32), a3);
  if (FaceId == -1)
  {
    OpenSubdiv::v3_1_1::Far::PatchTableFactory::computePatchParam();
  }

  if (v9)
  {
    v28 = v10;
  }

  else
  {
    v28 = 0;
  }

  v29 = (FaceId + v28) & 0xFFFFFFF | (a5 << 28);
  if (v9)
  {
    v30 = 16;
  }

  else
  {
    v30 = 0;
  }

  return v29 | ((v7 & 0xF | ((a4 & 0xF) << 8) | v26 | v25 | v30) << 32);
}

void OpenSubdiv::v3_1_1::Far::PatchTableFactory::Create(const OpenSubdiv::v3_1_1::Far::TopologyRefiner *a1, uint64_t a2, uint64_t a3)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    OpenSubdiv::v3_1_1::Far::PatchTableFactory::createAdaptive(a1, a2, a3);
  }

  OpenSubdiv::v3_1_1::Far::PatchTableFactory::createUniform(a1, a2, a3);
}

void OpenSubdiv::v3_1_1::Far::PatchTableFactory::createUniform(const OpenSubdiv::v3_1_1::Far::TopologyRefiner *a1, uint64_t a2, uint64_t a3)
{
  v7 = *MEMORY[0x277D85DE8];
  if (*(a1 + 8))
  {
    v3 = a2;
    OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::BuilderContext(v6, a1, a2, a3);
    v5 = *a1;
    if ((v3 & (2 * (v5 < 2))) == 0 && v5 >= 3)
    {
      OpenSubdiv::v3_1_1::Far::PatchTableFactory::createUniform();
    }

    operator new();
  }

  OpenSubdiv::v3_1_1::Far::PatchTableFactory::createUniform();
}

void OpenSubdiv::v3_1_1::Far::PatchTableFactory::createAdaptive(const OpenSubdiv::v3_1_1::Far::TopologyRefiner *a1, uint64_t a2, uint64_t a3)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::BuilderContext(v4, a1, a2, a3);
    OpenSubdiv::v3_1_1::Far::PatchTableFactory::identifyAdaptivePatches(v4, v3);
    operator new();
  }

  OpenSubdiv::v3_1_1::Far::PatchTableFactory::createAdaptive();
}

void OpenSubdiv::v3_1_1::Far::PatchTableFactory::identifyAdaptivePatches(OpenSubdiv::v3_1_1::Far::PatchTableFactory *this, OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext *a2)
{
  v3 = *this;
  v4 = (this + 72);
  std::vector<OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::PatchTuple>::reserve(this + 9, *(*this + 28));
  LODWORD(__p) = 0;
  std::vector<int>::push_back[abi:nn200100](this + 12, &__p);
  std::vector<std::vector<int>>::resize(this + 15, (*(this + 19) - *(this + 18)) >> 2);
  if (((*(this + 19) - *(this + 18)) >> 2) >= 1)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = *(this + 15);
      LODWORD(__p) = 0;
      std::vector<int>::push_back[abi:nn200100]((v7 + v5), &__p);
      ++v6;
      v5 += 24;
    }

    while (v6 < ((*(this + 19) - *(this + 18)) >> 2));
  }

  if ((-1431655765 * ((v3[12] - v3[11]) >> 3)) >= 1)
  {
    v8 = 0;
    v9 = this + 64;
    v28 = v3;
    while (1)
    {
      v10 = v9;
      v11 = *(v3[5] + 8 * v8);
      LODWORD(__p) = *(v11 + 2) + *(*(this + 13) - 4);
      std::vector<int>::push_back[abi:nn200100](this + 12, &__p);
      v12 = *(this + 18);
      if (((*(this + 19) - v12) >> 2) >= 1)
      {
        v13 = 0;
        v14 = 8;
        do
        {
          v15 = (*(this + 15) + v14);
          v16 = *(*v15 - 1);
          LODWORD(__p) = OpenSubdiv::v3_1_1::Vtr::internal::Level::getNumFVarValues(v11, *(v12 + 4 * v13)) + v16;
          std::vector<int>::push_back[abi:nn200100](v15 - 1, &__p);
          ++v13;
          v12 = *(this + 18);
          v14 += 24;
        }

        while (v13 < ((*(this + 19) - v12) >> 2));
      }

      v9 = v10;
      if (*v11 >= 1)
      {
        break;
      }

LABEL_32:
      ++v8;
      v3 = v28;
      if (v8 >= (-1431655765 * ((v28[12] - v28[11]) >> 3)))
      {
        return;
      }
    }

    v17 = 0;
    while (1)
    {
      if (OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::IsPatchEligible(this, v8, v17))
      {
        v19 = *(this + 10);
        v18 = *(this + 11);
        if (v19 >= v18)
        {
          v21 = (v19 - *v4) >> 3;
          v22 = v21 + 1;
          if ((v21 + 1) >> 61)
          {
            std::string::__throw_length_error[abi:nn200100]();
          }

          v23 = v18 - *v4;
          if (v23 >> 2 > v22)
          {
            v22 = v23 >> 2;
          }

          if (v23 >= 0x7FFFFFFFFFFFFFF8)
          {
            v24 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v24 = v22;
          }

          v33 = v4;
          if (v24)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<double>>(v4, v24);
          }

          v25 = (8 * v21);
          __p = 0;
          v30 = v25;
          v32 = 0;
          *v25 = v17;
          v25[1] = v8;
          v31 = 8 * v21 + 8;
          std::vector<OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::PatchTuple>::__swap_out_circular_buffer(v4, &__p);
          v20 = *(this + 10);
          if (v31 != v30)
          {
            v31 += (v30 - v31 + 7) & 0xFFFFFFFFFFFFFFF8;
          }

          if (__p)
          {
            operator delete(__p);
          }
        }

        else
        {
          *v19 = v17;
          *(v19 + 1) = v8;
          v20 = v19 + 8;
        }

        *(this + 10) = v20;
        if (OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::IsPatchRegular(this, v8, v17, 0xFFFFFFFF))
        {
          v26 = 1;
          v27 = (this + 56);
LABEL_30:
          *v27 += v26;
          goto LABEL_31;
        }

        ++*(this + 15);
        if ((*(this + 4) & 0x700) == 0x400)
        {
          v26 = (OpenSubdiv::v3_1_1::Vtr::internal::Level::getFaceCompositeVTag(v11, v17, 0xFFFFFFFF) >> 2) & 1;
          v27 = v10;
          goto LABEL_30;
        }
      }

LABEL_31:
      v17 = (v17 + 1);
      if (v17 >= *v11)
      {
        goto LABEL_32;
      }
    }
  }
}

void OpenSubdiv::v3_1_1::Far::PatchTableFactory::populateAdaptivePatches(OpenSubdiv::v3_1_1::Far::PatchTableFactory *this, OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext *a2, OpenSubdiv::v3_1_1::Far::PatchTable *a3)
{
  v5 = 0;
  v153 = *MEMORY[0x277D85DE8];
  v122 = *this;
  do
  {
    v6 = &v149 + v5;
    *v6 = 6;
    *(v6 + 4) = 0;
    *(v6 + 7) = 0;
    *(v6 + 12) = 0uLL;
    *(v6 + 4) = &v152[v5];
    *(v6 + 5) = 0x100000000;
    *(v6 + 7) = 0;
    *(v6 + 8) = &v152[v5 + 32];
    *(v6 + 9) = 0x100000000;
    v5 += 96;
    *(v6 + 11) = 0;
  }

  while (v5 != 288);
  v7 = *(this + 14);
  v149 = 6;
  v150 = v7;
  v8 = v7 > 0;
  v9 = *(this + 9) & 7;
  switch(v9)
  {
    case 4:
      v17 = &v149 + 24 * (v7 > 0);
      v18 = *(this + 15);
      v19 = *(this + 16);
      v15 = __OFSUB__(v18, v19);
      v20 = v18 - v19;
      *v17 = 7;
      v17[1] = v20;
      if ((v20 < 0) ^ v15 | (v20 == 0))
      {
        v21 = v8;
      }

      else
      {
        v21 = v8 + 1;
      }

      v22 = &v149 + 24 * v21;
      *v22 = 8;
      v22[1] = v19;
      v125 = v21;
      v127 = v8;
      if (v19 <= 0)
      {
        v11 = v21;
      }

      else
      {
        v11 = v21 + 1;
      }

      break;
    case 3:
      v12 = &v149 + 24 * (v7 > 0);
      v13 = *(this + 15);
      v14 = v12[1];
      v15 = __OFADD__(v14, v13);
      v16 = v14 + v13;
      *v12 = 9;
      v12[1] = v16;
      if ((v16 < 0) ^ v15 | (v16 == 0))
      {
        v11 = v8;
      }

      else
      {
        v11 = v8 + 1;
      }

      v125 = v8;
      v127 = v8;
      break;
    case 2:
      v125 = 0;
      v127 = 0;
      v10 = *(this + 15);
      v150 = v10 + v7;
      if ((v150 < 0) ^ __OFADD__(v10, v7) | (v150 == 0))
      {
        v11 = 0;
      }

      else
      {
        v11 = 1;
      }

      break;
    default:
      v11 = v7 > 0;
      v125 = 2;
      v127 = 1;
      break;
  }

  OpenSubdiv::v3_1_1::Far::PatchTable::reservePatchArrays(a2, v11);
  v132 = 0;
  v131 = 0;
  if (v11)
  {
    v24 = v11;
    v25 = &v150;
    do
    {
      v26 = *v25;
      LODWORD(v145) = *(v25 - 1);
      OpenSubdiv::v3_1_1::Far::PatchTable::pushPatchArray(a2, &v145, v26, &v132 + 1, &v132, &v131);
      v25 += 24;
      --v24;
    }

    while (v24);
  }

  v123 = *(this + 4);
  OpenSubdiv::v3_1_1::Far::PatchTableFactory::allocateVertexTables(this, a2, v23);
  if (*(this + 18) != *(this + 19))
  {
    OpenSubdiv::v3_1_1::Far::PatchTableFactory::allocateFVarChannels(this, a2, v27);
  }

  if (v11)
  {
    v28 = 0;
    v29 = v11;
    do
    {
      v30 = &v149 + 24 * v28;
      *(v30 + 1) = OpenSubdiv::v3_1_1::Far::PatchTable::getPatchArrayVertices(a2, v28);
      *(v30 + 2) = OpenSubdiv::v3_1_1::Far::PatchTable::getPatchParams(a2, v28);
      if ((v123 & 4) != 0)
      {
        *(v30 + 3) = OpenSubdiv::v3_1_1::Far::PatchTable::getSharpnessIndices(a2, v28);
      }

      v31 = *(this + 18);
      v32 = *(this + 19);
      if (v31 != v32)
      {
        v33 = v32 - v31;
        v34 = (v32 - v31) >> 2;
        if (v34)
        {
          if (v30[11] < v34)
          {
            operator delete(*(v30 + 7));
            *(v30 + 4) = v30 + 12;
            v30[11] = 1;
            v35 = operator new((2 * v33) & 0x7FFFFFFF8);
            *(v30 + 7) = v35;
            *(v30 + 4) = v35;
            v30[11] = v34;
          }
        }

        else
        {
          operator delete(*(v30 + 7));
          *(v30 + 4) = v30 + 12;
          v30[11] = 1;
        }

        v30[10] = v34;
        v36 = *(this + 19) - *(this + 18);
        v37 = v36 >> 2;
        if ((v36 >> 2))
        {
          if (v30[19] < v37)
          {
            operator delete(*(v30 + 11));
            *(v30 + 8) = v30 + 20;
            v30[19] = 1;
            v38 = operator new((2 * v36) & 0x7FFFFFFF8);
            *(v30 + 11) = v38;
            *(v30 + 8) = v38;
            v30[19] = v37;
          }
        }

        else
        {
          operator delete(*(v30 + 11));
          *(v30 + 8) = v30 + 20;
          v30[19] = 1;
        }

        v30[18] = v37;
        if (((*(this + 19) - *(this + 18)) >> 2) >= 1)
        {
          v39 = 0;
          do
          {
            OpenSubdiv::v3_1_1::Far::PatchTable::GetFVarPatchDescriptor(&v145, a2, v39);
            PatchIndex = OpenSubdiv::v3_1_1::Far::PatchTable::getPatchIndex(a2, v28, 0);
            v41 = PatchIndex * OpenSubdiv::v3_1_1::Far::PatchDescriptor::GetNumControlVertices(&v145);
            *(*(v30 + 4) + 8 * v39) = OpenSubdiv::v3_1_1::Far::PatchTable::getFVarValues(a2, v39) + 4 * v41;
            *(*(v30 + 8) + 8 * v39) = OpenSubdiv::v3_1_1::Far::PatchTable::getFVarPatchParams(a2, v39) + 8 * PatchIndex;
            ++v39;
          }

          while (v39 < ((*(this + 19) - *(this + 18)) >> 2));
        }
      }

      ++v28;
    }

    while (v28 != v29);
  }

  v42 = &v147;
  v146 = 0x100000000;
  v148 = 0;
  v43 = &v143;
  __p = 0;
  v141 = &v143;
  v142 = 0x100000000;
  v144 = 0;
  v145 = &v147;
  v44 = &v139;
  v137 = &v139;
  v138 = 0x100000000;
  v45 = *(this + 9) & 7;
  switch(v45)
  {
    case 2:
      operator new();
    case 3:
      operator new();
    case 4:
      operator new();
  }

  v46 = *(this + 18);
  v47 = *(this + 19);
  if (v46 != v47)
  {
    v48 = v47 - v46;
    v49 = (v47 - v46) >> 2;
    if (v49)
    {
      if (HIDWORD(v146) >= v49)
      {
        goto LABEL_54;
      }

      operator delete(v148);
      v145 = &v147;
      HIDWORD(v146) = 1;
      v42 = operator new((2 * v48) & 0x7FFFFFFF8);
      v148 = v42;
      v50 = v49;
    }

    else
    {
      operator delete(v148);
      v50 = 1;
    }

    v145 = v42;
    HIDWORD(v146) = v50;
LABEL_54:
    LODWORD(v146) = v49;
    v51 = *(this + 19) - *(this + 18);
    if ((v51 >> 2))
    {
      if (HIDWORD(v142) >= (v51 >> 2))
      {
        goto LABEL_59;
      }

      operator delete(v144);
      v141 = &v143;
      HIDWORD(v142) = 1;
      v43 = operator new((2 * v51) & 0x7FFFFFFF8);
      v144 = v43;
      v52 = v51 >> 2;
    }

    else
    {
      operator delete(v144);
      v52 = 1;
    }

    v141 = v43;
    HIDWORD(v142) = v52;
LABEL_59:
    LODWORD(v142) = v51 >> 2;
    v53 = *(this + 19) - *(this + 18);
    if ((v53 >> 2))
    {
      if (HIDWORD(v138) >= (v53 >> 2))
      {
        goto LABEL_64;
      }

      operator delete(__p);
      v137 = &v139;
      HIDWORD(v138) = 1;
      v44 = operator new((2 * v53) & 0x7FFFFFFF8);
      __p = v44;
      v54 = v53 >> 2;
    }

    else
    {
      operator delete(__p);
      v54 = 1;
    }

    v137 = v44;
    HIDWORD(v138) = v54;
LABEL_64:
    LODWORD(v138) = v53 >> 2;
    if (((*(this + 19) - *(this + 18)) >> 2) >= 1)
    {
      v55 = 0;
      do
      {
        v56 = *(this + 9) & 7;
        if (v56 == 2)
        {
          operator new();
        }

        if (v56 == 3)
        {
          operator new();
        }

        ++v55;
      }

      while (v55 < ((*(this + 19) - *(this + 18)) >> 2));
    }
  }

  v57 = *(this + 9);
  if (((*(this + 10) - v57) >> 3) >= 1)
  {
    v58 = 0;
    v121 = &v149 + 24 * v127;
    v120 = &v149 + 24 * v125;
    do
    {
      v59 = (v57 + 8 * v58);
      v60 = *(*(v122 + 5) + 8 * v59[1]);
      FaceCompositeVTag = OpenSubdiv::v3_1_1::Vtr::internal::Level::getFaceCompositeVTag(v60, *v59, 0xFFFFFFFF);
      memset(v136, 0, sizeof(v136));
      IsPatchRegular = OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::IsPatchRegular(this, v59[1], *v59, 0xFFFFFFFF);
      v64 = *v59;
      v63 = v59[1];
      v128 = IsPatchRegular;
      if (IsPatchRegular)
      {
        RegularPatchBoundaryMask = OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GetRegularPatchBoundaryMask(this, v63, v64, 0xFFFFFFFF);
        v66 = RegularPatchBoundaryMask;
        v124 = 0;
        v67 = 0.0;
        if ((v123 & 4) == 0 || RegularPatchBoundaryMask)
        {
          v69 = RegularPatchBoundaryMask;
        }

        else
        {
          if ((FaceCompositeVTag & 0x1040) == 0)
          {
            goto LABEL_87;
          }

          LODWORD(v133) = 0;
          v130[0] = 0;
          if (!OpenSubdiv::v3_1_1::Vtr::internal::Level::isSingleCreasePatch(v60, *v59, &v133, v130))
          {
            goto LABEL_87;
          }

          v68 = ((*(this + 4) >> 4) - v59[1]);
          if (*&v133 <= v68)
          {
            v68 = *&v133;
          }

          if (v68 > 0.0)
          {
            v66 = 0;
            v124 = 1;
            v69 = 1 << SLOBYTE(v130[0]);
            v67 = v68;
          }

          else
          {
LABEL_87:
            v66 = 0;
            v69 = 0;
            v124 = 0;
          }
        }

        OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GatherRegularPatchPoints(this, v151, v59, v66, 0xFFFFFFFF);
        v151 += 64;
        v73 = v59[1];
        if (v73 == ((*(*this + 8) >> 2) & 0xF))
        {
          LOBYTE(v74) = 0;
        }

        else
        {
          v74 = (*(*(*(*(*this + 64) + 8 * v73) + 408) + *v59) >> 1) & 0xF;
        }

        v71 = &v149;
      }

      else
      {
        OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GetIrregularPatchCornerSpans(this, v63, v64, v136, 0xFFFFFFFF);
        v124 = 0;
        v70 = *(this + 9) & 7;
        v67 = 0.0;
        if (v70 > 2)
        {
          if (v70 == 4)
          {
            if ((FaceCompositeVTag & 4) != 0)
            {
              v71 = v120;
            }

            else
            {
              v71 = v121;
            }

            v72 = OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GatherIrregularPatchPoints<OpenSubdiv::v3_1_1::Far::EndCapLegacyGregoryPatchFactory>(this, 0, *(v71 + 1), v59, v136, 0xFFFFFFFF);
          }

          else
          {
            if (v70 != 3)
            {
              LOBYTE(v74) = 0;
              v69 = 0;
              v71 = v121;
              goto LABEL_102;
            }

            v71 = v121;
            v72 = OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GatherIrregularPatchPoints<OpenSubdiv::v3_1_1::Far::EndCapGregoryBasisPatchFactory>(this, 0, *(v121 + 1), v59, v136, 0xFFFFFFFF);
          }

          goto LABEL_101;
        }

        if (v70 == 2)
        {
          v71 = v121;
          v72 = OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GatherIrregularPatchPoints<OpenSubdiv::v3_1_1::Far::EndCapBSplineBasisPatchFactory>(this, 0, *(v121 + 1), v59, v136, 0xFFFFFFFF);
LABEL_101:
          v124 = 0;
          v69 = 0;
          LOBYTE(v74) = 0;
          *(v71 + 1) += 4 * v72;
          goto LABEL_102;
        }

        LOBYTE(v74) = 0;
        v69 = 0;
        v71 = v121;
        if (v70 == 1)
        {
          OpenSubdiv::v3_1_1::Far::PatchTableFactory::populateAdaptivePatches();
        }
      }

LABEL_102:
      v126 = v69;
      v75 = OpenSubdiv::v3_1_1::Far::PatchTableFactory::computePatchParam(this, v59[1], *v59, v69, v74);
      v76 = *(v71 + 2);
      *(v71 + 2) = v76 + 1;
      *v76 = v75;
      if ((v123 & 4) != 0)
      {
        v77 = *(a2 + 31);
        v78 = *(a2 + 32);
        v79 = v78 - v77;
        v80 = (v78 - v77) >> 2;
        if (v80 < 1)
        {
LABEL_107:
          v82 = *(a2 + 33);
          if (v78 >= v82)
          {
            v84 = v80 + 1;
            if ((v80 + 1) >> 62)
            {
              std::string::__throw_length_error[abi:nn200100]();
            }

            v85 = v82 - v77;
            if (v85 >> 1 > v84)
            {
              v84 = v85 >> 1;
            }

            v86 = v85 >= 0x7FFFFFFFFFFFFFFCLL;
            v87 = 0x3FFFFFFFFFFFFFFFLL;
            if (!v86)
            {
              v87 = v84;
            }

            if (v87)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<float>>(a2 + 248, v87);
            }

            *(4 * v80) = v67;
            v83 = 4 * v80 + 4;
            memcpy(0, v77, v79);
            v88 = *(a2 + 31);
            *(a2 + 31) = 0;
            *(a2 + 32) = v83;
            *(a2 + 33) = 0;
            if (v88)
            {
              operator delete(v88);
              v77 = *(a2 + 31);
            }

            else
            {
              v77 = 0;
            }
          }

          else
          {
            *v78 = v67;
            v83 = (v78 + 1);
          }

          *(a2 + 32) = v83;
          LODWORD(v81) = ((v83 - v77) >> 2) - 1;
        }

        else
        {
          v81 = 0;
          while (*&v77[4 * v81] != v67)
          {
            if (((v79 >> 2) & 0x7FFFFFFF) == ++v81)
            {
              goto LABEL_107;
            }
          }
        }

        v89 = *(v71 + 3);
        *v89 = v81;
        *(v71 + 3) = v89 + 1;
      }

      v90 = *(this + 18);
      v91 = *(this + 19);
      if (v90 != v91 && ((v91 - v90) >> 2) >= 1)
      {
        v92 = 0;
        while (1)
        {
          *v130 = *v59;
          OpenSubdiv::v3_1_1::Far::PatchTable::GetFVarPatchDescriptor(&v129, a2, v92);
          if (v129 != 3)
          {
            break;
          }

          *(*(v71 + 4) + 8 * v92) += 4 * OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GatherLinearPatchPoints(this, *(*(v71 + 4) + 8 * v92), v130, v92);
          v93 = v75;
LABEL_141:
          v97 = *(v71 + 8);
          v98 = *(v97 + 8 * v92);
          *(v97 + 8 * v92) = v98 + 1;
          *v98 = v93;
          if (++v92 >= ((*(this + 19) - *(this + 18)) >> 2))
          {
            goto LABEL_142;
          }
        }

        if (OpenSubdiv::v3_1_1::Vtr::internal::Level::doesFaceFVarTopologyMatch(*(*(*this + 40) + 8 * v59[1]), *v59, *(*(this + 18) + 4 * v92)))
        {
          if (v128)
          {
            v94 = v126;
            if (v124)
            {
              OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GatherRegularPatchPoints(this, *(*(v71 + 4) + 8 * v92), v130, 0, v92);
              v95 = 0x2000000000;
              LOBYTE(v94) = v126;
LABEL_140:
              *(*(v71 + 4) + 8 * v92) += 4 * OpenSubdiv::v3_1_1::Far::PatchDescriptor::GetNumControlVertices(&v129);
              v93 = v75 & 0xFFFFF01FFFFFFFFFLL | v95 | ((v94 & 0xF) << 40);
              goto LABEL_141;
            }

LABEL_132:
            OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GatherRegularPatchPoints(this, *(*(v71 + 4) + 8 * v92), v130, v94, v92);
            v95 = 0x2000000000;
            goto LABEL_140;
          }

          v133 = 0;
          v134 = 0;
          v96 = v136;
          v135 = 0;
        }

        else
        {
          if (OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::IsPatchRegular(this, v59[1], *v59, v92))
          {
            v94 = OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GetRegularPatchBoundaryMask(this, v59[1], *v59, v92);
            goto LABEL_132;
          }

          v133 = 0;
          v134 = 0;
          v135 = 0;
          v96 = &v133;
          OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GetIrregularPatchCornerSpans(this, v59[1], *v59, &v133, v92);
        }

        if (v129 == 9)
        {
          OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GatherIrregularPatchPoints<OpenSubdiv::v3_1_1::Far::EndCapGregoryBasisPatchFactory>(this, v141[v92], *(*(v71 + 4) + 8 * v92), v130, v96, v92);
        }

        else
        {
          if (v129 != 6)
          {
            OpenSubdiv::v3_1_1::Far::PatchTableFactory::populateAdaptivePatches();
          }

          OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GatherIrregularPatchPoints<OpenSubdiv::v3_1_1::Far::EndCapBSplineBasisPatchFactory>(this, v145[v92], *(*(v71 + 4) + 8 * v92), v130, v96, v92);
        }

        v95 = 0;
        LOBYTE(v94) = 0;
        goto LABEL_140;
      }

LABEL_142:
      ++v58;
      v57 = *(this + 9);
    }

    while (v58 < ((*(this + 10) - v57) >> 3));
  }

  OpenSubdiv::v3_1_1::Far::PatchTable::populateVaryingVertices(a2);
  v99 = *(this + 9) & 7;
  switch(v99)
  {
    case 2:
      *(a2 + 16) = 0;
      *(a2 + 17) = 0;
      break;
    case 4:
      OpenSubdiv::v3_1_1::Far::EndCapLegacyGregoryPatchFactory::Finalize(0, *a2, (a2 + 80), (a2 + 104), 0xFFFFFFFFLL);
      break;
    case 3:
      *(a2 + 16) = 0;
      *(a2 + 17) = 0;
      break;
  }

  v100 = *(this + 18);
  v101 = *(this + 19);
  if (v100 != v101)
  {
    std::vector<OpenSubdiv::v3_1_1::Far::StencilTable const*>::resize(a2 + 25, (v101 - v100) >> 2);
    if (((*(this + 19) - *(this + 18)) >> 2) >= 1)
    {
      v102 = 0;
      while (1)
      {
        v103 = v137[v102];
        if (((*(v103 + 24) - *(v103 + 16)) >> 2) < 1)
        {
          (*(*v103 + 8))(v137[v102]);
          v137[v102] = 0;
        }

        else
        {
          OpenSubdiv::v3_1_1::Far::StencilTable::shrinkToFit(v137[v102]);
          std::vector<float>::resize((v103 + 40), ((*(v103 + 24) - *(v103 + 16)) >> 2));
          v104 = *(v103 + 16);
          v105 = *(v103 + 24) - v104;
          if ((v105 >> 2) >= 1)
          {
            v106 = 0;
            v107 = *(v103 + 40);
            v108 = (v105 >> 2) & 0x7FFFFFFF;
            do
            {
              *v107++ = v106;
              v109 = *v104++;
              v106 += v109;
              --v108;
            }

            while (v108);
          }
        }

        v110 = *(this + 9) & 7;
        if (v110 != 2)
        {
          break;
        }

        v116 = v145[v102];
        if (v116)
        {
          v117 = v116[4];
          if (v117)
          {
            v116[5] = v117;
            operator delete(v117);
          }

          v114 = v116;
          v115 = 0x1070C404978CE7FLL;
LABEL_170:
          MEMORY[0x21CF07610](v114, v115);
        }

LABEL_171:
        *(*(a2 + 25) + 8 * v102) = v137[v102];
        if (++v102 >= ((*(this + 19) - *(this + 18)) >> 2))
        {
          goto LABEL_172;
        }
      }

      if (v110 != 3)
      {
        goto LABEL_171;
      }

      v111 = v141[v102];
      if (!v111)
      {
        goto LABEL_171;
      }

      v112 = v111[8];
      if (v112)
      {
        v111[9] = v112;
        operator delete(v112);
      }

      v113 = v111[5];
      if (v113)
      {
        v111[6] = v113;
        operator delete(v113);
      }

      v114 = v111;
      v115 = 0x1070C40200C42D6;
      goto LABEL_170;
    }
  }

LABEL_172:
  operator delete(__p);
  operator delete(v144);
  operator delete(v148);
  v118 = 36;
  do
  {
    v119 = &v149 + v118 * 8;
    operator delete((&v148)[v118]);
    *(v119 - 4) = v119 - 16;
    *(v119 - 5) = 1;
    operator delete((&v144)[v118]);
    *(v119 - 8) = v119 - 48;
    *(v119 - 13) = 1;
    v118 -= 12;
  }

  while (v118 * 8);
}