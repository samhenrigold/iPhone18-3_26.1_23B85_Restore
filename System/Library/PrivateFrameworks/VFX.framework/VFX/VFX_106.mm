uint64_t sub_1AF92CD04(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v91 = *a1;
    v8 = MEMORY[0x1E69E7CC0];
    v88 = a4;
    while (1)
    {
      v9 = v7++;
      v96 = v8;
      if (v7 < v6)
      {
        v92 = v6;
        v10 = *a3;
        v11 = v9;
        v12 = v7;
        v89 = v11;
        v13 = *(*a3 + 8 * v11);
        v14 = *(**(*a3 + 8 * v7) + 128);

        v16 = v14(v15);
        v18 = v17;
        if (v16 == (*(*v13 + 128))() && v18 == v19)
        {
          v94 = 0;
        }

        else
        {
          v94 = sub_1AFDFEE28();
        }

        v86 = v5;

        v21 = 8 * v89;
        v22 = v10 + 8 * v89 + 16;
        v23 = 8 * v89 + 8;
        v8 = v96;
        v7 = v12;
        do
        {
          v25 = v7;
          v26 = v23;
          if (++v7 >= v92)
          {
            break;
          }

          v98 = v7;
          v27 = *(v22 - 8);
          v28 = *(**v22 + 128);

          v30 = v28(v29);
          v32 = v31;
          v34 = v30 == (*(*v27 + 128))() && v32 == v33;
          v24 = v34 ? 0 : sub_1AFDFEE28();

          v22 += 8;
          v23 = v26 + 8;
          v8 = v96;
          v7 = v98;
        }

        while (((v94 ^ v24) & 1) == 0);
        if (v89 >= v7 || (v94 & 1) == 0)
        {
          v5 = v86;
          a4 = v88;
          v9 = v89;
        }

        else
        {
          v35 = v89;
          do
          {
            if (v35 != v25)
            {
              v36 = *a3;
              v37 = *(*a3 + v21);
              *(v36 + v21) = *(*a3 + v26);
              *(v36 + v26) = v37;
            }

            ++v35;
            v26 -= 8;
            v21 += 8;
            v39 = v35 < v25--;
          }

          while (v39);
          v5 = v86;
          a4 = v88;
          v9 = v89;
        }
      }

      v38 = a3[1];
      v39 = v7 < v38 && v7 - v9 < a4;
      if (v39)
      {
        if (v9 + a4 >= v38)
        {
          v40 = a3[1];
        }

        else
        {
          v40 = v9 + a4;
        }

        if (v9 + a4 == v7)
        {
          v7 = v40;
        }

        else
        {
          v87 = v5;
          v93 = *a3;
          v95 = v40;
          v41 = *a3 + 8 * v7 - 8;
          v90 = v9;
          v42 = v9 - v7;
          do
          {
            v99 = v7;
            v43 = *(v93 + 8 * v7);
            v44 = v42;
            v45 = v41;
            while (1)
            {
              v46 = *v45;
              v47 = *(*v43 + 128);

              v49 = v47(v48);
              v51 = v50;
              if (v49 == (*(*v46 + 128))() && v51 == v52)
              {
                break;
              }

              v54 = sub_1AFDFEE28();

              if (v54)
              {
                v55 = *v45;
                v43 = v45[1];
                *v45 = v43;
                v45[1] = v55;
                --v45;
                if (!__CFADD__(v44++, 1))
                {
                  continue;
                }
              }

              goto LABEL_39;
            }

LABEL_39:
            v7 = v99 + 1;
            v41 += 8;
            --v42;
          }

          while (v99 + 1 != v95);
          v7 = v95;
          v5 = v87;
          v8 = v96;
          v9 = v90;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_1AF4209A4(0, *(v8 + 2) + 1, 1, v8);
      }

      v58 = *(v8 + 2);
      v57 = *(v8 + 3);
      v59 = v58 + 1;
      if (v58 >= v57 >> 1)
      {
        v8 = sub_1AF4209A4(v57 > 1, v58 + 1, 1, v8);
      }

      *(v8 + 2) = v59;
      v60 = v8 + 32;
      v61 = &v8[16 * v58 + 32];
      *v61 = v9;
      *(v61 + 1) = v7;
      if (v58)
      {
        break;
      }

LABEL_3:
      v6 = a3[1];
      a4 = v88;
      if (v7 >= v6)
      {
        goto LABEL_71;
      }
    }

    while (1)
    {
      v62 = v59 - 1;
      if (v59 >= 4)
      {
        v66 = &v60[16 * v59];
        v67 = *(v66 - 7) - *(v66 - 8);
        v65 = *(v66 - 5) - *(v66 - 6);
        v68 = &v8[16 * v59];
        v63 = *v68;
        v64 = *(v68 + 1);
        if (v65 - v63 + v64 >= v67)
        {
          v71 = v59 - 2;
          v70 = *&v60[16 * v62 + 8] - *&v60[16 * v62];
          goto LABEL_65;
        }
      }

      else
      {
        if (v59 != 3)
        {
          v69 = *&v8[16 * v59 + 8] - *&v8[16 * v59];
          v70 = *&v60[16 * v62 + 8] - *&v60[16 * v62];
LABEL_62:
          if (v70 < v69)
          {
            goto LABEL_3;
          }

          goto LABEL_67;
        }

        v63 = *(v8 + 6);
        v64 = *(v8 + 7);
        v65 = *(v8 + 5) - *(v8 + 4);
      }

      v69 = v64 - v63;
      v70 = *&v60[16 * v62 + 8] - *&v60[16 * v62];
      if (v69 + v70 < v65)
      {
        goto LABEL_62;
      }

      v71 = v59 - 2;
LABEL_65:
      if (v65 < v70)
      {
        v62 = v71;
      }

LABEL_67:
      v72 = &v60[16 * v62];
      v73 = *(v72 - 2);
      v74 = *(v72 + 1);
      sub_1AF92D3D0((*a3 + 8 * v73), (*a3 + 8 * *v72), (*a3 + 8 * v74), v91);
      if (v5)
      {
      }

      *(v72 - 2) = v73;
      *(v72 - 1) = v74;
      v75 = *(v8 + 2);
      v59 = v75 - 1;
      memmove(&v60[16 * v62], v72 + 16, 16 * (v75 - 1 - v62));
      *(v8 + 2) = v75 - 1;
      if (v75 <= 2)
      {
        goto LABEL_3;
      }
    }
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_71:
  v76 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_1AF650C88(v8);
  }

  v77 = v8 + 16;
  v78 = *(v8 + 2);
  if (v78 >= 2)
  {
    do
    {
      v79 = &v8[16 * v78];
      v80 = *v79;
      v81 = &v77[2 * v78];
      v82 = v81[1];
      sub_1AF92D3D0((*a3 + 8 * *v79), (*a3 + 8 * *v81), (*a3 + 8 * v82), v76);
      if (v5)
      {
        break;
      }

      *v79 = v80;
      *(v79 + 1) = v82;
      v83 = *v77 - 1;
      memmove(&v77[2 * v78], v81 + 2, 16 * (*v77 - v78));
      *v77 = v83;
      v78 = v83;
    }

    while (v83 > 1);
  }
}

uint64_t sub_1AF92D3D0(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src - __dst;
  v8 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v8 = __src - __dst;
  }

  v9 = v8 >> 3;
  v10 = a3 - __src;
  v11 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v11 = a3 - __src;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    v25 = __src;
    if (a4 != __src || &__src[8 * v12] <= a4)
    {
      memmove(a4, __src, 8 * v12);
    }

    v44 = &v4[8 * v12];
    if (v10 >= 8 && v25 > v6)
    {
      v43 = v4;
LABEL_32:
      v42 = v25;
      v26 = v25 - 8;
      v5 -= 8;
      v27 = v44;
      do
      {
        v28 = *(v27 - 1);
        v27 -= 8;
        v29 = v26;
        v30 = *v26;
        v31 = *(*v28 + 128);

        v33 = v31(v32);
        v35 = v34;
        if (v33 == (*(*v30 + 128))() && v35 == v36)
        {
          v38 = 0;
        }

        else
        {
          v38 = sub_1AFDFEE28();
        }

        v39 = v5 + 8;
        if (v38)
        {
          v40 = v29;
          if (v39 != v42)
          {
            *v5 = *v29;
          }

          v4 = v43;
          if (v44 <= v43 || (v25 = v40, v40 <= v6))
          {
            v25 = v40;
            goto LABEL_49;
          }

          goto LABEL_32;
        }

        if (v39 != v44)
        {
          *v5 = *v27;
        }

        v5 -= 8;
        v44 = v27;
        v26 = v29;
      }

      while (v27 > v43);
      v44 = v27;
      v25 = v42;
      v4 = v43;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[8 * v9] <= a4)
    {
      memmove(a4, __dst, 8 * v9);
    }

    v44 = &v4[8 * v9];
    if (v7 >= 8 && __src < v5)
    {
      v14 = __src;
      while (1)
      {
        v15 = *v4;
        v16 = *(**v14 + 128);

        v18 = v16(v17);
        v20 = v19;
        v22 = v18 == (*(*v15 + 128))() && v20 == v21;
        if (v22)
        {
          break;
        }

        v23 = sub_1AFDFEE28();

        if ((v23 & 1) == 0)
        {
          goto LABEL_21;
        }

        v24 = v14;
        v22 = v6 == v14;
        v14 += 8;
        if (!v22)
        {
          goto LABEL_22;
        }

LABEL_23:
        v6 += 8;
        if (v4 >= v44 || v14 >= v5)
        {
          goto LABEL_25;
        }
      }

LABEL_21:
      v24 = v4;
      v22 = v6 == v4;
      v4 += 8;
      if (v22)
      {
        goto LABEL_23;
      }

LABEL_22:
      *v6 = *v24;
      goto LABEL_23;
    }

LABEL_25:
    v25 = v6;
  }

LABEL_49:
  if (v25 != v4 || v25 >= &v4[(v44 - v4 + (v44 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v25, v4, 8 * ((v44 - v4) / 8));
  }

  return 1;
}

uint64_t sub_1AF92D840@<X0>(_OWORD *a1@<X0>, uint64_t (*a2)(_OWORD *)@<X1>, uint64_t *a3@<X8>)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[2] = a1[2];
  result = sub_1AF92C5D0(v7, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1AF92D888(uint64_t result, void *a2, uint64_t (*a3)(uint64_t *))
{
  v3 = *result;
  v5 = *result;
  if (!*a2)
  {
    result = a3(&v5);
    if (result)
    {

      *a2 = v3;
    }
  }

  return result;
}

void *sub_1AF92D900(uint64_t a1, uint64_t a2)
{
  sub_1AF4474BC(0);
  v4 = sub_1AFDFE598();
  v5 = v4;
  v6 = 0;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;
  v34 = a2;
  v35 = v4 + 64;
  v11 = a1 + 72;
  v32 = v4;
  v33 = a1;
  while (v9)
  {
    v15 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v16 = v15 | (v6 << 6);
LABEL_12:
    v20 = *(a1 + 48);
    v45 = 48 * v16;
    sub_1AF447040(v20 + 48 * v16, v44);
    sub_1AF85B49C(*(a1 + 56) + 40 * v16, v43);
    sub_1AF4473A0(v44, v42);
    sub_1AF85B49C(v43, &v37);
    if (v38 < 2)
    {
      sub_1AF85B49C(v43, &v39);
    }

    else
    {
      sub_1AF0FBA54(&v37, v36);
      sub_1AF441194(v36, &v39);
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v22 = *(a2 + OBJC_IVAR____TtC3VFX15DefaultRemapper_isReversed);
        v23 = Strong;
        [*(Strong + 16) lock];
        v24 = *(v23 + 16);
        v25 = 24;
        if (v22)
        {
          v25 = 32;
        }

        v26 = *(v23 + v25);

        [v24 unlock];

        v27 = MEMORY[0x1E69E7CC8];
      }

      else
      {
        v27 = MEMORY[0x1E69E7CC8];
        v26 = MEMORY[0x1E69E7CC8];
      }

      type metadata accessor for RemapContext();
      v28 = swift_allocObject();
      *(v28 + 24) = v26;
      *(v28 + 32) = v27;
      *(v28 + 16) = 0;
      v30 = *(&v40 + 1);
      v29 = v41;
      sub_1AF448018(&v39, *(&v40 + 1));
      (*(*(*(v29 + 8) + 8) + 96))(v28, &off_1F2532090, v30);

      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v36);
      a1 = v33;
      a2 = v34;
      v5 = v32;
    }

    sub_1AF92E918(v43);
    *(v35 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
    sub_1AF4473A0(v42, v5[6] + v45);
    v12 = v5[7] + 40 * v16;
    v13 = v39;
    v14 = v40;
    *(v12 + 32) = v41;
    *v12 = v13;
    *(v12 + 16) = v14;
    ++v5[2];
  }

  v17 = v6 << 6;
  while (1)
  {
    v18 = v6 + 1;
    if (v6 + 1 >= v10)
    {
      return v5;
    }

    v19 = *(v11 + 8 * v6);
    v17 += 64;
    ++v6;
    if (v19)
    {
      v9 = (v19 - 1) & v19;
      v16 = __clz(__rbit64(v19)) + v17;
      v6 = v18;
      goto LABEL_12;
    }
  }
}

void *sub_1AF92DBF4(void *a1)
{
  v3 = sub_1AF441150(a1, a1[3]);
  sub_1AFDFF388();
  if (v1)
  {
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  else
  {
    v4 = a1[3];
    v5 = a1[4];
    sub_1AF441150(a1, v4);
    if (sub_1AF69504C(3014, v4, v5))
    {
      v6 = v10;
      v7 = v11;
      sub_1AF448018(v9, v10);
      sub_1AF758470(v6, v7);
    }

    sub_1AF448018(v9, v10);
    sub_1AF4480BC();
    sub_1AFDFEAD8();
    v3 = v12;
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v9);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  return v3;
}

uint64_t sub_1AF92DD70(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = *(a1 + 8);
  return v2(&v4) & 1;
}

uint64_t sub_1AF92DDB0@<X0>(_OWORD *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = a1[1];
  v8[0] = *a1;
  v8[1] = v6;
  v8[2] = a1[2];
  result = sub_1AF92C5D0(v8, v5);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

void sub_1AF92DE60(uint64_t a1)
{
  if (!qword_1EB6406D0)
  {
    type metadata accessor for Graph();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB6406D0);
    }
  }
}

void sub_1AF92DF5C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 >= 2)
  {
  }
}

uint64_t sub_1AF92DFB0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AF92E010(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1AF92E078(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1AF92975C();
  if (v9)
  {
    v10 = v8;
    v11 = a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *a2;
    *a2 = 0x8000000000000000;
    sub_1AF92E118(v11, v10, isUniquelyReferenced_nonNull_native, &v13, a3, a4);
    *a2 = v13;
  }
}

void sub_1AF92E118(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5, uint64_t a6)
{
  v11 = *a4;
  v12 = sub_1AF449D3C(a2);
  v14 = v13;
  v15 = v11[3];
  v16 = v11[2] + ((v13 & 1) == 0);
  if (v15 < v16 || (a3 & 1) == 0)
  {
    if (v15 < v16 || (a3 & 1) != 0)
    {
      sub_1AF83F150(v16, a3 & 1);
      v12 = sub_1AF449D3C(a2);
      if ((v14 & 1) != (v18 & 1))
      {
        sub_1AFDFF1A8();
        __break(1u);
        return;
      }
    }

    else
    {
      v17 = v12;
      sub_1AF84E614();
      v12 = v17;
    }
  }

  v19 = *a4;
  if (v14)
  {
    v20 = v19[7] + 16 * v12;
    v21 = *v20;
    *v20 = a1;
    *(v20 + 8) = a6;
  }

  else
  {
    v19[(v12 >> 6) + 8] |= 1 << v12;
    *(v19[6] + 8 * v12) = a2;
    v22 = (v19[7] + 16 * v12);
    *v22 = a1;
    v22[1] = a6;
    ++v19[2];
  }
}

uint64_t sub_1AF92E264(uint64_t a1)
{
  sub_1AF92E848(0);
  v2 = sub_1AFDFE598();
  v3 = 0;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  v28 = a1;
  v29 = v2;
  v8 = a1 + 72;
  v26 = a1 + 72;
  v27 = v2 + 64;
  if (v6)
  {
    while (1)
    {
      v30 = (v6 - 1) & v6;
      v9 = __clz(__rbit64(v6)) | (v3 << 6);
LABEL_9:
      v13 = v28;
      sub_1AF447040(*(v28 + 48) + 48 * v9, v34);
      v14 = *(*(v13 + 56) + 8 * v9);
      sub_1AF4473A0(v34, v33);
      type metadata accessor for Graph();
      v15 = swift_allocObject();
      *(v15 + 16) = v14;
      v35 = MEMORY[0x1E69E7CC0];
      v16 = swift_allocObject();
      *(v16 + 16) = v14;
      MEMORY[0x1EEE9AC00](v16);
      v24 = 0;
      v25 = &v35;
      MEMORY[0x1EEE9AC00](v17);
      v23[2] = sub_1AF92E8B4;
      v23[3] = v18;
      swift_bridgeObjectRetain_n();
      v32[0] = sub_1AF42B0F4(MEMORY[0x1E69E7CC0]);
      v32[1] = v19;
      v20 = v31;
      sub_1AF412D4C(sub_1AF449DD8, v23, 1, 0x1000000000000000uLL, 0, MEMORY[0x1E69E7CC0], v32);
      v31 = v20;
      if (v20)
      {
        break;
      }

      *(v15 + 16) = v35;

      sub_1AF9261A8(v15);
      sub_1AF92658C(v15);

      *(v27 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
      v21 = v29;
      sub_1AF4473A0(v33, *(v29 + 48) + 48 * v9);
      *(*(v21 + 56) + 8 * v9) = v15;
      ++*(v21 + 16);
      v8 = v26;
      v6 = v30;
      if (!v30)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
    v10 = v3 << 6;
    while (1)
    {
      v11 = v3 + 1;
      if (v3 + 1 >= v7)
      {
        return v29;
      }

      v12 = *(v8 + 8 * v3);
      v10 += 64;
      ++v3;
      if (v12)
      {
        v30 = (v12 - 1) & v12;
        v9 = __clz(__rbit64(v12)) + v10;
        v3 = v11;
        goto LABEL_9;
      }
    }
  }

  return result;
}

unint64_t sub_1AF92E558(uint64_t a1)
{
  sub_1AF447040(a1, v6);
  if (v9)
  {
    if (v9 == 1)
    {
      sub_1AF447040(v6, &v4);

      sub_1AF4470F0(v5);
      v1 = 0x67676972745F6E6FLL;
    }

    else
    {
      v2 = vorrq_s8(v6[0], v6[1]);
      if (((v8 == 0) & ((*&vorr_s8(*v2.i8, *&vextq_s8(v2, v2, 8uLL)) | v7) == 0)) != 0)
      {
        v1 = 0x74616470755F6E6FLL;
      }

      else
      {
        v1 = 0x74737269665F6E6FLL;
      }
    }

    goto LABEL_11;
  }

  sub_1AF447040(v6, &v4);
  if (v4 == 5)
  {
    v1 = 0xD000000000000012;
LABEL_11:
    sub_1AF44709C(v6);
    return v1;
  }

  if (v4 == 3)
  {
    v1 = 0xD000000000000010;
    goto LABEL_11;
  }

  v4 = 0;
  v5[0] = 0xE000000000000000;
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x20676E697373696DLL, 0xEE00203A65736163);
  sub_1AFDFE458();
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF92E794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1AF92E800(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

void sub_1AF92E848(uint64_t a1)
{
  if (!qword_1EB6406E0)
  {
    type metadata accessor for Graph();
    sub_1AF4472B4();
    v1 = sub_1AFDFE5D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB6406E0);
    }
  }
}

void *sub_1AF92E918(void *result)
{
  if (result[3] >= 0xFFFFFFFFuLL)
  {
    v1 = result;
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(result);
    return v1;
  }

  return result;
}

void sub_1AF92E954()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = v1[3];
  v4 = v1[4];
  v5 = sub_1AF441150(v1, v3);
  sub_1AF6C1390(v5, v2, v3, *(v4 + 8));
}

uint64_t sub_1AF92E9D8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1AF92EB14(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void sub_1AF92EA58()
{
  if (!qword_1EB6406F8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB6406F8);
    }
  }
}

void sub_1AF92EABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_1EB633D00)
  {
    v4 = type metadata accessor for Query1(0, &type metadata for GraphComponent, &off_1F2547EF8, a4);
    if (!v5)
    {
      atomic_store(v4, &qword_1EB633D00);
    }
  }
}

void sub_1AF92EB14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void *destroy for VFXObjectScriptsDiff.Diff(void *result)
{
  if (result[3] >= 0xFFFFFFFFuLL)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(result);
  }

  return result;
}

__n128 initializeWithCopy for VFXObjectScriptsDiff.Diff(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (v2 < 0xFFFFFFFF)
  {
    result = *a2;
    v5 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v5;
    *(a1 + 32) = *(a2 + 32);
  }

  else
  {
    v3 = *(a2 + 32);
    *(a1 + 24) = v2;
    *(a1 + 32) = v3;
    (**(v2 - 8))();
  }

  return result;
}

__n128 assignWithCopy for VFXObjectScriptsDiff.Diff(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (*(a1 + 24) < 0xFFFFFFFFuLL)
  {
    if (v2 < 0xFFFFFFFF)
    {
      result = *a2;
      v7 = *(a2 + 16);
      *(a1 + 32) = *(a2 + 32);
      *a1 = result;
      *(a1 + 16) = v7;
    }

    else
    {
      *(a1 + 24) = v2;
      *(a1 + 32) = *(a2 + 32);
      (**(v2 - 8))();
    }
  }

  else if (v2 < 0xFFFFFFFF)
  {
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
    result = *a2;
    v6 = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *a1 = result;
    *(a1 + 16) = v6;
  }

  else
  {
    sub_1AF6156AC(a1, a2);
  }

  return result;
}

__n128 assignWithTake for VFXObjectScriptsDiff.Diff(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) >= 0xFFFFFFFFuLL)
  {
    v3 = a1;
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
    a1 = v3;
  }

  result = *a2;
  v5 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v5;
  *(a1 + 32) = *(a2 + 32);
  return result;
}

