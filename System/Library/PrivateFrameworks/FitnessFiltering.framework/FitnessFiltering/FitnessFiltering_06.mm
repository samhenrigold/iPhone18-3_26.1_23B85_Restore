void sub_24B5EFB40(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v27 = v8;
  v9 = *(v8 + 84);
  v10 = *(sub_24B5FEE1C() - 8);
  v11 = *(v10 + 84);
  v12 = *(v10 + 80);
  if (v11 <= v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = *(v10 + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  v14 = *(v8 + 64) + v12;
  v15 = *(v10 + 64) + 7;
  v16 = ((((v15 + (v14 & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v13 >= a3)
  {
    v19 = 0;
    v20 = a2 - v13;
    if (a2 <= v13)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (((((v15 + (v14 & ~v12)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v17 = a3 - v13 + 1;
    }

    else
    {
      v17 = 2;
    }

    if (v17 >= 0x10000)
    {
      v18 = 4;
    }

    else
    {
      v18 = 2;
    }

    if (v17 < 0x100)
    {
      v18 = 1;
    }

    if (v17 >= 2)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = a2 - v13;
    if (a2 <= v13)
    {
LABEL_19:
      if (v19 > 1)
      {
        if (v19 != 2)
        {
          *(a1 + v16) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_35;
        }

        *(a1 + v16) = 0;
      }

      else if (v19)
      {
        *(a1 + v16) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return;
      }

LABEL_35:
      if (v9 == v13)
      {
        v23 = *(v27 + 56);

        v23(a1, a2, v9, v7);
      }

      else
      {
        v24 = (a1 + v14) & ~v12;
        if (v11 == v13)
        {
          v25 = *(v10 + 56);

          v25(v24, a2);
        }

        else
        {
          v26 = ((v15 + v24) & 0xFFFFFFFFFFFFFFF8);
          if ((a2 & 0x80000000) != 0)
          {
            *v26 = a2 & 0x7FFFFFFF;
            v26[1] = 0;
          }

          else
          {
            *v26 = (a2 - 1);
          }
        }
      }

      return;
    }
  }

  if (((((v15 + (v14 & ~v12)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v21 = v20;
  }

  else
  {
    v21 = 1;
  }

  if (((((v15 + (v14 & ~v12)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v22 = ~v13 + a2;
    bzero(a1, ((((v15 + (v14 & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
    *a1 = v22;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      *(a1 + v16) = v21;
    }

    else
    {
      *(a1 + v16) = v21;
    }
  }

  else if (v19)
  {
    *(a1 + v16) = v21;
  }
}

uint64_t sub_24B5EFE60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3[3];
  v6 = v3[4];
  v7 = v3[5];
  v8 = v3[6];
  v9 = v3[7];
  v10 = v3[8];
  v11 = v3[9];
  v12 = v3[10];
  v18[0] = v3[2];
  v4 = v18[0];
  v18[1] = v5;
  v18[2] = v6;
  v18[3] = v7;
  v18[4] = v8;
  v18[5] = v9;
  v18[6] = v10;
  v18[7] = v11;
  v18[8] = v12;
  v13 = *(type metadata accessor for FilterDurationSectionView(0, v18) - 8);
  return sub_24B5ED654(a1, a2, v3 + ((*(v13 + 80) + 88) & ~*(v13 + 80)), v4, v5, v6, v7, v8, a3, v9, v10, v11, v12);
}

uint64_t sub_24B5EFF3C()
{
  v2 = *(v0 + 4);
  v17 = *(v0 + 5);
  v18 = *(v0 + 3);
  v3 = *(v0 + 6);
  v4 = *(v0 + 7);
  v5 = *(v0 + 8);
  v6 = *(v0 + 9);
  v16 = *(v0 + 10);
  v19 = *(v0 + 2);
  v1 = v19;
  v20 = v18;
  v21 = v2;
  v22 = v17;
  v23 = v3;
  v24 = v4;
  v25 = v5;
  v26 = v6;
  v27 = v16;
  v7 = *(type metadata accessor for FilterDurationSectionView(0, &v19) - 8);
  v8 = *(v7 + 80);
  v9 = *(v7 + 64);
  v19 = v1;
  v20 = v2;
  v10 = (v8 + 88) & ~v8;
  v21 = v3;
  v22 = v4;
  v23 = v5;
  v24 = v6;
  v11 = *(type metadata accessor for Option(0, &v19) - 8);
  v12 = (v10 + v9 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *&v0[(*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8];
  v19 = v1;
  v20 = v18;
  v21 = v2;
  v22 = v17;
  v23 = v3;
  v24 = v4;
  v25 = v5;
  v26 = v6;
  v27 = v16;
  v14 = type metadata accessor for FilterDurationSectionView(0, &v19);
  return (*&v0[*(v14 + 96) + v10])(&v0[v12], v13);
}

unint64_t sub_24B5F010C()
{
  result = qword_27F01A760;
  if (!qword_27F01A760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A758, &qword_24B609128);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A768, &qword_24B609130);
    sub_24B5F0200();
    swift_getOpaqueTypeConformance2();
    sub_24B58085C(&qword_27F01A788, &qword_27F01A790, &qword_24B609140, MEMORY[0x277CE07A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A760);
  }

  return result;
}

unint64_t sub_24B5F0200()
{
  result = qword_27F01A770;
  if (!qword_27F01A770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A768, &qword_24B609130);
    sub_24B58085C(&qword_27F01A778, &qword_27F01A780, &qword_24B609138, MEMORY[0x277CE11A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A770);
  }

  return result;
}

uint64_t sub_24B5F02B8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24B5FF0DC();
  *a1 = result & 1;
  return result;
}

unint64_t sub_24B5F033C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A658, &qword_24B608D30);
    v3 = sub_24B5FFD2C();
    v4 = a1 + 32;

    while (1)
    {
      sub_24B57BAFC(v4, &v13, &qword_27F018990, &unk_24B600BF0);
      v5 = v13;
      v6 = v14;
      result = sub_24B5EA2D0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_24B5EA868(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_24B5F046C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2[4];
  v16 = v2[5];
  v17 = v2[3];
  v5 = v2[6];
  v6 = v2[7];
  v8 = v2[8];
  v7 = v2[9];
  v9 = v2[10];
  v20 = v2[2];
  v3 = v20;
  v21 = v17;
  v22 = v4;
  v23 = v16;
  v24 = v5;
  v25 = v6;
  v26 = v8;
  v27 = v7;
  v28 = v9;
  v10 = *(type metadata accessor for FilterDurationSectionView(0, &v20) - 8);
  v11 = *(v10 + 80);
  v12 = *(v10 + 64);
  v20 = v3;
  v21 = v4;
  v13 = (v11 + 88) & ~v11;
  v22 = v5;
  v23 = v6;
  v24 = v8;
  v25 = v7;
  v14 = *(type metadata accessor for Option(0, &v20) - 8);
  return sub_24B5EEC4C(a1, v2 + ((v13 + v12 + *(v14 + 80)) & ~*(v14 + 80)), v3, v17, v4, v16, v5, a2, v6, v8, v7, v9);
}

unint64_t sub_24B5F05AC()
{
  result = qword_27F01A7D8;
  if (!qword_27F01A7D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A7C8, &qword_24B609200);
    sub_24B5F0638();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A7D8);
  }

  return result;
}

unint64_t sub_24B5F0638()
{
  result = qword_27F01A7E0;
  if (!qword_27F01A7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A7E0);
  }

  return result;
}

unint64_t sub_24B5F068C()
{
  result = qword_27F01A7E8;
  if (!qword_27F01A7E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A7D0, &qword_24B609208);
    sub_24B58085C(&qword_27F01A7F0, &qword_27F01A7F8, &qword_24B609210, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A7E8);
  }

  return result;
}

uint64_t static NamedFilterContent<>.< infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = v6(a3, a4);
  v9 = v8;
  if (v7 == v6(a3, a4) && v9 == v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = sub_24B5FFECC();
  }

  return v12 & 1;
}

uint64_t sub_24B5F0848@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *v3;
  v7 = *(v3 + 8);
  v8 = v3[2];
  v9 = *(v3 + 24);

  sub_24B5F18D8(v10);
  v11 = *(a2 + 16);

  if (v11)
  {
    if (*(a2 + 16) <= *(v8 + 16) >> 3)
    {

      sub_24B5F2414(a2);
      v12 = v8;
    }

    else
    {

      v12 = sub_24B5F253C(a2, v8);
    }

    result = sub_24B5F098C(v14, v12);
    *a3 = v6;
    *(a3 + 8) = v7;
    *(a3 + 16) = result;
    *(a3 + 24) = v9;
  }

  else
  {
    *a3 = v6;
    *(a3 + 8) = v7;
    *(a3 + 16) = v8;
    *(a3 + 24) = v9;
  }

  return result;
}

uint64_t sub_24B5F098C(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v5 = result + 56;
  v4 = *(result + 56);
  v17 = a2;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v4;
  v9 = (v6 + 63) >> 6;
  if ((v7 & v4) != 0)
  {
    do
    {
      v10 = v3;
LABEL_9:
      v11 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v12 = (*(v2 + 48) + 48 * (v11 | (v10 << 6)));
      v13 = *(v12 + 25);
      v14 = v12[1];
      v18 = *v12;
      v19[0] = v14;
      *(v19 + 9) = v13;
      sub_24B58FF20(&v18, v15);
      sub_24B5F0AA8(v15, &v18);
      result = sub_24B57BA04(v15[0], v15[1], v15[2], v15[3], v15[4], v16);
    }

    while (v8);
  }

  while (1)
  {
    v10 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      return v17;
    }

    v8 = *(v5 + 8 * v10);
    ++v3;
    if (v8)
    {
      v3 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B5F0AA8(uint64_t a1, __int128 *a2)
{
  v3 = v2;
  v5 = a2[1];
  v33 = *a2;
  *v34 = v5;
  *&v34[9] = *(a2 + 25);
  v6 = *v2;
  sub_24B5FFEFC();
  FilterItem.hash(into:)(&v31);
  v7 = sub_24B5FFF3C();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = *(v6 + 48) + 48 * v9;
      v12 = *(v11 + 8);
      v13 = *(v11 + 16);
      v14 = *(v11 + 24);
      v15 = *(v11 + 32);
      *&v31 = *v11;
      *(&v31 + 1) = v12;
      *v32 = v13;
      *&v32[8] = v14;
      *&v32[16] = v15;
      v32[24] = *(v11 + 40);
      sub_24B57BA1C(v31, v12, v13, v14, v15, v32[24]);
      v16 = _s16FitnessFiltering10FilterItemO2eeoiySbAC_ACtFZ_0(&v31, &v33);
      sub_24B57BA04(v31, *(&v31 + 1), *v32, *&v32[8], *&v32[16], v32[24]);
      if (v16)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_24B57BA04(v33, *(&v33 + 1), *v34, *&v34[8], *&v34[16], v34[24]);
    v22 = *(v6 + 48) + 48 * v9;
    v23 = *v22;
    v24 = *(v22 + 8);
    v25 = *(v22 + 16);
    v26 = *(v22 + 24);
    v27 = *(v22 + 32);
    *a1 = *v22;
    *(a1 + 8) = v24;
    *(a1 + 16) = v25;
    *(a1 + 24) = v26;
    *(a1 + 32) = v27;
    v28 = *(v22 + 40);
    *(a1 + 40) = v28;
    sub_24B57BA1C(v23, v24, v25, v26, v27, v28);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = v33;
    *v32 = *v34;
    *&v32[9] = *&v34[9];
    v30 = *v3;
    sub_24B58FF20(&v31, v29);
    sub_24B5F111C(&v31, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v30;
    v18 = *&v34[16];
    v19 = v34[24];
    v20 = *v34;
    *a1 = v33;
    *(a1 + 16) = v20;
    *(a1 + 32) = v18;
    *(a1 + 40) = v19;
    return 1;
  }
}

uint64_t sub_24B5F0C80(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018CD8, &qword_24B601160);
  result = sub_24B5FFCBC();
  v5 = result;
  if (*(v3 + 16))
  {
    v34 = v3;
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
    while (1)
    {
      if (!v10)
      {
        v16 = v6;
        while (1)
        {
          v6 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            __break(1u);
            goto LABEL_57;
          }

          if (v6 >= v11)
          {
            break;
          }

          v17 = v7[v6];
          ++v16;
          if (v17)
          {
            v15 = __clz(__rbit64(v17));
            v10 = (v17 - 1) & v17;
            goto LABEL_15;
          }
        }

        v33 = 1 << *(v3 + 32);
        if (v33 >= 64)
        {
          bzero(v7, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v7 = -1 << v33;
        }

        v2 = v1;
        *(v3 + 16) = 0;
        goto LABEL_55;
      }

      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 48 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v36 = *(v18 + 24);
      v37 = *(v18 + 16);
      v35 = *(v18 + 32);
      v21 = *(v18 + 40);
      sub_24B5FFEFC();
      if (v21 > 3)
      {
        if (v21 <= 5)
        {
          if (v21 == 4)
          {
            v22 = 4;
          }

          else
          {
            v22 = 5;
          }
        }

        else if (v21 == 6)
        {
          v22 = 6;
        }

        else
        {
          if (v21 != 7)
          {
            MEMORY[0x24C243ED0](8);
            sub_24B5FFB1C();

            goto LABEL_42;
          }

          v22 = 7;
        }

        goto LABEL_41;
      }

      if (v21 > 1)
      {
        break;
      }

      if (!v21)
      {
        v22 = 0;
LABEL_41:
        MEMORY[0x24C243ED0](v22);
        sub_24B5FFB1C();
        goto LABEL_42;
      }

      MEMORY[0x24C243ED0](1);
      sub_24B5FFB1C();
      if ((v37 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v23 = v37;
      }

      else
      {
        v23 = 0;
      }

      MEMORY[0x24C243EF0](v23);
      if ((v36 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v24 = v36;
      }

      else
      {
        v24 = 0;
      }

      MEMORY[0x24C243EF0](v24);
      if ((v35 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v25 = v35;
      }

      else
      {
        v25 = 0;
      }

      MEMORY[0x24C243EF0](v25);
LABEL_42:
      result = sub_24B5FFF3C();
      v26 = -1 << *(v5 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v12 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v12 + 8 * v28);
          if (v32 != -1)
          {
            v13 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_57:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v27) & ~*(v12 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 48 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v37;
      *(v14 + 24) = v36;
      *(v14 + 32) = v35;
      *(v14 + 40) = v21;
      ++*(v5 + 16);
      v3 = v34;
    }

    if (v21 == 2)
    {
      v22 = 2;
    }

    else
    {
      v22 = 3;
    }

    goto LABEL_41;
  }

LABEL_55:

  *v2 = v5;
  return result;
}

uint64_t sub_24B5F111C(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = *(result + 16);
  v32 = *result;
  *v33 = v6;
  *&v33[9] = *(result + 25);
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_24B5F0C80(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_24B5F12E4();
      goto LABEL_12;
    }

    sub_24B5F145C(v7 + 1);
  }

  v9 = *v3;
  sub_24B5FFEFC();
  FilterItem.hash(into:)(&v26);
  result = sub_24B5FFF3C();
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      v12 = *(v9 + 48) + 48 * a2;
      v13 = *(v12 + 8);
      v14 = *(v12 + 16);
      v15 = *(v12 + 24);
      v16 = *(v12 + 32);
      v26 = *v12;
      v27 = v13;
      v28 = v14;
      v29 = v15;
      v30 = v16;
      v31 = *(v12 + 40);
      sub_24B57BA1C(v26, v13, v14, v15, v16, v31);
      v17 = _s16FitnessFiltering10FilterItemO2eeoiySbAC_ACtFZ_0(&v26, &v32);
      result = sub_24B57BA04(v26, v27, v28, v29, v30, v31);
      if (v17)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v18 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v19 = *(v18 + 48) + 48 * a2;
  v20 = *&v33[16];
  v21 = v33[24];
  v22 = *v33;
  *v19 = v32;
  *(v19 + 16) = v22;
  *(v19 + 32) = v20;
  *(v19 + 40) = v21;
  v23 = *(v18 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    *(v18 + 16) = v25;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_24B5FFEDC();
  __break(1u);
  return result;
}

void *sub_24B5F12E4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018CD8, &qword_24B601160);
  v2 = *v0;
  v3 = sub_24B5FFCAC();
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
        v17 = 48 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        v23 = *(v18 + 32);
        v24 = *(v4 + 48) + v17;
        v25 = *(v18 + 40);
        *v24 = *v18;
        *(v24 + 8) = v20;
        *(v24 + 16) = v21;
        *(v24 + 24) = v22;
        *(v24 + 32) = v23;
        *(v24 + 40) = v25;
        result = sub_24B57BA1C(v19, v20, v21, v22, v23, v25);
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

uint64_t sub_24B5F145C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018CD8, &qword_24B601160);
  result = sub_24B5FFCBC();
  v5 = result;
  if (!*(v3 + 16))
  {

LABEL_53:
    *v2 = v5;
    return result;
  }

  v33 = v3;
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
  while (v10)
  {
    v15 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_15:
    v18 = *(v3 + 48) + 48 * (v15 | (v6 << 6));
    v19 = *v18;
    v20 = *(v18 + 8);
    v35 = *(v18 + 24);
    v36 = *(v18 + 16);
    v34 = *(v18 + 32);
    v21 = *(v18 + 40);
    sub_24B5FFEFC();
    if (v21 > 3)
    {
      if (v21 <= 5)
      {
        if (v21 == 4)
        {
          v22 = 4;
        }

        else
        {
          v22 = 5;
        }
      }

      else if (v21 == 6)
      {
        v22 = 6;
      }

      else
      {
        if (v21 != 7)
        {
          MEMORY[0x24C243ED0](8);
          sub_24B5FFB1C();

          goto LABEL_42;
        }

        v22 = 7;
      }

      goto LABEL_41;
    }

    if (v21 > 1)
    {
      if (v21 == 2)
      {
        v22 = 2;
      }

      else
      {
        v22 = 3;
      }

      goto LABEL_41;
    }

    if (!v21)
    {
      v22 = 0;
LABEL_41:
      MEMORY[0x24C243ED0](v22);

      sub_24B5FFB1C();
      goto LABEL_42;
    }

    MEMORY[0x24C243ED0](1);

    sub_24B5FFB1C();
    if ((v36 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v23 = v36;
    }

    else
    {
      v23 = 0;
    }

    MEMORY[0x24C243EF0](v23);
    if ((v35 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v24 = v35;
    }

    else
    {
      v24 = 0;
    }

    MEMORY[0x24C243EF0](v24);
    if ((v34 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v25 = v34;
    }

    else
    {
      v25 = 0;
    }

    MEMORY[0x24C243EF0](v25);
LABEL_42:
    result = sub_24B5FFF3C();
    v26 = -1 << *(v5 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v12 + 8 * (v27 >> 6))) == 0)
    {
      v29 = 0;
      v30 = (63 - v26) >> 6;
      while (++v28 != v30 || (v29 & 1) == 0)
      {
        v31 = v28 == v30;
        if (v28 == v30)
        {
          v28 = 0;
        }

        v29 |= v31;
        v32 = *(v12 + 8 * v28);
        if (v32 != -1)
        {
          v13 = __clz(__rbit64(~v32)) + (v28 << 6);
          goto LABEL_7;
        }
      }

      goto LABEL_55;
    }

    v13 = __clz(__rbit64((-1 << v27) & ~*(v12 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
    *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
    v14 = *(v5 + 48) + 48 * v13;
    *v14 = v19;
    *(v14 + 8) = v20;
    *(v14 + 16) = v36;
    *(v14 + 24) = v35;
    *(v14 + 32) = v34;
    *(v14 + 40) = v21;
    ++*(v5 + 16);
    v3 = v33;
  }

  v16 = v6;
  while (1)
  {
    v6 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v6 >= v11)
    {

      v2 = v1;
      goto LABEL_53;
    }

    v17 = *(v7 + 8 * v6);
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v10 = (v17 - 1) & v17;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_55:
  __break(1u);
  return result;
}

uint64_t sub_24B5F18D8(uint64_t a1)
{
  v2 = 0;
  v5 = *(a1 + 56);
  result = a1 + 56;
  v4 = v5;
  v6 = 1 << *(result - 24);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & v4;
  v9 = (v6 + 63) >> 6;
  v100 = v9;
  v101 = result;
  if ((v7 & v4) == 0)
  {
    goto LABEL_5;
  }

LABEL_9:
  while (2)
  {
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = *(a1 + 48) + 48 * (v11 | (v2 << 6));
    v13 = *v12;
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);
    v16 = *(v12 + 24);
    v17 = *(v12 + 32);
    v18 = *(v12 + 40);
    *&v125 = *v12;
    *(&v125 + 1) = v14;
    *v126 = v15;
    *&v126[8] = v16;
    *&v126[16] = v17;
    v126[24] = v18;
    v19 = *v1;
    if (!*(*v1 + 16))
    {
      sub_24B57BA1C(v13, v14, v15, v16, v17, v18);
      goto LABEL_13;
    }

    sub_24B5FFEFC();
    sub_24B57BA1C(v13, v14, v15, v16, v17, v18);
    FilterItem.hash(into:)(&v113);
    v20 = sub_24B5FFF3C();
    v21 = -1 << *(v19 + 32);
    v22 = v20 & ~v21;
    v105 = v19 + 56;
    if (((*(v19 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
    {
LABEL_13:
      v127 = v125;
      v128[0] = *v126;
      *(v128 + 9) = *&v126[9];
      v1 = v102;
      sub_24B5F0AA8(&v113, &v127);
      v27 = v113;
      v28 = v114;
      v29 = v115;
      v30 = v116;
      v31 = v117;
      v32 = v118;
      goto LABEL_14;
    }

    v104 = ~v21;
    v23 = *(&v125 + 1);
    v24 = v125;
    v110 = v126[24];
    v108 = *&v126[8];
    v109 = *v126;
    v25 = *v126;
    v106 = *(&v125 + 1);
    v107 = *&v126[16];
    v26 = *&v126[16];
    v99 = v125;
    while (1)
    {
      v40 = v19;
      v41 = *(v19 + 48) + 48 * v22;
      v43 = *v41;
      v42 = *(v41 + 8);
      v44 = *(v41 + 16);
      v45 = *(v41 + 24);
      v46 = *(v41 + 32);
      v47 = *(v41 + 40);
      v113 = *v41;
      v114 = v42;
      v115 = v44;
      v116 = v45;
      v117 = v46;
      v118 = v47;
      v119 = v24;
      v120 = v23;
      v121 = v109;
      v122 = v108;
      v123 = v107;
      v124 = v110;
      if (v47 > 3)
      {
        if (v47 <= 5)
        {
          if (v47 == 4)
          {
            if (v110 != 4)
            {
              goto LABEL_89;
            }

            if (v43 == v24 && v42 == v23)
            {
              v91 = v44;
              v92 = v23;
              sub_24B57BA1C(v24, v23, v91, v45, v46, 4u);
              v79 = v24;
              v80 = v92;
              v82 = v108;
              v81 = v109;
              v83 = v107;
              v84 = 4;
              goto LABEL_149;
            }

            v97 = sub_24B5FFECC();
            sub_24B57BA1C(v43, v42, v44, v45, v46, 4u);
            v34 = v24;
            v35 = v106;
            v36 = v107;
            v38 = v108;
            v37 = v109;
            v39 = 4;
          }

          else
          {
            if (v110 != 5)
            {
LABEL_89:
              sub_24B57BA1C(v43, v42, v44, v45, v46, v47);
              v23 = v106;
LABEL_90:
              sub_24B57BA1C(v24, v23, v109, v108, v107, v110);
              sub_24B5AF398(&v113);
              v19 = v40;
              goto LABEL_22;
            }

            if (v43 == v24 && v42 == v23)
            {
              v77 = v44;
              v78 = v23;
              sub_24B57BA1C(v24, v23, v77, v45, v46, 5u);
              v79 = v24;
              v80 = v78;
              v82 = v108;
              v81 = v109;
              v83 = v107;
              v84 = 5;
              goto LABEL_149;
            }

            v97 = sub_24B5FFECC();
            sub_24B57BA1C(v43, v42, v44, v45, v46, 5u);
            v34 = v24;
            v35 = v106;
            v36 = v107;
            v38 = v108;
            v37 = v109;
            v39 = 5;
          }

          goto LABEL_21;
        }

        if (v47 == 6)
        {
          if (v110 != 6)
          {
            goto LABEL_89;
          }

          if (v43 == v24 && v42 == v23)
          {
            v87 = v44;
            v88 = v23;
            sub_24B57BA1C(v24, v23, v87, v45, v46, 6u);
            v79 = v24;
            v80 = v88;
            v82 = v108;
            v81 = v109;
            v83 = v107;
            v84 = 6;
            goto LABEL_149;
          }

          v97 = sub_24B5FFECC();
          sub_24B57BA1C(v43, v42, v44, v45, v46, 6u);
          v34 = v24;
          v35 = v106;
          v36 = v107;
          v38 = v108;
          v37 = v109;
          v39 = 6;
          goto LABEL_21;
        }

        if (v47 == 7)
        {
          if (v110 != 7)
          {
            goto LABEL_89;
          }

          if (v43 == v24 && v42 == v23)
          {
            v89 = v44;
            v90 = v23;
            sub_24B57BA1C(v24, v23, v89, v45, v46, 7u);
            v79 = v24;
            v80 = v90;
            v82 = v108;
            v81 = v109;
            v83 = v107;
            v84 = 7;
            goto LABEL_149;
          }

          v97 = sub_24B5FFECC();
          sub_24B57BA1C(v43, v42, v44, v45, v46, 7u);
          v34 = v24;
          v35 = v106;
          v36 = v107;
          v38 = v108;
          v37 = v109;
          v39 = 7;
          goto LABEL_21;
        }

        if (v110 != 8)
        {
          goto LABEL_90;
        }

        v19 = v40;
        if (v43 > 3u)
        {
          if (v43 <= 5u)
          {
            if (v43 == 4)
            {
              v59 = 0xE700000000000000;
              v58 = 0x7261655977656ELL;
            }

            else
            {
              v59 = 0xE500000000000000;
              v58 = 0x6564697270;
            }

            goto LABEL_111;
          }

          if (v43 == 6)
          {
            v58 = 0x576D6172676F7270;
            v59 = 0xEE0074756F6B726FLL;
            goto LABEL_111;
          }

          v58 = 0x6967736B6E616874;
          v65 = 1735289206;
        }

        else
        {
          if (v43 <= 1u)
          {
            v58 = 0x7053747369747261;
            v59 = 0xEF746867696C746FLL;
            if (v43)
            {
              v59 = 0xE90000000000006ELL;
              v58 = 0x6565776F6C6C6168;
            }

            goto LABEL_111;
          }

          if (v43 == 2)
          {
            v59 = 0xE700000000000000;
            v58 = 0x796164696C6F68;
LABEL_111:
            v66 = 0x576D6172676F7270;
            if (v99 != 6)
            {
              v66 = 0x6967736B6E616874;
            }

            v67 = 0xEE0074756F6B726FLL;
            if (v99 != 6)
            {
              v67 = 0xEC000000676E6976;
            }

            v68 = 0x7261655977656ELL;
            if (v99 != 4)
            {
              v68 = 0x6564697270;
            }

            v69 = 0xE500000000000000;
            if (v99 == 4)
            {
              v69 = 0xE700000000000000;
            }

            if (v99 <= 5)
            {
              v66 = v68;
              v67 = v69;
            }

            v70 = 0x796164696C6F68;
            if (v99 != 2)
            {
              v70 = 0x77654E72616E756CLL;
            }

            v71 = 0xEC00000072616559;
            if (v99 == 2)
            {
              v71 = 0xE700000000000000;
            }

            v72 = 0x7053747369747261;
            if (v99)
            {
              v72 = 0x6565776F6C6C6168;
            }

            v73 = 0xEF746867696C746FLL;
            if (v99)
            {
              v73 = 0xE90000000000006ELL;
            }

            if (v99 <= 1)
            {
              v70 = v72;
              v71 = v73;
            }

            if (v99 <= 3)
            {
              v74 = v70;
            }

            else
            {
              v74 = v66;
            }

            if (v99 <= 3)
            {
              v75 = v71;
            }

            else
            {
              v75 = v67;
            }

            if (v58 == v74 && v59 == v75)
            {

              goto LABEL_150;
            }

            v76 = sub_24B5FFECC();

            sub_24B5AF398(&v113);
            if (v76)
            {
              goto LABEL_151;
            }

            goto LABEL_22;
          }

          v58 = 0x77654E72616E756CLL;
          v65 = 1918985561;
        }

        v59 = v65 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        goto LABEL_111;
      }

      if (v47 > 1)
      {
        if (v47 == 2)
        {
          if (v110 != 2)
          {
            goto LABEL_89;
          }

          if (v43 == v24 && v42 == v23)
          {
            v85 = v44;
            v86 = v23;
            sub_24B57BA1C(v24, v23, v85, v45, v46, 2u);
            v79 = v24;
            v80 = v86;
            v82 = v108;
            v81 = v109;
            v83 = v107;
            v84 = 2;
            goto LABEL_149;
          }

          v97 = sub_24B5FFECC();
          sub_24B57BA1C(v43, v42, v44, v45, v46, 2u);
          v34 = v24;
          v35 = v106;
          v36 = v107;
          v38 = v108;
          v37 = v109;
          v39 = 2;
        }

        else
        {
          if (v110 != 3)
          {
            goto LABEL_89;
          }

          if (v43 == v24 && v42 == v23)
          {
            v93 = v44;
            v94 = v23;
            sub_24B57BA1C(v24, v23, v93, v45, v46, 3u);
            v79 = v24;
            v80 = v94;
            v82 = v108;
            v81 = v109;
            v83 = v107;
            v84 = 3;
            goto LABEL_149;
          }

          v97 = sub_24B5FFECC();
          sub_24B57BA1C(v43, v42, v44, v45, v46, 3u);
          v34 = v24;
          v35 = v106;
          v36 = v107;
          v38 = v108;
          v37 = v109;
          v39 = 3;
        }

        goto LABEL_21;
      }

      if (!v47)
      {
        break;
      }

      if (v110 != 1)
      {
        goto LABEL_89;
      }

      v52 = *&v44;
      v53 = *&v45;
      if (v43 == v24 && v42 == v23)
      {
        v61 = v44;
        v62 = v23;
        sub_24B57BA1C(v24, v23, v61, v45, v46, 1u);
        sub_24B57BA1C(v24, v62, v109, v108, v107, 1u);
        sub_24B5AF398(&v113);
        v64 = v52 == *&v25 && *&v45 == *(&v25 + 1) && *&v46 == v26;
        v19 = v40;
        if (v64)
        {
          goto LABEL_151;
        }
      }

      else
      {
        v98 = sub_24B5FFECC();
        sub_24B57BA1C(v43, v42, v44, v45, v46, 1u);
        sub_24B57BA1C(v24, v106, v109, v108, v107, 1u);
        sub_24B5AF398(&v113);
        v19 = v40;
        if (v98)
        {
          v55 = *&v44 == *&v25 && v53 == *(&v25 + 1);
          if (v55 && *&v46 == v26)
          {
            goto LABEL_151;
          }
        }
      }

LABEL_22:
      v22 = (v22 + 1) & v104;
      v23 = v106;
      if (((*(v105 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    if (v110)
    {
      goto LABEL_89;
    }

    if (v43 != v24 || v42 != v23)
    {
      v97 = sub_24B5FFECC();
      sub_24B57BA1C(v43, v42, v44, v45, v46, 0);
      v34 = v24;
      v35 = v106;
      v36 = v107;
      v38 = v108;
      v37 = v109;
      v39 = 0;
LABEL_21:
      sub_24B57BA1C(v34, v35, v37, v38, v36, v39);
      sub_24B5AF398(&v113);
      v19 = v40;
      if (v97)
      {
        goto LABEL_151;
      }

      goto LABEL_22;
    }

    v95 = v44;
    v96 = v23;
    sub_24B57BA1C(v24, v23, v95, v45, v46, 0);
    v79 = v24;
    v80 = v96;
    v82 = v108;
    v81 = v109;
    v83 = v107;
    v84 = 0;
LABEL_149:
    sub_24B57BA1C(v79, v80, v81, v82, v83, v84);
LABEL_150:
    sub_24B5AF398(&v113);
LABEL_151:
    v129 = v125;
    v130[0] = *v126;
    *(v130 + 9) = *&v126[9];
    v1 = v102;
    sub_24B5F527C(&v129, v111);
    sub_24B5F6D14(v111[0], v111[1], v111[2], v111[3], v111[4], v112);
    v27 = v24;
    v28 = v106;
    v31 = v107;
    v30 = v108;
    v29 = v109;
    v32 = v110;
LABEL_14:
    sub_24B57BA04(v27, v28, v29, v30, v31, v32);
    v9 = v100;
    result = v101;
    if (v8)
    {
      continue;
    }

    break;
  }

LABEL_5:
  while (2)
  {
    v10 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
    }

    else
    {
      if (v10 < v9)
      {
        v8 = *(result + 8 * v10);
        ++v2;
        if (!v8)
        {
          continue;
        }

        v2 = v10;
        goto LABEL_9;
      }
    }

    return result;
  }
}

uint64_t sub_24B5F2414(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    for (i = 0; v6; result = sub_24B5F6D14(v14[0], v14[1], v14[2], v14[3], v14[4], v15))
    {
      v9 = i;
LABEL_10:
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v11 = (*(v2 + 48) + 48 * (v10 | (v9 << 6)));
      v12 = *(v11 + 25);
      v13 = v11[1];
      v16 = *v11;
      v17[0] = v13;
      *(v17 + 9) = v12;
      sub_24B58FF20(&v16, v14);
      sub_24B5F527C(&v16, v14);
      sub_24B59621C(&v16);
    }

    while (1)
    {
      v9 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v9 >= v7)
      {
      }

      v6 = *(v3 + 8 * v9);
      ++i;
      if (v6)
      {
        i = v9;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24B5F253C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v234 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v4 = a1 + 56;
  v3 = *(a1 + 56);
  v5 = -1 << *(a1 + 32);
  v201 = ~v5;
  if (-v5 < 64)
  {
    v6 = ~(-1 << -v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & v3;
  v8 = (63 - v5) >> 6;
  v209 = (a2 + 56);
  v10 = v229;
  v9 = v230;
  v12 = v231;
  v11 = v232;

  v14 = 0;
  v15 = v233;
  v199 = v4;
  v198 = v8;
  v208 = v2;
  v200 = v13;
LABEL_6:
  while (2)
  {
    if (!v7)
    {
      v17 = v15;
      v18 = v14;
      while (1)
      {
        v16 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v16 >= v8)
        {
          v232 = v11;
          v233 = v17;
          v229 = v10;
          v230 = v9;
          v231 = v12;
          goto LABEL_389;
        }

        v7 = *(v4 + 8 * v16);
        ++v18;
        if (v7)
        {
          goto LABEL_12;
        }
      }

LABEL_392:
      v232 = v11;
      v233 = v17;
      v229 = v10;
      v230 = v9;
      v231 = v12;
      __break(1u);
      goto LABEL_393;
    }

    v16 = v14;
LABEL_12:
    v19 = *(v13 + 48) + 48 * (__clz(__rbit64(v7)) | (v16 << 6));
    v20 = *(v19 + 8);
    v207 = *v19;
    v206 = v20;
    v21 = *(v19 + 24);
    v210 = *(v19 + 16);
    v211 = *&v21;
    v212 = *(v19 + 32);
    v22 = *(v19 + 40);
    sub_24B5FFEFC();
    v205 = v22;
    v203 = v16;
    if (v22 <= 3)
    {
      if (v22 > 1)
      {
        if (v22 == 2)
        {
          MEMORY[0x24C243ED0](2);
          v23 = v207;
          v24 = v206;
          v25 = *&v210;
          v26 = *&v211;
          v27 = *&v212;
          v28 = 2;
        }

        else
        {
          MEMORY[0x24C243ED0](3);
          v23 = v207;
          v24 = v206;
          v25 = *&v210;
          v26 = *&v211;
          v27 = *&v212;
          v28 = 3;
        }
      }

      else
      {
        if (v22)
        {
          MEMORY[0x24C243ED0](1);
          sub_24B57BA1C(v207, v206, *&v210, *&v211, *&v212, 1u);
          sub_24B5FFB1C();
          if ((*&v210 & 0x7FFFFFFFFFFFFFFFLL) != 0)
          {
            v29 = *&v210;
          }

          else
          {
            v29 = 0;
          }

          MEMORY[0x24C243EF0](v29);
          if ((*&v211 & 0x7FFFFFFFFFFFFFFFLL) != 0)
          {
            v30 = *&v211;
          }

          else
          {
            v30 = 0;
          }

          MEMORY[0x24C243EF0](v30);
          if ((*&v212 & 0x7FFFFFFFFFFFFFFFLL) != 0)
          {
            v31 = *&v212;
          }

          else
          {
            v31 = 0;
          }

          MEMORY[0x24C243EF0](v31);
          goto LABEL_39;
        }

        MEMORY[0x24C243ED0](0);
        v23 = v207;
        v24 = v206;
        v25 = *&v210;
        v26 = *&v211;
        v27 = *&v212;
        v28 = 0;
      }

      goto LABEL_38;
    }

    if (v22 <= 5)
    {
      if (v22 == 4)
      {
        MEMORY[0x24C243ED0](4);
        v23 = v207;
        v24 = v206;
        v25 = *&v210;
        v26 = *&v211;
        v27 = *&v212;
        v28 = 4;
      }

      else
      {
        MEMORY[0x24C243ED0](5);
        v23 = v207;
        v24 = v206;
        v25 = *&v210;
        v26 = *&v211;
        v27 = *&v212;
        v28 = 5;
      }

      goto LABEL_38;
    }

    if (v22 == 6)
    {
      MEMORY[0x24C243ED0](6);
      v23 = v207;
      v24 = v206;
      v25 = *&v210;
      v26 = *&v211;
      v27 = *&v212;
      v28 = 6;
      goto LABEL_38;
    }

    if (v22 == 7)
    {
      MEMORY[0x24C243ED0](7);
      v23 = v207;
      v24 = v206;
      v25 = *&v210;
      v26 = *&v211;
      v27 = *&v212;
      v28 = 7;
LABEL_38:
      sub_24B57BA1C(v23, v24, v25, v26, v27, v28);
      sub_24B5FFB1C();
      goto LABEL_39;
    }

    MEMORY[0x24C243ED0](8);
    sub_24B5FFB1C();

LABEL_39:
    v32 = (v7 - 1) & v7;
    v33 = sub_24B5FFF3C();
    v34 = -1 << *(v2 + 32);
    v12 = v33 & ~v34;
    v35 = v12 >> 6;
    v36 = 1 << v12;
    if (((1 << v12) & v209[v12 >> 6]) == 0)
    {
      sub_24B57BA04(v207, v206, *&v210, *&v211, *&v212, v205);
      v14 = v203;
      v11 = v203;
      v12 = v201;
      v4 = v199;
      v9 = v199;
      v13 = v200;
      v10 = v200;
      v7 &= v7 - 1;
      v8 = v198;
      v15 = v32;
      continue;
    }

    break;
  }

  v202 = (v7 - 1) & v7;
  v204 = ~v34;
  v37 = v207;
  LODWORD(v197) = v207;
  v38 = v206;
  while (1)
  {
    v39 = v205;
    v40 = *(v2 + 48) + 48 * v12;
    v42 = *v40;
    v41 = *(v40 + 8);
    v43 = *(v40 + 16);
    v44 = *(v40 + 24);
    v45 = *(v40 + 32);
    v46 = *(v40 + 40);
    v221[0] = v42;
    v221[1] = v41;
    v221[2] = v43;
    v221[3] = v44;
    v221[4] = v45;
    v222 = v46;
    v223 = v37;
    v224 = v38;
    v225 = *&v210;
    v226 = *&v211;
    v227 = *&v212;
    v228 = v205;
    if (v46 <= 3)
    {
      break;
    }

    if (v46 <= 5)
    {
      if (v46 == 4)
      {
        if (v205 != 4)
        {
          sub_24B57BA1C(v37, v38, *&v210, *&v211, *&v212, v205);
          v50 = v42;
          v51 = v41;
          v52 = v43;
          v53 = v44;
          v54 = v45;
          v39 = 4;
          goto LABEL_121;
        }

        if (v42 == v37 && v41 == v38)
        {
          v9 = v200;
          v103 = v199;
          v229 = v200;
          v230 = v199;
          v231 = v201;
          v232 = v203;
          v233 = v202;
          v97 = v37;
          v98 = v38;
          v99 = v43;
          v100 = v44;
          v101 = v45;
          v102 = 4;
          goto LABEL_193;
        }

        v59 = v38;
        v60 = v37;
        LODWORD(v196) = sub_24B5FFECC();
        sub_24B57BA1C(v60, v59, *&v210, *&v211, *&v212, 4u);
        sub_24B57BA1C(v42, v41, v43, v44, v45, 4u);
        sub_24B5AF398(v221);
        v2 = v208;
        if (v196)
        {
          v9 = v200;
          v103 = v199;
          v229 = v200;
          v230 = v199;
          v231 = v201;
          v232 = v203;
          v233 = v202;
          v104 = sub_24B57BA04(v207, v206, *&v210, *&v211, *&v212, 4u);
          goto LABEL_194;
        }
      }

      else
      {
        if (v205 != 5)
        {
          sub_24B57BA1C(v37, v38, *&v210, *&v211, *&v212, v205);
          v50 = v42;
          v51 = v41;
          v52 = v43;
          v53 = v44;
          v54 = v45;
          v39 = 5;
          goto LABEL_121;
        }

        if (v42 == v37 && v41 == v38)
        {
          v9 = v200;
          v103 = v199;
          v229 = v200;
          v230 = v199;
          v231 = v201;
          v232 = v203;
          v233 = v202;
          v97 = v37;
          v98 = v38;
          v99 = v43;
          v100 = v44;
          v101 = v45;
          v102 = 5;
          goto LABEL_193;
        }

        v76 = v38;
        v77 = v37;
        LODWORD(v196) = sub_24B5FFECC();
        sub_24B57BA1C(v77, v76, *&v210, *&v211, *&v212, 5u);
        sub_24B57BA1C(v42, v41, v43, v44, v45, 5u);
        sub_24B5AF398(v221);
        v2 = v208;
        if (v196)
        {
          v9 = v200;
          v103 = v199;
          v229 = v200;
          v230 = v199;
          v231 = v201;
          v232 = v203;
          v233 = v202;
          v104 = sub_24B57BA04(v207, v206, *&v210, *&v211, *&v212, 5u);
          goto LABEL_194;
        }
      }

      goto LABEL_122;
    }

    if (v46 != 6)
    {
      if (v46 == 7)
      {
        if (v205 != 7)
        {
          sub_24B57BA1C(v37, v38, *&v210, *&v211, *&v212, v205);
          v50 = v42;
          v51 = v41;
          v52 = v43;
          v53 = v44;
          v54 = v45;
          v39 = 7;
          goto LABEL_121;
        }

        if (v42 == v37 && v41 == v38)
        {
          v9 = v200;
          v103 = v199;
          v229 = v200;
          v230 = v199;
          v231 = v201;
          v232 = v203;
          v233 = v202;
          v97 = v37;
          v98 = v38;
          v99 = v43;
          v100 = v44;
          v101 = v45;
          v102 = 7;
          goto LABEL_193;
        }

        v48 = v38;
        v49 = v37;
        LODWORD(v196) = sub_24B5FFECC();
        sub_24B57BA1C(v49, v48, *&v210, *&v211, *&v212, 7u);
        sub_24B57BA1C(v42, v41, v43, v44, v45, 7u);
        sub_24B5AF398(v221);
        v2 = v208;
        if (v196)
        {
          v9 = v200;
          v103 = v199;
          v229 = v200;
          v230 = v199;
          v231 = v201;
          v232 = v203;
          v233 = v202;
          v104 = sub_24B57BA04(v207, v206, *&v210, *&v211, *&v212, 7u);
          goto LABEL_194;
        }

        goto LABEL_122;
      }

      if (v205 != 8)
      {
        v50 = v37;
        v51 = v38;
        v52 = *&v210;
        v53 = *&v211;
        v54 = *&v212;
        goto LABEL_121;
      }

      v2 = v208;
      if (v42 > 3u)
      {
        if (v42 <= 5u)
        {
          if (v42 == 4)
          {
            v74 = 0xE700000000000000;
            v73 = 0x7261655977656ELL;
          }

          else
          {
            v74 = 0xE500000000000000;
            v73 = 0x6564697270;
          }

          goto LABEL_150;
        }

        if (v42 == 6)
        {
          v73 = 0x576D6172676F7270;
          v74 = 0xEE0074756F6B726FLL;
          goto LABEL_150;
        }

        v73 = 0x6967736B6E616874;
        v85 = 1735289206;
      }

      else
      {
        if (v42 <= 1u)
        {
          v73 = 0x7053747369747261;
          v74 = 0xEF746867696C746FLL;
          if (v42)
          {
            v74 = 0xE90000000000006ELL;
            v73 = 0x6565776F6C6C6168;
          }

          goto LABEL_150;
        }

        if (v42 == 2)
        {
          v74 = 0xE700000000000000;
          v73 = 0x796164696C6F68;
LABEL_150:
          v86 = 0x576D6172676F7270;
          if (v197 != 6)
          {
            v86 = 0x6967736B6E616874;
          }

          v87 = 0xEE0074756F6B726FLL;
          if (v197 != 6)
          {
            v87 = 0xEC000000676E6976;
          }

          v88 = 0x7261655977656ELL;
          if (v197 != 4)
          {
            v88 = 0x6564697270;
          }

          v89 = 0xE500000000000000;
          if (v197 == 4)
          {
            v89 = 0xE700000000000000;
          }

          if (v197 <= 5)
          {
            v86 = v88;
            v87 = v89;
          }

          v90 = 0x796164696C6F68;
          if (v197 != 2)
          {
            v90 = 0x77654E72616E756CLL;
          }

          v91 = 0xEC00000072616559;
          if (v197 == 2)
          {
            v91 = 0xE700000000000000;
          }

          v92 = 0x7053747369747261;
          if (v197)
          {
            v92 = 0x6565776F6C6C6168;
          }

          v93 = 0xEF746867696C746FLL;
          if (v197)
          {
            v93 = 0xE90000000000006ELL;
          }

          if (v197 <= 1)
          {
            v90 = v92;
            v91 = v93;
          }

          if (v197 <= 3)
          {
            v94 = v90;
          }

          else
          {
            v94 = v86;
          }

          if (v197 <= 3)
          {
            v95 = v91;
          }

          else
          {
            v95 = v87;
          }

          if (v73 == v94 && v74 == v95)
          {
            v9 = v200;
            v103 = v199;
            v229 = v200;
            v230 = v199;
            v231 = v201;
            v232 = v203;
            v233 = v202;

            v104 = sub_24B5AF398(v221);
            goto LABEL_194;
          }

          v96 = sub_24B5FFECC();

          v104 = sub_24B5AF398(v221);
          if (v96)
          {
            v9 = v200;
            v103 = v199;
            v229 = v200;
            v230 = v199;
            v231 = v201;
            v232 = v203;
            v233 = v202;
            goto LABEL_194;
          }

          goto LABEL_122;
        }

        v73 = 0x77654E72616E756CLL;
        v85 = 1918985561;
      }

      v74 = v85 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      goto LABEL_150;
    }

    if (v205 != 6)
    {
      sub_24B57BA1C(v37, v38, *&v210, *&v211, *&v212, v205);
      v50 = v42;
      v51 = v41;
      v52 = v43;
      v53 = v44;
      v54 = v45;
      v39 = 6;
      goto LABEL_121;
    }

    if (v42 == v37 && v41 == v38)
    {
      v9 = v200;
      v103 = v199;
      v229 = v200;
      v230 = v199;
      v231 = v201;
      v232 = v203;
      v233 = v202;
      v97 = v37;
      v98 = v38;
      v99 = v43;
      v100 = v44;
      v101 = v45;
      v102 = 6;
      goto LABEL_193;
    }

    v62 = v38;
    v63 = v37;
    LODWORD(v196) = sub_24B5FFECC();
    sub_24B57BA1C(v63, v62, *&v210, *&v211, *&v212, 6u);
    sub_24B57BA1C(v42, v41, v43, v44, v45, 6u);
    sub_24B5AF398(v221);
    v2 = v208;
    if (v196)
    {
      v9 = v200;
      v103 = v199;
      v229 = v200;
      v230 = v199;
      v231 = v201;
      v232 = v203;
      v233 = v202;
      v104 = sub_24B57BA04(v207, v206, *&v210, *&v211, *&v212, 6u);
      goto LABEL_194;
    }

LABEL_122:
    v12 = (v12 + 1) & v204;
    v35 = v12 >> 6;
    v36 = 1 << v12;
    if ((v209[v12 >> 6] & (1 << v12)) == 0)
    {
      sub_24B57BA04(v207, v206, *&v210, *&v211, *&v212, v205);
      v14 = v203;
      v11 = v203;
      v12 = v201;
      v4 = v199;
      v9 = v199;
      v13 = v200;
      v10 = v200;
      v15 = v202;
      v7 = v202;
      v8 = v198;
      goto LABEL_6;
    }

    v38 = v206;
    v37 = v207;
  }

  if (v46 <= 1)
  {
    if (v46)
    {
      if (v205 != 1)
      {
        sub_24B57BA1C(v37, v38, *&v210, *&v211, *&v212, v205);
        v50 = v42;
        v51 = v41;
        v52 = v43;
        v53 = v44;
        v54 = v45;
        v39 = 1;
        goto LABEL_121;
      }

      v64 = *&v44;
      if (v42 == v37 && v41 == v38)
      {
        v81 = v38;
        v82 = v37;
        sub_24B57BA1C(v37, v38, *&v210, *&v211, *&v212, 1u);
        sub_24B57BA1C(v82, v81, v43, v44, v45, 1u);
        sub_24B5AF398(v221);
        v84 = *&v43 == v210 && *&v44 == v211 && *&v45 == v212;
        v2 = v208;
        if (v84)
        {
LABEL_184:
          v9 = v200;
          v103 = v199;
          v229 = v200;
          v230 = v199;
          v231 = v201;
          v232 = v203;
          v233 = v202;
          v104 = sub_24B57BA04(v207, v206, *&v210, *&v211, *&v212, 1u);
          goto LABEL_194;
        }
      }

      else
      {
        v66 = v38;
        v67 = v37;
        LODWORD(v196) = sub_24B5FFECC();
        sub_24B57BA1C(v67, v66, *&v210, *&v211, *&v212, 1u);
        sub_24B57BA1C(v42, v41, v43, v44, v45, 1u);
        sub_24B5AF398(v221);
        v2 = v208;
        if (v196)
        {
          v68 = *&v43 == v210 && v64 == v211;
          if (v68 && *&v45 == v212)
          {
            goto LABEL_184;
          }
        }
      }
    }

    else
    {
      if (v205)
      {
        sub_24B57BA1C(v37, v38, *&v210, *&v211, *&v212, v205);
        v50 = v42;
        v51 = v41;
        v52 = v43;
        v53 = v44;
        v54 = v45;
        v39 = 0;
LABEL_121:
        sub_24B57BA1C(v50, v51, v52, v53, v54, v39);
        v2 = v208;
        sub_24B5AF398(v221);
        goto LABEL_122;
      }

      if (v42 == v37 && v41 == v38)
      {
        v9 = v200;
        v103 = v199;
        v229 = v200;
        v230 = v199;
        v231 = v201;
        v232 = v203;
        v233 = v202;
        v97 = v37;
        v98 = v38;
        v99 = v43;
        v100 = v44;
        v101 = v45;
        v102 = 0;
        goto LABEL_193;
      }

      v79 = v38;
      v80 = v37;
      LODWORD(v196) = sub_24B5FFECC();
      sub_24B57BA1C(v80, v79, *&v210, *&v211, *&v212, 0);
      sub_24B57BA1C(v42, v41, v43, v44, v45, 0);
      sub_24B5AF398(v221);
      v2 = v208;
      if (v196)
      {
        v9 = v200;
        v103 = v199;
        v229 = v200;
        v230 = v199;
        v231 = v201;
        v232 = v203;
        v233 = v202;
        v104 = sub_24B57BA04(v207, v206, *&v210, *&v211, *&v212, 0);
        goto LABEL_194;
      }
    }

    goto LABEL_122;
  }

  if (v46 != 2)
  {
    if (v205 != 3)
    {
      sub_24B57BA1C(v37, v38, *&v210, *&v211, *&v212, v205);
      v50 = v42;
      v51 = v41;
      v52 = v43;
      v53 = v44;
      v54 = v45;
      v39 = 3;
      goto LABEL_121;
    }

    if (v42 == v37 && v41 == v38)
    {
      v9 = v200;
      v103 = v199;
      v229 = v200;
      v230 = v199;
      v231 = v201;
      v232 = v203;
      v233 = v202;
      v97 = v37;
      v98 = v38;
      v99 = v43;
      v100 = v44;
      v101 = v45;
      v102 = 3;
      goto LABEL_193;
    }

    v71 = v38;
    v72 = v37;
    LODWORD(v196) = sub_24B5FFECC();
    sub_24B57BA1C(v72, v71, *&v210, *&v211, *&v212, 3u);
    sub_24B57BA1C(v42, v41, v43, v44, v45, 3u);
    sub_24B5AF398(v221);
    v2 = v208;
    if (v196)
    {
      v9 = v200;
      v103 = v199;
      v229 = v200;
      v230 = v199;
      v231 = v201;
      v232 = v203;
      v233 = v202;
      v104 = sub_24B57BA04(v207, v206, *&v210, *&v211, *&v212, 3u);
      goto LABEL_194;
    }

    goto LABEL_122;
  }

  if (v205 != 2)
  {
    sub_24B57BA1C(v37, v38, *&v210, *&v211, *&v212, v205);
    v50 = v42;
    v51 = v41;
    v52 = v43;
    v53 = v44;
    v54 = v45;
    v39 = 2;
    goto LABEL_121;
  }

  if (v42 != v37 || v41 != v38)
  {
    v56 = v38;
    v57 = v37;
    LODWORD(v196) = sub_24B5FFECC();
    sub_24B57BA1C(v57, v56, *&v210, *&v211, *&v212, 2u);
    sub_24B57BA1C(v42, v41, v43, v44, v45, 2u);
    sub_24B5AF398(v221);
    v2 = v208;
    if (v196)
    {
      v9 = v200;
      v103 = v199;
      v229 = v200;
      v230 = v199;
      v231 = v201;
      v232 = v203;
      v233 = v202;
      v104 = sub_24B57BA04(v207, v206, *&v210, *&v211, *&v212, 2u);
      goto LABEL_194;
    }

    goto LABEL_122;
  }

  v9 = v200;
  v103 = v199;
  v229 = v200;
  v230 = v199;
  v231 = v201;
  v232 = v203;
  v233 = v202;
  v97 = v37;
  v98 = v38;
  v99 = v43;
  v100 = v44;
  v101 = v45;
  v102 = 2;
LABEL_193:
  sub_24B57BA1C(v97, v98, v99, v100, v101, v102);
  v104 = sub_24B5AF398(v221);
  v2 = v208;
LABEL_194:
  v105 = *(v2 + 32);
  v106 = v105 & 0x3F;
  v107 = (1 << v105) + 63;
  v108 = v107 >> 6;
  if (v106 > 0xD)
  {
    v189 = 8 * (v107 >> 6);

    v190 = v189;
    if (!swift_stdlib_isStackAllocationSafe())
    {
      v191 = swift_slowAlloc();
      memcpy(v191, v209, v190);
      v192 = sub_24B5F5408(v191, v108, v2, v12, &v229);

      MEMORY[0x24C244310](v191, -1, -1);
      v9 = v229;
      v201 = v231;
      v2 = v192;
      goto LABEL_388;
    }
  }

  v194 = v108;
  v195 = &v193;
  MEMORY[0x28223BE20](v104);
  v110 = &v193 - ((v109 + 15) & 0x3FFFFFFFFFFFFFF0);
  memcpy(v110, v209, v109);
  v111 = *&v110[8 * v35] & ~v36;
  v197 = v110;
  *&v110[8 * v35] = v111;
  v196 = *(v2 + 16) - 1;
  v112 = v198;
  v113 = v203;
  v10 = v202;
  while (2)
  {
    v114 = v113;
    while (2)
    {
      if (!v10)
      {
        v17 = v114;
        while (1)
        {
          v11 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            break;
          }

          if (v11 >= v112)
          {
            v2 = sub_24B5F6484(v197, v194, v196, v2);
            goto LABEL_388;
          }

          v10 = *(v103 + 8 * v11);
          ++v17;
          if (v10)
          {
            goto LABEL_205;
          }
        }

        __break(1u);
        goto LABEL_392;
      }

      v11 = v114;
LABEL_205:
      v115 = *(v9 + 48) + 48 * (__clz(__rbit64(v10)) | (v11 << 6));
      v117 = *v115;
      v116 = *(v115 + 8);
      v118 = (v10 - 1) & v10;
      v119 = *(v115 + 24);
      v210 = *(v115 + 16);
      v211 = *&v119;
      v212 = *(v115 + 32);
      v120 = *(v115 + 40);
      v229 = v9;
      v230 = v103;
      v231 = v201;
      v232 = v11;
      v233 = v118;
      sub_24B5FFEFC();
      v121 = v120;
      v122 = v120 <= 3;
      LODWORD(v207) = v120;
      v203 = v11;
      v202 = v118;
      *&v12 = COERCE_DOUBLE(v213);
      if (v122)
      {
        if (v121 > 1)
        {
          if (v121 == 2)
          {
            MEMORY[0x24C243ED0](2);
            v123 = v117;
            v124 = v116;
            v125 = *&v210;
            v126 = *&v211;
            v127 = *&v212;
            v128 = 2;
          }

          else
          {
            MEMORY[0x24C243ED0](3);
            v123 = v117;
            v124 = v116;
            v125 = *&v210;
            v126 = *&v211;
            v127 = *&v212;
            v128 = 3;
          }
        }

        else
        {
          if (v121)
          {
            MEMORY[0x24C243ED0](1);
            v129 = *&v210;
            v130 = *&v211;
            v131 = *&v212;
            sub_24B57BA1C(v117, v116, *&v210, *&v211, *&v212, 1u);
            sub_24B5FFB1C();
            if ((v129 & 0x7FFFFFFFFFFFFFFFLL) != 0)
            {
              v132 = v129;
            }

            else
            {
              v132 = 0;
            }

            *&v12 = COERCE_DOUBLE(v213);
            MEMORY[0x24C243EF0](v132);
            if ((v130 & 0x7FFFFFFFFFFFFFFFLL) != 0)
            {
              v133 = v130;
            }

            else
            {
              v133 = 0;
            }

            MEMORY[0x24C243EF0](v133);
            if ((v131 & 0x7FFFFFFFFFFFFFFFLL) != 0)
            {
              v134 = v131;
            }

            else
            {
              v134 = 0;
            }

            MEMORY[0x24C243EF0](v134);
            goto LABEL_232;
          }

          MEMORY[0x24C243ED0](0);
          v123 = v117;
          v124 = v116;
          v125 = *&v210;
          v126 = *&v211;
          v127 = *&v212;
          v128 = 0;
        }

LABEL_231:
        sub_24B57BA1C(v123, v124, v125, v126, v127, v128);
        sub_24B5FFB1C();
        goto LABEL_232;
      }

      if (v121 <= 5)
      {
        if (v121 == 4)
        {
          MEMORY[0x24C243ED0](4);
          v123 = v117;
          v124 = v116;
          v125 = *&v210;
          v126 = *&v211;
          v127 = *&v212;
          v128 = 4;
        }

        else
        {
          MEMORY[0x24C243ED0](5);
          v123 = v117;
          v124 = v116;
          v125 = *&v210;
          v126 = *&v211;
          v127 = *&v212;
          v128 = 5;
        }

        goto LABEL_231;
      }

      if (v121 == 6)
      {
        MEMORY[0x24C243ED0](6);
        v123 = v117;
        v124 = v116;
        v125 = *&v210;
        v126 = *&v211;
        v127 = *&v212;
        v128 = 6;
        goto LABEL_231;
      }

      if (v121 == 7)
      {
        MEMORY[0x24C243ED0](7);
        v123 = v117;
        v124 = v116;
        v125 = *&v210;
        v126 = *&v211;
        v127 = *&v212;
        v128 = 7;
        goto LABEL_231;
      }

      MEMORY[0x24C243ED0](8);
      sub_24B5FFB1C();

LABEL_232:
      v135 = sub_24B5FFF3C();
      v136 = -1 << *(v2 + 32);
      v137 = v135 & ~v136;
      v138 = v137 >> 6;
      v139 = 1 << v137;
      if (((1 << v137) & v209[v137 >> 6]) == 0)
      {
LABEL_197:
        sub_24B57BA04(v117, v116, *&v210, *&v211, *&v212, v207);
        v114 = v203;
        v9 = v200;
        v103 = v199;
        goto LABEL_198;
      }

      v206 = ~v136;
      v140 = v210;
      v141 = v211;
      v142 = v212;
      v205 = v117;
      while (2)
      {
        v148 = v207;
        v149 = *(v2 + 48) + 48 * v137;
        v151 = *v149;
        v150 = *(v149 + 8);
        v152 = *(v149 + 16);
        v12 = *(v149 + 24);
        v153 = *(v149 + 32);
        v154 = *(v149 + 40);
        *&v213[0] = v151;
        *&v213[1] = v150;
        v213[2] = v152;
        *&v213[3] = v12;
        v213[4] = v153;
        v214 = v154;
        v215 = v117;
        v216 = v116;
        v217 = *&v210;
        v218 = *&v211;
        v219 = *&v212;
        v220 = v207;
        if (v154 > 3)
        {
          if (v154 <= 5)
          {
            if (v154 != 4)
            {
              if (v207 == 5)
              {
                if (v151 == v117 && v150 == v116)
                {
                  v181 = v117;
                  v182 = v116;
                  v183 = *&v152;
                  v184 = v12;
                  v185 = *&v153;
                  v186 = 5;
                  goto LABEL_381;
                }

                LODWORD(v204) = sub_24B5FFECC();
                sub_24B57BA1C(v117, v116, *&v210, *&v211, *&v212, 5u);
                sub_24B57BA1C(v151, v150, *&v152, v12, *&v153, 5u);
                sub_24B5AF398(v213);
                v2 = v208;
                if (v204)
                {
                  sub_24B57BA04(v117, v116, *&v210, *&v211, *&v212, 5u);
                  goto LABEL_382;
                }

                goto LABEL_236;
              }

              sub_24B57BA1C(v117, v116, *&v210, *&v211, *&v212, v207);
              v143 = v151;
              v144 = v150;
              v145 = *&v152;
              v146 = v12;
              v147 = *&v153;
              v148 = 5;
              goto LABEL_235;
            }

            if (v207 != 4)
            {
              sub_24B57BA1C(v117, v116, *&v210, *&v211, *&v212, v207);
              v143 = v151;
              v144 = v150;
              v145 = *&v152;
              v146 = v12;
              v147 = *&v153;
              v148 = 4;
              goto LABEL_235;
            }

            if (v151 == v117 && v150 == v116)
            {
              v181 = v117;
              v182 = v116;
              v183 = *&v152;
              v184 = v12;
              v185 = *&v153;
              v186 = 4;
              goto LABEL_381;
            }

            LODWORD(v204) = sub_24B5FFECC();
            sub_24B57BA1C(v117, v116, *&v210, *&v211, *&v212, 4u);
            sub_24B57BA1C(v151, v150, *&v152, v12, *&v153, 4u);
            sub_24B5AF398(v213);
            v2 = v208;
            if (v204)
            {
              sub_24B57BA04(v117, v116, *&v210, *&v211, *&v212, 4u);
              goto LABEL_382;
            }

            goto LABEL_236;
          }

          if (v154 == 6)
          {
            if (v207 == 6)
            {
              if (v151 == v117 && v150 == v116)
              {
                v181 = v117;
                v182 = v116;
                v183 = *&v152;
                v184 = v12;
                v185 = *&v153;
                v186 = 6;
                goto LABEL_381;
              }

              LODWORD(v204) = sub_24B5FFECC();
              sub_24B57BA1C(v117, v116, *&v210, *&v211, *&v212, 6u);
              sub_24B57BA1C(v151, v150, *&v152, v12, *&v153, 6u);
              sub_24B5AF398(v213);
              v2 = v208;
              if (v204)
              {
                sub_24B57BA04(v117, v116, *&v210, *&v211, *&v212, 6u);
                goto LABEL_382;
              }

              goto LABEL_236;
            }

            sub_24B57BA1C(v117, v116, *&v210, *&v211, *&v212, v207);
            v143 = v151;
            v144 = v150;
            v145 = *&v152;
            v146 = v12;
            v147 = *&v153;
            v148 = 6;
            goto LABEL_235;
          }

          if (v154 == 7)
          {
            if (v207 == 7)
            {
              if (v151 == v117 && v150 == v116)
              {
                v181 = v117;
                v182 = v116;
                v183 = *&v152;
                v184 = v12;
                v185 = *&v153;
                v186 = 7;
                goto LABEL_381;
              }

              LODWORD(v204) = sub_24B5FFECC();
              sub_24B57BA1C(v117, v116, *&v210, *&v211, *&v212, 7u);
              sub_24B57BA1C(v151, v150, *&v152, v12, *&v153, 7u);
              sub_24B5AF398(v213);
              v2 = v208;
              if (v204)
              {
                sub_24B57BA04(v117, v116, *&v210, *&v211, *&v212, 7u);
                goto LABEL_382;
              }

              goto LABEL_236;
            }

            sub_24B57BA1C(v117, v116, *&v210, *&v211, *&v212, v207);
            v143 = v151;
            v144 = v150;
            v145 = *&v152;
            v146 = v12;
            v147 = *&v153;
            v148 = 7;
LABEL_235:
            sub_24B57BA1C(v143, v144, v145, v146, v147, v148);
            v2 = v208;
            sub_24B5AF398(v213);
LABEL_236:
            v137 = (v137 + 1) & v206;
            v138 = v137 >> 6;
            v139 = 1 << v137;
            if ((v209[v137 >> 6] & (1 << v137)) == 0)
            {
              goto LABEL_197;
            }

            continue;
          }

          if (v207 != 8)
          {
            v143 = v117;
            v144 = v116;
            v145 = *&v210;
            v146 = *&v211;
            v147 = *&v212;
            goto LABEL_235;
          }

          v2 = v208;
          if (v151 > 3u)
          {
            if (v151 <= 5u)
            {
              if (v151 == 4)
              {
                v165 = 0xE700000000000000;
                v164 = 0x7261655977656ELL;
              }

              else
              {
                v165 = 0xE500000000000000;
                v164 = 0x6564697270;
              }

              goto LABEL_342;
            }

            if (v151 == 6)
            {
              v164 = 0x576D6172676F7270;
              v165 = 0xEE0074756F6B726FLL;
              goto LABEL_342;
            }

            v164 = 0x6967736B6E616874;
            v170 = 1735289206;
          }

          else
          {
            if (v151 <= 1u)
            {
              v164 = 0x7053747369747261;
              v165 = 0xEF746867696C746FLL;
              if (v151)
              {
                v165 = 0xE90000000000006ELL;
                v164 = 0x6565776F6C6C6168;
              }

              goto LABEL_342;
            }

            if (v151 == 2)
            {
              v165 = 0xE700000000000000;
              v164 = 0x796164696C6F68;
LABEL_342:
              v171 = 0x576D6172676F7270;
              if (v205 != 6)
              {
                v171 = 0x6967736B6E616874;
              }

              v172 = 0xEE0074756F6B726FLL;
              if (v205 != 6)
              {
                v172 = 0xEC000000676E6976;
              }

              v173 = 0x7261655977656ELL;
              if (v205 != 4)
              {
                v173 = 0x6564697270;
              }

              v174 = 0xE500000000000000;
              if (v205 == 4)
              {
                v174 = 0xE700000000000000;
              }

              if (v205 <= 5)
              {
                v171 = v173;
                v172 = v174;
              }

              v175 = 0x796164696C6F68;
              if (v205 != 2)
              {
                v175 = 0x77654E72616E756CLL;
              }

              v176 = 0xEC00000072616559;
              if (v205 == 2)
              {
                v176 = 0xE700000000000000;
              }

              v177 = 0x7053747369747261;
              if (v205)
              {
                v177 = 0x6565776F6C6C6168;
              }

              v178 = 0xEF746867696C746FLL;
              if (v205)
              {
                v178 = 0xE90000000000006ELL;
              }

              if (v205 <= 1)
              {
                v175 = v177;
                v176 = v178;
              }

              if (v205 <= 3)
              {
                v179 = v175;
              }

              else
              {
                v179 = v171;
              }

              if (v205 <= 3)
              {
                v12 = v176;
              }

              else
              {
                v12 = v172;
              }

              if (v164 == v179 && v165 == v12)
              {

                sub_24B5AF398(v213);
                goto LABEL_382;
              }

              v180 = sub_24B5FFECC();

              sub_24B5AF398(v213);
              if (v180)
              {
                goto LABEL_382;
              }

              goto LABEL_236;
            }

            v164 = 0x77654E72616E756CLL;
            v170 = 1918985561;
          }

          v165 = v170 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          goto LABEL_342;
        }

        break;
      }

      if (v154 > 1)
      {
        if (v154 == 2)
        {
          if (v207 == 2)
          {
            if (v151 == v117 && v150 == v116)
            {
              v181 = v117;
              v182 = v116;
              v183 = *&v152;
              v184 = v12;
              v185 = *&v153;
              v186 = 2;
              goto LABEL_381;
            }

            LODWORD(v204) = sub_24B5FFECC();
            sub_24B57BA1C(v117, v116, *&v210, *&v211, *&v212, 2u);
            sub_24B57BA1C(v151, v150, *&v152, v12, *&v153, 2u);
            sub_24B5AF398(v213);
            v2 = v208;
            if (v204)
            {
              sub_24B57BA04(v117, v116, *&v210, *&v211, *&v212, 2u);
              goto LABEL_382;
            }

            goto LABEL_236;
          }

          sub_24B57BA1C(v117, v116, *&v210, *&v211, *&v212, v207);
          v143 = v151;
          v144 = v150;
          v145 = *&v152;
          v146 = v12;
          v147 = *&v153;
          v148 = 2;
          goto LABEL_235;
        }

        if (v207 != 3)
        {
          sub_24B57BA1C(v117, v116, *&v210, *&v211, *&v212, v207);
          v143 = v151;
          v144 = v150;
          v145 = *&v152;
          v146 = v12;
          v147 = *&v153;
          v148 = 3;
          goto LABEL_235;
        }

        if (v151 == v117 && v150 == v116)
        {
          v181 = v117;
          v182 = v116;
          v183 = *&v152;
          v184 = v12;
          v185 = *&v153;
          v186 = 3;
          goto LABEL_381;
        }

        LODWORD(v204) = sub_24B5FFECC();
        sub_24B57BA1C(v117, v116, *&v210, *&v211, *&v212, 3u);
        sub_24B57BA1C(v151, v150, *&v152, v12, *&v153, 3u);
        sub_24B5AF398(v213);
        v2 = v208;
        if (v204)
        {
          sub_24B57BA04(v117, v116, *&v210, *&v211, *&v212, 3u);
          goto LABEL_382;
        }

        goto LABEL_236;
      }

      if (v154)
      {
        if (v207 != 1)
        {
          sub_24B57BA1C(v117, v116, *&v210, *&v211, *&v212, v207);
          v143 = v151;
          v144 = v150;
          v145 = *&v152;
          v146 = v12;
          v147 = *&v153;
          v148 = 1;
          goto LABEL_235;
        }

        v159 = v152;
        if (v151 == v117 && v150 == v116)
        {
          sub_24B57BA1C(v117, v116, *&v210, *&v211, *&v212, 1u);
          sub_24B57BA1C(v117, v116, *&v152, v12, *&v153, 1u);
          sub_24B5AF398(v213);
          v169 = v152 == v140 && *&v12 == v141 && v153 == v142;
          v2 = v208;
          if (v169)
          {
LABEL_373:
            sub_24B57BA04(v117, v116, *&v210, *&v211, *&v212, 1u);
            goto LABEL_382;
          }
        }

        else
        {
          LODWORD(v204) = sub_24B5FFECC();
          sub_24B57BA1C(v117, v116, *&v210, *&v211, *&v212, 1u);
          sub_24B57BA1C(v151, v150, *&v152, v12, *&v153, 1u);
          sub_24B5AF398(v213);
          v2 = v208;
          if (v204)
          {
            v161 = v159 == v140 && *&v12 == v141;
            if (v161 && v153 == v142)
            {
              goto LABEL_373;
            }
          }
        }

        goto LABEL_236;
      }

      if (v207)
      {
        sub_24B57BA1C(v117, v116, *&v210, *&v211, *&v212, v207);
        v143 = v151;
        v144 = v150;
        v145 = *&v152;
        v146 = v12;
        v147 = *&v153;
        v148 = 0;
        goto LABEL_235;
      }

      if (v151 != v117 || v150 != v116)
      {
        LODWORD(v204) = sub_24B5FFECC();
        sub_24B57BA1C(v117, v116, *&v210, *&v211, *&v212, 0);
        sub_24B57BA1C(v151, v150, *&v152, v12, *&v153, 0);
        sub_24B5AF398(v213);
        v2 = v208;
        if (v204)
        {
          sub_24B57BA04(v117, v116, *&v210, *&v211, *&v212, 0);
          goto LABEL_382;
        }

        goto LABEL_236;
      }

      v181 = v117;
      v182 = v116;
      v183 = *&v152;
      v184 = v12;
      v185 = *&v153;
      v186 = 0;
LABEL_381:
      sub_24B57BA1C(v181, v182, v183, v184, v185, v186);
      sub_24B5AF398(v213);
      v2 = v208;
LABEL_382:
      v187 = v197[v138];
      v197[v138] = v187 & ~v139;
      v103 = v199;
      if ((v187 & v139) == 0)
      {
        v114 = v203;
        v9 = v200;
LABEL_198:
        v112 = v198;
        v10 = v202;
        continue;
      }

      break;
    }

    v9 = v200;
    v112 = v198;
    v113 = v203;
    if (__OFSUB__(v196, 1))
    {
      __break(1u);
    }

    v10 = v202;
    if (v196 != 1)
    {
      --v196;
      continue;
    }

    break;
  }

LABEL_393:

  v2 = MEMORY[0x277D84FA0];
LABEL_388:
  v13 = v9;
LABEL_389:
  sub_24B5A1880(v13);
  return v2;
}

uint64_t sub_24B5F527C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = a1[1];
  v29 = *a1;
  v30[0] = v5;
  *(v30 + 9) = *(a1 + 25);
  v6 = *v2;
  sub_24B5FFEFC();
  FilterItem.hash(into:)(&v23);
  result = sub_24B5FFF3C();
  v8 = -1 << *(v6 + 32);
  v9 = result & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = *(v6 + 48) + 48 * v9;
      v12 = *(v11 + 8);
      v13 = *(v11 + 16);
      v14 = *(v11 + 24);
      v15 = *(v11 + 32);
      v23 = *v11;
      v24 = v12;
      v25 = v13;
      v26 = v14;
      v27 = v15;
      v28 = *(v11 + 40);
      sub_24B57BA1C(v23, v12, v13, v14, v15, v28);
      v16 = _s16FitnessFiltering10FilterItemO2eeoiySbAC_ACtFZ_0(&v23, &v29);
      result = sub_24B57BA04(v23, v24, v25, v26, v27, v28);
      if (v16)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    v23 = *v3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_24B5F12E4();
      v18 = v23;
    }

    v19 = *(v18 + 48) + 48 * v9;
    v20 = *(v19 + 32);
    v21 = *(v19 + 40);
    v22 = *(v19 + 16);
    *a2 = *v19;
    *(a2 + 16) = v22;
    *(a2 + 32) = v20;
    *(a2 + 40) = v21;
    result = sub_24B5F68F0(v9);
    *v3 = v23;
  }

  else
  {
LABEL_5:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 40) = -1;
  }

  return result;
}

unint64_t *sub_24B5F5408(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a5;
  v6 = *(a3 + 16);
  v100 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v7 = v6 - 1;
  v112 = a3 + 56;
LABEL_2:
  v99 = v7;
LABEL_4:
  while (1)
  {
    v8 = v5[3];
    v9 = v5[4];
    if (!v9)
    {
      break;
    }

    v10 = v5[3];
LABEL_10:
    v13 = *(*v5 + 48) + 48 * (__clz(__rbit64(v9)) | (v10 << 6));
    v116 = *v13;
    v115 = *(v13 + 8);
    v14 = *(v13 + 24);
    v117 = *(v13 + 16);
    v126 = *(v13 + 32);
    v15 = *(v13 + 40);
    v5[3] = v10;
    v5[4] = (v9 - 1) & v9;
    sub_24B5FFEFC();
    v113 = v15;
    if (v15 > 3)
    {
      if (v15 <= 5)
      {
        if (v15 == 4)
        {
          MEMORY[0x24C243ED0](4);
          v16 = v116;
          v17 = v115;
          v18 = v117;
          v19 = v14;
          v20 = *&v126;
          v21 = 4;
        }

        else
        {
          MEMORY[0x24C243ED0](5);
          v16 = v116;
          v17 = v115;
          v18 = v117;
          v19 = v14;
          v20 = *&v126;
          v21 = 5;
        }
      }

      else if (v15 == 6)
      {
        MEMORY[0x24C243ED0](6);
        v16 = v116;
        v17 = v115;
        v18 = v117;
        v19 = v14;
        v20 = *&v126;
        v21 = 6;
      }

      else
      {
        if (v15 != 7)
        {
          MEMORY[0x24C243ED0](8);
          sub_24B5FFB1C();

          goto LABEL_37;
        }

        MEMORY[0x24C243ED0](7);
        v16 = v116;
        v17 = v115;
        v18 = v117;
        v19 = v14;
        v20 = *&v126;
        v21 = 7;
      }

      goto LABEL_36;
    }

    if (v15 > 1)
    {
      if (v15 == 2)
      {
        MEMORY[0x24C243ED0](2);
        v16 = v116;
        v17 = v115;
        v18 = v117;
        v19 = v14;
        v20 = *&v126;
        v21 = 2;
      }

      else
      {
        MEMORY[0x24C243ED0](3);
        v16 = v116;
        v17 = v115;
        v18 = v117;
        v19 = v14;
        v20 = *&v126;
        v21 = 3;
      }

      goto LABEL_36;
    }

    if (!v15)
    {
      MEMORY[0x24C243ED0](0);
      v16 = v116;
      v17 = v115;
      v18 = v117;
      v19 = v14;
      v20 = *&v126;
      v21 = 0;
LABEL_36:
      sub_24B57BA1C(v16, v17, v18, v19, v20, v21);
      sub_24B5FFB1C();
      goto LABEL_37;
    }

    MEMORY[0x24C243ED0](1);
    v22 = *&v126;
    sub_24B57BA1C(v116, v115, v117, v14, *&v126, 1u);
    sub_24B5FFB1C();
    if ((v117 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v23 = v117;
    }

    else
    {
      v23 = 0;
    }

    MEMORY[0x24C243EF0](v23);
    if ((v14 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v24 = v14;
    }

    else
    {
      v24 = 0;
    }

    MEMORY[0x24C243EF0](v24);
    if ((v22 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v25 = v22;
    }

    else
    {
      v25 = 0;
    }

    MEMORY[0x24C243EF0](v25);
LABEL_37:
    v26 = sub_24B5FFF3C();
    v27 = -1 << *(a3 + 32);
    v28 = v26 & ~v27;
    v29 = v28 >> 6;
    v30 = 1 << v28;
    if (((1 << v28) & *(v112 + 8 * (v28 >> 6))) != 0)
    {
      v111 = ~v27;
      v31 = *&v14;
      v32 = v126;
      v33 = v115;
      v34 = v116;
      v110 = v14;
      while (1)
      {
        v35 = v113;
        v36 = *(a3 + 48) + 48 * v28;
        v37 = *v36;
        v38 = *(v36 + 8);
        v39 = *(v36 + 16);
        v40 = *(v36 + 24);
        v41 = *(v36 + 32);
        v42 = *(v36 + 40);
        v118[0] = v37;
        v118[1] = v38;
        v118[2] = v39;
        v118[3] = v40;
        v118[4] = v41;
        v119 = v42;
        v120 = v34;
        v121 = v33;
        v122 = v117;
        v123 = v14;
        v124 = *&v126;
        v125 = v113;
        if (v42 <= 3)
        {
          if (v42 > 1)
          {
            if (v42 == 2)
            {
              if (v113 != 2)
              {
                sub_24B57BA1C(v34, v33, v117, v14, *&v126, v113);
                v46 = v37;
                v47 = v38;
                v48 = v39;
                v49 = v40;
                v50 = v41;
                v35 = 2;
                goto LABEL_111;
              }

              if (v37 == v34 && v38 == v33)
              {
                v90 = v34;
                v91 = v33;
                v92 = v39;
                v93 = v40;
                v94 = v41;
                v95 = 2;
                goto LABEL_180;
              }

              v52 = v33;
              v103 = sub_24B5FFECC();
              v53 = v52;
              v14 = v110;
              sub_24B57BA1C(v116, v53, v117, v110, *&v126, 2u);
              sub_24B57BA1C(v37, v38, v39, v40, v41, 2u);
              sub_24B5AF398(v118);
              if (v103)
              {
                result = sub_24B57BA04(v116, v115, v117, v110, *&v126, 2u);
                goto LABEL_182;
              }
            }

            else
            {
              if (v113 != 3)
              {
                sub_24B57BA1C(v34, v33, v117, v14, *&v126, v113);
                v46 = v37;
                v47 = v38;
                v48 = v39;
                v49 = v40;
                v50 = v41;
                v35 = 3;
                goto LABEL_111;
              }

              if (v37 == v34 && v38 == v33)
              {
                v90 = v34;
                v91 = v33;
                v92 = v39;
                v93 = v40;
                v94 = v41;
                v95 = 3;
LABEL_180:
                sub_24B57BA1C(v90, v91, v92, v93, v94, v95);
LABEL_181:
                result = sub_24B5AF398(v118);
LABEL_182:
                v96 = v100[v29];
                v100[v29] = v96 & ~v30;
                if ((v96 & v30) == 0)
                {
LABEL_183:
                  v5 = a5;
                  goto LABEL_4;
                }

                v7 = v99 - 1;
                v5 = a5;
                if (__OFSUB__(v99, 1))
                {
LABEL_192:
                  __break(1u);
                  return result;
                }

                if (v99 == 1)
                {
                  return MEMORY[0x277D84FA0];
                }

                goto LABEL_2;
              }

              v64 = v33;
              v107 = sub_24B5FFECC();
              v65 = v64;
              v14 = v110;
              sub_24B57BA1C(v116, v65, v117, v110, *&v126, 3u);
              sub_24B57BA1C(v37, v38, v39, v40, v41, 3u);
              sub_24B5AF398(v118);
              if (v107)
              {
                result = sub_24B57BA04(v116, v115, v117, v110, *&v126, 3u);
                goto LABEL_182;
              }
            }
          }

          else if (v42)
          {
            if (v113 != 1)
            {
              sub_24B57BA1C(v34, v33, v117, v14, *&v126, v113);
              v46 = v37;
              v47 = v38;
              v48 = v39;
              v49 = v40;
              v50 = v41;
              v35 = 1;
              goto LABEL_111;
            }

            if (v37 == v34 && v38 == v33)
            {
              v74 = v33;
              v75 = v34;
              sub_24B57BA1C(v34, v33, v117, v14, *&v126, 1u);
              sub_24B57BA1C(v75, v74, v39, v40, v41, 1u);
              sub_24B5AF398(v118);
            }

            else
            {
              v61 = v33;
              v106 = sub_24B5FFECC();
              v62 = v61;
              v14 = v110;
              sub_24B57BA1C(v116, v62, v117, v110, *&v126, 1u);
              sub_24B57BA1C(v37, v38, v39, v40, v41, 1u);
              sub_24B5AF398(v118);
              if ((v106 & 1) == 0)
              {
                goto LABEL_112;
              }
            }

            if (*&v39 == *&v117 && *&v40 == v31 && *&v41 == v32)
            {
              result = sub_24B57BA04(v116, v115, v117, v14, *&v126, 1u);
              goto LABEL_182;
            }
          }

          else
          {
            if (v113)
            {
              sub_24B57BA1C(v34, v33, v117, v14, *&v126, v113);
              v46 = v37;
              v47 = v38;
              v48 = v39;
              v49 = v40;
              v50 = v41;
              v35 = 0;
LABEL_111:
              sub_24B57BA1C(v46, v47, v48, v49, v50, v35);
              sub_24B5AF398(v118);
              goto LABEL_112;
            }

            if (v37 == v34 && v38 == v33)
            {
              v90 = v34;
              v91 = v33;
              v92 = v39;
              v93 = v40;
              v94 = v41;
              v95 = 0;
              goto LABEL_180;
            }

            v72 = v33;
            v109 = sub_24B5FFECC();
            v73 = v72;
            v14 = v110;
            sub_24B57BA1C(v116, v73, v117, v110, *&v126, 0);
            sub_24B57BA1C(v37, v38, v39, v40, v41, 0);
            sub_24B5AF398(v118);
            if (v109)
            {
              result = sub_24B57BA04(v116, v115, v117, v110, *&v126, 0);
              goto LABEL_182;
            }
          }
        }

        else if (v42 <= 5)
        {
          if (v42 == 4)
          {
            if (v113 != 4)
            {
              sub_24B57BA1C(v34, v33, v117, v14, *&v126, v113);
              v46 = v37;
              v47 = v38;
              v48 = v39;
              v49 = v40;
              v50 = v41;
              v35 = 4;
              goto LABEL_111;
            }

            if (v37 == v34 && v38 == v33)
            {
              v90 = v34;
              v91 = v33;
              v92 = v39;
              v93 = v40;
              v94 = v41;
              v95 = 4;
              goto LABEL_180;
            }

            v55 = v33;
            v104 = sub_24B5FFECC();
            v56 = v55;
            v14 = v110;
            sub_24B57BA1C(v116, v56, v117, v110, *&v126, 4u);
            sub_24B57BA1C(v37, v38, v39, v40, v41, 4u);
            sub_24B5AF398(v118);
            if (v104)
            {
              result = sub_24B57BA04(v116, v115, v117, v110, *&v126, 4u);
              goto LABEL_182;
            }
          }

          else
          {
            if (v113 != 5)
            {
              sub_24B57BA1C(v34, v33, v117, v14, *&v126, v113);
              v46 = v37;
              v47 = v38;
              v48 = v39;
              v49 = v40;
              v50 = v41;
              v35 = 5;
              goto LABEL_111;
            }

            if (v37 == v34 && v38 == v33)
            {
              v90 = v34;
              v91 = v33;
              v92 = v39;
              v93 = v40;
              v94 = v41;
              v95 = 5;
              goto LABEL_180;
            }

            v69 = v33;
            v108 = sub_24B5FFECC();
            v70 = v69;
            v14 = v110;
            sub_24B57BA1C(v116, v70, v117, v110, *&v126, 5u);
            sub_24B57BA1C(v37, v38, v39, v40, v41, 5u);
            sub_24B5AF398(v118);
            if (v108)
            {
              result = sub_24B57BA04(v116, v115, v117, v110, *&v126, 5u);
              goto LABEL_182;
            }
          }
        }

        else if (v42 == 6)
        {
          if (v113 != 6)
          {
            sub_24B57BA1C(v34, v33, v117, v14, *&v126, v113);
            v46 = v37;
            v47 = v38;
            v48 = v39;
            v49 = v40;
            v50 = v41;
            v35 = 6;
            goto LABEL_111;
          }

          if (v37 == v34 && v38 == v33)
          {
            v90 = v34;
            v91 = v33;
            v92 = v39;
            v93 = v40;
            v94 = v41;
            v95 = 6;
            goto LABEL_180;
          }

          v58 = v33;
          v105 = sub_24B5FFECC();
          v59 = v58;
          v14 = v110;
          sub_24B57BA1C(v116, v59, v117, v110, *&v126, 6u);
          sub_24B57BA1C(v37, v38, v39, v40, v41, 6u);
          sub_24B5AF398(v118);
          if (v105)
          {
            result = sub_24B57BA04(v116, v115, v117, v110, *&v126, 6u);
            goto LABEL_182;
          }
        }

        else
        {
          if (v42 != 7)
          {
            if (v113 != 8)
            {
              v46 = v34;
              v47 = v33;
              v48 = v117;
              v49 = v14;
              v50 = *&v126;
              goto LABEL_111;
            }

            if (v37 > 3u)
            {
              if (v37 <= 5u)
              {
                if (v37 == 4)
                {
                  v67 = 0xE700000000000000;
                  v66 = 0x7261655977656ELL;
                }

                else
                {
                  v67 = 0xE500000000000000;
                  v66 = 0x6564697270;
                }

                goto LABEL_141;
              }

              if (v37 == 6)
              {
                v66 = 0x576D6172676F7270;
                v67 = 0xEE0074756F6B726FLL;
                goto LABEL_141;
              }

              v66 = 0x6967736B6E616874;
              v78 = 1735289206;
            }

            else
            {
              if (v37 <= 1u)
              {
                v66 = 0x7053747369747261;
                v67 = 0xEF746867696C746FLL;
                if (v37)
                {
                  v67 = 0xE90000000000006ELL;
                  v66 = 0x6565776F6C6C6168;
                }

                goto LABEL_141;
              }

              if (v37 == 2)
              {
                v67 = 0xE700000000000000;
                v66 = 0x796164696C6F68;
LABEL_141:
                v79 = 0x576D6172676F7270;
                if (v116 != 6)
                {
                  v79 = 0x6967736B6E616874;
                }

                v80 = 0xEE0074756F6B726FLL;
                if (v116 != 6)
                {
                  v80 = 0xEC000000676E6976;
                }

                v81 = 0x7261655977656ELL;
                if (v116 != 4)
                {
                  v81 = 0x6564697270;
                }

                v82 = 0xE500000000000000;
                if (v116 == 4)
                {
                  v82 = 0xE700000000000000;
                }

                if (v116 <= 5u)
                {
                  v79 = v81;
                  v80 = v82;
                }

                v83 = 0x796164696C6F68;
                if (v116 != 2)
                {
                  v83 = 0x77654E72616E756CLL;
                }

                v84 = 0xEC00000072616559;
                if (v116 == 2)
                {
                  v84 = 0xE700000000000000;
                }

                v85 = 0x7053747369747261;
                if (v116)
                {
                  v85 = 0x6565776F6C6C6168;
                }

                v86 = 0xEF746867696C746FLL;
                if (v116)
                {
                  v86 = 0xE90000000000006ELL;
                }

                if (v116 <= 1u)
                {
                  v83 = v85;
                  v84 = v86;
                }

                if (v116 <= 3u)
                {
                  v87 = v83;
                }

                else
                {
                  v87 = v79;
                }

                if (v116 <= 3u)
                {
                  v88 = v84;
                }

                else
                {
                  v88 = v80;
                }

                if (v66 == v87 && v67 == v88)
                {

                  goto LABEL_181;
                }

                v89 = sub_24B5FFECC();

                result = sub_24B5AF398(v118);
                if (v89)
                {
                  goto LABEL_182;
                }

                goto LABEL_112;
              }

              v66 = 0x77654E72616E756CLL;
              v78 = 1918985561;
            }

            v67 = v78 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            goto LABEL_141;
          }

          if (v113 != 7)
          {
            sub_24B57BA1C(v34, v33, v117, v14, *&v126, v113);
            v46 = v37;
            v47 = v38;
            v48 = v39;
            v49 = v40;
            v50 = v41;
            v35 = 7;
            goto LABEL_111;
          }

          if (v37 == v34 && v38 == v33)
          {
            v90 = v34;
            v91 = v33;
            v92 = v39;
            v93 = v40;
            v94 = v41;
            v95 = 7;
            goto LABEL_180;
          }

          v44 = v33;
          v102 = sub_24B5FFECC();
          v45 = v44;
          v14 = v110;
          sub_24B57BA1C(v116, v45, v117, v110, *&v126, 7u);
          sub_24B57BA1C(v37, v38, v39, v40, v41, 7u);
          sub_24B5AF398(v118);
          if (v102)
          {
            result = sub_24B57BA04(v116, v115, v117, v110, *&v126, 7u);
            goto LABEL_182;
          }
        }

LABEL_112:
        v28 = (v28 + 1) & v111;
        v29 = v28 >> 6;
        v30 = 1 << v28;
        if ((*(v112 + 8 * (v28 >> 6)) & (1 << v28)) == 0)
        {
          result = sub_24B57BA04(v116, v115, v117, v14, *&v126, v113);
          goto LABEL_183;
        }

        v33 = v115;
        v34 = v116;
      }
    }

    result = sub_24B57BA04(v116, v115, v117, v14, *&v126, v113);
  }

  v11 = (v5[2] + 64) >> 6;
  v12 = v5[3];
  while (1)
  {
    v10 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_192;
    }

    if (v10 >= v11)
    {
      break;
    }

    v9 = *(v5[1] + 8 * v10);
    ++v12;
    if (v9)
    {
      goto LABEL_10;
    }
  }

  if (v11 <= v8 + 1)
  {
    v97 = v8 + 1;
  }

  else
  {
    v97 = (v5[2] + 64) >> 6;
  }

  v5[3] = v97 - 1;
  v5[4] = 0;

  return sub_24B5F6484(v100, a2, v99, a3);
}

uint64_t sub_24B5F6484(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018CD8, &qword_24B601160);
  result = sub_24B5FFCCC();
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
  v33 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(v4 + 48) + 48 * (v13 | (v11 << 6));
    v17 = *(v16 + 8);
    v36 = *(v16 + 16);
    v37 = *v16;
    v35 = *(v16 + 24);
    v34 = *(v16 + 32);
    v18 = *(v16 + 40);
    sub_24B5FFEFC();
    if (v18 > 3)
    {
      if (v18 <= 5)
      {
        if (v18 == 4)
        {
          v19 = 4;
        }

        else
        {
          v19 = 5;
        }
      }

      else if (v18 == 6)
      {
        v19 = 6;
      }

      else
      {
        if (v18 != 7)
        {
          MEMORY[0x24C243ED0](8);
          sub_24B5FFB1C();

          goto LABEL_44;
        }

        v19 = 7;
      }

      goto LABEL_43;
    }

    if (v18 > 1)
    {
      if (v18 == 2)
      {
        v19 = 2;
      }

      else
      {
        v19 = 3;
      }

      goto LABEL_43;
    }

    if (!v18)
    {
      v19 = 0;
LABEL_43:
      MEMORY[0x24C243ED0](v19);

      sub_24B5FFB1C();
      goto LABEL_44;
    }

    MEMORY[0x24C243ED0](1);

    sub_24B5FFB1C();
    if ((v36 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v20 = v36;
    }

    else
    {
      v20 = 0;
    }

    MEMORY[0x24C243EF0](v20);
    if ((v35 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v21 = v35;
    }

    else
    {
      v21 = 0;
    }

    MEMORY[0x24C243EF0](v21);
    if ((v34 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v22 = v34;
    }

    else
    {
      v22 = 0;
    }

    MEMORY[0x24C243EF0](v22);
LABEL_44:
    result = sub_24B5FFF3C();
    v23 = -1 << *(v9 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_54;
        }
      }

      goto LABEL_58;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_54:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = *(v9 + 48) + 48 * v26;
    *v31 = v37;
    *(v31 + 8) = v17;
    *(v31 + 16) = v36;
    *(v31 + 24) = v35;
    *(v31 + 32) = v34;
    *(v31 + 40) = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_59;
    }

    v4 = v33;
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
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
  return result;
}

unint64_t sub_24B5F68F0(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_24B5FFC8C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v31 = (v8 + 1) & v7;
      v32 = v7;
      v33 = v4;
      v34 = v3;
      while (1)
      {
        v11 = 48 * v6;
        v12 = *(v3 + 48) + 48 * v6;
        v13 = *v12;
        v14 = *(v12 + 8);
        v15 = *(v12 + 16);
        v16 = *(v12 + 24);
        v17 = *(v12 + 32);
        v18 = *(v12 + 40);
        sub_24B5FFEFC();
        if (v18 > 3)
        {
          if (v18 <= 5)
          {
            if (v18 == 4)
            {
              v19 = 4;
            }

            else
            {
              v19 = 5;
            }
          }

          else if (v18 == 6)
          {
            v19 = 6;
          }

          else
          {
            if (v18 != 7)
            {
              MEMORY[0x24C243ED0](8);
              sub_24B5FFB1C();

              goto LABEL_33;
            }

            v19 = 7;
          }

          goto LABEL_32;
        }

        if (v18 > 1)
        {
          break;
        }

        if (!v18)
        {
          v19 = 0;
LABEL_32:
          MEMORY[0x24C243ED0](v19);

          sub_24B5FFB1C();
          goto LABEL_33;
        }

        MEMORY[0x24C243ED0](1);

        sub_24B5FFB1C();
        if ((v15 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v20 = v15;
        }

        else
        {
          v20 = 0;
        }

        MEMORY[0x24C243EF0](v20);
        if ((v16 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v21 = v16;
        }

        else
        {
          v21 = 0;
        }

        MEMORY[0x24C243EF0](v21);
        if ((v17 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v22 = v17;
        }

        else
        {
          v22 = 0;
        }

        MEMORY[0x24C243EF0](v22);
LABEL_33:
        v23 = sub_24B5FFF3C();
        sub_24B57BA04(v13, v14, v15, v16, v17, v18);
        v24 = v23 & v32;
        if (v2 >= v31)
        {
          v4 = v33;
          v3 = v34;
          if (v24 < v31)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v4 = v33;
          v3 = v34;
          if (v24 >= v31)
          {
            goto LABEL_38;
          }
        }

        if (v2 >= v24)
        {
LABEL_38:
          v25 = *(v3 + 48);
          v26 = (v25 + 48 * v2);
          v27 = (v25 + v11);
          if (48 * v2 < v11 || v26 >= v27 + 3 || v2 != v6)
          {
            v9 = *v27;
            v10 = v27[2];
            v26[1] = v27[1];
            v26[2] = v10;
            *v26 = v9;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v32;
        if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
        {
          goto LABEL_42;
        }
      }

      if (v18 == 2)
      {
        v19 = 2;
      }

      else
      {
        v19 = 3;
      }

      goto LABEL_32;
    }

LABEL_42:

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v28 = *(v3 + 16);
  v29 = __OFSUB__(v28, 1);
  v30 = v28 - 1;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v30;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_24B5F6D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 != 0xFF)
  {
    return sub_24B57BA04(a1, a2, a3, a4, a5, a6);
  }

  return a1;
}

BOOL static FilterLayout.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x24C242E90]() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for FilterLayout(0);
  return *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20));
}

uint64_t type metadata accessor for FilterLayout(uint64_t a1)
{
  result = qword_27F01A860;
  if (!qword_27F01A860)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FilterLayout.init(contentMargins:sizeClass:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_24B5FEEFC();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for FilterLayout(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_24B5F6E40()
{
  if (*v0)
  {
    return 0x73616C43657A6973;
  }

  else
  {
    return 0x4D746E65746E6F63;
  }
}

uint64_t sub_24B5F6E8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4D746E65746E6F63 && a2 == 0xEE00736E69677261;
  if (v6 || (sub_24B5FFECC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x73616C43657A6973 && a2 == 0xE900000000000073)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24B5FFECC();

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

uint64_t sub_24B5F6F78(uint64_t a1)
{
  v2 = sub_24B5F71C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5F6FB4(uint64_t a1)
{
  v2 = sub_24B5F71C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FilterLayout.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A820, &qword_24B6092F0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B5F71C0();
  sub_24B5FFF5C();
  v10[15] = 0;
  sub_24B5FEEFC();
  sub_24B5F7A54(&qword_27F01A830, MEMORY[0x277D096F0], MEMORY[0x277D096F8]);
  sub_24B5FFE8C();
  if (!v2)
  {
    v10[14] = *(v3 + *(type metadata accessor for FilterLayout(0) + 20));
    v10[13] = 1;
    sub_24B5F7214();
    sub_24B5FFE8C();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_24B5F71C0()
{
  result = qword_27F01A828;
  if (!qword_27F01A828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A828);
  }

  return result;
}

unint64_t sub_24B5F7214()
{
  result = qword_27F01A838;
  if (!qword_27F01A838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A838);
  }

  return result;
}

uint64_t FilterLayout.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v27 = sub_24B5FEEFC();
  v24 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A840, &qword_24B6092F8);
  v7 = *(v6 - 8);
  v25 = v6;
  v26 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  v10 = type metadata accessor for FilterLayout(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B5F71C0();
  sub_24B5FFF4C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = v10;
  v13 = v12;
  v14 = v24;
  v30 = 0;
  sub_24B5F7A54(&qword_27F01A848, MEMORY[0x277D096F0], MEMORY[0x277D09710]);
  v15 = v27;
  v16 = v25;
  sub_24B5FFDDC();
  v17 = *(v14 + 32);
  v21 = v13;
  v17(v13, v5, v15);
  v28 = 1;
  sub_24B5F75C8();
  sub_24B5FFDDC();
  (*(v26 + 8))(v9, v16);
  v18 = v21;
  *(v21 + *(v22 + 20)) = v29;
  sub_24B5F761C(v18, v23);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24B5F7680(v18);
}

unint64_t sub_24B5F75C8()
{
  result = qword_27F01A850;
  if (!qword_27F01A850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A850);
  }

  return result;
}

uint64_t sub_24B5F761C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FilterLayout(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B5F7680(uint64_t a1)
{
  v2 = type metadata accessor for FilterLayout(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FilterLayout.hash(into:)(uint64_t a1)
{
  sub_24B5FEEFC();
  sub_24B5F7A54(&qword_27F0198B8, MEMORY[0x277D096F0], MEMORY[0x277D09700]);
  sub_24B5FFA4C();
  v2 = type metadata accessor for FilterLayout(0);
  return MEMORY[0x24C243ED0](*(v1 + *(v2 + 20)));
}

uint64_t FilterLayout.hashValue.getter()
{
  sub_24B5FFEFC();
  sub_24B5FEEFC();
  sub_24B5F7A54(&qword_27F0198B8, MEMORY[0x277D096F0], MEMORY[0x277D09700]);
  sub_24B5FFA4C();
  v1 = type metadata accessor for FilterLayout(0);
  MEMORY[0x24C243ED0](*(v0 + *(v1 + 20)));
  return sub_24B5FFF3C();
}

uint64_t sub_24B5F783C(uint64_t a1)
{
  sub_24B5FFEFC();
  sub_24B5FEEFC();
  sub_24B5F7A54(&qword_27F0198B8, MEMORY[0x277D096F0], MEMORY[0x277D09700]);
  sub_24B5FFA4C();
  MEMORY[0x24C243ED0](*(v1 + *(a1 + 20)));
  return sub_24B5FFF3C();
}

uint64_t sub_24B5F78E0(uint64_t a1, uint64_t a2)
{
  sub_24B5FEEFC();
  sub_24B5F7A54(&qword_27F0198B8, MEMORY[0x277D096F0], MEMORY[0x277D09700]);
  sub_24B5FFA4C();
  return MEMORY[0x24C243ED0](*(v2 + *(a2 + 20)));
}

uint64_t sub_24B5F796C(uint64_t a1, uint64_t a2)
{
  sub_24B5FFEFC();
  sub_24B5FEEFC();
  sub_24B5F7A54(&qword_27F0198B8, MEMORY[0x277D096F0], MEMORY[0x277D09700]);
  sub_24B5FFA4C();
  MEMORY[0x24C243ED0](*(v2 + *(a2 + 20)));
  return sub_24B5FFF3C();
}

uint64_t sub_24B5F7A54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24B5F7B18(uint64_t a1)
{
  result = sub_24B5FEEFC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24B5F7BA0()
{
  result = qword_27F01A870;
  if (!qword_27F01A870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A870);
  }

  return result;
}

unint64_t sub_24B5F7BF8()
{
  result = qword_27F01A878;
  if (!qword_27F01A878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A878);
  }

  return result;
}

unint64_t sub_24B5F7C50()
{
  result = qword_27F01A880;
  if (!qword_27F01A880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A880);
  }

  return result;
}

uint64_t sub_24B5F7CDC(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x28223BE20](TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_24B5FF95C();
}

uint64_t sub_24B5F7EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_24B5FF1FC();
  MEMORY[0x28223BE20](v7);
  (*(*(a2 - 8) + 16))(&v10 - v8, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_24B5FF20C();
}

uint64_t sub_24B5F7FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_24B5FF1FC();
  MEMORY[0x28223BE20](v7);
  (*(*(a3 - 8) + 16))(&v10 - v8, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_24B5FF20C();
}

uint64_t FilterResultsView.init(store:canvasViewBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  *a7 = sub_24B5D864C;
  *(a7 + 8) = v13;
  *(a7 + 16) = 0;
  type metadata accessor for FilterResultsView(0, a5, a6, v14);

  a3(v15);
}

uint64_t sub_24B5F817C(void *a1)
{
  v2 = sub_24B5FEE1C();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_24B5FFADC();
  MEMORY[0x28223BE20](v3 - 8);
  if (*a1 && sub_24B58CF38(6u, a1[8]))
  {
    sub_24B5FFA6C();
    if (qword_27F0186F0 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_7;
  }

  sub_24B5FFA6C();
  if (qword_27F0186F0 != -1)
  {
LABEL_7:
    swift_once();
  }

LABEL_6:
  qword_27F02AD70;
  sub_24B5D83A4();
  swift_getKeyPath();
  sub_24B5FF9AC();

  return sub_24B5FFAFC();
}

uint64_t FilterResultsView.body.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v42 = a2;
  v38 = *(a1 - 8);
  v45 = *(v38 + 64);
  MEMORY[0x28223BE20](a1);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A888, &qword_24B6094F0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A890, &qword_24B6094F8);
  v43 = *(a1 + 16);
  swift_getTupleTypeMetadata3();
  sub_24B5FF94C();
  sub_24B5FFC3C();
  v47[37] = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B5FF87C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A160, &qword_24B609500);
  v6 = sub_24B5FF21C();
  v41 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v29 - v7;
  v34 = &v29 - v7;
  WitnessTable = swift_getWitnessTable();
  v10 = sub_24B58085C(&qword_27F01A170, &qword_27F01A160, &qword_24B609500, MEMORY[0x277CDF3A0]);
  v47[35] = WitnessTable;
  v47[36] = v10;
  v36 = v6;
  v11 = swift_getWitnessTable();
  v35 = v11;
  v44 = sub_24B5C3F48();
  v48[0] = v6;
  v48[1] = &type metadata for FilterLoadState;
  v48[2] = v11;
  v48[3] = v44;
  v37 = MEMORY[0x277CE0E30];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v13 = *(OpaqueTypeMetadata2 - 8);
  v39 = OpaqueTypeMetadata2;
  v40 = v13;
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v33 = &v29 - v14;
  v15 = a1;
  sub_24B5F8950(a1, v8);
  v32 = v2;
  sub_24B5D83A4();
  swift_getKeyPath();
  sub_24B5FF9AC();

  memcpy(v46, v47, sizeof(v46));
  v16 = v38;
  v31 = *(v38 + 16);
  v29 = v5;
  v31(v5, v2, v15);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v18 = swift_allocObject();
  v30 = *(v15 + 24);
  v19 = v30;
  *(v18 + 16) = v43;
  *(v18 + 24) = v19;
  v38 = *(v16 + 32);
  (v38)(v18 + v17, v5, v15);
  v20 = v35;
  v21 = v36;
  v22 = v34;
  sub_24B5FF73C();

  memcpy(v48, v46, 0x111uLL);
  sub_24B58FECC(v48);
  (*(v41 + 8))(v22, v21);
  v23 = v29;
  v31(v29, v32, v15);
  v24 = swift_allocObject();
  v25 = v30;
  *(v24 + 16) = v43;
  *(v24 + 24) = v25;
  (v38)(v24 + v17, v23, v15);
  v47[0] = v21;
  v47[1] = &type metadata for FilterLoadState;
  v47[2] = v20;
  v47[3] = v44;
  swift_getOpaqueTypeConformance2();
  v26 = v39;
  v27 = v33;
  sub_24B5FF72C();

  return (*(v40 + 8))(v27, v26);
}

uint64_t sub_24B5F8950@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A888, &qword_24B6094F0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A890, &qword_24B6094F8);
  v87 = *(a1 + 16);
  swift_getTupleTypeMetadata3();
  sub_24B5FF94C();
  v4 = sub_24B5FFC3C();
  v94[35] = swift_getWitnessTable();
  WitnessTable = swift_getWitnessTable();
  v86 = v4;
  v5 = sub_24B5FF87C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v90 = &v62 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A160, &qword_24B609500);
  v12 = sub_24B5FF21C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v62 - v14;
  v88 = a1;
  v89 = v2;
  sub_24B5D83A4();
  swift_getKeyPath();
  sub_24B5FF9AC();

  memcpy(v101, v94, 0x111uLL);
  v16 = sub_24B58FDFC(v101);
  if ((v16 - 2) >= 2)
  {
    v80 = v11;
    v81 = v6;
    v82 = v15;
    v83 = v13;
    v84 = v12;
    if (v16)
    {
      nullsub_1();
      v32 = *v31;
      v76 = *(v31 + 8);
      v77 = v32;
      v33 = *(v31 + 16);
      v34 = *(v31 + 40);
      v74 = *(v31 + 32);
      v75 = v33;
      v35 = *(v31 + 56);
      v72 = *(v31 + 48);
      v73 = v34;
      v71 = v35;
      v36 = *(v31 + 64);
      v68 = *(v31 + 72);
      v69 = v36;
      v37 = *(v31 + 80);
      v66 = *(v31 + 88);
      v67 = v37;
      v38 = *(v31 + 96);
      v64 = *(v31 + 104);
      v65 = v38;
      v39 = *(v31 + 112);
      v40 = *(v31 + 120);
      v41 = *(v31 + 128);
      v42 = *(v31 + 136);
      v43 = *(v31 + 144);
      v44 = *(v31 + 152);
      v45 = *(v31 + 168);
      v62 = *(v31 + 160);
      v63 = v39;
      v28 = (v31 + 176);
      v46 = *(v31 + 248);
      v78 = *(v31 + 256);
      v79 = v46;
      LODWORD(v70) = *(v31 + 24);

      sub_24B5DCAD0(v64, v63, v40, v41, v42, v43, v44, v62, v45);

      v30 = sub_24B5A0960(v77, v76, v75);
    }

    else
    {
      nullsub_1();
      v21 = *v20;
      v76 = v20[1];
      v77 = v21;
      v22 = v20[2];
      v74 = v20[3];
      v75 = v22;
      v23 = v20[4];
      v72 = v20[5];
      v73 = v23;
      v24 = v20[6];
      v70 = v20[7];
      v71 = v24;
      v26 = v20[8];
      v25 = v20[9];
      v27 = v20[11];
      v69 = v20[10];
      v64 = v20[12];
      v68 = v20[19];
      v65 = v20[21];
      v66 = v27;
      v28 = v20 + 23;
      v29 = v20[33];
      v78 = v20[32];
      v79 = v25;
      v67 = v29;

      v30 = sub_24B5DCAD0(v77, v76, v75, v74, v73, v72, v71, v70, v26);
    }

    v47 = *(v28 + 3);
    v98 = *(v28 + 2);
    v99 = v47;
    v49 = *v28;
    v48 = *(v28 + 1);
    v100 = v28[8];
    v97[0] = v49;
    v97[1] = v48;
    v95[2] = v98;
    v95[3] = v47;
    v96 = v100;
    v95[0] = v49;
    v95[1] = v48;
    MEMORY[0x28223BE20](v30);
    v50 = *(v88 + 24);
    *(&v62 - 6) = v87;
    *(&v62 - 5) = v50;
    *(&v62 - 4) = v89;
    *(&v62 - 3) = v95;
    v60 = v78;
    v61 = v79;
    sub_24B5FF1CC();
    sub_24B5FF86C();
    sub_24B58090C(v97, &qword_27F018B60, &qword_24B6095B0);

    v51 = swift_getWitnessTable();
    v52 = v81;
    v53 = *(v81 + 16);
    v54 = v90;
    v53(v90, v9, v5);
    v55 = *(v52 + 8);
    v55(v9, v5);
    v53(v9, v54, v5);
    v56 = sub_24B58085C(&qword_27F01A170, &qword_27F01A160, &qword_24B609500, MEMORY[0x277CDF3A0]);
    v15 = v82;
    sub_24B5F7EAC(v9, v5, v80, v51, v56);
    v55(v9, v5);
    v55(v54, v5);
    v19 = v91;
    v13 = v83;
    v12 = v84;
  }

  else
  {
    v94[0] = sub_24B5FF78C();
    LOWORD(v94[1]) = 256;
    v17 = swift_getWitnessTable();
    v18 = sub_24B58085C(&qword_27F01A170, &qword_27F01A160, &qword_24B609500, MEMORY[0x277CDF3A0]);
    sub_24B5F7FA4(v94, v5, v11, v17, v18);

    v19 = v91;
  }

  v57 = swift_getWitnessTable();
  v58 = sub_24B58085C(&qword_27F01A170, &qword_27F01A160, &qword_24B609500, MEMORY[0x277CDF3A0]);
  v92 = v57;
  v93 = v58;
  swift_getWitnessTable();
  (*(v13 + 16))(v19, v15, v12);
  return (*(v13 + 8))(v15, v12);
}

void sub_24B5F90C4(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for FilterAction(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  memcpy(v32, a2, 0x111uLL);
  v11 = sub_24B58FDFC(v32);
  if ((v11 - 2) >= 2)
  {
    if (v11)
    {
      nullsub_1();
      v15 = v14;
      v12 = (v14 + 104);
      v13 = (v15 + 112);
    }

    else
    {
      nullsub_1();
      v13 = (v12 + 1);
    }

    v16 = *v12;
    v17 = v13[1];
    v28 = *v13;
    v29 = v17;
    v18 = v13[3];
    v30 = v13[2];
    v31 = v18;
    if (v16)
    {
      v23 = v16;
      v24 = v28;
      v25 = v29;
      v26 = v30;
      v27 = v31;
      sub_24B5A0B98(&v23, v22);
      type metadata accessor for FilterResultsView(0, a4, a5, v19);
      sub_24B5D83A4();
      *v10 = v16;
      v20 = v29;
      *(v10 + 8) = v28;
      *(v10 + 24) = v20;
      v21 = v31;
      *(v10 + 40) = v30;
      *(v10 + 56) = v21;
      swift_storeEnumTagMultiPayload();
      sub_24B5FF9BC();

      sub_24B5F98D8(v10);
    }
  }
}

void sub_24B5F9240(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(type metadata accessor for FilterResultsView(0, v7, v8, a4) - 8);
  v10 = v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

  sub_24B5F90C4(a1, a2, v10, v7, v8);
}

uint64_t sub_24B5F92DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for FilterAction(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FilterResultsView(0, a2, a3, v8);
  sub_24B5D83A4();
  swift_storeEnumTagMultiPayload();
  sub_24B5FF9BC();

  return sub_24B5F98D8(v7);
}

uint64_t sub_24B5F93A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for FilterResultsView(0, v5, v6, a4) - 8);
  v8 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_24B5F92DC(v8, v5, v6);
}

void sub_24B5F9470(uint64_t a1)
{
  sub_24B5DA230(319);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_24B5F94F8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 17) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 > 0xFE)
      {
        return (*(v4 + 48))((a1 + v6 + 17) & ~v6);
      }

      v15 = *(a1 + 16);
      if (v15 > 1)
      {
        return (v15 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_24B5F967C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 17) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v7 > 0xFE)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 17] & ~v9;

    v19(v20);
  }

  else if (a2 > 0xFE)
  {
    a1[16] = 0;
    *a1 = a2 - 255;
    *(a1 + 1) = 0;
  }

  else
  {
    a1[16] = -a2;
  }
}

uint64_t sub_24B5F98D8(uint64_t a1)
{
  v2 = type metadata accessor for FilterAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B5F9934@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v151 = a4;
  v143 = a2;
  v144 = a3;
  v174 = a7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A888, &qword_24B6094F0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A890, &qword_24B6094F8);
  swift_getTupleTypeMetadata3();
  v12 = sub_24B5FF94C();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v165 = v137 - v15;
  v158 = *(a5 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v164 = v137 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v167 = v137 - v18;
  v19 = sub_24B5FF33C();
  v156 = *(v19 - 8);
  v157 = v19;
  MEMORY[0x28223BE20](v19);
  v154 = v137 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_24B5FF2AC();
  v149 = *(v21 - 8);
  v150 = v21;
  MEMORY[0x28223BE20](v21);
  v148 = v137 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  OpaqueTypeConformance2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A898, &qword_24B6095B8);
  v147 = *(OpaqueTypeConformance2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeConformance2);
  v146 = v137 - v23;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A8A0, &unk_24B6095C0);
  v153 = *(v155 - 8);
  v24 = MEMORY[0x28223BE20](v155);
  v159 = v11;
  v160 = v137 - v25;
  v26 = *(v11 - 8);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = v137 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v162 = v137 - v30;
  v31 = type metadata accessor for FilterLayout(0);
  v32 = MEMORY[0x28223BE20](v31 - 8);
  v145 = v137 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = v10;
  v34 = MEMORY[0x28223BE20](v32);
  v161 = v137 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v166 = (v137 - v36);
  v37 = sub_24B5FFC3C();
  v173 = *(v37 - 8);
  v38 = MEMORY[0x28223BE20](v37);
  v172 = v137 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v175 = v137 - v40;
  v168 = a6;
  v169 = a5;
  v170 = type metadata accessor for FilterResultsView(0, a5, a6, v41);
  v171 = a1;
  sub_24B5D83A4();
  swift_getKeyPath();
  sub_24B5FF9AC();

  memcpy(v200, v199, 0x111uLL);
  memcpy(v201, v199, 0x111uLL);
  v42 = sub_24B58FDFC(v201);
  if ((v42 - 2) < 2)
  {
    goto LABEL_2;
  }

  v140 = v29;
  if (v42)
  {
    nullsub_1();
    v46 = *v50;
    v43 = v175;
    if (!*v50)
    {
      sub_24B58FECC(v200);
LABEL_2:
      v43 = v175;
LABEL_21:
      v131 = v172;
      (*(v13 + 56))(v172, 1, 1, v12);
      swift_getWitnessTable();
      v132 = v173;
      v129 = *(v173 + 16);
      v129(v43, v131, v37);
      v130 = *(v132 + 8);
      v130(v131, v37);
      goto LABEL_22;
    }

    v141 = v37;
    v142 = v12;
    v139 = v26;
    v44 = v13;
    v49 = *(v50 + 24);
    v47 = *(v50 + 8);
    v48 = *(v50 + 16);
    sub_24B5A0F9C(v46, v47, v48);
  }

  else
  {
    v141 = v37;
    v142 = v12;
    v139 = v26;
    v44 = v13;
    nullsub_1();
    v46 = *(v45 + 152);
    LOBYTE(v47) = *(v45 + 160);
    v48 = *(v45 + 168);
    v49 = *(v45 + 176);

    v43 = v175;
  }

  sub_24B58FECC(v200);
  sub_24B5D83A4();
  swift_getKeyPath();
  sub_24B5FF9AC();

  memcpy(v196, v185, 0x111uLL);
  memcpy(v197, v185, 0x111uLL);
  v51 = sub_24B58FDFC(v197);
  if ((v51 - 2) < 2)
  {

    v195 = 0;
    v193 = 0u;
    v194 = 0u;
    v191 = 0u;
    v192 = 0u;
    v13 = v44;
    v12 = v142;
LABEL_20:
    sub_24B58090C(&v191, &qword_27F018B70, &unk_24B604EC0);
    v37 = v141;
    goto LABEL_21;
  }

  v13 = v44;
  if (v51)
  {
    nullsub_1();
    v52 = (v53 + 104);
  }

  else
  {
    nullsub_1();
  }

  v12 = v142;
  v186 = *v52;
  v54 = v52[1];
  v55 = v52[2];
  v56 = v52[3];
  v190 = *(v52 + 8);
  v188 = v55;
  v189 = v56;
  v187 = v54;
  sub_24B57BAFC(&v186, &v182, &qword_27F018B70, &unk_24B604EC0);
  sub_24B58FECC(v196);
  if (!v186)
  {

    v193 = v188;
    v194 = v189;
    v195 = v190;
    v191 = v186;
    v192 = v187;
    goto LABEL_20;
  }

  v142 = v13;
  sub_24B58090C(&v186, &qword_27F018B70, &unk_24B604EC0);
  v57 = sub_24B5FF12C();
  v58 = v166;
  *v166 = v57;
  v58[1] = 0;
  *(v58 + 16) = 1;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A8A8, &qword_24B6095D0);
  sub_24B5FA9E8(v171, v143, v144, v46, v47 & 1, v48, v49, v169, v58 + *(v59 + 44), v168);

  v60 = sub_24B5FF40C();
  sub_24B5FEF1C();
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v69 = v58 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A8B0, &qword_24B6095D8) + 36);
  *v69 = v60;
  *(v69 + 1) = v62;
  *(v69 + 2) = v64;
  *(v69 + 3) = v66;
  *(v69 + 4) = v68;
  v69[40] = 0;
  v70 = sub_24B5FF42C();
  sub_24B5D83A4();
  swift_getKeyPath();
  v71 = v145;
  sub_24B5FF9AC();

  sub_24B5FEEDC();
  v72 = sub_24B5FEEFC();
  v73 = *(v72 - 1);
  v138 = *(v73 + 8);
  v74 = v73 + 8;
  v143 = v72;
  v138(v71, v72);
  v144 = v74;
  sub_24B5FEF1C();
  v76 = v75;
  v78 = v77;
  v80 = v79;
  v82 = v81;
  v83 = v58 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A8B8, &qword_24B609600) + 36);
  *v83 = v70;
  *(v83 + 1) = v76;
  *(v83 + 2) = v78;
  *(v83 + 3) = v80;
  *(v83 + 4) = v82;
  v83[40] = 0;
  v84 = sub_24B5FF44C();
  v85 = v171;
  sub_24B5D83A4();
  swift_getKeyPath();
  sub_24B5FF9AC();

  sub_24B5FEEEC();
  v86 = v72;
  v87 = v138;
  v138(v71, v86);
  sub_24B5FEF1C();
  v88 = v58 + *(v163 + 36);
  *v88 = v84;
  *(v88 + 1) = v89;
  *(v88 + 2) = v90;
  *(v88 + 3) = v91;
  *(v88 + 4) = v92;
  v88[40] = 0;
  v93 = sub_24B5FF3BC();
  v137[3] = v93;
  MEMORY[0x28223BE20](v93);
  v94 = v168;
  *&v137[-8] = v169;
  *&v137[-6] = v94;
  v135 = v151;
  v136 = v85;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A8C0, &unk_24B609608);
  sub_24B58085C(&qword_27F01A8C8, &qword_27F01A8C0, &unk_24B609608, MEMORY[0x277CE1138]);
  v95 = v146;
  sub_24B5FEF3C();
  v96 = sub_24B5FF3EC();
  sub_24B5D83A4();
  swift_getKeyPath();
  sub_24B5FF9AC();

  sub_24B5FEEBC();
  v98 = v97;
  v100 = v99;
  v102 = v101;
  v104 = v103;
  v87(v71, v143);
  v105 = v148;
  sub_24B5FF29C();
  v106 = sub_24B58085C(&qword_27F01A8D0, &qword_27F01A898, &qword_24B6095B8, MEMORY[0x277CDD6E0]);
  v107 = OpaqueTypeConformance2;
  MEMORY[0x24C2435D0](v96, v105, OpaqueTypeConformance2, v106, v98, v100, v102, v104);
  (*(v149 + 8))(v105, v150);
  (*(v147 + 8))(v95, v107);
  v108 = v154;
  sub_24B5FF22C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018908, &unk_24B600B70);
  v109 = swift_allocObject();
  *(v109 + 16) = xmmword_24B600A20;
  LOBYTE(v96) = sub_24B5FF3DC();
  *(v109 + 32) = v96;
  v110 = sub_24B5FF3BC();
  *(v109 + 33) = v110;
  sub_24B5FF3CC();
  sub_24B5FF3CC();
  if (sub_24B5FF3CC() != v96)
  {
    sub_24B5FF3CC();
  }

  sub_24B5FF3CC();
  if (sub_24B5FF3CC() != v110)
  {
    sub_24B5FF3CC();
  }

  v182 = v107;
  v183 = v106;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v111 = v162;
  v112 = v155;
  v113 = v160;
  sub_24B5FF62C();
  (*(v156 + 8))(v108, v157);
  (*(v153 + 8))(v113, v112);
  v114 = v158;
  v115 = *(v158 + 16);
  v116 = v169;
  v115(v167, v171 + *(v170 + 36), v169);
  v117 = v161;
  sub_24B57BAFC(v166, v161, &qword_27F01A888, &qword_24B6094F0);
  v182 = v117;
  v119 = v139;
  v118 = v140;
  v120 = v111;
  v121 = v159;
  (*(v139 + 16))(v140, v120, v159);
  v183 = v118;
  v122 = v164;
  v115(v164, v167, v116);
  v184 = v122;
  v181[0] = v163;
  v181[1] = v121;
  v181[2] = v116;
  v123 = sub_24B5FBC74(&qword_27F01A8D8, &qword_27F01A888, &qword_24B6094F0, sub_24B5FBC44);
  v176 = v112;
  v177 = OpaqueTypeConformance2;
  v178 = v123;
  v179 = swift_getOpaqueTypeConformance2();
  v180 = v168;
  sub_24B5F7CDC(&v182, 3uLL, v181);
  v124 = *(v114 + 8);
  v124(v167, v116);
  v125 = *(v119 + 8);
  v125(v162, v121);
  sub_24B58090C(v166, &qword_27F01A888, &qword_24B6094F0);
  v124(v164, v116);
  v125(v140, v121);
  sub_24B58090C(v161, &qword_27F01A888, &qword_24B6094F0);
  v126 = v142;
  v127 = v172;
  (*(v142 + 32))(v172, v165, v12);
  (*(v126 + 56))(v127, 0, 1, v12);
  swift_getWitnessTable();
  v128 = v173;
  v129 = *(v173 + 16);
  v43 = v175;
  v37 = v141;
  v129(v175, v127, v141);
  v130 = *(v128 + 8);
  v130(v127, v37);
LABEL_22:
  v133 = v174;
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  v129(v133, v43, v37);
  return (v130)(v43, v37);
}

uint64_t sub_24B5FA9E8@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v69 = a7;
  v68 = a6;
  v67 = a5;
  v66 = a4;
  v76 = a3;
  v82 = a9;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A918, &qword_24B609650);
  v79 = *(v13 - 8);
  v80 = v13;
  MEMORY[0x28223BE20](v13);
  v73 = &v65 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A920, &qword_24B609658);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v81 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v77 = &v65 - v18;
  v19 = sub_24B5FF1BC();
  v74 = *(v19 - 8);
  v75 = v19;
  MEMORY[0x28223BE20](v19);
  v21 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A928, &qword_24B609660);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v78 = &v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v83 = &v65 - v25;
  v26 = a2[3];
  v86 = a2[2];
  v87 = v26;
  v88 = *(a2 + 8);
  v27 = a2[1];
  v84 = *a2;
  v85 = v27;
  v72 = a8;
  v70 = a10;
  type metadata accessor for FilterResultsView(0, a8, a10, v28);
  v71 = a1;
  *&v84 = sub_24B5F817C(&v84);
  *(&v84 + 1) = v29;
  sub_24B58096C();
  v30 = sub_24B5FF53C();
  v32 = v31;
  v34 = v33;
  sub_24B5FF4AC();
  sub_24B5FF46C();

  v35 = sub_24B5FF50C();
  v37 = v36;
  v39 = v38;
  v41 = v40;

  sub_24B5809C0(v30, v32, v34 & 1);

  KeyPath = swift_getKeyPath();
  *&v84 = v35;
  *(&v84 + 1) = v37;
  LOBYTE(v85) = v39 & 1;
  *(&v85 + 1) = v41;
  *&v86 = KeyPath;
  BYTE8(v86) = 0;
  sub_24B5FF1AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A930, &qword_24B609698);
  sub_24B5FC3E0();
  sub_24B5FF68C();
  (*(v74 + 8))(v21, v75);
  sub_24B5809C0(v35, v37, v39 & 1);

  if (*(v76 + 16))
  {
    v44 = MEMORY[0x28223BE20](v43);
    v45 = v70;
    *(&v65 - 8) = v72;
    *(&v65 - 7) = v45;
    v46 = v66;
    *(&v65 - 6) = v71;
    *(&v65 - 5) = v46;
    *(&v65 - 32) = v67 & 1;
    *(&v65 - 3) = v68;
    *(&v65 - 16) = v69;
    *(&v65 - 1) = v47;
    MEMORY[0x28223BE20](v44);
    *(&v65 - 4) = v48;
    *(&v65 - 3) = v49;
    *(&v65 - 2) = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A950, &qword_24B6096A8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A958, &qword_24B6096B0);
    sub_24B58085C(&qword_27F01A960, &qword_27F01A950, &qword_24B6096A8, MEMORY[0x277CDEFF0]);
    sub_24B58085C(&qword_27F01A968, &qword_27F01A958, &qword_24B6096B0, MEMORY[0x277CDF038]);
    v51 = v73;
    sub_24B5FF4CC();
    v53 = v79;
    v52 = v80;
    v54 = v77;
    (*(v79 + 32))(v77, v51, v80);
    v55 = 0;
    v56 = v52;
    v57 = v53;
  }

  else
  {
    v55 = 1;
    v54 = v77;
    v57 = v79;
    v56 = v80;
  }

  (*(v57 + 56))(v54, v55, 1, v56);
  v58 = v83;
  v59 = v78;
  sub_24B57BAFC(v83, v78, &qword_27F01A928, &qword_24B609660);
  v60 = v81;
  sub_24B57BAFC(v54, v81, &qword_27F01A920, &qword_24B609658);
  v61 = v82;
  sub_24B57BAFC(v59, v82, &qword_27F01A928, &qword_24B609660);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A970, &qword_24B6096B8);
  v63 = v61 + *(v62 + 48);
  *v63 = 0;
  *(v63 + 8) = 1;
  sub_24B57BAFC(v60, v61 + *(v62 + 64), &qword_27F01A920, &qword_24B609658);
  sub_24B58090C(v54, &qword_27F01A920, &qword_24B609658);
  sub_24B58090C(v58, &qword_27F01A928, &qword_24B609660);
  sub_24B58090C(v60, &qword_27F01A920, &qword_24B609658);
  return sub_24B58090C(v59, &qword_27F01A928, &qword_24B609660);
}

uint64_t sub_24B5FB094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v52 = a6;
  v50 = a5;
  v49 = a4;
  v48 = a3;
  v56 = a9;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A950, &qword_24B6096A8);
  MEMORY[0x28223BE20](v55);
  v53 = a8;
  v54 = &v44 - v13;
  v51 = a7;
  v15 = type metadata accessor for FilterResultsView(0, a7, a8, v14);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v47 = &v44 - v17;
  v18 = sub_24B5FEE1C();
  MEMORY[0x28223BE20](v18 - 8);
  v19 = sub_24B5FFADC();
  MEMORY[0x28223BE20](v19 - 8);
  sub_24B5FFA6C();
  if (qword_27F0186F0 != -1)
  {
    swift_once();
  }

  v20 = qword_27F02AD70;
  sub_24B5D83A4();
  swift_getKeyPath();
  sub_24B5FF9AC();

  v21 = sub_24B5FFAFC();
  v44 = v22;
  v45 = v21;
  v46 = " for a list of workouts.";
  sub_24B5FFBEC();

  v23 = a2;
  v24 = v49;

  v25 = sub_24B5FFBDC();
  v26 = swift_allocObject();
  v27 = MEMORY[0x277D85700];
  *(v26 + 16) = v25;
  *(v26 + 24) = v27;
  *(v26 + 32) = v23;
  *(v26 + 40) = v48 & 1;
  *(v26 + 48) = v24;
  *(v26 + 56) = v50;
  v28 = v47;
  (*(v16 + 16))(v47, a1, v15);
  v29 = sub_24B5FFBDC();
  v30 = (*(v16 + 80) + 48) & ~*(v16 + 80);
  v31 = swift_allocObject();
  *(v31 + 2) = v29;
  *(v31 + 3) = v27;
  v32 = v51;
  v33 = v53;
  *(v31 + 4) = v51;
  *(v31 + 5) = v33;
  (*(v16 + 32))(&v31[v30], v28, v15);
  v34 = sub_24B5FF88C();
  v35 = MEMORY[0x28223BE20](v34);
  *(&v44 - 4) = v32;
  *(&v44 - 3) = v33;
  MEMORY[0x28223BE20](v35);
  v59 = v36;
  v60 = v37;
  v61 = v38;
  v57 = v45;
  v58 = v44;
  sub_24B58096C();

  sub_24B5FF80C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A978, &unk_24B6096E0);
  sub_24B58085C(&qword_27F01A960, &qword_27F01A950, &qword_24B6096A8, MEMORY[0x277CDEFF0]);
  v39 = sub_24B5FC590();
  v40 = sub_24B5FC5E4();
  v42 = v39;
  v43 = v40;
  sub_24B5FF85C();
}

uint64_t sub_24B5FB5B4(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = type metadata accessor for FilterAction(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a1) = *a1;
  type metadata accessor for FilterResultsView(0, a5, a6, v12);
  sub_24B5D83A4();
  *v11 = a1;
  swift_storeEnumTagMultiPayload();
  sub_24B5FF9BC();

  return sub_24B5F98D8(v11);
}

uint64_t sub_24B5FB68C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v16[0] = a5;
  v9 = type metadata accessor for FilterResultsView(0, a3, a4, a4);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - v11;
  v16[1] = a1;
  swift_getKeyPath();
  (*(v10 + 16))(v12, a2, v9);
  v13 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  (*(v10 + 32))(v14 + v13, v12, v9);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019950, &qword_24B604E80);
  sub_24B58085C(&qword_27F01A990, &qword_27F019950, &qword_24B604E80, MEMORY[0x277D83980]);
  sub_24B5FC590();
  return sub_24B5FF8BC();
}

