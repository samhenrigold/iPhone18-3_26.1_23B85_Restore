uint64_t sub_1D8C7C1A0(char *__dst, char *__src, unint64_t a3, char *a4)
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

      if (*v6 < *v4)
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
    v16 = v6 - 24;
    v5 -= 24;
    v17 = v12;
    do
    {
      v18 = (v5 + 24);
      v19 = *(v17 - 24);
      v17 -= 24;
      if (v19 < *v16)
      {
        if (v18 != v6)
        {
          v21 = *v16;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v21;
        }

        if (v12 <= v4 || (v6 -= 24, v16 <= v7))
        {
          v6 = v16;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (v18 != v12)
      {
        v20 = *v17;
        *(v5 + 16) = *(v17 + 16);
        *v5 = v20;
      }

      v5 -= 24;
      v12 = v17;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_31:
  v22 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v23 = (v22 >> 2) + (v22 >> 63);
  if (v6 != v4 || v6 >= &v4[24 * v23])
  {
    memmove(v6, v4, 24 * v23);
  }

  return 1;
}

uint64_t sub_1D8C7C3DC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1D8C7C468(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

unint64_t sub_1D8C7C52C(uint64_t a1)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  sub_1D8C2FD04(*(v1 + 24));
  v6[0] = v3;
  v6[1] = v4;
  return sub_1D8C35E54(a1, v6);
}

uint64_t sub_1D8C7C590@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))();
  if (!v2)
  {
    *a1 = 0;
  }

  return result;
}

uint64_t sub_1D8C7C5C4@<X0>(_OWORD *a1@<X0>, void (*a2)(uint64_t *__return_ptr, _OWORD *)@<X1>, _BYTE *a3@<X8>)
{
  v6 = a1[1];
  v8[0] = *a1;
  v8[1] = v6;
  v9 = 10;
  swift_unknownObjectRetain();
  a2(&v10, v8);
  result = sub_1D8C2AB08(v8);
  if (!v3)
  {
    *a3 = v10;
  }

  return result;
}

unint64_t sub_1D8C7C6AC(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = *a4;
  result = sub_1D8C46878(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1D8C72964(v14, a3 & 1);
      result = sub_1D8C46878(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_1D8C85354();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_1D8C744FC();
      result = v17;
    }
  }

  v19 = *a4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    v21 = (v19[7] + 16 * result);
    *v21 = a1;
    v21[1] = &off_1F54516D0;
    v22 = v19[2];
    v13 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (!v13)
    {
      v19[2] = v23;
      return result;
    }

    goto LABEL_15;
  }

  v20 = (v19[7] + 16 * result);
  *v20 = a1;
  v20[1] = &off_1F54516D0;

  return swift_unknownObjectRelease();
}

uint64_t sub_1D8C7C80C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a1 < 0)
  {

    return swift_unknownObjectRelease();
  }

  else
  {

    return sub_1D8C2C670(a4, a5);
  }
}

uint64_t sub_1D8C7C884(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t *))
{
  v3 = v2;
  v4 = a1;
  v5 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v63 = MEMORY[0x1E69E7CC0];
    sub_1D8C5DFD4(0, v5, 0);
    v57 = v63;
    v7 = v4 + 64;
    result = sub_1D8C850C4();
    v8 = result;
    v9 = 0;
    v10 = *(v4 + 36);
    v49 = v4 + 72;
    v50 = v5;
    v52 = v4 + 64;
    v53 = v4;
    v51 = v10;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(v4 + 32))
    {
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_25;
      }

      if (v10 != *(v4 + 36))
      {
        goto LABEL_26;
      }

      v56 = v8 >> 6;
      v55 = v9;
      v12 = *(v4 + 56);
      v13 = (*(v4 + 48) + 16 * v8);
      v14 = *v13;
      v15 = v13[1];
      v16 = (v12 + 40 * v8);
      v17 = *v16;
      v18 = v16[1];
      v20 = v16[2];
      v19 = v16[3];
      v21 = v16[4];
      swift_bridgeObjectRetain_n();
      sub_1D8C2F16C(v17, v18, v20, v19, v21);
      sub_1D8C2F16C(v17, v18, v20, v19, v21);

      sub_1D8C7C80C(v17, v18, v20, v19, v21);
      v58 = v17;
      v59 = v18;
      v60 = v20;
      v61 = v19;
      v62 = v21;
      v22 = a2(v14, v15, &v58);
      if (v3)
      {
        v44 = v58;
        v45 = v59;
        v46 = v60;
        v47 = v61;
        v48 = v62;

        sub_1D8C7C80C(v44, v45, v46, v47, v48);
      }

      v25 = v22;
      v26 = v23;
      v27 = v24;
      v28 = v58;
      v29 = v59;
      v30 = v60;
      v32 = v61;
      v31 = v62;

      result = sub_1D8C7C80C(v28, v29, v30, v32, v31);
      v33 = v57;
      v63 = v57;
      v35 = *(v57 + 16);
      v34 = *(v57 + 24);
      if (v35 >= v34 >> 1)
      {
        result = sub_1D8C5DFD4((v34 > 1), v35 + 1, 1);
        v33 = v63;
      }

      *(v33 + 16) = v35 + 1;
      v36 = v33 + 24 * v35;
      *(v36 + 32) = v25;
      *(v36 + 40) = v26;
      *(v36 + 48) = v27;
      v4 = v53;
      v11 = 1 << *(v53 + 32);
      if (v8 >= v11)
      {
        goto LABEL_27;
      }

      v7 = v52;
      v37 = *(v52 + 8 * v56);
      if ((v37 & (1 << v8)) == 0)
      {
        goto LABEL_28;
      }

      v57 = v33;
      v10 = v51;
      if (v51 != *(v53 + 36))
      {
        goto LABEL_29;
      }

      v38 = v37 & (-2 << (v8 & 0x3F));
      if (v38)
      {
        v11 = __clz(__rbit64(v38)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v3 = 0;
      }

      else
      {
        v39 = v56 << 6;
        v40 = v56 + 1;
        v41 = (v49 + 8 * v56);
        v3 = 0;
        while (v40 < (v11 + 63) >> 6)
        {
          v43 = *v41++;
          v42 = v43;
          v39 += 64;
          ++v40;
          if (v43)
          {
            result = sub_1D8C32654(v8, v51, 0);
            v11 = __clz(__rbit64(v42)) + v39;
            goto LABEL_4;
          }
        }

        result = sub_1D8C32654(v8, v51, 0);
      }

LABEL_4:
      v9 = v55 + 1;
      v8 = v11;
      if (v55 + 1 == v50)
      {
        return v57;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  return result;
}

uint64_t sub_1D8C7CC4C(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v32 = a8;
  v41 = a1;
  v42 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v43 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v45 = *(AssociatedTypeWitness - 8);
  v13 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v12);
  v15 = &v30 - v14;
  MEMORY[0x1EEE9AC00](v13, v16);
  v39 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_getAssociatedTypeWitness();
  v33 = *(v18 - 8);
  v34 = v18;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v30 - v20;
  v22 = sub_1D8C84FC4();
  if (!v22)
  {
    return sub_1D8C84F74();
  }

  v44 = v22;
  v48 = sub_1D8C851C4();
  v35 = sub_1D8C851D4();
  sub_1D8C85174();
  result = sub_1D8C84FB4();
  if ((v44 & 0x8000000000000000) == 0)
  {
    v30 = v10;
    v31 = a5;
    v24 = 0;
    v36 = (v45 + 16);
    v37 = (v45 + 8);
    v38 = v8;
    while (!__OFADD__(v24, 1))
    {
      v45 = v24 + 1;
      v25 = sub_1D8C84FE4();
      v26 = v15;
      v27 = v15;
      v28 = AssociatedTypeWitness;
      (*v36)(v26);
      v25(v47, 0);
      v29 = v46;
      v41(v27, v43);
      if (v29)
      {
        (*v37)(v27, v28);
        (*(v33 + 8))(v21, v34);

        return (*(v30 + 32))(v32, v43, v31);
      }

      v46 = 0;
      (*v37)(v27, v28);
      sub_1D8C851B4();
      result = sub_1D8C84FD4();
      ++v24;
      v15 = v27;
      if (v45 == v44)
      {
        (*(v33 + 8))(v21, v34);
        return v48;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Dictionary<>.toTuplesSortedByValues()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a4;
  v6[5] = a5;
  return Dictionary.toTuplesSortedByValues(by:)(sub_1D8C7D3E0, v6, a1, a2, a3, a4);
}

uint64_t Dictionary<>.toTuplesSortedByKeys()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a1;
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = sub_1D8C7D6A0;
  v17 = &v18;
  v5 = sub_1D8C84D44();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  v23 = sub_1D8C7CC4C(sub_1D8C7D418, v11, v5, TupleTypeMetadata2, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v8);
  sub_1D8C84F94();
  swift_getWitnessTable();
  v9 = sub_1D8C84F44();

  return v9;
}

uint64_t Dictionary.toTuplesSortedByValues(by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = sub_1D8C7D4F0;
  v17 = &v18;
  v6 = sub_1D8C84D44();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  v22 = sub_1D8C7CC4C(sub_1D8C7D594, v12, v6, TupleTypeMetadata2, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v9);
  sub_1D8C84F94();
  swift_getWitnessTable();
  v10 = sub_1D8C84F44();

  return v10;
}

uint64_t sub_1D8C7D418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 48);
  v6 = *(swift_getTupleTypeMetadata2() + 48);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v5(a2, a2 + *(TupleTypeMetadata2 + 48), a1, a1 + v6);
}

uint64_t sub_1D8C7D4F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(v4 + 16);
  v9 = *(v4 + 24);
  (*(*(v8 - 8) + 16))(a1, a3);
  v10 = *(*(v9 - 8) + 16);

  return v10(a2, a4, v9);
}

uint64_t sub_1D8C7D594@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 40);
  v6 = *(swift_getTupleTypeMetadata2() + 48);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v5(a2, a2 + *(TupleTypeMetadata2 + 48), a1, a1 + v6);
}

uint64_t sub_1D8C7D634(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v5(a1 + *(TupleTypeMetadata2 + 48), a2 + *(TupleTypeMetadata2 + 48)) & 1;
}

char *sub_1D8C7D6A4(uint64_t a1, void (*a2)(uint64_t a1), uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v130 = a4;
  v128 = a3;
  v134 = a2;
  v113 = sub_1D8C847F4();
  v108 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113, v7);
  v112 = &v105 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_1D8C847E4();
  v106 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111, v9);
  v115 = &v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_1D8C84BD4();
  v114 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107, v11);
  v110 = &v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D8C84B74();
  v14 = *(v13 - 8);
  v119 = v13;
  v120 = v14;
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v116 = &v105 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v18);
  v109 = &v105 - v19;
  v129 = sub_1D8C848C4();
  v118 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129, v20);
  v117 = &v105 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1D8C84994();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = &v105 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = a1;
  result = sub_1D8C84874();
  *&v127 = *(result + 2);
  if (v127)
  {
    v28 = 0;
    v126 = (v23 + 16);
    v122 = (v23 + 8);
    v125 = xmmword_1D8C861A0;
    v123 = result;
    v124 = v22;
    v121 = v23;
    while (1)
    {
      if (v28 >= *(result + 2))
      {
        __break(1u);
LABEL_76:
        __break(1u);
        goto LABEL_77;
      }

      (*(v23 + 16))(v26, &result[((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v28], v22);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB118, &qword_1D8C86660);
      inited = swift_initStackObject();
      *(inited + 16) = v125;
      *(inited + 32) = sub_1D8C84814();
      *(inited + 40) = v30;
      v31 = v134;
      v32 = *(v134 + 2);

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || (v33 = *(v31 + 3) >> 1, v34 = v31, v33 <= v32))
      {
        result = sub_1D8C4AAA0(result, v32 + 1, 1, v31);
        v34 = result;
        v33 = *(result + 3) >> 1;
      }

      if (v33 <= *(v34 + 2))
      {
        goto LABEL_76;
      }

      swift_arrayInitWithCopy();

      ++*(v34 + 2);
      sub_1D8C7F8DC(v26, v34, v130);
      if (v4)
      {
        break;
      }

      ++v28;
      v22 = v124;
      (*v122)(v26, v124);

      v23 = v121;
      result = v123;
      if (v127 == v28)
      {
        goto LABEL_10;
      }
    }

    (*v122)(v26, v124);
LABEL_56:
  }

