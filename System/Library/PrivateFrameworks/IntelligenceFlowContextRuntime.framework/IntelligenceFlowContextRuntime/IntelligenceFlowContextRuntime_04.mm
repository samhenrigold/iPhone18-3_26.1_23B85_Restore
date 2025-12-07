uint64_t sub_254F0A948(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v59 = a2;
  v63 = a1;
  v6 = sub_254F28CA0();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v71 = (&v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v57 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v70 = &v57 - v14;
  result = MEMORY[0x28223BE20](v13);
  v62 = &v57 - v16;
  v17 = *(a3 + 16);
  v18 = *(a4 + 16);
  v74 = v7 + 16;
  v72 = a4;
  v73 = a3;
  v65 = v7;
  if (v18 >= v17)
  {
    v66 = 0;
    v39 = 0;
    v40 = *(a3 + 56);
    v62 = (a3 + 56);
    v41 = 1 << *(a3 + 32);
    if (v41 < 64)
    {
      v42 = ~(-1 << v41);
    }

    else
    {
      v42 = -1;
    }

    v43 = v42 & v40;
    v44 = (v41 + 63) >> 6;
    v69 = a4 + 56;
    v70 = (v7 + 8);
    v64 = v44;
LABEL_24:
    while (v43)
    {
      v45 = __clz(__rbit64(v43));
      v68 = ((v43 - 1) & v43);
LABEL_31:
      v48 = v45 | (v39 << 6);
      v49 = *(a3 + 48);
      v50 = *(v7 + 72);
      v67 = v48;
      v51 = *(v7 + 16);
      v51(v71, v49 + v50 * v48, v6);
      sub_254EBEC70(&qword_2814274A8, MEMORY[0x277D1D4B0], MEMORY[0x277D1D4B8]);
      v52 = sub_254F293F0();
      v53 = ~(-1 << *(a4 + 32));
      do
      {
        v54 = v52 & v53;
        if (((*(v69 + (((v52 & v53) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v52 & v53)) & 1) == 0)
        {
          result = (*v70)(v71, v6);
          a4 = v72;
          a3 = v73;
          v44 = v64;
          v7 = v65;
          v43 = v68;
          goto LABEL_24;
        }

        v51(v12, *(v72 + 48) + v54 * v50, v6);
        sub_254EBEC70(&qword_2814274A0, MEMORY[0x277D1D4B0], MEMORY[0x277D1D4C0]);
        v55 = sub_254F29410();
        v56 = *v70;
        (*v70)(v12, v6);
        v52 = v54 + 1;
      }

      while ((v55 & 1) == 0);
      result = v56(v71, v6);
      *(v63 + ((v67 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v67;
      v7 = v65;
      v38 = __OFADD__(v66++, 1);
      a4 = v72;
      a3 = v73;
      v44 = v64;
      v43 = v68;
      if (v38)
      {
        goto LABEL_42;
      }
    }

    v46 = v39;
    while (1)
    {
      v39 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        break;
      }

      if (v39 >= v44)
      {
LABEL_38:

        return sub_254F0B4EC(v63, v59, v66, a3);
      }

      v47 = *&v62[8 * v39];
      ++v46;
      if (v47)
      {
        v45 = __clz(__rbit64(v47));
        v68 = ((v47 - 1) & v47);
        goto LABEL_31;
      }
    }
  }

  else
  {
    v19 = 0;
    v20 = *(a4 + 56);
    v58 = a4 + 56;
    v21 = 1 << *(a4 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & v20;
    v24 = (v21 + 63) >> 6;
    v60 = v24;
    v61 = v7 + 32;
    v66 = 0;
    v67 = a3 + 56;
    v71 = (v7 + 8);
LABEL_6:
    while (v23)
    {
      v25 = __clz(__rbit64(v23));
      v64 = (v23 - 1) & v23;
LABEL_13:
      v28 = *(v7 + 72);
      v29 = *(a4 + 48) + v28 * (v25 | (v19 << 6));
      v30 = v62;
      v68 = *(v7 + 16);
      v69 = v28;
      v68(v62, v29, v6);
      (*(v7 + 32))(v70, v30, v6);
      sub_254EBEC70(&qword_2814274A8, MEMORY[0x277D1D4B0], MEMORY[0x277D1D4B8]);
      v31 = sub_254F293F0();
      v32 = ~(-1 << *(a3 + 32));
      do
      {
        v33 = v31 & v32;
        v34 = (v31 & v32) >> 6;
        v35 = 1 << (v31 & v32);
        if ((v35 & *(v67 + 8 * v34)) == 0)
        {
          result = (*v71)(v70, v6);
          a4 = v72;
          a3 = v73;
          v23 = v64;
          v7 = v65;
          v24 = v60;
          goto LABEL_6;
        }

        v68(v12, *(v73 + 48) + v33 * v69, v6);
        sub_254EBEC70(&qword_2814274A0, MEMORY[0x277D1D4B0], MEMORY[0x277D1D4C0]);
        v36 = sub_254F29410();
        v37 = *v71;
        (*v71)(v12, v6);
        v31 = v33 + 1;
      }

      while ((v36 & 1) == 0);
      result = v37(v70, v6);
      v23 = v64;
      v63[v34] |= v35;
      v7 = v65;
      v38 = __OFADD__(v66++, 1);
      a4 = v72;
      a3 = v73;
      v24 = v60;
      if (v38)
      {
        goto LABEL_41;
      }
    }

    v26 = v19;
    while (1)
    {
      v19 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v19 >= v24)
      {
        goto LABEL_38;
      }

      v27 = *(v58 + 8 * v19);
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v64 = (v27 - 1) & v27;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_254F0AFB0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_254F286E0();
  v8 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_254EC8BC0(&unk_27F75F580, &unk_254F2C840);
  result = sub_254F29920();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_254EBEC70(&qword_281427500, MEMORY[0x277D85578], MEMORY[0x277D85588]);
    result = sub_254F293F0();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_31;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_27:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_27;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_254F0B2D0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_254EC8BC0(&qword_27F75F4C8, &qword_254F2C790);
  result = sub_254F29920();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_254F29BC0();

    sub_254F294C0();
    result = sub_254F29C00();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_254F0B4EC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_254F28CA0();
  v8 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_254EC8BC0(&qword_27F75F5D0, &qword_254F2C798);
  result = sub_254F29920();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_254EBEC70(&qword_2814274A8, MEMORY[0x277D1D4B0], MEMORY[0x277D1D4B8]);
    result = sub_254F293F0();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_31;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_27:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_27;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

__n128 sub_254F0B80C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_254F0B820(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_254F0B860(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_254F0B8B0(uint64_t a1)
{
  v2 = sub_254EC8BC0(&qword_27F75F4D0, &unk_254F2C850);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_254F0B918(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    sub_254F059E0();
    if (v2)
    {
    }
  }
}

uint64_t sub_254F0B968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_254F057E4(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 16 * v4);

  return v6;
}

double sub_254F0B9C0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_254F05A90(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_254EC31F0(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

void sub_254F0BA24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    sub_254F057E4(a1, a2);
    if (v3)
    {
    }
  }
}

void *sub_254F0BA74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_254F057E4(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

double sub_254F0BABC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_254F057E4(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_254EC31F0(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_254F0BB20(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_254F05C7C(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 16 * v3);

  return v5;
}

uint64_t sub_254F0BB78(uint64_t a1, uint64_t a2)
{
  v2 = sub_254F29450();
  v4 = v3;
  if (v2 == sub_254F29450() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_254F29B10();
  }

  return v7 & 1;
}

id NSDataDetectorBasedEntityDetector.init(entityTypes:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_254F291E0();
  sub_254EB2CBC();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  sub_254EB2E04();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v31 - v12;
  sub_254F0BF08(a1);
  if (!v14)
  {
    sub_254F284B0();

    v21 = sub_254F291D0();
    v22 = sub_254F296E0();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v32 = a2;
      v24 = v23;
      v25 = swift_slowAlloc();
      v33 = v25;
      *v24 = 136315138;
      sub_254F28CA0();
      sub_254EBECB8(&qword_2814274A8, MEMORY[0x277D1D4B0], MEMORY[0x277D1D4B8]);
      v26 = sub_254F29680();
      v28 = v27;

      v29 = sub_254EC2D74(v26, v28, &v33);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_254EAE000, v21, v22, "NSDataDetectorBasedEntityDetector does not support %s", v24, 0xCu);
      sub_254EB2BBC(v25);
      MEMORY[0x259C2EB80](v25, -1, -1);
      v30 = v24;
      a2 = v32;
      MEMORY[0x259C2EB80](v30, -1, -1);
    }

    else
    {
    }

    (*(v6 + 8))(v10, v4);
LABEL_12:
    result = 0;
    goto LABEL_13;
  }

  v15 = v14;

  v16 = objc_allocWithZone(MEMORY[0x277CCA948]);
  result = sub_254F0C940(v15);
  if (!result)
  {
    sub_254F284B0();
    v18 = sub_254F291D0();
    v19 = sub_254F29700();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_254EAE000, v18, v19, "Failed to create NSDataDetector", v20, 2u);
      MEMORY[0x259C2EB80](v20, -1, -1);
    }

    (*(v6 + 8))(v13, v4);
    goto LABEL_12;
  }

LABEL_13:
  *a2 = result;
  return result;
}

void sub_254F0BF08(uint64_t a1)
{
  v2 = sub_254F28CA0();
  sub_254EB2CBC();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  sub_254EB2E04();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - v10;
  v12 = 1 << *(a1 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a1 + 56);
  v15 = (v12 + 63) >> 6;
  v28 = v4 + 32;
  v29 = v4 + 16;
  v27 = v4 + 88;
  v26 = *MEMORY[0x277D1D480];
  v16 = *MEMORY[0x277D1D470];
  v24 = *MEMORY[0x277D1D488];
  v25 = v16;
  v23 = *MEMORY[0x277D1D4A0];

  v22 = 0;
  v17 = 0;
  while (1)
  {
    v18 = v17;
    if (!v14)
    {
      break;
    }

LABEL_8:
    v19 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    (*(v4 + 16))(v11, *(a1 + 48) + *(v4 + 72) * (v19 | (v17 << 6)), v2);
    (*(v4 + 32))(v8, v11, v2);
    v20 = (*(v4 + 88))(v8, v2);
    if (v20 == v26)
    {
      v21 = 8;
      goto LABEL_17;
    }

    if (v20 == v25)
    {
      v21 = 2048;
      goto LABEL_17;
    }

    if (v20 == v24)
    {
      v21 = 32;
      goto LABEL_17;
    }

    if (v20 == v23)
    {
      v21 = 16;
LABEL_17:
      v22 |= v21;
    }

    else
    {
      (*(v4 + 8))(v8, v2);
    }
  }

  while (1)
  {
    v17 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v17 >= v15)
    {

      return;
    }

    v14 = *(a1 + 56 + 8 * v17);
    ++v18;
    if (v14)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

uint64_t NSDataDetectorBasedEntityDetector.supportedEntities.getter()
{
  sub_254EC8BC0(&unk_27F75F4F0, &unk_254F2AF70);
  v0 = sub_254F28CA0();
  sub_254EB2CBC();
  v2 = v1;
  v4 = *(v3 + 72);
  v5 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_254F2C870;
  v7 = v6 + v5;
  v8 = *(v2 + 104);
  v8(v7, *MEMORY[0x277D1D480], v0);
  v8(v7 + v4, *MEMORY[0x277D1D470], v0);
  v8(v7 + 2 * v4, *MEMORY[0x277D1D488], v0);
  v8(v7 + 3 * v4, *MEMORY[0x277D1D4A0], v0);

  return sub_254F08AB0(v6);
}

uint64_t NSDataDetectorBasedEntityDetector.detectEntities(text:appBundleId:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v8 = MEMORY[0x277D84F90];
  v6 = MEMORY[0x259C2E460]();
  sub_254EC0160(v5, a1, a2, &v8);
  objc_autoreleasePoolPop(v6);
  return v8;
}

uint64_t sub_254F0C35C@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  v6 = sub_254EC8BC0(&qword_27F75F4E8, "4:");
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v37 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v36 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v36 - v12;
  v14 = sub_254F277B0();
  v36 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - v18;
  v20 = objc_opt_self();
  v21 = sub_254F29420();
  v22 = [v20 processDateMatch:a1 originalString:v21];

  if (v22)
  {
    v23 = sub_254F293C0();

    v24 = sub_254F29450();
    sub_254F0BABC(v24, v25, v23, &v38);

    if (!v39)
    {

      sub_254EB306C(&v38, &qword_27F75EE68, &qword_254F2B4C0);
      sub_254EB2F04(v13, 1, 1, v14);
      goto LABEL_9;
    }

    v26 = swift_dynamicCast();
    sub_254EB2F04(v13, v26 ^ 1u, 1, v14);
    if (sub_254EB2F2C(v13, 1, v14) == 1)
    {

LABEL_9:
      sub_254EB306C(v13, &qword_27F75F4E8, "4:");
      v29 = sub_254F28710();
      return sub_254EB2F04(a4, 1, 1, v29);
    }

    v30 = v36;
    (*(v36 + 32))(v19, v13, v14);
    v31 = sub_254F29450();
    sub_254F0BABC(v31, v32, v23, &v38);

    if (v39)
    {
      v33 = swift_dynamicCast() ^ 1;
      v34 = v11;
    }

    else
    {
      sub_254EB306C(&v38, &qword_27F75EE68, &qword_254F2B4C0);
      v34 = v11;
      v33 = 1;
    }

    sub_254EB2F04(v34, v33, 1, v14);
    (*(v30 + 16))(v17, v19, v14);
    sub_254ED7AC0(v11, v37, &qword_27F75F4E8, "4:");
    sub_254F28700();
    (*(v30 + 8))(v19, v14);
    v35 = sub_254F28710();
    sub_254EB2F04(a4, 0, 1, v35);
    return sub_254EB306C(v11, &qword_27F75F4E8, "4:");
  }

  else
  {
    v27 = sub_254F28710();

    return sub_254EB2F04(a4, 1, 1, v27);
  }
}

uint64_t NSDataDetectorBasedEntityDetector.extractAddressComponents(from:)(void *a1)
{
  sub_254EB7FEC();
  sub_254F28B80();
  result = sub_254F0C9F4(a1);
  if (result)
  {
    v3 = result;
    sub_254F0BB20(*MEMORY[0x277CCA6D0], result);
    sub_254F28B90();
    sub_254F0BB20(*MEMORY[0x277CCA6C8], v3);
    sub_254F28BE0();
    sub_254F0BB20(*MEMORY[0x277CCA6D8], v3);
    sub_254F28B60();
    sub_254F0BB20(*MEMORY[0x277CCA6E8], v3);
    sub_254F28BB0();
    sub_254F0BB20(*MEMORY[0x277CCA6B0], v3);
    sub_254F28B70();
    sub_254F0BB20(*MEMORY[0x277CCA6E0], v3);
    sub_254F28BA0();
    sub_254F0BB20(*MEMORY[0x277CCA6F0], v3);
    sub_254F28BD0();
    sub_254F0BB20(*MEMORY[0x277CCA6B8], v3);

    return sub_254F28BC0();
  }

  return result;
}

id sub_254F0C940(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  v2 = [v1 initWithTypes:a1 error:v6];
  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_254F27870();

    swift_willThrow();
  }

  return v2;
}

uint64_t sub_254F0C9F4(void *a1)
{
  v1 = [a1 components];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for NSTextCheckingKey(0);
  sub_254EBECB8(&qword_27F75ECC0, type metadata accessor for NSTextCheckingKey, &unk_254F2AD6C);
  v3 = sub_254F293C0();

  return v3;
}

unint64_t sub_254F0CAA8()
{
  result = qword_281426070;
  if (!qword_281426070)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281426070);
  }

  return result;
}

uint64_t sub_254F0CAEC(void *a1)
{
  v1 = [a1 phoneNumber];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_254F29450();

  return v3;
}

uint64_t sub_254F0CB58(uint64_t a1)
{
  result = MEMORY[0x259C2DE00](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_254F0F3CC(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

void sub_254F0CC18()
{
  sub_254EC1A1C();
  sub_254EB7D88();
  sub_254F28050();
  sub_254EB2E7C();
  MEMORY[0x28223BE20](v3);
  sub_254EB8010();
  MEMORY[0x28223BE20](v4);
  sub_254EB3F30();
  sub_254EBED00(&qword_281427550, MEMORY[0x277D1EA20], MEMORY[0x277D1EA30]);
  v5 = sub_254EC1FC4();
  v6 = MEMORY[0x259C2DE00](v5, v0);
  sub_254EC1B18(v6);
  if (v1)
  {
    sub_254EB40FC();
    do
    {
      v7 = sub_254EC38FC();
      v2(v7);
      v8 = sub_254EC0D8C();
      sub_254F0F518(v8, v9);
      v10 = sub_254EB5758();
      v11(v10);
      sub_254EB9A04();
    }

    while (!v12);
  }

  else
  {
    sub_254EB4AA4();
  }

  sub_254F15B6C();
  sub_254EB4078();
}

void sub_254F0CD4C()
{
  sub_254EC1A1C();
  sub_254EB7D88();
  sub_254F28080();
  sub_254EB2E7C();
  MEMORY[0x28223BE20](v3);
  sub_254EB8010();
  MEMORY[0x28223BE20](v4);
  sub_254EB3F30();
  sub_254EC00C0();
  sub_254EBED00(v5, v6, MEMORY[0x277D1EB68]);
  v7 = sub_254EC1FC4();
  v8 = MEMORY[0x259C2DE00](v7, v0);
  sub_254EC1B18(v8);
  if (v1)
  {
    sub_254EB40FC();
    do
    {
      v9 = sub_254EC38FC();
      v2(v9);
      sub_254EC0D8C();
      sub_254F0F7E0();
      v10 = sub_254EB5758();
      v11(v10);
      sub_254EB9A04();
    }

    while (!v12);
  }

  else
  {
    sub_254EB4AA4();
  }

  sub_254F15B6C();
  sub_254EB4078();
}

void sub_254F0CE70()
{
  sub_254EC1A1C();
  sub_254EB7D88();
  sub_254F286E0();
  sub_254EB2E7C();
  MEMORY[0x28223BE20](v3);
  sub_254EB8010();
  MEMORY[0x28223BE20](v4);
  sub_254EB3F30();
  sub_254EBED00(&qword_281427500, MEMORY[0x277D85578], MEMORY[0x277D85588]);
  v5 = sub_254EC1FC4();
  v6 = MEMORY[0x259C2DE00](v5, v0);
  sub_254EC1B18(v6);
  if (v1)
  {
    sub_254EB40FC();
    do
    {
      v7 = sub_254EC38FC();
      v2(v7);
      v8 = sub_254EC0D8C();
      sub_254F0FD90(v8, v9);
      v10 = sub_254EB5758();
      v11(v10);
      sub_254EB9A04();
    }

    while (!v12);
  }

  else
  {
    sub_254EB4AA4();
  }

  sub_254F15B6C();
  sub_254EB4078();
}

uint64_t SiriEntityMatcherEntityDetector.supportedEntities.getter()
{
  sub_254EC8BC0(&unk_27F75F4F0, &unk_254F2AF70);
  sub_254EB7D88();
  v0 = sub_254F28CA0();
  sub_254EB2CBC();
  v2 = v1;
  v4 = *(v3 + 72);
  v5 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_254F2BA20;
  v7 = v6 + v5;
  v8 = *(v2 + 104);
  v8(v7, *MEMORY[0x277D1D4A0], v0);
  v8(v7 + v4, *MEMORY[0x277D1D498], v0);

  return sub_254F08AB0(v6);
}

Swift::Void __swiftcall SiriEntityMatcherEntityDetector.prewarm()()
{
  v1 = *(v0 + *(type metadata accessor for SiriEntityMatcherEntityDetector(0) + 20));

  [v1 prewarmIndex];
}

uint64_t SiriEntityMatcherEntityDetector.detectEntities(text:appBundleId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v38[3] = *MEMORY[0x277D85DE8];
  v38[0] = MEMORY[0x277D84F90];
  v9 = type metadata accessor for SiriEntityMatcherEntityDetector(0);
  v10 = *(v4 + *(v9 + 24));
  v11 = sub_254F29420();
  v12 = [v10 queryFromText_];

  sub_254EC8BC0(&qword_27F75F508, qword_254F2C920);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_254F2C910;
  v14 = objc_allocWithZone(MEMORY[0x277D55D18]);
  v15 = sub_254F0F318(0x4CDFu);
  if (v5)
  {

    *(v13 + 16) = 0;
  }

  else
  {
    *(v13 + 32) = v15;
    v16 = objc_allocWithZone(MEMORY[0x277D55D18]);
    *(v13 + 40) = sub_254F0F318(0x4CE1u);
    v17 = objc_allocWithZone(MEMORY[0x277D55D18]);
    *(v13 + 48) = sub_254F0F318(0x4CE0u);
    v18 = objc_allocWithZone(MEMORY[0x277D55D18]);
    *(v13 + 56) = sub_254F0F318(0x4CE3u);
    v37 = v13;
    if (sub_254F0D624(a3, a4))
    {
      v20 = MEMORY[0x277D84F90];
    }

    else
    {
      v21 = objc_allocWithZone(MEMORY[0x277D55D18]);
      sub_254F0F318(0x3D98u);
      MEMORY[0x259C2DCB0]();
      v20 = MEMORY[0x277D84F90];
      if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_254F29580();
      }

      sub_254F295B0();
      v13 = v37;
    }

    if (v13 >> 62)
    {
      goto LABEL_33;
    }

    sub_254F29B20();
    sub_254EC8BC0(&unk_27F75F570, &qword_254F2C938);
    if (swift_dynamicCastMetatype() || (v22 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
    {
    }

    else
    {
      v23 = (v13 & 0xFFFFFFFFFFFFFF8) + 32;
      while (1)
      {
        v38[1] = &unk_286729A00;
        v38[2] = &unk_28672B9B0;
        if (!swift_dynamicCastObjCProtocolConditional())
        {
          break;
        }

        v23 += 8;
        if (!--v22)
        {

          goto LABEL_19;
        }
      }

      v13 = v13 & 0xFFFFFFFFFFFFFF8 | 1;
LABEL_19:
      v20 = MEMORY[0x277D84F90];
    }

    while (1)
    {
      sub_254F157A0(v13, v12);
      v35 = 0;
      v36 = v20;
      v24 = [*(v6 + *(v9 + 20)) matchSpans:v12 error:&v35];
      v25 = v35;
      if (!v24)
      {
        break;
      }

      v26 = v24;
      sub_254EB48D8(0, &unk_281426078, 0x277D55D30);
      v27 = sub_254F29560();
      v28 = v25;

      v9 = sub_254EC5594(v27);
      for (i = 0; ; ++i)
      {
        if (v9 == i)
        {

          sub_254F0E21C();
          sub_254EEDA64(v33);

          return v38[0];
        }

        if ((v27 & 0xC000000000000001) != 0)
        {
          v30 = MEMORY[0x259C2E0D0](i, v27);
        }

        else
        {
          if (i >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_32;
          }

          v30 = *(v27 + 8 * i + 32);
        }

        v31 = v30;
        if (__OFADD__(i, 1))
        {
          break;
        }

        v20 = MEMORY[0x259C2E460]();
        sub_254F0D6EC(v31, v6, v38, &v36, &v35);
        objc_autoreleasePoolPop(v20);
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:

      sub_254EC8BC0(&unk_27F75F570, &qword_254F2C938);
      v34 = sub_254F29A90();
      swift_bridgeObjectRelease_n();
      v13 = v34;
    }

    v32 = v35;
    sub_254F27870();

    swift_willThrow();
  }
}

uint64_t sub_254F0D624(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = a1 == 0xD00000000000001BLL && 0x8000000254F2E460 == a2;
  if (v4 || (sub_254F29B10() & 1) != 0)
  {
    return 1;
  }

  if (a1 == 0xD000000000000015 && 0x8000000254F2E440 == a2)
  {
    return 1;
  }

  return sub_254F29B10();
}

uint64_t sub_254F0D6EC(void *a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t *a5)
{
  v114 = a5;
  v97 = a4;
  v108 = a3;
  v8 = type metadata accessor for SiriEntityMatcherEntityDetector(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v98 = &v97 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v109 = &v97 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v97 - v16;
  v18 = sub_254F291E0();
  v110 = *(v18 - 8);
  v111 = v18;
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v97 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v100 = &v97 - v23;
  MEMORY[0x28223BE20](v22);
  v99 = &v97 - v24;
  v25 = sub_254F28750();
  v106 = *(v25 - 8);
  v107 = v25;
  MEMORY[0x28223BE20](v25);
  v105 = &v97 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_254F28BF0();
  v103 = *(v27 - 8);
  v104 = v27;
  v28 = MEMORY[0x28223BE20](v27);
  v101 = &v97 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v102 = &v97 - v30;
  v31 = [a1 entityInfo];
  objc_opt_self();
  v32 = swift_dynamicCastObjCClass();
  if (!v32)
  {
    swift_unknownObjectRelease();
    v40 = sub_254F28280();
    sub_254EBED00(&qword_27F75F608, MEMORY[0x277D1EEE0], MEMORY[0x277D1EEE8]);
    v41 = swift_allocError();
    (*(*(v40 - 8) + 104))(v42, *MEMORY[0x277D1EED8], v40);
    result = swift_willThrow();
    *v114 = v41;
    return result;
  }

  v33 = v32;
  v112 = v31;
  v114 = v5;
  v34 = [v32 itemType];
  if ((sub_254EF3548(v34, *(a2 + *(v8 + 32))) & 1) == 0)
  {
    return swift_unknownObjectRelease();
  }

  if (v34 == 19668)
  {
    v44 = [v33 content];
    objc_opt_self();
    v45 = swift_dynamicCastObjCClass();

    if (!v45)
    {
      v68 = v100;
      sub_254F284B0();
      v69 = a2;
      v70 = v98;
      sub_254EB849C(v69, v98);
      v71 = sub_254F291D0();
      v72 = sub_254F296F0();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v113[0] = v74;
        *v73 = 136315138;
        sub_254EB849C(v70, v109);
        v75 = sub_254F29480();
        v77 = v76;
        sub_254EB78B8(v70);
        v78 = sub_254EC2D74(v75, v77, v113);

        *(v73 + 4) = v78;
        _os_log_impl(&dword_254EAE000, v71, v72, "%s SEMSpanMatchResult is a Contact match, but is unable to be casted to CCContactContent", v73, 0xCu);
        sub_254EB2BBC(v74);
        MEMORY[0x259C2EB80](v74, -1, -1);
        MEMORY[0x259C2EB80](v73, -1, -1);
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();

        sub_254EB78B8(v70);
      }

      return (*(v110 + 8))(v68, v111);
    }

    v46 = [a1 spanInfo];
    v47 = [v46 isApproximateMatch];

    if (!v47)
    {
      v48 = a1;
      v49 = v97;
      MEMORY[0x259C2DCB0]();
      sub_254F16D08(*((*v49 & 0xFFFFFFFFFFFFFF8) + 0x10));
      sub_254F295B0();
    }

    return swift_unknownObjectRelease();
  }

  if (v34 == 15757)
  {
    v35 = a2;
    v36 = [v33 content];
    objc_opt_self();
    v37 = swift_dynamicCastObjCClass();
    if (v37)
    {
      v38 = v37;
      sub_254F159D0(v37);
      v39 = [v38 address];
      if (v39)
      {
        sub_254EDD5A0(v39, &selRef_locality);
      }

      v79 = v102;
      v80 = [v38 address];
      if (v80)
      {
        sub_254EDD5A0(v80, &selRef_country);
      }

      sub_254F28B80();
      v81 = [v38 address];
      if (v81)
      {
        v82 = sub_254EDD5A0(v81, &selRef_thoroughfare);
        if (v83)
        {
          v84 = v82;
          v85 = v83;
          v86 = [v38 address];
          if (v86)
          {
            v87 = sub_254EDD5A0(v86, &selRef_subThoroughfare);
            if (v88)
            {
              v113[0] = v87;
              v113[1] = v88;
              MEMORY[0x259C2DC50](32, 0xE100000000000000);
              MEMORY[0x259C2DC50](v84, v85);
            }
          }

          sub_254F28BB0();
        }
      }

      v90 = v103;
      v89 = v104;
      (*(v103 + 16))(v101, v79, v104);
      v91 = v105;
      sub_254F287F0();
      v93 = v106;
      v92 = v107;
      (*(v106 + 104))(v91, *MEMORY[0x277D1D320], v107);
      v94 = v108;
      sub_254F16C48();
      v95 = *(*v94 + 16);
      sub_254F16CF0(v95);
      swift_unknownObjectRelease();

      (*(v90 + 8))(v79, v89);
      v96 = *v94;
      *(v96 + 16) = v95 + 1;
      return (*(v93 + 32))(v96 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v95, v91, v92);
    }

    else
    {

      v59 = v99;
      sub_254F284B0();
      sub_254EB849C(v35, v17);
      v60 = sub_254F291D0();
      v61 = sub_254F296F0();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v113[0] = v63;
        *v62 = 136315138;
        sub_254EB849C(v17, v109);
        v64 = sub_254F29480();
        v66 = v65;
        sub_254EB78B8(v17);
        v67 = sub_254EC2D74(v64, v66, v113);

        *(v62 + 4) = v67;
        _os_log_impl(&dword_254EAE000, v60, v61, "%s SEMSpanMatchResult is a SignificantLocation match, but is unable to be casted to CCSignificantLocationContent", v62, 0xCu);
        sub_254EB2BBC(v63);
        MEMORY[0x259C2EB80](v63, -1, -1);
        MEMORY[0x259C2EB80](v62, -1, -1);
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();

        sub_254EB78B8(v17);
      }

      return (*(v110 + 8))(v59, v111);
    }
  }

  else
  {
    sub_254F284B0();
    sub_254EB849C(a2, v11);
    swift_unknownObjectRetain_n();
    v50 = sub_254F291D0();
    v51 = sub_254F296F0();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v113[0] = v53;
      *v52 = 136315394;
      sub_254EB849C(v11, v109);
      v54 = sub_254F29480();
      v56 = v55;
      sub_254EB78B8(v11);
      v57 = sub_254EC2D74(v54, v56, v113);

      *(v52 + 4) = v57;
      *(v52 + 12) = 512;
      v58 = [v33 itemType];
      swift_unknownObjectRelease();
      *(v52 + 14) = v58;
      swift_unknownObjectRelease();
      _os_log_impl(&dword_254EAE000, v50, v51, "%s SEMSpanMatchResult has an item type %hu that cannot be converted. Skipping", v52, 0x10u);
      sub_254EB2BBC(v53);
      MEMORY[0x259C2EB80](v53, -1, -1);
      MEMORY[0x259C2EB80](v52, -1, -1);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease_n();
      sub_254EB78B8(v11);
    }

    return (*(v110 + 8))(v21, v111);
  }
}

void sub_254F0E21C()
{
  sub_254EC1A1C();
  v3 = v2;
  v48 = MEMORY[0x277D84F90];
  v4 = sub_254EC5594(v2);
  v5 = 0;
  v6 = 0;
  v7 = v3 & 0xC000000000000001;
  v8 = v3 + 32;
  while (v4 != v5)
  {
    sub_254EB862C();
    if (v7)
    {
      v9 = MEMORY[0x259C2E0D0](v5, v3);
    }

    else
    {
      v9 = *(v3 + 8 * v5 + 32);
    }

    v1 = v9;
    if (__OFADD__(v5, 1))
    {
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);

      __break(1u);
      return;
    }

    v47 = v9;
    sub_254F0E620(&v48, &v47);

    ++v5;
  }

  v38 = 0;
  v39 = v0;
  v6 = 0;
  v37 = v3;
  v10 = v48;
  v45 = v3 & 0xFFFFFFFFFFFFFF8;
  v46 = v48 + 32;
  v48 = MEMORY[0x277D84F90];
  v40 = v3 & 0xC000000000000001;
  v41 = v4;
  v42 = v3 + 32;
  while (v6 != v4)
  {
    if (v7)
    {
      v11 = MEMORY[0x259C2E0D0](v6, v37);
    }

    else
    {
      if (v6 >= *(v45 + 16))
      {
        goto LABEL_43;
      }

      v11 = *(v8 + 8 * v6);
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_42;
    }

    v1 = v11;
    v13 = [v11 spanInfo];
    v14 = [v13 isPartialMatch];

    if (v14)
    {
    }

    else
    {
      v43 = v1;
      v15 = [v1 fieldMatches];
      sub_254EB48D8(0, &qword_27F75F5D8, 0x277D55D28);
      v16 = sub_254F29560();

      v17 = sub_254EC5594(v16);
      v44 = v6;
      if (v17)
      {
        v18 = v17;
        v47 = MEMORY[0x277D84F90];
        sub_254ECA804(0, v17 & ~(v17 >> 63), 0);
        if (v18 < 0)
        {
          goto LABEL_44;
        }

        v19 = 0;
        v20 = v47;
        do
        {
          if ((v16 & 0xC000000000000001) != 0)
          {
            v21 = MEMORY[0x259C2E0D0](v19, v16);
          }

          else
          {
            v21 = *(v16 + 8 * v19 + 32);
          }

          v22 = v21;
          v23 = [v21 fieldSpanValue];
          v24 = sub_254F29450();
          v1 = v25;

          v47 = v20;
          v27 = v20[2];
          v26 = v20[3];
          if (v27 >= v26 >> 1)
          {
            sub_254ECA804(v26 > 1, v27 + 1, 1);
            v20 = v47;
          }

          ++v19;
          v20[2] = v27 + 1;
          v28 = &v20[2 * v27];
          v28[4] = v24;
          v28[5] = v1;
        }

        while (v18 != v19);

        v7 = v40;
        v4 = v41;
      }

      else
      {

        v20 = MEMORY[0x277D84F90];
      }

      v29 = sub_254F0CB58(v20);
      v30 = 0;
      v31 = *(v10 + 16);
      v6 = 1;
      v8 = v42;
      while (v31 != v30)
      {
        if (v30 >= *(v10 + 16))
        {
          __break(1u);
          goto LABEL_41;
        }

        if (*(v29 + 16) < *(*(v46 + 8 * v30) + 16))
        {

          sub_254F155E0(v32, v29);
          v1 = v33;

          if (v1)
          {
            v6 = 0;
          }
        }

        ++v30;
      }

      if (v6)
      {
        sub_254F299B0();
        sub_254F299E0();
        sub_254F299F0();
        sub_254F299C0();
      }

      else
      {
      }

      v6 = v44;
    }
  }

  v35 = v48;
  MEMORY[0x28223BE20](v34);
  v36[2] = v39;
  sub_254EF8210(sub_254F159B4, v36, v35);
  sub_254EB4AA4();

  sub_254F15B6C();
  sub_254EB4078();
}

void sub_254F0E620(uint64_t *a1, id *a2)
{
  v37 = *a2;
  v2 = [*a2 fieldMatches];
  sub_254EB48D8(0, &qword_27F75F5D8, 0x277D55D28);
  v3 = sub_254F29560();

  v4 = sub_254EC5594(v3);
  v5 = 0;
  v38 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v4 == v5)
    {

      sub_254EC8BC0(&qword_27F75F5F0, &qword_254F2C3D8);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_254F2BA20;
      *(v16 + 32) = 1289833695;
      sub_254EC8BC0(&qword_27F75F5F8, &qword_254F2C9E0);
      sub_254F15B08();
      v17 = sub_254F296B0();

      if ((v17 & 1) == 0)
      {
        return;
      }

      v18 = [v37 fieldMatches];
      v19 = sub_254F29560();

      v20 = sub_254EC5594(v19);
      if (v20)
      {
        v21 = v20;
        v39 = MEMORY[0x277D84F90];
        sub_254ECA804(0, v20 & ~(v20 >> 63), 0);
        if (v21 < 0)
        {
          goto LABEL_31;
        }

        v22 = 0;
        v23 = v39;
        do
        {
          if ((v19 & 0xC000000000000001) != 0)
          {
            v24 = MEMORY[0x259C2E0D0](v22, v19);
          }

          else
          {
            v24 = *(v19 + 8 * v22 + 32);
          }

          v25 = v24;
          v26 = [v24 fieldSpanValue];
          v27 = sub_254F29450();
          v29 = v28;

          v31 = *(v39 + 16);
          v30 = *(v39 + 24);
          if (v31 >= v30 >> 1)
          {
            sub_254ECA804(v30 > 1, v31 + 1, 1);
          }

          ++v22;
          *(v39 + 16) = v31 + 1;
          v32 = v39 + 16 * v31;
          *(v32 + 32) = v27;
          *(v32 + 40) = v29;
        }

        while (v21 != v22);
      }

      else
      {

        v23 = MEMORY[0x277D84F90];
      }

      v33 = sub_254F0CB58(v23);
      sub_254F16C60();
      v34 = *(*a1 + 16);
      sub_254F16D34(v34);
      v35 = *a1;
      *(v35 + 16) = v34 + 1;
      *(v35 + 8 * v34 + 32) = v33;
      *a1 = v35;
      return;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x259C2E0D0](v5, v3);
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_30;
      }

      v6 = *(v3 + 8 * v5 + 32);
    }

    v7 = v6;
    v8 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    v9 = [v6 entityFieldInfo];
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
      v11 = v10;
      swift_unknownObjectRetain();
      v12 = [v11 fieldType];
      swift_unknownObjectRelease_n();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_254EB8310();
        v38 = v14;
      }

      v13 = *(v38 + 16);
      if (v13 >= *(v38 + 24) >> 1)
      {
        sub_254EB8310();
        v38 = v15;
      }

      *(v38 + 16) = v13 + 1;
      *(v38 + 2 * v13 + 32) = v12;
      v5 = v8;
    }

    else
    {

      swift_unknownObjectRelease();
      ++v5;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

id sub_254F0EA2C@<X0>(id *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v68 = a3;
  v65 = type metadata accessor for SiriEntityMatcherEntityDetector(0);
  v5 = MEMORY[0x28223BE20](v65);
  v66 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v64 = &v61 - v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v61 - v9;
  v11 = sub_254F291E0();
  v69 = *(v11 - 8);
  v70 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v67 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v61 - v14;
  v16 = sub_254EC8BC0(&qword_27F75F5E0, &unk_254F2C9C0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v61 - v17;
  v75 = sub_254F287A0();
  v19 = *(v75 - 1);
  MEMORY[0x28223BE20](v75);
  v21 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = [*a1 entityInfo];
  objc_opt_self();
  v23 = swift_dynamicCastObjCClass();
  if (!v23)
  {
    swift_unknownObjectRelease();
LABEL_22:
    v49 = v67;
    sub_254F284B0();
    v50 = v66;
    sub_254EB849C(a2, v66);
    v51 = sub_254F291D0();
    v52 = sub_254F296F0();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v76 = v54;
      *v53 = 136315138;
      sub_254EB849C(v50, v64);
      v55 = sub_254F29480();
      v56 = v50;
      v58 = v57;
      sub_254EB78B8(v56);
      v59 = sub_254EC2D74(v55, v58, &v76);

      *(v53 + 4) = v59;
      _os_log_impl(&dword_254EAE000, v51, v52, "%s unable to get entityInfo and/or content from contact match.", v53, 0xCu);
      sub_254EB2BBC(v54);
      MEMORY[0x259C2EB80](v54, -1, -1);
      MEMORY[0x259C2EB80](v53, -1, -1);
    }

    else
    {

      sub_254EB78B8(v50);
    }

    (*(v69 + 8))(v49, v70);
    v60 = sub_254F28750();
    return sub_254EB2F04(v68, 1, 1, v60);
  }

  v24 = v23;
  v74 = v18;
  v61 = v21;
  v62 = v19;
  v63 = a2;
  v25 = [v23 content];
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    swift_unknownObjectRelease();

LABEL_21:
    a2 = v63;
    goto LABEL_22;
  }

  v26 = sub_254F15A34(v24);
  if (!v26)
  {
    sub_254F284B0();
    sub_254EB849C(v63, v10);
    v34 = sub_254F291D0();
    v35 = sub_254F296F0();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v75 = v22;
      v38 = v37;
      v76 = v37;
      *v36 = 136315138;
      sub_254EB849C(v10, v64);
      v39 = sub_254F29480();
      v74 = v25;
      v41 = v40;
      sub_254EB78B8(v10);
      v42 = sub_254EC2D74(v39, v41, &v76);

      *(v36 + 4) = v42;
      _os_log_impl(&dword_254EAE000, v34, v35, "%s SEMSpanMatchResult is a Contact match, but could not fetch meta contents", v36, 0xCu);
      sub_254EB2BBC(v38);
      MEMORY[0x259C2EB80](v38, -1, -1);
      MEMORY[0x259C2EB80](v36, -1, -1);

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
      sub_254EB78B8(v10);
    }

    (*(v69 + 8))(v15, v70);
    goto LABEL_21;
  }

  v27 = v26;
  result = sub_254EC5594(v26);
  v29 = 0;
  v72 = v27 & 0xC000000000000001;
  v73 = result;
  v71 = v27 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v73 == v29)
    {

      swift_unknownObjectRelease();

      goto LABEL_21;
    }

    if (v72)
    {
      result = MEMORY[0x259C2E0D0](v29, v27);
    }

    else
    {
      if (v29 >= *(v71 + 16))
      {
        goto LABEL_27;
      }

      result = *(v27 + 8 * v29 + 32);
    }

    v30 = result;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    v31 = v22;
    v32 = [result sourceItemIdentifier];
    sub_254F29450();

    sub_254F29730();

    v33 = v74;
    sub_254F28760();

    if (sub_254EB2F2C(v33, 1, v75) != 1)
    {

      swift_unknownObjectRelease();

      v43 = v61;
      v44 = *(v62 + 32);
      v45 = v75;
      v44(v61, v33, v75);
      v46 = v68;
      v44(v68, v43, v45);
      v47 = *MEMORY[0x277D1D318];
      v48 = sub_254F28750();
      (*(*(v48 - 8) + 104))(v46, v47, v48);
      return sub_254EB2F04(v46, 0, 1, v48);
    }

    result = sub_254F15AA0(v33);
    ++v29;
    v22 = v31;
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

id sub_254F0F1CC(uint64_t a1)
{
  v2 = v1;
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = sub_254F279A0();
  v13[0] = 0;
  v5 = [v2 initWithTokenizerLocale:v4 error:v13];

  v6 = v13[0];
  if (v5)
  {
    v7 = sub_254F279C0();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v13[0];
    sub_254F27870();

    swift_willThrow();
    v11 = sub_254F279C0();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  return v5;
}

id sub_254F0F318(unsigned __int16 a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  v2 = [v1 initWithFieldType:a1 error:v6];
  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_254F27870();

    swift_willThrow();
  }

  return v2;
}

BOOL sub_254F0F3CC(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_254F29BC0();
  sub_254F294C0();
  v8 = sub_254F29C00();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v10);
    v13 = *v12 == a2 && v12[1] == a3;
    if (v13 || (sub_254F29B10() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v10);
      v15 = v14[1];
      *a1 = *v14;
      a1[1] = v15;

      return v11 == 0;
    }

    v8 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;

  sub_254F12060(a2, a3, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

BOOL sub_254F0F518(char *a1, char *a2)
{
  v22 = a1;
  v4 = sub_254F28050();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v8 = *v2;
  sub_254EBED00(&qword_281427550, MEMORY[0x277D1EA20], MEMORY[0x277D1EA30]);
  v27 = a2;
  v9 = sub_254F293F0();
  v24 = v8;
  v25 = v8 + 56;
  v10 = ~(-1 << *(v8 + 32));
  v26 = v5 + 16;
  v23 = v5 + 8;
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v25 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      v17 = v21;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = v27;
      (*(v5 + 16))(v7, v27, v4);
      v28 = *v17;
      sub_254F121C8(v7, v11, isUniquelyReferenced_nonNull_native);
      *v17 = v28;
      (*(v5 + 32))(v22, v19, v4);
      return v12 == 0;
    }

    v13 = *(v5 + 72) * v11;
    v14 = *(v5 + 16);
    v14(v7, *(v24 + 48) + v13, v4);
    sub_254EBED00(&qword_281427548, MEMORY[0x277D1EA20], MEMORY[0x277D1EA38]);
    v15 = sub_254F29410();
    v16 = *(v5 + 8);
    v16(v7, v4);
    if (v15)
    {
      break;
    }

    v9 = v11 + 1;
  }

  v16(v27, v4);
  v14(v22, *(v24 + 48) + v13, v4);
  return v12 == 0;
}

void sub_254F0F7E0()
{
  sub_254EC1A1C();
  sub_254EB5B48(v3);
  sub_254F28080();
  sub_254EB2E7C();
  MEMORY[0x28223BE20](v4);
  sub_254EB6DD0();
  sub_254EC00C0();
  v7 = sub_254EBED00(v5, v6, MEMORY[0x277D1EB68]);
  sub_254EB4B70(v7);
  sub_254EB6C90();
  do
  {
    sub_254EB3D9C();
    if (v8)
    {
      sub_254EB80E8();
      v13 = sub_254EB51F0();
      v14(v13);
      v15 = sub_254EB6968();
      sub_254F12478(v15, v16, v17);
      v18 = sub_254EB642C();
      v19(v18);
      goto LABEL_7;
    }

    v9 = sub_254EB7AC4();
    v2(v9);
    sub_254EC00C0();
    v11 = sub_254EBED00(&qword_281427530, v10, MEMORY[0x277D1EB70]);
    sub_254EB9990(v11);
    v12 = sub_254EB49B4();
    v1(v12);
  }

  while ((v0 & 1) == 0);
  v20 = sub_254EB5C14();
  v1(v20);
  v21 = sub_254EB7E8C();
  v2(v21);
LABEL_7:
  sub_254EB4078();
}

void sub_254F0F94C()
{
  sub_254EC1A1C();
  sub_254EB5B48(v3);
  sub_254F28750();
  sub_254EB2E7C();
  MEMORY[0x28223BE20](v4);
  sub_254EB6DD0();
  sub_254EB3B08();
  v7 = sub_254EBED00(v5, v6, MEMORY[0x277D1D338]);
  sub_254EB4B70(v7);
  sub_254EB6C90();
  do
  {
    sub_254EB3D9C();
    if (v8)
    {
      sub_254EB80E8();
      v13 = sub_254EB51F0();
      v14(v13);
      v15 = sub_254EB6968();
      sub_254F12728(v15, v16, v17);
      v18 = sub_254EB642C();
      v19(v18);
      goto LABEL_7;
    }

    v9 = sub_254EB7AC4();
    v2(v9);
    sub_254EB3B08();
    v11 = sub_254EBED00(&qword_27F75F358, v10, MEMORY[0x277D1D340]);
    sub_254EB9990(v11);
    v12 = sub_254EB49B4();
    v1(v12);
  }

  while ((v0 & 1) == 0);
  v20 = sub_254EB5C14();
  v1(v20);
  v21 = sub_254EB7E8C();
  v2(v21);
LABEL_7:
  sub_254EB4078();
}

void sub_254F0FAB8()
{
  sub_254EC1A1C();
  sub_254EB5B48(v3);
  sub_254F28CE0();
  sub_254EB2E7C();
  MEMORY[0x28223BE20](v4);
  sub_254EB6DD0();
  sub_254EB814C();
  v7 = sub_254EBED00(v5, v6, MEMORY[0x277D1D4D0]);
  sub_254EB4B70(v7);
  sub_254EB6C90();
  do
  {
    sub_254EB3D9C();
    if (v8)
    {
      sub_254EB80E8();
      v13 = sub_254EB51F0();
      v14(v13);
      v15 = sub_254EB6968();
      sub_254F129D8(v15, v16, v17);
      v18 = sub_254EB642C();
      v19(v18);
      goto LABEL_7;
    }

    v9 = sub_254EB7AC4();
    v2(v9);
    sub_254EB814C();
    v11 = sub_254EBED00(&qword_281427490, v10, MEMORY[0x277D1D4D8]);
    sub_254EB9990(v11);
    v12 = sub_254EB49B4();
    v1(v12);
  }

  while ((v0 & 1) == 0);
  v20 = sub_254EB5C14();
  v1(v20);
  v21 = sub_254EB7E8C();
  v2(v21);
LABEL_7:
  sub_254EB4078();
}

void sub_254F0FC24()
{
  sub_254EC1A1C();
  sub_254EB5B48(v3);
  sub_254F27C10();
  sub_254EB2E7C();
  MEMORY[0x28223BE20](v4);
  sub_254EB6DD0();
  sub_254EC0124();
  v7 = sub_254EBED00(v5, v6, MEMORY[0x277D74510]);
  sub_254EB4B70(v7);
  sub_254EB6C90();
  do
  {
    sub_254EB3D9C();
    if (v8)
    {
      sub_254EB80E8();
      v13 = sub_254EB51F0();
      v14(v13);
      v15 = sub_254EB6968();
      sub_254F12C88(v15, v16, v17);
      v18 = sub_254EB642C();
      v19(v18);
      goto LABEL_7;
    }

    v9 = sub_254EB7AC4();
    v2(v9);
    sub_254EC0124();
    v11 = sub_254EBED00(&qword_27F75F598, v10, MEMORY[0x277D74520]);
    sub_254EB9990(v11);
    v12 = sub_254EB49B4();
    v1(v12);
  }

  while ((v0 & 1) == 0);
  v20 = sub_254EB5C14();
  v1(v20);
  v21 = sub_254EB7E8C();
  v2(v21);
LABEL_7:
  sub_254EB4078();
}

BOOL sub_254F0FD90(char *a1, char *a2)
{
  v22 = a1;
  v4 = sub_254F286E0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v8 = *v2;
  sub_254EBED00(&qword_281427500, MEMORY[0x277D85578], MEMORY[0x277D85588]);
  v27 = a2;
  v9 = sub_254F293F0();
  v24 = v8;
  v25 = v8 + 56;
  v10 = ~(-1 << *(v8 + 32));
  v26 = v5 + 16;
  v23 = v5 + 8;
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v25 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      v17 = v21;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = v27;
      (*(v5 + 16))(v7, v27, v4);
      v28 = *v17;
      sub_254F12F38(v7, v11, isUniquelyReferenced_nonNull_native);
      *v17 = v28;
      (*(v5 + 32))(v22, v19, v4);
      return v12 == 0;
    }

    v13 = *(v5 + 72) * v11;
    v14 = *(v5 + 16);
    v14(v7, *(v24 + 48) + v13, v4);
    sub_254EBED00(&qword_2814274F8, MEMORY[0x277D85578], MEMORY[0x277D85590]);
    v15 = sub_254F29410();
    v16 = *(v5 + 8);
    v16(v7, v4);
    if (v15)
    {
      break;
    }

    v9 = v11 + 1;
  }

  v16(v27, v4);
  v14(v22, *(v24 + 48) + v13, v4);
  return v12 == 0;
}

