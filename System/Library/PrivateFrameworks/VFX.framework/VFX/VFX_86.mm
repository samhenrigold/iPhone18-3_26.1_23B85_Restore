uint64_t sub_1AF7B38AC(void *a1, unint64_t *a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t *a6)
{
  v6 = *a1;
  *&v88[0] = 0;
  *(&v88[0] + 1) = 0xE000000000000000;
  swift_weakLoadStrong();
  v7 = MEMORY[0x1E69E6158];
  *(&v82 + 1) = MEMORY[0x1E69E6158];
  *&v81 = 0;
  *(&v81 + 1) = 0xE000000000000000;
  sub_1AF7FDDF0(1701667182, 0xE400000000000000, &v81, &v75);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v81);

  sub_1AF449D40(&v75, &v81);
  swift_dynamicCast();
  MEMORY[0x1B2718AE0](*&v74[0], *(&v74[0] + 1));

  MEMORY[0x1B2718AE0](124, 0xE100000000000000);
  v8 = v6[3];
  v9 = v6[4];

  MEMORY[0x1B2718AE0](v8, v9);

  MEMORY[0x1B2718AE0](124, 0xE100000000000000);
  v10 = v6[5];
  v11 = v6[6];

  MEMORY[0x1B2718AE0](v10, v11);

  v12 = v88[0];
  *&v88[0] = 0;
  *(&v88[0] + 1) = 0xE000000000000000;
  swift_weakLoadStrong();
  *(&v82 + 1) = v7;
  *&v81 = 0;
  *(&v81 + 1) = 0xE000000000000000;
  sub_1AF7FDDF0(1701667182, 0xE400000000000000, &v81, &v75);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v81);

  sub_1AF449D40(&v75, &v81);
  swift_dynamicCast();
  MEMORY[0x1B2718AE0](*&v74[0], *(&v74[0] + 1));

  MEMORY[0x1B2718AE0](124, 0xE100000000000000);
  v13 = v6[3];
  v14 = v6[4];
  v68 = v6;

  MEMORY[0x1B2718AE0](v13, v14);

  v73 = *(&v88[0] + 1);
  v90 = *&v88[0];
  v15 = *a2;
  if (*a2 >> 62)
  {
    v16 = sub_1AFDFE108();
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = MEMORY[0x1E69E7CA0];
  if (v16)
  {
    v18 = 0;
    while (1)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x1B2719C70](v18, v15);
      }

      else
      {
        v19 = *(v15 + 8 * v18 + 32);
      }

      *&v81 = v19;
      if (sub_1AF7B4200(&v81, v12, *(&v12 + 1)))
      {
        break;
      }

      if (v16 == ++v18)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:

    v19 = 0;
  }

  v20 = *a2;
  v21 = MEMORY[0x1E69E6158];
  if (*a2 >> 62)
  {
    v22 = sub_1AFDFE108();
  }

  else
  {
    v22 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v22)
  {
    v23 = 0;
    v70 = v20 & 0xC000000000000001;
    v72 = v20;
    v69 = v22;
    do
    {
      if (v70)
      {
        v24 = MEMORY[0x1B2719C70](v23, v20);
      }

      else
      {
        v24 = *(v20 + 8 * v23 + 32);
      }

      v86 = 0;
      v87 = 0xE000000000000000;
      Strong = swift_weakLoadStrong();
      v26 = Strong;
      v85[3] = v21;
      v85[0] = 0;
      v85[1] = 0xE000000000000000;
      v27 = *(Strong + 16);
      if (v27)
      {
        if (!*(v27 + 16))
        {
          goto LABEL_26;
        }
      }

      else
      {
        v28 = MEMORY[0x1E69E7CC8];
        *(Strong + 16) = MEMORY[0x1E69E7CC8];
        if (!*(v28 + 16))
        {
          goto LABEL_26;
        }
      }

      sub_1AF419914(1701667182, 0xE400000000000000);
      v30 = v29;

      if (v30)
      {
        goto LABEL_35;
      }

      if (!*(v26 + 16))
      {
        *(v26 + 16) = sub_1AF432414(MEMORY[0x1E69E7CC0]);
      }

LABEL_26:
      sub_1AF0D5A54(v85, &v75);
      memset(&v84[8], 0, 32);
      *&v81 = 1701667182;
      *(&v81 + 1) = 0xE400000000000000;
      sub_1AF809A8C(&v75, v88);
      v82 = v88[0];
      v83 = v88[1];
      *v84 = v89;
      sub_1AF7B4AA0(&v84[8], &qword_1ED726850, v17 + 8);
      sub_1AF449D40(&v75, &v84[8]);
      v77 = v83;
      v78 = *v84;
      v79 = *&v84[16];
      v80 = *&v84[32];
      v75 = v81;
      v76 = v82;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v74[0] = *(v26 + 16);
      v32 = *&v74[0];
      *(v26 + 16) = 0x8000000000000000;
      v33 = sub_1AF419914(1701667182, 0xE400000000000000);
      v35 = v34;
      v36 = *(v32 + 16) + ((v34 & 1) == 0);
      if (*(v32 + 24) >= v36)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1AF844804();
        }
      }

      else
      {
        sub_1AF82C8F0(v36, isUniquelyReferenced_nonNull_native);
        v37 = sub_1AF419914(1701667182, 0xE400000000000000);
        if ((v35 & 1) != (v38 & 1))
        {
          result = sub_1AFDFF1A8();
          __break(1u);
          return result;
        }

        v33 = v37;
      }

      v21 = MEMORY[0x1E69E6158];
      v39 = *&v74[0];
      if (v35)
      {
        sub_1AF770FA0(&v75, *(*&v74[0] + 56) + 88 * v33);
      }

      else
      {
        *(*&v74[0] + 8 * (v33 >> 6) + 64) |= 1 << v33;
        v40 = (v39[6] + 16 * v33);
        *v40 = 1701667182;
        v40[1] = 0xE400000000000000;
        v41 = v39[7] + 88 * v33;
        v42 = v76;
        *v41 = v75;
        *(v41 + 16) = v42;
        v43 = v77;
        v44 = v78;
        v45 = v79;
        *(v41 + 80) = v80;
        *(v41 + 48) = v44;
        *(v41 + 64) = v45;
        *(v41 + 32) = v43;
        ++v39[2];
      }

      *(v26 + 16) = v39;

      v17 = MEMORY[0x1E69E7CA0];
LABEL_35:
      v46 = *(v26 + 16);
      if (!v46)
      {
        goto LABEL_43;
      }

      if (!*(v46 + 16))
      {
        goto LABEL_41;
      }

      v47 = sub_1AF419914(1701667182, 0xE400000000000000);
      if ((v48 & 1) == 0)
      {

LABEL_41:
        memset(v84, 0, sizeof(v84));
        v82 = 0u;
        v83 = 0u;
        v81 = 0u;
LABEL_42:
        sub_1AF7B4AA0(&v81, &qword_1EB6335B0, &_s8MetadataVN);
LABEL_43:
        memset(v74, 0, 32);
        goto LABEL_44;
      }

      sub_1AF4455CC(*(v46 + 56) + 88 * v47, &v81);

      if (!*(&v81 + 1))
      {
        goto LABEL_42;
      }

      sub_1AF4455CC(&v81, &v75);
      sub_1AF7B4AA0(&v81, &qword_1EB6335B0, &_s8MetadataVN);
      sub_1AF44CBE4(&v78 + 8, v74);
      sub_1AF761390(&v75);
LABEL_44:
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v85);

      sub_1AF449D40(v74, &v81);
      swift_dynamicCast();
      MEMORY[0x1B2718AE0](v75, *(&v75 + 1));

      MEMORY[0x1B2718AE0](124, 0xE100000000000000);
      v49 = *(v24 + 24);
      v50 = *(v24 + 32);

      MEMORY[0x1B2718AE0](v49, v50);

      if (v86 == v90 && v87 == v73)
      {

        goto LABEL_53;
      }

      v51 = sub_1AFDFEE28();

      v20 = v72;
      if (v51)
      {
        goto LABEL_53;
      }

      ++v23;
    }

    while (v69 != v23);
  }

  v24 = 0;
LABEL_53:

  if (v19)
  {
    v52 = v19;
  }

  else
  {

    v52 = v24;
  }

  v53 = v68[5];
  v54 = v68[6];
  v56 = *(v52 + 40);
  v55 = *(v52 + 48);
  if (v53 == v56 && v54 == v55 || (sub_1AFDFEE28() & 1) != 0)
  {
  }

  else
  {
    v57 = *(v68 + 9);
    v75 = *(v68 + 7);
    v76 = v57;
    *&v77 = v68[11];
    v58 = *(v52 + 72);
    v81 = *(v52 + 56);
    v82 = v58;
    *&v83 = *(v52 + 88);

    sub_1AF444F60(&v75, v74);

    sub_1AF444F60(&v81, v74);

    v59 = sub_1AF76ED08(v56, v55);
    v61 = v60;

    v62 = *a6;

    v90 = sub_1AF7A4C70(&v75, v53, v54, &v81, v59, v61, a5, 1, v62);
    v64 = v63;

    sub_1AF444FBC(&v81);

    sub_1AF444FBC(&v75);

    *&v74[0] = v90;
    *(&v74[0] + 1) = v64;

    MEMORY[0x1B2718AE0](10, 0xE100000000000000);

    MEMORY[0x1B2718AE0](*&v74[0], *(&v74[0] + 1));
  }
}

uint64_t sub_1AF7B4200(void *a1, unint64_t a2, unint64_t a3)
{
  v5 = *a1;
  *&v15 = 0;
  *(&v15 + 1) = 0xE000000000000000;
  swift_weakLoadStrong();
  v14 = MEMORY[0x1E69E6158];
  *&v13 = 0;
  *(&v13 + 1) = 0xE000000000000000;
  sub_1AF7FDDF0(1701667182, 0xE400000000000000, &v13, v12);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v13);

  sub_1AF449D40(v12, &v13);
  swift_dynamicCast();
  MEMORY[0x1B2718AE0]();

  MEMORY[0x1B2718AE0](124, 0xE100000000000000);
  v6 = v5[3];
  v7 = v5[4];

  MEMORY[0x1B2718AE0](v6, v7);

  MEMORY[0x1B2718AE0](124, 0xE100000000000000);
  v8 = v5[5];
  v9 = v5[6];

  MEMORY[0x1B2718AE0](v8, v9);

  if (v15 == __PAIR128__(a3, a2))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1AFDFEE28();
  }

  return v10 & 1;
}

uint64_t sub_1AF7B43D0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v24 = a4;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  if (v9)
  {
    while (1)
    {
      v12 = v11;
LABEL_7:
      v13 = __clz(__rbit64(v9)) | (v12 << 6);
      v14 = (*(a1 + 48) + 16 * v13);
      v15 = *v14;
      v16 = v14[1];
      v17 = (*(a1 + 56) + 24 * v13);
      v18 = *v17;
      v19 = v17[1];
      v20 = v17[2];
      v23[0] = v15;
      v23[1] = v16;
      v23[2] = v18;
      v23[3] = v19;
      v23[4] = v20;

      sub_1AF7B3080(v23, a2, a3, v24);
      if (v4)
      {
        break;
      }

      v9 &= v9 - 1;

      v11 = v12;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (v11 + 1 >= v10)
      {
      }

      v9 = *(a1 + 8 * v11++ + 72);
      if (v9)
      {
        goto LABEL_7;
      }
    }
  }
}