LABEL_10:

  result = sub_1D8C84804();
  *&v127 = *(result + 2);
  if (v127)
  {
    v35 = 0;
    v36 = v117;
    v126 = v118 + 16;
    v124 = (v118 + 8);
    v125 = xmmword_1D8C861A0;
    v37 = v134;
    while (v35 < *(result + 2))
    {
      v38 = result;
      (*(v118 + 2))(v36, &result[((v118[80] + 32) & ~v118[80]) + *(v118 + 9) * v35], v129);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB118, &qword_1D8C86660);
      v39 = swift_initStackObject();
      *(v39 + 16) = v125;
      *(v39 + 32) = sub_1D8C84814();
      *(v39 + 40) = v40;
      v41 = v37;
      v42 = *(v37 + 2);

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || (v43 = *(v41 + 3) >> 1, v44 = v41, v43 <= v42))
      {
        result = sub_1D8C4AAA0(result, v42 + 1, 1, v41);
        v44 = result;
        v43 = *(result + 3) >> 1;
      }

      if (v43 <= *(v44 + 2))
      {
        goto LABEL_78;
      }

      swift_arrayInitWithCopy();

      ++*(v44 + 2);
      v36 = v117;
      sub_1D8C7D6A4(v117, v44, v128, v130);
      if (v4)
      {
        (*v124)(v36, v129);
        goto LABEL_56;
      }

      ++v35;
      (*v124)(v36, v129);

      v37 = v134;
      result = v38;
      if (v127 == v35)
      {
        goto LABEL_19;
      }
    }

LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

LABEL_19:

  v45 = sub_1D8C84834();
  result = sub_1D8C2E464(MEMORY[0x1E69E7CC0]);
  v133[0] = result;
  v46 = *(v45 + 16);
  if (v46)
  {
    v47 = 0;
    v48 = (v120 + 8);
    v49 = v109;
    while (1)
    {
      if (v47 >= *(v45 + 16))
      {
        goto LABEL_79;
      }

      v50 = v119;
      (*(v120 + 16))(v49, v45 + ((*(v120 + 80) + 32) & ~*(v120 + 80)) + *(v120 + 72) * v47, v119);
      sub_1D8C7F23C(v133);
      if (v4)
      {
        break;
      }

      ++v47;
      result = (*v48)(v49, v50);
      if (v46 == v47)
      {
        v118 = v133[0];
        goto LABEL_28;
      }
    }

    (*v48)(v49, v50);
  }

  v118 = result;
LABEL_28:

  result = sub_1D8C84884();
  v51 = v115;
  v130 = *(result + 2);
  if (!v130)
  {
LABEL_37:

    v63 = sub_1D8C84894();
    v64 = *(v63 + 16);
    if (v64)
    {
      v133[0] = MEMORY[0x1E69E7CC0];
      v65 = v63;
      sub_1D8C5DFF4(0, v64, 0);
      result = v65;
      v66 = 0;
      v67 = v133[0];
      v123 = &v65[(*(v114 + 80) + 32) & ~*(v114 + 80)];
      v121 = v64;
      v122 = (v114 + 16);
      v68 = v107;
      v124 = (v106 + 8);
      *&v125 = v114 + 8;
      v126 = v65;
      while (1)
      {
        if (v66 >= *(result + 2))
        {
          goto LABEL_82;
        }

        v130 = v67;
        v69 = *(v114 + 72);
        *&v127 = v66;
        v70 = v110;
        (*(v114 + 16))(v110, &v123[v69 * v66], v68);
        sub_1D8C84BA4();
        sub_1D8C809A8(&qword_1ECAAB0C0, MEMORY[0x1E69AA9E8], MEMORY[0x1E69AA9E0]);
        v71 = v111;
        v72 = sub_1D8C84CE4();
        if (v5)
        {

          (*v124)(v51, v71);
          (*v125)(v70, v68);
        }

        v74 = v72;
        v75 = v73;
        (*v124)(v51, v71);
        v76 = sub_1D8C84B84();
        v78 = v77;
        (*v125)(v70, v68);
        v79 = v75 >> 62;
        v129 = 0;
        if ((v75 >> 62) > 1)
        {
          v67 = v130;
          if (v79 != 2 || *(v74 + 16) == *(v74 + 24))
          {
LABEL_49:
            v80 = v76;
            sub_1D8C2C684(v74, v75);
            v74 = 0;
            v75 = 0xF000000000000000;
            goto LABEL_50;
          }
        }

        else
        {
          v67 = v130;
          if (v79)
          {
            if (v74 == v74 >> 32)
            {
              goto LABEL_49;
            }
          }

          else if ((v75 & 0xFF000000000000) == 0)
          {
            goto LABEL_49;
          }
        }

        v80 = v76;
LABEL_50:
        sub_1D8C2C670(0, 0xF000000000000000);
        v133[0] = v67;
        v82 = v67[2];
        v81 = v67[3];
        if (v82 >= v81 >> 1)
        {
          sub_1D8C5DFF4((v81 > 1), v82 + 1, 1);
          v68 = v107;
          v67 = v133[0];
        }

        result = v126;
        v66 = v127 + 1;
        v67[2] = v82 + 1;
        v83 = &v67[4 * v82];
        v83[4] = v80;
        v83[5] = v78;
        v83[6] = v74;
        v83[7] = v75;
        v5 = v129;
        v85 = v112;
        v84 = v113;
        v51 = v115;
        if (v121 == v66)
        {
          v130 = v67;

          goto LABEL_60;
        }
      }
    }

    v130 = MEMORY[0x1E69E7CC0];
    v85 = v112;
    v84 = v113;
LABEL_60:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB118, &qword_1D8C86660);
    v86 = swift_initStackObject();
    *(v86 + 16) = xmmword_1D8C861A0;
    *(v86 + 32) = sub_1D8C84814();
    *(v86 + 40) = v87;
    v133[0] = v134;

    sub_1D8C4B134(v86);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB228, &qword_1D8C877F0);
    sub_1D8C52AF8();
    v88 = sub_1D8C84D54();
    v90 = v89;

    sub_1D8C84854();
    sub_1D8C809A8(&qword_1ECAAB0B8, MEMORY[0x1E69AAA00], MEMORY[0x1E69AA9F8]);
    v91 = sub_1D8C84CE4();
    if (v5)
    {
      (*(v108 + 8))(v85, v84);
    }

    v93 = v91;
    v94 = v92;
    (*(v108 + 8))(v85, v84);
    v95 = v94 >> 62;
    v129 = 0;
    if ((v94 >> 62) > 1)
    {
      v96 = v88;
      if (v95 != 2)
      {
        goto LABEL_70;
      }

      v97 = *(v93 + 16);
      v98 = *(v93 + 24);
    }

    else
    {
      v96 = v88;
      if (!v95)
      {
        if ((v94 & 0xFF000000000000) == 0)
        {
          goto LABEL_70;
        }

LABEL_71:
        sub_1D8C2C5E4(v93, v94);
        v99 = v93;
        v100 = v93;
        v101 = v94;
        goto LABEL_72;
      }

      v97 = v93;
      v98 = v93 >> 32;
    }

    if (v97 != v98)
    {
      goto LABEL_71;
    }

LABEL_70:
    v99 = v93;
    v100 = 0;
    v101 = 0xF000000000000000;
LABEL_72:
    sub_1D8C2C670(0, 0xF000000000000000);
    v102 = v118;

    v103 = v130;

    sub_1D8C2C5D0(v100, v101);
    v134 = sub_1D8C6A0BC(v132, v96, v90);
    v104 = v129;
    sub_1D8C67C60(v102, v103, v100, v101, 2, v133);
    if (!v104)
    {
      sub_1D8C2F060(v133[0], v133[1], v133[2], v133[3]);
    }

    sub_1D8C2C670(v100, v101);
    (v134)(v132, 0);

    sub_1D8C2C670(v100, v101);
    return sub_1D8C2C684(v99, v94);
  }

  v52 = 0;
  v53 = v119;
  v129 = v120 + 16;
  v126 = (v120 + 8);
  v127 = xmmword_1D8C861A0;
  while (v52 < *(result + 2))
  {
    v54 = result;
    (*(v120 + 16))(v116, &result[((*(v120 + 80) + 32) & ~*(v120 + 80)) + *(v120 + 72) * v52], v53);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB118, &qword_1D8C86660);
    v55 = swift_initStackObject();
    *(v55 + 16) = v127;
    *(v55 + 32) = sub_1D8C84A54();
    *(v55 + 40) = v56;
    v57 = v134;
    v58 = *(v134 + 2);

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || (v59 = *(v57 + 3) >> 1, v60 = v57, v59 <= v58))
    {
      result = sub_1D8C4AAA0(result, v58 + 1, 1, v57);
      v60 = result;
      v59 = *(result + 3) >> 1;
    }

    if (v59 <= *(v60 + 2))
    {
      goto LABEL_81;
    }

    swift_arrayInitWithCopy();

    ++*(v60 + 2);
    v61 = v116;
    sub_1D8C80328(v116, v128);
    if (v4)
    {
      (*v126)(v61, v119);

      goto LABEL_56;
    }

    ++v52;
    v62 = v61;
    v53 = v119;
    (*v126)(v62, v119);

    v51 = v115;
    result = v54;
    if (v130 == v52)
    {
      goto LABEL_37;
    }
  }

LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
  return result;
}

uint64_t sub_1D8C7E610@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v60 = a2;
  v4 = sub_1D8C84B74();
  v69 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_1D8C848C4();
  v8 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78, v9);
  v73 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1D8C84994();
  v11 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64, v12);
  v77 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D8C84A14();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v66 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1E69E7CC0];
  v82 = sub_1D8C2E72C(MEMORY[0x1E69E7CC0]);
  v81 = sub_1D8C2E600(v18);
  v65 = a1;
  result = MEMORY[0x1DA725040]();
  v20 = *(result + 16);
  if (v20)
  {
    v21 = 0;
    v22 = result + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v74 = v11 + 16;
    v75 = (v11 + 8);
    v70 = v8 + 16;
    v71 = (v8 + 8);
    v67 = v69 + 16;
    v53 = (v69 + 8);
    v62 = (v15 + 8);
    v79 = xmmword_1D8C861A0;
    v63 = v14;
    v68 = v4;
    v54 = v7;
    v72 = v8;
    v76 = v11;
    v61 = result;
    v58 = v15;
    v57 = v20;
    v56 = v22;
    v55 = v15 + 16;
    while (1)
    {
      if (v21 >= *(result + 16))
      {
        goto LABEL_31;
      }

      v23 = *(v15 + 72);
      v59 = v21;
      (*(v15 + 16))(v66, v22 + v23 * v21, v14);
      v24 = sub_1D8C849C4();
      v26 = v25;
      result = sub_1D8C849D4();
      v27 = result;
      v28 = *(result + 16);
      if (v28)
      {
        break;
      }

      v33 = v78;
LABEL_11:

      result = sub_1D8C849A4();
      v34 = result;
      v35 = *(result + 16);
      if (v35)
      {
        v36 = 0;
        while (v36 < *(v34 + 16))
        {
          v37 = v73;
          (*(v72 + 16))(v73, v34 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v36, v33);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB118, &qword_1D8C86660);
          v38 = swift_allocObject();
          *(v38 + 16) = v79;
          *(v38 + 32) = v24;
          *(v38 + 40) = v26;

          sub_1D8C7D6A4(v37, v38, &v81, &v82);
          if (v2)
          {

            v51 = sub_1D8C84914();
            (*(*(v51 - 8) + 8))(v65, v51);
            (*v71)(v37, v33);
            goto LABEL_27;
          }

          ++v36;
          (*v71)(v37, v33);

          if (v35 == v36)
          {
            goto LABEL_16;
          }
        }

LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

LABEL_16:

      result = sub_1D8C849F4();
      v39 = result;
      if (*(result + 16))
      {
        v40 = *(result + 16);
        v41 = 0;
        v42 = v54;
        v43 = v53;
        while (v41 < *(v39 + 16))
        {
          v44 = v68;
          (*(v69 + 16))(v42, v39 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v41, v68);
          v80[0] = v24;
          v80[1] = v26;

          sub_1D8C80328(v42, &v81);
          if (v2)
          {

            sub_1D8C6BC8C(v80);
            v52 = sub_1D8C84914();
            (*(*(v52 - 8) + 8))(v65, v52);
            (*v43)(v42, v44);
            goto LABEL_27;
          }

          ++v41;
          (*v43)(v42, v44);
          result = sub_1D8C6BC8C(v80);
          if (v40 == v41)
          {
            goto LABEL_21;
          }
        }

LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        return result;
      }

LABEL_21:
      v45 = v59 + 1;
      v14 = v63;
      (*v62)(v66, v63);
      v21 = v45;

      v46 = v45 == v57;
      result = v61;
      v15 = v58;
      v22 = v56;
      if (v46)
      {
        goto LABEL_23;
      }
    }

    v29 = 0;
    v30 = v64;
    while (1)
    {
      if (v29 >= *(v27 + 16))
      {
        __break(1u);
        goto LABEL_29;
      }

      v31 = v77;
      (*(v76 + 16))(v77, v27 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v29, v30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB118, &qword_1D8C86660);
      v32 = swift_allocObject();
      *(v32 + 16) = v79;
      *(v32 + 32) = v24;
      *(v32 + 40) = v26;

      sub_1D8C7F8DC(v31, v32, &v82);
      if (v2)
      {
        break;
      }

      ++v29;
      (*v75)(v31, v30);

      v33 = v78;
      if (v28 == v29)
      {
        goto LABEL_11;
      }
    }

    v50 = sub_1D8C84914();
    (*(*(v50 - 8) + 8))(v65, v50);
    (*v75)(v31, v30);
LABEL_27:
    (*v62)(v66, v63);
  }

  else
  {
LABEL_23:

    v47 = sub_1D8C84914();
    result = (*(*(v47 - 8) + 8))(v65, v47);
    v48 = v82;
    v49 = v60;
    *v60 = v81;
    v49[1] = v48;
  }

  return result;
}