uint64_t getEnumTagSinglePayload for VFXObjectScriptsDiff.Diff(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 40))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for VFXObjectScriptsDiff.Diff(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1AF92EDE0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

double sub_1AF92EDF8(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

uint64_t _s18ReplicationPayloadVwca(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t _s18ReplicationPayloadVwta(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

unint64_t sub_1AF92EF80(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 >> 61 != 6)
  {
    goto LABEL_6;
  }

  if (a3 == 0xC000000000000088)
  {
    v10 = a1;
    v11 = a2;
    sub_1AFDFE218();

    v12 = 0xD000000000000016;
    goto LABEL_10;
  }

  if (a3 == 0xC000000000000078)
  {
    v10 = a1;
    v11 = a2;
    sub_1AFDFE218();

    v12 = 0xD00000000000001BLL;
LABEL_10:
    v14 = v12;
    MEMORY[0x1B2718AE0](v10, v11);
    MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
    MEMORY[0x1B2718AE0](a4, a5);
    v8 = 15145;
    v9 = 0xE200000000000000;
    goto LABEL_11;
  }

  if (a3 == 0xC000000000000070 && a6 != 3)
  {
    v10 = a1;
    v11 = a2;
    sub_1AFDFE218();

    v12 = 0xD000000000000017;
    goto LABEL_10;
  }

LABEL_6:
  v14 = a1;

  MEMORY[0x1B2718AE0](2112800, 0xE300000000000000);
  MEMORY[0x1B2718AE0](a4, a5);
  v8 = 59;
  v9 = 0xE100000000000000;
LABEL_11:
  MEMORY[0x1B2718AE0](v8, v9);
  return v14;
}

uint64_t sub_1AF92F150(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AFE4C420;
  v7 = sub_1AF90F890(v6 | 0x2000000000000000, a1);

  if (v7)
  {
    sub_1AF0D5A54(a2, &v36);
    v8 = MEMORY[0x1E69E6448];
    sub_1AF9322B8(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
    swift_dynamicCast();
    v33 = DWORD1(v34);
    v37 = v8;
    LODWORD(v36) = v34;
    v9 = sub_1AF92F69C(0xC000000000000058, &v36, a3);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v36);
    v35 = v9;
    MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
    v37 = v8;
    LODWORD(v36) = v33;
LABEL_7:
    v27 = sub_1AF92F69C(0xC000000000000058, &v36, a3);
    v29 = v28;
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v36);
    MEMORY[0x1B2718AE0](v27, v29);

    return v35;
  }

  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1AFE4C430;
  v11 = sub_1AF90F890(v10 | 0x2000000000000000, a1);

  if (v11)
  {
    sub_1AF0D5A54(a2, &v36);
    v12 = MEMORY[0x1E69E6448];
    sub_1AF9322B8(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    swift_dynamicCast();
    v31 = v34;
    v37 = v12;
    LODWORD(v36) = v34;
    v13 = sub_1AF92F69C(0xC000000000000058, &v36, a3);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v36);
    v35 = v13;
    MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
    v37 = v12;
    LODWORD(v36) = DWORD1(v31);
    v14 = sub_1AF92F69C(0xC000000000000058, &v36, a3);
    v16 = v15;
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v36);
    MEMORY[0x1B2718AE0](v14, v16);

    MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
    v37 = v12;
    LODWORD(v36) = DWORD2(v31);
    goto LABEL_7;
  }

  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1AFE4C440;
  v18 = sub_1AF90F890(v17 | 0x2000000000000000, a1);

  if (v18)
  {
    sub_1AF0D5A54(a2, &v36);
    v19 = MEMORY[0x1E69E6448];
    sub_1AF9322B8(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
    swift_dynamicCast();
    v32 = v34;
    v37 = v19;
    LODWORD(v36) = v34;
    v20 = sub_1AF92F69C(0xC000000000000058, &v36, a3);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v36);
    v35 = v20;
    MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
    v37 = v19;
    LODWORD(v36) = DWORD1(v32);
    v21 = sub_1AF92F69C(0xC000000000000058, &v36, a3);
    v23 = v22;
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v36);
    MEMORY[0x1B2718AE0](v21, v23);

    MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
    v37 = v19;
    LODWORD(v36) = DWORD2(v32);
    v24 = sub_1AF92F69C(0xC000000000000058, &v36, a3);
    v26 = v25;
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v36);
    MEMORY[0x1B2718AE0](v24, v26);

    MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
    v37 = v19;
    LODWORD(v36) = HIDWORD(v32);
    goto LABEL_7;
  }

  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x6576206120746F6ELL, 0xEE00203A726F7463);
  sub_1AFDFE458();
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF92F69C(int64_t a1, void *a2, uint64_t a3)
{
  v6 = a1 >> 61;
  if (a1 >> 61 != 6)
  {
    goto LABEL_7;
  }

  if (a1 == 0xC000000000000058)
  {
    *&v124 = 0;
    *(&v124 + 1) = 0xE000000000000000;
    sub_1AF441150(a2, a2[3]);
    sub_1AFDFEDD8();
    v128[0] = v124;
    *&v129 = 46;
    *(&v129 + 1) = 0xE100000000000000;
    sub_1AF4486E4();
    if ((sub_1AFDFDF18() & 1) == 0)
    {
      *&v128[0] = sub_1AFDFCF98();
      *(&v128[0] + 1) = v19;
      *&v129 = 101;
      *(&v129 + 1) = 0xE100000000000000;
      v20 = sub_1AFDFDF18();

      if ((v20 & 1) == 0)
      {
        MEMORY[0x1B2718AE0](46, 0xE100000000000000);
      }
    }

    if (a3 == 3)
    {
      return v124;
    }

    v18 = 102;
LABEL_12:
    MEMORY[0x1B2718AE0](v18, 0xE100000000000000);
    return v124;
  }

  if (a1 != 0xC000000000000010)
  {
LABEL_7:
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1AFE4C420;
    v9 = sub_1AF90F890(v8 | 0x2000000000000000, a1);

    if (v9 & 1) != 0 || (v10 = swift_allocObject(), *(v10 + 16) = xmmword_1AFE4C430, v11 = sub_1AF90F890(v10 | 0x2000000000000000, a1), , (v11) || (v12 = swift_allocObject(), *(v12 + 16) = xmmword_1AFE4C440, v13 = sub_1AF90F890(v12 | 0x2000000000000000, a1), , (v13))
    {
      v14 = sub_1AF92F150(a1, a2, a3);
      v16 = v15;
LABEL_11:
      *&v124 = sub_1AF94B4E8(a3, a1);
      *(&v124 + 1) = v17;
      MEMORY[0x1B2718AE0](40, 0xE100000000000000);
      MEMORY[0x1B2718AE0](v14, v16);

      v18 = 41;
      goto LABEL_12;
    }

    v21 = swift_allocObject();
    *(v21 + 16) = 2;
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1AFE4C420;
    *(v21 + 24) = v22 | 0x2000000000000000;
    v23 = sub_1AF90F890(v21 | 0x2000000000000000, a1);

    if (v23)
    {
      sub_1AF0D5A54(a2, &v124);
      type metadata accessor for simd_float2x2(0);
      swift_dynamicCast();
      v24 = v128[0];
      if (a3 == 3)
      {
        v25 = swift_allocObject();
        *(v25 + 16) = xmmword_1AFE4C420;
        sub_1AF9322B8(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
        v27 = v26;
        *(&v125 + 1) = v26;
        *&v124 = v24;
        v28 = sub_1AF92F150(v25 | 0x2000000000000000, &v124, 3);
        v30 = v29;

        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v124);
        *&v128[0] = v28;
        *(&v128[0] + 1) = v30;
        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        v31 = swift_allocObject();
        *(v31 + 16) = xmmword_1AFE4C420;
        *(&v125 + 1) = v27;
        *&v124 = *(&v24 + 1);
        v32 = v31 | 0x2000000000000000;
LABEL_30:
        v73 = sub_1AF92F150(v32, &v124, 3);
LABEL_37:
        v104 = v73;
        v105 = v74;

        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v124);
        MEMORY[0x1B2718AE0](v104, v105);

        v16 = *(&v128[0] + 1);
        v14 = *&v128[0];
        goto LABEL_11;
      }

      v49 = swift_allocObject();
      *(v49 + 16) = xmmword_1AFE4C420;
      sub_1AF9322B8(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
      v51 = v50;
      *(&v125 + 1) = v50;
      *&v124 = v24;
      v52 = sub_1AF92F69C(v49 | 0x2000000000000000, &v124, a3);
      v54 = v53;

      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v124);
      *&v128[0] = v52;
      *(&v128[0] + 1) = v54;
      MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
      v55 = swift_allocObject();
      *(v55 + 16) = xmmword_1AFE4C420;
      *(&v125 + 1) = v51;
      *&v124 = *(&v24 + 1);
      v56 = v55 | 0x2000000000000000;
LABEL_36:
      v73 = sub_1AF92F69C(v56, &v124, a3);
      goto LABEL_37;
    }

    v33 = swift_allocObject();
    *(v33 + 16) = 3;
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1AFE4C430;
    *(v33 + 24) = v34 | 0x2000000000000000;
    v35 = sub_1AF90F890(v33 | 0x2000000000000000, a1);

    if (v35)
    {
      sub_1AF0D5A54(a2, v128);
      type metadata accessor for simd_float3x3(0);
      swift_dynamicCast();
      v116 = v124;
      v118 = v125;
      v120 = v126;
      if (a3 == 3)
      {
        v36 = swift_allocObject();
        *(v36 + 16) = xmmword_1AFE4C430;
        sub_1AF9322B8(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
        v38 = v37;
        *(&v125 + 1) = v37;
        *&v124 = swift_allocObject();
        *(v124 + 16) = v116;
        v39 = sub_1AF92F150(v36 | 0x2000000000000000, &v124, 3);
        v41 = v40;

        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v124);
        *&v128[0] = v39;
        *(&v128[0] + 1) = v41;
        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        v42 = swift_allocObject();
        *(v42 + 16) = xmmword_1AFE4C430;
        *(&v125 + 1) = v38;
        *&v124 = swift_allocObject();
        *(v124 + 16) = v118;
        v43 = sub_1AF92F150(v42 | 0x2000000000000000, &v124, 3);
        v45 = v44;

        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v124);
        MEMORY[0x1B2718AE0](v43, v45);

        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        v46 = swift_allocObject();
        v47 = v46;
        v48 = xmmword_1AFE4C430;
LABEL_29:
        *(v46 + 16) = v48;
        *(&v125 + 1) = v38;
        *&v124 = swift_allocObject();
        *(v124 + 16) = v120;
        v32 = v47 | 0x2000000000000000;
        goto LABEL_30;
      }

      v75 = swift_allocObject();
      *(v75 + 16) = xmmword_1AFE4C430;
      sub_1AF9322B8(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
      v77 = v76;
      *(&v125 + 1) = v76;
      *&v124 = swift_allocObject();
      *(v124 + 16) = v116;
      v78 = sub_1AF92F69C(v75 | 0x2000000000000000, &v124, a3);
      v80 = v79;

      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v124);
      *&v128[0] = v78;
      *(&v128[0] + 1) = v80;
      MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
      v81 = swift_allocObject();
      *(v81 + 16) = xmmword_1AFE4C430;
      *(&v125 + 1) = v77;
      *&v124 = swift_allocObject();
      *(v124 + 16) = v118;
      v82 = sub_1AF92F69C(v81 | 0x2000000000000000, &v124, a3);
      v84 = v83;

      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v124);
      MEMORY[0x1B2718AE0](v82, v84);

      MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
      v85 = swift_allocObject();
      v86 = v85;
      v87 = xmmword_1AFE4C430;
      goto LABEL_35;
    }

    v57 = swift_allocObject();
    *(v57 + 16) = 4;
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_1AFE4C440;
    *(v57 + 24) = v58 | 0x2000000000000000;
    v59 = sub_1AF90F890(v57 | 0x2000000000000000, a1);

    if (v59)
    {
      sub_1AF0D5A54(a2, v128);
      type metadata accessor for simd_float4x4(0);
      swift_dynamicCast();
      v115 = v124;
      v117 = v125;
      v119 = v126;
      v120 = v127;
      if (a3 == 3)
      {
        v60 = swift_allocObject();
        *(v60 + 16) = xmmword_1AFE4C440;
        sub_1AF9322B8(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
        v38 = v61;
        *(&v125 + 1) = v61;
        *&v124 = swift_allocObject();
        *(v124 + 16) = v115;
        v62 = sub_1AF92F150(v60 | 0x2000000000000000, &v124, 3);
        v64 = v63;

        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v124);
        *&v128[0] = v62;
        *(&v128[0] + 1) = v64;
        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        v65 = swift_allocObject();
        *(v65 + 16) = xmmword_1AFE4C440;
        *(&v125 + 1) = v38;
        *&v124 = swift_allocObject();
        *(v124 + 16) = v117;
        v66 = sub_1AF92F150(v65 | 0x2000000000000000, &v124, 3);
        v68 = v67;

        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v124);
        MEMORY[0x1B2718AE0](v66, v68);

        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        v69 = swift_allocObject();
        *(v69 + 16) = xmmword_1AFE4C440;
        *(&v125 + 1) = v38;
        *&v124 = swift_allocObject();
        *(v124 + 16) = v119;
        v70 = sub_1AF92F150(v69 | 0x2000000000000000, &v124, 3);
        v72 = v71;

        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v124);
        MEMORY[0x1B2718AE0](v70, v72);

        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        v46 = swift_allocObject();
        v47 = v46;
        v48 = xmmword_1AFE4C440;
        goto LABEL_29;
      }

      v91 = swift_allocObject();
      *(v91 + 16) = xmmword_1AFE4C440;
      sub_1AF9322B8(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
      v77 = v92;
      *(&v125 + 1) = v92;
      *&v124 = swift_allocObject();
      *(v124 + 16) = v115;
      v93 = sub_1AF92F69C(v91 | 0x2000000000000000, &v124, a3);
      v95 = v94;

      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v124);
      *&v128[0] = v93;
      *(&v128[0] + 1) = v95;
      MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
      v96 = swift_allocObject();
      *(v96 + 16) = xmmword_1AFE4C440;
      *(&v125 + 1) = v77;
      *&v124 = swift_allocObject();
      *(v124 + 16) = v117;
      v97 = sub_1AF92F69C(v96 | 0x2000000000000000, &v124, a3);
      v99 = v98;

      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v124);
      MEMORY[0x1B2718AE0](v97, v99);

      MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
      v100 = swift_allocObject();
      *(v100 + 16) = xmmword_1AFE4C440;
      *(&v125 + 1) = v77;
      *&v124 = swift_allocObject();
      *(v124 + 16) = v119;
      v101 = sub_1AF92F69C(v100 | 0x2000000000000000, &v124, a3);
      v103 = v102;

      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v124);
      MEMORY[0x1B2718AE0](v101, v103);

      MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
      v85 = swift_allocObject();
      v86 = v85;
      v87 = xmmword_1AFE4C440;
LABEL_35:
      *(v85 + 16) = v87;
      *(&v125 + 1) = v77;
      *&v124 = swift_allocObject();
      *(v124 + 16) = v120;
      v56 = v86 | 0x2000000000000000;
      goto LABEL_36;
    }

    v88 = swift_allocObject();
    *(v88 + 16) = xmmword_1AFE85120;
    v89 = sub_1AF90F890(v88 | 0x2000000000000000, a1);

    if (v89)
    {
      sub_1AF0D5A54(a2, &v124);
      sub_1AF9322B8(0, &qword_1ED722EC8, sub_1AF477C08, MEMORY[0x1E69E72F0], MEMORY[0x1E69E7428]);
      swift_dynamicCast();
      v123 = DWORD1(v128[0]);
      *&v124 = sub_1AFDFEA08();
      *(&v124 + 1) = v90;
      MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
      LODWORD(v128[0]) = v123;
LABEL_40:
      v110 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v110);

LABEL_41:
      v16 = *(&v124 + 1);
      v14 = v124;
      goto LABEL_11;
    }

    v106 = swift_allocObject();
    *(v106 + 16) = xmmword_1AFE85130;
    v107 = sub_1AF90F890(v106 | 0x2000000000000000, a1);

    if (v107)
    {
      sub_1AF0D5A54(a2, &v124);
      sub_1AF9322B8(0, &qword_1ED72F730, sub_1AF477BB4, MEMORY[0x1E69E7668], MEMORY[0x1E69E7450]);
      swift_dynamicCast();
      v121 = v128[0];
      *&v124 = sub_1AFDFEA08();
      *(&v124 + 1) = v108;
      MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
      LODWORD(v128[0]) = DWORD1(v121);
      v109 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v109);

      MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
      LODWORD(v128[0]) = DWORD2(v121);
      goto LABEL_40;
    }

    if (v6 == 3)
    {
      if (a3 == 3)
      {
        return 23899;
      }
    }

    else if (v6 == 6)
    {
      if (a1 <= 0xC00000000000006FLL)
      {
        if (a1 == 0xC000000000000018)
        {
          return 1280070990;
        }

        if (a1 == 0xC000000000000028)
        {
          v111 = swift_allocObject();
          *(v111 + 16) = xmmword_1AFE4C440;
          sub_1AF0D5A54(a2, v128);
          type metadata accessor for simd_quatf(0);
          swift_dynamicCast();
          v122 = v129;
          sub_1AF9322B8(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
          *(&v125 + 1) = v112;
          *&v124 = swift_allocObject();
          *(v124 + 16) = v122;
          v113 = sub_1AF92F69C(v111 | 0x2000000000000000, &v124, a3);

          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v124);
          return v113;
        }

        goto LABEL_60;
      }

      if (a1 > 0xC000000000000087)
      {
        if (a1 == 0xC0000000000000B8)
        {
          return 0xD000000000000014;
        }

        v114 = 136;
      }

      else
      {
        if (a1 == 0xC000000000000070)
        {
          if (a3 == 3)
          {
            sub_1AF0D5A54(a2, &v124);
            swift_dynamicCast();
            *&v129 = 34;
            *(&v129 + 1) = 0xE100000000000000;
            MEMORY[0x1B2718AE0](*&v128[0], *(&v128[0] + 1));

            MEMORY[0x1B2718AE0](34, 0xE100000000000000);
            return v129;
          }

          goto LABEL_61;
        }

        v114 = 120;
      }

      if (a1 == (v114 & 0xFFFFFFFFFFFFLL | 0xC000000000000000))
      {
LABEL_61:
        result = sub_1AFDFE518();
        __break(1u);
        return result;
      }
    }

LABEL_60:
    *&v124 = 0;
    *(&v124 + 1) = 0xE000000000000000;
    sub_1AF441150(a2, a2[3]);
    sub_1AFDFEDD8();
    goto LABEL_41;
  }

  sub_1AF0D5A54(a2, &v124);
  swift_dynamicCast();
  if (LOBYTE(v128[0]))
  {
    return 1702195828;
  }

  else
  {
    return 0x65736C6166;
  }
}

uint64_t sub_1AF930984(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 >> 61 == 3)
  {
    if (a5 != 3)
    {
      sub_1AFDFE218();

      v93 = 0xD000000000000017;
      v94 = 0x80000001AFF3ADF0;
      MEMORY[0x1B2718AE0](a3, a4);
      MEMORY[0x1B2718AE0](15145, 0xE200000000000000);
      return 0xD00000000000001ALL;
    }

    v8 = 3;
    return sub_1AF92F69C(a1, a2, v8);
  }

  if (a1 >> 61 != 6)
  {
LABEL_8:
    v8 = a5;
    return sub_1AF92F69C(a1, a2, v8);
  }

  if (a1 == 0xC000000000000088)
  {
    v82 = a3;
    v83 = a4;
    sub_1AF0D5A54(a2, &v93);
    sub_1AF8C0110(0, v24, v25, v26);
    swift_dynamicCast();
    v27 = v87;
    v28 = v92;
    v29 = *(v87 + 16);
    v30 = MEMORY[0x1E69E7CC0];
    if (v29)
    {
      v89 = MEMORY[0x1E69E7CC0];
      sub_1AFC05CE4(0, v29, 0);
      v30 = v89;
      v31 = (v27 + 32);
      v32 = MEMORY[0x1E69E6448];
      do
      {
        v33 = *v31;
        v95 = v32;
        LODWORD(v93) = v33;
        v34 = sub_1AF92F69C(0xC000000000000058, &v93, a5);
        v36 = v35;
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v93);
        v38 = *(v89 + 16);
        v37 = *(v89 + 24);
        if (v38 >= v37 >> 1)
        {
          sub_1AFC05CE4(v37 > 1, v38 + 1, 1);
        }

        *(v89 + 16) = v38 + 1;
        v39 = v89 + 16 * v38;
        *(v39 + 32) = v34;
        *(v39 + 40) = v36;
        ++v31;
        --v29;
      }

      while (v29);
      v28 = v92;
    }

    v93 = v30;
    sub_1AF9326D8(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1AF488088();
    v60 = sub_1AFDFCD98();
    v62 = v61;

    v63 = *(v28 + 16);
    v64 = MEMORY[0x1E69E7CC0];
    if (v63)
    {
      v80 = v60;
      v81 = v62;
      v91 = MEMORY[0x1E69E7CC0];
      sub_1AFC05CE4(0, v63, 0);
      v64 = v91;
      v65 = (v28 + 32);
      v66 = MEMORY[0x1E69E6448];
      do
      {
        v67 = *v65;
        v95 = v66;
        LODWORD(v93) = v67;
        v68 = sub_1AF92F69C(0xC000000000000058, &v93, a5);
        v70 = v69;
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v93);
        v72 = *(v91 + 16);
        v71 = *(v91 + 24);
        if (v72 >= v71 >> 1)
        {
          sub_1AFC05CE4(v71 > 1, v72 + 1, 1);
        }

        *(v91 + 16) = v72 + 1;
        v73 = v91 + 16 * v72;
        *(v73 + 32) = v68;
        *(v73 + 40) = v70;
        ++v65;
        --v63;
      }

      while (v63);
      v60 = v80;
      v62 = v81;
    }

    v93 = v64;
    v74 = sub_1AFDFCD98();
    v76 = v75;

    v93 = 0;
    v94 = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD00000000000003DLL, 0x80000001AFF3ACC0);
    MEMORY[0x1B2718AE0](v60, v62);

    MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF3AD00);
    MEMORY[0x1B2718AE0](v74, v76);

    MEMORY[0x1B2718AE0](0x202020200A2C7DLL, 0xE700000000000000);
    v77 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v77);

    MEMORY[0x1B2718AE0](41, 0xE100000000000000);
    v59 = v93;
    v93 = 0;
    v94 = 0xE000000000000000;
    sub_1AFDFE218();

    v93 = 0xD00000000000002ALL;
    v94 = 0x80000001AFF3AD20;
    goto LABEL_39;
  }

  if (a1 == 0xC000000000000078)
  {
    v82 = a3;
    v83 = a4;
    sub_1AF0D5A54(a2, &v93);
    swift_dynamicCast();
    v11 = v87;
    v12 = v92;
    v13 = *(v87 + 16);
    v14 = MEMORY[0x1E69E7CC0];
    if (v13)
    {
      v88 = MEMORY[0x1E69E7CC0];
      sub_1AFC05CE4(0, v13, 0);
      v14 = v88;
      v15 = (v11 + 32);
      do
      {
        v85 = *v15;
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_1AFE4C440;
        sub_1AF9322B8(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
        v95 = v17;
        v93 = swift_allocObject();
        *(v93 + 16) = v85;
        v18 = sub_1AF92F69C(v16 | 0x2000000000000000, &v93, a5);
        v20 = v19;

        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v93);
        v22 = *(v88 + 16);
        v21 = *(v88 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_1AFC05CE4(v21 > 1, v22 + 1, 1);
        }

        *(v88 + 16) = v22 + 1;
        v23 = v88 + 16 * v22;
        *(v23 + 32) = v18;
        *(v23 + 40) = v20;
        ++v15;
        --v13;
      }

      while (v13);
      v12 = v92;
    }

    v93 = v14;
    sub_1AF9326D8(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1AF488088();
    v40 = sub_1AFDFCD98();
    v42 = v41;

    v43 = *(v12 + 16);
    v44 = MEMORY[0x1E69E7CC0];
    if (v43)
    {
      v84 = v40;
      v86 = v42;
      v45 = MEMORY[0x1E69E6448];
      v90 = MEMORY[0x1E69E7CC0];
      sub_1AFC05CE4(0, v43, 0);
      v44 = v90;
      v46 = (v12 + 32);
      do
      {
        v47 = *v46;
        v95 = v45;
        LODWORD(v93) = v47;
        v48 = sub_1AF92F69C(0xC000000000000058, &v93, a5);
        v50 = v49;
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v93);
        v52 = *(v90 + 16);
        v51 = *(v90 + 24);
        if (v52 >= v51 >> 1)
        {
          sub_1AFC05CE4(v51 > 1, v52 + 1, 1);
        }

        *(v90 + 16) = v52 + 1;
        v53 = v90 + 16 * v52;
        *(v53 + 32) = v48;
        *(v53 + 40) = v50;
        ++v46;
        --v43;
      }

      while (v43);
      v42 = v86;
      v40 = v84;
    }

    v93 = v44;
    v54 = sub_1AFDFCD98();
    v56 = v55;

    v93 = 0;
    v94 = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD000000000000048, 0x80000001AFF3AD50);
    MEMORY[0x1B2718AE0](v40, v42);

    MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF3AD00);
    MEMORY[0x1B2718AE0](v54, v56);

    MEMORY[0x1B2718AE0](0x202020200A2C7DLL, 0xE700000000000000);
    v57 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v57);

    MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
    v58 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v58);

    MEMORY[0x1B2718AE0](41, 0xE100000000000000);
    v59 = v93;
    v93 = 0;
    v94 = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD00000000000002FLL, 0x80000001AFF3ADA0);
LABEL_39:
    MEMORY[0x1B2718AE0](v82, v83);
    MEMORY[0x1B2718AE0](15145, 0xE200000000000000);
    return v59;
  }

  if (a1 != 0xC000000000000070)
  {
    goto LABEL_8;
  }

  if (a5 == 3)
  {
    sub_1AF0D5A54(a2, &v93);
    swift_dynamicCast();
    MEMORY[0x1B2718AE0]();

    MEMORY[0x1B2718AE0](34, 0xE100000000000000);
    return 34;
  }

  else
  {
    v93 = 0;
    v94 = 0xE000000000000000;
    sub_1AFDFE218();

    sub_1AF0D5A54(a2, &v93);
    swift_dynamicCast();
    MEMORY[0x1B2718AE0]();

    MEMORY[0x1B2718AE0](10530, 0xE200000000000000);
    v93 = 0;
    v94 = 0xE000000000000000;
    sub_1AFDFE218();

    v93 = 0xD00000000000002BLL;
    v94 = 0x80000001AFF3AE40;
    MEMORY[0x1B2718AE0](a3, a4);
    MEMORY[0x1B2718AE0](15145, 0xE200000000000000);
    return 0xD00000000000002BLL;
  }
}

uint64_t sub_1AF931410(unint64_t a1, uint64_t a2)
{
  if (a2 || (a1 & 0xE000000000000000) != 0x2000000000000000)
  {
    return sub_1AF94B594(a2, a1);
  }

  if (*((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18) >> 61 == 1)
  {
    return 0x74616D5F646D6973;
  }

  v3 = sub_1AF94B594(0, a1);
  MEMORY[0x1B2718AE0](v3);

  return 0x5F656B616DLL;
}

uint64_t sub_1AF9314CC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, char a6)
{
  if (a5 >> 61 == 1 && *((a5 & 0x1FFFFFFFFFFFFFFFLL) + 0x18) >> 61 != 1)
  {
    if (a6 == 3)
    {
      v15 = 0;
      sub_1AFDFE218();
      MEMORY[0x1B2718AE0](0xD000000000000038, 0x80000001AFF3AFE0);
      MEMORY[0x1B2718AE0](a1, a2);
      v12 = 8236;
      v13 = 0xE200000000000000;
    }

    else
    {
      sub_1AFDFE218();

      v15 = 0x286C6C615F786676;
      MEMORY[0x1B2718AE0](a1, a2);
      v12 = 540884256;
      v13 = 0xE400000000000000;
    }

    MEMORY[0x1B2718AE0](v12, v13);
    MEMORY[0x1B2718AE0](a3, a4);
    v8 = 41;
    v9 = 0xE100000000000000;
  }

  else
  {
    v15 = a1;

    MEMORY[0x1B2718AE0](540884256, 0xE400000000000000);
    v8 = a3;
    v9 = a4;
  }

  MEMORY[0x1B2718AE0](v8, v9);
  return v15;
}

uint64_t sub_1AF931644(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, char a6)
{
  if (a5 >> 61 == 1 && *((a5 & 0x1FFFFFFFFFFFFFFFLL) + 0x18) >> 61 != 1)
  {
    v10 = 33;
    v8 = sub_1AF9314CC(a1, a2, a3, a4, a5, a6);
    MEMORY[0x1B2718AE0](v8);
  }

  else
  {
    v10 = a1;

    MEMORY[0x1B2718AE0](540877088, 0xE400000000000000);
    MEMORY[0x1B2718AE0](a3, a4);
  }

  return v10;
}

uint64_t sub_1AF9316FC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1AF937FF8(a6, a3);
  if ((~v12 & 0xF000000000000007) == 0)
  {
    sub_1AF442064(a3);
    v12 = a3;
  }

  if (a6 == 3)
  {
    v18 = 0x2074736E6F63;
  }

  else
  {
    v18 = 0;
    v13 = sub_1AF937FF8(a6, v12);
    if ((~v13 & 0xF000000000000007) == 0)
    {
      sub_1AF442064(v12);
      v13 = v12;
    }

    v14 = sub_1AF94B594(a6, v13);
    v16 = v15;
    sub_1AF445BE4(v13);
    MEMORY[0x1B2718AE0](v14, v16);

    MEMORY[0x1B2718AE0](32, 0xE100000000000000);
  }

  MEMORY[0x1B2718AE0](a1, a2);
  MEMORY[0x1B2718AE0](2112800, 0xE300000000000000);
  MEMORY[0x1B2718AE0](a4, a5);
  MEMORY[0x1B2718AE0](59, 0xE100000000000000);
  sub_1AF445BE4(v12);
  return v18;
}