BOOL sub_254F10058(void *a1, void *a2)
{
  v4 = *v2;
  sub_254F29450();
  sub_254F29BC0();
  sub_254F294C0();
  v5 = sub_254F29C00();

  v6 = ~(-1 << *(v4 + 32));
  while (1)
  {
    v7 = v5 & v6;
    v8 = (1 << (v5 & v6)) & *(v4 + 56 + (((v5 & v6) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v8)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = *v20;
      v16 = a2;
      sub_254F131E8(v16, v7, isUniquelyReferenced_nonNull_native);
      *v20 = v22;
      *a1 = v16;
      return v8 == 0;
    }

    v9 = sub_254F29450();
    v11 = v10;
    if (v9 == sub_254F29450() && v11 == v12)
    {

      goto LABEL_12;
    }

    v14 = sub_254F29B10();

    if (v14)
    {
      break;
    }

    v5 = v7 + 1;
  }

LABEL_12:
  v17 = *(*(v4 + 48) + 8 * v7);
  *a1 = v17;
  v18 = v17;
  return v8 == 0;
}

uint64_t sub_254F101FC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_254EC8BC0(&qword_27F75F4C8, &qword_254F2C790);
  result = sub_254F29910();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_254F09B78(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_254F29BC0();
    sub_254F294C0();
    result = sub_254F29C00();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_254F10458(uint64_t a1)
{
  v2 = v1;
  v36 = sub_254F28CA0();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_254EC8BC0(&qword_27F75F5D0, &qword_254F2C798);
  result = sub_254F29910();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v2 = v7;
    return result;
  }

  v30 = v1;
  v31 = v5;
  v8 = 0;
  v9 = (v5 + 56);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 56);
  v13 = (v10 + 63) >> 6;
  v34 = v3 + 32;
  v14 = result + 56;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      sub_254F09B78(0, (v28 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = *(v5 + 48) + *(v3 + 72) * (v15 | (v8 << 6));
    v19 = *(v3 + 32);
    v32 = *(v3 + 72);
    v33 = v19;
    v19(v35, v18, v36);
    sub_254EBED00(&qword_2814274A8, MEMORY[0x277D1D4B0], MEMORY[0x277D1D4B8]);
    result = sub_254F293F0();
    v20 = -1 << *(v7 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = v33(*(v7 + 48) + v23 * v32, v35, v36);
    ++*(v7 + 16);
    v5 = v31;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v14 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_254F107B0(uint64_t a1)
{
  v2 = v1;
  v36 = sub_254F28050();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_254EC8BC0(&unk_27F75F5C0, &unk_254F2C9B0);
  result = sub_254F29910();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v2 = v7;
    return result;
  }

  v30 = v1;
  v31 = v5;
  v8 = 0;
  v9 = (v5 + 56);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 56);
  v13 = (v10 + 63) >> 6;
  v34 = v3 + 32;
  v14 = result + 56;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      sub_254F09B78(0, (v28 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = *(v5 + 48) + *(v3 + 72) * (v15 | (v8 << 6));
    v19 = *(v3 + 32);
    v32 = *(v3 + 72);
    v33 = v19;
    v19(v35, v18, v36);
    sub_254EBED00(&qword_281427550, MEMORY[0x277D1EA20], MEMORY[0x277D1EA30]);
    result = sub_254F293F0();
    v20 = -1 << *(v7 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = v33(*(v7 + 48) + v23 * v32, v35, v36);
    ++*(v7 + 16);
    v5 = v31;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v14 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_254F10B08(uint64_t a1)
{
  v2 = v1;
  v36 = sub_254F28080();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_254EC8BC0(&qword_27F75F5B8, &qword_254F2C9A8);
  result = sub_254F29910();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v2 = v7;
    return result;
  }

  v30 = v1;
  v31 = v5;
  v8 = 0;
  v9 = (v5 + 56);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 56);
  v13 = (v10 + 63) >> 6;
  v34 = v3 + 32;
  v14 = result + 56;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      sub_254F09B78(0, (v28 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = *(v5 + 48) + *(v3 + 72) * (v15 | (v8 << 6));
    v19 = *(v3 + 32);
    v32 = *(v3 + 72);
    v33 = v19;
    v19(v35, v18, v36);
    sub_254EBED00(&qword_281427538, MEMORY[0x277D1EB58], MEMORY[0x277D1EB68]);
    result = sub_254F293F0();
    v20 = -1 << *(v7 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = v33(*(v7 + 48) + v23 * v32, v35, v36);
    ++*(v7 + 16);
    v5 = v31;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v14 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_254F10E60(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_254EC8BC0(&qword_27F75F610, &qword_254F2C9E8);
  result = sub_254F29910();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v8 = (v3 + 56);
  v7 = *(v3 + 56);
  v9 = 1 << *(v3 + 32);
  v25 = v2;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v7;
  v12 = result + 56;
  if ((v10 & v7) == 0)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= ((v9 + 63) >> 6))
      {
        break;
      }

      v15 = v8[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    if (v9 >= 64)
    {
      sub_254F09B78(0, (v9 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v25;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + 2 * (v13 | (v6 << 6)));
    result = MEMORY[0x259C2E320](*(v5 + 40), v16, 2);
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v5 + 48) + 2 * v20) = v16;
    ++*(v5 + 16);
    if (!v11)
    {
      goto LABEL_7;
    }
  }

  v21 = 0;
  v22 = (63 - v17) >> 6;
  while (++v19 != v22 || (v21 & 1) == 0)
  {
    v23 = v19 == v22;
    if (v19 == v22)
    {
      v19 = 0;
    }

    v21 |= v23;
    v24 = *(v12 + 8 * v19);
    if (v24 != -1)
    {
      v20 = __clz(__rbit64(~v24)) + (v19 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_254F11088(uint64_t a1)
{
  v2 = v1;
  v36 = sub_254F28750();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_254EC8BC0(&qword_27F75F5B0, &qword_254F2C9A0);
  result = sub_254F29910();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v2 = v7;
    return result;
  }

  v30 = v1;
  v31 = v5;
  v8 = 0;
  v9 = (v5 + 56);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 56);
  v13 = (v10 + 63) >> 6;
  v34 = v3 + 32;
  v14 = result + 56;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      sub_254F09B78(0, (v28 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = *(v5 + 48) + *(v3 + 72) * (v15 | (v8 << 6));
    v19 = *(v3 + 32);
    v32 = *(v3 + 72);
    v33 = v19;
    v19(v35, v18, v36);
    sub_254EBED00(&qword_2814274F0, MEMORY[0x277D1D330], MEMORY[0x277D1D338]);
    result = sub_254F293F0();
    v20 = -1 << *(v7 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = v33(*(v7 + 48) + v23 * v32, v35, v36);
    ++*(v7 + 16);
    v5 = v31;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v14 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_254F113E0(uint64_t a1)
{
  v2 = v1;
  v36 = sub_254F28CE0();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_254EC8BC0(&qword_27F75F5A8, &qword_254F2C998);
  result = sub_254F29910();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v2 = v7;
    return result;
  }

  v30 = v1;
  v31 = v5;
  v8 = 0;
  v9 = (v5 + 56);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 56);
  v13 = (v10 + 63) >> 6;
  v34 = v3 + 32;
  v14 = result + 56;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      sub_254F09B78(0, (v28 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = *(v5 + 48) + *(v3 + 72) * (v15 | (v8 << 6));
    v19 = *(v3 + 32);
    v32 = *(v3 + 72);
    v33 = v19;
    v19(v35, v18, v36);
    sub_254EBED00(&qword_281427498, MEMORY[0x277D1D4C8], MEMORY[0x277D1D4D0]);
    result = sub_254F293F0();
    v20 = -1 << *(v7 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = v33(*(v7 + 48) + v23 * v32, v35, v36);
    ++*(v7 + 16);
    v5 = v31;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v14 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_254F11738(uint64_t a1)
{
  v2 = v1;
  v36 = sub_254F27C10();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_254EC8BC0(&qword_27F75F5A0, "4:");
  result = sub_254F29910();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v2 = v7;
    return result;
  }

  v30 = v1;
  v31 = v5;
  v8 = 0;
  v9 = (v5 + 56);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 56);
  v13 = (v10 + 63) >> 6;
  v34 = v3 + 32;
  v14 = result + 56;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      sub_254F09B78(0, (v28 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = *(v5 + 48) + *(v3 + 72) * (v15 | (v8 << 6));
    v19 = *(v3 + 32);
    v32 = *(v3 + 72);
    v33 = v19;
    v19(v35, v18, v36);
    sub_254EBED00(&qword_27F75F590, MEMORY[0x277D744F8], MEMORY[0x277D74510]);
    result = sub_254F293F0();
    v20 = -1 << *(v7 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = v33(*(v7 + 48) + v23 * v32, v35, v36);
    ++*(v7 + 16);
    v5 = v31;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v14 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_254F11A90(uint64_t a1)
{
  v2 = v1;
  v36 = sub_254F286E0();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_254EC8BC0(&unk_27F75F580, &unk_254F2C840);
  result = sub_254F29910();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v2 = v7;
    return result;
  }

  v30 = v1;
  v31 = v5;
  v8 = 0;
  v9 = (v5 + 56);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 56);
  v13 = (v10 + 63) >> 6;
  v34 = v3 + 32;
  v14 = result + 56;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      sub_254F09B78(0, (v28 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = *(v5 + 48) + *(v3 + 72) * (v15 | (v8 << 6));
    v19 = *(v3 + 32);
    v32 = *(v3 + 72);
    v33 = v19;
    v19(v35, v18, v36);
    sub_254EBED00(&qword_281427500, MEMORY[0x277D85578], MEMORY[0x277D85588]);
    result = sub_254F293F0();
    v20 = -1 << *(v7 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = v33(*(v7 + 48) + v23 * v32, v35, v36);
    ++*(v7 + 16);
    v5 = v31;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v14 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_254F11DE8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_254EC8BC0(&qword_27F75F618, qword_254F2C9F0);
  result = sub_254F29910();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v27 = v1;
  v28 = v3;
  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      sub_254F09B78(0, (v26 + 63) >> 6, v7);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v27;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
    sub_254F29450();
    sub_254F29BC0();
    sub_254F294C0();
    v17 = sub_254F29C00();

    v18 = -1 << *(v5 + 32);
    v19 = v17 & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      break;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v5 + 48) + 8 * v21) = v16;
    ++*(v5 + 16);
    v3 = v28;
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v22 = 0;
  v23 = (63 - v18) >> 6;
  while (++v20 != v23 || (v22 & 1) == 0)
  {
    v24 = v20 == v23;
    if (v20 == v23)
    {
      v20 = 0;
    }

    v22 |= v24;
    v25 = *(v12 + 8 * v20);
    if (v25 != -1)
    {
      v21 = __clz(__rbit64(~v25)) + (v20 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

void sub_254F12060(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_254F101FC(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_254F139AC(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_254F29BC0();
      sub_254F294C0();
      v16 = sub_254F29C00();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = v16 & v17;
        if (((*(v15 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == result && v18[1] == a2;
        if (v19 || (sub_254F29B10() & 1) != 0)
        {
          goto LABEL_19;
        }

        v16 = a3 + 1;
      }
    }

    sub_254F133B8();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = result;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    sub_254F29B40();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }
}

uint64_t sub_254F121C8(uint64_t a1, unint64_t a2, char a3)
{
  v22 = a1;
  v6 = sub_254F28050();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  if (v11 <= v10 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_254F107B0(v10 + 1);
      goto LABEL_8;
    }

    if (v11 <= v10)
    {
      sub_254F13EF8(v10 + 1);
LABEL_8:
      v21 = v3;
      v12 = *v3;
      sub_254EBED00(&qword_281427550, MEMORY[0x277D1EA20], MEMORY[0x277D1EA30]);
      v13 = sub_254F293F0();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v9, *(v12 + 48) + *(v7 + 72) * a2, v6);
        sub_254EBED00(&qword_281427548, MEMORY[0x277D1EA20], MEMORY[0x277D1EA38]);
        v15 = sub_254F29410();
        (*(v7 + 8))(v9, v6);
        if (v15)
        {
          goto LABEL_16;
        }

        v13 = a2 + 1;
      }

      v3 = v21;
      goto LABEL_13;
    }

    sub_254F13650();
  }

LABEL_13:
  v16 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v16 + 48) + *(v7 + 72) * a2, v22, v6);
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_16:
    result = sub_254F29B40();
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v20;
  }

  return result;
}

uint64_t sub_254F12478(uint64_t a1, unint64_t a2, char a3)
{
  v22 = a1;
  v6 = sub_254F28080();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  if (v11 <= v10 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_254F10B08(v10 + 1);
      goto LABEL_8;
    }

    if (v11 <= v10)
    {
      sub_254F14210(v10 + 1);
LABEL_8:
      v21 = v3;
      v12 = *v3;
      sub_254EBED00(&qword_281427538, MEMORY[0x277D1EB58], MEMORY[0x277D1EB68]);
      v13 = sub_254F293F0();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v9, *(v12 + 48) + *(v7 + 72) * a2, v6);
        sub_254EBED00(&qword_281427530, MEMORY[0x277D1EB58], MEMORY[0x277D1EB70]);
        v15 = sub_254F29410();
        (*(v7 + 8))(v9, v6);
        if (v15)
        {
          goto LABEL_16;
        }

        v13 = a2 + 1;
      }

      v3 = v21;
      goto LABEL_13;
    }

    sub_254F13650();
  }

LABEL_13:
  v16 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v16 + 48) + *(v7 + 72) * a2, v22, v6);
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_16:
    result = sub_254F29B40();
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v20;
  }

  return result;
}

uint64_t sub_254F12728(uint64_t a1, unint64_t a2, char a3)
{
  v22 = a1;
  v6 = sub_254F28750();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  if (v11 <= v10 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_254F11088(v10 + 1);
      goto LABEL_8;
    }

    if (v11 <= v10)
    {
      sub_254F14718(v10 + 1);
LABEL_8:
      v21 = v3;
      v12 = *v3;
      sub_254EBED00(&qword_2814274F0, MEMORY[0x277D1D330], MEMORY[0x277D1D338]);
      v13 = sub_254F293F0();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v9, *(v12 + 48) + *(v7 + 72) * a2, v6);
        sub_254EBED00(&qword_27F75F358, MEMORY[0x277D1D330], MEMORY[0x277D1D340]);
        v15 = sub_254F29410();
        (*(v7 + 8))(v9, v6);
        if (v15)
        {
          goto LABEL_16;
        }

        v13 = a2 + 1;
      }

      v3 = v21;
      goto LABEL_13;
    }

    sub_254F13650();
  }

LABEL_13:
  v16 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v16 + 48) + *(v7 + 72) * a2, v22, v6);
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_16:
    result = sub_254F29B40();
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v20;
  }

  return result;
}

uint64_t sub_254F129D8(uint64_t a1, unint64_t a2, char a3)
{
  v22 = a1;
  v6 = sub_254F28CE0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  if (v11 <= v10 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_254F113E0(v10 + 1);
      goto LABEL_8;
    }

    if (v11 <= v10)
    {
      sub_254F14A30(v10 + 1);
LABEL_8:
      v21 = v3;
      v12 = *v3;
      sub_254EBED00(&qword_281427498, MEMORY[0x277D1D4C8], MEMORY[0x277D1D4D0]);
      v13 = sub_254F293F0();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v9, *(v12 + 48) + *(v7 + 72) * a2, v6);
        sub_254EBED00(&qword_281427490, MEMORY[0x277D1D4C8], MEMORY[0x277D1D4D8]);
        v15 = sub_254F29410();
        (*(v7 + 8))(v9, v6);
        if (v15)
        {
          goto LABEL_16;
        }

        v13 = a2 + 1;
      }

      v3 = v21;
      goto LABEL_13;
    }

    sub_254F13650();
  }

LABEL_13:
  v16 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v16 + 48) + *(v7 + 72) * a2, v22, v6);
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_16:
    result = sub_254F29B40();
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v20;
  }

  return result;
}

