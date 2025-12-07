uint64_t sub_21D7631AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70, &unk_21DC0A930);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D76321C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61600, &qword_21DC26F40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D7632DC(uint64_t (*a1)(unint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for TTRICollectionViewItemHit(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v4);
  v7 = *(v1 + v5);
  v8 = *(v1 + v5 + 8);
  v9 = (v1 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = v9[2];

  return a1(v1 + v3, v6, v7, v8, v10, v11, v12);
}

uint64_t sub_21D7633B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21D763428(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D763490(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D763518(uint64_t a1)
{
  v5.val[0] = *(a1 + 16);
  v5.val[1] = v5.val[0];
  v1 = v4;
  vst2q_f64(v1, v5);
  type metadata accessor for TTRTreeViewDropDestination(255, v4);
  result = sub_21DBFBA8C();
  if (v3 <= 0x3F)
  {
    v4[0] = *(result - 8) + 64;
    v4[1] = MEMORY[0x277D83410] + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *sub_21D7635D0(void *__dst, unsigned __int8 *__src, uint64_t a3)
{
  v4 = __dst;
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = *(v6 + 80);
  v9 = *(v6 + 84);
  v10 = v8;
  v11 = v7 + v8;
  v12 = (v7 + v10) & ~v10;
  if (v9)
  {
    v13 = *(v6 + 64);
  }

  else
  {
    v13 = v7 + 1;
  }

  v14 = v13 + 7;
  v15 = ((v13 + 7 + v12) & 0xFFFFFFFFFFFFFFF8) + 8;
  v16 = ((v15 + v8) & ~v8) + v7;
  if (v16 <= v15)
  {
    v16 = ((v13 + 7 + v12) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v17 = (v16 & 0xFFFFFFFFFFFFFFF8) + 16;
  v18 = v8 & 0x100000;
  if (v10 <= 7 && v18 == 0 && v17 <= 0x18)
  {
    if (v15 + v7 <= v15)
    {
      v22 = ((v13 + 7 + v12) & 0xFFFFFFFFFFFFFFF8) + 8;
    }

    else
    {
      v22 = v15 + v7;
    }

    v23 = __src[v22];
    if (v23 > 3)
    {
      goto LABEL_37;
    }

    if (v23 == 3)
    {
      if (v22 >= 4)
      {
        v24 = 4;
      }

      else
      {
        v24 = v22;
      }

      if (v24 <= 1)
      {
        if (!v24)
        {
          goto LABEL_37;
        }

        v25 = *__src;
      }

      else if (v24 == 2)
      {
        v25 = *__src;
      }

      else if (v24 == 3)
      {
        v25 = *__src | (__src[2] << 16);
      }

      else
      {
        v25 = *__src;
      }

      v23 = v25 + 3;
    }

    v26 = ~v10;
    switch(v23)
    {
      case 2u:
        __nb = v13;
        v55 = v22;
        v37 = v26;
        v47 = *(v6 + 16);
        v47(__dst, __src, v5);
        __dstb = ((v4 + v11) & v37);
        v38 = (&__src[v11] & v37);
        if ((*(v6 + 48))(v38, 1, v5))
        {
          v39 = __nb;
          memcpy(__dstb, v38, __nb);
        }

        else
        {
          v47(__dstb, v38, v5);
          (*(v6 + 56))(__dstb, 0, 1, v5);
          v39 = __nb;
        }

        v42 = 7;
        if (!v9)
        {
          v42 = 8;
        }

        *((__dstb + v7 + v42) & 0xFFFFFFFFFFFFFFF8) = *((v38 + v7 + v42) & 0xFFFFFFFFFFFFFFF8);
        v43 = ((v12 + v39 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
        if (v15 + v7 > v43)
        {
          v43 = v15 + v7;
        }

        if (v15 > v43)
        {
          v43 = v15;
        }

        *(v4 + v43) = 2;
        v31 = v55;
        goto LABEL_38;
      case 1u:
        __na = v13;
        v54 = v22;
        v33 = *(v6 + 16);
        v34 = v26;
        v33(__dst, __src, v5);
        v35 = ((v4 + v11) & v34);
        v36 = (&__src[v11] & v34);
        if ((*(v6 + 48))(v36, 1, v5))
        {
          memcpy(v35, v36, __na);
        }

        else
        {
          v33(v35, v36, v5);
          (*(v6 + 56))(v35, 0, 1, v5);
        }

        v40 = ((v35 + v14) & 0xFFFFFFFFFFFFFFF8);
        v41 = ((v36 + v14) & 0xFFFFFFFFFFFFFFF8);
        *v40 = *v41;
        v33(v40 + 1, v41 + 8, v5);
        v31 = v54;
        *(v4 + v54) = 1;
        goto LABEL_38;
      case 0u:
        __n = v13;
        v53 = v22;
        v27 = v26;
        v46 = *(v6 + 16);
        v46(__dst, __src, v5);
        __dsta = ((v4 + v11) & v27);
        v28 = (&__src[v11] & v27);
        if ((*(v6 + 48))(v28, 1, v5))
        {
          v29 = __n;
          memcpy(__dsta, v28, __n);
        }

        else
        {
          v46(__dsta, v28, v5);
          (*(v6 + 56))(__dsta, 0, 1, v5);
          v29 = __n;
        }

        v44 = 7;
        if (!v9)
        {
          v44 = 8;
        }

        *((__dsta + v7 + v44) & 0xFFFFFFFFFFFFFFF8) = *((v28 + v7 + v44) & 0xFFFFFFFFFFFFFFF8);
        v45 = ((v12 + v29 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
        if (v15 + v7 > v45)
        {
          v45 = v15 + v7;
        }

        if (v15 > v45)
        {
          v45 = v15;
        }

        *(v4 + v45) = 0;
        v31 = v53;
        goto LABEL_38;
    }

LABEL_37:
    v30 = v22;
    memcpy(__dst, __src, v22 + 1);
    v31 = v30;
LABEL_38:
    *((v4 + v31 + 8) & 0xFFFFFFFFFFFFFFF8) = *(&__src[v31 + 8] & 0xFFFFFFFFFFFFFFF8);
    return v4;
  }

  v21 = *__src;
  *v4 = *__src;
  v4 = (v21 + ((v10 & 0xF8 ^ 0x1F8) & (v10 + 16)));

  return v4;
}

unsigned __int8 *sub_21D763AC0(unsigned __int8 *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = *(v3 + 80);
  v6 = v4 + v5;
  if (*(v3 + 84))
  {
    v7 = *(v3 + 64);
  }

  else
  {
    v7 = v4 + 1;
  }

  v8 = ((v7 + ((v4 + v5) & ~v5) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = ((v8 + v5) & ~v5) + v4;
  if (v9 > v8)
  {
    v8 = v9;
  }

  v10 = result[v8];
  if (v10 <= 3)
  {
    if (v10 == 3)
    {
      if (v8 >= 4)
      {
        v11 = 4;
      }

      else
      {
        v11 = v8;
      }

      if (v11 <= 1)
      {
        if (!v11)
        {
          return result;
        }

        v12 = *result;
      }

      else if (v11 == 2)
      {
        v12 = *result;
      }

      else if (v11 == 3)
      {
        v12 = *result | (result[2] << 16);
      }

      else
      {
        v12 = *result;
      }

      v10 = v12 + 3;
    }

    v13 = ~v5;
    if (v10 != 2)
    {
      if (v10 == 1)
      {
        v16 = result;
        v19 = *(v3 + 8);
        v19();
        v17 = &v16[v6] & v13;
        if (!(*(v3 + 48))(v17, 1, v2))
        {
          (v19)(v17, v2);
        }

        v18 = (v5 + ((v17 + v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & v13;
LABEL_29:

        return (v19)(v18, v2);
      }

      if (v10)
      {
        return result;
      }
    }

    v14 = result;
    v19 = *(v3 + 8);
    v19();
    v15 = &v14[v6];
    result = (*(v3 + 48))(v15 & v13, 1, v2);
    if (result)
    {
      return result;
    }

    v18 = v15 & v13;
    goto LABEL_29;
  }

  return result;
}

_BYTE *sub_21D763CF8(_BYTE *__dst, unsigned __int8 *__src, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = v6;
  v8 = *(v6 + 64);
  v9 = *(v6 + 80);
  v10 = v8 + v9;
  v11 = (v8 + v9) & ~v9;
  v12 = *(v6 + 84);
  if (v12)
  {
    v13 = *(v6 + 64);
  }

  else
  {
    v13 = v8 + 1;
  }

  v14 = v13 + 7;
  v15 = ((v13 + 7 + v11) & 0xFFFFFFFFFFFFFFF8) + 8;
  v16 = (v15 + v9) & ~v9;
  v17 = v16 + v8;
  if (v16 + v8 <= v15)
  {
    v18 = ((v13 + 7 + v11) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  else
  {
    v18 = v16 + v8;
  }

  v19 = __src[v18];
  if (v19 > 3)
  {
    goto LABEL_26;
  }

  if (v19 == 3)
  {
    if (v18 >= 4)
    {
      v20 = 4;
    }

    else
    {
      v20 = v18;
    }

    if (v20 <= 1)
    {
      if (!v20)
      {
        goto LABEL_26;
      }

      v21 = *__src;
    }

    else if (v20 == 2)
    {
      v21 = *__src;
    }

    else if (v20 == 3)
    {
      v21 = *__src | (__src[2] << 16);
    }

    else
    {
      v21 = *__src;
    }

    v19 = v21 + 3;
  }

  v54 = ~v9;
  if (v19 != 2)
  {
    if (v19 == 1)
    {
      v28 = *(a3 + 16);
      v49 = *(v7 + 16);
      __na = v13;
      v49(__dst, __src, v5);
      v46 = (&__dst[v10] & v54);
      v29 = (&__src[v10] & v54);
      if ((*(v7 + 48))(v29, 1, v28))
      {
        memcpy(v46, v29, __na);
      }

      else
      {
        v49(v46, v29, v28);
        (*(v7 + 56))(v46, 0, 1, v28);
      }

      v35 = (&v46[v14] & 0xFFFFFFFFFFFFFFF8);
      v36 = ((v29 + v14) & 0xFFFFFFFFFFFFFFF8);
      *v35 = *v36;
      v49(((v35 + v9 + 8) & v54), ((v36 + v9 + 8) & v54), v28);
      __dst[v18] = 1;
      goto LABEL_27;
    }

    if (!v19)
    {
      v45 = v12;
      v48 = (v8 + v9) & ~v9;
      __n = v13;
      v22 = *(a3 + 16);
      v41 = *(v7 + 16);
      v41(__dst, __src, v5);
      __dsta = (&__dst[v10] & v54);
      v23 = &__src[v10] & v54;
      v55 = v23;
      if ((*(v7 + 48))(v23, 1, v22))
      {
        v24 = __dsta;
        v25 = v23;
        v26 = __n;
        memcpy(__dsta, v25, __n);
      }

      else
      {
        v41(__dsta, v23, v22);
        v24 = __dsta;
        (*(v7 + 56))(__dsta, 0, 1, v22);
        v26 = __n;
      }

      v39 = 7;
      if (!v45)
      {
        v39 = 8;
      }

      *((v24 + v8 + v39) & 0xFFFFFFFFFFFFFFF8) = *((v8 + v39 + v55) & 0xFFFFFFFFFFFFFFF8);
      v40 = ((v48 + v26 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
      if (v17 > v40)
      {
        v40 = v17;
      }

      if (v15 > v40)
      {
        v40 = v15;
      }

      __dst[v40] = 0;
      goto LABEL_27;
    }

LABEL_26:
    memcpy(__dst, __src, v18 + 1);
    goto LABEL_27;
  }

  v47 = v12;
  v50 = (v8 + v9) & ~v9;
  __nb = v13;
  v30 = *(a3 + 16);
  v42 = *(v7 + 16);
  v42(__dst, __src, v5);
  __dstb = (&__dst[v10] & v54);
  v31 = &__src[v10] & v54;
  v56 = v31;
  if ((*(v7 + 48))(v31, 1, v30))
  {
    v32 = __dstb;
    v33 = v31;
    v34 = __nb;
    memcpy(__dstb, v33, __nb);
  }

  else
  {
    v42(__dstb, v31, v30);
    v32 = __dstb;
    (*(v7 + 56))(__dstb, 0, 1, v30);
    v34 = __nb;
  }

  v37 = 7;
  if (!v47)
  {
    v37 = 8;
  }

  *((v32 + v8 + v37) & 0xFFFFFFFFFFFFFFF8) = *((v8 + v37 + v56) & 0xFFFFFFFFFFFFFFF8);
  v38 = ((v50 + v34 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v17 > v38)
  {
    v38 = v17;
  }

  if (v15 > v38)
  {
    v38 = v15;
  }

  __dst[v38] = 2;
LABEL_27:
  *(&__dst[v18 + 8] & 0xFFFFFFFFFFFFFFF8) = *(&__src[v18 + 8] & 0xFFFFFFFFFFFFFFF8);
  return __dst;
}

unsigned __int8 *sub_21D7641D8(unsigned __int8 *__dst, unsigned __int8 *__src, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = v6;
  v8 = *(v6 + 64);
  v9 = *(v6 + 80);
  v10 = ~v9;
  v11 = v8 + v9;
  v12 = (v8 + v9) & ~v9;
  v13 = *(v6 + 84);
  if (v13)
  {
    v14 = *(v6 + 64);
  }

  else
  {
    v14 = v8 + 1;
  }

  v15 = ((v14 + 7 + v12) & 0xFFFFFFFFFFFFFFF8) + 8;
  v16 = (v15 + v9) & ~v9;
  v17 = v16 + v8;
  if (v16 + v8 <= v15)
  {
    v18 = ((v14 + 7 + v12) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  else
  {
    v18 = v16 + v8;
  }

  v19 = __dst[v18];
  v20 = __src[v18];
  if (v19 <= 3)
  {
    if (v20 <= 3)
    {
      if (__dst == __src)
      {
        goto LABEL_103;
      }

      __n = v14;
      v79 = ~v9;
      v75 = (v8 + v9) & ~v9;
      v74 = v13;
      __dsta = (v14 + 7);
      if (v19 == 3)
      {
        if (v18 >= 4)
        {
          v21 = 4;
        }

        else
        {
          v21 = v18;
        }

        if (v21 <= 1)
        {
          if (!v21)
          {
            goto LABEL_81;
          }

          v22 = *__dst;
        }

        else if (v21 == 2)
        {
          v22 = *__dst;
        }

        else if (v21 == 3)
        {
          v22 = *__dst | (__dst[2] << 16);
        }

        else
        {
          v22 = *__dst;
        }

        v19 = v22 + 3;
      }

      if (v19 != 2)
      {
        if (v19 == 1)
        {
          v64 = *(v7 + 8);
          v64(__dst, v5);
          v61 = &__dst[v11] & v79;
          if (!(*(v7 + 48))())
          {
            v64(v61, v5);
          }

          v44 = (v9 + ((__dsta + v61) & 0xFFFFFFFFFFFFFFF8) + 8) & v79;
          goto LABEL_80;
        }

        if (v19)
        {
          goto LABEL_81;
        }
      }

      v64 = *(v7 + 8);
      v64(__dst, v5);
      if ((*(v7 + 48))(&__dst[v11] & v79, 1, v5))
      {
        goto LABEL_81;
      }

      v44 = &__dst[v11] & v79;
LABEL_80:
      v64(v44, v5);
LABEL_81:
      v45 = __src[v18];
      v46 = v45 - 3;
      if (v45 >= 3)
      {
        if (v18 <= 3)
        {
          v47 = v18;
        }

        else
        {
          v47 = 4;
        }

        if (v47 > 1)
        {
          if (v47 == 2)
          {
            v48 = *__src;
          }

          else if (v47 == 3)
          {
            v48 = *__src | (__src[2] << 16);
          }

          else
          {
            v48 = *__src;
          }

          goto LABEL_93;
        }

        if (v47)
        {
          v48 = *__src;
LABEL_93:
          if (v18 < 4)
          {
            v45 = (v48 | (v46 << (8 * v18))) + 3;
          }

          else
          {
            v45 = v48 + 3;
          }
        }
      }

      if (v45 != 2)
      {
        if (v45 != 1)
        {
          if (!v45)
          {
            v65 = *(v7 + 16);
            v65(__dst, __src, v5);
            __dstf = (&__dst[v11] & v79);
            v80 = &__src[v11] & v79;
            if ((*(v7 + 48))())
            {
              v29 = __dstf;
              v30 = __dstf;
              v28 = v80;
              goto LABEL_101;
            }

            v29 = __dstf;
            v65(__dstf, v80, v5);
            v28 = v80;
            goto LABEL_122;
          }

          goto LABEL_102;
        }

        v51 = *(v7 + 16);
        v51(__dst, __src, v5);
        v52 = (&__dst[v11] & v79);
        v53 = (&__src[v11] & v79);
        if ((*(v7 + 48))(v53, 1, v5))
        {
          memcpy(v52, v53, __n);
        }

        else
        {
          v51(v52, v53, v5);
          (*(v7 + 56))(v52, 0, 1, v5);
        }

        v55 = ((v52 + __dsta) & 0xFFFFFFFFFFFFFFF8);
        v56 = ((v53 + __dsta) & 0xFFFFFFFFFFFFFFF8);
        *v55 = *v56;
        v51(((v55 + v9 + 8) & v79), ((v56 + v9 + 8) & v79), v5);
LABEL_111:
        __dst[v18] = 1;
        goto LABEL_103;
      }

      v66 = *(v7 + 16);
      v66(__dst, __src, v5);
      __dstg = (&__dst[v11] & v79);
      v81 = &__src[v11] & v79;
      if ((*(v7 + 48))())
      {
        v35 = __dstg;
        v36 = __dstg;
        v34 = v81;
        goto LABEL_108;
      }

      v35 = __dstg;
      v66(__dstg, v81, v5);
      v34 = v81;
LABEL_113:
      (*(v7 + 56))(v35, 0, 1, v5);
      v54 = __n;
      goto LABEL_114;
    }

    if (v19 == 3)
    {
      if (v18 >= 4)
      {
        v25 = 4;
      }

      else
      {
        v25 = v18;
      }

      if (v25 <= 1)
      {
        if (!v25)
        {
          goto LABEL_102;
        }

        v26 = *__dst;
      }

      else if (v25 == 2)
      {
        v26 = *__dst;
      }

      else if (v25 == 3)
      {
        v26 = *__dst | (__dst[2] << 16);
      }

      else
      {
        v26 = *__dst;
      }

      v19 = v26 + 3;
    }

    switch(v19)
    {
      case 2u:
        goto LABEL_59;
      case 1u:
        __dste = (v14 + 7);
        v40 = *(v7 + 8);
        v40(__dst, v5);
        v41 = &__dst[v11] & ~v9;
        if (!(*(v7 + 48))(v41, 1, v5))
        {
          v40(v41, v5);
        }

        v40(((v9 + ((__dste + v41) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v9), v5);
        break;
      case 0u:
LABEL_59:
        v37 = *(v7 + 8);
        v38 = v10;
        v37(__dst, v5);
        v39 = &__dst[v11];
        if (!(*(v7 + 48))(v39 & v38, 1, v5))
        {
          v37((v39 & v38), v5);
        }

        break;
    }

LABEL_102:
    memcpy(__dst, __src, v18 + 1);
    goto LABEL_103;
  }

  if (v20 > 3)
  {
    goto LABEL_102;
  }

  if (v20 == 3)
  {
    if (v18 >= 4)
    {
      v23 = 4;
    }

    else
    {
      v23 = v18;
    }

    if (v23 <= 1)
    {
      if (!v23)
      {
        goto LABEL_102;
      }

      v24 = *__src;
    }

    else if (v23 == 2)
    {
      v24 = *__src;
    }

    else if (v23 == 3)
    {
      v24 = *__src | (__src[2] << 16);
    }

    else
    {
      v24 = *__src;
    }

    v20 = v24 + 3;
  }

  if (v20 != 2)
  {
    if (v20 == 1)
    {
      __dstc = (v14 + 7);
      v76 = *(v7 + 16);
      __na = v14;
      v76(__dst, __src, v5);
      v31 = (&__dst[v11] & ~v9);
      v32 = (&__src[v11] & ~v9);
      if ((*(v7 + 48))(v32, 1, v5))
      {
        memcpy(v31, v32, __na);
      }

      else
      {
        v76(v31, v32, v5);
        (*(v7 + 56))(v31, 0, 1, v5);
      }

      v42 = ((v31 + __dstc) & 0xFFFFFFFFFFFFFFF8);
      v43 = ((v32 + __dstc) & 0xFFFFFFFFFFFFFFF8);
      *v42 = *v43;
      v76(((v42 + v9 + 8) & ~v9), ((v43 + v9 + 8) & ~v9), v5);
      goto LABEL_111;
    }

    if (!v20)
    {
      v74 = v13;
      v75 = (v8 + v9) & ~v9;
      __n = v14;
      v27 = ~v9;
      v62 = *(v7 + 16);
      v62(__dst, __src, v5);
      __dstb = (&__dst[v11] & v27);
      v28 = (&__src[v11] & v27);
      if ((*(v7 + 48))(v28, 1, v5))
      {
        v29 = __dstb;
        v30 = __dstb;
LABEL_101:
        v49 = __n;
        memcpy(v30, v28, __n);
LABEL_123:
        v59 = 7;
        if (!v74)
        {
          v59 = 8;
        }

        *((v29 + v8 + v59) & 0xFFFFFFFFFFFFFFF8) = *((v28 + v8 + v59) & 0xFFFFFFFFFFFFFFF8);
        v60 = ((v75 + v49 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
        if (v17 > v60)
        {
          v60 = v17;
        }

        if (v15 > v60)
        {
          v60 = v15;
        }

        __dst[v60] = 0;
        goto LABEL_103;
      }

      v29 = __dstb;
      v62(__dstb, v28, v5);
LABEL_122:
      (*(v7 + 56))(v29, 0, 1, v5);
      v49 = __n;
      goto LABEL_123;
    }

    goto LABEL_102;
  }

  v74 = v13;
  v75 = (v8 + v9) & ~v9;
  __n = v14;
  v33 = ~v9;
  v63 = *(v7 + 16);
  v63(__dst, __src, v5);
  __dstd = (&__dst[v11] & v33);
  v34 = (&__src[v11] & v33);
  if (!(*(v7 + 48))(v34, 1, v5))
  {
    v35 = __dstd;
    v63(__dstd, v34, v5);
    goto LABEL_113;
  }

  v35 = __dstd;
  v36 = __dstd;
LABEL_108:
  v54 = __n;
  memcpy(v36, v34, __n);
LABEL_114:
  v57 = 7;
  if (!v74)
  {
    v57 = 8;
  }

  *((v35 + v8 + v57) & 0xFFFFFFFFFFFFFFF8) = *(&v34[v8 + v57] & 0xFFFFFFFFFFFFFFF8);
  v58 = ((v75 + v54 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v17 > v58)
  {
    v58 = v17;
  }

  if (v15 > v58)
  {
    v58 = v15;
  }

  __dst[v58] = 2;
LABEL_103:
  *(&__dst[v18 + 8] & 0xFFFFFFFFFFFFFFF8) = *(&__src[v18 + 8] & 0xFFFFFFFFFFFFFFF8);
  return __dst;
}

_BYTE *sub_21D764C64(_BYTE *__dst, unsigned __int8 *__src, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = v6;
  v8 = *(v6 + 64);
  v9 = *(v6 + 80);
  v10 = v8 + v9;
  v11 = (v8 + v9) & ~v9;
  v12 = *(v6 + 84);
  if (v12)
  {
    v13 = *(v6 + 64);
  }

  else
  {
    v13 = v8 + 1;
  }

  v14 = v13 + 7;
  v15 = ((v13 + 7 + v11) & 0xFFFFFFFFFFFFFFF8) + 8;
  v16 = (v15 + v9) & ~v9;
  v17 = v16 + v8;
  if (v16 + v8 <= v15)
  {
    v18 = ((v13 + 7 + v11) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  else
  {
    v18 = v16 + v8;
  }

  v19 = __src[v18];
  if (v19 > 3)
  {
    goto LABEL_26;
  }

  if (v19 == 3)
  {
    if (v18 >= 4)
    {
      v20 = 4;
    }

    else
    {
      v20 = v18;
    }

    if (v20 <= 1)
    {
      if (!v20)
      {
        goto LABEL_26;
      }

      v21 = *__src;
    }

    else if (v20 == 2)
    {
      v21 = *__src;
    }

    else if (v20 == 3)
    {
      v21 = *__src | (__src[2] << 16);
    }

    else
    {
      v21 = *__src;
    }

    v19 = v21 + 3;
  }

  v54 = ~v9;
  if (v19 != 2)
  {
    if (v19 == 1)
    {
      v28 = *(a3 + 16);
      v49 = *(v7 + 32);
      __na = v13;
      v49(__dst, __src, v5);
      v46 = (&__dst[v10] & v54);
      v29 = (&__src[v10] & v54);
      if ((*(v7 + 48))(v29, 1, v28))
      {
        memcpy(v46, v29, __na);
      }

      else
      {
        v49(v46, v29, v28);
        (*(v7 + 56))(v46, 0, 1, v28);
      }

      v35 = (&v46[v14] & 0xFFFFFFFFFFFFFFF8);
      v36 = ((v29 + v14) & 0xFFFFFFFFFFFFFFF8);
      *v35 = *v36;
      v49(((v35 + v9 + 8) & v54), ((v36 + v9 + 8) & v54), v28);
      __dst[v18] = 1;
      goto LABEL_27;
    }

    if (!v19)
    {
      v45 = v12;
      v48 = (v8 + v9) & ~v9;
      __n = v13;
      v22 = *(a3 + 16);
      v41 = *(v7 + 32);
      v41(__dst, __src, v5);
      __dsta = (&__dst[v10] & v54);
      v23 = &__src[v10] & v54;
      v55 = v23;
      if ((*(v7 + 48))(v23, 1, v22))
      {
        v24 = __dsta;
        v25 = v23;
        v26 = __n;
        memcpy(__dsta, v25, __n);
      }

      else
      {
        v41(__dsta, v23, v22);
        v24 = __dsta;
        (*(v7 + 56))(__dsta, 0, 1, v22);
        v26 = __n;
      }

      v39 = 7;
      if (!v45)
      {
        v39 = 8;
      }

      *((v24 + v8 + v39) & 0xFFFFFFFFFFFFFFF8) = *((v8 + v39 + v55) & 0xFFFFFFFFFFFFFFF8);
      v40 = ((v48 + v26 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
      if (v17 > v40)
      {
        v40 = v17;
      }

      if (v15 > v40)
      {
        v40 = v15;
      }

      __dst[v40] = 0;
      goto LABEL_27;
    }

LABEL_26:
    memcpy(__dst, __src, v18 + 1);
    goto LABEL_27;
  }

  v47 = v12;
  v50 = (v8 + v9) & ~v9;
  __nb = v13;
  v30 = *(a3 + 16);
  v42 = *(v7 + 32);
  v42(__dst, __src, v5);
  __dstb = (&__dst[v10] & v54);
  v31 = &__src[v10] & v54;
  v56 = v31;
  if ((*(v7 + 48))(v31, 1, v30))
  {
    v32 = __dstb;
    v33 = v31;
    v34 = __nb;
    memcpy(__dstb, v33, __nb);
  }

  else
  {
    v42(__dstb, v31, v30);
    v32 = __dstb;
    (*(v7 + 56))(__dstb, 0, 1, v30);
    v34 = __nb;
  }

  v37 = 7;
  if (!v47)
  {
    v37 = 8;
  }

  *((v32 + v8 + v37) & 0xFFFFFFFFFFFFFFF8) = *((v8 + v37 + v56) & 0xFFFFFFFFFFFFFFF8);
  v38 = ((v50 + v34 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v17 > v38)
  {
    v38 = v17;
  }

  if (v15 > v38)
  {
    v38 = v15;
  }

  __dst[v38] = 2;
LABEL_27:
  *(&__dst[v18 + 8] & 0xFFFFFFFFFFFFFFF8) = *(&__src[v18 + 8] & 0xFFFFFFFFFFFFFFF8);
  return __dst;
}

unsigned __int8 *sub_21D765144(unsigned __int8 *__dst, unsigned __int8 *__src, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = v6;
  v8 = *(v6 + 64);
  v9 = *(v6 + 80);
  v10 = ~v9;
  v11 = v8 + v9;
  v12 = (v8 + v9) & ~v9;
  v13 = *(v6 + 84);
  if (v13)
  {
    v14 = *(v6 + 64);
  }

  else
  {
    v14 = v8 + 1;
  }

  v15 = ((v14 + 7 + v12) & 0xFFFFFFFFFFFFFFF8) + 8;
  v16 = (v15 + v9) & ~v9;
  v17 = v16 + v8;
  if (v16 + v8 <= v15)
  {
    v18 = ((v14 + 7 + v12) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  else
  {
    v18 = v16 + v8;
  }

  v19 = __dst[v18];
  v20 = __src[v18];
  if (v19 <= 3)
  {
    if (v20 <= 3)
    {
      if (__dst == __src)
      {
        goto LABEL_103;
      }

      __n = v14;
      v79 = ~v9;
      v75 = (v8 + v9) & ~v9;
      v74 = v13;
      __dsta = (v14 + 7);
      if (v19 == 3)
      {
        if (v18 >= 4)
        {
          v21 = 4;
        }

        else
        {
          v21 = v18;
        }

        if (v21 <= 1)
        {
          if (!v21)
          {
            goto LABEL_81;
          }

          v22 = *__dst;
        }

        else if (v21 == 2)
        {
          v22 = *__dst;
        }

        else if (v21 == 3)
        {
          v22 = *__dst | (__dst[2] << 16);
        }

        else
        {
          v22 = *__dst;
        }

        v19 = v22 + 3;
      }

      if (v19 != 2)
      {
        if (v19 == 1)
        {
          v64 = *(v7 + 8);
          v64(__dst, v5);
          v61 = &__dst[v11] & v79;
          if (!(*(v7 + 48))())
          {
            v64(v61, v5);
          }

          v44 = (v9 + ((__dsta + v61) & 0xFFFFFFFFFFFFFFF8) + 8) & v79;
          goto LABEL_80;
        }

        if (v19)
        {
          goto LABEL_81;
        }
      }

      v64 = *(v7 + 8);
      v64(__dst, v5);
      if ((*(v7 + 48))(&__dst[v11] & v79, 1, v5))
      {
        goto LABEL_81;
      }

      v44 = &__dst[v11] & v79;
LABEL_80:
      v64(v44, v5);
LABEL_81:
      v45 = __src[v18];
      v46 = v45 - 3;
      if (v45 >= 3)
      {
        if (v18 <= 3)
        {
          v47 = v18;
        }

        else
        {
          v47 = 4;
        }

        if (v47 > 1)
        {
          if (v47 == 2)
          {
            v48 = *__src;
          }

          else if (v47 == 3)
          {
            v48 = *__src | (__src[2] << 16);
          }

          else
          {
            v48 = *__src;
          }

          goto LABEL_93;
        }

        if (v47)
        {
          v48 = *__src;
LABEL_93:
          if (v18 < 4)
          {
            v45 = (v48 | (v46 << (8 * v18))) + 3;
          }

          else
          {
            v45 = v48 + 3;
          }
        }
      }

      if (v45 != 2)
      {
        if (v45 != 1)
        {
          if (!v45)
          {
            v65 = *(v7 + 32);
            v65(__dst, __src, v5);
            __dstf = (&__dst[v11] & v79);
            v80 = &__src[v11] & v79;
            if ((*(v7 + 48))())
            {
              v29 = __dstf;
              v30 = __dstf;
              v28 = v80;
              goto LABEL_101;
            }

            v29 = __dstf;
            v65(__dstf, v80, v5);
            v28 = v80;
            goto LABEL_122;
          }

          goto LABEL_102;
        }

        v51 = *(v7 + 32);
        v51(__dst, __src, v5);
        v52 = (&__dst[v11] & v79);
        v53 = (&__src[v11] & v79);
        if ((*(v7 + 48))(v53, 1, v5))
        {
          memcpy(v52, v53, __n);
        }

        else
        {
          v51(v52, v53, v5);
          (*(v7 + 56))(v52, 0, 1, v5);
        }

        v55 = ((v52 + __dsta) & 0xFFFFFFFFFFFFFFF8);
        v56 = ((v53 + __dsta) & 0xFFFFFFFFFFFFFFF8);
        *v55 = *v56;
        v51(((v55 + v9 + 8) & v79), ((v56 + v9 + 8) & v79), v5);
LABEL_111:
        __dst[v18] = 1;
        goto LABEL_103;
      }

      v66 = *(v7 + 32);
      v66(__dst, __src, v5);
      __dstg = (&__dst[v11] & v79);
      v81 = &__src[v11] & v79;
      if ((*(v7 + 48))())
      {
        v35 = __dstg;
        v36 = __dstg;
        v34 = v81;
        goto LABEL_108;
      }

      v35 = __dstg;
      v66(__dstg, v81, v5);
      v34 = v81;
LABEL_113:
      (*(v7 + 56))(v35, 0, 1, v5);
      v54 = __n;
      goto LABEL_114;
    }

    if (v19 == 3)
    {
      if (v18 >= 4)
      {
        v25 = 4;
      }

      else
      {
        v25 = v18;
      }

      if (v25 <= 1)
      {
        if (!v25)
        {
          goto LABEL_102;
        }

        v26 = *__dst;
      }

      else if (v25 == 2)
      {
        v26 = *__dst;
      }

      else if (v25 == 3)
      {
        v26 = *__dst | (__dst[2] << 16);
      }

      else
      {
        v26 = *__dst;
      }

      v19 = v26 + 3;
    }

    switch(v19)
    {
      case 2u:
        goto LABEL_59;
      case 1u:
        __dste = (v14 + 7);
        v40 = *(v7 + 8);
        v40(__dst, v5);
        v41 = &__dst[v11] & ~v9;
        if (!(*(v7 + 48))(v41, 1, v5))
        {
          v40(v41, v5);
        }

        v40(((v9 + ((__dste + v41) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v9), v5);
        break;
      case 0u:
LABEL_59:
        v37 = *(v7 + 8);
        v38 = v10;
        v37(__dst, v5);
        v39 = &__dst[v11];
        if (!(*(v7 + 48))(v39 & v38, 1, v5))
        {
          v37((v39 & v38), v5);
        }

        break;
    }

LABEL_102:
    memcpy(__dst, __src, v18 + 1);
    goto LABEL_103;
  }

  if (v20 > 3)
  {
    goto LABEL_102;
  }

  if (v20 == 3)
  {
    if (v18 >= 4)
    {
      v23 = 4;
    }

    else
    {
      v23 = v18;
    }

    if (v23 <= 1)
    {
      if (!v23)
      {
        goto LABEL_102;
      }

      v24 = *__src;
    }

    else if (v23 == 2)
    {
      v24 = *__src;
    }

    else if (v23 == 3)
    {
      v24 = *__src | (__src[2] << 16);
    }

    else
    {
      v24 = *__src;
    }

    v20 = v24 + 3;
  }

  if (v20 != 2)
  {
    if (v20 == 1)
    {
      __dstc = (v14 + 7);
      v76 = *(v7 + 32);
      __na = v14;
      v76(__dst, __src, v5);
      v31 = (&__dst[v11] & ~v9);
      v32 = (&__src[v11] & ~v9);
      if ((*(v7 + 48))(v32, 1, v5))
      {
        memcpy(v31, v32, __na);
      }

      else
      {
        v76(v31, v32, v5);
        (*(v7 + 56))(v31, 0, 1, v5);
      }

      v42 = ((v31 + __dstc) & 0xFFFFFFFFFFFFFFF8);
      v43 = ((v32 + __dstc) & 0xFFFFFFFFFFFFFFF8);
      *v42 = *v43;
      v76(((v42 + v9 + 8) & ~v9), ((v43 + v9 + 8) & ~v9), v5);
      goto LABEL_111;
    }

    if (!v20)
    {
      v74 = v13;
      v75 = (v8 + v9) & ~v9;
      __n = v14;
      v27 = ~v9;
      v62 = *(v7 + 32);
      v62(__dst, __src, v5);
      __dstb = (&__dst[v11] & v27);
      v28 = (&__src[v11] & v27);
      if ((*(v7 + 48))(v28, 1, v5))
      {
        v29 = __dstb;
        v30 = __dstb;
LABEL_101:
        v49 = __n;
        memcpy(v30, v28, __n);
LABEL_123:
        v59 = 7;
        if (!v74)
        {
          v59 = 8;
        }

        *((v29 + v8 + v59) & 0xFFFFFFFFFFFFFFF8) = *((v28 + v8 + v59) & 0xFFFFFFFFFFFFFFF8);
        v60 = ((v75 + v49 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
        if (v17 > v60)
        {
          v60 = v17;
        }

        if (v15 > v60)
        {
          v60 = v15;
        }

        __dst[v60] = 0;
        goto LABEL_103;
      }

      v29 = __dstb;
      v62(__dstb, v28, v5);
LABEL_122:
      (*(v7 + 56))(v29, 0, 1, v5);
      v49 = __n;
      goto LABEL_123;
    }

    goto LABEL_102;
  }

  v74 = v13;
  v75 = (v8 + v9) & ~v9;
  __n = v14;
  v33 = ~v9;
  v63 = *(v7 + 32);
  v63(__dst, __src, v5);
  __dstd = (&__dst[v11] & v33);
  v34 = (&__src[v11] & v33);
  if (!(*(v7 + 48))(v34, 1, v5))
  {
    v35 = __dstd;
    v63(__dstd, v34, v5);
    goto LABEL_113;
  }

  v35 = __dstd;
  v36 = __dstd;
LABEL_108:
  v54 = __n;
  memcpy(v36, v34, __n);
LABEL_114:
  v57 = 7;
  if (!v74)
  {
    v57 = 8;
  }

  *((v35 + v8 + v57) & 0xFFFFFFFFFFFFFFF8) = *(&v34[v8 + v57] & 0xFFFFFFFFFFFFFFF8);
  v58 = ((v75 + v54 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v17 > v58)
  {
    v58 = v17;
  }

  if (v15 > v58)
  {
    v58 = v15;
  }

  __dst[v58] = 2;
LABEL_103:
  *(&__dst[v18 + 8] & 0xFFFFFFFFFFFFFFF8) = *(&__src[v18 + 8] & 0xFFFFFFFFFFFFFFF8);
  return __dst;
}

uint64_t sub_21D765BD0(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  v5 = *(v3 + 80);
  if (*(v3 + 84))
  {
    v6 = *(v3 + 64);
  }

  else
  {
    v6 = v4 + 1;
  }

  v7 = ((v6 + ((v4 + v5) & ~v5) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v8 = ((v7 + v5) & ~v5) + v4;
  if (v8 <= v7)
  {
    v8 = v7;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_26;
  }

  v9 = (v8 & 0xFFFFFFFFFFFFFFF8) + 16;
  v10 = a2 - 250;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v10 < 0x100)
  {
    v13 = 1;
  }

  else
  {
    v13 = v12;
  }

  if (v13 == 4)
  {
    v14 = *(a1 + v9);
    if (v14)
    {
      goto LABEL_22;
    }

LABEL_26:
    v17 = *(a1 + v8);
    if (v17 >= 4)
    {
      v18 = (v17 ^ 0xFF) + 1;
    }

    else
    {
      v18 = 0;
    }

    if (v18 >= 2)
    {
      return v18 - 1;
    }

    else
    {
      return 0;
    }
  }

  if (v13 != 2)
  {
    v14 = *(a1 + v9);
    if (v14)
    {
      goto LABEL_22;
    }

    goto LABEL_26;
  }

  v14 = *(a1 + v9);
  if (!v14)
  {
    goto LABEL_26;
  }

LABEL_22:
  v16 = v14 - 1;
  if (v11)
  {
    v16 = 0;
    LODWORD(v11) = *a1;
  }

  return (v11 | v16) + 252;
}

unsigned int *sub_21D765CFC(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = *(*(a4 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if (*(v4 + 84))
  {
    v7 = *(v4 + 64);
  }

  else
  {
    v7 = v5 + 1;
  }

  v8 = ((v7 + ((v5 + v6) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = ((v8 + v6) & ~v6) + v5;
  if (v9 <= v8)
  {
    v9 = v8;
  }

  v10 = (v9 & 0xFFFFFFFFFFFFFFF8) + 16;
  if (a3 >= 0xFC)
  {
    v11 = a3 - 250;
    if ((v9 & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = v12;
    }

    v14 = a2 - 251;
    if (a2 > 0xFB)
    {
      goto LABEL_16;
    }

LABEL_25:
    if (v13 > 1)
    {
      if (v13 != 2)
      {
        *(result + v10) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_34;
      }

      *(result + v10) = 0;
    }

    else if (v13)
    {
      *(result + v10) = 0;
      if (!a2)
      {
        return result;
      }

LABEL_34:
      *(result + v9) = ~a2;
      return result;
    }

    if (!a2)
    {
      return result;
    }

    goto LABEL_34;
  }

  v13 = 0;
  v14 = a2 - 251;
  if (a2 <= 0xFB)
  {
    goto LABEL_25;
  }

LABEL_16:
  if ((v9 & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if ((v9 & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = a2 - 252;
    v17 = result;
    bzero(result, (v9 & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v10) = v15;
    }

    else
    {
      *(result + v10) = v15;
    }
  }

  else if (v13)
  {
    *(result + v10) = v15;
  }

  return result;
}

uint64_t sub_21D765E84@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + qword_27CE61510);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_21D76A860;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_21D0D0E78(v4, v5);
}

uint64_t sub_21D765F24(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21D76A820;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + qword_27CE61510);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_21D0D0E78(v3, v4);
  return sub_21D0D0E88(v8, v9);
}

uint64_t TTRICollectionViewDragAndDropController.dragPreviewParametersProvider.getter()
{
  v1 = (v0 + qword_27CE61510);
  swift_beginAccess();
  v2 = *v1;
  sub_21D0D0E78(*v1, v1[1]);
  return v2;
}

id sub_21D766118(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_21DBF5D5C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBF5CAC();
  v12 = a3;
  swift_unknownObjectRetain();
  v13 = a1;
  sub_21D76A0D4(a4, v11);

  swift_unknownObjectRelease();
  (*(v9 + 8))(v11, v8);
  sub_21D74EC8C();
  v14 = sub_21DBFA5DC();

  return v14;
}

uint64_t TTRICollectionViewDragAndDropController.collectionView(_:dragPreviewParametersForItemAt:)(uint64_t a1, uint64_t a2)
{
  v5 = v2 + qword_27CE61510;
  swift_beginAccess();
  v6 = *v5;
  if (!*v5)
  {
    return 0;
  }

  v7 = *(v5 + 8);

  v8 = v6(a1, a2);
  sub_21D0D0E88(v6, v7);
  return v8;
}

id sub_21D766304(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_21DBF5D5C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBF5CAC();
  v10 = a3;
  v11 = a1;
  v12 = TTRICollectionViewDragAndDropController.collectionView(_:dragPreviewParametersForItemAt:)(v10, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

id sub_21D766444(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  v12 = sub_21DBF5D5C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBF5CAC();
  v16 = a3;
  swift_unknownObjectRetain();
  v17 = a1;
  sub_21D76A224(a4, v15, a6, a7);

  swift_unknownObjectRelease();
  (*(v13 + 8))(v15, v12);
  sub_21D74EC8C();
  v18 = sub_21DBFA5DC();

  return v18;
}

uint64_t sub_21D7665D4(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = a1;
  v8 = sub_21D76A38C(a4);

  swift_unknownObjectRelease();
  return v8 & 1;
}

id sub_21D766664(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70, &unk_21DC0A930);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  if (a5)
  {
    sub_21DBF5CAC();
    v12 = sub_21DBF5D5C();
    (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  }

  else
  {
    v13 = sub_21DBF5D5C();
    (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  }

  v14 = a3;
  swift_unknownObjectRetain();
  v15 = a1;
  v16 = sub_21D76A4D0(a4, v11);

  swift_unknownObjectRelease();
  sub_21D0CF7E0(v11, &unk_27CE58E70, &unk_21DC0A930);

  return v16;
}

void sub_21D766838(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t))
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = a1;
  a5(a4);

  swift_unknownObjectRelease();
}

uint64_t sub_21D7668BC@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v125 = a4;
  v129 = a5;
  v9 = *v5;
  v10 = *MEMORY[0x277D85000];
  v115 = *MEMORY[0x277D85000] & *v5;
  v117 = type metadata accessor for TTRICollectionViewItemHit(0);
  MEMORY[0x28223BE20](v117);
  v116 = &v103 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = *((v10 & v9) + 0x50);
  v14 = type metadata accessor for TTRICollectionViewDragItemSources.ItemInfo(255, v122, v12, v13);
  v111 = sub_21DBFBA8C();
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v112 = &v103 - v15;
  v114 = v14;
  v113 = *(v14 - 8);
  MEMORY[0x28223BE20](v16);
  v109 = &v103 - v17;
  v130 = type metadata accessor for TTRICollectionViewHitTestResult(0);
  MEMORY[0x28223BE20](v130);
  v128 = &v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = type metadata accessor for TTRICollectionViewHitIndexPaths(0);
  MEMORY[0x28223BE20](v123);
  v127 = &v103 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_21DBF5D5C();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v121 = &v103 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v126 = &v103 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70, &unk_21DC0A930);
  MEMORY[0x28223BE20](v25 - 8);
  v124 = &v103 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v103 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v103 - v31;
  *&v34 = MEMORY[0x28223BE20](v33).n128_u64[0];
  v36 = &v103 - v35;
  v37 = a3[1];
  v119 = *a3;
  v120 = v37;
  v118 = a3[2];
  [a2 locationInView_];
  v39 = v38;
  v41 = v40;
  v42 = v21[7];
  v42(v36, 1, 1, v20);
  v42(v32, 1, 1, v20);
  v43 = swift_allocObject();
  *(v43 + 2) = v36;
  *(v43 + 3) = a1;
  *(v43 + 4) = v39;
  v43[5] = v41;
  v131 = v32;
  *(v43 + 6) = v32;
  v44 = swift_allocObject();
  *(v44 + 16) = sub_21D76A894;
  *(v44 + 24) = v43;
  v136 = sub_21D0E6070;
  v137 = v44;
  aBlock = MEMORY[0x277D85DD0];
  v133 = 1107296256;
  v134 = sub_21D0E6204;
  v135 = &block_descriptor_87;
  v45 = _Block_copy(&aBlock);
  v46 = a1;

  [v46 performUsingPresentationValues_];
  _Block_release(v45);
  LOBYTE(v45) = swift_isEscapingClosureAtFileLocation();

  if ((v45 & 1) == 0)
  {
    sub_21D0D3954(v36, v29, &unk_27CE58E70, &unk_21DC0A930);
    v48 = v21[6];
    v49 = v36;
    if (v48(v29, 1, v20) == 1)
    {
      sub_21D0CF7E0(v29, &unk_27CE58E70, &unk_21DC0A930);
      goto LABEL_4;
    }

    v104 = v46;
    v107 = v43;
    v108 = v36;
    v50 = v126;
    v105 = v21[4];
    v105(v126, v29, v20);
    v106 = v21;
    v51 = v21[2];
    v52 = v127;
    v51(v127, v125, v20);
    v53 = v123;
    v51(v52 + *(v123 + 20), v50, v20);
    v54 = v52 + *(v53 + 24);
    v55 = v131;
    sub_21D0D3954(v131, v54, &unk_27CE58E70, &unk_21DC0A930);
    v56 = v128;
    sub_21D76A8A4(v52, v128);
    swift_storeEnumTagMultiPayload();
    v57 = v55;
    v58 = v124;
    sub_21D0D3954(v57, v124, &unk_27CE58E70, &unk_21DC0A930);
    if (v48(v58, 1, v20) == 1)
    {
      sub_21D76A908(v52, type metadata accessor for TTRICollectionViewHitIndexPaths);
      (v106[1])(v50, v20);
      sub_21D0CF7E0(v58, &unk_27CE58E70, &unk_21DC0A930);
      sub_21D76A9D8(v56, v129, type metadata accessor for TTRICollectionViewHitTestResult);
      v49 = v108;
LABEL_17:
      sub_21D0CF7E0(v131, &unk_27CE58E70, &unk_21DC0A930);
      sub_21D0CF7E0(v49, &unk_27CE58E70, &unk_21DC0A930);
    }

    v59 = v121;
    v125 = v20;
    v105(v121, v58, v20);
    v60 = v119;
    v61 = v120;
    aBlock = v119;
    v133 = v120;
    v62 = v118;
    v134 = v118;
    v65 = type metadata accessor for TTRICollectionViewDragItemSources(0, v122, v63, v64);
    v69 = sub_21D76B1D4(v65, v66, v67, v68);
    v49 = v108;
    if (v69)
    {
      aBlock = v60;
      v133 = v61;
      v134 = v62;
      if (sub_21D76B514() && sub_21DBFA6DC() == 1)
      {
        aBlock = v61;
        v70 = v114;
        v71 = sub_21DBFA74C();
        swift_getWitnessTable(MEMORY[0x277D83988], v71);
        v72 = v112;
        sub_21DBFACEC();
        v73 = v72;
        v74 = v113;
        if ((*(v113 + 48))(v72, 1, v70) == 1)
        {
          (*(v110 + 8))(v72, v111);
        }

        else
        {
          v75 = v109;
          (*(v74 + 32))(v109, v73, v70);
          v76 = _s15RemindersUICore20TTRAdjustedIndexPathV2eeoiySbAC_ACtFZ_0();
          (*(v74 + 8))(v75, v70);
          if (v76)
          {
            v77 = v106[1];
            v78 = v125;
            v77(v59, v125);
            sub_21D76A908(v127, type metadata accessor for TTRICollectionViewHitIndexPaths);
            v77(v50, v78);
            sub_21D76A9D8(v128, v129, type metadata accessor for TTRICollectionViewHitTestResult);
            goto LABEL_17;
          }
        }
      }
    }

    v79 = sub_21DBF5C6C();
    v80 = v104;
    v81 = [v104 cellForItemAtIndexPath_];

    if (v81)
    {
      [v81 bounds];
      [v80 convertRect:v81 fromCoordinateSpace:?];
      v83 = v82;
      v85 = v84;
      v87 = v86;
      v89 = v88;
      v90 = sub_21D769FF4(v41, v82, v84, v86, v88, 0.5);
      v91 = v59;
      v92 = v50;
      v93 = v106;
      v94 = v90 > 1u;
      v95 = sub_21D769FF4(v41, v83, v85, v87, v89, 0.2);

      v96 = v93[1];
      v97 = v91;
      v98 = v125;
      v96(v97, v125);
      sub_21D76A908(v128, type metadata accessor for TTRICollectionViewHitTestResult);
      v96(v92, v98);
      v99 = v116;
      sub_21D76A9D8(v127, v116, type metadata accessor for TTRICollectionViewHitIndexPaths);
      v100 = v117;
      *(v99 + *(v117 + 20)) = v94;
      *(v99 + *(v100 + 24)) = v95 == 1;
      sub_21D76A9D8(v99, v129, type metadata accessor for TTRICollectionViewItemHit);
      goto LABEL_16;
    }

    v101 = v106[1];
    v102 = v125;
    v101(v59, v125);
    sub_21D76A908(v128, type metadata accessor for TTRICollectionViewHitTestResult);
    sub_21D76A908(v127, type metadata accessor for TTRICollectionViewHitIndexPaths);
    v101(v50, v102);
LABEL_4:
    type metadata accessor for TTRICollectionViewEmptySpaceType(0);
    swift_storeEnumTagMultiPayload();
LABEL_16:
    swift_storeEnumTagMultiPayload();
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_21D767528(uint64_t a1, void *a2, uint64_t a3, double a4, double a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70, &unk_21DC0A930);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v27 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = [a2 indexPathForItemAtPoint_];
  if (v19)
  {
    v20 = v19;
    sub_21DBF5CAC();

    v21 = sub_21DBF5D5C();
    (*(*(v21 - 8) + 56))(v18, 0, 1, v21);
  }

  else
  {
    v21 = sub_21DBF5D5C();
    (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
  }

  sub_21D76A968(v18, a1);
  sub_21D0D3954(a1, v15, &unk_27CE58E70, &unk_21DC0A930);
  sub_21DBF5D5C();
  v22 = *(v21 - 8);
  v23 = 0;
  if ((*(v22 + 48))(v15, 1, v21) != 1)
  {
    v23 = sub_21DBF5C6C();
    (*(v22 + 8))(v15, v21);
  }

  v24 = [a2 dataSourceIndexPathForPresentationIndexPath_];

  if (v24)
  {
    sub_21DBF5CAC();

    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  (*(v22 + 56))(v12, v25, 1, v21);
  return sub_21D76A968(v12, a3);
}

id sub_21D7677CC@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v39 = a1;
  v40 = sub_21DBF5D5C();
  v38 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRICollectionViewInsertAtIndexPathOption(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61600, &qword_21DC26F40);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = MEMORY[0x28223BE20](v14).n128_u64[0];
  v17 = &v38 - v16;
  v18 = [a2 numberOfSections];
  v19 = v18 - 1;
  if (v18 < 1)
  {
    (*(v8 + 56))(a3, 1, 1, v7);
    type metadata accessor for TTRICollectionViewEmptySpaceType(0);

    return swift_storeEnumTagMultiPayload();
  }

  v20 = v18;
  v41 = a3;
  [v39 locationInView_];
  v22 = v21;
  v24 = v23;
  sub_21D767CE0(v20, a2, v17, v23);
  sub_21D0D3954(v17, v13, &qword_27CE61600, &qword_21DC26F40);
  if ((*(v8 + 48))(v13, 1, v7) == 1)
  {
    sub_21D0CF7E0(v13, &qword_27CE61600, &qword_21DC26F40);
    v39 = *MEMORY[0x277D767D8];
    v25 = (v38 + 8);
    while (1)
    {
      result = [a2 numberOfItemsInSection_];
      if (result)
      {
        if (!v19)
        {
          goto LABEL_17;
        }
      }

      else
      {
        MEMORY[0x223D3E490](0, v19);
        v28 = v39;
        v29 = sub_21DBF5C6C();
        v30 = [a2 layoutAttributesForSupplementaryElementOfKind:v28 atIndexPath:v29];

        if (v30)
        {
          [v30 frame];
          x = v44.origin.x;
          y = v44.origin.y;
          width = v44.size.width;
          height = v44.size.height;
          v43.x = v22;
          v43.y = v24;
          if (CGRectContainsPoint(v44, v43))
          {

            (*v25)(v6, v40);
            sub_21D0CF7E0(v17, &qword_27CE61600, &qword_21DC26F40);
            *v41 = v19;
            type metadata accessor for TTRICollectionViewEmptySpaceType(0);
            return swift_storeEnumTagMultiPayload();
          }

          v45.origin.x = x;
          v45.origin.y = y;
          v45.size.width = width;
          v45.size.height = height;
          MaxY = CGRectGetMaxY(v45);

          result = (*v25)(v6, v40);
          if (MaxY < v24 || v19 == 0)
          {
LABEL_17:
            sub_21D0CF7E0(v17, &qword_27CE61600, &qword_21DC26F40);
            type metadata accessor for TTRICollectionViewEmptySpaceType(0);
            return swift_storeEnumTagMultiPayload();
          }
        }

        else
        {
          result = (*v25)(v6, v40);
          if (!v19)
          {
            goto LABEL_17;
          }
        }
      }

      if (v20 < v19--)
      {
        __break(1u);
        return result;
      }
    }
  }

  sub_21D0CF7E0(v17, &qword_27CE61600, &qword_21DC26F40);
  sub_21D76A9D8(v13, v10, type metadata accessor for TTRICollectionViewInsertAtIndexPathOption);
  v37 = v41;
  sub_21D76A9D8(v10, v41, type metadata accessor for TTRICollectionViewInsertAtIndexPathOption);
  (*(v8 + 56))(v37, 0, 1, v7);
  type metadata accessor for TTRICollectionViewEmptySpaceType(0);
  return swift_storeEnumTagMultiPayload();
}

void sub_21D767CE0(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>, double a4@<D1>)
{
  v8 = sub_21DBF5D5C();
  v47 = *(v8 - 8);
  v48 = v8;
  MEMORY[0x28223BE20](v8);
  v46 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61608, &qword_21DC26F48);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v44 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61610, &qword_21DC26F50);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v21 = MEMORY[0x28223BE20](v20).n128_u64[0];
  v23 = &v44 - v22;
  v24 = a1 - 1;
  if (__OFSUB__(a1, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  v25 = COERCE_DOUBLE([a2 numberOfItemsInSection_]);
  if ((*&v25 & 0x8000000000000000) != 0)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v44 = v13;
  v49 = a3;
  v52.origin.x = 0.0;
  v52.origin.y = v25;
  MEMORY[0x28223BE20](*&v25);
  *(&v44 - 2) = v24;
  *(&v44 - 1) = a2;
  v45 = a2;
  v50 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61618, &qword_21DC26F58);
  v26 = v50;
  sub_21D0D0F1C(&unk_27CE61620, &qword_27CE61618, &qword_21DC26F58, MEMORY[0x277D84440]);
  sub_21DBFA48C();
  sub_21D0D3954(v26, v19, &qword_27CE61610, &qword_21DC26F50);
  if ((*(v11 + 48))(v19, 1, v10) == 1)
  {
    sub_21D0CF7E0(v19, &qword_27CE61610, &qword_21DC26F50);
    v27 = v46;
    MEMORY[0x223D3E490](0, v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63980, &unk_21DC09140);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_21DC08D20;
    *(v28 + 32) = sub_21DBFA16C();
    *(v28 + 40) = v29;
    v30 = sub_21DBFA16C();
    *(v28 + 48) = v30;
    *(v28 + 56) = v31;
    v51 = v28;
    MEMORY[0x28223BE20](v30);
    *(&v44 - 2) = v45;
    *(&v44 - 1) = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630, &qword_21DC0B3A0);
    type metadata accessor for CGRect(0);
    sub_21D0D0F1C(&qword_280D0C3A8, qword_27CE61630, &qword_21DC0B3A0, MEMORY[0x277D83970]);
    sub_21DBFA48C();

    if (v53)
    {
      sub_21D0CF7E0(v50, &qword_27CE61610, &qword_21DC26F50);
      v32 = type metadata accessor for TTRICollectionViewInsertAtIndexPathOption(0);
      (*(*(v32 - 8) + 56))(v49, 1, 1, v32);
      (*(v47 + 8))(v27, v48);
    }

    else
    {
      MaxY = CGRectGetMaxY(v52);
      sub_21D0CF7E0(v50, &qword_27CE61610, &qword_21DC26F50);
      v39 = v48;
      v38 = v49;
      v40 = v47;
      if (MaxY >= a4)
      {
        v43 = type metadata accessor for TTRICollectionViewInsertAtIndexPathOption(0);
        (*(*(v43 - 8) + 56))(v38, 1, 1, v43);
      }

      else
      {
        (*(v47 + 16))(v49, v27, v48);
        v41 = type metadata accessor for TTRICollectionViewInsertAtIndexPathOption(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v41 - 8) + 56))(v38, 0, 1, v41);
      }

      (*(v40 + 8))(v27, v39);
    }
  }

  else
  {
    sub_21D0D523C(v19, v16, &qword_27CE61608, &qword_21DC26F48);
    v33 = CGRectGetMaxY(*&v16[*(v10 + 48)]);
    sub_21D0CF7E0(v26, &qword_27CE61610, &qword_21DC26F50);
    if (v33 >= a4)
    {
      sub_21D0CF7E0(v16, &qword_27CE61608, &qword_21DC26F48);
      v42 = type metadata accessor for TTRICollectionViewInsertAtIndexPathOption(0);
      (*(*(v42 - 8) + 56))(v49, 1, 1, v42);
    }

    else
    {
      v34 = v44;
      sub_21D0D523C(v16, v44, &qword_27CE61608, &qword_21DC26F48);
      v35 = v49;
      (*(v47 + 32))(v49, v34, v48);
      v36 = type metadata accessor for TTRICollectionViewInsertAtIndexPathOption(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v36 - 8) + 56))(v35, 0, 1, v36);
    }
  }
}

uint64_t sub_21D7683F4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_21DBF5D5C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x223D3E490](*a1, a2, v10);
  v13 = sub_21DBF5C6C();
  v14 = [a3 layoutAttributesForItemAtIndexPath_];

  if (v14)
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61608, &qword_21DC26F48);
    v16 = (a4 + *(v15 + 48));
    (*(v9 + 16))(a4, v12, v8);
    [v14 frame];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;

    (*(v9 + 8))(v12, v8);
    *v16 = v18;
    v16[1] = v20;
    v16[2] = v22;
    v16[3] = v24;
    return (*(*(v15 - 8) + 56))(a4, 0, 1, v15);
  }

  else
  {
    (*(v9 + 8))(v12, v8);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61608, &qword_21DC26F48);
    return (*(*(v26 - 8) + 56))(a4, 1, 1, v26);
  }
}

void sub_21D768624(void *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_21DBFA12C();
  v5 = sub_21DBF5C6C();
  v6 = [a1 layoutAttributesForSupplementaryElementOfKind:v4 atIndexPath:v5];

  if (v6)
  {
    [v6 frame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
  }

  else
  {
    v8 = 0;
    v10 = 0;
    v12 = 0;
    v14 = 0;
  }

  *a2 = v8;
  *(a2 + 8) = v10;
  *(a2 + 16) = v12;
  *(a2 + 24) = v14;
  *(a2 + 32) = v6 == 0;
}

void sub_21D768708(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v97 = a5;
  *&v96 = sub_21DBF5D5C();
  v10 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v12 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v92 - v14;
  *&v17 = MEMORY[0x28223BE20](v16).n128_u64[0];
  v19 = &v92 - v18;
  v20 = *(v5 + qword_27CE61520);
  v21 = [v20 numberOfItemsInSection_];
  v22 = v21 < 1;
  v23 = v21 - 1;
  if (!v22)
  {
    if (a3)
    {
      if (a1 | a2)
      {
        MEMORY[0x223D3E490](v23, a4);
        v24 = sub_21DBF5C6C();
        v25 = [v20 layoutAttributesForItemAtIndexPath_];

        v26 = v96;
        if (v25)
        {
          [v25 frame];
          v28 = v27;
          v30 = v29;
          v32 = v31;
          v34 = v33;

          v98.origin.x = v28;
          v98.origin.y = v30;
          v98.size.width = v32;
          v98.size.height = v34;
          MaxY = CGRectGetMaxY(v98);
          v99.origin.x = v28;
          v99.origin.y = v30;
          v99.size.width = v32;
          v99.size.height = v34;
          MinX = CGRectGetMinX(v99);
          v100.origin.x = v28;
          v100.origin.y = v30;
          v100.size.width = v32;
          v100.size.height = v34;
          v101.size.width = CGRectGetWidth(v100);
          v101.size.height = 0.0;
          v101.origin.x = MinX;
          v101.origin.y = MaxY;
          v102 = CGRectInset(v101, 0.0, -2.0);
          size = v102.size;
          origin = v102.origin;
          v92 = *&v102.size.height;
          v93 = *&v102.origin.y;
          (*(v10 + 8))(v15, v26);
LABEL_13:
          *&v48 = size.width;
          *&v46 = origin.x;
          v47 = 0;
          v75 = v92;
          v49 = v93;
LABEL_18:
          *(&v48 + 1) = v75;
          goto LABEL_19;
        }

        (*(v10 + 8))(v15, v96);
      }

      else
      {
        MEMORY[0x223D3E490](0, a4);
        v62 = sub_21DBF5C6C();
        v63 = [v20 layoutAttributesForItemAtIndexPath_];

        v64 = v96;
        if (v63)
        {
          [v63 frame];
          v66 = v65;
          v68 = v67;
          v70 = v69;
          v72 = v71;

          v108.origin.x = v66;
          v108.origin.y = v68;
          v108.size.width = v70;
          v108.size.height = v72;
          MinY = CGRectGetMinY(v108);
          v109.origin.x = v66;
          v109.origin.y = v68;
          v109.size.width = v70;
          v109.size.height = v72;
          v74 = CGRectGetMinX(v109);
          v110.origin.x = v66;
          v110.origin.y = v68;
          v110.size.width = v70;
          v110.size.height = v72;
          v111.size.width = CGRectGetWidth(v110);
          v111.size.height = 0.0;
          v111.origin.x = v74;
          v111.origin.y = MinY;
          v112 = CGRectInset(v111, 0.0, -2.0);
          size = v112.size;
          origin = v112.origin;
          v92 = *&v112.size.height;
          v93 = *&v112.origin.y;
          (*(v10 + 8))(v19, v64);
          goto LABEL_13;
        }

        (*(v10 + 8))(v19, v96);
      }
    }

    else
    {
      MEMORY[0x223D3E490](a1, a4);
      v50 = sub_21DBF5C6C();
      v51 = *(v10 + 8);
      v52 = v96;
      v51(v12, v96);
      v53 = [v20 layoutAttributesForItemAtIndexPath_];

      if (v53)
      {
        [v53 frame];
        v55 = v54;
        v57 = v56;
        v59 = v58;
        v61 = v60;
      }

      else
      {
        v55 = 0.0;
        v57 = 0.0;
        v59 = 0.0;
        v61 = 0.0;
      }

      MEMORY[0x223D3E490](a2, a4);
      v76 = sub_21DBF5C6C();
      v51(v12, v52);
      v77 = [v20 layoutAttributesForItemAtIndexPath_];

      if (v77)
      {
        [v77 frame];
        v79 = v78;
        v81 = v80;
        v83 = v82;
        v85 = v84;

        if (v53)
        {
          v113.origin.x = v55;
          v113.origin.y = v57;
          v113.size.width = v59;
          v113.size.height = v61;
          v86 = CGRectGetMaxY(v113);
          v87 = v79;
          v88 = v86;
          v114.origin.x = v87;
          v114.origin.y = v81;
          v114.size.width = v83;
          v114.size.height = v85;
          v89 = (v88 + CGRectGetMinY(v114)) * 0.5;
          v115.origin.x = v55;
          v115.origin.y = v57;
          v115.size.width = v59;
          v115.size.height = v61;
          v90 = CGRectGetMinX(v115);
          v116.origin.x = v55;
          v116.origin.y = v57;
          v116.size.width = v59;
          v116.size.height = v61;
          v117.size.width = CGRectGetWidth(v116);
          v117.size.height = 0.0;
          v117.origin.x = v90;
          v117.origin.y = v89;
          *&v46 = CGRectInset(v117, 0.0, -2.0);
          v47 = 0;
          goto LABEL_18;
        }
      }
    }

LABEL_22:
    v46 = 0uLL;
    v47 = 1;
    v48 = 0uLL;
    goto LABEL_23;
  }

  if ((a3 & 1) == 0)
  {
    goto LABEL_22;
  }

  v37 = *MEMORY[0x277D767D8];
  MEMORY[0x223D3E490](0, a4);
  v38 = sub_21DBF5C6C();
  (*(v10 + 8))(v12, v96);
  v39 = [v20 layoutAttributesForSupplementaryElementOfKind:v37 atIndexPath:v38];

  if (!v39)
  {
    goto LABEL_22;
  }

  [v39 frame];
  x = v103.origin.x;
  y = v103.origin.y;
  width = v103.size.width;
  height = v103.size.height;
  v44 = CGRectGetMaxY(v103);
  v104.origin.x = x;
  v104.origin.y = y;
  v104.size.width = width;
  v104.size.height = height;
  v45 = CGRectGetMinX(v104);
  v105.origin.x = x;
  v105.origin.y = y;
  v105.size.width = width;
  v105.size.height = height;
  v106.size.width = CGRectGetWidth(v105);
  v106.size.height = 0.0;
  v106.origin.x = v45;
  v106.origin.y = v44;
  v107 = CGRectInset(v106, 0.0, -2.0);
  origin = v107.origin;
  v96 = *&v107.origin.y;
  v93 = *&v107.size.height;
  size = v107.size;

  *&v48 = size.width;
  *&v46 = origin.x;
  v47 = 0;
  *(&v48 + 1) = v93;
  v49 = v96;
LABEL_19:
  *(&v46 + 1) = v49;
LABEL_23:
  v91 = v97;
  *v97 = v46;
  v91[1] = v48;
  *(v91 + 32) = v47;
}

id TTRICollectionViewDragAndDropController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TTRICollectionViewDragAndDropController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21D768E24(uint64_t a1)
{
  sub_21D0D0E88(*(a1 + qword_27CE61510), *(a1 + qword_27CE61510 + 8));

  swift_unknownObjectRelease();
  v2 = a1 + qword_27CE61518;

  return sub_21D157444(v2);
}

uint64_t TTRICollectionViewDragAndDropController.itemID(at:)@<X0>(uint64_t a2@<X8>)
{
  v4 = *((*MEMORY[0x277D85000] & *v2) + 0x50);
  v5 = sub_21DBFBA8C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  sub_21DBF8BEC();
  v9 = *(v4 - 8);
  if ((*(v9 + 48))(v8, 1, v4) == 1)
  {
    (*(v6 + 8))(v8, v5);
    v10 = 1;
  }

  else
  {
    (*(v9 + 32))(a2, v8, v4);
    v10 = 0;
  }

  return (*(v9 + 56))(a2, v10, 1, v4);
}

uint64_t TTRICollectionViewDragAndDropController.indexPath(forInsertingAt:)(uint64_t a1)
{
  v3 = *(v1 + qword_27CE61528 + 8);
  ObjectType = swift_getObjectType();
  return (*(v3 + 40))(a1, ObjectType, v3);
}

id TTRICollectionViewDragAndDropController.layoutAttributesForItem(at:)(uint64_t a1)
{
  v2 = *(v1 + qword_27CE61520);
  v3 = sub_21DBF5C6C();
  v4 = [v2 layoutAttributesForItemAtIndexPath_];

  return v4;
}

uint64_t TTRICollectionViewDragAndDropController.itemLocation(for:)(uint64_t a1)
{
  v3 = *(v1 + qword_27CE61528 + 8);
  ObjectType = swift_getObjectType();
  return (*(v3 + 48))(a1, ObjectType, v3);
}

uint64_t TTRICollectionViewDragAndDropController.itemLocation(forItemAt:localItemIDsToBeMoved:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + qword_27CE61528 + 8);
  ObjectType = swift_getObjectType();
  return (*(v5 + 56))(a1, a2, ObjectType, v5);
}

uint64_t TTRICollectionViewDragAndDropController.itemLocation(forInsertingAt:localItemIDsToBeMoved:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + qword_27CE61528 + 8);
  ObjectType = swift_getObjectType();
  return (*(v5 + 64))(a1, a2, ObjectType, v5);
}

uint64_t TTRICollectionViewDragAndDropController.siblingsBeforeAndAfter(forInsertingAt:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + qword_27CE61528 + 8);
  ObjectType = swift_getObjectType();
  return (*(v7 + 72))(a1, a2, a3, ObjectType, v7);
}

uint64_t TTRICollectionViewDragAndDropController.hitTest(with:dragItemSources:destinationIndexPath:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v18 = a1;
  v19 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70, &unk_21DC0A930);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = sub_21DBF5D5C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a2;
  v17 = *(a2 + 8);
  sub_21D0D3954(a3, v9, &unk_27CE58E70, &unk_21DC0A930);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_21D0CF7E0(v9, &unk_27CE58E70, &unk_21DC0A930);
    sub_21D7677CC(v18, *(v4 + qword_27CE61520), v19);
    type metadata accessor for TTRICollectionViewHitTestResult(0);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    v16 = *(v4 + qword_27CE61520);
    v20 = v14;
    v21 = v17;
    sub_21D7668BC(v16, v18, &v20, v13, v19);
    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t TTRICollectionViewDragAndDropController.gapLocation(relativeTo:dragItemSources:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v78 = a1;
  v82 = a3;
  v6 = *v4;
  v7 = *MEMORY[0x277D85000];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70, &unk_21DC0A930);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v76 = &v72 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v72 - v14;
  MEMORY[0x28223BE20](v16);
  v77 = &v72 - v17;
  v79 = sub_21DBF5D5C();
  v81 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v72 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v73 = &v72 - v20;
  MEMORY[0x28223BE20](v21);
  v74 = &v72 - v22;
  MEMORY[0x28223BE20](v23);
  v75 = &v72 - v24;
  MEMORY[0x28223BE20](v25);
  v27 = &v72 - v26;
  MEMORY[0x28223BE20](v28);
  v80 = &v72 - v29;
  v30 = *a2;
  v31 = a2[1];
  v32 = a2[2];
  v83 = *a2;
  v84 = v31;
  v85 = v32;
  v35 = type metadata accessor for TTRICollectionViewDragItemSources(0, *((v7 & v6) + 0x50), v33, v34);
  result = sub_21D76B1D4(v35, v36, v37, v38);
  if (result)
  {
    v83 = v30;
    v84 = v31;
    v85 = v32;
    v43 = sub_21D76B558(v35, v40, v41, v42);
    if (*(v43 + 16))
    {
      v44 = v81;
      v45 = v43 + ((*(v44 + 80) + 32) & ~*(v44 + 80));
      v46 = v79;
      v73 = *(v81 + 16);
      (v73)(v27, v45, v79);

      v47 = *(v44 + 32);
      v47(v80, v27, v46);
      v48 = *(v4 + qword_27CE61520);
      v49 = sub_21DBF5C6C();
      v50 = [v48 presentationIndexPathForDataSourceIndexPath_];

      if (v50)
      {
        sub_21DBF5CAC();

        v51 = 0;
      }

      else
      {
        v51 = 1;
      }

      v58 = v76;
      v57 = v77;
      v59 = v81;
      (*(v81 + 56))(v15, v51, 1, v46);
      sub_21D0D523C(v15, v57, &unk_27CE58E70, &unk_21DC0A930);
      sub_21D0D3954(v57, v58, &unk_27CE58E70, &unk_21DC0A930);
      if ((*(v59 + 48))(v58, 1, v46) == 1)
      {
        sub_21D0CF7E0(v57, &unk_27CE58E70, &unk_21DC0A930);
        (*(v59 + 8))(v80, v46);
        result = sub_21D0CF7E0(v58, &unk_27CE58E70, &unk_21DC0A930);
        v52 = 1;
      }

      else
      {
        v60 = v75;
        v47(v75, v58, v46);
        v61 = type metadata accessor for TTRICollectionViewHitIndexPaths(0);
        v62 = v74;
        (v73)(v74, v78 + *(v61 + 20), v46);
        if (MEMORY[0x223D3E430](v62, v60))
        {
          v63 = *(v59 + 8);
          v63(v62, v46);
          v63(v60, v46);
          sub_21D0CF7E0(v57, &unk_27CE58E70, &unk_21DC0A930);
          result = (v63)(v80, v46);
          v52 = 2;
        }

        else
        {
          v67 = sub_21DBF5C8C();
          v68 = *(v59 + 8);
          v68(v62, v46);
          v68(v60, v46);
          sub_21D0CF7E0(v57, &unk_27CE58E70, &unk_21DC0A930);
          result = (v68)(v80, v46);
          if (v67)
          {
            v52 = 4;
          }

          else
          {
            v52 = 3;
          }
        }
      }
    }

    else
    {

      v53 = type metadata accessor for TTRICollectionViewHitIndexPaths(0);
      v54 = v78;
      sub_21D0D3954(v78 + *(v53 + 24), v10, &unk_27CE58E70, &unk_21DC0A930);
      v55 = v81;
      v56 = v79;
      if ((*(v81 + 48))(v10, 1, v79) == 1)
      {
        result = sub_21D0CF7E0(v10, &unk_27CE58E70, &unk_21DC0A930);
        v52 = 3;
      }

      else
      {
        v64 = v73;
        (*(v55 + 32))(v73, v10, v56);
        v65 = v72;
        (*(v55 + 16))(v72, v54 + *(v53 + 20), v56);
        if (MEMORY[0x223D3E430](v65, v64))
        {
          v66 = *(v55 + 8);
          v66(v65, v56);
          result = (v66)(v64, v56);
          v52 = 2;
        }

        else if (sub_21DBF5C8C())
        {
          v69 = *(v55 + 8);
          v69(v65, v56);
          result = (v69)(v64, v56);
          v52 = 4;
        }

        else
        {
          v70 = [*(v4 + qword_27CE61520) hasUncommittedUpdates];
          v71 = *(v55 + 8);
          v71(v65, v56);
          result = (v71)(v64, v56);
          if (v70)
          {
            v52 = 4;
          }

          else
          {
            v52 = 0;
          }
        }
      }
    }
  }

  else
  {
    v52 = 0;
  }

  *v82 = v52;
  return result;
}

void TTRICollectionViewDragAndDropController.customDropIndicatorRect(forInsertingAt:in:)(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = sub_21DBF5D0C();
  v8 = sub_21DBF5CFC();
  v9 = v8;
  if (!v8)
  {
    goto LABEL_4;
  }

  if ([*(v4 + qword_27CE61520) numberOfItemsInSection_] < v8)
  {
    v9 = 0;
    v8 = 1;
LABEL_4:
    v10 = 1;
    goto LABEL_7;
  }

  v8 = v9 - 1;
  if (__OFSUB__(v9, 1))
  {
    __break(1u);
    return;
  }

  v10 = 0;
LABEL_7:
  sub_21D768708(v8, v9, v10, v7, &v16);
  v12 = *(&v16 + 1);
  v11 = v16;
  v13 = v17;
  v14 = v18;
  v15 = v19;
  if ((v19 & 1) == 0)
  {
    [*(v4 + qword_27CE61520) convertRect:a2 toCoordinateSpace:{v16, v17, v18}];
    v15 = 0;
  }

  *a3 = v11;
  *(a3 + 8) = v12;
  *(a3 + 16) = v13;
  *(a3 + 24) = v14;
  *(a3 + 32) = v15;
}

Swift::Void __swiftcall TTRICollectionViewDragAndDropController.setSupplementarySectionHeaderHighlightedAsDropTarget(inSection:)(Swift::Int_optional inSection)
{
  v2 = v1;
  is_nil = inSection.is_nil;
  value = inSection.value;
  v5 = sub_21DBF5D5C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (is_nil)
  {
    v9 = 0;
    v10 = 0;
  }

  else
  {
    v11 = *(v2 + qword_27CE61520);
    v12 = *MEMORY[0x277D767D8];
    MEMORY[0x223D3E490](0, value);
    v13 = sub_21DBF5C6C();
    (*(v6 + 8))(v8, v5);
    v9 = [v11 supplementaryViewForElementKind:v12 atIndexPath:v13];

    if (v9)
    {
      swift_getObjectType();
      v10 = swift_conformsToProtocol2();
      if (v10)
      {
        v14 = v9;
      }

      else
      {

        v9 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  v15 = v2 + qword_27CE61518;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!v9)
  {
    if (!Strong)
    {
      return;
    }

    goto LABEL_13;
  }

  if (!Strong)
  {
LABEL_13:
    swift_unknownObjectRelease();
    goto LABEL_14;
  }

  v17 = Strong;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v17 != v9)
  {
LABEL_14:
    if (swift_unknownObjectWeakLoadStrong())
    {
      v18 = *(v15 + 8);
      ObjectType = swift_getObjectType();
      (*(v18 + 16))(0, ObjectType, v18);
      swift_unknownObjectRelease();
    }

    if (v9)
    {
      v20 = swift_getObjectType();
      (*(v10 + 16))(1, v20, v10);
    }

    *(v15 + 8) = v10;
    swift_unknownObjectWeakAssign();
  }

  swift_unknownObjectRelease();
}

double sub_21D769FA8@<D0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  TTRICollectionViewDragAndDropController.customDropIndicatorRect(forInsertingAt:in:)(a2, v6);
  result = *v6;
  v5 = v6[1];
  *a3 = v6[0];
  *(a3 + 16) = v5;
  *(a3 + 32) = v7;
  return result;
}

uint64_t sub_21D769FF4(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, double a6)
{
  v17.origin.x = a2;
  v17.origin.y = a3;
  v17.size.width = a4;
  v17.size.height = a5;
  v11 = CGRectGetHeight(v17) * a6;
  v18.origin.x = a2;
  v18.origin.y = a3;
  v18.size.width = a4;
  v18.size.height = a5;
  CGRectGetHeight(v18);
  v19.origin.x = UIEdgeInsetsInsetRect(a2, a3, a4, a5, v11, 0.0);
  x = v19.origin.x;
  y = v19.origin.y;
  width = v19.size.width;
  height = v19.size.height;
  if (CGRectGetMinY(v19) > a1)
  {
    return 0;
  }

  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  if (CGRectGetMaxY(v20) >= a1)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_21D76A0D4(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = *(v2 + qword_27CE61530 + 8);
  v7 = swift_getObjectType();
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TTRICollectionViewDragAndDropController<A>, ObjectType);
  return (*(v6 + 24))(v2, WitnessTable, a1, a2, v7, v6);
}

uint64_t sub_21D76A184(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = *(v1 + qword_27CE61530 + 8);
  v5 = swift_getObjectType();
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TTRICollectionViewDragAndDropController<A>, ObjectType);
  return (*(v4 + 32))(v1, WitnessTable, a1, v5, v4);
}

uint64_t sub_21D76A224(uint64_t a1, uint64_t a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = *(v4 + qword_27CE61530 + 8);
  v11 = swift_getObjectType();
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TTRICollectionViewDragAndDropController<A>, ObjectType);
  return (*(v10 + 40))(v4, WitnessTable, a1, a2, v11, v10, a3, a4);
}

uint64_t sub_21D76A2EC(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = *(v1 + qword_27CE61530 + 8);
  v5 = swift_getObjectType();
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TTRICollectionViewDragAndDropController<A>, ObjectType);
  return (*(v4 + 48))(v1, WitnessTable, a1, v5, v4);
}

uint64_t sub_21D76A38C(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = *(v1 + qword_27CE61530 + 8);
  v5 = swift_getObjectType();
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TTRICollectionViewDragAndDropController<A>, ObjectType);
  return (*(v4 + 56))(v1, WitnessTable, a1, v5, v4) & 1;
}

uint64_t sub_21D76A430(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = *(v1 + qword_27CE61530 + 8);
  v5 = swift_getObjectType();
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TTRICollectionViewDragAndDropController<A>, ObjectType);
  return (*(v4 + 64))(v1, WitnessTable, a1, v5, v4);
}

uint64_t sub_21D76A4D0(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = *(v2 + qword_27CE61530 + 8);
  v7 = swift_getObjectType();
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TTRICollectionViewDragAndDropController<A>, ObjectType);
  return (*(v6 + 88))(v2, WitnessTable, a1, a2, v7, v6);
}

uint64_t sub_21D76A580(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = *(v1 + qword_27CE61530 + 8);
  v5 = swift_getObjectType();
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TTRICollectionViewDragAndDropController<A>, ObjectType);
  return (*(v4 + 96))(v1, WitnessTable, a1, v5, v4);
}

uint64_t sub_21D76A620(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = *(v1 + qword_27CE61530 + 8);
  v5 = swift_getObjectType();
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TTRICollectionViewDragAndDropController<A>, ObjectType);
  return (*(v4 + 72))(v1, WitnessTable, a1, v5, v4);
}

uint64_t sub_21D76A6C0(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = *(v1 + qword_27CE61530 + 8);
  v5 = swift_getObjectType();
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TTRICollectionViewDragAndDropController<A>, ObjectType);
  return (*(v4 + 80))(v1, WitnessTable, a1, v5, v4);
}

uint64_t sub_21D76A820(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = a1;
  v2(&v4, &v5);
  return v4;
}

uint64_t sub_21D76A860@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_21D76A8A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRICollectionViewHitIndexPaths(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D76A908(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21D76A968(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70, &unk_21DC0A930);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D76A9D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

BOOL sub_21D76AA78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  type metadata accessor for TTRICollectionViewDragItemSources.ItemInfo(0, *(a1 + 16), a3, a4);
  if (sub_21DBFA6DC() != 1)
  {
    return 0;
  }

  if (v5 >> 62)
  {
    v6 = sub_21DBFBD7C();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v6 == 0;
}

uint64_t sub_21D76AAEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TTRICollectionViewDragItemSources.ItemInfo(255, *(a1 + 16), a3, a4);
  v4 = sub_21DBFA74C();
  sub_21DBF8E0C();
  swift_getWitnessTable(MEMORY[0x277D83970], v4);
  v5 = sub_21DBFA49C();

  return v5;
}

uint64_t (*sub_21D76ABB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>))(uint64_t *, void)
{
  v7 = type metadata accessor for TTRAdjustedIndexPath(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRICollectionViewInsertAtIndexPathOption(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v21 = *(v3 + 1);
  sub_21D76C764(a1, v12, v21);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      return sub_21D74EAE0(v12, a3, type metadata accessor for TTRUnadjustedIndexPath);
    }

    else
    {
      sub_21D74EAE0(v12, a3, type metadata accessor for TTRUnadjustedIndexPath);
      result = sub_21DBF5CEC();
      if (__OFADD__(*v20, 1))
      {
        __break(1u);
      }

      else
      {
        ++*v20;
        return result(&v22, 0);
      }
    }
  }

  else
  {
    sub_21D74EAE0(v12, v9, type metadata accessor for TTRAdjustedIndexPath);
    v22 = v13;
    v23 = v21;
    v19 = sub_21D76B558(a2, v16, v17, v18);
    TTRAdjustedIndexPath.unadjusted(forOriginalItemIndexPaths:)(v19, a3);

    return sub_21D76C804(v9, type metadata accessor for TTRAdjustedIndexPath);
  }

  return result;
}

uint64_t sub_21D76ADA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 8);
  v6 = *(v4 + 16);
  v32 = v5;
  v7 = *(a1 + 16);
  type metadata accessor for TTRICollectionViewDragItemSources.ItemInfo(255, v7, a3, a4);
  v8 = sub_21DBFA74C();
  WitnessTable = swift_getWitnessTable(MEMORY[0x277D83988], v8);
  v10 = sub_21DBFACFC();
  if (v10)
  {
    v11 = MEMORY[0x277D84F90];
  }

  else
  {
    v32 = v5;
    MEMORY[0x28223BE20](v10);
    v31[2] = v7;
    sub_21DBF8E0C();
    v13 = sub_21D0E5014(sub_21D76C7C8, v31, v8, MEMORY[0x277D837D0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v12);

    v32 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630, &qword_21DC0B3A0);
    sub_21D1ADAA8();
    v14 = sub_21DBFA07C();
    v16 = v15;

    v32 = 0x202D206C61636F6CLL;
    v33 = 0xE800000000000000;
    MEMORY[0x223D42AA0](v14, v16);

    v17 = v32;
    v18 = v33;
    v11 = sub_21D210A84(0, 1, 1, MEMORY[0x277D84F90]);
    v20 = *(v11 + 2);
    v19 = *(v11 + 3);
    if (v20 >= v19 >> 1)
    {
      v11 = sub_21D210A84((v19 > 1), v20 + 1, 1, v11);
    }

    *(v11 + 2) = v20 + 1;
    v21 = &v11[16 * v20];
    *(v21 + 4) = v17;
    *(v21 + 5) = v18;
  }

  if (v6 >> 62)
  {
    if (!sub_21DBFBD7C())
    {
      goto LABEL_13;
    }

    v22 = sub_21DBFBD7C();
  }

  else
  {
    v22 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v22)
    {
      goto LABEL_13;
    }
  }

  v31[4] = v22;
  v32 = sub_21DBFC5BC();
  v33 = v23;
  MEMORY[0x223D42AA0](0x726568746F207820, 0xE900000000000073);
  v24 = v32;
  v25 = v33;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v11 = sub_21D210A84(0, *(v11 + 2) + 1, 1, v11);
  }

  v27 = *(v11 + 2);
  v26 = *(v11 + 3);
  if (v27 >= v26 >> 1)
  {
    v11 = sub_21D210A84((v26 > 1), v27 + 1, 1, v11);
  }

  *(v11 + 2) = v27 + 1;
  v28 = &v11[16 * v27];
  *(v28 + 4) = v24;
  *(v28 + 5) = v25;
LABEL_13:
  v32 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630, &qword_21DC0B3A0);
  sub_21D1ADAA8();
  v29 = sub_21DBFA07C();

  return v29;
}

uint64_t sub_21D76B0CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TTRICollectionViewDragItemSources.ItemInfo(0, a1, a3, a4);

  return sub_21DBF9E3C();
}

uint64_t sub_21D76B0FC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_21D76B108@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_21DBF5D5C();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  v13 = type metadata accessor for TTRICollectionViewDragItemSources.ItemInfo(0, a4, v11, v12);
  result = (*(*(a4 - 8) + 32))(a5 + *(v13 + 28), a2, a4);
  *(a5 + *(v13 + 32)) = a3;
  return result;
}

uint64_t sub_21D76B1D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  type metadata accessor for TTRICollectionViewDragItemSources.ItemInfo(0, *(a1 + 16), a3, a4);
  result = sub_21DBFA6DC();
  if (!(v5 >> 62))
  {
    v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result >= 1)
    {
      goto LABEL_3;
    }

    return 1;
  }

  v10 = result;
  v7 = sub_21DBFBD7C();
  result = v10;
  if (v10 < 1)
  {
    return 1;
  }

LABEL_3:
  v8 = __OFADD__(result, v7);
  v9 = result + v7;
  if (!v8)
  {
    return v9 == 1;
  }

  __break(1u);
  return result;
}

void (*sub_21D76B268@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>))(uint64_t *, void)
{
  v7 = type metadata accessor for TTRUnadjustedIndexPath(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRICollectionViewInsertAtIndexPathOption(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v3;
  v14 = v3[1];
  v16 = v3[2];
  sub_21D76C764(a1, v13, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    return sub_21D74EAE0(v13, a3, type metadata accessor for TTRAdjustedIndexPath);
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_21D74EAE0(v13, v9, type metadata accessor for TTRUnadjustedIndexPath);
    v29 = v15;
    v30 = v14;
    v31 = v16;
    v21 = sub_21D76B558(a2, v18, v19, v20);
    TTRUnadjustedIndexPath.adjusted(forOriginalItemIndexPaths:)(v21, a3);

    v22 = v9;
  }

  else
  {
    sub_21D74EAE0(v13, v9, type metadata accessor for TTRUnadjustedIndexPath);
    result = sub_21DBF5CEC();
    if (__OFADD__(*v24, 1))
    {
      __break(1u);
      return result;
    }

    ++*v24;
    result(&v29, 0);
    v29 = v15;
    v30 = v14;
    v31 = v16;
    v28 = sub_21D76B558(a2, v25, v26, v27);
    TTRUnadjustedIndexPath.adjusted(forOriginalItemIndexPaths:)(v28, a3);

    v22 = v9;
  }

  return sub_21D76C804(v22, type metadata accessor for TTRUnadjustedIndexPath);
}

BOOL sub_21D76B498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TTRICollectionViewDragItemSources.ItemInfo(255, *(a1 + 16), a3, a4);
  v4 = sub_21DBFA74C();
  swift_getWitnessTable(MEMORY[0x277D83988], v4);
  return (sub_21DBFACFC() & 1) == 0;
}

BOOL sub_21D76B514()
{
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
    v2 = sub_21DBFBD7C();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v2 == 0;
}

uint64_t sub_21D76B558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = *(v4 + 8);
  v12 = *(a1 + 16);
  type metadata accessor for TTRICollectionViewDragItemSources.ItemInfo(255, v12, a3, a4);
  v5 = sub_21DBFA74C();
  v6 = sub_21DBF5D5C();
  sub_21DBF8E0C();
  WitnessTable = swift_getWitnessTable(MEMORY[0x277D83988], v5);
  v9 = sub_21D0E5014(sub_21D76C6F4, &v11, v5, v6, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v8);

  return v9;
}

uint64_t TTRICollectionViewDragItemSources.ItemInfo.indexPath.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21DBF5D5C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

void TTRICollectionViewDragItemSources.draggedItemsForValidation<A>(transformItemID:)(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *(v5 + 8);
  v7 = *(v5 + 16);
  v14 = v8;
  type metadata accessor for TTRICollectionViewDragItemSources.ItemInfo(255, *(a3 + 16), a3, a4);
  v9 = sub_21DBFA74C();
  swift_getWitnessTable(MEMORY[0x277D83988], v9);
  v10 = sub_21DBFACFC();
  v11 = v10;
  if (v10)
  {
    sub_21DBF8E0C();
  }

  else
  {
    v13[1] = v13;
    v14 = v8;
    *&v12 = MEMORY[0x28223BE20](v10).n128_u64[0];
    swift_getWitnessTable(MEMORY[0x277D83970], v9, v12);
    v7 = sub_21DBFA4EC();
  }

  *a5 = v7;
  *(a5 + 8) = v11 & 1;
}

uint64_t sub_21D76B8F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 32);
  v7 = type metadata accessor for TTRICollectionViewDragItemSources.ItemInfo(0, *(v4 + 16), a3, a4);
  return v6(a1 + *(v7 + 28));
}

double sub_21D76B950(void *a1)
{
  swift_unknownObjectRelease();

  return result;
}

uint64_t *sub_21D76B994(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = a2[2];
  swift_unknownObjectRetain();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return a1;
}

uint64_t *sub_21D76B9E4(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  a1[1] = a2[1];
  sub_21DBF8E0C();

  a1[2] = a2[2];
  sub_21DBF8E0C();

  return a1;
}

void *sub_21D76BA5C(void *a1, uint64_t a2)
{
  swift_unknownObjectRelease();
  *a1 = *a2;

  a1[2] = *(a2 + 16);

  return a1;
}

uint64_t sub_21D76BAC4(uint64_t a1)
{
  result = sub_21DBF5D5C();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *sub_21D76BB98(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = sub_21DBF5D5C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = *(a3 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = v8 + v11;
  v13 = *(v10 + 64);
  v14 = v13 + ((v8 + v11) & ~v11) + 1;
  v15 = (*(v7 + 80) | *(v10 + 80));
  if (v15 > 7 || ((*(v7 + 80) | *(v10 + 80)) & 0x100000) != 0 || v14 > 0x18)
  {
    v18 = *a2;
    *a1 = *a2;
    a1 = (v18 + ((v15 + 16) & ~v15));
  }

  else
  {
    v19 = ~v11;
    (*(v7 + 16))(a1, a2, v6);
    v20 = (a2 + v12) & v19;
    (*(v10 + 16))((a1 + v12) & v19, v20, v9);
    *(((a1 + v12) & v19) + v13) = *(v20 + v13);
  }

  return a1;
}

uint64_t sub_21D76BD18(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF5D5C();
  v5 = *(v4 - 8) + 8;
  (*v5)(a1, v4);
  v6 = *(*(a2 + 16) - 8);
  v7 = *(v6 + 8);
  v8 = (*(v5 + 56) + a1 + *(v6 + 80)) & ~*(v6 + 80);

  return v7(v8);
}

uint64_t sub_21D76BDC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF5D5C();
  v7 = *(v6 - 8) + 16;
  (*v7)(a1, a2, v6);
  v8 = *(v7 + 48);
  v9 = *(*(a3 + 16) - 8);
  v10 = v9 + 16;
  v11 = *(v9 + 80);
  v12 = v8 + v11;
  v13 = (v12 + a1) & ~v11;
  v14 = (v12 + a2) & ~v11;
  (*(v9 + 16))(v13, v14);
  *(*(v10 + 48) + v13) = *(*(v10 + 48) + v14);
  return a1;
}

uint64_t sub_21D76BE94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF5D5C();
  v7 = *(v6 - 8) + 24;
  (*v7)(a1, a2, v6);
  v8 = *(v7 + 40);
  v9 = *(*(a3 + 16) - 8);
  v10 = v9 + 24;
  v11 = *(v9 + 80);
  v12 = v8 + v11;
  v13 = (v12 + a1) & ~v11;
  v14 = (v12 + a2) & ~v11;
  (*(v9 + 24))(v13, v14);
  *(*(v10 + 40) + v13) = *(*(v10 + 40) + v14);
  return a1;
}

uint64_t sub_21D76BF60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF5D5C();
  v7 = *(v6 - 8) + 32;
  (*v7)(a1, a2, v6);
  v8 = *(v7 + 32);
  v9 = *(*(a3 + 16) - 8);
  v10 = v9 + 32;
  v11 = *(v9 + 80);
  v12 = v8 + v11;
  v13 = (v12 + a1) & ~v11;
  v14 = (v12 + a2) & ~v11;
  (*(v9 + 32))(v13, v14);
  *(*(v10 + 32) + v13) = *(*(v10 + 32) + v14);
  return a1;
}

uint64_t sub_21D76C02C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF5D5C();
  v7 = *(v6 - 8) + 40;
  (*v7)(a1, a2, v6);
  v8 = *(v7 + 24);
  v9 = *(*(a3 + 16) - 8);
  v10 = v9 + 40;
  v11 = *(v9 + 80);
  v12 = v8 + v11;
  v13 = (v12 + a1) & ~v11;
  v14 = (v12 + a2) & ~v11;
  (*(v9 + 40))(v13, v14);
  *(*(v10 + 24) + v13) = *(*(v10 + 24) + v14);
  return a1;
}

uint64_t sub_21D76C0F8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_21DBF5D5C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  v12 = *(v9 + 64);
  if (v10 <= v8)
  {
    v13 = *(v7 + 84);
  }

  else
  {
    v13 = *(v9 + 84);
  }

  if (v13 <= 0xFE)
  {
    v13 = 254;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = *(*(v6 - 8) + 64) + v11;
  if (a2 > v13)
  {
    v15 = v12 + (v14 & ~v11) + 1;
    v16 = 8 * v15;
    if (v15 > 3)
    {
      goto LABEL_9;
    }

    v18 = ((a2 - v13 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v18))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_29;
      }

      goto LABEL_16;
    }

    if (v18 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_29;
      }

      goto LABEL_16;
    }

    if (v18 >= 2)
    {
LABEL_9:
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_29;
      }

LABEL_16:
      v19 = (v17 - 1) << v16;
      if (v15 > 3)
      {
        v19 = 0;
      }

      if (v12 + (v14 & ~v11) == -1)
      {
        v21 = 0;
      }

      else
      {
        if (v15 <= 3)
        {
          v20 = v12 + (v14 & ~v11) + 1;
        }

        else
        {
          v20 = 4;
        }

        if (v20 > 2)
        {
          if (v20 == 3)
          {
            v21 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v21 = *a1;
          }
        }

        else if (v20 == 1)
        {
          v21 = *a1;
        }

        else
        {
          v21 = *a1;
        }
      }

      v27 = v13 + (v21 | v19);
      return (v27 + 1);
    }
  }

LABEL_29:
  if (v8 == v13)
  {
    v22 = *(v7 + 48);

    return v22(a1);
  }

  v24 = (a1 + v14) & ~v11;
  if (v10 != v13)
  {
    v26 = *(v24 + v12);
    if (v26 < 2)
    {
      return 0;
    }

    v27 = (v26 + 2147483646) & 0x7FFFFFFF;
    return (v27 + 1);
  }

  v25 = *(v9 + 48);

  return v25(v24, v10);
}

void sub_21D76C368(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_21DBF5D5C() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 64);
  v13 = *(v10 + 80);
  v14 = *(v10 + 64);
  if (v11 <= v9)
  {
    v15 = *(v8 + 84);
  }

  else
  {
    v15 = *(v10 + 84);
  }

  if (v15 <= 0xFE)
  {
    v15 = 254;
  }

  v16 = v12 + v13;
  v17 = v14 + ((v12 + v13) & ~v13) + 1;
  if (a3 <= v15)
  {
    v18 = 0;
  }

  else if (v17 <= 3)
  {
    v21 = ((a3 - v15 + ~(-1 << (8 * v17))) >> (8 * v17)) + 1;
    if (HIWORD(v21))
    {
      v18 = 4;
    }

    else
    {
      if (v21 < 0x100)
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      if (v21 >= 2)
      {
        v18 = v22;
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v18 = 1;
  }

  if (v15 < a2)
  {
    v19 = ~v15 + a2;
    if (v17 < 4)
    {
      v20 = (v19 >> (8 * v17)) + 1;
      if (v17)
      {
        v23 = v19 & ~(-1 << (8 * v17));
        bzero(a1, v17);
        if (v17 != 3)
        {
          if (v17 == 2)
          {
            *a1 = v23;
            if (v18 > 1)
            {
LABEL_50:
              if (v18 == 2)
              {
                *&a1[v17] = v20;
              }

              else
              {
                *&a1[v17] = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v18 > 1)
            {
              goto LABEL_50;
            }
          }

          goto LABEL_47;
        }

        *a1 = v23;
        a1[2] = BYTE2(v23);
      }

      if (v18 > 1)
      {
        goto LABEL_50;
      }
    }

    else
    {
      bzero(a1, v17);
      *a1 = v19;
      v20 = 1;
      if (v18 > 1)
      {
        goto LABEL_50;
      }
    }

LABEL_47:
    if (v18)
    {
      a1[v17] = v20;
    }

    return;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *&a1[v17] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *&a1[v17] = 0;
  }

  else if (v18)
  {
    a1[v17] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return;
  }

LABEL_33:
  if (v9 == v15)
  {
    v24 = *(v8 + 56);

    v24(a1, a2);
  }

  else
  {
    v25 = &a1[v16] & ~v13;
    if (v11 == v15)
    {
      v26 = *(v10 + 56);

      v26(v25, a2, v11);
    }

    else
    {
      *(v25 + v14) = a2 + 1;
    }
  }
}

uint64_t sub_21D76C65C(uint64_t a1, uint64_t *a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  sub_21DBF8E0C();

  return a1;
}

uint64_t sub_21D76C6A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;

  return a1;
}

uint64_t sub_21D76C764(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for TTRICollectionViewInsertAtIndexPathOption(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D76C7C8@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x223D3E410]();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_21D76C804(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21D76C864@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = *(v4 + 16);
  v8 = type metadata accessor for TTRICollectionViewDragItemSources.ItemInfo(0, v7, a2, a3);
  return (*(*(v7 - 8) + 16))(a4, a1 + *(v8 + 28), v7);
}

Swift::Void __swiftcall TTRLazilyLoadedViewModelState.transitionToOutdated()()
{
  v2 = v0;
  v3 = *(v0 - 8);
  v4 = (MEMORY[0x28223BE20])();
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v3 + 8))(v6, v2);
    }
  }

  else
  {
    (*(v3 + 8))(v1, v2);
    v8 = *(v2 + 16);
    v9 = *(swift_getTupleTypeMetadata2() + 48);
    (*(*(v8 - 8) + 32))(v1, v6, v8);
    *(v1 + v9) = 0;
    swift_storeEnumTagMultiPayload();
  }
}

uint64_t TTRLazilyLoadedViewModelState.transitionToValid(with:)(uint64_t a1, uint64_t a2)
{
  (*(*(a2 - 8) + 8))(v2);
  v5 = *(a2 + 16);
  v6 = *(swift_getTupleTypeMetadata2() + 48);
  (*(*(v5 - 8) + 16))(v2, a1, v5);
  *(v2 + v6) = 1;

  return swift_storeEnumTagMultiPayload();
}

Swift::Bool __swiftcall TTRLazilyLoadedViewModelState.transitionToNone()()
{
  v2 = v0;
  v3 = *(v0 - 8);
  v4 = (MEMORY[0x28223BE20])();
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v8 = *(v3 + 8);
      v8(v1, v2);
      swift_storeEnumTagMultiPayload();
      v8(v6, v2);
      return 1;
    }
  }

  else
  {
    (*(*(*(v2 + 16) - 8) + 8))(v6);
  }

  return 0;
}

Swift::Void __swiftcall TTRLazilyLoadedViewModelState.transitionToInvalid()()
{
  v2 = v0;
  v3 = *(v0 - 8);
  v4 = (MEMORY[0x28223BE20])();
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = *(v3 + 8);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v8(v6, v2);
      return;
    }

    v8(v1, v2);
    (*(*(*(v2 + 16) - 8) + 56))(v1, 1, 1);
  }

  else
  {
    v8(v1, v2);
    v9 = *(v2 + 16);
    v10 = *(v9 - 8);
    (*(v10 + 32))(v1, v6, v9);
    (*(v10 + 56))(v1, 0, 1, v9);
  }

  swift_storeEnumTagMultiPayload();
}

uint64_t TTRLazilyLoadedViewModelState.isValid.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = MEMORY[0x28223BE20](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v2 + 8))(v5, a1);
    }

    return 0;
  }

  else
  {
    (*(*(*(a1 + 16) - 8) + 8))(v5);
    return 1;
  }
}

