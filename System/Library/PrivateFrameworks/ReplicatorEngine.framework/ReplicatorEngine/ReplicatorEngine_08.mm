unint64_t sub_1DEECD944(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1DEF8DE28();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1DEF8E7A8();

        sub_1DEF8D9B8();
        v10 = sub_1DEF8E7F8();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1DEECDB08(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1DEF8DE28();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 16 * v6 + 8);
        sub_1DEF8E7A8();
        if (v10)
        {
          MEMORY[0x1E12CBF60](1);

          sub_1DEF8D9B8();
        }

        else
        {
          MEMORY[0x1E12CBF60](0);
        }

        v11 = sub_1DEF8E7F8();

        v12 = v11 & v7;
        if (v2 >= v9)
        {
          if (v12 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v12 >= v9)
        {
          goto LABEL_14;
        }

        if (v2 >= v12)
        {
LABEL_14:
          v13 = *(v3 + 48);
          v14 = (v13 + 16 * v2);
          v15 = (v13 + 16 * v6);
          if (v2 != v6 || v14 >= v15 + 1)
          {
            *v14 = *v15;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1DEECDCF0(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1DEF8DE28();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v27 = v3;
      v28 = v4;
      v26 = (v8 + 1) & v7;
      do
      {
        v12 = v2;
        v13 = *(v3 + 48) + 56 * v6;
        v14 = *(v13 + 24);
        v15 = *(v13 + 32);
        v17 = *(v13 + 40);
        v16 = *(v13 + 48);
        sub_1DEF8E7A8();

        sub_1DEF8D9B8();
        sub_1DEF8E7C8();
        if (v14)
        {
          sub_1DEF8D9B8();
        }

        MEMORY[0x1E12CBF90](v15);
        MEMORY[0x1E12CBF90](v17);
        MEMORY[0x1E12CBF90](v16);
        v18 = sub_1DEF8E7F8();

        v19 = v18 & v7;
        v2 = v12;
        if (v12 >= v26)
        {
          v3 = v27;
          v4 = v28;
          if (v19 < v26)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v3 = v27;
          v4 = v28;
          if (v19 >= v26)
          {
            goto LABEL_13;
          }
        }

        if (v2 >= v19)
        {
LABEL_13:
          v20 = *(v3 + 48);
          v21 = v20 + 56 * v2;
          v22 = (v20 + 56 * v6);
          if (v2 != v6 || v21 >= v22 + 56)
          {
            v9 = *v22;
            v10 = v22[1];
            v11 = v22[2];
            *(v21 + 48) = *(v22 + 6);
            *(v21 + 16) = v10;
            *(v21 + 32) = v11;
            *v21 = v9;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v23 = *(v3 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v25;
    ++*(v3 + 36);
  }

  return result;
}

void (*sub_1DEECDF5C(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x68uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = sub_1DEF8D3F8();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v9 = v8;
  v6[9] = v8;
  if (v4)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v8 + 64));
  }

  v11 = v10;
  v6[10] = v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v9 + 16))(v11, a2, v7);
  v6[11] = sub_1DEECE6F0(v6);
  v6[12] = sub_1DEECE130(v6 + 4, v11, isUniquelyReferenced_nonNull_native);
  return sub_1DEECE098;
}

void sub_1DEECE098(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 88);
  v4 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v5 = *(*a1 + 64);
  (*(*a1 + 96))();
  (*(v4 + 8))(v3, v5);
  v2(v1, 0);
  free(v3);

  free(v1);
}

void (*sub_1DEECE130(void *a1, uint64_t a2, char a3))(uint64_t a1, char a2)
{
  v4 = v3;
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x78uLL);
  }

  v9 = v8;
  *a1 = v8;
  *v8 = a2;
  v8[1] = v3;
  v10 = sub_1DEF8D3F8();
  v9[2] = v10;
  v11 = *(v10 - 8);
  v9[3] = v11;
  if (v7)
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(*(v11 + 64));
  }

  v9[4] = v12;
  v13 = type metadata accessor for NetworkBrowser.Monitor(0);
  v9[5] = v13;
  v14 = *(v13 - 8);
  v15 = v14;
  v9[6] = v14;
  v16 = *(v14 + 64);
  if (v7)
  {
    v9[7] = swift_coroFrameAlloc();
    v9[8] = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v9[7] = malloc(*(v14 + 64));
    v9[8] = malloc(v16);
    v17 = malloc(v16);
  }

  v9[9] = v17;
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4200, &unk_1DEF91DB0) - 8) + 64);
  if (v7)
  {
    v9[10] = swift_coroFrameAlloc();
    v9[11] = swift_coroFrameAlloc();
    v19 = swift_coroFrameAlloc();
  }

  else
  {
    v9[10] = malloc(v18);
    v9[11] = malloc(v18);
    v19 = malloc(v18);
  }

  v20 = v19;
  v9[12] = v19;
  v21 = *v4;
  v23 = sub_1DEEAF350(a2);
  *(v9 + 112) = v22 & 1;
  v24 = *(v21 + 16);
  v25 = (v22 & 1) == 0;
  v26 = v24 + v25;
  if (__OFADD__(v24, v25))
  {
    __break(1u);
    goto LABEL_26;
  }

  v27 = v22;
  v28 = *(v21 + 24);
  if (v28 < v26 || (a3 & 1) == 0)
  {
    if (v28 >= v26 && (a3 & 1) == 0)
    {
      sub_1DEEB8F5C();
      goto LABEL_21;
    }

    sub_1DEEB432C(v26, a3 & 1);
    v29 = sub_1DEEAF350(a2);
    if ((v27 & 1) == (v30 & 1))
    {
      v23 = v29;
      goto LABEL_21;
    }

LABEL_26:
    result = sub_1DEF8E6E8();
    __break(1u);
    return result;
  }

LABEL_21:
  v9[13] = v23;
  if (v27)
  {
    sub_1DEECF4B4(*(*v4 + 56) + *(v15 + 72) * v23, v20, type metadata accessor for NetworkBrowser.Monitor);
    v31 = 0;
  }

  else
  {
    v31 = 1;
  }

  (*(v15 + 56))(v20, v31, 1, v13);
  return sub_1DEECE460;
}

void sub_1DEECE460(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = (*(*a1 + 48) + 48);
  v5 = *(*a1 + 96);
  if (a2)
  {
    v6 = v2[10];
    sub_1DEE17214(v5, v6, &unk_1ECDE4200, &unk_1DEF91DB0);
    v7 = (*v4)(v6, 1, v3);
    v8 = *(v2 + 112);
    v9 = v2[10];
    if (v7 != 1)
    {
      v10 = v2[1];
      sub_1DEECF4B4(v9, v2[8], type metadata accessor for NetworkBrowser.Monitor);
      v11 = *v10;
      v12 = v2[13];
      v13 = v2[8];
      if ((v8 & 1) == 0)
      {
LABEL_4:
        v14 = v2[7];
        v15 = v2[4];
        (*(v2[3] + 16))(v15, *v2, v2[2]);
        sub_1DEECF4B4(v13, v14, type metadata accessor for NetworkBrowser.Monitor);
        sub_1DEF408A8(v12, v15, v14, v11);
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v16 = v2[11];
    sub_1DEE17214(v5, v16, &unk_1ECDE4200, &unk_1DEF91DB0);
    v17 = (*v4)(v16, 1, v3);
    v8 = *(v2 + 112);
    v9 = v2[11];
    if (v17 != 1)
    {
      v20 = v2[1];
      sub_1DEECF4B4(v9, v2[9], type metadata accessor for NetworkBrowser.Monitor);
      v11 = *v20;
      v12 = v2[13];
      v13 = v2[9];
      if ((v8 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      sub_1DEECF4B4(v13, v11[7] + *(v2[6] + 72) * v12, type metadata accessor for NetworkBrowser.Monitor);
      goto LABEL_10;
    }
  }

  sub_1DEE171B4(v9, &unk_1ECDE4200, &unk_1DEF91DB0);
  if (v8)
  {
    v18 = v2[13];
    v19 = *v2[1];
    (*(v2[3] + 8))(*(v19 + 48) + *(v2[3] + 72) * v18, v2[2]);
    sub_1DEF77028(v18, v19);
  }

LABEL_10:
  v21 = v2[11];
  v22 = v2[12];
  v24 = v2[9];
  v23 = v2[10];
  v26 = v2[7];
  v25 = v2[8];
  v27 = v2[4];
  sub_1DEE171B4(v22, &unk_1ECDE4200, &unk_1DEF91DB0);
  free(v22);
  free(v21);
  free(v23);
  free(v24);
  free(v25);
  free(v26);
  free(v27);

  free(v2);
}

uint64_t (*sub_1DEECE6F0(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1DEECE718;
}

uint64_t sub_1DEECE724(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  v8 = sub_1DEF8D3F8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a4;
  v14 = sub_1DEEAF350(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1DEEB9288();
      goto LABEL_7;
    }

    sub_1DEEB47CC(v17, a3 & 1);
    v22 = sub_1DEEAF350(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *a4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_1DEECEADC(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_1DEF8E6E8();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *a4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;

  return swift_unknownObjectRelease();
}

unint64_t sub_1DEECE95C()
{
  result = qword_1ECDE2C50;
  if (!qword_1ECDE2C50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECDE4210, &unk_1DEF90800);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE2C50);
  }

  return result;
}

void sub_1DEECE9C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

unint64_t sub_1DEECEA24()
{
  result = qword_1ECDE4248;
  if (!qword_1ECDE4248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4248);
  }

  return result;
}

uint64_t sub_1DEECEA78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NetworkBrowser.Monitor(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DEECEADC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1DEF8D3F8();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

void sub_1DEECEBB0(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v50 = a2;
  v53 = a4;
  v51 = a1;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4220, &unk_1DEF91DC0);
  MEMORY[0x1EEE9AC00](v62);
  v69 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v68 = &v49 - v9;
  v10 = type metadata accessor for NetworkBrowser.Monitor(0);
  v61 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v67 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1DEF8D3F8();
  v13.n128_f64[0] = MEMORY[0x1EEE9AC00](v66);
  v65 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = 0;
  v15 = 0;
  v63 = a3;
  v18 = a3[8];
  v17 = a3 + 8;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v54 = (v19 + 63) >> 6;
  v55 = a5;
  v59 = v12 + 16;
  v60 = v12;
  v58 = a5 == 0;
  v57 = (v12 + 8);
  while (v21)
  {
    v26 = __clz(__rbit64(v21));
    v64 = (v21 - 1) & v21;
LABEL_17:
    v29 = v26 | (v15 << 6);
    v30 = v63;
    v31 = *(v60 + 16);
    v33 = v65;
    v32 = v66;
    v31(v65, v63[6] + *(v60 + 72) * v29, v66, v13);
    v34 = v30[7];
    v35 = *(v61 + 72);
    v56 = v29;
    v36 = v34 + v35 * v29;
    v37 = v67;
    sub_1DEECF44C(v36, v67, type metadata accessor for NetworkBrowser.Monitor);
    v38 = v68;
    (v31)(v68, v33, v32);
    v39 = v62;
    sub_1DEECF44C(v37, v38 + *(v62 + 48), type metadata accessor for NetworkBrowser.Monitor);
    v40 = v69;
    sub_1DEE17214(v38, v69, &unk_1ECDE4220, &unk_1DEF91DC0);
    v41 = v40 + *(v39 + 48);
    v42 = *(v41 + 16);
    v43 = *(v41 + 24);

    sub_1DEECF3EC(v41, type metadata accessor for NetworkBrowser.Monitor);
    v23 = v58;
    v21 = v64;
    if (!v43)
    {
      goto LABEL_9;
    }

    if (v55)
    {
      if (v42 == v53 && v43 == v55)
      {

        sub_1DEE171B4(v68, &unk_1ECDE4220, &unk_1DEF91DC0);
        v46 = *v57;
        v47 = v66;
        (*v57)(v69, v66);
        sub_1DEECF3EC(v67, type metadata accessor for NetworkBrowser.Monitor);
        v46(v65, v47);
        goto LABEL_21;
      }

      v23 = sub_1DEF8E4E8();

LABEL_9:
      sub_1DEE171B4(v68, &unk_1ECDE4220, &unk_1DEF91DC0);
      v24 = *v57;
      v25 = v66;
      (*v57)(v69, v66);
      sub_1DEECF3EC(v67, type metadata accessor for NetworkBrowser.Monitor);
      v24(v65, v25);
      if (v23)
      {
LABEL_21:
        *(v51 + ((v56 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v56;
        if (__OFADD__(v52++, 1))
        {
          __break(1u);
LABEL_24:
          sub_1DEEC70F4(v51, v50, v52, v63);
          return;
        }
      }
    }

    else
    {

      sub_1DEE171B4(v68, &unk_1ECDE4220, &unk_1DEF91DC0);
      v44 = *v57;
      v45 = v66;
      (*v57)(v69, v66);
      sub_1DEECF3EC(v67, type metadata accessor for NetworkBrowser.Monitor);
      v44(v65, v45);
    }
  }

  v27 = v15;
  while (1)
  {
    v15 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v15 >= v54)
    {
      goto LABEL_24;
    }

    v28 = v17[v15];
    ++v27;
    if (v28)
    {
      v26 = __clz(__rbit64(v28));
      v64 = (v28 - 1) & v28;
      goto LABEL_17;
    }
  }

  __break(1u);
}

unint64_t *sub_1DEECF0F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 32);
  v8 = v7 & 0x3F;
  v9 = ((1 << v7) + 63) >> 6;
  v10 = 8 * v9;
  v11 = swift_bridgeObjectRetain_n();
  if (v8 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v15 = swift_slowAlloc();

      v13 = sub_1DEEC5FC4(v15, v9, a1, a2, a3);
      MEMORY[0x1E12CCD70](v15, -1, -1);
      swift_bridgeObjectRelease_n();
      return v13;
    }
  }

  MEMORY[0x1EEE9AC00](v11);
  bzero(v16 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0), v10);

  sub_1DEECEBB0((v16 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0)), v9, a1, a2, a3);
  v13 = v12;

  if (v3)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v13;
}

uint64_t objectdestroy_9Tm()
{
  v1 = sub_1DEF8D3F8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

void sub_1DEECF388()
{
  v1 = *(sub_1DEF8D3F8() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_1DEEBE208(v2, v3);
}

uint64_t sub_1DEECF3EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DEECF44C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DEECF4B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1DEECF530()
{
  result = qword_1ECDE4370;
  if (!qword_1ECDE4370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4370);
  }

  return result;
}

uint64_t RecordStub.recordID.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t RecordStub.clientDefinedID.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t RecordStub.clientDefinedID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t RecordStub.version.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecordStub(0) + 24);
  v4 = sub_1DEF8D3F8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for RecordStub(uint64_t a1)
{
  result = qword_1ECDE35A8;
  if (!qword_1ECDE35A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RecordStub.version.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RecordStub(0) + 24);
  v4 = sub_1DEF8D3F8();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RecordStub.expiration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RecordStub(0) + 28);

  return sub_1DEECF850(v3, a1);
}

uint64_t sub_1DEECF850(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DC0, &qword_1DEF91640);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t RecordStub.expiration.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for RecordStub(0) + 28);

  return sub_1DEECF904(a1, v3);
}

uint64_t sub_1DEECF904(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DC0, &qword_1DEF91640);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t RecordStub.options.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for RecordStub(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t RecordStub.options.setter(uint64_t *a1)
{
  v2 = *a1;
  result = type metadata accessor for RecordStub(0);
  *(v1 + *(result + 32)) = v2;
  return result;
}

uint64_t RecordStub.init(recordID:clientDefinedID:version:expiration:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, char *a7@<X8>)
{
  v13 = *a6;
  v14 = type metadata accessor for RecordStub(0);
  v15 = v14[7];
  v16 = sub_1DEF8D378();
  (*(*(v16 - 8) + 56))(&a7[v15], 1, 1, v16);
  *a7 = a1;
  *(a7 + 1) = a2;
  *(a7 + 2) = a3;
  v17 = v14[6];
  v18 = sub_1DEF8D3F8();
  (*(*(v18 - 8) + 32))(&a7[v17], a4, v18);
  result = sub_1DEECF904(a5, &a7[v15]);
  *&a7[v14[8]] = v13;
  return result;
}

void sub_1DEECFB94(uint64_t a1)
{
  type metadata accessor for Record.ID(319);
  if (v1 <= 0x3F)
  {
    sub_1DEF8D3F8();
    if (v2 <= 0x3F)
    {
      sub_1DEECFC40(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1DEECFC40(uint64_t a1)
{
  if (!qword_1ECDE3700)
  {
    sub_1DEF8D378();
    v1 = sub_1DEF8DDC8();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECDE3700);
    }
  }
}

char *MismatchedRecordIDResolver.mismatchedRecordIDs(for:remoteRecordVersions:zoneIDs:disabledClientIDs:metadataStore:sourcesByZone:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v12 = a5[3];
  v13 = a5[4];
  v14 = __swift_project_boxed_opaque_existential_1(a5, v12);
  return sub_1DEED02EC(a1, a2, a3, a4, v14, a6, v6, v12, v13);
}

BOOL sub_1DEECFDAC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D80, &qword_1DEF91698);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v33[-v13];
  v15 = MEMORY[0x1E12CC160](v12);
  v16 = *(a1 + 32);
  v17 = *(v16 + 40);
  *&v35 = *(v16 + 32);
  *(&v35 + 1) = v17;
  v34 = &v35;

  LOBYTE(a3) = sub_1DEF34BEC(sub_1DEED2B54, v33, a3);

  if (a3)
  {
    goto LABEL_9;
  }

  v18 = a4[3];
  v19 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v18);
  v20 = (*(*(v19 + 8) + 24))(v18);
  v21 = sub_1DEF718D0(a1, v20);

  if (!v21)
  {
    goto LABEL_9;
  }

  v22 = type metadata accessor for PairingRelationship(0);
  v23 = sub_1DEF71928(v16, *(a5 + *(v22 + 20) + 96));
  if (!v23)
  {
    goto LABEL_9;
  }

  if (!*(a6 + 16))
  {
LABEL_8:

LABEL_9:
    v31 = 0;
    goto LABEL_10;
  }

  v24 = v23;

  v26 = sub_1DEEAF20C(v25);
  if ((v27 & 1) == 0)
  {

    goto LABEL_8;
  }

  v28 = *(*(a6 + 56) + 16 * v26 + 8);
  swift_unknownObjectRetain();

  ObjectType = swift_getObjectType();
  v35 = *(v24 + 24);
  (*(v28 + 32))(a1, a5, &v35, ObjectType, v28);
  swift_unknownObjectRelease();

  v30 = type metadata accessor for PrioritizedRecordValue(0);
  v31 = (*(*(v30 - 8) + 48))(v14, 1, v30) != 1;
  sub_1DEE171B4(v14, &qword_1ECDE3D80, &qword_1DEF91698);
LABEL_10:
  objc_autoreleasePoolPop(v15);
  return v31;
}

uint64_t sub_1DEED002C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v14[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3ED0, &qword_1DEF92030);
  v14[4] = sub_1DEEBBD90();
  v14[0] = a1;
  v14[1] = a2;
  type metadata accessor for PropertyListTypeEncoder();
  inited = swift_initStackObject();
  *(inited + 16) = 0;
  *(inited + 24) = 1;

  v9 = sub_1DEE29274(v14);
  if (v4)
  {
    return __swift_destroy_boxed_opaque_existential_1(v14);
  }

  v10 = sub_1DEE1187C(v9);
  v12 = v11;
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v14);
  sub_1DEE1BFF4(v10, v12);
  sub_1DEF11C10(v10, v12, a3);
  sub_1DEE1BFA0(v10, v12);
  return sub_1DEE1BFA0(v10, v12);
}

uint64_t sub_1DEED014C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v12[3] = MEMORY[0x1E69E6158];
  v12[4] = MEMORY[0x1E69E6160];
  v12[0] = a1;
  v12[1] = a2;
  type metadata accessor for PropertyListTypeEncoder();
  inited = swift_initStackObject();
  *(inited + 16) = 0;
  *(inited + 24) = 1;

  v7 = sub_1DEE29274(v12);
  if (v4)
  {
    return __swift_destroy_boxed_opaque_existential_1(v12);
  }

  v8 = sub_1DEE1187C(v7);
  v10 = v9;
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v12);
  sub_1DEE1BFF4(v8, v10);
  sub_1DEF11C10(v8, v10, a3);
  sub_1DEE1BFA0(v8, v10);
  return sub_1DEE1BFA0(v8, v10);
}

void *sub_1DEED025C(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, char *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_1DEED2678(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

char *sub_1DEED02EC(uint64_t a1, int64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v285 = a6;
  v284 = a4;
  v337 = *MEMORY[0x1E69E9840];
  v316 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE40D8, &unk_1DEF91C10);
  MEMORY[0x1EEE9AC00](v316);
  v298 = &v276 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v307 = &v276 - v15;
  v280 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4108, &unk_1DEF95370);
  MEMORY[0x1EEE9AC00](v280);
  v279 = &v276 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v296 = &v276 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v301 = &v276 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v294 = &v276 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v299 = &v276 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v300 = &v276 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v318 = (&v276 - v28);
  MEMORY[0x1EEE9AC00](v29);
  v278 = &v276 - v30;
  v31 = type metadata accessor for UniformHasher(0);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v289 = &v276 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for Record.ID.Ownership(0);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v290 = &v276 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v282 = type metadata accessor for MetadataRecordPredicate(0);
  MEMORY[0x1EEE9AC00](v282);
  v287 = &v276 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1DEF8D3F8();
  v37 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v305 = &v276 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v310 = &v276 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v293 = &v276 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v277 = &v276 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v276 - v46;
  MEMORY[0x1EEE9AC00](v48);
  v325 = &v276 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D50, &qword_1DEF91668);
  MEMORY[0x1EEE9AC00](v50 - 8);
  v313 = &v276 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52);
  v304 = (&v276 - v53);
  MEMORY[0x1EEE9AC00](v54);
  v309 = &v276 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v308 = (&v276 - v57);
  MEMORY[0x1EEE9AC00](v58);
  v60 = &v276 - v59;
  MEMORY[0x1EEE9AC00](v61);
  v321 = &v276 - v62;
  v335 = a8;
  v336 = a9;
  v63 = __swift_allocate_boxed_opaque_existential_1(&v334);
  v64 = a5;
  v65 = v60;
  (*(*(a8 - 8) + 16))(v63, v64, a8);

  v67 = sub_1DEEA3D0C(v66);

  v68 = *(a2 + 64);
  v315 = (a2 + 64);
  v69 = 1 << *(a2 + 32);
  if (v69 < 64)
  {
    v70 = ~(-1 << v69);
  }

  else
  {
    v70 = -1;
  }

  v71 = v70 & v68;
  v314 = ((v69 + 63) >> 6);
  v328 = (v37 + 16);
  v330 = (v37 + 32);
  v312 = v67 & 0xC000000000000001;
  v72 = v67 & 0xFFFFFFFFFFFFFF8;
  if (v67 < 0)
  {
    v72 = v67;
  }

  v302 = v72;
  v303 = v67;
  v324 = v67 + 56;
  v327 = (v37 + 8);
  v283 = a1;
  v73 = a1 + 32;
  v74 = v36;
  v288 = v73;
  v75 = v47;
  v319 = (v37 + 56);
  v317 = (v37 + 48);
  v281 = @"STRPCodingErrorDomain";
  v326 = v37;
  v286 = v37 + 40;
  v306 = a2;

  v76 = 0;
  v291 = 0;
  v77 = MEMORY[0x1E69E7CC8];
  v295 = MEMORY[0x1E69E7CC8];
  v329 = v74;
  v322 = v65;
  v311 = v75;
  while (2)
  {
    v320 = v77;
    v79 = v321;
    v80 = v315;
    v81 = v314;
    while (1)
    {
      if (v71)
      {
        v83 = v76;
        goto LABEL_23;
      }

      if (v81 <= v76 + 1)
      {
        v84 = (v76 + 1);
      }

      else
      {
        v84 = v81;
      }

      v85 = v84 - 1;
      do
      {
        v83 = v76 + 1;
        if (__OFADD__(v76, 1))
        {
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
          goto LABEL_165;
        }

        if (v83 >= v81)
        {
          v95 = v74;
          v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D68, &qword_1DEF91680);
          (*(*(v113 - 8) + 56))(v65, 1, 1, v113);
          v71 = 0;
          v76 = v85;
          goto LABEL_24;
        }

        v71 = v80[v83];
        ++v76;
      }

      while (!v71);
      v76 = v83;
LABEL_23:
      v86 = __clz(__rbit64(v71));
      v71 &= v71 - 1;
      v87 = v86 | (v83 << 6);
      v88 = *(*(v306 + 48) + 8 * v87);
      v89 = v326;
      v90 = v325;
      (*(v326 + 16))(v325, *(v306 + 56) + *(v326 + 72) * v87, v74);
      v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D68, &qword_1DEF91680);
      v92 = *(v91 + 48);
      v93 = v322;
      *v322 = v88;
      v94 = *(v89 + 32);
      v65 = v93;
      v95 = v74;
      v94(&v93[v92], v90, v74);
      (*(*(v91 - 8) + 56))(v65, 0, 1, v91);

      v79 = v321;