uint64_t sub_254F12C88(uint64_t a1, unint64_t a2, char a3)
{
  v22 = a1;
  v6 = sub_254F27C10();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  if (v11 <= v10 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_254F11738(v10 + 1);
      goto LABEL_8;
    }

    if (v11 <= v10)
    {
      sub_254F14D48(v10 + 1);
LABEL_8:
      v21 = v3;
      v12 = *v3;
      sub_254EBED00(&qword_27F75F590, MEMORY[0x277D744F8], MEMORY[0x277D74510]);
      v13 = sub_254F293F0();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v9, *(v12 + 48) + *(v7 + 72) * a2, v6);
        sub_254EBED00(&qword_27F75F598, MEMORY[0x277D744F8], MEMORY[0x277D74520]);
        v15 = sub_254F29410();
        (*(v7 + 8))(v9, v6);
        if (v15)
        {
          goto LABEL_16;
        }

        v13 = a2 + 1;
      }

      v3 = v21;
      goto LABEL_13;
    }

    sub_254F13650();
  }

LABEL_13:
  v16 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v16 + 48) + *(v7 + 72) * a2, v22, v6);
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_16:
    result = sub_254F29B40();
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v20;
  }

  return result;
}

uint64_t sub_254F12F38(uint64_t a1, unint64_t a2, char a3)
{
  v22 = a1;
  v6 = sub_254F286E0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  if (v11 <= v10 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_254F11A90(v10 + 1);
      goto LABEL_8;
    }

    if (v11 <= v10)
    {
      sub_254F15060(v10 + 1);
LABEL_8:
      v21 = v3;
      v12 = *v3;
      sub_254EBED00(&qword_281427500, MEMORY[0x277D85578], MEMORY[0x277D85588]);
      v13 = sub_254F293F0();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v9, *(v12 + 48) + *(v7 + 72) * a2, v6);
        sub_254EBED00(&qword_2814274F8, MEMORY[0x277D85578], MEMORY[0x277D85590]);
        v15 = sub_254F29410();
        (*(v7 + 8))(v9, v6);
        if (v15)
        {
          goto LABEL_16;
        }

        v13 = a2 + 1;
      }

      v3 = v21;
      goto LABEL_13;
    }

    sub_254F13650();
  }