uint64_t TTRLazilyLoadedViewModelState.viewModel.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x28223BE20](a1);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = *(a1 + 16);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v10 = sub_21DBFBA8C();
      return (*(*(v10 - 8) + 32))(a2, v6, v10);
    }

    else
    {
      return (*(*(v9 - 8) + 56))(a2, 1, 1);
    }
  }

  else
  {
    v12 = *(v9 - 8);
    v13 = v6;
    v14 = v9;
    (*(v12 + 32))(a2, v13, v9);
    return (*(v12 + 56))(a2, 0, 1, v14);
  }
}

uint64_t static TTRLazilyLoadedViewModelState<A>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v58 = a4;
  v65 = a1;
  v66 = a2;
  v5 = sub_21DBFBA8C();
  v60 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v56 = &v53 - v6;
  v61 = v7;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v55 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v57 = &v53 - v8;
  v64 = *(a3 - 8);
  MEMORY[0x28223BE20](v9);
  v54 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v53 - v12;
  v63 = a3;
  v16 = type metadata accessor for TTRLazilyLoadedViewModelState(0, a3, v14, v15);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v53 - v21;
  v23 = swift_getTupleTypeMetadata2();
  v24 = *(v23 - 8);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v53 - v26;
  v29 = &v53 + *(v28 + 48) - v26;
  v62 = v17;
  v30 = *(v17 + 16);
  v30(&v53 - v26, v65, v16, v25);
  (v30)(v29, v66, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (v30)(v19, v27, v16);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v32 = v60;
        v33 = *(TupleTypeMetadata2 + 48);
        v34 = *(v60 + 32);
        v35 = v57;
        v36 = v61;
        v34();
        (v34)(&v35[v33], v29, v36);
        v37 = v63;
        v38 = v64;
        v39 = *(v64 + 48);
        if (v39(v35, 1, v63) == 1)
        {
          if (v39(&v35[v33], 1, v37) == 1)
          {
            (*(v32 + 8))(v35, v36);
LABEL_10:
            v44 = v62;
LABEL_11:
            (*(v44 + 8))(v27, v16);
            return 1;
          }
        }

        else
        {
          (*(v32 + 16))(v56, v35, v36);
          if (v39(&v35[v33], 1, v37) != 1)
          {
            v50 = v54;
            (*(v38 + 32))(v54, &v35[v33], v37);
            v51 = v56;
            LODWORD(v66) = sub_21DBFA10C();
            v52 = *(v38 + 8);
            v52(v50, v37);
            v52(v51, v37);
            (*(v32 + 8))(v35, v36);
            v44 = v62;
            if (v66)
            {
              goto LABEL_11;
            }

            goto LABEL_20;
          }

          (*(v38 + 8))(v56, v37);
        }

        (*(v55 + 8))(v35, TupleTypeMetadata2);
LABEL_19:
        v44 = v62;
LABEL_20:
        (*(v44 + 8))(v27, v16);
        return 0;
      }

      (*(v60 + 8))(v19, v61);
    }

    else if (swift_getEnumCaseMultiPayload() == 2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v40 = v13;
    (v30)(v22, v27, v16);
    v41 = v63;
    v42 = *(swift_getTupleTypeMetadata2() + 48);
    v43 = v22[v42];
    if (!swift_getEnumCaseMultiPayload())
    {
      v46 = v29[v42];
      v47 = v64;
      (*(v64 + 32))(v40, v29, v41);
      v48 = sub_21DBFA10C();
      v49 = *(v47 + 8);
      v49(v40, v41);
      v49(v22, v41);
      if (v48)
      {
        (*(v62 + 8))(v27, v16);
        return v43 ^ v46 ^ 1u;
      }

      goto LABEL_19;
    }

    (*(v64 + 8))(v22, v41);
  }

  (*(v24 + 8))(v27, v23);
  return 0;
}