uint64_t sub_1D8C7EED0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1D8C84B24();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  result = (*(v5 + 88))(v8, v4);
  if (result == *MEMORY[0x1E69AAA98])
  {
    *a2 = 0;
    return result;
  }

  if (result == *MEMORY[0x1E69AAA78])
  {
    v10 = 1;
LABEL_19:
    *a2 = v10;
    return result;
  }

  if (result == *MEMORY[0x1E69AAA90])
  {
    v10 = 2;
    goto LABEL_19;
  }

  if (result == *MEMORY[0x1E69AAAC0])
  {
    v10 = 3;
    goto LABEL_19;
  }

  if (result == *MEMORY[0x1E69AAA88])
  {
    v10 = 4;
    goto LABEL_19;
  }

  if (result == *MEMORY[0x1E69AAAD0])
  {
    v10 = 5;
    goto LABEL_19;
  }

  if (result == *MEMORY[0x1E69AAAC8])
  {
    v10 = 6;
    goto LABEL_19;
  }

  if (result == *MEMORY[0x1E69AAA60])
  {
    v10 = 7;
    goto LABEL_19;
  }

  if (result == *MEMORY[0x1E69AAAB0])
  {
    v10 = 8;
    goto LABEL_19;
  }

  if (result == *MEMORY[0x1E69AAA80])
  {
    sub_1D8C4B228();
    swift_allocError();
    *v11 = 0xD000000000000013;
    v11[1] = 0x80000001D8C8C4E0;
    return swift_willThrow();
  }

  else
  {
    if (result == *MEMORY[0x1E69AAAD8])
    {
      v10 = 9;
      goto LABEL_19;
    }

    if (result == *MEMORY[0x1E69AAA70])
    {
      v10 = 10;
      goto LABEL_19;
    }

    if (result == *MEMORY[0x1E69AAAB8])
    {
      v10 = 11;
      goto LABEL_19;
    }

    if (result == *MEMORY[0x1E69AAA68])
    {
      v10 = 12;
      goto LABEL_19;
    }

    if (result == *MEMORY[0x1E69AAAE0])
    {
      v10 = 13;
      goto LABEL_19;
    }

    if (result == *MEMORY[0x1E69AAAE8])
    {
      v10 = 14;
      goto LABEL_19;
    }

    if (result == *MEMORY[0x1E69AAAA0])
    {
      v10 = 15;
      goto LABEL_19;
    }

    if (result == *MEMORY[0x1E69AAAA8])
    {
      v10 = 16;
      goto LABEL_19;
    }

    result = sub_1D8C851F4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D8C7F23C(void *a1)
{
  v63 = a1;
  v64 = sub_1D8C84AA4();
  v62 = *(v64 - 8);
  v2 = MEMORY[0x1EEE9AC00](v64, v1);
  v61 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v53 - v5;
  v7 = sub_1D8C84664();
  v60 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D8C847D4();
  v65 = *(v11 - 8);
  v66 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D8C84B24();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8C84A74();
  v20 = v67;
  sub_1D8C7EED0(v19, v69);
  if (v20)
  {
    return (*(v16 + 8))(v19, v15);
  }

  v58 = v10;
  v59 = v7;
  v67 = v6;
  v22 = v64;
  (*(v16 + 8))(v19, v15);
  v23 = LOBYTE(v69[0]);
  sub_1D8C84AF4();
  sub_1D8C809A8(&qword_1ECAAB0C8, MEMORY[0x1E69AA9D8], MEMORY[0x1E69AA9D0]);
  v24 = v66;
  v25 = sub_1D8C84CE4();
  v27 = v26;
  v56 = 0;
  v57 = v25;
  (*(v65 + 8))(v14, v24);
  v65 = sub_1D8C84A54();
  v66 = v28;
  v29 = sub_1D8C84B44();
  v31 = v30;

  v32 = HIBYTE(v31) & 0xF;
  if ((v31 & 0x2000000000000000) == 0)
  {
    v32 = v29 & 0xFFFFFFFFFFFFLL;
  }

  v55 = v23;
  if (v32)
  {
    v69[0] = sub_1D8C84B44();
    v69[1] = v33;
    v34 = v58;
    sub_1D8C84614();
    sub_1D8C46638();
    v54 = sub_1D8C85094();
    v53 = v35;
    (*(v60 + 8))(v34, v59);
  }

  else
  {
    v54 = 0;
    v53 = 0;
  }

  v37 = v61;
  v36 = v62;
  v38 = v67;
  v39 = sub_1D8C84AD4();
  sub_1D8C84AB4();
  (*(v36 + 104))(v37, *MEMORY[0x1E69AAA48], v22);
  sub_1D8C809A8(&qword_1ECAAB3D0, MEMORY[0x1E69AAA50], MEMORY[0x1E69AAA58]);
  sub_1D8C84F64();
  sub_1D8C84F64();
  v40 = *(v36 + 8);
  v40(v37, v22);
  v40(v38, v22);
  v41 = v68;
  v42 = v69[0];
  v43 = sub_1D8C84A44();
  if (v43)
  {
    v44 = sub_1D8C84A24();
  }

  else
  {
    v44 = 0;
  }

  v45 = v43 ^ 1;
  v46 = v27 >> 62;
  if ((v27 >> 62) > 1)
  {
    if (v46 != 2 || *(v57 + 16) == *(v57 + 24))
    {
      goto LABEL_19;
    }
  }

  else if (v46)
  {
    if (v57 == v57 >> 32)
    {
LABEL_19:
      v48 = v27;
      v49 = 0;
      v50 = 0xF000000000000000;
      v47 = v57;
      goto LABEL_20;
    }
  }

  else if ((v27 & 0xFF000000000000) == 0)
  {
    goto LABEL_19;
  }

  v47 = v57;
  sub_1D8C2C5E4(v57, v27);
  v48 = v27;
  v49 = v47;
  v50 = v48;
LABEL_20:
  v82 = v45 & 1;
  sub_1D8C2C670(0, 0xF000000000000000);
  LOBYTE(v71) = v55;
  *(&v71 + 1) = v68;
  DWORD1(v71) = *(&v68 + 3);
  *(&v71 + 1) = v54;
  v72 = v53;
  v73 = v39;
  v74 = v42 == v41;
  v75 = v83;
  v76 = v84;
  v77 = v44;
  v78 = v82;
  *&v79[3] = *&v70[3];
  *v79 = *v70;
  v80 = v49;
  v81 = v50;
  v51 = v63;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v69[0] = *v51;
  sub_1D8C7546C(&v71, v65, v66, isUniquelyReferenced_nonNull_native);

  result = sub_1D8C2C684(v47, v48);
  *v51 = v69[0];
  return result;
}

uint64_t sub_1D8C7F8DC(uint64_t a1, void (**a2)(char *, uint64_t), uint64_t *a3)
{
  v101 = a3;
  v109 = a2;
  v4 = sub_1D8C848D4();
  v102 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D8C84C54();
  v113 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v12 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v93 - v14;
  v16 = sub_1D8C847C4();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v93 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = a1;
  sub_1D8C84964();
  sub_1D8C809A8(&qword_1ECAAB0D0, MEMORY[0x1E69AA980], MEMORY[0x1E69AA978]);
  v21 = v112;
  v22 = sub_1D8C84CE4();
  if (v21)
  {
    return (*(v17 + 8))(v20, v16);
  }

  v110 = v15;
  v99 = v22;
  v100 = v23;
  v105 = v12;
  v112 = v8;
  v96 = v7;
  v111 = 0;
  v104 = v4;
  (*(v17 + 8))(v20, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB118, &qword_1D8C86660);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D8C861A0;
  *(inited + 32) = sub_1D8C84924();
  *(inited + 40) = v26;
  v114 = v109;

  sub_1D8C4B134(inited);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB228, &qword_1D8C877F0);
  sub_1D8C52AF8();
  v95 = sub_1D8C84D54();
  v98 = v27;

  v29 = MEMORY[0x1DA7250A0](v28);
  v30 = sub_1D8C2E870(MEMORY[0x1E69E7CC0]);
  v109 = *(v29 + 16);
  if (v109)
  {
    v31 = 0;
    v33 = v112;
    v32 = v113;
    v108 = v29 + ((*(v32 + 80) + 32) & ~*(v32 + 80));
    v106 = (v113 + 8);
    v107 = v113 + 16;
    v34 = v110;
    while (1)
    {
      if (v31 >= *(v29 + 16))
      {
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        sub_1D8C85354();
        __break(1u);
LABEL_65:
        result = sub_1D8C85354();
        __break(1u);
        return result;
      }

      (*(v32 + 16))(v34, v108 + *(v32 + 72) * v31, v33);
      v35 = sub_1D8C84BE4();
      v37 = v36;
      v38 = sub_1D8C84C04();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v114 = v30;
      v41 = sub_1D8C4668C(v35, v37);
      v42 = v30;
      v43 = v30[2];
      v44 = (v40 & 1) == 0;
      v45 = v43 + v44;
      if (__OFADD__(v43, v44))
      {
        goto LABEL_59;
      }

      v46 = v40;
      if (v42[3] >= v45)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v49 = v38;
          if (v40)
          {
            goto LABEL_5;
          }
        }

        else
        {
          sub_1D8C74800();
          v49 = v38;
          if (v46)
          {
            goto LABEL_5;
          }
        }
      }

      else
      {
        sub_1D8C72EF4(v45, isUniquelyReferenced_nonNull_native);
        v47 = sub_1D8C4668C(v35, v37);
        if ((v46 & 1) != (v48 & 1))
        {
          goto LABEL_64;
        }

        v41 = v47;
        v49 = v38;
        if (v46)
        {
LABEL_5:

          v30 = v114;
          *(*(v114 + 56) + 8 * v41) = v49;
          v34 = v110;
          v33 = v112;
          (*v106)(v110, v112);
          goto LABEL_6;
        }
      }

      v30 = v114;
      *(v114 + 8 * (v41 >> 6) + 64) |= 1 << v41;
      v50 = (v30[6] + 16 * v41);
      *v50 = v35;
      v50[1] = v37;
      *(v30[7] + 8 * v41) = v49;
      v34 = v110;
      v33 = v112;
      (*v106)(v110, v112);
      v51 = v30[2];
      v52 = __OFADD__(v51, 1);
      v53 = v51 + 1;
      if (v52)
      {
        goto LABEL_61;
      }

      v30[2] = v53;
LABEL_6:
      v31 = (v31 + 1);
      v32 = v113;
      if (v109 == v31)
      {
        goto LABEL_20;
      }
    }
  }

  v33 = v112;
  v32 = v113;