uint64_t sub_24B5FB880@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = sub_24B5FEE1C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a1) = *a1;
  type metadata accessor for FilterResultsView(0, a2, a3, v12);
  sub_24B5D83A4();
  swift_getKeyPath();
  sub_24B5FF9AC();

  v13 = sub_24B5E7C4C(v11, a1);
  v15 = v14;
  (*(v9 + 8))(v11, v8);
  v20[0] = v13;
  v20[1] = v15;
  sub_24B58096C();
  result = sub_24B5FF53C();
  *a4 = result;
  *(a4 + 8) = v17;
  *(a4 + 16) = v18 & 1;
  *(a4 + 24) = v19;
  return result;
}

uint64_t sub_24B5FB9E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_24B5FEE1C();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_24B5FFADC();
  MEMORY[0x28223BE20](v6 - 8);
  sub_24B5FFA6C();
  if (qword_27F0186F0 != -1)
  {
    swift_once();
  }

  v8 = qword_27F02AD70;
  type metadata accessor for FilterResultsView(0, a2, a3, v7);
  v9 = v8;
  sub_24B5D83A4();
  swift_getKeyPath();
  sub_24B5FF9AC();

  sub_24B5FFAFC();
  sub_24B58096C();
  return sub_24B5FF80C();
}

uint64_t sub_24B5FBBB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = sub_24B5FF12C();
  *(a5 + 8) = 0;
  *(a5 + 16) = 1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A900, &qword_24B609620);
  return sub_24B5FBDB0(a1, a2, a3, a4, a5 + *(v10 + 44));
}