uint64_t sub_1AF931868(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 >> 61 == 1)
  {
    if (a3 == 3)
    {
      v3 = &unk_1F2504C60;
    }

    else
    {
      v3 = &unk_1F2504CC0;
    }

    v7 = v3[2 * a2];

    swift_arrayDestroy();
    return v7;
  }

  if (!(a1 >> 61))
  {
    v6 = *(a1 + 16);
    sub_1AF442064(v6);
    v7 = sub_1AF931868(v6, a2, a3);
    sub_1AF445BE4(v6);
    return v7;
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF931974(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, unint64_t a5, uint64_t a6, __n128 a7)
{
  v7 = a5;
  if (a6 == 3)
  {
    v12 = *(a4 + 16);
    v13 = MEMORY[0x1E69E7CC0];
    if (v12)
    {
      v67[0] = MEMORY[0x1E69E7CC0];
      sub_1AFC078EC(0, v12, 0);
      v13 = v67[0];
      v14 = (a4 + 32);
      do
      {
        v16 = *v14;
        v14 += 3;
        v15 = v16;
        sub_1AF442064(v16);
        v67[0] = v13;
        v18 = *(v13 + 16);
        v17 = *(v13 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_1AFC078EC(v17 > 1, v18 + 1, 1);
          v13 = v67[0];
        }

        *(v13 + 16) = v18 + 1;
        *(v13 + 8 * v18 + 32) = v15;
        --v12;
      }

      while (v12);
      v7 = a5;
    }

    sub_1AF9326D8(0, &qword_1EB630990, &type metadata for AnyType, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1AFE431C0;
    *(inited + 32) = v7;
    v67[0] = v13;
    sub_1AF442064(v7);
    sub_1AF490E0C(inited);
    v22 = v13;
    v23 = *(v13 + 16);
    if (v23)
    {
      v24 = (v22 + 32);
      do
      {
        v26 = *v24++;
        v25 = v26;
        if (v26 >> 61 == 1 && *((v25 & 0x1FFFFFFFFFFFFFFFLL) + 0x18) >> 61 != 1)
        {

          v27 = sub_1AF38C6BC(a3);
          if (!v27)
          {
            v67[0] = 0;
            v67[1] = 0xE000000000000000;
            sub_1AFDFE218();
            MEMORY[0x1B2718AE0](0xD00000000000001ELL, 0x80000001AFF3AF60);
            v59 = sub_1AFDFC338();
            MEMORY[0x1B2718AE0](v59);

            MEMORY[0x1B2718AE0](0xD000000000000054, 0x80000001AFF3AF80);
            goto LABEL_35;
          }

          _Block_release(v27);
          sub_1AF445BE4(v25);
        }

        --v23;
      }

      while (v23);
    }

    v67[0] = 0xD000000000000014;
    v67[1] = 0x80000001AFF3AF40;
    sub_1AF442064(v7);

    v28.n128_f64[0] = MEMORY[0x1B2718AE0](40, 0xE100000000000000);
    v29 = sub_1AF932320(a1, a2, a3, a4, v7, v28);
    v30 = v29;
    v31 = *(v29 + 16);
    if (v31)
    {
      v32 = 0;
      v33 = (v29 + 40);
      do
      {
        v35 = *(v33 - 1);
        v34 = *v33;
        v65 = v35;
        v66 = *v33;
        swift_bridgeObjectRetain_n();
        v36 = sub_1AFDFD188();

        if (v36)
        {
          sub_1AFDFD048();
          sub_1AFDFD078();
          v37 = sub_1AFDFD1F8();
          v39 = v38;
          v41 = v40;
          v43 = v42;

          v35 = MEMORY[0x1B27189E0](v37, v39, v41, v43);
          v34 = v44;

          v65 = v35;
          v66 = v34;
        }

        if (v32 != *(v30 + 16) - 1)
        {
          MEMORY[0x1B2718AE0](44, 0xE100000000000000);
          MEMORY[0x1B2718AE0](32, 0xE100000000000000);
          v35 = v65;
          v34 = v66;
        }

        ++v32;
        MEMORY[0x1B2718AE0](v35, v34);

        v33 += 4;
      }

      while (v31 != v32);
    }

    MEMORY[0x1B2718AE0](41, 0xE100000000000000);
    sub_1AF445BE4(a5);

    return v67[0];
  }

  else
  {
    if (sub_1AF90F890(a5, 0xC000000000000000))
    {
      v20 = 0xE400000000000000;
      v63 = 1684631414;
    }

    else
    {
      v46 = sub_1AF937FF8(a6, v7);
      if ((~v46 & 0xF000000000000007) == 0)
      {
        sub_1AF442064(v7);
        v46 = v7;
      }

      v63 = sub_1AF94B594(a6, v46);
      v20 = v47;
      sub_1AF445BE4(v46);
    }

    v48 = sub_1AFDFC338();
    v50 = v49;
    v67[0] = v48;
    v67[1] = v49;
    sub_1AF4486E4();
    v51 = sub_1AFDFDEB8();
    v53 = v52;
    if (qword_1EB6372E0 != -1)
    {
      swift_once();
    }

    v54 = qword_1EB6C35A8;
    v55 = unk_1EB6C35B0;
    v67[0] = qword_1EB6C35A8;
    v67[1] = unk_1EB6C35B0;

    if (sub_1AFDFDF18() & 1) != 0 && (v67[0] = v54, v67[1] = v55, v56 = sub_1AFDFDF18(), , (v56))
    {

      strcpy(v67, "vfx_msgSend<");
      BYTE5(v67[1]) = 0;
      HIWORD(v67[1]) = -5120;
      MEMORY[0x1B2718AE0](v63, v20);

      MEMORY[0x1B2718AE0](62, 0xE100000000000000);

      sub_1AFA552B0(v67[0], v67[1], 1, a1, a2, v51, v53, a4);
      v58 = v57;

      swift_bridgeObjectRelease_n();

      return v58;
    }

    else
    {
      v67[0] = 0;
      v67[1] = 0xE000000000000000;
      sub_1AFDFE218();
      MEMORY[0x1B2718AE0](0xD000000000000016, 0x80000001AFF3AEF0);
      MEMORY[0x1B2718AE0](v48, v50);
      MEMORY[0x1B2718AE0](0xD000000000000029, 0x80000001AFF3AF10);
LABEL_35:
      result = sub_1AFDFE518();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1AF932090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  sub_1AF9326D8(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  *(inited + 48) = 0;
  *(inited + 56) = 0;

  MEMORY[0x1B2718AE0](a3, a4);
  MEMORY[0x1B2718AE0](41, 0xE100000000000000);
  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_1AFE431C0;
  *(v12 + 32) = 0x286C65735FLL;
  *(v12 + 40) = 0xE500000000000000;
  *(v12 + 48) = 0;
  *(v12 + 56) = 0;
  v13 = *(a5 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  if (v13)
  {
    v25 = MEMORY[0x1E69E7CC0];
    sub_1AFC05CE4(0, v13, 0);
    v14 = v25;
    v15 = (a5 + 48);
    do
    {
      v17 = *(v15 - 1);
      v16 = *v15;
      v18 = *(v25 + 16);
      v19 = *(v25 + 24);

      if (v18 >= v19 >> 1)
      {
        sub_1AFC05CE4(v19 > 1, v18 + 1, 1);
      }

      *(v25 + 16) = v18 + 1;
      v20 = v25 + 16 * v18;
      *(v20 + 32) = v17;
      *(v20 + 40) = v16;
      v15 += 3;
      --v13;
    }

    while (v13);
  }

  v21 = sub_1AFA54F5C(v14);

  sub_1AF441DD8(0);
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_1AFE4C680;
  *(v22 + 32) = inited;
  *(v22 + 40) = v12;
  *(v22 + 48) = v21;
  v23 = sub_1AFA56CA0();
  swift_setDeallocating();
  sub_1AF9326D8(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
  swift_arrayDestroy();
  return v23;
}

void sub_1AF9322B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1AF932320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, __n128 a6)
{
  sub_1AF9326D8(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  *(inited + 48) = 0;
  *(inited + 56) = 0;

  v11 = sub_1AFDFC338();
  MEMORY[0x1B2718AE0](v11);

  MEMORY[0x1B2718AE0](34, 0xE100000000000000);
  v12 = swift_initStackObject();
  v13 = v12;
  *(v12 + 16) = xmmword_1AFE431C0;
  *(v12 + 32) = 34;
  *(v12 + 40) = 0xE100000000000000;
  *(v12 + 48) = 0;
  *(v12 + 56) = 0;
  v14 = *(a4 + 16);
  if (v14)
  {
    v33 = v12;
    v34 = a5;
    v35 = inited;
    v36 = MEMORY[0x1E69E7CC0];
    sub_1AFC05CE4(0, v14, 0);
    v15 = (a4 + 48);
    do
    {
      v17 = *(v15 - 2);
      v16 = *(v15 - 1);
      v18 = *v15;
      sub_1AF442064(v17);

      sub_1AF9102F8(v17);
      v37 = sub_1AFDFEA08();
      v39 = v19;
      MEMORY[0x1B2718AE0](11374, 0xE200000000000000);
      MEMORY[0x1B2718AE0](v16, v18);
      sub_1AF445BE4(v17);

      v21 = *(v36 + 16);
      v20 = *(v36 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1AFC05CE4(v20 > 1, v21 + 1, 1);
      }

      *(v36 + 16) = v21 + 1;
      v22 = v36 + 16 * v21;
      *(v22 + 32) = v37;
      *(v22 + 40) = v39;
      v15 += 3;
      --v14;
    }

    while (v14);
    inited = v35;
    v13 = v33;
    a5 = v34;
  }

  v23 = MEMORY[0x1E69E62F8];
  sub_1AF9326D8(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1AF488088();
  v24 = sub_1AFDFCD98();
  v26 = v25;

  MEMORY[0x1B2718AE0](v24, v26);

  MEMORY[0x1B2718AE0](93, 0xE100000000000000);

  v27 = swift_initStackObject();
  *(v27 + 16) = xmmword_1AFE431C0;
  *(v27 + 32) = 91;
  *(v27 + 40) = 0xE100000000000000;
  *(v27 + 48) = 0;
  *(v27 + 56) = 0;
  sub_1AF9102F8(a5);
  v38 = sub_1AFDFEA08();
  v40 = v28;
  MEMORY[0x1B2718AE0](110, 0xE100000000000000);
  v29 = swift_initStackObject();
  *(v29 + 16) = xmmword_1AFE431C0;
  *(v29 + 32) = v38;
  *(v29 + 40) = v40;
  sub_1AF441DD8(0);
  *(v29 + 48) = 0;
  *(v29 + 56) = 0;
  v30 = swift_initStackObject();
  *(v30 + 16) = xmmword_1AFE4C6A0;
  *(v30 + 32) = &unk_1F2504B80;
  *(v30 + 40) = inited;
  *(v30 + 48) = v13;
  *(v30 + 56) = v27;
  *(v30 + 64) = v29;
  v31 = sub_1AFA56CA0();
  swift_setDeallocating();
  sub_1AF9326D8(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, v23);
  swift_arrayDestroy();
  return v31;
}

void sub_1AF9326D8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1AF932728()
{
  v1 = *(v0 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (v1 >> 62)
  {
    v2 = sub_1AFDFE108();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1B2719C70](i, v1);
        v4 = v5;
      }

      else
      {
        v4 = *(v1 + 8 * i + 32);
      }

      (*(*v4 + 152))(&v11, v5);
      v6 = v12;
      v22 = v12;
      v21 = v11;
      sub_1AF9121F8(&v21, &qword_1EB638968, &type metadata for TypeConstraint);
      v20 = v13;
      sub_1AF9121F8(&v20, &qword_1EB638968, &type metadata for TypeConstraint);
      v19 = v14;
      sub_1AF91219C(&v19);
      v18 = v15;
      sub_1AF91219C(&v18);
      v17 = v16;
      sub_1AF9121F8(&v17, &qword_1EB638978, &type metadata for AnyValue);
      v7 = *(v6 + 16);
      sub_1AF9121F8(&v22, &qword_1EB638968, &type metadata for TypeConstraint);
      if (v7)
      {
      }

      else
      {
        sub_1AFDFE328();
        sub_1AFDFE398();
        sub_1AFDFE3A8();
        sub_1AFDFE348();
      }
    }

    v8 = v10;
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  return v8;
}

uint64_t sub_1AF932A04(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

BOOL sub_1AF932A58(char *a1)
{
  v45 = a1;
  v55 = *MEMORY[0x1E69E9840];
  v44 = *v1;
  v54 = 0;
  v2 = sub_1AF932728();
  if (v2 >> 62)
  {
    v26 = v2;
    v3 = sub_1AFDFE108();
    v2 = v26;
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_36:

    goto LABEL_37;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_36;
  }

LABEL_3:
  v4 = 0;
  v42 = v2 & 0xC000000000000001;
  v40 = v2;
  v38[1] = v1;
  v39 = v2 + 32;
  v41 = xmmword_1AFE4C3E0;
  v5 = MEMORY[0x1E69E7CC0];
  v43 = v3;
  do
  {
    if (v42)
    {
      v6 = MEMORY[0x1B2719C70](v4, v40);
    }

    else
    {
      v6 = *(v39 + 8 * v4);
    }

    type metadata accessor for OnParticleStageNode(0);
    v7 = swift_dynamicCastClass();
    v49 = v4;
    if (v7 || (type metadata accessor for StartNode(0), swift_dynamicCastClass()) && **(*(v6 + 16) + 32) == _TtC3VFX29InspectorSetParticleValueNode)
    {
      v8 = 1;
      goto LABEL_14;
    }

    type metadata accessor for _OnNode(0);
    if (swift_dynamicCastClass())
    {
      goto LABEL_13;
    }

    if (swift_dynamicCastClass())
    {
      v24 = *(*(v6 + 16) + 32);
      type metadata accessor for OnTriggerNode(0);
      if (!swift_dynamicCastClass())
      {
        v8 = 0;
        v9 = *v24 == _TtC3VFX17SubGraphEnterNode;
        goto LABEL_15;
      }

LABEL_13:
      v8 = 0;
LABEL_14:
      v9 = 1;
      goto LABEL_15;
    }

    v8 = 0;
    v9 = 0;
LABEL_15:
    sub_1AF9374E4(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    *(v10 + 16) = v41;
    *(v10 + 32) = v6;
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    MEMORY[0x1EEE9AC00](v11);
    v34 = v8;
    v35 = &v54;
    v36 = v45;
    LOBYTE(v37) = v9;
    MEMORY[0x1EEE9AC00](v12);
    v33[0] = sub_1AF937534;
    v33[1] = v13;
    v48 = v6;

    v52 = sub_1AF42B0F4(v5);
    v53 = v14;
    v46 = v11 + 16;
    v15 = *(v11 + 16);
    v16 = sub_1AF42B2DC(v5);
    v50 = v5;
    v51 = v16;
    if (v15 >> 62)
    {
      v17 = sub_1AFDFE108();
    }

    else
    {
      v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v47 = v38;
    swift_bridgeObjectRetain_n();

    if (v17)
    {
      for (i = 0; i != v17; ++i)
      {
        if ((v15 & 0xC000000000000001) != 0)
        {
          v19 = MEMORY[0x1B2719C70](i, v15);
        }

        else
        {
          v19 = *(v15 + 8 * i + 32);
        }

        sub_1AF3DC99C(v19, 1, 0x1000000000000000uLL, 0, v5, sub_1AF449DD8, &v32, &v51, &v52, &v50);
      }
    }

    if (v50 >> 62)
    {
      v20 = sub_1AFDFE108();
    }

    else
    {
      v20 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v21 = v43;
    v22 = v49;
    if (v20)
    {

      sub_1AF48F7F8(v23);
    }

    v4 = v22 + 1;
  }

  while (v4 != v21);

LABEL_37:
  MEMORY[0x1EEE9AC00](v25);
  v36 = &v54;
  v37 = v45;
  MEMORY[0x1EEE9AC00](v27);
  v33[2] = sub_1AF937558;
  v33[3] = v28;
  v29 = MEMORY[0x1E69E7CC0];
  v52 = sub_1AF42B0F4(MEMORY[0x1E69E7CC0]);
  v53 = v30;
  sub_1AF412D4C(sub_1AF449DD8, v33, 1, 0x1000000000000000uLL, 0, v29, &v52);

  return (v54 & 1) == 0;
}

uint64_t sub_1AF933064(uint64_t a1)
{
  sub_1AF447040(v1, &v7);
  v3 = v7;
  if (v10)
  {
    if (v10 == 1)
    {
      sub_1AF447144(v8, v6);
      MEMORY[0x1B271ACB0](3);
      sub_1AFDFCEF8();
      sub_1AFDFD038();

      sub_1AF9AC90C(a1);

      return sub_1AF4470F0(v6);
    }

    else
    {
      v5 = v9 || v8[2] | v8[3] | v7 | v8[1] | v8[0];
      return MEMORY[0x1B271ACB0](v5);
    }
  }

  else
  {
    MEMORY[0x1B271ACB0](2);
    return sub_1AFDFF2A8();
  }
}

uint64_t sub_1AF933164()
{
  sub_1AFDFF288();
  sub_1AF933064(v1);
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF9331A8(uint64_t a1)
{
  sub_1AFDFF288();
  sub_1AF933064(v2);
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF9331E8(uint64_t a1, char a2, _BYTE *a3, uint64_t a4, int a5)
{
  v6 = v5;
  v93 = a5;
  v94 = a4;
  v10 = type metadata accessor for GraphError(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v88 - v14;
  sub_1AF483618(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a1 + 8);
  if (a2)
  {
    v20 = *v19;
    v21 = swift_conformsToProtocol2();
    if (v21)
    {
      v91 = a3;
      v92 = v5;
      v22 = *(v21 + 24);
      v23 = v21;

      v24 = v22(v20, v23);
      a3 = v91;
      v6 = v92;
      v25 = v24;

      if (v25)
      {
        v26 = v10[5];
        v27 = OBJC_IVAR____TtC3VFX4Node_authoringID;
        v28 = sub_1AFDFC318();
        v29 = *(v28 - 8);
        (*(v29 + 16))(&v15[v26], v19 + v27, v28);
        (*(v29 + 56))(&v15[v26], 0, 1, v28);
        v15[v10[8]] = 0;
        *v15 = 0;
        v30 = &v15[v10[6]];
        *v30 = 1;
        v30[8] = -64;
        v31 = &v15[v10[7]];
        *v31 = 0xD000000000000045;
        *(v31 + 1) = 0x80000001AFF3B210;
        sub_1AF92385C(v15, v12);
        v12[v10[8]] = 1;
        v90 = sub_1AF9371BC();
        v89 = swift_allocError();
        sub_1AF92385C(v12, v32);
        v33 = OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics;
        v34 = v94;
        v35 = *(v94 + OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v34 + v33) = v35;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v35 = sub_1AF420408(0, v35[2] + 1, 1, v35);
          *(v94 + v33) = v35;
        }

        v38 = v35[2];
        v37 = v35[3];
        if (v38 >= v37 >> 1)
        {
          v35 = sub_1AF420408(v37 > 1, v38 + 1, 1, v35);
        }

        v35[2] = v38 + 1;
        v35[v38 + 4] = v89;
        *(v94 + v33) = v35;
        v39 = swift_allocError();
        sub_1AF937574(v12, v40, type metadata accessor for GraphError);
        sub_1AF9370EC(v15, type metadata accessor for GraphError);

        a3 = v91;
        v6 = v92;
      }
    }
  }

  else
  {
    type metadata accessor for _CurrentParticleValueNode(0);
    if (swift_dynamicCastClass() || (type metadata accessor for RandomNode(0), swift_dynamicCastClass()) && (, v87 = sub_1AF9A898C(), , (v87 - 3) <= 1u))
    {
      v91 = a3;
      v92 = v5;
      *a3 = 1;
      v41 = OBJC_IVAR____TtC3VFX4Node_authoringID;
      v42 = sub_1AFDFC318();
      v43 = *(v42 - 8);
      (*(v43 + 16))(v18, v19 + v41, v42);
      (*(v43 + 56))(v18, 0, 1, v42);
      sub_1AF9371BC();
      v44 = swift_allocError();
      v46 = v45;
      *(v45 + v10[8]) = 0;
      *v45 = 0;
      sub_1AF937574(v18, v45 + v10[5], sub_1AF483618);
      v47 = v46 + v10[6];
      *v47 = 1;
      v47[8] = -64;
      v48 = (v46 + v10[7]);
      *v48 = 0xD00000000000003ALL;
      v48[1] = 0x80000001AFF3B1D0;
      v49 = OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics;
      v50 = v94;
      v51 = *(v94 + OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics);
      v52 = swift_isUniquelyReferenced_nonNull_native();
      *(v50 + v49) = v51;
      if ((v52 & 1) == 0)
      {
        v51 = sub_1AF420408(0, v51[2] + 1, 1, v51);
        *(v94 + v49) = v51;
      }

      v54 = v51[2];
      v53 = v51[3];
      a3 = v91;
      if (v54 >= v53 >> 1)
      {
        v51 = sub_1AF420408(v53 > 1, v54 + 1, 1, v51);
      }

      v51[2] = v54 + 1;
      v51[v54 + 4] = v44;
      *(v94 + v49) = v51;
      v6 = v92;
    }
  }

  if ((v93 & 1) == 0 && sub_1AF974CEC() && *v19 != _TtC3VFX24InspectorSetECSValueNode)
  {
    v55 = *v19;
    type metadata accessor for InspectorSetWorldValueNode(0);
    v56 = swift_dynamicCastClass();
    if (v55 != _TtC3VFX29InspectorSetParticleValueNode && v56 == 0)
    {
      type metadata accessor for OnTriggerNode(0);
      v58 = swift_dynamicCastClass();
      if (v55 != _TtC3VFX17SubGraphEnterNode && !v58)
      {
        v92 = v6;
        v59 = a3;
        *a3 = 1;
        v60 = OBJC_IVAR____TtC3VFX4Node_authoringID;
        v61 = sub_1AFDFC318();
        v62 = *(v61 - 8);
        (*(v62 + 16))(v18, v19 + v60, v61);
        (*(v62 + 56))(v18, 0, 1, v61);
        sub_1AF9371BC();
        v63 = swift_allocError();
        v65 = v64;
        *(v64 + v10[8]) = 0;
        *v64 = 0;
        sub_1AF937574(v18, v64 + v10[5], sub_1AF483618);
        v66 = v65 + v10[6];
        *v66 = 1;
        v66[8] = -64;
        v67 = (v65 + v10[7]);
        *v67 = 0xD00000000000002ALL;
        v67[1] = 0x80000001AFF3AAE0;
        v68 = OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics;
        v69 = v94;
        v70 = *(v94 + OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics);
        v71 = swift_isUniquelyReferenced_nonNull_native();
        *(v69 + v68) = v70;
        if ((v71 & 1) == 0)
        {
          v70 = sub_1AF420408(0, v70[2] + 1, 1, v70);
          *(v94 + v68) = v70;
        }

        v73 = v70[2];
        v72 = v70[3];
        if (v73 >= v72 >> 1)
        {
          v70 = sub_1AF420408(v72 > 1, v73 + 1, 1, v70);
        }

        v70[2] = v73 + 1;
        v70[v73 + 4] = v63;
        *(v94 + v68) = v70;
        a3 = v59;
      }
    }
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
    *a3 = 1;
    v75 = OBJC_IVAR____TtC3VFX4Node_authoringID;
    v76 = sub_1AFDFC318();
    v77 = *(v76 - 8);
    (*(v77 + 16))(v18, v19 + v75, v76);
    (*(v77 + 56))(v18, 0, 1, v76);
    sub_1AF9371BC();
    v78 = swift_allocError();
    v80 = v79;
    *(v79 + v10[8]) = 0;
    *v79 = 0;
    sub_1AF937574(v18, v79 + v10[5], sub_1AF483618);
    v81 = v80 + v10[6];
    *v81 = 1;
    v81[8] = -64;
    *(v80 + v10[7]) = xmmword_1AFE85F50;
    v82 = OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics;
    v83 = v94;
    v84 = *(v94 + OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics);
    result = swift_isUniquelyReferenced_nonNull_native();
    *(v83 + v82) = v84;
    if ((result & 1) == 0)
    {
      result = sub_1AF420408(0, v84[2] + 1, 1, v84);
      v84 = result;
      *(v94 + v82) = result;
    }

    v86 = v84[2];
    v85 = v84[3];
    if (v86 >= v85 >> 1)
    {
      result = sub_1AF420408(v85 > 1, v86 + 1, 1, v84);
      v84 = result;
    }

    v84[2] = v86 + 1;
    v84[v86 + 4] = v78;
    *(v94 + v82) = v84;
  }

  return result;
}

void sub_1AF933C0C(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  sub_1AF483618(0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*(a1 + 16) + 16))
  {
    v10 = *(a1 + 8);
    (*(*v10 + 152))(&v28, v7);
    v11 = v29;
    v39 = v29;
    v38 = v28;
    sub_1AF93714C(&v38, &qword_1EB638968, &type metadata for TypeConstraint);
    v37 = v30;
    sub_1AF93714C(&v37, &qword_1EB638968, &type metadata for TypeConstraint);
    v36 = v31;
    sub_1AF9370EC(&v36, sub_1AF445C2C);
    v35 = v32;
    sub_1AF9370EC(&v35, sub_1AF445C2C);
    v34 = v33;
    sub_1AF93714C(&v34, &qword_1EB638978, &type metadata for AnyValue);
    v12 = *(v11 + 16);
    sub_1AF93714C(&v39, &qword_1EB638968, &type metadata for TypeConstraint);
    if (!v12)
    {
      type metadata accessor for StartNode(0);
      if (!swift_dynamicCastClass() || **(*(v10 + 2) + 32) != _TtC3VFX17SubGraphEnterNode)
      {
        *a2 = 1;
        v13 = OBJC_IVAR____TtC3VFX4Node_authoringID;
        v14 = sub_1AFDFC318();
        v15 = *(v14 - 8);
        (*(v15 + 16))(v9, &v10[v13], v14);
        (*(v15 + 56))(v9, 0, 1, v14);
        v16 = type metadata accessor for GraphError(0);
        sub_1AF9371BC();
        v17 = swift_allocError();
        v19 = v18;
        *(v18 + v16[8]) = 0;
        *v18 = 0;
        sub_1AF937574(v9, v18 + v16[5], sub_1AF483618);
        v20 = v19 + v16[6];
        *v20 = 1;
        v20[8] = -64;
        v21 = (v19 + v16[7]);
        *v21 = 0xD000000000000017;
        v21[1] = 0x80000001AFF3B1B0;
        v22 = OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics;
        v23 = *(a3 + OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(a3 + v22) = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v23 = sub_1AF420408(0, v23[2] + 1, 1, v23);
          *(a3 + v22) = v23;
        }

        v26 = v23[2];
        v25 = v23[3];
        if (v26 >= v25 >> 1)
        {
          v23 = sub_1AF420408(v25 > 1, v26 + 1, 1, v23);
        }

        v23[2] = v26 + 1;
        v23[v26 + 4] = v17;
        *(a3 + v22) = v23;
      }
    }
  }
}

uint64_t sub_1AF933FA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1AFC05CE4(0, v1, 0);
    v3 = v14;
    v4 = a1 + 32;
    do
    {
      v4 += 8;
      v5 = sub_1AFDFEA08();
      v15 = v3;
      v8 = *(v3 + 16);
      v7 = *(v3 + 24);
      if (v8 >= v7 >> 1)
      {
        v10 = v5;
        v11 = v6;
        sub_1AFC05CE4(v7 > 1, v8 + 1, 1);
        v6 = v11;
        v5 = v10;
        v3 = v15;
      }

      *(v3 + 16) = v8 + 1;
      v9 = v3 + 16 * v8;
      *(v9 + 32) = v5;
      *(v9 + 40) = v6;
      --v1;
    }

    while (v1);
  }

  sub_1AF9374E4(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1AF488088();
  v12 = sub_1AFDFCD98();

  return v12;
}

void *sub_1AF93411C(uint64_t a1, void *a2)
{
  v3 = v2;
  v3[6] = 0;
  v6 = MEMORY[0x1E69E7CC0];
  v3[7] = sub_1AF43F0B4(MEMORY[0x1E69E7CC0]);
  v3[8] = sub_1AF43F190(v6);
  v3[2] = a1;
  v3[3] = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = 0xC000000000000008;
  v8 = v7 | 0x8000000000000000;
  v31[0] = sub_1AF439D90(v6);
  v27 = v8;
  v28 = v31;
  v24 = sub_1AF9375DC;
  v25 = &v26;

  v16 = a2;
  v29 = sub_1AF42B0F4(v6);
  v30 = v9;
  sub_1AF412D4C(sub_1AF9122F0, v23, 1, 0x1000000000000000uLL, 0, v6, &v29);

  v10 = sub_1AF3D9B48(v31[0]);

  v3[4] = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = 0xC000000000000008;
  v12 = v11 | 0x8000000000000004;
  v31[0] = sub_1AF439D90(v6);
  v21 = v12;
  v22 = v31;
  v18 = sub_1AF937E30;
  v19 = &v20;
  v29 = sub_1AF42B0F4(v6);
  v30 = v13;
  sub_1AF412D4C(sub_1AF912380, v17, 1, 0x1000000000000000uLL, 0, v6, &v29);

  v14 = sub_1AF3D9B48(v31[0]);

  v3[5] = v14;
  return v3;
}

void *sub_1AF934348(uint64_t *a1)
{
  if (*(*(v1 + 32) + 16) && (sub_1AF0D3F10(a1), (v3 & 1) != 0))
  {
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v73 = a1;
  v5 = *(v4 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v7 = (v4 + 48);
    while (1)
    {
      v77 = v6;
      v8 = *(v7 - 2);
      v9 = *v7;
      v10 = *(v78 + 56);
      if (!*(v10 + 16))
      {
        break;
      }

      v11 = sub_1AF0D3F10(*(v7 - 2));
      if ((v12 & 1) == 0)
      {
        break;
      }

      v13 = *(*(v10 + 56) + 16 * v11);

LABEL_19:
      v27 = v13[v9 + 4];

      v6 = v77;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1AF425EAC(0, *(v77 + 2) + 1, 1, v77);
      }

      v29 = *(v6 + 2);
      v28 = *(v6 + 3);
      if (v29 >= v28 >> 1)
      {
        v6 = sub_1AF425EAC(v28 > 1, v29 + 1, 1, v6);
      }

      v7 += 3;

      *(v6 + 2) = v29 + 1;
      *&v6[8 * v29 + 32] = v27;
      if (!--v5)
      {
        goto LABEL_24;
      }
    }

    v13 = sub_1AF934348(v14);
    v16 = v15;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v81 = *(v78 + 56);
    *(v78 + 56) = 0x8000000000000000;
    v18 = sub_1AF0D3F10(v8);
    v20 = v19;
    v21 = v81[2] + ((v19 & 1) == 0);
    if (v81[3] >= v21)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v25 = v18;
        sub_1AF84C92C();
        v18 = v25;
        v23 = v81;
        if (v20)
        {
          goto LABEL_15;
        }

        goto LABEL_17;
      }
    }

    else
    {
      sub_1AF83B870(v21, isUniquelyReferenced_nonNull_native);
      v18 = sub_1AF0D3F10(v8);
      if ((v20 & 1) != (v22 & 1))
      {
        sub_1AFDFF1A8();
        __break(1u);
        while (1)
        {
LABEL_88:
          sub_1AFDFE518();
          __break(1u);
LABEL_89:
          sub_1AFDFE218();

          v72 = sub_1AF9703D8();
          MEMORY[0x1B2718AE0](v72);
        }
      }
    }

    v23 = v81;
    if (v20)
    {
LABEL_15:
      v24 = (v23[7] + 16 * v18);
      *v24 = v13;
      v24[1] = v16;

LABEL_18:
      *(v78 + 56) = v23;

      goto LABEL_19;
    }

LABEL_17:
    v23[(v18 >> 6) + 8] |= 1 << v18;
    *(v23[6] + 8 * v18) = v8;
    v26 = (v23[7] + 16 * v18);
    *v26 = v13;
    v26[1] = v16;
    ++v23[2];
    goto LABEL_18;
  }

LABEL_24:

  v75 = *(v6 + 2);
  if (v75)
  {
    v30 = *(v6 + 4);
    v74 = v6 + 32;

    v31 = 0;
    v32 = MEMORY[0x1E69E7CC0];
    do
    {
      v76 = v31;
      v33 = *&v74[8 * v31];
      v34 = *(v30 + 16);

      v79 = v33;
      if (v34)
      {
        v35 = 0;
        v36 = v33 + 32;
        do
        {
          if (v35 == *(v33 + 16))
          {
            break;
          }

          v37 = *(v30 + 32 + 8 * v35);
          if (v37 != *(v36 + 8 * v35))
          {
            break;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1AFC074E4(0, *(v32 + 16) + 1, 1);
            v33 = v79;
          }

          v39 = *(v32 + 16);
          v38 = *(v32 + 24);
          if (v39 >= v38 >> 1)
          {
            sub_1AFC074E4(v38 > 1, v39 + 1, 1);
            v33 = v79;
          }

          ++v35;
          *(v32 + 16) = v39 + 1;
          *(v32 + 16 * v39 + 32) = vdupq_n_s64(v37);
        }

        while (v34 != v35);
      }

      v40 = *(v32 + 16);
      if (v40)
      {
        v82 = MEMORY[0x1E69E7CC0];
        sub_1AFC06F08(0, v40, 0);
        v30 = v82;
        v41 = *(v82 + 16);
        v42 = 32;
        do
        {
          v43 = *(v32 + v42);
          v44 = *(v82 + 24);
          if (v41 >= v44 >> 1)
          {
            sub_1AFC06F08(v44 > 1, v41 + 1, 1);
          }

          *(v82 + 16) = v41 + 1;
          *(v82 + 8 * v41 + 32) = v43;
          v42 += 16;
          ++v41;
          --v40;
        }

        while (v40);

        v32 = MEMORY[0x1E69E7CC0];
      }

      else
      {

        v32 = MEMORY[0x1E69E7CC0];
        v30 = MEMORY[0x1E69E7CC0];
      }

      v31 = v76 + 1;
    }

    while (v76 + 1 != v75);
  }

  else
  {

    v30 = MEMORY[0x1E69E7CC0];
  }

  v45 = *v73;
  v46 = swift_conformsToProtocol2();
  if (v46)
  {
    v47 = *(v46 + 8);
    v48 = v46;

    v49 = v47(v45, v48);
    v80 = v50;
    v51 = *(v49 + 16);

    v52 = MEMORY[0x1E69E7CC0];
    if (v51)
    {
      v53 = (v49 + 40);
      while (1)
      {
        v55 = *(v53 - 1);
        if (!*v53)
        {
          break;
        }

        if (*v53 != 2)
        {
          goto LABEL_88;
        }

        if (v55 > 1)
        {
          if (v55 != 2)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v52 = sub_1AF425EAC(0, *(v52 + 16) + 1, 1, v52);
            }

            v62 = *(v52 + 16);
            v67 = *(v52 + 24);
            v63 = v62 + 1;
            if (v62 >= v67 >> 1)
            {
              v52 = sub_1AF425EAC(v67 > 1, v62 + 1, 1, v52);
            }

            v54 = MEMORY[0x1E69E7CC0];
            goto LABEL_48;
          }

          v57 = *(v78 + 48);
          *(v78 + 48) = v57 + 1;

          v54 = v30;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v54 = sub_1AF42231C(0, *(v30 + 16) + 1, 1, v30);
          }

          v59 = *(v54 + 16);
          v65 = *(v54 + 24);
          v60 = v59 + 1;
          if (v59 >= v65 >> 1)
          {
            v54 = sub_1AF42231C(v65 > 1, v59 + 1, 1, v54);
          }

          goto LABEL_55;
        }

        if (v55)
        {

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v52 = sub_1AF425EAC(0, *(v52 + 16) + 1, 1, v52);
          }

          v62 = *(v52 + 16);
          v66 = *(v52 + 24);
          v63 = v62 + 1;
          if (v62 >= v66 >> 1)
          {
            v52 = sub_1AF425EAC(v66 > 1, v62 + 1, 1, v52);
          }

          v54 = v30;
          goto LABEL_48;
        }

        sub_1AF9374E4(0, &qword_1ED726988, MEMORY[0x1E69E6530], MEMORY[0x1E69E6F90]);
        v54 = swift_allocObject();
        *(v54 + 16) = xmmword_1AFE431C0;
        v64 = *(v78 + 48);
        *(v78 + 48) = v64 + 1;
        *(v54 + 32) = v64;
LABEL_56:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v52 = sub_1AF425EAC(0, *(v52 + 16) + 1, 1, v52);
        }

        v62 = *(v52 + 16);
        v61 = *(v52 + 24);
        v63 = v62 + 1;
        if (v62 >= v61 >> 1)
        {
          v52 = sub_1AF425EAC(v61 > 1, v62 + 1, 1, v52);
        }

LABEL_48:
        v53 += 16;
        *(v52 + 16) = v63;
        *(v52 + 8 * v62 + 32) = v54;
        if (!--v51)
        {
          goto LABEL_81;
        }
      }

      v56 = *(v52 + 8 * v55 + 32);
      v57 = *(v78 + 48);
      *(v78 + 48) = v57 + 1;
      swift_bridgeObjectRetain_n();
      v54 = v56;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v54 = sub_1AF42231C(0, *(v56 + 16) + 1, 1, v56);
      }

      v59 = *(v54 + 16);
      v58 = *(v54 + 24);
      v60 = v59 + 1;
      if (v59 >= v58 >> 1)
      {
        v54 = sub_1AF42231C(v58 > 1, v59 + 1, 1, v54);
      }

LABEL_55:
      *(v54 + 16) = v60;
      *(v54 + 8 * v59 + 32) = v57;
      goto LABEL_56;
    }

LABEL_81:

    swift_bridgeObjectRelease_n();

    v68 = *(v80 + 16);
    if (v68)
    {
      v69 = (v80 + 40);
      do
      {
        v70 = *v69;
        v69 += 16;
        if (v70 == 1)
        {
        }

        --v68;
      }

      while (v68);
    }
  }

  else
  {
    if ((sub_1AF975010() & 1) == 0 && !sub_1AF974CEC())
    {
      goto LABEL_89;
    }

    sub_1AF9374E4(0, &qword_1EB638778, &type metadata for GraphScopeChecker.CFGPath, MEMORY[0x1E69E6F90]);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_1AFE431C0;
    *(v52 + 32) = v30;
  }

  return v52;
}

void *sub_1AF934D4C(void *a1)
{
  v3 = v2;
  sub_1AF483618(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 56);
  v9 = *(v8 + 16);
  v107 = v7;
  if (v9 && (v10 = sub_1AF0D3F10(a1), (v11 & 1) != 0))
  {
    v12 = (*(v8 + 56) + 16 * v10);
    v13 = *v12;
    v14 = v12[1];

    swift_bridgeObjectRetain_n();
    sub_1AF919DAC(v13, v14);

    v15 = sub_1AF425EC0(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v17 = v15[2];
    v16 = v15[3];
    if (v17 >= v16 >> 1)
    {
      v15 = sub_1AF425EC0(v16 > 1, v17 + 1, 1, v15);
    }

    v15[2] = v17 + 1;
    v18 = &v15[3 * v17];
    v18[4] = 0;
    *(v18 + 40) = 1;
    v18[6] = v14;
  }

  else
  {
    v14 = 0;
    v15 = MEMORY[0x1E69E7CC0];
  }

  (*(*a1 + 152))(&v116);
  v106 = 0x80000001AFF3B130;
  v19 = *(a1[2] + 16);
  v114 = a1[2];

  if (!v19)
  {
    goto LABEL_44;
  }

  v20 = 0;
  v103 = (v14 + 32);
  v111 = v19;
  v104 = v19 - 1;
  v105 = a1;
  v109 = v14;
  do
  {
    v108 = v15;
    v113 = v116;
    v112 = v116 + 32;
    v21 = 16 * v20 + 32;
    v22 = v20;
    v23 = v110;
    v24 = v111;
    while (1)
    {
      v25 = *(v114 + v21);
      v138 = v113;
      v26 = *(v112 + 8 * v22);
      v27 = swift_allocObject();
      *(v27 + 16) = 0xC000000000000008;

      sub_1AF4410A8(v26);
      v28 = sub_1AF9C5694(v26, v27 | 0x8000000000000000);

      sub_1AF441114(v26);
      if (!v28)
      {
        break;
      }

LABEL_11:
      ++v22;
      v21 += 16;
      if (v24 == v22)
      {
        v15 = v108;
        a1 = v105;
        goto LABEL_44;
      }
    }

    v29 = *(v23 + 64);
    if (*(v29 + 16))
    {
      v30 = sub_1AF0D3F10(v25);
      if (v31)
      {
        v32 = *(*(v29 + 56) + 8 * v30);

        v33 = *(v32 + 16);
        if (v33)
        {
          goto LABEL_28;
        }

LABEL_27:

        v24 = v111;
        goto LABEL_11;
      }
    }

    v35 = sub_1AF934D4C(v34);
    if (v3)
    {

      sub_1AF93714C(&v138, &qword_1EB638968, &type metadata for TypeConstraint);
      v137 = v117;
      sub_1AF93714C(&v137, &qword_1EB638968, &type metadata for TypeConstraint);
      v136 = v118;
      sub_1AF93714C(&v136, &qword_1EB638968, &type metadata for TypeConstraint);
      v135 = v119;
      v55 = sub_1AF445C2C;
      sub_1AF9370EC(&v135, sub_1AF445C2C);
      v134 = v120;
      sub_1AF9370EC(&v134, sub_1AF445C2C);
      v133 = v121;
      sub_1AF93714C(&v133, &qword_1EB638978, &type metadata for AnyValue);
      goto LABEL_65;
    }

    v32 = v35;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v115[0] = *(v23 + 64);
    v37 = v115[0];
    *(v23 + 64) = 0x8000000000000000;
    v38 = sub_1AF0D3F10(v25);
    v40 = v39;
    v41 = *(v37 + 16) + ((v39 & 1) == 0);
    if (*(v37 + 24) >= v41)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1AF84CAC0();
      }
    }

    else
    {
      sub_1AF83BAEC(v41, isUniquelyReferenced_nonNull_native);
      v42 = sub_1AF0D3F10(v25);
      if ((v40 & 1) != (v43 & 1))
      {
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }

      v38 = v42;
    }

    v44 = v115[0];
    if (v40)
    {
      *(*(v115[0] + 56) + 8 * v38) = v32;
    }

    else
    {
      *(v115[0] + 8 * (v38 >> 6) + 64) |= 1 << v38;
      *(v44[6] + 8 * v38) = v25;
      *(v44[7] + 8 * v38) = v32;

      ++v44[2];
    }

    v23 = v110;
    *(v110 + 64) = v44;

    v33 = *(v32 + 16);
    if (!v33)
    {
      goto LABEL_27;
    }

LABEL_28:
    if (v109)
    {
      v45 = *(v109 + 16);
      v15 = v108;
      if (v45)
      {
        v46 = (v32 + 32);
        v47 = *(v109 + 16);
        v48 = v103;
        v49 = v33;
        while (v49)
        {
          if (*v48 != *v46)
          {
            goto LABEL_67;
          }

          --v49;
          ++v48;
          ++v46;
          if (!--v47)
          {
            goto LABEL_34;
          }
        }
      }

      else
      {
LABEL_34:
        if (v45 != v33)
        {
LABEL_67:

          sub_1AF93714C(&v138, &qword_1EB638968, &type metadata for TypeConstraint);
          v132 = v117;
          sub_1AF93714C(&v132, &qword_1EB638968, &type metadata for TypeConstraint);
          v131 = v118;
          sub_1AF93714C(&v131, &qword_1EB638968, &type metadata for TypeConstraint);
          v130 = v119;
          sub_1AF9370EC(&v130, sub_1AF445C2C);
          v129 = v120;
          sub_1AF9370EC(&v129, sub_1AF445C2C);
          v128 = v121;
          sub_1AF93714C(&v128, &qword_1EB638978, &type metadata for AnyValue);

          v86 = OBJC_IVAR____TtC3VFX4Node_authoringID;
          v87 = sub_1AFDFC318();
          v88 = *(v87 - 8);
          v89 = v107;
          (*(v88 + 16))(v107, v105 + v86, v87);
          (*(v88 + 56))(v89, 0, 1, v87);
          v90 = type metadata accessor for GraphError(0);
          sub_1AF9371BC();
          v91 = swift_allocError();
          v93 = v92;
          *(v92 + v90[8]) = 0;
          *v92 = 0;
          sub_1AF937574(v89, v92 + v90[5], sub_1AF483618);
          v94 = v93 + v90[6];
          *v94 = v22;
          v94[8] = 64;
          v95 = (v93 + v90[7]);
          *v95 = 0xD000000000000038;
          v95[1] = v106;
          v96 = *(v110 + 24);
          v97 = OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics;
          v55 = *(v96 + OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics);
          v98 = swift_isUniquelyReferenced_nonNull_native();
          *(v96 + v97) = v55;
          if ((v98 & 1) == 0)
          {
            v55 = sub_1AF420408(0, v55[2] + 1, 1, v55);
            *(v96 + v97) = v55;
          }

          v100 = v55[2];
          v99 = v55[3];
          if (v100 >= v99 >> 1)
          {
            v55 = sub_1AF420408(v99 > 1, v100 + 1, 1, v55);
          }

          v55[2] = v100 + 1;
          v55[v100 + 4] = v91;
          *(v96 + v97) = v55;
          swift_willThrow();
          v101 = v91;

          return v55;
        }
      }
    }

    else
    {
      v15 = v108;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_1AF425EC0(0, v15[2] + 1, 1, v15);
    }

    v51 = v15[2];
    v50 = v15[3];
    if (v51 >= v50 >> 1)
    {
      v15 = sub_1AF425EC0(v50 > 1, v51 + 1, 1, v15);
    }

    v20 = v22 + 1;

    v15[2] = v51 + 1;
    v52 = &v15[3 * v51];
    v52[4] = v22;
    *(v52 + 40) = 0;
    v52[6] = v32;
    a1 = v105;
  }

  while (v104 != v22);
LABEL_44:
  v127 = v116;
  sub_1AF93714C(&v127, &qword_1EB638968, &type metadata for TypeConstraint);
  v126 = v117;
  sub_1AF93714C(&v126, &qword_1EB638968, &type metadata for TypeConstraint);
  v125 = v118;
  sub_1AF93714C(&v125, &qword_1EB638968, &type metadata for TypeConstraint);
  v124 = v119;
  sub_1AF9370EC(&v124, sub_1AF445C2C);
  v123 = v120;
  sub_1AF9370EC(&v123, sub_1AF445C2C);
  v122 = v121;
  sub_1AF93714C(&v122, &qword_1EB638978, &type metadata for AnyValue);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v15 = sub_1AFC0DBE8(v15);
  }

  v53 = v15[2];
  v115[0] = (v15 + 4);
  v115[1] = v53;
  sub_1AF9368A0(v115);
  v54 = v15[2];
  if (v54 < 2)
  {
LABEL_47:
    if (v54)
    {
      v55 = v15[3 * v54 + 3];
    }

    else
    {
      v55 = MEMORY[0x1E69E7CC0];
    }

    goto LABEL_65;
  }

  v56 = 1;
  while (2)
  {
    v57 = &v15[3 * v56 + 4];
    v58 = *(v57 - 8);
    v59 = *(v57 + 16);
    v60 = *(v59 + 16);
    v61 = *(v58 + 16);
    if (v60)
    {
      v62 = (v59 + 32);
      v63 = (v58 + 32);
      v64 = v60;
      v65 = v61;
      while (v65)
      {
        if (*v62 != *v63)
        {
          goto LABEL_58;
        }

        --v65;
        ++v62;
        ++v63;
        if (!--v64)
        {
          goto LABEL_55;
        }
      }

LABEL_56:
      if (++v56 == v54)
      {
        goto LABEL_47;
      }

      continue;
    }

    break;
  }

LABEL_55:
  if (v60 == v61)
  {
    goto LABEL_56;
  }

LABEL_58:
  v66 = *(v57 + 8);
  v67 = *v57;
  v68 = OBJC_IVAR____TtC3VFX4Node_authoringID;
  v69 = sub_1AFDFC318();
  v70 = *(v69 - 8);
  v71 = a1 + v68;
  v72 = v107;
  (*(v70 + 16))(v107, v71, v69);
  (*(v70 + 56))(v72, 0, 1, v69);
  LOBYTE(v68) = v66 | 0x40;
  v73 = type metadata accessor for GraphError(0);
  sub_1AF9371BC();
  v74 = swift_allocError();
  v76 = v75;
  *(v75 + v73[8]) = 0;
  *v75 = 0;
  sub_1AF937574(v72, v75 + v73[5], sub_1AF483618);
  v77 = v76 + v73[6];
  *v77 = v67;
  v77[8] = v68;
  v78 = (v76 + v73[7]);
  *v78 = 0xD000000000000038;
  v78[1] = v106;
  v79 = *(v110 + 24);
  v80 = OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics;
  v55 = *(v79 + OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics);
  v81 = swift_isUniquelyReferenced_nonNull_native();
  *(v79 + v80) = v55;
  if ((v81 & 1) == 0)
  {
    v55 = sub_1AF420408(0, v55[2] + 1, 1, v55);
    *(v79 + v80) = v55;
  }

  v83 = v55[2];
  v82 = v55[3];
  if (v83 >= v82 >> 1)
  {
    v55 = sub_1AF420408(v82 > 1, v83 + 1, 1, v55);
  }

  v55[2] = v83 + 1;
  v55[v83 + 4] = v74;
  *(v79 + v80) = v55;
  swift_willThrow();
  v84 = v74;
LABEL_65:

  return v55;
}

uint64_t sub_1AF9359F4()
{
  v1 = v0;
  v2 = *(*(v0 + 16) + 16);
  v3 = MEMORY[0x1E69E7CC0];
  v58[0] = MEMORY[0x1E69E7CC0];
  type metadata accessor for Graph();
  *(swift_allocObject() + 16) = v2;
  v55[16] = 0;
  v56 = v58;
  v53 = sub_1AF92E8B4;
  v54 = v55;
  swift_bridgeObjectRetain_n();
  v59 = sub_1AF42B0F4(v3);
  v60 = v4;
  sub_1AF412D4C(sub_1AF441EF8, v52, 1, 0x1000000000000000uLL, 0, v3, &v59);

  v5 = v58[0];
  if (v58[0] >> 62)
  {
    v6 = sub_1AFDFE108();
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_47:

    return 1;
  }

  v6 = *((v58[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    goto LABEL_47;
  }

LABEL_3:
  v7 = 0;
  v50 = v6;
  v51 = v5 & 0xC000000000000001;
  v49 = v5;
  while (1)
  {
    if (v51)
    {
      v9 = MEMORY[0x1B2719C70](v7, v5);
    }

    else
    {
      v9 = *(v5 + 8 * v7 + 32);
    }

    v10 = *(*v9 + 152);
    v10(v58);
    v11 = v58[0];
    v75 = v58[1];
    v76[0] = v58[0];
    sub_1AF93714C(&v75, &qword_1EB638968, &type metadata for TypeConstraint);
    v74 = v58[2];
    sub_1AF93714C(&v74, &qword_1EB638968, &type metadata for TypeConstraint);
    v73 = v58[3];
    sub_1AF9370EC(&v73, sub_1AF445C2C);
    v72 = v58[4];
    sub_1AF9370EC(&v72, sub_1AF445C2C);
    v71 = v58[5];
    sub_1AF93714C(&v71, &qword_1EB638978, &type metadata for AnyValue);
    if (*(v11 + 16))
    {
      v12 = *(v11 + 32);
      sub_1AF4410A8(v12);
      sub_1AF93714C(v76, &qword_1EB638968, &type metadata for TypeConstraint);
      v13 = swift_allocObject();
      *(v13 + 16) = 0xC000000000000008;
      v14 = sub_1AF9C5694(v12, v13 | 0x8000000000000000);

      v15 = sub_1AF441114(v12);
      if (v14)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v15 = sub_1AF93714C(v76, &qword_1EB638968, &type metadata for TypeConstraint);
    }

    (v10)(&v59, v15);
    v16 = v60;
    v69 = v59;
    v70 = v60;
    sub_1AF93714C(&v69, &qword_1EB638968, &type metadata for TypeConstraint);
    v68 = v61;
    sub_1AF93714C(&v68, &qword_1EB638968, &type metadata for TypeConstraint);
    v67 = v62;
    sub_1AF9370EC(&v67, sub_1AF445C2C);
    v66 = v63;
    sub_1AF9370EC(&v66, sub_1AF445C2C);
    v65 = v64;
    sub_1AF93714C(&v65, &qword_1EB638978, &type metadata for AnyValue);
    if (*(v16 + 16))
    {
      break;
    }

    sub_1AF93714C(&v70, &qword_1EB638968, &type metadata for TypeConstraint);
    sub_1AF445BE4(0xC000000000000008);
LABEL_5:

    v8 = v50;
LABEL_6:
    if (v8 == ++v7)
    {
      v35 = 0;
      while (1)
      {
        if (v51)
        {
          v36 = MEMORY[0x1B2719C70](v35, v5);
        }

        else
        {
          v36 = *(v5 + 8 * v35 + 32);
        }

        if (*(*(v1 + 64) + 16))
        {
          sub_1AF0D3F10(v36);
          if (v37)
          {

            goto LABEL_31;
          }
        }

        v38 = sub_1AF934D4C(v36);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v57 = *(v1 + 64);
        v40 = v57;
        *(v1 + 64) = 0x8000000000000000;
        v41 = sub_1AF0D3F10(v36);
        v43 = v42;
        v44 = v40[2] + ((v42 & 1) == 0);
        if (v40[3] < v44)
        {
          break;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_42;
        }

        v47 = v41;
        sub_1AF84CAC0();
        v41 = v47;
        v46 = v57;
        if (v43)
        {
LABEL_43:
          *(v46[7] + 8 * v41) = v38;

          goto LABEL_30;
        }

LABEL_29:
        v46[(v41 >> 6) + 8] |= 1 << v41;
        *(v46[6] + 8 * v41) = v36;
        *(v46[7] + 8 * v41) = v38;

        ++v46[2];
LABEL_30:
        *(v1 + 64) = v46;

        v5 = v49;
        v8 = v50;
LABEL_31:
        if (v8 == ++v35)
        {
          goto LABEL_47;
        }
      }

      sub_1AF83BAEC(v44, isUniquelyReferenced_nonNull_native);
      v41 = sub_1AF0D3F10(v36);
      if ((v43 & 1) != (v45 & 1))
      {
        goto LABEL_48;
      }

LABEL_42:
      v46 = v57;
      if (v43)
      {
        goto LABEL_43;
      }

      goto LABEL_29;
    }
  }

  v17 = *(v16 + 32);
  sub_1AF4410A8(v17);
  sub_1AF93714C(&v70, &qword_1EB638968, &type metadata for TypeConstraint);
  v18 = swift_allocObject();
  *(v18 + 16) = 0xC000000000000008;
  v19 = sub_1AF9C5694(v17, v18 | 0x8000000000000000);

  sub_1AF441114(v17);
  if (!v19)
  {
    goto LABEL_5;
  }

LABEL_16:
  if (*(*(v1 + 56) + 16))
  {
    sub_1AF0D3F10(v9);
    if (v20)
    {
      goto LABEL_5;
    }
  }

  v21 = sub_1AF934348(v9);
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v57 = *(v1 + 56);
  v25 = v57;
  *(v1 + 56) = 0x8000000000000000;
  v27 = sub_1AF0D3F10(v9);
  v28 = v26;
  v29 = v25[2] + ((v26 & 1) == 0);
  if (v25[3] >= v29)
  {
    if (v24)
    {
      v32 = v57;
      if ((v26 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    else
    {
      sub_1AF84C92C();
      v32 = v57;
      if ((v28 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    goto LABEL_24;
  }

  sub_1AF83B870(v29, v24);
  v30 = sub_1AF0D3F10(v9);
  if ((v28 & 1) == (v31 & 1))
  {
    v27 = v30;
    v32 = v57;
    if ((v28 & 1) == 0)
    {
LABEL_26:
      v32[(v27 >> 6) + 8] |= 1 << v27;
      *(v32[6] + 8 * v27) = v9;
      v34 = (v32[7] + 16 * v27);
      *v34 = v21;
      v34[1] = v23;

      ++v32[2];
      goto LABEL_27;
    }

LABEL_24:
    v33 = (v32[7] + 16 * v27);
    *v33 = v21;
    v33[1] = v23;

LABEL_27:
    *(v1 + 56) = v32;

    v5 = v49;
    v8 = v50;
    goto LABEL_6;
  }

LABEL_48:
  sub_1AFDFF1A8();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1AF936138()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1AF9361BC()
{
  v1 = v0;
  v2 = sub_1AF932728();
  v3 = v2;
  if (!(v2 >> 62))
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_13:
    v6 = 1;
    goto LABEL_14;
  }

  v4 = sub_1AFDFE108();
  if (!v4)
  {
    goto LABEL_13;
  }

LABEL_3:
  v5 = 0;
  v6 = 1;
  do
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1B2719C70](v5, v3);
    }

    else
    {
      v8 = *(v3 + 8 * v5 + 32);
    }

    type metadata accessor for StartNode(0);
    if (swift_dynamicCastClass() && (type metadata accessor for OnUserInputTriggerNode(0), swift_dynamicCastClass()))
    {
    }

    else
    {
      v7 = sub_1AF9362E0(v8, v1);

      v6 &= v7;
    }

    ++v5;
  }

  while (v4 != v5);
LABEL_14:

  return v6 & 1;
}

uint64_t sub_1AF9362E0(char *a1, uint64_t a2)
{
  sub_1AF483618(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GuardIsRunMode(0);
  if (swift_dynamicCastClass())
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    v8 = *a1;
    v9 = swift_conformsToProtocol2();
    if (v9 && ((*(v9 + 32))(v8, v9) & 1) != 0)
    {
      v10 = *(a2 + 24);
      v11 = OBJC_IVAR____TtC3VFX4Node_authoringID;
      v12 = sub_1AFDFC318();
      v13 = *(v12 - 8);
      (*(v13 + 16))(v6, &a1[v11], v12);
      (*(v13 + 56))(v6, 0, 1, v12);
      v14 = swift_allocObject();
      sub_1AFDFC308();
      swift_setDeallocating();
      (*(v13 + 8))(v14 + OBJC_IVAR____TtC3VFX4Node_authoringID, v12);
      swift_deallocClassInstance();
      v15 = type metadata accessor for GraphError(0);
      sub_1AF9371BC();
      v16 = swift_allocError();
      v18 = v17;
      *(v17 + v15[8]) = 0;
      *v17 = 0;
      sub_1AF937574(v6, v17 + v15[5], sub_1AF483618);
      v19 = v18 + v15[6];
      *v19 = 0;
      v19[8] = 65;
      v20 = (v18 + v15[7]);
      *v20 = 0xD00000000000002DLL;
      v20[1] = 0x80000001AFF3B100;
      v21 = OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics;
      v22 = *(v10 + OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v10 + v21) = v22;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v22 = sub_1AF420408(0, v22[2] + 1, 1, v22);
        *(v10 + v21) = v22;
      }

      v25 = v22[2];
      v24 = v22[3];
      if (v25 >= v24 >> 1)
      {
        v22 = sub_1AF420408(v24 > 1, v25 + 1, 1, v22);
      }

      v7 = 0;
      v22[2] = v25 + 1;
      v22[v25 + 4] = v16;
      *(v10 + v21) = v22;
    }

    else
    {
      v7 = 1;
    }

    (*(*a1 + 152))(v47);
    v26 = *(*(a1 + 2) + 16);

    if (v26)
    {
      v46 = v7;
      v44 = v27;
      v45 = a2;
      v28 = 0;
      v43 = v47[0];
      v29 = v47[0] + 32;
      v30 = v27 + 32;
      v41 = v26 - 1;
      v42 = v27 + 32;
      do
      {
        v31 = v30 + 16 * v28;
        while (1)
        {
          v32 = v28 + 1;
          v33 = *(v29 + 8 * v28);
          v34 = swift_allocObject();
          *(v34 + 16) = 0xC000000000000008;

          sub_1AF4410A8(v33);
          v35 = sub_1AF9C5694(v33, v34 | 0x8000000000000000);

          sub_1AF441114(v33);
          if (v35)
          {
            break;
          }

          v31 += 16;
          ++v28;
          if (v26 == v32)
          {
            goto LABEL_19;
          }
        }

        v37 = sub_1AF9362E0(v36, v45);

        v46 &= v37;
        v30 = v42;
      }

      while (v41 != v28++);
LABEL_19:
      LOBYTE(v7) = v46;
      v39 = v43;
    }

    else
    {
      v39 = v47[0];
    }

    v53 = v39;
    sub_1AF93714C(&v53, &qword_1EB638968, &type metadata for TypeConstraint);
    v52 = v47[1];
    sub_1AF93714C(&v52, &qword_1EB638968, &type metadata for TypeConstraint);
    v51 = v47[2];
    sub_1AF93714C(&v51, &qword_1EB638968, &type metadata for TypeConstraint);
    v50 = v47[3];
    sub_1AF9370EC(&v50, sub_1AF445C2C);
    v49 = v47[4];
    sub_1AF9370EC(&v49, sub_1AF445C2C);
    v48 = v47[5];
    sub_1AF93714C(&v48, &qword_1EB638978, &type metadata for AnyValue);
  }

  return v7 & 1;
}

uint64_t sub_1AF93681C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1AF9368A0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1AFDFE9D8();
  if (result >= v2)
  {
    if (v2)
    {
      return sub_1AF936988(0, v2, 1, a1);
    }
  }

  else
  {
    v4 = result;
    if (v2 <= 1)
    {
      v5 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      sub_1AF4447E8(0);
      v5 = sub_1AFDFD488();
      *(v5 + 16) = v2 / 2;
    }

    v7[0] = (v5 + 32);
    v7[1] = (v2 / 2);
    v6 = v5;
    sub_1AF936A14(v7, v8, a1, v4);
    *(v6 + 16) = 0;
  }

  return result;
}

uint64_t sub_1AF936988(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 24 * a3;
    v6 = result - a3;
    do
    {
      v7 = *(v4 + 24 * a3 + 16);
      v8 = v6;
      v9 = v5;
      do
      {
        if (*(v7 + 16) >= *(*(v9 - 8) + 16))
        {
          break;
        }

        v10 = *v9;
        v11 = *(v9 + 8);
        *v9 = *(v9 - 24);
        *(v9 + 16) = *(v9 - 8);
        *(v9 - 16) = v11;
        *(v9 - 8) = v7;
        *(v9 - 24) = v10;
        v9 -= 24;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 24;
      --v6;
    }

    while (a3 != a2);
  }

  return result;
}

uint64_t sub_1AF936A14(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v65 = *a1;
    v7 = MEMORY[0x1E69E7CC0];
    v64 = a4;
    while (1)
    {
      v8 = v6++;
      if (v6 < v5)
      {
        v9 = 24 * v8;
        v10 = *a3 + 24 * v8;
        v11 = *(*(*a3 + 24 * v6 + 16) + 16);
        v12 = *(*(v10 + 16) + 16);
        v13 = v8 + 2;
        v14 = (v10 + 64);
        v15 = v11;
        while (v5 != v13)
        {
          v16 = *v14;
          v14 += 3;
          v17 = (v11 < v12) ^ (*(v16 + 16) >= v15);
          ++v13;
          v15 = *(v16 + 16);
          if ((v17 & 1) == 0)
          {
            v6 = v13 - 1;
            if (v11 >= v12)
            {
              goto LABEL_17;
            }

            goto LABEL_11;
          }
        }

        v6 = v5;
        if (v11 >= v12)
        {
          goto LABEL_17;
        }

LABEL_11:
        if (v8 < v6)
        {
          v18 = 24 * v6 - 8;
          v19 = v6;
          v20 = v8;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3 + v9;
              v22 = (*a3 + v18);
              v23 = *v21;
              v24 = *(v21 + 8);
              v25 = *(v21 + 16);
              v26 = *v22;
              *v21 = *(v22 - 1);
              *(v21 + 16) = v26;
              *(v22 - 2) = v23;
              *(v22 - 8) = v24;
              *v22 = v25;
            }

            ++v20;
            v18 -= 24;
            v9 += 24;
          }

          while (v20 < v19);
          v5 = a3[1];
        }
      }

LABEL_17:
      if (v6 < v5 && v6 - v8 < a4)
      {
        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v8 + a4 != v6)
        {
          v46 = *a3;
          v47 = *a3 + 24 * v6;
          v48 = v8 - v6;
          do
          {
            v49 = *(v46 + 24 * v6 + 16);
            v50 = v48;
            v51 = v47;
            do
            {
              if (*(v49 + 16) >= *(*(v51 - 8) + 16))
              {
                break;
              }

              v52 = *v51;
              v53 = *(v51 + 8);
              *v51 = *(v51 - 24);
              *(v51 + 16) = *(v51 - 8);
              *(v51 - 16) = v53;
              *(v51 - 8) = v49;
              *(v51 - 24) = v52;
              v51 -= 24;
            }

            while (!__CFADD__(v50++, 1));
            ++v6;
            v47 += 24;
            --v48;
          }

          while (v6 != v5);
        }

        v6 = v5;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1AF4209A4(0, *(v7 + 2) + 1, 1, v7);
      }

      v28 = *(v7 + 2);
      v27 = *(v7 + 3);
      v29 = v28 + 1;
      if (v28 >= v27 >> 1)
      {
        v7 = sub_1AF4209A4(v27 > 1, v28 + 1, 1, v7);
      }

      *(v7 + 2) = v29;
      v30 = v7 + 32;
      v31 = &v7[16 * v28 + 32];
      *v31 = v8;
      *(v31 + 1) = v6;
      if (v28)
      {
        break;
      }

LABEL_3:
      v5 = a3[1];
      a4 = v64;
      if (v6 >= v5)
      {
        goto LABEL_51;
      }
    }

    while (1)
    {
      v32 = v29 - 1;
      if (v29 >= 4)
      {
        v36 = &v30[16 * v29];
        v37 = *(v36 - 7) - *(v36 - 8);
        v35 = *(v36 - 5) - *(v36 - 6);
        v38 = &v7[16 * v29];
        v33 = *v38;
        v34 = *(v38 + 1);
        if (v35 - v33 + v34 >= v37)
        {
          v41 = v29 - 2;
          v40 = *&v30[16 * v32 + 8] - *&v30[16 * v32];
          goto LABEL_38;
        }
      }

      else
      {
        if (v29 != 3)
        {
          v39 = *&v7[16 * v29 + 8] - *&v7[16 * v29];
          v40 = *&v30[16 * v32 + 8] - *&v30[16 * v32];
LABEL_35:
          if (v40 < v39)
          {
            goto LABEL_3;
          }

          goto LABEL_40;
        }

        v33 = *(v7 + 6);
        v34 = *(v7 + 7);
        v35 = *(v7 + 5) - *(v7 + 4);
      }

      v39 = v34 - v33;
      v40 = *&v30[16 * v32 + 8] - *&v30[16 * v32];
      if (v39 + v40 < v35)
      {
        goto LABEL_35;
      }

      v41 = v29 - 2;
LABEL_38:
      if (v35 < v40)
      {
        v32 = v41;
      }

LABEL_40:
      v42 = &v30[16 * v32];
      v43 = *(v42 - 2);
      v44 = *(v42 + 1);
      sub_1AF936EA0((*a3 + 24 * v43), (*a3 + 24 * *v42), *a3 + 24 * v44, v65);
      if (v4)
      {
      }

      *(v42 - 2) = v43;
      *(v42 - 1) = v44;
      v45 = *(v7 + 2);
      v29 = v45 - 1;
      memmove(&v30[16 * v32], v42 + 16, 16 * (v45 - 1 - v32));
      *(v7 + 2) = v45 - 1;
      if (v45 <= 2)
      {
        goto LABEL_3;
      }
    }
  }

  v7 = MEMORY[0x1E69E7CC0];
LABEL_51:
  v66 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_1AF650C88(v7);
  }

  v55 = v7 + 16;
  v56 = *(v7 + 2);
  if (v56 >= 2)
  {
    do
    {
      v57 = &v7[16 * v56];
      v58 = *v57;
      v59 = &v55[2 * v56];
      v60 = v59[1];
      sub_1AF936EA0((*a3 + 24 * *v57), (*a3 + 24 * *v59), *a3 + 24 * v60, v66);
      if (v4)
      {
        break;
      }

      *v57 = v58;
      *(v57 + 1) = v60;
      v61 = *v55 - 1;
      memmove(&v55[2 * v56], v59 + 2, 16 * (*v55 - v56));
      *v55 = v61;
      v56 = v61;
    }

    while (v61 > 1);
  }
}

