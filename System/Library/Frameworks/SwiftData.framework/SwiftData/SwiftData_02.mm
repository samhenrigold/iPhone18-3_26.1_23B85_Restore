Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ModelConfiguration.validate()()
{
  v1 = sub_197520BCC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_197520BBC();
  v6 = (v0 + *(type metadata accessor for ModelConfiguration(0) + 20));
  v7 = *v6;
  v8 = v6[1];
  if (sub_19752181C() > 255)
  {
    if (qword_1EAF2AD48 != -1)
    {
      swift_once();
    }

    v9 = &byte_1EAF2B758;
LABEL_9:
    v11 = *v9;
    v13 = *(v9 + 1);
    v12 = *(v9 + 2);
    sub_19744BE3C();
    swift_allocError();
    *v14 = v11;
    *(v14 + 8) = v13;
    *(v14 + 16) = v12;

    swift_willThrow();
    goto LABEL_10;
  }

  v15[0] = v7;
  v15[1] = v8;
  sub_197416D54();
  sub_197521FAC();
  if ((v10 & 1) == 0)
  {
    if (qword_1EAF2AD50 != -1)
    {
      swift_once();
    }

    v9 = &byte_1EAF2B770;
    goto LABEL_9;
  }

LABEL_10:
  (*(v2 + 8))(v5, v1);
}

unint64_t sub_197416D54()
{
  result = qword_1ED7C9BB0;
  if (!qword_1ED7C9BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7C9BB0);
  }

  return result;
}