uint64_t sub_24B5FBC74(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_24B5FBCF8()
{
  result = qword_27F01A8E8;
  if (!qword_27F01A8E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A8B0, &qword_24B6095D8);
    sub_24B58085C(&qword_27F01A8F0, &qword_27F01A8F8, &qword_24B609618, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A8E8);
  }

  return result;
}

uint64_t sub_24B5FBDB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v16[0] = a5;
  v9 = type metadata accessor for FilterResultsView(0, a3, a4, a4);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - v11;
  v16[1] = a1;
  swift_getKeyPath();
  (*(v10 + 16))(v12, a2, v9);
  v13 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  (*(v10 + 32))(v14 + v13, v12, v9);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019938, &qword_24B604E78);
  sub_24B58085C(&qword_27F01A908, &qword_27F019938, &qword_24B604E78, MEMORY[0x277D83980]);
  sub_24B5A1954();
  sub_24B5FC2DC();
  return sub_24B5FF8BC();
}

uint64_t sub_24B5FBFA4@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = type metadata accessor for FilterResultsView(0, a3, a4, a4);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v24 - v13;
  v15 = a1[1];
  v27 = *a1;
  v28 = v15;
  v16 = a1[3];
  v29 = a1[2];
  v30 = v16;
  v17 = *(&v16 + 1);
  v25 = v16;
  (*(v11 + 16))(&v24 - v13, a2, v10);
  v18 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = a3;
  *(v19 + 24) = a4;
  (*(v11 + 32))(v19 + v18, v14, v10);
  v20 = (v19 + ((v12 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  v21 = v28;
  *v20 = v27;
  v20[1] = v21;
  v22 = v30;
  v20[2] = v29;
  v20[3] = v22;
  *a5 = v25;
  a5[1] = v17;
  a5[2] = sub_24B5FC330;
  a5[3] = v19;

  return sub_24B5A208C(&v27, v26);
}

uint64_t sub_24B5FC148(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for FilterAction(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for FilterResultsView(0, a3, a4, v10);
  sub_24B5D83A4();
  v11 = a2[1];
  v15 = *a2;
  v16[0] = v11;
  *(v16 + 9) = *(a2 + 25);
  v12 = *(v16 + 9);
  *v9 = v15;
  v9[1] = v11;
  *(v9 + 25) = v12;
  swift_storeEnumTagMultiPayload();
  sub_24B58FF20(&v15, v14);
  sub_24B5FF9BC();

  return sub_24B5F98D8(v9);
}

uint64_t sub_24B5FC240@<X0>(__int128 *a1@<X0>, uint64_t a2@<X3>, void *a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for FilterResultsView(0, v6, v7, a2) - 8);
  v9 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_24B5FBFA4(a1, v9, v6, v7, a3);
}

unint64_t sub_24B5FC2DC()
{
  result = qword_27F01A910;
  if (!qword_27F01A910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A910);
  }

  return result;
}

uint64_t sub_24B5FC330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for FilterResultsView(0, v5, v6, a4) - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = (v4 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_24B5FC148(v4 + v8, v9, v5, v6);
}

unint64_t sub_24B5FC3E0()
{
  result = qword_27F01A938;
  if (!qword_27F01A938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A930, &qword_24B609698);
    sub_24B58085C(&qword_27F01A940, &qword_27F01A948, &qword_24B6096A0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A938);
  }

  return result;
}