uint64_t sub_1AF936EA0(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[24 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[24 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*(*(v6 + 2) + 16) < *(*(v4 + 2) + 16))
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 24;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 24;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[24 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[24 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_20:
    v5 -= 24;
    do
    {
      v16 = (v5 + 24);
      if (*(*(v12 - 1) + 16) < *(*(v6 - 1) + 16))
      {
        v19 = v6 - 24;
        if (v16 != v6)
        {
          v20 = *v19;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v20;
        }

        if (v12 <= v4 || (v6 -= 24, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v17 = v12 - 24;
      if (v16 != v12)
      {
        v18 = *v17;
        *(v5 + 16) = *(v12 - 1);
        *v5 = v18;
      }

      v5 -= 24;
      v12 -= 24;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_31:
  v21 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v22 = (v21 >> 2) + (v21 >> 63);
  if (v6 != v4 || v6 >= &v4[24 * v22])
  {
    memmove(v6, v4, 24 * v22);
  }

  return 1;
}

uint64_t sub_1AF9370EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AF93714C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1AF9374E4(0, a2, a3, MEMORY[0x1E69E62F8]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1AF9371BC()
{
  result = qword_1EB638988;
  if (!qword_1EB638988)
  {
    v3 = type metadata accessor for GraphError(255);
    result = swift_getWitnessTable(byte_1AFE863D0, v3, v0, v1);
    atomic_store(result, &qword_1EB638988);
  }

  return result;
}

uint64_t sub_1AF937214(uint64_t a1, uint64_t a2)
{
  sub_1AF447040(a1, v18);
  sub_1AF447040(a2, &v21);
  if (!v20)
  {
    sub_1AF447040(v18, &v16);
    if (!v25)
    {
      v9 = v16 == v21;
LABEL_25:
      sub_1AF44709C(v18);
      return v9 & 1;
    }

    goto LABEL_21;
  }

  if (v20 == 1)
  {
    sub_1AF447040(v18, &v16);
    v3 = v16;
    if (v25 == 1)
    {
      v4 = v21;
      sub_1AF447144(v17, v15);
      sub_1AF447144(&v22, v14);
      v5 = sub_1AFDFCEF8();
      v7 = v6;
      if (v5 == sub_1AFDFCEF8() && v7 == v8)
      {

LABEL_24:
        v9 = sub_1AF9B2978(v15, v14);

        sub_1AF4470F0(v14);
        sub_1AF4470F0(v15);
        goto LABEL_25;
      }

      v12 = sub_1AFDFEE28();

      if (v12)
      {
        goto LABEL_24;
      }

      sub_1AF4470F0(v14);
      sub_1AF4470F0(v15);
      sub_1AF44709C(v18);
      goto LABEL_22;
    }

    sub_1AF4470F0(v17);

LABEL_21:
    sub_1AF9370EC(v18, sub_1AF937488);
LABEL_22:
    v9 = 0;
    return v9 & 1;
  }

  if (v19 || v18[3] | v18[4] | v18[0] | v18[2] | v18[1])
  {
    if (v25 != 2)
    {
      goto LABEL_21;
    }

    if (v24)
    {
      goto LABEL_21;
    }

    if (v21 != 1)
    {
      goto LABEL_21;
    }

    v11 = vorrq_s8(v22, v23);
    if (vorr_s8(*v11.i8, *&vextq_s8(v11, v11, 8uLL)))
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (v25 != 2)
    {
      goto LABEL_21;
    }

    if (v24)
    {
      goto LABEL_21;
    }

    v10 = vorrq_s8(v22, v23);
    if (*&vorr_s8(*v10.i8, *&vextq_s8(v10, v10, 8uLL)) | v21)
    {
      goto LABEL_21;
    }
  }

  sub_1AF44709C(v18);
  v9 = 1;
  return v9 & 1;
}

void sub_1AF937488()
{
  if (!qword_1EB638B10)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB638B10);
    }
  }
}

void sub_1AF9374E4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1AF937574(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void destroy for GraphScheduling(uint64_t a1)
{
  v2 = *(a1 + 41);
  if (v2 >= 2)
  {
    v2 = *a1 + 2;
  }

  if (v2 == 1)
  {

    v3 = *(a1 + 40);
    if (v3 > 1)
    {
      if (v3 != 2)
      {
        if (v3 != 3 || !*(a1 + 8) && *(a1 + 16) == 1)
        {
          return;
        }

        MEMORY[0x1B271E060](a1 + 8);
        goto LABEL_19;
      }

      v4 = *(a1 + 16);
    }

    else
    {
      if (*(a1 + 40))
      {
        if (v3 != 1)
        {
          return;
        }

LABEL_19:

        return;
      }

      v4 = *(a1 + 8);
    }
  }
}

uint64_t initializeWithCopy for GraphScheduling(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 41);
  if (v2 >= 2)
  {
    v2 = *a2 + 2;
  }

  if (v2 == 1)
  {
    v3 = *a2;
    v4 = result;
    *result = *a2;
    v5 = result + 8;
    v7 = *(a2 + 40);
    v8 = v3;
    if (v7 > 1)
    {
      if (v7 == 2)
      {
        v15 = *(a2 + 8);
        v16 = *(a2 + 16);
        *(v4 + 8) = v15;
        *(v4 + 16) = v16;
        *(v4 + 40) = 2;
        v17 = v15;
        v18 = v16;
        result = v4;
      }

      else
      {
        result = v4;
        if (v7 == 3)
        {
          if (*(a2 + 8) || *(a2 + 16) != 1)
          {
            swift_unknownObjectWeakCopyInit();
            v19 = *(a2 + 24);
            *(v4 + 16) = *(a2 + 16);
            *(v4 + 24) = v19;
            *(v4 + 32) = *(a2 + 32);

            result = v4;
          }

          else
          {
            v11 = *(a2 + 24);
            *v5 = *(a2 + 8);
            *(v5 + 16) = v11;
          }

          *(result + 40) = 3;
        }

        else
        {
          v12 = *(a2 + 24);
          *v5 = *(a2 + 8);
          *(v5 + 16) = v12;
          *(v5 + 32) = *(a2 + 40);
        }
      }
    }

    else
    {
      if (v7)
      {
        v9 = *(a2 + 16);
        *(v4 + 8) = *(a2 + 8);
        *(v4 + 16) = v9;
        *(v4 + 40) = 1;
      }

      else
      {
        v13 = *(a2 + 8);
        *(v4 + 8) = v13;
        *(v4 + 40) = 0;
        v14 = v13;
      }

      result = v4;
    }

    *(result + 41) = 1;
  }

  else if (v2)
  {
    v10 = *(a2 + 16);
    *result = *a2;
    *(result + 16) = v10;
    *(result + 26) = *(a2 + 26);
  }

  else
  {
    *result = *a2;
    *(result + 41) = 0;
  }

  return result;
}

uint64_t assignWithCopy for GraphScheduling(uint64_t a1, __int128 *a2)
{
  if (a1 == a2)
  {
    return a1;
  }

  v4 = *(a1 + 41);
  if (v4 >= 2)
  {
    v4 = *a1 + 2;
  }

  if (v4 == 1)
  {

    v5 = *(a1 + 40);
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        if (v5 == 3 && (*(a1 + 8) || *(a1 + 16) != 1))
        {
          MEMORY[0x1B271E060](a1 + 8);
        }

        goto LABEL_17;
      }

      v6 = *(a1 + 16);
    }

    else
    {
      if (*(a1 + 40))
      {
        if (v5 == 1)
        {
        }

        goto LABEL_17;
      }

      v6 = *(a1 + 8);
    }
  }

LABEL_17:
  v7 = *(a2 + 41);
  if (v7 >= 2)
  {
    v7 = *a2 + 2;
  }

  if (v7 == 1)
  {
    v8 = *a2;
    *a1 = *a2;
    v9 = (a1 + 8);
    v10 = *(a2 + 40);
    v11 = v8;
    if (v10 > 1)
    {
      if (v10 == 2)
      {
        v19 = *(a2 + 1);
        *(a1 + 8) = v19;
        v20 = *(a2 + 2);
        *(a1 + 16) = v20;
        *(a1 + 40) = 2;
        v21 = v19;
        v22 = v20;
      }

      else if (v10 == 3)
      {
        if (*(a2 + 1) || *(a2 + 2) != 1)
        {
          swift_unknownObjectWeakCopyInit();
          *(a1 + 16) = *(a2 + 2);
          *(a1 + 24) = *(a2 + 3);
          *(a1 + 32) = *(a2 + 4);
        }

        else
        {
          v14 = *(a2 + 24);
          *v9 = *(a2 + 8);
          *(a1 + 24) = v14;
        }

        *(a1 + 40) = 3;
      }

      else
      {
        v15 = *(a2 + 8);
        v16 = *(a2 + 24);
        *(a1 + 40) = *(a2 + 40);
        *v9 = v15;
        *(a1 + 24) = v16;
      }
    }

    else if (v10)
    {
      *(a1 + 8) = *(a2 + 1);
      *(a1 + 16) = *(a2 + 2);
      *(a1 + 40) = 1;
    }

    else
    {
      v17 = *(a2 + 1);
      *(a1 + 8) = v17;
      *(a1 + 40) = 0;
      v18 = v17;
    }

    *(a1 + 41) = 1;
  }

  else if (v7)
  {
    v12 = *a2;
    v13 = a2[1];
    *(a1 + 26) = *(a2 + 26);
    *a1 = v12;
    *(a1 + 16) = v13;
  }

  else
  {
    *a1 = *a2;
    *(a1 + 41) = 0;
  }

  return a1;
}

uint64_t initializeWithTake for GraphScheduling(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 41);
  if (v2 >= 2)
  {
    v2 = *a2 + 2;
  }

  if (v2 == 1)
  {
    *result = *a2;
    v3 = (result + 8);
    if (*(a2 + 40) == 3)
    {
      if (*(a2 + 8) || *(a2 + 16) != 1)
      {
        v8 = result;
        swift_unknownObjectWeakTakeInit();
        result = v8;
        *(v8 + 16) = *(a2 + 16);
        *(v8 + 24) = *(a2 + 24);
      }

      else
      {
        v4 = *(a2 + 24);
        *v3 = *(a2 + 8);
        *(result + 24) = v4;
      }

      *(result + 40) = 3;
    }

    else
    {
      v6 = *(a2 + 24);
      *v3 = *(a2 + 8);
      *(result + 24) = v6;
      *(result + 40) = *(a2 + 40);
    }

    *(result + 41) = 1;
  }

  else if (v2)
  {
    v5 = *(a2 + 16);
    *result = *a2;
    *(result + 16) = v5;
    *(result + 26) = *(a2 + 26);
  }

  else
  {
    *result = *a2;
    *(result + 41) = 0;
  }

  return result;
}

uint64_t assignWithTake for GraphScheduling(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return result;
  }

  v3 = *(result + 41);
  if (v3 >= 2)
  {
    v3 = *result + 2;
  }

  if (v3 != 1)
  {
    goto LABEL_19;
  }

  v4 = result;

  result = v4;
  v5 = *(v4 + 40);
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      if (v5 != 3 || !*(v4 + 8) && *(v4 + 16) == 1)
      {
        goto LABEL_19;
      }

      MEMORY[0x1B271E060](v4 + 8);
      goto LABEL_14;
    }

    v6 = *(v4 + 16);
LABEL_17:

    goto LABEL_18;
  }

  if (!*(v4 + 40))
  {
    v6 = *(v4 + 8);
    goto LABEL_17;
  }

  if (v5 == 1)
  {
LABEL_14:

LABEL_18:
    result = v4;
  }