LABEL_24:
      sub_1DEED25FC(v65, v79);
      v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D68, &qword_1DEF91680);
      v97 = *(v96 - 8);
      v98 = *(v97 + 48);
      if (v98(v79, 1, v96) == 1)
      {
        v323 = v98;
        v324 = v97 + 48;

        v176 = v287;
        v177 = v283;
        sub_1DEE27FC0(v283, v287 + *(v282 + 32), type metadata accessor for PairingRelationship);
        *v176 = 513;
        *(v176 + 2) = 1;
        *(v176 + 8) = v303;
        v178 = v335;
        v179 = v336;
        __swift_project_boxed_opaque_existential_1(&v334, v335);
        v180 = MetadataStoring.recordVersions(matching:)(v176, v178, v179);
        MEMORY[0x1EEE9AC00](v180);
        *(&v276 - 4) = v284;
        *(&v276 - 3) = &v334;
        v181 = v285;
        *(&v276 - 2) = v177;
        *(&v276 - 1) = v181;
        sub_1DEED28B8(v182, sub_1DEED266C);
        v184 = v183;

        v333[0] = MEMORY[0x1E69E7CD0];
        v185 = v184 + 64;
        v186 = 1 << *(v184 + 32);
        v187 = -1;
        if (v186 < 64)
        {
          v187 = ~(-1 << v186);
        }

        v188 = v187 & *(v184 + 64);
        v306 = (v186 + 63) >> 6;
        v322 = (v97 + 56);
        v315 = v184;

        v189 = 0;
        v190 = v300;
        v191 = v310;
        v314 = v96;
        v192 = v320;
        v312 = v185;
        if (!v188)
        {
          goto LABEL_88;
        }

        while (2)
        {
          while (2)
          {
            v193 = v189;
LABEL_96:
            v196 = __clz(__rbit64(v188));
            v188 &= v188 - 1;
            v197 = v196 | (v193 << 6);
            v198 = *(v315[6] + 8 * v197);
            v199 = v326;
            v200 = v325;
            v201 = v329;
            (*(v326 + 16))(v325, v315[7] + *(v326 + 72) * v197, v329);
            v202 = *(v96 + 48);
            v203 = v309;
            *v309 = v198;
            v204 = v201;
            v205 = v203;
            (*(v199 + 32))(&v203[v202], v200, v204);
            v206 = *v322;
            (*v322)(v205, 0, 1, v96);

LABEL_97:
            v207 = v308;
            sub_1DEED25FC(v205, v308);
            if ((v323)(v207, 1, v96) == 1)
            {
              v314 = v206;

              v228 = v192[8];
              v318 = v192 + 8;
              v229 = 1 << *(v192 + 32);
              v230 = -1;
              if (v229 < 64)
              {
                v230 = ~(-1 << v229);
              }

              v231 = v230 & v228;
              v310 = ((v229 + 63) >> 6);
              v309 = (v295 & 0xC000000000000001);
              v232 = v295 & 0xFFFFFFFFFFFFFF8;
              if (v295 < 0)
              {
                v232 = v295;
              }

              v308 = v232;

              v233 = 0;
              v234 = v294;
              v235 = v329;
              v236 = v305;
              while (2)
              {
                if (v231)
                {
                  v238 = v233;
LABEL_133:
                  v242 = __clz(__rbit64(v231));
                  v231 &= v231 - 1;
                  v243 = v242 | (v238 << 6);
                  v244 = *(v192[6] + 8 * v243);
                  v245 = v326;
                  v246 = v325;
                  (*(v326 + 16))(v325, v192[7] + *(v326 + 72) * v243, v235);
                  v247 = *(v96 + 48);
                  v248 = v313;
                  *v313 = v244;
                  v249 = *(v245 + 32);
                  v241 = v248;
                  v249(&v248[v247], v246, v235);
                  v314(v241, 0, 1, v96);
                }

                else
                {
                  if (v310 <= v233 + 1)
                  {
                    v239 = (v233 + 1);
                  }

                  else
                  {
                    v239 = v310;
                  }

                  v240 = v239 - 1;
                  v241 = v313;
                  while (1)
                  {
                    v238 = v233 + 1;
                    if (__OFADD__(v233, 1))
                    {
                      goto LABEL_161;
                    }

                    if (v238 >= v310)
                    {
                      break;
                    }

                    v231 = v318[v238];
                    ++v233;
                    if (v231)
                    {
                      v233 = v238;
                      goto LABEL_133;
                    }
                  }

                  v314(v313, 1, 1, v96);
                  v231 = 0;
                  v233 = v240;
                }

                v250 = v304;
                sub_1DEED25FC(v241, v304);
                if ((v323)(v250, 1, v96) == 1)
                {

                  v274 = sub_1DEF4133C(v333[0]);
                  sub_1DEED2AF4(v287, type metadata accessor for MetadataRecordPredicate);

                  __swift_destroy_boxed_opaque_existential_1(&v334);
                  return v274;
                }

                v251 = v250 + *(v96 + 48);
                v252 = *v250;
                v321 = *v330;
                v253 = (v321)(v236, v251, v235);
                v237 = MEMORY[0x1E12CC160](v253);
                if (sub_1DEF01F34(v252, v333[0]))
                {
                  goto LABEL_122;
                }

                v312 = v237;
                v254 = v315;
                v255 = v315[2];
                v311 = v252;
                if (v255 && (v256 = sub_1DEEAF3E8(v252), (v257 & 1) != 0))
                {
                  (*(v326 + 16))(v234, v254[7] + *(v326 + 72) * v256, v235);
                  v258 = 0;
                }

                else
                {
                  v258 = 1;
                }

                v259 = *v319;
                (*v319)(v234, v258, 1, v235);
                v260 = v234;
                v261 = v235;
                v262 = v301;
                (*v328)(v301, v305, v261);
                v259(v262, 0, 1, v261);
                v263 = *(v316 + 48);
                v264 = v298;
                sub_1DEE205E0(v234, v298);
                sub_1DEE205E0(v262, v264 + v263);
                v265 = *v317;
                if ((*v317)(v264, 1, v261) == 1)
                {
                  sub_1DEE171B4(v262, &unk_1ECDE3E80, &unk_1DEF90970);
                  sub_1DEE171B4(v260, &unk_1ECDE3E80, &unk_1DEF90970);
                  v266 = v265(v264 + v263, 1, v261);
                  v234 = v260;
                  v235 = v261;
                  v236 = v305;
                  v192 = v320;
                  if (v266 != 1)
                  {
LABEL_145:
                    sub_1DEE171B4(v264, &qword_1ECDE40D8, &unk_1DEF91C10);
                    v268 = v311;
                    goto LABEL_146;
                  }

                  sub_1DEE171B4(v264, &unk_1ECDE3E80, &unk_1DEF90970);
LABEL_121:
                  v237 = v312;
LABEL_122:
                  objc_autoreleasePoolPop(v237);

                  (*v327)(v236, v235);
                  continue;
                }

                break;
              }

              v267 = v296;
              sub_1DEE205E0(v264, v296);
              v235 = v261;
              if (v265(v264 + v263, 1, v261) == 1)
              {
                sub_1DEE171B4(v301, &unk_1ECDE3E80, &unk_1DEF90970);
                v234 = v294;
                sub_1DEE171B4(v294, &unk_1ECDE3E80, &unk_1DEF90970);
                (*v327)(v267, v261);
                v236 = v305;
                v192 = v320;
                goto LABEL_145;
              }

              v271 = v325;
              (v321)(v325, v264 + v263, v261);
              sub_1DEED2A38();
              LODWORD(v321) = sub_1DEF8D908();
              v272 = *v327;
              (*v327)(v271, v235);
              sub_1DEE171B4(v301, &unk_1ECDE3E80, &unk_1DEF90970);
              v234 = v294;
              sub_1DEE171B4(v294, &unk_1ECDE3E80, &unk_1DEF90970);
              v272(v296, v235);
              sub_1DEE171B4(v264, &unk_1ECDE3E80, &unk_1DEF90970);
              v236 = v305;
              v192 = v320;
              v268 = v311;
              v237 = v312;
              if (v321)
              {
                goto LABEL_122;
              }

LABEL_146:
              if (v309)
              {

                v269 = sub_1DEF8E0B8();

                if (!v269)
                {
                  goto LABEL_156;
                }

                v331 = v269;
                type metadata accessor for Record.ID(0);
                swift_dynamicCast();
                v270 = v332;
                if (!v332)
                {
                  goto LABEL_156;
                }
              }

              else if (!*(v295 + 16) || (sub_1DEEAF3E8(v268), (v273 & 1) == 0) || (v270 = ) == 0)
              {
LABEL_156:

                v270 = v268;
              }

              sub_1DEF38D20(&v332, v270);

              goto LABEL_121;
            }

            v208 = *v207;
            v209 = *v330;
            (*v330)(v191, v207 + *(v96 + 48), v329);
            v210 = v192[2];
            v321 = v208;
            if (v210 && (v211 = sub_1DEEAF3E8(v208), (v212 & 1) != 0))
            {
              v213 = v192[7] + *(v326 + 72) * v211;
              v214 = v318;
              (*(v326 + 16))(v318, v213, v329);
              v215 = 0;
            }

            else
            {
              v215 = 1;
              v214 = v318;
            }

            v216 = *v319;
            v217 = v329;
            (*v319)(v214, v215, 1, v329);
            (*v328)(v190, v191, v217);
            v216(v190, 0, 1, v217);
            v218 = *(v316 + 48);
            v219 = v307;
            sub_1DEE205E0(v214, v307);
            sub_1DEE205E0(v190, v219 + v218);
            v220 = *v317;
            if ((*v317)(v219, 1, v217) == 1)
            {
              sub_1DEE171B4(v190, &unk_1ECDE3E80, &unk_1DEF90970);
              sub_1DEE171B4(v214, &unk_1ECDE3E80, &unk_1DEF90970);
              v221 = v220(v219 + v218, 1, v217);
              v192 = v320;
              if (v221 == 1)
              {
                sub_1DEE171B4(v219, &unk_1ECDE3E80, &unk_1DEF90970);
                v191 = v310;
                v96 = v314;
                v185 = v312;
                (*v327)(v310, v329);
LABEL_112:

                if (v188)
                {
                  continue;
                }

LABEL_88:
                if (v306 <= v189 + 1)
                {
                  v194 = v189 + 1;
                }

                else
                {
                  v194 = v306;
                }

                v195 = v194 - 1;
                while (1)
                {
                  v193 = v189 + 1;
                  if (__OFADD__(v189, 1))
                  {
                    goto LABEL_160;
                  }

                  if (v193 >= v306)
                  {
                    break;
                  }

                  v188 = *(v185 + 8 * v193);
                  ++v189;
                  if (v188)
                  {
                    v189 = v193;
                    goto LABEL_96;
                  }
                }

                v206 = *v322;
                v227 = v309;
                (*v322)(v309, 1, 1, v96);
                v188 = 0;
                v189 = v195;
                v205 = v227;
                goto LABEL_97;
              }

LABEL_107:
              sub_1DEE171B4(v219, &qword_1ECDE40D8, &unk_1DEF91C10);
              v191 = v310;
              v96 = v314;
              v223 = v321;
            }

            else
            {
              v222 = v299;
              sub_1DEE205E0(v219, v299);
              if (v220(v219 + v218, 1, v217) == 1)
              {
                v190 = v300;
                sub_1DEE171B4(v300, &unk_1ECDE3E80, &unk_1DEF90970);
                sub_1DEE171B4(v318, &unk_1ECDE3E80, &unk_1DEF90970);
                (*v327)(v222, v217);
                v192 = v320;
                goto LABEL_107;
              }

              v224 = v325;
              (v209)(v325, v219 + v218, v217);
              sub_1DEED2A38();
              LODWORD(v311) = sub_1DEF8D908();
              v225 = *v327;
              (*v327)(v224, v217);
              v226 = v300;
              sub_1DEE171B4(v300, &unk_1ECDE3E80, &unk_1DEF90970);
              sub_1DEE171B4(v318, &unk_1ECDE3E80, &unk_1DEF90970);
              v225(v222, v217);
              v190 = v226;
              sub_1DEE171B4(v219, &unk_1ECDE3E80, &unk_1DEF90970);
              v192 = v320;
              v191 = v310;
              v96 = v314;
              v223 = v321;
              if (v311)
              {
                v185 = v312;
                v225(v310, v329);
                goto LABEL_112;
              }
            }

            break;
          }

          sub_1DEF38D20(&v332, v223);
          (*v327)(v191, v329);

          v185 = v312;
          if (v188)
          {
            continue;
          }

          goto LABEL_88;
        }
      }

      v99 = *v79;
      v100 = *v330;
      (*v330)(v75, v79 + *(v96 + 48), v95);
      v101 = v99[4];
      if (v312)
      {

        v82 = sub_1DEF8DE98();

        if (v82)
        {
          v292 = v100;
          v114 = v95;
          v115 = v320;
          goto LABEL_45;
        }

LABEL_11:
        v74 = v95;
        goto LABEL_12;
      }

      if (!*(v303 + 16))
      {
        goto LABEL_11;
      }

      sub_1DEF8E7A8();
      v102 = v101[2];
      v103 = v101[3];

      sub_1DEF8D9B8();
      v104 = v101[4];
      v105 = v101[5];
      sub_1DEF8D9B8();
      v106 = sub_1DEF8E7F8();
      v107 = -1 << *(v303 + 32);
      v108 = v106 & ~v107;
      if ((*(v324 + ((v108 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v108))
      {
        break;
      }

LABEL_42:

      v74 = v329;
      v79 = v321;
LABEL_12:
      v75 = v311;
      (*v327)(v311, v74);

      v80 = v315;
      v81 = v314;
      v65 = v322;
    }

    v292 = v100;
    v297 = v99;
    v323 = ~v107;
    v109 = *(v303 + 48);
    while (1)
    {
      v110 = *(v109 + 8 * v108);
      v111 = v102 == v110[2] && v103 == v110[3];
      if (v111 || (sub_1DEF8E4E8() & 1) != 0)
      {
        v112 = v104 == v110[4] && v105 == v110[5];
        if (v112 || (sub_1DEF8E4E8() & 1) != 0)
        {
          break;
        }
      }

      v108 = (v108 + 1) & v323;
      if (((*(v324 + ((v108 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v108) & 1) == 0)
      {
        goto LABEL_42;
      }
    }

    v114 = v329;
    v115 = v320;
    v99 = v297;
LABEL_45:
    v116 = v99[2];
    v117 = v99[3];
    v118 = v99[4];
    v119 = v290;
    (*v319)(v290, 1, 1, v114);
    v323 = type metadata accessor for Record.ID(0);
    v120 = swift_allocObject();
    v120[2] = v116;
    v120[3] = v117;
    v120[4] = v118;
    sub_1DEED2A90(v119, v120 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership);
    v121 = *(v288 + *(type metadata accessor for PairingRelationship(0) + 20));

    if (v121 >= 0xE)
    {

      goto LABEL_62;
    }

    v297 = v99;

    v122 = _s16ReplicatorEngine13UniformHasherVACycfC_0();
    v123 = MEMORY[0x1E12CC160](v122);
    v333[3] = MEMORY[0x1E69E6158];
    v333[4] = MEMORY[0x1E69E6160];
    v333[0] = v116;
    v333[1] = v117;
    type metadata accessor for PropertyListTypeEncoder();
    inited = swift_initStackObject();
    *(inited + 16) = 0;
    *(inited + 24) = 1;

    v125 = v291;
    v126 = sub_1DEE29274(v333);
    v127 = v125;
    if (v125)
    {
      v291 = 0;
      goto LABEL_61;
    }

    v276 = v120;
    LODWORD(v332) = 0;
    NSData = OPACKEncoderCreateNSData(v126);
    if (!NSData)
    {
      v130 = 0;
      v132 = 0xF000000000000000;
LABEL_60:
      v151 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v127 = [v151 initWithDomain:v281 code:2 userInfo:0];
      swift_willThrow();
      sub_1DEE2416C(v130, v132);
      swift_unknownObjectRelease();
      v291 = 0;
      v115 = v320;
      v120 = v276;
LABEL_61:
      __swift_destroy_boxed_opaque_existential_1(v333);

      objc_autoreleasePoolPop(v123);

      sub_1DEED2AF4(v289, type metadata accessor for UniformHasher);
      goto LABEL_62;
    }

    v129 = NSData;
    v130 = sub_1DEF8D278();
    v132 = v131;

    v133 = v332;
    if (v133 != sub_1DEF8D558())
    {
      goto LABEL_60;
    }

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v333);
    sub_1DEE1BFF4(v130, v132);
    v134 = v289;
    sub_1DEF11C10(v130, v132, v289);
    v291 = 0;
    sub_1DEE1BFA0(v130, v132);
    sub_1DEE1BFA0(v130, v132);
    objc_autoreleasePoolPop(v123);
    v135 = v279;
    sub_1DEF8D7F8();
    *(v135 + *(v280 + 36)) = 16;
    v136 = sub_1DEF7F578(v135);
    v137 = v278;
    sub_1DEE3DF08(v136, v138, v278);
    v139 = v329;
    if ((*v317)(v137, 1, v329) != 1)
    {

      sub_1DEED2AF4(v134, type metadata accessor for UniformHasher);
      v140 = v277;
      (v292)(v277, v137, v139);
      v141 = sub_1DEF8D398();
      v143 = v142;
      (*v327)(v140, v139);
      v144 = v276;
      v145 = v276[4];
      v146 = v290;
      sub_1DEE27FC0(v276 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, v290, type metadata accessor for Record.ID.Ownership);
      v147 = swift_allocObject();
      v147[2] = v141;
      v147[3] = v143;
      v147[4] = v145;
      sub_1DEED2A90(v146, v147 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership);
      if ((v295 & 0xC000000000000001) != 0)
      {
        if (v295 < 0)
        {
          v148 = v295;
        }

        else
        {
          v148 = v295 & 0xFFFFFFFFFFFFFF8;
        }

        v149 = sub_1DEF8DE68();
        if (!__OFADD__(v149, 1))
        {
          v150 = sub_1DEEB0BA0(v148, v149 + 1);
          goto LABEL_72;
        }

LABEL_165:
        __break(1u);
      }

      v150 = v295;
LABEL_72:
      v165 = v150;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v333[0] = v165;
      v167 = sub_1DEEAF3E8(v147);
      v169 = *(v165 + 16);
      v170 = (v168 & 1) == 0;
      v158 = __OFADD__(v169, v170);
      v171 = v169 + v170;
      if (v158)
      {
        goto LABEL_164;
      }

      v172 = v168;
      if (*(v165 + 24) >= v171)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v175 = v167;
          sub_1DEEB83F0();
          v167 = v175;
        }
      }

      else
      {
        sub_1DEEB2DFC(v171, isUniquelyReferenced_nonNull_native);
        v167 = sub_1DEEAF3E8(v147);
        if ((v172 & 1) != (v173 & 1))
        {
          goto LABEL_167;
        }
      }

      v115 = v320;
      v295 = v333[0];
      if (v172)
      {
        *(*(v333[0] + 56) + 8 * v167) = v144;
      }

      else
      {
        sub_1DEF41EB8();
      }

      v120 = v147;
LABEL_62:
      v75 = v311;
      v74 = v329;
      (*v328)(v293, v311, v329);
      v152 = v115;
      v153 = swift_isUniquelyReferenced_nonNull_native();
      v333[0] = v152;
      v154 = sub_1DEEAF3E8(v120);
      v156 = *(v152 + 16);
      v157 = (v155 & 1) == 0;
      v158 = __OFADD__(v156, v157);
      v159 = v156 + v157;
      if (v158)
      {
        goto LABEL_162;
      }

      v160 = v155;
      if (*(v152 + 24) >= v159)
      {
        if (v153)
        {
          v77 = v333[0];
          if ((v155 & 1) == 0)
          {
            goto LABEL_69;
          }
        }

        else
        {
          v174 = v154;
          sub_1DEEB8164();
          v154 = v174;
          v77 = v333[0];
          if ((v160 & 1) == 0)
          {
            goto LABEL_69;
          }
        }

LABEL_7:
        v78 = v326;
        (*(v326 + 40))(v77[7] + *(v326 + 72) * v154, v293, v74);

        (*(v78 + 8))(v75, v74);
        goto LABEL_8;
      }

      sub_1DEEB28C8(v159, v153);
      v154 = sub_1DEEAF3E8(v120);
      if ((v160 & 1) != (v161 & 1))
      {
        goto LABEL_167;
      }

      v77 = v333[0];
      if (v160)
      {
        goto LABEL_7;
      }

LABEL_69:
      v77[(v154 >> 6) + 8] |= 1 << v154;
      *(v77[6] + 8 * v154) = v120;
      v162 = v326;
      (v292)(v77[7] + *(v326 + 72) * v154, v293, v74);

      (*(v162 + 8))(v75, v74);
      v163 = v77[2];
      v158 = __OFADD__(v163, 1);
      v164 = v163 + 1;
      if (v158)
      {
        goto LABEL_163;
      }

      v77[2] = v164;
LABEL_8:
      v65 = v322;
      continue;
    }

    break;
  }

  __break(1u);
LABEL_167:
  result = sub_1DEF8E6E8();
  __break(1u);
  return result;
}