uint64_t sub_24B5FC4CC(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[4];
  v7 = v4[5];
  v8 = *(type metadata accessor for FilterResultsView(0, v6, v7, a4) - 8);
  v9 = v4[2];
  v10 = v4[3];
  v11 = v4 + ((*(v8 + 80) + 48) & ~*(v8 + 80));

  return sub_24B5FB5B4(a1, v9, v10, v11, v6, v7);
}

unint64_t sub_24B5FC590()
{
  result = qword_27F01A980;
  if (!qword_27F01A980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A980);
  }

  return result;
}

unint64_t sub_24B5FC5E4()
{
  result = qword_27F01A988;
  if (!qword_27F01A988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F01A978, &unk_24B6096E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A988);
  }

  return result;
}

uint64_t objectdestroy_2Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for FilterResultsView(0, v5, *(v4 + 24), a4) - 8);
  v7 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  sub_24B5DB820(*(v4 + v7), *(v4 + v7 + 8));
  (*(*(v5 - 8) + 8))(v4 + v7 + v6[11], v5);

  return swift_deallocObject();
}

uint64_t sub_24B5FC754@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  type metadata accessor for FilterResultsView(0, v6, v7, a2);

  return sub_24B5FB880(a1, v6, v7, a3);
}

uint64_t sub_24B5FC80C()
{
  if (*v0)
  {
    return 0x74756F6B726F77;
  }

  else
  {
    return 7367028;
  }
}