LABEL_19:
  v7 = *(a2 + 41);
  if (v7 >= 2)
  {
    v7 = *a2 + 2;
  }

  if (v7 == 1)
  {
    *result = *a2;
    v8 = (result + 8);
    if (*(a2 + 40) == 3)
    {
      if (*(a2 + 8) || *(a2 + 16) != 1)
      {
        v12 = result;
        swift_unknownObjectWeakTakeInit();
        result = v12;
        *(v12 + 16) = *(a2 + 16);
        *(v12 + 24) = *(a2 + 24);
      }

      else
      {
        v9 = *(a2 + 24);
        *v8 = *(a2 + 8);
        *(result + 24) = v9;
      }

      *(result + 40) = 3;
    }

    else
    {
      v11 = *(a2 + 24);
      *v8 = *(a2 + 8);
      *(result + 24) = v11;
      *(result + 40) = *(a2 + 40);
    }

    *(result + 41) = 1;
  }

  else if (v7)
  {
    v10 = *(a2 + 16);
    *result = *a2;
    *(result + 16) = v10;
    *(result + 26) = *(a2 + 26);
  }

  else
  {
    *result = *a2;
    *(result + 41) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GraphScheduling(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 42))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 41);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for GraphScheduling(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 26) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 41) = -a2;
    }
  }

  return result;
}

uint64_t sub_1AF937D84(uint64_t a1)
{
  result = *(a1 + 41);
  if (result >= 2)
  {
    return (*a1 + 2);
  }

  return result;
}

uint64_t sub_1AF937DA0(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 41) = a2;
  return result;
}

unint64_t sub_1AF937DDC()
{
  result = qword_1EB640700;
  if (!qword_1EB640700)
  {
    result = swift_getWitnessTable(byte_1AFE86064, &type metadata for GraphScheduling, v0, v1);
    atomic_store(result, &qword_1EB640700);
  }

  return result;
}

uint64_t sub_1AF937E48(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    swift_getObjectType();
    v9 = sub_1AF92975C();
    v11 = v10 == 0;
    if (v10)
    {
      v12 = v9;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
    v11 = 1;
  }

  v13 = thread_worker_index(a2);
  if (*v13 == -1)
  {
    v14 = *(a4 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
  }

  else
  {
    v14 = *(a4 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues) + 8 * *v13 + 8;
  }

  v15 = *(*v14 + 32);
  v16 = ecs_stack_allocator_push_snapshot(v15);
  MEMORY[0x1EEE9AC00](v16);
  v22[6] = a5;
  v22[7] = v5;
  v22[8] = a4;
  v22[9] = v12;
  v23 = v11;
  MEMORY[0x1EEE9AC00](v17);
  v22[2] = sub_1AF93DA20;
  v22[3] = v18;
  v19 = MEMORY[0x1E69E7CC0];
  v24[0] = sub_1AF42B0F4(MEMORY[0x1E69E7CC0]);
  v24[1] = v20;
  sub_1AF412D4C(sub_1AF449DD8, v22, 1, 0x1000000000000000uLL, 0, v19, v24);

  if (v6)
  {

    __break(1u);
  }

  else
  {

    return ecs_stack_allocator_pop_snapshot(v15);
  }

  return result;
}

unint64_t sub_1AF937FF8(uint64_t a1, unint64_t a2)
{
  v3 = a2 >> 61;
  if ((a2 >> 61) > 2)
  {
    if (v3 == 3)
    {
      v13 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      sub_1AF442064(v13);
      v14 = sub_1AF937FF8(a1, v13);
      sub_1AF445BE4(v13);
      result = v14;
      if ((~v14 & 0xF000000000000007) != 0)
      {
        v15 = swift_allocObject();
        *(v15 + 16) = v14;
        return v15 | 0x6000000000000000;
      }

      return result;
    }

    if (v3 != 6)
    {
      return 0xF000000000000007;
    }

    result = 0xC000000000000018;
    v8 = __ROR8__(a2 + 0x3FFFFFFFFFFFFFE0, 3);
    if (v8 > 13)
    {
      if (v8 > 16)
      {
        if (v8 != 17)
        {
          if (v8 == 20)
          {
            return result;
          }

          if (v8 == 24)
          {
            return 0xC000000000000048;
          }

          return 0xF000000000000007;
        }

LABEL_31:
        if (a1 == 3)
        {
          return 0xF000000000000007;
        }

        return result;
      }

      if ((v8 - 15) < 2)
      {
        return result;
      }

      if (v8 != 14)
      {
        return 0xF000000000000007;
      }
    }

    else
    {
      if (v8 <= 10)
      {
        if (!v8)
        {
          return 0xC000000000000040;
        }

        if (v8 == 1)
        {
          v17 = swift_allocObject();
          *(v17 + 16) = xmmword_1AFE4C440;
          return v17 | 0x2000000000000000;
        }

        if (v8 != 10)
        {
          return 0xF000000000000007;
        }

        goto LABEL_31;
      }

      if (v8 != 12)
      {
        return result;
      }
    }

    v16 = swift_allocObject();
    *(v16 + 16) = 0;
    return v16 | 0x8000000000000000;
  }

  if (v3)
  {
    if (v3 == 2)
    {
      v4 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      result = sub_1AF937FF8(a1, *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18));
      if ((~result & 0xF000000000000007) != 0)
      {
        v6 = result;
        v7 = swift_allocObject();
        *(v7 + 16) = v4;
        *(v7 + 24) = v6;
        return v7 | 0x4000000000000000;
      }

      return result;
    }

    return 0xF000000000000007;
  }

  v9 = *(a2 + 16);
  sub_1AF442064(v9);
  v10 = a1;
  v11 = v9;
  v12 = sub_1AF937FF8(v10, v9);
  if ((~v12 & 0xF000000000000007) != 0)
  {
    v9 = v12;
    sub_1AF445BE4(v11);
  }

  return v9;
}

_OWORD *sub_1AF938228@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v6 = sub_1AF937FF8(*v2, *a1);
  if ((~v6 & 0xF000000000000007) != 0)
  {
    if (v5 >> 61 == 6)
    {
      if (v5 == 0xC0000000000000E0)
      {
        v8 = v6;
        sub_1AF0D5A54((a1 + 1), v11);
        v13 = MEMORY[0x1E69E76D8];
        swift_dynamicCast();
        goto LABEL_11;
      }

      if (v5 == 0xC000000000000028)
      {
        v8 = v6;
        sub_1AF0D5A54((a1 + 1), v11);
        type metadata accessor for simd_quatf(0);
        swift_dynamicCast();
        sub_1AF6AF6D4(0);
        v13 = v9;
        *&v12 = swift_allocObject();
        *(v12 + 16) = v10;
LABEL_11:
        result = sub_1AF449D40(&v12, (a2 + 8));
        *a2 = v8;
        return result;
      }
    }

    sub_1AF914F8C(v6);
    return sub_1AF914FF0(a1, a2);
  }

  return sub_1AF914FF0(a1, a2);
}

double sub_1AF9383A4(void *a1)
{
  if (a1)
  {
    v2 = v1;
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v4 = a1;
      v5 = sub_1AF9A30B4();

      *v2 = v5;
    }

    else
    {
      objc_opt_self();
      v7 = swift_dynamicCastObjCClass();
      if (v7)
      {
        v8 = v7;
        v10 = a1;
        if ([v8 asset])
        {
          swift_getObjectType();
          if (swift_conformsToProtocol2())
          {
            v9 = sub_1AF9A30B4();
            swift_unknownObjectRelease();

            *v2 = v9;
          }

          else
          {

            swift_unknownObjectRelease();
          }
        }

        else
        {
        }
      }
    }
  }

  return result;
}

uint64_t sub_1AF938518(uint64_t a1, uint64_t a2)
{
  type metadata accessor for vfx_script_buffer(0);
  sub_1AFDFD218();
  return v3;
}

uint64_t sub_1AF938590(uint64_t a1)
{
  sub_1AFDFDFD8();
  v2 = v1;
  type metadata accessor for simd_quatf(0);
  if (swift_dynamicCastMetatype())
  {
    goto LABEL_2;
  }

  if (swift_conformsToProtocol2())
  {
    v5 = v2 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    goto LABEL_10;
  }

  sub_1AF771140(0, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468]);
  if (swift_dynamicCastMetatype() || (sub_1AF771140(0, &qword_1ED72F950, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548]), swift_dynamicCastMetatype()) || (sub_1AF771140(0, &unk_1ED72F940, MEMORY[0x1E69E7360], MEMORY[0x1E69E7378]), swift_dynamicCastMetatype()) || swift_dynamicCastMetatype())
  {
LABEL_2:
    swift_getKeyPath();
    sub_1AFDFE008();
    v3 = sub_1AFDFE628();

    return v3;
  }

  v6 = 0;
  if (swift_conformsToProtocol2())
  {
    if (v2)
    {
LABEL_10:
      swift_getKeyPath();
      sub_1AFDFE008();
      v6 = sub_1AFDFE628();
    }
  }

  return v6;
}

ValueMetadata *sub_1AF9387B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 21);
  if ((v4 & 0x400) != 0)
  {
    a1 = sub_1AFDFDFD8();
    if (v5 == MEMORY[0x1E69E7CA0] + 8)
    {
      result = sub_1AFDFDFD8();
      if (result == &type metadata for Material && v2[3] == &type metadata for Entity)
      {
        v14 = *v2;
        v13 = v2[1];
        MEMORY[0x1EEE9AC00](result);
        v19 = v14;
        v20 = v13;
        KeyPath = swift_getKeyPath();
        v22 = &type metadata for Entity;
        v23 = 0;
        v24 = 1;
        v25 = v4;
        v15 = swift_bridgeObjectRetain_n();
        sub_1AF9387B0(v15, v17);
        v9 = v17[0];
        v8 = v17[1];
        v7 = v17[2];
        v16 = v17[3];
        v11 = v17[4];
        v12 = v18;

        v10 = v16;
        goto LABEL_10;
      }

      v9 = 0;
      v8 = 0;
      v7 = 0;
      goto LABEL_9;
    }
  }

  result = sub_1AF938590(a1);
  v7 = result;
  if (!result)
  {
    v9 = 0;
    v8 = 0;
LABEL_9:
    v10 = 0;
    v11 = 0;
    v12 = 0;
    goto LABEL_10;
  }

  v9 = *v2;
  v8 = v2[1];

  result = sub_1AFDFDFD8();
  v11 = 0;
  v12 = (v4 << 16) | 1;
LABEL_10:
  *a2 = v9;
  *(a2 + 8) = v8;
  *(a2 + 16) = v7;
  *(a2 + 24) = v10;
  *(a2 + 32) = v11;
  *(a2 + 40) = v12;
  return result;
}

uint64_t sub_1AF938994(void *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v6[3] = &type metadata for Entity;
  v6[0] = *a1;
  if (*(a2 + 24) && object_getClass(*(a2 + 24)) == _TtC3VFX16CustomParameters)
  {
    swift_unknownObjectRetain();
    sub_1AF8A0E2C(v3, v4, v6);
    swift_unknownObjectRelease();
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v6);
}

void *sub_1AF938A24(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (qword_1EB633DD0 != -1)
  {
    v9 = a1;
    v10 = a4;
    swift_once();
    a1 = v9;
    a4 = v10;
  }

  if (qword_1EB6C2AB0 == a1)
  {
    if (a3)
    {
      v5 = a3;
    }
  }

  else
  {
    if (qword_1EB633DD8 != -1)
    {
      v11 = a1;
      v12 = a4;
      swift_once();
      a1 = v11;
      a4 = v12;
    }

    if (qword_1EB6C2AB8 == a1)
    {
      if (a4)
      {
        v6 = a4;
        v7 = a4;
        return v6;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return swift_unknownObjectRetain();
    }
  }

  return a3;
}

void sub_1AF938B6C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  type metadata accessor for _StaticWorldValueNode(0);
  v9 = swift_dynamicCastClass();
  if (v9)
  {
    v10 = &OBJC_IVAR____TtC3VFX21_StaticWorldValueNode_target;
  }

  else
  {
    type metadata accessor for WorldObjectNode(0);
    v9 = swift_dynamicCastClass();
    if (!v9)
    {
      return;
    }

    v10 = &OBJC_IVAR____TtC3VFX15WorldObjectNode_reference;
  }

  v11 = v9;
  v12 = (v9 + *v10);
  sub_1AF44596C(v12, &v21);
  Strong = swift_unknownObjectWeakLoadStrong();
  v14 = v22;
  sub_1AF4459C8(&v21);
  if (Strong)
  {
    if (sub_1AF938A24(Strong, v14, a4, a5))
    {
      v16 = v15;
      sub_1AF4459C8(v12);
      v12[1] = 0;
      swift_unknownObjectWeakInit();
      v12[1] = v16;
      swift_unknownObjectWeakAssign();
      ObjectType = swift_getObjectType();
      v18 = (*(v16 + 16))(ObjectType, v16);
      v20 = v19;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v12[2] = v18;
      v12[3] = v20;
    }

    else
    {
      v21 = 0;
      v22 = 0xE000000000000000;
      sub_1AFDFE218();
      MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF3B340);
      swift_getObjectType();
      v23 = Strong;
      sub_1AFDFEDD8();
      sub_1AF9392C4(v11, v21, v22, a2, a3);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_1AF9392C4(v11, 0xD000000000000016, 0x80000001AFF3B320, a2, a3);
  }
}