uint64_t sub_1DEED25FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D50, &qword_1DEF91668);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1DEED2678(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, char *))
{
  v28 = a2;
  v37 = a4;
  v29 = a1;
  v36 = sub_1DEF8D3F8();
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v36);
  v34 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v5;
  v30 = 0;
  v8 = 0;
  v38 = a3;
  v11 = *(a3 + 64);
  v10 = a3 + 64;
  v9 = v11;
  v12 = 1 << *(v10 - 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v15 = (v12 + 63) >> 6;
  v32 = v5 + 8;
  v33 = v5 + 16;
  v16 = v34;
  while (v14)
  {
    v17 = __clz(__rbit64(v14));
    v39 = (v14 - 1) & v14;
LABEL_11:
    v20 = v17 | (v8 << 6);
    v21 = *(v38 + 56);
    v23 = v35;
    v22 = v36;
    v24 = *(v35 + 72);
    v31 = v20;
    (*(v35 + 16))(v16, v21 + v24 * v20, v36, v6);

    v26 = v37(v25, v16);
    (*(v23 + 8))(v16, v22);

    v14 = v39;
    if (v26)
    {
      *(v29 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
      if (__OFADD__(v30++, 1))
      {
        __break(1u);
LABEL_15:
        sub_1DEEC6B58(v29, v28, v30, v38);
        return;
      }
    }
  }

  v18 = v8;
  while (1)
  {
    v8 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v8 >= v15)
    {
      goto LABEL_15;
    }

    v19 = *(v10 + 8 * v8);
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v39 = (v19 - 1) & v19;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_1DEED28B8(uint64_t a1, uint64_t (*a2)(uint64_t, char *))
{
  v4 = a1;
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v9 = swift_slowAlloc();
      sub_1DEED025C(v9, v6, v4, a2);
      MEMORY[0x1E12CCD70](v9, -1, -1);
      return;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v8 = v10 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v8, v7);
  sub_1DEED2678(v8, v6, v4, a2);
  if (v2)
  {
    swift_willThrow();
  }
}

unint64_t sub_1DEED2A38()
{
  result = qword_1ECDE40E0;
  if (!qword_1ECDE40E0)
  {
    sub_1DEF8D3F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE40E0);
  }

  return result;
}

uint64_t sub_1DEED2A90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Record.ID.Ownership(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DEED2AF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DEED2B54(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1DEF8E4E8() & 1;
  }
}

void *Record.ID.__allocating_init(identifier:zoneIdentifier:ownership:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  sub_1DEED4720(a4, v8 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, type metadata accessor for Record.ID.Ownership);
  return v8;
}

uint64_t Record.Value.init(protocolVersion:data:url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v10 = type metadata accessor for Record.Value(0);
  v11 = *(v10 + 20);
  v12 = sub_1DEF8D1E8();
  (*(*(v12 - 8) + 56))(&a5[v11], 1, 1, v12);
  *&a5[*(v10 + 24)] = a1;
  *a5 = a2;
  *(a5 + 1) = a3;

  return sub_1DEED4690(a4, &a5[v11]);
}

uint64_t Record.init(metadata:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  v6 = type metadata accessor for Record(0);
  return sub_1DEED4720(a2, a3 + *(v6 + 20), type metadata accessor for Record.Value);
}