uint64_t sub_197416DAC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  type metadata accessor for Schema.Entity();
  v13 = sub_1973FDF38(a1, a12);
  swift_beginAccess();
  v14 = *(v13 + 88);
  if ((v14 & 0xC000000000000001) != 0)
  {

    sub_1975220AC();
    type metadata accessor for Schema.Relationship();
    sub_1973FA5E0(&qword_1ED7C91A8, type metadata accessor for Schema.Relationship, &protocol conformance descriptor for Schema.Relationship);
    sub_197521C1C();
    v14 = v41;
    v15 = v42;
    v16 = v43;
    v17 = v44;
    v18 = v45;
  }

  else
  {
    v19 = -1 << *(v14 + 32);
    v15 = v14 + 56;
    v16 = ~v19;
    v20 = -v19;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v18 = v21 & *(v14 + 56);

    v17 = 0;
  }

  v22 = (v16 + 64) >> 6;
  if (v14 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v23 = v17;
  v24 = v18;
  v25 = v17;
  if (v18)
  {
LABEL_12:
    v26 = (v24 - 1) & v24;
    v27 = *(*(v14 + 48) + ((v25 << 9) | (8 * __clz(__rbit64(v24)))));

    if (!v27)
    {
LABEL_23:
      sub_1974171EC(v14);
    }

    while (1)
    {
      swift_beginAccess();
      v28 = *(v27 + 48);
      if (!v28)
      {
        break;
      }

      v29 = sub_197521FFC();
      v30 = swift_conformsToProtocol2();
      if (v30)
      {
        v31 = v29 == 0;
      }

      else
      {
        v31 = 1;
      }

      if (v31)
      {
        sub_1975221EC();
        MEMORY[0x19A8DFF80](0xD000000000000032, 0x8000000197525FF0);
        sub_19752202C();
        sub_19752235C();
        goto LABEL_27;
      }

      sub_197456578(v29, a2, a3, v28, a4, a5 & 1, a6, a7, a8, v27, a9, a10, v29, a11, a12, v30);

      v17 = v25;
      v18 = v26;
      if ((v14 & 0x8000000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_14:
      if (sub_19752212C())
      {
        type metadata accessor for Schema.Relationship();
        swift_dynamicCast();
        v27 = v40;
        v25 = v17;
        v26 = v18;
        if (v40)
        {
          continue;
        }
      }

      goto LABEL_23;
    }
  }

  else
  {
    while (1)
    {
      v25 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v25 >= v22)
      {
        goto LABEL_23;
      }

      v24 = *(v15 + 8 * v25);
      ++v23;
      if (v24)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD00000000000002FLL, 0x8000000197526430);
  type metadata accessor for Schema.Relationship();
  sub_19752235C();
LABEL_27:
  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_1974171F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B178, &qword_19752D308);
  result = sub_19752243C();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = 16 * (v17 | (v8 << 6));
      v29 = *(*(v5 + 48) + v20);
      v30 = *(*(v5 + 56) + v20);
      if ((v4 & 1) == 0)
      {
      }

      sub_197522A5C();
      MEMORY[0x19A8E1190](v29);
      result = sub_197522A9C();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      *(*(v7 + 48) + v16) = v29;
      *(*(v7 + 56) + v16) = v30;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v28 = 1 << *(v5 + 32);
      if (v28 >= 64)
      {
        bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v28;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1974174A8(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1974153A8(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v25 = v2 + 32;
  v24[0] = v2 + 32;
  v24[1] = v4;
  v5 = sub_1975227BC();
  if (v5 >= v4)
  {
    if (v4 >= 2)
    {
      v9 = -1;
      v10 = 1;
      v11 = v25;
      do
      {
        v12 = *(v25 + 8 * v10);
        v13 = v9;
        v14 = v11;
        do
        {
          v15 = *v14;
          swift_beginAccess();
          v16 = *(v12 + 16);
          v17 = *(v12 + 24);
          swift_beginAccess();
          if (v16 == *(v15 + 16) && v17 == *(v15 + 24))
          {
            break;
          }

          if ((sub_19752282C() & 1) == 0)
          {
            break;
          }

          v19 = *v14;
          v12 = v14[1];
          *v14 = v12;
          v14[1] = v19;
          --v14;
        }

        while (!__CFADD__(v13++, 1));
        ++v10;
        ++v11;
        --v9;
      }

      while (v10 != v4);
    }
  }

  else
  {
    v6 = v5;
    v7 = v4 >> 1;
    if (v4 >= 2)
    {
      type metadata accessor for Schema.Entity();
      v8 = sub_197521A2C();
      *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
    }

    else
    {
      v8 = MEMORY[0x1E69E7CC0];
    }

    v23[0] = (v8 & 0xFFFFFFFFFFFFFF8) + 32;
    v23[1] = v7;
    sub_1974DA300(v23, v22, v24, v6);
    *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
  }

  return sub_1975222AC();
}

uint64_t sub_197417660(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_1975221AC();
  v7 = result;
  if (*(v5 + 16))
  {
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
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      sub_197522A5C();
      swift_beginAccess();

      sub_19752180C();

      result = sub_197522A9C();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero((v5 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    v4 = v3;
    *(v5 + 16) = 0;
  }

  *v4 = v7;
  return result;
}

uint64_t sub_1974178DC(uint64_t a1)
{
  v1 = a1;
  v15 = a1;
  v2 = swift_conformsToProtocol2();
  if (v2 && v1)
  {
    v3 = v2;
    do
    {
      sub_1973F732C(v1, &v15, v1, v3);
      v1 = v15;
      v3 = swift_conformsToProtocol2();
      if (v3)
      {
        v4 = v1 == 0;
      }

      else
      {
        v4 = 1;
      }
    }

    while (!v4);
  }

  v15 = v1;
  v5 = swift_conformsToProtocol2();
  if (v5 && v1)
  {
    v6 = v5;
    do
    {
      sub_1973F732C(v1, &v15, v1, v6);
      v1 = v15;
      v6 = swift_conformsToProtocol2();
      if (v6)
      {
        v7 = v1 == 0;
      }

      else
      {
        v7 = 1;
      }
    }

    while (!v7);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B588, &unk_19752E9B0);
  v8 = sub_1975214EC();
  v9 = sub_1975214EC();
  if (!v8)
  {
    if (!v9)
    {
      goto LABEL_20;
    }

LABEL_28:
    if (swift_conformsToProtocol2() && v1)
    {
      return v1;
    }

    goto LABEL_32;
  }

  if (!v9 || v8 != v9)
  {
    goto LABEL_28;
  }

LABEL_20:
  v10 = sub_1975214DC();
  if (v11 < 1)
  {
    __break(1u);
LABEL_32:
    v15 = 0;
    v16 = 0xE000000000000000;
    sub_1975221EC();

    v15 = 0xD00000000000001ELL;
    v16 = 0x800000019752A080;
    v14 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v14);

    goto LABEL_33;
  }

  v1 = *v10;
  if (swift_conformsToProtocol2())
  {
    v12 = v1 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    return v1;
  }

LABEL_33:
  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_197417B28(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_1975220FC();

    if (v8)
    {

      type metadata accessor for Schema.Attribute();
      swift_dynamicCast();
      result = 0;
      *a1 = v34;
      return result;
    }

    result = sub_1975220EC();
    if (__OFADD__(result, 1))
    {
      goto LABEL_47;
    }

    v29 = sub_19747DC14(v7, result + 1, &qword_1EAF2B350, &qword_19752D4F8, type metadata accessor for Schema.Attribute);
    v30 = *(v29 + 16);
    if (*(v29 + 24) <= v30)
    {
      sub_197417660(v30 + 1, &qword_1EAF2B350, &qword_19752D4F8);
    }

    sub_19747EC28(v31, v29);

    *v3 = v29;
    *a1 = a2;
    return 1;
  }

  sub_197522A5C();
  swift_beginAccess();

  sub_19752180C();

  v10 = sub_197522A9C();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_38:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *v2;

    sub_197418180(v28, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v33;
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  v14 = *(v6 + 48);
  swift_beginAccess();
  swift_beginAccess();
  while (1)
  {
    v15 = *(v14 + 8 * v12);
    swift_beginAccess();
    v16 = v15[2] == a2[2] && v15[3] == a2[3];
    if (!v16 && (sub_19752282C() & 1) == 0)
    {
      goto LABEL_10;
    }

    result = swift_beginAccess();
    v17 = v15[6];
    v18 = a2[6];
    v19 = *(v17 + 16);
    if (v19 != *(v18 + 16))
    {
      goto LABEL_10;
    }

    if (v19 && v17 != v18)
    {
      break;
    }

LABEL_9:
    swift_beginAccess();
    if (v15[7] == a2[7])
    {

      *a1 = *(*(v6 + 48) + 8 * v12);

      return 0;
    }

LABEL_10:
    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  v21 = (v18 + 68);
  v22 = (v17 + 68);
  while (v19)
  {
    if (*(v22 - 4) != *(v21 - 4))
    {
      goto LABEL_10;
    }

    if ((*(v22 - 2) ^ *(v21 - 2)))
    {
      goto LABEL_10;
    }

    if ((*v22 ^ *v21))
    {
      goto LABEL_10;
    }

    if ((*(v22 - 3) ^ *(v21 - 3)))
    {
      goto LABEL_10;
    }

    if ((*(v22 - 1) ^ *(v21 - 1)))
    {
      goto LABEL_10;
    }

    v23 = *(v22 - 36);
    v24 = *(v21 - 36);
    if ((v23 ^ v24))
    {
      goto LABEL_10;
    }

    if ((v23 & v24) == 1)
    {
      v25 = *(v22 - 12);
      v26 = *(v21 - 12);
      if (v25)
      {
        if (!v26)
        {
          goto LABEL_10;
        }

        result = *(v22 - 20);
        if (result != *(v21 - 20) || v25 != v26)
        {
          result = sub_19752282C();
          if ((result & 1) == 0)
          {
            goto LABEL_10;
          }
        }
      }

      else if (v26)
      {
        goto LABEL_10;
      }
    }

    v22 += 40;
    v21 += 40;
    if (!--v19)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_197417F30(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_1975221AC();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v5 + 48) + 8 * (v15 | (v8 << 6)));
      sub_197522A5C();
      swift_beginAccess();

      sub_19752180C();

      result = sub_197522A9C();
      v19 = -1 << *(v7 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v18;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v4 = v3;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v4 = v7;
  }

  return result;
}

uint64_t sub_197418180(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_197417660(v7 + 1, &qword_1EAF2B350, &qword_19752D4F8);
    }

    else
    {
      if (v8 > v7)
      {
        result = sub_19747FE44(&qword_1EAF2B350, &qword_19752D4F8);
        goto LABEL_39;
      }

      sub_197417F30(v7 + 1, &qword_1EAF2B350, &qword_19752D4F8);
    }

    v9 = *v3;
    sub_197522A5C();
    swift_beginAccess();

    sub_19752180C();

    result = sub_197522A9C();
    v10 = v9 + 56;
    v11 = -1 << *(v9 + 32);
    a2 = result & ~v11;
    if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v12 = ~v11;
      type metadata accessor for Schema.Attribute();
      v13 = *(v9 + 48);
      swift_beginAccess();
      swift_beginAccess();
      do
      {
        v14 = *(v13 + 8 * a2);
        swift_beginAccess();
        v15 = v14[2] == v6[2] && v14[3] == v6[3];
        if (v15 || (result = sub_19752282C(), (result & 1) != 0))
        {
          result = swift_beginAccess();
          v16 = v14[6];
          v17 = v6[6];
          v18 = *(v16 + 16);
          if (v18 == *(v17 + 16))
          {
            if (v18)
            {
              v19 = v16 == v17;
            }

            else
            {
              v19 = 1;
            }

            if (!v19)
            {
              v20 = (v17 + 68);
              v21 = (v16 + 68);
              while (v18)
              {
                if (*(v21 - 4) != *(v20 - 4))
                {
                  goto LABEL_11;
                }

                if ((*(v21 - 2) ^ *(v20 - 2)))
                {
                  goto LABEL_11;
                }

                if ((*v21 ^ *v20))
                {
                  goto LABEL_11;
                }

                if ((*(v21 - 3) ^ *(v20 - 3)))
                {
                  goto LABEL_11;
                }

                if ((*(v21 - 1) ^ *(v20 - 1)))
                {
                  goto LABEL_11;
                }

                v22 = *(v21 - 36);
                v23 = *(v20 - 36);
                if ((v22 ^ v23))
                {
                  goto LABEL_11;
                }

                if ((v22 & v23) == 1)
                {
                  v24 = *(v21 - 12);
                  v25 = *(v20 - 12);
                  if (v24)
                  {
                    if (!v25)
                    {
                      goto LABEL_11;
                    }

                    result = *(v21 - 20);
                    if (result != *(v20 - 20) || v24 != v25)
                    {
                      result = sub_19752282C();
                      if ((result & 1) == 0)
                      {
                        goto LABEL_11;
                      }
                    }
                  }

                  else if (v25)
                  {
                    goto LABEL_11;
                  }
                }

                v21 += 40;
                v20 += 40;
                if (!--v18)
                {
                  goto LABEL_10;
                }
              }

              __break(1u);
              goto LABEL_42;
            }

LABEL_10:
            result = swift_beginAccess();
            if (v14[7] == v6[7])
            {
              goto LABEL_43;
            }
          }
        }

LABEL_11:
        a2 = (a2 + 1) & v12;
      }

      while (((*(v10 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_39:
  v26 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v26 + 48) + 8 * a2) = v6;
  v27 = *(v26 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (v28)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    result = sub_1975229BC();
    __break(1u);
  }

  else
  {
    *(v26 + 16) = v29;
  }

  return result;
}

void *sub_1974184F4()
{
  v1 = v0;
  swift_beginAccess();
  v2 = v0[4];
  if ((v2 & 0xC000000000000001) != 0)
  {

    sub_1975220AC();
    sub_1973FA628(&qword_1EAF2B670, v3, type metadata accessor for Schema.Entity, &protocol conformance descriptor for Schema.Entity);
    result = sub_197521C1C();
    v2 = v33;
    v5 = v34;
    v6 = v35;
    v7 = v36;
    v8 = v37;
  }

  else
  {
    v9 = -1 << *(v2 + 32);
    v5 = v2 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v2 + 56);

    v7 = 0;
  }

  v12 = (v6 + 64) >> 6;
  v30 = v5;
  v31 = v12;
  while (v2 < 0)
  {
    if (!sub_19752212C())
    {
      return sub_197416DA8();
    }

    swift_dynamicCast();
    v19 = v32;
    v17 = v7;
    v18 = v8;
    if (!v32)
    {
      return sub_197416DA8();
    }

LABEL_19:
    v20 = v2;
    swift_beginAccess();
    v21 = v1[8];
    result = swift_beginAccess();
    v22 = v1[9];
    v23 = *(v22 + 16);
    v24 = v21[2];
    v25 = v24 + v23;
    if (__OFADD__(v24, v23))
    {
      goto LABEL_34;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v25 <= v21[3] >> 1)
    {
      if (!*(v22 + 16))
      {
        goto LABEL_8;
      }
    }

    else
    {
      if (v24 <= v25)
      {
        v26 = v24 + v23;
      }

      else
      {
        v26 = v24;
      }

      result = sub_1973FA494(result, v26, 1, v21);
      v21 = result;
      if (!*(v22 + 16))
      {
LABEL_8:

        if (v23)
        {
          goto LABEL_35;
        }

        goto LABEL_9;
      }
    }

    if ((v21[3] >> 1) - v21[2] < v23)
    {
      goto LABEL_36;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B1C8, &unk_19752EA30);
    swift_arrayInitWithCopy();

    if (v23)
    {
      v27 = v21[2];
      v28 = __OFADD__(v27, v23);
      v29 = v27 + v23;
      if (v28)
      {
        goto LABEL_37;
      }

      v21[2] = v29;
    }

LABEL_9:
    swift_beginAccess();
    v19[9] = v21;

    sub_1974EF18C();

    swift_weakAssign();
    swift_beginAccess();
    v13 = v1[2];
    v14 = v1[3];
    swift_beginAccess();
    v19[5] = v13;
    v19[6] = v14;

    v7 = v17;
    v8 = v18;
    v2 = v20;
    v5 = v30;
    v12 = v31;
  }

  v15 = v7;
  v16 = v8;
  v17 = v7;
  if (v8)
  {
LABEL_15:
    v18 = (v16 - 1) & v16;
    v19 = *(*(v2 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));

    if (!v19)
    {
      return sub_197416DA8();
    }

    goto LABEL_19;
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= v12)
    {
      return sub_197416DA8();
    }

    v16 = *(v5 + 8 * v17);
    ++v15;
    if (v16)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_1974188C0(uint64_t result, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, void (*a6)(void), uint64_t (*a7)(uint64_t, uint64_t))
{
  v10 = result;
  v11 = *(*v7 + 16);
  v12 = *(*v7 + 24);
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v13 = a6;
    sub_197417660(v11 + 1, a4, a5);
  }

  else
  {
    if (v12 > v11)
    {
      result = sub_19747FE44(a4, a5);
      goto LABEL_12;
    }

    v13 = a6;
    sub_197417F30(v11 + 1, a4, a5);
  }

  v14 = *v7;
  sub_197522A5C();
  swift_beginAccess();

  sub_19752180C();

  result = sub_197522A9C();
  v15 = -1 << *(v14 + 32);
  a2 = result & ~v15;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v13(0);
    do
    {

      v18 = a7(v17, v10);

      if (v18)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v19 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = v10;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1975229BC();
  __break(1u);
  return result;
}

uint64_t sub_197418B20()
{
  v2 = *v0;
  v3 = v0[2];

  v64.val[0] = *(v2 + 80);
  v64.val[1] = v64.val[0];
  v4 = &v61;
  v58 = v64.val[0];
  v59 = v64.val[0];
  vst2q_f64(v4, v64);
  v5 = type metadata accessor for Schema.Index.Types(0, &v61);
  if (sub_197521A5C())
  {
    v6 = 0;
    v57 = *&v58.f64[1];
    v53 = v3 + 32;
    v52 = v3;
    v51 = v5;
    do
    {
      v8 = sub_197521A3C();
      sub_1975219EC();
      if ((v8 & 1) == 0)
      {
        goto LABEL_62;
      }

      if (__OFADD__(v6, 1))
      {
LABEL_63:
        __break(1u);
LABEL_64:
        v61 = 0;
        v62 = 0xE000000000000000;
        sub_1975221EC();
        MEMORY[0x19A8DFF80](0xD000000000000031, 0x8000000197529F70);
        v63 = v1;
        sub_1975227FC();
        v50 = 0;
        v46 = 1073;
        goto LABEL_67;
      }

      v55 = v6 + 1;
      v9 = (v53 + 16 * v6);
      v10 = *(v9 + 8);
      v11 = *v9;

      v12 = sub_1973F68A4(*&v58.f64[0], v57);
      v13 = *(v12 + 16);
      if (v13)
      {
        LODWORD(v56) = v10;
        v63 = MEMORY[0x1E69E7CC0];
        sub_19741E264(0, v13, 0);
        v14 = v63;
        v54 = v12;
        v15 = v12 + 32;
        do
        {
          sub_1973F7E64(v15, &v61);
          v16 = v61;
          v1 = v62;

          sub_1973F82A8(&v61);
          v63 = v14;
          v18 = *(v14 + 16);
          v17 = *(v14 + 24);
          if (v18 >= v17 >> 1)
          {
            sub_19741E264((v17 > 1), v18 + 1, 1);
            v14 = v63;
          }

          *(v14 + 16) = v18 + 1;
          v19 = v14 + 16 * v18;
          *(v19 + 32) = v16;
          *(v19 + 40) = v1;
          v15 += 96;
          --v13;
        }

        while (v13);

        if ((v56 & 1) == 0)
        {
LABEL_48:
          sub_19752228C();

          if (sub_197521A5C())
          {
            v36 = 0;
            while (1)
            {
              v37 = sub_197521A3C();
              sub_1975219EC();
              if (v37)
              {
                v38 = *(v11 + 8 * v36 + 32);

                v39 = v36 + 1;
                if (__OFADD__(v36, 1))
                {
                  goto LABEL_61;
                }
              }

              else
              {
                v38 = sub_19752222C();
                v39 = v36 + 1;
                if (__OFADD__(v36, 1))
                {
LABEL_61:
                  __break(1u);
LABEL_62:
                  sub_19752222C();
                  __break(1u);
                  goto LABEL_63;
                }
              }

              v40 = sub_1973F7BBC(v38, *&v58.f64[0], v57);
              v1 = v41;
              v61 = v40;
              v62 = v41;
              MEMORY[0x1EEE9AC00](v40, v41);
              v49 = &v61;
              v42 = v60;
              v43 = sub_19741E284(sub_197508BAC, v48, v14);
              v60 = v42;
              if ((v43 & 1) == 0)
              {
                v61 = 0;
                v62 = 0xE000000000000000;
                sub_1975221EC();
                MEMORY[0x19A8DFF80](0xD000000000000031, 0x8000000197529F70);
                v63 = v38;
                sub_1975227FC();
                v50 = 0;
                v46 = 1061;
                goto LABEL_67;
              }

              sub_197521FFC();
              if (sub_1974138C4(v44))
              {
                v61 = 0;
                v62 = 0xE000000000000000;
                sub_1975221EC();

                v61 = 0xD00000000000002FLL;
                v62 = 0x800000019752A000;
                MEMORY[0x19A8DFF80](0x492E616D65686353, 0xEC0000007865646ELL);

                v50 = 0;
                v46 = 1066;
                goto LABEL_67;
              }

              ++v36;
              if (v39 == sub_197521A5C())
              {
                goto LABEL_4;
              }
            }
          }

          goto LABEL_4;
        }
      }

      else
      {

        v14 = MEMORY[0x1E69E7CC0];
        if ((v10 & 1) == 0)
        {
          goto LABEL_48;
        }
      }

      v20 = sub_19741E330(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v22 = *(v20 + 2);
      v21 = *(v20 + 3);
      if (v22 >= v21 >> 1)
      {
        v20 = sub_19741E330((v21 > 1), v22 + 1, 1, v20);
      }

      *(v20 + 2) = v22 + 1;
      v54 = v20;
      v23 = &v20[16 * v22];
      *(v23 + 4) = 0x656572742D72;
      *(v23 + 5) = 0xE600000000000000;
      sub_19752228C();

      if (sub_197521A5C())
      {
        v24 = 0;
        v56 = v11 + 32;
        do
        {
          v25 = sub_197521A3C();
          sub_1975219EC();
          if (v25)
          {
            v1 = *(v56 + 8 * v24);

            v26 = __OFADD__(v24++, 1);
            if (v26)
            {
              goto LABEL_60;
            }
          }

          else
          {
            v1 = sub_19752222C();
            v26 = __OFADD__(v24++, 1);
            if (v26)
            {
LABEL_60:
              __break(1u);
              goto LABEL_61;
            }
          }

          v61 = sub_1973F7BBC(v1, *&v58.f64[0], v57);
          v62 = v27;
          MEMORY[0x1EEE9AC00](v61, v27);
          v49 = &v61;
          v28 = v60;
          v29 = sub_19741E284(sub_19741944C, v48, v14);
          v60 = v28;

          if ((v29 & 1) == 0)
          {
            goto LABEL_64;
          }

          sub_197521FFC();
          v31 = v30;
          v61 = v30;
          v32 = swift_conformsToProtocol2();
          if (v32 && v31)
          {
            v33 = v32;
            v34 = v31;
            do
            {
              sub_1973F732C(v34, &v61, v34, v33);
              v34 = v61;
              v33 = swift_conformsToProtocol2();
              if (v33)
              {
                v35 = v34 == 0;
              }

              else
              {
                v35 = 1;
              }
            }

            while (!v35);
          }

          if (!swift_dynamicCastMetatype() && !swift_dynamicCastMetatype() && !swift_dynamicCastMetatype() && !swift_dynamicCastMetatype() && !swift_dynamicCastMetatype() && !swift_dynamicCastMetatype() && !swift_dynamicCastMetatype() && !swift_dynamicCastMetatype() && !swift_dynamicCastMetatype() && !swift_dynamicCastMetatype() && !swift_dynamicCastMetatype() && !swift_dynamicCastMetatype() && !swift_dynamicCastMetatype())
          {
            type metadata accessor for Decimal(0);
            if (!swift_dynamicCastMetatype())
            {
              while (1)
              {
                v61 = 0;
                v62 = 0xE000000000000000;
                sub_1975221EC();
                MEMORY[0x19A8DFF80](0xD000000000000042, 0x8000000197529FB0);
                v63 = v1;
                sub_1975227FC();
                MEMORY[0x19A8DFF80](2108704, 0xE300000000000000);
                v47 = sub_197522B8C();
                MEMORY[0x19A8DFF80](v47);

                v50 = 0;
                v46 = 1078;
LABEL_67:
                v49 = v46;
                sub_1975223EC();
                __break(1u);
              }
            }
          }
        }

        while (v24 != sub_197521A5C());
      }

LABEL_4:
      swift_bridgeObjectRelease_n();

      v7 = sub_197521A5C();
      v6 = v55;
    }

    while (v55 != v7);
  }

  return 1;
}

uint64_t sub_197419468(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_19752282C() & 1;
  }
}

void *sub_1974194C0()
{
  v1 = *v0;
  v2 = v0[2];

  v46.val[0] = *(v1 + 80);
  v46.val[1] = v46.val[0];
  v3 = v45;
  v44 = v46.val[0];
  vst2q_f64(v3, v46);
  type metadata accessor for Schema.Index.Types(0, v45);
  if (sub_197521A5C())
  {
    v4 = 0;
    v42 = v2 + 32;
    v5 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v6 = sub_197521A3C();
      result = sub_1975219EC();
      if ((v6 & 1) == 0)
      {
        goto LABEL_42;
      }

      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v9 = (v42 + 16 * v4);
      v10 = *v9;
      v11 = *(v9 + 8);

      v12 = sub_19741E330(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v14 = *(v12 + 2);
      v13 = *(v12 + 3);
      v15 = v14 + 1;
      v43 = v5;
      if (v11)
      {
        if (v13 >> 1 <= v14)
        {
          v12 = sub_19741E330((v13 > 1), v14 + 1, 1, v12);
        }

        *(v12 + 2) = v15;
        v16 = &v12[16 * v14];
        *(v16 + 4) = 0x656572742D72;
        *(v16 + 5) = 0xE600000000000000;
        sub_19752228C();

        if (sub_197521A5C())
        {
          v17 = 4;
          do
          {
            v18 = v17 - 4;
            v19 = sub_197521A3C();
            sub_1975219EC();
            if (v19)
            {
              v20 = *(v10 + 8 * v17);

              v21 = v17 - 3;
              if (__OFADD__(v18, 1))
              {
                goto LABEL_41;
              }
            }

            else
            {
              v20 = sub_19752222C();
              v21 = v17 - 3;
              if (__OFADD__(v18, 1))
              {
                goto LABEL_41;
              }
            }

            v22 = sub_1973F7BBC(v20, *&v44.f64[0], *&v44.f64[1]);
            v24 = v23;
            v26 = *(v12 + 2);
            v25 = *(v12 + 3);
            if (v26 >= v25 >> 1)
            {
              v12 = sub_19741E330((v25 > 1), v26 + 1, 1, v12);
            }

            *(v12 + 2) = v26 + 1;
            v27 = &v12[16 * v26];
            *(v27 + 4) = v22;
            *(v27 + 5) = v24;
            ++v17;
          }

          while (v21 != sub_197521A5C());
        }
      }

      else
      {
        if (v13 >> 1 <= v14)
        {
          v12 = sub_19741E330((v13 > 1), v14 + 1, 1, v12);
        }

        *(v12 + 2) = v15;
        v28 = &v12[16 * v14];
        *(v28 + 4) = 0x7972616E6962;
        *(v28 + 5) = 0xE600000000000000;
        sub_19752228C();

        if (sub_197521A5C())
        {
          v29 = 4;
          do
          {
            v30 = v29 - 4;
            v31 = sub_197521A3C();
            sub_1975219EC();
            if (v31)
            {
              v32 = *(v10 + 8 * v29);

              v33 = v29 - 3;
              if (__OFADD__(v30, 1))
              {
                goto LABEL_40;
              }
            }

            else
            {
              v32 = sub_19752222C();
              v33 = v29 - 3;
              if (__OFADD__(v30, 1))
              {
LABEL_40:
                __break(1u);
LABEL_41:
                __break(1u);
LABEL_42:
                result = sub_19752222C();
                __break(1u);
                goto LABEL_43;
              }
            }

            v34 = sub_1973F7BBC(v32, *&v44.f64[0], *&v44.f64[1]);
            v36 = v35;
            v38 = *(v12 + 2);
            v37 = *(v12 + 3);
            if (v38 >= v37 >> 1)
            {
              v12 = sub_19741E330((v37 > 1), v38 + 1, 1, v12);
            }

            *(v12 + 2) = v38 + 1;
            v39 = &v12[16 * v38];
            *(v39 + 4) = v34;
            *(v39 + 5) = v36;
            ++v29;
          }

          while (v33 != sub_197521A5C());
        }
      }

      swift_bridgeObjectRelease_n();
      v5 = v43;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_19741E43C(0, v43[2] + 1, 1, v43);
      }

      v41 = v5[2];
      v40 = v5[3];
      if (v41 >= v40 >> 1)
      {
        v5 = sub_19741E43C((v40 > 1), v41 + 1, 1, v5);
      }

      v5[2] = v41 + 1;
      v5[v41 + 4] = v12;
      v4 = v8;
      if (v8 == sub_197521A5C())
      {
        goto LABEL_39;
      }
    }

LABEL_43:
    __break(1u);
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
LABEL_39:

    return v5;
  }

  return result;
}

void *sub_19741997C(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_19741E43C(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE60, &qword_19752C0E0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t Schema.Attribute.__deallocating_deinit()
{

  sub_1973F9E68(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t Schema.Relationship.__deallocating_deinit()
{
  Schema.Relationship.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_197419B14(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  sub_197522A5C();
  __swift_project_boxed_opaque_existential_1(a2, *(a2 + 24));
  sub_1975216BC();
  v7 = sub_197522A9C();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      sub_197414BA4(*(v6 + 48) + 40 * v9, v17);
      v11 = v18;
      v12 = v19;
      __swift_project_boxed_opaque_existential_1(v17, v18);
      LOBYTE(v11) = sub_19749BC0C(a2, v11, v12);
      sub_197414BEC(v17);
      if (v11)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_197414BEC(a2);
    sub_197414BA4(*(v6 + 48) + 40 * v9, a1);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_197414BA4(a2, v17);
    v16 = *v3;
    sub_197419F8C(v17, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v16;
    v14 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v14;
    *(a1 + 32) = *(a2 + 32);
    return 1;
  }
}

uint64_t sub_197419CA8(uint64_t a1)
{
  sub_1975212CC();
  sub_197415898(&qword_1ED7C9DC8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);

  return sub_1975216BC();
}

uint64_t sub_197419D2C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B408, &qword_19752D5C8);
  result = sub_1975221AC();
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
    while (v9)
    {
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      sub_197414BA4(*(v3 + 48) + 40 * (v16 | (v6 << 6)), &v26);
      sub_197522A5C();
      __swift_project_boxed_opaque_existential_1(&v26, *(&v27 + 1));
      sub_1975216BC();
      result = sub_197522A9C();
      v19 = -1 << *(v5 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v11 + 8 * v21);
          if (v25 != -1)
          {
            v12 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v5 + 48) + 40 * v12;
      v14 = v26;
      v15 = v27;
      *(v13 + 32) = v28;
      *v13 = v14;
      *(v13 + 16) = v15;
      ++*(v5 + 16);
    }

    v17 = v6;
    while (1)
    {
      v6 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v18 = *(v3 + 56 + 8 * v6);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_197419F8C(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_19747E054(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_19747F818();
      goto LABEL_12;
    }

    sub_197419D2C(v7 + 1);
  }

  v9 = *v3;
  sub_197522A5C();
  __swift_project_boxed_opaque_existential_1(v6, *(v6 + 24));
  sub_1975216BC();
  result = sub_197522A9C();
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      sub_197414BA4(*(v9 + 48) + 40 * a2, v21);
      v12 = v22;
      v13 = v23;
      __swift_project_boxed_opaque_existential_1(v21, v22);
      LOBYTE(v12) = sub_19749BC0C(v6, v12, v13);
      result = sub_197414BEC(v21);
      if (v12)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v15 = *(v14 + 48) + 40 * a2;
  v16 = *v6;
  v17 = *(v6 + 16);
  *(v15 + 32) = *(v6 + 32);
  *v15 = v16;
  *(v15 + 16) = v17;
  v18 = *(v14 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v14 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1975229BC();
  __break(1u);
  return result;
}

unint64_t sub_19741A158()
{
  result = qword_1ED7C9B78;
  if (!qword_1ED7C9B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7C9B78);
  }

  return result;
}

void *sub_19741A1AC(char *a1, uint64_t a2)
{
  v59 = a1;
  v3 = type metadata accessor for ModelConfiguration(0);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v6, v9);
  v12 = &v57 - v11;
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v57 - v14;
  if (qword_1ED7C9CC0 != -1)
  {
    goto LABEL_61;
  }

  while (1)
  {
    v58 = qword_1ED7C9CC8;
    [qword_1ED7C9CC8 lock];
    if (qword_1ED7C9598 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v16 = sub_19741AA7C(v59, qword_1ED7CE630);
    v61 = v3;
    v64 = v8;
    if (v16)
    {
      v17 = v16;
      swift_endAccess();
      v18 = *(a2 + 16);
      if (!v18)
      {
        goto LABEL_58;
      }

      v60 = v12;
      v19 = *(v4 + 80);
      v67 = v4;
      v68 = a2;
      v20 = a2 + ((v19 + 32) & ~v19);
      v21 = *(v4 + 72);
      while (1)
      {
        sub_19741598C(v20, v15);

        sub_19740B2C8(v15);
        v22 = sub_19752178C();

        v23 = [v17 entitiesForConfiguration_];

        if (!v23)
        {
          break;
        }

        v20 += v21;
        if (!--v18)
        {
          goto LABEL_58;
        }
      }

      v12 = v60;
      v3 = v61;
      v8 = v64;
      v4 = v67;
      a2 = v68;
    }

    else
    {
      swift_endAccess();
    }

    v15 = v59;
    v24 = sub_19741AB44();
    v17 = v24;
    if (!v24)
    {
      goto LABEL_58;
    }

    v67 = *(a2 + 16);
    if (!v67)
    {
      break;
    }

    v25 = 0;
    v66 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v65 = *(v4 + 72);
    v68 = v24;
    v60 = v12;
    while (1)
    {
      sub_19741598C(v66 + v65 * v25, v12);
      v70 = MEMORY[0x1E69E7CC0];
      v27 = *&v12[*(v3 + 40)];
      if (!v27)
      {
        goto LABEL_17;
      }

      v63 = v25;
      v28 = *(v27 + 8);
      if (v28 >> 62)
      {
        break;
      }

      a2 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (a2)
      {
        goto LABEL_21;
      }

LABEL_35:

LABEL_16:
      sub_19741CD44(0, &qword_1ED7C9BA0, 0x1E695D5B8);
      v26 = sub_1975219BC();

      v15 = sub_19752178C();
      [v17 setEntities:v26 forConfiguration:v15];

      v25 = v63;
      v8 = v64;
LABEL_17:
      ++v25;
      sub_19740B2C8(v12);
      if (v25 == v67)
      {
        v40 = 0;
        while (2)
        {
          v43 = sub_19741598C(v66 + v65 * v40, v8);
          v15 = MEMORY[0x19A8E1370](v43);
          v69 = MEMORY[0x1E69E7CC0];
          v44 = *&v8[*(v3 + 40)];
          if (!v44)
          {
            goto LABEL_39;
          }

          v62 = v15;
          v45 = *(v44 + 8);
          if (v45 >> 62)
          {
            v15 = v44;
            a2 = sub_1975220EC();
            v44 = v15;
            v63 = v40;
            if (!a2)
            {
              goto LABEL_56;
            }

LABEL_43:
            if (a2 < 1)
            {
              goto LABEL_60;
            }

            v60 = v44;

            v46 = 0;
            do
            {
              if ((v45 & 0xC000000000000001) != 0)
              {
                v4 = MEMORY[0x19A8E0960](v46, v45);
              }

              else
              {
                v4 = *(v45 + 8 * v46 + 32);
              }

              v47 = [v17 entitiesByName];
              sub_19741CD44(0, &qword_1ED7C9BA0, 0x1E695D5B8);
              v48 = sub_1975215FC();

              swift_beginAccess();
              if (*(v48 + 16) && (v49 = *(v4 + 16), v12 = *(v4 + 24), , v50 = sub_1973F4028(v49, v12), v52 = v51, , (v52 & 1) != 0))
              {
                v53 = *(*(v48 + 56) + 8 * v50);

                v54 = v53;
                MEMORY[0x19A8E00D0]();
                if (*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_1975219FC();
                }

                sub_197521A4C();
              }

              else
              {
              }

              ++v46;
              v17 = v68;
            }

            while (a2 != v46);

            v3 = v61;
          }

          else
          {
            a2 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v63 = v40;
            if (a2)
            {
              goto LABEL_43;
            }

LABEL_56:
          }

          sub_19741CD44(0, &qword_1ED7C9BA0, 0x1E695D5B8);
          v41 = sub_1975219BC();

          v8 = v64;
          v42 = sub_19752178C();
          [v17 setEntities:v41 forConfiguration:v42];

          v15 = v62;
          v40 = v63;
LABEL_39:
          ++v40;
          sub_19740B2C8(v8);
          objc_autoreleasePoolPop(v15);
          if (v40 == v67)
          {
            goto LABEL_57;
          }

          continue;
        }
      }
    }

    v39 = v27;
    a2 = sub_1975220EC();
    v27 = v39;
    if (!a2)
    {
      goto LABEL_35;
    }

LABEL_21:
    if (a2 >= 1)
    {
      v62 = v27;

      v29 = 0;
      do
      {
        if ((v28 & 0xC000000000000001) != 0)
        {
          v30 = MEMORY[0x19A8E0960](v29, v28);
        }

        else
        {
          v30 = *(v28 + 8 * v29 + 32);
        }

        v31 = [v17 entitiesByName];
        sub_19741CD44(0, &qword_1ED7C9BA0, 0x1E695D5B8);
        v32 = sub_1975215FC();

        swift_beginAccess();
        if (*(v32 + 16))
        {
          v33 = *(v30 + 16);
          v4 = *(v30 + 24);

          v34 = sub_1973F4028(v33, v4);
          v36 = v35;

          if (v36)
          {
            v37 = *(*(v32 + 56) + 8 * v34);

            v38 = v37;
            MEMORY[0x19A8E00D0]();
            if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1975219FC();
            }

            sub_197521A4C();

            v17 = v68;
          }

          else
          {

            v17 = v68;
          }
        }

        else
        {
        }

        ++v29;
      }

      while (a2 != v29);

      v12 = v60;
      v3 = v61;
      goto LABEL_16;
    }

    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    swift_once();
  }

LABEL_57:
  [v17 _makeImmutable];
  swift_beginAccess();
  v55 = v17;
  sub_197420530(v55, v59);
  swift_endAccess();

LABEL_58:
  [v58 unlock];
  return v17;
}

id sub_19741AA48()
{
  result = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
  qword_1ED7C9CC8 = result;
  return result;
}

void *sub_19741AA7C(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v3 = sub_1975223CC();

    if (v3)
    {
      sub_1974ADEC0(0, &qword_1EAF2B6B0, 0x1E695D638);
      swift_dynamicCast();
      return v9;
    }
  }

  else if (*(a2 + 16))
  {
    v5 = sub_197420114(a1);
    if (v6)
    {
      v7 = *(*(a2 + 56) + 8 * v5);
      v8 = v7;
      return v7;
    }
  }

  return 0;
}

char **sub_19741AB44()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E695D638]) init];
  v81 = MEMORY[0x1E69E7CC0];
  v61 = v0;
  v2 = *(v0 + 64);
  v3 = (v2 >> 62);
  if (v2 >> 62)
  {
    goto LABEL_55;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v58)
  {
    v5 = MEMORY[0x1E69E7CC0];
    v67 = v2;
    if (!i)
    {
      v8 = MEMORY[0x1E69E7CC0];
      goto LABEL_12;
    }

    if (i < 1)
    {
      break;
    }

    v6 = 0;
    v7 = v2 & 0xC000000000000001;
    do
    {
      if (v7)
      {
        MEMORY[0x19A8E0960](v6);
      }

      else
      {
      }

      ++v6;
      sub_19741B45C(v1, &v81);

      v2 = v67;
    }

    while (i != v6);
    v8 = v81;
LABEL_12:
    v9 = *(v8 + 16);
    if (v9)
    {
      v10 = (v8 + 32);
      do
      {
        v11 = __swift_project_boxed_opaque_existential_0Tm_0(v10, v10[3]);
        v12 = *(v11 + 1);
        v82 = *v11;
        v83 = v12;
        v84 = v11[4];
        sub_19741EA9C(v1);
        v10 += 5;
        --v9;
      }

      while (v9);
    }

    if (v3)
    {
      v13 = v67;
      v14 = sub_1975220EC();
      if (!v14)
      {
LABEL_47:

        v47 = *(v61 + 56);
        v75 = *(v61 + 40);
        v76 = v47;
        v48 = Schema.Version.description.getter();
        v50 = v49;
        v51 = [v1 versionIdentifiers];
        v52 = sub_197521BCC();

        v79 = v52;
        v77 = v48;
        v78 = v50;
        sub_19752218C();
        sub_19741FE94(&v75, v74);
        sub_19752217C();
        sub_197420CA4(&v75);
        swift_dynamicCast();

        v53 = sub_197521BBC();

        [v1 setVersionIdentifiers_];

        v54 = [v1 entities];
        if (!v54)
        {
          sub_19741CD8C(0, &qword_1ED7C9BA0, 0x1E695D5B8);
          sub_1975219CC();
          v54 = sub_1975219BC();
        }

        v55 = sub_19752178C();
        [v1 setEntities:v54 forConfiguration:v55];

        return v1;
      }
    }

    else
    {
      v13 = v67;
      v14 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v14)
      {
        goto LABEL_47;
      }
    }

    v15 = 0;
    v64 = v14;
    v65 = v13 & 0xC000000000000001;
    v62 = v13 + 32;
    v63 = v13 & 0xFFFFFFFFFFFFFF8;
    v68 = v1;
    while (1)
    {
      while (1)
      {
        if (v65)
        {
          v3 = MEMORY[0x19A8E0960](v15, v13);
          v16 = __OFADD__(v15++, 1);
          if (v16)
          {
            goto LABEL_52;
          }
        }

        else
        {
          if (v15 >= *(v63 + 16))
          {
            goto LABEL_54;
          }

          v3 = *(v62 + 8 * v15);

          v16 = __OFADD__(v15++, 1);
          if (v16)
          {
            goto LABEL_52;
          }
        }

        swift_beginAccess();
        if (*(v3[21] + 2))
        {
          break;
        }

        if (v15 == v14)
        {
          goto LABEL_47;
        }
      }

      v66 = v15;
      v17 = [v1 entitiesByName];
      sub_19741CD8C(0, &qword_1ED7C9BA0, 0x1E695D5B8);
      v18 = sub_1975215FC();

      swift_beginAccess();
      if (!*(v18 + 16))
      {
        goto LABEL_57;
      }

      v19 = v3[2];
      v20 = v3[3];

      v21 = sub_1973F4028(v19, v20);
      v23 = v22;

      if ((v23 & 1) == 0)
      {
        goto LABEL_57;
      }

      v73 = *(*(v18 + 56) + 8 * v21);

      v74[0] = v5;
      v24 = v3[21];
      v71 = *(v24 + 2);
      if (v71)
      {
        break;
      }

LABEL_46:
      sub_19741CD8C(0, &qword_1ED7C8688, 0x1E695D5D0);
      v45 = sub_1975219BC();
      v3 = &selRef_expressionForKeyPath_;
      [v73 setIndexes_];

      v46 = sub_1975219BC();

      [v73 setIndexes_];

      v15 = v66;
      v13 = v67;
      v14 = v64;
      if (v66 == v64)
      {
        goto LABEL_47;
      }
    }

    v70 = v24 + 32;

    v26 = 0;
    v69 = v25;
    while (v26 < *(v25 + 16))
    {
      v72 = v26;
      v80 = *&v70[8 * v26];
      *&v75 = 0xD000000000000010;
      *(&v75 + 1) = 0x800000019752A970;

      v27 = sub_19741F61C(&v80, &v75, 60);
      v77 = v5;
      v28 = v80;
      v3 = *(v80 + 16);

      if (v3)
      {
        v1 = 0;
        v29 = (v28 + 40);
        while (v1 < *(v28 + 16))
        {
          v30 = *(v29 - 1);
          v31 = *v29;

          v32 = [v73 propertiesByName];
          sub_19741CD8C(0, &qword_1ED7C9B98, 0x1E695D6D8);
          v33 = sub_1975215FC();
          if (!*(v33 + 16))
          {
            goto LABEL_53;
          }

          v34 = sub_1973F4028(v30, v31);
          if ((v35 & 1) == 0)
          {
            goto LABEL_53;
          }

          v36 = v34;

          v37 = *(*(v33 + 56) + 8 * v36);

          v38 = [objc_allocWithZone(MEMORY[0x1E695D5D8]) initWithProperty:v37 collationType:v27];

          v39 = v38;
          MEMORY[0x19A8E00D0]();
          if (*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v77 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1975219FC();
          }

          v1 = (v1 + 1);
          sub_197521A4C();
          MEMORY[0x19A8DFF80](v30, v31);

          v29 += 2;
          if (v3 == v1)
          {
            v1 = v68;
            v5 = MEMORY[0x1E69E7CC0];
            goto LABEL_42;
          }
        }

        __break(1u);
        break;
      }

LABEL_42:
      swift_bridgeObjectRelease_n();
      v40 = objc_allocWithZone(MEMORY[0x1E695D5D0]);
      v41 = sub_19752178C();

      sub_19741CD8C(0, &qword_1ED7C8680, 0x1E695D5D8);
      v42 = sub_1975219BC();

      v43 = [v40 initWithName:v41 elements:v42];

      v44 = v43;
      MEMORY[0x19A8E00D0]();
      if (*((v74[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v74[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1975219FC();
      }

      v26 = v72 + 1;
      sub_197521A4C();

      v25 = v69;
      if (v72 + 1 == v71)
      {

        goto LABEL_46;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:

    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    v57 = v2;
    v58 = sub_1975220EC();
    v2 = v57;
  }

  __break(1u);
LABEL_57:

  *&v75 = 0;
  *(&v75 + 1) = 0xE000000000000000;
  sub_1975221EC();

  *&v75 = 0xD000000000000026;
  *(&v75 + 1) = 0x800000019752A940;
  v59 = v3[2];
  v60 = v3[3];

  MEMORY[0x19A8DFF80](v59, v60);

  result = sub_1975223EC();
  __break(1u);
  return result;
}

void sub_19741B45C(void *a1, uint64_t a2)
{
  v168 = a2;
  v163 = *v2;
  v166 = a1;
  v178 = sub_19741CB20(a1, v2);
  swift_beginAccess();
  v3 = v2[8];
  v4 = *(v3 + 16);

  v173 = v2;
  swift_beginAccess();
  v177 = v4;
  if (v4)
  {
    v5 = 0;
    v6 = v3 + 32;
    v7 = MEMORY[0x1E69E7CC0];
    v176 = v3;
    while (1)
    {
      if (v5 >= *(v3 + 16))
      {
        goto LABEL_119;
      }

      v8 = v7;
      sub_197413C58(v6, &v186);
      v9 = v173[15];
      v10 = v188;
      v11 = v189;
      __swift_project_boxed_opaque_existential_0Tm_0(&v186, v188);
      v12 = *(v11 + 32);

      v13 = v12(v10, v11);
      if (!*(v9 + 16))
      {
        break;
      }

      sub_1973F4028(v13, v14);
      v16 = v15;

      if ((v16 & 1) == 0)
      {
        goto LABEL_10;
      }

      __swift_destroy_boxed_opaque_existential_0Tm_1(&v186);
      v7 = v8;
      v3 = v176;
LABEL_4:
      ++v5;
      v6 += 40;
      if (v177 == v5)
      {
        goto LABEL_16;
      }
    }

LABEL_10:
    sub_19741CB08(&v186, &v183);
    v17 = v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v193[0] = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1974F6610(0, *(v8 + 16) + 1, 1);
      v17 = v193[0];
    }

    v3 = v176;
    v20 = *(v17 + 16);
    v19 = *(v17 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_1974F6610((v19 > 1), v20 + 1, 1);
    }

    v21 = *(&v184 + 1);
    v22 = v185;
    v23 = __swift_mutable_project_boxed_opaque_existential_1(&v183, *(&v184 + 1));
    MEMORY[0x1EEE9AC00](v23, v23);
    v25 = &v163 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v26 + 16))(v25);
    sub_19750FADC(v20, v25, v193, v21, v22);
    __swift_destroy_boxed_opaque_existential_0Tm_1(&v183);
    v7 = v193[0];
    goto LABEL_4;
  }

  v7 = MEMORY[0x1E69E7CC0];
LABEL_16:

  v27 = *(v7 + 16);
  swift_beginAccess();
  v171 = v27;
  v172 = v7;
  if (v27)
  {
    v28 = 0;
    v164 = 0;
    v170 = v7 + 32;
    v165 = xmmword_19752C280;
    while (1)
    {
      if (v28 >= *(v7 + 16))
      {
        goto LABEL_121;
      }

      sub_197413C58(v170 + 40 * v28, v193);
      sub_197413C58(v193, &v186);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B1C8, &unk_19752EA30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2C190, &qword_197534060);
      if (!swift_dynamicCast())
      {
        goto LABEL_125;
      }

      sub_19741CB08(&v183, v190);
      sub_197413C58(v190, &v186);
      type metadata accessor for Schema.CompositeAttribute();
      v30 = swift_dynamicCast();
      v174 = v28;
      if (v30)
      {
        break;
      }

      v42 = v191;
      v43 = v192;
      __swift_mutable_project_boxed_opaque_existential_1(v190, v191);
      v44 = (*(v43 + 8))(v168, v42, v43);
      if (!v44)
      {
        goto LABEL_127;
      }

      v45 = v44;
      [v44 set:1 swiftDataPropertyFlags:v163];
      if ([v45 isIndexedBySpotlight])
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BB90, &unk_197534070);
        v46 = swift_allocObject();
        *(v46 + 16) = v165;
        v47 = v178;
        v48 = [v178 name];
        if (!v48)
        {
          goto LABEL_124;
        }

        v49 = v48;
        sub_19741CD8C(0, &qword_1EAF2AA78, 0x1E696ABC8);
        v50 = sub_1975217BC();
        v52 = v51;

        *(v46 + 56) = MEMORY[0x1E69E6158];
        *(v46 + 64) = sub_19750FDC0();
        *(v46 + 32) = v50;
        *(v46 + 40) = v52;
        v53 = sub_197521DAC();
        [v47 setCoreSpotlightDisplayNameExpression_];
      }

      v54 = [v178 properties];
      v55 = sub_19741CD8C(0, &qword_1ED7C9B98, 0x1E695D6D8);
      v56 = sub_1975219CC();

      v169 = v55;
      v175 = v56 & 0xFFFFFFFFFFFFFF8;
      if (v56 >> 62)
      {
        v177 = sub_1975220EC();
      }

      else
      {
        v177 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v57 = 0;
      v176 = v56 & 0xC000000000000001;
      while (1)
      {
        if (v177 == v57)
        {

          v70 = v45;
          v71 = v178;
          v72 = [v178 properties];
          v73 = sub_1975219CC();

          *&v186 = v73;
          MEMORY[0x19A8E00D0]();
          v29 = v174;
          if (*((v186 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v186 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1975219FC();
          }

          sub_197521A4C();
          v74 = sub_1975219BC();

          [v71 setProperties_];

          __swift_destroy_boxed_opaque_existential_0Tm_1(v193);
          v7 = v172;
          goto LABEL_21;
        }

        if (v176)
        {
          v59 = MEMORY[0x19A8E0960](v57, v56);
        }

        else
        {
          if (v57 >= *(v175 + 16))
          {
            goto LABEL_118;
          }

          v59 = *(v56 + 8 * v57 + 32);
        }

        v60 = v59;
        if (__OFADD__(v57, 1))
        {
          goto LABEL_117;
        }

        v61 = [v59 name];
        v62 = sub_1975217BC();
        v64 = v63;

        v65 = v45;
        v66 = [v45 name];
        v67 = sub_1975217BC();
        v69 = v68;

        if (v62 == v67 && v64 == v69)
        {
          break;
        }

        v58 = sub_19752282C();

        ++v57;
        v45 = v65;
        if (v58)
        {
          goto LABEL_52;
        }
      }

      v45 = v65;
LABEL_52:
      __swift_destroy_boxed_opaque_existential_0Tm_1(v193);

LABEL_20:
      v7 = v172;
      v29 = v174;
LABEL_21:
      v28 = v29 + 1;
      __swift_destroy_boxed_opaque_existential_0Tm_1(v190);
      if (v28 == v171)
      {
        goto LABEL_76;
      }
    }

    v31 = v183;
    v32 = sub_19750E9D4();
    if (!v32)
    {
LABEL_127:
      *&v186 = 0;
      *(&v186 + 1) = 0xE000000000000000;
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD00000000000002FLL, 0x800000019752AA90);
      sub_19752235C();
      goto LABEL_128;
    }

    v33 = v32;
    [v33 set:1 swiftDataPropertyFlags:?];
    swift_beginAccess();
    sub_197413B20(v31 + 64, &v186);
    v34 = v178;
    v169 = v31;
    if (v188)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B5C8, &unk_19752EA10);
      if (swift_dynamicCast())
      {
        if (*(&v184 + 1))
        {
          sub_19749B314(&v183, &v186);
          v35 = v173[2];
          v36 = v173[3];
          v37 = type metadata accessor for CompositeEncoder();
          v38 = swift_allocObject();
          v39 = MEMORY[0x1E69E7CC0];
          v38[4] = MEMORY[0x1E69E7CC0];

          v38[5] = sub_197441730(v39);
          v40 = [objc_allocWithZone(MEMORY[0x1E695DF90]) init];
          v38[2] = v35;
          v38[3] = v36;
          v38[6] = v31;
          v38[7] = v40;
          __swift_project_boxed_opaque_existential_0Tm_0(&v186, v188);
          *(&v184 + 1) = v37;
          *&v185 = sub_19750FE74(&qword_1ED7C6928, type metadata accessor for CompositeEncoder, &unk_19752E930);
          *&v183 = v38;

          v41 = v164;
          sub_19752169C();
          if (v41)
          {
          }

          v164 = 0;
          v34 = v178;
          __swift_destroy_boxed_opaque_existential_0Tm_1(&v183);
          [v33 setDefaultValue_];

          __swift_destroy_boxed_opaque_existential_0Tm_1(&v186);
          goto LABEL_55;
        }
      }

      else
      {
        v184 = 0u;
        v185 = 0u;
        v183 = 0u;
      }
    }

    else
    {
      sub_19750FE14(&v186, &qword_1EAF2AF20, &unk_19752F320);
      v183 = 0u;
      v184 = 0u;
      v185 = 0u;
    }

    sub_19750FE14(&v183, &qword_1EAF2B5D0, &unk_197534040);
LABEL_55:
    v75 = [v34 properties];
    v76 = sub_19741CD8C(0, &qword_1ED7C9B98, 0x1E695D6D8);
    v77 = sub_1975219CC();

    v177 = v77;
    v167 = v76;
    v175 = v77 & 0xFFFFFFFFFFFFFF8;
    if (v77 >> 62)
    {
      v176 = sub_1975220EC();
    }

    else
    {
      v176 = *((v177 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v78 = 0;
    v79 = v177 & 0xC000000000000001;
    while (v176 != v78)
    {
      if (v79)
      {
        v81 = MEMORY[0x19A8E0960](v78, v177);
      }

      else
      {
        if (v78 >= *(v175 + 16))
        {
          goto LABEL_116;
        }

        v81 = *(v177 + 8 * v78 + 32);
      }

      v82 = v81;
      if (__OFADD__(v78, 1))
      {
LABEL_115:
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
        *&v185 = 0;
        v183 = 0u;
        v184 = 0u;
        sub_19750FE14(&v183, &qword_1EAF2C198, &qword_197534068);
        *&v186 = 0;
        *(&v186 + 1) = 0xE000000000000000;
        sub_1975221EC();
        MEMORY[0x19A8DFF80](0xD000000000000017, 0x800000019752AA70);
        sub_19752235C();
LABEL_128:
        sub_1975223EC();
        __break(1u);
        return;
      }

      v83 = [v81 name];
      v84 = sub_1975217BC();
      v86 = v85;

      v87 = v33;
      v88 = [v33 name];
      v89 = sub_1975217BC();
      v91 = v90;

      if (v84 == v89 && v86 == v91)
      {

        v33 = v87;

        goto LABEL_18;
      }

      v80 = sub_19752282C();

      ++v78;
      v33 = v87;
      if (v80)
      {

LABEL_18:

LABEL_19:
        __swift_destroy_boxed_opaque_existential_0Tm_1(v193);
        goto LABEL_20;
      }
    }

    v92 = v178;
    v93 = [v178 properties];
    v94 = sub_1975219CC();

    *&v186 = v94;
    MEMORY[0x19A8E00D0]();
    if (*((v186 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v186 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1975219FC();
    }

    sub_197521A4C();
    v95 = sub_1975219BC();

    [v92 setProperties_];

    goto LABEL_19;
  }

  v164 = 0;
LABEL_76:
  v96 = v173;
  swift_beginAccess();
  v97 = v96[4];
  if ((v97 & 0xC000000000000001) != 0)
  {

    sub_1975220AC();
    sub_19750FE74(&qword_1EAF2B670, type metadata accessor for Schema.Entity, &protocol conformance descriptor for Schema.Entity);
    sub_197521C1C();
    v98 = *(&v186 + 1);
    v97 = v186;
    v99 = v187;
    v100 = v188;
    v101 = v189;
  }

  else
  {
    v102 = -1 << *(v97 + 32);
    v98 = v97 + 56;
    v103 = ~v102;
    v104 = -v102;
    if (v104 < 64)
    {
      v105 = ~(-1 << v104);
    }

    else
    {
      v105 = -1;
    }

    v101 = v105 & *(v97 + 56);

    v99 = v103;
    v100 = 0;
  }

  v175 = v99;
  v176 = v98;
  v106 = (v99 + 64) >> 6;
  v177 = v106;
  if (v97 < 0)
  {
    goto LABEL_89;
  }

LABEL_83:
  v107 = v100;
  v108 = v101;
  for (i = v100; !v108; ++v107)
  {
    i = v107 + 1;
    if (__OFADD__(v107, 1))
    {
      goto LABEL_120;
    }

    if (i >= v106)
    {
      goto LABEL_97;
    }

    v108 = *(v98 + 8 * i);
  }

  v110 = (v108 - 1) & v108;
  v111 = *(*(v97 + 48) + ((i << 9) | (8 * __clz(__rbit64(v108)))));

  if (v111)
  {
    while (1)
    {
      v113 = v97;
      v114 = v166;
      sub_19741B45C(v166, v168);
      v115 = [v114 entitiesByName];
      sub_19741CD8C(0, &qword_1ED7C9BA0, 0x1E695D5B8);
      v116 = sub_1975215FC();

      swift_beginAccess();
      if (!*(v116 + 16))
      {
        break;
      }

      v117 = *(v111 + 16);
      v118 = *(v111 + 24);

      v119 = sub_1973F4028(v117, v118);
      v121 = v120;

      if ((v121 & 1) == 0)
      {
        break;
      }

      v122 = *(*(v116 + 56) + 8 * v119);

      v123 = v122;
      v124 = v178;
      v125 = [v178 subentities];
      v126 = sub_1975219CC();

      v193[0] = v126;
      MEMORY[0x19A8E00D0]();
      if (*((v193[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v193[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1975219FC();
      }

      sub_197521A4C();
      v127 = sub_1975219BC();

      [v124 setSubentities_];

      v100 = i;
      v101 = v110;
      v97 = v113;
      v98 = v176;
      v106 = v177;
      if ((v97 & 0x8000000000000000) == 0)
      {
        goto LABEL_83;
      }

LABEL_89:
      v112 = sub_19752212C();
      if (v112)
      {
        v190[0] = v112;
        swift_dynamicCast();
        v111 = v193[0];
        i = v100;
        v110 = v101;
        if (v193[0])
        {
          continue;
        }
      }

      goto LABEL_97;
    }

    v193[0] = 0;
    v193[1] = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD00000000000002DLL, 0x800000019752AAC0);
    v190[0] = v111;
    sub_19752235C();
    MEMORY[0x19A8DFF80](10, 0xE100000000000000);
    v159 = [v178 description];
    v160 = sub_1975217BC();
    v162 = v161;

    MEMORY[0x19A8DFF80](v160, v162);

    goto LABEL_128;
  }

LABEL_97:
  sub_1973FF47C(v97);
  v128 = v173;
  swift_beginAccess();

  sub_19741F4EC(v129);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B970, &unk_19752FC90);
  v130 = sub_1975219BC();

  v131 = v178;
  [v178 setUniquenessConstraints_];

  swift_beginAccess();
  v132 = v128[21];
  v175 = *(v132 + 16);
  if (v175)
  {
    v133 = MEMORY[0x1E69E7CC0];
    v182 = MEMORY[0x1E69E7CC0];
    v173 = 0x800000019752A970;
    v174 = v132 + 32;

    v135 = 0;
    v170 = v134;
    v171 = 0xD000000000000010;
    while (v135 < *(v134 + 16))
    {
      v176 = v135;
      v136 = *(v174 + 8 * v135);
      v180[0] = v171;
      v180[1] = v173;
      v181 = v136;

      v177 = sub_19741F61C(&v181, v180, 244);
      v179 = v133;
      v137 = v181;
      v138 = *(v181 + 16);

      if (v138)
      {
        v139 = 0;
        v140 = (v137 + 40);
        while (v139 < *(v137 + 16))
        {
          v141 = *(v140 - 1);
          v142 = *v140;

          v143 = [v178 propertiesByName];
          sub_19741CD8C(0, &qword_1ED7C9B98, 0x1E695D6D8);
          v144 = sub_1975215FC();
          if (!*(v144 + 16))
          {
            goto LABEL_123;
          }

          v145 = sub_1973F4028(v141, v142);
          if ((v146 & 1) == 0)
          {
            goto LABEL_123;
          }

          v147 = v145;

          v148 = *(*(v144 + 56) + 8 * v147);

          v149 = objc_allocWithZone(MEMORY[0x1E695D5D8]);
          v150 = [v149 initWithProperty:v148 collationType:v177];

          v151 = v150;
          MEMORY[0x19A8E00D0]();
          if (*((v179 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v179 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1975219FC();
          }

          ++v139;
          sub_197521A4C();
          MEMORY[0x19A8DFF80](v141, v142);

          v140 += 2;
          if (v138 == v139)
          {
            v133 = MEMORY[0x1E69E7CC0];
            goto LABEL_109;
          }
        }

        __break(1u);
        goto LABEL_115;
      }

LABEL_109:
      swift_bridgeObjectRelease_n();
      v152 = objc_allocWithZone(MEMORY[0x1E695D5D0]);
      v153 = sub_19752178C();

      sub_19741CD8C(0, &qword_1ED7C8680, 0x1E695D5D8);
      v154 = sub_1975219BC();

      v155 = [v152 initWithName:v153 elements:v154];

      v156 = v155;
      MEMORY[0x19A8E00D0]();
      if (*((v182 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v182 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1975219FC();
        v133 = MEMORY[0x1E69E7CC0];
      }

      v135 = v176 + 1;
      sub_197521A4C();

      v134 = v170;
      if (v135 == v175)
      {

        sub_19741CD8C(0, &qword_1ED7C8688, 0x1E695D5D0);
        v157 = sub_1975219BC();

        v158 = v178;
        [v178 setIndexes_];

        return;
      }
    }

    goto LABEL_122;
  }
}

uint64_t sub_19741CB08(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

id sub_19741CB20(void *a1, uint64_t a2)
{
  v4 = [a1 entitiesByName];
  sub_19741CD8C(0, &qword_1ED7C9BA0, 0x1E695D5B8);
  v5 = sub_1975215FC();

  swift_beginAccess();
  if (*(v5 + 16) && (v6 = *(a2 + 16), v7 = *(a2 + 24), , v8 = sub_1973F4028(v6, v7), v10 = v9, , (v10 & 1) != 0))
  {
    v11 = *(*(v5 + 56) + 8 * v8);

    return v11;
  }

  else
  {

    v13 = [objc_allocWithZone(MEMORY[0x1E695D5B8]) init];

    v14 = sub_19752178C();

    [v13 setName_];

    v15 = v13;
    v16 = [a1 entities];
    v17 = sub_1975219CC();

    MEMORY[0x19A8E00D0]();
    if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1975219FC();
    }

    sub_197521A4C();
    v18 = sub_1975219BC();

    [a1 setEntities_];

    return v15;
  }
}

uint64_t sub_19741CD44(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_19741CD8C(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

id sub_19741CE6C()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 56);
  *&v92 = v2;
  v3 = swift_conformsToProtocol2();
  if (v3)
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = v3;
    do
    {
      sub_1973F732C(v2, &v92, v2, v5);
      v2 = v92;
      v5 = swift_conformsToProtocol2();
      if (v5)
      {
        v6 = v2 == 0;
      }

      else
      {
        v6 = 1;
      }
    }

    while (!v6);
  }

  v7 = *(v0 + 120);
  if ((v7 & 0x40) != 0)
  {
    v8 = [objc_allocWithZone(MEMORY[0x1E695D598]) init];
    swift_beginAccess();
    v9 = *(v0 + 24);
    *&v92 = *(v0 + 16);
    *(&v92 + 1) = v9;

    MEMORY[0x19A8DFF80](0x706164414E4F534ALL, 0xEB00000000726574);
    v10 = sub_19752178C();

    [v8 setAdapterName_];
  }

  else
  {
    v8 = [objc_allocWithZone(MEMORY[0x1E695D530]) init];
  }

  v94 = 0;
  swift_beginAccess();
  if (sub_1975217DC() == 0x7470697263736564 && v11 == 0xEB000000006E6F69)
  {
    goto LABEL_93;
  }

  v12 = sub_19752282C();
  v8 = v8;

  if (v12)
  {
    goto LABEL_94;
  }

  v13 = sub_19752178C();

  [v8 setName_];

  swift_beginAccess();

  v14 = sub_19752181C();

  if (v14 >= 1)
  {

    v15 = sub_19752178C();

    [v8 setRenamingIdentifier_];
  }

  swift_beginAccess();
  if (*(v1 + 112))
  {

    v16 = sub_19752181C();

    if (v16 >= 1)
    {
      if (*(v1 + 112))
      {

        v17 = sub_19752178C();
      }

      else
      {
        v17 = 0;
      }

      [v8 setVersionHashModifier_];
    }
  }

  swift_beginAccess();
  [v8 setOptional_];
  swift_beginAccess();
  v18 = *(v1 + 48);
  v19 = (v18 + 32);
  v20 = *(v18 + 16) + 1;
  do
  {
    if (!--v20)
    {
      if ((v7 & 0x40) != 0)
      {
        swift_beginAccess();
        sub_197413B20(v1 + 64, &v92);
        v31 = *(&v93[0] + 1);
        if (*(&v93[0] + 1))
        {
          v32 = __swift_project_boxed_opaque_existential_0Tm_0(&v92, *(&v93[0] + 1));
          v33 = *(v31 - 8);
          MEMORY[0x1EEE9AC00](v32, v32);
          v35 = &v85 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v33 + 16))(v35);
          v36 = sub_19752281C();
          (*(v33 + 8))(v35, v31);
          __swift_destroy_boxed_opaque_existential_0Tm_1(&v92);
        }

        else
        {
          v36 = 0;
        }

        [v8 setDefaultValue_];
        swift_unknownObjectRelease();
        goto LABEL_61;
      }

      v27 = sub_1973F6C38(v2);
      if (v27)
      {
        [v8 setAttributeType_];
      }

      else
      {
        v37 = swift_conformsToProtocol2();
        if (v37 && v2)
        {
          sub_19750F2AC(v2, v1, v8, v2, v37, &v94, v2, v37);
        }
      }

      if ([v8 attributeType])
      {
        goto LABEL_61;
      }

      *&v92 = 0;
      *(&v92 + 1) = 0xE000000000000000;
      sub_1975221EC();

      *&v92 = 0xD00000000000002ELL;
      *(&v92 + 1) = 0x800000019752A8B0;
      ObjCClassMetadata = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B6A8, &unk_19752F380);
      v38 = sub_1975217CC();
      MEMORY[0x19A8DFF80](v38);

      v84 = 0;
      v39 = 378;
      goto LABEL_91;
    }

    v21 = *v19;
    v19 += 40;
  }

  while (v21 != 1);
  [v8 setAttributeType_];
  v22 = *(v1 + 48);
  v23 = *(v22 + 16);
  if (!v23)
  {
    goto LABEL_90;
  }

  v24 = (v22 + 32);
  while (1)
  {
    v25 = *(v24 + 30);
    v26 = v24[1];
    v92 = *v24;
    *(v93 + 14) = v25;
    v93[0] = v26;
    if (v92)
    {
      break;
    }

    v24 = (v24 + 40);
    if (!--v23)
    {
      goto LABEL_90;
    }
  }

  v28 = *(&v93[0] + 1);
  if (!*(&v93[0] + 1))
  {
LABEL_90:
    *&v92 = 0;
    *(&v92 + 1) = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD00000000000001ALL, 0x800000019752A780);
    ObjCClassMetadata = v1;
    type metadata accessor for Schema.Attribute();
    sub_19752235C();
    MEMORY[0x19A8DFF80](0xD00000000000001DLL, 0x800000019752A7A0);
    v84 = 0;
    v39 = 306;
    goto LABEL_91;
  }

  v29 = *&v93[0];
  sub_19741DE14(&v92, &ObjCClassMetadata);
  if ((sub_19750606C(v29, v28) & 1) == 0 && (v29 != 0xD000000000000024 || v28 != 0x800000019752A210) && (sub_19752282C() & 1) == 0 && (v29 != 0xD000000000000019 || v28 != 0x800000019752A7C0) && (sub_19752282C() & 1) == 0)
  {
    if (v29 == sub_1975217BC() && v28 == v30)
    {

      goto LABEL_57;
    }

    v40 = sub_19752282C();

    if ((v40 & 1) == 0)
    {
      v64 = sub_19752178C();
      v87 = objc_opt_self();
      v65 = [v87 valueTransformerNames];
      type metadata accessor for NSValueTransformerName(0);
      v85 = v66;
      v67 = sub_1975219CC();

      v86 = &v85;
      ObjCClassMetadata = v64;
      MEMORY[0x1EEE9AC00](v68, v69);
      i = &ObjCClassMetadata;
      LOBYTE(v65) = sub_19741E9F4(sub_19741E9AC, &v82, v67);

      if (v65)
      {
        v70 = v87;
        v87 = v64;
        v71 = [v70 valueTransformerForName_];
        if (v71)
        {
          v72 = v71;
          v91 = sub_19741CD8C(0, &qword_1ED7C7C88, 0x1E696B0A0);
          ObjCClassMetadata = v72;
          __swift_project_boxed_opaque_existential_0Tm_0(&ObjCClassMetadata, v91);
          swift_getDynamicType();
          v86 = v72;
          __swift_destroy_boxed_opaque_existential_0Tm_1(&ObjCClassMetadata);
          if (swift_dynamicCastMetatype())
          {
            ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
            v74 = [ObjCClassFromMetadata allowsReverseTransformation];
            v75 = v87;
            if (v74)
            {
              [ObjCClassFromMetadata transformedValueClass];
              ObjCClassMetadata = swift_getObjCClassMetadata();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2C178, "̐");
              sub_1975217CC();
              v76 = sub_19752178C();
              sub_19741EE34(&v92);
              [v8 setValueTransformerName_];

              v41 = sub_19752178C();

              [v8 setAttributeValueClassName_];

              goto LABEL_60;
            }

            ObjCClassMetadata = 0;
            v90 = 0xE000000000000000;
            sub_1975221EC();
            MEMORY[0x19A8DFF80](0xD000000000000011, 0x800000019752A860);
            MEMORY[0x19A8DFF80](v29, v28);
            MEMORY[0x19A8DFF80](0xD00000000000002BLL, 0x800000019752A880);
            v39 = 319;
          }

          else
          {
            ObjCClassMetadata = 0;
            v90 = 0xE000000000000000;
            sub_1975221EC();

            ObjCClassMetadata = 0xD00000000000001ELL;
            v90 = 0x800000019752A840;
            v78 = [v86 description];
            v79 = sub_1975217BC();
            v81 = v80;

            MEMORY[0x19A8DFF80](v79, v81);

            v39 = 328;
          }
        }

        else
        {
          ObjCClassMetadata = 0;
          v90 = 0xE000000000000000;
          sub_1975221EC();
          MEMORY[0x19A8DFF80](0xD00000000000001FLL, 0x800000019752A820);
          v88 = v87;
          sub_19752235C();
          v39 = 331;
        }
      }

      else
      {
        ObjCClassMetadata = 0;
        v90 = 0xE000000000000000;
        sub_1975221EC();
        MEMORY[0x19A8DFF80](0xD000000000000031, 0x800000019752A7E0);
        MEMORY[0x19A8DFF80](v29, v28);
        v39 = 313;
      }

LABEL_91:
      for (i = v39; ; i = 288)
      {
        sub_1975223EC();
        __break(1u);
LABEL_93:
        v77 = v8;

LABEL_94:
        v84 = 0;
      }
    }
  }

LABEL_57:
  if ((sub_19750606C(v29, v28) & 1) == 0)
  {
    v41 = sub_19752178C();
    sub_19741EE34(&v92);
    [v8 setValueTransformerName_];
LABEL_60:

    goto LABEL_61;
  }

  sub_19741EE34(&v92);
LABEL_61:
  v42 = *(v1 + 48);
  v43 = *(v42 + 16);
  v44 = v43 + 1;
  v45 = 67;
  while (--v44)
  {
    v46 = *(v42 + v45);
    v45 += 40;
    if (v46 == 1)
    {
      [v8 setPreservesValueInHistoryOnDeletion_];
      v42 = *(v1 + 48);
      v43 = *(v42 + 16);
      break;
    }
  }

  v47 = v43 + 1;
  v48 = 68;
  while (--v47)
  {
    v49 = *(v42 + v48);
    v48 += 40;
    if (v49 == 1)
    {
      [v8 setIndexedBySpotlight_];
      v42 = *(v1 + 48);
      v43 = *(v42 + 16);
      break;
    }
  }

  v50 = (v42 + 66);
  v51 = v43 + 1;
  while (--v51)
  {
    v52 = *v50;
    v50 += 40;
    if (v52 == 1)
    {
      [v8 setAllowsCloudEncryption_];
      break;
    }
  }

  if (sub_19741DD1C())
  {
    [v8 setAllowsExternalBinaryDataStorage_];
  }

  v53 = *(v1 + 48);
  v54 = (v53 + 69);
  v55 = *(v53 + 16) + 1;
  while (--v55)
  {
    v56 = *v54;
    v54 += 40;
    if (v56 == 1)
    {
      [v8 setTransient_];
      break;
    }
  }

  swift_beginAccess();
  if ((v94 & 1) == 0)
  {
    swift_beginAccess();
    sub_197413B20(v1 + 64, &v92);
    v57 = *(&v93[0] + 1);
    if (*(&v93[0] + 1))
    {
      v58 = __swift_project_boxed_opaque_existential_0Tm_0(&v92, *(&v93[0] + 1));
      v59 = *(v57 - 8);
      MEMORY[0x1EEE9AC00](v58, v58);
      v61 = &v85 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v59 + 16))(v61);
      v62 = sub_19752281C();
      (*(v59 + 8))(v61, v57);
      __swift_destroy_boxed_opaque_existential_0Tm_1(&v92);
    }

    else
    {
      v62 = 0;
    }

    [v8 setDefaultValue_];
    swift_unknownObjectRelease();
  }

  return v8;
}

uint64_t sub_19741DD1C()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
  v11[0] = v1;
  v2 = swift_conformsToProtocol2();
  if (v2)
  {
    v3 = v1 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    v4 = v2;
    do
    {
      sub_1973F732C(v1, v11, v1, v4);
      v1 = v11[0];
      v4 = swift_conformsToProtocol2();
      if (v4)
      {
        v5 = v1 == 0;
      }

      else
      {
        v5 = 1;
      }
    }

    while (!v5);
  }

  result = swift_dynamicCastMetatype();
  if (result)
  {
    swift_beginAccess();
    v7 = *(v0 + 48);
    v8 = (v7 + 65);
    v9 = *(v7 + 16) + 1;
    do
    {
      result = --v9 != 0;
      if (!v9)
      {
        break;
      }

      v10 = *v8;
      v8 += 40;
    }

    while (v10 != 1);
  }

  return result;
}

uint64_t sub_19741DE84(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_1975220FC();

    if (v8)
    {

      type metadata accessor for Schema.Relationship();
      swift_dynamicCast();
      result = 0;
      *a1 = v21;
      return result;
    }

    result = sub_1975220EC();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v18 = sub_19747DC14(v7, result + 1, &qword_1EAF2B378, &qword_19752D528, type metadata accessor for Schema.Relationship);
    v23 = v18;
    v19 = *(v18 + 16);
    if (*(v18 + 24) <= v19)
    {

      sub_197417660(v19 + 1, &qword_1EAF2B378, &qword_19752D528);
      v20 = v23;
    }

    else
    {
      v20 = v18;
    }

    sub_19747EC28(a2, v20);

    *v3 = v20;
    goto LABEL_18;
  }

  sub_197522A5C();
  swift_beginAccess();

  sub_19752180C();

  v10 = sub_197522A9C();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v2;

    sub_1974188C0(v17, v12, isUniquelyReferenced_nonNull_native, &qword_1EAF2B378, &qword_19752D528, type metadata accessor for Schema.Relationship, _s9SwiftData6SchemaC12RelationshipC2eeoiySbAE_AEtFZ_0);
    *v2 = v22;
LABEL_18:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  while (1)
  {

    v15 = _s9SwiftData6SchemaC12RelationshipC2eeoiySbAE_AEtFZ_0(v14, a2);

    if (v15)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);

  return 0;
}

char *sub_19741E158(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE50, &qword_19752D530);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_4(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_19741E264(char *a1, int64_t a2, char a3)
{
  result = sub_19741E158(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_19741E284(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

char *sub_19741E330(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE50, &qword_19752D530);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_19741E43C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B358, &unk_19752D500);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE60, &qword_19752C0E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *Schema.Relationship.deinit()
{

  return v0;
}

void *sub_19741E5C8(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_19752242C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 16 * v19) = *(*(v4 + 48) + 16 * v19);
        *(*(v6 + 56) + 8 * v19) = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t _s9SwiftData6SchemaC12RelationshipC2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = v4 == *(a2 + 16) && v5 == *(a2 + 24);
  if (v6 || (sub_19752282C() & 1) != 0)
  {
    swift_beginAccess();
    v7 = *(a1 + 56);
    swift_beginAccess();
    if (sub_1974D191C(v7, *(a2 + 56)))
    {
      swift_beginAccess();
      v8 = *(a1 + 64);
      swift_beginAccess();
      if (v8 == *(a2 + 64))
      {
        if (swift_beginAccess(), v10 = *(a1 + 72), v11 = *(a1 + 80), swift_beginAccess(), v10 == *(a2 + 72)) && v11 == *(a2 + 80) || (sub_19752282C())
        {
          swift_beginAccess();
          v12 = *(a1 + 88);
          swift_beginAccess();
          if (sub_1974EE0A8(v12, *(a2 + 88)))
          {
            swift_beginAccess();
            v14 = *(a1 + 96);
            v13 = *(a1 + 104);
            swift_beginAccess();
            v15 = *(a2 + 104);
            if (v13)
            {
              if (v15 && (v14 == *(a2 + 96) && v13 == v15 || (sub_19752282C() & 1) != 0))
              {
                return 1;
              }
            }

            else if (!v15)
            {
              return 1;
            }
          }
        }
      }
    }
  }

  return 0;
}

uint64_t sub_19741E91C(void *a1, uint64_t *a2)
{
  v2 = sub_1975217BC();
  v4 = v3;
  if (v2 == sub_1975217BC() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_19752282C();
  }

  return v7 & 1;
}

uint64_t sub_19741E9F4(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v12 = *v6;
      v8 = v12;
      v9 = a1(&v12);

      if (v3)
      {
        break;
      }

      v10 = v7-- == 0;
      ++v6;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

void sub_19741EA9C(void *a1)
{
  v2 = v1;
  v3 = [a1 entitiesByName];
  sub_19741CD8C(0, &qword_1ED7C9BA0, 0x1E695D5B8);
  v4 = sub_1975215FC();

  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  if (!*(v4 + 16) || (v7 = sub_1973F4028(*(v2 + 8), *(v2 + 16)), (v8 & 1) == 0))
  {

    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000033, 0x800000019752A9B0);
    MEMORY[0x19A8DFF80](v5, v6);
    MEMORY[0x19A8DFF80](0xD00000000000002DLL, 0x800000019752A9F0);
    v19 = [*v2 description];
    v20 = sub_1975217BC();
    v22 = v21;

    MEMORY[0x19A8DFF80](v20, v22);

    goto LABEL_12;
  }

  v23 = *(*(v4 + 56) + 8 * v7);

  v9 = *v2;
  [*v2 setDestinationEntity_];
  v10 = v23;
  v11 = *(v2 + 32);
  if (v11)
  {
    v12 = *(v2 + 24);
    v13 = [v23 relationshipsByName];
    sub_19741CD8C(0, &qword_1ED7C9350, 0x1E695D6E8);
    v14 = sub_1975215FC();

    if (*(v14 + 16))
    {
      v15 = sub_1973F4028(v12, v11);
      if (v16)
      {
        v17 = *(*(v14 + 56) + 8 * v15);

        v18 = v17;
        [v9 setInverseRelationship_];

        v10 = v23;
        goto LABEL_7;
      }
    }

    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000017, 0x800000019752AA20);
    sub_19752235C();
    MEMORY[0x19A8DFF80](0xD000000000000026, 0x800000019752AA40);
    MEMORY[0x19A8DFF80](v5, v6);
    MEMORY[0x19A8DFF80](46, 0xE100000000000000);
    MEMORY[0x19A8DFF80](v12, v11);
    MEMORY[0x19A8DFF80](0x646F6D206E692027, 0xEA00000000006C65);
LABEL_12:
    sub_1975223EC();
    __break(1u);
    return;
  }

LABEL_7:
}

id sub_19741EEAC(uint64_t *a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E695D6E8]) init];
  swift_beginAccess();
  if (sub_1975217DC() == 0x7470697263736564 && v4 == 0xEB000000006E6F69)
  {

    goto LABEL_55;
  }

  v6 = sub_19752282C();

  if (v6)
  {
LABEL_55:
    result = sub_1975223EC();
    __break(1u);
    return result;
  }

  v7 = v3;

  v8 = sub_19752178C();

  [v7 setName_];

  swift_beginAccess();

  v9 = sub_19752181C();

  if (v9 >= 1)
  {

    v10 = sub_19752178C();

    [v7 setRenamingIdentifier_];
  }

  swift_beginAccess();
  if (*(v1 + 160))
  {

    v11 = sub_19752181C();

    if (v11 >= 1)
    {
      if (*(v1 + 160))
      {

        v12 = sub_19752178C();
      }

      else
      {
        v12 = 0;
      }

      [v7 setVersionHashModifier_];
    }
  }

  swift_beginAccess();
  [v7 setDeleteRule_];
  swift_beginAccess();
  v13 = *(v1 + 64);
  if (swift_conformsToProtocol2())
  {
    v14 = v13 == 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = !v14;
  [v7 setOptional_];
  v16 = *(v1 + 64);
  v45[0] = v16;
  v17 = swift_conformsToProtocol2();
  if (v17 && v16)
  {
    v18 = v17;
    do
    {
      sub_1973F732C(v16, v45, v16, v18);
      v16 = v45[0];
      v18 = swift_conformsToProtocol2();
      if (v18)
      {
        v19 = v16 == 0;
      }

      else
      {
        v19 = 1;
      }
    }

    while (!v19);
  }

  v45[0] = v16;
  v20 = swift_conformsToProtocol2();
  if (v20)
  {
    v21 = v16 == 0;
  }

  else
  {
    v21 = 1;
  }

  if (!v21)
  {
    v22 = v20;
    do
    {
      sub_1973F732C(v16, v45, v16, v22);
      v16 = v45[0];
      v22 = swift_conformsToProtocol2();
      if (v22)
      {
        v23 = v16 == 0;
      }

      else
      {
        v23 = 1;
      }
    }

    while (!v23);
  }

  if (swift_conformsToProtocol2())
  {
    v24 = v16 == 0;
  }

  else
  {
    v24 = 1;
  }

  if (v24)
  {
    swift_beginAccess();
    if (*(v1 + 128))
    {
      v25 = 0;
    }

    else
    {
      v25 = *(v1 + 120);
    }

    [v7 setMinCount_];
    swift_beginAccess();
    if (*(v1 + 144))
    {
      v26 = 0;
    }

    else
    {
      v26 = *(v1 + 136);
    }
  }

  else
  {
    [v7 setMinCount_];
    v26 = 1;
  }

  [v7 setMaxCount_];
  swift_beginAccess();
  v28 = *(v1 + 72);
  v27 = *(v1 + 80);
  swift_beginAccess();
  v30 = *(v1 + 96);
  v29 = *(v1 + 104);
  v45[3] = &type metadata for PendingRelationshipLink;
  v45[4] = &off_1F0BA97B8;
  v31 = swift_allocObject();
  v45[0] = v31;
  v31[2] = v7;
  v31[3] = v28;
  v31[4] = v27;
  v31[5] = v30;
  v31[6] = v29;
  v32 = *a1;

  v33 = v7;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v32 = sub_19741F4C8(0, v32[2] + 1, 1, v32);
  }

  v35 = v32[2];
  v34 = v32[3];
  if (v35 >= v34 >> 1)
  {
    v32 = sub_19741F4C8((v34 > 1), v35 + 1, 1, v32);
  }

  v36 = __swift_mutable_project_boxed_opaque_existential_1(v45, &type metadata for PendingRelationshipLink);
  MEMORY[0x1EEE9AC00](v36, v36);
  swift_cvw_initWithCopy();
  v43 = &type metadata for PendingRelationshipLink;
  v44 = &off_1F0BA97B8;
  v37 = swift_allocObject();
  *&v42 = v37;
  *(v37 + 16) = v39;
  *(v37 + 32) = v40;
  *(v37 + 48) = v41;
  v32[2] = v35 + 1;
  sub_19741CB08(&v42, &v32[5 * v35 + 4]);
  __swift_destroy_boxed_opaque_existential_0Tm_1(v45);
  *a1 = v32;
  return v33;
}

uint64_t sub_19741F480()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_19741F4EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_1974F65D0(0, v1, 0);
    v4 = a1 + 32;
    v2 = v9;
    do
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE60, &qword_19752C0E0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B970, &unk_19752FC90);
      swift_dynamicCast();
      v6 = *(v9 + 16);
      v5 = *(v9 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1974F65D0((v5 > 1), v6 + 1, 1);
      }

      *(v9 + 16) = v6 + 1;
      *(v9 + 8 * v6 + 32) = v8;
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_19741F61C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_19741F7A4(0);
  v5 = v3;
  if (v4 == 0x656572742D72 && v3 == 0xE600000000000000 || (sub_19752282C() & 1) != 0)
  {

    MEMORY[0x19A8DFF80](0x6565725452, 0xE500000000000000);
    return 1;
  }

  else if (v4 == 0x7972616E6962 && v5 == 0xE600000000000000 || (sub_19752282C() & 1) != 0)
  {

    MEMORY[0x19A8DFF80](0x7972616E6942, 0xE600000000000000);
    return 0;
  }

  else
  {
    sub_1975221EC();

    MEMORY[0x19A8DFF80](v4, v5);
    result = sub_1975223EC();
    __break(1u);
  }

  return result;
}

uint64_t sub_19741F7A4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_19741F830(v3);
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

uint64_t sub_19741F844(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *v4;
  if (*(*v4 + 24) > *(*v4 + 16))
  {
    if ((a3 & 1) == 0)
    {
      goto LABEL_68;
    }

    for (i = *v4; ; *v4 = i)
    {
LABEL_61:
      *(i + 8 * (a2 >> 6) + 56) |= 1 << a2;
      v54 = *(i + 48) + 40 * a2;
      v55 = *(v6 + 16);
      *v54 = *v6;
      *(v54 + 16) = v55;
      *(v54 + 32) = *(v6 + 32);
      v56 = *(i + 16);
      v57 = __OFADD__(v56, 1);
      v58 = v56 + 1;
      if (!v57)
      {
        *(i + 16) = v58;
        return result;
      }

LABEL_67:
      __break(1u);
LABEL_68:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2C188, &unk_197534050);
      v59 = sub_19752219C();
      i = v59;
      if (*(v7 + 16))
      {
        break;
      }

LABEL_83:
    }

    v60 = (v59 + 56);
    v61 = v7 + 56;
    v62 = ((1 << *(i + 32)) + 63) >> 6;
    if (i != v7 || v60 >= v61 + 8 * v62)
    {
      memmove(v60, (v7 + 56), 8 * v62);
    }

    v63 = 0;
    *(i + 16) = *(v7 + 16);
    v64 = 1 << *(v7 + 32);
    v65 = *(v7 + 56);
    v66 = -1;
    if (v64 < 64)
    {
      v66 = ~(-1 << v64);
    }

    v67 = v66 & v65;
    v68 = (v64 + 63) >> 6;
    if ((v66 & v65) != 0)
    {
      do
      {
        v69 = __clz(__rbit64(v67));
        v67 &= v67 - 1;
LABEL_81:
        v72 = 40 * (v69 | (v63 << 6));
        sub_19741FFE0(*(v7 + 48) + v72, &v78);
        v73 = *(i + 48) + v72;
        v74 = v78;
        v75 = v79;
        *(v73 + 32) = v80;
        *v73 = v74;
        *(v73 + 16) = v75;
      }

      while (v67);
    }

    v70 = v63;
    while (1)
    {
      v63 = v70 + 1;
      if (__OFADD__(v70, 1))
      {
        break;
      }

      if (v63 >= v68)
      {
        goto LABEL_83;
      }

      v71 = *(v61 + 8 * v63);
      ++v70;
      if (v71)
      {
        v69 = __clz(__rbit64(v71));
        v67 = (v71 - 1) & v71;
        goto LABEL_81;
      }
    }

    __break(1u);
    goto LABEL_85;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2C188, &unk_197534050);
  if ((a3 & 1) == 0)
  {
    v30 = sub_1975221AC();
    i = v30;
    if (!*(v7 + 16))
    {
      goto LABEL_56;
    }

    v77 = v4;
    v31 = 0;
    a2 = v7 + 56;
    v32 = 1 << *(v7 + 32);
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    else
    {
      v33 = -1;
    }

    v34 = v33 & *(v7 + 56);
    v4 = (v32 + 63) >> 6;
    v35 = v30 + 56;
    while (1)
    {
      if (v34)
      {
        v40 = __clz(__rbit64(v34));
        v34 &= v34 - 1;
      }

      else
      {
        v41 = v31;
        do
        {
          v31 = v41 + 1;
          if (__OFADD__(v41, 1))
          {
            goto LABEL_64;
          }

          if (v31 >= v4)
          {

            v4 = v77;
            goto LABEL_57;
          }

          v42 = *(a2 + 8 * v31);
          ++v41;
        }

        while (!v42);
        v40 = __clz(__rbit64(v42));
        v34 = (v42 - 1) & v42;
      }

      sub_19741FFE0(*(v7 + 48) + 40 * (v40 | (v31 << 6)), &v78);
      v43 = sub_19752215C();
      v44 = -1 << *(i + 32);
      v45 = v43 & ~v44;
      v46 = v45 >> 6;
      if (((-1 << v45) & ~*(v35 + 8 * (v45 >> 6))) != 0)
      {
        v36 = __clz(__rbit64((-1 << v45) & ~*(v35 + 8 * (v45 >> 6)))) | v45 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v47 = 0;
        v48 = (63 - v44) >> 6;
        do
        {
          if (++v46 == v48 && (v47 & 1) != 0)
          {
            goto LABEL_66;
          }

          v49 = v46 == v48;
          if (v46 == v48)
          {
            v46 = 0;
          }

          v47 |= v49;
          v50 = *(v35 + 8 * v46);
        }

        while (v50 == -1);
        v36 = __clz(__rbit64(~v50)) + (v46 << 6);
      }

      *(v35 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
      v37 = *(i + 48) + 40 * v36;
      v38 = v78;
      v39 = v79;
      *(v37 + 32) = v80;
      *v37 = v38;
      *(v37 + 16) = v39;
      ++*(i + 16);
    }
  }

  v10 = sub_1975221AC();
  i = v10;
  if (!*(v7 + 16))
  {
    goto LABEL_56;
  }

  v76 = v4;
  v11 = 0;
  a2 = v7 + 56;
  v12 = 1 << *(v7 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(v7 + 56);
  v4 = (v12 + 63) >> 6;
  v15 = v10 + 56;
LABEL_12:
  if (v14)
  {
    v18 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    goto LABEL_19;
  }

  v19 = v11;
  while (1)
  {
    v11 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    if (v11 >= v4)
    {
      break;
    }

    v20 = *(a2 + 8 * v11);
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v14 = (v20 - 1) & v20;
LABEL_19:
      v21 = *(v7 + 48) + 40 * (v18 | (v11 << 6));
      v78 = *v21;
      v79 = *(v21 + 16);
      v80 = *(v21 + 32);
      v22 = sub_19752215C();
      v23 = -1 << *(i + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) != 0)
      {
        v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        do
        {
          if (++v25 == v27 && (v26 & 1) != 0)
          {
            goto LABEL_65;
          }

          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
        }

        while (v29 == -1);
        v16 = __clz(__rbit64(~v29)) + (v25 << 6);
      }

      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(i + 48) + 40 * v16;
      *v17 = v78;
      *(v17 + 16) = v79;
      *(v17 + 32) = v80;
      ++*(i + 16);
      goto LABEL_12;
    }
  }

  v51 = 1 << *(v7 + 32);
  if (v51 >= 64)
  {
    bzero((v7 + 56), ((v51 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
  }

  else
  {
    *a2 = -1 << v51;
  }

  v4 = v76;
  *(v7 + 16) = 0;
LABEL_56:

LABEL_57:
  *v4 = i;
  result = sub_19752215C();
  v52 = -1 << *(i + 32);
  a2 = result & ~v52;
  if (((*(i + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
  {
    goto LABEL_61;
  }

  v7 = ~v52;
  while (1)
  {
    sub_19741FFE0(*(i + 48) + 40 * a2, &v78);
    v53 = MEMORY[0x19A8E0890](&v78, v6);
    result = sub_197420CA4(&v78);
    if (v53)
    {
      break;
    }

    a2 = (a2 + 1) & v7;
    if (((*(i + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
    {
      goto LABEL_61;
    }
  }

LABEL_85:
  result = sub_1975229BC();
  __break(1u);
  return result;
}

uint64_t sub_19741FE94(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_19752215C();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      sub_19741FFE0(*(v6 + 48) + 40 * v9, v16);
      v11 = MEMORY[0x19A8E0890](v16, a2);
      sub_197420CA4(v16);
      if (v11)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_197420CA4(a2);
    sub_19741FFE0(*(v6 + 48) + 40 * v9, a1);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_19741FFE0(a2, v16);
    v15 = *v3;
    sub_19741F844(v16, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v15;
    v13 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v13;
    *(a1 + 32) = *(a2 + 32);
    return 1;
  }
}

uint64_t Schema.Version.description.getter()
{
  v3 = sub_1975227DC();
  MEMORY[0x19A8DFF80](46, 0xE100000000000000);
  v0 = sub_1975227DC();
  MEMORY[0x19A8DFF80](v0);

  MEMORY[0x19A8DFF80](46, 0xE100000000000000);
  v1 = sub_1975227DC();
  MEMORY[0x19A8DFF80](v1);

  return v3;
}

unint64_t sub_197420114(void *a1)
{
  sub_197522A5C();
  v2 = a1[6];
  v3 = a1[7];
  MEMORY[0x19A8E1190](a1[5]);
  MEMORY[0x19A8E1190](v2);
  MEMORY[0x19A8E1190](v3);
  v4 = a1[8];
  if (!(v4 >> 62))
  {
    result = MEMORY[0x19A8E1190](*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_10:
    v9 = sub_197522A9C();
    return sub_1974202CC(a1, v9);
  }

  v10 = sub_1975220EC();
  MEMORY[0x19A8E1190](v10);
  result = sub_1975220EC();
  v6 = result;
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v6 >= 1)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = 0;
      do
      {
        MEMORY[0x19A8E0960](v7++, v4);
        swift_beginAccess();

        sub_19752180C();

        swift_unknownObjectRelease();
      }

      while (v6 != v7);
    }

    else
    {
      v8 = v4 + 32;
      do
      {
        v8 += 8;
        swift_beginAccess();

        sub_19752180C();

        --v6;
      }

      while (v6);
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

unint64_t sub_1974202CC(void *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v20 = ~v3;
    v5 = a1[5];
    v23 = a1[7];
    v24 = a1[6];
    do
    {
      v8 = *(*(v22 + 48) + 8 * v4);
      v10 = v8[5];
      v9 = v8[6];
      v11 = v8[7];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B418, &qword_19752F170);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_19752D100;
      *(inited + 32) = v10;
      *(inited + 40) = v9;
      *(inited + 48) = v11;
      v13 = swift_initStackObject();
      *(v13 + 16) = xmmword_19752D100;
      *(v13 + 32) = v5;
      *(v13 + 40) = v24;
      *(v13 + 48) = v23;
      if (inited == v13 || *(inited + 32) == v5 && *(inited + 40) == v24 && *(inited + 48) == v23)
      {
        swift_setDeallocating();
        swift_setDeallocating();
      }

      else
      {
        v14 = sub_19749ED2C(v13, inited);
        swift_setDeallocating();
        swift_setDeallocating();
        if (v14)
        {
          goto LABEL_5;
        }
      }

      v15 = swift_initStackObject();
      *(v15 + 16) = xmmword_19752D100;
      *(v15 + 32) = v5;
      *(v15 + 40) = v24;
      *(v15 + 48) = v23;
      v16 = swift_initStackObject();
      *(v16 + 16) = xmmword_19752D100;
      *(v16 + 32) = v10;
      *(v16 + 40) = v9;
      *(v16 + 48) = v11;
      if (v15 == v16 || *(v15 + 32) == v10 && *(v15 + 40) == v9 && *(v15 + 48) == v11)
      {
        swift_setDeallocating();
        swift_setDeallocating();
LABEL_4:
        v6 = v8[8];
        v7 = a1[8];

        LOBYTE(v6) = sub_197421268(v6, v7);

        if (v6)
        {
          return v4;
        }

        goto LABEL_5;
      }

      v17 = sub_19749ED2C(v16, v15);
      swift_setDeallocating();
      swift_setDeallocating();
      if ((v17 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_5:
      v4 = (v4 + 1) & v20;
    }

    while (((*(v21 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_197420530(uint64_t a1, void *a2)
{
  v3 = v2;
  if ((*v2 & 0xC000000000000001) == 0)
  {
    goto LABEL_23;
  }

  result = sub_1975220EC();
  if (__OFADD__(result, 1))
  {
    goto LABEL_25;
  }

  if (result == -1)
  {

    *v2 = MEMORY[0x1E69E7CC8];
    goto LABEL_23;
  }

  v18 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B398, &unk_19752D550);
  v7 = sub_19752244C();
  v22 = v7;
  sub_1975223AC();
  if (!sub_1975223DC())
  {
LABEL_21:

    v3 = v18;
    *v18 = v7;
LABEL_23:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    result = sub_197421138(a1, a2, isUniquelyReferenced_nonNull_native);
    *v3 = v19;
    return result;
  }

  type metadata accessor for Schema();
  while (1)
  {
    swift_dynamicCast();
    sub_19741CD44(0, &qword_1EAF2B6B0, 0x1E695D638);
    swift_dynamicCast();
    v9 = *(v7 + 16);
    if (*(v7 + 24) <= v9)
    {
      sub_197420D40(v9 + 1, 1);
    }

    v7 = v22;
    sub_197522A5C();
    v10 = v21[6];
    v11 = v21[7];
    MEMORY[0x19A8E1190](v21[5]);
    MEMORY[0x19A8E1190](v10);
    MEMORY[0x19A8E1190](v11);
    v12 = v21[8];
    if (v12 >> 62)
    {
      break;
    }

    result = MEMORY[0x19A8E1190](*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_11;
    }

LABEL_6:
    sub_197522A9C();
    v8 = sub_19752208C();
    *(v22 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v22[6] + 8 * v8) = v21;
    *(v22[7] + 8 * v8) = v20;
    ++v22[2];
    if (!sub_1975223DC())
    {
      goto LABEL_21;
    }
  }

  v16 = sub_1975220EC();
  MEMORY[0x19A8E1190](v16);
  result = sub_1975220EC();
  v13 = result;
  if (!result)
  {
    goto LABEL_6;
  }

LABEL_11:
  if (v13 >= 1)
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v14 = 0;
      do
      {
        MEMORY[0x19A8E0960](v14++, v12);
        swift_beginAccess();

        sub_19752180C();

        swift_unknownObjectRelease();
      }

      while (v13 != v14);
    }

    else
    {
      v15 = v12 + 32;
      do
      {
        v15 += 8;
        swift_beginAccess();

        sub_19752180C();

        --v13;
      }

      while (v13);
    }

    goto LABEL_6;
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

unint64_t sub_197420900(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t Schema.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_197420984(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

void sub_1974209EC(uint64_t a1)
{
  sub_197420BE8(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ModelConfiguration(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_197420B28(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_19752157C();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_19752156C();
}

void sub_197420BE8(uint64_t a1)
{
  if (!qword_1ED7CA300)
  {
    sub_1975212CC();
    v1 = sub_197521F5C();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED7CA300);
    }
  }
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_197420CF8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_197420D40(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B398, &unk_19752D550);
  v43 = v4;
  v6 = sub_19752243C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v39 = v3;
    v40 = (v5 + 64);
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 64);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 64;
    v41 = v5;
    v42 = v6;
    while (1)
    {
      if (!v11)
      {
        v17 = v8;
        result = v40;
        while (1)
        {
          v8 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            __break(1u);
            goto LABEL_46;
          }

          if (v8 >= v12)
          {
            break;
          }

          v19 = v40[v8];
          ++v17;
          if (v19)
          {
            v16 = __clz(__rbit64(v19));
            v44 = (v19 - 1) & v19;
            goto LABEL_15;
          }
        }

        if ((v43 & 1) == 0)
        {

          v3 = v39;
          goto LABEL_44;
        }

        v38 = 1 << *(v5 + 32);
        v3 = v39;
        if (v38 >= 64)
        {
          bzero(v40, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v40 = -1 << v38;
        }

        *(v5 + 16) = 0;
        break;
      }

      v16 = __clz(__rbit64(v11));
      v44 = (v11 - 1) & v11;
LABEL_15:
      v20 = v16 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v43 & 1) == 0)
      {

        v23 = v22;
      }

      sub_197522A5C();
      v24 = v21[6];
      v25 = v21[7];
      MEMORY[0x19A8E1190](v21[5]);
      MEMORY[0x19A8E1190](v24);
      MEMORY[0x19A8E1190](v25);
      v26 = v21[8];
      v45 = v22;
      if (v26 >> 62)
      {
        v37 = sub_1975220EC();
        MEMORY[0x19A8E1190](v37);
        result = sub_1975220EC();
        v27 = result;
        if (!result)
        {
          goto LABEL_26;
        }
      }

      else
      {
        result = MEMORY[0x19A8E1190](*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10));
        v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v27)
        {
          goto LABEL_26;
        }
      }

      if (v27 < 1)
      {
        goto LABEL_47;
      }

      if ((v26 & 0xC000000000000001) != 0)
      {
        v28 = 0;
        do
        {
          MEMORY[0x19A8E0960](v28++, v26);
          swift_beginAccess();

          sub_19752180C();

          swift_unknownObjectRelease();
        }

        while (v27 != v28);
      }

      else
      {
        v29 = v26 + 32;
        do
        {
          v29 += 8;
          swift_beginAccess();

          sub_19752180C();

          --v27;
        }

        while (v27);
      }

LABEL_26:
      result = sub_197522A9C();
      v7 = v42;
      v30 = -1 << *(v42 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v13 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v15 = v45;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v13 + 8 * v32);
          if (v36 != -1)
          {
            v14 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v31) & ~*(v13 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v15 = v45;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v42 + 48) + 8 * v14) = v21;
      *(*(v42 + 56) + 8 * v14) = v15;
      ++*(v42 + 16);
      v5 = v41;
      v11 = v44;
    }
  }

LABEL_44:
  *v3 = v7;
  return result;
}

uint64_t sub_197421138(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_197420114(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_19747A39C();
      v9 = v17;
      goto LABEL_8;
    }

    sub_197420D40(v14, a3 & 1);
    v9 = sub_197420114(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      type metadata accessor for Schema();
      sub_1975229CC();
      __break(1u);
      return MEMORY[0x1EEE66BB8]();
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v9) = a1;

    return MEMORY[0x1EEE66BB8]();
  }

  sub_197421260(v9, a2, a1, v19);
}

uint64_t sub_197421268(unint64_t a1, unint64_t a2)
{
  v4 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_32;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (a2 >> 62)
  {
    result = sub_1975220EC();
    if (v5 == result)
    {
      goto LABEL_5;
    }

LABEL_34:
    v16 = 0;
    return v16 & 1;
  }

  result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 != result)
  {
    goto LABEL_34;
  }

LABEL_5:
  if (!v5)
  {
    goto LABEL_28;
  }

  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  if ((a1 & 0x8000000000000000) != 0)
  {
    v7 = a1;
  }

  if (v4)
  {
    v8 = v7;
  }

  v9 = a2 & 0xFFFFFFFFFFFFFF8;
  v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  if ((a2 & 0x8000000000000000) != 0)
  {
    v9 = a2;
  }

  if (a2 >> 62)
  {
    v10 = v9;
  }

  if (v8 == v10)
  {
LABEL_28:
    v16 = 1;
    return v16 & 1;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v11 = a2 & 0xC000000000000001;
    v12 = 4;
    while (1)
    {
      v13 = v12 - 4;
      v14 = v12 - 3;
      if (__OFADD__(v12 - 4, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        v5 = sub_1975220EC();
        goto LABEL_3;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x19A8E0960](v12 - 4, a1);
        if (v11)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        v4 = *(a1 + 8 * v12);

        if (v11)
        {
LABEL_20:
          v15 = MEMORY[0x19A8E0960](v12 - 4, a2);
          goto LABEL_25;
        }
      }

      if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

      v15 = *(a2 + 8 * v12);

LABEL_25:
      v16 = _s9SwiftData6SchemaC6EntityC2eeoiySbAE_AEtFZ_0(v4, v15);

      if (v16)
      {
        ++v12;
        if (v14 != v5)
        {
          continue;
        }
      }

      return v16 & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_197421420(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_1974214F4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v12 = *(a1 + 16);
  v13 = *(type metadata accessor for DataStoreFetchRequest(0, a4, a5, a4) + 36);
  v14 = v12;
  sub_1974076EC(a2 + v13, a3, a4, a5);
  if (v6)
  {
  }

  else
  {
    v16 = v15;
    sub_1973F3D34(0, &qword_1ED7C9360, 0x1E695D620);
    v17 = sub_197521E7C();

    *a6 = v17;
  }
}

uint64_t sub_1974215D0(uint64_t a1, _BYTE *a2, uint64_t a3, NSObject *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v120 = a5;
  v112 = a4;
  v135 = a3;
  v134 = a1;
  v152 = a6;
  v14 = sub_19752139C();
  v123 = sub_197521F5C();
  v114 = *(v123 - 1);
  MEMORY[0x1EEE9AC00](v123, v15);
  v122 = &v108[-v16];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v116 = sub_197521F5C();
  v111 = *(v116 - 8);
  v19 = MEMORY[0x1EEE9AC00](v116, v18);
  v118 = &v108[-v20];
  v110 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v117 = &v108[-v22];
  v138 = a7;
  v23 = v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v145 = a6;
  v146 = AssociatedTypeWitness;
  v119 = AssociatedTypeWitness;
  v147 = a8;
  v148 = AssociatedConformanceWitness;
  v115 = type metadata accessor for DataStoreFetchResult(0, &v145);
  v109 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115, v25);
  v136 = &v108[-v26];
  v27 = type metadata accessor for EditingState(0);
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v132 = &v108[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Request = type metadata accessor for DataStoreFetchRequest(0, a6, a8, v30);
  v31 = *(Request - 8);
  MEMORY[0x1EEE9AC00](Request, v32);
  v139 = &v108[-v33];
  v140 = a6;
  v141 = a8;
  Descriptor = type metadata accessor for FetchDescriptor(0, a6, a8, v34);
  v36 = *(Descriptor - 8);
  v38 = MEMORY[0x1EEE9AC00](Descriptor, v37);
  v40 = &v108[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v38, v41);
  v43 = &v108[-v42];
  swift_beginAccess();
  v113 = v36;
  v44 = *(v36 + 16);
  v133 = Descriptor;
  i = (v36 + 16);
  v130 = v44;
  v44(v43, a2, Descriptor);
  v137 = a9;
  v128 = *(a9 + 80);
  v129 = a9 + 80;
  v127 = OBJC_IVAR____TtC9SwiftData12ModelContext_editingState;
  swift_beginAccess();
  v124 = (v31 + 8);
  v45 = (v114 + 16);
  *&v121 = v14 - 8;
  v46 = (v114 + 8);
  v126 = v43;
  while (1)
  {
    v47 = v132;
    sub_197404E70(v127 + v135, v132);
    v130(v40, v43, v133);
    v48 = v139;
    v49 = v47;
    v50 = v140;
    v51 = v141;
    sub_197407438(v49, v40, v140, v141, v139);
    v52 = v23;
    (v128)(v48, v50, v51, v138, v137);
    if (!v23)
    {
      v60 = *&v136[*(v115 + 52)];

      v61 = v119;
      v62 = sub_197521A5C();
      v46 = sub_197405108();
      v63 = MEMORY[0x19A8DFD40](v62, &type metadata for PersistentIdentifier, v61, v46);
      v132 = v108;
      v151 = v63;
      v145 = v60;
      MEMORY[0x1EEE9AC00](v63, v64);
      v65 = v138;
      *&v108[-48] = v140;
      *&v108[-40] = v65;
      v66 = v137;
      v104 = v141;
      v105 = v137;
      v106 = &v151;
      sub_197521AAC();
      swift_getWitnessTable();
      sub_19752195C();

      v67 = v112;
      swift_beginAccess();
      isa = v67->isa;
      v71 = *(v67->isa + 7);
      v70 = v67->isa + 56;
      v69 = v71;
      v72 = 1 << *(isa + 32);
      v73 = -1;
      if (v72 < 64)
      {
        v73 = ~(-1 << v72);
      }

      v55 = v73 & v69;
      v57 = (v72 + 63) >> 6;
      v128 = (v110 + 48);
      v127 = (v110 + 32);
      v123 = (v110 + 8);
      v122 = (v111 + 8);
      v110 = v66 + 40;
      v132 = isa;

      v74 = 0;
      *&v75 = 136315394;
      v121 = v75;
      v76 = v118;
      v130 = v70;
      v129 = v57;
      for (i = v46; v55; v57 = v129)
      {
LABEL_20:
        while (1)
        {
          v82 = *(v132 + 6) + ((v74 << 10) | (16 * __clz(__rbit64(v55))));
          v84 = *(v82 + 8);
          v55 &= v55 - 1;
          v145 = *v82;
          v83 = v145;
          LOBYTE(v146) = v84;
          sub_1974028EC(v145, v84);
          sub_1974028EC(v83, v84);
          sub_19752167C();
          sub_1974028C8(v145, v146);
          if ((*v128)(v76, 1, v61) == 1)
          {
            break;
          }

          v99 = v117;
          v100 = (*v127)(v117, v76, v61);
          v101 = MEMORY[0x19A8E1370](v100);
          sub_1974B82B0(v135, v99, v136, v120, v83, v84, v140, v138, v141, v137, &v145);
          objc_autoreleasePoolPop(v101);
          sub_1974028C8(v83, v84);
          v46 = i;
          v70 = v130;
          v57 = v129;
          (*v123)(v117, v61);
          v48 = v139;
          if (!v55)
          {
            goto LABEL_16;
          }
        }

        (*v122)(v76, v116);
        if (qword_1EAF2AD00 != -1)
        {
          swift_once();
        }

        v85 = sub_19752157C();
        __swift_project_value_buffer(v85, qword_1EAF33E50);
        sub_1974028EC(v83, v84);
        swift_unknownObjectRetain();
        v86 = sub_19752155C();
        v87 = sub_197521DDC();
        swift_unknownObjectRelease();
        sub_1974028C8(v83, v84);
        if (os_log_type_enabled(v86, v87))
        {
          v88 = swift_slowAlloc();
          v112 = v86;
          v89 = v88;
          v114 = swift_slowAlloc();
          v143[0] = v114;
          *v89 = v121;
          v90 = *(v137 + 40);
          LODWORD(v111) = v87;
          v91 = v90(v138);
          v93 = sub_197462310(v91, v92, v143);

          *(v89 + 4) = v93;
          *(v89 + 12) = 2080;
          v145 = v83;
          LOBYTE(v146) = v84;
          sub_1974028EC(v83, v84);
          v94 = sub_1975217CC();
          v96 = sub_197462310(v94, v95, v143);

          *(v89 + 14) = v96;
          v97 = v112;
          _os_log_impl(&dword_1973F2000, v112, v111, "data store (%s) did not return a snapshot for: %s", v89, 0x16u);
          v98 = v114;
          swift_arrayDestroy();
          MEMORY[0x19A8E1B50](v98, -1, -1);
          MEMORY[0x19A8E1B50](v89, -1, -1);
        }

        else
        {
        }

        v78 = v140;
        v79 = type metadata accessor for _InvalidFutureBackingData(0, v140, v141, v77);
        v145 = v83;
        LOBYTE(v146) = v84;
        sub_1974028EC(v83, v84);
        sub_1974028EC(v83, v84);
        v80 = sub_197512F60(v78, &v145);
        v148 = v79;
        WitnessTable = swift_getWitnessTable();
        v145 = v80;
        v143[3] = v83;
        v144 = v84;
        swift_beginAccess();
        v142 = v78;
        swift_getExtendedExistentialTypeMetadata();
        v46 = i;
        sub_19752166C();
        sub_19752168C();
        swift_endAccess();
        sub_1974028C8(v83, v84);
        v61 = v119;
        v76 = v118;
        v48 = v139;
        v70 = v130;
      }

LABEL_16:
      while (1)
      {
        v81 = v74 + 1;
        if (__OFADD__(v74, 1))
        {
          break;
        }

        if (v81 >= v57)
        {
          (*v124)(v48, Request);

          (*(v109 + 8))(v136, v115);
          return (*(v113 + 8))(v126, v133);
        }

        v55 = *(v70 + 8 * v81);
        ++v74;
        if (v55)
        {
          v74 = v81;
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_30:
      (*v46)(v55, v57);
      v145 = 0;
      v146 = 0xE000000000000000;
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD00000000000007FLL, 0x8000000197527130);
      sub_1975227FC();
      MEMORY[0x19A8DFF80](10, 0xE100000000000000);
      v103 = (*(v137 + 40))(v138);
      MEMORY[0x19A8DFF80](v103);

      v107 = 0;
      v106 = 2719;
      result = sub_1975223EC();
      __break(1u);
      return result;
    }

    (*v124)(v48, Request);
    v150 = v23;
    v53 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE98, &unk_19752E9E0);
    if (!swift_dynamicCast() || LOBYTE(v143[0]) != 1)
    {
      break;
    }

    v55 = v122;
    v43 = v126;
    v56 = v14;
    v57 = v123;
    (*v45)(v122, v126, v123);
    v58 = *(v56 - 8);
    if ((*(v58 + 48))(v55, 1, v56) == 1)
    {
      goto LABEL_30;
    }

    v59 = *v46;
    (*v46)(v55, v57);
    v59(v43, v57);
    (*(v58 + 56))(v43, 1, 1, v56);

    v23 = 0;
    v14 = v56;
  }

  return (*(v113 + 8))(v126, v133);
}

uint64_t sub_19742291C(void *a1, char a2, void *a3, unsigned __int8 a4)
{
  if (!a2)
  {
    if (!a4)
    {
      sub_197422C6C();
      return sub_197521F3C() & 1;
    }

    type metadata accessor for PersistentIdentifierImplementation();
    swift_allocObject();
    v11 = sub_19750C5E0(a1);
    sub_1974028C8(a1, 0);
    v12 = a4;
    if (!a4)
    {
      goto LABEL_27;
    }

    goto LABEL_19;
  }

  if (a2 != 1)
  {
    if (a4 == 2)
    {
      v14 = sub_19750A470();
      v16 = v15;
      if (v14 == sub_19750A470() && v16 == v17)
      {
      }

      else
      {
        v23 = sub_19752282C();

        if ((v23 & 1) == 0)
        {
          return 0;
        }
      }

      v24 = sub_19750A588();
      v26 = v25;
      if (v24 == sub_19750A588() && v26 == v27)
      {

        return 1;
      }

      else
      {
        v28 = sub_19752282C();

        return v28 & 1;
      }
    }

    type metadata accessor for PersistentIdentifierImplementation();
    v11 = swift_allocObject();
    v11[5] = 0;
    v11[6] = 0;
    v11[7] = sub_19750A470();
    v11[8] = v21;
    v11[9] = sub_19750A588();
    v11[10] = v22;
    v11[2] = 0;
    v11[3] = 0;
    *(v11 + 16) = 256;
    v12 = a4;
    if (!a4)
    {
      goto LABEL_27;
    }

    goto LABEL_19;
  }

  if (a4 != 1)
  {

    v11 = a1;
    v12 = a4;
    if (!a4)
    {
LABEL_27:
      type metadata accessor for PersistentIdentifierImplementation();
      swift_allocObject();
      v13 = sub_19750C5E0(a3);
      sub_1974028C8(a3, 0);
LABEL_28:
      v20 = sub_19750C7A0(v11, v13);

      return v20 & 1;
    }

LABEL_19:
    if (v12 == 1)
    {

      v13 = a3;
    }

    else
    {
      type metadata accessor for PersistentIdentifierImplementation();
      v13 = swift_allocObject();
      v13[5] = 0;
      v13[6] = 0;
      v13[7] = sub_19750A470();
      v13[8] = v18;
      v13[9] = sub_19750A588();
      v13[10] = v19;
      v13[2] = 0;
      v13[3] = 0;
      *(v13 + 16) = 256;
    }

    goto LABEL_28;
  }

  v7 = a1[7] == a3[7] && a1[8] == a3[8];
  if (!v7 && (sub_19752282C() & 1) == 0 || (a1[9] != a3[9] || a1[10] != a3[10]) && (sub_19752282C() & 1) == 0)
  {
    return 0;
  }

  v8 = a1[3];
  v9 = a3[3];
  result = (v8 | v9) == 0;
  if (v8 && v9)
  {
    if (a1[2] == a3[2] && v8 == v9)
    {
      return 1;
    }

    else
    {

      return sub_19752282C();
    }
  }

  return result;
}

unint64_t sub_197422C6C()
{
  result = qword_1ED7C8630;
  if (!qword_1ED7C8630)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED7C8630);
  }

  return result;
}

void sub_197422CFC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B240, &qword_19752D3D0);
  v2 = *v0;
  v3 = sub_19752242C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_197404860(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1974028B8(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }
}

_OWORD *sub_197422EA0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5, uint64_t *a6)
{
  v30 = &type metadata for PersistentIdentifier;
  v31 = sub_197412644();
  v32 = sub_197411E68();
  *&v29 = a1;
  BYTE8(v29) = a2;
  v12 = *a6;
  v14 = sub_1973F4028(a3, a4);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a5 & 1) != 0)
  {
LABEL_7:
    v20 = *a6;
    if (v18)
    {
LABEL_8:
      v21 = (v20[7] + 48 * v14);
      __swift_destroy_boxed_opaque_existential_1Tm_2(v21);
      return sub_1974028A0(&v29, v21);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a5 & 1) == 0)
  {
    sub_19747A934();
    goto LABEL_7;
  }

  sub_1973FF110(v17, a5 & 1);
  v23 = sub_1973F4028(a3, a4);
  if ((v18 & 1) != (v24 & 1))
  {
LABEL_14:
    result = sub_1975229CC();
    __break(1u);
    return result;
  }

  v14 = v23;
  v20 = *a6;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  v25 = __swift_mutable_project_boxed_opaque_existential_2(&v29, &type metadata for PersistentIdentifier);
  MEMORY[0x1EEE9AC00](v25, v25);
  v27 = &v29 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v28 + 16))(v27);
  sub_1974246B8(v14, a3, a4, *v27, v27[8], v20);

  return __swift_destroy_boxed_opaque_existential_1Tm_2(&v29);
}

void DefaultSnapshot.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v179 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B618, &qword_19752EA88);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v165[-v7];
  v193 = MEMORY[0x1E69E7CC8];
  v9 = a1;
  __swift_project_boxed_opaque_existential_1Tm_1(a1, a1[3]);
  sub_197442414();
  sub_197522AFC();
  if (v2)
  {
    v11 = 0;
    v12 = v9;
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1Tm_2(v12);

    if (!v11)
    {
      return;
    }

    v13 = v194;
    v14 = v195;
LABEL_6:
    sub_1974028C8(v13, v14);
    return;
  }

  v172 = v5;
  v10 = sub_197412644();
  v184 = 0uLL;
  sub_19752261C();
  v173 = v4;
  v194 = v181;
  v195 = BYTE8(v181);
  v171 = v10;
  if (BYTE8(v181))
  {
    if (BYTE8(v181) == 1)
    {
      v16 = *(v181 + 72);
      v15 = *(v181 + 80);
    }

    else
    {
      v16 = sub_19750A588();
      v15 = v19;
    }
  }

  else
  {
    v17 = [v181 entityName];
    v16 = sub_1975217BC();
    v15 = v18;
  }

  v20 = v179;
  v21 = sub_197442240(v16, v15);

  v174 = v21;
  if (!v21)
  {
    *&v184 = 0;
    *(&v184 + 1) = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000058, 0x8000000197525B80);
    *&v181 = v194;
    BYTE8(v181) = v195;
    sub_19752235C();
    goto LABEL_89;
  }

  sub_197413B90(v9, &v184);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B620, &qword_19752EA90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B628, &qword_19752EA98);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v192 = 0;
    memset(v191, 0, sizeof(v191));
  }

  v22 = v174;
  swift_beginAccess();
  v23 = *(v22 + 64);
  v177 = *(v23 + 16);
  if (!v177)
  {

LABEL_78:
    (*(v172 + 8))(v8, v173);
    sub_197448384(v191, &qword_1EAF2B630, &qword_19752EAA0);
    v162 = v194;
    *v20 = v193;
    v20[1] = v162;
    v163 = v20;
    v164 = v195;
    *(v163 + 16) = v195;

    sub_1974028EC(v162, v164);
    __swift_destroy_boxed_opaque_existential_1Tm_2(v9);

    v13 = v162;
    v14 = v164;
    goto LABEL_6;
  }

  v196 = 0;
  v170 = v9;
  v24 = v23 + 32;

  v25 = 0;
  v26 = v173;
  v178 = v8;
  v176 = v23;
  while (v25 < *(v23 + 16))
  {
    sub_197413B90(v24, v188);
    v27 = v189;
    v28 = v190;
    __swift_project_boxed_opaque_existential_1Tm_1(v188, v189);
    v29 = (*(v28 + 32))(v27, v28);
    v31 = v30;
    sub_1974A0FA4(v191, &v181);
    if (!*(&v182 + 1))
    {
      sub_197448384(&v181, &qword_1EAF2B630, &qword_19752EAA0);
LABEL_26:
      v36 = v189;
      v37 = v190;
      __swift_project_boxed_opaque_existential_1Tm_1(v188, v189);
      if ((*(v37 + 104))(v36, v37))
      {

        v38 = v189;
        v39 = v190;
        __swift_project_boxed_opaque_existential_1Tm_1(v188, v189);
        v40 = (*(v39 + 32))(v38, v39);
        v42 = v41;
        v43 = v174;
        swift_beginAccess();
        v44 = *(v43 + 96);
        if (*(v44 + 16))
        {
          v45 = sub_1973F4028(v40, v42);
          v47 = v46;

          v8 = v178;
          if (v47)
          {
            v48 = *(*(v44 + 56) + 8 * v45);
            swift_endAccess();
            if ((*(v48 + 120) & 0x10) != 0)
            {
              v49 = v189;
              v50 = v190;
              __swift_project_boxed_opaque_existential_1Tm_1(v188, v189);
              v51 = (*(v50 + 80))(v49, v50);
              if (swift_conformsToProtocol2() && v51)
              {
                v52 = v189;
                v53 = v190;
                __swift_project_boxed_opaque_existential_1Tm_1(v188, v189);
                *&v181 = (*(v53 + 32))(v52, v53);
                *(&v181 + 1) = v54;
                v55 = sub_1974122A4();
                v56 = v196;
                sub_19752255C();
                v196 = v56;
                if (v56)
                {

                  (*(v172 + 8))(v178, v26);
                  goto LABEL_82;
                }

                v57 = *(&v184 + 1);
                if (*(&v184 + 1) >> 60 != 15)
                {
                  v58 = v184;
                  v59 = v189;
                  v60 = v190;
                  __swift_project_boxed_opaque_existential_1Tm_1(v188, v189);
                  v175 = (*(v60 + 32))(v59, v60);
                  v62 = v61;
                  v185 = MEMORY[0x1E6969080];
                  v186 = v55;
                  v187 = sub_1974122F8();
                  v169 = v58;
                  *&v184 = v58;
                  *(&v184 + 1) = v57;
                  sub_1974028A0(&v184, &v181);
                  sub_19744D134(v58, v57);
                  v63 = v193;
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v180 = v63;
                  v65 = __swift_mutable_project_boxed_opaque_existential_2(&v181, *(&v182 + 1));
                  MEMORY[0x1EEE9AC00](v65, v65);
                  v67 = &v165[-((v66 + 15) & 0xFFFFFFFFFFFFFFF0)];
                  (*(v68 + 16))(v67);
                  sub_19742FEAC(*v67, v67[1], v175, v62, isUniquelyReferenced_nonNull_native, &v180);

                  sub_19744725C(v169, v57);
                  goto LABEL_67;
                }
              }

              else
              {
                v142 = v189;
                v143 = v190;
                __swift_project_boxed_opaque_existential_1Tm_1(v188, v189);
                v144 = (*(v143 + 32))(v142, v143);
                v146 = v145;
                v147 = v189;
                v148 = v190;
                __swift_project_boxed_opaque_existential_1Tm_1(v188, v189);
                *&v181 = (*(v148 + 32))(v147, v148);
                *(&v181 + 1) = v149;
                v185 = MEMORY[0x1E6969080];
                v186 = sub_1974122A4();
                v187 = sub_1974122F8();
                v150 = v196;
                sub_19752261C();
                v196 = v150;
                if (v150)
                {

                  (*(v172 + 8))(v178, v26);
                  __swift_deallocate_boxed_opaque_existential_2(&v184);
                  goto LABEL_82;
                }

                sub_1974028A0(&v184, &v181);
                v151 = v193;
                v152 = swift_isUniquelyReferenced_nonNull_native();
                v180 = v151;
                v153 = __swift_mutable_project_boxed_opaque_existential_2(&v181, *(&v182 + 1));
                MEMORY[0x1EEE9AC00](v153, v153);
                v155 = &v165[-((v154 + 15) & 0xFFFFFFFFFFFFFFF0)];
                (*(v156 + 16))(v155);
                sub_19742FEAC(*v155, v155[1], v144, v146, v152, &v180);

LABEL_67:
                __swift_destroy_boxed_opaque_existential_1Tm_2(&v181);
                v26 = v173;
                v193 = v180;
              }

              v8 = v178;
              v20 = v179;
              goto LABEL_58;
            }

LABEL_47:
            v99 = v189;
            v100 = v190;
            __swift_project_boxed_opaque_existential_1Tm_1(v188, v189);
            v101 = (*(v100 + 80))(v99, v100);
            v102 = v196;
            sub_19749CA50(v101, &v193, v188, v8, v101);
            v196 = v102;
            if (v102)
            {
              (*(v172 + 8))(v8, v26);

LABEL_82:
              __swift_destroy_boxed_opaque_existential_1Tm_2(v188);
              sub_197448384(v191, &qword_1EAF2B630, &qword_19752EAA0);
              v11 = 1;
              v12 = v170;
              goto LABEL_4;
            }

LABEL_57:
            v20 = v179;
            goto LABEL_58;
          }
        }

        else
        {

          v8 = v178;
        }

        swift_endAccess();
        goto LABEL_47;
      }

      v69 = v189;
      v70 = v190;
      __swift_project_boxed_opaque_existential_1Tm_1(v188, v189);
      if ((*(v70 + 112))(v69, v70))
      {
        goto LABEL_89;
      }

      sub_197413B90(v188, &v184);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B1C8, &unk_19752EA30);
      type metadata accessor for Schema.Relationship();
      if (!swift_dynamicCast())
      {
        *&v184 = 0;
        *(&v184 + 1) = 0xE000000000000000;
        sub_1975221EC();
        MEMORY[0x19A8DFF80](0xD000000000000032, 0x8000000197525C50);
        sub_19752235C();
        goto LABEL_89;
      }

      v71 = v181;
      if (*(v181 + 168) == 1)
      {
        swift_beginAccess();
        v72 = *(v71 + 64);
        v73 = swift_conformsToProtocol2();
        v8 = v178;
        if (v73 && v72)
        {
          v74 = v189;
          v75 = v190;
          __swift_project_boxed_opaque_existential_1Tm_1(v188, v189);
          *&v184 = (*(v75 + 32))(v74, v75);
          *(&v184 + 1) = v76;
          v77 = v196;
          v78 = sub_19752263C();
          v196 = v77;
          if (v77)
          {
            goto LABEL_80;
          }

          v79 = v78;

          if (v79)
          {

            goto LABEL_57;
          }

          v121 = v189;
          v122 = v190;
          __swift_project_boxed_opaque_existential_1Tm_1(v188, v189);
          *&v184 = (*(v122 + 32))(v121, v122);
          *(&v184 + 1) = v123;
          v124 = v196;
          sub_19752255C();
          v196 = v124;
          if (v124)
          {
LABEL_80:

            (*(v172 + 8))(v8, v26);
            goto LABEL_82;
          }

          v175 = v71;

          v107 = v181;
          v108 = BYTE8(v181);
          v125 = v189;
          v126 = v190;
          __swift_project_boxed_opaque_existential_1Tm_1(v188, v189);
          v127 = (*(v126 + 32))(v125, v126);
          v129 = v128;
          if (v108 == 255)
          {
            v157 = sub_1973F4028(v127, v128);
            v159 = v158;

            if (v159)
            {
              v160 = v193;
              v161 = swift_isUniquelyReferenced_nonNull_native();
              v180 = v160;
              v20 = v179;
              v26 = v173;
              if (!v161)
              {
                sub_19747A934();
                v160 = v180;
              }

              sub_1974028A0((*(v160 + 56) + 48 * v157), &v181);
              sub_19749FA7C(v157, v160);

              v193 = v160;
            }

            else
            {

              v182 = 0u;
              v183 = 0u;
              v181 = 0u;
              v20 = v179;
              v26 = v173;
            }

            sub_197448384(&v181, &qword_1EAF2B5E8, &qword_19752EA40);
            goto LABEL_58;
          }

          v130 = v171;
          v185 = &type metadata for PersistentIdentifier;
          v186 = v171;
          v168 = v127;
          v169 = sub_197411E68();
          v187 = v169;
          *&v184 = v107;
          BYTE8(v184) = v108;
          sub_1974028A0(&v184, &v181);
          sub_1974028EC(v107, v108);
          v131 = v193;
          v166 = swift_isUniquelyReferenced_nonNull_native();
          v180 = v131;
          v132 = __swift_mutable_project_boxed_opaque_existential_2(&v181, *(&v182 + 1));
          v167 = v165;
          MEMORY[0x1EEE9AC00](v132, v132);
          v134 = &v165[-((v133 + 15) & 0xFFFFFFFFFFFFFFF0)];
          (*(v135 + 16))(v134);
          v136 = v130;
          v8 = v178;
          sub_19743B06C(v134, v168, v129, v166, &v180, &type metadata for PersistentIdentifier, v136, v169);
        }

        else
        {
          v103 = v189;
          v104 = v190;
          __swift_project_boxed_opaque_existential_1Tm_1(v188, v189);
          *&v184 = (*(v104 + 32))(v103, v104);
          *(&v184 + 1) = v105;
          v106 = v196;
          sub_19752255C();
          v196 = v106;
          if (v106)
          {
            goto LABEL_80;
          }

          v175 = v71;

          v107 = v181;
          v108 = BYTE8(v181);
          v109 = v189;
          v110 = v190;
          __swift_project_boxed_opaque_existential_1Tm_1(v188, v189);
          v111 = (*(v110 + 32))(v109, v110);
          v113 = v112;
          if (v108 == 255)
          {
            v137 = sub_1973F4028(v111, v112);
            v139 = v138;

            if (v139)
            {
              v140 = v193;
              v141 = swift_isUniquelyReferenced_nonNull_native();
              v180 = v140;
              v23 = v176;
              v26 = v173;
              if (!v141)
              {
                sub_19747A934();
                v140 = v180;
              }

              sub_1974028A0((*(v140 + 56) + 48 * v137), &v181);
              sub_19749FA7C(v137, v140);

              v193 = v140;
            }

            else
            {

              v182 = 0u;
              v183 = 0u;
              v181 = 0u;
              v23 = v176;
              v26 = v173;
            }

            sub_197448384(&v181, &qword_1EAF2B5E8, &qword_19752EA40);
            v20 = v179;
            goto LABEL_59;
          }

          v114 = v171;
          v185 = &type metadata for PersistentIdentifier;
          v186 = v171;
          v168 = v111;
          v169 = sub_197411E68();
          v187 = v169;
          *&v184 = v107;
          BYTE8(v184) = v108;
          sub_1974028A0(&v184, &v181);
          sub_1974028EC(v107, v108);
          v115 = v193;
          v166 = swift_isUniquelyReferenced_nonNull_native();
          v180 = v115;
          v116 = __swift_mutable_project_boxed_opaque_existential_2(&v181, *(&v182 + 1));
          v167 = v165;
          MEMORY[0x1EEE9AC00](v116, v116);
          v118 = &v165[-((v117 + 15) & 0xFFFFFFFFFFFFFFF0)];
          (*(v119 + 16))(v118);
          v120 = v114;
          v8 = v178;
          sub_19743B06C(v118, v168, v113, v166, &v180, &type metadata for PersistentIdentifier, v120, v169);
        }

        sub_1974A1014(v107, v108);
        __swift_destroy_boxed_opaque_existential_1Tm_2(&v181);
        v26 = v173;
      }

      else
      {
        v175 = v181;
        v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AEE0, &qword_19752E9C0);
        v81 = v189;
        v82 = v190;
        __swift_project_boxed_opaque_existential_1Tm_1(v188, v189);
        *&v184 = (*(v82 + 32))(v81, v82);
        *(&v184 + 1) = v83;
        v84 = sub_197412788(&qword_1ED7C77C0, sub_197412644, MEMORY[0x1E69E6330]);
        v85 = v178;
        v86 = v196;
        sub_19752261C();
        v196 = v86;
        if (v86)
        {

          (*(v172 + 8))(v85, v26);
          goto LABEL_82;
        }

        v87 = v181;
        v88 = v189;
        v89 = v190;
        __swift_project_boxed_opaque_existential_1Tm_1(v188, v189);
        v90 = (*(v89 + 32))(v88, v89);
        v92 = v91;
        v185 = v80;
        v186 = v84;
        v187 = sub_197412788(&qword_1ED7C77C8, sub_197411E68, MEMORY[0x1E69E6300]);
        *&v184 = v87;
        sub_1974028A0(&v184, &v181);
        v93 = v193;
        LOBYTE(v89) = swift_isUniquelyReferenced_nonNull_native();
        v180 = v93;
        v94 = __swift_mutable_project_boxed_opaque_existential_2(&v181, *(&v182 + 1));
        MEMORY[0x1EEE9AC00](v94, v94);
        v96 = &v165[-((v95 + 15) & 0xFFFFFFFFFFFFFFF0)];
        (*(v97 + 16))(v96);
        v98 = v89;
        v26 = v173;
        sub_197412800(*v96, v90, v92, v98, &v180);

        __swift_destroy_boxed_opaque_existential_1Tm_2(&v181);
        v8 = v178;
      }

      v193 = v180;
      goto LABEL_57;
    }

    sub_1974A1078(&v181, &v184);
    v32 = v185;
    v33 = v186;
    __swift_project_boxed_opaque_existential_1Tm_1(&v184, v185);
    *&v181 = v29;
    *(&v181 + 1) = v31;
    if (((*(v33 + 40))(v188, &v181, v32, v33) & 1) == 0)
    {
      goto LABEL_24;
    }

    LOBYTE(v181) = 0;
    __swift_project_boxed_opaque_existential_1Tm_1(&v184, v185);
    DynamicType = swift_getDynamicType();
    v35 = v196;
    sub_19749C758(DynamicType, v178, v29, v31, &v193, v188, &v181, DynamicType, v186);
    v196 = v35;
    v20 = v179;
    if (v35)
    {
      (*(v172 + 8))(v178, v26);

      __swift_destroy_boxed_opaque_existential_1Tm_2(&v184);
      goto LABEL_82;
    }

    swift_beginAccess();
    if (v181 != 1)
    {
LABEL_24:
      __swift_destroy_boxed_opaque_existential_1Tm_2(&v184);
      goto LABEL_26;
    }

    __swift_destroy_boxed_opaque_existential_1Tm_2(&v184);
    v8 = v178;
LABEL_58:
    v23 = v176;
LABEL_59:
    ++v25;
    __swift_destroy_boxed_opaque_existential_1Tm_2(v188);
    v24 += 40;
    if (v177 == v25)
    {

      v9 = v170;
      goto LABEL_78;
    }
  }

  __break(1u);