uint64_t sub_1AF938D88()
{
  v43[3] = *MEMORY[0x1E69E9840];
  v36 = *v0;
  v43[2] = MEMORY[0x1E69E7CD0];
  v1 = sub_1AF932728();
  if (v1 >> 62)
  {
    v20 = v1;
    v2 = sub_1AFDFE108();
    v1 = v20;
    v30 = v0;
    v31 = v20;
    if (!v2)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v30 = v0;
    v31 = v1;
    if (!v2)
    {
      goto LABEL_24;
    }
  }

  v3 = 0;
  v34 = v1 & 0xC000000000000001;
  v32 = v1 + 32;
  v33 = xmmword_1AFE4C3E0;
  v4 = MEMORY[0x1E69E7CC0];
  v35 = v2;
  do
  {
    if (v34)
    {
      v5 = MEMORY[0x1B2719C70](v3, v31);
    }

    else
    {
      v5 = *(v32 + 8 * v3);
    }

    v40 = v3;
    sub_1AF93DB24(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v6 = swift_allocObject();
    *(v6 + 16) = v33;
    *(v6 + 32) = v5;
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    MEMORY[0x1EEE9AC00](v7);
    MEMORY[0x1EEE9AC00](v8);
    v27 = sub_1AF93B4E0;
    v28 = v9;

    v43[0] = sub_1AF42B0F4(v4);
    v43[1] = v10;
    v37 = v7 + 16;
    v11 = *(v7 + 16);
    v12 = sub_1AF42B2DC(v4);
    v41 = v4;
    v42 = v12;
    if (v11 >> 62)
    {
      v13 = sub_1AFDFE108();
    }

    else
    {
      v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v38 = &v29;
    v39 = v5;
    swift_bridgeObjectRetain_n();

    if (v13)
    {
      for (i = 0; i != v13; ++i)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x1B2719C70](i, v11);
        }

        else
        {
          v15 = *(v11 + 8 * i + 32);
        }

        sub_1AF3DC99C(v15, 1, 0x1000000000000000uLL, 0, v4, sub_1AF441EF8, (&v29 - 4), &v42, v43, &v41);
      }
    }

    if (v41 >> 62)
    {
      v16 = sub_1AFDFE108();
    }

    else
    {
      v16 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v17 = v35;
    v18 = v40;
    if (v16)
    {

      sub_1AF48F7F8(v19);
    }

    v3 = v18 + 1;
  }

  while (v3 != v17);
LABEL_24:

  MEMORY[0x1EEE9AC00](v21);
  MEMORY[0x1EEE9AC00](v22);
  MEMORY[0x1EEE9AC00](v23);
  v24 = v30;
  sub_1AF3FC1C0(sub_1AF92E8FC, (&v29 - 4), 0, 0x1000000000000000uLL, 0, MEMORY[0x1E69E7CC0]);
  v25 = sub_1AF449CC8();

  v24[2] = v25;
}

uint64_t sub_1AF9392C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1AF483618(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC3VFX4Node_authoringID;
  v14 = sub_1AFDFC318();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v12, a1 + v13, v14);
  (*(v15 + 56))(v12, 0, 1, v14);
  v16 = type metadata accessor for GraphError(0);
  sub_1AF9371BC();
  v17 = swift_allocError();
  v19 = v18;
  *(v18 + v16[8]) = 0;
  *v18 = 0;
  sub_1AF937574(v12, v18 + v16[5], sub_1AF483618);
  v20 = v19 + v16[6];
  *v20 = 1;
  v20[8] = -64;
  v21 = (v19 + v16[7]);
  *v21 = a2;
  v21[1] = a3;
  v22 = OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics;
  v23 = *(a4 + OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics);

  result = swift_isUniquelyReferenced_nonNull_native();
  *(a4 + v22) = v23;
  if ((result & 1) == 0)
  {
    result = sub_1AF420408(0, v23[2] + 1, 1, v23);
    v23 = result;
    *(a4 + v22) = result;
  }

  v26 = v23[2];
  v25 = v23[3];
  if (v26 >= v25 >> 1)
  {
    result = sub_1AF420408(v25 > 1, v26 + 1, 1, v23);
    v23 = result;
  }

  v23[2] = v26 + 1;
  v23[v26 + 4] = v17;
  *(a4 + v22) = v23;
  *(a5 + 16) = 1;
  return result;
}

uint64_t sub_1AF9394F0@<X0>(void *a1@<X0>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, _BYTE *a6@<X6>, __objc2_class ***a7@<X8>)
{
  v12 = a1[1];
  v13 = a1[2];
  v15 = a1[3];
  v14 = a1[4];
  swift_retain_n();
  v16 = a2;

  v17 = sub_1AF93B6AC(v12, v16, a3, v12, v13, v15, v14, a4, a5);

  if (v17)
  {

    *a6 = 1;
    v12 = v17;
  }

  *a7 = v12;
  return result;
}

void sub_1AF939634(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = *(a1 + 8);
  v5 = *(*v4 + 152);

  v5(v56, v6);
  v7 = v56[0];
  v62 = v56[0];
  v61 = v56[1];
  v8 = MEMORY[0x1E69E62F8];
  sub_1AF93B650(&v61, &qword_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8]);
  v60 = v56[2];
  sub_1AF93B650(&v60, &qword_1EB638968, &type metadata for TypeConstraint, v8);
  v59 = v56[3];
  sub_1AF93B5F0(&v59, sub_1AF445C2C);
  v58 = v56[4];
  sub_1AF93B5F0(&v58, sub_1AF445C2C);
  v57 = v56[5];
  sub_1AF93B650(&v57, &qword_1EB638978, &type metadata for AnyValue, v8);
  v9 = *(v7 + 16);
  if (!v9)
  {
LABEL_21:
    sub_1AF93B650(&v62, &qword_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8]);
    goto LABEL_27;
  }

  v10 = 32;
  v11 = 40;
  v43 = v7;
  while (1)
  {
    v12 = *(v7 + v10);
    sub_1AF4410A8(v12);
    if (sub_1AF9C5694(v12, 0xA000000000000048))
    {
      break;
    }

    sub_1AF441114(v12);
LABEL_4:
    v10 += 8;
    v11 += 16;
    if (!--v9)
    {
      goto LABEL_21;
    }
  }

  type metadata accessor for WorldObjectNode(0);
  v13 = swift_dynamicCastClass();
  if (!v13)
  {
    goto LABEL_24;
  }

  sub_1AF44596C(v13 + OBJC_IVAR____TtC3VFX15WorldObjectNode_reference, &v49);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1AF4459C8(&v49);
  if (!Strong)
  {
    goto LABEL_24;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    swift_unknownObjectRelease();
LABEL_24:
    sub_1AF93B650(&v62, &qword_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8]);
    v38 = sub_1AF93D7F0(v4, 0xD00000000000001DLL, 0x80000001AFF3B260, a2, a3);

    sub_1AF441114(v12);

    v4 = v38;
    goto LABEL_27;
  }

  v15 = sub_1AF929618();
  if (!v16)
  {
    goto LABEL_22;
  }

  v17 = v15;
  v18 = HIDWORD(v15);
  if (HIDWORD(v15) || v15 != -1)
  {

    sub_1AF3CA1CC(v17, &v49);
  }

  else
  {
    v55 = 0;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
  }

  v46 = v53;
  v47 = v54;
  v48 = v55;
  v44[0] = v49;
  v44[1] = v50;
  v44[2] = v51;
  v45 = v52;
  if (!v49)
  {
LABEL_22:
    v34 = &qword_1EB638968;
    v35 = &type metadata for TypeConstraint;
    v36 = MEMORY[0x1E69E62F8];
    v37 = &v62;
    goto LABEL_26;
  }

  if (BYTE13(v45))
  {
    type metadata accessor for GetGPUEmitterNode(0);
    v19 = swift_allocObject();
    v20 = (v19 + OBJC_IVAR____TtC3VFX17GetGPUEmitterNode_entity);
    *v20 = v17;
    v20[1] = v18;
    v19[2] = MEMORY[0x1E69E7CC0];
    v19[3] = 0;
    v19[4] = 0;
    sub_1AFDFC308();
    sub_1AF93DB24(0, &unk_1EB6309B8, &type metadata for Node.Port, MEMORY[0x1E69E6F90]);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1AFE431C0;
    v22 = (v4[2] + v11);
    v24 = *(v22 - 1);
    v23 = *v22;
    *(v21 + 32) = v24;
    *(v21 + 40) = v23;
    v19[2] = v21;

    v25 = v19[3];
    v26 = v19[4];
    v19[3] = &unk_1F2504DA8;
    v19[4] = &unk_1F2504DD0;
    sub_1AF919DAC(v25, v26);
    v27 = v4[2];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4[2] = v27;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v27 = sub_1AFC0DC4C(v27);
      v4[2] = v27;
    }

    v7 = v43;
    v29 = &v27[v11];
    *(v29 - 1) = v19;
    *v29 = 0;

    v30 = v4[3];
    v31 = swift_isUniquelyReferenced_nonNull_native();
    v4[3] = v30;
    if ((v31 & 1) == 0)
    {
      v4[3] = sub_1AFC0DC74(v30);
    }

    sub_1AF441114(v12);
    swift_unknownObjectRelease();
    sub_1AF93B650(v44, &unk_1EB634140, &type metadata for EmitterDescription, MEMORY[0x1E69E6720]);

    v32 = v4[3];
    v33 = *(v32 + v10);
    *(v32 + v10) = 0xC0000000000000B0;
    sub_1AF445BE4(v33);
    goto LABEL_4;
  }

  sub_1AF93B650(&v62, &qword_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8]);
  v34 = &unk_1EB634140;
  v35 = &type metadata for EmitterDescription;
  v36 = MEMORY[0x1E69E6720];
  v37 = v44;
LABEL_26:
  sub_1AF93B650(v37, v34, v35, v36);
  v39 = sub_1AF93D7F0(v4, 0xD000000000000011, 0x80000001AFF3B280, a2, a3);

  sub_1AF441114(v12);

  swift_unknownObjectRelease();
  v4 = v39;
LABEL_27:
  *a4 = v4;
}

void sub_1AF939BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1AF483618(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v70 - v12;
  v14 = swift_conformsToProtocol2();
  if (!v14)
  {
    __break(1u);
    return;
  }

  v15 = (*(v14 + 16))(a3, v14);
  v17 = v16;
  type metadata accessor for WorldObjectNode(0);
  v18 = swift_dynamicCastClass();
  if (!v18)
  {
    goto LABEL_16;
  }

  v73 = v15;
  sub_1AF44596C(v18 + OBJC_IVAR____TtC3VFX15WorldObjectNode_reference, &v74);
  Strong = swift_unknownObjectWeakLoadStrong();

  sub_1AF4459C8(&v74);
  if (!Strong)
  {

LABEL_16:

    goto LABEL_17;
  }

  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  if (!v20)
  {

    swift_unknownObjectRelease();
LABEL_17:
    v31 = OBJC_IVAR____TtC3VFX4Node_authoringID;
    v32 = sub_1AFDFC318();
    v33 = *(v32 - 8);
    (*(v33 + 16))(v10, a1 + v31, v32);
    (*(v33 + 56))(v10, 0, 1, v32);
    v34 = type metadata accessor for GraphError(0);
    sub_1AF9371BC();
    v35 = swift_allocError();
    v37 = v36;
    *(v36 + v34[8]) = 0;
    *v36 = 0;
    sub_1AF937574(v10, v36 + v34[5], sub_1AF483618);
    v38 = v37 + v34[6];
    *v38 = 0;
    v38[8] = -95;
    *(v37 + v34[7]) = xmmword_1AFE860D0;
    v39 = OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics;
    v40 = *(a5 + OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a5 + v39) = v40;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v40 = sub_1AF420408(0, v40[2] + 1, 1, v40);
      *(a5 + v39) = v40;
    }

    v43 = v40[2];
    v42 = v40[3];
    if (v43 >= v42 >> 1)
    {
      v40 = sub_1AF420408(v42 > 1, v43 + 1, 1, v40);
    }

    v40[2] = v43 + 1;
    v40[v43 + 4] = v35;
    *(a5 + v39) = v40;
    return;
  }

  v21 = v20;
  v22 = [v20 particleEmitter];
  if (!v22 || (v22, v71 = v21, (v23 = [v21 behaviorGraph]) == 0) || (v24 = v23, v72 = Strong, v25 = objc_msgSend(v23, sel_entityObject), v24, !v25) || (v26 = objc_msgSend(v25, sel_presentationProperties), v25, !v26))
  {

    swift_unknownObjectRelease();
    goto LABEL_16;
  }

  v27 = swift_weakLoadStrong();
  if (!v27)
  {

    swift_unknownObjectRelease();

    goto LABEL_17;
  }

  v28 = v26;
  v29 = *&v26[OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity];
  v30 = *&v26[OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity + 4];
  v70 = v27;

  if (__PAIR64__(v30, v29) == 0xFFFFFFFF)
  {

    swift_unknownObjectRelease();

    bzero(&v74, 0x348uLL);
LABEL_27:
    sub_1AF93B650(&v74, &qword_1ED722AC0, &type metadata for EmitterRuntime, MEMORY[0x1E69E6720]);
    return;
  }

  sub_1AF3CB0C0(v29 | (v30 << 32), &v74);

  if (!v76)
  {

    swift_unknownObjectRelease();

    goto LABEL_27;
  }

  v44 = swift_weakLoadStrong();
  if (v44)
  {
    v45 = *(*(v44 + 16) + 32);
  }

  else
  {
    v45 = MEMORY[0x1E69E7CC0];
  }

  sub_1AF58D38C(&v74);
  v46 = *(v45 + 16);
  if (v46)
  {
    v47 = 32;
    while (*(v45 + v47) != a3)
    {
      v47 += 16;
      if (!--v46)
      {
        goto LABEL_33;
      }
    }

    swift_unknownObjectRelease();
  }

  else
  {
LABEL_33:

    v48 = OBJC_IVAR____TtC3VFX4Node_authoringID;
    v49 = sub_1AFDFC318();
    v50 = *(v49 - 8);
    (*(v50 + 16))(v13, a1 + v48, v49);
    (*(v50 + 56))(v13, 0, 1, v49);
    v74 = 543450177;
    v75 = 0xE400000000000000;
    MEMORY[0x1B2718AE0](v73, v17);

    MEMORY[0x1B2718AE0](544175136, 0xE400000000000000);
    v51 = [v71 name];
    if (v51)
    {
      v52 = v51;
      v53 = sub_1AFDFCEF8();
      v55 = v54;
    }

    else
    {
      v55 = 0xE700000000000000;
      v53 = 0x72657474696D65;
    }

    MEMORY[0x1B2718AE0](v53, v55);

    v56 = v74;
    v57 = v75;
    v58 = type metadata accessor for GraphError(0);
    sub_1AF9371BC();
    v59 = swift_allocError();
    v61 = v60;
    *(v60 + v58[8]) = 0;
    *v60 = 0;
    sub_1AF937574(v13, v60 + v58[5], sub_1AF483618);
    v62 = v61 + v58[6];
    *v62 = 0;
    v62[8] = -95;
    v63 = (v61 + v58[7]);
    *v63 = v56;
    v63[1] = v57;
    v64 = OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics;
    v65 = *(a5 + OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics);
    v66 = swift_isUniquelyReferenced_nonNull_native();
    *(a5 + v64) = v65;
    if ((v66 & 1) == 0)
    {
      v65 = sub_1AF420408(0, v65[2] + 1, 1, v65);
      *(a5 + v64) = v65;
    }

    v68 = v65[2];
    v67 = v65[3];
    if (v68 >= v67 >> 1)
    {
      *(a5 + v64) = sub_1AF420408(v67 > 1, v68 + 1, 1, v65);
    }

    swift_unknownObjectRelease();
    v69 = *(a5 + v64);
    *(v69 + 16) = v68 + 1;
    *(v69 + 8 * v68 + 32) = v59;
    *(a5 + v64) = v69;
  }
}

void sub_1AF93A3A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  type metadata accessor for EmitterLookupParticleIndexNode(0);
  if (!swift_dynamicCastClass())
  {
    if (*v3 == _TtC3VFX27GetParticleValueAtIndexNode)
    {
      v8 = sub_1AFDFDFD8();
      v9 = swift_conformsToProtocol2();
      if (v9)
      {
        v5 = v9;
        v6 = v3;
        v7 = 0;
LABEL_9:
        v4 = v8;
        goto LABEL_10;
      }

      __break(1u);
    }

    else
    {
      if (*v3 != _TtC3VFX27SetParticleValueAtIndexNode)
      {
        return;
      }

      v8 = sub_1AFDFDFD8();
      v10 = swift_conformsToProtocol2();
      if (v10)
      {
        v5 = v10;
        v6 = v3;
        v7 = 1;
        goto LABEL_9;
      }
    }

    __break(1u);
    return;
  }

  v4 = &type metadata for ParticleID;
  v5 = &off_1F252DF28;
  v6 = v3;
  v7 = 0;
LABEL_10:
  sub_1AF939BE8(v6, v7, v4, v5, a2);
}

void sub_1AF93A53C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for GraphError(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v42 - v9;
  v11 = *(a1 + 8);
  type metadata accessor for RandomNode(0);
  if (swift_dynamicCastClass())
  {

    v12 = sub_1AF9A898C();

    v13 = *(*(v11 + 2) + 64);
    type metadata accessor for ImplicitNilNode(0);
    if (swift_dynamicCastClass() || *v13 == _TtC3VFX20ImplicitConstantNode || (v14 = *v13, type metadata accessor for ImplicitEnumConstantNode(0), swift_dynamicCastClass()) || ((type metadata accessor for ImplicitStateNode(0), v15 = swift_dynamicCastClass(), v14 != _TtC3VFX19ImplicitComposeNode) ? (v16 = v15 == 0) : (v16 = 0), !v16 || (type metadata accessor for ImplicitPartialComposeNode(0), swift_dynamicCastClass()) || (type metadata accessor for ImplicitWorldAssetNode(0), swift_dynamicCastClass()) || ((type metadata accessor for ImplicitWorldObjectNode(0), v17 = swift_dynamicCastClass(), v14 != _TtC3VFX21ImplicitDecomposeNode) ? (v18 = v17 == 0) : (v18 = 0), !v18)))
    {
      type metadata accessor for ConstantNode(0);
      v19 = swift_dynamicCastClass();
      if (v19)
      {
        sub_1AF0D5A54(v19 + OBJC_IVAR____TtC3VFX12ConstantNode_holder + 8, &v48);
      }

      else
      {
        v48 = 0u;
        v49 = 0u;
      }

      sub_1AF93DB24(0, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);

      if (!swift_dynamicCast() || v12 || !v46)
      {

        return;
      }
    }

    else
    {
      if (v12)
      {
        return;
      }
    }

    v44 = v2;
    (*(*v11 + 152))(&v48);
    v57 = *(&v49 + 1);
    v20 = sub_1AF970A64(2, *(&v49 + 1));
    v42 = v21;
    v43 = v20;
    v56 = v48;
    v45 = a2;
    v22 = MEMORY[0x1E69E62F8];
    sub_1AF93B650(&v56, &qword_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8]);
    v55 = *(&v48 + 1);
    sub_1AF93B650(&v55, &qword_1EB638968, &type metadata for TypeConstraint, v22);
    v54 = v49;
    sub_1AF93B650(&v54, &qword_1EB638968, &type metadata for TypeConstraint, v22);
    sub_1AF93B5F0(&v57, sub_1AF445C2C);
    v53 = v50;
    sub_1AF93B5F0(&v53, sub_1AF445C2C);
    v52 = v51;
    sub_1AF93B650(&v52, &qword_1EB638978, &type metadata for AnyValue, v22);
    v23 = v5[5];
    v24 = OBJC_IVAR____TtC3VFX4Node_authoringID;
    v25 = sub_1AFDFC318();
    v26 = *(v25 - 8);
    (*(v26 + 16))(&v10[v23], &v11[v24], v25);
    (*(v26 + 56))(&v10[v23], 0, 1, v25);
    v46 = 0;
    v47 = 0xE000000000000000;
    sub_1AFDFE218();

    v46 = v43;
    v47 = v42;
    MEMORY[0x1B2718AE0](0xD00000000000001ELL, 0x80000001AFF3B300);
    v27 = v46;
    v28 = v47;
    v10[v5[8]] = 0;
    *v10 = 0;
    v29 = &v10[v5[6]];
    *v29 = 2;
    v29[8] = 96;
    v30 = &v10[v5[7]];
    *v30 = v27;
    *(v30 + 1) = v28;
    sub_1AF93DABC(v10, v7, type metadata accessor for GraphError);
    v7[v5[8]] = 1;
    v31 = sub_1AF9371BC();
    v32 = swift_allocError();
    sub_1AF93DABC(v7, v33, type metadata accessor for GraphError);
    v34 = OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics;
    v35 = v45;
    v36 = *(v45 + OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v35 + v34) = v36;
    v42 = v32;
    v43 = v31;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v36 = sub_1AF420408(0, v36[2] + 1, 1, v36);
      *(v45 + v34) = v36;
    }

    v39 = v36[2];
    v38 = v36[3];
    if (v39 >= v38 >> 1)
    {
      v36 = sub_1AF420408(v38 > 1, v39 + 1, 1, v36);
    }

    v36[2] = v39 + 1;
    v36[v39 + 4] = v42;
    *(v45 + v34) = v36;
    v40 = swift_allocError();
    sub_1AF937574(v7, v41, type metadata accessor for GraphError);

    sub_1AF93B5F0(v10, type metadata accessor for GraphError);
  }
}

uint64_t sub_1AF93AB50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, int a6)
{
  v7 = v6;
  v86 = a6;
  v85 = a5;
  sub_1AF483618(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 8);
  v15 = *v14;
  v16 = swift_conformsToProtocol2();
  if (v16)
  {
    v80[0] = v13;
    v81 = a2;
    v84 = v14;
    v17 = *(v16 + 48);
    v18 = v16;

    v19 = v17(v15, v18);
    v90 = v19;

    v21 = sub_1AF93CF7C(v20);

    if (v21)
    {
      v22 = v19;
      v23 = *v21;
      v24 = swift_conformsToProtocol2();
      if (!v24)
      {

        v19 = v22;
        v26 = *(v22 + 16);
        if (v26)
        {
          goto LABEL_6;
        }

        goto LABEL_32;
      }

      v25 = (*(v24 + 48))(v23, v24);
      sub_1AF490C24(v25);

      v19 = v90;
    }

    v26 = *(v19 + 16);
    if (v26)
    {
LABEL_6:
      v80[2] = v7;
      v83 = OBJC_IVAR____TtC3VFX13EntityManager_commandQueues;
      v80[1] = v19;
      v27 = (v19 + 48);
      v82 = thread_worker_index;
      do
      {
        v28 = *(v27 - 2);
        if (((v28 >> 59) & 0x1E) == 0xA)
        {
          goto LABEL_8;
        }

        v29 = *v27;
        v30 = (v28 >> 59) & 0x1E | (v28 >> 2) & 1;
        if (v30 == 10 || v30 == 5 || v30 == 4)
        {
          sub_1AF443EE0(v28);
          sub_1AF444224(v29);
          sub_1AFDFDFD8();
          result = swift_conformsToProtocol2();
          if (!result)
          {
            __break(1u);
            return result;
          }

          if (swift_dynamicCastMetatype())
          {
LABEL_7:
            sub_1AF443F24(v28);
            sub_1AF444AF4(v29);
            goto LABEL_8;
          }
        }

        else
        {
          sub_1AF443EE0(*(v27 - 2));
          sub_1AF444224(v29);
          if (v30 == 1)
          {
            sub_1AF93DABC((v28 & 0xFFFFFFFFFFFFFFBLL) + 16, &v87, sub_1AF93DA58);

            sub_1AF640200(&v87, v89);
            Strong = swift_unknownObjectWeakLoadStrong();
            if (qword_1EB633DC0 != -1)
            {
              swift_once();
            }

            v33 = qword_1EB6C2AA8;
            sub_1AF4459C8(v89);
            if (Strong)
            {
              swift_unknownObjectRelease();
              if (Strong == v33)
              {
                goto LABEL_7;
              }
            }
          }
        }

        v34 = (v82)(&thread_worker_index);
        v35 = *(a4 + v83);
        if (*v34 != -1)
        {
          v35 += *v34 + 1;
        }

        v36 = *v35;
        sub_1AF443EE0(v28);
        v37 = sub_1AFAE0478(v28, 9, 0, 1, v85, v86 & 1, v36, 0, 0);
        if (v40 >= 0xFCu)
        {

          if (*(a4 + OBJC_IVAR____TtC3VFX13EntityManager_isInPrepare) == 1)
          {
            sub_1AF443F24(v28);
          }

          else
          {
            v57 = *(a4 + OBJC_IVAR____TtC3VFX13EntityManager_logger);
            v87 = 0;
            v88 = 0xE000000000000000;

            sub_1AFDFE218();
            MEMORY[0x1B2718AE0](0xD000000000000022, 0x80000001AFF28340);
            v89[0] = v28;
            sub_1AFDFE458();
            v58 = v87;
            v59 = v88;
            v60 = sub_1AFDFDA08();
            v87 = 0;
            (*(*v57 + 88))(v60, &v87, v58, v59);
            sub_1AF443F24(v28);
          }

          v61 = v80[0];
          v62 = OBJC_IVAR____TtC3VFX4Node_authoringID;
          v63 = sub_1AFDFC318();
          v64 = *(v63 - 8);
          (*(v64 + 16))(v61, v84 + v62, v63);
          (*(v64 + 56))(v61, 0, 1, v63);
          v65 = type metadata accessor for GraphError(0);
          sub_1AF9371BC();
          v66 = swift_allocError();
          v68 = v67;
          *(v67 + v65[8]) = 0;
          *v67 = 0;
          sub_1AF937574(v61, v67 + v65[5], sub_1AF483618);
          v69 = v68 + v65[6];
          *v69 = 0;
          v69[8] = -95;
          v70 = (v68 + v65[7]);
          *v70 = 0xD000000000000012;
          v70[1] = 0x80000001AFF3B2A0;
          v71 = OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics;
          v72 = v81;
          v73 = *(v81 + OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v72 + v71) = v73;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v73 = sub_1AF420408(0, v73[2] + 1, 1, v73);
            *(v81 + v71) = v73;
          }

          v76 = v73[2];
          v75 = v73[3];
          if (v76 >= v75 >> 1)
          {
            v79 = sub_1AF420408(v75 > 1, v76 + 1, 1, v73);
            *(v81 + v71) = v79;
          }

          sub_1AF443F24(v28);
          sub_1AF444AF4(v29);

          v77 = v81;
          v78 = *(v81 + v71);
          *(v78 + 16) = v76 + 1;
          *(v78 + 8 * v76 + 32) = v66;
          *(v77 + v71) = v78;
          return result;
        }

        v41 = v37;
        v42 = v38;
        v43 = v39;
        v44 = v40;
        sub_1AF443F24(v28);
        sub_1AF443F24(v28);
        sub_1AF444AF4(v29);
        sub_1AF93DA44(v41, v42, v43, v44);
LABEL_8:
        v27 += 5;
        --v26;
      }

      while (v26);
    }

LABEL_32:
  }

  v45 = OBJC_IVAR____TtC3VFX4Node_authoringID;
  v46 = sub_1AFDFC318();
  v47 = *(v46 - 8);
  (*(v47 + 16))(v13, v14 + v45, v46);
  (*(v47 + 56))(v13, 0, 1, v46);
  v48 = type metadata accessor for GraphError(0);
  sub_1AF9371BC();
  v49 = swift_allocError();
  v51 = v50;
  *(v50 + v48[8]) = 0;
  *v50 = 0;
  sub_1AF937574(v13, v50 + v48[5], sub_1AF483618);
  v52 = v51 + v48[6];
  *v52 = 0;
  v52[8] = -95;
  *(v51 + v48[7]) = xmmword_1AFE860E0;
  v53 = OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics;
  v54 = *(a2 + OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + v53) = v54;
  if ((result & 1) == 0)
  {
    result = sub_1AF420408(0, v54[2] + 1, 1, v54);
    v54 = result;
    *(a2 + v53) = result;
  }

  v56 = v54[2];
  v55 = v54[3];
  if (v56 >= v55 >> 1)
  {
    result = sub_1AF420408(v55 > 1, v56 + 1, 1, v54);
    v54 = result;
  }

  v54[2] = v56 + 1;
  v54[v56 + 4] = v49;
  *(a2 + v53) = v54;
  return result;
}

uint64_t sub_1AF93B470@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  result = sub_1AFDFCE68();
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_1AF93B51C@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(uint64_t *)@<X1>, void *a3@<X8>)
{
  v4 = a1[5];
  v9 = *a1;
  v8 = *(a1 + 1);
  v10 = v8;
  v11 = *(a1 + 3);
  v12 = v4;
  if (a2(&v9))
  {
    v5 = v8;
  }

  else
  {
    _s11DeletedNodeCMa(0);
    v5 = swift_allocObject();
    v7 = MEMORY[0x1E69E7CC0];
    v5[3] = 0;
    v5[4] = 0;
    v5[2] = v7;
    result = sub_1AFDFC308();
  }

  *a3 = v5;
  return result;
}