LABEL_13:
  v16 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v16 + 48) + *(v7 + 72) * a2, v22, v6);
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_16:
    result = sub_254F29B40();
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v20;
  }

  return result;
}

uint64_t sub_254F131E8(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_254F11DE8(v7 + 1);
      goto LABEL_10;
    }

    if (v8 <= v7)
    {
      sub_254F15378(v7 + 1);
LABEL_10:
      v13 = *v3;
      sub_254F29450();
      sub_254F29BC0();
      sub_254F294C0();
      v14 = sub_254F29C00();

      v15 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v14 & v15;
        if (((*(v13 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          goto LABEL_7;
        }

        type metadata accessor for NLTagScheme(0);
        v16 = sub_254F29450();
        v18 = v17;
        if (v16 == sub_254F29450() && v18 == v19)
        {
          goto LABEL_19;
        }

        v21 = sub_254F29B10();

        if (v21)
        {
          goto LABEL_20;
        }

        v14 = a2 + 1;
      }
    }

    result = sub_254F1385C();
  }

LABEL_7:
  v9 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v9 + 48) + 8 * a2) = v6;
  v10 = *(v9 + 16);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
LABEL_19:

LABEL_20:
    result = sub_254F29B40();
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v12;
  }

  return result;
}

void sub_254F133B8()
{
  v1 = v0;
  sub_254EC8BC0(&qword_27F75F4C8, &qword_254F2C790);
  v2 = *v0;
  v3 = sub_254F29900();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void *sub_254F13510()
{
  v1 = v0;
  sub_254EC8BC0(&qword_27F75F610, &qword_254F2C9E8);
  v2 = *v0;
  v3 = sub_254F29900();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 2 * v14) = *(*(v2 + 48) + 2 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void sub_254F13650()
{
  sub_254EC1A1C();
  v3 = v2;
  v5 = v4;
  v6 = v0;
  v7(0);
  sub_254EB2E7C();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  sub_254EC8BC0(v5, v3);
  v13 = *v0;
  v14 = sub_254F29900();
  v15 = v14;
  if (*(v13 + 16))
  {
    v29 = v6;
    v16 = (v14 + 56);
    v17 = ((1 << *(v15 + 32)) + 63) >> 6;
    if (v15 != v13 || v16 >= v13 + 56 + 8 * v17)
    {
      memmove(v16, (v13 + 56), 8 * v17);
    }

    v19 = 0;
    *(v15 + 16) = *(v13 + 16);
    v20 = 1 << *(v13 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(v13 + 56);
    v23 = (v20 + 63) >> 6;
    v30 = v9 + 32;
    v31 = v9 + 16;
    while (v22)
    {
      sub_254EB82E4();
LABEL_17:
      v27 = *(v9 + 72) * (v24 | (v19 << 6));
      (*(v9 + 16))(v12, *(v13 + 48) + v27, v1);
      (*(v9 + 32))(*(v15 + 48) + v27, v12, v1);
    }

    v25 = v19;
    while (1)
    {
      v19 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v19 >= v23)
      {

        v6 = v29;
        goto LABEL_21;
      }

      v26 = *(v13 + 56 + 8 * v19);
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v22 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v15;
    sub_254EB4078();
  }
}

id sub_254F1385C()
{
  v1 = v0;
  sub_254EC8BC0(&qword_27F75F618, qword_254F2C9F0);
  v2 = *v0;
  v3 = sub_254F29900();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_254F139AC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_254EC8BC0(&qword_27F75F4C8, &qword_254F2C790);
  result = sub_254F29910();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        sub_254F29BC0();

        sub_254F294C0();
        result = sub_254F29C00();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_254F13BE0(uint64_t a1)
{
  v2 = v1;
  v33 = sub_254F28CA0();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_254EC8BC0(&qword_27F75F5D0, &qword_254F2C798);
  v7 = sub_254F29910();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        sub_254EBED00(&qword_2814274A8, MEMORY[0x277D1D4B0], MEMORY[0x277D1D4B8]);
        result = sub_254F293F0();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v9;
      while (1)
      {
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_254F13EF8(uint64_t a1)
{
  v2 = v1;
  v33 = sub_254F28050();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_254EC8BC0(&unk_27F75F5C0, &unk_254F2C9B0);
  v7 = sub_254F29910();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        sub_254EBED00(&qword_281427550, MEMORY[0x277D1EA20], MEMORY[0x277D1EA30]);
        result = sub_254F293F0();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v9;
      while (1)
      {
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_254F14210(uint64_t a1)
{
  v2 = v1;
  v33 = sub_254F28080();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_254EC8BC0(&qword_27F75F5B8, &qword_254F2C9A8);
  v7 = sub_254F29910();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        sub_254EBED00(&qword_281427538, MEMORY[0x277D1EB58], MEMORY[0x277D1EB68]);
        result = sub_254F293F0();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v9;
      while (1)
      {
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_254F14528(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_254EC8BC0(&qword_27F75F610, &qword_254F2C9E8);
  result = sub_254F29910();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + 2 * (v12 | (v6 << 6)));
        result = MEMORY[0x259C2E320](*(v5 + 40), v15, 2);
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v5 + 48) + 2 * v19) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {
          goto LABEL_23;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_23:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_254F14718(uint64_t a1)
{
  v2 = v1;
  v33 = sub_254F28750();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_254EC8BC0(&qword_27F75F5B0, &qword_254F2C9A0);
  v7 = sub_254F29910();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        sub_254EBED00(&qword_2814274F0, MEMORY[0x277D1D330], MEMORY[0x277D1D338]);
        result = sub_254F293F0();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v9;
      while (1)
      {
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_254F14A30(uint64_t a1)
{
  v2 = v1;
  v33 = sub_254F28CE0();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_254EC8BC0(&qword_27F75F5A8, &qword_254F2C998);
  v7 = sub_254F29910();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        sub_254EBED00(&qword_281427498, MEMORY[0x277D1D4C8], MEMORY[0x277D1D4D0]);
        result = sub_254F293F0();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v9;
      while (1)
      {
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_254F14D48(uint64_t a1)
{
  v2 = v1;
  v33 = sub_254F27C10();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_254EC8BC0(&qword_27F75F5A0, "4:");
  v7 = sub_254F29910();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        sub_254EBED00(&qword_27F75F590, MEMORY[0x277D744F8], MEMORY[0x277D74510]);
        result = sub_254F293F0();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v9;
      while (1)
      {
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_254F15060(uint64_t a1)
{
  v2 = v1;
  v33 = sub_254F286E0();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_254EC8BC0(&unk_27F75F580, &unk_254F2C840);
  v7 = sub_254F29910();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        sub_254EBED00(&qword_281427500, MEMORY[0x277D85578], MEMORY[0x277D85588]);
        result = sub_254F293F0();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v9;
      while (1)
      {
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_254F15378(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_254EC8BC0(&qword_27F75F618, qword_254F2C9F0);
  result = sub_254F29910();
  v5 = result;
  if (*(v3 + 16))
  {
    v27 = v1;
    v28 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_12:
        v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
        sub_254F29450();
        sub_254F29BC0();
        v17 = v16;
        sub_254F294C0();
        v18 = sub_254F29C00();

        v19 = -1 << *(v5 + 32);
        v20 = v18 & ~v19;
        v21 = v20 >> 6;
        if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
        {
          break;
        }

        v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        *(*(v5 + 48) + 8 * v22) = v17;
        ++*(v5 + 16);
        v3 = v28;
        if (!v10)
        {
          goto LABEL_7;
        }
      }

      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v14 = v6;
      while (1)
      {
        v6 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v6 >= v11)
        {

          v2 = v27;
          goto LABEL_25;
        }

        v15 = *(v7 + 8 * v6);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_254F155C8(uint64_t a1, unsigned __int8 a2)
{
  if (a2 - 1 <= 1)
  {
  }

  return result;
}

void sub_254F155E0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) >= *(a2 + 16))
  {
    v2 = a2;
    v4 = a2 + 56;
    v5 = 1 << *(a2 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    v9 = a1 + 56;

    v10 = 0;
    v22 = v2;
    if (v7)
    {
      goto LABEL_10;
    }

    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v8)
      {
        goto LABEL_22;
      }

      v7 = *(v4 + 8 * v11);
      ++v10;
      if (v7)
      {
        v10 = v11;
LABEL_10:
        while (2)
        {
          if (!*(a1 + 16))
          {
LABEL_22:

            return;
          }

          v12 = __clz(__rbit64(v7));
          v7 &= v7 - 1;
          v13 = (*(v2 + 48) + ((v10 << 10) | (16 * v12)));
          v15 = *v13;
          v14 = v13[1];
          sub_254F29BC0();

          sub_254F294C0();
          v16 = sub_254F29C00();
          v17 = ~(-1 << *(a1 + 32));
          do
          {
            v18 = v16 & v17;
            if (((*(v9 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
            {

              return;
            }

            v19 = (*(a1 + 48) + 16 * v18);
            if (*v19 == v15 && v19[1] == v14)
            {
              break;
            }

            v21 = sub_254F29B10();
            v16 = v18 + 1;
          }

          while ((v21 & 1) == 0);

          v2 = v22;
          if (v7)
          {
            continue;
          }

          break;
        }
      }
    }

    __break(1u);
  }
}

void sub_254F157A0(uint64_t a1, void *a2)
{
  sub_254EC8BC0(&unk_27F75F570, &qword_254F2C938);
  v3 = sub_254F29550();

  [a2 setEntityFilters_];
}

void sub_254F15820(uint64_t a1)
{
  sub_254F28270();
  if (v1 <= 0x3F)
  {
    sub_254EB48D8(319, &qword_2814260D8, 0x277D55D38);
    if (v2 <= 0x3F)
    {
      sub_254EB48D8(319, &qword_2814260F0, 0x277D55D40);
      if (v3 <= 0x3F)
      {
        sub_254F1590C();
        if (v4 <= 0x3F)
        {
          sub_254F1595C();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_254F1590C()
{
  if (!qword_281426118)
  {
    v0 = sub_254F29810();
    if (!v1)
    {
      atomic_store(v0, &qword_281426118);
    }
  }
}

void sub_254F1595C()
{
  if (!qword_281426120)
  {
    v0 = sub_254F296A0();
    if (!v1)
    {
      atomic_store(v0, &qword_281426120);
    }
  }
}

uint64_t sub_254F159D0(void *a1)
{
  v1 = [a1 preferredName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_254F29450();

  return v3;
}

uint64_t sub_254F15A34(void *a1)
{
  v1 = [a1 allMetaContent];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_254EC8BC0(&qword_27F75F5E8, &unk_254F2C9D0);
  v3 = sub_254F29560();

  return v3;
}

uint64_t sub_254F15AA0(uint64_t a1)
{
  v2 = sub_254EC8BC0(&qword_27F75F5E0, &unk_254F2C9C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_254F15B08()
{
  result = qword_27F75F600;
  if (!qword_27F75F600)
  {
    sub_254EDEFE4(&qword_27F75F5F8, &qword_254F2C9E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F75F600);
  }

  return result;
}

uint64_t TextEntityDetectorProtocol.detectEntitiesWithLogging(text:appBundleId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v51 = a6;
  v52 = a5;
  v49 = a3;
  v50 = a4;
  v54 = a1;
  v55 = a2;
  v60 = sub_254F29A20();
  sub_254EB2CBC();
  v59 = v6;
  MEMORY[0x28223BE20](v7);
  sub_254EB3AB8();
  v56 = v9 - v8;
  sub_254F29A40();
  sub_254EB2CBC();
  v57 = v11;
  v58 = v10;
  MEMORY[0x28223BE20](v10);
  sub_254EB3AB8();
  v53 = v13 - v12;
  v14 = sub_254F29140();
  sub_254EB2CBC();
  v16 = v15;
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v46 - v21;
  v23 = sub_254F29170();
  sub_254EB2CBC();
  v25 = v24;
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v46 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = &v46 - v30;
  sub_254F280C0();
  sub_254F280C0();
  sub_254F29160();
  sub_254F29120();
  v47 = *(v25 + 8);
  v48 = v23;
  v47(v29, v23);
  v32 = sub_254F29160();
  v33 = sub_254F297A0();
  if (sub_254F29800())
  {
    v34 = swift_slowAlloc();
    v46 = v14;
    v35 = v34;
    *v34 = 0;
    v36 = sub_254F29130();
    _os_signpost_emit_with_name_impl(&dword_254EAE000, v32, v33, v36, "UIContext.TextEntityDetector", "", v35, 2u);
    v37 = v35;
    v14 = v46;
    MEMORY[0x259C2EB80](v37, -1, -1);
  }

  (*(v16 + 16))(v20, v22, v14);
  sub_254F291B0();
  swift_allocObject();
  v38 = sub_254F291A0();
  (*(v16 + 8))(v22, v14);
  v47(v31, v48);
  v39 = v53;
  sub_254F29A30();
  v40 = v56;
  sub_254F29A00();
  v42 = v54;
  v41 = v55;
  v43 = v52;
  v44 = (*(v51 + 16))(v54, v55, v49, v50, v52, v51);
  sub_254F15FF0("UIContext.TextEntityDetector", 28, 2, v38, v42, v41, v40, v39, v43);

  (*(v59 + 8))(v40, v60);
  (*(v57 + 8))(v39, v58);
  return v44;
}

uint64_t sub_254F15FF0(const char *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v66 = sub_254F29A20();
  sub_254EB2CBC();
  v65 = v9;
  MEMORY[0x28223BE20](v10);
  sub_254EB3AB8();
  v64 = v12 - v11;
  v60 = sub_254F29180();
  sub_254EB2CBC();
  v59 = v13;
  MEMORY[0x28223BE20](v14);
  sub_254EB3AB8();
  v17 = v16 - v15;
  v18 = sub_254F29140();
  sub_254EB2CBC();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  sub_254EB3AB8();
  v24 = v23 - v22;
  v25 = sub_254F29170();
  sub_254EB2CBC();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  sub_254EB3AB8();
  v31 = v30 - v29;
  sub_254F280C0();
  v32 = sub_254F29160();
  sub_254F29190();
  v61 = sub_254F29790();
  result = sub_254F29800();
  if ((result & 1) == 0)
  {

    (*(v20 + 8))(v24, v18);
    (*(v27 + 8))(v31, v25);
    v36 = a9;
LABEL_14:
    type metadata accessor for Analytics();
    sub_254EC8BC0(&qword_27F75EFA8, &qword_254F2BA60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_254F2B4D0;
    *(inited + 32) = 0xD000000000000012;
    *(inited + 40) = 0x8000000254F2E2F0;
    *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    *(inited + 56) = 0xD000000000000013;
    *(inited + 64) = 0x8000000254F2E310;
    sub_254EB48D8(0, &qword_281426030, 0x277CCACA8);
    v69 = v36;
    swift_getMetatypeMetadata();
    v49 = sub_254F29480();
    *(inited + 72) = sub_254EF3180(v49, v50);
    *(inited + 80) = 0x79636E6574616CLL;
    *(inited + 88) = 0xE700000000000000;
    sub_254F29A00();
    sub_254F29A10();
    (*(v65 + 8))(v64, v66);
    v51 = sub_254F29C10();
    v53 = v51 * 1000.0 + v52 * 1.0e-15;
    v54 = objc_allocWithZone(MEMORY[0x277CCABB0]);
    *&v55 = v53;
    *(inited + 96) = [v54 initWithFloat_];
    sub_254EB48D8(0, &qword_281426038, 0x277D82BB8);
    v56 = sub_254F293D0();
    static Analytics.sendEventForProduction(eventName:prefix:eventPayload:)(0x6544797469746E45, 0xEF6E6F6974636574, 0, 0, v56);
  }

  v57 = v25;
  v58 = v18;
  if ((a3 & 1) == 0)
  {
    if (a1)
    {
      v34 = v20;
      v35 = v27;
LABEL_10:

      sub_254F291C0();

      v37 = v32;
      if ((*(v59 + 88))(v17, v60) == *MEMORY[0x277D85B00])
      {
        v38 = 0;
        v63 = "[Error] Interval already ended";
      }

      else
      {
        (*(v59 + 8))(v17, v60);
        v63 = "EntityDetector=%{signpost.telemetry:string1,public}s %s";
        v38 = 2;
      }

      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v69 = v40;
      *v39 = v38;
      *(v39 + 1) = v38;
      *(v39 + 2) = 2082;
      v36 = a9;
      swift_getMetatypeMetadata();
      v41 = sub_254F29480();
      v43 = sub_254EC2D74(v41, v42, &v69);

      *(v39 + 4) = v43;
      *(v39 + 12) = 2080;
      sub_254F280B0();
      v44 = sub_254F29950();
      v46 = sub_254EC2D74(v44, v45, &v69);

      *(v39 + 14) = v46;
      v47 = sub_254F29130();
      _os_signpost_emit_with_name_impl(&dword_254EAE000, v37, v61, v47, a1, v63, v39, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C2EB80](v40, -1, -1);
      MEMORY[0x259C2EB80](v39, -1, -1);

      (*(v34 + 8))(v24, v58);
      (*(v35 + 8))(v31, v57);
      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_16;
  }

  if (a1 >> 32)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      v34 = v20;
      v35 = v27;
      a1 = &v68;
      goto LABEL_10;
    }

    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_254F16790(uint64_t a1)
{
  v2 = sub_254F28CE0();
  sub_254EB2CBC();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  sub_254EB2E04();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = v20 - v10;
  v12 = *(a1 + 16);
  if (v12)
  {
    v15 = *(v4 + 16);
    v13 = v4 + 16;
    v14 = v15;
    v16 = (*(v13 + 64) + 32) & ~*(v13 + 64);
    v20[1] = a1;
    v17 = a1 + v16;
    v18 = *(v13 + 56);
    do
    {
      v14(v8, v17, v2);
      sub_254F0FAB8();
      (*(v13 - 8))(v11, v2);
      v17 += v18;
      --v12;
    }

    while (v12);

    sub_254EB4078();
  }

  else
  {
    sub_254EB4078();
  }
}

uint64_t UIEntityDetector.__allocating_init(entityTypes:)(uint64_t a1)
{
  v2 = swift_allocObject();
  UIEntityDetector.init(entityTypes:)(a1);
  return v2;
}

double sub_254F16938()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_254F16970()
{
  v1 = MEMORY[0x277D84FA0];
  v12 = MEMORY[0x277D84FA0];
  swift_beginAccess();
  v2 = *(v0 + 16);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 32;

    do
    {
      sub_254EB5C9C(v4, v9);
      v5 = v10;
      v6 = v11;
      sub_254EB5A9C(v9, v10);
      v7 = (*(v6 + 8))(v5, v6);
      sub_254EB2BBC(v9);
      sub_254EBEFEC(v7, MEMORY[0x277D1D4B0], sub_254EC3930);
      v4 += 40;
      --v3;
    }

    while (v3);

    return v12;
  }

  return v1;
}

uint64_t UIEntityDetector.UIEntityDetectorError.hashValue.getter()
{
  v1 = *v0;
  sub_254F29BC0();
  MEMORY[0x259C2E340](v1);
  return sub_254F29C00();
}

uint64_t UIEntityDetector.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_254F16D08(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return sub_254F29580();
  }

  return result;
}

uint64_t sub_254F16DAC(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_254F29AA0();
LABEL_9:
  result = sub_254F29970();
  *v2 = result;
  return result;
}

uint64_t sub_254F16EAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

unint64_t sub_254F16F28()
{
  result = qword_27F75F628;
  if (!qword_27F75F628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F75F628);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for UIEntityDetector.UIEntityDetectorError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

void static Analytics.sendEventForProduction(eventName:prefix:eventPayload:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v8 = MEMORY[0x259C2E460]();
  v9.value._countAndFlagsBits = a3;
  v9.value._object = a4;
  String.fullEventName(prefix:)(v9);
  v10 = sub_254F29420();

  if (a5)
  {
    sub_254EC1838();
    a5 = sub_254F293B0();
  }

  AnalyticsSendEvent();

  objc_autoreleasePoolPop(v8);
}

Swift::String __swiftcall String.fullEventName(prefix:)(Swift::String_optional prefix)
{
  v3 = v2;
  v4 = v1;
  if (prefix.value._object)
  {
    v8 = prefix;

    MEMORY[0x259C2DC50](0xD00000000000001ELL, 0x8000000254F2E4F0);
    MEMORY[0x259C2DC50](46, 0xE100000000000000);
  }

  else
  {
    v8.value._countAndFlagsBits = 0xD00000000000001FLL;
    v8.value._object = 0x8000000254F2E4D0;
  }

  MEMORY[0x259C2DC50](v4, v3);
  countAndFlagsBits = v8.value._countAndFlagsBits;
  object = v8.value._object;
  result._object = object;
  result._countAndFlagsBits = countAndFlagsBits;
  return result;
}

id Analytics.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Analytics.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id Analytics.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_254F17440()
{
  sub_254F29A40();
  sub_254EB2CBC();
  MEMORY[0x28223BE20](v1);
  sub_254EB6CBC();
  v2 = sub_254F29A20();
  sub_254EB2CBC();
  MEMORY[0x28223BE20](v3);
  sub_254EB4120();
  MEMORY[0x28223BE20](v4);
  v6 = &v26 - v5;
  v7 = sub_254EC8BC0(&qword_27F75F638, "f9");
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v26 - v8);
  v10 = OBJC_IVAR____TtC30IntelligenceFlowContextRuntime31UIContextRetrieverCAEventLogger_uiElementCollectionStart;
  sub_254EB6448();
  sub_254F17EF0(v0 + v10, v9);
  if (sub_254EB2F2C(v9, 1, v2))
  {
    sub_254F17F60(v9);
    v11 = 0.0;
  }

  else
  {
    v12 = sub_254EB68EC();
    v13(v12);
    sub_254F17F60(v9);
    v14 = sub_254EB6DF4();
    v15(v14);
    sub_254F29A00();
    v16 = sub_254EB63E8();
    v17(v16);
    sub_254F29A10();
    v18 = sub_254EB802C();
    v9(v18);
    (v9)(v6, v2);
    sub_254EB63E8();
    v19 = sub_254F29C10();
    v11 = v19 * 1000.0 + v20 * 1.0e-15;
  }

  v21 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  *&v22 = v11;
  v23 = [v21 initWithFloat_];
  v24 = OBJC_IVAR____TtC30IntelligenceFlowContextRuntime31UIContextRetrieverCAEventLogger_payload;
  sub_254EB520C();
  swift_isUniquelyReferenced_nonNull_native();
  v27 = *(v0 + v24);
  sub_254F06C60(v23, 0xD00000000000001ALL, 0x8000000254F2E620);
  *(v0 + v24) = v27;
  return swift_endAccess();
}

uint64_t sub_254F17714(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC30IntelligenceFlowContextRuntime31UIContextRetrieverCAEventLogger_totalCharacterTextCount);
  v3 = __OFADD__(v2, result);
  v4 = v2 + result;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC30IntelligenceFlowContextRuntime31UIContextRetrieverCAEventLogger_totalCharacterTextCount) = v4;
  }

  return result;
}

uint64_t sub_254F17734()
{
  sub_254EB49CC(objc_allocWithZone(MEMORY[0x277CCABB0]));
  sub_254EB6B38();
  swift_isUniquelyReferenced_nonNull_native();
  sub_254EB7B0C();
  v0 = sub_254EB7EA8();
  sub_254F06C60(v0, v1, 0xEB00000000746E75);
  sub_254EB3DC0(v2, v3);
  sub_254EB49CC(objc_allocWithZone(MEMORY[0x277CCABB0]));
  sub_254EB6B38();
  swift_isUniquelyReferenced_nonNull_native();
  sub_254EB7B0C();
  v4 = sub_254EB7EA8();
  sub_254F06C60(v4, 0xD000000000000017, v5);
  sub_254EB3DC0(v6, v7);
  sub_254EB49CC(objc_allocWithZone(MEMORY[0x277CCABB0]));
  sub_254EB6B38();
  swift_isUniquelyReferenced_nonNull_native();
  sub_254EB7B0C();
  v8 = sub_254EB7EA8();
  sub_254F06C60(v8, v9, v10);
  sub_254EB3DC0(v11, v12);
  sub_254EB49CC(objc_allocWithZone(MEMORY[0x277CCABB0]));
  sub_254EB6B38();
  swift_isUniquelyReferenced_nonNull_native();
  sub_254EB7B0C();
  v13 = sub_254EB7EA8();
  sub_254F06C60(v13, v14, 0xEB00000000746E75);
  return sub_254EB3DC0(v15, v16);
}

float sub_254F178D0()
{
  sub_254F29A40();
  sub_254EB2CBC();
  MEMORY[0x28223BE20](v1);
  sub_254EB6CBC();
  v2 = sub_254F29A20();
  sub_254EB2CBC();
  MEMORY[0x28223BE20](v3);
  sub_254EB4120();
  MEMORY[0x28223BE20](v4);
  v6 = &v27 - v5;
  v7 = sub_254EC8BC0(&qword_27F75F638, "f9");
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v27 - v8);
  v10 = OBJC_IVAR____TtC30IntelligenceFlowContextRuntime31UIContextRetrieverCAEventLogger_overallStart;
  sub_254EB6448();
  sub_254F17EF0(v0 + v10, v9);
  if (sub_254EB2F2C(v9, 1, v2))
  {
    sub_254F17F60(v9);
    v11 = 0.0;
  }

  else
  {
    v12 = sub_254EB68EC();
    v13(v12);
    sub_254F17F60(v9);
    v14 = sub_254EB6DF4();
    v15(v14);
    sub_254F29A00();
    v16 = sub_254EB63E8();
    v17(v16);
    sub_254F29A10();
    v18 = sub_254EB802C();
    v9(v18);
    (v9)(v6, v2);
    sub_254EB63E8();
    v19 = sub_254F29C10();
    v11 = v19 * 1000.0 + v20 * 1.0e-15;
  }

  v21 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  *&v22 = v11;
  v23 = [v21 initWithFloat_];
  v24 = OBJC_IVAR____TtC30IntelligenceFlowContextRuntime31UIContextRetrieverCAEventLogger_payload;
  sub_254EB520C();
  swift_isUniquelyReferenced_nonNull_native();
  v28 = *(v0 + v24);
  sub_254F06C60(v23, 0x4C6C6C617265766FLL, 0xEE0079636E657461);
  *(v0 + v24) = v28;
  swift_endAccess();
  sub_254F17734();
  v25 = *(v0 + v24);
  type metadata accessor for Analytics();

  static Analytics.sendEventForProduction(eventName:prefix:eventPayload:)(0xD000000000000012, 0x8000000254F2E600, 0, 0, v25);

  sub_254F17C08();
  return v11;
}

uint64_t sub_254F17C08()
{
  sub_254EC1838();
  v1 = sub_254F293D0();
  v2 = OBJC_IVAR____TtC30IntelligenceFlowContextRuntime31UIContextRetrieverCAEventLogger_payload;
  swift_beginAccess();
  *(v0 + v2) = v1;

  *(v0 + OBJC_IVAR____TtC30IntelligenceFlowContextRuntime31UIContextRetrieverCAEventLogger_screenCount) = 0;
  *(v0 + OBJC_IVAR____TtC30IntelligenceFlowContextRuntime31UIContextRetrieverCAEventLogger_windowCount) = 0;
  *(v0 + OBJC_IVAR____TtC30IntelligenceFlowContextRuntime31UIContextRetrieverCAEventLogger_uiElementCount) = 0;
  *(v0 + OBJC_IVAR____TtC30IntelligenceFlowContextRuntime31UIContextRetrieverCAEventLogger_totalCharacterTextCount) = 0;
  return result;
}

uint64_t sub_254F17CB8()
{
  v1 = OBJC_IVAR____TtC30IntelligenceFlowContextRuntime31UIContextRetrieverCAEventLogger_clock;
  v2 = sub_254F29A40();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_254F17F60(v0 + OBJC_IVAR____TtC30IntelligenceFlowContextRuntime31UIContextRetrieverCAEventLogger_overallStart);
  sub_254F17F60(v0 + OBJC_IVAR____TtC30IntelligenceFlowContextRuntime31UIContextRetrieverCAEventLogger_uiElementCollectionStart);

  return v0;
}

uint64_t sub_254F17D48()
{
  sub_254F17CB8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_254F17DA8(uint64_t a1)
{
  sub_254F29A40();
  if (v1 <= 0x3F)
  {
    sub_254F17E98(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_254F17E98(uint64_t a1)
{
  if (!qword_281426028)
  {
    sub_254F29A20();
    v1 = sub_254F29810();
    if (!v2)
    {
      atomic_store(v1, &qword_281426028);
    }
  }
}

uint64_t sub_254F17EF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_254EC8BC0(&qword_27F75F638, "f9");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_254F17F60(uint64_t a1)
{
  v2 = sub_254EC8BC0(&qword_27F75F638, "f9");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

int8x16_t sub_254F17FC8@<Q0>(int8x16_t *a1@<X0>, int8x16_t *a2@<X1>, int8x16_t *a3@<X8>)
{
  v3 = a2[1].i64[0];
  v4 = a2[1].i64[1];
  v5 = a2[2].i8[0];
  v6 = fabs(*a1[1].i64 * *&a1[1].i64[1]);
  v7 = 0.0;
  if (a1[2].i8[0])
  {
    v6 = 0.0;
  }

  v8 = fabs(*a2[1].i64 * *&a2[1].i64[1]);
  if ((a2[2].i8[0] & 1) == 0)
  {
    v7 = v8;
  }

  if (v6 > v7)
  {
    v3 = a1[1].i64[0];
    v4 = a1[1].i64[1];
    v5 = a1[2].i8[0];
  }

  v9 = vdup_n_s32(v6 <= v7);
  v10.i64[0] = v9.u32[0];
  v10.i64[1] = v9.u32[1];
  result = vbslq_s8(vcltzq_s64(vshlq_n_s64(v10, 0x3FuLL)), *a2, *a1);
  *a3 = result;
  a3[1].i64[0] = v3;
  a3[1].i64[1] = v4;
  a3[2].i8[0] = v5 & 1;
  return result;
}

uint64_t sub_254F18050@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v140 = sub_254F27DA0();
  sub_254EB2CBC();
  v147 = v4;
  MEMORY[0x28223BE20](v5);
  v137 = &v123 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_254EC8BC0(&qword_27F75F640, "r9");
  sub_254EB2D80();
  MEMORY[0x28223BE20](v7);
  sub_254EB3D38();
  sub_254EB2EC0();
  MEMORY[0x28223BE20](v8);
  sub_254EB40A4();
  sub_254EB2EC0();
  MEMORY[0x28223BE20](v9);
  sub_254EB40A4();
  sub_254EB2EC0();
  MEMORY[0x28223BE20](v10);
  v139 = &v123 - v11;
  v12 = sub_254EC8BC0(&qword_27F75F308, &unk_254F2C4C0);
  MEMORY[0x28223BE20](v12 - 8);
  sub_254EB3D38();
  sub_254EB2EC0();
  MEMORY[0x28223BE20](v13);
  sub_254EB40A4();
  sub_254EB2EC0();
  MEMORY[0x28223BE20](v14);
  sub_254EB40A4();
  sub_254EB2EC0();
  MEMORY[0x28223BE20](v15);
  sub_254EB40A4();
  sub_254EB2EC0();
  MEMORY[0x28223BE20](v16);
  sub_254EB40A4();
  sub_254EB2EC0();
  MEMORY[0x28223BE20](v17);
  sub_254EB40A4();
  sub_254EB2EC0();
  MEMORY[0x28223BE20](v18);
  sub_254EB40A4();
  sub_254EB2EC0();
  MEMORY[0x28223BE20](v19);
  sub_254EB40A4();
  sub_254EB2EC0();
  MEMORY[0x28223BE20](v20);
  sub_254EB40A4();
  sub_254EB2EC0();
  MEMORY[0x28223BE20](v21);
  sub_254EB40A4();
  sub_254EB2EC0();
  v23 = MEMORY[0x28223BE20](v22);
  v25 = (&v123 - v24);
  MEMORY[0x28223BE20](v23);
  v27 = &v123 - v26;
  v145 = type metadata accessor for ContextValueElement(0);
  sub_254EB2D80();
  MEMORY[0x28223BE20](v28);
  v30 = (&v123 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = sub_254EC8BC0(&unk_27F75EEB0, &unk_254F2B490);
  MEMORY[0x28223BE20](v31 - 8);
  sub_254EB3D38();
  sub_254EB2EC0();
  v33 = MEMORY[0x28223BE20](v32);
  v35 = &v123 - v34;
  MEMORY[0x28223BE20](v33);
  v37 = &v123 - v36;
  v38 = sub_254F281F0();
  sub_254EB2CBC();
  v40 = v39;
  MEMORY[0x28223BE20](v41);
  sub_254EB3D38();
  sub_254EB2EC0();
  MEMORY[0x28223BE20](v42);
  v44 = &v123 - v43;
  v149 = a1;
  sub_254F28100();
  sub_254EB3DDC(v37);
  if (v48)
  {
    sub_254EB306C(v37, &unk_27F75EEB0, &unk_254F2B490);
    v45 = v150;
    v46 = a2;
    return sub_254F1919C(v45, v46);
  }

  v132 = v30;
  v129 = a2;
  v47 = *(v40 + 32);
  v47(v44, v37, v38);
  sub_254F28100();
  sub_254EB3DDC(v35);
  if (v48)
  {
    (*(v40 + 8))(v44, v38);
    sub_254EB306C(v35, &unk_27F75EEB0, &unk_254F2B490);
    v45 = v149;
    v46 = v129;
    return sub_254F1919C(v45, v46);
  }

  v127 = v40;
  v50 = v146;
  v125 = v38;
  v47(v146->i8, v35, v38);
  sub_254EB6904();
  sub_254F1919C(v51, v47);
  v126 = v44;
  v52 = sub_254F281C0();
  v53 = &v162;
  v54 = sub_254F281B0();
  sub_254EED850(v52);
  v54(&v162, 0);
  sub_254EC00D8();
  v124 = *(v55 + 20);
  sub_254F28E80();
  v57 = v147 + 104;
  v56 = *(v147 + 104);
  LODWORD(v150) = *MEMORY[0x277D745B8];
  v58 = v140;
  v128 = v56;
  v56(v25);
  sub_254EB8044(v25);
  v59 = *(v148 + 48);
  v60 = v139;
  sub_254F19200(v27, v139);
  sub_254F19200(v25, v60 + v59);
  sub_254EB3DFC(v60);
  if (v61)
  {
    v50 = &qword_27F75F308;
    sub_254EB306C(v25, &qword_27F75F308, &unk_254F2C4C0);
    sub_254EB306C(v27, &qword_27F75F308, &unk_254F2C4C0);
    sub_254EB3DFC(v60 + v59);
    v53 = v146;
    if (v48)
    {
      sub_254EB306C(v60, &qword_27F75F308, &unk_254F2C4C0);
      v62 = v127;
      goto LABEL_33;
    }

LABEL_16:
    v64 = &qword_27F75F640;
    v65 = "r9";
    v66 = v60;
    goto LABEL_17;
  }

  sub_254EB5768(v60, v159);
  sub_254EB3DFC(v60 + v59);
  if (v63)
  {
    sub_254EB306C(v25, &qword_27F75F308, &unk_254F2C4C0);
    sub_254EB306C(v27, &qword_27F75F308, &unk_254F2C4C0);
    (*(v147 + 8))(v50, v58);
    sub_254EB99B4();
    goto LABEL_16;
  }

  sub_254EB3F44();
  v123 = v57;
  v77 = v50;
  v78 = v137;
  v79(v137, v60 + v59, v58);
  sub_254F19270();
  v80 = sub_254F29410();
  v53 = &v162.u64[1];
  v47 = v162.i64[1];
  (v162.i64[1])(v78, v58);
  v50 = v60;
  sub_254EB306C(v25, &qword_27F75F308, &unk_254F2C4C0);
  sub_254EB306C(v27, &qword_27F75F308, &unk_254F2C4C0);
  (v47)(v77, v58);
  sub_254EB6904();
  sub_254EB306C(v60, &qword_27F75F308, &unk_254F2C4C0);
  v62 = v127;
  sub_254EB99B4();
  sub_254EB3B20();
  if ((v80 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_33:
  sub_254EC00D8();
  v139 = *(v81 + 20);
  v82 = v135;
  sub_254F28E80();
  v83 = v134;
  sub_254EB7B1C();
  v84();
  sub_254EB8044(v83);
  sub_254EB7EB4();
  v25 = v136;
  sub_254F19200(v82, v136);
  sub_254F19200(v83, v58 + v25);
  sub_254EB6AE0(v25);
  if (v48)
  {
    v50 = &qword_27F75F308;
    sub_254EB306C(v83, &qword_27F75F308, &unk_254F2C4C0);
    v25 = v136;
    sub_254EB306C(v82, &qword_27F75F308, &unk_254F2C4C0);
    sub_254EB6AE0(v58 + v25);
    if (!v48)
    {
      goto LABEL_47;
    }

    v64 = &qword_27F75F308;
    v65 = &unk_254F2C4C0;
    v66 = v25;
LABEL_17:
    sub_254EB306C(v66, v64, v65);
    sub_254EB3B20();
    goto LABEL_18;
  }

  sub_254EB5768(v25, v157);
  sub_254EB6AE0(v58 + v25);
  if (v95)
  {
    v96 = sub_254EB6468(v160);
    sub_254EB306C(v96, v97, &unk_254F2C4C0);
    v98 = sub_254EB6468(v161);
    sub_254EB306C(v98, v99, &unk_254F2C4C0);
    (*(v147 + 8))(v50, v58);
LABEL_47:
    sub_254EB306C(v25, &qword_27F75F640, "r9");
LABEL_48:
    sub_254F28EE0();
    sub_254EB2D80();
    (*(v100 + 24))(v47 + v139, v149 + v124);
    v69 = v126;
    goto LABEL_49;
  }

  sub_254EB3F44();
  v118 = sub_254EB6984();
  v119(v118);
  sub_254F19270();
  v133 = sub_254F29410();
  v120 = v53->i64[1];
  v53 = (v53 + 8);
  v120(v58, v58);
  sub_254EB306C(v134, &qword_27F75F308, &unk_254F2C4C0);
  sub_254EB306C(v135, &qword_27F75F308, &unk_254F2C4C0);
  v120(v50, v58);
  sub_254EB99B4();
  sub_254EB3B20();
  sub_254EB306C(v121, v122, &unk_254F2C4C0);
  if ((v133 & 1) == 0)
  {
    goto LABEL_48;
  }

LABEL_18:
  v62 = v143;
  sub_254F28E80();
  v47 = v142;
  sub_254EB7B1C();
  v67();
  sub_254EB8044(v47);
  v68 = v58;
  sub_254EB7EB4();
  sub_254EB5768(v62, &v167);
  sub_254F19200(v47, v58 + v50);
  sub_254EB6AE0(v50);
  if (v48)
  {
    sub_254EB306C(v47, &qword_27F75F308, &unk_254F2C4C0);
    v50 = v144;
    sub_254EB306C(v62, &qword_27F75F308, &unk_254F2C4C0);
    sub_254EB6AE0(v58 + v50);
    v69 = v126;
    v62 = v127;
    if (v48)
    {
      sub_254EB306C(v50, &qword_27F75F308, &unk_254F2C4C0);
      sub_254EB6904();
      goto LABEL_51;
    }

    goto LABEL_26;
  }

  v69 = v131;
  sub_254F19200(v50, v131);
  sub_254EB6AE0(v58 + v50);
  if (v70)
  {
    v58 = &unk_254F2C4C0;
    v71 = sub_254EB6468(&v165);
    sub_254EB306C(v71, v72, &unk_254F2C4C0);
    v73 = sub_254EB6468(&v166);
    v50 = v144;
    sub_254EB306C(v73, v74, &unk_254F2C4C0);
    (*(v147 + 8))(v69, v68);
    sub_254EB522C();
LABEL_26:
    sub_254EB306C(v50, &qword_27F75F640, "r9");
    sub_254EB6904();
    goto LABEL_27;
  }

  v88 = v69;
  v89 = v147;
  v90 = sub_254EB6984();
  v91(v90);
  sub_254F19270();
  LODWORD(v149) = sub_254F29410();
  v92 = *(v89 + 8);
  v69 = v89 + 8;
  v53 = v92;
  (v92)(v58, v58);
  v25 = &qword_27F75F308;
  v58 = &unk_254F2C4C0;
  sub_254EB306C(v142, &qword_27F75F308, &unk_254F2C4C0);
  sub_254EB306C(v143, &qword_27F75F308, &unk_254F2C4C0);
  (v92)(v88, v68);
  sub_254EB99B4();
  sub_254EB3B20();
  sub_254EB306C(v93, v94, &unk_254F2C4C0);
  sub_254EB522C();
  sub_254EB6904();
  if (v149)
  {
    goto LABEL_51;
  }

LABEL_27:
  sub_254EC00D8();
  sub_254F28E80();
  v75 = v138;
  sub_254EB7B1C();
  v76();
  sub_254EB8044(v75);
  sub_254EB7EB4();
  sub_254EB5768(v25, v164);
  sub_254F19200(v75, v58 + v50);
  sub_254EB3DDC(v50);
  if (v48)
  {
    sub_254EB306C(v75, &qword_27F75F308, &unk_254F2C4C0);
    sub_254EB49E4();
    sub_254EB3DDC(&qword_27F75F308 + v58);
    v47 = v132;
    if (v48)
    {
      sub_254EB306C(&qword_27F75F308, &qword_27F75F308, &unk_254F2C4C0);
      goto LABEL_57;
    }

    goto LABEL_41;
  }

  v47 = v130;
  sub_254F19200(v50, v130);
  sub_254EB3DDC(v58 + v50);
  if (v85)
  {
    v86 = sub_254EB6468(v163);
    sub_254EB306C(v86, v87, &unk_254F2C4C0);
    sub_254EB49E4();
    (*(v147 + 8))(v47, v58);
    sub_254EB6904();
LABEL_41:
    sub_254EB306C(&qword_27F75F308, &qword_27F75F640, "r9");
    goto LABEL_51;
  }

  v101 = v25;
  v102 = v147;
  v103 = sub_254EB6984();
  v104(v103);
  sub_254F19270();
  LODWORD(v150) = sub_254F29410();
  v105 = *(v102 + 8);
  v105(v58, v58);
  sub_254EB306C(v138, &qword_27F75F308, &unk_254F2C4C0);
  sub_254EB306C(v101, &qword_27F75F308, &unk_254F2C4C0);
  v105(v47, v58);
  v69 = v126;
  sub_254EB306C(v50, &qword_27F75F308, &unk_254F2C4C0);
  sub_254EB6904();
  if (v150)
  {
    goto LABEL_57;
  }

LABEL_51:
  if ((sub_254F281D0() & 1) == 0)
  {
    if (sub_254F281D0() & 1) == 0 || (sub_254EC00D8(), sub_254F28E40(), v106 = v151, v107 = v152, v108 = v153, v109 = v154, sub_254F28EC0(), (v155) || (v169.origin.x = v110, v169.origin.y = v111, v169.size.width = v112, v169.size.height = v113, v168.origin.x = v106, v168.origin.y = v107, v168.size.width = v108, v168.size.height = v109, !CGRectEqualToRect(v168, v169)))
    {
      sub_254F28190();
      sub_254F28190();
      sub_254F17FC8(&v156, &v158, &v162);
      goto LABEL_56;
    }

LABEL_49:
    sub_254F28190();
LABEL_56:
    sub_254F281A0();
  }

LABEL_57:
  if ((sub_254F28130() & 1) == 0)
  {
    sub_254F28130();
  }

  sub_254F28140();
  v114 = sub_254F281D0();
  v115 = v125;
  if ((v114 & 1) == 0)
  {
    sub_254F281D0();
  }

  sub_254F281E0();
  sub_254F28160();
  sub_254F28160();
  sub_254F28170();
  v116 = v141;
  (*(v62 + 16))(v141, v53, v115);
  sub_254EB8044(v116);
  sub_254F28110();
  v117 = *(v62 + 8);
  v117(v53, v115);
  v117(v69, v115);
  return sub_254ED1FB4(v47, v129);
}

uint64_t type metadata accessor for ContextValueElement(uint64_t a1)
{
  result = qword_281427278;
  if (!qword_281427278)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_254F1919C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextValueElement(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_254F19200(uint64_t a1, uint64_t a2)
{
  v4 = sub_254EC8BC0(&qword_27F75F308, &unk_254F2C4C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_254F19270()
{
  result = qword_27F75F648;
  if (!qword_27F75F648)
  {
    sub_254F27DA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F75F648);
  }

  return result;
}

uint64_t sub_254F192F0(uint64_t a1)
{
  result = sub_254F28120();
  if (v2 <= 0x3F)
  {
    result = sub_254F28EE0();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_254F19374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v93 = a2;
  v3 = sub_254EC8BC0(&qword_27F75EEC8, &qword_254F2B628);
  v4 = sub_254EB2D90(v3);
  MEMORY[0x28223BE20](v4);
  v92 = v88 - v5;
  v6 = sub_254EC8BC0(&qword_27F75F650, "h9");
  v7 = sub_254EB2D90(v6);
  MEMORY[0x28223BE20](v7);
  v9 = v88 - v8;
  v10 = sub_254EC8BC0(&qword_27F75F2D0, &qword_254F2C418);
  v11 = sub_254EB2D90(v10);
  MEMORY[0x28223BE20](v11);
  sub_254EB2E04();
  v95 = (v12 - v13);
  sub_254EB3D2C();
  v15 = MEMORY[0x28223BE20](v14);
  v17 = v88 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = v88 - v18;
  v20 = sub_254EC8BC0(&qword_27F75F658, "h9");
  v21 = sub_254EB2D90(v20);
  MEMORY[0x28223BE20](v21);
  sub_254EB2E04();
  v24 = v22 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = v88 - v26;
  v28 = sub_254F27890();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  sub_254EB2E04();
  v97 = v30 - v31;
  sub_254EB3D2C();
  MEMORY[0x28223BE20](v32);
  v96 = v88 - v33;
  sub_254EB3D2C();
  MEMORY[0x28223BE20](v34);
  v94 = v88 - v35;
  sub_254EB3D2C();
  MEMORY[0x28223BE20](v36);
  v38 = v88 - v37;
  sub_254F19A54(a1, v19);
  v39 = sub_254F27710();
  sub_254EB3DFC(v19);
  v91 = v29;
  if (v53)
  {
    sub_254EB300C(v19, &qword_27F75F2D0, &qword_254F2C418);
    sub_254EB6A6C();
    sub_254EB2F04(v40, v41, v42, v28);
    sub_254F27880();
    sub_254EB6E04(v27);
    if (!v53)
    {
      sub_254EB300C(v27, &qword_27F75F658, "h9");
    }
  }

  else
  {
    sub_254F276E0();
    sub_254EB6CD4();
    (*(v43 + 8))(v19, v39);
    sub_254EB2F04(v27, 0, 1, v28);
    (*(v29 + 32))(v38, v27, v28);
  }

  v44 = sub_254F29460();
  v46 = v45;
  sub_254F19A54(a1, v17);
  sub_254EB3DFC(v17);
  v98 = v28;
  if (v53)
  {
    sub_254EB300C(v17, &qword_27F75F2D0, &qword_254F2C418);
    sub_254EB6A6C();
    sub_254EB2F04(v47, v48, v49, v28);
    v50 = v95;
  }

  else
  {
    sub_254F276F0();
    v51 = v98;
    sub_254EB6CD4();
    (*(v52 + 8))(v17, v39);
    sub_254EB6E04(v24);
    v50 = v95;
    if (!v53)
    {
      (*(v91 + 32))(v94, v24, v51);
      goto LABEL_12;
    }
  }

  sub_254F27880();
  sub_254EB6E04(v24);
  if (!v53)
  {
    sub_254EB300C(v24, &qword_27F75F658, "h9");
  }

LABEL_12:
  v54 = sub_254F29460();
  v56 = v55;
  sub_254F29350();
  sub_254EB6A6C();
  sub_254EB2F04(v57, v58, v59, v60);
  sub_254F29340();
  sub_254EB6A6C();
  sub_254EB2F04(v61, v62, v63, v64);
  sub_254F19A54(a1, v50);
  sub_254EB3DFC(v50);
  if (v53)
  {
    sub_254EB300C(v50, &qword_27F75F2D0, &qword_254F2C418);
  }

  else
  {
    v90 = v56;
    sub_254F27700();
    sub_254EB6CD4();
    v66 = v50;
    v68 = v67;
    (*(v65 + 8))(v66, v39);
    v69 = *(v68 + 16);
    if (v69)
    {
      v88[0] = v54;
      v88[1] = v46;
      v88[2] = v44;
      v88[3] = v9;
      v89 = a1;
      v71 = v91 + 16;
      v70 = *(v91 + 16);
      v72 = *(v91 + 80);
      v91 = v68;
      v73 = (v68 + ((v72 + 32) & ~v72));
      v94 = *(v71 + 56);
      v95 = v70;
      v74 = (v71 - 8);
      v75 = MEMORY[0x277D84F90];
      do
      {
        v77 = v95;
        v76 = v96;
        v78 = v98;
        v95(v96, v73, v98);
        v79 = v71;
        v77(v97, v76, v78);
        v80 = sub_254F29460();
        v82 = v81;
        (*v74)(v76, v78);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_254EEFF7C();
          v75 = v85;
        }

        v83 = *(v75 + 16);
        if (v83 >= *(v75 + 24) >> 1)
        {
          sub_254EEFF7C();
          v75 = v86;
        }

        *(v75 + 16) = v83 + 1;
        v84 = v75 + 16 * v83;
        *(v84 + 32) = v80;
        *(v84 + 40) = v82;
        v73 = &v94[v73];
        --v69;
        v71 = v79;
      }

      while (v69);

      a1 = v89;
    }

    else
    {
    }
  }

  sub_254F29370();
  return sub_254EB300C(a1, &qword_27F75F2D0, &qword_254F2C418);
}

uint64_t sub_254F19A54(uint64_t a1, uint64_t a2)
{
  v4 = sub_254EC8BC0(&qword_27F75F2D0, &qword_254F2C418);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_254F19AC4()
{

  return v0;
}

uint64_t sub_254F19AEC()
{
  sub_254F19AC4();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

id sub_254F19B20(uint64_t a1, uint64_t a2)
{
  sub_254F19CF0();
  sub_254EC8BC0(&qword_27F75F668, &qword_254F2CC58);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_254F2AE00;
  *(v2 + 56) = MEMORY[0x277D837D0];
  *(v2 + 64) = sub_254F19D34();
  v3 = sub_254EB2ED0(0xD00000000000002BLL);
  v4 = sub_254F29420();
  v5 = [v3 evaluateWithObject_];

  return v5;
}

Swift::Bool __swiftcall String.isValidPhoneNumber()()
{
  sub_254F19CF0();
  sub_254EC8BC0(&qword_27F75F668, &qword_254F2CC58);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_254F2AE00;
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 64) = sub_254F19D34();
  v1 = sub_254EB2ED0(0xD00000000000001ALL);
  v2 = sub_254F29420();
  v3 = [v1 evaluateWithObject_];

  return v3;
}

unint64_t sub_254F19CF0()
{
  result = qword_27F75F660;
  if (!qword_27F75F660)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F75F660);
  }

  return result;
}

unint64_t sub_254F19D34()
{
  result = qword_27F75F670;
  if (!qword_27F75F670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F75F670);
  }

  return result;
}

void sub_254F19D88()
{
  sub_254EC1A1C();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_254EC8BC0(&qword_27F75EE08, &qword_254F2B1A0);
  sub_254EB2D90(v7);
  sub_254EB6BCC();
  MEMORY[0x28223BE20](v8);
  sub_254F22AAC(v9, v13);
  v10 = sub_254F29600();
  v11 = sub_254EB2F2C(v0, 1, v10);

  if (v11 == 1)
  {
    sub_254EB2B68(v0, &qword_27F75EE08, &qword_254F2B1A0);
  }

  else
  {
    sub_254F295F0();
    (*(*(v10 - 8) + 8))(v0, v10);
  }

  v12 = *(v2 + 16);
  swift_unknownObjectRetain();

  if (!v12)
  {
    if (v6)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_254EB2B68(v4, &qword_27F75EE08, &qword_254F2B1A0);
    sub_254F22C14();
    goto LABEL_9;
  }

  swift_getObjectType();
  sub_254F295C0();
  swift_unknownObjectRelease();
  if (!v6)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_254F294A0();

  sub_254F22C14();

  sub_254EB2B68(v4, &qword_27F75EE08, &qword_254F2B1A0);

LABEL_9:
  sub_254EB4078();
}

void sub_254F19FE4()
{
  sub_254EC1A1C();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v18 = v7;
  v9 = v8;
  v11 = v10;
  v12 = sub_254EC8BC0(&qword_27F75EE08, &qword_254F2B1A0);
  sub_254EB2D90(v12);
  sub_254EB6BCC();
  MEMORY[0x28223BE20](v13);
  sub_254F22AAC(v14, v18);
  v15 = sub_254F29600();
  v16 = sub_254EB2F2C(v0, 1, v15);

  if (v16 == 1)
  {
    sub_254EB2B68(v0, &qword_27F75EE08, &qword_254F2B1A0);
  }

  else
  {
    sub_254F295F0();
    (*(*(v15 - 8) + 8))(v0, v15);
  }

  v17 = *(v6 + 16);
  swift_unknownObjectRetain();

  if (!v17)
  {
    if (v11)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_254EB2B68(v9, &qword_27F75EE08, &qword_254F2B1A0);
    sub_254EC8BC0(v4, v2);
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  sub_254F295C0();
  swift_unknownObjectRelease();
  if (!v11)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_254F294A0();

  sub_254EC8BC0(v4, v2);
  swift_task_create();

  sub_254EB2B68(v9, &qword_27F75EE08, &qword_254F2B1A0);

LABEL_9:
  sub_254EB4078();
}

uint64_t sub_254F1A23C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_254EC8BC0(&qword_27F75EE08, &qword_254F2B1A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v21 - v9;
  sub_254ECD9D8(a3, v21 - v9);
  v11 = sub_254F29600();
  v12 = sub_254EB2F2C(v10, 1, v11);

  if (v12 == 1)
  {
    sub_254EB2B68(v10, &qword_27F75EE08, &qword_254F2B1A0);
  }

  else
  {
    sub_254F295F0();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = sub_254F295C0();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21[0] = a3;
      v17 = sub_254F294A0() + 32;
      type metadata accessor for ContextRetriever(0);

      if (v16 | v14)
      {
        v22[0] = 0;
        v22[1] = 0;
        v18 = v22;
        v22[2] = v14;
        v22[3] = v16;
      }

      else
      {
        v18 = 0;
      }

      v21[1] = 7;
      v21[2] = v18;
      v21[3] = v17;
      v19 = swift_task_create();

      sub_254EB2B68(v21[0], &qword_27F75EE08, &qword_254F2B1A0);

      return v19;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_254EB2B68(a3, &qword_27F75EE08, &qword_254F2B1A0);
  type metadata accessor for ContextRetriever(0);
  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_254F1A4C8()
{
  *(v1 + 24) = v0;
  sub_254EB3FB8();
  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_254F1A4F4()
{
  sub_254EB3A3C();
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtCC30IntelligenceFlowContextRuntime23ContextXPCServiceServer6Server_contextRetrieverSetup);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  v3 = type metadata accessor for ContextRetriever(0);
  v4 = sub_254EC8BC0(&qword_27F75F090, "P<");
  *v2 = v0;
  v2[1] = sub_254F1A5D4;
  v5 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v0 + 16, v1, v3, v4, v5);
}

uint64_t sub_254F1A5D4()
{
  sub_254EB3BD8();
  sub_254EB4918();
  sub_254EB5BF0();
  *v3 = v2;
  v4 = *v1;
  sub_254EB2CE0();
  *v5 = v4;
  *(v6 + 40) = v0;

  sub_254EB3FB8();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_254F1A700()
{
  v1 = objc_allocWithZone(v0);
  sub_254EB82CC();
  sub_254F1A740();
}

void sub_254F1A740()
{
  sub_254EC1A1C();
  v3 = v0;
  v5 = v4;
  v7 = v6;
  ObjectType = swift_getObjectType();
  v9 = sub_254F291E0();
  sub_254EB2CBC();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v40 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_254EC8BC0(&qword_27F75EE08, &qword_254F2B1A0);
  sub_254EB2D90(v14);
  sub_254EB6BCC();
  MEMORY[0x28223BE20](v15);
  sub_254EB5780();
  v16 = OBJC_IVAR____TtCC30IntelligenceFlowContextRuntime23ContextXPCServiceServer6Server_encoder;
  v17 = sub_254F27780();
  sub_254EB82B4(v17);
  *&v0[v16] = sub_254F27770();
  v18 = OBJC_IVAR____TtCC30IntelligenceFlowContextRuntime23ContextXPCServiceServer6Server_decoder;
  v19 = sub_254F27750();
  sub_254EB82B4(v19);
  *&v0[v18] = sub_254F27740();
  v20 = [v5 processIdentifier];
  if ((v20 & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = v20;
    v36[3] = v11;
    v36[4] = v9;
    v39 = ObjectType;
    ObjectType = sub_254F28690();
    v11 = v21;
    if (qword_2814261B0 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v22 = off_2814261B8;
  os_unfair_lock_lock(off_2814261B8 + 10);
  os_unfair_lock_opaque = v22[9]._os_unfair_lock_opaque;
  v24 = os_unfair_lock_opaque + 1;
  if (os_unfair_lock_opaque == -1)
  {
    __break(1u);
LABEL_12:
    swift_once();
    goto LABEL_8;
  }

  v38 = v5;
  v22[8]._os_unfair_lock_opaque = v2;
  v22[9]._os_unfair_lock_opaque = v24;
  *&v22[4]._os_unfair_lock_opaque = ObjectType;
  *&v22[6]._os_unfair_lock_opaque = v11;
  swift_bridgeObjectRetain_n();

  os_unfair_lock_unlock(v22 + 10);

  v25 = &v3[OBJC_IVAR____TtCC30IntelligenceFlowContextRuntime23ContextXPCServiceServer6Server_requestId];
  *v25 = v2;
  *(v25 + 1) = v24;
  *(v25 + 1) = ObjectType;
  *(v25 + 2) = v11;
  v41 = 0;
  v42 = 0xE000000000000000;

  sub_254F29940();

  v41 = 0xD00000000000001FLL;
  v42 = 0x8000000254F2E860;
  v37 = v7;
  v26 = sub_254F28690();
  if (v27)
  {
    v28 = v27;
  }

  else
  {
    v26 = 0x436E776F6E6B6E55;
    v28 = 0xED0000746E65696CLL;
  }

  MEMORY[0x259C2DC50](v26, v28);

  sub_254F22BB0();
  v29 = swift_allocObject();
  *(v29 + 16) = v2;
  *(v29 + 20) = v24;
  *(v29 + 24) = ObjectType;
  *(v29 + 32) = v11;
  v30 = sub_254F28570();
  sub_254EB82B4(v30);

  *&v3[OBJC_IVAR____TtCC30IntelligenceFlowContextRuntime23ContextXPCServiceServer6Server_transaction] = sub_254F28580();
  v31 = sub_254F29600();
  sub_254EC1FD0(v31);
  sub_254F22B98();
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v2;
  *(v32 + 36) = v24;
  *(v32 + 40) = ObjectType;
  *(v32 + 48) = v11;

  *&v3[OBJC_IVAR____TtCC30IntelligenceFlowContextRuntime23ContextXPCServiceServer6Server_contextRetrieverSetup] = sub_254F1A23C(0, 0, v1, &unk_254F2CD90, v32);
  if (qword_281427150 != -1)
  {
    goto LABEL_12;
  }

LABEL_8:
  v33 = sub_254EB61A0();

  *&v3[OBJC_IVAR____TtCC30IntelligenceFlowContextRuntime23ContextXPCServiceServer6Server_contextCache] = v33;
  v34 = v37;
  v43.receiver = v3;
  v43.super_class = v39;
  objc_msgSendSuper2(&v43, sel_init);

  sub_254F286A0();
  sub_254EB2D54();
  (*(v35 + 8))(v34);
  sub_254EB4078();
}

uint64_t sub_254F1AD14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_254F291E0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_254F284C0();

  v12 = sub_254F291D0();
  v13 = sub_254F296E0();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v27 = a4;
    v15 = v14;
    v16 = swift_slowAlloc();
    v17 = a2;
    v18 = v16;
    v30 = a3;
    v31 = v16;
    *v15 = 136446210;
    v28 = a1;
    v29 = v17;
    v19 = RequestID.debugDescription.getter();
    v21 = sub_254EC2D74(v19, v20, &v31);

    *(v15 + 4) = v21;
    _os_log_impl(&dword_254EAE000, v12, v13, "received a signal for termination for %{public}s", v15, 0xCu);
    sub_254EB2BBC(v18);
    MEMORY[0x259C2EB80](v18, -1, -1);
    v22 = v15;
    a4 = v27;
    MEMORY[0x259C2EB80](v22, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  v23 = *MEMORY[0x277D41D50];
  v24 = sub_254F28560();
  return (*(*(v24 - 8) + 104))(a4, v23, v24);
}

uint64_t sub_254F1AF38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a1;
  v6[6] = a6;
  v6[2] = a4;
  v6[3] = a5;
  v6[4] = a6;
  return MEMORY[0x2822009F8](sub_254F1AF60, 0, 0);
}

uint64_t sub_254F1AF60()
{
  sub_254EB3A3C();
  v1 = *(v0 + 40);
  v2 = type metadata accessor for ContextRetriever(0);
  sub_254EB82B4(v2);

  *v1 = sub_254EE326C(v0 + 16);
  sub_254EB5B78();

  return v3();
}

void sub_254F1AFE4()
{
  sub_254EC1A1C();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = sub_254EC8BC0(&qword_27F75EE08, &qword_254F2B1A0);
  sub_254EB2D90(v14);
  sub_254EB6BCC();
  MEMORY[0x28223BE20](v15);
  sub_254EB5780();
  v16 = sub_254F29600();
  sub_254EC1FD0(v16);
  sub_254F22888();
  v17 = swift_allocObject();
  *(v17 + 16) = v5;
  *(v17 + 24) = v3;
  sub_254F22B98();
  v18 = swift_allocObject();
  v18[2] = v13;
  v18[3] = v11;
  v18[4] = v0;
  v18[5] = v9;
  v18[6] = v7;

  sub_254F22608(v13, v11);
  sub_254ECB3B0();
  v19 = v0;

  sub_254F29610();

  sub_254EB2B68(v1, &qword_27F75EE08, &qword_254F2B1A0);
  sub_254EB4078();
}

uint64_t sub_254F1B140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[8] = a3;
  v6[9] = a4;
  v6[6] = a1;
  v6[7] = a2;
  v7 = sub_254F291E0();
  v6[12] = v7;
  v6[13] = *(v7 - 8);
  v6[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_254F1B208, 0, 0);
}

uint64_t sub_254F1B208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_254EB9A10();
  sub_254EB8164();
  v17 = v14[8];
  if (v17 >> 60 == 15)
  {
    v18 = 0;
  }

  else
  {
    v19 = v14[7];
    sub_254EC8BC0(&qword_27F75F0D8, &unk_254F2BD48);
    sub_254F22334(v19, v17);
    sub_254F2238C();
    sub_254EB5A28();
    if (v17)
    {
      sub_254EF2778(v14[7], v14[8]);
      sub_254F284C0();
      v20 = v17;
      v21 = sub_254F291D0();
      sub_254F29700();

      if (sub_254F228AC())
      {
        sub_254EB82F8();
        sub_254EB4B94();
        sub_254EB5790();
        sub_254EB81FC();
        *v15 = 136315394;
        sub_254EB2EF4();
        v24 = sub_254EC2D74(0xD000000000000029, v22, v23);
        sub_254EB5244(v24);
        v25 = _swift_stdlib_bridgeErrorToNSError();
        sub_254EBEDC0(v25);
        sub_254EB6994(&dword_254EAE000, v26, v27, "could not decode [ContextType] in %s. Error: %@");
        sub_254EB2B68(v16, &qword_27F75ED70, &qword_254F2AF58);
        sub_254EB5C24();
        sub_254EB6E24();
        sub_254EB69B4();
      }

      v28 = sub_254EB3E1C();
      v29(v28);
      v30 = sub_254F22048();
      sub_254EB7D94(&type metadata for ContextXPCServiceServer.ContextXPCServiceServerError, v30);
      *v31 = 1;
      swift_willThrow();

      goto LABEL_15;
    }

    sub_254EF2778(v14[7], v14[8]);
    v18 = v14[5];
  }

  v32 = v14[9];
  if (*(v32 + OBJC_IVAR____TtCC30IntelligenceFlowContextRuntime23ContextXPCServiceServer6Server_contextCache))
  {
    if (!v18)
    {
      v18 = sub_254F28060();
      v32 = v14[9];
    }

    v14[15] = v18;
    v33 = (v32 + OBJC_IVAR____TtCC30IntelligenceFlowContextRuntime23ContextXPCServiceServer6Server_requestId);
    v35 = v33[1];
    v34 = v33[2];
    v14[2] = *v33;
    v14[3] = v35;
    v14[4] = v34;

    v36 = swift_task_alloc();
    v14[16] = v36;
    *v36 = v14;
    v36[1] = sub_254F1B4E4;
    sub_254EB3B50();

    return sub_254EE1B6C();
  }

  v39 = v14[6];
  sub_254ECB3B0();
  sub_254EB5144();
  *v39 = sub_254F297F0();

  sub_254EB5B78();
LABEL_15:
  sub_254EB3B50();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_254F1B4E4()
{
  sub_254EB3A3C();
  v1 = *v0;
  sub_254EB2CE0();
  *v2 = v1;

  sub_254EB3FB8();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_254F1B610()
{
  sub_254EB3A3C();
  v1 = *(v0 + 48);
  sub_254ECB3B0();
  sub_254EB5144();
  *v1 = sub_254F297F0();

  sub_254EB5B78();

  return v2();
}

void sub_254F1B7C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_254F27860();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

void sub_254F1B830()
{
  sub_254EC1A1C();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_254EC8BC0(&qword_27F75EE08, &qword_254F2B1A0);
  sub_254EB2D90(v9);
  sub_254EB6BCC();
  MEMORY[0x28223BE20](v10);
  sub_254EB5780();
  v11 = sub_254F29600();
  sub_254EC1FD0(v11);
  sub_254F22888();
  v12 = swift_allocObject();
  *(v12 + 16) = v4;
  *(v12 + 24) = v2;
  sub_254F22BB0();
  v13 = swift_allocObject();
  v13[2] = v8;
  v13[3] = v6;
  v13[4] = v0;

  sub_254F22608(v8, v6);
  v14 = v0;
  sub_254F29610();

  v15 = sub_254EB82CC();
  sub_254EB2B68(v15, v16, &qword_254F2B1A0);
  sub_254EB4078();
}

uint64_t sub_254F1B96C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  v5 = sub_254F29990();
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();
  v6 = sub_254F291E0();
  v4[16] = v6;
  v4[17] = *(v6 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v7 = sub_254F29980();
  v4[21] = v7;
  v4[22] = *(v7 - 8);
  v4[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_254F1BB00, 0, 0);
}

uint64_t sub_254F1BB00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_254EB9A10();
  sub_254EB8164();
  v17 = *(v14 + 88);
  if (v17 >> 60 == 15)
  {
    v18 = 0;
    goto LABEL_9;
  }

  v19 = *(v14 + 80);
  sub_254EC8BC0(&qword_27F75F0D8, &unk_254F2BD48);
  sub_254F22334(v19, v17);
  sub_254F2238C();
  sub_254EB5A28();
  sub_254EF2778(*(v14 + 80), *(v14 + 88));
  if (!v17)
  {
    v18 = *(v14 + 64);
LABEL_9:
    *(v14 + 192) = v18;
    v38 = *(v14 + 96);
    if (*(v38 + OBJC_IVAR____TtCC30IntelligenceFlowContextRuntime23ContextXPCServiceServer6Server_contextCache))
    {
      if (v18)
      {
        v39 = v18;
      }

      else
      {
        v39 = sub_254F28060();
        v38 = *(v14 + 96);
      }

      *(v14 + 200) = v39;
      v43 = (v38 + OBJC_IVAR____TtCC30IntelligenceFlowContextRuntime23ContextXPCServiceServer6Server_requestId);
      v44 = v43[1];
      v45 = v43[2];
      *(v14 + 16) = *v43;
      *(v14 + 24) = v44;
      *(v14 + 32) = v45;

      v46 = swift_task_alloc();
      *(v14 + 208) = v46;
      *v46 = v14;
      v46[1] = sub_254F1BF9C;
      sub_254EB3FB8();
      sub_254EB3B50();

      return sub_254EE1B6C();
    }

    else
    {
      v40 = swift_task_alloc();
      *(v14 + 216) = v40;
      *v40 = v14;
      sub_254F2283C(v40);
      sub_254EB3B50();

      return sub_254F1A4C8();
    }
  }

  *(v14 + 40) = v17;
  v20 = v17;
  v21 = sub_254EC8BC0(&qword_27F75F090, "P<");
  if (sub_254EB5B58(v21, v14 + 40))
  {
    sub_254F22D3C();
    sub_254F284C0();
    v22 = sub_254F291D0();
    v23 = sub_254F29700();
    sub_254EB493C(v23);
    sub_254F22BBC();
    if (v24)
    {
      sub_254F22894();
      sub_254EB63AC();
      sub_254EB3F7C();
      *v15 = 136315138;
      sub_254EB2EF4();
      *(v15 + 4) = sub_254F22968(v25, v26, v27);
      sub_254EB4154(&dword_254EAE000, v28, v29, "could not decode [ContextType] in %s");
      sub_254EB6CE4();
      sub_254EB69B4();
    }

    v30 = sub_254EB67C8();
    v31(v30);
    v32 = sub_254F22D24();
    v33 = sub_254EB7D94(&type metadata for ContextXPCServiceServer.ContextXPCServiceServerError, v32);
    sub_254EB4A08(v33, v34);
    v35 = sub_254EB6B58();
    v36(v35);
    v37 = *(v14 + 40);
  }

  else
  {

    v48 = sub_254F22D0C();
    if (!sub_254EB5B58(v48, v14 + 48))
    {
      sub_254F22CAC();
      sub_254F284C0();
      v64 = v17;
      v65 = sub_254F291D0();
      sub_254F29700();
      sub_254F228C4();
      sub_254F228AC();
      sub_254F22B8C();
      if (v66)
      {
        sub_254EB82F8();
        sub_254EB4B94();
        sub_254EB5790();
        sub_254EB81FC();
        *v15 = 136315394;
        sub_254EB2EF4();
        v70 = sub_254F22968(v67, v68, v69);
        sub_254EB5244(v70);
        v71 = _swift_stdlib_bridgeErrorToNSError();
        sub_254EBEDC0(v71);
        sub_254EB6994(&dword_254EAE000, v72, v73, "error in %s: %@");
        sub_254EB2B68(v16, &qword_27F75ED70, &qword_254F2AF58);
        sub_254EB5C24();
        sub_254EB6E24();
        sub_254EB69B4();
      }

      v74 = sub_254EB3E1C();
      v75(v74);
      swift_willThrow();
      goto LABEL_27;
    }

    sub_254F22CF4();
    sub_254F284C0();
    v49 = sub_254F291D0();
    v50 = sub_254F29700();
    sub_254EB493C(v50);
    sub_254F22BA4();
    if (v51)
    {
      sub_254F22894();
      sub_254EB63AC();
      sub_254EB3F7C();
      *v15 = 136315138;
      sub_254EB2EF4();
      *(v15 + 4) = sub_254F22968(v52, v53, v54);
      sub_254EB4154(&dword_254EAE000, v55, v56, "could not encode [RetrievedContext] in %s");
      sub_254EB6CE4();
      sub_254EB69B4();
    }

    v57 = sub_254EB67C8();
    v58(v57);
    v59 = sub_254F22CDC();
    v60 = sub_254EB7D94(&type metadata for ContextXPCServiceServer.ContextXPCServiceServerError, v59);
    sub_254EB4AB0(v60, v61);
    v62 = sub_254EB6B58();
    v63(v62);
    v37 = *(v14 + 48);
  }

LABEL_27:
  sub_254EBBB38();

  sub_254EB3E2C();
  sub_254EB3B50();

  return v77(v76, v77, v78, v79, v80, v81, v82, v83, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_254F1BF9C()
{
  sub_254EB3A3C();
  v1 = *v0;
  sub_254EB2CE0();
  *v2 = v1;
  v3 = *v0;
  *v2 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 216) = v4;
  *v4 = v3;
  sub_254F2283C(v4);

  return sub_254F1A4C8();
}

uint64_t sub_254F1C0EC()
{
  sub_254EB3BD8();
  sub_254EB4918();
  sub_254EB5BF0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 224) = v4;
  *(v2 + 232) = v0;

  sub_254EB3FB8();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_254F1C1EC()
{
  sub_254EB3BD8();
  v1 = v0[24];
  if (!v1)
  {
    v1 = sub_254F28060();
  }

  v0[30] = v1;
  v2 = swift_task_alloc();
  v0[31] = v2;
  *v2 = v0;
  v2[1] = sub_254F1C298;

  return sub_254EE3358();
}

uint64_t sub_254F1C298()
{
  sub_254EB3A3C();
  sub_254F22B38();
  sub_254EB63D8();
  *v3 = v2;
  v4 = *v1;
  sub_254EB5BF0();
  *v5 = v4;
  *(v7 + 256) = v6;
  *(v7 + 264) = v0;

  sub_254F22B2C();
  if (v0)
  {
  }

  else
  {
  }

  sub_254EB3FB8();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_254F1C3E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_254EB9A10();
  sub_254EB8164();
  sub_254F22B80();
  *(v15 + 56) = v17;
  v18 = *(v15 + 264);
  sub_254EC8BC0(&qword_27F75F6B0, &qword_254F2CDC0);
  sub_254F2209C();
  sub_254F2287C();
  v20 = sub_254F27760();
  if (!v18)
  {
    v40 = v19;
    v41 = v14[9];

    *v41 = v20;
    v41[1] = v40;

    sub_254EB5B78();
    goto LABEL_16;
  }

  v21 = v14[23];
  v14[5] = v18;
  v22 = v18;
  v23 = sub_254EC8BC0(&qword_27F75F090, "P<");
  if (sub_254F22998(v23))
  {
    sub_254F22D3C();
    sub_254F284C0();
    v24 = sub_254F291D0();
    v25 = sub_254F29700();
    sub_254EB493C(v25);
    sub_254F22BBC();
    if (v26)
    {
      sub_254F22894();
      sub_254EB63AC();
      sub_254EB3F7C();
      *v21 = 136315138;
      sub_254EB2EF4();
      *(v21 + 4) = sub_254F22968(v27, v28, v29);
      sub_254EB4154(&dword_254EAE000, v30, v31, "could not decode [ContextType] in %s");
      sub_254EB6CE4();
      sub_254EB69B4();
    }

    v32 = sub_254EB67C8();
    v33(v32);
    v34 = sub_254F22D24();
    v35 = sub_254EB7D94(&type metadata for ContextXPCServiceServer.ContextXPCServiceServerError, v34);
    sub_254EB4A08(v35, v36);
    v37 = sub_254EB6B58();
    v38(v37);
    v39 = v14[5];
  }

  else
  {
    sub_254F22A74();
    sub_254F22D0C();
    if (!sub_254EBBB58())
    {
      sub_254F22CAC();
      sub_254F284C0();
      v57 = v18;
      v58 = sub_254F291D0();
      sub_254F29700();
      sub_254F228C4();
      sub_254F228AC();
      sub_254F22B8C();
      if (v59)
      {
        sub_254EB82F8();
        sub_254EB4B94();
        sub_254EB5790();
        sub_254EB81FC();
        *v21 = 136315394;
        sub_254EB2EF4();
        v63 = sub_254F22968(v60, v61, v62);
        sub_254EB5244(v63);
        v64 = _swift_stdlib_bridgeErrorToNSError();
        sub_254EBEDC0(v64);
        sub_254EB6994(&dword_254EAE000, v65, v66, "error in %s: %@");
        sub_254EB2B68(v16, &qword_27F75ED70, &qword_254F2AF58);
        sub_254EB5C24();
        sub_254EB6E24();
        sub_254EB69B4();
      }

      v67 = sub_254EB3E1C();
      v68(v67);
      swift_willThrow();
      goto LABEL_15;
    }

    sub_254F22CF4();
    sub_254F284C0();
    v42 = sub_254F291D0();
    v43 = sub_254F29700();
    sub_254EB493C(v43);
    sub_254F22BA4();
    if (v44)
    {
      sub_254F22894();
      sub_254EB63AC();
      sub_254EB3F7C();
      *v21 = 136315138;
      sub_254EB2EF4();
      *(v21 + 4) = sub_254F22968(v45, v46, v47);
      sub_254EB4154(&dword_254EAE000, v48, v49, "could not encode [RetrievedContext] in %s");
      sub_254EB6CE4();
      sub_254EB69B4();
    }

    v50 = sub_254EB67C8();
    v51(v50);
    v52 = sub_254F22CDC();
    v53 = sub_254EB7D94(&type metadata for ContextXPCServiceServer.ContextXPCServiceServerError, v52);
    sub_254EB4AB0(v53, v54);
    v55 = sub_254EB6B58();
    v56(v55);
    v39 = v14[6];
  }

LABEL_15:
  sub_254EBBB38();

  sub_254EB3E2C();
LABEL_16:
  sub_254EB3B50();

  return v70(v69, v70, v71, v72, v73, v74, v75, v76, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_254F1C774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_254EB9A10();
  sub_254EB8164();

  v17 = v14[29];
  v14[5] = v17;
  sub_254F2294C();
  v18 = sub_254EC8BC0(&qword_27F75F090, "P<");
  if (sub_254EB7EC4(v18))
  {
    sub_254F22D3C();
    sub_254F284C0();
    v19 = sub_254F291D0();
    v20 = sub_254F29700();
    sub_254EB493C(v20);
    sub_254F22BBC();
    if (v21)
    {
      sub_254F22894();
      sub_254EB63AC();
      sub_254EB3F7C();
      *v15 = 136315138;
      sub_254EB2EF4();
      *(v15 + 4) = sub_254F22968(v22, v23, v24);
      sub_254EB4154(&dword_254EAE000, v25, v26, "could not decode [ContextType] in %s");
      sub_254EB6CE4();
      sub_254EB69B4();
    }

    v27 = sub_254EB67C8();
    v28(v27);
    v29 = sub_254F22D24();
    v30 = sub_254EB7D94(&type metadata for ContextXPCServiceServer.ContextXPCServiceServerError, v29);
    sub_254EB4A08(v30, v31);
    v32 = sub_254EB6B58();
    v33(v32);
    v34 = v14[5];
LABEL_9:

    goto LABEL_13;
  }

  sub_254F22A74();
  sub_254F22D0C();
  if (sub_254EB3F58())
  {
    sub_254F22CF4();
    sub_254F284C0();
    v35 = sub_254F291D0();
    v36 = sub_254F29700();
    sub_254EB493C(v36);
    sub_254F22BA4();
    if (v37)
    {
      sub_254F22894();
      sub_254EB63AC();
      sub_254EB3F7C();
      *v15 = 136315138;
      sub_254EB2EF4();
      *(v15 + 4) = sub_254F22968(v38, v39, v40);
      sub_254EB4154(&dword_254EAE000, v41, v42, "could not encode [RetrievedContext] in %s");
      sub_254EB6CE4();
      sub_254EB69B4();
    }

    v43 = sub_254EB67C8();
    v44(v43);
    v45 = sub_254F22CDC();
    v46 = sub_254EB7D94(&type metadata for ContextXPCServiceServer.ContextXPCServiceServerError, v45);
    sub_254EB4AB0(v46, v47);
    v48 = sub_254EB6B58();
    v49(v48);
    v34 = v14[6];
    goto LABEL_9;
  }

  sub_254F22CAC();
  sub_254F284C0();
  v50 = v17;
  v51 = sub_254F291D0();
  sub_254F29700();
  sub_254F228C4();
  sub_254F228AC();
  sub_254F22B8C();
  if (v52)
  {
    sub_254EB82F8();
    sub_254EB4B94();
    sub_254EB5790();
    sub_254EB81FC();
    *v15 = 136315394;
    sub_254EB2EF4();
    v56 = sub_254F22968(v53, v54, v55);
    sub_254EB5244(v56);
    v57 = _swift_stdlib_bridgeErrorToNSError();
    sub_254EBEDC0(v57);
    sub_254EB6994(&dword_254EAE000, v58, v59, "error in %s: %@");
    sub_254EB2B68(v16, &qword_27F75ED70, &qword_254F2AF58);
    sub_254EB5C24();
    sub_254EB6E24();
    sub_254EB69B4();
  }

  v60 = sub_254EB3E1C();
  v61(v60);
  swift_willThrow();
LABEL_13:
  sub_254EBBB38();

  sub_254EB3E2C();
  sub_254EB3B50();

  return v63(v62, v63, v64, v65, v66, v67, v68, v69, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_254F1CA58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_254EB9A10();
  sub_254EB8164();
  v17 = v14[33];
  v14[5] = v17;
  sub_254F2294C();
  v18 = sub_254EC8BC0(&qword_27F75F090, "P<");
  if (sub_254EB7EC4(v18))
  {
    sub_254F22D3C();
    sub_254F284C0();
    v19 = sub_254F291D0();
    v20 = sub_254F29700();
    sub_254EB493C(v20);
    sub_254F22BBC();
    if (v21)
    {
      sub_254F22894();
      sub_254EB63AC();
      sub_254EB3F7C();
      *v15 = 136315138;
      sub_254EB2EF4();
      *(v15 + 4) = sub_254F22968(v22, v23, v24);
      sub_254EB4154(&dword_254EAE000, v25, v26, "could not decode [ContextType] in %s");
      sub_254EB6CE4();
      sub_254EB69B4();
    }

    v27 = sub_254EB67C8();
    v28(v27);
    v29 = sub_254F22D24();
    v30 = sub_254EB7D94(&type metadata for ContextXPCServiceServer.ContextXPCServiceServerError, v29);
    sub_254EB4A08(v30, v31);
    v32 = sub_254EB6B58();
    v33(v32);
    v34 = v14[5];
LABEL_9:

    goto LABEL_13;
  }

  sub_254F22A74();
  sub_254F22D0C();
  if (sub_254EB3F58())
  {
    sub_254F22CF4();
    sub_254F284C0();
    v35 = sub_254F291D0();
    v36 = sub_254F29700();
    sub_254EB493C(v36);
    sub_254F22BA4();
    if (v37)
    {
      sub_254F22894();
      sub_254EB63AC();
      sub_254EB3F7C();
      *v15 = 136315138;
      sub_254EB2EF4();
      *(v15 + 4) = sub_254F22968(v38, v39, v40);
      sub_254EB4154(&dword_254EAE000, v41, v42, "could not encode [RetrievedContext] in %s");
      sub_254EB6CE4();
      sub_254EB69B4();
    }

    v43 = sub_254EB67C8();
    v44(v43);
    v45 = sub_254F22CDC();
    v46 = sub_254EB7D94(&type metadata for ContextXPCServiceServer.ContextXPCServiceServerError, v45);
    sub_254EB4AB0(v46, v47);
    v48 = sub_254EB6B58();
    v49(v48);
    v34 = v14[6];
    goto LABEL_9;
  }

  sub_254F22CAC();
  sub_254F284C0();
  v50 = v17;
  v51 = sub_254F291D0();
  sub_254F29700();
  sub_254F228C4();
  sub_254F228AC();
  sub_254F22B8C();
  if (v52)
  {
    sub_254EB82F8();
    sub_254EB4B94();
    sub_254EB5790();
    sub_254EB81FC();
    *v15 = 136315394;
    sub_254EB2EF4();
    v56 = sub_254F22968(v53, v54, v55);
    sub_254EB5244(v56);
    v57 = _swift_stdlib_bridgeErrorToNSError();
    sub_254EBEDC0(v57);
    sub_254EB6994(&dword_254EAE000, v58, v59, "error in %s: %@");
    sub_254EB2B68(v16, &qword_27F75ED70, &qword_254F2AF58);
    sub_254EB5C24();
    sub_254EB6E24();
    sub_254EB69B4();
  }

  v60 = sub_254EB3E1C();
  v61(v60);
  swift_willThrow();
LABEL_13:
  sub_254EBBB38();

  sub_254EB3E2C();
  sub_254EB3B50();

  return v63(v62, v63, v64, v65, v66, v67, v68, v69, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_254F1CE24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  v6 = sub_254F29990();
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();
  v7 = sub_254F291E0();
  v5[14] = v7;
  v5[15] = *(v7 - 8);
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v8 = sub_254F29980();
  v5[19] = v8;
  v5[20] = *(v8 - 8);
  v5[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_254F1CFBC, 0, 0);
}

uint64_t sub_254F1CFBC()
{
  sub_254EB8164();
  v57 = v0;
  v3 = *(v0 + 72);
  sub_254EC8BC0(&qword_27F75F0D8, &unk_254F2BD48);
  sub_254F2238C();
  sub_254EB5A28();
  if (v3)
  {
    *(v0 + 24) = v3;
    v4 = v3;
    v5 = sub_254EC8BC0(&qword_27F75F090, "P<");
    if (sub_254EB5B58(v5, v0 + 24))
    {
      sub_254F22CC4();
      sub_254F284C0();
      v6 = sub_254F291D0();
      v7 = sub_254F29700();
      sub_254EB493C(v7);
      sub_254F22B68();
      if (v8)
      {
        sub_254F22894();
        sub_254EB63AC();
        sub_254F22BC8();
        *v1 = 136315138;
        sub_254EC390C();
        *(v1 + 4) = sub_254F22934(v9, v10, v56);
        sub_254EB4154(&dword_254EAE000, v11, v12, "could not decode [ContextType] in %s");
        sub_254EB6CE4();
        sub_254EB69B4();
      }

      v13 = sub_254EB67C8();
      v14(v13);
      v15 = sub_254F22C94();
      v16 = sub_254EB7D94(&type metadata for ContextXPCServiceServer.ContextXPCServiceServerError, v15);
      sub_254EB4A08(v16, v17);
      v18 = sub_254EB6B58();
      v19(v18);
      v20 = *(v0 + 24);
    }

    else
    {

      v25 = sub_254F229D8();
      if (!sub_254EB5B58(v25, v0 + 32))
      {
        sub_254F22C64();
        sub_254F284C0();
        v40 = v3;
        v41 = sub_254F291D0();
        sub_254F29700();
        sub_254F228C4();
        sub_254F228AC();
        sub_254F22B44();
        if (v42)
        {
          sub_254EB82F8();
          sub_254EB4B94();
          v56[0] = sub_254EB5790();
          *v1 = 136315394;
          sub_254EC390C();
          v45 = sub_254F22934(v43, v44, v56);
          sub_254EB5244(v45);
          v46 = _swift_stdlib_bridgeErrorToNSError();
          sub_254EBEDC0(v46);
          sub_254EB6994(&dword_254EAE000, v47, v48, "error in %s: %@");
          sub_254EB2B68(v2, &qword_27F75ED70, &qword_254F2AF58);
          sub_254EB5C24();
          sub_254EB6E24();
          sub_254EB69B4();
        }

        v49 = sub_254EB3E1C();
        v50(v49);
        swift_willThrow();
LABEL_16:
        sub_254F2285C();

        sub_254EB3E2C();
        sub_254EC4398();

        __asm { BRAA            X1, X16 }
      }

      sub_254F229C0();
      sub_254F284C0();
      v26 = sub_254F291D0();
      v27 = sub_254F29700();
      sub_254EB493C(v27);
      sub_254F22B50();
      if (v28)
      {
        sub_254F22894();
        sub_254EB63AC();
        sub_254F22BC8();
        *v1 = 136315138;
        sub_254EC390C();
        *(v1 + 4) = sub_254F22934(v29, v30, v56);
        sub_254EB4154(&dword_254EAE000, v31, v32, "could not encode [RetrievedContext] in %s");
        sub_254EB6CE4();
        sub_254EB69B4();
      }

      v33 = sub_254EB67C8();
      v34(v33);
      v35 = sub_254F22C7C();
      v36 = sub_254EB7D94(&type metadata for ContextXPCServiceServer.ContextXPCServiceServerError, v35);
      sub_254EB4AB0(v36, v37);
      v38 = sub_254EB6B58();
      v39(v38);
      v20 = *(v0 + 32);
    }

    goto LABEL_16;
  }

  v21 = *(v0 + 80);
  *(v0 + 176) = *(v0 + 16);
  if (v21)
  {
    v22 = v21;
    sub_254F29670();
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  *(v0 + 184) = v24;
  v53 = swift_task_alloc();
  *(v0 + 192) = v53;
  *v53 = v0;
  v53[1] = sub_254F1D3B4;
  sub_254EC4398();

  return sub_254F1A4C8();
}

uint64_t sub_254F1D3B4()
{
  sub_254EB3A3C();
  v3 = v2;
  sub_254EB4918();
  v5 = v4;
  sub_254EB63D8();
  *v6 = v5;
  v7 = *v1;
  sub_254EB2CE0();
  *v8 = v7;
  v5[25] = v3;
  v5[26] = v0;

  if (v0)
  {
    sub_254EB3FB8();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = swift_task_alloc();
    v5[27] = v12;
    *v12 = v7;
    v12[1] = sub_254F1D530;

    return sub_254EE3358();
  }
}

uint64_t sub_254F1D530()
{
  sub_254EB3BD8();
  sub_254EB4918();
  v3 = v2;
  sub_254EB63D8();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 224) = v5;
  *(v3 + 232) = v0;

  if (!v0)
  {
  }

  sub_254EB3FB8();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_254F1D644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_254EB9A10();
  sub_254EB8164();
  sub_254F22B80();
  *(v15 + 40) = v17;
  v18 = *(v15 + 232);
  sub_254EC8BC0(&qword_27F75F6B0, &qword_254F2CDC0);
  sub_254F2209C();
  sub_254F2287C();
  v20 = sub_254F27760();
  if (!v18)
  {
    v40 = v19;
    v41 = v14[6];

    *v41 = v20;
    v41[1] = v40;

    sub_254EB5B78();
    goto LABEL_16;
  }

  v21 = v14[21];
  v14[3] = v18;
  v22 = v18;
  v23 = sub_254EC8BC0(&qword_27F75F090, "P<");
  if (sub_254F22998(v23))
  {
    sub_254F22CC4();
    sub_254F284C0();
    v24 = sub_254F291D0();
    v25 = sub_254F29700();
    sub_254EB493C(v25);
    sub_254F22B68();
    if (v26)
    {
      sub_254F22894();
      sub_254EB63AC();
      sub_254EB3F7C();
      *v21 = 136315138;
      sub_254EB2EF4();
      *(v21 + 4) = sub_254F22934(v27, v28, v29);
      sub_254EB4154(&dword_254EAE000, v30, v31, "could not decode [ContextType] in %s");
      sub_254EB6CE4();
      sub_254EB69B4();
    }

    v32 = sub_254EB67C8();
    v33(v32);
    v34 = sub_254F22C94();
    v35 = sub_254EB7D94(&type metadata for ContextXPCServiceServer.ContextXPCServiceServerError, v34);
    sub_254EB4A08(v35, v36);
    v37 = sub_254EB6B58();
    v38(v37);
    v39 = v14[3];
  }

  else
  {
    sub_254F22A90();
    sub_254F229D8();
    if (!sub_254EBBB58())
    {
      sub_254F22C64();
      sub_254F284C0();
      v57 = v18;
      v58 = sub_254F291D0();
      sub_254F29700();
      sub_254F228C4();
      sub_254F228AC();
      sub_254F22B44();
      if (v59)
      {
        sub_254EB82F8();
        sub_254EB4B94();
        sub_254EB5790();
        sub_254EB81FC();
        *v21 = 136315394;
        sub_254EB2EF4();
        v63 = sub_254F22934(v60, v61, v62);
        sub_254EB5244(v63);
        v64 = _swift_stdlib_bridgeErrorToNSError();
        sub_254EBEDC0(v64);
        sub_254EB6994(&dword_254EAE000, v65, v66, "error in %s: %@");
        sub_254EB2B68(v16, &qword_27F75ED70, &qword_254F2AF58);
        sub_254EB5C24();
        sub_254EB6E24();
        sub_254EB69B4();
      }

      v67 = sub_254EB3E1C();
      v68(v67);
      swift_willThrow();
      goto LABEL_15;
    }

    sub_254F229C0();
    sub_254F284C0();
    v42 = sub_254F291D0();
    v43 = sub_254F29700();
    sub_254EB493C(v43);
    sub_254F22B50();
    if (v44)
    {
      sub_254F22894();
      sub_254EB63AC();
      sub_254EB3F7C();
      *v21 = 136315138;
      sub_254EB2EF4();
      *(v21 + 4) = sub_254F22934(v45, v46, v47);
      sub_254EB4154(&dword_254EAE000, v48, v49, "could not encode [RetrievedContext] in %s");
      sub_254EB6CE4();
      sub_254EB69B4();
    }

    v50 = sub_254EB67C8();
    v51(v50);
    v52 = sub_254F22C7C();
    v53 = sub_254EB7D94(&type metadata for ContextXPCServiceServer.ContextXPCServiceServerError, v52);
    sub_254EB4AB0(v53, v54);
    v55 = sub_254EB6B58();
    v56(v55);
    v39 = v14[4];
  }

LABEL_15:
  sub_254F2285C();

  sub_254EB3E2C();
LABEL_16:
  sub_254EB3B50();

  return v70(v69, v70, v71, v72, v73, v74, v75, v76, a9, a10, a11, a12, a13, a14);
}