LABEL_89:
  sub_1975223EC();
  __break(1u);
}

_OWORD *sub_1974246B8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  v18 = &type metadata for PersistentIdentifier;
  v19 = sub_197412644();
  v20 = sub_197411E68();
  *&v17 = a4;
  BYTE8(v17) = a5;
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v12 = (a6[6] + 16 * a1);
  *v12 = a2;
  v12[1] = a3;
  result = sub_1974028A0(&v17, (a6[7] + 48 * a1));
  v14 = a6[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v16;
  }

  return result;
}

void sub_197424778(void *a1)
{
  v2 = v1;
  v4 = [a1 objectID];
  swift_beginAccess();
  v5 = *(v1 + 16);
  if (*(v5 + 16))
  {

    v6 = sub_197403C30(v4, 0);
    if (v7)
    {
      v8 = *(v5 + 56) + 24 * v6;
      v9 = *(v8 + 8);
      v10 = *(v8 + 16);

      sub_1974028EC(v9, v10);

      sub_1974028C8(v9, v10);
      return;
    }
  }

  swift_beginAccess();
  v11 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v2 + 24);
  *(v2 + 24) = 0x8000000000000000;
  sub_197424C58(v11, v4, 0, isUniquelyReferenced_nonNull_native);

  *(v2 + 24) = v13;
  swift_endAccess();
}