uint64_t sub_21D76D858(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_getTupleTypeLayout2();
    v4[4] = v4;
    result = sub_21DBFBA8C();
    if (v3 <= 0x3F)
    {
      v4[5] = *(result - 8) + 64;
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

void *sub_21D76D944(void *__dst, unsigned __int8 *a2, uint64_t a3)
{
  v3 = __dst;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = *(v5 + 80);
  if (*(v5 + 84))
  {
    v8 = *(v5 + 64);
  }

  else
  {
    v8 = v6 + 1;
  }

  if (v8 <= v6 + 1)
  {
    v9 = v6 + 1;
  }

  else
  {
    v9 = v8;
  }

  v10 = v9 + 1;
  if (*(v5 + 80) > 7u || (v7 & 0x100000) != 0 || v10 > 0x18)
  {
    v13 = *a2;
    *v3 = *a2;
    v3 = (v13 + ((v7 + 16) & ~v7));

    return v3;
  }

  v14 = a2[v9];
  v15 = v14 - 2;
  if (v14 >= 2)
  {
    if (v9 <= 3)
    {
      v16 = v9;
    }

    else
    {
      v16 = 4;
    }

    if (v16 <= 1)
    {
      if (!v16)
      {
        goto LABEL_30;
      }

      v17 = *a2;
    }

    else if (v16 == 2)
    {
      v17 = *a2;
    }

    else if (v16 == 3)
    {
      v17 = *a2 | (a2[2] << 16);
    }

    else
    {
      v17 = *a2;
    }

    v18 = (v17 | (v15 << (8 * v9))) + 2;
    v14 = v17 + 2;
    if (v9 < 4)
    {
      v14 = v18;
    }
  }

LABEL_30:
  if (v14 == 1)
  {
    if ((*(v5 + 48))(a2, 1, v4))
    {
      memcpy(v3, a2, v8);
    }

    else
    {
      (*(v5 + 16))(v3, a2, v4);
      (*(v5 + 56))(v3, 0, 1, v4);
    }

    *(v3 + v9) = 1;
    return v3;
  }

  if (!v14)
  {
    (*(v5 + 16))(__dst);
    *(v3 + v6) = a2[v6];
    *(v3 + v9) = 0;
    return v3;
  }

  return memcpy(__dst, a2, v10);
}

unsigned __int8 *sub_21D76DB68(unsigned __int8 *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  if (*(v3 + 84))
  {
    v5 = *(v3 + 64);
  }

  else
  {
    v5 = v4 + 1;
  }

  if (v5 <= v4 + 1)
  {
    v6 = v4 + 1;
  }

  else
  {
    v6 = v5;
  }

  v7 = result[v6];
  v8 = v7 - 2;
  if (v7 >= 2)
  {
    if (v6 <= 3)
    {
      v9 = v6;
    }

    else
    {
      v9 = 4;
    }

    if (v9 <= 1)
    {
      if (!v9)
      {
        goto LABEL_21;
      }

      v10 = *result;
    }

    else if (v9 == 2)
    {
      v10 = *result;
    }

    else if (v9 == 3)
    {
      v10 = *result | (result[2] << 16);
    }

    else
    {
      v10 = *result;
    }

    v11 = (v10 | (v8 << (8 * v6))) + 2;
    v7 = v10 + 2;
    if (v6 < 4)
    {
      v7 = v11;
    }
  }

LABEL_21:
  if (!v7 || v7 == 1 && (v12 = result, v16 = *(*(a2 + 16) - 8), v13 = (*(v3 + 48))(), v3 = v16, v14 = v13, result = v12, !v14))
  {
    v15 = *(v3 + 8);

    return v15(result, v2);
  }

  return result;
}

void *sub_21D76DCD0(void *__dst, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  if (*(v5 + 84))
  {
    v7 = *(v5 + 64);
  }

  else
  {
    v7 = v6 + 1;
  }

  if (v7 <= v6 + 1)
  {
    v8 = v6 + 1;
  }

  else
  {
    v8 = v7;
  }

  v9 = a2[v8];
  v10 = v9 - 2;
  if (v9 >= 2)
  {
    if (v8 <= 3)
    {
      v11 = v8;
    }

    else
    {
      v11 = 4;
    }

    if (v11 <= 1)
    {
      if (!v11)
      {
        goto LABEL_21;
      }

      v12 = *a2;
    }

    else if (v11 == 2)
    {
      v12 = *a2;
    }

    else if (v11 == 3)
    {
      v12 = *a2 | (a2[2] << 16);
    }

    else
    {
      v12 = *a2;
    }

    v13 = (v12 | (v10 << (8 * v8))) + 2;
    v9 = v12 + 2;
    if (v8 < 4)
    {
      v9 = v13;
    }
  }

LABEL_21:
  if (v9 == 1)
  {
    if ((*(v5 + 48))(a2, 1, v4))
    {
      memcpy(__dst, a2, v7);
    }

    else
    {
      (*(v5 + 16))(__dst, a2, v4);
      (*(v5 + 56))(__dst, 0, 1, v4);
    }

    *(__dst + v8) = 1;
    return __dst;
  }

  if (!v9)
  {
    (*(v5 + 16))(__dst);
    *(__dst + v6) = a2[v6];
    *(__dst + v8) = 0;
    return __dst;
  }

  return memcpy(__dst, a2, v8 + 1);
}

unsigned __int8 *sub_21D76DEC0(unsigned __int8 *__dst, unsigned __int8 *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  if (*(v6 + 84))
  {
    v8 = *(v6 + 64);
  }

  else
  {
    v8 = v7 + 1;
  }

  if (v8 <= v7 + 1)
  {
    v9 = v7 + 1;
  }

  else
  {
    v9 = v8;
  }

  v10 = __dst[v9];
  v11 = v10 - 2;
  if (v10 >= 2)
  {
    if (v9 <= 3)
    {
      v12 = v9;
    }

    else
    {
      v12 = 4;
    }

    if (v12 <= 1)
    {
      if (!v12)
      {
        goto LABEL_22;
      }

      v13 = *__dst;
    }

    else if (v12 == 2)
    {
      v13 = *__dst;
    }

    else if (v12 == 3)
    {
      v13 = *__dst | (__dst[2] << 16);
    }

    else
    {
      v13 = *__dst;
    }

    v14 = (v13 | (v11 << (8 * v9))) + 2;
    v10 = v13 + 2;
    if (v9 < 4)
    {
      v10 = v14;
    }
  }

LABEL_22:
  if (!v10 || v10 == 1 && !(*(v6 + 48))(__dst, 1, v5))
  {
    (*(v6 + 8))(__dst, v5);
  }

  v15 = __src[v9];
  v16 = v15 - 2;
  if (v15 >= 2)
  {
    if (v9 <= 3)
    {
      v17 = v9;
    }

    else
    {
      v17 = 4;
    }

    if (v17 <= 1)
    {
      if (!v17)
      {
        goto LABEL_40;
      }

      v18 = *__src;
    }

    else if (v17 == 2)
    {
      v18 = *__src;
    }

    else if (v17 == 3)
    {
      v18 = *__src | (__src[2] << 16);
    }

    else
    {
      v18 = *__src;
    }

    v19 = (v18 | (v16 << (8 * v9))) + 2;
    v15 = v18 + 2;
    if (v9 < 4)
    {
      v15 = v19;
    }
  }

LABEL_40:
  if (v15 == 1)
  {
    if ((*(v6 + 48))(__src, 1, v5))
    {
      memcpy(__dst, __src, v8);
    }

    else
    {
      (*(v6 + 16))(__dst, __src, v5);
      (*(v6 + 56))(__dst, 0, 1, v5);
    }

    __dst[v9] = 1;
    return __dst;
  }

  if (!v15)
  {
    (*(v6 + 16))(__dst, __src, v5);
    __dst[v7] = __src[v7];
    __dst[v9] = 0;
    return __dst;
  }

  return memcpy(__dst, __src, v9 + 1);
}

void *sub_21D76E188(void *__dst, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  if (*(v5 + 84))
  {
    v7 = *(v5 + 64);
  }

  else
  {
    v7 = v6 + 1;
  }

  if (v7 <= v6 + 1)
  {
    v8 = v6 + 1;
  }

  else
  {
    v8 = v7;
  }

  v9 = a2[v8];
  v10 = v9 - 2;
  if (v9 >= 2)
  {
    if (v8 <= 3)
    {
      v11 = v8;
    }

    else
    {
      v11 = 4;
    }

    if (v11 <= 1)
    {
      if (!v11)
      {
        goto LABEL_21;
      }

      v12 = *a2;
    }

    else if (v11 == 2)
    {
      v12 = *a2;
    }

    else if (v11 == 3)
    {
      v12 = *a2 | (a2[2] << 16);
    }

    else
    {
      v12 = *a2;
    }

    v13 = (v12 | (v10 << (8 * v8))) + 2;
    v9 = v12 + 2;
    if (v8 < 4)
    {
      v9 = v13;
    }
  }

LABEL_21:
  if (v9 == 1)
  {
    if ((*(v5 + 48))(a2, 1, v4))
    {
      memcpy(__dst, a2, v7);
    }

    else
    {
      (*(v5 + 32))(__dst, a2, v4);
      (*(v5 + 56))(__dst, 0, 1, v4);
    }

    *(__dst + v8) = 1;
    return __dst;
  }

  if (!v9)
  {
    (*(v5 + 32))(__dst);
    *(__dst + v6) = a2[v6];
    *(__dst + v8) = 0;
    return __dst;
  }

  return memcpy(__dst, a2, v8 + 1);
}

unsigned __int8 *sub_21D76E378(unsigned __int8 *__dst, unsigned __int8 *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  if (*(v6 + 84))
  {
    v8 = *(v6 + 64);
  }

  else
  {
    v8 = v7 + 1;
  }

  if (v8 <= v7 + 1)
  {
    v9 = v7 + 1;
  }

  else
  {
    v9 = v8;
  }

  v10 = __dst[v9];
  v11 = v10 - 2;
  if (v10 >= 2)
  {
    if (v9 <= 3)
    {
      v12 = v9;
    }

    else
    {
      v12 = 4;
    }

    if (v12 <= 1)
    {
      if (!v12)
      {
        goto LABEL_22;
      }

      v13 = *__dst;
    }

    else if (v12 == 2)
    {
      v13 = *__dst;
    }

    else if (v12 == 3)
    {
      v13 = *__dst | (__dst[2] << 16);
    }

    else
    {
      v13 = *__dst;
    }

    v14 = (v13 | (v11 << (8 * v9))) + 2;
    v10 = v13 + 2;
    if (v9 < 4)
    {
      v10 = v14;
    }
  }

LABEL_22:
  if (!v10 || v10 == 1 && !(*(v6 + 48))(__dst, 1, v5))
  {
    (*(v6 + 8))(__dst, v5);
  }

  v15 = __src[v9];
  v16 = v15 - 2;
  if (v15 >= 2)
  {
    if (v9 <= 3)
    {
      v17 = v9;
    }

    else
    {
      v17 = 4;
    }

    if (v17 <= 1)
    {
      if (!v17)
      {
        goto LABEL_40;
      }

      v18 = *__src;
    }

    else if (v17 == 2)
    {
      v18 = *__src;
    }

    else if (v17 == 3)
    {
      v18 = *__src | (__src[2] << 16);
    }

    else
    {
      v18 = *__src;
    }

    v19 = (v18 | (v16 << (8 * v9))) + 2;
    v15 = v18 + 2;
    if (v9 < 4)
    {
      v15 = v19;
    }
  }

LABEL_40:
  if (v15 == 1)
  {
    if ((*(v6 + 48))(__src, 1, v5))
    {
      memcpy(__dst, __src, v8);
    }

    else
    {
      (*(v6 + 32))(__dst, __src, v5);
      (*(v6 + 56))(__dst, 0, 1, v5);
    }

    __dst[v9] = 1;
    return __dst;
  }

  if (!v15)
  {
    (*(v6 + 32))(__dst, __src, v5);
    __dst[v7] = __src[v7];
    __dst[v9] = 0;
    return __dst;
  }

  return memcpy(__dst, __src, v9 + 1);
}

uint64_t sub_21D76E640(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  if (*(v3 + 84))
  {
    v5 = *(v3 + 64);
  }

  else
  {
    v5 = v4 + 1;
  }

  if (v5 <= v4 + 1)
  {
    v5 = v4 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_28;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if ((v5 + 1) <= 3)
  {
    v10 = ((a2 + ~(-1 << v7) - 253) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v10 < 2)
    {
LABEL_28:
      v12 = *(a1 + v5);
      if (v12 >= 3)
      {
        return (v12 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_28;
  }

LABEL_17:
  v11 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return (v6 | v11) + 254;
}

void sub_21D76E790(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 64);
  if (*(v5 + 84))
  {
    v7 = *(v5 + 64);
  }

  else
  {
    v7 = v6 + 1;
  }

  if (v7 <= v6 + 1)
  {
    v8 = v6 + 1;
  }

  else
  {
    v8 = v7;
  }

  v9 = v8 + 1;
  if (a3 < 0xFE)
  {
    v10 = 0;
  }

  else if (v9 <= 3)
  {
    v13 = ((a3 + ~(-1 << (8 * v9)) - 253) >> (8 * v9)) + 1;
    if (HIWORD(v13))
    {
      v10 = 4;
    }

    else
    {
      if (v13 < 0x100)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      if (v13 >= 2)
      {
        v10 = v14;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 1;
  }

  if (a2 > 0xFD)
  {
    v11 = a2 - 254;
    if (v9 >= 4)
    {
      bzero(a1, v8 + 1);
      *a1 = v11;
      v12 = 1;
      if (v10 > 1)
      {
        goto LABEL_43;
      }

      goto LABEL_40;
    }

    v12 = (v11 >> (8 * v9)) + 1;
    if (v8 != -1)
    {
      v15 = v11 & ~(-1 << (8 * v9));
      bzero(a1, v9);
      if (v9 != 3)
      {
        if (v9 == 2)
        {
          *a1 = v15;
          if (v10 > 1)
          {
LABEL_43:
            if (v10 == 2)
            {
              *&a1[v9] = v12;
            }

            else
            {
              *&a1[v9] = v12;
            }

            return;
          }
        }

        else
        {
          *a1 = v11;
          if (v10 > 1)
          {
            goto LABEL_43;
          }
        }

LABEL_40:
        if (v10)
        {
          a1[v9] = v12;
        }

        return;
      }

      *a1 = v15;
      a1[2] = BYTE2(v15);
    }

    if (v10 > 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  if (v10 <= 1)
  {
    if (v10)
    {
      a1[v9] = 0;
      if (!a2)
      {
        return;
      }

LABEL_29:
      a1[v8] = -a2;
      return;
    }

LABEL_28:
    if (!a2)
    {
      return;
    }

    goto LABEL_29;
  }

  if (v10 == 2)
  {
    *&a1[v9] = 0;
    goto LABEL_28;
  }

  *&a1[v9] = 0;
  if (a2)
  {
    goto LABEL_29;
  }
}

uint64_t sub_21D76E980(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(a2 + 16) - 8);
  v3 = *(v2 + 64);
  if (*(v2 + 84))
  {
    v4 = *(v2 + 64);
  }

  else
  {
    v4 = v3 + 1;
  }

  if (v4 <= v3 + 1)
  {
    v4 = v3 + 1;
  }

  v5 = a1[v4];
  v6 = v5 - 2;
  if (v5 >= 2)
  {
    if (v4 <= 3)
    {
      v7 = v4;
    }

    else
    {
      v7 = 4;
    }

    if (v7 <= 1)
    {
      if (!v7)
      {
        return v5;
      }

      v8 = *a1;
    }

    else if (v7 == 2)
    {
      v8 = *a1;
    }

    else if (v7 == 3)
    {
      v8 = *a1 | (a1[2] << 16);
    }

    else
    {
      v8 = *a1;
    }

    v9 = (v8 | (v6 << (8 * v4))) + 2;
    LODWORD(v5) = v8 + 2;
    if (v4 >= 4)
    {
      return v5;
    }

    else
    {
      return v9;
    }
  }

  return v5;
}

void sub_21D76EA58(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8);
  v6 = *(v5 + 64);
  if (*(v5 + 84))
  {
    v7 = *(v5 + 64);
  }

  else
  {
    v7 = v6 + 1;
  }

  if (v7 <= v6 + 1)
  {
    v8 = v6 + 1;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1)
  {
    a1[v8] = a2;
    return;
  }

  v9 = a2 - 2;
  if (v8 < 4)
  {
    a1[v8] = (v9 >> (8 * v8)) + 2;
    if (!v8)
    {
      return;
    }

    v9 &= ~(-1 << (8 * v8));
  }

  else
  {
    a1[v8] = 2;
  }

  if (v8 >= 4)
  {
    v10 = 4;
  }

  else
  {
    v10 = v8;
  }

  bzero(a1, v8);
  if (v10 > 2)
  {
    if (v10 == 3)
    {
      *a1 = v9;
      a1[2] = BYTE2(v9);
    }

    else
    {
      *a1 = v9;
    }
  }

  else if (v10 == 1)
  {
    *a1 = v9;
  }

  else
  {
    *a1 = v9;
  }
}

uint64_t sub_21D76EB78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_21DBFBA8C();
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, a1, v6);
  return sub_21D0E3614(v8);
}

uint64_t sub_21D76EC48()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + class metadata base offset for TTRICollectionViewTreeBackedDiffableDataSource + 24);
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_21D76ECC8(char a1)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + class metadata base offset for TTRICollectionViewTreeBackedDiffableDataSource + 24);
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_21D76EDF0()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + class metadata base offset for TTRICollectionViewTreeBackedDiffableDataSource + 32);
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_21D76EF0C(int a1, uint64_t a2, uint64_t a3)
{
  v19 = a2;
  v20 = a3;
  v18 = a1;
  v4 = *MEMORY[0x277D85000] & *v3;
  v5 = v4 + class metadata base offset for TTRICollectionViewTreeBackedDiffableDataSource;
  v6 = *(v4 + class metadata base offset for TTRICollectionViewTreeBackedDiffableDataSource);
  v7 = sub_21DBFBA8C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17[-v9];
  v11 = *(v6 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v17[-v13];
  v15 = *(v5 + 24);
  swift_beginAccess();
  if ((*(v3 + v15) & 1) == 0)
  {
    sub_21D0E6F44(v10);
    if ((*(v11 + 48))(v10, 1, v6) == 1)
    {
      (*(v8 + 8))(v10, v7);
    }

    else
    {
      (*(v11 + 32))(v14, v10, v6);
      v16 = (*(*(v4 + class metadata base offset for TTRICollectionViewTreeBackedDiffableDataSource + 8) + 32))(v6);
      sub_21D7702C4(v16, v18 & 1, v19, v20);

      (*(v11 + 8))(v14, v6);
    }
  }
}

void sub_21D76F170()
{
  v1 = [*(v0 + *((*MEMORY[0x277D85000] & *v0) + class metadata base offset for TTRICollectionViewTreeBackedDiffableDataSource + 40)) collectionViewLayout];
  [v1 invalidateLayout];
}

uint64_t sub_21D76F25C(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v25 = a4;
  v24 = a3;
  ObjectType = swift_getObjectType();
  v7 = *MEMORY[0x277D85000] & *v4;
  v9 = *(v7 + class metadata base offset for TTRICollectionViewTreeBackedDiffableDataSource);
  v8 = *(v7 + class metadata base offset for TTRICollectionViewTreeBackedDiffableDataSource + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v36[0] = swift_getAssociatedTypeWitness();
  v36[1] = v36[0];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v38 = AssociatedConformanceWitness;
  v10 = type metadata accessor for UICollectionViewDiffableDataSource.CombinedSnapshots(0, v36);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &ObjectType - v13;
  v23 = *a2;
  (*(v8 + 24))(v36, v9, v8, v12);
  v34 = 0;
  v35 = 0xE000000000000000;
  sub_21DBFBEEC();
  v15 = static UICollectionViewDiffableDataSource.loggingPrefix.getter();
  v17 = v16;

  v34 = v15;
  v35 = v17;
  MEMORY[0x223D42AA0](0xD000000000000016, 0x800000021DC6A5B0);
  v31 = v9;
  v32 = v8;
  v33 = v36;
  sub_21DBFAE9C();
  sub_21DBF625C();

  v34 = 0;
  v35 = 0xE000000000000000;
  sub_21DBFBEEC();
  v18 = static UICollectionViewDiffableDataSource.loggingPrefix.getter();
  v20 = v19;

  v34 = v18;
  v35 = v20;
  MEMORY[0x223D42AA0](0xD000000000000015, 0x800000021DC6A5D0);
  v26 = v5;
  v27 = v14;
  v28 = v23;
  v29 = v24;
  v30 = v25;
  sub_21DBFAE9C();
  sub_21DBF626C();

  (*(v11 + 8))(v14, v10);
  return __swift_destroy_boxed_opaque_existential_0(v36);
}

uint64_t sub_21D76F5C8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v106 = a2;
  v107 = a3;
  v105 = a1;
  v82 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v5 = swift_getAssociatedTypeWitness();
  v96 = sub_21DBFBA8C();
  v85 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v95 = &v72 - v6;
  v84 = *(v5 - 8);
  MEMORY[0x28223BE20](v7);
  v94 = &v72 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v119 = v5;
  v120 = v5;
  v121 = AssociatedConformanceWitness;
  v122 = AssociatedConformanceWitness;
  v9 = sub_21DBF8B0C();
  v109 = v9;
  v10 = sub_21DBFBA8C();
  MEMORY[0x28223BE20](v10 - 8);
  v81 = &v72 - v11;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = sub_21DBFBA8C();
  MEMORY[0x28223BE20](v12 - 8);
  v123 = &v72 - v13;
  v80 = *(v9 - 8);
  MEMORY[0x28223BE20](v14);
  v108 = &v72 - v15;
  v104 = sub_21DBFBA8C();
  v16 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v18 = &v72 - v17;
  v19 = sub_21DBF849C();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBFB2EC();
  v76 = objc_opt_self();
  v23 = [v76 ppt];
  sub_21DBF848C();
  sub_21DBF847C();

  v24 = *(v20 + 8);
  v77 = v22;
  v25 = v22;
  v26 = TupleTypeMetadata2;
  v79 = v19;
  v78 = v20 + 8;
  v75 = v24;
  v24(v25, v19);
  v27 = v105[3];
  v28 = v105[4];
  __swift_project_boxed_opaque_existential_1(v105, v27);
  v29 = *(AssociatedTypeWitness - 8);
  v30 = *(v29 + 56);
  v103 = v29 + 56;
  v91 = v30;
  v30(v18, 1, 1, AssociatedTypeWitness);
  v31 = TTRTreeContentsQueryable.children(of:)(v18, v27, v28);
  v32 = *(v16 + 8);
  v92 = v18;
  v93 = v16 + 8;
  v90 = v32;
  v32(v18, v104);
  v119 = v31;
  v111 = v106;
  v112 = v107;
  v97 = AssociatedTypeWitness;
  v33 = sub_21DBFA74C();
  WitnessTable = swift_getWitnessTable(MEMORY[0x277D83988], v33);
  v35 = v102;
  v37 = sub_21D0E5014(sub_21D108EE0, v110, v33, v5, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v36);
  v74 = v35;
  sub_21DBF8AFC();
  sub_21DBF8A6C();
  v119 = v31;
  *&v113 = v37;
  v38 = sub_21DBFA74C();
  v39 = MEMORY[0x277D83970];
  v40 = swift_getWitnessTable(MEMORY[0x277D83970], v33);
  v41 = swift_getWitnessTable(v39, v38);
  sub_21DBFC6EC();

  v113 = v116;
  v102 = v33;
  v119 = v33;
  v120 = v38;
  v101 = v38;
  v100 = v40;
  v121 = v40;
  v122 = v41;
  v99 = v41;
  sub_21DBFBF5C();
  sub_21DBFBF2C();
  v98 = v26 - 8;
  v89 = (v84 + 4);
  v88 = (v103 - 24);
  v87 = (v84 + 2);
  v86 = (v84 + 7);
  ++v85;
  for (++v84; ; (*v84)(v62, v5))
  {
    *&v116 = v102;
    *(&v116 + 1) = v101;
    v117 = v100;
    v118 = v99;
    sub_21DBFBF4C();
    v42 = v123;
    sub_21DBFBF3C();
    if ((*(*(v26 - 8) + 48))(v42, 1, v26) == 1)
    {
      break;
    }

    v43 = v123;
    v44 = &v123[*(v26 + 48)];
    v45 = v26;
    v46 = v94;
    (*v89)(v94, v44, v5);
    v47 = v105[3];
    v48 = v105[4];
    __swift_project_boxed_opaque_existential_1(v105, v47);
    v49 = v92;
    v50 = v97;
    (*v88)(v92, v43, v97);
    v91(v49, 0, 1, v50);
    v51 = TTRTreeContentsQueryable.childrenCollection(of:)(v49, v47, v48);
    v53 = v52;
    v55 = v54;
    v57 = v56;
    v90(v49, v104);
    *&v113 = v51;
    *(&v113 + 1) = v53;
    v114 = v55;
    v115 = v57;
    v58 = swift_allocObject();
    v59 = v107;
    *(v58 + 16) = v106;
    *(v58 + 24) = v59;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5A050, &qword_21DC10D10);
    sub_21D0E8418(qword_27CE5C010, MEMORY[0x277D83D28]);
    sub_21DBFC0EC();
    sub_21D0E8418(&qword_280D17898, MEMORY[0x277D83D48]);
    sub_21DBFC0FC();

    v60 = sub_21DBFC0EC();

    swift_getWitnessTable(MEMORY[0x277D842F0], v60);
    sub_21DBFA76C();
    v61 = v95;
    (*v87)(v95, v46, v5);
    (*v86)(v61, 0, 1, v5);
    sub_21DBF8A2C();

    (*v85)(v61, v96);
    v62 = v46;
    v26 = v45;
  }

  v63 = v80;
  v64 = v81;
  v66 = v108;
  v65 = v109;
  (*(v80 + 16))(v81, v108, v109);
  (*(v63 + 56))(v64, 0, 1, v65);
  v67 = AssociatedConformanceWitness;
  v68 = sub_21D0E5434(v5, v5, AssociatedConformanceWitness, AssociatedConformanceWitness);
  UICollectionViewDiffableDataSource.CombinedSnapshots.init(main:sections:)(v64, v68, v5, v5, v67, v67, v82);
  (*(v63 + 8))(v66, v65);
  sub_21DBFB2DC();
  v69 = [v76 ppt];
  v70 = v77;
  sub_21DBF848C();
  sub_21DBF847C();

  return v75(v70, v79);
}

uint64_t sub_21D77020C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4 = *(AssociatedConformanceWitness + 24);
  v5 = swift_checkMetadataState();
  return v4(v5, AssociatedConformanceWitness);
}

void sub_21D7702C4(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v66 = a4;
  v65 = a3;
  v64 = a2;
  v79 = a1;
  v63[1] = swift_getObjectType();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = sub_21DBF8D0C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v68 = v63 - v9;
  v10 = *(v7 - 8);
  MEMORY[0x28223BE20](v11);
  v83 = v63 - v12;
  v81 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v13);
  v76 = v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v63 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = v63 - v19;
  MEMORY[0x28223BE20](v21);
  v75 = v63 - v22;
  v63[0] = v23;
  MEMORY[0x28223BE20](v24);
  v74 = v63 - v25;
  v88 = AssociatedTypeWitness;
  v89 = AssociatedTypeWitness;
  v90 = AssociatedConformanceWitness;
  v91 = AssociatedConformanceWitness;
  v78 = AssociatedConformanceWitness;
  v26 = sub_21DBF8B0C();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = v63 - v28;
  v69 = TupleTypeMetadata2;
  v30 = v20;
  v87 = sub_21DBF9E3C();
  v72 = v4;
  sub_21DBF8C2C();
  v31 = sub_21DBF8AEC();
  v32 = v29;
  v33 = v7;
  (*(v27 + 8))(v32, v26);
  if (!sub_21DBFA6DC())
  {
LABEL_31:

    v88 = 0;
    v89 = 0xE000000000000000;
    sub_21DBFBEEC();
    v58 = static UICollectionViewDiffableDataSource.loggingPrefix.getter();
    v60 = v59;

    v88 = v58;
    v89 = v60;
    v61 = MEMORY[0x223D42AA0](0xD000000000000019, 0x800000021DC6A590);
    MEMORY[0x28223BE20](v61);
    v63[-6] = &v87;
    v63[-5] = v72;
    LOBYTE(v63[-4]) = v64 & 1;
    v62 = v66;
    v63[-3] = v65;
    v63[-2] = v62;
    sub_21DBFAE9C();
    sub_21DBF626C();

    return;
  }

  v34 = 0;
  v84 = (v81 + 16);
  v80 = (v81 + 32);
  v35 = (v81 + 8);
  v67 = (v10 + 16);
  v70 = (v10 + 8);
  v77 = v30;
  v82 = v33;
  v71 = v31;
  while (1)
  {
    v42 = sub_21DBFA6AC();
    sub_21DBFA61C();
    if (v42)
    {
      v43 = v31 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v34;
      v44 = *(v81 + 16);
      v44(v74, v43, AssociatedTypeWitness);
    }

    else
    {
      v57 = sub_21DBFBF7C();
      if (v63[0] != 8)
      {
        goto LABEL_35;
      }

      v88 = v57;
      v44 = *v84;
      (*v84)(v74, &v88, AssociatedTypeWitness);
      swift_unknownObjectRelease();
    }

    v45 = __OFADD__(v34, 1);
    v46 = v34 + 1;
    if (v45)
    {
      break;
    }

    v73 = v46;
    v47 = *v80;
    (*v80)(v75, v74, AssociatedTypeWitness);
    sub_21DBF8C1C();
    v88 = sub_21DBF9E3C();
    v86 = sub_21DBF9E3C();
    v48 = sub_21DBF8C8C();
    if (sub_21DBFA6DC())
    {
      v49 = 0;
      do
      {
        v50 = sub_21DBFA6AC();
        sub_21DBFA61C();
        if (v50)
        {
          v44(v30, (v48 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v49), AssociatedTypeWitness);
          v51 = v49 + 1;
          if (__OFADD__(v49, 1))
          {
            goto LABEL_32;
          }
        }

        else
        {
          v54 = sub_21DBFBF7C();
          if (v63[0] != 8)
          {
            goto LABEL_34;
          }

          v85 = v54;
          v44(v30, &v85, AssociatedTypeWitness);
          swift_unknownObjectRelease();
          v51 = v49 + 1;
          if (__OFADD__(v49, 1))
          {
LABEL_32:
            __break(1u);
            goto LABEL_33;
          }
        }

        v47(v17, v30, AssociatedTypeWitness);
        v52 = sub_21DBF8C4C();
        v53 = sub_21DBFAB6C();
        if (v52)
        {
          if ((v53 & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        else if (v53)
        {
          goto LABEL_12;
        }

        v44(v76, v17, AssociatedTypeWitness);
        sub_21DBFA74C();
        sub_21DBFA6FC();
        v30 = v77;
LABEL_12:
        (*v35)(v17, AssociatedTypeWitness);
        ++v49;
      }

      while (v51 != sub_21DBFA6DC());
    }

    v85 = v88;
    v55 = sub_21DBFA74C();
    swift_getWitnessTable(MEMORY[0x277D83988], v55);
    v56 = sub_21DBFACFC();
    if ((v56 & 1) == 0)
    {
      sub_21DBF8CCC();
    }

    v85 = v86;
    if (sub_21DBFACFC())
    {

      v38 = v82;
      v37 = v83;
      if (v56)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v36 = v82;
      v37 = v83;
      sub_21DBF8CAC();
      v38 = v36;
      v30 = v77;
    }

    v39 = *(v69 + 48);
    v40 = v68;
    v44(v68, v75, AssociatedTypeWitness);
    (*v67)(&v40[v39], v37, v38);
    sub_21DBFA74C();
    sub_21DBFA6FC();
LABEL_5:
    (*v70)(v37, v38);
    (*v35)(v75, AssociatedTypeWitness);
    v31 = v71;
    v41 = sub_21DBFA6DC();
    v34 = v73;
    if (v73 == v41)
    {
      goto LABEL_31;
    }
  }

LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
}

void sub_21D770C68(uint64_t *a1, void *a2, int a3, uint64_t a4, uint64_t a5)
{
  v40 = a5;
  v46 = a4;
  v45 = a3;
  v44 = a2;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v7 = sub_21DBF8D0C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v41 = &v34 - v9;
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v11);
  v39 = &v34 - v12;
  v42 = v13;
  v43 = AssociatedTypeWitness;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v48 = sub_21DBFBA8C();
  MEMORY[0x28223BE20](v48);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v49 = &v34 - v18;
  v50 = TupleTypeMetadata2 - 8;
  v47 = (v19 + 32);
  v20 = *a1;
  v37 = (v8 + 32);
  v38 = (v10 + 32);
  v35 = (v10 + 8);
  v36 = (v8 + 8);
  sub_21DBF8E0C();
  v21 = 0;
  v22 = v41;
  while (1)
  {
    if (v21 == sub_21DBFA6DC())
    {
      v23 = *(TupleTypeMetadata2 - 8);
      (*(v23 + 56))(v16, 1, 1, TupleTypeMetadata2);
      v24 = v49;
      goto LABEL_7;
    }

    v25 = sub_21DBFA6AC();
    sub_21DBFA61C();
    v24 = v49;
    if ((v25 & 1) == 0)
    {
      break;
    }

    v26 = *(TupleTypeMetadata2 - 8);
    (*(v26 + 16))(v16, v20 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v21, TupleTypeMetadata2);
    v27 = __OFADD__(v21++, 1);
    if (v27)
    {
      goto LABEL_12;
    }

LABEL_6:
    v23 = v26;
    (*(v26 + 56))(v16, 0, 1, TupleTypeMetadata2);
LABEL_7:
    (*v47)(v24, v16, v48);
    if ((*(v23 + 48))(v24, 1, TupleTypeMetadata2) == 1)
    {
      goto LABEL_13;
    }

    v28 = *(TupleTypeMetadata2 + 48);
    v29 = v39;
    v30 = v43;
    (*v38)(v39, v24, v43);
    v31 = &v24[v28];
    v32 = v42;
    (*v37)(v22, v31, v42);
    sub_21DBF8C0C();
    (*v36)(v22, v32);
    (*v35)(v29, v30);
  }

  v33 = sub_21DBFBF7C();
  v26 = *(TupleTypeMetadata2 - 8);
  if (*(v26 + 64) == 8)
  {
    v51 = v33;
    (*(v26 + 16))(v16, &v51, TupleTypeMetadata2);
    swift_unknownObjectRelease();
    v27 = __OFADD__(v21++, 1);
    if (v27)
    {
LABEL_12:
      __break(1u);
LABEL_13:

      return;
    }

    goto LABEL_6;
  }

  __break(1u);
}

void sub_21D771278()
{
  v1 = MEMORY[0x277D85000];
  v2 = *((*MEMORY[0x277D85000] & *v0) + class metadata base offset for TTRICollectionViewTreeBackedDiffableDataSource + 16);
  v3 = sub_21DBFBA8C();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *&v0[*((*v1 & *v0) + class metadata base offset for TTRICollectionViewTreeBackedDiffableDataSource + 40)];
}

id TTRICollectionViewTreeBackedDiffableDataSource.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for TTRICollectionViewTreeBackedDiffableDataSource(0, *((*MEMORY[0x277D85000] & *v4) + class metadata base offset for TTRICollectionViewTreeBackedDiffableDataSource), *((*MEMORY[0x277D85000] & *v4) + class metadata base offset for TTRICollectionViewTreeBackedDiffableDataSource + 8), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

void sub_21D7713E4(char *a1)
{
  v2 = MEMORY[0x277D85000];
  v3 = *((*MEMORY[0x277D85000] & *a1) + class metadata base offset for TTRICollectionViewTreeBackedDiffableDataSource + 16);
  v4 = sub_21DBFBA8C();
  (*(*(v4 - 8) + 8))(&a1[v3], v4);
  v5 = *&a1[*((*v2 & *a1) + class metadata base offset for TTRICollectionViewTreeBackedDiffableDataSource + 40)];
}

uint64_t TTRICollectionViewTreeBackedDiffableDataSource.itemIDs<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  return sub_21DBFA4EC();
}

uint64_t TTRICollectionViewTreeBackedDiffableDataSource.items<A>(withIDs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21D10AFA8(a1, &v6);
  if (v7)
  {
    v3 = sub_21D0D0FD0(&v6, v8);
    MEMORY[0x28223BE20](v3);
    swift_getAssociatedTypeWitness();
    v4 = sub_21DBFA4EC();
    __swift_destroy_boxed_opaque_existential_0(v8);
    return v4;
  }

  else
  {
    swift_getAssociatedTypeWitness();
    return sub_21DBFA68C();
  }
}

uint64_t sub_21D7717A8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2[3];
  v7 = a2[4];
  v8 = __swift_project_boxed_opaque_existential_1(a2, v6);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return item_rdar101056925<A, B>(in:withID:)(v8, a1, AssociatedTypeWitness, v6, v7);
}

uint64_t TTRICollectionViewTreeBackedDiffableDataSource.item(for:)@<X0>(uint64_t a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = sub_21DBFBA8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - v6;
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v14 - v10;
  sub_21DBF8BEC();
  if ((*(v8 + 48))(v7, 1, AssociatedTypeWitness) == 1)
  {
    (*(v5 + 8))(v7, v4);
    v12 = swift_checkMetadataState();
    return (*(*(v12 - 8) + 56))(a2, 1, 1, v12);
  }

  else
  {
    (*(v8 + 32))(v11, v7, AssociatedTypeWitness);
    TTRICollectionViewTreeBackedDiffableDataSource.item(withID:)(v11, a2);
    return (*(v8 + 8))(v11, AssociatedTypeWitness);
  }
}

uint64_t sub_21D771AF0@<X0>(uint64_t a3@<X8>)
{
  v15 = a3;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = sub_21DBFBA8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - v6;
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v14 - v10;
  sub_21DBF8BEC();
  if ((*(v8 + 48))(v7, 1, AssociatedTypeWitness) == 1)
  {
    (*(v5 + 8))(v7, v4);
    v12 = swift_checkMetadataState();
    return (*(*(v12 - 8) + 56))(v15, 1, 1, v12);
  }

  else
  {
    (*(v8 + 32))(v11, v7, AssociatedTypeWitness);
    TTRICollectionViewTreeBackedDiffableDataSource.item(withID:)(v11, v15);
    return (*(v8 + 8))(v11, AssociatedTypeWitness);
  }
}

uint64_t TTRICollectionViewTreeBackedDiffableDataSource.childItemIDs(ofParentID:)(uint64_t a1)
{
  v36 = a1;
  v2 = *MEMORY[0x277D85000] & *v1;
  v4 = *(v2 + class metadata base offset for TTRICollectionViewTreeBackedDiffableDataSource);
  v3 = *(v2 + class metadata base offset for TTRICollectionViewTreeBackedDiffableDataSource + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_21DBFBA8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v35 - v11;
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v35 - v15;
  sub_21D10AFA8(v17, &v38);
  if (!v40)
  {
    goto LABEL_4;
  }

  sub_21D0D0FD0(&v38, v41);
  TTRICollectionViewTreeBackedDiffableDataSource.item(withID:)(v36, v12);
  if ((*(v13 + 48))(v12, 1, AssociatedTypeWitness) == 1)
  {
    (*(v7 + 8))(v12, v6);
    __swift_destroy_boxed_opaque_existential_0(v41);
LABEL_4:
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    return sub_21DBFA68C();
  }

  v19 = *(v13 + 32);
  v35 = v16;
  v19(v16, v12, AssociatedTypeWitness);
  v20 = v42;
  v36 = v43;
  __swift_project_boxed_opaque_existential_1(v41, v42);
  (*(v13 + 16))(v9, v16, AssociatedTypeWitness);
  (*(v13 + 56))(v9, 0, 1, AssociatedTypeWitness);
  v21 = TTRTreeContentsQueryable.childrenCollection(of:)(v9, v20, v36);
  v36 = v3;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = (*(v7 + 8))(v9, v6);
  *&v38 = v21;
  *(&v38 + 1) = v23;
  v39 = v25;
  v40 = v27;
  MEMORY[0x28223BE20](v28);
  v29 = v36;
  *(&v35 - 2) = v4;
  *(&v35 - 1) = v29;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5A050, &qword_21DC10D10);
  sub_21D0E8418(qword_27CE5C010, MEMORY[0x277D83D28]);
  v30 = sub_21DBFC0EC();
  swift_getAssociatedConformanceWitness();
  v31 = swift_getAssociatedTypeWitness();
  v37 = sub_21D0E8418(&qword_280D17898, MEMORY[0x277D83D48]);
  WitnessTable = swift_getWitnessTable(MEMORY[0x277D84300], v30, &v37);
  v34 = sub_21D0E5014(sub_21D108EC8, (&v35 - 4), v30, v31, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v33);

  (*(v13 + 8))(v35, AssociatedTypeWitness);
  __swift_destroy_boxed_opaque_existential_0(v41);
  return v34;
}

uint64_t TTRICollectionViewTreeBackedDiffableDataSource.indexPaths(forItemID:includingChildren:)(uint64_t a1, char a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_21D23CE60(AssociatedTypeWitness, AssociatedTypeWitness);
  v5 = *(AssociatedTypeWitness - 8);
  swift_allocObject();
  v6 = sub_21DBFA60C();
  (*(v5 + 16))(v7, a1, AssociatedTypeWitness);
  sub_21D23C8B4(v6, AssociatedTypeWitness);
  v14 = v8;
  if (a2)
  {
    TTRICollectionViewTreeBackedDiffableDataSource.childItemIDs(ofParentID:)(a1);
    sub_21DBFA6BC();

    v8 = v14;
  }

  v13 = v8;
  v9 = sub_21DBFA74C();
  WitnessTable = swift_getWitnessTable(MEMORY[0x277D83970], v9, v13);
  v11 = TTRICollectionViewTreeBackedDiffableDataSource.indexPaths<A>(forItemWithIDs:)(&v13, v9, WitnessTable);

  return v11;
}

uint64_t TTRICollectionViewTreeBackedDiffableDataSource.targetParentAndUnadjustedIndex(for:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v37 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = sub_21DBFBA8C();
  v32 = *(v4 - 8);
  v33 = v4;
  MEMORY[0x28223BE20](v4);
  v35 = &v29 - v5;
  v36 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v6);
  v31 = &v29 - v7;
  swift_getAssociatedConformanceWitness();
  v8 = swift_getAssociatedTypeWitness();
  v9 = sub_21DBFBA8C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - v11;
  v13 = *(v8 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v29 - v15;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v38[0] = v8;
  v38[1] = v8;
  v38[2] = AssociatedConformanceWitness;
  v38[3] = AssociatedConformanceWitness;
  v30 = type metadata accessor for TTRNormalizedItemLocationForInsertAt(0, v38);
  (*(v10 + 16))(v12, a1 + *(v30 + 52), v9);
  v18 = *(v13 + 48);
  v19 = v18(v12, 1, v8);
  v34 = a1;
  if (v19 == 1)
  {
    (*(v13 + 16))(v16, a1, v8);
    if (v18(v12, 1, v8) != 1)
    {
      (*(v10 + 8))(v12, v9);
    }
  }

  else
  {
    (*(v13 + 32))(v16, v12, v8);
  }

  v20 = v35;
  TTRICollectionViewTreeBackedDiffableDataSource.item(withID:)(v16, v35);
  (*(v13 + 8))(v16, v8);
  v21 = v36;
  if ((*(v36 + 48))(v20, 1, AssociatedTypeWitness) == 1)
  {
    (*(v32 + 8))(v20, v33);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    return (*(*(TupleTypeMetadata2 - 8) + 56))(v37, 1, 1, TupleTypeMetadata2);
  }

  else
  {
    v24 = *(v21 + 32);
    v25 = v31;
    v24(v31, v20, AssociatedTypeWitness);
    v26 = swift_getTupleTypeMetadata2();
    v27 = *(v26 + 48);
    v28 = v37;
    v24(v37, v25, AssociatedTypeWitness);
    *&v28[v27] = *(v34 + *(v30 + 56));
    return (*(*(v26 - 8) + 56))(v28, 0, 1, v26);
  }
}

uint64_t TTRICollectionViewTreeBackedDiffableDataSource.targetParent(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6[0] = swift_getAssociatedTypeWitness();
  v6[1] = v6[0];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = AssociatedConformanceWitness;
  v4 = type metadata accessor for TTRNormalizedItemLocation(0, v6);
  return TTRICollectionViewTreeBackedDiffableDataSource.item(withID:)(a1 + *(v4 + 60), a2);
}

char *TTRICollectionViewTreeBackedDiffableDataSource.indexPath(forInsertingAt:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v74 = a2;
  v75 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70, &unk_21DC0A930);
  MEMORY[0x28223BE20](v2 - 8);
  v69 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v68 = &v62 - v5;
  v6 = sub_21DBF5D5C();
  v71 = *(v6 - 8);
  v72 = v6;
  MEMORY[0x28223BE20](v6);
  v66 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v65 = &v62 - v9;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_21DBFBA8C();
  v63 = *(v11 - 8);
  v64 = v11;
  MEMORY[0x28223BE20](v11);
  v67 = (&v62 - v12);
  v73 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v62 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v62 - v20;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v76[0] = AssociatedTypeWitness;
  v76[1] = AssociatedTypeWitness;
  v76[2] = AssociatedConformanceWitness;
  v76[3] = AssociatedConformanceWitness;
  v23 = sub_21DBF8B0C();
  v70 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v25 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v62 - v27;
  v31 = type metadata accessor for TTRRelativeInsertionPosition(0, AssociatedTypeWitness, v29, v30);
  v32 = MEMORY[0x28223BE20](v31);
  v34 = &v62 - v33;
  (*(v35 + 16))(&v62 - v33, v75, v31, v32);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_21DBF8C2C();
      if (sub_21DBF8ABC() >= 1)
      {
        v42 = v74;
        MEMORY[0x223D3E490](0, 0);
        (*(v70 + 8))(v28, v23);
        goto LABEL_23;
      }

      v57 = *(v70 + 8);
      v58 = v28;
    }

    else
    {
      sub_21DBF8C2C();
      result = sub_21DBF8ABC();
      v48 = result - 1;
      if (__OFSUB__(result, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if ((v48 & 0x8000000000000000) == 0)
      {
        v49 = v67;
        v50 = NSDiffableDataSourceSnapshot.sectionIdentifier(at:)(v23, v67);
        v51 = v73;
        if ((*(v73 + 48))(v49, 1, AssociatedTypeWitness, v50) == 1)
        {
          (*(v70 + 8))(v25, v23);
          (*(v63 + 8))(v49, v64);
          goto LABEL_21;
        }

        (*(v51 + 32))(v21, v49, AssociatedTypeWitness);
        v60 = sub_21DBF8A5C();
        v42 = v74;
        MEMORY[0x223D3E490](v60, v48);
        (*(v51 + 8))(v21, AssociatedTypeWitness);
        (*(v70 + 8))(v25, v23);
        goto LABEL_23;
      }

      v57 = *(v70 + 8);
      v58 = v25;
    }

    v57(v58, v23);
    goto LABEL_21;
  }

  if (!EnumCaseMultiPayload)
  {
    v37 = v73;
    (*(v73 + 32))(v18, v34, AssociatedTypeWitness);
    v38 = v68;
    sub_21DBF8C3C();
    (*(v37 + 8))(v18, AssociatedTypeWitness);
    v40 = v71;
    v39 = v72;
    if ((*(v71 + 48))(v38, 1, v72) == 1)
    {
      v41 = v38;
LABEL_10:
      sub_21D31DD48(v41);
LABEL_21:
      v59 = 1;
      v42 = v74;
LABEL_24:
      v61 = type metadata accessor for TTRUnadjustedIndexPath(0);
      return (*(*(v61 - 8) + 56))(v42, v59, 1, v61);
    }

    v52 = *(v40 + 32);
    v53 = v65;
    v52(v65, v38, v39);
    v42 = v74;
    v52(v74, v53, v39);
LABEL_23:
    v59 = 0;
    goto LABEL_24;
  }

  v43 = v73;
  (*(v73 + 32))(v15, v34, AssociatedTypeWitness);
  v44 = v69;
  sub_21DBF8C3C();
  v46 = v71;
  v45 = v72;
  if ((*(v71 + 48))(v44, 1, v72) == 1)
  {
    (*(v43 + 8))(v15, AssociatedTypeWitness);
    v41 = v44;
    goto LABEL_10;
  }

  v54 = *(v46 + 32);
  v55 = v66;
  v54(v66, v44, v45);
  result = sub_21DBF5CEC();
  if (!__OFADD__(*v56, 1))
  {
    ++*v56;
    (result)(v76, 0);
    (*(v43 + 8))(v15, AssociatedTypeWitness);
    v42 = v74;
    v54(v74, v55, v45);
    goto LABEL_23;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t TTRICollectionViewTreeBackedDiffableDataSource.itemLocation(for:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *MEMORY[0x277D85000] & *v2;
  v5[2] = *(v3 + class metadata base offset for TTRICollectionViewTreeBackedDiffableDataSource);
  v5[3] = *(v3 + class metadata base offset for TTRICollectionViewTreeBackedDiffableDataSource + 8);
  return sub_21D773428(a1, sub_21D19DA18, v5, a2);
}

uint64_t sub_21D773428@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v99 = a3;
  v100 = a2;
  v102 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = swift_getAssociatedTypeWitness();
  v8 = sub_21DBFBA8C();
  MEMORY[0x28223BE20](v8 - 8);
  v82 = &v78 - v9;
  v83 = *(v7 - 8);
  MEMORY[0x28223BE20](v10);
  v81 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v90 = &v78 - v13;
  MEMORY[0x28223BE20](v14);
  v80 = &v78 - v15;
  MEMORY[0x28223BE20](v16);
  v92 = &v78 - v17;
  v18 = sub_21DBFBA8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v87 = sub_21DBFBA8C();
  v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v94 = &v78 - v19;
  v85 = swift_getTupleTypeMetadata2();
  MEMORY[0x28223BE20](v85);
  v84 = &v78 - v20;
  v21 = *(v18 - 8);
  MEMORY[0x28223BE20](v22);
  v88 = &v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v91 = &v78 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v78 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v78 - v30;
  v32 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v33);
  v89 = &v78 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v96 = &v78 - v36;
  MEMORY[0x28223BE20](v37);
  v101 = &v78 - v38;
  sub_21D10AFA8(v39, &v103);
  if (!v105)
  {
    goto LABEL_10;
  }

  v93 = v21;
  v97 = AssociatedConformanceWitness;
  v98 = a4;
  sub_21D0D0FD0(&v103, v106);
  v40 = v107;
  v41 = v108;
  v42 = __swift_project_boxed_opaque_existential_1(v106, v107);
  item_rdar101056925<A, B>(in:withID:)(v42, v102, AssociatedTypeWitness, v40, v41);
  v43 = *(v32 + 48);
  if (v43(v31, 1, AssociatedTypeWitness) == 1)
  {
    (*(v93 + 8))(v31, v18);
    goto LABEL_9;
  }

  v44 = v101;
  v79 = *(v32 + 32);
  v79();
  if (((v100)(v44) & 1) == 0)
  {
    (*(v32 + 8))(v44, AssociatedTypeWitness);
    goto LABEL_9;
  }

  v99 = v32 + 32;
  v100 = v32;
  v45 = v107;
  v46 = v108;
  __swift_project_boxed_opaque_existential_1(v106, v107);
  TTRTreeContentsQueryable.topLevelItem(containing:)(v44, v45, v46, v28);
  if (v43(v28, 1, AssociatedTypeWitness) == 1)
  {
    (*(v100 + 8))(v44, AssociatedTypeWitness);
    (*(v93 + 8))(v28, v18);
LABEL_9:
    __swift_destroy_boxed_opaque_existential_0(v106);
    a4 = v98;
LABEL_10:
    v47 = swift_getAssociatedConformanceWitness();
    v106[0] = v7;
    v106[1] = v7;
    v106[2] = v47;
    v107 = v47;
    v48 = type metadata accessor for TTRNormalizedItemLocation(0, v106);
    return (*(*(v48 - 8) + 56))(a4, 1, 1, v48);
  }

  v50 = v96;
  (v79)(v96, v28, AssociatedTypeWitness);
  v51 = v107;
  v52 = v108;
  __swift_project_boxed_opaque_existential_1(v106, v107);
  v53 = v94;
  TTRTreeContentsQueryable.parentAndChildIndex(for:)(v44, v51, v52, v94);
  v54 = v53;
  v55 = TupleTypeMetadata2;
  if ((*(*(TupleTypeMetadata2 - 8) + 48))(v54, 1, TupleTypeMetadata2) == 1)
  {
    (*(v86 + 8))(v54, v87);
    v56 = *(v100 + 8);
    v56(v50, AssociatedTypeWitness);
    v56(v44, AssociatedTypeWitness);
    goto LABEL_9;
  }

  TupleTypeMetadata2 = *(v54 + *(v55 + 48));
  v57 = v85;
  v87 = *(v85 + 48);
  v58 = v54;
  v59 = v93;
  v60 = *(v93 + 32);
  v61 = v84;
  v60(v84, v58, v18);
  *&v61[v87] = TupleTypeMetadata2;
  TupleTypeMetadata2 = *&v61[*(v57 + 48)];
  v62 = v91;
  v60(v91, v61, v18);
  v63 = v88;
  (*(v59 + 16))(v88, v62, v18);
  if (v43(v63, 1, AssociatedTypeWitness) == 1)
  {
    v64 = *(v59 + 8);
    v64(v62, v18);
    v65 = *(v100 + 8);
    v65(v96, AssociatedTypeWitness);
    v65(v101, AssociatedTypeWitness);
    v64(v63, v18);
    goto LABEL_9;
  }

  (v79)(v89, v63, AssociatedTypeWitness);
  v66 = v97;
  v67 = *(v97 + 24);
  v67(AssociatedTypeWitness, v97);
  v68 = v80;
  v67(AssociatedTypeWitness, v66);
  v67(AssociatedTypeWitness, v66);
  v69 = v68;
  v70 = swift_getAssociatedConformanceWitness();
  if (sub_21DBFA10C())
  {
    v71 = v83;
    v72 = v82;
    (*(v83 + 56))(v82, 1, 1, v7);
    v73 = *(v71 + 16);
  }

  else
  {
    v71 = v83;
    v73 = *(v83 + 16);
    v72 = v82;
    v73(v82, v69, v7);
    (*(v71 + 56))(v72, 0, 1, v7);
  }

  v74 = v81;
  v73(v81, v102, v7);
  TTRNormalizedItemLocation.init(sectionID:parentItemID:childIndex:itemID:)(v90, v72, TupleTypeMetadata2, v74, v7, v7, v70, v70, v98);
  v75 = *(v71 + 8);
  v75(v69, v7);
  v75(v92, v7);
  v76 = *(v100 + 8);
  v76(v89, AssociatedTypeWitness);
  (*(v93 + 8))(v91, v18);
  v76(v96, AssociatedTypeWitness);
  v76(v101, AssociatedTypeWitness);
  *&v103 = v7;
  *(&v103 + 1) = v7;
  v104 = v70;
  v105 = v70;
  v77 = type metadata accessor for TTRNormalizedItemLocation(0, &v103);
  (*(*(v77 - 8) + 56))(v98, 0, 1, v77);
  return __swift_destroy_boxed_opaque_existential_0(v106);
}