uint64_t sub_24B5FC840@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7367028 && a2 == 0xE300000000000000;
  if (v5 || (sub_24B5FFECC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74756F6B726F77 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24B5FFECC();

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

uint64_t sub_24B5FC91C(uint64_t a1)
{
  v2 = sub_24B5FCD34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5FC958(uint64_t a1)
{
  v2 = sub_24B5FCD34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B5FC994(uint64_t a1)
{
  v2 = sub_24B5FCDDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5FC9D0(uint64_t a1)
{
  v2 = sub_24B5FCDDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B5FCA0C(uint64_t a1)
{
  v2 = sub_24B5FCD88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5FCA48(uint64_t a1)
{
  v2 = sub_24B5FCD88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FilterContentType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A998, &qword_24B609710);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x28223BE20](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A9A0, &qword_24B609718);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A9A8, &qword_24B609720);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B5FCD34();
  sub_24B5FFF5C();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_24B5FCD88();
    v14 = v18;
    sub_24B5FFE0C();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_24B5FCDDC();
    sub_24B5FFE0C();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

unint64_t sub_24B5FCD34()
{
  result = qword_27F01A9B0;
  if (!qword_27F01A9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A9B0);
  }

  return result;
}

unint64_t sub_24B5FCD88()
{
  result = qword_27F01A9B8;
  if (!qword_27F01A9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A9B8);
  }

  return result;
}

unint64_t sub_24B5FCDDC()
{
  result = qword_27F01A9C0;
  if (!qword_27F01A9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A9C0);
  }

  return result;
}

uint64_t FilterContentType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A9C8, &qword_24B609728);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A9D0, &qword_24B609730);
  v26 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01A9D8, &unk_24B609738);
  v30 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B5FCD34();
  v12 = v31;
  sub_24B5FFF4C();
  if (v12)
  {
    v13 = a1;
  }

  else
  {
    v25 = v6;
    v31 = a1;
    v14 = v28;
    v15 = v29;
    v16 = sub_24B5FFDEC();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_24B5A6BBC();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_24B5FFCFC();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018E80, &qword_24B602460);
      *v22 = &type metadata for FilterContentType;
      sub_24B5FFD5C();
      sub_24B5FFCEC();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84160], v20);
      swift_willThrow();
      (*(v30 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v18;
      if (v18)
      {
        v37 = 1;
        sub_24B5FCD88();
        sub_24B5FFD4C();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_24B5FCDDC();
        sub_24B5FFD4C();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t FilterContentType.hashValue.getter()
{
  v1 = *v0;
  sub_24B5FFEFC();
  MEMORY[0x24C243ED0](v1);
  return sub_24B5FFF3C();
}

unint64_t sub_24B5FD394()
{
  result = qword_27F01A9E0;
  if (!qword_27F01A9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A9E0);
  }

  return result;
}

unint64_t sub_24B5FD42C()
{
  result = qword_27F01A9E8;
  if (!qword_27F01A9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A9E8);
  }

  return result;
}

unint64_t sub_24B5FD484()
{
  result = qword_27F01A9F0;
  if (!qword_27F01A9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A9F0);
  }

  return result;
}