uint64_t sub_1974248B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_197522A5C();
  sub_19752180C();
  v6 = sub_197522A9C();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_19752282C() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

unint64_t sub_1974249DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B2E0, &qword_19752D488);
    v3 = sub_19752245C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1973F4028(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

id sub_197424AE4(uint64_t a1, void *a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6, void (*a7)(unint64_t, void *, uint64_t, uint64_t, uint64_t))
{
  v11 = v7;
  v16 = *v7;
  v17 = sub_197403C30(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 >= v22 && (a4 & 1) == 0)
    {
      v25 = v17;
      sub_19747AC60(a5, a6);
      v17 = v25;
      goto LABEL_8;
    }

    sub_197424CD0(v22, a4 & 1, a5, a6);
    v17 = sub_197403C30(a2, a3);
    if ((v23 & 1) != (v26 & 1))
    {
LABEL_16:
      sub_1975229CC();
      __break(1u);
      return MEMORY[0x1EEE66BB8]();
    }
  }

LABEL_8:
  v27 = *v11;
  if (v23)
  {
    *(*(v27 + 56) + 8 * v17) = a1;

    return MEMORY[0x1EEE66BB8]();
  }

  a7(v17, a2, a3, a1, v27);

  return sub_1974028EC(a2, a3);
}

unint64_t sub_197424C84(unint64_t result, uint64_t a2, char a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = a5[6] + 16 * result;
  *v5 = a2;
  *(v5 + 8) = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_197424CD0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v39 = v6;
  result = sub_19752243C();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v4;
    v38 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v20 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v23 = v20 | (v10 << 6);
      v24 = *(v7 + 48) + 16 * v23;
      v25 = *v24;
      v26 = *(v24 + 8);
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v39 & 1) == 0)
      {
        sub_1974028EC(*v24, *(v24 + 8));
        v28 = v27;
      }

      sub_197522A5C();
      if (v26)
      {
        if (v26 == 1)
        {
          MEMORY[0x19A8E1190](1);
          sub_19752180C();
          sub_19752180C();
          if (v25[3])
          {
            sub_197522A7C();
            sub_19752180C();
          }

          else
          {
            sub_197522A7C();
          }

          sub_197522A7C();
          v7 = v38;
        }

        else
        {
          MEMORY[0x19A8E1190](2);
          sub_19750A470();
          sub_19752180C();

          sub_19750A588();
        }

        sub_19752180C();
      }

      else
      {
        MEMORY[0x19A8E1190](0);
        sub_197521F4C();
      }

      result = sub_197522A9C();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        v18 = v27;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_44:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
      v18 = v27;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v19 = *(v9 + 48) + 16 * v17;
      *v19 = v25;
      *(v19 + 8) = v26;
      *(*(v9 + 56) + 8 * v17) = v18;
      ++*(v9 + 16);
    }

    v21 = v10;
    while (1)
    {
      v10 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_44;
      }

      if (v10 >= v15)
      {
        break;
      }

      v22 = v11[v10];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v14 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v5 = v37;
      goto LABEL_42;
    }

    v36 = 1 << *(v7 + 32);
    v5 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_42:
  *v5 = v9;
  return result;
}