uint64_t TTRICollectionViewTreeBackedDiffableDataSource.itemLocation(forItemAt:localItemIDsToBeMoved:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a2;
  v25 = a1;
  v26 = a3;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_21DBFBA8C();
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = (&v21 - v6);
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v21 - v10;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v27 = AssociatedTypeWitness;
  v28 = AssociatedTypeWitness;
  v29 = AssociatedConformanceWitness;
  v30 = AssociatedConformanceWitness;
  v13 = sub_21DBF8B0C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v21 - v15;
  sub_21DBF8C2C();
  NSDiffableDataSourceSnapshot.itemIdentifier(at:)(v13, v7);
  if ((*(v8 + 48))(v7, 1, AssociatedTypeWitness) == 1)
  {
    (*(v14 + 8))(v16, v13);
    (*(v22 + 8))(v7, v23);
    v27 = AssociatedTypeWitness;
    v28 = AssociatedTypeWitness;
    v29 = AssociatedConformanceWitness;
    v30 = AssociatedConformanceWitness;
    v17 = type metadata accessor for TTRNormalizedItemLocation(0, &v27);
    return (*(*(v17 - 8) + 56))(v26, 1, 1, v17);
  }

  else
  {
    v19 = (*(v8 + 32))(v11, v7, AssociatedTypeWitness);
    MEMORY[0x28223BE20](v19);
    v20 = v24;
    *(&v21 - 2) = v3;
    *(&v21 - 1) = v20;
    sub_21D773428(v11, sub_21D77990C, (&v21 - 4), v26);
    (*(v8 + 8))(v11, AssociatedTypeWitness);
    return (*(v14 + 8))(v16, v13);
  }
}