uint64_t Record.ID.hash(into:)(uint64_t a1)
{
  v2 = sub_1DEF8D3F8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Record.ID.Ownership(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DEF8D9B8();
  sub_1DEF8D9B8();

  sub_1DEF8D9B8();

  sub_1DEED9760(v1 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, v8, type metadata accessor for Record.ID.Ownership);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    return MEMORY[0x1E12CBF60](0);
  }

  (*(v3 + 32))(v5, v8, v2);
  MEMORY[0x1E12CBF60](1);
  sub_1DEED92F0(&qword_1ECDE3638, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1DEF8D8C8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t Record.ID.Ownership.hash(into:)(uint64_t a1)
{
  v2 = sub_1DEF8D3F8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Record.ID.Ownership(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DEED9760(v1, v8, type metadata accessor for Record.ID.Ownership);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    return MEMORY[0x1E12CBF60](0);
  }

  (*(v3 + 32))(v5, v8, v2);
  MEMORY[0x1E12CBF60](1);
  sub_1DEED92F0(&qword_1ECDE3638, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1DEF8D8C8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1DEED313C()
{
  if (*v0)
  {
    return 0x65746F6D6572;
  }

  else
  {
    return 0x6C61636F6CLL;
  }
}

uint64_t sub_1DEED3170@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C61636F6CLL && a2 == 0xE500000000000000;
  if (v6 || (sub_1DEF8E4E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65746F6D6572 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DEF8E4E8();

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

uint64_t sub_1DEED3244(uint64_t a1)
{
  v2 = sub_1DEED9248();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEED3280(uint64_t a1)
{
  v2 = sub_1DEED9248();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DEED32BC(uint64_t a1)
{
  v2 = sub_1DEED9338();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEED32F8(uint64_t a1)
{
  v2 = sub_1DEED9338();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DEED3334(uint64_t a1)
{
  v2 = sub_1DEED929C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEED3370(uint64_t a1)
{
  v2 = sub_1DEED929C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Record.ID.Ownership.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4380, &qword_1DEF92038);
  v26 = *(v2 - 8);
  v27 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v25 = &v21 - v3;
  v4 = sub_1DEF8D3F8();
  v28 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v24 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4388, &qword_1DEF92040);
  v22 = *(v6 - 8);
  v23 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - v7;
  v9 = type metadata accessor for Record.ID.Ownership(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4390, &qword_1DEF92048);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v21 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEED9248();
  v16 = v28;
  sub_1DEF8E858();
  sub_1DEED9760(v29, v11, type metadata accessor for Record.ID.Ownership);
  if ((*(v16 + 48))(v11, 1, v4) == 1)
  {
    v30 = 0;
    sub_1DEED9338();
    sub_1DEF8E248();
    (*(v22 + 8))(v8, v23);
  }

  else
  {
    v18 = v24;
    (*(v16 + 32))(v24, v11, v4);
    v31 = 1;
    sub_1DEED929C();
    v19 = v25;
    sub_1DEF8E248();
    sub_1DEED92F0(&qword_1ECDE3640, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    v20 = v27;
    sub_1DEF8E298();
    (*(v26 + 8))(v19, v20);
    (*(v16 + 8))(v18, v4);
  }

  return (*(v13 + 8))(v15, v12);
}

uint64_t Record.ID.Ownership.hashValue.getter()
{
  v1 = v0;
  v2 = sub_1DEF8D3F8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Record.ID.Ownership(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DEF8E7A8();
  sub_1DEED9760(v1, v8, type metadata accessor for Record.ID.Ownership);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    MEMORY[0x1E12CBF60](0);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x1E12CBF60](1);
    sub_1DEED92F0(&qword_1ECDE3638, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    sub_1DEF8D8C8();
    (*(v3 + 8))(v5, v2);
  }

  return sub_1DEF8E7F8();
}

uint64_t Record.ID.Ownership.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE43B0, &qword_1DEF92050);
  v4 = *(v3 - 8);
  v46 = v3;
  v47 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v48 = &v41 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE43B8, &qword_1DEF92058);
  v7 = *(v6 - 8);
  v44 = v6;
  v45 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE43C0, &unk_1DEF92060);
  v50 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v41 - v11;
  v13 = type metadata accessor for Record.ID.Ownership(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v41 - v17;
  v19 = a1[3];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1DEED9248();
  v20 = v51;
  sub_1DEF8E848();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(v52);
  }

  v51 = v13;
  v42 = v15;
  v43 = v18;
  v22 = v48;
  v21 = v49;
  v23 = sub_1DEF8E228();
  v24 = (2 * *(v23 + 16)) | 1;
  v53 = v23;
  v54 = v23 + 32;
  v55 = 0;
  v56 = v24;
  v25 = sub_1DEE25E0C();
  v26 = v10;
  v27 = v12;
  if (v25 == 2 || v55 != v56 >> 1)
  {
    v30 = sub_1DEF8DF68();
    swift_allocError();
    v32 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B78, &qword_1DEF93FE0);
    *v32 = v51;
    sub_1DEF8E188();
    sub_1DEF8DF48();
    (*(*(v30 - 8) + 104))(v32, *MEMORY[0x1E69E6AF8], v30);
    swift_willThrow();
    (*(v50 + 8))(v12, v26);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v52);
  }

  if (v25)
  {
    v57 = 1;
    sub_1DEED929C();
    v28 = v22;
    sub_1DEF8E178();
    v29 = v50;
    v35 = v21;
    v36 = sub_1DEF8D3F8();
    sub_1DEED92F0(&qword_1ECDE3630, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    v37 = v42;
    v38 = v46;
    sub_1DEF8E1F8();
    (*(v47 + 8))(v28, v38);
    (*(v29 + 8))(v27, v26);
    swift_unknownObjectRelease();
    (*(*(v36 - 8) + 56))(v37, 0, 1, v36);
    v39 = v43;
    sub_1DEED4720(v37, v43, type metadata accessor for Record.ID.Ownership);
  }

  else
  {
    v57 = 0;
    sub_1DEED9338();
    sub_1DEF8E178();
    v34 = v50;
    v35 = v21;
    (*(v45 + 8))(v9, v44);
    (*(v34 + 8))(v12, v10);
    swift_unknownObjectRelease();
    v40 = sub_1DEF8D3F8();
    v39 = v43;
    (*(*(v40 - 8) + 56))(v43, 1, 1, v40);
  }

  sub_1DEED4720(v39, v35, type metadata accessor for Record.ID.Ownership);
  return __swift_destroy_boxed_opaque_existential_1(v52);
}

uint64_t sub_1DEED4098(uint64_t a1)
{
  v2 = sub_1DEF8D3F8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DEED9760(v1, v8, type metadata accessor for Record.ID.Ownership);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    return MEMORY[0x1E12CBF60](0);
  }

  (*(v3 + 32))(v5, v8, v2);
  MEMORY[0x1E12CBF60](1);
  sub_1DEED92F0(&qword_1ECDE3638, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1DEF8D8C8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1DEED4264(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1DEF8D3F8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DEF8E7A8();
  sub_1DEED9760(v2, v9, type metadata accessor for Record.ID.Ownership);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    MEMORY[0x1E12CBF60](0);
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    MEMORY[0x1E12CBF60](1);
    sub_1DEED92F0(&qword_1ECDE3638, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    sub_1DEF8D8C8();
    (*(v4 + 8))(v6, v3);
  }

  return sub_1DEF8E7F8();
}

uint64_t Record.ID.identifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Record.ID.description.getter()
{
  sub_1DEF8DF28();
  MEMORY[0x1E12CB180](0x203A656E6F7ALL, 0xE600000000000000);
  v1 = v0[4];
  v3 = v1[4];
  v4 = v1[5];

  MEMORY[0x1E12CB180](14906, 0xE200000000000000);
  MEMORY[0x1E12CB180](v1[2], v1[3]);
  MEMORY[0x1E12CB180](v3, v4);

  MEMORY[0x1E12CB180](0x7372656E776F203BLL, 0xED0000203A706968);
  type metadata accessor for Record.ID.Ownership(0);
  sub_1DEF8E008();
  MEMORY[0x1E12CB180](0x69746E656469203BLL, 0xEE00203A72656966);
  MEMORY[0x1E12CB180](v0[2], v0[3]);
  return 0;
}

void *Record.ID.init(identifier:zoneIdentifier:ownership:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  sub_1DEED4720(a4, v4 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, type metadata accessor for Record.ID.Ownership);
  return v4;
}

uint64_t sub_1DEED4690(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DEED4720(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t Record.ID.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  Record.ID.init(from:)(a1);
  return v2;
}

void *Record.ID.init(from:)(void *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = *v1;
  v36 = type metadata accessor for Record.ID.Versions.V8(0);
  MEMORY[0x1EEE9AC00](v36);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - v10;
  v12 = type metadata accessor for Record.ID.Ownership(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for Record.ID.Versions.V0(0);
  MEMORY[0x1EEE9AC00](v29);
  v16 = (&v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1DEE29594(a1, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE43C8, &qword_1DEF92070);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE43D0, &qword_1DEF92078);
  if (swift_dynamicCast())
  {
    v27 = v14;
    v28 = v6;
    sub_1DEE2F1AC(v30, v33);
    v17 = v34;
    v18 = v35;
    __swift_project_boxed_opaque_existential_1(v33, v34);
    v19 = (*(v18 + 16))(v17, v18);
    if (v20)
    {
      __swift_destroy_boxed_opaque_existential_1(v33);
      v3 = v2;
      goto LABEL_5;
    }

    if (v19 > 7)
    {
      sub_1DEE29594(a1, v32);
      sub_1DEED4FC0(v32, v11);
      __swift_destroy_boxed_opaque_existential_1(a1);
      if (v2)
      {
        goto LABEL_11;
      }

      v1[2] = *v11;
      *(v1 + 3) = *(v11 + 8);
      v25 = &v11[*(v36 + 24)];
    }

    else
    {
      sub_1DEE29594(a1, v32);
      sub_1DEED4C34(v32, v16);
      if (v2)
      {
        __swift_destroy_boxed_opaque_existential_1(a1);
LABEL_11:
        __swift_destroy_boxed_opaque_existential_1(v33);
        goto LABEL_12;
      }

      v22 = v16[1];
      v4[2] = *v16;
      v4[3] = v22;
      v23 = v16[2];
      type metadata accessor for Zone.ID.Pool();

      v24 = sub_1DEF4A4A0(v23);
      __swift_destroy_boxed_opaque_existential_1(a1);
      v4[4] = v24;
      v25 = v27;
      sub_1DEED9760(v16 + *(v29 + 24), v27, type metadata accessor for Record.ID.Ownership);
      sub_1DEED93CC(v16, type metadata accessor for Record.ID.Versions.V0);
    }

    sub_1DEED4720(v25, v4 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, type metadata accessor for Record.ID.Ownership);
    __swift_destroy_boxed_opaque_existential_1(v33);
    return v4;
  }

  v31 = 0;
  memset(v30, 0, sizeof(v30));
  sub_1DEE171B4(v30, &qword_1ECDE43D8, &qword_1DEF92080);
LABEL_5:
  sub_1DEE29594(a1, v33);
  sub_1DEED4FC0(v33, v8);
  __swift_destroy_boxed_opaque_existential_1(a1);
  if (v3)
  {
LABEL_12:
    swift_deallocPartialClassInstance();
    return v4;
  }

  v1[2] = *v8;
  *(v1 + 3) = *(v8 + 8);
  sub_1DEED4720(&v8[*(v36 + 24)], v1 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, type metadata accessor for Record.ID.Ownership);
  return v4;
}

uint64_t sub_1DEED4C34@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v22 = type metadata accessor for Record.ID.Ownership(0);
  MEMORY[0x1EEE9AC00](v22);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4578, &qword_1DEF929A0);
  v23 = *(v6 - 8);
  v24 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  v9 = type metadata accessor for Record.ID.Versions.V0(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEEDA6B4();
  sub_1DEF8E848();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = a1;
  v12 = v23;
  v13 = v24;
  v27 = 0;
  *v11 = sub_1DEF8E1D8();
  v11[1] = v14;
  v26 = 1;
  v11[2] = sub_1DEF8E1D8();
  v11[3] = v15;
  v25 = 2;
  sub_1DEED92F0(&qword_1ECDE4580, type metadata accessor for Record.ID.Ownership, &protocol conformance descriptor for Record.ID.Ownership);
  v19 = v11;
  sub_1DEF8E1F8();
  (*(v12 + 8))(v8, v13);
  v16 = *(v9 + 24);
  v17 = v19;
  sub_1DEED4720(v5, v19 + v16, type metadata accessor for Record.ID.Ownership);
  sub_1DEED9760(v17, v21, type metadata accessor for Record.ID.Versions.V0);
  __swift_destroy_boxed_opaque_existential_1(v20);
  return sub_1DEED93CC(v17, type metadata accessor for Record.ID.Versions.V0);
}

uint64_t sub_1DEED4FC0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v3 = type metadata accessor for Record.ID.Ownership(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4588, &unk_1DEF929A8);
  v19 = *(v6 - 8);
  v20 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v17 - v7;
  v9 = type metadata accessor for Record.ID.Versions.V8(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEEDA660();
  v21 = v8;
  v12 = v22;
  sub_1DEF8E848();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = v3;
  v13 = v19;
  v14 = v20;
  v26 = 0;
  *v11 = sub_1DEF8E1D8();
  v11[1] = v15;
  v17[1] = v15;
  type metadata accessor for Zone.ID();
  v25 = 1;
  sub_1DEED92F0(&qword_1ECDE2E98, type metadata accessor for Zone.ID, &protocol conformance descriptor for Zone.ID);
  sub_1DEF8E1F8();
  v11[2] = v23;
  v24 = 2;
  sub_1DEED92F0(&qword_1ECDE4580, type metadata accessor for Record.ID.Ownership, &protocol conformance descriptor for Record.ID.Ownership);
  sub_1DEF8E1F8();
  (*(v13 + 8))(v21, v14);
  sub_1DEED4720(v5, v11 + *(v9 + 24), type metadata accessor for Record.ID.Ownership);
  sub_1DEED9760(v11, v18, type metadata accessor for Record.ID.Versions.V8);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1DEED93CC(v11, type metadata accessor for Record.ID.Versions.V8);
}

uint64_t Record.ID.deinit()
{

  sub_1DEED93CC(v0 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, type metadata accessor for Record.ID.Ownership);
  return v0;
}

uint64_t Record.ID.__deallocating_deinit()
{

  sub_1DEED93CC(v0 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, type metadata accessor for Record.ID.Ownership);

  return swift_deallocClassInstance();
}

uint64_t Record.ID.hashValue.getter()
{
  v1 = sub_1DEF8D3F8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Record.ID.Ownership(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DEF8E7A8();
  sub_1DEF8D9B8();
  sub_1DEF8D9B8();

  sub_1DEF8D9B8();

  sub_1DEED9760(v0 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, v7, type metadata accessor for Record.ID.Ownership);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    MEMORY[0x1E12CBF60](0);
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    MEMORY[0x1E12CBF60](1);
    sub_1DEED92F0(&qword_1ECDE3638, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    sub_1DEF8D8C8();
    (*(v2 + 8))(v4, v1);
  }

  return sub_1DEF8E7F8();
}

uint64_t sub_1DEED56CC(uint64_t a1)
{
  v2 = sub_1DEF8D3F8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Record.ID.Ownership(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  sub_1DEF8D9B8();
  sub_1DEF8D9B8();

  sub_1DEF8D9B8();

  sub_1DEED9760(v9 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, v8, type metadata accessor for Record.ID.Ownership);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    return MEMORY[0x1E12CBF60](0);
  }

  (*(v3 + 32))(v5, v8, v2);
  MEMORY[0x1E12CBF60](1);
  sub_1DEED92F0(&qword_1ECDE3638, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1DEF8D8C8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1DEED58F4(uint64_t a1)
{
  v2 = sub_1DEF8D3F8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Record.ID.Ownership(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  sub_1DEF8E7A8();
  sub_1DEF8D9B8();
  sub_1DEF8D9B8();

  sub_1DEF8D9B8();

  sub_1DEED9760(v9 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, v8, type metadata accessor for Record.ID.Ownership);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    MEMORY[0x1E12CBF60](0);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x1E12CBF60](1);
    sub_1DEED92F0(&qword_1ECDE3638, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    sub_1DEF8D8C8();
    (*(v3 + 8))(v5, v2);
  }

  return sub_1DEF8E7F8();
}

uint64_t Record.Value.data.getter()
{
  v1 = *v0;
  sub_1DEE1BFF4(*v0, *(v0 + 8));
  return v1;
}

uint64_t Record.Value.data.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1DEE1BFA0(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t Record.Value.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Record.Value(0) + 20);

  return sub_1DEE2C3D8(v3, a1);
}

uint64_t Record.Value.protocolVersion.setter(uint64_t a1)
{
  result = type metadata accessor for Record.Value(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t Record.metadata.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_1DEED5E24(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = v3 + *(a2(0) + 20);

  return a3(a1, v5);
}

uint64_t Record.description.getter()
{
  v1 = type metadata accessor for Record.Value(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0;
  v9 = 0xE000000000000000;
  sub_1DEF8DF28();

  v8 = 0x617461646174656DLL;
  v9 = 0xEA0000000000203ALL;
  v4 = RecordMetadata.description.getter();
  MEMORY[0x1E12CB180](v4);

  MEMORY[0x1E12CB180](0x3A65756C6176203BLL, 0xE900000000000020);
  v5 = type metadata accessor for Record(0);
  sub_1DEED9760(v0 + *(v5 + 20), v3, type metadata accessor for Record.Value);
  v6 = sub_1DEF8D988();
  MEMORY[0x1E12CB180](v6);

  MEMORY[0x1E12CB180](59, 0xE100000000000000);
  return v8;
}

BOOL static Record.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if (!_s16ReplicatorEngine14RecordMetadataC2eeoiySbAC_ACtFZ_0(*a1, *a2))
  {
    return 0;
  }

  v4 = *(type metadata accessor for Record(0) + 20);

  return _s16ReplicatorEngine6RecordV5ValueV2eeoiySbAE_AEtFZ_0((a1 + v4), (a2 + v4));
}

uint64_t sub_1DEED607C()
{
  if (*v0)
  {
    return 0x65756C6176;
  }

  else
  {
    return 0x617461646174656DLL;
  }
}

uint64_t sub_1DEED60B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
  if (v6 || (sub_1DEF8E4E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DEF8E4E8();

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

uint64_t sub_1DEED618C(uint64_t a1)
{
  v2 = sub_1DEED982C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEED61C8(uint64_t a1)
{
  v2 = sub_1DEED982C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Record.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE43E0, &qword_1DEF92088);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEED982C();
  sub_1DEF8E858();
  v11 = *v3;
  v10[7] = 0;
  type metadata accessor for RecordMetadata(0);
  sub_1DEED92F0(&qword_1ECDE43F0, type metadata accessor for RecordMetadata, &protocol conformance descriptor for RecordMetadata);
  sub_1DEF8E298();
  if (!v2)
  {
    type metadata accessor for Record(0);
    v10[6] = 1;
    type metadata accessor for Record.Value(0);
    sub_1DEED92F0(&qword_1ECDE43F8, type metadata accessor for Record.Value, &protocol conformance descriptor for Record.Value);
    sub_1DEF8E298();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t Record.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v21 = type metadata accessor for Record.Value(0);
  MEMORY[0x1EEE9AC00](v21);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4400, &qword_1DEF92090);
  v20 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v7 = v17 - v6;
  v8 = type metadata accessor for Record(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEED982C();
  sub_1DEF8E848();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = a1;
  v11 = v10;
  v12 = v20;
  type metadata accessor for RecordMetadata(0);
  v24 = 0;
  sub_1DEED92F0(&qword_1ECDE4408, type metadata accessor for RecordMetadata, &protocol conformance descriptor for RecordMetadata);
  v13 = v22;
  sub_1DEF8E1F8();
  v17[0] = v11;
  v17[1] = v25;
  *v11 = v25;
  v23 = 1;
  sub_1DEED92F0(&qword_1ECDE4410, type metadata accessor for Record.Value, &protocol conformance descriptor for Record.Value);
  sub_1DEF8E1F8();
  (*(v12 + 8))(v7, v13);
  v14 = *(v8 + 20);
  v15 = v17[0];
  sub_1DEED4720(v5, v17[0] + v14, type metadata accessor for Record.Value);
  sub_1DEED9760(v15, v19, type metadata accessor for Record);
  __swift_destroy_boxed_opaque_existential_1(v18);
  return sub_1DEED93CC(v15, type metadata accessor for Record);
}

uint64_t sub_1DEED67B0(uint64_t *a1, uint64_t *a2)
{
  type metadata accessor for RecordMetadata(0);
  if ((static RecordMetadata.== infix(_:_:)(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return static Record.Value.== infix(_:_:)();
}

uint64_t sub_1DEED6830(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1701736314;
  if (v2 != 1)
  {
    v4 = 0x69687372656E776FLL;
    v3 = 0xE900000000000070;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x696669746E656469;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEA00000000007265;
  }

  v7 = 0xE400000000000000;
  v8 = 1701736314;
  if (*a2 != 1)
  {
    v8 = 0x69687372656E776FLL;
    v7 = 0xE900000000000070;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x696669746E656469;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEA00000000007265;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DEF8E4E8();
  }

  return v11 & 1;
}

uint64_t sub_1DEED692C()
{
  sub_1DEF8E7A8();
  sub_1DEF8D9B8();

  return sub_1DEF8E7F8();
}

uint64_t sub_1DEED69D0(uint64_t a1)
{
  sub_1DEF8D9B8();
}

uint64_t sub_1DEED6A60(uint64_t a1)
{
  sub_1DEF8E7A8();
  sub_1DEF8D9B8();

  return sub_1DEF8E7F8();
}

unint64_t sub_1DEED6B00@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DEEDAD70(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DEED6B30(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000007265;
  v4 = 0xE400000000000000;
  v5 = 1701736314;
  if (v2 != 1)
  {
    v5 = 0x69687372656E776FLL;
    v4 = 0xE900000000000070;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x696669746E656469;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1DEED6B90()
{
  v1 = 1701736314;
  if (*v0 != 1)
  {
    v1 = 0x69687372656E776FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

unint64_t sub_1DEED6BEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DEEDAD70(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DEED6C14(uint64_t a1)
{
  v2 = sub_1DEEDA6B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEED6C50(uint64_t a1)
{
  v2 = sub_1DEEDA6B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DEED6C8C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4518, &qword_1DEF92970);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEEDA6B4();
  sub_1DEF8E858();
  v8[15] = 0;
  sub_1DEF8E278();
  if (!v1)
  {
    v8[14] = 1;
    sub_1DEF8E278();
    type metadata accessor for Record.ID.Versions.V0(0);
    v8[13] = 2;
    type metadata accessor for Record.ID.Ownership(0);
    sub_1DEED92F0(&qword_1ECDE4510, type metadata accessor for Record.ID.Ownership, &protocol conformance descriptor for Record.ID.Ownership);
    sub_1DEF8E298();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1DEED6ED8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6E656449656E6F7ALL;
  v4 = 0xEE00726569666974;
  if (v2 != 1)
  {
    v3 = 0x69687372656E776FLL;
    v4 = 0xE900000000000070;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x696669746E656469;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEA00000000007265;
  }

  v7 = 0x6E656449656E6F7ALL;
  v8 = 0xEE00726569666974;
  if (*a2 != 1)
  {
    v7 = 0x69687372656E776FLL;
    v8 = 0xE900000000000070;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x696669746E656469;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEA00000000007265;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DEF8E4E8();
  }

  return v11 & 1;
}

uint64_t sub_1DEED6FFC()
{
  sub_1DEF8E7A8();
  sub_1DEF8D9B8();

  return sub_1DEF8E7F8();
}

uint64_t sub_1DEED70B4(uint64_t a1)
{
  sub_1DEF8D9B8();
}

uint64_t sub_1DEED7158(uint64_t a1)
{
  sub_1DEF8E7A8();
  sub_1DEF8D9B8();

  return sub_1DEF8E7F8();
}

unint64_t sub_1DEED720C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DEEDADBC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DEED723C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000007265;
  v4 = 0xEE00726569666974;
  v5 = 0x6E656449656E6F7ALL;
  if (v2 != 1)
  {
    v5 = 0x69687372656E776FLL;
    v4 = 0xE900000000000070;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x696669746E656469;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1DEED72B0()
{
  v1 = 0x6E656449656E6F7ALL;
  if (*v0 != 1)
  {
    v1 = 0x69687372656E776FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

unint64_t sub_1DEED7320@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DEEDADBC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DEED7348(uint64_t a1)
{
  v2 = sub_1DEEDA660();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEED7384(uint64_t a1)
{
  v2 = sub_1DEEDA660();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DEED73C0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4500, &qword_1DEF92968);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEEDA660();
  sub_1DEF8E858();
  v12 = 0;
  sub_1DEF8E278();
  if (!v2)
  {
    v11 = *(v3 + 16);
    v10[15] = 1;
    type metadata accessor for Zone.ID();
    sub_1DEED92F0(&qword_1ECDE2EA8, type metadata accessor for Zone.ID, &protocol conformance descriptor for Zone.ID);
    sub_1DEF8E298();
    type metadata accessor for Record.ID.Versions.V8(0);
    v10[14] = 2;
    type metadata accessor for Record.ID.Ownership(0);
    sub_1DEED92F0(&qword_1ECDE4510, type metadata accessor for Record.ID.Ownership, &protocol conformance descriptor for Record.ID.Ownership);
    sub_1DEF8E298();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t Record.ID.encode(to:)(uint64_t a1)
{
  v2 = v1;
  sub_1DEE29594(a1, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4418, &qword_1DEF92098);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4420, &qword_1DEF920A0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v26 = 0;
    memset(v25, 0, sizeof(v25));
    sub_1DEE171B4(v25, &qword_1ECDE4428, &qword_1DEF920A8);
    goto LABEL_5;
  }

  sub_1DEE2F1AC(v25, v27);
  v3 = v28;
  v4 = v29;
  __swift_project_boxed_opaque_existential_1(v27, v28);
  v5 = (*(v4 + 16))(v3, v4);
  if (v6)
  {
    __swift_destroy_boxed_opaque_existential_1(v27);
LABEL_5:
    v8 = *(v1 + 16);
    v7 = *(v1 + 24);
    v9 = *(v2 + 32);
    v10 = OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership;
    v11 = type metadata accessor for Record.ID.Versions.V8(0);
    v31 = v11;
    v32 = sub_1DEED92F0(&qword_1ECDE4430, type metadata accessor for Record.ID.Versions.V8, &unk_1DEF927FC);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v30);
    sub_1DEED9760(v2 + v10, boxed_opaque_existential_1 + *(v11 + 24), type metadata accessor for Record.ID.Ownership);
    *boxed_opaque_existential_1 = v8;
    boxed_opaque_existential_1[1] = v7;
    boxed_opaque_existential_1[2] = v9;

    goto LABEL_10;
  }

  v14 = *(v1 + 16);
  v13 = *(v1 + 24);
  v15 = *(v2 + 32);
  if (v5 > 7)
  {
    v21 = OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership;
    v22 = type metadata accessor for Record.ID.Versions.V8(0);
    v31 = v22;
    v32 = sub_1DEED92F0(&qword_1ECDE4430, type metadata accessor for Record.ID.Versions.V8, &unk_1DEF927FC);
    v23 = __swift_allocate_boxed_opaque_existential_1(v30);
    sub_1DEED9760(v2 + v21, v23 + *(v22 + 24), type metadata accessor for Record.ID.Ownership);
    *v23 = v14;
    v23[1] = v13;
    v23[2] = v15;
  }

  else
  {
    v16 = *(v15 + 16);
    v17 = *(v15 + 24);
    v33 = v16;
    v18 = OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership;
    v19 = type metadata accessor for Record.ID.Versions.V0(0);
    v31 = v19;
    v32 = sub_1DEED92F0(&qword_1ECDE4438, type metadata accessor for Record.ID.Versions.V0, &unk_1DEF927D4);
    v20 = __swift_allocate_boxed_opaque_existential_1(v30);
    sub_1DEED9760(v2 + v18, v20 + *(v19 + 24), type metadata accessor for Record.ID.Ownership);
    *v20 = v14;
    v20[1] = v13;
    v20[2] = v33;
    v20[3] = v17;
  }

  __swift_destroy_boxed_opaque_existential_1(v27);
LABEL_10:
  __swift_project_boxed_opaque_existential_1(v30, v31);
  sub_1DEF8D8A8();
  return __swift_destroy_boxed_opaque_existential_1(v30);
}

void *sub_1DEED7964@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = Record.ID.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1DEED79E0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4540, &qword_1DEF92980);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEEDA75C();
  sub_1DEF8E858();
  v9 = v3[1];
  v12 = *v3;
  v13 = v9;
  v11[15] = 0;
  sub_1DEE1BFF4(v12, v9);
  sub_1DEEBBEC0();
  sub_1DEF8E298();
  sub_1DEE1BFA0(v12, v13);
  if (!v2)
  {
    type metadata accessor for Record.Value.Versions.V0(0);
    LOBYTE(v12) = 1;
    sub_1DEF8D1E8();
    sub_1DEED92F0(&qword_1ECDE4538, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
    sub_1DEF8E258();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1DEED7BBC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4550, &qword_1DEF92988);
  v21 = *(v7 - 8);
  v22 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  v10 = type metadata accessor for Record.Value.Versions.V0(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 28);
  v15 = sub_1DEF8D1E8();
  v16 = *(*(v15 - 8) + 56);
  v23 = v14;
  v16(&v12[v14], 1, 1, v15);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEEDA75C();
  sub_1DEF8E848();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1DEE171B4(&v12[v23], &qword_1ECDE4890, &qword_1DEF90990);
  }

  else
  {
    v17 = v21;
    v25 = 0;
    sub_1DEE1E77C();
    v18 = v22;
    sub_1DEF8E1F8();
    *v12 = v24;
    LOBYTE(v24) = 1;
    sub_1DEED92F0(&qword_1ECDE4558, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
    sub_1DEF8E1B8();
    (*(v17 + 8))(v9, v18);
    sub_1DEED4690(v6, &v12[v23]);
    sub_1DEED9760(v12, v20, type metadata accessor for Record.Value.Versions.V0);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1DEED93CC(v12, type metadata accessor for Record.Value.Versions.V0);
  }
}

uint64_t sub_1DEED7F1C()
{
  if (*v0)
  {
    return 7107189;
  }

  else
  {
    return 1635017060;
  }
}

uint64_t sub_1DEED7F48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1635017060 && a2 == 0xE400000000000000;
  if (v5 || (sub_1DEF8E4E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DEF8E4E8();

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

uint64_t sub_1DEED8024(uint64_t a1)
{
  v2 = sub_1DEEDA75C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEED8060(uint64_t a1)
{
  v2 = sub_1DEEDA75C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DEED80CC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4528, &qword_1DEF92978);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEEDA708();
  sub_1DEF8E858();
  v9 = v3[1];
  v12 = *v3;
  v13 = v9;
  v11[15] = 0;
  sub_1DEE1BFF4(v12, v9);
  sub_1DEEBBEC0();
  sub_1DEF8E298();
  sub_1DEE1BFA0(v12, v13);
  if (!v2)
  {
    type metadata accessor for Record.Value.Versions.V8(0);
    LOBYTE(v12) = 1;
    sub_1DEF8D1E8();
    sub_1DEED92F0(&qword_1ECDE4538, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
    sub_1DEF8E258();
    LOBYTE(v12) = 2;
    sub_1DEF8E2B8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1DEED82D8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4560, &qword_1DEF92990);
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23 - v8;
  v10 = type metadata accessor for Record.Value.Versions.V8(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 20);
  v15 = sub_1DEF8D1E8();
  v16 = *(*(v15 - 8) + 56);
  v27 = v12;
  v28 = v14;
  v16(&v12[v14], 1, 1, v15);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEEDA708();
  sub_1DEF8E848();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1DEE171B4(v27 + v28, &qword_1ECDE4890, &qword_1DEF90990);
  }

  else
  {
    v23 = a1;
    v17 = v6;
    v18 = v25;
    v30 = 0;
    sub_1DEE1E77C();
    v19 = v26;
    sub_1DEF8E1F8();
    v20 = v27;
    *v27 = v29;
    LOBYTE(v29) = 1;
    sub_1DEED92F0(&qword_1ECDE4558, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
    sub_1DEF8E1B8();
    sub_1DEED4690(v17, v20 + v28);
    LOBYTE(v29) = 2;
    v21 = sub_1DEF8E218();
    (*(v18 + 8))(v9, v19);
    *(v20 + *(v10 + 24)) = v21;
    sub_1DEED9760(v20, v24, type metadata accessor for Record.Value.Versions.V8);
    __swift_destroy_boxed_opaque_existential_1(v23);
    return sub_1DEED93CC(v20, type metadata accessor for Record.Value.Versions.V8);
  }
}

uint64_t sub_1DEED86A0()
{
  v1 = 7107189;
  if (*v0 != 1)
  {
    v1 = 0x6C6F636F746F7270;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1635017060;
  }
}

uint64_t sub_1DEED86F8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DEEDAE08(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DEED8720(uint64_t a1)
{
  v2 = sub_1DEEDA708();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEED875C(uint64_t a1)
{
  v2 = sub_1DEEDA708();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Record.Value.encode(to:)(uint64_t a1)
{
  v2 = v1;
  sub_1DEE29594(a1, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4418, &qword_1DEF92098);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4420, &qword_1DEF920A0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v27 = 0;
    memset(v26, 0, sizeof(v26));
    sub_1DEE171B4(v26, &qword_1ECDE4428, &qword_1DEF920A8);
    goto LABEL_5;
  }

  sub_1DEE2F1AC(v26, v28);
  v3 = v29;
  v4 = v30;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  v5 = (*(v4 + 16))(v3, v4);
  if (v6)
  {
    __swift_destroy_boxed_opaque_existential_1(v28);
LABEL_5:
    v7 = *v1;
    v8 = v2[1];
    v9 = type metadata accessor for Record.Value(0);
    v10 = *(v9 + 20);
    v11 = type metadata accessor for Record.Value.Versions.V8(0);
    v32 = v11;
    v33 = sub_1DEED92F0(&qword_1ECDE4440, type metadata accessor for Record.Value.Versions.V8, &unk_1DEF927AC);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v31);
    sub_1DEE2C3D8(v2 + v10, boxed_opaque_existential_1 + *(v11 + 20));
    v13 = *(v2 + *(v9 + 24));
    *boxed_opaque_existential_1 = v7;
    boxed_opaque_existential_1[1] = v8;
    *(boxed_opaque_existential_1 + *(v11 + 24)) = v13;
    sub_1DEE1BFF4(v7, v8);
    goto LABEL_10;
  }

  v14 = v5;
  v15 = *v1;
  v16 = v2[1];
  v17 = type metadata accessor for Record.Value(0);
  v18 = *(v17 + 20);
  if (v14 > 7)
  {
    v21 = v17;
    v22 = type metadata accessor for Record.Value.Versions.V8(0);
    v32 = v22;
    v33 = sub_1DEED92F0(&qword_1ECDE4440, type metadata accessor for Record.Value.Versions.V8, &unk_1DEF927AC);
    v23 = __swift_allocate_boxed_opaque_existential_1(v31);
    sub_1DEE2C3D8(v2 + v18, v23 + *(v22 + 20));
    v24 = *(v2 + *(v21 + 24));
    *v23 = v15;
    v23[1] = v16;
    *(v23 + *(v22 + 24)) = v24;
  }

  else
  {
    v19 = type metadata accessor for Record.Value.Versions.V0(0);
    v32 = v19;
    v33 = sub_1DEED92F0(&qword_1ECDE4448, type metadata accessor for Record.Value.Versions.V0, &unk_1DEF92784);
    v20 = __swift_allocate_boxed_opaque_existential_1(v31);
    sub_1DEE2C3D8(v2 + v18, v20 + *(v19 + 20));
    *v20 = v15;
    v20[1] = v16;
  }

  sub_1DEE1BFF4(v15, v16);
  __swift_destroy_boxed_opaque_existential_1(v28);
LABEL_10:
  __swift_project_boxed_opaque_existential_1(v31, v32);
  sub_1DEF8D8A8();
  return __swift_destroy_boxed_opaque_existential_1(v31);
}

uint64_t Record.Value.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v37 = type metadata accessor for Record.Value.Versions.V8(0);
  MEMORY[0x1EEE9AC00](v37);
  v5 = (&v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v34 - v7);
  v9 = type metadata accessor for Record.Value.Versions.V0(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for Record.Value(0);
  v13 = *(v12 + 20);
  v14 = sub_1DEF8D1E8();
  (*(*(v14 - 8) + 56))(&a2[v13], 1, 1, v14);
  sub_1DEE29594(a1, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE43C8, &qword_1DEF92070);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE43D0, &qword_1DEF92078);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v39 = 0;
    memset(v38, 0, sizeof(v38));
    sub_1DEE171B4(v38, &qword_1ECDE43D8, &qword_1DEF92080);
LABEL_5:
    sub_1DEE29594(a1, v41);
    v19 = v44;
    sub_1DEED82D8(v41, v5);
    __swift_destroy_boxed_opaque_existential_1(a1);
    if (!v19)
    {
      v20 = *v5;
      v21 = v5[1];
      *a2 = *v5;
      *(a2 + 1) = v21;
      v22 = v37;
      v23 = *(v37 + 20);
      sub_1DEE1BFF4(v20, v21);
      sub_1DEED98C0(v5 + v23, &a2[v13]);
      v24 = *(v5 + *(v22 + 24));
      result = sub_1DEED93CC(v5, type metadata accessor for Record.Value.Versions.V8);
      *&a2[*(v12 + 24)] = v24;
      return result;
    }

    return sub_1DEE171B4(&a2[v13], &qword_1ECDE4890, &qword_1DEF90990);
  }

  v35 = v13;
  v36 = v12;
  sub_1DEE2F1AC(v38, v41);
  v16 = v42;
  v15 = v43;
  __swift_project_boxed_opaque_existential_1(v41, v42);
  v17 = (*(v15 + 16))(v16, v15);
  if (v18)
  {
    __swift_destroy_boxed_opaque_existential_1(v41);
    v13 = v35;
    v12 = v36;
    goto LABEL_5;
  }

  if (v17 > 7)
  {
    sub_1DEE29594(a1, v40);
    v29 = v44;
    sub_1DEED82D8(v40, v8);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v13 = v35;
    v27 = v36;
    if (!v29)
    {
      v30 = *v8;
      v31 = v8[1];
      *a2 = *v8;
      *(a2 + 1) = v31;
      v32 = v37;
      v33 = *(v37 + 20);
      sub_1DEE1BFF4(v30, v31);
      sub_1DEED98C0(v8 + v33, &a2[v13]);
      v28 = *(v8 + *(v32 + 24));
      sub_1DEED93CC(v8, type metadata accessor for Record.Value.Versions.V8);
      goto LABEL_15;
    }
  }

  else
  {
    sub_1DEE29594(a1, v40);
    v26 = v44;
    sub_1DEED7BBC(v40, v11);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v13 = v35;
    v27 = v36;
    if (!v26)
    {
      *a2 = *v11;
      sub_1DEED4690(v11 + *(v9 + 20), &a2[v13]);
      v28 = 1;
LABEL_15:
      *&a2[*(v27 + 24)] = v28;
      return __swift_destroy_boxed_opaque_existential_1(v41);
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v41);
  return sub_1DEE171B4(&a2[v13], &qword_1ECDE4890, &qword_1DEF90990);
}

uint64_t _s16ReplicatorEngine6RecordV2IDC9OwnershipO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DEF8D3F8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Record.ID.Ownership(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE40F0, &unk_1DEF91C20);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  sub_1DEED9760(a1, &v20 - v12, type metadata accessor for Record.ID.Ownership);
  sub_1DEED9760(a2, &v13[v15], type metadata accessor for Record.ID.Ownership);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1DEED9760(v13, v10, type metadata accessor for Record.ID.Ownership);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      v17 = sub_1DEF8D3A8();
      v18 = *(v5 + 8);
      v18(v7, v4);
      v18(v10, v4);
      sub_1DEED93CC(v13, type metadata accessor for Record.ID.Ownership);
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1DEE171B4(v13, &unk_1ECDE40F0, &unk_1DEF91C20);
    v17 = 0;
    return v17 & 1;
  }

  sub_1DEED93CC(v13, type metadata accessor for Record.ID.Ownership);
  v17 = 1;
  return v17 & 1;
}

uint64_t _s16ReplicatorEngine6RecordV2IDC2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v4 && (sub_1DEF8E4E8() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[4];
  v6 = a2[4];
  v7 = v6[2] == v5[2] && v6[3] == v5[3];
  if (!v7 && (sub_1DEF8E4E8() & 1) == 0)
  {
    return 0;
  }

  v8 = v6[4] == v5[4] && v6[5] == v5[5];
  if (!v8 && (sub_1DEF8E4E8() & 1) == 0)
  {
    return 0;
  }

  v9 = a1 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership;
  v10 = a2 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership;

  return _s16ReplicatorEngine6RecordV2IDC9OwnershipO2eeoiySbAG_AGtFZ_0(v9, v10);
}

unint64_t sub_1DEED9248()
{
  result = qword_1ECDE4398;
  if (!qword_1ECDE4398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4398);
  }

  return result;
}

unint64_t sub_1DEED929C()
{
  result = qword_1ECDE43A0;
  if (!qword_1ECDE43A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE43A0);
  }

  return result;
}

uint64_t sub_1DEED92F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DEED9338()
{
  result = qword_1ECDE43A8;
  if (!qword_1ECDE43A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE43A8);
  }

  return result;
}

uint64_t sub_1DEED93CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL _s16ReplicatorEngine6RecordV5ValueV2eeoiySbAE_AEtFZ_0(_BOOL8 *a1, uint64_t *a2)
{
  v4 = sub_1DEF8D1E8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4568, &qword_1DEF92998);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20 - v12;
  if (!sub_1DEEDFFD4(*a1, a1[1], *a2, a2[1]))
  {
    return 0;
  }

  v21 = type metadata accessor for Record.Value(0);
  v14 = *(v21 + 20);
  v15 = *(v11 + 48);
  sub_1DEE2C3D8(a1 + v14, v13);
  sub_1DEE2C3D8(a2 + v14, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1DEE171B4(v13, &qword_1ECDE4890, &qword_1DEF90990);
      return *(a1 + *(v21 + 24)) == *(a2 + *(v21 + 24));
    }

    goto LABEL_7;
  }

  sub_1DEE2C3D8(v13, v10);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_7:
    sub_1DEE171B4(v13, &qword_1ECDE4568, &qword_1DEF92998);
    return 0;
  }

  (*(v5 + 32))(v7, &v13[v15], v4);
  sub_1DEED92F0(&qword_1ECDE4570, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
  v18 = sub_1DEF8D908();
  v19 = *(v5 + 8);
  v19(v7, v4);
  v19(v10, v4);
  sub_1DEE171B4(v13, &qword_1ECDE4890, &qword_1DEF90990);
  if (v18)
  {
    return *(a1 + *(v21 + 24)) == *(a2 + *(v21 + 24));
  }

  return 0;
}

uint64_t sub_1DEED9760(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DEED97C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Record.Value(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DEED982C()
{
  result = qword_1ECDE43E8;
  if (!qword_1ECDE43E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE43E8);
  }

  return result;
}

uint64_t sub_1DEED98C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DEED9A50(uint64_t a1)
{
  result = type metadata accessor for RecordMetadata(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Record.Value(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DEED9ADC(uint64_t a1)
{
  result = type metadata accessor for Record.ID.Ownership(319);
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DEED9C00(uint64_t a1)
{
  v1 = sub_1DEF8D3F8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_1DEED9C80(uint64_t a1)
{
  if (!qword_1ECDE3708)
  {
    sub_1DEF8D1E8();
    v1 = sub_1DEF8DDC8();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECDE3708);
    }
  }
}

void sub_1DEED9D00(uint64_t a1)
{
  sub_1DEED9C80(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t __swift_get_extra_inhabitant_index_19Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_20Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1DEED9F24(uint64_t a1)
{
  sub_1DEED9C80(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1DEED9FE0(uint64_t a1)
{
  result = type metadata accessor for Record.ID.Ownership(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_50Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Record.ID.Ownership(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_index_51Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Record.ID.Ownership(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DEEDA1D4(uint64_t a1)
{
  result = type metadata accessor for Zone.ID();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Record.ID.Ownership(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1DEEDA29C()
{
  result = qword_1ECDE44A8;
  if (!qword_1ECDE44A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE44A8);
  }

  return result;
}

unint64_t sub_1DEEDA2F4()
{
  result = qword_1ECDE44B0;
  if (!qword_1ECDE44B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE44B0);
  }

  return result;
}

unint64_t sub_1DEEDA34C()
{
  result = qword_1ECDE44B8;
  if (!qword_1ECDE44B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE44B8);
  }

  return result;
}

unint64_t sub_1DEEDA3A4()
{
  result = qword_1ECDE44C0;
  if (!qword_1ECDE44C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE44C0);
  }

  return result;
}

unint64_t sub_1DEEDA3FC()
{
  result = qword_1ECDE44C8;
  if (!qword_1ECDE44C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE44C8);
  }

  return result;
}

unint64_t sub_1DEEDA454()
{
  result = qword_1ECDE44D0;
  if (!qword_1ECDE44D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE44D0);
  }

  return result;
}

unint64_t sub_1DEEDA4AC()
{
  result = qword_1ECDE44D8;
  if (!qword_1ECDE44D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE44D8);
  }

  return result;
}

unint64_t sub_1DEEDA504()
{
  result = qword_1ECDE44E0;
  if (!qword_1ECDE44E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE44E0);
  }

  return result;
}

unint64_t sub_1DEEDA55C()
{
  result = qword_1ECDE44E8;
  if (!qword_1ECDE44E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE44E8);
  }

  return result;
}

unint64_t sub_1DEEDA5B4()
{
  result = qword_1ECDE44F0;
  if (!qword_1ECDE44F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE44F0);
  }

  return result;
}

unint64_t sub_1DEEDA60C()
{
  result = qword_1ECDE44F8;
  if (!qword_1ECDE44F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE44F8);
  }

  return result;
}

unint64_t sub_1DEEDA660()
{
  result = qword_1ECDE4508;
  if (!qword_1ECDE4508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4508);
  }

  return result;
}

unint64_t sub_1DEEDA6B4()
{
  result = qword_1ECDE4520;
  if (!qword_1ECDE4520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4520);
  }

  return result;
}

unint64_t sub_1DEEDA708()
{
  result = qword_1ECDE4530;
  if (!qword_1ECDE4530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4530);
  }

  return result;
}

unint64_t sub_1DEEDA75C()
{
  result = qword_1ECDE4548;
  if (!qword_1ECDE4548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4548);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MessagePriority(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MessagePriority(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1DEEDA954()
{
  result = qword_1ECDE4590;
  if (!qword_1ECDE4590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4590);
  }

  return result;
}

unint64_t sub_1DEEDA9AC()
{
  result = qword_1ECDE4598;
  if (!qword_1ECDE4598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4598);
  }

  return result;
}

unint64_t sub_1DEEDAA04()
{
  result = qword_1ECDE45A0;
  if (!qword_1ECDE45A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE45A0);
  }

  return result;
}

unint64_t sub_1DEEDAA5C()
{
  result = qword_1ECDE45A8;
  if (!qword_1ECDE45A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE45A8);
  }

  return result;
}

unint64_t sub_1DEEDAAB4()
{
  result = qword_1ECDE45B0;
  if (!qword_1ECDE45B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE45B0);
  }

  return result;
}

unint64_t sub_1DEEDAB0C()
{
  result = qword_1ECDE45B8;
  if (!qword_1ECDE45B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE45B8);
  }

  return result;
}

unint64_t sub_1DEEDAB64()
{
  result = qword_1ECDE45C0;
  if (!qword_1ECDE45C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE45C0);
  }

  return result;
}

unint64_t sub_1DEEDABBC()
{
  result = qword_1ECDE45C8;
  if (!qword_1ECDE45C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE45C8);
  }

  return result;
}

unint64_t sub_1DEEDAC14()
{
  result = qword_1ECDE45D0;
  if (!qword_1ECDE45D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE45D0);
  }

  return result;
}

unint64_t sub_1DEEDAC6C()
{
  result = qword_1ECDE45D8;
  if (!qword_1ECDE45D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE45D8);
  }

  return result;
}

unint64_t sub_1DEEDACC4()
{
  result = qword_1ECDE45E0;
  if (!qword_1ECDE45E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE45E0);
  }

  return result;
}

unint64_t sub_1DEEDAD1C()
{
  result = qword_1ECDE45E8;
  if (!qword_1ECDE45E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE45E8);
  }

  return result;
}

unint64_t sub_1DEEDAD70(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DEF8E168();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1DEEDADBC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DEF8E168();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DEEDAE08(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1635017060 && a2 == 0xE400000000000000;
  if (v3 || (sub_1DEF8E4E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_1DEF8E4E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6F636F746F7270 && a2 == 0xEF6E6F6973726556)
  {

    return 2;
  }

  else
  {
    v6 = sub_1DEF8E4E8();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1DEEDAF54()
{
  v7 = sub_1DEF8DD08();
  v0 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1DEF8DCD8();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1DEF8D6D8();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6[1] = sub_1DEE1EA18(0, &qword_1ECDE2C00, 0x1E69E9610);
  sub_1DEF8D6C8();
  v8 = MEMORY[0x1E69E7CC0];
  sub_1DEE2BB40(&qword_1ECDE2C10, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4FF0, &unk_1DEF904D0);
  sub_1DEE1B590(&qword_1ECDE2C30, &unk_1ECDE4FF0, &unk_1DEF904D0);
  sub_1DEF8DE08();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8098], v7);
  result = sub_1DEF8DD38();
  qword_1ECDE30F0 = result;
  return result;
}

void sub_1DEEDB1B4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_1DEF8D508();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    sub_1DEF8D4F8();

    v10 = sub_1DEF8D4D8();
    v11 = sub_1DEF8DCB8();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v15 = v13;
      *v12 = 136446210;
      *(v12 + 4) = sub_1DEE12A5C(a2, a3, &v15);
      _os_log_impl(&dword_1DEE0F000, v10, v11, "Dropping transaction for SIGTERM: %{public}s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x1E12CCD70](v13, -1, -1);
      MEMORY[0x1E12CCD70](v12, -1, -1);
    }

    byte_1ECDE45F8 = 1;
    (*(v7 + 8))(v9, v6);
    *(a1 + 16) = 0;
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1DEEDB380(uint64_t result)
{
  if (*(result + 16))
  {
    *(result + 16) = 0;
    swift_unknownObjectRelease();
    swift_getObjectType();
    return sub_1DEF8DD88();
  }

  return result;
}

uint64_t sub_1DEEDB3C8()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1DEEDB410()
{
  v1 = *(*v0 + 32);

  return v1;
}

uint64_t objectdestroy_16Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DEEDB4C0(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);

  v3(a1, v4);
}

double ZoneVersionAdvertisement.DeviceDescriptor.handshakeDescriptor.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 160);
  v3 = *(v1 + 168);
  v5 = *(v1 + 48);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
  *(a1 + 40) = *(v1 + 32);

  return result;
}

void sub_1DEEDB5A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DEF8D3F8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v73 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4708, &qword_1DEF95DC0);
  MEMORY[0x1EEE9AC00](v80);
  v8 = &v67 - v7;
  v9 = type metadata accessor for ZoneVersion(0);
  v84 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v67 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v75 = &v67 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v78 = &v67 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D58, &qword_1DEF91670);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v81 = (&v67 - v23);
  if (a1 != a2)
  {
    v24 = *(a1 + 16);
    v79 = a2;
    if (v24 == *(a2 + 16))
    {
      v72 = v11;
      v25 = 0;
      v74 = a1;
      v28 = *(a1 + 64);
      v27 = a1 + 64;
      v26 = v28;
      v29 = 1 << *(v27 - 32);
      v30 = -1;
      if (v29 < 64)
      {
        v30 = ~(-1 << v29);
      }

      v31 = v30 & v26;
      v68 = (v29 + 63) >> 6;
      v69 = v27;
      v76 = (v5 + 48);
      v77 = v4;
      v70 = (v5 + 32);
      v71 = (v5 + 8);
      v32 = v8;
      v33 = v75;
      v82 = v21;
      while (1)
      {
        v34 = v79;
        if (!v31)
        {
          break;
        }

        v83 = (v31 - 1) & v31;
        v35 = __clz(__rbit64(v31)) | (v25 << 6);
LABEL_18:
        v40 = (*(v74 + 48) + 16 * v35);
        v42 = *v40;
        v41 = v40[1];
        v43 = v78;
        sub_1DEEE0F6C(*(v74 + 56) + *(v84 + 72) * v35, v78, type metadata accessor for ZoneVersion);
        v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D60, &qword_1DEF91678);
        v45 = *(v44 + 48);
        v46 = v82;
        *v82 = v42;
        *(v46 + 1) = v41;
        v21 = v46;
        sub_1DEEE0910(v43, &v46[v45], type metadata accessor for ZoneVersion);
        (*(*(v44 - 8) + 56))(v21, 0, 1, v44);

LABEL_19:
        v47 = v81;
        sub_1DEE1BA88(v21, v81, &qword_1ECDE3D58, &qword_1DEF91670);
        v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D60, &qword_1DEF91678);
        if ((*(*(v48 - 8) + 48))(v47, 1, v48) == 1)
        {
          return;
        }

        v49 = *(v48 + 48);
        v50 = *v47;
        v51 = v47[1];
        sub_1DEEE0910(v47 + v49, v33, type metadata accessor for ZoneVersion);
        v52 = sub_1DEE13224(v50, v51);
        v54 = v53;

        if ((v54 & 1) == 0)
        {
          v66 = v33;
          goto LABEL_30;
        }

        sub_1DEEE0F6C(*(v34 + 56) + *(v84 + 72) * v52, v14, type metadata accessor for ZoneVersion);
        v55 = *(v80 + 48);
        sub_1DEEE0F6C(v14, v32, type metadata accessor for ZoneVersion);
        sub_1DEEE0F6C(v33, v32 + v55, type metadata accessor for ZoneVersion);
        v56 = v77;
        v57 = *v76;
        if ((*v76)(v32, 1, v77) == 1)
        {
          sub_1DEEE0FD4(v14, type metadata accessor for ZoneVersion);
          sub_1DEEE0FD4(v33, type metadata accessor for ZoneVersion);
          if (v57(v32 + v55, 1, v56) != 1)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v58 = v32;
          v59 = v32;
          v60 = v72;
          sub_1DEEE0F6C(v58, v72, type metadata accessor for ZoneVersion);
          if (v57(v59 + v55, 1, v56) == 1)
          {
            sub_1DEEE0FD4(v14, type metadata accessor for ZoneVersion);
            sub_1DEEE0FD4(v75, type metadata accessor for ZoneVersion);
            (*v71)(v60, v56);
            v32 = v59;
LABEL_29:
            sub_1DEE171B4(v32, &qword_1ECDE4708, &qword_1DEF95DC0);
            return;
          }

          v61 = v59 + v55;
          v62 = v73;
          (*v70)(v73, v61, v56);
          v63 = sub_1DEF8D3A8();
          v64 = *v71;
          (*v71)(v62, v56);
          sub_1DEEE0FD4(v14, type metadata accessor for ZoneVersion);
          v33 = v75;
          sub_1DEEE0FD4(v75, type metadata accessor for ZoneVersion);
          v64(v60, v56);
          v32 = v59;
          if ((v63 & 1) == 0)
          {
            v66 = v59;
LABEL_30:
            sub_1DEEE0FD4(v66, type metadata accessor for ZoneVersion);
            return;
          }
        }

        sub_1DEEE0FD4(v32, type metadata accessor for ZoneVersion);
        v21 = v82;
        v31 = v83;
      }

      if (v68 <= v25 + 1)
      {
        v36 = v25 + 1;
      }

      else
      {
        v36 = v68;
      }

      v37 = v36 - 1;
      while (1)
      {
        v38 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        if (v38 >= v68)
        {
          v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D60, &qword_1DEF91678);
          (*(*(v65 - 8) + 56))(v21, 1, 1, v65);
          v83 = 0;
          v25 = v37;
          goto LABEL_19;
        }

        v39 = *(v69 + 8 * v38);
        ++v25;
        if (v39)
        {
          v83 = (v39 - 1) & v39;
          v35 = __clz(__rbit64(v39)) | (v38 << 6);
          v25 = v38;
          goto LABEL_18;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_1DEEDBD80(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      a2 = a1;
    }

    else
    {
      a2 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v3)
    {
      if (v2 < 0)
      {
        a1 = v2;
      }

      else
      {
        a1 = v2 & 0xFFFFFFFFFFFFFF8;
      }

      return MEMORY[0x1EEE6A970](a1, a2);
    }

    v6 = a2;
    v5 = v2;
  }

  else
  {
    if (!v3)
    {
      if (a1 == a2)
      {
        return 1;
      }

      if (*(a1 + 16) != *(a2 + 16))
      {
        return 0;
      }

      v8 = 0;
      v9 = a1 + 64;
      v10 = 1 << *(a1 + 32);
      v11 = -1;
      if (v10 < 64)
      {
        v11 = ~(-1 << v10);
      }

      v12 = v11 & *(a1 + 64);
      v13 = (v10 + 63) >> 6;
      v33 = a1;
      while (v12)
      {
        v19 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_37:
        v22 = v19 | (v8 << 6);
        v23 = *(*(a1 + 48) + 8 * v22);
        v24 = *(*(a1 + 56) + 8 * v22);

        v25 = sub_1DEEAF20C(v23);
        v27 = v26;

        if ((v27 & 1) == 0 || ((v28 = *(*(v2 + 56) + 8 * v25), v29 = v28[2], v30 = v24[2], v30[2] == v29[2]) ? (v31 = v30[3] == v29[3]) : (v31 = 0), !v31 && (sub_1DEF8E4E8() & 1) == 0 || (v30[4] == v29[4] ? (v32 = v30[5] == v29[5]) : (v32 = 0), !v32 && (sub_1DEF8E4E8() & 1) == 0)))
        {

          return 0;
        }

        v15 = v28[3];
        v14 = v28[4];
        v16 = v24[3];
        v17 = v24[4];

        v18 = v15 == v16 && v14 == v17;
        a1 = v33;
        if (!v18)
        {
          return 0;
        }
      }

      v20 = v8;
      while (1)
      {
        v8 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v8 >= v13)
        {
          return 1;
        }

        v21 = *(v9 + 8 * v8);
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v12 = (v21 - 1) & v21;
          goto LABEL_37;
        }
      }

      __break(1u);
      return MEMORY[0x1EEE6A970](a1, a2);
    }

    v4 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v4 = a2;
    }

    v5 = a1;
    v6 = v4;
  }

  return sub_1DEEDF978(v6, v5);
}

uint64_t sub_1DEEDBFD4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = 0;
  v3 = result + 64;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  v36 = v7;
  v37 = result;
  while (v6)
  {
    v10 = __clz(__rbit64(v6));
    v40 = (v6 - 1) & v6;
LABEL_18:
    v13 = v10 | (v2 << 6);
    v14 = (*(result + 48) + 32 * v13);
    v16 = *v14;
    v15 = v14[1];
    v17 = v14[2];
    v18 = v14[3];
    v19 = (*(result + 56) + 48 * v13);
    v21 = *v19;
    v20 = v19[1];
    v23 = v19[2];
    v22 = v19[3];
    v38 = v19[4];
    v39 = v19[5];
    v41 = v15 == 0;

    if (!v15)
    {
      return 1;
    }

    v24 = sub_1DEEAF16C(v16, v15, v17, v18);
    v26 = v25;

    if ((v26 & 1) == 0 || ((v27 = (*(a2 + 56) + 48 * v24), v28 = v27[2], v29 = v27[3], v31 = v27[4], v30 = v27[5], *v27 == v21) ? (v32 = v20 == v27[1]) : (v32 = 0), !v32 && (sub_1DEF8E4E8() & 1) == 0))
    {

      return 0;
    }

    if (v28 == v23 && v22 == v29)
    {

      v8 = v31 == v38 && v30 == v39;
      v7 = v36;
      result = v37;
      v6 = v40;
      v9 = v41;
      if (!v8)
      {
        return v9;
      }
    }

    else
    {
      v34 = sub_1DEF8E4E8();

      v9 = v41;
      if ((v34 & 1) == 0)
      {
        return v9;
      }

      v35 = v31 == v38 && v30 == v39;
      v7 = v36;
      result = v37;
      v6 = v40;
      if (!v35)
      {
        return v9;
      }
    }
  }

  v11 = v2;
  while (1)
  {
    v2 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v2 >= v7)
    {
      return 1;
    }

    v12 = *(v3 + 8 * v2);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v40 = (v12 - 1) & v12;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

void sub_1DEEDC240(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PairingRelationship(0);
  v77 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v60[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v60[-v8];
  MEMORY[0x1EEE9AC00](v10);
  v70 = &v60[-v11];
  v78 = sub_1DEF8D3F8();
  v71 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v13 = &v60[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v69 = &v60[-v15];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C98, &unk_1DEF95610);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v60[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21.n128_f64[0] = MEMORY[0x1EEE9AC00](v19);
  v22 = &v60[-v20];
  if (a1 == a2 || *(a1 + 16) != *(a2 + 16))
  {
    return;
  }

  v23 = 0;
  v67 = a1;
  v26 = *(a1 + 64);
  v25 = a1 + 64;
  v24 = v26;
  v27 = 1 << *(v25 - 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & v24;
  v62 = (v27 + 63) >> 6;
  v63 = v25;
  v64 = v71 + 16;
  v65 = v18;
  v75 = v4;
  v76 = (v71 + 32);
  v68 = (v71 + 8);
  v66 = v13;
  v73 = &v60[-v20];
  v74 = a2;
  while (v29)
  {
    v30 = v9;
    v31 = v6;
    v72 = (v29 - 1) & v29;
    v32 = __clz(__rbit64(v29)) | (v23 << 6);
LABEL_16:
    v37 = v67;
    v38 = v71;
    (*(v71 + 16))(v69, *(v67 + 48) + *(v71 + 72) * v32, v78, v21);
    v39 = v70;
    sub_1DEEE0F6C(*(v37 + 56) + *(v77 + 72) * v32, v70, type metadata accessor for PairingRelationship);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
    v41 = *(v40 + 48);
    v18 = v65;
    (*(v38 + 32))();
    sub_1DEEE0910(v39, &v18[v41], type metadata accessor for PairingRelationship);
    (*(*(v40 - 8) + 56))(v18, 0, 1, v40);
    v6 = v31;
    v9 = v30;
    v13 = v66;
    v22 = v73;
    a2 = v74;
LABEL_17:
    sub_1DEE1BA88(v18, v22, &qword_1ECDE3C98, &unk_1DEF95610);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
    if ((*(*(v42 - 8) + 48))(v22, 1, v42) == 1)
    {
      return;
    }

    v43 = *(v42 + 48);
    v44 = v78;
    (*v76)(v13, v22, v78);
    sub_1DEEE0910(&v22[v43], v9, type metadata accessor for PairingRelationship);
    v45 = sub_1DEEAF350(v13);
    v47 = v46;
    (*v68)(v13, v44);
    if ((v47 & 1) == 0)
    {
      goto LABEL_54;
    }

    sub_1DEEE0F6C(*(a2 + 56) + *(v77 + 72) * v45, v6, type metadata accessor for PairingRelationship);
    v48 = sub_1DEF8D3A8();
    v49 = v75;
    if ((v48 & 1) == 0 || !_s16ReplicatorEngine16DeviceDescriptorV2eeoiySbAC_ACtFZ_0(&v6[*(v75 + 20)], &v9[*(v75 + 20)]) || (sub_1DEF8D338() & 1) == 0 || (sub_1DEF8D338() & 1) == 0)
    {
      goto LABEL_53;
    }

    v50 = *(v49 + 32);
    v52 = *&v6[v50];
    v51 = *&v6[v50 + 8];
    v53 = &v9[v50];
    v54 = *v53;
    v55 = *(v53 + 1);
    if (v51 > 1)
    {
      if (v51 == 2)
      {
        if (v55 != 2)
        {
          sub_1DEE4F8C0(*v53, *(v53 + 1));
          v51 = 2;
          goto LABEL_52;
        }

        sub_1DEE4F8D4(v52, 2uLL);
        v56 = v54;
        v57 = 2;
        goto LABEL_41;
      }

      if (v51 == 3)
      {
        if (v55 != 3)
        {
          sub_1DEE4F8C0(*v53, *(v53 + 1));
          v51 = 3;
LABEL_52:
          sub_1DEE4F8D4(v52, v51);
          sub_1DEE4F8D4(v54, v55);
LABEL_53:
          sub_1DEEE0FD4(v6, type metadata accessor for PairingRelationship);
LABEL_54:
          sub_1DEEE0FD4(v9, type metadata accessor for PairingRelationship);
          return;
        }

        sub_1DEE4F8D4(v52, 3uLL);
        v56 = v54;
        v57 = 3;
        goto LABEL_41;
      }
    }

    else
    {
      if (!v51)
      {
        if (v55)
        {
          sub_1DEE4F8C0(*v53, *(v53 + 1));
          v51 = 0;
          goto LABEL_52;
        }

        sub_1DEE4F8D4(v52, 0);
        v56 = v54;
        v57 = 0;
        goto LABEL_41;
      }

      if (v51 == 1)
      {
        if (v55 != 1)
        {
          sub_1DEE4F8C0(*v53, *(v53 + 1));
          v51 = 1;
          goto LABEL_52;
        }

        sub_1DEE4F8D4(v52, 1uLL);
        v56 = v54;
        v57 = 1;
        goto LABEL_41;
      }
    }

    if (v55 < 4)
    {
      sub_1DEE4F8C0(*v53, *(v53 + 1));
      sub_1DEE4F8C0(v52, v51);
      goto LABEL_52;
    }

    if (v52 == v54 && v51 == v55)
    {
      sub_1DEE4F8C0(v52, v51);
      sub_1DEE4F8C0(v52, v51);
      sub_1DEE4F8D4(v52, v51);
      v56 = v52;
      v57 = v51;
LABEL_41:
      sub_1DEE4F8D4(v56, v57);
      a2 = v74;
      goto LABEL_42;
    }

    v61 = sub_1DEF8E4E8();
    sub_1DEE4F8C0(v54, v55);
    sub_1DEE4F8C0(v52, v51);
    sub_1DEE4F8D4(v52, v51);
    sub_1DEE4F8D4(v54, v55);
    a2 = v74;
    if ((v61 & 1) == 0)
    {
      goto LABEL_53;
    }

LABEL_42:
    v59 = sub_1DEF8D338();
    sub_1DEEE0FD4(v6, type metadata accessor for PairingRelationship);
    sub_1DEEE0FD4(v9, type metadata accessor for PairingRelationship);
    v29 = v72;
    v22 = v73;
    if ((v59 & 1) == 0)
    {
      return;
    }
  }

  if (v62 <= v23 + 1)
  {
    v33 = v23 + 1;
  }

  else
  {
    v33 = v62;
  }

  v34 = v33 - 1;
  while (1)
  {
    v35 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v35 >= v62)
    {
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
      (*(*(v58 - 8) + 56))(v18, 1, 1, v58);
      v72 = 0;
      v23 = v34;
      goto LABEL_17;
    }

    v36 = *(v63 + 8 * v35);
    ++v23;
    if (v36)
    {
      v30 = v9;
      v31 = v6;
      v72 = (v36 - 1) & v36;
      v32 = __clz(__rbit64(v36)) | (v35 << 6);
      v23 = v35;
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t ZoneVersionAdvertisement.DeviceDescriptor.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ZoneVersionAdvertisement.DeviceDescriptor.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ZoneVersionAdvertisement.DeviceDescriptor.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ZoneVersionAdvertisement.DeviceDescriptor.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

__n128 ZoneVersionAdvertisement.DeviceDescriptor.protocolVersion.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[2];
  *a1 = result;
  return result;
}

__n128 ZoneVersionAdvertisement.DeviceDescriptor.protocolVersion.setter(__n128 *a1)
{
  result = *a1;
  v1[2] = *a1;
  return result;
}

__n128 ZoneVersionAdvertisement.DeviceDescriptor.screenDescriptor.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v3 = *(v1 + 89);
  result = *(v1 + 56);
  v5 = *(v1 + 72);
  *a1 = result;
  *(a1 + 16) = v5;
  *(a1 + 32) = v2;
  *(a1 + 33) = v3;
  return result;
}

__n128 ZoneVersionAdvertisement.DeviceDescriptor.screenDescriptor.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 33);
  result = *a1;
  v5 = *(a1 + 16);
  *(v1 + 56) = *a1;
  *(v1 + 72) = v5;
  *(v1 + 88) = v2;
  *(v1 + 89) = v3;
  return result;
}

uint64_t ZoneVersionAdvertisement.DeviceDescriptor.zones.setter(uint64_t a1)
{

  *(v1 + 96) = a1;
  return result;
}

uint64_t ZoneVersionAdvertisement.DeviceDescriptor.messageTypes.setter(uint64_t a1)
{

  *(v1 + 104) = a1;
  return result;
}

uint64_t ZoneVersionAdvertisement.DeviceDescriptor.idsIdentityBlob.getter()
{
  v1 = *(v0 + 112);
  sub_1DEEA8818(v1, *(v0 + 120));
  return v1;
}

uint64_t ZoneVersionAdvertisement.DeviceDescriptor.idsIdentityBlob.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1DEE2416C(*(v2 + 112), *(v2 + 120));
  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return result;
}

uint64_t ZoneVersionAdvertisement.DeviceDescriptor.marketingName.getter()
{
  v1 = *(v0 + 128);

  return v1;
}

uint64_t ZoneVersionAdvertisement.DeviceDescriptor.marketingName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 128) = a1;
  *(v2 + 136) = a2;
  return result;
}

uint64_t ZoneVersionAdvertisement.DeviceDescriptor.productType.getter()
{
  v1 = *(v0 + 144);

  return v1;
}

uint64_t ZoneVersionAdvertisement.DeviceDescriptor.productType.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return result;
}

uint64_t ZoneVersionAdvertisement.DeviceDescriptor.personaID.getter()
{
  v1 = *(v0 + 160);

  return v1;
}

uint64_t ZoneVersionAdvertisement.DeviceDescriptor.personaID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 160) = a1;
  *(v2 + 168) = a2;
  return result;
}

uint64_t ZoneVersionAdvertisement.DeviceDescriptor.serialNumber.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ZoneVersionAdvertisement.DeviceDescriptor(0) + 60);

  return sub_1DEE205E0(v3, a1);
}