void sub_1974250D0(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_19752207C() + 1) & ~v5;
    v24 = v8;
    do
    {
      v9 = 16 * v6;
      v10 = *(a2 + 48) + 16 * v6;
      v11 = *v10;
      v12 = *(v10 + 8);
      sub_197522A5C();
      if (v12)
      {
        if (v12 == 1)
        {
          MEMORY[0x19A8E1190](1);
          sub_1974028EC(v11, 1);
          sub_19752180C();
          sub_19752180C();
          if (v11[3])
          {
            sub_197522A7C();
            sub_19752180C();
          }

          else
          {
            sub_197522A7C();
          }

          sub_197522A7C();
          v8 = v24;
        }

        else
        {
          MEMORY[0x19A8E1190](2);
          sub_1974028EC(v11, 2);
          sub_19750A470();
          sub_19752180C();

          sub_19750A588();
        }

        sub_19752180C();
      }

      else
      {
        MEMORY[0x19A8E1190](0);
        sub_1974028EC(v11, 0);
        sub_197521F4C();
      }

      v13 = sub_197522A9C();
      sub_1974028C8(v11, v12);
      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_19;
      }

      if (v3 >= v14)
      {
LABEL_19:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + v9);
        if (16 * v3 != v9 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

uint64_t sub_197425424(uint64_t a1, int64_t a2, int a3)
{
  v4 = v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v3;
  if ((result & 1) == 0)
  {
    result = sub_19747A77C();
    *v4 = v9;
  }

  if (a2 < 0 || 1 << *(v9 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(v9 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v9 + 36) == a3)
  {
    v10 = *(v9 + 56);
    v11 = *(v9 + 48) + 16 * a2;
    v12 = *v11;
    LOBYTE(v11) = *(v11 + 8);
    *a1 = v12;
    *(a1 + 8) = v11;
    v13 = *(v10 + 8 * a2);
    sub_1974250D0(a2, v9);
    *v4 = v9;
    return v13;
  }

LABEL_10:
  __break(1u);
  return result;
}

void sub_197425500(void *a1, char a2, void *a3)
{
  if (a3)
  {
    sub_1974028C8(a1, a2);
  }
}

char *sub_197425554(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B3C0, &qword_19752D580);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_4(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_197425660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_197521F5C();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v17 - v10;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 24))(&v19, AssociatedTypeWitness, AssociatedConformanceWitness);
  v13 = v19;
  v14 = v20;
  v15 = *(AssociatedTypeWitness - 8);
  (*(v15 + 16))(v11, a1, AssociatedTypeWitness);
  (*(v15 + 56))(v11, 0, 1, AssociatedTypeWitness);
  v17 = v13;
  v18 = v14;
  sub_197405108();
  sub_19752166C();
  return sub_19752168C();
}