uint64_t sub_21D7743B4(uint64_t a1, void *a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_21DBFBA8C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  v11 = *(AssociatedTypeWitness - 8);
  (*(v11 + 16))(&v13 - v9, a1, AssociatedTypeWitness, v8);
  (*(v11 + 56))(v10, 0, 1, AssociatedTypeWitness);
  LOBYTE(a3) = sub_21D774564(v10, a3);
  (*(v7 + 8))(v10, v6);
  return a3 & 1;
}

uint64_t sub_21D774564(uint64_t a1, uint64_t a2)
{
  v48 = a1;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v52 = &v38 - v5;
  v6 = swift_checkMetadataState();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v38 - v8;
  v54 = sub_21DBFBA8C();
  v10 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v51 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v38 - v13;
  MEMORY[0x28223BE20](v15);
  v53 = &v38 - v16;
  sub_21D10AFA8(v17, &v55);
  if (v56)
  {
    sub_21D0D0FD0(&v55, v57);
    v50 = swift_getAssociatedConformanceWitness();
    if (sub_21DBFAB4C())
    {
LABEL_9:
      __swift_destroy_boxed_opaque_existential_0(v57);
      return 1;
    }

    v49 = a2;
    v38 = v10;
    v18 = *(v10 + 16);
    v20 = v53;
    v19 = v54;
    v18(v53, v48, v54);
    v47 = v18;
    v48 = v10 + 16;
    v18(v14, v20, v19);
    v45 = *(v7 + 48);
    v46 = v7 + 48;
    if (v45(v14, 1, v6) == 1)
    {
      v21 = *(v38 + 8);
LABEL_8:
      v36 = v54;
      v21(v53, v54);
      v21(v14, v36);
      goto LABEL_9;
    }

    v23 = *(v7 + 32);
    v22 = v7 + 32;
    v44 = v23;
    v43 = AssociatedConformanceWitness + 24;
    ++v42;
    v40 = (v22 - 24);
    v39 = (v38 + 32);
    v41 = (v38 + 8);
    v38 = (v38 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    while (1)
    {
      v44(v9, v14, v6);
      v24 = v52;
      (*(AssociatedConformanceWitness + 24))(v6, AssociatedConformanceWitness);
      v25 = sub_21DBFAB6C();
      (*v42)(v24, AssociatedTypeWitness);
      if (v25)
      {
        break;
      }

      v26 = v14;
      v27 = v22;
      v28 = AssociatedTypeWitness;
      v29 = AssociatedConformanceWitness;
      v30 = v58;
      v31 = v59;
      __swift_project_boxed_opaque_existential_1(v57, v58);
      v32 = v51;
      v33 = v30;
      AssociatedConformanceWitness = v29;
      AssociatedTypeWitness = v28;
      v22 = v27;
      v14 = v26;
      (*(v31 + 48))(v9, v33, v31);
      (*v40)(v9, v6);
      v21 = *v41;
      v35 = v53;
      v34 = v54;
      (*v41)(v53, v54);
      (*v39)(v35, v32, v34);
      v47(v14, v35, v34);
      if (v45(v14, 1, v6) == 1)
      {
        goto LABEL_8;
      }
    }

    (*v40)(v9, v6);
    (*v41)(v53, v54);
    __swift_destroy_boxed_opaque_existential_0(v57);
  }

  return 0;
}

uint64_t TTRICollectionViewTreeBackedDiffableDataSource.itemLocation(forInsertingAt:localItemIDsToBeMoved:)@<X0>(void (*a1)(char *, char *, uint64_t)@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v107 = a1;
  v108 = a2;
  v112 = a3;
  v5 = *MEMORY[0x277D85000] & *v3;
  v7 = *(v5 + class metadata base offset for TTRICollectionViewTreeBackedDiffableDataSource);
  v6 = *(v5 + class metadata base offset for TTRICollectionViewTreeBackedDiffableDataSource + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = swift_getAssociatedTypeWitness();
  v90 = sub_21DBFBA8C();
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v13 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v91 = &v88 - v15;
  v16 = swift_getAssociatedConformanceWitness();
  v117 = v11;
  v118 = v11;
  v119 = v16;
  v120 = v16;
  v98 = sub_21DBF8B0C();
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v96 = &v88 - v17;
  v103 = sub_21DBFBA8C();
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v104 = &v88 - v18;
  v95 = *(v11 - 8);
  MEMORY[0x28223BE20](v19);
  v99 = &v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v100 = &v88 - v22;
  MEMORY[0x28223BE20](v23);
  v92 = &v88 - v24;
  MEMORY[0x28223BE20](v25);
  v94 = &v88 - v26;
  v113 = AssociatedTypeWitness;
  v93 = AssociatedConformanceWitness;
  v28 = type metadata accessor for TTRTreeLocation(0, AssociatedTypeWitness, AssociatedConformanceWitness, v27);
  v109 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v106 = &v88 - v29;
  v30 = sub_21DBFBA8C();
  v110 = *(v30 - 8);
  v111 = v30;
  MEMORY[0x28223BE20](v30);
  v32 = &v88 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v35 = &v88 - v34;
  sub_21D10AFA8(v36, &v114);
  if (!v116)
  {
    v117 = v11;
    v118 = v11;
    v119 = v16;
    v120 = v16;
    v54 = type metadata accessor for TTRNormalizedItemLocationForInsertAt(0, &v117);
    return (*(*(v54 - 8) + 56))(v112, 1, 1, v54);
  }

  v101 = v11;
  v88 = v13;
  v105 = v16;
  sub_21D0D0FD0(&v114, &v117);
  *&v114 = sub_21D77583C(v107);
  MEMORY[0x28223BE20](v114);
  *(&v88 - 2) = v4;
  type metadata accessor for TTRICollectionViewTreeBackedDiffableDataSource.InferredInsertLocation(255, v7, v9, v37);
  v38 = sub_21DBFA74C();
  swift_getWitnessTable(MEMORY[0x277D83970], v38);
  v39 = sub_21DBFA4EC();

  *&v114 = v39;
  MEMORY[0x28223BE20](v40);
  v41 = v108;
  *(&v88 - 2) = v4;
  *(&v88 - 1) = v41;
  v42 = sub_21DBFA74C();
  swift_getWitnessTable(MEMORY[0x277D83998], v42);
  v43 = sub_21DBFBFDC();
  v44 = (*((*MEMORY[0x277D85000] & *v4) + class metadata base offset for TTRICollectionViewTreeBackedDiffableDataSource + 160))(v43, v41);

  v45 = v120;
  v46 = v121;
  __swift_project_boxed_opaque_existential_1(&v117, v120);
  bestInsertionLocation_rdar101056925<A, B>(in:among:localItemIDsToBeMoved:allowsInsertingAtRootLevel:)(v44, v41, 0, v45, v46, v35);

  v47 = v110;
  v48 = v111;
  (*(v110 + 16))(v32, v35, v111);
  v49 = v109;
  if ((*(v109 + 48))(v32, 1, v28) == 1)
  {
    v50 = *(v47 + 8);
    v50(v35, v48);
    v50(v32, v48);
    v51 = v112;
    v52 = v105;
    v53 = v101;
  }

  else
  {
    v107 = v4;
    v108 = v35;
    v56 = v106;
    (*(v49 + 32))(v106, v32, v28);
    v57 = v102;
    v58 = v104;
    v59 = v103;
    (*(v102 + 16))(v104, v56, v103);
    v60 = *(v113 - 8);
    v61 = (*(v60 + 48))(v58, 1);
    v53 = v101;
    if (v61 != 1)
    {
      v65 = v92;
      v66 = v113;
      (*(v93 + 24))(v113);
      (*(v60 + 8))(v58, v66);
      v67 = v95;
      v68 = *(v95 + 32);
      v69 = v94;
      (v68)(v94, v65, v53);
      v70 = v96;
      sub_21DBF8C2C();
      v71 = v98;
      sub_21DBF8A8C();
      if (v72)
      {
        v73 = v53;
        v74 = v91;
        sub_21DBF8ADC();
        v75 = v74;
        v76 = (*(v67 + 48))(v74, 1, v73);
        v77 = v88;
        if (v76 == 1)
        {
          (*(v97 + 8))(v70, v71);
          (*(v67 + 8))(v69, v73);
          (*(v109 + 8))(v106, v28);
          (*(v110 + 8))(v108, v111);
          (*(v89 + 8))(v75, v90);
          *&v114 = v73;
          *(&v114 + 1) = v73;
          v115 = v105;
          v116 = v105;
          v62 = type metadata accessor for TTRNormalizedItemLocationForInsertAt(0, &v114);
          v63 = *(*(v62 - 8) + 56);
          v64 = v112;
          goto LABEL_8;
        }

        v79 = v100;
        v68();
        v78 = *(v67 + 16);
      }

      else
      {
        v78 = *(v67 + 16);
        v79 = v100;
        v78(v100, v69, v53);
        v73 = v53;
        v77 = v88;
      }

      v78(v99, v79, v73);
      v80 = v71;
      if (sub_21DBFA10C())
      {
        v81 = 1;
      }

      else
      {
        v78(v77, v69, v73);
        v81 = 0;
      }

      (*(v67 + 56))(v77, v81, 1, v73);
      v82 = v106;
      v83 = v112;
      v84 = v77;
      v85 = v105;
      TTRNormalizedItemLocationForInsertAt.init(sectionID:parentItemID:unadjustedChildIndex:)(v99, v84, *&v106[*(v28 + 36)], v73, v73, v105, v105, v112);
      (*(v97 + 8))(v70, v80);
      v86 = *(v67 + 8);
      v86(v100, v73);
      v86(v69, v73);
      (*(v109 + 8))(v82, v28);
      (*(v110 + 8))(v108, v111);
      *&v114 = v73;
      *(&v114 + 1) = v73;
      v115 = v85;
      v116 = v85;
      v87 = type metadata accessor for TTRNormalizedItemLocationForInsertAt(0, &v114);
      (*(*(v87 - 8) + 56))(v83, 0, 1, v87);
      return __swift_destroy_boxed_opaque_existential_0(&v117);
    }

    (*(v57 + 8))(v58, v59);
    (*(v49 + 8))(v56, v28);
    (*(v47 + 8))(v108, v48);
    v51 = v112;
    v52 = v105;
  }

  *&v114 = v53;
  *(&v114 + 1) = v53;
  v115 = v52;
  v116 = v52;
  v62 = type metadata accessor for TTRNormalizedItemLocationForInsertAt(0, &v114);
  v63 = *(*(v62 - 8) + 56);
  v64 = v51;
LABEL_8:
  v63(v64, 1, 1, v62);
  return __swift_destroy_boxed_opaque_existential_0(&v117);
}

uint64_t sub_21D77583C(void (*a1)(char *, char *, uint64_t))
{
  v3 = *MEMORY[0x277D85000] & *v1;
  v5 = *(v3 + class metadata base offset for TTRICollectionViewTreeBackedDiffableDataSource);
  v4 = *(v3 + class metadata base offset for TTRICollectionViewTreeBackedDiffableDataSource + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = sub_21DBF8D0C();
  v210 = *(v8 - 8);
  v211 = v8;
  MEMORY[0x28223BE20](v8);
  v204 = &v178 - v9;
  v199 = v5;
  v209 = v4;
  inserted = type metadata accessor for TTRICollectionViewTreeBackedDiffableDataSource.InferredInsertLocation(0, v5, v4, v10);
  MEMORY[0x28223BE20](inserted);
  v208 = &v178 - v11;
  v12 = sub_21DBFBA8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v185 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v202 = &v178 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v188 = &v178 - v15;
  MEMORY[0x28223BE20](v16);
  v198 = &v178 - v17;
  v205 = v12;
  v186 = *(v12 - 8);
  v207 = v186;
  MEMORY[0x28223BE20](v18);
  v200 = &v178 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v212 = &v178 - v21;
  MEMORY[0x28223BE20](v22);
  v203 = &v178 - v23;
  MEMORY[0x28223BE20](v24);
  v216 = (&v178 - v25);
  MEMORY[0x28223BE20](v26);
  v184 = &v178 - v27;
  MEMORY[0x28223BE20](v28);
  v187 = &v178 - v29;
  MEMORY[0x28223BE20](v30);
  v206 = &v178 - v31;
  MEMORY[0x28223BE20](v32);
  v183 = &v178 - v33;
  MEMORY[0x28223BE20](v34);
  v196 = &v178 - v35;
  MEMORY[0x28223BE20](v36);
  v193 = &v178 - v37;
  MEMORY[0x28223BE20](v38);
  v201 = &v178 - v39;
  MEMORY[0x28223BE20](v40);
  v42 = &v178 - v41;
  MEMORY[0x28223BE20](v43);
  v45 = &v178 - v44;
  v46 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v47);
  v214 = &v178 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v191 = &v178 - v50;
  MEMORY[0x28223BE20](v51);
  v194 = &v178 - v52;
  MEMORY[0x28223BE20](v53);
  v182 = &v178 - v54;
  MEMORY[0x28223BE20](v55);
  v190 = &v178 - v56;
  MEMORY[0x28223BE20](v57);
  v197 = &v178 - v58;
  MEMORY[0x28223BE20](v59);
  v61 = &v178 - v60;
  v225 = AssociatedTypeWitness;
  v226 = AssociatedTypeWitness;
  v227 = AssociatedConformanceWitness;
  v228 = AssociatedConformanceWitness;
  v195 = AssociatedConformanceWitness;
  v62 = sub_21DBF8B0C();
  v63 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v65 = &v178 - v64;
  v219 = v1;
  sub_21DBF8C2C();
  v217 = a1;
  sub_21DBF5D0C();
  v66 = NSDiffableDataSourceSnapshot.sectionIdentifier(at:)(v62, v45);
  v67 = v46 + 48;
  v68 = *(v46 + 48);
  if (v68(v45, 1, AssociatedTypeWitness, v66) == 1)
  {
    (*(v207 + 8))(v45, v205);
    v69 = sub_21DBFA68C();
    (*(v63 + 8))(v65, v62);
    return v69;
  }

  v189 = v63;
  v181 = v62;
  v192 = v46;
  v71 = *(v46 + 32);
  v218 = v61;
  v221 = v71;
  v222 = v46 + 32;
  v71(v61, v45, AssociatedTypeWitness);
  v72 = v211;
  sub_21DBFBA8C();
  v220 = swift_allocBox();
  (*(v210 + 56))(v73, 1, 1, v72);
  v74 = v42;
  sub_21D778FB8(v217, v42);
  v75 = v201;
  v179 = v65;
  sub_21D7791B0(v201);
  v225 = sub_21DBF9E3C();
  v76 = *(TupleTypeMetadata2 + 48);
  v77 = v205;
  v78 = AssociatedTypeWitness;
  v80 = v207 + 16;
  v79 = *(v207 + 16);
  v81 = v198;
  v79(v198, v74, v205);
  v209 = v80;
  v217 = v79;
  v79(&v81[v76], v75, v77);
  v82 = v78;
  v83 = (v68)(v81, 1, v78);
  v84 = v67;
  v85 = v83;
  v86 = v76;
  v223 = v68;
  v224 = v84;
  v87 = (v68)(&v81[v76], 1, v78);
  v180 = v74;
  v88 = v211;
  if (v85 == 1)
  {
    v89 = v75;
    v90 = v189;
    if (v87 == 1)
    {
      v91 = v192;
      v92 = v218;
      (*(v192 + 16))(v208, v218, v82);
      swift_storeEnumTagMultiPayload();
      sub_21DBFA74C();
      sub_21DBFA6FC();
      v93 = *(v207 + 8);
      v94 = v205;
      v93(v89, v205);
      v93(v180, v94);
      (*(v91 + 8))(v92, v82);
    }

    else
    {
      v107 = v197;
      v221(v197, &v81[v86], v82);
      v108 = v192;
      (*(v192 + 16))(v208, v107, v82);
      swift_storeEnumTagMultiPayload();
      sub_21DBFA74C();
      sub_21DBFA6FC();
      v109 = *(v108 + 8);
      v109(v107, v82);
      v110 = *(v207 + 8);
      v111 = v205;
      v110(v89, v205);
      v110(v180, v111);
      v109(v218, v82);
    }

    (*(v90 + 8))(v179, v181);
    goto LABEL_37;
  }

  v95 = v189;
  if (v87 == 1)
  {
    v96 = v190;
    v221(v190, v81, v82);
    v97 = v192;
    v98 = (v192 + 16);
    v99 = v193;
    v216 = *(v192 + 16);
    v216(v193, v96, v82);
    (*(v97 + 56))(v99, 0, 1, v82);
    v100 = v196;
    v101 = v99;
    v102 = v205;
    v217(v196, v101, v205);
    if (v223(v100, 1, v82) == 1)
    {
      v103 = *(v207 + 8);
      v104 = v179;
      v105 = v97;
      v106 = v180;
      v103(v193, v102);
    }

    else
    {
      v214 = (v97 + 8);
      v136 = (v186 + 8);
      TupleTypeMetadata2 = v186 + 32;
      v207 = (v186 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v137 = v208;
      v138 = v196;
      v139 = v183;
      v212 = v98;
      v140 = v193;
      v141 = v182;
      do
      {
        v221(v141, v138, v82);
        v216(v137, v141, v82);
        swift_storeEnumTagMultiPayload();
        sub_21DBFA74C();
        sub_21DBFA6FC();
        sub_21D7792AC(v141, v218, v220, v219, v139);
        (*v214)(v141, v82);
        v103 = *v136;
        (*v136)(v140, v102);
        (*TupleTypeMetadata2)(v140, v139, v102);
        v217(v138, v140, v102);
      }

      while (v223(v138, 1, v82) != 1);
      v105 = v192;
      v95 = v189;
      v106 = v180;
      v104 = v179;
      v103(v193, v102);
    }

    v142 = *(v105 + 8);
    v142(v190, v82);
    v103(v201, v102);
    v103(v106, v102);
    v142(v218, v82);
    (*(v95 + 8))(v104, v181);
    v103(v196, v102);
    goto LABEL_37;
  }

  v112 = v194;
  v113 = v221;
  v221(v194, v81, v82);
  v113(v191, &v81[v86], v82);
  v114 = v204;
  sub_21D778CB0(v204);
  v115 = v206;
  sub_21DBF8CBC();
  v196 = *(v210 + 8);
  v210 += 8;
  (v196)(v114, v88);
  v116 = v192;
  v117 = *(v192 + 16);
  v118 = v187;
  v199 = v192 + 16;
  v198 = v117;
  (v117)(v187, v112, v82);
  v119 = *(v116 + 56);
  v190 = (v116 + 56);
  v183 = v119;
  (v119)(v118, 0, 1, v82);
  v120 = *(TupleTypeMetadata2 + 48);
  v121 = v188;
  v122 = v205;
  v123 = v82;
  v124 = v217;
  v217(v188, v118, v205);
  v124(&v121[v120], v115, v122);
  v125 = v123;
  v126 = v123;
  v127 = v223;
  if (v223(v121, 1, v126) == 1)
  {
    v128 = v118;
    v129 = *(v207 + 8);
    v129(v128, v122);
    v130 = v127(&v121[v120], 1, v125) == 1;
    v131 = v121;
    v132 = v216;
    v133 = v125;
    if (!v130)
    {
      v207 = v129;
      v147 = v214;
      v148 = v217;
LABEL_21:
      v149 = v185;
      (*(v185 + 8))(v188, TupleTypeMetadata2);
      v150 = v203;
      goto LABEL_22;
    }

    v129(v131, v122);
    v134 = v181;
    v135 = v129;
LABEL_36:
    v176 = v191;
    (v198)(v208, v191, v133);
    swift_storeEnumTagMultiPayload();
    sub_21DBFA74C();
    sub_21DBFA6FC();
    v135(v206, v122);
    v177 = *(v192 + 8);
    v177(v176, v133);
    v177(v194, v133);
    v135(v201, v122);
    v135(v180, v122);
    v177(v218, v133);
    (*(v189 + 8))(v179, v134);
    goto LABEL_37;
  }

  v143 = v184;
  v124(v184, v121, v122);
  v144 = v125;
  v145 = v127(&v121[v120], 1, v125);
  v148 = v124;
  v146 = v207;
  if (v145 == 1)
  {
    v207 = *(v207 + 8);
    (v207)(v187, v122);
    (*(v192 + 8))(v143, v144);
    v132 = v216;
    v147 = v214;
    v133 = v144;
    goto LABEL_21;
  }

  v171 = v197;
  v221(v197, &v121[v120], v144);
  v172 = sub_21DBFA10C();
  v173 = v143;
  v174 = *(v192 + 8);
  v174(v171, v144);
  v175 = *(v146 + 8);
  v175(v187, v122);
  v174(v173, v144);
  v207 = v175;
  v175(v121, v122);
  v133 = v144;
  if (v172)
  {
    v134 = v181;
    v135 = v207;
    goto LABEL_36;
  }

  v150 = v203;
  v132 = v216;
  v148 = v217;
  v127 = v223;
  v147 = v214;
  v149 = v185;
LABEL_22:
  (v198)(v132, v194, v133);
  (v183)(v132, 0, 1, v133);
  v148(v150, v132, v122);
  if (v127(v150, 1, v133) != 1)
  {
    v209 = v186 + 8;
    v193 = (v192 + 8);
    v188 = (v149 + 8);
    while (1)
    {
      v221(v147, v150, v133);
      v156 = v204;
      sub_21D778CB0(v204);
      v157 = v133;
      v158 = v122;
      v160 = v211;
      v159 = v212;
      sub_21DBF8CBC();
      v161 = v216;
      (v196)(v156, v160);
      (v198)(v208, v147, v157);
      swift_storeEnumTagMultiPayload();
      sub_21DBFA74C();
      sub_21DBFA6FC();
      v162 = v207;
      (v207)(v161, v158);
      v148(v161, v159, v158);
      v163 = *(TupleTypeMetadata2 + 48);
      v122 = v158;
      v133 = v157;
      v164 = v202;
      v165 = v223;
      v148(v202, v161, v122);
      v148(&v164[v163], v206, v122);
      if (v165(v164, 1, v133) == 1)
      {
        break;
      }

      v168 = v200;
      v148(v200, v164, v122);
      if (v165(&v164[v163], 1, v133) == 1)
      {
        (v207)(v212, v122);
        v153 = *v193;
        (*v193)(v214, v133);
        v153(v168, v133);
        v154 = v216;
LABEL_26:
        (*v188)(v164, TupleTypeMetadata2);
        v148 = v217;
        goto LABEL_27;
      }

      v169 = v197;
      v221(v197, &v164[v163], v133);
      LODWORD(v205) = sub_21DBFA10C();
      v170 = *v193;
      (*v193)(v169, v133);
      v167 = v207;
      (v207)(v212, v122);
      v170(v214, v133);
      v170(v168, v133);
      v167(v164, v122);
      v154 = v216;
      if (v205)
      {
        goto LABEL_33;
      }

LABEL_27:
      v150 = v203;
      v148(v203, v154, v122);
      v155 = v223(v150, 1, v133);
      v132 = v154;
      v147 = v214;
      if (v155 == 1)
      {
        goto LABEL_23;
      }
    }

    v162(v212, v122);
    (*v193)(v214, v133);
    v166 = v165(&v164[v163], 1, v133);
    v154 = v216;
    if (v166 == 1)
    {
      v167 = v162;
      v162(v164, v122);
      v148 = v217;
LABEL_33:
      v167(v154, v122);
      (v183)(v154, 1, 1, v133);
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_23:
  v151 = v207;
  (v207)(v132, v122);
  v151(v206, v122);
  v152 = *(v192 + 8);
  v152(v191, v133);
  v152(v194, v133);
  v151(v201, v122);
  v151(v180, v122);
  v152(v218, v133);
  (*(v189 + 8))(v179, v181);
  v151(v150, v122);
LABEL_37:

  return v225;
}

uint64_t sub_21D77718C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v128 = a1;
  v130 = a2;
  v3 = *MEMORY[0x277D85000] & *v2;
  v4 = *(v3 + class metadata base offset for TTRICollectionViewTreeBackedDiffableDataSource);
  v5 = *(v3 + class metadata base offset for TTRICollectionViewTreeBackedDiffableDataSource + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_21DBFBA8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v114 = sub_21DBFBA8C();
  v113 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v112 = &v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v111 = &v105 - v11;
  v120 = TupleTypeMetadata2;
  v119 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](v12);
  v108 = &v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v106 = &v105 - v15;
  MEMORY[0x28223BE20](v16);
  v107 = &v105 - v17;
  v127 = v7;
  v126 = *(v7 - 8);
  MEMORY[0x28223BE20](v18);
  v123 = &v105 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v115 = &v105 - v21;
  MEMORY[0x28223BE20](v22);
  v122 = &v105 - v23;
  MEMORY[0x28223BE20](v24);
  v121 = &v105 - v25;
  v26 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v27);
  v110 = &v105 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v109 = &v105 - v30;
  MEMORY[0x28223BE20](v31);
  v116 = &v105 - v32;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v129 = swift_getAssociatedTypeWitness();
  v34 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v36 = &v105 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v125 = &v105 - v38;
  MEMORY[0x28223BE20](v39);
  v41 = &v105 - v40;
  inserted = type metadata accessor for TTRICollectionViewTreeBackedDiffableDataSource.InferredInsertLocation(0, v4, v5, v42);
  v44 = *(inserted - 8);
  MEMORY[0x28223BE20](inserted);
  v46 = &v105 - v45;
  v118 = AssociatedConformanceWitness;
  v48 = type metadata accessor for TTRTreeLocation(0, AssociatedTypeWitness, AssociatedConformanceWitness, v47);
  v131 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v117 = &v105 - v49;
  sub_21D10AFA8(v50, &v132);
  if (v133)
  {
    v124 = v48;
    sub_21D0D0FD0(&v132, &v134);
    (*(v44 + 16))(v46, v128, inserted);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v52 = *(v34 + 32);
    v105 = v26;
    v53 = (v26 + 48);
    if (EnumCaseMultiPayload)
    {
      v128 = v34;
      v54 = v129;
      if (EnumCaseMultiPayload == 1)
      {
        v52(v41, v46, v129);
        v55 = v135;
        v56 = v136;
        v57 = __swift_project_boxed_opaque_existential_1(&v134, v135);
        v58 = v121;
        item_rdar101056925<A, B>(in:withID:)(v57, v41, AssociatedTypeWitness, v55, v56);
        v59 = (*v53)(v58, 1, AssociatedTypeWitness);
        v60 = v124;
        if (v59 == 1)
        {
          (*(v128 + 8))(v41, v54);
          (*(v126 + 8))(v58, v127);
LABEL_15:
          v80 = v130;
          v81 = *(v131 + 56);
          v82 = 1;
LABEL_25:
          v81(v80, v82, 1, v60);
          return __swift_destroy_boxed_opaque_existential_0(&v134);
        }

        v73 = v105;
        v74 = v116;
        (*(v105 + 32))(v116, v58, AssociatedTypeWitness);
        v75 = v135;
        v76 = v136;
        __swift_project_boxed_opaque_existential_1(&v134, v135);
        v77 = v111;
        TTRTreeContentsQueryable.parentAndChildIndex(for:)(v74, v75, v76, v111);
        v78 = v119;
        v79 = v120;
        if ((*(v119 + 48))(v77, 1, v120) == 1)
        {
          (*(v73 + 8))(v74, AssociatedTypeWitness);
          (*(v128 + 8))(v41, v54);
          (*(v113 + 8))(v77, v114);
          goto LABEL_15;
        }

        v97 = v107;
        (*(v78 + 32))(v107, v77, v79);
        v98 = v106;
        (*(v78 + 16))(v106, v97, v79);
        v95 = v117;
        TTRTreeLocation.init(parent:index:)(v98, *&v97[*(v79 + 48)], AssociatedTypeWitness, v118, v117);
        (*(v78 + 8))(v97, v79);
        v96 = v116;
        v99 = v130;
LABEL_24:
        (*(v73 + 8))(v96, AssociatedTypeWitness);
        (*(v128 + 8))(v41, v54);
        (*(v131 + 32))(v99, v95, v60);
        v81 = *(v131 + 56);
        v80 = v99;
        v82 = 0;
        goto LABEL_25;
      }

      v52(v36, v46, v129);
      v69 = v135;
      v70 = v136;
      v71 = __swift_project_boxed_opaque_existential_1(&v134, v135);
      v72 = v123;
      item_rdar101056925<A, B>(in:withID:)(v71, v36, AssociatedTypeWitness, v69, v70);
      if ((*v53)(v72, 1, AssociatedTypeWitness) == 1)
      {
        (*(v128 + 8))(v36, v54);
        (*(v126 + 8))(v72, v127);
        goto LABEL_18;
      }

      v89 = v105;
      v90 = v110;
      (*(v105 + 32))(v110, v72, AssociatedTypeWitness);
      v91 = v135;
      v92 = v136;
      __swift_project_boxed_opaque_existential_1(&v134, v135);
      v125 = *(v89 + 16);
      v93 = v115;
      (v125)(v115, v90, AssociatedTypeWitness);
      v123 = *(v89 + 56);
      (v123)(v93, 0, 1, AssociatedTypeWitness);
      v94 = (*(v92 + 24))(v93, v91, v92);
      (*(v126 + 8))(v93, v127);
      (v125)(v93, v90, AssociatedTypeWitness);
      (v123)(v93, 0, 1, AssociatedTypeWitness);
      v73 = v89;
      v54 = v129;
      v95 = v117;
      TTRTreeLocation.init(parent:index:)(v93, v94, AssociatedTypeWitness, v118, v117);
      v96 = v90;
      v41 = v36;
LABEL_23:
      v99 = v130;
      v60 = v124;
      goto LABEL_24;
    }

    v64 = v125;
    v54 = v129;
    v52(v125, v46, v129);
    v65 = v135;
    v66 = v136;
    v67 = __swift_project_boxed_opaque_existential_1(&v134, v135);
    v68 = v122;
    item_rdar101056925<A, B>(in:withID:)(v67, v64, AssociatedTypeWitness, v65, v66);
    if ((*v53)(v68, 1, AssociatedTypeWitness) == 1)
    {
      (*(v34 + 8))(v64, v54);
      (*(v126 + 8))(v68, v127);
LABEL_18:
      (*(v131 + 56))(v130, 1, 1, v124);
      return __swift_destroy_boxed_opaque_existential_0(&v134);
    }

    v128 = v34;
    v73 = v105;
    v83 = v109;
    (*(v105 + 32))(v109, v68, AssociatedTypeWitness);
    v84 = v135;
    v85 = v136;
    __swift_project_boxed_opaque_existential_1(&v134, v135);
    v86 = v112;
    TTRTreeContentsQueryable.parentAndChildIndex(for:)(v83, v84, v85, v112);
    v87 = v119;
    v88 = v120;
    if ((*(v119 + 48))(v86, 1, v120) == 1)
    {
      (*(v73 + 8))(v83, AssociatedTypeWitness);
      (*(v128 + 8))(v125, v54);
      (*(v113 + 8))(v86, v114);
      goto LABEL_18;
    }

    v100 = v108;
    result = (*(v87 + 32))(v108, v86, v88);
    v101 = *(v88 + 48);
    v102 = *&v100[v101];
    v103 = v102 + 1;
    if (!__OFADD__(v102, 1))
    {
      *&v100[v101] = v103;
      v104 = v115;
      (*(v126 + 16))(v115, v100, v127);
      v95 = v117;
      TTRTreeLocation.init(parent:index:)(v104, v103, AssociatedTypeWitness, v118, v117);
      (*(v87 + 8))(v100, v88);
      v96 = v83;
      v41 = v125;
      goto LABEL_23;
    }

    __break(1u);
  }

  else
  {
    v61 = v130;
    v62 = *(v131 + 56);

    return v62(v61, 1, 1, v48);
  }

  return result;
}

uint64_t TTRICollectionViewTreeBackedDiffableDataSource.siblingsBeforeAndAfter(forInsertingAt:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v80 = a3;
  v6 = *MEMORY[0x277D85000] & *v3;
  v8 = *(v6 + class metadata base offset for TTRICollectionViewTreeBackedDiffableDataSource);
  v7 = *(v6 + class metadata base offset for TTRICollectionViewTreeBackedDiffableDataSource + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v73 = v8;
  v74 = v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = swift_getAssociatedTypeWitness();
  v82 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v64 - v12;
  v79 = sub_21DBFBA8C();
  v81 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v75 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v72 = &v64 - v16;
  MEMORY[0x28223BE20](v17);
  v77 = &v64 - v18;
  MEMORY[0x28223BE20](v19);
  v78 = &v64 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v64 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v64 - v25;
  v27 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v28);
  v76 = &v64 - v29;
  sub_21D10AFA8(v30, &v83);
  if (!v85)
  {
    v37 = v82;
    goto LABEL_5;
  }

  v70 = a1;
  v71 = a2;
  sub_21D0D0FD0(&v83, v86);
  v32 = v87;
  v31 = v88;
  v33 = __swift_project_boxed_opaque_existential_1(v86, v87);
  v34 = AssociatedConformanceWitness;
  v35 = v33;
  v69 = v34;
  v36 = swift_getAssociatedConformanceWitness();
  *&v83 = v11;
  *(&v83 + 1) = v11;
  v84 = v36;
  v85 = v36;
  type metadata accessor for TTRNormalizedItemLocationForInsertAt(0, &v83);
  TTRNormalizedItemLocationForInsertAt<>.effectiveParentItemID.getter();
  item_rdar101056925<A, B>(in:withID:)(v35, v13, AssociatedTypeWitness, v32, v31);
  v37 = v82;
  (*(v82 + 8))(v13, v11);
  v38 = *(v27 + 48);
  if (v38(v26, 1, AssociatedTypeWitness) == 1)
  {
    (*(v81 + 8))(v26, v79);
    __swift_destroy_boxed_opaque_existential_0(v86);
    a2 = v71;
    a1 = v70;
LABEL_5:
    v39 = *(v37 + 56);
    v39(a1, 1, 1, v11);
    return (v39)(a2, 1, 1, v11);
  }

  v66 = v11;
  v41 = v76;
  (*(v27 + 32))(v76, v26, AssociatedTypeWitness);
  v68 = v38;
  v42 = v87;
  v43 = v88;
  __swift_project_boxed_opaque_existential_1(v86, v87);
  (*(v27 + 16))(v23, v41, AssociatedTypeWitness);
  v65 = v27;
  (*(v27 + 56))(v23, 0, 1, AssociatedTypeWitness);
  v64 = (*(v43 + 24))(v23, v42, v43);
  v44 = v81;
  v45 = v79;
  v67 = *(v81 + 8);
  v67(v23, v79);
  v46 = v78;
  v47 = v80;
  sub_21D778760(v80, v86, v41, v78);
  sub_21D778A08(v47, v64, v86, v41, v77);
  v48 = *(v44 + 16);
  v49 = v72;
  v81 = v44 + 16;
  v48(v72, v46, v45);
  if (v68(v49, 1, AssociatedTypeWitness) == 1)
  {
    v67(v49, v45);
    v50 = 1;
    v51 = v70;
    v52 = v65;
  }

  else
  {
    v51 = v70;
    (*(v69 + 24))(AssociatedTypeWitness);
    v45 = v79;
    v52 = v65;
    (*(v65 + 8))(v49, AssociatedTypeWitness);
    v50 = 0;
  }

  v53 = v66;
  v82 = *(v82 + 56);
  (v82)(v51, v50, 1, v66);
  v54 = v75;
  v55 = v77;
  v48(v75, v77, v45);
  if (v68(v54, 1, AssociatedTypeWitness) == 1)
  {
    v56 = v67;
    v67(v55, v45);
    v56(v78, v45);
    (*(v52 + 8))(v76, AssociatedTypeWitness);
    v56(v54, v45);
    v57 = 1;
    v58 = v71;
  }

  else
  {
    v58 = v71;
    v59 = v55;
    v60 = v54;
    v61 = v45;
    (*(v69 + 24))(AssociatedTypeWitness);
    v62 = v67;
    v67(v59, v61);
    v62(v78, v61);
    v63 = *(v52 + 8);
    v63(v76, AssociatedTypeWitness);
    v63(v60, AssociatedTypeWitness);
    v57 = 0;
  }

  (v82)(v58, v57, 1, v53);
  return __swift_destroy_boxed_opaque_existential_0(v86);
}

uint64_t sub_21D778760@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a6@<X8>)
{
  v24 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_21DBFBA8C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - v12;
  swift_getAssociatedConformanceWitness();
  v14 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v25[0] = v14;
  v25[1] = v14;
  v25[2] = AssociatedConformanceWitness;
  v25[3] = AssociatedConformanceWitness;
  result = type metadata accessor for TTRNormalizedItemLocationForInsertAt(0, v25);
  v17 = *(a1 + *(result + 56));
  v18 = v17 - 1;
  if (__OFSUB__(v17, 1))
  {
    __break(1u);
  }

  else if (v18 < 0)
  {
    return (*(*(AssociatedTypeWitness - 8) + 56))(a6, 1, 1, AssociatedTypeWitness);
  }

  else
  {
    v19 = a2[3];
    v20 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v19);
    v21 = *(AssociatedTypeWitness - 8);
    (*(v21 + 16))(v13, v24, AssociatedTypeWitness);
    v24 = v10;
    v22 = *(v21 + 56);
    v22(v13, 0, 1, AssociatedTypeWitness);
    (*(v20 + 32))(v18, v13, v19, v20);
    (*(v11 + 8))(v13, v24);
    return (v22)(a6, 0, 1, AssociatedTypeWitness);
  }

  return result;
}

uint64_t sub_21D778A08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a7@<X8>)
{
  v26 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = sub_21DBFBA8C();
  v25 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - v13;
  swift_getAssociatedConformanceWitness();
  v15 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v27[0] = v15;
  v27[1] = v15;
  v27[2] = AssociatedConformanceWitness;
  v27[3] = AssociatedConformanceWitness;
  v17 = *(a1 + *(type metadata accessor for TTRNormalizedItemLocationForInsertAt(0, v27) + 56));
  if (v17 >= a2)
  {
    return (*(*(AssociatedTypeWitness - 8) + 56))(v26, 1, 1, AssociatedTypeWitness);
  }

  v18 = a3[3];
  v19 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v18);
  v20 = *(AssociatedTypeWitness - 8);
  (*(v20 + 16))(v14, a4, AssociatedTypeWitness);
  v21 = *(v20 + 56);
  v21(v14, 0, 1, AssociatedTypeWitness);
  v22 = v12;
  v23 = v26;
  (*(v19 + 32))(v17, v14, v18, v19);
  (*(v25 + 8))(v14, v22);
  return (v21)(v23, 0, 1, AssociatedTypeWitness);
}