unint64_t sub_24B5FD4DC()
{
  result = qword_27F01A9F8;
  if (!qword_27F01A9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01A9F8);
  }

  return result;
}

unint64_t sub_24B5FD534()
{
  result = qword_27F01AA00;
  if (!qword_27F01AA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01AA00);
  }

  return result;
}

unint64_t sub_24B5FD58C()
{
  result = qword_27F01AA08;
  if (!qword_27F01AA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01AA08);
  }

  return result;
}

unint64_t sub_24B5FD5E4()
{
  result = qword_27F01AA10;
  if (!qword_27F01AA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01AA10);
  }

  return result;
}

unint64_t sub_24B5FD63C()
{
  result = qword_27F01AA18;
  if (!qword_27F01AA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01AA18);
  }

  return result;
}

uint64_t FilterSectionDescriptor.init(identifier:attributedTitle:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  v10 = type metadata accessor for FilterSectionDescriptor(0);
  result = sub_24B5A1810(a3, a6 + *(v10 + 20));
  v12 = a6 + *(v10 + 24);
  *v12 = a4;
  v12[8] = a5;
  return result;
}

uint64_t type metadata accessor for FilterSectionDescriptor(uint64_t a1)
{
  result = qword_27F01AA60;
  if (!qword_27F01AA60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FilterSectionDescriptor.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FilterSectionDescriptor.attributedTitle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FilterSectionDescriptor(0) + 20);

  return sub_24B5FD7F4(v3, a1);
}