uint64_t sub_19742581C(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  sub_1974028EC(*a1, v4);
  sub_1974028EC(v3, v5);
  v6 = sub_19742291C(v2, v4, v3, v5);
  sub_1974028C8(v3, v5);
  sub_1974028C8(v2, v4);
  return v6 & 1;
}

void sub_1974258A4(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = PersistentModel.modelContext.getter(a1, a2);
  if (v6)
  {
    v7 = v6;
    PersistentModel.persistentModelID.getter(a1, a2, &v27);
    v8 = v27;
    v9 = v28;
    v10 = *(sub_1973FE074(a1, a2) + 24);

    v29 = a1;
    v27 = v2;
    __swift_project_boxed_opaque_existential_1Tm_2(&v27, a1);
    DynamicType = swift_getDynamicType();
    swift_unknownObjectRetain();
    __swift_destroy_boxed_opaque_existential_1Tm_3(&v27);
    v12 = swift_conformsToProtocol2();
    if (v12 && DynamicType)
    {
      v13 = v12;
      if (swift_getAssociatedTypeWitness() == DynamicType)
      {
        v30 = v8;
        v31 = v9;
        sub_1973FC6F4(&v30, a1, a2, &v27);
        (*(a2 + 64))(&v27, a1, a2);
      }

      else
      {
        sub_1974CC744(DynamicType, v7, v8, v9, v3, a1, DynamicType, a2, v13);
      }

      v24 = sub_1973FE074(a1, a2);
      sub_1974028C8(v8, v9);

      *(v24 + 24) |= v10;
    }

    else
    {
      v27 = 0;
      v28 = 0xE000000000000000;
      sub_1975221EC();

      v27 = 0xD00000000000002CLL;
      v28 = 0x8000000197528480;
      v25 = sub_197522B8C();
      MEMORY[0x19A8DFF80](v25);

      sub_1975223EC();
      __break(1u);
    }
  }

  else
  {
    if (qword_1EAF2AC88 != -1)
    {
      swift_once();
    }

    v14 = sub_19752157C();
    __swift_project_value_buffer(v14, qword_1EAF33DD0);
    swift_unknownObjectRetain();
    oslog = sub_19752155C();
    v15 = sub_197521DDC();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(oslog, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v32 = v17;
      *v16 = 136315394;
      PersistentModel.persistentModelID.getter(a1, a2, &v27);
      v30 = v27;
      v31 = v28;
      v18 = sub_1975217CC();
      v20 = sub_197462310(v18, v19, &v32);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2080;
      (*(a2 + 56))(&v27, a1, a2);
      v30 = a1;
      swift_getExtendedExistentialTypeMetadata();
      v21 = sub_1975217CC();
      v23 = sub_197462310(v21, v22, &v32);

      *(v16 + 14) = v23;
      _os_log_impl(&dword_1973F2000, oslog, v15, "Cannot fulfill future for %s without a context %s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x19A8E1B50](v17, -1, -1);
      MEMORY[0x19A8E1B50](v16, -1, -1);
    }

    else
    {
    }
  }
}

Class sub_197425CF8(uint64_t a1, void *a2, uint64_t a3)
{
  v134[3] = a2;
  v111 = sub_19752139C();
  v112 = sub_197521F5C();
  v110 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112, v7);
  v109 = &v108 - v8;
  v124 = a3;
  Descriptor = type metadata accessor for FetchDescriptor(0, a2, a3, v9);
  v108 = *(Descriptor - 8);
  MEMORY[0x1EEE9AC00](Descriptor, v10);
  v116 = &v108 - v11;
  v12 = *(a1 + 16);
  v123 = a2;
  v129 = a2;
  ExtendedExistentialTypeMetadata = swift_getExtendedExistentialTypeMetadata();
  v14 = sub_197405108();
  v121 = ExtendedExistentialTypeMetadata;
  v120 = v14;
  v134[0] = MEMORY[0x19A8DFD40](v12, &type metadata for PersistentIdentifier, ExtendedExistentialTypeMetadata);
  v133.isa = MEMORY[0x1E69E7CD0];
  v117 = v3;
  if (v12)
  {
    v16 = (a1 + 40);
    v119 = MEMORY[0x1E69E7CC8];
    *&v15 = 136315394;
    v114 = v15;
    *&v15 = 136315138;
    v115 = v15;
    while (1)
    {
      v21 = *(v16 - 1);
      LODWORD(v22) = *v16;
      v126 = v22;
      if (v22)
      {
        if (v22 != 1 || (v23 = v21[3]) == 0)
        {
          sub_1974028EC(v21, v22);
          if (qword_1EAF2AD00 != -1)
          {
            swift_once();
          }

          v26 = sub_19752157C();
          __swift_project_value_buffer(v26, qword_1EAF33E50);
          sub_1974028EC(v21, v22);
          v27 = sub_19752155C();
          v28 = sub_197521DDC();
          sub_1974028C8(v21, v22);
          if (os_log_type_enabled(v27, v28))
          {
            v29 = swift_slowAlloc();
            v122 = v21;
            v30 = v29;
            v31 = swift_slowAlloc();
            *&v118 = v16;
            v22 = v31;
            v127 = v31;
            *v30 = v115;
            v129 = v122;
            v130 = v126;
            sub_1974028EC(v122, v126);
            v32 = sub_1975217CC();
            v34 = v12;
            v35 = sub_197462310(v32, v33, &v127);

            *(v30 + 4) = v35;
            v12 = v34;
            _os_log_impl(&dword_1973F2000, v27, v28, "cannot fulfill model without a store identifier:%s", v30, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v22);
            v36 = v22;
            LOBYTE(v22) = v126;
            v16 = v118;
            MEMORY[0x19A8E1B50](v36, -1, -1);
            v37 = v30;
            v21 = v122;
            MEMORY[0x19A8E1B50](v37, -1, -1);
          }

          v17 = v123;
          v19 = type metadata accessor for _InvalidFutureBackingData(0, v123, v124, v18);
          v129 = v21;
          v130 = v22;
          sub_1974028EC(v21, v22);
          sub_1974028EC(v21, v22);
          v20 = sub_197512F60(v17, &v129);
          v131 = v19;
          WitnessTable = swift_getWitnessTable();
          v129 = v20;
          v127 = v21;
          v128 = v22;
          goto LABEL_4;
        }

        v24 = v21[2];
        v25 = v21;
        sub_1974028EC(v21, 1);
      }

      else
      {
        sub_1974028EC(v21, 0);
        v25 = v21;
        v38 = [v21 storeIdentifier];
        v24 = sub_1975217BC();
        v23 = v39;
      }

      if (*(v125 + 16))
      {
        v40 = *(v125 + 16);
      }

      else
      {
        Strong = swift_weakLoadStrong();
        if (!Strong)
        {
          goto LABEL_60;
        }

        v40 = Strong;
      }

      swift_beginAccess();
      v42 = *(v40 + 56);

      if (*(v42 + 16))
      {
        v43 = sub_1973F4028(v24, v23);
        v45 = v44;

        if (v45)
        {
          v122 = v12;
          v118 = *(*(v42 + 56) + 16 * v43);
          swift_unknownObjectRetain();

          ObjectType = swift_getObjectType();
          v47 = (*(*(&v118 + 1) + 40))(ObjectType);
          v49 = v48;
          swift_unknownObjectRetain();
          v50 = v119;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v129 = v50;
          v53 = sub_1973F4028(v47, v49);
          v54 = v50[2];
          v55 = (v52 & 1) == 0;
          v56 = v54 + v55;
          if (__OFADD__(v54, v55))
          {
            goto LABEL_58;
          }

          v57 = v52;
          if (v50[3] >= v56)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              v60 = 16 * v53;
              if ((v52 & 1) == 0)
              {
                goto LABEL_40;
              }
            }

            else
            {
              sub_19747B284();
              v60 = 16 * v53;
              if ((v57 & 1) == 0)
              {
                goto LABEL_40;
              }
            }
          }

          else
          {
            sub_19740CAD4(v56, isUniquelyReferenced_nonNull_native);
            v58 = sub_1973F4028(v47, v49);
            if ((v57 & 1) != (v59 & 1))
            {
              goto LABEL_62;
            }

            v53 = v58;
            v60 = 16 * v58;
            if ((v57 & 1) == 0)
            {
LABEL_40:
              v76 = v129;
              v129[(v53 >> 6) + 8] |= 1 << v53;
              v77 = (v76[6] + v60);
              *v77 = v47;
              v77[1] = v49;
              *(v76[7] + v60) = v118;
              v78 = v76[2];
              v79 = __OFADD__(v78, 1);
              v80 = v78 + 1;
              if (v79)
              {
                goto LABEL_59;
              }

              v119 = v76;
              v76[2] = v80;
              goto LABEL_42;
            }
          }

          v119 = v129;
          *(v129[7] + v60) = v118;
          swift_unknownObjectRelease();
LABEL_42:
          v81 = v126;
          sub_1974028EC(v25, v126);
          sub_19742AE44(&v129, v25, v81);
          swift_unknownObjectRelease();
          sub_1974028C8(v25, v81);
          sub_1974028C8(v129, v130);
          v12 = v122;
          goto LABEL_5;
        }
      }

      else
      {
      }

      if (qword_1EAF2AD00 != -1)
      {
        swift_once();
      }

      v61 = sub_19752157C();
      __swift_project_value_buffer(v61, qword_1EAF33E50);
      LOBYTE(v22) = v126;
      sub_1974028EC(v25, v126);

      v62 = sub_19752155C();
      v63 = sub_197521DDC();
      sub_1974028C8(v25, v22);

      if (os_log_type_enabled(v62, v63))
      {
        v122 = v12;
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v127 = v65;
        *v64 = v114;
        v129 = v25;
        v130 = v22;
        sub_1974028EC(v25, v22);
        v66 = sub_1975217CC();
        v68 = sub_197462310(v66, v67, &v127);

        *(v64 + 4) = v68;
        *(v64 + 12) = 2080;
        if (!*(v125 + 16) && !swift_weakLoadStrong())
        {
          goto LABEL_61;
        }

        swift_beginAccess();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B3D8, &unk_19752FBA0);
        v70 = sub_19752160C();
        v72 = v71;

        v22 = sub_197462310(v70, v72, &v127);

        *(v64 + 14) = v22;
        _os_log_impl(&dword_1973F2000, v62, v63, "data store not found for:%s in: %s", v64, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x19A8E1B50](v65, -1, -1);
        MEMORY[0x19A8E1B50](v64, -1, -1);

        v12 = v122;
        LOBYTE(v22) = v126;
      }

      else
      {
      }

      v73 = v123;
      v74 = type metadata accessor for _InvalidFutureBackingData(0, v123, v124, v69);
      v21 = v25;
      v129 = v25;
      v130 = v22;
      sub_1974028EC(v25, v22);
      sub_1974028EC(v25, v22);
      v75 = sub_197512F60(v73, &v129);
      v131 = v74;
      WitnessTable = swift_getWitnessTable();
      v129 = v75;
      v127 = v25;
      v128 = v22;