void sub_1AF7B4548(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  *&v62[0] = v6;
  *(&v62[0] + 1) = v7;
  *&v60[0] = 46;
  *(&v60[0] + 1) = 0xE100000000000000;
  sub_1AF4486E4();

  if ((sub_1AFDFDF18() & 1) == 0 || (v8 = *(*a2 + 16)) == 0)
  {

LABEL_24:
    v26 = (*a4 + 120);

    sub_1AF5AA544();
    if (v27)
    {

      MEMORY[0x1B2718E00](v28);
      if (*((*v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1AFDFD458();
      }

      sub_1AFDFD4B8();
    }

    goto LABEL_28;
  }

  v55 = a2;
  v56 = a4;
  v57 = *a2 + 32;

  v9 = v8 - 1;
  for (i = 48; ; i += 64)
  {
    v11 = *(v57 + i - 48);
    v12 = *(v57 + i - 32);
    v13 = *(v57 + i - 16);
    *&v63[9] = *(v57 + i - 7);
    v62[1] = v12;
    *v63 = v13;
    v62[0] = v11;
    v59[0] = v6;
    v59[1] = v7;
    sub_1AF7B4A38(v62, v60, sub_1AF7AC288);
    v14 = sub_1AFDFDF28();
    if (v14[2])
    {
      v15 = v14[4];
      v16 = v14[5];
      v18 = v14[6];
      v17 = v14[7];

      v19 = v15 >> 16;
      v20 = v16 >> 16;
    }

    else
    {

      v19 = 0;
      v20 = 0;
      v18 = 0;
      v17 = 0;
    }

    v21 = (*(&v62[0] + 1) & 0x2000000000000000) != 0 ? HIBYTE(*(&v62[0] + 1)) & 0xFLL : *&v62[0] & 0xFFFFFFFFFFFFLL;
    v22 = *&v62[0] == v18 && v17 == *(&v62[0] + 1);
    v23 = v22 && v19 == 0;
    if (v23 && v21 == v20)
    {
      break;
    }

    v25 = sub_1AFDFE9E8();

    sub_1AF7B49D8(v62, sub_1AF7AC288);
    if (v25)
    {
      goto LABEL_32;
    }

    if (!v9)
    {

      a4 = v56;
      goto LABEL_24;
    }

    --v9;
  }

  sub_1AF7B49D8(v62, sub_1AF7AC288);
LABEL_32:

  v29 = (*v55 + i);
  v31 = *v29;
  v30 = v29[1];
  v32 = *(v29 - 1);
  *&v61[9] = *(v29 + 25);
  v60[1] = v31;
  *v61 = v30;
  v60[0] = v32;
  v33 = v61[24];
  v34 = *(&v31 + 1);
  v36 = v30;
  v35 = *&v61[16];
  v37 = v31;
  sub_1AF7B4A38(v60, v59, sub_1AF7AC288);

  sub_1AF687FE4(v37, v34, v36, *(&v36 + 1), v35);
  if ((v33 & 1) == 0)
  {
    v38 = *v55;
    v39 = (*v55 + i);
    v41 = *(v39 - 2);
    v40 = *(v39 - 1);
    v42 = *v39;
    v43 = v39[1];
    v44 = v39[2];
    v45 = v39[3];
    v46 = v39[4];

    sub_1AF687F90(v42, v43, v44, v45, v46);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v55 = v38;
    v58 = v42;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v38 = sub_1AFC0DBD4(v38);
      *v55 = v38;
    }

    LOBYTE(v38[i / 8 + 5]) = 1;
    v48 = sub_1AF7B0B84(v41, v40);
    v50 = v49;
    _s11ParameterInCMa();
    v51 = swift_allocObject();
    swift_weakInit();
    swift_weakAssign();
    v51[3] = v41;
    v51[4] = v40;
    v51[5] = v48;
    v51[6] = v50;
    v51[7] = v58;
    v51[8] = v43;
    v51[9] = v44;
    v51[10] = v45;
    v51[11] = v46;
    v52 = (*v56 + 120);

    sub_1AF5AA544();
    if (v53)
    {

      MEMORY[0x1B2718E00](v54);
      if (*((*v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1AFDFD458();
      }

      sub_1AFDFD4B8();
    }

LABEL_28:
  }
}

uint64_t sub_1AF7B49D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AF7B4A38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AF7B4AA0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1AF7B4B10(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1AF7B4B10(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1AF7B4B60(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1AF624800(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1AF7B878C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1AF7B4BCC(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = (result + 56);
    do
    {
      v5 = *(v3 - 3);
      v4 = *(v3 - 2);
      v7 = *(v3 - 1);
      v6 = *v3;
      v8 = *a2;

      v9 = MEMORY[0x1B27189E0](v5, v4, v7, v6);
      MEMORY[0x1B2718AE0](v9);

      if (*(*a2 + 24) == 3)
      {
        v10 = 0;
      }

      else
      {
        v10 = 59;
      }

      if (*(*a2 + 24) == 3)
      {
        v11 = 0xE000000000000000;
      }

      else
      {
        v11 = 0xE100000000000000;
      }

      MEMORY[0x1B2718AE0](v10, v11);

      v12 = *(v8 + 128);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v8 + 128) = v12;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v12 = sub_1AF420554(0, *(v12 + 2) + 1, 1, v12);
        *(v8 + 128) = v12;
      }

      v15 = *(v12 + 2);
      v14 = *(v12 + 3);
      if (v15 >= v14 >> 1)
      {
        v12 = sub_1AF420554(v14 > 1, v15 + 1, 1, v12);
      }

      *(v12 + 2) = v15 + 1;
      v16 = &v12[16 * v15];
      *(v16 + 4) = 8201;
      *(v16 + 5) = 0xE200000000000000;
      *(v8 + 128) = v12;

      v3 += 4;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_1AF7B4D4C(unint64_t a1, unint64_t *a2, unsigned int a3)
{
  v99 = a3;
  sub_1AF7B9154(0, &unk_1ED72DF20, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v98 = &v81[-v6];
  sub_1AF0D4E74(0);
  v89 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v88 = &v81[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v87 = sub_1AFDFC298();
  v9 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v86 = &v81[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1 >> 62)
  {
    result = sub_1AFDFE108();
    if (result)
    {
      goto LABEL_3;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
LABEL_3:
      v12 = 0;
      v94 = a1 & 0xC000000000000001;
      v85 = 0x80000001AFF33DF0;
      v84 = "CodeGenContext.typeAsCode: ";
      v83 = (v9 + 32);
      v82 = xmmword_1AFE431C0;
      v96 = a1;
      v97 = a2;
      v95 = result;
      do
      {
        if (v94)
        {
          v13 = MEMORY[0x1B2719C70](v12, a1);
        }

        else
        {
        }

        v15 = *a2;
        v14 = a2[1];
        v17 = *(v13 + 24);
        v16 = *(v13 + 32);
        v18 = *(v13 + 72);
        v105 = *(v13 + 56);
        v106 = v18;
        v107 = *(v13 + 88);
        v108 = v12;
        v100 = v13;
        if (v99 == 3)
        {
          v103 = 544499052;
          v104 = 0xE400000000000000;

          sub_1AF444F60(&v105, &v101);
          MEMORY[0x1B2718AE0](0, 0xE000000000000000);
          MEMORY[0x1B2718AE0](v17, v16);
          MEMORY[0x1B2718AE0](8250, 0xE200000000000000);
          if (*(&v105 + 1) >= 0x3BuLL)
          {
            v26 = v106;
            v27 = v107;
            if (*(v107 + 16) && (v28 = sub_1AF41A220(3), (v29 & 1) != 0))
            {
              v30 = (*(v27 + 56) + 16 * v28);
              v31 = *v30;
              v21 = v30[1];

              v19 = v31;
            }

            else
            {
              if (qword_1ED730EA0 != -1)
              {
                swift_once();
              }

              v93 = v16;
              v101 = 0;
              v102 = 0xE000000000000000;
              sub_1AFDFE218();

              v101 = 0xD00000000000001BLL;
              v102 = v85;
              MEMORY[0x1B2718AE0](v26, *(&v26 + 1));
              MEMORY[0x1B2718AE0](0xD000000000000011, v84 | 0x8000000000000000);
              MEMORY[0x1B2718AE0](0x4C28207466697753, 0xEE00297963616765);
              v40 = v101;
              v39 = v102;
              v41 = sub_1AFDFDA18();
              if (qword_1ED731058 != -1)
              {
                swift_once();
              }

              v92 = v17;
              v91 = v14;
              v90 = v15;
              if (qword_1ED730E98 != -1)
              {
                swift_once();
              }

              v42 = qword_1ED73B890;
              sub_1AF7B9154(0, &qword_1ED730B50, sub_1AF0D5CF0, MEMORY[0x1E69E6F90]);
              v43 = swift_allocObject();
              *(v43 + 16) = v82;
              *(v43 + 56) = MEMORY[0x1E69E6158];
              *(v43 + 64) = sub_1AF0D544C();
              *(v43 + 32) = v40;
              *(v43 + 40) = v39;

              sub_1AFDFC4C8(v41, &dword_1AF0CE000, v42, "%{public}s", 10, 2, v43);

              v44 = v86;
              sub_1AFDFC288();
              v45 = v89[12];
              v46 = v89[16];
              v47 = v88;
              v48 = v40;
              v49 = v39;
              v50 = &v88[v89[20]];
              (*v83)(v88, v44, v87);
              *(v47 + v45) = v41;
              *(v47 + v46) = 0;
              *v50 = v48;
              v50[1] = v49;

              sub_1AFDFC608();

              sub_1AF7B90F4(v47, sub_1AF0D4E74);

              v19 = 0;
              v21 = 0xE000000000000000;
              v15 = v90;
              v14 = v91;
              v17 = v92;
              v16 = v93;
            }
          }

          else
          {
            v19 = sub_1AF7E4930(&v105);
            v21 = v20;
          }

          MEMORY[0x1B2718AE0](v19, v21);

          goto LABEL_53;
        }

        v103 = 0x2074736E6F63;
        v104 = 0xE600000000000000;
        if (*(&v105 + 1) >= 0x3BuLL)
        {
          v32 = v106;
          v33 = v107;
          v34 = *(v107 + 16);

          if (!v34)
          {
            sub_1AF444F60(&v105, &v101);
LABEL_31:
            if (qword_1ED730EA0 != -1)
            {
              swift_once();
            }

            v101 = 0;
            v102 = 0xE000000000000000;
            sub_1AFDFE218();

            v101 = 0xD00000000000001BLL;
            v102 = v85;
            MEMORY[0x1B2718AE0](v32, *(&v32 + 1));
            MEMORY[0x1B2718AE0](0xD000000000000011, v84 | 0x8000000000000000);
            v51 = 0x6C6174654DLL;
            if (v99 != 2)
            {
              v51 = 0x697263536176614ALL;
            }

            v52 = 0xE500000000000000;
            if (v99 != 2)
            {
              v52 = 0xEA00000000007470;
            }

            v53 = 0x7070436A624FLL;
            if (!v99)
            {
              v53 = 67;
            }

            v54 = 0xE600000000000000;
            if (!v99)
            {
              v54 = 0xE100000000000000;
            }

            if (v99 <= 1u)
            {
              v55 = v53;
            }

            else
            {
              v55 = v51;
            }

            if (v99 <= 1u)
            {
              v56 = v54;
            }

            else
            {
              v56 = v52;
            }

            v93 = v16;
            MEMORY[0x1B2718AE0](v55, v56);

            v58 = v101;
            v57 = v102;
            v59 = sub_1AFDFDA18();
            if (qword_1ED731058 != -1)
            {
              swift_once();
            }

            v92 = v17;
            v91 = v14;
            v90 = v15;
            if (qword_1ED730E98 != -1)
            {
              swift_once();
            }

            v60 = qword_1ED73B890;
            sub_1AF7B9154(0, &qword_1ED730B50, sub_1AF0D5CF0, MEMORY[0x1E69E6F90]);
            v61 = swift_allocObject();
            *(v61 + 16) = v82;
            *(v61 + 56) = MEMORY[0x1E69E6158];
            *(v61 + 64) = sub_1AF0D544C();
            *(v61 + 32) = v58;
            *(v61 + 40) = v57;

            sub_1AFDFC4C8(v59, &dword_1AF0CE000, v60, "%{public}s", 10, 2, v61);

            v62 = v86;
            sub_1AFDFC288();
            v63 = v89[12];
            v64 = v89[16];
            v65 = v88;
            v66 = v58;
            v67 = v57;
            v68 = &v88[v89[20]];
            (*v83)(v88, v62, v87);
            *(v65 + v63) = v59;
            *(v65 + v64) = 0;
            *v68 = v66;
            v68[1] = v67;

            sub_1AFDFC608();

            sub_1AF7B90F4(v65, sub_1AF0D4E74);

            v23 = 0;
            v25 = 0xE000000000000000;
            v15 = v90;
            v14 = v91;
            v17 = v92;
            v16 = v93;
            goto LABEL_52;
          }

          sub_1AF444F60(&v105, &v101);
          v35 = sub_1AF41A220(v99);
          if ((v36 & 1) == 0)
          {
            goto LABEL_31;
          }

          v37 = (*(v33 + 56) + 16 * v35);
          v38 = *v37;
          v25 = v37[1];

          v23 = v38;
        }

        else
        {
          v22 = v99;

          sub_1AF444F60(&v105, &v101);
          if (v22 == 2)
          {
            v23 = sub_1AF7E4F70(&v105);
          }

          else
          {
            v23 = sub_1AF7E54DC(&v105);
          }

          v25 = v24;
        }

LABEL_52:
        MEMORY[0x1B2718AE0](v23, v25);

        MEMORY[0x1B2718AE0](32, 0xE100000000000000);
        MEMORY[0x1B2718AE0](0, 0xE000000000000000);
        MEMORY[0x1B2718AE0](v17, v16);
LABEL_53:
        sub_1AF444FBC(&v105);
        v70 = v103;
        v69 = v104;
        v101 = v15;
        v102 = v14;
        v103 = v17;
        v104 = v16;
        v71 = sub_1AFDFC328();
        v72 = v98;
        (*(*(v71 - 8) + 56))(v98, 1, 1, v71);
        sub_1AF4486E4();
        v73 = sub_1AFDFDEF8();
        v75 = v74;
        v76 = v14;
        v78 = v77;
        sub_1AF7B9068(v72);

        if (v78)
        {
        }

        else
        {
          v15 = sub_1AF9AADA8(v73, v75, v70, v69, v15, v76);
          v80 = v79;

          v76 = v80;
        }

        a2 = v97;
        v12 = v108 + 1;
        *v97 = v15;
        a2[1] = v76;

        result = v95;
        a1 = v96;
      }

      while (v95 != v12);
    }
  }

  return result;
}

unint64_t sub_1AF7B5894()
{
  sub_1AFDFE218();

  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  MEMORY[0x1B2718AE0](v1, v2);

  MEMORY[0x1B2718AE0](0x656372756F73202CLL, 0xEA0000000000203ALL);

  v3 = sub_1AF777650();
  MEMORY[0x1B2718AE0](v3);

  return 0xD000000000000017;
}

char *sub_1AF7B5974(unsigned int a1, char *a2, unint64_t a3)
{
  v117 = a1;
  v6 = 0;
  sub_1AF7B9154(0, &unk_1ED72DF20, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v116 = &v102 - v8;
  sub_1AF0D4E74(0);
  v115 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v114 = &v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_1AFDFC298();
  v11 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v112 = &v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = a2;
  v129 = a3;
  v13 = *(*(v3 + 136) + 160);
  v105 = v3;
  if (v13)
  {
    *(&v118 + 1) = v11;
    v125 = v13;
    swift_bridgeObjectRetain_n();

    sub_1AF7B4B60(&v125);
    v119 = 0;

    v120 = v125;
    v14 = *(v125 + 2);
    if (v14)
    {
      v15 = (v120 + 40);
      do
      {
        v17 = *(v15 - 1);
        v16 = *v15;
        v125 = a2;
        v126 = a3;
        v135 = v17;
        v136 = v16;
        v130 = 36;
        v131 = 0xE100000000000000;

        MEMORY[0x1B2718AE0](v17, v16);
        sub_1AF4486E4();
        a2 = sub_1AFDFDEB8();
        v19 = v18;

        swift_bridgeObjectRelease_n();

        v128 = a2;
        v129 = v19;
        v15 += 2;
        a3 = v19;
        --v14;
      }

      while (v14);
    }

    v3 = v105;
    v11 = *(&v118 + 1);
    v6 = v119;
  }

  else
  {
  }

  sub_1AF7B4D4C(v20, &v128, v117);
  v103 = v6;

  v21 = sub_1AF764DE8();
  if (v21)
  {
    v104 = v21;
    v22 = v21[2];
    if (v22)
    {
      v23 = (v104 + 4);
      v110 = "CodeGenContext.typeAsCode: ";
      v111 = 0x80000001AFF33DF0;
      v109 = (v11 + 32);
      v108 = xmmword_1AFE431C0;
      do
      {
        v119 = v23;
        sub_1AF7A70A0(v23, &v125);
        v25 = v125;
        v24 = v126;
        v26 = sub_1AFDFD188();

        if (v26)
        {
          sub_1AFDFD048();
          sub_1AFDFD078();
          v27 = sub_1AFDFD1F8();
          v29 = v28;
          v31 = v30;
          v33 = v32;

          v25 = MEMORY[0x1B27189E0](v27, v29, v31, v33);
          v24 = v34;
        }

        v35 = v117;
        v36 = v129;
        *&v118 = v128;
        sub_1AF44CBE4(&v127, v123);
        sub_1AF449D40(v123, &v124);
        *(&v118 + 1) = v36;

        swift_dynamicCast();
        sub_1AF809DF8(v121, v122, &v130);
        v37 = v131;
        v39 = v132;
        v38 = v133;
        v40 = v134;
        v135 = v130;
        v136 = v131;
        v137 = v132;
        v138 = v133;
        v139 = v134;
        v120 = v22;
        if (v35 == 3)
        {
          *&v124 = 544499052;
          *(&v124 + 1) = 0xE400000000000000;
          MEMORY[0x1B2718AE0](0, 0xE000000000000000);
          MEMORY[0x1B2718AE0](v25, v24);
          MEMORY[0x1B2718AE0](8250, 0xE200000000000000);
          if (v37 >= 0x3B)
          {
            if (*(v40 + 16) && (v46 = sub_1AF41A220(3), (v47 & 1) != 0))
            {
              v48 = (*(v40 + 56) + 16 * v46);
              v49 = *v48;
              v43 = v48[1];

              v41 = v49;
            }

            else
            {
              if (qword_1ED730EA0 != -1)
              {
                swift_once();
              }

              *&v123[0] = 0;
              *(&v123[0] + 1) = 0xE000000000000000;
              sub_1AFDFE218();

              *&v123[0] = 0xD00000000000001BLL;
              *(&v123[0] + 1) = v111;
              MEMORY[0x1B2718AE0](v39, v38);
              MEMORY[0x1B2718AE0](0xD000000000000011, v110 | 0x8000000000000000);
              MEMORY[0x1B2718AE0](0x4C28207466697753, 0xEE00297963616765);
              v55 = v123[0];
              v56 = sub_1AFDFDA18();
              if (qword_1ED731058 != -1)
              {
                swift_once();
              }

              if (qword_1ED730E98 != -1)
              {
                swift_once();
              }

              v57 = qword_1ED73B890;
              sub_1AF7B9154(0, &qword_1ED730B50, sub_1AF0D5CF0, MEMORY[0x1E69E6F90]);
              v58 = swift_allocObject();
              *(v58 + 16) = v108;
              *(v58 + 56) = MEMORY[0x1E69E6158];
              *(v58 + 64) = sub_1AF0D544C();
              *(v58 + 32) = v55;

              sub_1AFDFC4C8(v56, &dword_1AF0CE000, v57, "%{public}s", 10, 2, v58);

              v59 = v112;
              sub_1AFDFC288();
              v60 = v114;
              v61 = v115[12];
              v106 = v115[16];
              v107 = v61;
              v62 = &v114[v115[20]];
              (*v109)(v114, v59, v113);
              v63 = v106;
              v107[v60] = v56;
              *(v60 + v63) = 0;
              *v62 = v55;

              sub_1AFDFC608();

              sub_1AF7B90F4(v60, sub_1AF0D4E74);

              v41 = 0;
              v43 = 0xE000000000000000;
            }
          }

          else
          {
            v41 = sub_1AF7E4930(&v135);
            v43 = v42;
          }

          MEMORY[0x1B2718AE0](v41, v43);
        }

        else
        {
          *&v124 = 0x2074736E6F63;
          *(&v124 + 1) = 0xE600000000000000;
          if (v131 >= 0x3B)
          {
            if (*(v134 + 16) && (v50 = sub_1AF41A220(v117), (v51 & 1) != 0))
            {
              v52 = (*(v40 + 56) + 16 * v50);
              v53 = *v52;
              v54 = v52[1];

              v44 = v53;
            }

            else
            {
              if (qword_1ED730EA0 != -1)
              {
                swift_once();
              }

              *&v123[0] = 0;
              *(&v123[0] + 1) = 0xE000000000000000;
              sub_1AFDFE218();

              *&v123[0] = 0xD00000000000001BLL;
              *(&v123[0] + 1) = v111;
              MEMORY[0x1B2718AE0](v39, v38);
              MEMORY[0x1B2718AE0](0xD000000000000011, v110 | 0x8000000000000000);
              v64 = 0x6C6174654DLL;
              if (v117 != 2)
              {
                v64 = 0x697263536176614ALL;
              }

              v65 = 0xE500000000000000;
              if (v117 != 2)
              {
                v65 = 0xEA00000000007470;
              }

              v66 = 0x7070436A624FLL;
              if (!v117)
              {
                v66 = 67;
              }

              v67 = 0xE600000000000000;
              if (!v117)
              {
                v67 = 0xE100000000000000;
              }

              if (v117 <= 1u)
              {
                v68 = v66;
              }

              else
              {
                v68 = v64;
              }

              if (v117 <= 1u)
              {
                v69 = v67;
              }

              else
              {
                v69 = v65;
              }

              MEMORY[0x1B2718AE0](v68, v69);

              v70 = v123[0];
              v71 = sub_1AFDFDA18();
              if (qword_1ED731058 != -1)
              {
                swift_once();
              }

              v107 = v25;
              if (qword_1ED730E98 != -1)
              {
                swift_once();
              }

              v72 = qword_1ED73B890;
              sub_1AF7B9154(0, &qword_1ED730B50, sub_1AF0D5CF0, MEMORY[0x1E69E6F90]);
              v73 = swift_allocObject();
              *(v73 + 16) = v108;
              *(v73 + 56) = MEMORY[0x1E69E6158];
              *(v73 + 64) = sub_1AF0D544C();
              *(v73 + 32) = v70;

              sub_1AFDFC4C8(v71, &dword_1AF0CE000, v72, "%{public}s", 10, 2, v73);

              v74 = v112;
              sub_1AFDFC288();
              v75 = v114;
              v106 = v70;
              v76 = v115[12];
              v77 = v115[16];
              v78 = &v114[v115[20]];
              (*v109)(v114, v74, v113);
              *(v75 + v76) = v71;
              *(v75 + v77) = 0;
              *v78 = v106;
              *(v78 + 1) = *(&v70 + 1);

              sub_1AFDFC608();

              sub_1AF7B90F4(v75, sub_1AF0D4E74);

              v44 = 0;
              v54 = 0xE000000000000000;
              v25 = v107;
            }
          }

          else
          {
            if (v117 == 2)
            {
              v44 = sub_1AF7E4F70(&v135);
            }

            else
            {
              v44 = sub_1AF7E54DC(&v135);
            }

            v54 = v45;
          }

          MEMORY[0x1B2718AE0](v44, v54);

          MEMORY[0x1B2718AE0](32, 0xE100000000000000);
          MEMORY[0x1B2718AE0](0, 0xE000000000000000);
          MEMORY[0x1B2718AE0](v25, v24);
        }

        sub_1AF7B8FFC(&v130);
        v79 = v124;
        v81 = *(&v118 + 1);
        v80 = v118;
        v124 = v118;
        *&v123[0] = v25;
        *(&v123[0] + 1) = v24;
        v82 = sub_1AFDFC328();
        v83 = v116;
        (*(*(v82 - 8) + 56))(v116, 1, 1, v82);
        sub_1AF4486E4();
        v84 = sub_1AFDFDEF8();
        v86 = v85;
        v88 = v87;
        sub_1AF7B9068(v83);

        if (v88)
        {
        }

        else
        {
          v80 = sub_1AF9AADA8(v84, v86, v79, *(&v79 + 1), v80, v81);
          v90 = v89;
          swift_bridgeObjectRelease_n();

          v81 = v90;
        }

        v128 = v80;
        v129 = v81;
        sub_1AF7B90F4(&v125, sub_1AF7711B0);
        v23 = v119 + 104;
        v22 = v120 - 1;
      }

      while (v120 != 1);
    }

    v3 = v105;
  }

  v91 = *(v3 + 136);
  if (!*(v91 + 200))
  {
    return v128;
  }

  v125 = *(v91 + 200);
  swift_bridgeObjectRetain_n();
  v92 = v103;
  sub_1AF7B4B60(&v125);
  if (!v92)
  {

    v93 = *(v125 + 2);
    v94 = v128;
    v95 = v129;
    v120 = v125;
    if (v93)
    {
      v96 = v125 + 40;
      do
      {
        v98 = *(v96 - 1);
        v97 = *v96;
        v125 = v94;
        v126 = v95;
        *&v124 = v98;
        *(&v124 + 1) = v97;
        *&v123[0] = 36;
        *(&v123[0] + 1) = 0xE100000000000000;

        MEMORY[0x1B2718AE0](v98, v97);
        sub_1AF4486E4();
        v94 = sub_1AFDFDEB8();
        v100 = v99;

        swift_bridgeObjectRelease_n();

        v96 += 16;
        v95 = v100;
        --v93;
      }

      while (v93);
    }

    return v94;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AF7B67A4(uint64_t *a1)
{
  v2 = v1;
  if ((sub_1AF7626A4() & 1) == 0)
  {
    goto LABEL_13;
  }

  v3 = v1[6];
  if (v3[2])
  {
    v4 = v3[4];
    v5 = v3[5];
    v6 = v3[6];
    v7 = v3[8];
    v118 = v3[7];
    sub_1AF687F90(v4, v5, v6, v118, v7);
    v8 = v2[11];
    if (!v8[2])
    {
      if (v5 != 59)
      {
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v12 = 0;
        v13 = 59;
LABEL_12:
        sub_1AF771214(v4, v5, v6, v118, v7);
        sub_1AF771214(v12, v13, v11, v10, v9);
        goto LABEL_13;
      }

      goto LABEL_47;
    }
  }

  else
  {
    v8 = v1[11];
    if (!v8[2])
    {
      goto LABEL_47;
    }

    v7 = 0;
    v118 = 0;
    v6 = 0;
    v4 = 0;
    v5 = 59;
  }

  v12 = v8[4];
  v13 = v8[5];
  v11 = v8[6];
  v10 = v8[7];
  v9 = v8[8];
  sub_1AF687F90(v12, v13, v11, v10, v9);
  if (v5 == 59)
  {
    if (v13 != 59)
    {
      v5 = 59;
      goto LABEL_12;
    }

    goto LABEL_47;
  }

  if (v13 == 59)
  {
    goto LABEL_12;
  }

  v129 = v12;
  v130 = v13;
  v131 = v11;
  v132 = v10;
  v133 = v9;
  v134 = v4;
  v115 = v4;
  v117 = v6;
  v135 = v5;
  v136 = v6;
  v137 = v118;
  v138 = v7;
  v64 = sub_1AF7FE65C();
  v66 = v65;
  if (v64 == sub_1AF7FE65C() && v66 == v67)
  {

    sub_1AF771214(v12, v13, v11, v10, v9);
    sub_1AF771214(v115, v5, v117, v118, v7);
    goto LABEL_47;
  }

  v114 = sub_1AFDFEE28();

  sub_1AF771214(v12, v13, v11, v10, v9);
  sub_1AF771214(v115, v5, v117, v118, v7);
  if ((v114 & 1) == 0)
  {
LABEL_13:
    v14 = *a1;
    v15 = *(*a1 + 24);

    v16 = sub_1AF776964(v15);
    v18 = v17;

    if (v18)
    {
      v19 = sub_1AF7B5974(*(v14 + 24), v16, v18);
      v21 = v20;

      v22 = v2[17];
      v23 = *(v22 + 160);
      if (v23)
      {
        v24 = *(v23 + 16);
        if (v24)
        {
          v25 = ( + 40);
          do
          {
            v26 = *(v25 - 1);
            v27 = *v25;
            *&v125 = v19;
            *(&v125 + 1) = v21;
            *&v121[0] = 36;
            *(&v121[0] + 1) = 0xE100000000000000;

            MEMORY[0x1B2718AE0](v26, v27);
            v28 = v2[4];
            *&v124 = v2[3];
            *(&v124 + 1) = v28;

            MEMORY[0x1B2718AE0](47, 0xE100000000000000);

            MEMORY[0x1B2718AE0](v26, v27);

            v29 = sub_1AF76ED08(v124, *(&v124 + 1));
            v31 = v30;

            *&v124 = v29;
            *(&v124 + 1) = v31;
            sub_1AF4486E4();
            v19 = sub_1AFDFDEB8();
            v33 = v32;

            v21 = v33;
            v25 += 2;
            --v24;
          }

          while (v24);

          v22 = v2[17];
        }
      }

      v34 = *(v22 + 200);
      if (v34)
      {
        v35 = *(v34 + 16);
        if (v35)
        {
          v36 = ( + 40);
          do
          {
            v37 = *(v36 - 1);
            v38 = *v36;
            *&v125 = v19;
            *(&v125 + 1) = v21;
            *&v121[0] = 36;
            *(&v121[0] + 1) = 0xE100000000000000;

            MEMORY[0x1B2718AE0](v37, v38);
            v39 = v2[4];
            *&v124 = v2[3];
            *(&v124 + 1) = v39;

            MEMORY[0x1B2718AE0](47, 0xE100000000000000);

            MEMORY[0x1B2718AE0](v37, v38);

            v40 = sub_1AF76ED08(v124, *(&v124 + 1));
            v42 = v41;

            *&v124 = v40;
            *(&v124 + 1) = v42;
            sub_1AF4486E4();
            v19 = sub_1AFDFDEB8();
            v44 = v43;

            v21 = v44;
            v36 += 2;
            --v35;
          }

          while (v35);
        }
      }

      *&v125 = v19;
      *(&v125 + 1) = v21;
      *&v121[0] = 0x23504D455423;
      *(&v121[0] + 1) = 0xE600000000000000;
      sub_1AF4486E4();
      if (sub_1AFDFDF18())
      {
        *&v125 = v19;
        *(&v125 + 1) = v21;
        *&v121[0] = 0x23504D455423;
        *(&v121[0] + 1) = 0xE600000000000000;
        v45 = v2[4];
        *&v124 = v2[3];
        *(&v124 + 1) = v45;

        MEMORY[0x1B2718AE0](47, 0xE100000000000000);

        MEMORY[0x1B2718AE0](1886217556, 0xE400000000000000);

        v46 = sub_1AF76ED08(v124, *(&v124 + 1));
        v48 = v47;

        *&v124 = v46;
        *(&v124 + 1) = v48;
        sub_1AFDFDEB8();
      }

      *&v121[0] = 10;
      *(&v121[0] + 1) = 0xE100000000000000;
      *&v124 = 2099466;
      *(&v124 + 1) = 0xE300000000000000;
      v49 = sub_1AFDFDEB8();
      v51 = v50;

      *&v125 = v49;
      *(&v125 + 1) = v51;
      v52 = sub_1AFDFDF28();

      sub_1AF7B4BCC(v52, a1);
    }

    else
    {
      v55 = v2[3];
      v54 = v2[4];
      *(&v126 + 1) = MEMORY[0x1E69E6158];
      *&v125 = 0;
      *(&v125 + 1) = 0xE000000000000000;

      sub_1AF7FDDF0(1701667182, 0xE400000000000000, &v125, v121);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v125);
      sub_1AF449D40(v121, &v125);
      swift_dynamicCast();
      v56 = v124;
      v57 = sub_1AF762980();
      v59 = v58;
      *&v125 = 0;
      *(&v125 + 1) = 0xE000000000000000;
      sub_1AFDFE218();
      v124 = v125;
      v60 = *(v14 + 24);
      v119 = v14;
      v116 = v59;
      v61 = v55;
      if (v60 <= 1)
      {
        if (*(v14 + 24))
        {
          v62 = 0xE600000000000000;
          v63 = 0x7070636A626FLL;
        }

        else
        {
          v62 = 0xE100000000000000;
          v63 = 99;
        }
      }

      else if (v60 == 2)
      {
        v62 = 0xE500000000000000;
        v63 = 0x6C6174656DLL;
      }

      else if (v60 == 3)
      {
        v62 = 0xE500000000000000;
        v63 = 0x7466697773;
      }

      else
      {
        v62 = 0xE200000000000000;
        v63 = 29546;
      }

      sub_1AF9A0BAC(1, v63, v62);

      v68 = sub_1AFDFDDB8();
      v70 = v69;

      v71 = sub_1AF701628(1, v63, v62);
      v73 = v72;
      v75 = v74;
      v77 = v76;

      *&v125 = v71;
      *(&v125 + 1) = v73;
      *&v126 = v75;
      *(&v126 + 1) = v77;
      sub_1AF725990();
      sub_1AFDFD0A8();

      MEMORY[0x1B2718AE0](v68, v70);

      MEMORY[0x1B2718AE0](0xD00000000000003ALL, 0x80000001AFF34BD0);
      *&v121[0] = v61;
      *(&v121[0] + 1) = v54;
      v121[1] = v56;
      *&v122 = v57;
      *(&v122 + 1) = v116;
      v123 = v124;
      v125 = v121[0];
      v126 = v56;
      v127 = v122;
      v128 = v124;
      v78 = *(v119 + 144);
      sub_1AF51E760(&v125, v78);
      if (v79)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        *(v119 + 144) = v78;
        if ((result & 1) == 0)
        {
          result = sub_1AF424EC0(0, *(v78 + 16) + 1, 1, v78);
          v78 = result;
          *(v119 + 144) = result;
        }

        v81 = *(v78 + 16);
        v80 = *(v78 + 24);
        if (v81 >= v80 >> 1)
        {
          result = sub_1AF424EC0(v80 > 1, v81 + 1, 1, v78);
          v78 = result;
        }

        *(v78 + 16) = v81 + 1;
        v82 = (v78 + (v81 << 6));
        v83 = v125;
        v84 = v126;
        v85 = v128;
        v82[4] = v127;
        v82[5] = v85;
        v82[2] = v83;
        v82[3] = v84;
        *(v119 + 144) = v78;
      }

      else
      {
        return sub_1AF761440(v121);
      }
    }

    return result;
  }

LABEL_47:
  v86 = v2[7];
  if (!(v86 >> 62))
  {
    if (*((v86 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_49;
    }

LABEL_52:
    v87 = 0;
    goto LABEL_53;
  }

  if (!sub_1AFDFE108())
  {
    goto LABEL_52;
  }

LABEL_49:
  if ((v86 & 0xC000000000000001) != 0)
  {

    v87 = MEMORY[0x1B2719C70](0, v86);
  }

  else
  {
    v87 = *(v86 + 32);
  }

LABEL_53:
  v88 = v2[12];
  if (v88 >> 62)
  {
    sub_1AFDFE108();
    if ((v88 & 0xC000000000000001) == 0)
    {
      goto LABEL_55;
    }

LABEL_68:

    v89 = MEMORY[0x1B2719C70](0, v88);

    goto LABEL_56;
  }

  if ((v88 & 0xC000000000000001) != 0)
  {
    goto LABEL_68;
  }

LABEL_55:
  v89 = *(v88 + 32);

LABEL_56:
  v90 = *a1;
  *&v124 = 8201;
  *(&v124 + 1) = 0xE200000000000000;
  v91 = *(v89 + 72);
  v92 = *(v90 + 24);
  v125 = *(v89 + 56);
  v126 = v91;
  *&v127 = *(v89 + 88);
  v93 = *(v89 + 40);
  v94 = *(v89 + 48);

  sub_1AF444F60(&v125, v121);
  v95 = sub_1AF76ED08(v93, v94);
  v97 = v96;

  v98 = sub_1AF7DBFF8(&v125, v95, v97, 0, v92);
  v100 = v99;

  sub_1AF444FBC(&v125);
  MEMORY[0x1B2718AE0](v98, v100);

  MEMORY[0x1B2718AE0](2112800, 0xE300000000000000);
  v101 = *(v87 + 40);
  v102 = *(v87 + 48);

  v103 = sub_1AF76ED08(v101, v102);
  v105 = v104;

  MEMORY[0x1B2718AE0](v103, v105);

  if (*(v90 + 24) == 3)
  {
    v106 = 0;
  }

  else
  {
    v106 = 59;
  }

  if (*(v90 + 24) == 3)
  {
    v107 = 0xE000000000000000;
  }

  else
  {
    v107 = 0xE100000000000000;
  }

  MEMORY[0x1B2718AE0](v106, v107);

  v108 = v124;
  v109 = *(v90 + 128);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v90 + 128) = v109;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v109 = sub_1AF420554(0, *(v109 + 2) + 1, 1, v109);
    *(v90 + 128) = v109;
  }

  v112 = *(v109 + 2);
  v111 = *(v109 + 3);
  if (v112 >= v111 >> 1)
  {
    *(v90 + 128) = sub_1AF420554(v111 > 1, v112 + 1, 1, v109);
  }

  v113 = *(v90 + 128);
  *(v113 + 16) = v112 + 1;
  *(v113 + 16 * v112 + 32) = v108;
  *(v90 + 128) = v113;
  return result;
}

uint64_t sub_1AF7B7430@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1AFDFE638();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1AF7B7488(uint64_t a1)
{
  v2 = sub_1AF7B85E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF7B74C4(uint64_t a1)
{
  v2 = sub_1AF7B85E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF7B754C(void *a1)
{
  sub_1AF7B86E0(0, &qword_1EB63EAF0, sub_1AF7B85E4, &_s17CustomCodeSnippetC10CodingKeysON, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12[-1] - v6;
  v8 = sub_1AF441150(a1, a1[3]);
  sub_1AF7B85E4();
  v9 = v8;
  sub_1AFDFF3B8();
  if (v1)
  {
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
    _s17CustomCodeSnippetCMa();
    swift_deallocPartialClassInstance();
  }

  else
  {
    _s17CodeSourceSnippetCMa();
    sub_1AF7B8748(&qword_1EB63EB00, aM_30);
    sub_1AFDFE768();
    *(v12[6] + 136) = v12[0];
    sub_1AF441194(a1, v12);
    v9 = sub_1AF76BC24(v12);

    sub_1AF76B4B4();
    sub_1AF763428();
    (*(v5 + 8))(v7, v4);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  return v9;
}

uint64_t sub_1AF7B77B0(void *a1)
{
  sub_1AF7B86E0(0, &qword_1EB63EB38, sub_1AF7B85E4, &_s17CustomCodeSnippetC10CodingKeysON, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v10 - v7;
  result = sub_1AF76C660(a1);
  if (!v2)
  {
    sub_1AF441150(a1, a1[3]);
    sub_1AF7B85E4();
    sub_1AFDFF3F8();
    v10[1] = *(v1 + 136);
    _s17CodeSourceSnippetCMa();
    sub_1AF7B8748(&qword_1EB63EB40, aE_35);
    sub_1AFDFE918();
    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

unint64_t sub_1AF7B79D0()
{
  *&v5 = 0;
  *(&v5 + 1) = 0xE000000000000000;
  sub_1AFDFE218();

  v7 = 0xD000000000000015;
  v8 = 0x80000001AFF34BB0;
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  MEMORY[0x1B2718AE0](v1, v2);

  MEMORY[0x1B2718AE0](0x203A656D616E202CLL, 0xE900000000000022);
  v6 = MEMORY[0x1E69E6158];
  *&v5 = 0;
  *(&v5 + 1) = 0xE000000000000000;
  sub_1AF7FDDF0(1701667182, 0xE400000000000000, &v5, v4);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v5);
  sub_1AF449D40(v4, &v5);
  swift_dynamicCast();
  MEMORY[0x1B2718AE0]();

  MEMORY[0x1B2718AE0](10530, 0xE200000000000000);
  return v7;
}

uint64_t sub_1AF7B7B24@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1AFDFE638();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1AF7B7B7C(uint64_t a1)
{
  v2 = sub_1AF7B868C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF7B7BB8(uint64_t a1)
{
  v2 = sub_1AF7B868C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF7B7C40(void *a1)
{
  sub_1AF7B86E0(0, &qword_1EB63EB30, sub_1AF7B868C, &_s15VariableSnippetC10CodingKeysON, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v14 - v6;
  v8 = sub_1AF441150(a1, a1[3]);
  sub_1AF7B868C();
  v9 = v8;
  sub_1AFDFF3B8();
  if (v1)
  {
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
    _s15VariableSnippetCMa();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1AF75FCC4();
    sub_1AFDFE768();
    v11 = v15;
    v12 = v14[1];
    v13 = v16;
    *(v16 + 144) = v14[0];
    *(v13 + 160) = v12;
    *(v13 + 176) = v11;
    sub_1AF441194(a1, v14);
    v9 = sub_1AF7B754C(v14);
    (*(v5 + 8))(v7, v4);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  return v9;
}

unint64_t sub_1AF7B7EF0()
{
  *&v5 = 0;
  *(&v5 + 1) = 0xE000000000000000;
  sub_1AFDFE218();

  v7 = 0xD00000000000001ELL;
  v8 = 0x80000001AFF34B90;
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  MEMORY[0x1B2718AE0](v1, v2);

  MEMORY[0x1B2718AE0](0x203A656D616E202CLL, 0xE900000000000022);
  v6 = MEMORY[0x1E69E6158];
  *&v5 = 0;
  *(&v5 + 1) = 0xE000000000000000;
  sub_1AF7FDDF0(1701667182, 0xE400000000000000, &v5, v4);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v5);
  sub_1AF449D40(v4, &v5);
  swift_dynamicCast();
  MEMORY[0x1B2718AE0]();

  MEMORY[0x1B2718AE0](8745, 0xE200000000000000);
  return v7;
}

uint64_t sub_1AF7B8034@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1AFDFE638();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1AF7B808C(uint64_t a1)
{
  v2 = sub_1AF7B8638();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF7B80C8(uint64_t a1)
{
  v2 = sub_1AF7B8638();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF7B8150(void *a1)
{
  sub_1AF7B86E0(0, &qword_1EB63EB18, sub_1AF7B8638, &_s24VariableReferenceSnippetC10CodingKeysON, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v14 - v6;
  v8 = sub_1AF441150(a1, a1[3]);
  sub_1AF7B8638();
  v9 = v8;
  sub_1AFDFF3B8();
  if (v1)
  {
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
    _s24VariableReferenceSnippetCMa();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1AF75FCC4();
    sub_1AFDFE768();
    v11 = v15;
    v12 = v14[1];
    v13 = v16;
    *(v16 + 144) = v14[0];
    *(v13 + 160) = v12;
    *(v13 + 176) = v11;
    sub_1AF441194(a1, v14);
    v9 = sub_1AF7B754C(v14);
    (*(v5 + 8))(v7, v4);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  return v9;
}

uint64_t sub_1AF7B83D4(void *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void))
{
  sub_1AF7B86E0(0, a2, a3, a4, MEMORY[0x1E69E6F58]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v18 - v12;
  result = sub_1AF7B77B0(a1);
  if (!v6)
  {
    v15 = a1[3];
    v20 = a1[4];
    sub_1AF441150(a1, v15);
    a5();
    sub_1AFDFF3F8();
    v16 = *(v5 + 176);
    v17 = *(v5 + 160);
    v18[0] = *(v5 + 144);
    v18[1] = v17;
    v19 = v16;
    sub_1AF75FC0C();
    sub_1AFDFE918();
    return (*(v11 + 8))(v13, v10);
  }

  return result;
}

uint64_t sub_1AF7B8568()
{
  v0 = sub_1AF76CB54();

  sub_1AF687FE4(v0[18], v0[19], v0[20], v0[21], v0[22]);

  return swift_deallocClassInstance();
}

unint64_t sub_1AF7B85E4()
{
  result = qword_1EB63EAF8;
  if (!qword_1EB63EAF8)
  {
    result = swift_getWitnessTable(aY_50, &_s17CustomCodeSnippetC10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB63EAF8);
  }

  return result;
}

unint64_t sub_1AF7B8638()
{
  result = qword_1EB63EB10;
  if (!qword_1EB63EB10)
  {
    result = swift_getWitnessTable(byte_1AFE773F0, &_s24VariableReferenceSnippetC10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB63EB10);
  }

  return result;
}

unint64_t sub_1AF7B868C()
{
  result = qword_1EB63EB28;
  if (!qword_1EB63EB28)
  {
    result = swift_getWitnessTable(byte_1AFE773A0, &_s15VariableSnippetC10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB63EB28);
  }

  return result;
}

void sub_1AF7B86E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1AF7B8748(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = _s17CodeSourceSnippetCMa();
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AF7B878C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1AFDFE9D8();
  if (result >= v2)
  {
    if (v2 >= 2)
    {
      v7 = *a1;
      v8 = -1;
      v9 = 1;
      v10 = *a1;
      do
      {
        v11 = (v7 + 16 * v9);
        v12 = *v11;
        v13 = v11[1];
        v14 = v8;
        v15 = v10;
        do
        {
          result = *v15;
          if (*v15 == v12 && *(v15 + 8) == v13)
          {
            break;
          }

          result = sub_1AFDFEE28();
          if ((result & 1) == 0)
          {
            break;
          }

          *(v15 + 16) = *v15;
          *v15 = v12;
          *(v15 + 8) = v13;
          v15 -= 16;
        }

        while (!__CFADD__(v14++, 1));
        ++v9;
        v10 += 16;
        --v8;
      }

      while (v9 != v2);
    }
  }

  else
  {
    v4 = result;
    v5 = v2 / 2;
    if (v2 <= 1)
    {
      v6 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v6 = sub_1AFDFD488();
      *(v6 + 16) = v5;
    }

    v18[0] = (v6 + 32);
    v18[1] = v5;
    sub_1AF7B88E0(v18, v19, a1, v4);
    *(v6 + 16) = 0;
  }

  return result;
}

uint64_t sub_1AF7B88E0(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = a4;
    v8 = 0;
    v80 = *a1;
    v9 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v79 = v9;
      v10 = v8;
      v11 = v8 + 1;
      if (v8 + 1 >= v6)
      {
        ++v8;
        v9 = v79;
        goto LABEL_32;
      }

      v12 = (*a3 + 16 * v11);
      v13 = (*a3 + 16 * v8);
      if (*v13 == *v12 && v13[1] == v12[1])
      {
        v15 = 0;
      }

      else
      {
        v15 = sub_1AFDFEE28();
      }

      v16 = v8 + 2;
      if (v8 + 2 < v6)
      {
        v17 = v13 + 3;
        v18 = v13 + 3;
        while (1)
        {
          v8 = v16;
          v20 = v18[2];
          v18 += 2;
          v19 = v20;
          if (*(v17 - 1) == v17[1] && *v17 == v19)
          {
            if (v15)
            {
              v9 = v79;
              if (v10 <= v16 - 1)
              {
                goto LABEL_28;
              }

              goto LABEL_32;
            }
          }

          else if ((v15 ^ sub_1AFDFEE28()))
          {
            v11 = v8 - 1;
            goto LABEL_27;
          }

          v16 = v8 + 1;
          v17 = v18;
          if (v6 == v8 + 1)
          {
            v11 = v8;
            v8 = v6;
            goto LABEL_27;
          }
        }
      }

      v8 += 2;
LABEL_27:
      v22 = v10 <= v11;
      v9 = v79;
      if (v15 & v22)
      {
LABEL_28:
        v23 = 0;
        v24 = 16 * v8;
        v25 = 16 * v10;
        v26 = v10;
        do
        {
          if (v26 != v8 + v23 - 1)
          {
            v27 = (*a3 + v25);
            v28 = *a3 + v24;
            v29 = *v27;
            v30 = v27[1];
            *v27 = *(v28 - 16);
            *(v28 - 16) = v29;
            *(v28 - 8) = v30;
          }

          ++v26;
          --v23;
          v24 -= 16;
          v25 += 16;
        }

        while (v26 < v8 + v23);
      }

LABEL_32:
      v31 = a3[1];
      if (v8 < v31 && v8 - v10 < v7)
      {
        if (v10 + v7 >= v31)
        {
          v33 = a3[1];
        }

        else
        {
          v33 = v10 + v7;
        }

        if (v10 + v7 == v8)
        {
          v8 = v33;
        }

        else
        {
          v75 = v10;
          v76 = v5;
          v34 = *a3;
          v35 = *a3 + 16 * v8 - 16;
          v36 = v10 - v8;
          do
          {
            v37 = (v34 + 16 * v8);
            v38 = *v37;
            v39 = v37[1];
            v40 = v36;
            v41 = v35;
            do
            {
              if (*v41 == v38 && *(v41 + 8) == v39)
              {
                break;
              }

              if ((sub_1AFDFEE28() & 1) == 0)
              {
                break;
              }

              *(v41 + 16) = *v41;
              *v41 = v38;
              *(v41 + 8) = v39;
              v41 -= 16;
            }

            while (!__CFADD__(v40++, 1));
            ++v8;
            v35 += 16;
            --v36;
          }

          while (v8 != v33);
          v8 = v33;
          v10 = v75;
          v5 = v76;
          v9 = v79;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_1AF4209A4(0, *(v9 + 2) + 1, 1, v9);
      }

      v45 = *(v9 + 2);
      v44 = *(v9 + 3);
      v46 = v45 + 1;
      if (v45 >= v44 >> 1)
      {
        v9 = sub_1AF4209A4(v44 > 1, v45 + 1, 1, v9);
      }

      *(v9 + 2) = v46;
      v47 = v9 + 32;
      v48 = &v9[16 * v45 + 32];
      *v48 = v10;
      *(v48 + 1) = v8;
      if (v45)
      {
        break;
      }

LABEL_3:
      v6 = a3[1];
      v7 = a4;
      if (v8 >= v6)
      {
        goto LABEL_75;
      }
    }

    while (1)
    {
      v49 = v46 - 1;
      if (v46 >= 4)
      {
        v53 = &v47[16 * v46];
        v54 = *(v53 - 7) - *(v53 - 8);
        v52 = *(v53 - 5) - *(v53 - 6);
        v55 = &v9[16 * v46];
        v50 = *v55;
        v51 = *(v55 + 1);
        if (v52 - v50 + v51 >= v54)
        {
          v58 = v46 - 2;
          v57 = *&v47[16 * v49 + 8] - *&v47[16 * v49];
          goto LABEL_69;
        }
      }

      else
      {
        if (v46 != 3)
        {
          v56 = *&v9[16 * v46 + 8] - *&v9[16 * v46];
          v57 = *&v47[16 * v49 + 8] - *&v47[16 * v49];
LABEL_66:
          if (v57 < v56)
          {
            goto LABEL_3;
          }

          goto LABEL_71;
        }

        v50 = *(v9 + 6);
        v51 = *(v9 + 7);
        v52 = *(v9 + 5) - *(v9 + 4);
      }

      v56 = v51 - v50;
      v57 = *&v47[16 * v49 + 8] - *&v47[16 * v49];
      if (v56 + v57 < v52)
      {
        goto LABEL_66;
      }

      v58 = v46 - 2;
LABEL_69:
      if (v52 < v57)
      {
        v49 = v58;
      }

LABEL_71:
      v59 = &v47[16 * v49];
      v60 = *(v59 - 2);
      v61 = *(v59 + 1);
      sub_1AF7B8DD4((*a3 + 16 * v60), (*a3 + 16 * *v59), (*a3 + 16 * v61), v80);
      if (v5)
      {
      }

      *(v59 - 2) = v60;
      *(v59 - 1) = v61;
      v62 = *(v9 + 2);
      v46 = v62 - 1;
      memmove(&v47[16 * v49], v59 + 16, 16 * (v62 - 1 - v49));
      *(v9 + 2) = v62 - 1;
      if (v62 <= 2)
      {
        goto LABEL_3;
      }
    }
  }

  v9 = MEMORY[0x1E69E7CC0];
LABEL_75:
  v63 = *a1;
  v64 = v5;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_1AF650C88(v9);
  }

  v65 = v9;
  v68 = *(v9 + 2);
  v66 = (v9 + 16);
  v67 = v68;
  if (v68 >= 2)
  {
    do
    {
      v69 = &v65[16 * v67];
      v70 = *v69;
      v71 = &v66[2 * v67];
      v72 = v71[1];
      sub_1AF7B8DD4((*a3 + 16 * *v69), (*a3 + 16 * *v71), (*a3 + 16 * v72), v63);
      if (v64)
      {
        break;
      }

      *v69 = v70;
      *(v69 + 1) = v72;
      v73 = *v66 - 1;
      memmove(&v66[2 * v67], v71 + 2, 16 * (*v66 - v67));
      *v66 = v73;
      v67 = v73;
    }

    while (v73 > 1);
  }
}

uint64_t sub_1AF7B8DD4(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v4 == *v6 && *(v4 + 1) == *(v6 + 1);
      if (!v16 && (sub_1AFDFEE28() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = *(v6 - 2) == v19 && *(v6 - 1) == v20;
      if (!v21 && (sub_1AFDFEE28() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_1AF7B8FFC(uint64_t a1)
{
  sub_1AF6B740C(0, &qword_1EB63E690, &_s12MetadataTypeON);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AF7B9068(uint64_t a1)
{
  sub_1AF7B9154(0, &unk_1ED72DF20, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AF7B90F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1AF7B9154(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1AF7B91EC()
{
  result = qword_1EB63EB48;
  if (!qword_1EB63EB48)
  {
    result = swift_getWitnessTable(byte_1AFE77198, &_s17CustomCodeSnippetC10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB63EB48);
  }

  return result;
}

unint64_t sub_1AF7B9244()
{
  result = qword_1EB63EB50;
  if (!qword_1EB63EB50)
  {
    result = swift_getWitnessTable(byte_1AFE77288, &_s24VariableReferenceSnippetC10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB63EB50);
  }

  return result;
}

unint64_t sub_1AF7B929C()
{
  result = qword_1EB63EB58;
  if (!qword_1EB63EB58)
  {
    result = swift_getWitnessTable(byte_1AFE77378, &_s15VariableSnippetC10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB63EB58);
  }

  return result;
}

unint64_t sub_1AF7B92F4()
{
  result = qword_1EB63EB60;
  if (!qword_1EB63EB60)
  {
    result = swift_getWitnessTable(aA_46, &_s15VariableSnippetC10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB63EB60);
  }

  return result;
}

unint64_t sub_1AF7B934C()
{
  result = qword_1EB63EB68;
  if (!qword_1EB63EB68)
  {
    result = swift_getWitnessTable(aY_51, &_s15VariableSnippetC10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB63EB68);
  }

  return result;
}

unint64_t sub_1AF7B93A4()
{
  result = qword_1EB63EB70;
  if (!qword_1EB63EB70)
  {
    result = swift_getWitnessTable(a1_29, &_s24VariableReferenceSnippetC10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB63EB70);
  }

  return result;
}

unint64_t sub_1AF7B93FC()
{
  result = qword_1EB63EB78;
  if (!qword_1EB63EB78)
  {
    result = swift_getWitnessTable(aI_29, &_s24VariableReferenceSnippetC10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB63EB78);
  }

  return result;
}

unint64_t sub_1AF7B9454()
{
  result = qword_1EB63EB80;
  if (!qword_1EB63EB80)
  {
    result = swift_getWitnessTable(asc_1AFE770D0, &_s17CustomCodeSnippetC10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB63EB80);
  }

  return result;
}

unint64_t sub_1AF7B94AC()
{
  result = qword_1EB63EB88;
  if (!qword_1EB63EB88)
  {
    result = swift_getWitnessTable(a9_26, &_s17CustomCodeSnippetC10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB63EB88);
  }

  return result;
}

uint64_t sub_1AF7B9518(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 40);
    while (1)
    {
      v7 = *v6;
      v11[0] = *(v6 - 1);
      v11[1] = v7;

      v8 = a1(v11);

      if (v3)
      {
        break;
      }

      if (v8)
      {
        v9 = 1;
        return v9 & 1;
      }

      v6 += 2;
      if (!--v4)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_1AF7B95C0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = (a3 + 64);
    do
    {
      v17 = v5;
      v7 = *(v6 - 4);
      v8 = *(v6 - 3);
      v9 = *(v6 - 2);
      v10 = *(v6 - 1);
      v11 = *v6;
      v16[0] = v7;
      v16[1] = v8;
      v16[2] = v9;
      v16[3] = v10;
      v16[4] = v11;
      sub_1AF687F90(v7, v8, v9, v10, v11);
      v12 = v4;
      v13 = a1(v16);
      sub_1AF687FE4(v7, v8, v9, v10, v11);
      if (v12)
      {
        break;
      }

      if (v13)
      {
        LOBYTE(v5) = 1;
        return v5 & 1;
      }

      v6 += 5;
      v5 = v17 - 1;
      v4 = 0;
    }

    while (v17 != 1);
  }

  return v5 & 1;
}

uint64_t sub_1AF7B96BC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 74);
    while (1)
    {
      v7 = *(v6 - 17);
      v8 = *(v6 - 5);
      v9 = *(v6 - 2);
      v10 = *v6;
      v14[0] = *(v6 - 21);
      v14[1] = v7;
      v15 = *(v6 - 13);
      v16 = v8;
      v17 = v9;
      v18 = v10;

      v11 = a1(v14);

      if (v3)
      {
        break;
      }

      if (v11)
      {
        v12 = 1;
        return v12 & 1;
      }

      v6 += 24;
      if (!--v4)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_1AF7B97A4(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    while (1)
    {
      v10 = *v6;

      v7 = a1(&v10);

      if (v3)
      {
        break;
      }

      if (v7)
      {
        v8 = 1;
        return v8 & 1;
      }

      ++v6;
      if (!--v4)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_1AF7B9844(uint64_t (*a1)(_OWORD *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    while (1)
    {
      v7 = v6[3];
      v8 = v6[5];
      v23 = v6[4];
      v24 = v8;
      v9 = v6[1];
      v19 = *v6;
      v20 = v9;
      v10 = v6[3];
      v12 = *v6;
      v11 = v6[1];
      v21 = v6[2];
      v22 = v10;
      v13 = v6[5];
      v17[4] = v23;
      v17[5] = v13;
      v17[0] = v12;
      v17[1] = v11;
      v25 = *(v6 + 96);
      v18 = *(v6 + 96);
      v17[2] = v21;
      v17[3] = v7;
      sub_1AF725E8C(v19, *(&v19 + 1), v20);
      v14 = a1(v17);
      sub_1AF7D4D70(&v19);
      if (v3)
      {
        break;
      }

      if (v14)
      {
        v15 = 1;
        return v15 & 1;
      }

      v6 += 7;
      if (!--v4)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_1AF7B9934(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (!(a3 >> 62))
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_14:
    v10 = 0;
    return v10 & 1;
  }

  v6 = sub_1AFDFE108();
  if (!v6)
  {
    goto LABEL_14;
  }

LABEL_3:
  v7 = 0;
  while (1)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1B2719C70](v7, a3);
    }

    else
    {
      v8 = *(a3 + 8 * v7 + 32);
    }

    v12 = v8;
    v9 = a1(&v12);

    if (v3)
    {
      return v10 & 1;
    }

    if (v9)
    {
      v10 = 1;
      return v10 & 1;
    }

    if (v6 == ++v7)
    {
      goto LABEL_14;
    }
  }
}

char *sub_1AF7B9A38(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = 0;
  v4 = a1 + 80;
  v24 = -v2;
  v23 = MEMORY[0x1E69E7CC0];
  v22 = a1 + 80;
  do
  {
    for (i = (v4 + 56 * v3++); ; i += 7)
    {
      v6 = *(a2 + 8);
      if (*(v6 + 16))
      {
        break;
      }

LABEL_4:
      ++v3;
      if (v24 + v3 == 1)
      {
        return v23;
      }
    }

    v7 = *(i - 4);
    v8 = *(i - 3);
    v9 = *(i - 2);
    v10 = *(i - 1);
    v11 = *i;
    v12 = *(i - 5);
    v26 = *(i - 6);

    sub_1AF687F90(v7, v8, v9, v10, v11);
    v13 = sub_1AF419914(v26, v12);
    if ((v14 & 1) == 0)
    {

      sub_1AF687FE4(v7, v8, v9, v10, v11);
      goto LABEL_4;
    }

    v15 = (*(v6 + 56) + 16 * v13);
    v16 = *v15;
    v17 = v15[1];

    sub_1AF687FE4(v7, v8, v9, v10, v11);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_1AF425958(0, *(v23 + 2) + 1, 1, v23);
    }

    v19 = *(v23 + 2);
    v18 = *(v23 + 3);
    if (v19 >= v18 >> 1)
    {
      v23 = sub_1AF425958(v18 > 1, v19 + 1, 1, v23);
    }

    *(v23 + 2) = v19 + 1;
    v20 = &v23[16 * v19];
    *(v20 + 4) = v16;
    *(v20 + 5) = v17;
    v4 = v22;
  }

  while (v24 + v3);
  return v23;
}

uint64_t sub_1AF7B9C28(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(a1 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    return v5;
  }

  v22 = MEMORY[0x1E69E7CC0];
  sub_1AFC075C8(0, v4, 0);
  v5 = v22;
  for (i = (a1 + 56); ; i += 4)
  {
    v8 = *(i - 2);
    v9 = *(i - 1);
    v10 = *i;
    v19[0] = *(i - 3);
    v19[1] = v8;
    v19[2] = v9;
    v19[3] = v10;

    sub_1AF7BE194(v19, v20);
    if (v3)
    {
      break;
    }

    v3 = 0;

    v11 = v20[0];
    v12 = v20[1];
    v13 = v21;
    v22 = v5;
    v15 = *(v5 + 16);
    v14 = *(v5 + 24);
    if (v15 >= v14 >> 1)
    {
      v18 = v21;
      sub_1AFC075C8(v14 > 1, v15 + 1, 1);
      v13 = v18;
      v5 = v22;
    }

    *(v5 + 16) = v15 + 1;
    v16 = v5 + 32 * v15;
    *(v16 + 32) = v11;
    *(v16 + 40) = v12;
    *(v16 + 48) = v13;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AF7B9D94(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v8 = MEMORY[0x1E69E7CC0];
    sub_1AFC07194(0, v2, 0);
    result = v8;
    v4 = (a1 + 32);
    v5 = *(v8 + 16);
    do
    {
      v6 = *v4;
      v9 = result;
      v7 = *(result + 24);
      if (v5 >= v7 >> 1)
      {
        sub_1AFC07194(v7 > 1, v5 + 1, 1);
        result = v9;
      }

      *(result + 16) = v5 + 1;
      *(result + 8 * v5 + 32) = v6;
      v4 += 7;
      ++v5;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_1AF7B9E60(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v24 = a2;
  sub_1AF7D8944(0);
  v23 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  while (v10)
  {
    v25 = v3;
    v13 = v12;
LABEL_9:
    v14 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v15 = v14 | (v13 << 6);
    v16 = *(a1 + 56);
    v17 = *(a1 + 48) + 8 * v15;
    v18 = *v17;
    v19 = *(v17 + 4);
    v20 = type metadata accessor for GraphScriptingConfig.ScriptInfo(0);
    sub_1AF7D4B24(v16 + *(*(v20 - 8) + 72) * v15, v7 + *(v23 + 48), type metadata accessor for GraphScriptingConfig.ScriptInfo);
    *v7 = v18;
    *(v7 + 4) = v19;
    v21 = v25;
    sub_1AF7C62D0(v7, v24);
    v3 = v21;
    sub_1AF7D48A0(v7, sub_1AF7D8944);
    if (v21)
    {
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (v12 + 1 >= v11)
    {
    }

    v10 = *(a1 + 8 * v12++ + 72);
    if (v10)
    {
      v25 = v3;
      v12 = v13;
      goto LABEL_9;
    }
  }
}

unint64_t sub_1AF7BA018(unint64_t result, void *a2)
{
  v3 = result;
  v38[1] = *MEMORY[0x1E69E9840];
  if (result >> 62)
  {
    result = sub_1AFDFE108();
    v4 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }
  }

  v5 = 0;
  v6 = v3 & 0xC000000000000001;
  v32 = a2;
  v33 = v4;
  v34 = v3;
  v36 = v3 & 0xC000000000000001;
  while (1)
  {
    if (v6)
    {
      v7 = MEMORY[0x1B2719C70](v5, v3);
    }

    else
    {
      v7 = *(v3 + 8 * v5 + 32);
    }

    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
      goto LABEL_4;
    }

    if (*Strong != _TtCO3VFX21GraphV1CodeGeneration12ContextEntry)
    {

LABEL_4:

      goto LABEL_5;
    }

    v9 = *(Strong + 16);
    if (!v9)
    {

      v6 = v36;
      goto LABEL_5;
    }

    v10 = *(v9 + 32);
    v11 = ((1 << v10) + 63) >> 6;
    v12 = 8 * v11;
    if ((v10 & 0x3Fu) <= 0xD)
    {

      goto LABEL_13;
    }

    swift_bridgeObjectRetain_n();

    if (swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v12 = swift_slowAlloc();
    v30 = v37;
    v31 = sub_1AF76EC5C(v12, v11, v9);
    if (v30)
    {
      goto LABEL_40;
    }

    v16 = v31;
    MEMORY[0x1B271DEA0](v12, -1, -1);
LABEL_15:

    v17 = sub_1AF7615AC(v16);

    if (*(v17 + 16))
    {
      sub_1AF7D8BC0(0, &qword_1EB63F4E0, &_s8MetadataVN, MEMORY[0x1E69E6EC8]);
      v18 = sub_1AFDFE5C8();
    }

    else
    {
      v18 = MEMORY[0x1E69E7CC8];
    }

    v38[0] = v18;
    sub_1AF76E344(v17, 1, v38);
    v37 = 0;

    v19 = v38[0];
    if (*(v38[0] + 16))
    {
      v20 = *(v7 + 40);
      v21 = *(v7 + 48);
      _s11MetadataSetCMa();
      v35 = swift_allocObject();
      *(v35 + 16) = v19;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38[0] = *a2;
      v23 = v38[0];
      *a2 = 0x8000000000000000;
      v24 = sub_1AF419914(v20, v21);
      v12 = v25;
      v26 = *(v23 + 16) + ((v25 & 1) == 0);
      if (*(v23 + 24) >= v26)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1AF84C5C4();
        }
      }

      else
      {
        sub_1AF837210(v26, isUniquelyReferenced_nonNull_native);
        v27 = sub_1AF419914(v20, v21);
        if ((v12 & 1) != (v28 & 1))
        {
          goto LABEL_39;
        }

        v24 = v27;
      }

      v29 = v38[0];
      if (v12)
      {
        *(*(v38[0] + 56) + 8 * v24) = v35;
      }

      else
      {
        sub_1AF85B958();
      }

      v6 = v36;
      a2 = v32;
      *v32 = v29;

      v4 = v33;
      v3 = v34;
    }

    else
    {

      v4 = v33;
      v3 = v34;
      v6 = v36;
    }

LABEL_5:
    if (v4 == ++v5)
    {
      return result;
    }
  }

LABEL_13:
  MEMORY[0x1EEE9AC00](v13);
  bzero(&v32 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0), v12);
  v14 = v37;
  v15 = sub_1AF76E8B0((&v32 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0)), v11, v9);
  if (!v14)
  {
    v16 = v15;
    goto LABEL_15;
  }

  swift_willThrow();
  __break(1u);
  swift_unexpectedError();
  __break(1u);
LABEL_39:
  sub_1AFDFF1A8();
  __break(1u);
LABEL_40:
  result = MEMORY[0x1B271DEA0](v12, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_1AF7BA4D0(uint64_t result, char **a2)
{
  v29 = *(result + 16);
  if (v29)
  {
    v2 = 0;
    v28 = result + 32;
    do
    {
      v4 = (v28 + (v2 << 6));
      v5 = v4[3];
      v42 = v4[2];
      v43 = v5;
      v6 = v4[1];
      v40 = *v4;
      v41 = v6;
      v31 = v2;
      v32 = *a2;
      v7 = *(*a2 + 2);
      if (v7)
      {
        v8 = *(&v40 + 1);
        v44 = v40;
        v37 = *(&v41 + 1);
        v38 = v41;
        v35 = *(&v42 + 1);
        v36 = v42;
        v9 = v32 + 6;
        v33 = *(&v43 + 1);
        v34 = v43;
        while (1)
        {
          result = *(v9 - 2);
          v10 = *v9;
          v11 = v9[1];
          v13 = v9[2];
          v12 = v9[3];
          v14 = v9[4];
          v15 = v9[5];
          v16 = result == v44 && *(v9 - 1) == v8;
          if (v16 || (result = sub_1AFDFEE28(), (result & 1) != 0))
          {
            v17 = v10 == v38 && v11 == v37;
            if (v17 || (result = sub_1AFDFEE28(), (result & 1) != 0))
            {
              v18 = v13 == v36 && v12 == v35;
              if (v18 || (result = sub_1AFDFEE28(), (result & 1) != 0))
              {
                if (v14 == v34 && v15 == v33)
                {
                  break;
                }

                result = sub_1AFDFEE28();
                if (result)
                {
                  break;
                }
              }
            }
          }

          v9 += 8;
          if (!--v7)
          {
            goto LABEL_29;
          }
        }

        v3 = v31;
      }

      else
      {
LABEL_29:
        sub_1AF7613E4(&v40, v39);
        sub_1AF7613E4(&v40, v39);
        v20 = v32;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *a2 = v32;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v20 = sub_1AF424EC0(0, v32[2] + 1, 1, v32);
          *a2 = v20;
        }

        v23 = *(v20 + 2);
        v22 = *(v20 + 3);
        if (v23 >= v22 >> 1)
        {
          v20 = sub_1AF424EC0(v22 > 1, v23 + 1, 1, v20);
          *a2 = v20;
        }

        v3 = v31;
        *(v20 + 2) = v23 + 1;
        v24 = &v20[64 * v23];
        v25 = v40;
        v26 = v41;
        v27 = v43;
        *(v24 + 4) = v42;
        *(v24 + 5) = v27;
        *(v24 + 2) = v25;
        *(v24 + 3) = v26;
        result = sub_1AF761440(&v40);
      }

      v2 = v3 + 1;
    }

    while (v2 != v29);
  }

  return result;
}

unint64_t sub_1AF7BA714(unint64_t result, uint64_t a2, char **a3, uint64_t *a4)
{
  v5 = *(result + 16);
  if (v5)
  {
    v8 = a2;
    for (i = (result + 64); ; i += 40)
    {
      v10 = *(i - 4);
      v11 = *(i - 24);
      v12 = *i;
      v14 = v10;
      v15 = v11;
      v16 = *(i - 1);
      v13 = v16;
      v17 = v12;
      sub_1AF443EE0(v10);
      sub_1AF444224(v13);
      sub_1AF7BCA30(&v14, v8, a3, a4);
      sub_1AF443F24(v10);
      if (v4)
      {
        break;
      }

      result = sub_1AF444AF4(v13);
      if (!--v5)
      {
        return result;
      }
    }

    return sub_1AF444AF4(v13);
  }

  return result;
}

uint64_t sub_1AF7BA7F0(uint64_t result, uint64_t a2, uint64_t a3, void (*a4)(__int128 *, uint64_t, uint64_t))
{
  v5 = *(result + 16);
  if (v5)
  {
    for (i = (result + 32); ; i = (i + 56))
    {
      v10 = i[1];
      v21[0] = *i;
      v21[1] = v10;
      v12 = *i;
      v11 = i[1];
      v21[2] = i[2];
      v22 = *(i + 6);
      v17 = v12;
      v18 = v11;
      v19 = i[2];
      v20 = *(i + 6);
      sub_1AF7D4D04(v21, &v13);
      a4(&v17, a2, a3);
      if (v4)
      {
        break;
      }

      v13 = v17;
      v14 = v18;
      v15 = v19;
      v16 = v20;
      result = sub_1AF7D4D3C(&v13);
      if (!--v5)
      {
        return result;
      }
    }

    v13 = v17;
    v14 = v18;
    v15 = v19;
    v16 = v20;
    return sub_1AF7D4D3C(&v13);
  }

  return result;
}

uint64_t sub_1AF7BA8F0(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC8];
  v31 = MEMORY[0x1E69E7CC8];
  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (!v5)
  {
    goto LABEL_7;
  }

  do
  {
LABEL_5:
    while (1)
    {
      v8 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v9 = v8 | (v7 << 6);
      v10 = (*(a1 + 56) + 16 * v9);
      v11 = v10[1];
      if (v11)
      {
        break;
      }

      if (!v5)
      {
        goto LABEL_7;
      }
    }

    v13 = (*(a1 + 48) + 16 * v9);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(v2 + 16);
    v30 = *v10;
    if (*(v2 + 24) <= v16)
    {

      sub_1AF83603C(v16 + 1, 1);
      v2 = v31;
    }

    else
    {
    }

    sub_1AFDFF288();
    sub_1AFDFD038();
    v17 = sub_1AFDFF2F8();
    v18 = v2 + 64;
    v19 = -1 << *(v2 + 32);
    v20 = v17 & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v2 + 64 + 8 * (v20 >> 6))) != 0)
    {
      v22 = __clz(__rbit64((-1 << v20) & ~*(v2 + 64 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
      v23 = v30;
    }

    else
    {
      v24 = (63 - v19) >> 6;
      v23 = v30;
      do
      {
        if (v21 + 1 == v24)
        {
          v21 = 0;
        }

        else
        {
          ++v21;
        }

        v25 = *(v18 + 8 * v21);
      }

      while (v25 == -1);
      v22 = __clz(__rbit64(~v25)) + (v21 << 6);
    }

    *(v18 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v26 = 16 * v22;
    v27 = (*(v2 + 48) + v26);
    *v27 = v14;
    v27[1] = v15;
    v28 = (*(v2 + 56) + v26);
    *v28 = v23;
    v28[1] = v11;
    ++*(v2 + 16);
  }

  while (v5);
LABEL_7:
  while (1)
  {
    v12 = v7 + 1;
    if (v7 + 1 >= v6)
    {
      break;
    }

    v5 = *(a1 + 8 * v7++ + 72);
    if (v5)
    {
      v7 = v12;
      goto LABEL_5;
    }
  }

  return v2;
}

uint64_t sub_1AF7BAB38(uint64_t a1)
{
  v2 = sub_1AF7DACDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF7BAB74(uint64_t a1)
{
  v2 = sub_1AF7DACDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF7BABB0(void *a1)
{
  sub_1AF7DB68C(0, &qword_1EB63EC80, sub_1AF7DACDC, &type metadata for CodeGenerationInitialized.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  sub_1AF441150(a1, a1[3]);
  sub_1AF7DACDC();
  sub_1AFDFF3F8();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1AF7BACF0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a4;
  sub_1AF7DB68C(0, &qword_1EB63EC60, sub_1AF7DA9D0, &type metadata for GraphEntityComponentPropertyReferences.DirectPropertyAssignment.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AF7DA9D0();
  sub_1AFDFF3F8();
  v17 = 0;
  v10 = v14;
  sub_1AFDFE8B8();
  if (!v10)
  {
    v15 = v13;
    v16 = 1;
    sub_1AF7DB7D4(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1AF7DABB0(&qword_1EB639870, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    sub_1AFDFE918();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1AF7BAEF8(uint64_t a1)
{
  v2 = sub_1AF7DA9D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF7BAF34(uint64_t a1)
{
  v2 = sub_1AF7DA9D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF7BAF70@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1AF7CF04C(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_1AF7BAFC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[3] = &type metadata for Entity;
  v13[4] = &off_1F2535EA8;
  v13[0] = a3;
  v8 = sub_1AF441150(v13, &type metadata for Entity);
  v12[3] = &type metadata for Entity;
  v12[4] = &off_1F2535EA8;
  v9 = sub_1AF585714(v12);
  *v9 = sub_1AF6C97E0(*v8);
  sub_1AF5C5358(0, &qword_1ED722510, &protocol descriptor for ReplicationRemappable);
  swift_dynamicCast();
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v13);
  v10 = v13[5];

  sub_1AF8A057C(a1, a2, a5);
  return v10;
}

uint64_t sub_1AF7BB0B4(void *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a3;
  v15 = a4;
  v4 = a2;
  v6 = HIDWORD(a2);
  sub_1AF7DB68C(0, &qword_1EB63EC50, sub_1AF7DAA24, &type metadata for GraphEntityComponentPropertyReferences.ExportedDirectPropertyAssignment.CodingKeys, MEMORY[0x1E69E6F58]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  sub_1AF441150(a1, a1[3]);
  sub_1AF7DAA24();
  sub_1AFDFF3F8();
  v18 = __PAIR64__(v6, v4);
  v19 = v16;
  v20 = 0;
  sub_1AF47F894();
  v12 = v17;
  sub_1AFDFE918();
  if (!v12)
  {
    v18 = v15;
    v20 = 1;
    sub_1AF7DB7D4(0, &qword_1EB633C60, &type metadata for EntityComponentProperty, MEMORY[0x1E69E62F8]);
    sub_1AF7DAB14();
    sub_1AFDFE918();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1AF7BB2B4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x73746567726174;
  }

  else
  {
    v3 = 0x656372756F73;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x73746567726174;
  }

  else
  {
    v5 = 0x656372756F73;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1AFDFEE28();
  }

  return v8 & 1;
}

uint64_t sub_1AF7BB358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
  if (v6 || (sub_1AFDFEE28() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x73746567726174 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1AFDFEE28();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1AF7BB430(uint64_t a1)
{
  v2 = sub_1AF7DAA24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF7BB46C(uint64_t a1)
{
  v2 = sub_1AF7DAA24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF7BB4A8@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1AF7CEDEC(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_1AF7BB4FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1AF7BAFC0(a1, a2, *v3, v3[1], v3[2]);
  *a3 = result;
  a3[1] = v6;
  a3[2] = v7;
  return result;
}

void sub_1AF7BB534(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_unknownObjectRetain();
  v6 = sub_1AF7C7B74(v5, a1, a2);

  swift_unknownObjectRelease();
  *v2 = v6;
  v7 = v2[1];
  swift_unknownObjectRetain();
  v49 = a2;
  v8 = sub_1AF7C7D74(v7, a1, a2);

  v9 = a1;
  swift_unknownObjectRelease();
  v2[1] = v8;
  v10 = v2[6];
  v11 = *(v10 + 16);
  if (v11)
  {
    v41 = v2;
    v51 = MEMORY[0x1E69E7CC0];
    sub_1AFC07254(0, v11, 0);
    v12 = v51;
    v13 = v9;
    ObjectType = swift_getObjectType();
    v14 = 0;
    v42 = v11;
    v43 = v10 + 32;
    do
    {
      v15 = (v43 + 24 * v14);
      v16 = *v15;
      v17 = v15[1];
      v18 = *(v15 + 2);
      v47 = *(v15 + 1);

      v19 = sub_1AF62C7C0(v16 | (v17 << 32), 0, ObjectType, v49);
      if (v20)
      {
        v21 = v16;
      }

      else
      {
        v21 = v19;
      }

      v22 = v18;
      v46 = v21;
      if ((v20 & 1) == 0)
      {
        LODWORD(v17) = HIDWORD(v19);
      }

      v23 = *(v18 + 16);
      if (v23)
      {
        v44 = v17;
        v45 = v14;
        v50 = MEMORY[0x1E69E7CC0];
        sub_1AFC07274(0, v23, 0);
        v24 = v50;
        v25 = (v22 + 40);
        do
        {
          v26 = *(v25 - 2);
          v27 = *(v25 - 1);
          v28 = *v25;

          v29 = sub_1AF62C7C0(v26 | (v27 << 32), 0, ObjectType, v49);
          if (v30)
          {
            v31 = v26;
          }

          else
          {
            v31 = v29;
          }

          if (v30)
          {
            v32 = v27;
          }

          else
          {
            v32 = HIDWORD(v29);
          }

          v34 = *(v50 + 16);
          v33 = *(v50 + 24);
          if (v34 >= v33 >> 1)
          {
            sub_1AFC07274(v33 > 1, v34 + 1, 1);
          }

          *(v50 + 16) = v34 + 1;
          v35 = v50 + 16 * v34;
          *(v35 + 32) = v31;
          *(v35 + 36) = v32;
          *(v35 + 40) = v28;
          v25 += 2;
          --v23;
        }

        while (v23);

        v11 = v42;
        v14 = v45;
        LODWORD(v17) = v44;
      }

      else
      {

        v24 = MEMORY[0x1E69E7CC0];
      }

      v37 = *(v51 + 16);
      v36 = *(v51 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_1AFC07254(v36 > 1, v37 + 1, 1);
      }

      ++v14;
      *(v51 + 16) = v37 + 1;
      v38 = v51 + 24 * v37;
      *(v38 + 32) = v46;
      *(v38 + 36) = v17;
      *(v38 + 40) = v47;
      *(v38 + 48) = v24;
    }

    while (v14 != v11);
    v9 = v13;

    v2 = v41;
  }

  else
  {

    v12 = MEMORY[0x1E69E7CC0];
  }

  v2[6] = v12;
  v39 = v2[4];
  swift_unknownObjectRetain();
  v40 = sub_1AF7C7D74(v39, v9, v49);

  swift_unknownObjectRelease();
  v2[4] = v40;
}

unint64_t sub_1AF7BB860(char a1)
{
  result = 1953522533;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000022;
      break;
    case 2:
      result = 0xD00000000000001CLL;
      break;
    case 3:
    case 5:
      result = 0xD000000000000021;
      break;
    case 4:
      result = 0xD000000000000019;
      break;
    case 6:
      return result;
    case 7:
      result = 0x7469706365;
      break;
    case 8:
      result = 1953063792;
      break;
    case 9:
      result = 0x7469636370;
      break;
    case 10:
      result = 6385764;
      break;
    case 11:
      result = 1634755685;
      break;
    case 12:
      result = 0x7469647065;
      break;
    default:
      result = 0xD00000000000001CLL;
      break;
  }

  return result;
}

uint64_t sub_1AF7BB994(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1AF7BB860(*a1);
  v5 = v4;
  if (v3 == sub_1AF7BB860(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1AFDFEE28();
  }

  return v8 & 1;
}

uint64_t sub_1AF7BBA1C()
{
  v1 = *v0;
  sub_1AFDFF288();
  sub_1AF7BB860(v1);
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF7BBA80(uint64_t a1)
{
  sub_1AF7BB860(*v1);
  sub_1AFDFD038();
}

uint64_t sub_1AF7BBAD4(uint64_t a1)
{
  v2 = *v1;
  sub_1AFDFF288();
  sub_1AF7BB860(v2);
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

unint64_t sub_1AF7BBB34@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF7C840C(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1AF7BBB64@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1AF7BB860(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1AF7BBBAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF7C840C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AF7BBBE0(uint64_t a1)
{
  v2 = sub_1AF7D4DC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF7BBC1C(uint64_t a1)
{
  v2 = sub_1AF7D4DC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF7BBC58(void *a1)
{
  v3 = v1;
  sub_1AF7DB68C(0, &qword_1EB63EBB0, sub_1AF7D4DC4, &type metadata for GraphEntityComponentPropertyReferences.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AF7D4DC4();
  sub_1AFDFF3F8();
  if (!*(*v3 + 16) || (v14 = *v3, v13 = 6, sub_1AF7D5530(0, &qword_1EB6342C0, sub_1AF47F798, sub_1AF47F894, &type metadata for EntityComponentProperty), sub_1AF7D55DC(), sub_1AFDFE918(), !v2))
  {
    if (!*(v3[1] + 16) || (v14 = v3[1], v13 = 7, sub_1AF7D5530(0, &qword_1EB6342C0, sub_1AF47F798, sub_1AF47F894, &type metadata for EntityComponentProperty), sub_1AF7D55DC(), sub_1AFDFE918(), !v2))
    {
      if (!*(v3[2] + 16) || (v14 = v3[2], v13 = 8, sub_1AF7D5530(0, &qword_1EB6342E0, sub_1AF648860, sub_1AF6488B4, &type metadata for ComponentProperty), sub_1AF7D566C(), sub_1AFDFE918(), !v2))
      {
        if (!*(v3[3] + 16) || (v14 = v3[3], v13 = 9, sub_1AF7D5530(0, &qword_1EB6342E0, sub_1AF648860, sub_1AF6488B4, &type metadata for ComponentProperty), sub_1AF7D566C(), sub_1AFDFE918(), !v2))
        {
          v10 = v3[5];
          if (!v10 || !*(v10 + 16) || (v14 = v3[5], v13 = 10, sub_1AF7D5120(0, &qword_1EB633C30, &qword_1EB633C40, &type metadata for GraphEntityComponentPropertyReferences.DirectPropertyAssignment, MEMORY[0x1E69E62F8]), sub_1AF7D5888(&qword_1EB63EBE0, sub_1AF7D5920, MEMORY[0x1E69E7C70]), sub_1AFDFE918(), !v2))
          {
            if (!*(v3[6] + 16) || (v14 = v3[6], v13 = 11, sub_1AF7DB7D4(0, &qword_1EB633C50, &type metadata for GraphEntityComponentPropertyReferences.ExportedDirectPropertyAssignment, MEMORY[0x1E69E62F8]), sub_1AF7D56FC(), sub_1AFDFE918(), !v2))
            {
              if (*(v3[4] + 16))
              {
                v14 = v3[4];
                v13 = 12;
                sub_1AF7D8BC0(0, &qword_1EB633C98, &type metadata for EntityComponentProperty, MEMORY[0x1E69E5E28]);
                sub_1AF7D57EC(&qword_1EB63EBD8, sub_1AF47F894, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
                sub_1AFDFE918();
              }
            }
          }
        }
      }
    }
  }

  return (*(v7 + 8))(v9, v6);
}

double sub_1AF7BC194@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1AF7CF2BC(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    a1[2] = v7[0];
    result = *(v7 + 9);
    *(a1 + 41) = *(v7 + 9);
  }

  return result;
}

uint64_t sub_1AF7BC1FC()
{

  *v0 = MEMORY[0x1E69E7CC8];

  v0[5] = 0;
  return result;
}

void *sub_1AF7BC230@<X0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  v3 = sub_1AF42CD8C(MEMORY[0x1E69E7CC0]);
  v4 = sub_1AF42CD8C(v2);
  v5 = sub_1AF42D848(v2);
  v6 = sub_1AF42D848(v2);
  result = sub_1AF42CD8C(v2);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = result;
  *(a1 + 40) = 0;
  *(a1 + 48) = v2;
  *(a1 + 56) = 1;
  return result;
}

uint64_t sub_1AF7BC2B8(uint64_t a1)
{
  sub_1AFDFD038();
  sub_1AFDFD038();
  if (*(v1 + 40))
  {
    sub_1AFDFF2A8();
    sub_1AFDFD038();
    if (*(v1 + 56))
    {
LABEL_3:
      sub_1AFDFF2A8();
      sub_1AFDFD038();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1AFDFF2A8();
    if (*(v1 + 56))
    {
      goto LABEL_3;
    }
  }

  sub_1AFDFF2A8();
LABEL_6:
  if (*(v1 + 68) == 1)
  {
    return sub_1AFDFF2A8();
  }

  sub_1AFDFF2A8();
  return sub_1AFDFF2C8();
}

uint64_t sub_1AF7BC388()
{
  sub_1AFDFF288();
  sub_1AF7BC2B8(v1);
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF7BC3CC(uint64_t a1)
{
  sub_1AFDFF288();
  sub_1AF7BC2B8(v2);
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF7BC408(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 64);
  if (*(a1 + 68))
  {
    v2 = 0;
  }

  return (*(a2 + 64) > v2) & ~*(a2 + 68);
}

uint64_t sub_1AF7BC430(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 64);
  if (*(a2 + 68))
  {
    v2 = 0;
  }

  return *(a1 + 68) & 1 | (*(a1 + 64) <= v2);
}

uint64_t sub_1AF7BC45C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 64);
  if (*(a1 + 68))
  {
    v2 = 0;
  }

  return *(a2 + 68) & 1 | (*(a2 + 64) <= v2);
}

uint64_t sub_1AF7BC488(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 64);
  if (*(a2 + 68))
  {
    v2 = 0;
  }

  return (*(a1 + 64) > v2) & ~*(a1 + 68);
}

uint64_t sub_1AF7BC4B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v8[0] = v2;
  *(v8 + 13) = *(a1 + 61);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v10[0] = v4;
  *(v10 + 13) = *(a2 + 61);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_1AF7C7698(v7, v9) & 1;
}

void *sub_1AF7BC50C@<X0>(uint64_t *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  v3 = sub_1AF42D5B4(MEMORY[0x1E69E7CC0]);
  result = sub_1AF42D5E0(v2);
  *a1 = v3;
  a1[1] = result;
  return result;
}

uint64_t sub_1AF7BC554()
{
  sub_1AFDFF288();
  sub_1AFDFD038();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF7BC5C0(uint64_t a1)
{
  sub_1AFDFF288();
  sub_1AFDFD038();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF7BC610@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_1AFDFE638();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_1AF7BC698@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1AFDFE638();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1AF7BC6F0(uint64_t a1)
{
  v2 = sub_1AF7DAC88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF7BC72C(uint64_t a1)
{
  v2 = sub_1AF7DAC88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF7BC768(void *a1, uint64_t a2)
{
  sub_1AF7DB68C(0, &qword_1EB63EC78, sub_1AF7DAC88, &type metadata for CodeGenerationComponent.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v10 - v7;
  sub_1AF441150(a1, a1[3]);
  sub_1AF7DAC88();
  sub_1AFDFF3F8();
  if (!a2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v10[1] = a2;
  _s7ContextCMa(0);
  sub_1AF7D5048(&qword_1EB63E8C8, _s7ContextCMa, byte_1AFE794BC);

  sub_1AFDFE918();
  (*(v6 + 8))(v8, v5);
}

void *sub_1AF7BC94C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1AF7CEB88(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1AF7BC994(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  result = (*(a2 + 32))(ObjectType, a2);
  if (result)
  {
    v7 = *v2;
    if (*v3)
    {
      v8 = (*(*v7 + 2512))();
    }

    else
    {
      v8 = 0;
    }

    *v3 = v8;
  }

  return result;
}

uint64_t sub_1AF7BCA30(unint64_t *a1, unsigned __int8 a2, char **a3, uint64_t *a4)
{
  v6 = *a1;
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v18 = ((v6 >> 59) & 0x1E | (v6 >> 2) & 1) == 16;
      v19 = v6 == 0x8000000000000000;
      v10 = v18 && v19;
      if (v18 && v19)
      {
        v20 = 0xD000000000000027;
      }

      else
      {
        v20 = 0xD00000000000001ELL;
      }

      if (v18 && v19)
      {
        v21 = "constant uint32_t& currentSeed";
      }

      else
      {
        v21 = "const void* scriptContext";
      }
    }

    else
    {
      if (a2 != 3)
      {
        result = sub_1AFDFE518();
        __break(1u);
        return result;
      }

      v22 = ((v6 >> 59) & 0x1E | (v6 >> 2) & 1) == 16;
      v23 = v6 == 0x8000000000000000;
      v21 = "_ currentSeed: UInt32";
      v10 = v22 && v23;
      if (v22 && v23)
      {
        v20 = 0xD000000000000021;
      }

      else
      {
        v20 = 0xD000000000000015;
      }

      if (!v22 || !v23)
      {
        v21 = "onstants& scriptContext";
      }
    }

    v24 = v21 | 0x8000000000000000;
    v25 = *a3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v25;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v25 = sub_1AF420554(0, *(v25 + 2) + 1, 1, v25);
      *a3 = v25;
    }

    v28 = *(v25 + 2);
    v27 = *(v25 + 3);
    v29 = v28 + 1;
    if (v28 >= v27 >> 1)
    {
      v38 = sub_1AF420554(v27 > 1, v28 + 1, 1, v25);
      v29 = v28 + 1;
      v25 = v38;
      *a3 = v38;
    }

    *(v25 + 2) = v29;
    v30 = &v25[16 * v28];
    *(v30 + 4) = v20;
    *(v30 + 5) = v24;
  }

  else
  {
    v7 = ((v6 >> 59) & 0x1E | (v6 >> 2) & 1) == 16;
    v8 = v6 == 0x8000000000000000;
    v9 = "uint32_t currentSeed";
    v10 = v7 && v8;
    if (v7 && v8)
    {
      v11 = 0xD000000000000019;
    }

    else
    {
      v11 = 0xD000000000000014;
    }

    if (!v7 || !v8)
    {
      v9 = "nd unsupported base object: ";
    }

    v12 = v9 | 0x8000000000000000;
    v13 = *a3;
    v14 = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v13;
    if ((v14 & 1) == 0)
    {
      v13 = sub_1AF420554(0, *(v13 + 2) + 1, 1, v13);
      *a3 = v13;
    }

    v16 = *(v13 + 2);
    v15 = *(v13 + 3);
    if (v16 >= v15 >> 1)
    {
      v13 = sub_1AF420554(v15 > 1, v16 + 1, 1, v13);
      *a3 = v13;
    }

    *(v13 + 2) = v16 + 1;
    v17 = &v13[16 * v16];
    *(v17 + 4) = v11;
    *(v17 + 5) = v12;
  }

  if (v10)
  {
    v31 = 0x6F43747069726373;
  }

  else
  {
    v31 = 0x53746E6572727563;
  }

  if (v10)
  {
    v32 = 0xED0000747865746ELL;
  }

  else
  {
    v32 = 0xEB00000000646565;
  }

  v33 = *a4;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v33;
  if ((result & 1) == 0)
  {
    result = sub_1AF420554(0, *(v33 + 16) + 1, 1, v33);
    v33 = result;
    *a4 = result;
  }

  v36 = *(v33 + 16);
  v35 = *(v33 + 24);
  if (v36 >= v35 >> 1)
  {
    result = sub_1AF420554(v35 > 1, v36 + 1, 1, v33);
    v33 = result;
    *a4 = result;
  }

  *(v33 + 16) = v36 + 1;
  v37 = v33 + 16 * v36;
  *(v37 + 32) = v31;
  *(v37 + 40) = v32;
  return result;
}

uint64_t sub_1AF7BCDA8()
{
  sub_1AF7DB7D4(0, &unk_1EB633A78, &type metadata for ComponentProperty, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE77490;
  v1 = sub_1AFDFDE28();
  v5 = sub_1AF578F80(v1, v2, v3, v4);

  *(v0 + 32) = v5;
  v6 = sub_1AFDFDE28();
  v10 = sub_1AF578FA4(v6, v7, v8, v9);

  *(v0 + 40) = v10;
  v11 = sub_1AFDFDE28();
  v15 = sub_1AF578DAC(v11, v12, v13, v14);

  *(v0 + 48) = v15;
  v16 = sub_1AFDFDE28();
  v20 = sub_1AF578F14(v16, v17, v18, v19);

  *(v0 + 56) = v20;
  v21 = sub_1AFDFDE28();
  v25 = sub_1AF578F38(v21, v22, v23, v24);

  *(v0 + 64) = v25;
  v26 = sub_1AFDFDE28();
  v30 = sub_1AF578F5C(v26, v27, v28, v29);

  *(v0 + 72) = v30;
  v31 = sub_1AFDFDE28();
  v35 = sub_1AF578EF0(v31, v32, v33, v34);

  *(v0 + 80) = v35;
  v36 = sub_1AFDFDE28();
  v40 = sub_1AF578CD4(v36, v37, v38, v39);

  *(v0 + 88) = v40;
  v41 = sub_1AFDFDE28();
  v45 = sub_1AF578D40(v41, v42, v43, v44);

  *(v0 + 96) = v45;
  v46 = sub_1AFDFDE28();
  v50 = sub_1AF578EA8(v46, v47, v48, v49);

  *(v0 + 104) = v50;
  v51 = sub_1AFDFDE28();
  v55 = sub_1AF578CB0(v51, v52, v53, v54);

  *(v0 + 112) = v55;
  v56 = sub_1AFDFDE28();
  v60 = sub_1AF578E84(v56, v57, v58, v59);

  *(v0 + 120) = v60;
  v61 = sub_1AFDFDE28();
  v65 = sub_1AF578D64(v61, v62, v63, v64);

  *(v0 + 128) = v65;
  v66 = sub_1AFDFDE28();
  v70 = sub_1AF578CF8(v66, v67, v68, v69);

  *(v0 + 136) = v70;
  v71 = sub_1AFDFDE28();
  v75 = sub_1AF578DF4(v71, v72, v73, v74);

  *(v0 + 144) = v75;
  v76 = sub_1AFDFDE28();
  v80 = sub_1AF578ECC(v76, v77, v78, v79);

  *(v0 + 152) = v80;
  v81 = sub_1AFDFDE28();
  v85 = sub_1AF578D88(v81, v82, v83, v84);

  *(v0 + 160) = v85;
  v86 = sub_1AFDFDE28();
  v90 = sub_1AF578FC8(v86, v87, v88, v89);

  *(v0 + 168) = v90;
  v91 = sub_1AFDFDE28();
  v95 = sub_1AF578FEC(v91, v92, v93, v94);

  *(v0 + 176) = v95;
  v96 = sub_1AFDFDE28();
  v100 = sub_1AF579010(v96, v97, v98, v99);

  *(v0 + 184) = v100;
  v101 = sub_1AFDFDE28();
  v105 = sub_1AF579034(v101, v102, v103, v104);

  *(v0 + 192) = v105;
  v106 = sub_1AFDFDE28();
  v110 = sub_1AF578E3C(v106, v107, v108, v109);

  *(v0 + 200) = v110;
  v111 = sub_1AFDFDE28();
  v115 = sub_1AF578E18(v111, v112, v113, v114);

  *(v0 + 208) = v115;
  v116 = sub_1AFDFDE28();
  v120 = sub_1AF578DD0(v116, v117, v118, v119);

  *(v0 + 216) = v120;
  v121 = sub_1AFDFDE28();
  v125 = sub_1AF578D1C(v121, v122, v123, v124);

  *(v0 + 224) = v125;
  qword_1EB6C2AD0 = v0;
  return result;
}

uint64_t sub_1AF7BD2C8()
{
  sub_1AF7DB7D4(0, &unk_1EB633A78, &type metadata for ComponentProperty, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE431C0;
  v1 = sub_1AFDFDE28();
  v5 = sub_1AF578E60(v1, v2, v3, v4);

  *(v0 + 32) = v5;
  qword_1EB6C2900 = v0;
  return result;
}

double sub_1AF7BD36C()
{
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v3 = qword_1ED73B840;
  v4 = 0;
  v5 = 2;
  v6 = 0;
  v7 = 2;
  v8 = 0;

  sub_1AF704D30(1, v1);

  result = *v1;
  xmmword_1EB6C31E0 = v1[0];
  *&qword_1EB6C31F0 = v1[1];
  qword_1EB6C3200 = v2;
  return result;
}

uint64_t sub_1AF7BD41C()
{
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v7 = qword_1ED73B840;
  v8 = 0;
  v9 = 2;
  v10 = 0;
  v11 = 2;
  v12 = 0;

  sub_1AF704D30(1, &v1);

  qword_1ED73B628 = v1;
  dword_1ED73B630 = v2;
  byte_1ED73B634 = v3;
  qword_1ED73B638 = v4 | 1;
  byte_1ED73B640 = v5;
  qword_1ED73B648 = v6;
  return result;
}

uint64_t sub_1AF7BD4F0()
{
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v7 = qword_1ED73B840;
  v8 = 0;
  v9 = 2;
  v10 = 0;
  v11 = 2;
  v12 = 0;

  sub_1AF704D44(1, &v1);

  *&xmmword_1ED73B428 = v1;
  DWORD2(xmmword_1ED73B428) = v2;
  BYTE12(xmmword_1ED73B428) = v3;
  qword_1ED73B438 = v4 | 1;
  byte_1ED73B440 = v5;
  qword_1ED73B448 = v6;
  return result;
}

uint64_t sub_1AF7BD5C4()
{
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v7 = qword_1ED73B840;
  v8 = 0;
  v9 = 2;
  v10 = 0;
  v11 = 2;
  v12 = 0;

  sub_1AF702F78(3, &v1);

  *&xmmword_1ED73B650 = v1;
  DWORD2(xmmword_1ED73B650) = v2;
  BYTE12(xmmword_1ED73B650) = v3;
  qword_1ED73B660 = v4 | 1;
  byte_1ED73B668 = v5;
  qword_1ED73B670 = v6;
  return result;
}

double sub_1AF7BD698()
{
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v3 = qword_1ED73B840;
  v4 = 0;
  v5 = 2;
  v6 = 0;
  v7 = 2;
  v8 = 0;

  sub_1AF70337C(3, v1);

  result = *v1;
  xmmword_1ED73B678 = v1[0];
  unk_1ED73B688 = v1[1];
  qword_1ED73B698 = v2;
  return result;
}

void sub_1AF7BD748(uint64_t a1)
{
  if (qword_1EB637178 != -1)
  {
    swift_once();
  }

  v2 = xmmword_1EB6C31E0;
  v3 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_queryManager);
  swift_getObjectType();
  v4 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v3 + 40));
  sub_1AF6B1714(a1, v2);

  sub_1AF6B1B20(a1, v4, v2);
  os_unfair_lock_unlock(*(v3 + 40));
  if (qword_1ED7290B0 != -1)
  {
    swift_once();
  }

  v5 = qword_1ED73B628;
  swift_getObjectType();
  v6 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v3 + 40));
  sub_1AF6B1714(a1, v5);

  sub_1AF6B1B20(a1, v6, v5);
  os_unfair_lock_unlock(*(v3 + 40));
  if (qword_1ED725248 != -1)
  {
    swift_once();
  }

  v7 = xmmword_1ED73B428;
  swift_getObjectType();
  v8 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v3 + 40));
  sub_1AF6B1714(a1, v7);

  sub_1AF6B1B20(a1, v8, v7);
  os_unfair_lock_unlock(*(v3 + 40));
  if (qword_1ED7290C0 != -1)
  {
    swift_once();
  }

  v9 = xmmword_1ED73B650;
  swift_getObjectType();
  v10 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v3 + 40));
  sub_1AF6B1714(a1, v9);

  sub_1AF6B1B20(a1, v10, v9);
  os_unfair_lock_unlock(*(v3 + 40));
  if (qword_1ED7290C8 != -1)
  {
    swift_once();
  }

  v11 = xmmword_1ED73B678;
  swift_getObjectType();
  v12 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v3 + 40));
  sub_1AF6B1714(a1, v11);

  sub_1AF6B1B20(a1, v12, v11);
  v13 = *(v3 + 40);

  os_unfair_lock_unlock(v13);
}

uint64_t sub_1AF7BDAD4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (*(*(*(a3 + 88) + 8 * sub_1AF65CA4C(a2) + 32) + 200) != 1)
  {
    return 1;
  }

  v6 = sub_1AF65AE88(a2);
  v7 = *(a1 + 16);
  if (!v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = (a3 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
  for (i = (a1 + 40); ; i += 2)
  {
    v11 = *(i - 1);
    v12 = *(i - 2);
    v13 = v12 == -1 && v11 == 0;
    v14 = v13;
    if (v13)
    {
      goto LABEL_14;
    }

    v15 = -2;
    if ((v12 & 0x80000000) != 0 || v9[1] <= v12)
    {
      goto LABEL_15;
    }

    v22 = *v9 + 12 * v12;
    if (v11 == -1 || *(v22 + 8) == v11)
    {
      v15 = *(v22 + 6);
    }

    else
    {
LABEL_14:
      v15 = -2;
    }

LABEL_15:
    if ((*(*(*(a3 + 88) + 8 * v15 + 32) + 200) & 1) == 0)
    {
      return 1;
    }

    v16 = *i;
    if (v8)
    {
      if (v14)
      {
        return 1;
      }

      result = 1;
      if ((v12 & 0x80000000) != 0)
      {
        return result;
      }

      if (v9[1] <= v12)
      {
        return result;
      }

      v18 = (*v9 + 12 * v12);
      if (v11 != -1 && v18[2] != v11)
      {
        return result;
      }

      if (*(*(*(a3 + 144) + 8 * *v18 + 32) + 120))
      {
        return result;
      }
    }

    v19 = sub_1AFDFDFD8();
    result = swift_conformsToProtocol2();
    if (!result)
    {
      break;
    }

    if (v19 == &type metadata for SetActive)
    {
      goto LABEL_37;
    }

    v20 = sub_1AFDFDFD8();
    result = swift_conformsToProtocol2();
    if (!result)
    {
      goto LABEL_41;
    }

    if (v20 == &type metadata for NodeVisibilityController)
    {
      if (*(v16 + 16) == 0x656C6269736976 && *(v16 + 24) == 0xE700000000000000)
      {
LABEL_37:

        return 1;
      }

      v21 = sub_1AFDFEE28();

      if (v21)
      {
        return 1;
      }
    }

    else
    {
    }

    if (!--v7)
    {
      return 0;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_1AF7BDD6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  v6 = a3;
  v7 = 0;
  v8 = 0;
  v9 = 1;
  v10 = 1 << *(a4 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(a4 + 56);
  v13 = (v10 + 63) >> 6;
LABEL_11:
  while (v12)
  {
    v15 = v12;
LABEL_16:
    v12 = (v15 - 1) & v15;
    v17 = *(v4 + 16);
    v18 = *(v17 + 16);
    if (v18)
    {
      v65 = v9;
      v67 = v8;
      v19 = (*(v5 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(v15)))));
      v20 = *v19;
      v21 = v19[1];
      while (1)
      {
        v22 = *(v17 + 32 * v18 + 16);
        if (*(v22 + 16))
        {
          sub_1AFDFF288();
          sub_1AFDFF2C8();
          sub_1AFDFF2C8();
          v23 = sub_1AFDFF2F8();
          v24 = -1 << *(v22 + 32);
          v25 = v23 & ~v24;
          if ((*(v22 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25))
          {
            break;
          }
        }

LABEL_18:
        if (!--v18)
        {
          v6 = a3;
          v5 = a4;
          v4 = v62;
          v9 = v65;
          v8 = v67;
          goto LABEL_11;
        }
      }

      v26 = ~v24;
      while (1)
      {
        v27 = (*(v22 + 48) + 8 * v25);
        v29 = *v27;
        v28 = v27[1];
        if (v29 == v20 && v28 == v21)
        {
          break;
        }

        v25 = (v25 + 1) & v26;
        if (((*(v22 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      v14 = v67;
      v9 = 0;
      if (v65)
      {
        v14 = v18;
      }

      if (v18 <= v14)
      {
        v8 = v14;
      }

      else
      {
        v8 = v18;
      }

      v6 = a3;
      v5 = a4;
      v4 = v62;
    }
  }

  while (1)
  {
    v16 = v7 + 1;
    if (v7 + 1 >= v13)
    {
      break;
    }

    v15 = *(v5 + 8 * v7++ + 64);
    if (v15)
    {
      v7 = v16;
      goto LABEL_16;
    }
  }

  v31 = 0;
  v32 = 1 << *(v6 + 32);
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  else
  {
    v33 = -1;
  }

  v34 = v33 & *(v6 + 56);
  v35 = (v32 + 63) >> 6;
LABEL_39:
  while (v34)
  {
    v37 = v34;
LABEL_44:
    v34 = (v37 - 1) & v37;
    v39 = *(v4 + 16);
    v40 = *(v39 + 16);
    if (v40)
    {
      v66 = v9;
      v68 = v8;
      v41 = 0;
      v42 = (*(v6 + 48) + ((v31 << 9) | (8 * __clz(__rbit64(v37)))));
      v43 = *v42;
      v44 = v42[1];
      v45 = v39 + 32;
      while (1)
      {
        v46 = *(v45 + 32 * v41 + 24);
        if (*(v46 + 16))
        {
          sub_1AFDFF288();
          sub_1AFDFF2C8();
          sub_1AFDFF2C8();
          v47 = sub_1AFDFF2F8();
          v48 = -1 << *(v46 + 32);
          v49 = v47 & ~v48;
          if ((*(v46 + 56 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49))
          {
            break;
          }
        }

LABEL_46:
        if (++v41 == v40)
        {
          v6 = a3;
          v5 = a4;
          v4 = v62;
          v9 = v66;
          v8 = v68;
          goto LABEL_39;
        }
      }

      v50 = ~v48;
      while (1)
      {
        v51 = (*(v46 + 48) + 8 * v49);
        v53 = *v51;
        v52 = v51[1];
        if (v53 == v43 && v52 == v44)
        {
          break;
        }

        v49 = (v49 + 1) & v50;
        if (((*(v46 + 56 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49) & 1) == 0)
        {
          goto LABEL_46;
        }
      }

      v36 = v68;
      v9 = 0;
      if (v66)
      {
        v36 = v41;
      }

      if (v41 >= v36)
      {
        v8 = v36;
      }

      else
      {
        v8 = v41;
      }

      v6 = a3;
      v5 = a4;
      v4 = v62;
    }
  }

  while (1)
  {
    v38 = v31 + 1;
    if (v31 + 1 >= v35)
    {
      break;
    }

    v37 = *(v6 + 8 * v31++ + 64);
    if (v37)
    {
      v31 = v38;
      goto LABEL_44;
    }
  }

  if (v9)
  {
    v55 = *(v4 + 16);

    result = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + 16) = v55;
    if ((result & 1) == 0)
    {
      result = sub_1AF423AFC(0, *(v55 + 16) + 1, 1, v55);
      v55 = result;
      *(v4 + 16) = result;
    }

    v58 = *(v55 + 16);
    v57 = *(v55 + 24);
    if (v58 >= v57 >> 1)
    {
      result = sub_1AF423AFC(v57 > 1, v58 + 1, 1, v55);
      v55 = result;
    }

    *(v55 + 16) = v58 + 1;
    v59 = (v55 + 32 * v58);
    v59[4] = a1;
    v59[5] = a2;
    v59[6] = v6;
    v59[7] = v5;
    *(v4 + 16) = v55;
  }

  else
  {

    return sub_1AF64B884(v8, v8, a1, a2, v6, v5);
  }

  return result;
}

uint64_t sub_1AF7BE194@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X8>)
{
  v3 = *a1;

  v5 = sub_1AF7C8458(v4, v3);
  v35 = v7;
  v36 = v6;
  v34 = v8;

  v39 = *(v5 + 16);
  v33 = v5;
  if (v39)
  {
    v9 = 0;
    v38 = v5 + 32;
    v10 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v11 = *(v38 + 40 * v9 + 24);
      v12 = *(v11 + 16);
      v40 = v9;

      if (!v12)
      {
        goto LABEL_3;
      }

      v13 = 0;
      while (2)
      {
        while (1)
        {
          v14 = v11 + 32 + 56 * v13;
          v15 = *v14;
          v16 = *(v14 + 16);
          v17 = *(v14 + 32);
          v45 = *(v14 + 48);
          v43 = v16;
          v44 = v17;
          v42 = v15;
          ++v13;
          v18 = *(v10 + 2);
          if (!v18)
          {
            break;
          }

          v20 = v42;
          v19 = DWORD1(v42);
          sub_1AF7D4D04(&v42, v41);
          v21 = v10 + 40;
          while (1)
          {
            if (*(v21 - 2) != v20 || *(v21 - 1) != v19)
            {
              goto LABEL_9;
            }

            if (*v21 != *(&v42 + 1) || *(v21 + 2) != *(&v43 + 1))
            {
              goto LABEL_9;
            }

            v24 = *(v21 + 5);
            if (*(v21 + 24) != v44 && (sub_1AFDFEE28() & 1) == 0)
            {
              goto LABEL_9;
            }

            if (v24)
            {
              break;
            }

            if (!v45)
            {
              goto LABEL_25;
            }

LABEL_9:
            v21 += 56;
            if (!--v18)
            {
              goto LABEL_28;
            }
          }

          v41[0] = v24;
          if (!v45)
          {
            goto LABEL_9;
          }

          v46 = v45;
          sub_1AFDFE008();

          v25 = sub_1AFDFCE58();

          if ((v25 & 1) == 0)
          {
            goto LABEL_9;
          }

LABEL_25:
          sub_1AF7D4D3C(&v42);
          if (v13 == v12)
          {
            goto LABEL_3;
          }
        }

        sub_1AF7D4D04(&v42, v41);
LABEL_28:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1AF425A64(0, *(v10 + 2) + 1, 1, v10);
        }

        v27 = *(v10 + 2);
        v26 = *(v10 + 3);
        if (v27 >= v26 >> 1)
        {
          v10 = sub_1AF425A64(v26 > 1, v27 + 1, 1, v10);
        }

        *(v10 + 2) = v27 + 1;
        v28 = &v10[56 * v27];
        v29 = v42;
        v30 = v43;
        v31 = v44;
        *(v28 + 10) = v45;
        *(v28 + 3) = v30;
        *(v28 + 4) = v31;
        *(v28 + 2) = v29;
        if (v13 != v12)
        {
          continue;
        }

        break;
      }

LABEL_3:

      v9 = v40 + 1;
      if (v40 + 1 == v39)
      {
        goto LABEL_35;
      }
    }
  }

  v10 = MEMORY[0x1E69E7CC0];
LABEL_35:
  result = sub_1AF490748(v10);
  *a3 = v33;
  a3[1] = v36;
  a3[2] = v35;
  a3[3] = v34;
  return result;
}

void sub_1AF7BE47C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = a3;
  v5 = v4;
  sub_1AF7D4B24(a1, a4, type metadata accessor for GraphScriptingConfig.ScriptInfo);
  v8 = type metadata accessor for GraphScriptingConfig.ScriptInfo(0);
  v9 = *(v8 + 44);
  v10 = *(a4 + v9);
  if (v10)
  {
    v11 = *(a2 + 16);
    swift_unownedRetainStrong();
    v12 = *(a2 + 24);

    v13 = *(v10 + 32);
    v14 = swift_conformsToProtocol2();
    if (v14)
    {
      v15 = v13 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (!v15)
    {
      v16 = v14;
      v30 = v12;
      v17 = *(v11 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

      if (v17)
      {
        v29 = *(v17 + 80);
        swift_unknownObjectWeakLoadStrong();
        v17 = *(v17 + 56);
      }

      else
      {
        v29 = 0;
      }

      swift_unknownObjectUnownedInit();
      v31[0] = v11;
      v31[2] = v17;
      swift_unknownObjectUnownedAssign();
      swift_unownedRetain();
      swift_unknownObjectRelease();
      v32 = v29;
      sub_1AF6C150C(v13, v16, v30);
      sub_1AF579490(v31);
      if (v29)
      {
        v18 = [objc_opt_self() immediateMode];
        sub_1AF6C5E30(v18 ^ 1);
      }

      v5 = v4;
    }

    *(a4 + v9) = 0;
  }

  v19 = (a4 + *(v8 + 48));
  if ((v19[1] & 1) == 0)
  {
    v20 = *v19;
    if (*v19 != 0xFFFFFFFF && (v20 & 0x80000000) == 0 && v20 < *(v33 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
    {
      v21 = HIDWORD(v20);
      v22 = (*(v33 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v20);
      if (v21 == 0xFFFFFFFF || v22[2] == v21)
      {
        v24 = *(v22 + 2);
        v25 = *(*(v33 + 144) + 8 * *v22 + 32);
        if (*(v25 + 232) <= v24 && *(v25 + 240) > v24)
        {
          v27 = **(v33 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
          v28 = *(v25 + 344);

          os_unfair_lock_lock(v28);
          ecs_stack_allocator_push_snapshot(*(v27 + 32));

          sub_1AF65CFA0(v27, v25, v24);
          if (v5)
          {

            os_unfair_lock_unlock(*(v25 + 344));
            __break(1u);
            return;
          }

          ecs_stack_allocator_pop_snapshot(*(v27 + 32));
          os_unfair_lock_unlock(*(v25 + 344));
        }
      }
    }

    *v19 = 0;
    *(v19 + 8) = 1;
  }
}

uint64_t sub_1AF7BE760(unsigned __int16 *a1, uint64_t a2, unint64_t a3)
{
  sub_1AF0D4E74(0);
  v6 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1AFDFC298();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  a1[12] = 1;
  if (a3 == 0xFFFFFFFF || (a3 & 0x80000000) != 0 || a3 >= *(result + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) || (v14 = (*(result + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a3), HIDWORD(a3) != 0xFFFFFFFF) && v14[2] != HIDWORD(a3) || (v15 = *v14, v44 = result, (v16 = sub_1AF685564(*(*(result + 144) + 8 * v15 + 32), *(v14 + 2), 8)) == 0) || (v17 = v16, v16 == 1))
  {

LABEL_21:

    *(a1 + 2) = MEMORY[0x1E69E7CC8];
    return result;
  }

  v18 = sub_1AF67E7A0(a3, v44);
  if (!v18)
  {

    sub_1AF0DB74C(v17);
    goto LABEL_21;
  }

  v48 = v6;
  v49 = v12;
  v50 = v9;
  sub_1AF7BECFC(v17, v18, 1, *a1, *(a1 + 1));

  v58[0] = MEMORY[0x1E69E7CC0];
  v41 = a1;
  v42 = v17;
  sub_1AF7BF5E4(v17, v58);
  v43 = v58[0];
  v19 = *(v58[0] + 16);
  if (v19)
  {
    v46 = (v10 + 32);
    v47 = "]: Unable to find input: '";
    v20 = (v43 + 88);
    v45 = xmmword_1AFE431C0;
    do
    {
      v55 = v19;
      v21 = *(v20 - 7);
      v22 = *(v20 - 6);
      v23 = *(v20 - 4);
      v25 = *(v20 - 2);
      v24 = *(v20 - 1);
      v26 = *v20;
      v27 = qword_1ED730EA0;

      v53 = v23;

      v52 = v25;

      if (v27 != -1)
      {
        swift_once();
      }

      v56 = 0;
      v57 = 0xE000000000000000;
      sub_1AFDFE218();
      MEMORY[0x1B2718AE0](0xD00000000000004CLL, v47 | 0x8000000000000000);
      MEMORY[0x1B2718AE0](v21, v22);
      MEMORY[0x1B2718AE0](0x3A726F7272652820, 0xE900000000000020);
      v51 = v26;
      MEMORY[0x1B2718AE0](v24, v26);
      MEMORY[0x1B2718AE0](41, 0xE100000000000000);
      v28 = v56;
      v29 = v57;
      v30 = sub_1AFDFDA08();
      v31 = v48;
      if (qword_1ED731058 != -1)
      {
        swift_once();
      }

      v54 = v22;
      if (qword_1ED730E98 != -1)
      {
        swift_once();
      }

      v20 += 8;
      v32 = qword_1ED73B890;
      sub_1AF5FD6BC(0, &qword_1ED730B50, &qword_1ED730B40, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v33 = swift_allocObject();
      *(v33 + 16) = v45;
      *(v33 + 56) = MEMORY[0x1E69E6158];
      *(v33 + 64) = sub_1AF0D544C();
      *(v33 + 32) = v28;
      *(v33 + 40) = v29;

      sub_1AFDFC4C8(v30, &dword_1AF0CE000, v32, "%{public}s", 10, 2, v33);

      v34 = v30;
      v35 = v49;
      sub_1AFDFC288();
      v36 = v31[12];
      v37 = v31[16];
      v38 = v31[20];
      v39 = v28;
      v40 = &v8[v38];
      (*v46)(v8, v35, v50);
      v8[v36] = v34;
      *&v8[v37] = 0;
      *v40 = v39;
      *(v40 + 1) = v29;

      sub_1AFDFC608();

      sub_1AF7D48A0(v8, sub_1AF0D4E74);

      v19 = v55 - 1;
    }

    while (v55 != 1);
  }

  sub_1AF0DB74C(v42);

  *(v41 + 26) = 1;
  return result;
}

uint64_t sub_1AF7BECFC(uint64_t result, uint64_t a2, char a3, unsigned __int8 a4, uint64_t a5)
{
  if (!*(a5 + 16))
  {
    return result;
  }

  v5 = 0xE400000000000000;
  v6 = 1852399949;
  v7 = 0xEE00657461647055;
  v8 = 0x656C636974726150;
  if (a4 != 5)
  {
    v8 = 0x7265646E6552;
    v7 = 0xE600000000000000;
  }

  v9 = 0xEC00000074696E49;
  v10 = 0x656C636974726150;
  if (a4 != 3)
  {
    v10 = 0x657461647055;
    v9 = 0xE600000000000000;
  }

  if (a4 <= 4u)
  {
    v8 = v10;
    v7 = v9;
  }

  v11 = 0xE500000000000000;
  v12 = 0x6E77617053;
  if (a4 != 1)
  {
    v12 = 1953066569;
    v11 = 0xE400000000000000;
  }

  if (a4)
  {
    v6 = v12;
    v5 = v11;
  }

  if (a4 <= 2u)
  {
    v13 = v6;
  }

  else
  {
    v13 = v8;
  }

  if (a4 <= 2u)
  {
    v14 = v5;
  }

  else
  {
    v14 = v7;
  }

  v15 = *(result + 176);
  if (!*(v15 + 16) || (v16 = result, , v17 = sub_1AF419914(v13, v14), v19 = v18, , (v19 & 1) == 0))
  {
  }

  v20 = *(*(v15 + 56) + 8 * v17);

  v84 = v16;
  v21 = *(v20 + 56);
  if (v21 >> 62)
  {
    v22 = sub_1AFDFE108();
  }

  else
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v22)
  {
    for (i = 0; i != v22; ++i)
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x1B2719C70](i, v21);
      }

      else
      {
        v24 = *(v21 + 8 * i + 32);
      }

      v25 = *(v24 + 72);
      v96[0] = *(v24 + 56);
      v96[1] = v25;
      v97 = *(v24 + 88);
      sub_1AF444F60(v96, &v91);
      if (sub_1AF7FE65C() == 0x6156686374697753 && v26 == 0xEB0000000065756CLL)
      {

        sub_1AF444FBC(v96);
      }

      else
      {
        v27 = sub_1AFDFEE28();

        sub_1AF444FBC(v96);
        if ((v27 & 1) == 0)
        {
          if (*(a5 + 16))
          {
            v28 = *(v24 + 40);
            v29 = *(v24 + 48);

            v30 = sub_1AF419914(v28, v29);
            v32 = v31;

            if (v32)
            {
              v33 = *(*(a5 + 56) + 16 * v30 + 8);
              v34 = *(v24 + 72);
              v94[0] = *(v24 + 56);
              v94[1] = v34;
              v95 = *(v24 + 88);

              sub_1AF444F60(v94, &v91);
              v35 = sub_1AF80CC24(v94);
              sub_1AF444FBC(v94);
              v36 = *(v33 + 40);
              if (v35 != v36)
              {
                v37 = *(v24 + 24);
                v38 = *(v24 + 32);

                sub_1AF808478(v36, v89);
                sub_1AF7B085C(v37, v38, v89);
                sub_1AF444FBC(v89);
                v39 = sub_1AF7B0A00(v37, v38);

                v40 = v39[5];
                v41 = v39[6];

                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                *&v91 = *(v84 + 264);
                *(v84 + 264) = 0x8000000000000000;
                sub_1AF854E5C(v39, v40, v41, isUniquelyReferenced_nonNull_native);

                *(v84 + 264) = v91;
              }
            }
          }
        }
      }
    }
  }

  if ((a3 & 1) == 0)
  {
  }

  v43 = *(v84 + 168);
  v44 = 1 << *(v43 + 32);
  v45 = -1;
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  v46 = v45 & *(v43 + 64);
  v47 = (v44 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v48 = 0;
  v82 = v47;
LABEL_45:
  while (v46)
  {
LABEL_49:
    v50 = __clz(__rbit64(v46));
    v46 &= v46 - 1;
    v87 = *(*(v43 + 56) + 8 * (v50 | (v48 << 6)));
    v51 = *(v87 + 80);
    v52 = v51[2];
    if (v52)
    {
      v54 = v51 + 5;
      v53 = v51[5];
      v55 = v51[4];

      v56 = v51 + 5;
      while (1)
      {
        v57 = *(v56 - 1) == v55 && *v56 == v53;
        if (v57 || (sub_1AFDFEE28() & 1) != 0)
        {
          break;
        }

        v56 += 2;
        if (!--v52)
        {

          goto LABEL_45;
        }
      }

      v58 = v51[2];
      if (v58)
      {
        v59 = 0;
        while (1)
        {
          v60 = *(v54 - 1) == v55 && *v54 == v53;
          if (v60 || (sub_1AFDFEE28() & 1) != 0)
          {
            break;
          }

          ++v59;
          v54 += 2;
          if (v58 == v59)
          {
            goto LABEL_66;
          }
        }
      }

      else
      {
LABEL_66:
        v59 = 0;
      }

      v61 = *(v87 + 88) + 40 * v59;
      v62 = *(v61 + 64);
      v63 = *(v61 + 48);
      v91 = *(v61 + 32);
      v92 = v63;
      v93 = v62;
      v81 = *(v61 + 40);

      sub_1AF444F60(&v91, v88);
      v64 = sub_1AF7AF740(v55, v53);
      v66 = v65;
      _s12ParameterOutCMa();
      inited = swift_initStackObject();
      swift_weakInit();
      swift_weakAssign();
      inited[3] = v55;
      inited[4] = v53;
      v80 = v64;
      inited[5] = v64;
      inited[6] = v66;
      v68 = v92;
      *(inited + 7) = v91;
      *(inited + 9) = v68;
      inited[11] = v93;
      sub_1AF444F60(&v91, v88);
      if (sub_1AF7FE65C() == 0x6156686374697753 && v69 == 0xEB0000000065756CLL)
      {

        sub_1AF444FBC(&v91);
        v47 = v82;
LABEL_71:

        goto LABEL_75;
      }

      v70 = sub_1AFDFEE28();

      sub_1AF444FBC(&v91);
      v47 = v82;
      if (v70)
      {
        goto LABEL_71;
      }

      if (v81 > 0x26 || ((1 << v81) & 0x43A0000000) == 0) && *(a2 + 16) && (, v71 = sub_1AF419914(v80, v66), v73 = v72, , (v73))
      {
        v74 = *(*(a2 + 56) + 16 * v71 + 8);
        sub_1AF444F60(&v91, v88);

        v75 = sub_1AF80CC24(&v91);
        sub_1AF444FBC(&v91);
        if (v75 != *(v74 + 40))
        {

          sub_1AF808478(*(v74 + 40), v90);
          sub_1AF7AF3E4(v55, v53, v90);
          sub_1AF444FBC(v90);
          v76 = sub_1AF7AF5BC(v55, v53);

          v77 = v76[5];
          v78 = v76[6];

          v79 = swift_isUniquelyReferenced_nonNull_native();
          v88[0] = *(v84 + 264);
          *(v84 + 264) = 0x8000000000000000;
          sub_1AF854E5C(v76, v77, v78, v79);

          *(v84 + 264) = v88[0];
        }
      }

      else
      {
      }

LABEL_75:

      swift_setDeallocating();
      swift_weakDestroy();

      sub_1AF687FE4(inited[7], inited[8], inited[9], inited[10], inited[11]);
    }
  }

  while (1)
  {
    v49 = v48 + 1;
    if (v48 + 1 >= v47)
    {
      break;
    }

    v46 = *(v43 + 8 * v48++ + 72);
    if (v46)
    {
      v48 = v49;
      goto LABEL_49;
    }
  }
}

uint64_t sub_1AF7BF5E4(uint64_t a1, char **a2)
{
  v105 = a2;
  v119 = *MEMORY[0x1E69E9840];
  sub_1AF7D8944(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v92 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v101 = &v92 - v13;
  sub_1AF7D4B8C(0, &qword_1EB63EC10, sub_1AF7D8944);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v92 - v15;
  v17 = v2;
  v18 = *v2;
  if (v18 <= 2)
  {
    if (*v2)
    {
      if (v18 == 1)
      {
        v19 = 0xE500000000000000;
        v20 = 0x6E77617053;
      }

      else
      {
        v19 = 0xE400000000000000;
        v20 = 1953066569;
      }
    }

    else
    {
      v19 = 0xE400000000000000;
      v20 = 1852399949;
    }

    goto LABEL_15;
  }

  if (*v2 > 4u)
  {
    if (v18 == 5)
    {
      v19 = 0xEE00657461647055;
      goto LABEL_10;
    }

    v19 = 0xE600000000000000;
    v20 = 0x7265646E6552;
  }

  else
  {
    if (v18 == 3)
    {
      v19 = 0xEC00000074696E49;
LABEL_10:
      v20 = 0x656C636974726150;
      goto LABEL_15;
    }

    v19 = 0xE600000000000000;
    v20 = 0x657461647055;
  }

LABEL_15:
  v21 = *(a1 + 176);
  if (!*(v21 + 16) || (v95 = v16, v96 = v6, , v22 = sub_1AF419914(v20, v19), v24 = v23, , (v24 & 1) == 0))
  {
  }

  v103 = a1;
  v25 = *(*(v21 + 56) + 8 * v22);

  v26 = *(*(v17 + 2) + 16);
  sub_1AF7DB7D4(0, &qword_1ED722F30, &type metadata for ScriptParameter, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = 0x8000000000000000;
  *(inited + 40) = 1;
  *(inited + 48) = xmmword_1AFE4C460;
  *(inited + 64) = 1;
  v28 = v17[24];
  v100 = v5;
  v93 = v26;
  if (v28 == 1)
  {
    v29 = inited;
    v106 = xmmword_1AFE4C460;
    v30 = swift_allocObject();
    *(v30 + 16) = 0xFFFFFFFFLL;
    v31 = v30 | 0x6000000000000000;
    inited = sub_1AF420C34(1, 2, 1, v29);
    *(inited + 16) = 2;
    *(inited + 72) = v31;
    *(inited + 80) = 1;
    *(inited + 88) = v106;
    *(inited + 104) = 1;
  }

  v32 = v17[1];
  v33 = MEMORY[0x1E69E7CC0];
  *&v118[0] = MEMORY[0x1E69E7CC0];
  *&v114 = MEMORY[0x1E69E7CC0];
  v94 = inited;
  sub_1AF7BA714(inited, v32, v118, &v114);
  v102 = *&v118[0];
  *&v106 = v114;
  *&v114 = v33;
  v34 = *(v25 + 40);
  v35 = *(v34 + 16);

  v98 = v8;
  v99 = v11;
  if (v35)
  {
    v36 = (v34 + 40);
    v37 = v103;
    do
    {
      v38 = *v36;
      *&v118[0] = *(v36 - 1);
      *(&v118[0] + 1) = v38;

      sub_1AF79B318(v118, v25, v37);

      v36 += 2;
      --v35;
    }

    while (v35);
    v39 = v114;
  }

  else
  {
    v39 = v33;
  }

  v41 = *(v39 + 16);
  v107 = v17;
  v104 = v25;
  v97 = v39;
  if (!v41)
  {
    v56 = v17;
    v43 = &unk_1F2503780;
    v54 = v106;
    v53 = v56;
    goto LABEL_55;
  }

  *&v118[0] = MEMORY[0x1E69E7CC0];
  sub_1AFC076E8(0, v41, 0);
  v42 = (v39 + 40);
  v43 = *&v118[0];
  do
  {
    v44 = *(v42 - 1);
    v45 = *v42;
    if (v44 == 1701015119 && v45 == 0xE400000000000000)
    {
      v47 = 0;
      v48 = 1;
      goto LABEL_43;
    }

    if (sub_1AFDFEE28())
    {
      v47 = 0;
LABEL_42:
      v48 = 1;
      goto LABEL_43;
    }

    v49 = v44 == 0x74737275426E4FLL && v45 == 0xE700000000000000;
    if (v49 || (sub_1AFDFEE28() & 1) != 0)
    {
      v47 = 1;
      goto LABEL_42;
    }

    if (v44 == 0x7461657065526E4FLL && v45 == 0xE800000000000000)
    {
      v47 = 0;
      v48 = 0;
    }

    else
    {
      v55 = sub_1AFDFEE28();
      if (v55)
      {
        v47 = 0;
      }

      else
      {
        v47 = 2;
      }

      v48 = v55 ^ 1;
    }

LABEL_43:
    *&v118[0] = v43;
    v51 = v43[2];
    v50 = v43[3];
    if (v51 >= v50 >> 1)
    {
      sub_1AFC076E8(v50 > 1, v51 + 1, 1);
      v43 = *&v118[0];
    }

    v43[2] = v51 + 1;
    v52 = &v43[v51];
    *(v52 + 8) = v47;
    v52[36] = v48 & 1;
    v42 += 2;
    --v41;
    v53 = v107;
    v54 = v106;
  }

  while (v41);
  v39 = v97;
LABEL_55:
  sub_1AF7C5F84(v43);

  v57 = *(v39 + 16);
  v58 = v102;
  if (v57)
  {
    v59 = (v39 + 40);
    do
    {
      v63 = *(v59 - 1);
      v64 = *v59;
      LOBYTE(v114) = v53[1];
      v65 = 1;
      *(&v114 + 1) = 1;
      BYTE3(v114) = 0;
      *(&v114 + 1) = MEMORY[0x1E69E7CC0];
      LOWORD(v115) = 1;
      *(&v115 + 1) = v58;
      *&v116 = v54;
      WORD4(v116) = 257;
      *&v117 = v63;
      *(&v117 + 1) = v64;
      v118[2] = v116;
      v118[3] = v117;
      v118[0] = v114;
      v118[1] = v115;
      if (v63 == 1701015119 && v64 == 0xE400000000000000 || (sub_1AFDFEE28() & 1) != 0)
      {
        v60 = 0;
      }

      else if (v63 == 0x74737275426E4FLL && v64 == 0xE700000000000000 || (sub_1AFDFEE28() & 1) != 0)
      {
        v60 = 1;
      }

      else if (v63 == 0x7461657065526E4FLL && v64 == 0xE800000000000000)
      {
        v60 = 0;
        v65 = 0;
      }

      else
      {
        v66 = sub_1AFDFEE28();
        v65 = v66 ^ 1;
        if (v66)
        {
          v60 = 0;
        }

        else
        {
          v60 = 2;
        }
      }

      swift_bridgeObjectRetain_n();

      v54 = v106;

      v61 = sub_1AF79054C(v104, v118, MEMORY[0x1E69E7CC8]);
      sub_1AF75FD78(&v114);
      LOBYTE(v109) = v65 & 1;
      v62 = v60 | ((v65 & 1) << 32);
      v53 = v107;
      sub_1AF7C54A8(v62, v61, v105);

      v58 = v102;

      v59 += 2;
      --v57;
    }

    while (v57);
  }

  LOBYTE(v109) = v53[1];
  *(&v109 + 1) = 1;
  BYTE3(v109) = 0;
  *(&v109 + 1) = MEMORY[0x1E69E7CC0];
  LOWORD(v110) = 1;
  *(&v110 + 1) = v58;
  *&v111 = v54;
  WORD4(v111) = 257;
  v112 = 0;
  v113 = 0;
  v116 = v111;
  v117 = 0u;
  v114 = v109;
  v115 = v110;
  v67 = sub_1AF432980(MEMORY[0x1E69E7CC0]);
  v68 = sub_1AF79054C(v104, &v114, v67);

  sub_1AF75FD78(&v109);
  v108 = 1;
  sub_1AF7C54A8(0x100000002uLL, v68, v105);

  v69 = *(v53 + 2);
  if (v93 == *(v69 + 16))
  {
    v70 = 1 << *(v69 + 32);
    v71 = -1;
    if (v70 < 64)
    {
      v71 = ~(-1 << v70);
    }

    v72 = v71 & *(v69 + 64);
    v73 = (v70 + 63) >> 6;

    v74 = 0;
    if (v72)
    {
      while (1)
      {
        v75 = v74;
LABEL_79:
        v76 = __clz(__rbit64(v72)) | (v75 << 6);
        v77 = *(v69 + 56);
        v78 = *(v69 + 48) + 8 * v76;
        v79 = *v78;
        v80 = *(v78 + 4);
        v81 = v77 + *(*(type metadata accessor for GraphScriptingConfig.ScriptInfo(0) - 8) + 72) * v76;
        v82 = v100;
        v83 = v101;
        sub_1AF7D4B24(v81, &v101[*(v100 + 48)], type metadata accessor for GraphScriptingConfig.ScriptInfo);
        *v83 = v79;
        v83[4] = v80;
        v84 = v83;
        v85 = v99;
        sub_1AF0D6D20(v84, v99, sub_1AF7D8944);
        v86 = v98;
        sub_1AF7D4B24(v85, v98, sub_1AF7D8944);
        v87 = v86 + *(v82 + 48);
        LODWORD(v82) = *(v87 + 40);
        sub_1AF7D48A0(v87, type metadata accessor for GraphScriptingConfig.ScriptInfo);
        if (v82 == 1)
        {
          break;
        }

        v72 &= v72 - 1;
        sub_1AF7D48A0(v85, sub_1AF7D8944);
        v74 = v75;
        v53 = v107;
        if (!v72)
        {
          goto LABEL_77;
        }
      }

      v89 = v95;
      sub_1AF0D6D20(v85, v95, sub_1AF7D8944);
      v88 = v96;
      v90 = v100;
      (*(v96 + 56))(v89, 0, 1, v100);
      v53 = v107;
    }

    else
    {
LABEL_77:
      while (1)
      {
        v75 = v74 + 1;
        if (v74 + 1 >= v73)
        {
          break;
        }

        v72 = *(v69 + 8 * v74++ + 72);
        if (v72)
        {
          goto LABEL_79;
        }
      }

      v89 = v95;
      v88 = v96;
      v90 = v100;
      (*(v96 + 56))(v95, 1, 1, v100);
    }

    v91 = (*(v88 + 48))(v89, 1, v90) != 1;
    result = sub_1AF7D4900(v89, &qword_1EB63EC10, sub_1AF7D8944);
    v53[26] = v91;
  }

  else
  {

    v53[26] = 1;
  }

  return result;
}

uint64_t sub_1AF7C0174(uint64_t *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, char **a6)
{
  v7 = *a1;
  v8 = a1[1];
  if (*(a3 + 16) && (v10 = sub_1AF419914(*a1, v8), (v11 & 1) != 0))
  {
    v34 = a6;
    v12 = (*(a3 + 56) + 16 * v10);
    v13 = *v12;
    v14 = v12[1];
    if (*(v14 + 216))
    {
      v15 = *(v14 + 216);
    }

    else
    {

      v15 = v14;
    }

    v19 = swift_allocObject();
    *(v19 + 16) = v13;
    v21 = *(v15 + 16);
    v20 = *(v15 + 24);
    v22 = *(v15 + 48);
    v23 = *(v15 + 56);
    v24 = *(v15 + 58);

    v33 = *(v15 + 32);

    *(v19 + 24) = v21;
    *(v19 + 32) = v20;
    *(v19 + 40) = v33;
    *(v19 + 56) = v22;
    *(v19 + 64) = v23;
    *(v19 + 66) = v24;
    v25 = v19 | 0x2000000000000000;
    v26 = *v34;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v34 = v26;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v26 = sub_1AF420C34(0, *(v26 + 2) + 1, 1, v26);
      *v34 = v26;
    }

    v29 = *(v26 + 2);
    v28 = *(v26 + 3);
    if (v29 >= v28 >> 1)
    {
      *v34 = sub_1AF420C34(v28 > 1, v29 + 1, 1, v26);
    }

    v30 = *v34;
    *(v30 + 2) = v29 + 1;
    v31 = &v30[40 * v29];
    *(v31 + 4) = v25;
    v31[40] = 7;
    *(v31 + 3) = xmmword_1AFE4C460;
    v31[64] = 1;
  }

  else
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v35[1] = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF34E20);
    sub_1AFDFE458();
    MEMORY[0x1B2718AE0](0xD00000000000001BLL, 0x80000001AFF34E40);
    MEMORY[0x1B2718AE0](v7, v8);
    MEMORY[0x1B2718AE0](0xD000000000000011, 0x80000001AFF34E60);
    v16 = sub_1AFDFCC18();
    MEMORY[0x1B2718AE0](v16);

    v17 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v32 = v17;
      swift_once();
      v17 = v32;
    }

    v35[0] = 0;
    sub_1AF0D4F18(v17, v35, 0, 0xE000000000000000);
  }

  return result;
}

uint64_t sub_1AF7C04D4(uint64_t *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, char **a6)
{
  v8 = *a1;
  v9 = a1[1];
  if (*(a3 + 16) && (v11 = sub_1AF419914(*a1, v9), (v12 & 1) != 0))
  {
    v13 = *(*(a3 + 56) + 16 * v11 + 8);
    if (*(v13 + 216))
    {
      v14 = *(v13 + 216);
    }

    else
    {

      v14 = v13;
    }

    v19 = *(v14 + 16);
    v18 = *(v14 + 24);
    v20 = *(v14 + 48);
    v21 = *(v14 + 56);
    v22 = *(v14 + 58);

    v31 = *(v14 + 32);

    v23 = swift_allocObject();
    *(v23 + 16) = v19;
    *(v23 + 24) = v18;
    *(v23 + 32) = v31;
    *(v23 + 48) = v20;
    *(v23 + 56) = v21;
    *(v23 + 58) = v22;
    *(v23 + 60) = 5;
    v24 = *a6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a6 = v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v24 = sub_1AF420C34(0, *(v24 + 2) + 1, 1, v24);
      *a6 = v24;
    }

    v27 = *(v24 + 2);
    v26 = *(v24 + 3);
    if (v27 >= v26 >> 1)
    {
      *a6 = sub_1AF420C34(v26 > 1, v27 + 1, 1, v24);
    }

    v28 = *a6;
    *(v28 + 2) = v27 + 1;
    v29 = &v28[40 * v27];
    *(v29 + 4) = v23 | 0x5000000000000000;
    v29[40] = 3;
    *(v29 + 3) = xmmword_1AFE4C460;
    v29[64] = 1;
  }

  else
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v32[1] = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF34E20);
    v33 = a2;
    sub_1AFDFE458();
    MEMORY[0x1B2718AE0](0xD00000000000001BLL, 0x80000001AFF34E40);
    MEMORY[0x1B2718AE0](v8, v9);
    MEMORY[0x1B2718AE0](0xD000000000000011, 0x80000001AFF34E60);
    v15 = sub_1AFDFCC18();
    MEMORY[0x1B2718AE0](v15);

    v16 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v30 = v16;
      swift_once();
      v16 = v30;
    }

    v32[0] = 0;
    sub_1AF0D4F18(v16, v32, 0, 0xE000000000000000);
  }

  return result;
}

unint64_t sub_1AF7C0854(unint64_t result)
{
  if (*(result + 56) == 1)
  {
    return sub_1AF7D3C8C(result, 1);
  }

  return result;
}

uint64_t sub_1AF7C0884(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_1AF7C77A8(v5, v7) & 1;
}

uint64_t sub_1AF7C08E0()
{
  v1 = MEMORY[0x1E69E7CC0];
  v26 = *(*v0 + 16);
  if (v26)
  {
    v2 = 0;
    v25 = *v0 + 32;
    v3 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v4 = *(v25 + 40 * v2 + 24);
      v5 = *(v4 + 16);
      if (v5)
      {
        v6 = v1;
        v28 = v1;

        swift_bridgeObjectRetain_n();
        sub_1AFC07194(0, v5, 0);
        v7 = v1;
        v8 = v1[2];
        v9 = 32;
        do
        {
          v10 = *(v4 + v9);
          v28 = v7;
          v11 = v7[3];
          if (v8 >= v11 >> 1)
          {
            sub_1AFC07194(v11 > 1, v8 + 1, 1);
            v7 = v28;
          }

          v7[2] = v8 + 1;
          v7[v8 + 4] = v10;
          v9 += 56;
          ++v8;
          --v5;
        }

        while (v5);
        swift_bridgeObjectRelease_n();

        v1 = v6;
      }

      else
      {
        v7 = v1;
      }

      v12 = v7[2];
      v13 = *(v3 + 2);
      v14 = v13 + v12;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v14 <= *(v3 + 3) >> 1)
      {
        if (v7[2])
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v13 <= v14)
        {
          v16 = v13 + v12;
        }

        else
        {
          v16 = v13;
        }

        v3 = sub_1AF4217DC(isUniquelyReferenced_nonNull_native, v16, 1, v3);
        if (v7[2])
        {
LABEL_20:
          memcpy(&v3[8 * *(v3 + 2) + 32], v7 + 4, 8 * v12);

          if (v12)
          {
            *(v3 + 2) += v12;
          }

          goto LABEL_4;
        }
      }

LABEL_4:
      if (++v2 == v26)
      {
        goto LABEL_23;
      }
    }
  }

  v3 = MEMORY[0x1E69E7CC0];
LABEL_23:
  v17 = *(v3 + 2);
  v18 = sub_1AF43B694();
  v19 = MEMORY[0x1B27191B0](v17, &type metadata for Entity, v18);
  v28 = v19;
  v20 = *(v3 + 2);
  if (v20)
  {
    v21 = 32;
    do
    {
      sub_1AF70DA24(&v27, *&v3[v21]);
      v21 += 8;
      --v20;
    }

    while (v20);

    v22 = v28;
  }

  else
  {
    v22 = v19;
  }

  *(v24 + 16) = v22;
  return result;
}

uint64_t sub_1AF7C0B40()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = 0;
    v5 = v1 + 32;
    v6 = MEMORY[0x1E69E7CC0];
    v29 = v1 + 32;
    v30 = *(*v0 + 16);
    while (1)
    {
      v7 = *(v5 + 40 * v4 + 16);
      if (v7 && (v8 = *(v7 + 16)) != 0)
      {
        v9 = v3;
        v32 = v3;
        swift_bridgeObjectRetain_n();

        sub_1AFC07194(0, v8, 0);
        v10 = v3;
        v11 = v3[2];
        v12 = 32;
        do
        {
          v13 = *(v7 + v12);
          v32 = v10;
          v14 = v10[3];
          if (v11 >= v14 >> 1)
          {
            sub_1AFC07194(v14 > 1, v11 + 1, 1);
            v10 = v32;
          }

          v10[2] = v11 + 1;
          v10[v11 + 4] = v13;
          v12 += 56;
          ++v11;
          --v8;
        }

        while (v8);

        swift_bridgeObjectRelease_n();
        v3 = v9;
        v5 = v29;
        v2 = v30;
      }

      else
      {
        v10 = v3;
      }

      v15 = v10[2];
      v16 = *(v6 + 2);
      v17 = v16 + v15;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v17 <= *(v6 + 3) >> 1)
      {
        if (v10[2])
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (v16 <= v17)
        {
          v19 = v16 + v15;
        }

        else
        {
          v19 = v16;
        }

        v6 = sub_1AF4217DC(isUniquelyReferenced_nonNull_native, v19, 1, v6);
        if (v10[2])
        {
LABEL_21:
          memcpy(&v6[8 * *(v6 + 2) + 32], v10 + 4, 8 * v15);

          if (v15)
          {
            *(v6 + 2) += v15;
          }

          goto LABEL_4;
        }
      }

LABEL_4:
      if (++v4 == v2)
      {
        goto LABEL_24;
      }
    }
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_24:
  v20 = *(v6 + 2);
  v21 = sub_1AF43B694();
  v22 = MEMORY[0x1B27191B0](v20, &type metadata for Entity, v21);
  v32 = v22;
  v23 = *(v6 + 2);
  if (v23)
  {
    v24 = 32;
    v25 = v28;
    do
    {
      sub_1AF70DA24(&v31, *&v6[v24]);
      v24 += 8;
      --v23;
    }

    while (v23);

    v26 = v32;
  }

  else
  {
    v26 = v22;

    v25 = v28;
  }

  *(v25 + 24) = v26;
  return result;
}

uint64_t sub_1AF7C0DA4(unsigned int *a1, void *a2, uint64_t *a3)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a1 + 1);
  v6 = *(a1 + 3);
  v41 = *(a1 + 4);
  v40 = *(a1 + 5);
  v38 = *(a1 + 6);
  v7 = *(*a2 + 16);
  v36 = *a2;

  if (!v7)
  {
  }

  v39 = v6;
  while (1)
  {
    v8 = *(v36 + 32 + 40 * (v7 - 1) + 24);
    v9 = *(v8 + 16);
    v42 = v7 - 1;

    if (v9)
    {
      break;
    }

LABEL_3:
    if (v5 == &type metadata for WorldTransform)
    {
      v37 = v7;
      v11 = *(v8 + 16);
      if (v11)
      {
        v12 = 0;
        v13 = v8 + 32;
        v14 = -v11;
        v15 = MEMORY[0x1E69E7CC0];
        do
        {
          v16 = (v13 + 56 * v12++);
          while (1)
          {
            v18 = v16[1];
            v17 = v16[2];
            v19 = *v16;
            v48 = *(v16 + 6);
            v46 = v18;
            v47 = v17;
            v45 = v19;
            if (v19 == __PAIR64__(v3, v4) && (swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype()))
            {
              break;
            }

            v16 = (v16 + 56);
            ++v12;
            if (v14 + v12 == 1)
            {
              goto LABEL_38;
            }
          }

          sub_1AF7D4D04(&v45, v43);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v49 = v15;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1AFC076A8(0, *(v15 + 16) + 1, 1);
            v15 = v49;
          }

          v22 = *(v15 + 16);
          v21 = *(v15 + 24);
          if (v22 >= v21 >> 1)
          {
            sub_1AFC076A8(v21 > 1, v22 + 1, 1);
            v15 = v49;
          }

          *(v15 + 16) = v22 + 1;
          v23 = v15 + 56 * v22;
          v24 = v45;
          v25 = v46;
          v26 = v47;
          *(v23 + 80) = v48;
          *(v23 + 48) = v25;
          *(v23 + 64) = v26;
          *(v23 + 32) = v24;
          v13 = v8 + 32;
        }

        while (v14 + v12);
      }

      else
      {
        v15 = MEMORY[0x1E69E7CC0];
      }

LABEL_38:

      v31 = *(v15 + 16);

      v6 = v39;
      if (v31)
      {

        v33 = a3;
        v7 = v37;
        goto LABEL_42;
      }
    }

    else
    {
    }

    v7 = v42;
    if (!v42)
    {
    }
  }

  v10 = 32;
  while (1)
  {
    v28 = *(v8 + v10 + 16);
    v27 = *(v8 + v10 + 32);
    v29 = *(v8 + v10);
    v48 = *(v8 + v10 + 48);
    v46 = v28;
    v47 = v27;
    v45 = v29;
    if (v29 != __PAIR64__(v3, v4) || __PAIR128__(*(&v46 + 1), *(&v45 + 1)) != __PAIR128__(v6, v5) || v47 != __PAIR128__(v40, v41) && (sub_1AFDFEE28() & 1) == 0)
    {
      goto LABEL_28;
    }

    if (v48)
    {
      break;
    }

    if (!v38)
    {
      goto LABEL_41;
    }

LABEL_28:
    v10 += 56;
    if (!--v9)
    {
      goto LABEL_3;
    }
  }

  v49 = v48;
  if (!v38)
  {
    goto LABEL_28;
  }

  v44 = v38;
  sub_1AFDFE008();
  sub_1AF7D4D04(&v45, v43);

  v6 = v39;
  v30 = sub_1AFDFCE58();

  sub_1AF7D4D3C(&v45);
  if ((v30 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_41:

  v33 = a3;
LABEL_42:
  v34 = *v33;
  if (*(v33 + 8))
  {
    v34 = v7;
  }

  if (v7 > v34)
  {
    v34 = v7;
  }

  *v33 = v34;
  *(v33 + 8) = 0;
  return result;
}

uint64_t sub_1AF7C11D4(unsigned int *a1, void *a2, uint64_t *a3)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a1 + 1);
  v40 = *(a1 + 3);
  *&v39 = *(a1 + 5);
  *(&v39 + 1) = *(a1 + 4);
  v6 = *(*a2 + 16);
  v37 = *a2;
  v38 = *(a1 + 6);

  if (!v6)
  {
  }

  v7 = 0;
  while (1)
  {
    v8 = *(v37 + 32 + 40 * v7 + 16);
    if (v8)
    {
      v9 = *(v8 + 16);

      if (v9)
      {
        v10 = 32;
        do
        {
          v30 = *(v8 + v10 + 16);
          v29 = *(v8 + v10 + 32);
          v31 = *(v8 + v10);
          v45 = *(v8 + v10 + 48);
          v43 = v30;
          v44 = v29;
          v42 = v31;
          if (v31 == __PAIR64__(v3, v4) && __PAIR128__(*(&v43 + 1), *(&v42 + 1)) == __PAIR128__(v40, v5) && (__PAIR128__(v44, *(&v44 + 1)) == v39 || (sub_1AFDFEE28() & 1) != 0))
          {
            if (v45)
            {
              v46 = v45;
              if (v38)
              {
                sub_1AFDFE008();
                sub_1AF7D4D04(&v42, v41);

                v32 = sub_1AFDFCE58();

                sub_1AF7D4D3C(&v42);
                if (v32)
                {
LABEL_41:

                  goto LABEL_43;
                }
              }
            }

            else if (!v38)
            {
              goto LABEL_41;
            }
          }

          v10 += 56;
          --v9;
        }

        while (v9);
      }
    }

    else
    {
    }

    if ((swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype()) && v8)
    {
      break;
    }

LABEL_4:
    if (++v7 == v6)
    {
    }
  }

  v11 = *(v8 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = v8 + 32;
    v14 = -v11;
    v15 = MEMORY[0x1E69E7CC0];
    do
    {
      v16 = (v13 + 56 * v12++);
      while (1)
      {
        v18 = v16[1];
        v17 = v16[2];
        v19 = *v16;
        v45 = *(v16 + 6);
        v43 = v18;
        v44 = v17;
        v42 = v19;
        if (v19 == __PAIR128__(&type metadata for WorldTransform, __PAIR64__(v3, v4)))
        {
          break;
        }

        v16 = (v16 + 56);
        ++v12;
        if (v14 + v12 == 1)
        {
          goto LABEL_30;
        }
      }

      sub_1AF7D4D04(&v42, v41);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v46 = v15;
      v36 = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1AFC076A8(0, *(v15 + 16) + 1, 1);
        v15 = v46;
      }

      v22 = *(v15 + 16);
      v21 = *(v15 + 24);
      v23 = v22 + 1;
      if (v22 >= v21 >> 1)
      {
        sub_1AFC076A8(v21 > 1, v22 + 1, 1);
        v23 = v22 + 1;
        v15 = v46;
      }

      *(v15 + 16) = v23;
      v24 = v15 + 56 * v22;
      v25 = v42;
      v26 = v43;
      v27 = v44;
      *(v24 + 80) = v45;
      *(v24 + 48) = v26;
      *(v24 + 64) = v27;
      *(v24 + 32) = v25;
      v13 = v36;
    }

    while (v14 + v12);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

LABEL_30:
  v28 = *(v15 + 16);

  if (!v28)
  {
    goto LABEL_4;
  }

LABEL_43:

  v34 = *a3;
  if (*(a3 + 8))
  {
    v34 = v7;
  }

  if (v7 < v34)
  {
    v34 = v7;
  }

  *a3 = v34;
  *(a3 + 8) = 0;
  return result;
}

uint64_t sub_1AF7C1624(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 16);
  if (v4)
  {
    v30 = MEMORY[0x1E69E7CC0];
    sub_1AFC071B4(0, v4, 0);
    v5 = v30;
    v6 = v4 - 1;
    v7 = 32;
    v8 = a2;
    while (1)
    {
      v9 = *(v3 + v7);
      v10 = *(v3 + v7 + 16);
      *&v29[15] = *(v3 + v7 + 31);
      v28 = v9;
      *v29 = v10;
      v11 = *(v3 + v7 + 16);
      v24 = *(v3 + v7);
      *v25 = v11;
      *&v25[15] = *(v3 + v7 + 31);
      sub_1AF7D495C(&v28, &v22);
      sub_1AF7C17D4(&v24, v8, &v26);
      v20 = v24;
      v21[0] = *v25;
      *(v21 + 15) = *&v25[15];
      sub_1AF7D4994(&v20);
      *&v23[15] = *&v27[15];
      v22 = v26;
      *v23 = *v27;
      v30 = v5;
      v13 = *(v5 + 16);
      v12 = *(v5 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1AFC071B4(v12 > 1, v13 + 1, 1);
        v8 = a2;
        v5 = v30;
      }

      *(v5 + 16) = v13 + 1;
      v14 = v5 + 40 * v13;
      v15 = v22;
      v16 = *v23;
      *(v14 + 63) = *&v23[15];
      *(v14 + 32) = v15;
      *(v14 + 48) = v16;
      if (!v6)
      {
        break;
      }

      --v6;
      v7 += 40;
    }

    v2 = v18;
  }

  else
  {

    v5 = MEMORY[0x1E69E7CC0];
  }

  *v2 = v5;
  return result;
}

unint64_t sub_1AF7C17D4@<X0>(unsigned int *a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v9 = *(a1 + 2);
  v10 = *(a1 + 3);
  v66 = *(a1 + 33);
  v67 = *(a1 + 32);
  ObjectType = swift_getObjectType();
  v68 = v5;
  v69 = v6;
  v63 = sub_1AF62C7C0(v6 | (v5 << 32), 0, ObjectType, a3);
  v64 = v8;
  v62 = v12;
  v65 = v7;
  v71 = ObjectType;
  v72 = a3;
  result = sub_1AF62C7C0(v7 | (v8 << 32), 1, ObjectType, a3);
  v61 = result;
  v60 = v14;
  if (v9)
  {
    v15 = *(v9 + 16);
    v16 = MEMORY[0x1E69E7CC0];
    if (v15)
    {
      v78 = MEMORY[0x1E69E7CC0];
      sub_1AFC076A8(0, v15, 0);
      v16 = v78;
      v17 = (v9 + 32);
      do
      {
        v19 = v17[1];
        v18 = v17[2];
        v20 = *v17;
        v77 = *(v17 + 6);
        *&v75[16] = v19;
        v76 = v18;
        *v75 = v20;
        v21 = v20;
        v22 = DWORD1(v20);
        v23 = v16;
        sub_1AF7D4D04(v75, v74);
        v24 = sub_1AF62C7C0(v21 | (v22 << 32), 0, v71, v72);
        if (v25)
        {
          v26 = v21;
        }

        else
        {
          v26 = v24;
        }

        if ((v25 & 1) == 0)
        {
          LODWORD(v22) = HIDWORD(v24);
        }

        v28 = *(&v76 + 1);
        v27 = v77;
        v29 = v76;

        result = sub_1AF7D4D3C(v75);
        v16 = v23;
        v78 = v23;
        v30 = *(v23 + 16);
        v31 = *(v16 + 24);
        if (v30 >= v31 >> 1)
        {
          result = sub_1AFC076A8(v31 > 1, v30 + 1, 1);
          v16 = v78;
        }

        v32 = *&v75[24];
        v33 = *&v75[8];
        v34 = v16 + 56 * v30;
        *(v16 + 16) = v30 + 1;
        *(v34 + 32) = v26;
        *(v34 + 36) = v22;
        *(v34 + 40) = v33;
        *(v34 + 56) = v32;
        *(v34 + 64) = v29;
        *(v34 + 72) = v28;
        *(v34 + 80) = v27;
        v17 = (v17 + 56);
        --v15;
      }

      while (v15);
    }
  }

  else
  {
    v16 = 0;
  }

  v35 = *(v10 + 16);
  v36 = MEMORY[0x1E69E7CC0];
  if (v35)
  {
    v59 = v16;
    v78 = MEMORY[0x1E69E7CC0];
    sub_1AFC076A8(0, v35, 0);
    v36 = v78;
    v37 = (v10 + 32);
    do
    {
      v39 = v37[1];
      v38 = v37[2];
      v40 = *v37;
      v77 = *(v37 + 6);
      *&v75[16] = v39;
      v76 = v38;
      *v75 = v40;
      v41 = v40;
      v42 = DWORD1(v40);
      sub_1AF7D4D04(v75, v74);
      v43 = sub_1AF62C7C0(v41 | (v42 << 32), 0, v71, v72);
      if (v44)
      {
        v45 = v41;
      }

      else
      {
        v45 = v43;
      }

      v73 = v45;
      if (v44)
      {
        v46 = v42;
      }

      else
      {
        v46 = HIDWORD(v43);
      }

      v48 = *(&v76 + 1);
      v47 = v77;
      v49 = v76;

      result = sub_1AF7D4D3C(v75);
      v78 = v36;
      v51 = *(v36 + 16);
      v50 = *(v36 + 24);
      if (v51 >= v50 >> 1)
      {
        result = sub_1AFC076A8(v50 > 1, v51 + 1, 1);
        v36 = v78;
      }

      v52 = *&v75[24];
      v53 = *&v75[8];
      v54 = v36 + 56 * v51;
      *(v36 + 16) = v51 + 1;
      *(v54 + 32) = v73;
      *(v54 + 36) = v46;
      *(v54 + 40) = v53;
      *(v54 + 56) = v52;
      *(v54 + 64) = v49;
      *(v54 + 72) = v48;
      *(v54 + 80) = v47;
      v37 = (v37 + 56);
      --v35;
    }

    while (v35);
    v16 = v59;
  }

  v55 = HIDWORD(v61);
  if (v60)
  {
    LODWORD(v55) = v64;
    v56 = v65;
  }

  else
  {
    v56 = v61;
  }

  v57 = HIDWORD(v63);
  if (v62)
  {
    LODWORD(v57) = v68;
    v58 = v69;
  }

  else
  {
    v58 = v63;
  }

  *a4 = v58;
  *(a4 + 4) = v57;
  *(a4 + 8) = v56;
  *(a4 + 12) = v55;
  *(a4 + 16) = v16;
  *(a4 + 24) = v36;
  *(a4 + 32) = v67;
  *(a4 + 33) = v66;
  *(a4 + 34) = 1;
  return result;
}

void sub_1AF7C1B3C(void *a1@<X8>)
{
  v1 = qword_1EB634218++;
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v1;
  v2 = MEMORY[0x1E69E7CD0];
  a1[2] = MEMORY[0x1E69E7CD0];
  a1[3] = v2;
}

uint64_t destroy for GraphEntityComponentPropertyReferences(void *a1)
{
}

uint64_t initializeWithCopy for GraphEntityComponentPropertyReferences(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = a2[3];
  *(a1 + 16) = a2[2];
  *(a1 + 24) = v4;
  v5 = a2[5];
  *(a1 + 32) = a2[4];
  *(a1 + 40) = v5;
  *(a1 + 48) = a2[6];
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t *assignWithCopy for GraphEntityComponentPropertyReferences(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];

  a1[3] = a2[3];

  a1[4] = a2[4];

  a1[5] = a2[5];

  a1[6] = a2[6];

  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t assignWithTake for GraphEntityComponentPropertyReferences(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t getEnumTagSinglePayload for GraphEntityComponentPropertyReferences(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for GraphEntityComponentPropertyReferences(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for GraphScriptGroup(void *a1)
{
}

uint64_t *initializeWithCopy for GraphScriptGroup(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;

  return a1;
}

uint64_t *assignWithCopy for GraphScriptGroup(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  a1[2] = a2[2];

  a1[3] = a2[3];

  return a1;
}

void *assignWithTake for GraphScriptGroup(void *a1, uint64_t a2)
{
  *a1 = *a2;

  a1[1] = *(a2 + 8);

  *(a1 + 1) = *(a2 + 16);

  return a1;
}

uint64_t getEnumTagSinglePayload for GraphScriptGroup(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for GraphScriptGroup(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AF7C20C4(uint64_t a1)
{
  sub_1AFDFD038();
}

unint64_t sub_1AF7C21D4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF7DAD30(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1AF7C2204(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1852399949;
  v5 = 0xEE00657461647055;
  v6 = 0x656C636974726150;
  if (v2 != 5)
  {
    v6 = 0x7265646E6552;
    v5 = 0xE600000000000000;
  }

  v7 = 0xEC00000074696E49;
  v8 = 0x656C636974726150;
  if (v2 != 3)
  {
    v8 = 0x657461647055;
    v7 = 0xE600000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE500000000000000;
  v10 = 0x6E77617053;
  if (v2 != 1)
  {
    v10 = 1953066569;
    v9 = 0xE400000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_1AF7C239C(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x100000000) != 0)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v3 = 1;
      }

      else
      {
        v3 = 3;
      }
    }

    else
    {
      v3 = 0;
    }

    return MEMORY[0x1B271ACB0](v3);
  }

  else
  {
    MEMORY[0x1B271ACB0](2);
    return sub_1AFDFF2C8();
  }
}

uint64_t sub_1AF7C2408()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  sub_1AFDFF288();
  sub_1AF7C239C(v4, v1 | (v2 << 32));
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF7C247C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 4);
  sub_1AFDFF288();
  sub_1AF7C239C(v5, v2 | (v3 << 32));
  return sub_1AFDFF2F8();
}

unint64_t sub_1AF7C24CC@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1AF7CDD10(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 4) = BYTE4(result) & 1;
  }

  return result;
}

uint64_t sub_1AF7C2500(void *a1)
{
  v3 = *(v1 + 4);
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3C8();
  sub_1AF448018(v5, v6);
  sub_1AFDFEC28();
  if (!v2 && (v3 & 1) == 0)
  {
    sub_1AF448018(v5, v6);
    sub_1AFDFEC18();
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v5);
}

BOOL sub_1AF7C25F8(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 4) != 1)
  {
    if ((*(a2 + 4) & 1) == 0)
    {
      return v2 == v3;
    }

    return 0;
  }

  if (v2 == 0.0)
  {
    v4 = LODWORD(v3) == 0;
  }

  else
  {
    if (LODWORD(v2) != 1)
    {
      if (LODWORD(v3) > 1)
      {
        v7 = *(a2 + 4);
      }

      else
      {
        v7 = 0;
      }

      return v7 == 1;
    }

    v4 = LODWORD(v3) == 1;
  }

  if (v4)
  {
    v6 = *(a2 + 4);
  }

  else
  {
    v6 = 0;
  }

  return (v6 & 1) != 0;
}

uint64_t sub_1AF7C266C(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3C8();
  sub_1AF448018(v3, v4);
  sub_1AFDFEBE8();
  if (!v1)
  {
    sub_1AF448018(v3, v4);
    sub_1AF75FC0C();
    sub_1AFDFEC38();
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v3);
}

double sub_1AF7C275C@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1AF7CDE98(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

uint64_t sub_1AF7C27C4(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1] || (v2 = 0, (sub_1AFDFEE28() & 1) != 0))
  {
    v3 = sub_1AF7FE65C();
    v5 = v4;
    if (v3 == sub_1AF7FE65C() && v5 == v6)
    {
      v2 = 1;
    }

    else
    {
      v2 = sub_1AFDFEE28();
    }
  }

  return v2 & 1;
}

uint64_t sub_1AF7C28B4()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF7C298C(uint64_t a1)
{
  sub_1AFDFD038();
}

uint64_t sub_1AF7C2A50(uint64_t a1)
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

unint64_t sub_1AF7C2B24@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF7C83C0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1AF7C2B54(uint64_t *a1@<X8>)
{
  v2 = 0xEE00617461447265;
  v3 = 0x7355736772416E69;
  v4 = 0xE900000000000073;
  v5 = 0x67724174754F6E69;
  if (*v1 != 2)
  {
    v5 = 0x6E49747069726373;
    v4 = 0xEB00000000786564;
  }

  if (*v1)
  {
    v3 = 0x736772416E69;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1AF7C2BE8()
{
  v1 = 0x7355736772416E69;
  v2 = 0x67724174754F6E69;
  if (*v0 != 2)
  {
    v2 = 0x6E49747069726373;
  }

  if (*v0)
  {
    v1 = 0x736772416E69;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1AF7C2C78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF7C83C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AF7C2CA0(uint64_t a1)
{
  v2 = sub_1AF7DADD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF7C2CDC(uint64_t a1)
{
  v2 = sub_1AF7DADD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF7C2D18@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a1;
  v24 = a2;
  sub_1AF7D4B8C(0, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v25 = &v23 - v4;
  sub_1AF7DB68C(0, &qword_1EB633AF0, sub_1AF7DADD0, &type metadata for GraphScriptingConfig.ScriptInfo.CodingKeys, MEMORY[0x1E69E6F48]);
  v6 = *(v5 - 8);
  v26 = v5;
  v27 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - v7;
  v9 = type metadata accessor for GraphScriptingConfig.ScriptInfo(0);
  v10 = (v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v12 = 0;
  *(v12 + 1) = 0;
  *(v12 + 2) = sub_1AF432C7C(MEMORY[0x1E69E7CC0]);
  *(v12 + 3) = 0;
  *(v12 + 4) = 0;
  *(v12 + 20) = 1;
  v13 = v10[12];
  v14 = sub_1AFDFC318();
  (*(*(v14 - 8) + 56))(&v12[v13], 1, 1, v14);
  *&v12[v10[13]] = 0;
  v15 = &v12[v10[14]];
  *v15 = 0;
  v15[8] = 1;
  sub_1AF441150(a1, a1[3]);
  sub_1AF7DADD0();
  v16 = v28;
  sub_1AFDFF3B8();
  if (!v16)
  {
    v28 = v13;
    sub_1AF7DB7D4(0, &unk_1EB633C70, &type metadata for GraphScriptingConfig.ScriptArg, MEMORY[0x1E69E62F8]);
    v30 = 1;
    sub_1AF7DAE24();
    v17 = v26;
    sub_1AFDFE6E8();
    *(v12 + 3) = v31;
    v30 = 2;
    sub_1AFDFE6E8();
    *(v12 + 4) = v31;
    LOBYTE(v31) = 3;
    sub_1AF7D5048(&qword_1ED72DF38, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    v18 = v25;
    sub_1AFDFE6E8();
    sub_1AF7D4BE0(v18, &v12[v28], &qword_1ED72DF30, MEMORY[0x1E69695A8]);
    v20 = v29[3];
    v21 = v29[4];
    sub_1AF441150(v29, v20);
    if (sub_1AF69504C(2010, v20, v21))
    {
      sub_1AF7DB010(0);
      v30 = 0;
      sub_1AF7A72CC();
    }

    else
    {
      sub_1AF7DAF14(0);
      v30 = 0;
      sub_1AF7D5048(&qword_1EB6342D8, sub_1AF7DAF14, aM_13);
    }

    sub_1AFDFE768();
    v22 = v24;
    (*(v27 + 8))(v8, v17);

    *(v12 + 2) = v31;
    sub_1AF7D4B24(v12, v22, type metadata accessor for GraphScriptingConfig.ScriptInfo);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v29);
  return sub_1AF7D48A0(v12, type metadata accessor for GraphScriptingConfig.ScriptInfo);
}

uint64_t sub_1AF7C3228(void *a1)
{
  v3 = v1;
  sub_1AF7DB68C(0, &qword_1EB63EC90, sub_1AF7DADD0, &type metadata for GraphScriptingConfig.ScriptInfo.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AF7DADD0();
  sub_1AFDFF3F8();
  v13 = v3[2];
  v12 = 0;
  sub_1AF7DAF14(0);
  sub_1AF7D5048(&qword_1EB63EC98, sub_1AF7DAF14, aE_17);
  sub_1AFDFE918();
  if (!v2)
  {
    v13 = v3[3];
    v12 = 1;
    sub_1AF7D5120(0, &qword_1EB63ECA0, &unk_1EB633C70, &type metadata for GraphScriptingConfig.ScriptArg, MEMORY[0x1E69E62F8]);
    sub_1AF7DB078();
    sub_1AFDFE918();
    v13 = v3[4];
    v12 = 2;
    sub_1AFDFE918();
    type metadata accessor for GraphScriptingConfig.ScriptInfo(0);
    LOBYTE(v13) = 3;
    sub_1AF7D4B8C(0, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
    sub_1AF487378();
    sub_1AFDFE918();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1AF7C3500@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a3;
  v5 = MEMORY[0x1E69E7CC0];
  *(a3 + 16) = sub_1AF432C7C(MEMORY[0x1E69E7CC0]);
  *(v4 + 40) = 1;
  v6 = type metadata accessor for GraphScriptingConfig.ScriptInfo(0);
  v7 = v6[10];
  v8 = sub_1AFDFC318();
  (*(*(v8 - 8) + 56))(v4 + v7, 1, 1, v8);
  *(v4 + v6[11]) = 0;
  v9 = v4 + v6[12];
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = a1[1];
  *v4 = *a1;
  *(v4 + 8) = v10;
  v11 = v6[10];

  sub_1AF7D5A10(a1 + v11, v4 + v7);
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  v12 = a1[3];
  if (v12)
  {
    v13 = *(v12 + 16);
    v14 = MEMORY[0x1E69E7CC0];
    if (v13)
    {
      v54 = v4;
      v56 = a1;
      v64 = MEMORY[0x1E69E7CC0];
      sub_1AFC076C8(0, v13, 0);
      v14 = v64;
      v15 = (v12 + 80);
      do
      {
        v59 = v14;
        v16 = *(v15 - 6);
        v17 = *(v15 - 5);
        v18 = *(v15 - 4);
        v19 = *(v15 - 3);
        v20 = *(v15 - 2);
        v21 = *(v15 - 1);
        v22 = *v15;
        v23 = *(a2 + 16);

        sub_1AF687F90(v18, v19, v20, v21, v22);

        v61 = v16;
        if (v23)
        {
          v24 = sub_1AF419914(v16, v17);
          v25 = v17;
          if (v26)
          {
            v27 = (*(a2 + 56) + 16 * v24);
            v25 = v27[1];
            v61 = *v27;
          }
        }

        else
        {
          v25 = v17;
        }

        sub_1AF687F90(v18, v19, v20, v21, v22);

        sub_1AF687FE4(v18, v19, v20, v21, v22);
        v14 = v59;
        v29 = *(v59 + 16);
        v28 = *(v59 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_1AFC076C8(v28 > 1, v29 + 1, 1);
          v14 = v59;
        }

        v15 += 7;
        *(v14 + 16) = v29 + 1;
        v30 = (v14 + 56 * v29);
        v30[4] = v61;
        v30[5] = v25;
        v30[6] = v18;
        v30[7] = v19;
        v30[8] = v20;
        v30[9] = v21;
        v30[10] = v22;
        --v13;
      }

      while (v13);
      v4 = v54;
      a1 = v56;
      v5 = MEMORY[0x1E69E7CC0];
    }

    *(v4 + 24) = v14;
    v31 = a1[2];

    sub_1AF7CB88C(v31, v4, a2);

    v32 = a1[4];
    if (v32)
    {
      goto LABEL_13;
    }

LABEL_24:

    return sub_1AF7D48A0(a1, type metadata accessor for GraphScriptingConfig.ScriptInfo);
  }

  v32 = a1[4];
  if (!v32)
  {
    goto LABEL_24;
  }

LABEL_13:
  v33 = *(v32 + 16);
  if (v33)
  {
    v55 = v4;
    v57 = a1;
    sub_1AFC076C8(0, v33, 0);
    v34 = a2;
    v60 = v5;
    v35 = (v32 + 80);
    do
    {
      v58 = v33;
      v36 = *(v35 - 6);
      v37 = *(v35 - 5);
      v38 = *(v35 - 4);
      v39 = *(v35 - 3);
      v40 = *(v35 - 2);
      v41 = *(v35 - 1);
      v42 = *v35;
      v43 = *(v34 + 16);

      sub_1AF687F90(v38, v39, v40, v41, v42);

      v62 = v36;
      if (v43)
      {
        v44 = sub_1AF419914(v36, v37);
        v45 = v37;
        if (v46)
        {
          v47 = (*(a2 + 56) + 16 * v44);
          v45 = v47[1];
          v62 = *v47;
        }
      }

      else
      {
        v45 = v37;
      }

      sub_1AF687F90(v38, v39, v40, v41, v42);

      sub_1AF687FE4(v38, v39, v40, v41, v42);
      v48 = v60;
      v50 = *(v60 + 16);
      v49 = *(v60 + 24);
      v34 = a2;
      if (v50 >= v49 >> 1)
      {
        sub_1AFC076C8(v49 > 1, v50 + 1, 1);
        v34 = a2;
        v48 = v60;
      }

      v35 += 7;
      *(v48 + 16) = v50 + 1;
      v60 = v48;
      v51 = (v48 + 56 * v50);
      v51[4] = v62;
      v51[5] = v45;
      v51[6] = v38;
      v51[7] = v39;
      v51[8] = v40;
      v51[9] = v41;
      v51[10] = v42;
      --v33;
    }

    while (v58 != 1);

    v4 = v55;
    a1 = v57;
    v52 = v60;
  }

  else
  {

    v52 = MEMORY[0x1E69E7CC0];
  }

  sub_1AF7D48A0(a1, type metadata accessor for GraphScriptingConfig.ScriptInfo);

  *(v4 + 32) = v52;
  return result;
}

uint64_t sub_1AF7C399C(uint64_t *a1)
{
  if (*(v1 + 40))
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_1AF7C3AC4(a1);
  }

  *(v1 + 40) = v3 & 1;
  v5 = *a1;
  v4 = a1[1];

  *v1 = v5;
  *(v1 + 8) = v4;
  v6 = a1[2];

  *(v1 + 16) = v6;
  v7 = a1[3];

  *(v1 + 24) = v7;
  v8 = a1[4];

  *(v1 + 32) = v8;
  if (*(a1 + 41) != 1)
  {
    if ((v3 & 1) == 0 || v8 && *(v8 + 16))
    {
      *(v1 + 41) = 0;
      goto LABEL_10;
    }

    result = type metadata accessor for GraphScriptingConfig.ScriptInfo(0);
    if ((*(v1 + *(result + 48) + 8) & 1) != 0 && !*(v1 + *(result + 44)))
    {
      *(v1 + 41) = 0;
      v3 = 1;
      goto LABEL_10;
    }
  }

  v3 = 1;
  *(v1 + 41) = 1;
LABEL_10:
  *(v1 + 40) = v3 & 1;
  return result;
}

uint64_t sub_1AF7C3AC4(void *a1)
{
  v3 = v1[1];
  v4 = a1[1];
  if (v3)
  {
    if (!v4)
    {
      return 1;
    }

    v5 = *v1 == *a1 && v3 == v4;
    if (!v5 && (sub_1AFDFEE28() & 1) == 0)
    {
      return 1;
    }
  }

  else if (v4)
  {
    return 1;
  }

  v6 = v1[3];
  v7 = a1[3];
  if (v6)
  {
    if (!v7)
    {
      return 1;
    }

    v8 = sub_1AFB7BD5C(v6, v7);

    if ((v8 & 1) == 0)
    {
      return 1;
    }
  }

  else if (v7)
  {
    return 1;
  }

  v9 = v1[4];
  v10 = a1[4];
  if (!v9)
  {
    if (!v10)
    {
      goto LABEL_20;
    }

    return 1;
  }

  if (!v10)
  {
    return 1;
  }

  v11 = sub_1AFB7BD5C(v9, v10);

  if ((v11 & 1) == 0)
  {
    return 1;
  }

LABEL_20:
  v12 = v1[2];
  v13 = a1[2];

  v14 = sub_1AF7FE534(v12, v13);

  if ((v14 & 1) == 0)
  {
    return 1;
  }

  v15 = 1 << *(v12 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v12 + 64);
  v18 = (v15 + 63) >> 6;

  v19 = 0;
  while (v17)
  {
LABEL_28:
    v21 = (*(v12 + 48) + ((v19 << 10) | (16 * __clz(__rbit64(v17)))));
    v23 = *v21;
    v22 = v21[1];
    v24 = *(v12 + 16);

    if (v24 && (sub_1AF419914(v23, v22), (v25 & 1) != 0))
    {

      if (!*(v13 + 16))
      {
        goto LABEL_31;
      }
    }

    else if (!*(v13 + 16))
    {
LABEL_31:

LABEL_35:
      v29 = 0;
      goto LABEL_36;
    }

    v26 = sub_1AF419914(v23, v22);
    v28 = v27;

    if ((v28 & 1) == 0)
    {
      goto LABEL_35;
    }

    v29 = *(*(v13 + 56) + 8 * v26);

LABEL_36:
    v17 &= v17 - 1;
    v30 = sub_1AF7FD6CC(v29);

    if ((v30 & 1) == 0)
    {
      v31 = 1;
      goto LABEL_40;
    }
  }

  while (1)
  {
    v20 = v19 + 1;
    if (v19 + 1 >= v18)
    {
      break;
    }

    v17 = *(v12 + 72 + 8 * v19++);
    if (v17)
    {
      v19 = v20;
      goto LABEL_28;
    }
  }

  v31 = 0;
LABEL_40:

  return v31;
}

uint64_t sub_1AF7C3D44(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1AF7D4B8C(0, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v45 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v40 - v8;
  v44 = sub_1AFDFC318();
  v10 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v43 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for GraphScriptingConfig.ScriptInfo(0);
  v13 = v12[11];
  v14 = *(v2 + v13);
  if (!v14)
  {
    goto LABEL_4;
  }

  ObjectType = swift_getObjectType();
  v16 = *(v14 + 24);

  v17 = sub_1AF62C7C0(v16, 0, ObjectType, a2);
  if (v18)
  {

LABEL_4:
    v19 = 0;
    goto LABEL_6;
  }

  v41 = HIDWORD(v17);
  v42 = v10;
  v20 = *(v14 + 16);
  v21 = v17;
  swift_unownedRetainStrong();
  v40 = *(v14 + 32);

  type metadata accessor for VFXAttribute();
  v19 = swift_allocObject();
  *(v19 + 16) = v20;
  *(v19 + 24) = v21;
  v10 = v42;
  *(v19 + 28) = v41;
  *(v19 + 32) = v40;
  swift_unownedRetain();

LABEL_6:
  *(v2 + v13) = v19;
  v22 = v2 + v12[12];
  if (*(v22 + 8))
  {
    v23 = 0;
    v24 = 1;
  }

  else
  {
    v25 = *v22;
    v26 = swift_getObjectType();
    v27 = sub_1AF62C7C0(v25, 0, v26, a2);
    if (v24)
    {
      v23 = 0;
    }

    else
    {
      v23 = v27;
    }
  }

  *v22 = v23;
  *(v22 + 8) = v24 & 1;
  *(v2 + 40) = 1;
  v28 = swift_getObjectType();
  v29 = *(a2 + 32);
  result = v29(v28, a2);
  if (result)
  {
    v31 = v12[10];
    sub_1AF7D4AB8(v2 + v31, v9, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
    v32 = *(v10 + 48);
    v33 = v10;
    v34 = v44;
    if (v32(v9, 1, v44) == 1)
    {
      return sub_1AF7D4900(v9, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
    }

    else
    {
      v41 = v31;
      v42 = v33;
      v35 = *(v33 + 32);
      v35(v43, v9, v34);
      if (v29(v28, a2))
      {
        v36 = v43;
        (*(a2 + 24))(v43, 0x6E49747069726353, 0xEB00000000786564, sub_1AF8208AC, 0, v28, a2);
        v37 = v42;
        (*(v42 + 8))(v36, v34);
        v38 = v37;
      }

      else
      {
        v35(v45, v43, v34);
        v38 = v42;
      }

      v39 = v45;
      (*(v38 + 56))(v45, 0, 1, v34);
      return sub_1AF7D4BE0(v39, v3 + v41, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
    }
  }

  return result;
}

uint64_t sub_1AF7C41C0(unint64_t a1)
{
  sub_1AF7D4B8C(0, &qword_1EB634090, type metadata accessor for GraphScriptingConfig.ScriptInfo);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v24[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24[-v7];
  v9 = *(v1 + 16);
  v10 = HIDWORD(a1) & 1;
  if (*(v9 + 16))
  {
    v11 = a1;
    v12 = sub_1AF419B74(a1 | (v10 << 32));
    if (v13)
    {
      v14 = v12;
      v15 = *(v9 + 56);
      v16 = type metadata accessor for GraphScriptingConfig.ScriptInfo(0);
      v17 = *(v16 - 8);
      sub_1AF7D4B24(v15 + *(v17 + 72) * v14, v8, type metadata accessor for GraphScriptingConfig.ScriptInfo);
      (*(v17 + 56))(v8, 0, 1, v16);
      return sub_1AF7D4900(v8, &qword_1EB634090, type metadata accessor for GraphScriptingConfig.ScriptInfo);
    }
  }

  else
  {
    v11 = a1;
  }

  v19 = type metadata accessor for GraphScriptingConfig.ScriptInfo(0);
  v20 = *(*(v19 - 1) + 56);
  v20(v8, 1, 1, v19);
  sub_1AF7D4900(v8, &qword_1EB634090, type metadata accessor for GraphScriptingConfig.ScriptInfo);
  *(v5 + 2) = sub_1AF432C7C(MEMORY[0x1E69E7CC0]);
  *(v5 + 20) = 1;
  v21 = v19[10];
  v22 = sub_1AFDFC318();
  (*(*(v22 - 8) + 56))(&v5[v21], 1, 1, v22);
  *&v5[v19[11]] = 0;
  v23 = &v5[v19[12]];
  *v23 = 0;
  v23[8] = 1;
  *v5 = 0;
  *(v5 + 1) = 0;
  *(v5 + 3) = 0;
  *(v5 + 4) = 0;
  v20(v5, 0, 1, v19);
  return sub_1AF82502C(v5, v11 | (v10 << 32));
}

uint64_t sub_1AF7C4488()
{
  v1 = type metadata accessor for GraphScriptingConfig.ScriptInfo(0);
  v31 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v30 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v29 = &v26 - v4;
  v27 = v0;
  v5 = *(v0 + 16);
  sub_1AF7DB54C(0, &qword_1EB633B90, MEMORY[0x1E69E6EC8]);
  v6 = sub_1AFDFE598();
  v7 = 0;
  v8 = 1 << *(v5 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v5 + 64);
  v11 = (v8 + 63) >> 6;
  v32 = v6;
  v28 = v6 + 64;
  v12 = v30;
  if (v10)
  {
    do
    {
      v37 = (v10 - 1) & v10;
      v13 = __clz(__rbit64(v10)) | (v7 << 6);
LABEL_9:
      v34 = 8 * v13;
      v17 = *(v5 + 56);
      v18 = *(v5 + 48) + 8 * v13;
      v19 = *v18;
      v35 = *(v18 + 4);
      v36 = v19;
      v33 = *(v31 + 72) * v13;
      v20 = v29;
      sub_1AF7D4B24(v17 + v33, v29, type metadata accessor for GraphScriptingConfig.ScriptInfo);
      sub_1AF7D4B24(v20, v12, type metadata accessor for GraphScriptingConfig.ScriptInfo);
      v21 = sub_1AF7D0704(*(v12 + 16), &unk_1F2500820);
      swift_arrayDestroy();
      sub_1AF7D48A0(v20, type metadata accessor for GraphScriptingConfig.ScriptInfo);

      *(v12 + 16) = v21;
      *(v28 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v22 = v32;
      v23 = *(v32 + 48) + v34;
      v24 = v35;
      *v23 = v36;
      *(v23 + 4) = v24;
      sub_1AF0D6D20(v12, *(v22 + 56) + v33, type metadata accessor for GraphScriptingConfig.ScriptInfo);
      ++*(v22 + 16);
      v10 = v37;
    }

    while (v37);
  }

  v14 = v7 << 6;
  while (1)
  {
    v15 = v7 + 1;
    if (v7 + 1 >= v11)
    {
      break;
    }

    v16 = *(v5 + 8 * v7 + 72);
    v14 += 64;
    ++v7;
    if (v16)
    {
      v37 = (v16 - 1) & v16;
      v13 = __clz(__rbit64(v16)) + v14;
      v7 = v15;
      goto LABEL_9;
    }
  }

  *(v27 + 16) = v32;
  return result;
}

uint64_t sub_1AF7C478C()
{
  v1 = &qword_1ED72DF30;
  sub_1AF7D4B8C(0, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v45 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v42 - v5;
  v7 = type metadata accessor for GraphScriptingConfig.ScriptInfo(0);
  v50 = *(v7 - 8);
  v51 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v49 = &v42 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v42 - v13;
  v43 = v0;
  v15 = *(v0 + 16);
  sub_1AF7DB54C(0, &qword_1EB633B90, MEMORY[0x1E69E6EC8]);
  v16 = sub_1AFDFE598();
  v17 = 0;
  v18 = 1 << *(v15 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v15 + 64);
  v21 = (v18 + 63) >> 6;
  v52 = v16;
  v47 = v16 + 64;
  v48 = v14;
  v44 = v6;
  while (v20)
  {
    v58 = (v20 - 1) & v20;
    v26 = __clz(__rbit64(v20)) | (v17 << 6);
LABEL_12:
    v30 = *(v15 + 48);
    v31 = *(v15 + 56);
    v57 = 8 * v26;
    v32 = (v30 + 8 * v26);
    v33 = *v32;
    v54 = *(v32 + 4);
    v55 = v33;
    v56 = *(v50 + 72) * v26;
    sub_1AF7D4B24(v31 + v56, v14, type metadata accessor for GraphScriptingConfig.ScriptInfo);
    sub_1AF7D4B24(v14, v9, type metadata accessor for GraphScriptingConfig.ScriptInfo);
    v53 = *(v51 + 40);
    sub_1AF7D4AB8(&v9[v53], v6, v1, MEMORY[0x1E69695A8]);
    v34 = sub_1AFDFC318();
    v35 = v9;
    v36 = v14;
    v37 = v1;
    v38 = *(v34 - 8);
    if ((*(v38 + 48))(v6, 1, v34) == 1)
    {
      sub_1AF7D48A0(v36, type metadata accessor for GraphScriptingConfig.ScriptInfo);
      sub_1AF7D4900(v6, v37, MEMORY[0x1E69695A8]);
    }

    else
    {
      v46 = MEMORY[0x1E69695A8];
      sub_1AF7D4900(v6, v37, MEMORY[0x1E69695A8]);
      v39 = v45;
      sub_1AFDFC308();
      sub_1AF7D48A0(v36, type metadata accessor for GraphScriptingConfig.ScriptInfo);
      (*(v38 + 56))(v39, 0, 1, v34);
      v40 = v39;
      v6 = v44;
      sub_1AF7D4BE0(v40, v35 + v53, v37, v46);
    }

    v1 = v37;
    v22 = v49;
    sub_1AF0D6D20(v35, v49, type metadata accessor for GraphScriptingConfig.ScriptInfo);
    *(v47 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v23 = v52;
    v24 = *(v52 + 48) + v57;
    v25 = v54;
    *v24 = v55;
    *(v24 + 4) = v25;
    sub_1AF0D6D20(v22, *(v23 + 56) + v56, type metadata accessor for GraphScriptingConfig.ScriptInfo);
    ++*(v23 + 16);
    v9 = v35;
    v14 = v48;
    v20 = v58;
  }

  v27 = v17 << 6;
  while (1)
  {
    v28 = v17 + 1;
    if (v17 + 1 >= v21)
    {
      break;
    }

    v29 = *(v15 + 8 * v17 + 72);
    v27 += 64;
    ++v17;
    if (v29)
    {
      v58 = (v29 - 1) & v29;
      v26 = __clz(__rbit64(v29)) + v27;
      v17 = v28;
      goto LABEL_12;
    }
  }

  *(v43 + 16) = v52;
  return result;
}

uint64_t sub_1AF7C4C58()
{
  sub_1AF7DB7D4(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  v2 = &type metadata for GraphScriptingConfig.Mode;
  sub_1AF7DB7D4(0, &qword_1EB63BD70, &type metadata for GraphScriptingConfig.Mode, type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF7DB79C;
  v3[5] = KeyPath;
  v3[2] = sub_1AF7DB7C8;
  v3[3] = KeyPath;
  v3[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v4 = swift_allocObject();
  *(v4 + 112) = 1;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 120) = 0;
  *(v4 + 160) = MEMORY[0x1E69E7CC0];
  *(v4 + 168) = 0;
  *(v4 + 216) = 0;
  *(v4 + 176) = 0;
  *(v4 + 16) = 1701080941;
  *(v4 + 24) = 0xE400000000000000;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = &type metadata for GraphScriptingConfig.Mode;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 58) = 0;
  *(v4 + 184) = 0;
  *(v4 + 188) = 1;
  *(v4 + 192) = 0;
  *(v4 + 196) = 1;
  *(v4 + 200) = 0x1000100000000;
  *(v4 + 208) = 1;
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 144) = xmmword_1AFE22A20;
  *(v4 + 80) = v3;
  *(v4 + 88) = &off_1F2535378;
  *(v4 + 210) = 0;
  v5 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v5)
  {
    v2 = (*(v5 + 8))();
  }

  v6 = swift_conformsToProtocol2();
  if (v6 && v2)
  {
    *(v4 + 160) = (*(v6 + 8))(v2, v6);
  }

  *(v4 + 64) = sub_1AF7DB824;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0, 0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  qword_1EB6C3208 = v0;
  return result;
}