uint64_t ZoneVersionAdvertisement.DeviceDescriptor.serialNumber.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ZoneVersionAdvertisement.DeviceDescriptor(0) + 60);

  return sub_1DEE1E70C(a1, v3);
}

uint64_t ZoneVersionAdvertisement.DeviceDescriptor.description.getter()
{
  v21 = 0;
  v22 = 0xE000000000000000;
  sub_1DEF8DF28();
  v2 = *v0;
  v1 = v0[1];

  v21 = v2;
  v22 = v1;
  MEMORY[0x1E12CB180](8250, 0xE200000000000000);
  MEMORY[0x1E12CB180](v0[2], v0[3]);
  MEMORY[0x1E12CB180](10272, 0xE200000000000000);
  v3 = 30324;
  v4 = 0xE300000000000000;
  v5 = *(v0 + 48);
  v6 = 0xE500000000000000;
  if (v5 == 4)
  {
    v3 = 0x6863746177;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  if (v5 == 3)
  {
    v3 = 6578544;
  }

  else
  {
    v4 = v6;
  }

  v7 = 0xE700000000000000;
  v8 = 0x6E776F6E6B6E75;
  v9 = 0xE300000000000000;
  v10 = 6513005;
  if (v5 != 1)
  {
    v10 = 0x656E6F6870;
    v9 = 0xE500000000000000;
  }

  if (*(v0 + 48))
  {
    v8 = v10;
    v7 = v9;
  }

  if (*(v0 + 48) <= 2u)
  {
    v11 = v8;
  }

  else
  {
    v11 = v3;
  }

  if (*(v0 + 48) <= 2u)
  {
    v12 = v7;
  }

  else
  {
    v12 = v4;
  }

  MEMORY[0x1E12CB180](v11, v12);

  MEMORY[0x1E12CB180](0xD000000000000011, 0x80000001DEF9C550);
  v20[0] = v0[4];
  v13 = sub_1DEF8E2E8();
  MEMORY[0x1E12CB180](v13);

  MEMORY[0x1E12CB180](0x203A6E696D203BLL, 0xE700000000000000);
  v20[0] = v0[5];
  v14 = sub_1DEF8E2E8();
  MEMORY[0x1E12CB180](v14);

  MEMORY[0x1E12CB180](2112297, 0xE300000000000000);
  v15 = v0[17];
  if (v15)
  {
    v16 = v0[16];
    sub_1DEF8DF28();

    v20[0] = 0x6E6974656B72616DLL;
    v20[1] = 0xEF203A656D614E67;
    MEMORY[0x1E12CB180](v16, v15);
    MEMORY[0x1E12CB180](8251, 0xE200000000000000);
    MEMORY[0x1E12CB180](0x6E6974656B72616DLL, 0xEF203A656D614E67);
  }

  v17 = v0[19];
  if (v17)
  {
    v18 = v0[18];
    sub_1DEF8DF28();

    strcpy(v20, "productType: ");
    HIWORD(v20[1]) = -4864;
    MEMORY[0x1E12CB180](v18, v17);
    MEMORY[0x1E12CB180](8251, 0xE200000000000000);
    MEMORY[0x1E12CB180](v20[0], v20[1]);
  }

  return v21;
}

uint64_t ZoneVersionAdvertisement.description.getter()
{
  sub_1DEF8DF28();

  strcpy(v3, "remoteDevice: ");
  v0 = ZoneVersionAdvertisement.DeviceDescriptor.description.getter();
  MEMORY[0x1E12CB180](v0);

  MEMORY[0x1E12CB180](0xD000000000000010, 0x80000001DEF9BB10);
  type metadata accessor for ZoneVersionAdvertisement(0);
  type metadata accessor for ZoneVersion(0);
  v1 = sub_1DEF8D858();
  MEMORY[0x1E12CB180](v1);

  return v3[0];
}

double ZoneVersionAdvertisement.zoneVersions.getter()
{
  type metadata accessor for ZoneVersionAdvertisement(0);

  return result;
}

void static ZoneVersionAdvertisement.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (_s16ReplicatorEngine24ZoneVersionAdvertisementV16DeviceDescriptorV2eeoiySbAE_AEtFZ_0(a1, a2))
  {
    v4 = *(type metadata accessor for ZoneVersionAdvertisement(0) + 20);
    v5 = *(a1 + v4);
    v6 = *(a2 + v4);

    sub_1DEEDB5A8(v5, v6);
  }
}