uint64_t sub_1AF93B5F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AF93B650(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  sub_1AF93DB24(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

__objc2_class **sub_1AF93B6AC(__objc2_class **a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a2;
  v11 = a1;
  v12 = a9;
  if (*a1 != _TtC3VFX20GetAnyWorldValueNode)
  {
    if (*a1 == _TtC3VFX20SetAnyWorldValueNode)
    {
      type metadata accessor for WorldObjectNode(0);
      v35 = v10;

      v36 = swift_dynamicCastClass();
      if (v36)
      {
        sub_1AF44596C(v36 + OBJC_IVAR____TtC3VFX15WorldObjectNode_reference, &v123);
        Strong = swift_unknownObjectWeakLoadStrong();
        v38 = v35;
        swift_retain_n();
        swift_retain_n();
        swift_bridgeObjectRetain_n();
        swift_retain_n();
        swift_bridgeObjectRetain_n();
        v39 = v38;

        sub_1AF4459C8(&v123);
        if (Strong)
        {
          swift_getObjectType();
          v40 = swift_conformsToProtocol2();
          if (v40)
          {
            v41 = v40;

            v116 = v39;
            v42 = type metadata accessor for SetWorldValueNode(0);
            ObjectType = swift_getObjectType();
            v44 = *(v11 + OBJC_IVAR____TtC3VFX18_AnyWorldValueNode_scriptKeyPath + 16);
            v123 = *(v11 + OBJC_IVAR____TtC3VFX18_AnyWorldValueNode_scriptKeyPath);
            v124[0] = v44;
            *(v124 + 12) = *(v11 + OBJC_IVAR____TtC3VFX18_AnyWorldValueNode_scriptKeyPath + 28);
            v125[0] = v123;
            swift_unknownObjectRetain();
            sub_1AF450FE0(v125, v122);
            v45 = *(v41 + 8);

            v46 = sub_1AF9C3D40(Strong, &v123, v42, ObjectType, v45);
            v47 = OBJC_IVAR____TtC3VFX4Node_authoringID;
            v48 = sub_1AFDFC318();
            v49 = *(*(v48 - 8) + 24);

            v49(v46 + v47, v11 + v47, v48);
            v46[2] = v11[2];

            sub_1AF620FB0(1);

            v50 = v11[3];
            v51 = v11[4];
            v52 = v46[3];
            v53 = v46[4];
            v46[3] = v50;
            v46[4] = v51;
            sub_1AF448650(v50, v51);
            sub_1AF919DAC(v52, v53);
            v54 = sub_1AF621030(1);
            swift_unknownObjectRelease();
            sub_1AF445BE4(v54);

            v11 = v46;
LABEL_36:
            v10 = a2;
            goto LABEL_37;
          }

          swift_unknownObjectRelease();
        }
      }

      else
      {
        v81 = v35;
        swift_retain_n();
        swift_retain_n();
        swift_bridgeObjectRetain_n();
        swift_retain_n();
        swift_bridgeObjectRetain_n();
        v82 = v81;
      }

      *&v123 = 0;
      *(&v123 + 1) = 0xE000000000000000;
      sub_1AFDFE218();

      *&v123 = a8;
      *(&v123 + 1) = a9;
      MEMORY[0x1B2718AE0](0xD00000000000001DLL, 0x80000001AFF3B2E0);
      sub_1AF9392C4(a4, v123, *(&v123 + 1), v35, a3);

      swift_bridgeObjectRelease_n();

      goto LABEL_36;
    }

    type metadata accessor for GetAnyECSValueNode(0);
    v56 = swift_dynamicCastClass();
    if (v56)
    {
      v25 = v56;
      v117 = a8;
      type metadata accessor for WorldObjectNode(0);
      v57 = v10;

      v58 = swift_dynamicCastClass();
      if (v58)
      {
        sub_1AF44596C(v58 + OBJC_IVAR____TtC3VFX15WorldObjectNode_reference, &v123);
        v59 = swift_unknownObjectWeakLoadStrong();
        v60 = v57;
        swift_retain_n();
        swift_retain_n();
        swift_bridgeObjectRetain_n();
        swift_retain_n();
        swift_bridgeObjectRetain_n();
        v61 = v60;

        sub_1AF4459C8(&v123);
        if (v59)
        {
          v114 = a9;
          swift_getObjectType();
          if (swift_conformsToProtocol2())
          {

            swift_getObjectType();
            v62 = sub_1AF92975C();
            v64 = v63;
            swift_unknownObjectRelease();
            if (v64)
            {

              v65 = v61;
              v66 = v25 + OBJC_IVAR____TtC3VFX16_AnyECSValueNode_scriptKeyPath;
              v68 = *(v25 + OBJC_IVAR____TtC3VFX16_AnyECSValueNode_scriptKeyPath);
              v67 = *(v25 + OBJC_IVAR____TtC3VFX16_AnyECSValueNode_scriptKeyPath + 8);
              v69 = *(v25 + OBJC_IVAR____TtC3VFX16_AnyECSValueNode_scriptKeyPath + 32);
              v110 = *(v25 + OBJC_IVAR____TtC3VFX16_AnyECSValueNode_scriptKeyPath + 42);
              v112 = *(v25 + OBJC_IVAR____TtC3VFX16_AnyECSValueNode_scriptKeyPath + 40);
              type metadata accessor for GetECSValueNode(0);
              v11 = swift_allocObject();
              v70 = v11 + OBJC_IVAR____TtC3VFX19_StaticECSValueNode_entityKeyPath;
              v71 = *(v66 + 1);
              *v70 = v62;
              *(v70 + 1) = v68;
              *(v70 + 2) = v67;
              *(v70 + 24) = v71;
              *(v70 + 5) = v69;
              v70[48] = v112;
              *(v70 + 25) = v110;
              v72 = OBJC_IVAR____TtC3VFX4Node_authoringID;

              sub_1AFDFC308();
              v118 = OBJC_IVAR____TtC3VFX4Node_authoringID;
              v73 = sub_1AFDFC318();
              v74 = *(v73 - 8);
              v75 = *(v74 + 8);

              v75(v11 + v72, v73);
              (*(v74 + 16))(v11 + v72, v25 + v118, v73);
              v11[2] = v25[2];

              sub_1AF620FB0(0);

              v76 = v25[3];
              v77 = v25[4];
              v11[3] = v76;
              v11[4] = v77;
              sub_1AF448650(v76, v77);
              v78 = 0;
LABEL_25:
              v103 = sub_1AF621030(v78);
              sub_1AF445BE4(v103);

              v10 = a2;
              goto LABEL_37;
            }

LABEL_38:
            v12 = v114;
            v108 = v117;
            goto LABEL_34;
          }

LABEL_32:
          swift_unknownObjectRelease();
          v12 = v114;
          goto LABEL_33;
        }

        goto LABEL_33;
      }
    }

    else
    {
      type metadata accessor for SetAnyECSValueNode(0);
      v83 = swift_dynamicCastClass();
      if (!v83)
      {
        v106 = v10;
        swift_retain_n();
        swift_retain_n();
        swift_retain_n();
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        v107 = v106;
        v11 = 0;
        goto LABEL_37;
      }

      v25 = v83;
      v117 = a8;
      type metadata accessor for WorldObjectNode(0);
      v57 = v10;

      v84 = swift_dynamicCastClass();
      if (v84)
      {
        sub_1AF44596C(v84 + OBJC_IVAR____TtC3VFX15WorldObjectNode_reference, &v123);
        v85 = swift_unknownObjectWeakLoadStrong();
        v86 = v57;
        swift_retain_n();
        swift_retain_n();
        swift_bridgeObjectRetain_n();
        swift_retain_n();
        swift_bridgeObjectRetain_n();
        v87 = v86;

        sub_1AF4459C8(&v123);
        if (v85)
        {
          v114 = a9;
          swift_getObjectType();
          if (swift_conformsToProtocol2())
          {

            swift_getObjectType();
            v88 = sub_1AF92975C();
            v90 = v89;
            swift_unknownObjectRelease();
            if (v90)
            {

              v65 = v87;
              v91 = v25 + OBJC_IVAR____TtC3VFX16_AnyECSValueNode_scriptKeyPath;
              v93 = *(v25 + OBJC_IVAR____TtC3VFX16_AnyECSValueNode_scriptKeyPath);
              v92 = *(v25 + OBJC_IVAR____TtC3VFX16_AnyECSValueNode_scriptKeyPath + 8);
              v94 = *(v25 + OBJC_IVAR____TtC3VFX16_AnyECSValueNode_scriptKeyPath + 32);
              v111 = *(v25 + OBJC_IVAR____TtC3VFX16_AnyECSValueNode_scriptKeyPath + 42);
              v113 = *(v25 + OBJC_IVAR____TtC3VFX16_AnyECSValueNode_scriptKeyPath + 40);
              type metadata accessor for SetECSValueNode(0);
              v11 = swift_allocObject();
              v95 = v11 + OBJC_IVAR____TtC3VFX19_StaticECSValueNode_entityKeyPath;
              v96 = *(v91 + 1);
              *v95 = v88;
              *(v95 + 1) = v93;
              *(v95 + 2) = v92;
              *(v95 + 24) = v96;
              *(v95 + 5) = v94;
              v95[48] = v113;
              *(v95 + 25) = v111;
              v97 = OBJC_IVAR____TtC3VFX4Node_authoringID;

              sub_1AFDFC308();
              v119 = OBJC_IVAR____TtC3VFX4Node_authoringID;
              v98 = sub_1AFDFC318();
              v99 = *(v98 - 8);
              v100 = *(v99 + 8);

              v100(v11 + v97, v98);
              (*(v99 + 16))(v11 + v97, v25 + v119, v98);
              v11[2] = v25[2];

              sub_1AF620FB0(1);

              v101 = v25[3];
              v102 = v25[4];
              v11[3] = v101;
              v11[4] = v102;
              sub_1AF448650(v101, v102);
              v78 = 1;
              goto LABEL_25;
            }

            goto LABEL_38;
          }

          goto LABEL_32;
        }

LABEL_33:
        *&v123 = 0;
        *(&v123 + 1) = 0xE000000000000000;
        sub_1AFDFE218();

        v108 = v117;
        *&v123 = v117;
        *(&v123 + 1) = v12;
        MEMORY[0x1B2718AE0](0xD00000000000001DLL, 0x80000001AFF3B2E0);
        sub_1AF9392C4(a4, v123, *(&v123 + 1), v57, a3);

LABEL_34:
        *&v123 = 0;
        *(&v123 + 1) = 0xE000000000000000;
        sub_1AFDFE218();

        *&v123 = v108;
        *(&v123 + 1) = v12;
        MEMORY[0x1B2718AE0](0xD00000000000001DLL, 0x80000001AFF3B2E0);
        sub_1AF9392C4(a4, v123, *(&v123 + 1), v57, a3);

        goto LABEL_35;
      }
    }

    v104 = v57;
    swift_retain_n();
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    v105 = v104;

    goto LABEL_33;
  }

  type metadata accessor for WorldObjectNode(0);
  v14 = v10;

  v15 = swift_dynamicCastClass();
  if (v15)
  {
    sub_1AF44596C(v15 + OBJC_IVAR____TtC3VFX15WorldObjectNode_reference, &v123);
    v16 = swift_unknownObjectWeakLoadStrong();
    v17 = v14;
    swift_retain_n();
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    v18 = v17;

    sub_1AF4459C8(&v123);
    if (v16)
    {
      swift_getObjectType();
      v19 = swift_conformsToProtocol2();
      if (v19)
      {
        v20 = v19;

        v115 = v18;

        WorldValueNode = type metadata accessor for GetWorldValueNode(0);
        v22 = swift_getObjectType();
        v23 = *(v11 + OBJC_IVAR____TtC3VFX18_AnyWorldValueNode_scriptKeyPath + 16);
        v123 = *(v11 + OBJC_IVAR____TtC3VFX18_AnyWorldValueNode_scriptKeyPath);
        v124[0] = v23;
        *(v124 + 12) = *(v11 + OBJC_IVAR____TtC3VFX18_AnyWorldValueNode_scriptKeyPath + 28);
        v125[0] = v123;
        swift_unknownObjectRetain();
        sub_1AF450FE0(v125, v122);
        v24 = *(v20 + 8);

        v25 = sub_1AF9C3D58(v16, &v123, WorldValueNode, v22, v24);
        v26 = OBJC_IVAR____TtC3VFX4Node_authoringID;
        v27 = sub_1AFDFC318();
        v28 = *(*(v27 - 8) + 24);

        v28(v25 + v26, v11 + v26, v27);
        v25[2] = v11[2];

        sub_1AF620FB0(0);

        v29 = v11[3];
        v30 = v11[4];
        v31 = v25[3];
        v32 = v25[4];
        v25[3] = v29;
        v25[4] = v30;
        sub_1AF448650(v29, v30);
        sub_1AF919DAC(v31, v32);
        v33 = sub_1AF621030(0);
        swift_unknownObjectRelease();
        sub_1AF445BE4(v33);

LABEL_35:
        v11 = v25;
        goto LABEL_36;
      }

      swift_unknownObjectRelease();
    }
  }

  else
  {
    v79 = v14;
    swift_retain_n();
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    v80 = v79;
  }

  *&v123 = 0;
  *(&v123 + 1) = 0xE000000000000000;
  sub_1AFDFE218();

  *&v123 = a8;
  *(&v123 + 1) = a9;
  MEMORY[0x1B2718AE0](0xD00000000000001DLL, 0x80000001AFF3B2E0);
  sub_1AF9392C4(a4, v123, *(&v123 + 1), v14, a3);

  swift_bridgeObjectRelease_n();

  v10 = a2;
LABEL_37:
  swift_bridgeObjectRelease_n();

  swift_bridgeObjectRelease_n();

  return v11;
}

char *sub_1AF93C6F4(uint64_t a1, _BYTE *a2)
{
  if (*a1 == _TtC3VFX20GetAnyWorldValueNode)
  {
    type metadata accessor for WorldObjectNode(0);
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      sub_1AF44596C(v4 + OBJC_IVAR____TtC3VFX15WorldObjectNode_reference, &v86);
      Strong = swift_unknownObjectWeakLoadStrong();

      sub_1AF4459C8(&v86);
      if (Strong)
      {
        swift_getObjectType();
        v6 = swift_conformsToProtocol2();
        if (v6)
        {
          v7 = v6;

          WorldValueNode = type metadata accessor for GetWorldValueNode(0);
          ObjectType = swift_getObjectType();
          v10 = *(a1 + OBJC_IVAR____TtC3VFX18_AnyWorldValueNode_scriptKeyPath + 16);
          v86 = *(a1 + OBJC_IVAR____TtC3VFX18_AnyWorldValueNode_scriptKeyPath);
          v87[0] = v10;
          *(v87 + 12) = *(a1 + OBJC_IVAR____TtC3VFX18_AnyWorldValueNode_scriptKeyPath + 28);
          v88 = v86;
          swift_unknownObjectRetain();
          sub_1AF450FE0(&v88, v85);
          v11 = *(v7 + 8);

          v12 = sub_1AF9C3D58(Strong, &v86, WorldValueNode, ObjectType, v11);
          v13 = OBJC_IVAR____TtC3VFX4Node_authoringID;
          v14 = sub_1AFDFC318();
          v15 = *(*(v14 - 8) + 24);

          v15(&v12[v13], a1 + v13, v14);
          *(v12 + 2) = *(a1 + 16);

          sub_1AF620FB0(0);

          v16 = *(a1 + 24);
          v17 = *(a1 + 32);
          v18 = *(v12 + 3);
          v19 = *(v12 + 4);
          *(v12 + 3) = v16;
          *(v12 + 4) = v17;
          sub_1AF448650(v16, v17);
          sub_1AF919DAC(v18, v19);
          v20 = 0;
LABEL_11:
          v36 = sub_1AF621030(v20);
          swift_unknownObjectRelease();
          sub_1AF445BE4(v36);

          return v12;
        }

LABEL_19:
        swift_unknownObjectRelease();
        goto LABEL_20;
      }

      goto LABEL_20;
    }

    goto LABEL_12;
  }

  if (*a1 == _TtC3VFX20SetAnyWorldValueNode)
  {
    type metadata accessor for WorldObjectNode(0);
    v21 = swift_dynamicCastClass();
    if (v21)
    {
      sub_1AF44596C(v21 + OBJC_IVAR____TtC3VFX15WorldObjectNode_reference, &v86);
      v22 = swift_unknownObjectWeakLoadStrong();

      sub_1AF4459C8(&v86);
      if (v22)
      {
        swift_getObjectType();
        v23 = swift_conformsToProtocol2();
        if (v23)
        {
          v24 = v23;

          v25 = type metadata accessor for SetWorldValueNode(0);
          v26 = swift_getObjectType();
          v27 = *(a1 + OBJC_IVAR____TtC3VFX18_AnyWorldValueNode_scriptKeyPath + 16);
          v86 = *(a1 + OBJC_IVAR____TtC3VFX18_AnyWorldValueNode_scriptKeyPath);
          v87[0] = v27;
          *(v87 + 12) = *(a1 + OBJC_IVAR____TtC3VFX18_AnyWorldValueNode_scriptKeyPath + 28);
          v88 = v86;
          swift_unknownObjectRetain();
          sub_1AF450FE0(&v88, v85);
          v28 = *(v24 + 8);

          v12 = sub_1AF9C3D40(v22, &v86, v25, v26, v28);
          v29 = OBJC_IVAR____TtC3VFX4Node_authoringID;
          v30 = sub_1AFDFC318();
          v31 = *(*(v30 - 8) + 24);

          v31(&v12[v29], a1 + v29, v30);
          *(v12 + 2) = *(a1 + 16);

          sub_1AF620FB0(1);

          v32 = *(a1 + 24);
          v33 = *(a1 + 32);
          v34 = *(v12 + 3);
          v35 = *(v12 + 4);
          *(v12 + 3) = v32;
          *(v12 + 4) = v33;
          sub_1AF448650(v32, v33);
          sub_1AF919DAC(v34, v35);
          v20 = 1;
          goto LABEL_11;
        }

        goto LABEL_19;
      }

LABEL_20:
      *a2 = 1;
      return a1;
    }

LABEL_12:

    goto LABEL_20;
  }

  type metadata accessor for GetAnyECSValueNode(0);
  v38 = swift_dynamicCastClass();
  if (v38)
  {
    v39 = v38;
    type metadata accessor for WorldObjectNode(0);
    v40 = swift_dynamicCastClass();
    if (v40)
    {
      sub_1AF44596C(v40 + OBJC_IVAR____TtC3VFX15WorldObjectNode_reference, &v86);
      v41 = swift_unknownObjectWeakLoadStrong();

      sub_1AF4459C8(&v86);
      if (!v41)
      {
        goto LABEL_30;
      }

      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        v42 = sub_1AF92975C();
        v44 = v43;
        swift_unknownObjectRelease();
        if (v44)
        {

          v45 = v39;
          v46 = v39 + OBJC_IVAR____TtC3VFX16_AnyECSValueNode_scriptKeyPath;
          v48 = *v46;
          v47 = *(v46 + 8);
          v49 = *(v46 + 32);
          v50 = *(v46 + 40);
          v51 = *(v46 + 42);
          type metadata accessor for GetECSValueNode(0);
          v52 = swift_allocObject();
          v53 = &v52[OBJC_IVAR____TtC3VFX19_StaticECSValueNode_entityKeyPath];
          v54 = *(v46 + 16);
          *v53 = v42;
          *(v53 + 1) = v48;
          *(v53 + 2) = v47;
          *(v53 + 24) = v54;
          *(v53 + 5) = v49;
          v53[48] = v50;
          *(v53 + 25) = v51;
          v55 = OBJC_IVAR____TtC3VFX4Node_authoringID;

          sub_1AFDFC308();
          v56 = OBJC_IVAR____TtC3VFX4Node_authoringID;
          v57 = sub_1AFDFC318();
          v58 = *(v57 - 8);
          v59 = *(v58 + 8);

          v59(&v52[v55], v57);
          (*(v58 + 16))(&v52[v55], &v45[v56], v57);
          *(v52 + 2) = *(v45 + 2);

          sub_1AF620FB0(0);

          v60 = *(v45 + 3);
          v61 = *(v45 + 4);
          *(v52 + 3) = v60;
          *(v52 + 4) = v61;
          sub_1AF448650(v60, v61);
          v62 = 0;
LABEL_27:
          v84 = sub_1AF621030(v62);
          sub_1AF445BE4(v84);

          return v52;
        }

        goto LABEL_30;
      }

LABEL_29:
      swift_unknownObjectRelease();
      goto LABEL_30;
    }

LABEL_28:

    goto LABEL_30;
  }

  type metadata accessor for SetAnyECSValueNode(0);
  result = swift_dynamicCastClass();
  if (!result)
  {
    return result;
  }

  v39 = result;
  type metadata accessor for WorldObjectNode(0);
  v63 = swift_dynamicCastClass();
  if (!v63)
  {
    goto LABEL_28;
  }

  sub_1AF44596C(v63 + OBJC_IVAR____TtC3VFX15WorldObjectNode_reference, &v86);
  v64 = swift_unknownObjectWeakLoadStrong();

  sub_1AF4459C8(&v86);
  if (!v64)
  {
    goto LABEL_30;
  }

  swift_getObjectType();
  if (!swift_conformsToProtocol2())
  {
    goto LABEL_29;
  }

  v65 = sub_1AF92975C();
  v67 = v66;
  swift_unknownObjectRelease();
  if (v67)
  {

    v68 = v39;
    v69 = v39 + OBJC_IVAR____TtC3VFX16_AnyECSValueNode_scriptKeyPath;
    v71 = *v69;
    v70 = *(v69 + 8);
    v72 = *(v69 + 32);
    v73 = *(v69 + 40);
    v74 = *(v69 + 42);
    type metadata accessor for SetECSValueNode(0);
    v52 = swift_allocObject();
    v75 = &v52[OBJC_IVAR____TtC3VFX19_StaticECSValueNode_entityKeyPath];
    v76 = *(v69 + 16);
    *v75 = v65;
    *(v75 + 1) = v71;
    *(v75 + 2) = v70;
    *(v75 + 24) = v76;
    *(v75 + 5) = v72;
    v75[48] = v73;
    *(v75 + 25) = v74;
    v77 = OBJC_IVAR____TtC3VFX4Node_authoringID;

    sub_1AFDFC308();
    v78 = OBJC_IVAR____TtC3VFX4Node_authoringID;
    v79 = sub_1AFDFC318();
    v80 = *(v79 - 8);
    v81 = *(v80 + 8);

    v81(&v52[v77], v79);
    (*(v80 + 16))(&v52[v77], &v68[v78], v79);
    *(v52 + 2) = *(v68 + 2);

    sub_1AF620FB0(1);

    v82 = *(v68 + 3);
    v83 = *(v68 + 4);
    *(v52 + 3) = v82;
    *(v52 + 4) = v83;
    sub_1AF448650(v82, v83);
    v62 = 1;
    goto LABEL_27;
  }

LABEL_30:
  *a2 = 1;
  return v39;
}

__objc2_class **sub_1AF93CF7C(__objc2_class **a1)
{
  v1 = a1;
  if (*a1 == _TtC3VFX20GetAnyWorldValueNode)
  {
    type metadata accessor for WorldObjectNode(0);
    v2 = swift_dynamicCastClass();
    if (v2)
    {
      sub_1AF44596C(v2 + OBJC_IVAR____TtC3VFX15WorldObjectNode_reference, &v83);
      Strong = swift_unknownObjectWeakLoadStrong();

      sub_1AF4459C8(&v83);
      if (Strong)
      {
        swift_getObjectType();
        v4 = swift_conformsToProtocol2();
        if (v4)
        {
          v5 = v4;

          WorldValueNode = type metadata accessor for GetWorldValueNode(0);
          ObjectType = swift_getObjectType();
          v8 = *(v1 + OBJC_IVAR____TtC3VFX18_AnyWorldValueNode_scriptKeyPath + 16);
          v83 = *(v1 + OBJC_IVAR____TtC3VFX18_AnyWorldValueNode_scriptKeyPath);
          v84[0] = v8;
          *(v84 + 12) = *(v1 + OBJC_IVAR____TtC3VFX18_AnyWorldValueNode_scriptKeyPath + 28);
          v85 = v83;
          swift_unknownObjectRetain();
          sub_1AF450FE0(&v85, v82);
          v9 = *(v5 + 8);

          v10 = sub_1AF9C3D58(Strong, &v83, WorldValueNode, ObjectType, v9);
          v11 = OBJC_IVAR____TtC3VFX4Node_authoringID;
          v12 = sub_1AFDFC318();
          v13 = *(*(v12 - 8) + 24);

          v13(&v10[v11], v1 + v11, v12);
          *(v10 + 2) = v1[2];

          sub_1AF620FB0(0);

          v14 = v1[3];
          v15 = v1[4];
          v16 = *(v10 + 3);
          v17 = *(v10 + 4);
          *(v10 + 3) = v14;
          *(v10 + 4) = v15;
          sub_1AF448650(v14, v15);
          sub_1AF919DAC(v16, v17);
          v18 = 0;
LABEL_11:
          v34 = sub_1AF621030(v18);
          swift_unknownObjectRelease();
          sub_1AF445BE4(v34);

          return v10;
        }

LABEL_19:
        swift_unknownObjectRelease();
        return v1;
      }

      return v1;
    }
  }

  if (*a1 == _TtC3VFX20SetAnyWorldValueNode)
  {
    type metadata accessor for WorldObjectNode(0);
    v19 = swift_dynamicCastClass();
    if (v19)
    {
      sub_1AF44596C(v19 + OBJC_IVAR____TtC3VFX15WorldObjectNode_reference, &v83);
      v20 = swift_unknownObjectWeakLoadStrong();

      sub_1AF4459C8(&v83);
      if (v20)
      {
        swift_getObjectType();
        v21 = swift_conformsToProtocol2();
        if (v21)
        {
          v22 = v21;

          v23 = type metadata accessor for SetWorldValueNode(0);
          v24 = swift_getObjectType();
          v25 = *(v1 + OBJC_IVAR____TtC3VFX18_AnyWorldValueNode_scriptKeyPath + 16);
          v83 = *(v1 + OBJC_IVAR____TtC3VFX18_AnyWorldValueNode_scriptKeyPath);
          v84[0] = v25;
          *(v84 + 12) = *(v1 + OBJC_IVAR____TtC3VFX18_AnyWorldValueNode_scriptKeyPath + 28);
          v85 = v83;
          swift_unknownObjectRetain();
          sub_1AF450FE0(&v85, v82);
          v26 = *(v22 + 8);

          v10 = sub_1AF9C3D40(v20, &v83, v23, v24, v26);
          v27 = OBJC_IVAR____TtC3VFX4Node_authoringID;
          v28 = sub_1AFDFC318();
          v29 = *(*(v28 - 8) + 24);

          v29(&v10[v27], v1 + v27, v28);
          *(v10 + 2) = v1[2];

          sub_1AF620FB0(1);

          v30 = v1[3];
          v31 = v1[4];
          v32 = *(v10 + 3);
          v33 = *(v10 + 4);
          *(v10 + 3) = v30;
          *(v10 + 4) = v31;
          sub_1AF448650(v30, v31);
          sub_1AF919DAC(v32, v33);
          v18 = 1;
          goto LABEL_11;
        }

        goto LABEL_19;
      }

      return v1;
    }
  }

  type metadata accessor for GetAnyECSValueNode(0);
  v36 = swift_dynamicCastClass();
  if (v36)
  {
    v37 = v36;
    type metadata accessor for WorldObjectNode(0);
    v38 = swift_dynamicCastClass();
    if (v38)
    {
      sub_1AF44596C(v38 + OBJC_IVAR____TtC3VFX15WorldObjectNode_reference, &v83);
      v39 = swift_unknownObjectWeakLoadStrong();

      sub_1AF4459C8(&v83);
      if (!v39)
      {
        return v37;
      }

      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        v40 = sub_1AF92975C();
        v42 = v41;
        swift_unknownObjectRelease();
        if (v42)
        {

          v43 = v37;
          v44 = v37 + OBJC_IVAR____TtC3VFX16_AnyECSValueNode_scriptKeyPath;
          v46 = *v44;
          v45 = *(v44 + 8);
          v47 = *(v44 + 32);
          v48 = *(v44 + 40);
          v49 = *(v44 + 42);
          type metadata accessor for GetECSValueNode(0);
          v1 = swift_allocObject();
          v50 = v1 + OBJC_IVAR____TtC3VFX19_StaticECSValueNode_entityKeyPath;
          v51 = *(v44 + 16);
          *v50 = v40;
          *(v50 + 1) = v46;
          *(v50 + 2) = v45;
          *(v50 + 24) = v51;
          *(v50 + 5) = v47;
          v50[48] = v48;
          *(v50 + 25) = v49;
          v52 = OBJC_IVAR____TtC3VFX4Node_authoringID;

          sub_1AFDFC308();
          v53 = OBJC_IVAR____TtC3VFX4Node_authoringID;
          v54 = sub_1AFDFC318();
          v55 = *(v54 - 8);
          v56 = *(v55 + 8);

          v56(v1 + v52, v54);
          (*(v55 + 16))(v1 + v52, &v43[v53], v54);
          v1[2] = *(v43 + 2);

          sub_1AF620FB0(0);

          v57 = *(v43 + 3);
          v58 = *(v43 + 4);
          v1[3] = v57;
          v1[4] = v58;
          sub_1AF448650(v57, v58);
          v59 = 0;
LABEL_26:
          v81 = sub_1AF621030(v59);
          sub_1AF445BE4(v81);

          return v1;
        }

        return v37;
      }

LABEL_29:
      swift_unknownObjectRelease();
      return v37;
    }

LABEL_28:

    return v37;
  }

  type metadata accessor for SetAnyECSValueNode(0);
  result = swift_dynamicCastClass();
  if (!result)
  {
    return result;
  }

  v37 = result;
  type metadata accessor for WorldObjectNode(0);
  v60 = swift_dynamicCastClass();
  if (!v60)
  {
    goto LABEL_28;
  }

  sub_1AF44596C(v60 + OBJC_IVAR____TtC3VFX15WorldObjectNode_reference, &v83);
  v61 = swift_unknownObjectWeakLoadStrong();

  sub_1AF4459C8(&v83);
  if (!v61)
  {
    return v37;
  }

  swift_getObjectType();
  if (!swift_conformsToProtocol2())
  {
    goto LABEL_29;
  }

  v62 = sub_1AF92975C();
  v64 = v63;
  swift_unknownObjectRelease();
  if (v64)
  {

    v65 = v37;
    v66 = v37 + OBJC_IVAR____TtC3VFX16_AnyECSValueNode_scriptKeyPath;
    v68 = *v66;
    v67 = *(v66 + 8);
    v69 = *(v66 + 32);
    v70 = *(v66 + 40);
    v71 = *(v66 + 42);
    type metadata accessor for SetECSValueNode(0);
    v1 = swift_allocObject();
    v72 = v1 + OBJC_IVAR____TtC3VFX19_StaticECSValueNode_entityKeyPath;
    v73 = *(v66 + 16);
    *v72 = v62;
    *(v72 + 1) = v68;
    *(v72 + 2) = v67;
    *(v72 + 24) = v73;
    *(v72 + 5) = v69;
    v72[48] = v70;
    *(v72 + 25) = v71;
    v74 = OBJC_IVAR____TtC3VFX4Node_authoringID;

    sub_1AFDFC308();
    v75 = OBJC_IVAR____TtC3VFX4Node_authoringID;
    v76 = sub_1AFDFC318();
    v77 = *(v76 - 8);
    v78 = *(v77 + 8);

    v78(v1 + v74, v76);
    (*(v77 + 16))(v1 + v74, &v65[v75], v76);
    v1[2] = *(v65 + 2);

    sub_1AF620FB0(1);

    v79 = *(v65 + 3);
    v80 = *(v65 + 4);
    v1[3] = v79;
    v1[4] = v80;
    sub_1AF448650(v79, v80);
    v59 = 1;
    goto LABEL_26;
  }

  return v37;
}