LABEL_20:
  v97 = v30;

  v54 = v100;
  v55 = v100 >> 62;
  if ((v100 >> 62) > 1)
  {
    v56 = v99;
    if (v55 != 2 || *(v99 + 16) == *(v99 + 24))
    {
      goto LABEL_28;
    }
  }

  else
  {
    v56 = v99;
    if (v55)
    {
      if (v99 == v99 >> 32)
      {
LABEL_28:
        v56 = 0;
        v106 = 0xF000000000000000;
        goto LABEL_29;
      }
    }

    else if ((v100 & 0xFF000000000000) == 0)
    {
      goto LABEL_28;
    }
  }

  sub_1D8C2C5E4(v56, v100);
  v106 = v54;
LABEL_29:
  v57 = MEMORY[0x1DA7250A0]();
  v107 = sub_1D8C2E858(MEMORY[0x1E69E7CC0]);
  v58 = *(v57 + 16);
  if (v58)
  {
    v59 = 0;
    v60 = (v102 + 8);
    v109 = (v32 + 8);
    v110 = (v32 + 16);
    v108 = v58;
    v102 = v58 - 1;
    v61 = v96;
    v62 = v105;
    v103 = v56;
LABEL_31:
    v63 = v59;
    while (v63 < *(v57 + 16))
    {
      (*(v32 + 16))(v62, v57 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v63, v33);
      v64 = v61;
      sub_1D8C84C24();
      sub_1D8C809A8(&qword_1ECAAB0D8, MEMORY[0x1E69AAA20], MEMORY[0x1E69AAA18]);
      v65 = v104;
      v66 = v111;
      v67 = sub_1D8C84CE4();
      v111 = v66;
      if (v66)
      {

        sub_1D8C2C670(v103, v106);

        sub_1D8C2C684(v99, v100);
        (*v60)(v64, v65);
        (*v109)(v105, v112);
      }

      v69 = v67;
      v70 = v68;
      (*v60)(v64, v65);
      v71 = v70 >> 62;
      v61 = v64;
      v62 = v105;
      if ((v70 >> 62) > 1)
      {
        v33 = v112;
        if (v71 == 2 && *(v69 + 16) != *(v69 + 24))
        {
LABEL_42:
          v72 = sub_1D8C84C04();
          sub_1D8C2C5E4(v69, v70);
          v73 = v107;
          v74 = swift_isUniquelyReferenced_nonNull_native();
          v114 = v73;
          v75 = sub_1D8C46878(v72);
          v77 = *(v73 + 16);
          v78 = (v76 & 1) == 0;
          v52 = __OFADD__(v77, v78);
          v79 = v77 + v78;
          if (v52)
          {
            goto LABEL_62;
          }

          v80 = *(v73 + 24);
          v94 = v72;
          if (v80 >= v79)
          {
            v61 = v96;
            v62 = v105;
            if ((v74 & 1) == 0)
            {
              v107 = v75;
              v90 = v76;
              sub_1D8C74E8C();
              LOBYTE(v76) = v90;
              v62 = v105;
              v61 = v96;
              v75 = v107;
            }
          }

          else
          {
            LODWORD(v107) = v76;
            sub_1D8C73AB4(v79, v74);
            v75 = sub_1D8C46878(v72);
            v81 = v76 & 1;
            LOBYTE(v76) = v107;
            if ((v107 & 1) != v81)
            {
              goto LABEL_65;
            }

            v61 = v96;
            v62 = v105;
          }

          v82 = v114;
          v107 = v114;
          if (v76)
          {
            v83 = (*(v114 + 56) + 16 * v75);
            v84 = *v83;
            v85 = v83[1];
            *v83 = v69;
            v83[1] = v70;
            sub_1D8C2C684(v84, v85);
            sub_1D8C2C684(v69, v70);
            (*v109)(v62, v33);
          }

          else
          {
            *(v114 + 8 * (v75 >> 6) + 64) |= 1 << v75;
            *(v82[6] + 8 * v75) = v94;
            v86 = (v82[7] + 16 * v75);
            *v86 = v69;
            v86[1] = v70;
            sub_1D8C2C684(v69, v70);
            (*v109)(v62, v33);
            v87 = v82[2];
            v52 = __OFADD__(v87, 1);
            v88 = v87 + 1;
            if (v52)
            {
              goto LABEL_63;
            }

            v82[2] = v88;
          }

          v32 = v113;
          v59 = v63 + 1;
          v89 = v102 == v63;
          v56 = v103;
          if (v89)
          {
            goto LABEL_57;
          }

          goto LABEL_31;
        }
      }

      else
      {
        v33 = v112;
        if (v71)
        {
          if (v69 != v69 >> 32)
          {
            goto LABEL_42;
          }
        }

        else if ((v70 & 0xFF000000000000) != 0)
        {
          goto LABEL_42;
        }
      }

      ++v63;
      (*v109)(v105, v33);
      sub_1D8C2C684(v69, v70);
      v32 = v113;
      if (v108 == v63)
      {
        v56 = v103;
        goto LABEL_57;
      }
    }

    goto LABEL_60;
  }

LABEL_57:

  sub_1D8C2E858(MEMORY[0x1E69E7CC0]);
  sub_1D8C2C670(0, 0xF000000000000000);

  v91 = v101;
  v92 = swift_isUniquelyReferenced_nonNull_native();
  v114 = *v91;
  sub_1D8C75D50(v97, v56, v106, v107, v95, v98, v92);

  result = sub_1D8C2C684(v99, v100);
  *v91 = v114;
  return result;
}

uint64_t sub_1D8C80328(uint64_t a1, uint64_t *a2)
{
  v68 = a2;
  v2 = sub_1D8C84AA4();
  v65 = *(v2 - 8);
  v66 = v2;
  v4 = MEMORY[0x1EEE9AC00](v2, v3);
  v64 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v6);
  v63 = &v60 - v7;
  v70 = sub_1D8C84B24();
  v8 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70, v9);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D8C84664();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_1D8C84B34();
  v74 = v17;
  sub_1D8C84614();
  v62 = sub_1D8C46638();
  v18 = sub_1D8C85094();
  v20 = v19;
  v61 = *(v13 + 8);
  v61(v16, v12);

  v21 = HIBYTE(v20) & 0xF;
  v67 = v18;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v21 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (!v21)
  {

    sub_1D8C4B228();
    swift_allocError();
    *v24 = 0xD000000000000010;
    v24[1] = 0x80000001D8C8C770;
    return swift_willThrow();
  }

  v69 = v20;
  sub_1D8C84A74();
  v22 = v71;
  sub_1D8C7EED0(v11, &v73);
  if (v22)
  {
    (*(v8 + 8))(v11, v70);
  }

  v60 = 0;
  (*(v8 + 8))(v11, v70);
  LODWORD(v71) = v73;
  v25 = sub_1D8C84B44();
  v27 = v26;

  v28 = HIBYTE(v27) & 0xF;
  if ((v27 & 0x2000000000000000) == 0)
  {
    v28 = v25 & 0xFFFFFFFFFFFFLL;
  }

  if (v28)
  {
    v73 = sub_1D8C84B44();
    v74 = v29;
    sub_1D8C84614();
    v70 = sub_1D8C85094();
    v31 = v30;
    v61(v16, v12);
  }

  else
  {
    v70 = 0;
    v31 = 0;
  }

  v32 = sub_1D8C84AD4();
  v33 = v63;
  sub_1D8C84AB4();
  v35 = v64;
  v34 = v65;
  v36 = v66;
  (*(v65 + 104))(v64, *MEMORY[0x1E69AAA48], v66);
  sub_1D8C809A8(&qword_1ECAAB3D0, MEMORY[0x1E69AAA50], MEMORY[0x1E69AAA58]);
  sub_1D8C84F64();
  sub_1D8C84F64();
  v38 = *(v34 + 8);
  v37 = v34 + 8;
  v38(v35, v36);
  v38(v33, v36);
  v39 = v73 == v72;
  v85 = 1;
  sub_1D8C2C670(0, 0xF000000000000000);
  LOBYTE(v75) = v71;
  *(&v75 + 1) = v73;
  DWORD1(v75) = *(&v73 + 3);
  *(&v75 + 1) = v70;
  v76 = v31;
  v77 = v32;
  v78 = v39;
  v79 = v86;
  v80 = v87;
  v81 = 0;
  v82 = v85;
  *&v83[3] = *(&v72 + 3);
  *v83 = v72;
  v84 = xmmword_1D8C86390;
  v40 = sub_1D8C84A54();
  v42 = v41;
  v43 = v68;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v73 = *v43;
  v45 = v73;
  v46 = v67;
  v48 = sub_1D8C4668C(v67, v69);
  v49 = *(v45 + 16);
  v50 = (v47 & 1) == 0;
  v51 = v49 + v50;
  if (__OFADD__(v49, v50))
  {
    __break(1u);
    goto LABEL_23;
  }

  v37 = v47;
  if (*(v45 + 24) >= v51)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_17;
    }

LABEL_23:
    sub_1D8C74B2C();
    goto LABEL_17;
  }

  sub_1D8C734B4(v51, isUniquelyReferenced_nonNull_native);
  v52 = sub_1D8C4668C(v46, v69);
  if ((v37 & 1) != (v53 & 1))
  {
    result = sub_1D8C85354();
    __break(1u);
    return result;
  }

  v48 = v52;
LABEL_17:
  v54 = v73;
  *v43 = v73;
  if (v37)
  {
  }

  else
  {
    v55 = MEMORY[0x1E69E7CC0];
    v56 = sub_1D8C2E464(MEMORY[0x1E69E7CC0]);
    sub_1D8C2C670(0, 0xF000000000000000);
    sub_1D8C76354(v48, v46, v69, v56, v55, 0, 0xF000000000000000, v54);
  }

  v57 = v54[7];
  v58 = 32 * v48;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v73 = *(v57 + v58);
  *(v57 + v58) = 0x8000000000000000;
  sub_1D8C7546C(&v75, v40, v42, v59);

  *(v57 + v58) = v73;
  return result;
}

uint64_t sub_1D8C809A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t MessageSchema.makeFlatMessagePayload(from:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  v9[2] = a1;
  v7 = (*(v5 + 96))(sub_1D8C80CD8, v9, ObjectType, v5);
  if (!v2)
  {
    v3 = *(v7 + 32);
    sub_1D8C2C5E4(v3, *(v7 + 40));
  }

  return v3;
}