void sub_1DEEDD528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (static ZoneVersionAdvertisement.DeviceDescriptor.== infix(_:_:)(a1, a2))
  {
    v6 = *(a3 + 20);
    v7 = *(a1 + v6);
    v8 = *(a2 + v6);

    sub_1DEEDB5A8(v7, v8);
  }
}

ReplicatorEngine::ZoneVersionAdvertisement::DeviceDescriptor::CodingKeys_optional __swiftcall ZoneVersionAdvertisement.DeviceDescriptor.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DEF8E168();

  v5 = 12;
  if (v3 < 0xC)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

ReplicatorEngine::ZoneVersionAdvertisement::DeviceDescriptor::CodingKeys_optional __swiftcall ZoneVersionAdvertisement.DeviceDescriptor.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  result.value = ZoneVersionAdvertisement.DeviceDescriptor.CodingKeys.init(rawValue:)(stringValue).value;
  *v2 = v4;
  return result;
}

uint64_t sub_1DEEDD640()
{
  v1 = *v0;
  if (v1 > 5)
  {
    v7 = 0x6E6974656B72616DLL;
    v8 = 0x54746375646F7270;
    if (v1 != 10)
    {
      v8 = 0x754E6C6169726573;
    }

    if (v1 != 9)
    {
      v7 = v8;
    }

    v9 = 0x73656E6F7ALL;
    v10 = 0x546567617373656DLL;
    if (v1 != 7)
    {
      v10 = 0x746E656449736469;
    }

    if (v1 != 6)
    {
      v9 = v10;
    }

    if (*v0 <= 8u)
    {
      return v9;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 25705;
    v3 = 0x656372756F537369;
    v4 = 0x7954656369766564;
    if (v1 != 4)
    {
      v4 = 0xD000000000000010;
    }

    if (v1 != 3)
    {
      v3 = v4;
    }

    v5 = 1701667182;
    if (v1 != 1)
    {
      v5 = 0x6C6F636F746F7270;
    }

    if (*v0)
    {
      v2 = v5;
    }

    if (*v0 <= 2u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_1DEEDD7E8()
{
  v0 = ZoneVersionAdvertisement.DeviceDescriptor.CodingKeys.stringValue.getter();
  v2 = v1;
  if (v0 == ZoneVersionAdvertisement.DeviceDescriptor.CodingKeys.stringValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1DEF8E4E8();
  }

  return v5 & 1;
}

uint64_t sub_1DEEDD884()
{
  sub_1DEF8E7A8();
  ZoneVersionAdvertisement.DeviceDescriptor.CodingKeys.stringValue.getter();
  sub_1DEF8D9B8();

  return sub_1DEF8E7F8();
}

uint64_t sub_1DEEDD8EC(uint64_t a1)
{
  ZoneVersionAdvertisement.DeviceDescriptor.CodingKeys.stringValue.getter();
  sub_1DEF8D9B8();
}

uint64_t sub_1DEEDD950(uint64_t a1)
{
  sub_1DEF8E7A8();
  ZoneVersionAdvertisement.DeviceDescriptor.CodingKeys.stringValue.getter();
  sub_1DEF8D9B8();

  return sub_1DEF8E7F8();
}

uint64_t sub_1DEEDD9C0@<X0>(uint64_t *a1@<X8>)
{
  result = ZoneVersionAdvertisement.DeviceDescriptor.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

ReplicatorEngine::ZoneVersionAdvertisement::DeviceDescriptor::CodingKeys_optional sub_1DEEDD9EC@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result.value = ZoneVersionAdvertisement.DeviceDescriptor.CodingKeys.init(rawValue:)(*&a1).value;
  *a2 = v5;
  return result;
}

uint64_t sub_1DEEDDA30(uint64_t a1)
{
  v2 = sub_1DEEE0714();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEEDDA6C(uint64_t a1)
{
  v2 = sub_1DEEE0714();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ZoneVersionAdvertisement.DeviceDescriptor.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v42 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE46C0, &qword_1DEF92ED8);
  v57 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v42 - v8;
  v10 = type metadata accessor for ZoneVersionAdvertisement.DeviceDescriptor(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v12 + 72) = 0u;
  *(v12 + 56) = 0u;
  *(v12 + 44) = 256;
  *(v12 + 7) = xmmword_1DEF90FE0;
  *(v12 + 20) = 0;
  *(v12 + 21) = 0;
  v14 = *(v13 + 68);
  v15 = sub_1DEF8D3F8();
  v16 = *(*(v15 - 8) + 56);
  v59 = v14;
  v60 = v12;
  v16(&v12[v14], 1, 1, v15);
  v17 = a1[3];
  v58 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1DEEE0714();
  sub_1DEF8E848();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v58);
    v25 = v60;
    sub_1DEE2416C(v60[14], v60[15]);

    return sub_1DEE171B4(v25 + v59, &unk_1ECDE3E80, &unk_1DEF90970);
  }

  else
  {
    v18 = v6;
    LOBYTE(v61) = 0;
    v19 = sub_1DEF8E1D8();
    v21 = v20;
    v55 = v19;
    LOBYTE(v61) = 1;
    v22 = sub_1DEF8E1D8();
    v24 = v23;
    v54 = v22;
    v66 = 2;
    sub_1DEE23F00();
    sub_1DEF8E1F8();
    v52 = *(&v61 + 1);
    v53 = v61;
    v66 = 4;
    sub_1DEE23EAC();
    sub_1DEF8E1B8();
    v27 = v61;
    if (v61 == 6)
    {
      LOBYTE(v61) = 3;
      v28 = sub_1DEF8E1E8();
      v51 = v24;
      if (v28)
      {
        v27 = 2;
      }

      else
      {
        v27 = 1;
      }
    }

    else
    {
      v51 = v24;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3EA8, &qword_1DEF91890);
    v66 = 6;
    sub_1DEE23BE4();
    sub_1DEF8E1B8();
    if (v61)
    {
      v50 = v61;
    }

    else
    {
      v50 = sub_1DEEDE4E4(&unk_1F5A18F48, sub_1DEEDE430, 0, v54, v51, sub_1DEEDE490);
      swift_arrayDestroy();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3EB8, &qword_1DEF91898);
    v66 = 7;
    sub_1DEEE07B0(&qword_1ECDE2CD0, sub_1DEE2505C, sub_1DEEBB854, MEMORY[0x1E69E5E58]);
    sub_1DEF8E1B8();
    if (v61)
    {
      v49 = v61;
    }

    else
    {
      v49 = sub_1DEEDE788(&unk_1F5A18FD8, sub_1DEEDE70C, 0, v54, v51, sub_1DEEDE734);
      swift_arrayDestroy();
    }

    v66 = 5;
    sub_1DEE24030();
    sub_1DEF8E1B8();
    v48 = v62;
    v46 = v61;
    v65 = v63;
    v47 = v64;
    LOBYTE(v61) = 9;
    v29 = sub_1DEF8E198();
    v31 = v30;
    v44 = v29;
    v45 = v27;
    LOBYTE(v61) = 10;
    v43 = sub_1DEF8E198();
    v33 = v32;
    LOBYTE(v61) = 11;
    sub_1DEEE0768(&qword_1ECDE3630, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    v42 = v7;
    sub_1DEF8E1B8();
    v34 = v60;
    v35 = v54;
    *v60 = v55;
    v34[1] = v21;
    v36 = v51;
    v34[2] = v35;
    v34[3] = v36;
    v37 = v52;
    v34[4] = v53;
    v34[5] = v37;
    *(v34 + 48) = v45;
    *(v34 + 7) = v46;
    *(v34 + 9) = v48;
    *(v34 + 88) = v65;
    *(v34 + 89) = v47;
    v38 = v49;
    v34[12] = v50;
    v34[13] = v38;
    v34[16] = v44;
    v34[17] = v31;
    v34[18] = v43;
    v34[19] = v33;
    sub_1DEEA882C(v18, v34 + v59);
    v66 = 8;
    sub_1DEE1E77C();
    sub_1DEF8E1B8();
    sub_1DEE171B4(v18, &unk_1ECDE3E80, &unk_1DEF90970);
    (*(v57 + 8))(v9, v42);
    if (*(&v61 + 1) >> 60 == 15)
    {
      v39 = 0;
    }

    else
    {
      v39 = v61;
    }

    if (*(&v61 + 1) >> 60 == 15)
    {
      v40 = 0xF000000000000000;
    }

    else
    {
      v40 = *(&v61 + 1);
    }

    v41 = v60;
    sub_1DEE2416C(v60[14], v60[15]);
    *(v41 + 112) = v39;
    *(v41 + 120) = v40;
    sub_1DEEE0F6C(v41, v56, type metadata accessor for ZoneVersionAdvertisement.DeviceDescriptor);
    __swift_destroy_boxed_opaque_existential_1(v58);
    return sub_1DEEE0FD4(v41, type metadata accessor for ZoneVersionAdvertisement.DeviceDescriptor);
  }
}

uint64_t sub_1DEEDE490(uint64_t a1)
{
  type metadata accessor for Zone();
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  *(v2 + 24) = xmmword_1DEF92EC0;

  return v2;
}

uint64_t sub_1DEEDE4E4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  v6 = *(a1 + 16);
  if (!v6)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v7 = a1 + 40;
  v8 = MEMORY[0x1E69E7CC8];
  while (1)
  {

    v9 = a2(a4, a5);
    v10 = a6();
    if ((v8 & 0xC000000000000001) != 0)
    {
      if (v8 < 0)
      {
        v11 = v8;
      }

      else
      {
        v11 = v8 & 0xFFFFFFFFFFFFFF8;
      }

      v12 = sub_1DEF8DE68();
      if (__OFADD__(v12, 1))
      {
        goto LABEL_26;
      }

      v8 = sub_1DEEB0790(v11, v12 + 1);
    }

    else
    {
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = sub_1DEEAF20C(v9);
    v16 = *(v8 + 16);
    v17 = (v14 & 1) == 0;
    v18 = v16 + v17;
    if (__OFADD__(v16, v17))
    {
      break;
    }

    v19 = v14;
    if (*(v8 + 24) >= v18)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v14)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_1DEEB753C();
        if (v19)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_1DEEB0D00(v18, isUniquelyReferenced_nonNull_native);
      v20 = sub_1DEEAF20C(v9);
      if ((v19 & 1) != (v21 & 1))
      {
        goto LABEL_28;
      }

      v15 = v20;
      if (v19)
      {
LABEL_3:
        *(*(v8 + 56) + 8 * v15) = v10;

        goto LABEL_4;
      }
    }

    *(v8 + 8 * (v15 >> 6) + 64) |= 1 << v15;
    *(*(v8 + 48) + 8 * v15) = v9;
    *(*(v8 + 56) + 8 * v15) = v10;

    v22 = *(v8 + 16);
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      goto LABEL_27;
    }

    *(v8 + 16) = v24;
LABEL_4:
    v7 += 16;
    if (!--v6)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  type metadata accessor for Zone.ID();
  result = sub_1DEF8E6E8();
  __break(1u);
  return result;
}

double sub_1DEEDE70C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  a3[2] = 0xD000000000000011;
  a3[3] = 0x80000001DEF9C1B0;

  return result;
}

double sub_1DEEDE734@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = xmmword_1DEF92EC0;

  return result;
}

void *sub_1DEEDE788(uint64_t a1, void (*a2)(void **__return_ptr, uint64_t, uint64_t, __n128), uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void **__return_ptr, void *))
{
  v6 = *(a1 + 16);
  if (!v6)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v7 = a1 + 40;
  v8 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    v33 = v7;
    v34 = v6;

    (a2)(&v42, a4, a5);
    v10 = v42;
    v11 = v43;
    v13 = v44;
    v12 = v45;
    v41[0] = v42;
    v41[1] = v43;
    v41[2] = v44;
    v41[3] = v45;
    a6(&v42, v41);
    v35 = v42;
    v36 = v43;
    v37 = v44;
    v38 = v45;
    v39 = v46;
    v40 = v47;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42 = v8;
    v16 = sub_1DEEAF16C(v10, v11, v13, v12);
    v17 = v8[2];
    v18 = (v15 & 1) == 0;
    v19 = v17 + v18;
    if (__OFADD__(v17, v18))
    {
      break;
    }

    v20 = v15;
    if (v8[3] >= v19)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v15)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_1DEEB7550();
        if (v20)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_1DEEB0D14(v19, isUniquelyReferenced_nonNull_native);
      v21 = sub_1DEEAF16C(v10, v11, v13, v12);
      if ((v20 & 1) != (v22 & 1))
      {
        goto LABEL_20;
      }

      v16 = v21;
      if (v20)
      {
LABEL_3:

        v8 = v42;
        v9 = (v42[7] + 48 * v16);
        *v9 = v35;
        v9[1] = v36;
        v9[2] = v37;
        v9[3] = v38;
        v9[4] = v39;
        v9[5] = v40;

        goto LABEL_4;
      }
    }

    v8 = v42;
    v42[(v16 >> 6) + 8] |= 1 << v16;
    v23 = (v8[6] + 32 * v16);
    *v23 = v10;
    v23[1] = v11;
    v23[2] = v13;
    v23[3] = v12;
    v24 = (v8[7] + 48 * v16);
    *v24 = v35;
    v24[1] = v36;
    v24[2] = v37;
    v24[3] = v38;
    v24[4] = v39;
    v24[5] = v40;

    v25 = v8[2];
    v26 = __OFADD__(v25, 1);
    v27 = v25 + 1;
    if (v26)
    {
      goto LABEL_19;
    }

    v8[2] = v27;
LABEL_4:
    v7 = v33 + 16;
    v6 = v34 - 1;
    if (v34 == 1)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_1DEF8E6E8();
  __break(1u);
  return result;
}

uint64_t ZoneVersionAdvertisement.DeviceDescriptor.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE46C8, &qword_1DEF92EE0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEEE0714();
  sub_1DEF8E858();
  LOBYTE(v15[0]) = 0;
  sub_1DEF8E278();
  if (!v2)
  {
    LOBYTE(v15[0]) = 1;
    sub_1DEF8E278();
    v15[0] = *(v3 + 32);
    v18 = 2;
    sub_1DEEBBB54();
    sub_1DEF8E298();
    v9 = *(v3 + 48);
    LOBYTE(v15[0]) = 3;
    sub_1DEF8E288();
    LOBYTE(v15[0]) = v9;
    v18 = 4;
    sub_1DEEBBBA8();
    sub_1DEF8E298();
    v10 = *(v3 + 88);
    v11 = *(v3 + 89);
    v12 = *(v3 + 72);
    v15[0] = *(v3 + 56);
    v15[1] = v12;
    v16 = v10;
    v17 = v11;
    v18 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE46D0, &qword_1DEF92EE8);
    sub_1DEEE0840(&qword_1ECDE33A8, &qword_1ECDE46D0, &qword_1DEF92EE8, sub_1DEEBBF14);
    sub_1DEF8E298();
    *&v15[0] = *(v3 + 96);
    v18 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3EA8, &qword_1DEF91890);
    sub_1DEEBBBFC();
    sub_1DEF8E298();
    *&v15[0] = *(v3 + 104);
    v18 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3EB8, &qword_1DEF91898);
    sub_1DEEE07B0(&unk_1ECDE2CD8, sub_1DEEBBCE8, sub_1DEEBBD3C, MEMORY[0x1E69E5E38]);
    sub_1DEF8E298();
    v13 = *(v3 + 120);
    *&v15[0] = *(v3 + 112);
    *(&v15[0] + 1) = v13;
    v18 = 8;
    sub_1DEEA8818(*&v15[0], v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE46D8, &unk_1DEF92EF0);
    sub_1DEEE0840(&unk_1ECDE3648, &qword_1ECDE46D8, &unk_1DEF92EF0, sub_1DEEBBEC0);
    sub_1DEF8E298();
    sub_1DEE2416C(*&v15[0], *(&v15[0] + 1));
    v15[0] = *(v3 + 128);
    v18 = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3ED0, &qword_1DEF92030);
    sub_1DEEBBD90();
    sub_1DEF8E298();
    v15[0] = *(v3 + 144);
    v18 = 10;
    sub_1DEF8E298();
    type metadata accessor for ZoneVersionAdvertisement.DeviceDescriptor(0);
    LOBYTE(v15[0]) = 11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
    sub_1DEEBBE0C();
    sub_1DEF8E298();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1DEEDEF5C@<X0>(char *a4@<X8>)
{
  v5 = sub_1DEF8E168();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a4 = v7;
  return result;
}

uint64_t ZoneVersionAdvertisement.CodingKeys.stringValue.getter()
{
  if (*v0)
  {
    return 0x73726556656E6F7ALL;
  }

  else
  {
    return 0x654465746F6D6572;
  }
}