uint64_t sub_1AF93D7F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1AF483618(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC3VFX4Node_authoringID;
  v14 = sub_1AFDFC318();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v12, a1 + v13, v14);
  (*(v15 + 56))(v12, 0, 1, v14);
  v16 = type metadata accessor for GraphError(0);
  sub_1AF9371BC();
  v17 = swift_allocError();
  v19 = v18;
  *(v18 + v16[8]) = 0;
  *v18 = 0;
  sub_1AF937574(v12, v18 + v16[5], sub_1AF483618);
  v20 = v19 + v16[6];
  *v20 = 1;
  v20[8] = -64;
  v21 = (v19 + v16[7]);
  *v21 = a2;
  v21[1] = a3;
  v22 = OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics;
  v23 = *(a4 + OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a4 + v22) = v23;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v23 = sub_1AF420408(0, v23[2] + 1, 1, v23);
    *(a4 + v22) = v23;
  }

  v26 = v23[2];
  v25 = v23[3];
  if (v26 >= v25 >> 1)
  {
    v23 = sub_1AF420408(v25 > 1, v26 + 1, 1, v23);
  }

  v23[2] = v26 + 1;
  v23[v26 + 4] = v17;
  *(a4 + v22) = v23;
  *(a5 + 16) = 1;
  return a1;
}

uint64_t sub_1AF93DA44(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 0xFBu)
  {
    return sub_1AF4488E4(a1, a2, a3, a4);
  }

  return a1;
}

void sub_1AF93DA58()
{
  if (!qword_1EB640708)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB640708);
    }
  }
}

uint64_t sub_1AF93DABC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1AF93DB24(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1AF93DB78(uint64_t a1, uint64_t a2)
{
  sub_1AF949DCC(0, &qword_1EB632708, type metadata accessor for GraphError);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v20 - v5;
  v7 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for GraphError(0);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v2, a1, v13);
  v16 = swift_dynamicCast();
  v17 = *(v12 + 56);
  if (v16)
  {
    v17(v6, 0, 1, v11);
    sub_1AF94A0F8(v6, v15, type metadata accessor for GraphError);
    v18 = sub_1AF93DDFC();
    sub_1AF94A160(v15, type metadata accessor for GraphError);
    return v18;
  }

  else
  {
    v17(v6, 1, 1, v11);
    sub_1AF949E6C(v6, &qword_1EB632708, type metadata accessor for GraphError);
    return sub_1AFDFF1D8();
  }
}

uint64_t sub_1AF93DDFC()
{
  v1 = type metadata accessor for GraphError(0);
  if (*(v0 + *(v1 + 32)))
  {
    v2 = 0x676E696E726177;
  }

  else
  {
    v2 = 0x726F727265;
  }

  if (*(v0 + *(v1 + 32)))
  {
    v3 = 0xE700000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x1B2718AE0](v2, v3);

  MEMORY[0x1B2718AE0](8250, 0xE200000000000000);
  if (*v0)
  {
    v4 = *(**(*v0 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) + 128);

    v9 = v4(v5);
    v11 = v6;
    MEMORY[0x1B2718AE0](8250, 0xE200000000000000);
    MEMORY[0x1B2718AE0](v9, v11);
  }

  v7 = (v0 + *(v1 + 28));
  if (v7[1])
  {
    v10 = *v7;
    v12 = v7[1];

    MEMORY[0x1B2718AE0](32, 0xE100000000000000);
    MEMORY[0x1B2718AE0](v10, v12);
  }

  MEMORY[0x1B2718AE0](40, 0xE100000000000000);
  sub_1AFDFE458();
  MEMORY[0x1B2718AE0](41, 0xE100000000000000);
  MEMORY[0x1B2718AE0](0, 0xE000000000000000);

  return 0x206870617247;
}

uint64_t sub_1AF93DFF4(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 28));

  return v2;
}

id sub_1AF93E0E8(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1AF949B90(a1);

  return v4;
}

uint64_t sub_1AF93E174()
{
  sub_1AF949DCC(0, &qword_1EB632708, type metadata accessor for GraphError);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v14 - v2;
  v4 = *(v0 + OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics);
  v5 = *(v4 + 16);

  if (!v5)
  {
  }

  v6 = 32;
  v7 = MEMORY[0x1E69E7280];
  while (1)
  {
    v8 = *(v4 + v6);
    v14[3] = v8;
    v9 = v8;
    v10 = v8;
    sub_1AF5C5358(0, &qword_1ED7268D0, v7);
    v11 = type metadata accessor for GraphError(0);
    if (swift_dynamicCast())
    {
      break;
    }

    (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
    sub_1AF949E6C(v3, &qword_1EB632708, type metadata accessor for GraphError);
LABEL_4:
    v6 += 8;
    if (!--v5)
    {
    }
  }

  (*(*(v11 - 8) + 56))(v3, 0, 1, v11);
  v12 = v3[*(v11 + 32)];
  sub_1AF94A160(v3, type metadata accessor for GraphError);
  if (v12)
  {

    goto LABEL_4;
  }

  return swift_willThrow();
}

id sub_1AF93E3A0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GraphDiagnostics(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1AF93E478(uint64_t a1)
{
  sub_1AF949DCC(319, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1AF93E534()
{
  v57 = sub_1AFDFC318();
  v51 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v54 = v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = v0;
  v3 = *(v0 + 16);
  if (qword_1EB6325F0 != -1)
  {
    swift_once();
  }

  v4 = MEMORY[0x1E69E7CC0];
  v5 = sub_1AF3FBC60(sub_1AF93EC24, 0, byte_1EB6C28A0, qword_1EB6C28A8, byte_1EB6C28B0, MEMORY[0x1E69E7CC0]);
  v7 = sub_1AF42892C(v5, v6, sub_1AF42ADF4);

  v8 = 0;
  v59[0] = v4;
  v9 = v7[2];
  v56 = v4;
  while (v9 != v8)
  {
    if (v7[v8++ + 4])
    {

      MEMORY[0x1B2718E00](v11);
      if (*((v59[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1AFDFD458();
      }

      sub_1AFDFD4B8();
      v4 = v59[0];
    }
  }

  v53 = v3;
  v55 = v1;
  if (v4 >> 62)
  {
    v12 = sub_1AFDFE108();
    v13 = v58;
    if (v12)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v12 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v13 = v58;
    if (v12)
    {
LABEL_11:
      v14 = 0;
      v15 = v4 & 0xC000000000000001;
      do
      {
        if (v15)
        {
          v16 = MEMORY[0x1B2719C70](v14, v4);
        }

        else
        {
          v16 = *(v4 + 8 * v14 + 32);
        }

        type metadata accessor for DeclareVariableNode(0);
        if (swift_dynamicCastClass())
        {
          v17 = sub_1AF93F510(v16);
          sub_1AF85AA70(v17, v18 & 1);
        }

        ++v14;
      }

      while (v12 != v14);
      v19 = 0;
      v59[0] = MEMORY[0x1E69E7CC0];
      v52 = v12 - 1;
      do
      {
        v20 = v19;
        while (1)
        {
          if (v15)
          {
            v21 = MEMORY[0x1B2719C70](v20, v4);
          }

          else
          {
            v21 = *(v4 + 32 + 8 * v20);
          }

          v19 = v20 + 1;
          v22 = sub_1AF93F510(v21);
          v23 = v22;
          if ((v24 & 1) == 0)
          {
            break;
          }

          v59[3] = v22;
          sub_1AF5C5358(0, &qword_1ED7268D0, MEMORY[0x1E69E7280]);
          swift_willThrowTypedImpl();

          sub_1AF85AA70(v23, 1);
          ++v20;
          v13 = v58;
          if (v12 == v19)
          {
            goto LABEL_32;
          }
        }

        MEMORY[0x1B2718E00](v25);
        if (*((v59[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1AFDFD458();
        }

        sub_1AFDFD4B8();
        v13 = v58;
        v56 = v59[0];
      }

      while (v52 != v20);
      goto LABEL_32;
    }
  }

  v56 = MEMORY[0x1E69E7CC0];
LABEL_32:

  v26 = type metadata accessor for Graph();
  v27 = swift_allocObject();
  *(v27 + 16) = v56;
  MEMORY[0x1EEE9AC00](v27);
  v50[-2] = sub_1AF94A1C0;
  v50[-1] = v13;
  v28 = v13;

  v29 = MEMORY[0x1E69E7CC0];
  v59[0] = sub_1AF42B0F4(MEMORY[0x1E69E7CC0]);
  v59[1] = v30;
  v31 = v55;
  sub_1AF412D4C(sub_1AF9122F0, &v50[-4], 1, 0x1000000000000000uLL, 0, v29, v59);

  if (v31)
  {
  }

  v33 = sub_1AF911270();
  v34 = v33;
  v56 = v33;
  v52 = v27;
  v50[0] = 0;
  v50[1] = v26;
  if (v33 >> 62)
  {
    v49 = sub_1AFDFE108();
    v34 = v56;
    v35 = v49;
  }

  else
  {
    v35 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v36 = v57;
  v37 = v54;
  if (!v35)
  {
LABEL_48:

    v48 = sub_1AF932728();

    result = swift_allocObject();
    *(result + 16) = v48;
    return result;
  }

  v38 = 0;
  v55 = v34 & 0xC000000000000001;
  v39 = (v51 + 16);
  v40 = (v51 + 8);
  while (1)
  {
    if (v55)
    {
      v41 = MEMORY[0x1B2719C70](v38, v34);
    }

    else
    {
      v41 = *(v34 + 8 * v38 + 32);
    }

    (*v39)(v37, v41 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v36);
    v42 = *(v28 + 32);
    if (!*(v42 + 16))
    {
      goto LABEL_39;
    }

    v43 = sub_1AF419940(v37);
    if (v44)
    {
      break;
    }

    v36 = v57;
LABEL_39:
    (*v40)(v37, v36);

LABEL_40:
    ++v38;
    v34 = v56;
    if (v35 == v38)
    {
      goto LABEL_48;
    }
  }

  v45 = *(v42 + 56) + 16 * v43;
  v46 = *v45;
  v47 = *(v45 + 8);
  sub_1AF85AA64(*v45, v47);
  (*v40)(v37, v57);

  if ((v47 & 1) == 0)
  {

    sub_1AF85AA70(v46, 0);
    v36 = v57;
    v28 = v58;
    v37 = v54;
    goto LABEL_40;
  }

  v59[0] = v46;
  sub_1AF5C5358(0, &qword_1ED7268D0, MEMORY[0x1E69E7280]);
  swift_willThrowTypedImpl();
}

uint64_t sub_1AF93EC24@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(*(a1 + 16) + 16))
  {
    result = 0;
  }

  else
  {
  }

  *a2 = result;
  return result;
}

uint64_t sub_1AF93EC64(uint64_t *a1, uint64_t a2)
{
  v33 = a2;
  v34 = sub_1AFDFC318();
  v4 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v32 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  v7 = *(*a1 + 16);
  v8 = *(v7 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (!v8)
  {
LABEL_15:
    *(v6 + 16) = v9;
  }

  v27 = *a1;
  v28 = v2;
  v38 = MEMORY[0x1E69E7CC0];
  v10 = v7;

  sub_1AFC05E7C(0, v8, 0);
  v9 = v38;
  v30 = (v4 + 8);
  v31 = (v4 + 16);
  v29 = v10;
  v11 = (v10 + 40);
  while (1)
  {
    v13 = *(v11 - 1);
    v12 = *v11;
    if (*v13 != _TtC3VFX16_PlaceholderNode)
    {

      goto LABEL_11;
    }

    sub_1AF441194(v13 + OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode, v37);
    sub_1AF5C5358(0, &qword_1EB638380, &protocol descriptor for _NodeProtocol);
    type metadata accessor for AuthoringNode(0);
    swift_retain_n();
    swift_dynamicCast();
    v14 = v32;
    (*v31)(v32, v36 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v34);

    v15 = *(v33 + 32);
    if (!*(v15 + 16))
    {
      goto LABEL_10;
    }

    v16 = sub_1AF419940(v14);
    if ((v17 & 1) == 0)
    {

LABEL_10:
      (*v30)(v14, v34);

      goto LABEL_11;
    }

    v18 = *(v15 + 56) + 16 * v16;
    v19 = *v18;
    v20 = v14;
    v21 = *(v18 + 8);
    sub_1AF85AA64(*v18, v21);
    (*v30)(v20, v34);

    if (v21)
    {
      break;
    }

    v13 = v19;
LABEL_11:
    v38 = v9;
    v23 = *(v9 + 16);
    v22 = *(v9 + 24);
    if (v23 >= v22 >> 1)
    {
      sub_1AFC05E7C(v22 > 1, v23 + 1, 1);
      v9 = v38;
    }

    v11 += 2;
    *(v9 + 16) = v23 + 1;
    v24 = v9 + 16 * v23;
    *(v24 + 32) = v13;
    *(v24 + 40) = v12;
    if (!--v8)
    {

      v6 = v27;
      goto LABEL_15;
    }
  }

  v35 = v19;
  sub_1AF5C5358(0, &qword_1ED7268D0, MEMORY[0x1E69E7280]);
  swift_willThrowTypedImpl();
}

void *sub_1AF93EFD4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for GraphError(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = (&v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(**(a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) + 152))(v54, v5);
  v8 = OBJC_IVAR____TtC3VFX13AuthoringNode_inputs;
  v9 = *(*(a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs) + 16);
  v60 = v54[0];
  v10 = *(v54[0] + 16);
  sub_1AF949D48(&v60, &qword_1EB638968, &type metadata for TypeConstraint);
  v59 = v54[1];
  sub_1AF949D48(&v59, &qword_1EB638968, &type metadata for TypeConstraint);
  v58 = v54[2];
  sub_1AF949D48(&v58, &qword_1EB638968, &type metadata for TypeConstraint);
  v57 = v54[3];
  sub_1AF91219C(&v57);
  v56 = v54[4];
  sub_1AF91219C(&v56);
  v55 = v54[5];
  sub_1AF949D48(&v55, &qword_1EB638978, &type metadata for AnyValue);
  if (v9 == v10)
  {
    v11 = *(a1 + v8);
    v12 = v11[2];
    v13 = MEMORY[0x1E69E7CC0];
    if (v12)
    {
      v14 = 0;
      v15 = v11 + 4;
      do
      {
        v16 = *v15;
        v15 += 2;
        if (!v16)
        {
          v51 = 0x80000001AFF3B660;
          sub_1AF9371BC();
          v52 = swift_allocError();
          v50 = v34;
          *(v7 + v4[8]) = 0;
          *v7 = a1;
          v35 = v4[5];
          v36 = OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID;
          v37 = sub_1AFDFC318();
          v38 = *(v37 - 8);
          (*(v38 + 16))(v7 + v35, a1 + v36, v37);
          (*(v38 + 56))(v7 + v35, 0, 1, v37);
          v39 = v7 + v4[6];
          *v39 = v14;
          v39[8] = 0;
          v40 = (v7 + v4[7]);
          *v40 = 0xD00000000000001DLL;
          v41 = v50;
          v40[1] = v51;
          sub_1AF94A0F8(v7, v41, type metadata accessor for GraphError);
          v33 = *(v2 + 24);
          goto LABEL_13;
        }

        ++v14;
      }

      while (v12 != v14);
      v53 = MEMORY[0x1E69E7CC0];

      sub_1AFC0798C(0, v12, 0);
      v13 = v53;
      v17 = v53[2];
      v18 = 2 * v17;
      v19 = v11 + 5;
      do
      {
        v20 = *(v19 - 1);
        v21 = *v19;
        v53 = v13;
        v22 = v13[3];

        if (v17 >= v22 >> 1)
        {
          sub_1AFC0798C(v22 > 1, v17 + 1, 1);
          v13 = v53;
        }

        v19 += 2;
        v13[2] = v17 + 1;
        v23 = &v13[v18];
        v23[4] = v20;
        v23[5] = v21;
        v18 += 2;
        ++v17;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    v51 = 0x80000001AFF3B640;
    sub_1AF9371BC();
    v52 = swift_allocError();
    v25 = v24;
    *(v7 + v4[8]) = 0;
    *v7 = a1;
    v26 = v4[5];
    v27 = OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID;
    v28 = sub_1AFDFC318();
    v29 = v2;
    v30 = *(v28 - 8);
    (*(v30 + 16))(v7 + v26, a1 + v27, v28);
    (*(v30 + 56))(v7 + v26, 0, 1, v28);
    v31 = v7 + v4[6];
    *v31 = 0;
    v31[8] = 1;
    v32 = (v7 + v4[7]);
    *v32 = 0xD000000000000018;
    v32[1] = v51;
    sub_1AF94A0F8(v7, v25, type metadata accessor for GraphError);
    v33 = *(v29 + 24);
LABEL_13:
    v42 = OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics;
    v13 = *(v33 + OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v33 + v42) = v13;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = sub_1AF420408(0, v13[2] + 1, 1, v13);
      *(v33 + v42) = v13;
    }

    v45 = v13[2];
    v44 = v13[3];
    v46 = v52;
    if (v45 >= v44 >> 1)
    {
      v13 = sub_1AF420408(v44 > 1, v45 + 1, 1, v13);
    }

    v13[2] = v45 + 1;
    v13[v45 + 4] = v46;
    *(v33 + v42) = v13;
    swift_willThrow();
    v47 = v46;
  }

  return v13;
}

id sub_1AF93F510(__objc2_class **a1)
{
  v3 = sub_1AFDFC318();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v47 - v9;
  v11 = OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID;
  v12 = *(v4 + 16);
  v57 = a1;
  v12(&v47 - v9, a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v3, v8);
  v56 = v1;
  v13 = *(v1 + 32);
  if (*(v13 + 16))
  {

    v14 = sub_1AF419940(v10);
    if (v15)
    {
      v16 = *(v13 + 56) + 16 * v14;
      v17 = *v16;
      sub_1AF85AA64(*v16, *(v16 + 8));
      (*(v4 + 8))(v10, v3);
      goto LABEL_13;
    }
  }

  v18 = *(v4 + 8);
  v18(v10, v3);
  v19 = v57;
  v55 = v11;
  v50 = v4 + 16;
  v49 = v12;
  (v12)(v6, v57 + v11, v3);
  v20 = v56;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v59[0] = *(v20 + 40);
  *(v20 + 40) = 0x8000000000000000;
  sub_1AF851118(1, v6, isUniquelyReferenced_nonNull_native);
  v51 = v6;
  v52 = v4 + 8;
  v53 = v3;
  v48 = v18;
  v18(v6, v3);
  *(v20 + 40) = v59[0];

  cache = (*(v19 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs))->cache;
  v23 = OBJC_IVAR____TtC3VFX13AuthoringNode_raw;
  v54 = *(v19 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs);

  if (cache)
  {
    v24 = (v54 + 4);
    v25 = 32;
    do
    {
      v26 = *v24;
      v24 += 2;
      if (v26)
      {
        info = (*(v57 + v23))->isa[3].info;
        v28 = swift_retain_n();
        (info)(v59, v28);
        v29 = v59[0];
        v64 = v59[1];
        v65 = v59[0];
        sub_1AF949D48(&v64, &qword_1EB638968, &type metadata for TypeConstraint);
        v63 = v59[2];
        sub_1AF949D48(&v63, &qword_1EB638968, &type metadata for TypeConstraint);
        v62 = v59[3];
        sub_1AF91219C(&v62);
        v61 = v59[4];
        sub_1AF91219C(&v61);
        v60 = v59[5];
        sub_1AF949D48(&v60, &qword_1EB638978, &type metadata for AnyValue);
        v30 = *(v29 + v25);
        sub_1AF4410A8(v30);
        sub_1AF949D48(&v65, &qword_1EB638968, &type metadata for TypeConstraint);
        v31 = swift_allocObject();
        *(v31 + 16) = 0xC000000000000008;
        v32 = sub_1AF9C5694(v30, v31 | 0x8000000000000000);

        sub_1AF441114(v30);
        if (!v32)
        {

          v34 = sub_1AF93F510(v33);
          v36 = v35;

          sub_1AF85AA70(v34, v36 & 1);
        }
      }

      v25 += 8;
      --cache;
    }

    while (cache);
  }

  v37 = v56;
  v38 = v57;
  v39 = sub_1AF94468C(v57);
  v40 = v51;
  v41 = v53;
  v42 = v49;
  v49(v51, v38 + v55, v53);
  v54 = v39;
  sub_1AF85AA64(v39, 0);
  v43 = swift_isUniquelyReferenced_nonNull_native();
  v58 = *(v37 + 32);
  *(v37 + 32) = 0x8000000000000000;
  sub_1AF8512AC(v39, 0, v40, v43);
  v44 = v48;
  v48(v40, v41);
  *(v37 + 32) = v58;
  v42(v40, v38 + v55, v41);
  v45 = swift_isUniquelyReferenced_nonNull_native();
  v58 = *(v37 + 40);
  *(v37 + 40) = 0x8000000000000000;
  sub_1AF851118(0, v40, v45);
  v44(v40, v41);
  v17 = v54;
  *(v37 + 40) = v58;
LABEL_13:

  return v17;
}

unint64_t sub_1AF93FA18(unint64_t a1, uint64_t a2)
{
  v3 = a1 >> 61;
  result = 0xF000000000000007;
  if (v3 > 1)
  {
    if (v3 != 2)
    {
      if (v3 != 4)
      {
        return result;
      }

      v5 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      goto LABEL_11;
    }

    if (!*(a2 + 16))
    {
      return result;
    }

    v10 = sub_1AF449CB8(*((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10));
    if (v11)
    {
      v5 = *(*(a2 + 56) + 8 * v10);
LABEL_11:
      sub_1AF442064(v5);
      return v5;
    }

    return 0xF000000000000007;
  }

  if (v3)
  {
    if (v3 != 1)
    {
      return result;
    }

    sub_1AFDFE518();
    __break(1u);
    return 0xF000000000000007;
  }

  v6 = *(a1 + 16);
  result = sub_1AF93FA18(*(a1 + 24), a2);
  if ((~result & 0xF000000000000007) != 0)
  {
    v7 = result;
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    *(v8 + 24) = v7;
    return v8 | 0x4000000000000000;
  }

  return result;
}

void *sub_1AF93FB3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v58 = *v3;
  v59 = type metadata accessor for GraphError(0);
  MEMORY[0x1EEE9AC00](v59);
  v10 = (&v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v61 = a1;
  v11 = *(a1 + OBJC_IVAR____TtC3VFX21AuthoringSubGraphNode_graph);
  v12 = v5[3];
  type metadata accessor for GraphTypeResolver();
  v13 = swift_allocObject();

  v14 = v12;
  v15 = MEMORY[0x1E69E7CC0];
  *(v13 + 32) = sub_1AF42BA48(MEMORY[0x1E69E7CC0]);
  *(v13 + 40) = sub_1AF42BC98(v15);
  *(v13 + 48) = 0;
  *(v13 + 56) = sub_1AF42BEA0(v15);
  *(v13 + 64) = 1;
  *(v13 + 16) = v11;
  *(v13 + 24) = v14;
  v60 = v14;
  if (*(a2 + 16) && (v16 = *(a2 + 32), sub_1AF442064(v16), v17 = sub_1AF90F890(v16, 0xC000000000000008), sub_1AF445BE4(v16), (v17 & 1) != 0))
  {

    v18 = a2;
  }

  else
  {
    sub_1AF949F40(0, &qword_1EB630990, &type metadata for AnyType, MEMORY[0x1E69E6F90]);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1AFE431C0;
    *(v19 + 32) = 0xC000000000000008;
    v62 = v19;

    sub_1AF490E0C(v20);
    v18 = v62;
  }

  *(v13 + 48) = v18;

  v21 = v13;
  v22 = sub_1AF93E534();
  if (v4)
  {
LABEL_18:

    return v21;
  }

  v56 = a3;
  v64 = 0;
  MEMORY[0x1EEE9AC00](v22);
  *(&v56 - 4) = &v64;
  *(&v56 - 3) = sub_1AF9402BC;
  *(&v56 - 2) = 0;
  MEMORY[0x1EEE9AC00](v23);
  *(&v56 - 2) = sub_1AF949F90;
  *(&v56 - 1) = v24;
  v25 = MEMORY[0x1E69E7CC0];
  v27 = v26;
  v62 = sub_1AF42B0F4(MEMORY[0x1E69E7CC0]);
  v63 = v28;
  v57 = v27;
  sub_1AF412D4C(sub_1AF441EF8, (&v56 - 4), 1, 0x1000000000000000uLL, 0, v25, &v62);

  if (!v64)
  {
LABEL_13:
    v58 = 0x80000001AFF3B5B0;
    sub_1AF9371BC();
    v39 = v59;
    v40 = swift_allocError();
    v56 = v41;
    *(v10 + v39[8]) = 0;
    v42 = v61;
    *v10 = v61;
    v43 = v39[5];
    v44 = OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID;
    v45 = sub_1AFDFC318();
    v46 = *(v45 - 8);
    (*(v46 + 16))(v10 + v43, v42 + v44, v45);
    (*(v46 + 56))(v10 + v43, 0, 1, v45);
    v47 = v10 + v39[6];
    *v47 = 1;
    v47[8] = -64;
    v48 = (v10 + v39[7]);
    *v48 = 0xD00000000000002ELL;
    v48[1] = v58;
    sub_1AF94A0F8(v10, v56, type metadata accessor for GraphError);
    v49 = OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics;
    v50 = v60;
    v21 = *&v60[OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v50[v49] = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = sub_1AF420408(0, v21[2] + 1, 1, v21);
      *&v50[v49] = v21;
    }

    v53 = v21[2];
    v52 = v21[3];
    if (v53 >= v52 >> 1)
    {
      v21 = sub_1AF420408(v52 > 1, v53 + 1, 1, v21);
    }

    v21[2] = v53 + 1;
    v21[v53 + 4] = v40;
    *&v50[v49] = v21;
    swift_willThrow();
    v54 = v40;

    goto LABEL_18;
  }

  if (*v64 != _TtC3VFX17SubGraphEnterNode || (v64 = 0, MEMORY[0x1EEE9AC00](v29), *(&v56 - 4) = &v64, *(&v56 - 3) = sub_1AF940308, *(&v56 - 2) = 0, MEMORY[0x1EEE9AC00](v30), *(&v56 - 2) = sub_1AF94AD38, *(&v56 - 1) = v31, v32 = MEMORY[0x1E69E7CC0], v62 = sub_1AF42B0F4(MEMORY[0x1E69E7CC0]), v63 = v33, sub_1AF412D4C(sub_1AF449DD8, (&v56 - 4), 1, 0x1000000000000000uLL, 0, v32, &v62), , , (v34 = v64) == 0))
  {
LABEL_12:

    goto LABEL_13;
  }

  if (*v64 != _TtC3VFX18SubGraphReturnNode)
  {

    goto LABEL_12;
  }

  v35 = *(v13 + 32);

  v36 = swift_isUniquelyReferenced_nonNull_native();
  v62 = v5[4];
  v5[4] = 0x8000000000000000;
  sub_1AF94951C(v35, sub_1AF948790, 0, v36, &v62);

  v5[4] = v62;

  MEMORY[0x1EEE9AC00](v37);
  v38 = v56;
  *(&v56 - 6) = v57;
  *(&v56 - 5) = v38;
  *(&v56 - 4) = a2;
  *(&v56 - 3) = v34;
  *(&v56 - 2) = v58;
  v21 = sub_1AF96FE5C(sub_1AF949FB0);

  return v21;
}