LABEL_4:
      sub_19752166C();
      sub_19752168C();
      sub_1974028C8(v21, v22);
LABEL_5:
      v16 += 16;
      if (!--v12)
      {
        goto LABEL_44;
      }
    }
  }

  v119 = MEMORY[0x1E69E7CC8];
LABEL_44:
  v82 = v111;
  v83 = *(*(v111 - 8) + 56);
  v84 = v109;
  v83(v109, 1, 1, v111);
  v85 = v123;
  sub_197520C4C();
  v86 = sub_197521A1C();
  v87 = v116;
  v88 = v124;
  v89 = FetchDescriptor.init(predicate:sortBy:)(v84, v86, v85, v124, v116);
  MEMORY[0x1EEE9AC00](v89, v90);
  *(&v108 - 4) = v85;
  *(&v108 - 3) = v88;
  v107 = &v133;
  sub_1975213AC();
  v83(v84, 0, 1, v82);
  (*(v110 + 40))(v87, v84, v112);
  v91 = Descriptor;
  v87[*(Descriptor + 48)] = 0;
  v87[*(v91 + 60)] = 0;
  v92 = v119 + 8;
  v93 = 1 << *(v119 + 32);
  v94 = v119;
  v95 = -1;
  if (v93 < 64)
  {
    v95 = ~(-1 << v93);
  }

  v96 = v95 & v119[8];
  v97 = (v93 + 63) >> 6;

  v98 = 0;
  if (v96)
  {
    while (1)
    {
      v99 = v98;
LABEL_51:
      v100 = *(v94[7] + ((v99 << 10) | (16 * __clz(__rbit64(v96)))) + 8);
      v101 = swift_getObjectType();
      v102 = swift_unknownObjectRetain();
      v103 = v101;
      v104 = v117;
      sub_1974215D0(v102, v116, v125, &v133, v134, v123, v103, v124, v100);
      v117 = v104;
      if (v104)
      {
        break;
      }

      v96 &= v96 - 1;
      swift_unknownObjectRelease();
      v98 = v99;
      v94 = v119;
      if (!v96)
      {
        goto LABEL_48;
      }
    }

    swift_unknownObjectRelease();

    (*(v108 + 8))(v116, Descriptor);
    isa = v133.isa;

    return isa;
  }

  else
  {
LABEL_48:
    while (1)
    {
      v99 = v98 + 1;
      if (__OFADD__(v98, 1))
      {
        break;
      }

      if (v99 >= v97)
      {

        swift_beginAccess();
        isa = v134[0];
        (*(v108 + 8))(v116, Descriptor);

        return isa;
      }

      v96 = v92[v99];
      ++v98;
      if (v96)
      {
        goto LABEL_51;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    result = sub_1975229CC();
    __break(1u);
  }

  return result;
}

uint64_t sub_197426A98()
{
  sub_197426ACC();

  return swift_deallocClassInstance();
}

uint64_t sub_197426ACC()
{
  sub_1974028C8(*(v0 + 16), *(v0 + 24));

  return v0;
}

void sub_197426B00(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, void *a4@<X3>, unsigned int a5@<W4>, uint64_t *a6@<X8>)
{
  v7 = v6;
  v13 = *(*(v6 + 32) + 72);
  if (a5)
  {
    if (a5 == 1)
    {
      v15 = a4[9];
      v14 = a4[10];
    }

    else
    {

      v15 = sub_19750A588();
      v14 = v18;
    }
  }

  else
  {

    v16 = [a4 entityName];
    v15 = sub_1975217BC();
    v14 = v17;
  }

  if (!*(v13 + 16))
  {
    goto LABEL_110;
  }

  v150 = a6;
  v19 = sub_1973F4028(v15, v14);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
LABEL_111:

    *&v158 = 0;
    *(&v158 + 1) = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD00000000000001ALL, 0x8000000197523F10);
    if (a5)
    {
      if (a5 == 1)
      {
        v110 = a4[9];
        v112 = a4[10];
      }

      else
      {
        v110 = sub_19750A588();
        v112 = v111;
      }
    }

    else
    {
      v114 = [a4 entityName];
      v110 = sub_1975217BC();
      v112 = v115;
    }

    MEMORY[0x19A8DFF80](v110, v112);

    MEMORY[0x19A8DFF80](0xD000000000000028, 0x8000000197523F30);
    BYTE8(v155) = a5;
    sub_19752235C();
    MEMORY[0x19A8DFF80](10, 0xE100000000000000);
    *&v155 = v7;
    sub_19752235C();
    MEMORY[0x19A8DFF80](10, 0xE100000000000000);
    v116 = [*(v7 + OBJC_IVAR____TtC9SwiftData12DefaultStore_container) managedObjectModel];
    v117 = [v116 description];
    v118 = sub_1975217BC();
    v120 = v119;

    MEMORY[0x19A8DFF80](v118, v120);

    goto LABEL_147;
  }

  v22 = *(*(v13 + 56) + 8 * v19);

  v24 = *(v7 + OBJC_IVAR____TtC9SwiftData12DefaultStore__editingContextLock);
  v26 = MEMORY[0x1EEE9AC00](v23, v25);
  MEMORY[0x1EEE9AC00](v26, v27);

  os_unfair_lock_lock(v24 + 4);
  sub_197431F88(&v158);
  os_unfair_lock_unlock(v24 + 4);
  v28 = v158;

  if (!v28)
  {
    *&v158 = 0;
    *(&v158 + 1) = 0xE000000000000000;
    sub_1975221EC();
    v155 = v158;
    MEMORY[0x19A8DFF80](0xD000000000000027, 0x8000000197523F60);
    *&v158 = a1;
    *(&v158 + 1) = a2;
    LOBYTE(v159) = a3;
    sub_19752235C();
    MEMORY[0x19A8DFF80](0xD000000000000015, 0x8000000197523F90);
    sub_19752135C();
    sub_19751E7F8(&qword_1EAF2AF28, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v113 = sub_1975227DC();
    MEMORY[0x19A8DFF80](v113);

    MEMORY[0x19A8DFF80](8250, 0xE200000000000000);
    *&v158 = v7;
    sub_19752235C();
    goto LABEL_147;
  }

  v29 = a2;
  if (a3 > 2u)
  {
    if (a3 == 3)
    {
      swift_beginAccess();
      v63 = v28[5];
      if (*(v63 + 16))
      {

        v64 = sub_197403C30(a4, a5);
        if (v65)
        {
          v66 = *(*(v63 + 56) + 8 * v64);

          if (*(v66 + 16))
          {
            v67 = sub_1973F4028(a1, a2);
            if (v68)
            {
              v69 = *(*(v66 + 56) + 8 * v67);

              *v150 = v69;
              *(v150 + 8) = 0;
              return;
            }
          }
        }
      }

      *&v155 = 0;
      *(&v155 + 1) = 0xE000000000000000;
      sub_1975221EC();
      v157 = v155;
      MEMORY[0x19A8DFF80](0xD000000000000059, 0x8000000197523FB0);
      *(&v155 + 1) = a2;
      LOBYTE(v156) = 3;
      sub_19752235C();
      MEMORY[0x19A8DFF80](10, 0xE100000000000000);
      *&v155 = a4;
      BYTE8(v155) = a5;
      sub_19752235C();
      goto LABEL_147;
    }

    if (a3 == 5)
    {
      swift_beginAccess();
      v37 = v28[7];
      if (*(v37 + 16))
      {

        v38 = sub_197403C30(a4, a5);
        if (v39)
        {
          v40 = *(*(v37 + 56) + 8 * v38);

          if (*(v40 + 16))
          {
            v41 = sub_1973F4028(a1, a2);
            if (v42)
            {
              sub_197404860(*(v40 + 56) + 32 * v41, &v158);

LABEL_99:
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF20, &unk_19752F320);
              goto LABEL_100;
            }
          }
        }
      }

      else
      {
      }

      v158 = 0u;
      v159 = 0u;
      goto LABEL_99;
    }

    swift_beginAccess();
    v103 = v28[6];
    if (*(v103 + 16))
    {

      v104 = sub_197403C30(a4, a5);
      if (v105)
      {
        v106 = *(*(v103 + 56) + 8 * v104);

        if (*(v106 + 16))
        {
          v107 = sub_1973F4028(a1, a2);
          if (v108)
          {
            v109 = *(*(v106 + 56) + 8 * v107);

            if (v109 >> 62)
            {
              v30 = sub_1975220EC();
              if (!v30)
              {
                goto LABEL_109;
              }
            }

            else
            {
              v30 = *((v109 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (!v30)
              {
LABEL_109:

                __break(1u);
LABEL_110:

                goto LABEL_111;
              }
            }

            *&v155 = MEMORY[0x1E69E7CC0];
            sub_197411CB8(0, v30 & ~(v30 >> 63), 0);
            if (v30 < 0)
            {
              goto LABEL_148;
            }

            v125 = 0;
            v126 = v155;
            do
            {
              if ((v109 & 0xC000000000000001) != 0)
              {
                v127 = MEMORY[0x19A8E0960](v125, v109);
              }

              else
              {
                v127 = *(v109 + 8 * v125 + 32);
              }

              *&v155 = v126;
              v129 = *(v126 + 16);
              v128 = *(v126 + 24);
              if (v129 >= v128 >> 1)
              {
                v131 = v127;
                sub_197411CB8((v128 > 1), v129 + 1, 1);
                v127 = v131;
                v126 = v155;
              }

              ++v125;
              *(v126 + 16) = v129 + 1;
              v130 = v126 + 16 * v129;
              *(v130 + 32) = v127;
              *(v130 + 40) = 0;
            }

            while (v30 != v125);

            __break(1u);
            goto LABEL_137;
          }
        }
      }
    }

    *&v155 = 0;
    *(&v155 + 1) = 0xE000000000000000;
    sub_1975221EC();
    v157 = v155;
    MEMORY[0x19A8DFF80](0xD000000000000059, 0x8000000197523FB0);
    *(&v155 + 1) = a2;
    LOBYTE(v156) = 4;
    sub_19752235C();
    MEMORY[0x19A8DFF80](10, 0xE100000000000000);
    *&v155 = a4;
    BYTE8(v155) = a5;
    sub_19752235C();
    goto LABEL_147;
  }

  v30 = a1;
  if (a3)
  {
    if (a3 != 1)
    {
      swift_beginAccess();
      v70 = v28[3];
      if (*(v70 + 16))
      {

        v71 = sub_197403C30(a4, a5);
        if (v72)
        {
          v73 = *(*(v70 + 56) + 8 * v71);

          if (*(v73 + 16))
          {
            sub_1973F4028(a1, v29);
            if (v74)
            {

              v75 = sub_1975215EC();
              swift_beginAccess();
              if (*(*(v22 + 96) + 16) && (sub_1973F4028(a1, v29), (v76 & 1) != 0))
              {
                swift_endAccess();
                type metadata accessor for Schema.CompositeAttribute();
                v77 = swift_dynamicCastClass();
                if (v77)
                {
                  v78 = v77;

                  v79 = sub_19746C608(v75, v78);
                  v80 = &type metadata for PersistentIdentifier;
                  *&v155 = &type metadata for PersistentIdentifier;
                  v81 = swift_conformsToProtocol2();
                  if (v81)
                  {
                    v82 = v81;
                    do
                    {
                      sub_1973F732C(v80, &v155, v80, v82);
                      v80 = v155;
                      v82 = swift_conformsToProtocol2();
                      if (v82)
                      {
                        v83 = v80 == 0;
                      }

                      else
                      {
                        v83 = 1;
                      }
                    }

                    while (!v83);
                  }

                  v84 = dynamic_cast_existential_2_conditional(v80, v80, MEMORY[0x1E69E6440], MEMORY[0x1E69E5E78]);
                  if (v84)
                  {
                    v86 = MEMORY[0x1EEE9AC00](v84, v85);
                    sub_19746CA90(v86, v79, v78, &type metadata for PersistentIdentifier, v86, v87);
                    if (swift_dynamicCast())
                    {

                      v88 = v155;
                      v89 = BYTE8(v155);
LABEL_80:
                      *v150 = v88;
                      *(v150 + 8) = v89;
                      return;
                    }

                    *&v155 = 0;
                    BYTE8(v155) = -1;
                    sub_1974A1014(0, 255);
                    *&v155 = 0;
                    *(&v155 + 1) = 0xE000000000000000;
                    sub_1975221EC();

                    *&v155 = 0xD000000000000020;
                    *(&v155 + 1) = 0x80000001975241A0;
                    v137 = sub_197522B8C();
                    MEMORY[0x19A8DFF80](v137);

                    MEMORY[0x19A8DFF80](0x206D6F726620, 0xE600000000000000);
                    v138 = [v79 description];
                    v139 = sub_1975217BC();
                    v141 = v140;

                    MEMORY[0x19A8DFF80](v139, v141);
                  }

                  goto LABEL_147;
                }
              }

              else
              {
                swift_endAccess();
              }

              *&v155 = 0;
              *(&v155 + 1) = 0xE000000000000000;
              sub_1975221EC();
              MEMORY[0x19A8DFF80](0xD000000000000016, 0x8000000197524130);
              BYTE8(v157) = a5;
              sub_19752235C();
              MEMORY[0x19A8DFF80](0x2074756220, 0xE500000000000000);
              MEMORY[0x19A8DFF80](a1, v29);
              MEMORY[0x19A8DFF80](0xD00000000000001FLL, 0x8000000197524150);
              *&v157 = v22;
              type metadata accessor for Schema.Entity();
              sub_19752235C();
              goto LABEL_147;
            }
          }
        }
      }

      v121 = v29;
      *&v155 = 0;
      *(&v155 + 1) = 0xE000000000000000;
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD00000000000003CLL, 0x80000001975240F0);
      if (a5)
      {
        if (a5 == 1)
        {
          v122 = a4[9];
          v124 = a4[10];
        }

        else
        {
          v122 = sub_19750A588();
          v124 = v123;
        }
      }

      else
      {
        v142 = [a4 entityName];
        v122 = sub_1975217BC();
        v124 = v143;
      }

      MEMORY[0x19A8DFF80](v122, v124);

      MEMORY[0x19A8DFF80](46, 0xE100000000000000);
      MEMORY[0x19A8DFF80](a1, v121);
      MEMORY[0x19A8DFF80](0x20726F662029, 0xE600000000000000);
      *&v157 = a4;
      BYTE8(v157) = a5;
      sub_19752235C();
      goto LABEL_147;
    }

    swift_beginAccess();
    v31 = v28[4];
    if (*(v31 + 16))
    {

      v32 = sub_197403C30(a4, a5);
      if (v33)
      {
        v34 = *(*(v31 + 56) + 8 * v32);

        if (*(v34 + 16))
        {
          v35 = sub_1973F4028(a1, v29);
          if (v36)
          {
            sub_197404860(*(v34 + 56) + 32 * v35, &v158);

LABEL_77:
            sub_197413B20(&v158, &v155);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF20, &unk_19752F320);
            v97 = &type metadata for PersistentIdentifier;
            if (swift_dynamicCast())
            {
              sub_1973FE5EC(&v158, &qword_1EAF2AF20, &unk_19752F320);

              goto LABEL_79;
            }

            LOBYTE(v152) = -1;
            sub_1974A1014(0, 255);
            sub_197413B20(&v158, &v155);
            if (!*(&v156 + 1))
            {
              goto LABEL_149;
            }

            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_150;
            }

            *&v155 = &type metadata for PersistentIdentifier;
            v98 = swift_conformsToProtocol2();
            if (v98)
            {
              v99 = v98;
              do
              {
                sub_1973F732C(v97, &v155, v97, v99);
                v97 = v155;
                v99 = swift_conformsToProtocol2();
                if (v99)
                {
                  v100 = v97 == 0;
                }

                else
                {
                  v100 = 1;
                }
              }

              while (!v100);
            }

            v101 = swift_conformsToProtocol2();
            if (v101)
            {
              v102 = v97 == 0;
            }

            else
            {
              v102 = 1;
            }

            if (!v102)
            {
              v153 = 0;
              v154 = -1;
              sub_19746C600(v97, 0, v152, &v153, &type metadata for PersistentIdentifier, v97, v101);
              sub_19744D0E0(0, v152);

              swift_beginAccess();
              v61 = v153;
              v62 = v154;
              sub_1974ADEAC(v153, v154);
              sub_1974A1014(v61, v62);
              if (v62 != 255)
              {
                sub_1973FE5EC(&v158, &qword_1EAF2AF20, &unk_19752F320);
                goto LABEL_96;
              }

              v155 = v158;
              v156 = v159;
              goto LABEL_100;
            }

            *&v155 = 0;
            *(&v155 + 1) = 0xE000000000000000;
            sub_1975221EC();
            MEMORY[0x19A8DFF80](0xD000000000000014, 0x8000000197524210);
            sub_197413B20(&v158, &v155);
            v145 = sub_1975217CC();
            MEMORY[0x19A8DFF80](v145);

            MEMORY[0x19A8DFF80](0xD000000000000022, 0x8000000197524230);
            MEMORY[0x19A8DFF80](0xD000000000000014, 0x800000019752B340);
            while (1)
            {
LABEL_147:
              sub_1975223EC();
              __break(1u);
LABEL_148:
              __break(1u);
LABEL_149:
              sub_1973FE5EC(&v155, &qword_1EAF2AF20, &unk_19752F320);
LABEL_150:
              *&v155 = 0;
              *(&v155 + 1) = 0xE000000000000000;
              sub_1975221EC();

              sub_197413B20(&v158, &v155);
              v144 = sub_1975217CC();
              MEMORY[0x19A8DFF80](v144);

              MEMORY[0x19A8DFF80](0xD000000000000012, 0x80000001975241F0);
              MEMORY[0x19A8DFF80](0xD000000000000014, 0x800000019752B340);
            }
          }
        }
      }
    }

    v158 = 0u;
    v159 = 0u;
    goto LABEL_77;
  }

  swift_beginAccess();
  v147 = v22;
  v43 = *(v22 + 96);
  if (!*(v43 + 16) || (v44 = sub_1973F4028(a1, v29), (v45 & 1) == 0))
  {
    swift_endAccess();
    *&v158 = 0;
    *(&v158 + 1) = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD00000000000001ALL, 0x8000000197523F10);
    MEMORY[0x19A8DFF80](a1, v29);
    MEMORY[0x19A8DFF80](544108320, 0xE400000000000000);
    BYTE8(v155) = a5;
    sub_19752235C();
    MEMORY[0x19A8DFF80](0xD000000000000035, 0x8000000197524010);
    sub_19752235C();
    MEMORY[0x19A8DFF80](10, 0xE100000000000000);
    *&v155 = v22;
    type metadata accessor for Schema.Entity();
    sub_19752235C();
    goto LABEL_147;
  }

  v46 = *(*(v43 + 56) + 8 * v44);
  swift_endAccess();
  v47 = &type metadata for PersistentIdentifier;
  *&v158 = &type metadata for PersistentIdentifier;
  v48 = swift_conformsToProtocol2();
  if (v48)
  {
    v49 = v48;
    do
    {
      sub_1973F732C(v47, &v158, v47, v49);
      v47 = v158;
      v49 = swift_conformsToProtocol2();
      if (v49)
      {
        v50 = v47 == 0;
      }

      else
      {
        v50 = 1;
      }
    }

    while (!v50);
  }

  v146 = v29;
  if ((*(v46 + 120) & 0x40) != 0)
  {
    swift_beginAccess();
    v90 = v28[2];
    v91 = *(v90 + 16);

    if (v91)
    {

      v92 = sub_197403C30(a4, a5);
      if (v93)
      {
        v94 = *(*(v90 + 56) + 8 * v92);

        if (*(v94 + 16))
        {
          v95 = sub_1973F4028(a1, v146);
          if (v96)
          {
            sub_197404860(*(v94 + 56) + 32 * v95, &v158);

            sub_1974028B8(&v158, &v155);
            goto LABEL_100;
          }
        }
      }

      v30 = a1;
    }

    goto LABEL_139;
  }

  v51 = swift_conformsToProtocol2();
  if (!v51 || !v47)
  {
LABEL_137:
    *&v158 = 0;
    *(&v158 + 1) = 0xE000000000000000;

    sub_1975221EC();
    v155 = v158;
    MEMORY[0x19A8DFF80](0xD00000000000002FLL, 0x8000000197524050);
    swift_beginAccess();
    v133 = *(v147 + 16);
    v132 = *(v147 + 24);

    MEMORY[0x19A8DFF80](v133, v132);

    MEMORY[0x19A8DFF80](46, 0xE100000000000000);
    MEMORY[0x19A8DFF80](v30, v146);
    MEMORY[0x19A8DFF80](544175136, 0xE400000000000000);
    MEMORY[0x19A8DFF80](0xD000000000000014, 0x800000019752B340);
    goto LABEL_147;
  }

  v52 = v51;
  swift_beginAccess();
  v53 = v28[2];
  v54 = *(v53 + 16);

  if (!v54)
  {
LABEL_139:
    *&v158 = 0;
    *(&v158 + 1) = 0xE000000000000000;
    sub_1975221EC();
    v155 = v158;
    MEMORY[0x19A8DFF80](0xD00000000000001FLL, 0x8000000197524080);
    swift_beginAccess();
    v135 = *(v147 + 16);
    v134 = *(v147 + 24);

    MEMORY[0x19A8DFF80](v135, v134);

    MEMORY[0x19A8DFF80](46, 0xE100000000000000);
    MEMORY[0x19A8DFF80](v30, v146);
    MEMORY[0x19A8DFF80](0x20726F662029, 0xE600000000000000);
    sub_19752235C();
    MEMORY[0x19A8DFF80](0xD00000000000001DLL, 0x80000001975240A0);
    sub_19752135C();
    sub_19751E7F8(&qword_1EAF2AF28, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v136 = sub_1975227DC();
    MEMORY[0x19A8DFF80](v136);

    MEMORY[0x19A8DFF80](8250, 0xE200000000000000);
    sub_19752235C();
    goto LABEL_147;
  }

  v55 = v52;

  v56 = sub_197403C30(a4, a5);
  if ((v57 & 1) == 0 || (v58 = *(*(v53 + 56) + 8 * v56), , , !*(v58 + 16)) || (v59 = sub_1973F4028(a1, v146), (v60 & 1) == 0))
  {

    v30 = a1;
    goto LABEL_139;
  }

  sub_197404860(*(v58 + 56) + 32 * v59, &v158);

  sub_197404860(&v158, &v155);
  if (!swift_dynamicCast())
  {
    sub_197404860(&v158, &v155);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1Tm_7(&v158);

LABEL_79:

      v88 = v151;
      v89 = v152;
      goto LABEL_80;
    }

    sub_1974A1014(0, 255);
    *&v155 = 0;
    *(&v155 + 1) = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000026, 0x80000001975240C0);
    MEMORY[0x19A8DFF80](1635017028, 0xE400000000000000);
    MEMORY[0x19A8DFF80](544370464, 0xE400000000000000);
    MEMORY[0x19A8DFF80](0xD000000000000014, 0x800000019752B340);
    MEMORY[0x19A8DFF80](8250, 0xE200000000000000);
    sub_19752235C();
    goto LABEL_147;
  }

  v153 = 0;
  v154 = -1;
  sub_19746CD08(v47, v151, v152, &v153, &type metadata for PersistentIdentifier, v47, v55);
  sub_19744D0E0(v151, v152);

  swift_beginAccess();
  v61 = v153;
  v62 = v154;
  sub_1974ADEAC(v153, v154);
  sub_1974A1014(v61, v62);
  if (v62 != 255)
  {
    __swift_destroy_boxed_opaque_existential_1Tm_7(&v158);
LABEL_96:
    *v150 = v61;
    *(v150 + 8) = v62;
    return;
  }

  sub_1974028B8(&v158, &v155);
LABEL_100:
  swift_dynamicCast();
}