uint64_t sub_1D8C80AAC@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  ObjectType = swift_getObjectType();
  v9 = *(a2 + 8);
  v23 = *(v9 + 8);
  v10 = v23(ObjectType, v9);
  if (!*(a3 + 16))
  {

    goto LABEL_6;
  }

  v19 = ObjectType;
  v12 = sub_1D8C4668C(v10, v11);
  v14 = v13;

  if ((v14 & 1) == 0)
  {
LABEL_6:
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = -256;
    return result;
  }

  sub_1D8C2F900(*(a3 + 56) + 40 * v12, v21);
  sub_1D8C2AA1C(v21, v22);
  if ((*(a2 + 16))(v19, a2))
  {
    *&v21[0] = 0;
    *(&v21[0] + 1) = 0xE000000000000000;
    sub_1D8C85124();

    *&v21[0] = 0xD00000000000002BLL;
    *(&v21[0] + 1) = 0x80000001D8C8C7D0;
    v16 = v23(v19, v9);
    MEMORY[0x1DA7255C0](v16);

    v17 = v21[0];
    sub_1D8C2F8AC();
    swift_allocError();
    *v18 = v17;
    *(v18 + 16) = 6;
    swift_willThrow();
  }

  else
  {
    (*(a2 + 56))(v21, v19, a2);
    if (!v4)
    {
      v20 = v21[0];
      TypeSchema.makeValue(from:)(v22, a4);
      sub_1D8C2BBF0(v20, *(&v20 + 1));
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t sub_1D8C80CF4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v33 = MEMORY[0x1E69E7CC0];
  sub_1D8C5E0B8(0, v1, 0);
  v2 = v33;
  v4 = a1 + 64;
  result = sub_1D8C850C4();
  v6 = result;
  v7 = 0;
  v8 = *(a1 + 36);
  v28 = v1;
  v29 = v8;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v8 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v31 = v6 >> 6;
    v30 = v7;
    v10 = (*(a1 + 48) + 16 * v6);
    v11 = v10[1];
    v32 = *v10;
    v12 = (*(a1 + 56) + 32 * v6);
    v13 = *v12;
    v14 = v12[1];
    v15 = v12[2];
    v16 = v12[3];
    swift_bridgeObjectRetain_n();

    sub_1D8C2C5D0(v14, v15);

    sub_1D8C2C5D0(v14, v15);

    sub_1D8C2C670(v14, v15);

    sub_1D8C2C5D0(v14, v15);

    sub_1D8C2C670(v14, v15);

    v18 = *(v33 + 16);
    v17 = *(v33 + 24);
    v19 = v18 + 1;
    if (v18 >= v17 >> 1)
    {
      result = sub_1D8C5E0B8((v17 > 1), v18 + 1, 1);
      v19 = v18 + 1;
    }

    *(v33 + 16) = v19;
    v20 = (v33 + 48 * v18);
    v20[4] = v32;
    v20[5] = v11;
    v20[6] = v13;
    v20[7] = v14;
    v20[8] = v15;
    v20[9] = v16;
    v9 = 1 << *(a1 + 32);
    if (v6 >= v9)
    {
      goto LABEL_24;
    }

    v4 = a1 + 64;
    v21 = *(a1 + 64 + 8 * v31);
    if ((v21 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    v8 = v29;
    if (v29 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v22 = v21 & (-2 << (v6 & 0x3F));
    if (v22)
    {
      v9 = __clz(__rbit64(v22)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v23 = v31 << 6;
      v24 = v31 + 1;
      v25 = (a1 + 72 + 8 * v31);
      while (v24 < (v9 + 63) >> 6)
      {
        v27 = *v25++;
        v26 = v27;
        v23 += 64;
        ++v24;
        if (v27)
        {
          result = sub_1D8C32654(v6, v29, 0);
          v9 = __clz(__rbit64(v26)) + v23;
          goto LABEL_4;
        }
      }

      result = sub_1D8C32654(v6, v29, 0);
    }

LABEL_4:
    v7 = v30 + 1;
    v6 = v9;
    if (v30 + 1 == v28)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1D8C81000(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v33 = MEMORY[0x1E69E7CC0];
  sub_1D8C5E0D8(0, v1, 0);
  v2 = v33;
  v4 = a1 + 64;
  result = sub_1D8C850C4();
  v6 = result;
  v7 = 0;
  v8 = *(a1 + 36);
  v28 = v1;
  v29 = v8;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v8 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v31 = v6 >> 6;
    v30 = v7;
    v10 = (*(a1 + 48) + 16 * v6);
    v11 = v10[1];
    v32 = *v10;
    v12 = (*(a1 + 56) + 32 * v6);
    v13 = *v12;
    v14 = v12[1];
    v15 = v12[2];
    v16 = v12[3];
    swift_bridgeObjectRetain_n();

    sub_1D8C2C5D0(v15, v16);

    sub_1D8C2C5D0(v15, v16);

    sub_1D8C2C670(v15, v16);

    sub_1D8C2C5D0(v15, v16);

    result = sub_1D8C2C670(v15, v16);
    v18 = *(v33 + 16);
    v17 = *(v33 + 24);
    v19 = v18 + 1;
    if (v18 >= v17 >> 1)
    {
      result = sub_1D8C5E0D8((v17 > 1), v18 + 1, 1);
      v19 = v18 + 1;
    }

    *(v33 + 16) = v19;
    v20 = (v33 + 48 * v18);
    v20[4] = v32;
    v20[5] = v11;
    v20[6] = v13;
    v20[7] = v14;
    v20[8] = v15;
    v20[9] = v16;
    v9 = 1 << *(a1 + 32);
    if (v6 >= v9)
    {
      goto LABEL_24;
    }

    v4 = a1 + 64;
    v21 = *(a1 + 64 + 8 * v31);
    if ((v21 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    v8 = v29;
    if (v29 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v22 = v21 & (-2 << (v6 & 0x3F));
    if (v22)
    {
      v9 = __clz(__rbit64(v22)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v23 = v31 << 6;
      v24 = v31 + 1;
      v25 = (a1 + 72 + 8 * v31);
      while (v24 < (v9 + 63) >> 6)
      {
        v27 = *v25++;
        v26 = v27;
        v23 += 64;
        ++v24;
        if (v27)
        {
          result = sub_1D8C32654(v6, v29, 0);
          v9 = __clz(__rbit64(v26)) + v23;
          goto LABEL_4;
        }
      }

      result = sub_1D8C32654(v6, v29, 0);
    }

LABEL_4:
    v7 = v30 + 1;
    v6 = v9;
    if (v30 + 1 == v28)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1D8C8130C(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  *&v50 = sub_1D8C80CF4(v2[1]);

  sub_1D8C81A1C(&v50);
  v7 = v3;
  if (v3)
  {
    goto LABEL_17;
  }

  v8 = v50;
  *&v50 = sub_1D8C81000(v6);

  sub_1D8C81AC0(&v50);

  v9 = v50;
  ObjectType = swift_getObjectType();
  v11 = *(a2 + 24);
  v45 = v9;
  v46 = v8;
  v12 = v11(0xD000000000000021, 0x80000001D8C8BE90, ObjectType, a2);
  v14 = v13;
  v15 = a2;
  v16 = MEMORY[0x1DA725490](16, MEMORY[0x1E69E6158], &type metadata for SchematizedDataComposer.Container, MEMORY[0x1E69E6168]);
  *(&v55 + 1) = v14;
  v56 = v16;
  *&v55 = v12;
  v48 = a1;
  v49 = v15;
  v17 = v11(0xD000000000000023, 0x80000001D8C8BEC0, ObjectType, v15);
  v19 = v18;
  v20 = MEMORY[0x1DA725490](16, MEMORY[0x1E69E6158], &type metadata for SchematizedDataComposer.Container, MEMORY[0x1E69E6168]);
  *(&v53 + 1) = v19;
  v54 = v20;
  *&v53 = v17;
  v7 = v46;
  v21 = *(v46 + 16);
  v22 = MEMORY[0x1E69E7CC0];
  if (v21)
  {
    v57 = MEMORY[0x1E69E7CC0];
    sub_1D8C85184();
    v23 = 0;
    v24 = (v46 + 72);
    v44 = v21;
    while (v23 < *(v7 + 16))
    {
      v26 = *(v24 - 5);
      v25 = *(v24 - 4);
      v27 = *(v24 - 2);
      v28 = *(v24 - 1);
      v29 = *v24;
      *&v50 = *(v24 - 3);
      *(&v50 + 1) = v27;
      v51 = v28;
      v52 = v29;

      sub_1D8C2C5D0(v27, v28);

      sub_1D8C314A4(v26, v25, v48, v49);
      ++v23;

      sub_1D8C2C670(v27, v28);

      sub_1D8C85154();
      sub_1D8C85194();
      sub_1D8C851A4();
      sub_1D8C85164();
      v24 += 6;
      v7 = v46;
      if (v44 == v23)
      {

        v30 = v57;
        v22 = MEMORY[0x1E69E7CC0];
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

  v30 = MEMORY[0x1E69E7CC0];
LABEL_8:
  SchematizedDataComposer.subscript.setter(v30, 0x7079745F6D756E65, 0xE900000000000065);
  v7 = *(v45 + 16);
  if (v7)
  {
    v57 = v22;
    sub_1D8C85184();
    v31 = v45;
    v32 = 0;
    v33 = (v45 + 72);
    v47 = v7;
    while (v32 < *(v31 + 16))
    {
      v35 = *(v33 - 5);
      v34 = *(v33 - 4);
      v36 = *(v33 - 2);
      v37 = *(v33 - 1);
      v38 = *v33;
      *&v50 = *(v33 - 3);
      *(&v50 + 1) = v36;
      v51 = v37;
      v52 = v38;

      sub_1D8C2C5D0(v37, v38);
      sub_1D8C46B60(v35, v34, v48, v49);
      ++v32;

      sub_1D8C2C670(v37, v38);
      sub_1D8C85154();
      sub_1D8C85194();
      sub_1D8C851A4();
      sub_1D8C85164();
      v33 += 6;
      v31 = v45;
      v7 = v47;
      if (v47 == v32)
      {

        v39 = v57;
        goto LABEL_14;
      }
    }

LABEL_16:
    __break(1u);
LABEL_17:
    MEMORY[0x1DA725E90](v7);

    __break(1u);
    return result;
  }

  v39 = MEMORY[0x1E69E7CC0];
LABEL_14:
  SchematizedDataComposer.subscript.setter(v39, 0x5F6567617373656DLL, 0xEC00000065707974);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB3D8, &unk_1D8C88920);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D8C88910;
  v50 = v53;
  v51 = v54;
  swift_unknownObjectRetain();

  v42 = SchematizedDataComposer.compose()();

  swift_unknownObjectRelease();
  *(inited + 32) = v42;
  SchematizedDataComposer.subscript.setter(inited, 1701603686, 0xE400000000000000);
  v50 = v55;
  v51 = v56;
  swift_unknownObjectRetain();

  v43 = SchematizedDataComposer.compose()();

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v43;
}

uint64_t sub_1D8C81A1C(void *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D8C7C4CC(v2);
  }

  v3 = v2[2];
  v5[0] = v2 + 4;
  v5[1] = v3;
  result = sub_1D8C81B64(v5, &qword_1ECAAB2C0, &qword_1D8C873A0, sub_1D8C81E70, sub_1D8C81C84);
  *a1 = v2;
  return result;
}

uint64_t sub_1D8C81AC0(void *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D8C7C4E0(v2);
  }

  v3 = v2[2];
  v5[0] = v2 + 4;
  v5[1] = v3;
  result = sub_1D8C81B64(v5, &qword_1ECAAB2B0, &unk_1D8C87C10, sub_1D8C82498, sub_1D8C81D7C);
  *a1 = v2;
  return result;
}

uint64_t sub_1D8C81B64(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v10 = *(a1 + 8);
  result = sub_1D8C85264();
  if (result < v10)
  {
    if (v10 >= -1)
    {
      v12 = result;
      if (v10 <= 1)
      {
        v13 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
        v13 = sub_1D8C84F84();
        *(v13 + 16) = v10 / 2;
      }

      v15[0] = v13 + 32;
      v15[1] = v10 / 2;
      v14 = v13;
      a4(v15, v16, a1, v12);
      *(v14 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v10 < 0)
  {
    goto LABEL_12;
  }

  if (v10)
  {
    return a5(0, v10, 1, a1);
  }

  return result;
}

uint64_t sub_1D8C81C84(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 48 * a3 - 48;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 48 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *v12 && v10 == *(v12 + 8);
      if (v13 || (result = sub_1D8C852A4(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 48;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *(v12 + 48);
      v14 = *(v12 + 88);
      v15 = *(v12 + 72);
      v16 = *(v12 + 56);
      v17 = *(v12 + 16);
      *(v12 + 48) = *v12;
      *(v12 + 64) = v17;
      *(v12 + 80) = *(v12 + 32);
      *(v12 + 8) = v16;
      *(v12 + 40) = v14;
      v10 = v16;
      *v12 = result;
      *(v12 + 24) = v15;
      v12 -= 48;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D8C81D7C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 48 * a3 - 48;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 48 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *v12 && v10 == *(v12 + 8);
      if (v13 || (result = sub_1D8C852A4(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 48;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v14 = *(v12 + 72);
      v15 = *(v12 + 80);
      v16 = *(v12 + 56);
      v17 = *v12;
      v18 = *(v12 + 32);
      *(v12 + 64) = *(v12 + 16);
      *(v12 + 80) = v18;
      result = *(v12 + 48);
      *v12 = result;
      *(v12 + 8) = v16;
      *(v12 + 24) = v14;
      v10 = v16;
      *(v12 + 32) = v15;
      *(v12 + 48) = v17;
      v12 -= 48;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D8C81E70(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3;
  v106 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_105:
    v106 = *v106;
    if (!v106)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_137:
      result = sub_1D8C7C468(v8);
      v8 = result;
    }

    v97 = v8 + 16;
    v98 = *(v8 + 2);
    if (v98 >= 2)
    {
      while (1)
      {
        v99 = *v5;
        if (!*v5)
        {
          goto LABEL_141;
        }

        v100 = &v8[16 * v98];
        v5 = *v100;
        v101 = &v97[2 * v98];
        v102 = v101[1];
        sub_1D8C82AC0((v99 + 48 * *v100), (v99 + 48 * *v101), (v99 + 48 * v102), v106);
        if (v4)
        {
        }

        if (v102 < v5)
        {
          goto LABEL_129;
        }

        if (v98 - 2 >= *v97)
        {
          goto LABEL_130;
        }

        *v100 = v5;
        *(v100 + 1) = v102;
        v103 = *v97 - v98;
        if (*v97 < v98)
        {
          goto LABEL_131;
        }

        v98 = *v97 - 1;
        result = memmove(v101, v101 + 2, 16 * v103);
        *v97 = v98;
        v5 = a3;
        if (v98 <= 1)
        {
        }
      }
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *v5;
      v11 = (*v5 + 48 * v7);
      result = *v11;
      v12 = v11[1];
      v13 = (*v5 + 48 * v9);
      if (result == *v13 && v12 == v13[1])
      {
        v15 = 0;
      }

      else
      {
        result = sub_1D8C852A4();
        v15 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v16 = (v10 + 48 * v9 + 56);
        v17 = v16;
        do
        {
          result = v16[5];
          v19 = v17[6];
          v17 += 6;
          v18 = v19;
          if (result == *(v16 - 1) && v18 == *v16)
          {
            if (v15)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_1D8C852A4();
            if ((v15 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v16 = v17;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v15)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_134;
        }

        if (v9 < v7)
        {
          v21 = 48 * v7 - 24;
          v22 = 48 * v9 + 40;
          v23 = v7;
          v24 = v9;
          do
          {
            if (v24 != --v23)
            {
              v33 = *v5;
              if (!*v5)
              {
                goto LABEL_140;
              }

              v25 = (v33 + v22);
              v26 = *(v33 + v22 - 40);
              v27 = v33 + v21;
              v28 = *v25;
              v30 = *(v25 - 2);
              v29 = *(v25 - 1);
              v31 = *(v27 + 8);
              v32 = *(v27 - 8);
              *(v25 - 5) = *(v27 - 24);
              *(v25 - 3) = v32;
              *(v25 - 1) = v31;
              *(v27 - 24) = v26;
              *(v27 - 16) = v30;
              *v27 = v29;
              *(v27 + 16) = v28;
            }

            ++v24;
            v21 -= 48;
            v22 += 48;
          }

          while (v24 < v23);
        }
      }
    }

    v34 = v5[1];
    if (v7 < v34)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_133;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_135;
        }

        if (v9 + a4 >= v34)
        {
          v35 = v5[1];
        }

        else
        {
          v35 = v9 + a4;
        }

        if (v35 < v9)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (v7 != v35)
        {
          break;
        }
      }
    }

LABEL_54:
    if (v7 < v9)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D8C4A268(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v51 = *(v8 + 2);
    v50 = *(v8 + 3);
    v52 = v51 + 1;
    if (v51 >= v50 >> 1)
    {
      result = sub_1D8C4A268((v50 > 1), v51 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v52;
    v53 = &v8[16 * v51];
    *(v53 + 4) = v9;
    *(v53 + 5) = v7;
    v54 = *v106;
    if (!*v106)
    {
      goto LABEL_142;
    }

    if (v51)
    {
      while (1)
      {
        v55 = v52 - 1;
        if (v52 >= 4)
        {
          break;
        }

        if (v52 == 3)
        {
          v56 = *(v8 + 4);
          v57 = *(v8 + 5);
          v66 = __OFSUB__(v57, v56);
          v58 = v57 - v56;
          v59 = v66;
LABEL_74:
          if (v59)
          {
            goto LABEL_120;
          }

          v72 = &v8[16 * v52];
          v74 = *v72;
          v73 = *(v72 + 1);
          v75 = __OFSUB__(v73, v74);
          v76 = v73 - v74;
          v77 = v75;
          if (v75)
          {
            goto LABEL_123;
          }

          v78 = &v8[16 * v55 + 32];
          v80 = *v78;
          v79 = *(v78 + 1);
          v66 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v66)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v76, v81))
          {
            goto LABEL_127;
          }

          if (v76 + v81 >= v58)
          {
            if (v58 < v81)
            {
              v55 = v52 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v82 = &v8[16 * v52];
        v84 = *v82;
        v83 = *(v82 + 1);
        v66 = __OFSUB__(v83, v84);
        v76 = v83 - v84;
        v77 = v66;
LABEL_88:
        if (v77)
        {
          goto LABEL_122;
        }

        v85 = &v8[16 * v55];
        v87 = *(v85 + 4);
        v86 = *(v85 + 5);
        v66 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v66)
        {
          goto LABEL_125;
        }

        if (v88 < v76)
        {
          goto LABEL_3;
        }

LABEL_95:
        v93 = v55 - 1;
        if (v55 - 1 >= v52)
        {
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (!*v5)
        {
          goto LABEL_139;
        }

        v94 = *&v8[16 * v93 + 32];
        v95 = *&v8[16 * v55 + 40];
        sub_1D8C82AC0((*v5 + 48 * v94), (*v5 + 48 * *&v8[16 * v55 + 32]), (*v5 + 48 * v95), v54);
        if (v4)
        {
        }

        if (v95 < v94)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1D8C7C468(v8);
        }

        if (v93 >= *(v8 + 2))
        {
          goto LABEL_117;
        }

        v96 = &v8[16 * v93];
        *(v96 + 4) = v94;
        *(v96 + 5) = v95;
        result = sub_1D8C7C3DC(v55);
        v52 = *(v8 + 2);
        if (v52 <= 1)
        {
          goto LABEL_3;
        }
      }

      v60 = &v8[16 * v52 + 32];
      v61 = *(v60 - 64);
      v62 = *(v60 - 56);
      v66 = __OFSUB__(v62, v61);
      v63 = v62 - v61;
      if (v66)
      {
        goto LABEL_118;
      }

      v65 = *(v60 - 48);
      v64 = *(v60 - 40);
      v66 = __OFSUB__(v64, v65);
      v58 = v64 - v65;
      v59 = v66;
      if (v66)
      {
        goto LABEL_119;
      }

      v67 = &v8[16 * v52];
      v69 = *v67;
      v68 = *(v67 + 1);
      v66 = __OFSUB__(v68, v69);
      v70 = v68 - v69;
      if (v66)
      {
        goto LABEL_121;
      }

      v66 = __OFADD__(v58, v70);
      v71 = v58 + v70;
      if (v66)
      {
        goto LABEL_124;
      }

      if (v71 >= v63)
      {
        v89 = &v8[16 * v55 + 32];
        v91 = *v89;
        v90 = *(v89 + 1);
        v66 = __OFSUB__(v90, v91);
        v92 = v90 - v91;
        if (v66)
        {
          goto LABEL_128;
        }

        if (v58 < v92)
        {
          v55 = v52 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v6 = v5[1];
    if (v7 >= v6)
    {
      goto LABEL_105;
    }
  }

  v36 = *v5;
  v37 = *v5 + 48 * v7 - 48;
  v104 = v9;
  v38 = v9 - v7;
LABEL_43:
  v39 = (v36 + 48 * v7);
  v40 = *v39;
  v41 = v39[1];
  v42 = v38;
  v43 = v37;
  while (1)
  {
    v44 = v40 == *v43 && v41 == *(v43 + 8);
    if (v44 || (result = sub_1D8C852A4(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v37 += 48;
      --v38;
      if (v7 != v35)
      {
        goto LABEL_43;
      }

      v7 = v35;
      v5 = a3;
      v9 = v104;
      goto LABEL_54;
    }

    if (!v36)
    {
      break;
    }

    v40 = *(v43 + 48);
    v45 = *(v43 + 88);
    v46 = *(v43 + 72);
    v47 = *(v43 + 56);
    v48 = *(v43 + 16);
    *(v43 + 48) = *v43;
    *(v43 + 64) = v48;
    *(v43 + 80) = *(v43 + 32);
    *(v43 + 8) = v47;
    *(v43 + 40) = v45;
    v41 = v47;
    *v43 = v40;
    *(v43 + 24) = v46;
    v43 -= 48;
    if (__CFADD__(v42++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
  return result;
}

uint64_t sub_1D8C82498(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3;
  v107 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_105:
    v107 = *v107;
    if (!v107)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_137:
      result = sub_1D8C7C468(v8);
      v8 = result;
    }

    v98 = v8 + 16;
    v99 = *(v8 + 2);
    if (v99 >= 2)
    {
      while (1)
      {
        v100 = *v5;
        if (!*v5)
        {
          goto LABEL_141;
        }

        v101 = &v8[16 * v99];
        v5 = *v101;
        v102 = &v98[2 * v99];
        v103 = v102[1];
        sub_1D8C82AC0((v100 + 48 * *v101), (v100 + 48 * *v102), (v100 + 48 * v103), v107);
        if (v4)
        {
        }

        if (v103 < v5)
        {
          goto LABEL_129;
        }

        if (v99 - 2 >= *v98)
        {
          goto LABEL_130;
        }

        *v101 = v5;
        *(v101 + 1) = v103;
        v104 = *v98 - v99;
        if (*v98 < v99)
        {
          goto LABEL_131;
        }

        v99 = *v98 - 1;
        result = memmove(v102, v102 + 2, 16 * v104);
        *v98 = v99;
        v5 = a3;
        if (v99 <= 1)
        {
        }
      }
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *v5;
      v11 = (*v5 + 48 * v7);
      result = *v11;
      v12 = v11[1];
      v13 = (*v5 + 48 * v9);
      if (result == *v13 && v12 == v13[1])
      {
        v15 = 0;
      }

      else
      {
        result = sub_1D8C852A4();
        v15 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v16 = (v10 + 48 * v9 + 56);
        v17 = v16;
        do
        {
          result = v16[5];
          v19 = v17[6];
          v17 += 6;
          v18 = v19;
          if (result == *(v16 - 1) && v18 == *v16)
          {
            if (v15)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_1D8C852A4();
            if ((v15 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v16 = v17;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v15)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_134;
        }

        if (v9 < v7)
        {
          v21 = 48 * v7 - 24;
          v22 = 48 * v9 + 32;
          v23 = v7;
          v24 = v9;
          do
          {
            if (v24 != --v23)
            {
              v33 = *v5;
              if (!*v5)
              {
                goto LABEL_140;
              }

              v25 = (v33 + v22);
              v26 = *(v33 + v22 - 32);
              v27 = v33 + v21;
              v28 = *(v25 - 1);
              v29 = *v25;
              v30 = *(v25 - 24);
              v31 = *(v27 + 8);
              v32 = *(v27 - 8);
              *(v25 - 2) = *(v27 - 24);
              *(v25 - 1) = v32;
              *v25 = v31;
              *(v27 - 24) = v26;
              *(v27 - 16) = v30;
              *v27 = v28;
              *(v27 + 8) = v29;
            }

            ++v24;
            v21 -= 48;
            v22 += 48;
          }

          while (v24 < v23);
        }
      }
    }

    v34 = v5[1];
    if (v7 < v34)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_133;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_135;
        }

        if (v9 + a4 >= v34)
        {
          v35 = v5[1];
        }

        else
        {
          v35 = v9 + a4;
        }

        if (v35 < v9)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (v7 != v35)
        {
          break;
        }
      }
    }

LABEL_54:
    if (v7 < v9)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D8C4A268(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v52 = *(v8 + 2);
    v51 = *(v8 + 3);
    v53 = v52 + 1;
    if (v52 >= v51 >> 1)
    {
      result = sub_1D8C4A268((v51 > 1), v52 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v53;
    v54 = &v8[16 * v52];
    *(v54 + 4) = v9;
    *(v54 + 5) = v7;
    v55 = *v107;
    if (!*v107)
    {
      goto LABEL_142;
    }

    if (v52)
    {
      while (1)
      {
        v56 = v53 - 1;
        if (v53 >= 4)
        {
          break;
        }

        if (v53 == 3)
        {
          v57 = *(v8 + 4);
          v58 = *(v8 + 5);
          v67 = __OFSUB__(v58, v57);
          v59 = v58 - v57;
          v60 = v67;
LABEL_74:
          if (v60)
          {
            goto LABEL_120;
          }

          v73 = &v8[16 * v53];
          v75 = *v73;
          v74 = *(v73 + 1);
          v76 = __OFSUB__(v74, v75);
          v77 = v74 - v75;
          v78 = v76;
          if (v76)
          {
            goto LABEL_123;
          }

          v79 = &v8[16 * v56 + 32];
          v81 = *v79;
          v80 = *(v79 + 1);
          v67 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v67)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v77, v82))
          {
            goto LABEL_127;
          }

          if (v77 + v82 >= v59)
          {
            if (v59 < v82)
            {
              v56 = v53 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v83 = &v8[16 * v53];
        v85 = *v83;
        v84 = *(v83 + 1);
        v67 = __OFSUB__(v84, v85);
        v77 = v84 - v85;
        v78 = v67;
LABEL_88:
        if (v78)
        {
          goto LABEL_122;
        }

        v86 = &v8[16 * v56];
        v88 = *(v86 + 4);
        v87 = *(v86 + 5);
        v67 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v67)
        {
          goto LABEL_125;
        }

        if (v89 < v77)
        {
          goto LABEL_3;
        }

LABEL_95:
        v94 = v56 - 1;
        if (v56 - 1 >= v53)
        {
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (!*v5)
        {
          goto LABEL_139;
        }

        v95 = *&v8[16 * v94 + 32];
        v96 = *&v8[16 * v56 + 40];
        sub_1D8C82AC0((*v5 + 48 * v95), (*v5 + 48 * *&v8[16 * v56 + 32]), (*v5 + 48 * v96), v55);
        if (v4)
        {
        }

        if (v96 < v95)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1D8C7C468(v8);
        }

        if (v94 >= *(v8 + 2))
        {
          goto LABEL_117;
        }

        v97 = &v8[16 * v94];
        *(v97 + 4) = v95;
        *(v97 + 5) = v96;
        result = sub_1D8C7C3DC(v56);
        v53 = *(v8 + 2);
        if (v53 <= 1)
        {
          goto LABEL_3;
        }
      }

      v61 = &v8[16 * v53 + 32];
      v62 = *(v61 - 64);
      v63 = *(v61 - 56);
      v67 = __OFSUB__(v63, v62);
      v64 = v63 - v62;
      if (v67)
      {
        goto LABEL_118;
      }

      v66 = *(v61 - 48);
      v65 = *(v61 - 40);
      v67 = __OFSUB__(v65, v66);
      v59 = v65 - v66;
      v60 = v67;
      if (v67)
      {
        goto LABEL_119;
      }

      v68 = &v8[16 * v53];
      v70 = *v68;
      v69 = *(v68 + 1);
      v67 = __OFSUB__(v69, v70);
      v71 = v69 - v70;
      if (v67)
      {
        goto LABEL_121;
      }

      v67 = __OFADD__(v59, v71);
      v72 = v59 + v71;
      if (v67)
      {
        goto LABEL_124;
      }

      if (v72 >= v64)
      {
        v90 = &v8[16 * v56 + 32];
        v92 = *v90;
        v91 = *(v90 + 1);
        v67 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v67)
        {
          goto LABEL_128;
        }

        if (v59 < v93)
        {
          v56 = v53 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v6 = v5[1];
    if (v7 >= v6)
    {
      goto LABEL_105;
    }
  }

  v36 = *v5;
  v37 = *v5 + 48 * v7 - 48;
  v105 = v9;
  v38 = v9 - v7;
LABEL_43:
  v39 = (v36 + 48 * v7);
  v40 = *v39;
  v41 = v39[1];
  v42 = v38;
  v43 = v37;
  while (1)
  {
    v44 = v40 == *v43 && v41 == *(v43 + 8);
    if (v44 || (result = sub_1D8C852A4(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v37 += 48;
      --v38;
      if (v7 != v35)
      {
        goto LABEL_43;
      }

      v7 = v35;
      v5 = a3;
      v9 = v105;
      goto LABEL_54;
    }

    if (!v36)
    {
      break;
    }

    v45 = *(v43 + 72);
    v46 = *(v43 + 80);
    v47 = *(v43 + 56);
    v48 = *v43;
    v49 = *(v43 + 32);
    *(v43 + 64) = *(v43 + 16);
    *(v43 + 80) = v49;
    v40 = *(v43 + 48);
    *v43 = v40;
    *(v43 + 8) = v47;
    *(v43 + 24) = v45;
    v41 = v47;
    *(v43 + 32) = v46;
    *(v43 + 48) = v48;
    v43 -= 48;
    if (__CFADD__(v42++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
  return result;
}

uint64_t sub_1D8C82AC0(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 48;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 48;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[48 * v9] <= a4)
    {
      memmove(a4, __dst, 48 * v9);
    }

    v12 = &v4[48 * v9];
    if (v8 < 48)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_39;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_1D8C852A4() & 1) != 0)
      {
        break;
      }

      v13 = v4;
      v16 = v7 == v4;
      v4 += 48;
      if (!v16)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 48;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v16 = v7 == v6;
    v6 += 48;
    if (v16)
    {
      goto LABEL_9;
    }

LABEL_8:
    v14 = *v13;
    v15 = *(v13 + 2);
    *(v7 + 1) = *(v13 + 1);
    *(v7 + 2) = v15;
    *v7 = v14;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[48 * v11] <= a4)
  {
    memmove(a4, __src, 48 * v11);
  }

  v12 = &v4[48 * v11];
  if (v10 >= 48 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 48;
    v5 -= 48;
    v18 = v12;
    do
    {
      v19 = *(v18 - 6);
      v20 = *(v18 - 5);
      v18 -= 48;
      v21 = v19 == *(v6 - 6) && v20 == *(v6 - 5);
      if (!v21 && (sub_1D8C852A4() & 1) != 0)
      {
        if (v5 + 48 != v6)
        {
          v24 = *v17;
          v25 = *(v6 - 1);
          *(v5 + 1) = *(v6 - 2);
          *(v5 + 2) = v25;
          *v5 = v24;
        }

        if (v12 <= v4 || (v6 -= 48, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_39;
        }

        goto LABEL_24;
      }

      if (v5 + 48 != v12)
      {
        v22 = *v18;
        v23 = *(v18 + 2);
        *(v5 + 1) = *(v18 + 1);
        *(v5 + 2) = v23;
        *v5 = v22;
      }

      v5 -= 48;
      v12 = v18;
    }

    while (v18 > v4);
    v12 = v18;
  }

LABEL_39:
  v26 = (v12 - v4) / 48;
  if (v6 != v4 || v6 >= &v4[48 * v26])
  {
    memmove(v6, v4, 48 * v26);
  }

  return 1;
}

uint64_t sub_1D8C82D20@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  switch(*a1)
  {
    case 1:
      swift_unknownObjectRelease();

      v10 = 0x8000000000000000;
      v11 = 11;
      goto LABEL_23;
    case 2:
      swift_unknownObjectRelease();

      v10 = 0x8000000000000000;
      v11 = 5;
      goto LABEL_23;
    case 3:
      swift_unknownObjectRelease();

      v10 = 0x8000000000000000;
      v11 = 6;
      goto LABEL_23;
    case 4:
      swift_unknownObjectRelease();

      v11 = 0;
      v10 = 0x8000000000000000;
      goto LABEL_23;
    case 5:
      swift_unknownObjectRelease();

      v10 = 0x8000000000000000;
      v11 = 8;
      goto LABEL_23;
    case 6:
      swift_unknownObjectRelease();

      v10 = 0x8000000000000000;
      v11 = 3;
      goto LABEL_23;
    case 7:
      swift_unknownObjectRelease();

      v10 = 0x8000000000000000;
      v11 = 12;
      goto LABEL_23;
    case 8:
      swift_unknownObjectRelease();

      v10 = 0x8000000000000000;
      v11 = 13;
      goto LABEL_23;
    case 9:
      if (!a3)
      {
        sub_1D8C2F8AC();
        swift_allocError();
        v22 = xmmword_1D8C88360;
        goto LABEL_26;
      }

      ObjectType = swift_getObjectType();
      (*(a5 + 24))(a2, a3, ObjectType, a5);
      if (v6)
      {
        goto LABEL_12;
      }

      v23 = v20;
      swift_unknownObjectRelease();

      swift_getObjectType();
      MessageSchemaDescribing.asPublic()(v23, &v24);
      result = swift_unknownObjectRelease();
      v11 = v24;
      v10 = v25 | 0x4000000000000000;
      goto LABEL_23;
    case 0xA:
      swift_unknownObjectRelease();

      v10 = 0x8000000000000000;
      v11 = 14;
      goto LABEL_23;
    case 0xB:
      swift_unknownObjectRelease();

      v10 = 0x8000000000000000;
      v11 = 1;
      goto LABEL_23;
    case 0xC:
      if (!a3)
      {
        sub_1D8C2F8AC();
        swift_allocError();
        v22 = xmmword_1D8C88930;
LABEL_26:
        *v21 = v22;
        *(v21 + 16) = 8;
        swift_willThrow();
        return swift_unknownObjectRelease();
      }

      v14 = swift_getObjectType();
      (*(a5 + 32))(a2, a3, v14, a5);
      if (v6)
      {
LABEL_12:

        return swift_unknownObjectRelease();
      }

      v16 = v15;
      swift_unknownObjectRelease();

      swift_getObjectType();
      EnumSchemaDescribing.asPublic()(v16, &v24);
      result = swift_unknownObjectRelease();
      v11 = v24;
      v10 = v25;
LABEL_23:
      *a6 = v11;
      a6[1] = v10;
      return result;
    case 0xD:
      swift_unknownObjectRelease();

      v10 = 0x8000000000000000;
      v11 = 4;
      goto LABEL_23;
    case 0xE:
      swift_unknownObjectRelease();

      v10 = 0x8000000000000000;
      v11 = 9;
      goto LABEL_23;
    case 0xF:
      swift_unknownObjectRelease();

      v10 = 0x8000000000000000;
      v11 = 2;
      goto LABEL_23;
    case 0x10:
      swift_unknownObjectRelease();

      v10 = 0x8000000000000000;
      v11 = 7;
      goto LABEL_23;
    default:
      swift_unknownObjectRelease();

      v10 = 0x8000000000000000;
      v11 = 10;
      goto LABEL_23;
  }
}

uint64_t TypeSchema.description.getter()
{
  v1 = v0[1];
  if (!(v1 >> 62))
  {
    sub_1D8C85124();
    ObjectType = swift_getObjectType();
    v7 = *(v1 + 8);
    v8 = *(v7 + 8);
    v9 = v8(ObjectType, v7);

    v12 = v9;
    MEMORY[0x1DA7255C0](0xD000000000000021, 0x80000001D8C8C820);
    v10 = v8(ObjectType, v7);
    MEMORY[0x1DA7255C0](v10);

    v4 = 41;
    v5 = 0xE100000000000000;
    goto LABEL_5;
  }

  if (v1 >> 62 == 1)
  {
    sub_1D8C85124();

    v12 = 0x206567617373656DLL;
    v2 = swift_getObjectType();
    v3 = (*(*((v1 & 0x3FFFFFFFFFFFFFFFLL) + 8) + 8))(v2);
    MEMORY[0x1DA7255C0](v3);

    v4 = 0x616D6568637320;
    v5 = 0xE700000000000000;
LABEL_5:
    MEMORY[0x1DA7255C0](v4, v5);
    return v12;
  }

  result = 0x6E61656C6F6F62;
  switch(*v0)
  {
    case 1:
    case 6:
      result = 0xD000000000000013;
      break;
    case 2:
    case 7:
      result = 0xD000000000000020;
      break;
    case 3:
    case 8:
      result = 0xD000000000000019;
      break;
    case 4:
    case 9:
      result = 0xD000000000000017;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 0xALL:
      result = 0xD000000000000015;
      break;
    case 0xBLL:
      result = 0x676E6974616F6C66;
      break;
    case 0xCLL:
      return result;
    case 0xDLL:
      result = 0x7274732074786574;
      break;
    case 0xELL:
      result = 0x64207972616E6962;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t _s17PoirotSchematizer10TypeSchemaO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  if (!(v2 >> 62))
  {
    if (!(v4 >> 62))
    {
      ObjectType = swift_getObjectType();
      v15 = *(v2 + 8);
      v16 = *(v15 + 8);
      sub_1D8C2B50C(v5, v4);
      sub_1D8C2B50C(v3, v2);
      v9 = v16(ObjectType, v15);
      v11 = v17;
      v12 = swift_getObjectType();
      v13 = *(v4 + 8);
      goto LABEL_7;
    }

LABEL_148:
    sub_1D8C2B50C(*a2, a2[1]);
    sub_1D8C2B50C(v3, v2);
    sub_1D8C2BBF0(v3, v2);
    sub_1D8C2BBF0(v5, v4);
    v20 = 0;
    return v20 & 1;
  }

  if (v2 >> 62 == 1)
  {
    if (v4 >> 62 == 1)
    {
      v6 = swift_getObjectType();
      v7 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 8);
      v8 = *(v7 + 8);
      sub_1D8C2B50C(v5, v4);
      sub_1D8C2B50C(v3, v2);
      v9 = v8(v6, v7);
      v11 = v10;
      v12 = swift_getObjectType();
      v13 = *((v4 & 0x3FFFFFFFFFFFFFFFLL) + 8);
LABEL_7:
      if (v9 == (*(v13 + 8))(v12) && v11 == v18)
      {
        v20 = 1;
      }

      else
      {
        v20 = sub_1D8C852A4();
      }

      sub_1D8C2BBF0(v3, v2);
      sub_1D8C2BBF0(v5, v4);

      return v20 & 1;
    }

    goto LABEL_148;
  }

  switch(v3)
  {
    case 1:
      if (v4 >> 62 != 2 || v5 != 1 || v4 != 0x8000000000000000)
      {
        goto LABEL_148;
      }

      sub_1D8C2BBF0(*a1, v2);
      v20 = 1;
      sub_1D8C2BBF0(1, 0x8000000000000000);
      return v20 & 1;
    case 2:
      if (v4 >> 62 != 2 || v5 != 2 || v4 != 0x8000000000000000)
      {
        goto LABEL_148;
      }

      sub_1D8C2BBF0(*a1, v2);
      v23 = 2;
      goto LABEL_151;
    case 3:
      if (v4 >> 62 != 2 || v5 != 3 || v4 != 0x8000000000000000)
      {
        goto LABEL_148;
      }

      sub_1D8C2BBF0(*a1, v2);
      v23 = 3;
      goto LABEL_151;
    case 4:
      if (v4 >> 62 != 2 || v5 != 4 || v4 != 0x8000000000000000)
      {
        goto LABEL_148;
      }

      sub_1D8C2BBF0(*a1, v2);
      v23 = 4;
      goto LABEL_151;
    case 5:
      if (v4 >> 62 != 2 || v5 != 5 || v4 != 0x8000000000000000)
      {
        goto LABEL_148;
      }

      sub_1D8C2BBF0(*a1, v2);
      v23 = 5;
      goto LABEL_151;
    case 6:
      if (v4 >> 62 != 2 || v5 != 6 || v4 != 0x8000000000000000)
      {
        goto LABEL_148;
      }

      sub_1D8C2BBF0(*a1, v2);
      v23 = 6;
      goto LABEL_151;
    case 7:
      if (v4 >> 62 != 2 || v5 != 7 || v4 != 0x8000000000000000)
      {
        goto LABEL_148;
      }

      sub_1D8C2BBF0(*a1, v2);
      v23 = 7;
      goto LABEL_151;
    case 8:
      if (v4 >> 62 != 2 || v5 != 8 || v4 != 0x8000000000000000)
      {
        goto LABEL_148;
      }

      sub_1D8C2BBF0(*a1, v2);
      v23 = 8;
      goto LABEL_151;
    case 9:
      if (v4 >> 62 != 2 || v5 != 9 || v4 != 0x8000000000000000)
      {
        goto LABEL_148;
      }

      sub_1D8C2BBF0(*a1, v2);
      v23 = 9;
      goto LABEL_151;
    case 10:
      if (v4 >> 62 != 2 || v5 != 10 || v4 != 0x8000000000000000)
      {
        goto LABEL_148;
      }

      sub_1D8C2BBF0(*a1, v2);
      v23 = 10;
      goto LABEL_151;
    case 11:
      if (v4 >> 62 != 2 || v5 != 11 || v4 != 0x8000000000000000)
      {
        goto LABEL_148;
      }

      sub_1D8C2BBF0(*a1, v2);
      v23 = 11;
      goto LABEL_151;
    case 12:
      if (v4 >> 62 != 2 || v5 != 12 || v4 != 0x8000000000000000)
      {
        goto LABEL_148;
      }

      sub_1D8C2BBF0(*a1, v2);
      v23 = 12;
      goto LABEL_151;
    case 13:
      if (v4 >> 62 != 2 || v5 != 13 || v4 != 0x8000000000000000)
      {
        goto LABEL_148;
      }

      sub_1D8C2BBF0(*a1, v2);
      v23 = 13;
      goto LABEL_151;
    case 14:
      if (v4 >> 62 != 2 || v5 != 14 || v4 != 0x8000000000000000)
      {
        goto LABEL_148;
      }

      sub_1D8C2BBF0(*a1, v2);
      v23 = 14;
      goto LABEL_151;
    default:
      if (v4 >> 62 != 2 || v5 != 0 || v4 != 0x8000000000000000)
      {
        goto LABEL_148;
      }

      sub_1D8C2BBF0(*a1, v2);
      v23 = 0;
LABEL_151:
      sub_1D8C2BBF0(v23, 0x8000000000000000);
      v20 = 1;
      break;
  }

  return v20 & 1;
}

uint64_t sub_1D8C838B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 16))
  {
    return (*a1 + 126);
  }

  v3 = (((*(a1 + 8) >> 57) >> 5) | (4 * ((*(a1 + 8) >> 57) & 0x18 | *(a1 + 8) & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D8C8390C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    *(result + 8) = 0;
    if (a3 >= 0x7E)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = 0;
      *(result + 8) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t UnsafeRawBufferPointer.safeData()(uint64_t a1, uint64_t a2)
{
  v8[3] = MEMORY[0x1E69E6290];
  v8[4] = MEMORY[0x1E6969DF8];
  v8[0] = a1;
  v8[1] = a2;
  v2 = __swift_project_boxed_opaque_existential_1(v8, MEMORY[0x1E69E6290]);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_1D8C45074(v3, v4);
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = sub_1D8C45134(v3, v4);
    }

    else
    {
      v6 = sub_1D8C2B5D0(v3, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v8);
  return v6;
}

uint64_t sub_1D8C83A38(uint64_t a1, unint64_t a2, void (*a3)(_BYTE *), uint64_t a4)
{

  if ((a2 & 0x1000000000000000) != 0)
  {
    a1 = sub_1D8C7ABF8(a1, a2);
    v10 = v9;

    a2 = v10;
    if ((v10 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    v14[0] = a1;
    v14[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    v13[3] = MEMORY[0x1E69E6290];
    v13[4] = &protocol witness table for UnsafeRawBufferPointer;
    v13[0] = v14;
    v13[1] = v14 + (HIBYTE(a2) & 0xF);
    sub_1D8C2F900(v13, v12);
    v12[40] = 8;
    a3(v12);
    sub_1D8C2AB08(v12);
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((a1 & 0x1000000000000000) != 0)
  {
    v7 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = sub_1D8C85144();
  }

  sub_1D8C84000(v7, v8, a3);
}

uint64_t String.asUnsafe<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  sub_1D8C840A0(sub_1D8C843A0);
}

Swift::String __swiftcall UnsafeRawBufferPointer.safeString()()
{
  v0 = sub_1D8C84E14();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t sub_1D8C83C48()
{
  if (*v0)
  {
    return v0[1] - *v0;
  }

  else
  {
    return 0;
  }
}

Swift::String __swiftcall Data.safeString()()
{
  v2 = v1 >> 62;
  if ((v1 >> 62) > 1)
  {
    if (v2 != 2 || !__OFSUB__(*(v0 + 24), *(v0 + 16)))
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  else if (!v2)
  {
    goto LABEL_9;
  }

  if (__OFSUB__(HIDWORD(v0), v0))
  {
    __break(1u);
    goto LABEL_11;
  }

LABEL_9:
  (MEMORY[0x1EEE9AC00])();
  v0 = sub_1D8C84E14();
LABEL_11:
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t sub_1D8C83D64(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = sub_1D8C84754();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8C84704();
  result = (*(v7 + 8))(v10, v6);
  v12 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v12)
    {
      return BYTE6(a4);
    }

    goto LABEL_8;
  }

  result = 0;
  if (v12 == 2)
  {
    v14 = *(a3 + 16);
    v13 = *(a3 + 24);
    result = v13 - v14;
    if (__OFSUB__(v13, v14))
    {
      __break(1u);
LABEL_8:
      if (__OFSUB__(HIDWORD(a3), a3))
      {
        __break(1u);
      }

      else
      {
        return HIDWORD(a3) - a3;
      }
    }
  }

  return result;
}

uint64_t sub_1D8C83EA4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v2 >> 62;
  if ((v2 >> 62) <= 1)
  {
    if (!v3)
    {
      return BYTE6(v2);
    }

    v8 = __OFSUB__(HIDWORD(v1), v1);
    v9 = HIDWORD(v1) - v1;
    if (!v8)
    {
      return v9;
    }

    goto LABEL_11;
  }

  if (v3 != 2)
  {
    return 0;
  }

  v7 = v1 + 16;
  v5 = *(v1 + 16);
  v6 = *(v7 + 8);
  result = v6 - v5;
  if (__OFSUB__(v6, v5))
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  return result;
}

uint64_t sub_1D8C83EFC()
{
  v1 = *v0;
  sub_1D8C2C5E4(*v0, *(v0 + 8));
  return v1;
}

void sub_1D8C83F30(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = v2[1];
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    v6 = 0;
    if (v5 != 2)
    {
      goto LABEL_10;
    }

    v8 = *(v3 + 16);
    v7 = *(v3 + 24);
    v6 = v7 - v8;
    if (!__OFSUB__(v7, v8))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v5)
  {
    v6 = BYTE6(v4);
LABEL_10:
    MEMORY[0x1EEE9AC00](v6, a2);
    sub_1D8C84E14();
    return;
  }

  if (!__OFSUB__(HIDWORD(v3), v3))
  {
    v6 = HIDWORD(v3) - v3;
    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_1D8C84000(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  v4 = a2 + a1;
  v7[3] = MEMORY[0x1E69E6290];
  v7[4] = &protocol witness table for UnsafeRawBufferPointer;
  if (!a1)
  {
    v4 = 0;
  }

  v7[0] = a1;
  v7[1] = v4;
  sub_1D8C2F900(v7, v6);
  v6[40] = 8;
  a3(v6);
  sub_1D8C2AB08(v6);
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t sub_1D8C840A0(uint64_t (*a1)(void *, uint64_t))
{
  v3 = *v1;
  v4 = *(v1 + 8);
  if ((v4 & 0x1000000000000000) != 0)
  {
    v8 = sub_1D8C7ABF8(v3, *(v1 + 8));
    v10 = v9;

    v3 = v8;
    *v1 = v8;
    *(v1 + 8) = v10;
    v4 = v10;
    if ((v10 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    v6 = HIBYTE(v4) & 0xF;
    v12[0] = v3;
    v12[1] = v4 & 0xFFFFFFFFFFFFFFLL;
    v7 = v12;
    return a1(v7, v6);
  }

  if ((v4 & 0x2000000000000000) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((v3 & 0x1000000000000000) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = sub_1D8C85144();
  }

  v7 = v5;
  return a1(v7, v6);
}

uint64_t SQLiteContext.setString(_:)(uint64_t a1)
{
  sub_1D8C84424(a1, &v5);
  if (v6)
  {
    sub_1D8C2AA1C(&v5, v7);
    v1 = v7[4];
    v2 = __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    MEMORY[0x1EEE9AC00](v2, v3);
    (*(v1 + 32))(sub_1D8C844FC);
    return __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    sub_1D8C84494(&v5);
    return sub_1D8C847B4();
  }
}

void sub_1D8C84268(const char *a1, uint64_t a2)
{
  v4 = sub_1D8C84784();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D8C84764();
  if (a1)
  {
    v10 = a2 - a1;
  }

  else
  {
    v10 = 0;
  }

  if (v10 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v10 <= 0x7FFFFFFF)
  {
    v11 = v9;
    sub_1D8C84774();
    v12 = sub_1D8C84764();
    (*(v5 + 8))(v8, v4);
    sqlite3_result_text(v11, a1, v10, v12);
    return;
  }

  __break(1u);
}

uint64_t sub_1D8C843A0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  v4 = a2 + a1;
  v6[3] = MEMORY[0x1E69E6290];
  v6[4] = &protocol witness table for UnsafeRawBufferPointer;
  if (!a1)
  {
    v4 = 0;
  }

  v6[0] = a1;
  v6[1] = v4;
  v3(v6);
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t sub_1D8C84424(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAB3E0, &qword_1D8C88A70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8C84494(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAB3E0, &qword_1D8C88A70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}