uint64_t sub_21D778CB0@<X0>(uint64_t a4@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v5 = sub_21DBF8D0C();
  v6 = sub_21DBFBA8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v16 - v11;
  v13 = swift_projectBox();
  (*(v7 + 16))(v12, v13, v6);
  v14 = *(v5 - 8);
  if ((*(v14 + 48))(v12, 1, v5) != 1)
  {
    return (*(v14 + 32))(a4, v12, v5);
  }

  (*(v7 + 8))(v12, v6);
  sub_21DBF8C1C();
  (*(v14 + 16))(v9, a4, v5);
  (*(v14 + 56))(v9, 0, 1, v5);
  swift_beginAccess();
  return (*(v7 + 40))(v13, v9, v6);
}

void (*sub_21D778FB8@<X0>(uint64_t a1@<X0>, void *a4@<X8>))(void *, void)
{
  v6 = sub_21DBF5D5C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1, v6, v8);
  result = sub_21DBF5CEC();
  if (__OFSUB__(*v12, 1))
  {
    __break(1u);
  }

  else
  {
    --*v12;
    result(v16, 0);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v16[0] = AssociatedTypeWitness;
    v16[1] = AssociatedTypeWitness;
    v16[2] = AssociatedConformanceWitness;
    v16[3] = AssociatedConformanceWitness;
    v15 = sub_21DBF8B0C();
    NSDiffableDataSourceSnapshot.itemIdentifier(at:)(v15, a4);
    return (*(v7 + 8))(v10, v6);
  }

  return result;
}