uint64_t sub_1DEEDF020(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x73726556656E6F7ALL;
  }

  else
  {
    v3 = 0x654465746F6D6572;
  }

  if (v2)
  {
    v4 = 0xEC00000065636976;
  }

  else
  {
    v4 = 0xEC000000736E6F69;
  }

  if (*a2)
  {
    v5 = 0x73726556656E6F7ALL;
  }

  else
  {
    v5 = 0x654465746F6D6572;
  }

  if (*a2)
  {
    v6 = 0xEC000000736E6F69;
  }

  else
  {
    v6 = 0xEC00000065636976;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DEF8E4E8();
  }

  return v8 & 1;
}

uint64_t sub_1DEEDF0D8()
{
  sub_1DEF8E7A8();
  sub_1DEF8D9B8();

  return sub_1DEF8E7F8();
}

uint64_t sub_1DEEDF16C(uint64_t a1)
{
  sub_1DEF8D9B8();
}

uint64_t sub_1DEEDF1EC(uint64_t a1)
{
  sub_1DEF8E7A8();
  sub_1DEF8D9B8();

  return sub_1DEF8E7F8();
}

uint64_t sub_1DEEDF27C@<X0>(char *a2@<X8>)
{
  v3 = sub_1DEF8E168();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1DEEDF2DC(uint64_t *a1@<X8>)
{
  v2 = 0x654465746F6D6572;
  if (*v1)
  {
    v2 = 0x73726556656E6F7ALL;
  }

  v3 = 0xEC00000065636976;
  if (*v1)
  {
    v3 = 0xEC000000736E6F69;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1DEEDF32C()
{
  if (*v0)
  {
    return 0x73726556656E6F7ALL;
  }

  else
  {
    return 0x654465746F6D6572;
  }
}

uint64_t sub_1DEEDF378@<X0>(char *a3@<X8>)
{
  v4 = sub_1DEF8E168();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_1DEEDF3DC(uint64_t a1)
{
  v2 = sub_1DEEE08BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEEDF418(uint64_t a1)
{
  v2 = sub_1DEEE08BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ZoneVersionAdvertisement.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v19 = type metadata accessor for ZoneVersionAdvertisement.DeviceDescriptor(0);
  MEMORY[0x1EEE9AC00](v19);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE46E0, &qword_1DEF92F00);
  v18 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v7 = &v16 - v6;
  v8 = type metadata accessor for ZoneVersionAdvertisement(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEEE08BC();
  sub_1DEF8E848();
  if (!v2)
  {
    v16 = v8;
    v11 = v18;
    v23 = 0;
    sub_1DEEE0768(&qword_1ECDE2F38, type metadata accessor for ZoneVersionAdvertisement.DeviceDescriptor, &protocol conformance descriptor for ZoneVersionAdvertisement.DeviceDescriptor);
    v12 = v20;
    sub_1DEF8E1F8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE46E8, &qword_1DEF92F08);
    v22 = 1;
    sub_1DEE2524C();
    sub_1DEF8E1F8();
    (*(v11 + 8))(v7, v12);
    v14 = v21;
    sub_1DEEE0910(v5, v10, type metadata accessor for ZoneVersionAdvertisement.DeviceDescriptor);
    v15 = v17;
    *&v10[*(v16 + 20)] = v14;
    sub_1DEEE0910(v10, v15, type metadata accessor for ZoneVersionAdvertisement);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t ZoneVersionAdvertisement.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE46F0, &qword_1DEF92F10);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEEE08BC();
  sub_1DEF8E858();
  v12 = 0;
  type metadata accessor for ZoneVersionAdvertisement.DeviceDescriptor(0);
  sub_1DEEE0768(&qword_1ECDE2F40, type metadata accessor for ZoneVersionAdvertisement.DeviceDescriptor, &protocol conformance descriptor for ZoneVersionAdvertisement.DeviceDescriptor);
  sub_1DEF8E298();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for ZoneVersionAdvertisement(0) + 20));
    v10[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE46E8, &qword_1DEF92F08);
    sub_1DEEE0978();
    sub_1DEF8E298();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1DEEDF978(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = sub_1DEF8DE68();
  if (v3 != result)
  {
    return 0;
  }

  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_12:
    v13 = *(*(a2 + 56) + 8 * (v10 | (v5 << 6)));

    v14 = sub_1DEF8E0B8();

    if (!v14)
    {
      goto LABEL_29;
    }

    type metadata accessor for Zone();
    swift_dynamicCast();
    v15 = v13[2];
    v16 = v22[2];
    v17 = v16[2] == v15[2] && v16[3] == v15[3];
    if (!v17 && (sub_1DEF8E4E8() & 1) == 0 || (v16[4] == v15[4] ? (v18 = v16[5] == v15[5]) : (v18 = 0), !v18 && (sub_1DEF8E4E8() & 1) == 0))
    {

LABEL_29:

      return 0;
    }

    v20 = v13[3];
    v19 = v13[4];

    if (v20 != v22[3])
    {
      goto LABEL_29;
    }

    v21 = v22[4];

    if (v19 != v21)
    {
      return 0;
    }
  }

  v11 = v5;
  while (1)
  {
    v5 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return 1;
    }

    v12 = *(a2 + 64 + 8 * v5);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DEEDFB5C@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_1DEF8D018();
    if (v10)
    {
      v11 = sub_1DEF8D048();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_1DEF8D038();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_1DEF8D018();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1DEF8D048();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1DEF8D038();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1DEEDFD8C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1DEEDFF1C(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1DEE1BFA0(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_1DEEDFB5C(v13, a3, a4, &v12);
  v10 = v4;
  sub_1DEE1BFA0(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_1DEEDFF1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1DEF8D018();
  v11 = result;
  if (result)
  {
    result = sub_1DEF8D048();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1DEF8D038();
  sub_1DEEDFB5C(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_1DEEDFFD4(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_1DEE1BFF4(a3, a4);
          return sub_1DEEDFD8C(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

BOOL _s16ReplicatorEngine24ZoneVersionAdvertisementV16DeviceDescriptorV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DEF8D3F8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v32[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v32[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE40D8, &unk_1DEF91C10);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32[-v12];
  if (*a1 != *a2 && (sub_1DEF8E4E8() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_1DEF8E4E8() & 1) == 0)
  {
    return 0;
  }

  result = 0;
  if (*(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40))
  {
    if (*(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }

    v15 = *(a2 + 89);
    if (*(a1 + 89))
    {
      goto LABEL_10;
    }

    if (*(a2 + 89))
    {
      return 0;
    }

    result = 0;
    if (*(a1 + 56) == *(a2 + 56) && *(a1 + 64) == *(a2 + 64) && *(a1 + 72) == *(a2 + 72))
    {
      v15 = *(a2 + 88);
      if (*(a1 + 88))
      {
LABEL_10:
        if ((v15 & 1) == 0)
        {
          return 0;
        }

LABEL_11:
        if ((sub_1DEEDBD80(*(a1 + 96), *(a2 + 96)) & 1) == 0 || (sub_1DEEDBFD4(*(a1 + 104), *(a2 + 104)) & 1) == 0)
        {
          return 0;
        }

        v16 = *(a1 + 112);
        v17 = *(a1 + 120);
        v18 = *(a2 + 120);
        v35 = *(a2 + 112);
        if (v17 >> 60 == 15)
        {
          if (v18 >> 60 == 15)
          {
            v34 = v16;
            sub_1DEEA8818(v16, v17);
            sub_1DEEA8818(v35, v18);
            sub_1DEE2416C(v34, v17);
LABEL_29:
            v21 = *(a1 + 136);
            v22 = *(a2 + 136);
            if (v21)
            {
              if (!v22 || (*(a1 + 128) != *(a2 + 128) || v21 != v22) && (sub_1DEF8E4E8() & 1) == 0)
              {
                return 0;
              }
            }

            else if (v22)
            {
              return 0;
            }

            v23 = *(a1 + 152);
            v24 = *(a2 + 152);
            if (v23)
            {
              if (!v24 || (*(a1 + 144) != *(a2 + 144) || v23 != v24) && (sub_1DEF8E4E8() & 1) == 0)
              {
                return 0;
              }
            }

            else if (v24)
            {
              return 0;
            }

            v25 = *(a1 + 168);
            v26 = *(a2 + 168);
            if (v25)
            {
              if (!v26 || (*(a1 + 160) != *(a2 + 160) || v25 != v26) && (sub_1DEF8E4E8() & 1) == 0)
              {
                return 0;
              }
            }

            else if (v26)
            {
              return 0;
            }

            v27 = *(type metadata accessor for ZoneVersionAdvertisement.DeviceDescriptor(0) + 60);
            v28 = *(v11 + 48);
            sub_1DEE205E0(a1 + v27, v13);
            sub_1DEE205E0(a2 + v27, &v13[v28]);
            v29 = *(v5 + 48);
            if (v29(v13, 1, v4) == 1)
            {
              if (v29(&v13[v28], 1, v4) == 1)
              {
                sub_1DEE171B4(v13, &unk_1ECDE3E80, &unk_1DEF90970);
                return 1;
              }
            }

            else
            {
              sub_1DEE205E0(v13, v10);
              if (v29(&v13[v28], 1, v4) != 1)
              {
                (*(v5 + 32))(v7, &v13[v28], v4);
                sub_1DEEE0768(&qword_1ECDE40E0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
                v30 = sub_1DEF8D908();
                v31 = *(v5 + 8);
                v31(v7, v4);
                v31(v10, v4);
                sub_1DEE171B4(v13, &unk_1ECDE3E80, &unk_1DEF90970);
                return (v30 & 1) != 0;
              }

              (*(v5 + 8))(v10, v4);
            }

            sub_1DEE171B4(v13, &qword_1ECDE40D8, &unk_1DEF91C10);
            return 0;
          }
        }

        else if (v18 >> 60 != 15)
        {
          v34 = v16;
          sub_1DEEA8818(v16, v17);
          sub_1DEEA8818(v35, v18);
          v33 = sub_1DEEDFFD4(v34, v17, v35, v18);
          sub_1DEE2416C(v35, v18);
          sub_1DEE2416C(v34, v17);
          if (!v33)
          {
            return 0;
          }

          goto LABEL_29;
        }

        v19 = v16;
        sub_1DEEA8818(v16, v17);
        v20 = v35;
        sub_1DEEA8818(v35, v18);
        sub_1DEE2416C(v19, v17);
        sub_1DEE2416C(v20, v18);
        return 0;
      }

      result = 0;
      if ((*(a2 + 88) & 1) == 0 && *(a1 + 80) == *(a2 + 80))
      {
        goto LABEL_11;
      }
    }
  }

  return result;
}

unint64_t sub_1DEEE0714()
{
  result = qword_1ECDE2F58;
  if (!qword_1ECDE2F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE2F58);
  }

  return result;
}

uint64_t sub_1DEEE0768(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DEEE07B0(unint64_t *a1, void (*a2)(void), void (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECDE3EB8, &qword_1DEF91898);
    a2();
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DEEE0840(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DEEE08BC()
{
  result = qword_1ECDE2F70;
  if (!qword_1ECDE2F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE2F70);
  }

  return result;
}

uint64_t sub_1DEEE0910(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1DEEE0978()
{
  result = qword_1ECDE2C90;
  if (!qword_1ECDE2C90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECDE46E8, &qword_1DEF92F08);
    sub_1DEEE0768(&qword_1ECDE34E0, type metadata accessor for ZoneVersion, &protocol conformance descriptor for ZoneVersion);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE2C90);
  }

  return result;
}

unint64_t sub_1DEEE0A38()
{
  result = qword_1ECDE46F8;
  if (!qword_1ECDE46F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE46F8);
  }

  return result;
}

unint64_t sub_1DEEE0A90()
{
  result = qword_1ECDE2F48;
  if (!qword_1ECDE2F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE2F48);
  }

  return result;
}

unint64_t sub_1DEEE0AE8()
{
  result = qword_1ECDE2F50;
  if (!qword_1ECDE2F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE2F50);
  }

  return result;
}

unint64_t sub_1DEEE0B40()
{
  result = qword_1ECDE4700;
  if (!qword_1ECDE4700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4700);
  }

  return result;
}

unint64_t sub_1DEEE0B98()
{
  result = qword_1ECDE2F60;
  if (!qword_1ECDE2F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE2F60);
  }

  return result;
}

unint64_t sub_1DEEE0BF0()
{
  result = qword_1ECDE2F68;
  if (!qword_1ECDE2F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE2F68);
  }

  return result;
}

void sub_1DEEE0C6C(uint64_t a1)
{
  type metadata accessor for ZoneVersionAdvertisement.DeviceDescriptor(319);
  if (v1 <= 0x3F)
  {
    sub_1DEEE0CF0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1DEEE0CF0(uint64_t a1)
{
  if (!qword_1ECDE2C98)
  {
    type metadata accessor for ZoneVersion(255);
    v1 = sub_1DEF8D888();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECDE2C98);
    }
  }
}

uint64_t getEnumTagSinglePayload for ZoneVersionAdvertisement.DeviceDescriptor.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ZoneVersionAdvertisement.DeviceDescriptor.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1DEEE0F6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DEEE0FD4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t NSFileHandle.copyFile(to:extendedAttributes:)(uint64_t a1, uint64_t a2)
{
  v88 = a2;
  v99 = *MEMORY[0x1E69E9840];
  v3 = sub_1DEF8D1E8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v90 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v81 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v81 - v10;
  sub_1DEF8D188();
  v89 = a1;
  sub_1DEF8D158();
  v12 = objc_opt_self();
  v13 = [v12 defaultManager];
  v14 = sub_1DEF8D178();
  *&v97 = 0;
  v15 = [v13 createDirectoryAtURL:v14 withIntermediateDirectories:1 attributes:0 error:&v97];

  if (v15)
  {
    v16 = v97;
    v17 = [v12 defaultManager];
    sub_1DEF8D1B8();
    v18 = sub_1DEF8D918();

    [v17 createFileAtPath:v18 contents:0 attributes:0];

    sub_1DEEE1914();
    v19 = v90;
    (*(v4 + 16))(v90, v8, v3);
    v20 = v91;
    v21 = sub_1DEEE1960(v19);
    if (v20)
    {
      v22 = *(v4 + 8);
      v22(v8, v3);
      return (v22)(v11, v3);
    }

    else
    {
      v90 = v21;
      v83 = v4;
      v84 = v3;
      v85 = v11;
      v86 = v12;
      v82 = v8;
      v26 = MEMORY[0x1E12CC160]();
      v29 = sub_1DEF8DC48();
      v31 = v30;
      v32 = 0;
      for (i = 0xF000000000000000; ; i = v91)
      {
        v35 = v32;
        v32 = v29;
        sub_1DEE2416C(v35, i);
        v91 = v31;
        if (v31 >> 60 == 15)
        {
          break;
        }

        *&v97 = v29;
        *(&v97 + 1) = v31;
        sub_1DEE1BFF4(v29, v31);
        sub_1DEE3E0EC();
        sub_1DEF8DC58();
        sub_1DEE2416C(v29, v31);
        objc_autoreleasePoolPop(v26);
        v36 = v31 >> 62;
        if ((v31 >> 62) > 1)
        {
          if (v36 != 2 || *(v29 + 16) == *(v29 + 24))
          {
LABEL_15:
            v81 = v29;
            goto LABEL_17;
          }
        }

        else if (v36)
        {
          if (v29 == v29 >> 32)
          {
            goto LABEL_15;
          }
        }

        else if ((v31 & 0xFF000000000000) == 0)
        {
          goto LABEL_15;
        }

        v26 = MEMORY[0x1E12CC160]();
        v29 = sub_1DEF8DC48();
        v31 = v34;
      }

      v81 = v29;
      objc_autoreleasePoolPop(v26);
LABEL_17:
      *&v97 = 0;
      v37 = v90;
      v38 = [v90 closeAndReturnError_];
      v39 = v85;
      v40 = v86;
      if (v38)
      {
        v87 = 0;
        v41 = v88 + 64;
        v42 = 1 << *(v88 + 32);
        v43 = -1;
        if (v42 < 64)
        {
          v43 = ~(-1 << v42);
        }

        v44 = v43 & *(v88 + 64);
        v45 = (v42 + 63) >> 6;
        v46 = v97;

        v47 = 0;
        v48 = 0x1E86A2000;
        if (!v44)
        {
          goto LABEL_22;
        }

LABEL_21:
        v49 = v47;
LABEL_29:
        v52 = __clz(__rbit64(v44));
        v44 &= v44 - 1;
        v53 = v52 | (v49 << 6);
        v54 = (*(v88 + 48) + 16 * v53);
        v56 = *v54;
        v55 = v54[1];
        sub_1DEEE1AB8(*(v88 + 56) + 48 * v53, v92);
        *&v93 = v56;
        *(&v93 + 1) = v55;
        sub_1DEEA8734(v92, &v94);

        v51 = v49;
        v48 = 0x1E86A2000uLL;
        while (1)
        {
          v97 = v93;
          v98[0] = v94;
          v98[1] = v95;
          v98[2] = v96;
          v57 = *(&v93 + 1);
          if (!*(&v93 + 1))
          {
            break;
          }

          v47 = v51;
          v58 = v97;
          sub_1DEEA8734(v98, &v93);
          v59 = *(&v94 + 1);
          v60 = *(&v95 + 1);
          v61 = __swift_project_boxed_opaque_existential_1(&v93, *(&v94 + 1));
          v62 = v87;
          URL.setExtendedAttribute<A>(named:value:)(v58, v57, v61, v59, v60);
          v87 = v62;
          if (v62)
          {
            sub_1DEE2416C(v81, v91);

            v78 = *(v83 + 8);
            v79 = v84;
            v78(v82, v84);
            v78(v85, v79);
            return __swift_destroy_boxed_opaque_existential_1(&v93);
          }

          __swift_destroy_boxed_opaque_existential_1(&v93);
          v40 = v86;
          v48 = 0x1E86A2000;
          if (v44)
          {
            goto LABEL_21;
          }

LABEL_22:
          if (v45 <= v47 + 1)
          {
            v50 = v47 + 1;
          }

          else
          {
            v50 = v45;
          }

          v51 = v50 - 1;
          while (1)
          {
            v49 = v47 + 1;
            if (__OFADD__(v47, 1))
            {
              __break(1u);
            }

            if (v49 >= v45)
            {
              break;
            }

            v44 = *(v41 + 8 * v49);
            ++v47;
            if (v44)
            {
              goto LABEL_29;
            }
          }

          v44 = 0;
          v95 = 0u;
          v96 = 0u;
          v94 = 0u;
          v93 = 0u;
        }

        v65 = [v40 *(v48 + 4088)];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4710, &qword_1DEF93408);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1DEF907F0;
        v67 = *MEMORY[0x1E696A3A0];
        *(inited + 32) = *MEMORY[0x1E696A3A0];
        v68 = *MEMORY[0x1E696A388];
        type metadata accessor for FileProtectionType(0);
        *(inited + 64) = v69;
        *(inited + 40) = v68;
        v70 = v67;
        v71 = v68;
        sub_1DEEA36A4(inited);
        swift_setDeallocating();
        sub_1DEEE1B54(inited + 32);
        type metadata accessor for FileAttributeKey(0);
        sub_1DEEE1BBC();
        v72 = sub_1DEF8D828();

        v73 = v82;
        sub_1DEF8D1B8();
        v74 = sub_1DEF8D918();

        *&v97 = 0;
        LOBYTE(v67) = [v65 setAttributes:v72 ofItemAtPath:v74 error:&v97];

        if (v67)
        {
          v75 = v97;
        }

        else
        {
          v80 = v97;
          sub_1DEF8D148();

          swift_willThrow();
        }

        sub_1DEE2416C(v81, v91);

        v76 = v84;
        v77 = *(v83 + 8);
        v77(v73, v84);
        return (v77)(v85, v76);
      }

      else
      {
        v63 = v37;
        v64 = v97;
        sub_1DEF8D148();

        swift_willThrow();
        sub_1DEE2416C(v81, v91);

        v27 = *(v83 + 8);
        v28 = v84;
        v27(v82, v84);
        return (v27)(v39, v28);
      }
    }
  }

  else
  {
    v24 = v97;
    sub_1DEF8D148();

    swift_willThrow();
    v25 = *(v4 + 8);
    v25(v8, v3);
    return (v25)(v11, v3);
  }
}

unint64_t sub_1DEEE1914()
{
  result = qword_1ECDE2C20;
  if (!qword_1ECDE2C20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECDE2C20);
  }

  return result;
}

id sub_1DEEE1960(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1DEF8D178();
  v11[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() fileHandleForWritingToURL:v2 error:v11];

  v4 = v11[0];
  if (v3)
  {
    v5 = sub_1DEF8D1E8();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v11[0];
    sub_1DEF8D148();

    swift_willThrow();
    v9 = sub_1DEF8D1E8();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  return v3;
}

uint64_t sub_1DEEE1AB8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1DEEE1B54(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3CE0, &qword_1DEF915E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DEEE1BBC()
{
  result = qword_1ECDE2BF0;
  if (!qword_1ECDE2BF0)
  {
    type metadata accessor for FileAttributeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE2BF0);
  }

  return result;
}

uint64_t sub_1DEEE1CB4(uint64_t a1, unsigned int a2)
{
  v26 = a2;
  v29[1] = *MEMORY[0x1E69E9840];
  v28 = sub_1DEF8D1E8();
  v2 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - v9;
  sub_1DEF8D188();
  sub_1DEF8D158();
  v11 = objc_opt_self();
  v12 = [v11 defaultManager];
  v13 = sub_1DEF8D178();
  v29[0] = 0;
  v14 = [v12 createDirectoryAtURL:v13 withIntermediateDirectories:1 attributes:0 error:v29];

  if (v14)
  {
    v15 = v29[0];
    v16 = [v11 defaultManager];
    sub_1DEF8D1B8();
    v17 = sub_1DEF8D918();

    [v16 createFileAtPath:v17 contents:0 attributes:0];

    sub_1DEEE1914();
    v18 = v28;
    (*(v2 + 16))(v4, v7, v28);
    v19 = v27;
    v20 = sub_1DEEE1960(v4);
    if (!v19)
    {
      v21 = v20;
      sub_1DEEE209C(v26, v25, v20);
    }
  }

  else
  {
    v22 = v29[0];
    sub_1DEF8D148();

    swift_willThrow();
    v18 = v28;
  }

  v23 = *(v2 + 8);
  v23(v7, v18);
  return (v23)(v10, v18);
}

uint64_t sub_1DEEE1FB8(uint64_t result, uint64_t a2)
{
  if (!a2)
  {

    return 0;
  }

  if (a2 > 14)
  {
    if (a2 < 0x7FFFFFFF)
    {
      return a2 << 32;
    }

    sub_1DEF8D238();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = a2;
    return result;
  }

  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v3 = sub_1DEF8D018();
  if (v3)
  {
    result = sub_1DEF8D048();
    if (!__OFSUB__(0, result))
    {
      v3 -= result;
      goto LABEL_10;
    }

LABEL_19:
    __break(1u);
    return result;
  }

LABEL_10:
  v4 = sub_1DEF8D038();
  if (v4 >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = v4;
  }

  v6 = &v3[v5];
  if (v3)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_1DEEFC6AC(v3, v7);

  return v8;
}

uint64_t sub_1DEEE209C(char a1, void *a2, void *a3)
{
  v78 = a3;
  v72 = a2;
  v85[4] = *MEMORY[0x1E69E9840];
  v6 = sub_1DEF8D218();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v79 = (v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = swift_slowAlloc();
  v10 = swift_slowAlloc();
  v11 = compression_stream_init(v10, (a1 & 1), COMPRESSION_LZFSE);
  if (v11 == COMPRESSION_STATUS_ERROR)
  {
    sub_1DEEE2968();
    swift_allocError();
    *v59 = 0;
    swift_willThrow();
    v60 = v9;
    return MEMORY[0x1E12CCD70](v60, -1, -1);
  }

  v77 = v11;
  v71[1] = v3;
  v80 = 0;
  v10->src_size = 0;
  v83 = v9;
  v10->dst_ptr = v9;
  v10->dst_size = 0x8000;
  v76 = *MEMORY[0x1E6969010];
  v74 = (v7 + 8);
  v75 = (v7 + 104);
  v73 = v85;
  v12 = 0xF000000000000000;
  while (1)
  {
    v13 = MEMORY[0x1E12CC160]();
    src_size = v10->src_size;
    v82 = v13;
    if (!src_size)
    {
      break;
    }

    v15 = v79;
    if (v12 >> 60 != 15)
    {
      v4 = v80;
      sub_1DEE1BFF4(v80, v12);
      v21 = 0;
      v20 = v12 >> 62;
      v19 = v12;
      goto LABEL_23;
    }

    if (v77)
    {
      if (v77 != COMPRESSION_STATUS_END)
      {
        goto LABEL_66;
      }

      v16 = 0;
    }

    else
    {
      v16 = 1;
    }

LABEL_49:
    dst_size = v10->dst_size;
    v19 = 0x8000 - dst_size;
    if (__OFSUB__(0x8000, dst_size))
    {
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      swift_once();
LABEL_58:
      v61 = sub_1DEF8D508();
      __swift_project_value_buffer(v61, qword_1ECDF6028);
      v62 = v12;
      v63 = sub_1DEF8D4D8();
      v64 = sub_1DEF8DC98();

      v79 = v63;
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        *v65 = 138543362;
        *(v65 + 4) = v62;
        *v66 = v12;
        v67 = v62;
        _os_log_impl(&dword_1DEE0F000, v79, v64, "Compressor failed to write to destination file: %{public}@", v65, 0xCu);
        sub_1DEEE2A84(v66);
        MEMORY[0x1E12CCD70](v66, -1, -1);
        MEMORY[0x1E12CCD70](v65, -1, -1);
      }

      sub_1DEEE2968();
      swift_allocError();
      *v68 = 1;
      swift_willThrow();

      sub_1DEE1BFA0(v19, v4);
      v4 = v80;
      v19 = v81;
LABEL_63:
      objc_autoreleasePoolPop(v82);
      sub_1DEE2416C(v4, v19);
      compression_stream_destroy(v10);
      MEMORY[0x1E12CCD70](v10, -1, -1);
      v60 = v83;
      return MEMORY[0x1E12CCD70](v60, -1, -1);
    }

    v81 = v12;
    (*v75)(v15, v76, v6);
    sub_1DEF8D208();
    if (v19)
    {
      sub_1DEF8D068();
      swift_allocObject();

      v48 = sub_1DEF8CFF8();
      v49 = sub_1DEF8D058();
      *v50 |= 0x8000000000000000;
      v49(&aBlock, 0);
      v19 = sub_1DEEE1FB8(v48, v19);
      v4 = v51;
    }

    else
    {
      v52 = sub_1DEF8D208();
      v52(v83, 0);

      v4 = 0xC000000000000000;
    }

    v53 = v15;
    v54 = v6;
    (*v74)(v53, v6);
    v55 = swift_allocObject();
    v56 = v78;
    v55[2] = v78;
    v55[3] = v19;
    v55[4] = v4;
    v85[2] = sub_1DEEE29BC;
    v85[3] = v55;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v85[0] = sub_1DEE3F0C0;
    v85[1] = &block_descriptor_5;
    v57 = _Block_copy(&aBlock);
    v58 = v56;
    sub_1DEE1BFF4(v19, v4);

    v12 = catchObjcExceptions(v57);
    _Block_release(v57);
    if (v12)
    {
      if (qword_1ECDE2E58 == -1)
      {
        goto LABEL_58;
      }

      goto LABEL_81;
    }

    v10->dst_ptr = v83;
    v10->dst_size = 0x8000;
    sub_1DEE1BFA0(v19, v4);
    objc_autoreleasePoolPop(v82);
    v6 = v54;
    v12 = v81;
    if ((v16 & 1) == 0)
    {
      goto LABEL_67;
    }
  }

  v17 = [v72 readDataOfLength_];
  v4 = sub_1DEF8D278();
  v19 = v18;

  sub_1DEE2416C(v80, v12);
  v20 = v19 >> 62;
  v15 = v79;
  if ((v19 >> 62) > 1)
  {
    if (v20 != 2)
    {
      v10->src_size = 0;
      goto LABEL_22;
    }

    v23 = *(v4 + 16);
    v22 = *(v4 + 24);
    v24 = __OFSUB__(v22, v23);
    v25 = v22 - v23;
    if (v24)
    {
      goto LABEL_79;
    }

    v10->src_size = v25;
    v27 = *(v4 + 16);
    v26 = *(v4 + 24);
    v24 = __OFSUB__(v26, v27);
    v28 = v26 - v27;
    if (v24)
    {
      goto LABEL_80;
    }

    if (v28 < 0x8000)
    {
      goto LABEL_22;
    }

LABEL_20:
    sub_1DEE1BFF4(v4, v19);
    v21 = 0;
    goto LABEL_23;
  }

  if (v20)
  {
    v29 = HIDWORD(v4) - v4;
    if (__OFSUB__(HIDWORD(v4), v4))
    {
      goto LABEL_78;
    }

    v10->src_size = v29;
    if (v29 < 0x8000)
    {
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  v10->src_size = BYTE6(v19);
LABEL_22:
  sub_1DEE1BFF4(v4, v19);
  v21 = 1;
LABEL_23:
  if (v20 <= 1)
  {
    if (!v20)
    {
      *&aBlock = v4;
      DWORD2(aBlock) = v19;
      WORD6(aBlock) = WORD2(v19);
      v30 = v10->src_size;
      v31 = BYTE6(v19) - v30;
      if (__OFSUB__(BYTE6(v19), v30))
      {
        goto LABEL_71;
      }

      goto LABEL_45;
    }

    v40 = HIDWORD(v4) - v4;
    if (__OFSUB__(HIDWORD(v4), v4))
    {
      goto LABEL_70;
    }

    v12 = v4;
    if (v4 > v4 >> 32)
    {
      goto LABEL_73;
    }

    v41 = sub_1DEF8D018();
    if (!v41)
    {
      goto LABEL_84;
    }

    v42 = v41;
    v43 = sub_1DEF8D048();
    if (__OFSUB__(v4, v43))
    {
      goto LABEL_75;
    }

    v37 = v4 - v43 + v42;
    sub_1DEF8D038();
    if (!v37)
    {
      goto LABEL_85;
    }

    v44 = v10->src_size;
    v39 = v40 - v44;
    if (__OFSUB__(v40, v44))
    {
      goto LABEL_77;
    }

LABEL_42:
    v10->src_ptr = (v37 + v39);
    v45 = compression_stream_process(v10, v21);
    sub_1DEE1BFA0(v4, v19);
    v15 = v79;
    v77 = v45;
    if (v45)
    {
      goto LABEL_46;
    }

LABEL_43:
    v16 = 1;
LABEL_48:
    v80 = v4;
    v12 = v19;
    goto LABEL_49;
  }

  if (v20 == 2)
  {
    v12 = *(v4 + 16);
    v32 = *(v4 + 24);
    v33 = v32 - v12;
    if (__OFSUB__(v32, v12))
    {
      goto LABEL_69;
    }

    v34 = sub_1DEF8D018();
    if (!v34)
    {
      sub_1DEF8D038();
LABEL_83:
      __break(1u);
LABEL_84:
      sub_1DEF8D038();
LABEL_85:
      __break(1u);
    }

    v35 = v34;
    v36 = sub_1DEF8D048();
    if (__OFSUB__(v12, v36))
    {
      goto LABEL_74;
    }

    v37 = v12 - v36 + v35;
    sub_1DEF8D038();
    if (!v37)
    {
      goto LABEL_83;
    }

    v38 = v10->src_size;
    v24 = __OFSUB__(v33, v38);
    v39 = v33 - v38;
    if (v24)
    {
      goto LABEL_76;
    }

    goto LABEL_42;
  }

  *(&aBlock + 6) = 0;
  *&aBlock = 0;
  v46 = v10->src_size;
  v24 = __OFSUB__(0, v46);
  v31 = -v46;
  if (v24)
  {
    goto LABEL_72;
  }

LABEL_45:
  v10->src_ptr = &v85[-2] + v31;
  v45 = compression_stream_process(v10, v21);
  sub_1DEE1BFA0(v4, v19);
  v77 = v45;
  if (v45 == COMPRESSION_STATUS_OK)
  {
    goto LABEL_43;
  }

LABEL_46:
  if (v45 == COMPRESSION_STATUS_END)
  {
    v16 = 0;
    goto LABEL_48;
  }

  if (v45 == COMPRESSION_STATUS_ERROR)
  {
    sub_1DEEE2968();
    swift_allocError();
    *v69 = 1;
    swift_willThrow();
    goto LABEL_63;
  }

  v80 = v4;
  v12 = v19;
  v13 = v82;
LABEL_66:
  objc_autoreleasePoolPop(v13);
LABEL_67:
  sub_1DEE2416C(v80, v12);
  compression_stream_destroy(v10);
  MEMORY[0x1E12CCD70](v10, -1, -1);
  return MEMORY[0x1E12CCD70](v83, -1, -1);
}

unint64_t sub_1DEEE2968()
{
  result = qword_1ECDE4718;
  if (!qword_1ECDE4718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4718);
  }

  return result;
}

void sub_1DEEE29BC()
{
  v1 = *(v0 + 16);
  v2 = sub_1DEF8D268();
  [v1 writeData_];
}

id catchObjcExceptions(void *a1)
{
  v1 = a1[2];
  v2 = a1;
  v1();

  return 0;
}

void sub_1DEEE2A6C(void *a1)
{
  v1 = objc_begin_catch(a1);
  objc_end_catch();
  JUMPOUT(0x1DEEE2A44);
}

uint64_t sub_1DEEE2A84(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4880, &qword_1DEF93420);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DEEE2B00()
{
  result = qword_1ECDE4720;
  if (!qword_1ECDE4720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4720);
  }

  return result;
}

uint64_t BasicTimer.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4230, &qword_1DEF934E0);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v0 + 24) = v1;
  return v0;
}

uint64_t BasicTimer.init()()
{
  *(v0 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4230, &qword_1DEF934E0);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v0 + 24) = v1;
  return v0;
}

uint64_t sub_1DEEE2BF8()
{
  v1 = *(v0 + 24);

  os_unfair_lock_lock(v1 + 4);
  sub_1DEEE2EDC();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_1DEEE2C7C()
{
  v1 = *(v0 + 24);

  os_unfair_lock_lock(v1 + 4);
  sub_1DEEE2FB8();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_1DEEE2CEC(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = *(a1 + 24);

  os_unfair_lock_lock(v3 + 4);
  sub_1DEEE2FB8();
  os_unfair_lock_unlock(v3 + 4);

  return a2(v4);
}

uint64_t sub_1DEEE2D78()
{
  if (qword_1ECDE2E58 != -1)
  {
    swift_once();
  }

  v0 = sub_1DEF8D508();
  __swift_project_value_buffer(v0, qword_1ECDF6028);
  v1 = sub_1DEF8D4D8();
  v2 = sub_1DEF8DC88();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1DEE0F000, v1, v2, "Timer fired", v3, 2u);
    MEMORY[0x1E12CCD70](v3, -1, -1);
  }

  return sub_1DEE1460C();
}

uint64_t BasicTimer.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_1DEEE2FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v55 = a5;
  v56 = a3;
  v45 = a4;
  v46 = a2;
  v51 = a1;
  v7 = sub_1DEF8D698();
  v53 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v48 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1DEF8D6D8();
  v49 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DEF8D688();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_1DEF8D758();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v41 - v20;
  sub_1DEF8D738();
  v43 = *(v6 + 32);
  *v14 = v43;
  (*(v12 + 104))(v14, *MEMORY[0x1E69E7F48], v11);
  v47 = v21;
  sub_1DEF8D748();
  (*(v12 + 8))(v14, v11);
  v22 = *(v16 + 8);
  v52 = v15;
  v50 = v16 + 8;
  v44 = v22;
  v22(v18, v15);
  if (qword_1ECDE2E48 != -1)
  {
    swift_once();
  }

  v23 = sub_1DEF8D508();
  __swift_project_value_buffer(v23, qword_1ECDF5FF8);
  swift_retain_n();
  v24 = sub_1DEF8D4D8();
  v25 = sub_1DEF8DCB8();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v42 = v7;
    v28 = v27;
    v57 = v27;
    *v26 = 136315394;
    sub_1DEE29594(v6 + 40, aBlock);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4310, &qword_1DEF91E80);
    v29 = sub_1DEF8D988();
    v31 = sub_1DEE12A5C(v29, v30, &v57);

    *(v26 + 4) = v31;
    *(v26 + 12) = 2048;

    *(v26 + 14) = v43;

    _os_log_impl(&dword_1DEE0F000, v24, v25, "%s will be queried for a relationship list in %lds, privacy: .public)", v26, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v28);
    v7 = v42;
    MEMORY[0x1E12CCD70](v28, -1, -1);
    MEMORY[0x1E12CCD70](v26, -1, -1);
  }

  else
  {
  }

  v32 = swift_allocObject();
  v33 = v51;
  v32[2] = v6;
  v32[3] = v33;
  v34 = v46;
  v36 = v55;
  v35 = v56;
  v32[4] = v45;
  v32[5] = v36;
  v32[6] = v35;
  v32[7] = v34;
  aBlock[4] = sub_1DEEE4280;
  aBlock[5] = v32;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DEE3F0C0;
  aBlock[3] = &block_descriptor_7;
  v37 = _Block_copy(aBlock);

  sub_1DEF8D6B8();
  v57 = MEMORY[0x1E69E7CC0];
  sub_1DEEE4290();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
  sub_1DEECE95C();
  v38 = v48;
  sub_1DEF8DE08();
  v39 = v47;
  MEMORY[0x1E12CB490](v47, v10, v38, v37);
  _Block_release(v37);
  (*(v53 + 8))(v38, v7);
  (*(v49 + 8))(v10, v54);
  v44(v39, v52);
}