uint64_t sub_24B5FD7F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018BD0, &unk_24B6022F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t FilterSectionDescriptor.content.getter()
{
  v1 = v0 + *(type metadata accessor for FilterSectionDescriptor(0) + 24);
  v2 = *v1;
  sub_24B5E3B80(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_24B5FD8AC()
{
  v1 = 0x7475626972747461;
  if (*v0 != 1)
  {
    v1 = 0x746E65746E6F63;
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

uint64_t sub_24B5FD918@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B5FEC74(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B5FD940(uint64_t a1)
{
  v2 = sub_24B5FDBC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5FD97C(uint64_t a1)
{
  v2 = sub_24B5FDBC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FilterSectionDescriptor.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01AA20, &qword_24B609AB8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B5FDBC4();
  sub_24B5FFF5C();
  v17 = 0;
  sub_24B5FFE3C();
  if (!v2)
  {
    v9 = type metadata accessor for FilterSectionDescriptor(0);
    v16 = 1;
    sub_24B5FEDEC();
    sub_24B5FED9C(&qword_27F01AA30, MEMORY[0x277CC8C40], MEMORY[0x277CC8C48]);
    sub_24B5FFE2C();
    v10 = (v3 + *(v9 + 24));
    v11 = *v10;
    LOBYTE(v10) = *(v10 + 8);
    v14 = v11;
    v15 = v10;
    v13[15] = 2;
    sub_24B5FDC18();
    sub_24B5FFE8C();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_24B5FDBC4()
{
  result = qword_27F01AA28;
  if (!qword_27F01AA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01AA28);
  }

  return result;
}

unint64_t sub_24B5FDC18()
{
  result = qword_27F01AA38;
  if (!qword_27F01AA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01AA38);
  }

  return result;
}

uint64_t FilterSectionDescriptor.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018BD0, &unk_24B6022F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F01AA40, &qword_24B609AC0);
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v22 - v8;
  v10 = type metadata accessor for FilterSectionDescriptor(0);
  MEMORY[0x28223BE20](v10);
  v12 = (v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B5FDBC4();
  sub_24B5FFF4C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = v6;
  v14 = v25;
  v15 = v26;
  v31 = 0;
  *v12 = sub_24B5FFD8C();
  v12[1] = v16;
  v22[1] = v16;
  v23 = v12;
  sub_24B5FEDEC();
  v30 = 1;
  sub_24B5FED9C(&qword_27F01AA48, MEMORY[0x277CC8C40], MEMORY[0x277CC8C60]);
  sub_24B5FFD7C();
  sub_24B5A1810(v13, v23 + *(v10 + 20));
  v29 = 2;
  sub_24B5FDFF0();
  sub_24B5FFDDC();
  (*(v14 + 8))(v9, v15);
  v17 = v28;
  v19 = v23;
  v18 = v24;
  v20 = v23 + *(v10 + 24);
  *v20 = v27;
  v20[8] = v17;
  sub_24B5D5A20(v19, v18);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24B5D5A84(v19);
}

unint64_t sub_24B5FDFF0()
{
  result = qword_27F01AA50;
  if (!qword_27F01AA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01AA50);
  }

  return result;
}

uint64_t FilterSectionDescriptor.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = sub_24B5FEDEC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018BD0, &unk_24B6022F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v13 - v9;
  sub_24B5FFB1C();
  v11 = type metadata accessor for FilterSectionDescriptor(0);
  sub_24B5FD7F4(v2 + *(v11 + 20), v10);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_24B5FFF1C();
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    sub_24B5FFF1C();
    sub_24B5FED9C(&qword_27F019000, MEMORY[0x277CC8C40], MEMORY[0x277CC8C50]);
    sub_24B5FFA4C();
    (*(v5 + 8))(v7, v4);
  }

  return FilterSectionContent.hash(into:)(a1, *(v2 + *(v11 + 24)), *(v2 + *(v11 + 24) + 8));
}

uint64_t FilterSectionDescriptor.hashValue.getter()
{
  v1 = v0;
  v2 = sub_24B5FEDEC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018BD0, &unk_24B6022F0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11 - v7;
  sub_24B5FFEFC();
  sub_24B5FFB1C();
  v9 = type metadata accessor for FilterSectionDescriptor(0);
  sub_24B5FD7F4(v1 + *(v9 + 20), v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_24B5FFF1C();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_24B5FFF1C();
    sub_24B5FED9C(&qword_27F019000, MEMORY[0x277CC8C40], MEMORY[0x277CC8C50]);
    sub_24B5FFA4C();
    (*(v3 + 8))(v5, v2);
  }

  FilterSectionContent.hash(into:)(v12, *(v1 + *(v9 + 24)), *(v1 + *(v9 + 24) + 8));
  return sub_24B5FFF3C();
}

uint64_t sub_24B5FE49C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = sub_24B5FEDEC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018BD0, &unk_24B6022F0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v13 - v10;
  sub_24B5FFEFC();
  sub_24B5FFB1C();
  sub_24B5FD7F4(v4 + *(a2 + 20), v11);
  if ((*(v6 + 48))(v11, 1, v5) == 1)
  {
    sub_24B5FFF1C();
  }

  else
  {
    (*(v6 + 32))(v8, v11, v5);
    sub_24B5FFF1C();
    sub_24B5FED9C(&qword_27F019000, MEMORY[0x277CC8C40], MEMORY[0x277CC8C50]);
    sub_24B5FFA4C();
    (*(v6 + 8))(v8, v5);
  }

  FilterSectionContent.hash(into:)(v14, *(v4 + *(a2 + 24)), *(v4 + *(a2 + 24) + 8));
  return sub_24B5FFF3C();
}

uint64_t _s16FitnessFiltering23FilterSectionDescriptorV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_24B5FEDEC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018BD0, &unk_24B6022F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019FC8, &unk_24B609D00);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  if (*a1 != *a2 && (sub_24B5FFECC() & 1) == 0)
  {
    goto LABEL_9;
  }

  v22 = type metadata accessor for FilterSectionDescriptor(0);
  v14 = *(v22 + 20);
  v15 = *(v11 + 48);
  sub_24B5FD7F4(a1 + v14, v13);
  sub_24B5FD7F4(a2 + v14, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_24B58090C(v13, &qword_27F018BD0, &unk_24B6022F0);
LABEL_11:
      v17 = static FilterSectionContent.== infix(_:_:)();
      return v17 & 1;
    }

    goto LABEL_8;
  }

  sub_24B5FD7F4(v13, v10);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_8:
    sub_24B58090C(v13, &qword_27F019FC8, &unk_24B609D00);
    goto LABEL_9;
  }

  (*(v5 + 32))(v7, &v13[v15], v4);
  sub_24B5FED9C(&qword_27F019FD0, MEMORY[0x277CC8C40], MEMORY[0x277CC8C58]);
  v18 = sub_24B5FFA5C();
  v19 = *(v5 + 8);
  v19(v7, v4);
  v19(v10, v4);
  sub_24B58090C(v13, &qword_27F018BD0, &unk_24B6022F0);
  if (v18)
  {
    goto LABEL_11;
  }

LABEL_9:
  v17 = 0;
  return v17 & 1;
}

void sub_24B5FEA80(uint64_t a1)
{
  sub_24B5FEB04(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_24B5FEB04(uint64_t a1)
{
  if (!qword_27F01AA70)
  {
    sub_24B5FEDEC();
    v1 = sub_24B5FFC3C();
    if (!v2)
    {
      atomic_store(v1, &qword_27F01AA70);
    }
  }
}

unint64_t sub_24B5FEB70()
{
  result = qword_27F01AA78;
  if (!qword_27F01AA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01AA78);
  }

  return result;
}

unint64_t sub_24B5FEBC8()
{
  result = qword_27F01AA80;
  if (!qword_27F01AA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01AA80);
  }

  return result;
}

unint64_t sub_24B5FEC20()
{
  result = qword_27F01AA88;
  if (!qword_27F01AA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F01AA88);
  }

  return result;
}

uint64_t sub_24B5FEC74(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_24B5FFECC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEF656C7469546465 || (sub_24B5FFECC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24B5FFECC();

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

uint64_t sub_24B5FED9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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