uint64_t sub_21D7791B0@<X0>(void *a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v4 = sub_21DBF8B0C();
  return NSDiffableDataSourceSnapshot.itemIdentifier(at:)(v4, a3);
}

uint64_t sub_21D7792AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v43 = a2;
  v44 = a3;
  v45 = a4;
  v46 = a5;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_21DBFBA8C();
  v40 = *(v7 - 8);
  v41 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v39 - v8;
  swift_getAssociatedConformanceWitness();
  v10 = sub_21DBF8D0C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v39 - v15;
  v47 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v17);
  v19 = v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v42 = v39 - v21;
  v22 = a1;
  v23 = v43;
  if (sub_21DBFA10C())
  {
    v24 = v46;
    v25 = *(v47 + 56);

    return v25(v24, 1, 1, AssociatedTypeWitness);
  }

  else
  {
    sub_21D778CB0(v13);
    v39[1] = v22;
    sub_21DBF8CBC();
    v27 = *(v11 + 8);
    v27(v13, v10);
    v28 = v47 + 48;
    v29 = (*(v47 + 48))(v9, 1, AssociatedTypeWitness);
    v30 = (v28 - 32);
    v39[0] = v27;
    if (v29 == 1)
    {
      (*(v40 + 8))(v9, v41);
      v31 = v42;
      (*v30)(v42, v23, AssociatedTypeWitness);
      sub_21D778CB0(v16);
    }

    else
    {
      (*(v47 + 32))(v19, v9, AssociatedTypeWitness);
      v31 = v42;
      (*(v47 + 16))(v42, v19, AssociatedTypeWitness);
      sub_21D778CB0(v13);
      sub_21DBF8CDC();
      v27(v13, v10);
      (*(v47 + 8))(v19, AssociatedTypeWitness);
    }

    v32 = sub_21DBF8C7C();
    v33 = v46;
    if (v34)
    {
      (v39[0])(v16, v10);
      (*(v47 + 8))(v31, AssociatedTypeWitness);
      return (*(v47 + 56))(v33, 1, 1, AssociatedTypeWitness);
    }

    else
    {
      v35 = v32;
      sub_21DBF8CEC();
      v36 = sub_21DBFA6DC();

      result = (v39[0])(v16, v10);
      if (__OFSUB__(v36, 1))
      {
        __break(1u);
      }

      else if (v35 == v36 - 1)
      {
        v37 = *(v47 + 32);
        v47 += 32;
        v37(v33, v31, AssociatedTypeWitness);
        return (*(v47 + 24))(v33, 0, 1, AssociatedTypeWitness);
      }

      else
      {
        v38 = *(v47 + 8);
        v47 += 8;
        v38(v31, AssociatedTypeWitness);
        return (*(v47 + 48))(v33, 1, 1, AssociatedTypeWitness);
      }
    }
  }

  return result;
}