uint64_t sub_1DEEE35C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = a1[8];
  v13 = a1[9];
  __swift_project_boxed_opaque_existential_1(a1 + 5, v12);
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a3;
  v14[4] = a4;
  v14[5] = a5;
  v14[6] = a6;
  v14[7] = a2;
  v15 = *(v13 + 8);

  v15(v16, sub_1DEEE42E8, v14, v12, v13);
}

uint64_t sub_1DEEE36B8(uint64_t *a1, char a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v104 = a7;
  v106 = a4;
  v14 = type metadata accessor for PairingRelationship(0);
  v105 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1DEF8D3F8();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v103 = &v97 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v97 - v21;
  if ((a2 & 1) == 0)
  {
    v99 = a8;
    v100 = a5;
    v36 = *(a6 + 16);
    v37 = MEMORY[0x1E69E7CC0];
    v101 = a1;
    v102 = a3;
    if (v36)
    {
      v109[0] = MEMORY[0x1E69E7CC0];
      sub_1DEEC7D60(0, v36, 0);
      v37 = v109[0];
      v38 = a6 + ((*(v105 + 80) + 32) & ~*(v105 + 80));
      v39 = *(v105 + 72);
      v107 = v18 + 32;
      v108 = v39;
      do
      {
        sub_1DEEE42FC(v38, v16);
        (*(v18 + 16))(v22, v16, v17);
        sub_1DEEE4360(v16);
        v109[0] = v37;
        v41 = *(v37 + 16);
        v40 = *(v37 + 24);
        if (v41 >= v40 >> 1)
        {
          sub_1DEEC7D60((v40 > 1), v41 + 1, 1);
          v37 = v109[0];
        }

        *(v37 + 16) = v41 + 1;
        (*(v18 + 32))(v37 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v41, v22, v17);
        v38 += v108;
        --v36;
      }

      while (v36);
      a1 = v101;
      a3 = v102;
    }

    v42 = sub_1DEEA3B70(v37);

    v43 = a1[2];
    v44 = MEMORY[0x1E69E7CC0];
    if (v43)
    {
      v98 = v42;
      v109[0] = MEMORY[0x1E69E7CC0];
      sub_1DEEC7D60(0, v43, 0);
      v44 = v109[0];
      v45 = a1 + ((*(v105 + 80) + 32) & ~*(v105 + 80));
      v46 = *(v105 + 72);
      v107 = v18 + 32;
      v108 = v46;
      v47 = v103;
      do
      {
        sub_1DEEE42FC(v45, v16);
        (*(v18 + 16))(v47, v16, v17);
        sub_1DEEE4360(v16);
        v109[0] = v44;
        v49 = *(v44 + 16);
        v48 = *(v44 + 24);
        if (v49 >= v48 >> 1)
        {
          sub_1DEEC7D60((v48 > 1), v49 + 1, 1);
          v44 = v109[0];
        }

        *(v44 + 16) = v49 + 1;
        (*(v18 + 32))(v44 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v49, v47, v17);
        v45 += v108;
        --v43;
      }

      while (v43);
      a3 = v102;
      v42 = v98;
    }

    v50 = sub_1DEEA3B70(v44);

    v51 = *(a3 + 24);
    v52 = v100;
    v53 = v104;
    if (__OFSUB__(v51, 1))
    {
      __break(1u);
      goto LABEL_47;
    }

    if (v51 - 1 > v104)
    {
      sub_1DEF4D7C4(v42, v50);
      v55 = v54;

      v56 = qword_1ECDE2E48;
      if ((v55 & 1) != 0 || !v53)
      {
        if (qword_1ECDE2E48 != -1)
        {
          swift_once();
        }

        v57 = sub_1DEF8D508();
        __swift_project_value_buffer(v57, qword_1ECDF5FF8);

        v58 = sub_1DEF8D4D8();
        v59 = sub_1DEF8DCB8();

        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          v110 = v61;
          *v60 = 136315138;
          sub_1DEE29594(a3 + 40, v109);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4310, &qword_1DEF91E80);
          v62 = sub_1DEF8D988();
          v64 = sub_1DEE12A5C(v62, v63, &v110);

          *(v60 + 4) = v64;
          _os_log_impl(&dword_1DEE0F000, v58, v59, "%s provided an acceptible relationship list; continuing sequence", v60, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v61);
          MEMORY[0x1E12CCD70](v61, -1, -1);
          MEMORY[0x1E12CCD70](v60, -1, -1);
        }

        v65 = v106;
        v66 = v101;
        v67 = v53 + 1;
        v68 = v99;
        return sub_1DEEE2FD0(v68, v67, v66, v65, v52);
      }

LABEL_35:
      if (v56 == -1)
      {
LABEL_36:
        v84 = sub_1DEF8D508();
        __swift_project_value_buffer(v84, qword_1ECDF5FF8);

        v85 = sub_1DEF8D4D8();
        v86 = sub_1DEF8DC98();

        if (os_log_type_enabled(v85, v86))
        {
          v87 = swift_slowAlloc();
          v88 = swift_slowAlloc();
          v110 = v88;
          *v87 = 136315138;
          sub_1DEE29594(a3 + 40, v109);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4310, &qword_1DEF91E80);
          v89 = sub_1DEF8D988();
          v91 = sub_1DEE12A5C(v89, v90, &v110);

          *(v87 + 4) = v91;
          _os_log_impl(&dword_1DEE0F000, v85, v86, "%s provided an inconsistent relationship list; retrying sequence", v87, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v88);
          MEMORY[0x1E12CCD70](v88, -1, -1);
          MEMORY[0x1E12CCD70](v87, -1, -1);
        }

        v65 = v106;
        v66 = MEMORY[0x1E69E7CC0];
        v68 = v99;
        v67 = 0;
        return sub_1DEEE2FD0(v68, v67, v66, v65, v52);
      }

LABEL_47:
      swift_once();
      goto LABEL_36;
    }

    if (v51 > 1)
    {
      sub_1DEF4D7C4(v42, v50);
      v83 = v82;

      v56 = qword_1ECDE2E48;
      if ((v83 & 1) == 0 && v53)
      {
        goto LABEL_35;
      }

      if (qword_1ECDE2E48 != -1)
      {
        swift_once();
      }

      v92 = sub_1DEF8D508();
      __swift_project_value_buffer(v92, qword_1ECDF5FF8);

      v70 = sub_1DEF8D4D8();
      v93 = sub_1DEF8DCB8();

      if (!os_log_type_enabled(v70, v93))
      {
LABEL_45:

        return v106(v101, 0);
      }

      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v110 = v73;
      *v72 = 136315394;
      sub_1DEE29594(a3 + 40, v109);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4310, &qword_1DEF91E80);
      v94 = sub_1DEF8D988();
      v96 = sub_1DEE12A5C(v94, v95, &v110);

      *(v72 + 4) = v96;
      *(v72 + 12) = 2050;
      *(v72 + 14) = v53;
      v77 = "%s provided a consistent relationship list after %{public}ld attempts";
      v78 = v93;
      v79 = v70;
      v80 = v72;
      v81 = 22;
    }

    else
    {

      if (qword_1ECDE2E48 != -1)
      {
        swift_once();
      }

      v69 = sub_1DEF8D508();
      __swift_project_value_buffer(v69, qword_1ECDF5FF8);

      v70 = sub_1DEF8D4D8();
      v71 = sub_1DEF8DCB8();

      if (!os_log_type_enabled(v70, v71))
      {
        goto LABEL_45;
      }

      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v110 = v73;
      *v72 = 136315138;
      sub_1DEE29594(a3 + 40, v109);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4310, &qword_1DEF91E80);
      v74 = sub_1DEF8D988();
      v76 = sub_1DEE12A5C(v74, v75, &v110);

      *(v72 + 4) = v76;
      v77 = "%s provided a relationship list after 1 attempt";
      v78 = v71;
      v79 = v70;
      v80 = v72;
      v81 = 12;
    }

    _os_log_impl(&dword_1DEE0F000, v79, v78, v77, v80, v81);
    __swift_destroy_boxed_opaque_existential_1(v73);
    MEMORY[0x1E12CCD70](v73, -1, -1);
    MEMORY[0x1E12CCD70](v72, -1, -1);
    goto LABEL_45;
  }

  if (qword_1ECDE2E48 != -1)
  {
    swift_once();
  }

  v23 = sub_1DEF8D508();
  __swift_project_value_buffer(v23, qword_1ECDF5FF8);

  sub_1DEEE43BC(a1, 1);
  v24 = sub_1DEF8D4D8();
  v25 = a1;
  v26 = sub_1DEF8DCB8();

  sub_1DEEE43C8(v25, 1);
  if (os_log_type_enabled(v24, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v110 = v29;
    *v27 = 136315394;
    sub_1DEE29594(a3 + 40, v109);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4310, &qword_1DEF91E80);
    v30 = sub_1DEF8D988();
    v32 = sub_1DEE12A5C(v30, v31, &v110);

    *(v27 + 4) = v32;
    *(v27 + 12) = 2114;
    v33 = v25;
    v34 = _swift_stdlib_bridgeErrorToNSError();
    *(v27 + 14) = v34;
    *v28 = v34;
    _os_log_impl(&dword_1DEE0F000, v24, v26, "%s failed: %{public}@", v27, 0x16u);
    sub_1DEEE2A84(v28);
    MEMORY[0x1E12CCD70](v28, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x1E12CCD70](v29, -1, -1);
    MEMORY[0x1E12CCD70](v27, -1, -1);
  }

  return v106(v25, 1);
}