uint64_t sub_21D77998C(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_21D779DDC(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

void *sub_21D779ED8(void *a1, unsigned __int16 *a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  v8 = *(v6 + 80);
  if (v8 > 7 || (v7 + 1) > 0x18 || (*(v6 + 80) & 0x100000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v8 + 16) & ~v8));

    return a1;
  }

  v12 = *(a2 + v7);
  if (v12 >= 3)
  {
    if (v7 <= 3)
    {
      v13 = *(v6 + 64);
    }

    else
    {
      v13 = 4;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        v14 = *a2;
      }

      else if (v13 == 3)
      {
        v14 = *a2 | (*(a2 + 2) << 16);
      }

      else
      {
        v14 = *a2;
      }

      goto LABEL_21;
    }

    if (v13)
    {
      v14 = *a2;
LABEL_21:
      v15 = (v14 | ((v12 - 3) << (8 * v7))) + 3;
      v16 = v14 + 3;
      if (v7 >= 4)
      {
        v12 = v16;
      }

      else
      {
        v12 = v15;
      }
    }
  }

  (*(v6 + 16))(a1, a2, AssociatedTypeWitness);
  if (v12 == 2)
  {
    *(a1 + v7) = 2;
  }

  else
  {
    *(a1 + v7) = v12 == 1;
  }

  return a1;
}

uint64_t sub_21D77A0B4(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(*(AssociatedTypeWitness - 8) + 8);

  return v4(a1, AssociatedTypeWitness);
}

uint64_t sub_21D77A188(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = a2;
  v7 = *(*(AssociatedTypeWitness - 8) + 64);
  v8 = v6[v7];
  if (v8 >= 3)
  {
    if (v7 <= 3)
    {
      v9 = *(*(AssociatedTypeWitness - 8) + 64);
    }

    else
    {
      v9 = 4;
    }

    if (v9 <= 1)
    {
      if (!v9)
      {
        goto LABEL_16;
      }

      v10 = *v6;
    }

    else if (v9 == 2)
    {
      v10 = *v6;
    }

    else if (v9 == 3)
    {
      v10 = *v6 | (v6[2] << 16);
    }

    else
    {
      v10 = *v6;
    }

    v11 = (v10 | ((v8 - 3) << (8 * v7))) + 3;
    v12 = v10 + 3;
    if (v7 >= 4)
    {
      LOBYTE(v8) = v12;
    }

    else
    {
      LOBYTE(v8) = v11;
    }
  }

LABEL_16:
  (*(*(AssociatedTypeWitness - 8) + 16))(a1);
  *(a1 + v7) = v8;
  return a1;
}

unsigned __int16 *sub_21D77A300(unsigned __int16 *a1, unsigned __int16 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v6 = *(AssociatedTypeWitness - 8);
    v7 = *(v6 + 64);
    (*(v6 + 8))(a1, AssociatedTypeWitness);
    v8 = *(a2 + v7);
    if (v8 >= 3)
    {
      if (v7 <= 3)
      {
        v9 = v7;
      }

      else
      {
        v9 = 4;
      }

      if (v9 > 1)
      {
        if (v9 == 2)
        {
          v10 = *a2;
        }

        else if (v9 == 3)
        {
          v10 = *a2 | (*(a2 + 2) << 16);
        }

        else
        {
          v10 = *a2;
        }

        goto LABEL_14;
      }

      if (v9)
      {
        v10 = *a2;
LABEL_14:
        v11 = (v10 | ((v8 - 3) << (8 * v7))) + 3;
        v12 = v10 + 3;
        if (v7 >= 4)
        {
          LOBYTE(v8) = v12;
        }

        else
        {
          LOBYTE(v8) = v11;
        }
      }
    }

    (*(v6 + 16))(a1, a2, AssociatedTypeWitness);
    *(a1 + v7) = v8;
  }

  return a1;
}

uint64_t sub_21D77A4A0(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = a2;
  v7 = *(*(AssociatedTypeWitness - 8) + 64);
  v8 = v6[v7];
  if (v8 >= 3)
  {
    if (v7 <= 3)
    {
      v9 = *(*(AssociatedTypeWitness - 8) + 64);
    }

    else
    {
      v9 = 4;
    }

    if (v9 <= 1)
    {
      if (!v9)
      {
        goto LABEL_16;
      }

      v10 = *v6;
    }

    else if (v9 == 2)
    {
      v10 = *v6;
    }

    else if (v9 == 3)
    {
      v10 = *v6 | (v6[2] << 16);
    }

    else
    {
      v10 = *v6;
    }

    v11 = (v10 | ((v8 - 3) << (8 * v7))) + 3;
    v12 = v10 + 3;
    if (v7 >= 4)
    {
      LOBYTE(v8) = v12;
    }

    else
    {
      LOBYTE(v8) = v11;
    }
  }

LABEL_16:
  (*(*(AssociatedTypeWitness - 8) + 32))(a1);
  *(a1 + v7) = v8;
  return a1;
}

unsigned __int16 *sub_21D77A618(unsigned __int16 *a1, unsigned __int16 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v6 = *(AssociatedTypeWitness - 8);
    v7 = *(v6 + 64);
    (*(v6 + 8))(a1, AssociatedTypeWitness);
    v8 = *(a2 + v7);
    if (v8 >= 3)
    {
      if (v7 <= 3)
      {
        v9 = v7;
      }

      else
      {
        v9 = 4;
      }

      if (v9 > 1)
      {
        if (v9 == 2)
        {
          v10 = *a2;
        }

        else if (v9 == 3)
        {
          v10 = *a2 | (*(a2 + 2) << 16);
        }

        else
        {
          v10 = *a2;
        }

        goto LABEL_14;
      }

      if (v9)
      {
        v10 = *a2;
LABEL_14:
        v11 = (v10 | ((v8 - 3) << (8 * v7))) + 3;
        v12 = v10 + 3;
        if (v7 >= 4)
        {
          LOBYTE(v8) = v12;
        }

        else
        {
          LOBYTE(v8) = v11;
        }
      }
    }

    (*(v6 + 32))(a1, a2, AssociatedTypeWitness);
    *(a1 + v7) = v8;
  }

  return a1;
}

uint64_t sub_21D77A7B8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v5 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_23;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if ((v5 + 1) <= 3)
  {
    v10 = ((a2 + ~(-1 << v7) - 253) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v10 < 2)
    {
LABEL_23:
      v12 = *(a1 + v5);
      if (v12 >= 3)
      {
        return (v12 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_23;
  }

LABEL_12:
  v11 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return (v6 | v11) + 254;
}

void sub_21D77A958(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v7 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v8 = v7 + 1;
  if (a3 < 0xFE)
  {
    v9 = 0;
  }

  else if (v8 <= 3)
  {
    v12 = ((a3 + ~(-1 << (8 * v8)) - 253) >> (8 * v8)) + 1;
    if (HIWORD(v12))
    {
      v9 = 4;
    }

    else
    {
      if (v12 < 0x100)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (v12 >= 2)
      {
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (a2 > 0xFD)
  {
    v10 = a2 - 254;
    if (v8 >= 4)
    {
      bzero(a1, v7 + 1);
      *a1 = v10;
      v11 = 1;
      if (v9 > 1)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v11 = (v10 >> (8 * v8)) + 1;
    if (v7 != -1)
    {
      v14 = v10 & ~(-1 << (8 * v8));
      bzero(a1, v8);
      if (v8 != 3)
      {
        if (v8 == 2)
        {
          *a1 = v14;
          if (v9 > 1)
          {
LABEL_37:
            if (v9 == 2)
            {
              *&a1[v8] = v11;
            }

            else
            {
              *&a1[v8] = v11;
            }

            return;
          }
        }

        else
        {
          *a1 = v10;
          if (v9 > 1)
          {
            goto LABEL_37;
          }
        }

LABEL_34:
        if (v9)
        {
          a1[v8] = v11;
        }

        return;
      }

      *a1 = v14;
      a1[2] = BYTE2(v14);
    }

    if (v9 > 1)
    {
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  if (v9 <= 1)
  {
    if (v9)
    {
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

LABEL_23:
      a1[v7] = -a2;
      return;
    }

LABEL_22:
    if (!a2)
    {
      return;
    }

    goto LABEL_23;
  }

  if (v9 == 2)
  {
    *&a1[v8] = 0;
    goto LABEL_22;
  }

  *&a1[v8] = 0;
  if (a2)
  {
    goto LABEL_23;
  }
}

uint64_t sub_21D77AB78(unsigned __int8 *a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v3 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  result = a1[v3];
  if (result >= 3)
  {
    if (v3 <= 3)
    {
      v5 = v3;
    }

    else
    {
      v5 = 4;
    }

    if (v5 <= 1)
    {
      if (!v5)
      {
        return result;
      }

      v6 = *a1;
    }

    else if (v5 == 2)
    {
      v6 = *a1;
    }

    else if (v5 == 3)
    {
      v6 = *a1 | (a1[2] << 16);
    }

    else
    {
      v6 = *a1;
    }

    v7 = (v6 | ((result - 3) << (8 * v3))) + 3;
    v8 = v6 + 3;
    if (v3 >= 4)
    {
      return v8;
    }

    else
    {
      return v7;
    }
  }

  return result;
}

void sub_21D77AC98(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v5 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (a2 > 2)
  {
    v6 = a2 - 3;
    if (v5 < 4)
    {
      a1[v5] = (v6 >> (8 * v5)) + 3;
      if (v5)
      {
        v7 = v6 & ~(-1 << (8 * v5));
        bzero(a1, v5);
        if (v5 == 3)
        {
          *a1 = v7;
          a1[2] = BYTE2(v7);
        }

        else if (v5 == 2)
        {
          *a1 = v7;
        }

        else
        {
          *a1 = v6;
        }
      }
    }

    else
    {
      a1[v5] = 3;
      bzero(a1, v5);
      *a1 = v6;
    }
  }

  else
  {
    a1[v5] = a2;
  }
}

uint64_t TTRInteractorEditsCommitting.oneshotEdit<A>(using:items:store:undoContext:editBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v18 = swift_task_alloc();
  *(v10 + 16) = v18;
  *v18 = v10;
  v18[1] = sub_21D1B795C;

  return sub_21D77B87C(a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t TTRInteractorEditsCommitting.oneshotEdit<A>(using:items:store:undoManager:editBlock:completionBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v16 = 0;
  if (a4)
  {
    v17 = type metadata accessor for TTRBasicUndoContext();
    v16 = swift_allocObject();
    *(v16 + 16) = a4;
    v18 = &protocol witness table for TTRBasicUndoContext;
  }

  else
  {
    v17 = 0;
    v18 = 0;
    v26[1] = 0;
    v26[2] = 0;
  }

  v26[0] = v16;
  v26[3] = v17;
  v26[4] = v18;
  v19 = *(a11 + 8);
  v20 = a4;
  v19(a1, a2, a3, v26, a5, a6, a7, a8, a10, a12, a9, a11);
  return sub_21D311700(v26);
}

uint64_t sub_21D77B068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59DA0, &qword_21DC20E70);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v22 - v17;
  (*(v15 + 16))(&v22 - v17, a1, v14, v16);
  v19 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v20 = swift_allocObject();
  (*(v15 + 32))(v20 + v19, v18, v14);
  static TTROneshotEditing.oneshotEdit(_:store:listIDsForOrderMutationPreparation:undoContext:editBlock:willSave:completionBlock:)(a2, a3, 0, v23, v24, v25, 0, 0, sub_21D22C45C, v20, a8, a10);
}

uint64_t sub_21D77B1F4(void *a1)
{
  if (a1)
  {
    v1 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59DA0, &qword_21DC20E70);
    return sub_21DBFA7DC();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59DA0, &qword_21DC20E70);
    return sub_21DBFA7EC();
  }
}

uint64_t TTRInteractorEditsCommitting.oneshotEdit<A>(using:items:store:undoManager:editBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[14] = v10;
  v8[15] = v11;
  v8[12] = a7;
  v8[13] = a8;
  v8[10] = a5;
  v8[11] = a6;
  v8[8] = a3;
  v8[9] = a4;
  v8[7] = a2;
  return MEMORY[0x2822009F8](sub_21D77B2A0, 0, 0);
}

void sub_21D77B2A0()
{
  v1 = v0[9];
  if (v1)
  {
    v2 = type metadata accessor for TTRBasicUndoContext();
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    v4 = &protocol witness table for TTRBasicUndoContext;
  }

  else
  {
    v3 = 0;
    v2 = 0;
    v4 = 0;
    v0[3] = 0;
    v0[4] = 0;
  }

  v0[2] = v3;
  v0[5] = v2;
  v0[6] = v4;
  v5 = v1;
  v6 = swift_task_alloc();
  v0[16] = v6;
  *v6 = v0;
  v6[1] = sub_21D77B3B4;

  JUMPOUT(0x21D77B87CLL);
}