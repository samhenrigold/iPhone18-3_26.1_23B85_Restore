unint64_t sub_1C7BFA534()
{
  result = qword_1EC263518;
  if (!qword_1EC263518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263518);
  }

  return result;
}

unint64_t sub_1C7BFA58C()
{
  result = qword_1EC263520;
  if (!qword_1EC263520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263520);
  }

  return result;
}

unint64_t sub_1C7BFA5E4()
{
  result = qword_1EC263528;
  if (!qword_1EC263528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263528);
  }

  return result;
}

uint64_t sub_1C7BFA638(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x796C646E65697266 && a2 == 0xEC000000656D614ELL || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001C7C9D380 == a2 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001C7C9D3A0 == a2 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x55556769666E6F63 && a2 == 0xEA00000000004449 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x654C737365636361 && a2 == 0xEB000000006C6576 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x646573557473616CLL && a2 == 0xEC00000065746144)
  {

    return 7;
  }

  else
  {
    v6 = sub_1C7C7DAA4();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

unint64_t sub_1C7BFA8F4()
{
  result = qword_1EC263530;
  if (!qword_1EC263530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263530);
  }

  return result;
}

unint64_t sub_1C7BFA96C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C7BFAA50(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_1C7BFAA50(unint64_t result)
{
  if ((result > 0x27 || ((1 << result) & 0x808080808ALL) == 0) && (result - 129 > 0xE || ((1 << (result + 127)) & 0x4043) == 0))
  {
    return 0;
  }

  return result;
}

unint64_t sub_1C7BFAAAC()
{
  result = qword_1EC263540;
  if (!qword_1EC263540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263540);
  }

  return result;
}

unint64_t sub_1C7BFAB10()
{
  result = qword_1EC263548;
  if (!qword_1EC263548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263548);
  }

  return result;
}

uint64_t sub_1C7BFAB64()
{
  [objc_opt_self() interfaceWithProtocol_];
  sub_1C7BED6A8(0, &qword_1EC263550, 0x1E695DFD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263558, &unk_1C7C90D70);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C7C8A350;
  v1 = type metadata accessor for CredentialInternal(0);
  *(v0 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263560, &qword_1C7C8A360);
  *(v0 + 32) = v1;
  v2 = type metadata accessor for InstanceInfoInternal();
  *(v0 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263568, &qword_1C7C8A368);
  *(v0 + 64) = v2;
  v3 = type metadata accessor for ApplicationInfoInternal();
  *(v0 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263570, &qword_1C7C8A370);
  *(v0 + 96) = v3;
  v4 = sub_1C7BED6A8(0, &qword_1EC263578, 0x1E695DEC8);
  *(v0 + 152) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263580, &qword_1C7C8A378);
  *(v0 + 128) = v4;
  v5 = sub_1C7BED6A8(0, &qword_1EC263460, 0x1E696AFB0);
  *(v0 + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263588, &qword_1C7C8A380);
  *(v0 + 160) = v5;
  v6 = sub_1C7BED6A8(0, &qword_1EC263470, 0x1E696AEC0);
  *(v0 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263590, &qword_1C7C8A388);
  *(v0 + 192) = v6;
  v7 = sub_1C7BED6A8(0, &qword_1EC262ED0, 0x1E695DEF0);
  *(v0 + 248) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263598, &qword_1C7C8A390);
  *(v0 + 224) = v7;
  MEMORY[0x1CCA6B5E0](v0);
  result = sub_1C7C7D4F4();
  __break(1u);
  return result;
}

uint64_t sub_1C7BFADFC()
{
  v0 = sub_1C7C7D1B4();
  __swift_allocate_value_buffer(v0, qword_1EC288310);
  __swift_project_value_buffer(v0, qword_1EC288310);
  return sub_1C7C7D1A4();
}

uint64_t sub_1C7BFAE78(void *a1, unint64_t *a2)
{
  v4 = v2;
  v7 = *a2;
  v6 = a2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v8 == 2)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v52 = *a1;
      result = sub_1C7C67D18(1, 26, 0, 3, isUniquelyReferenced_nonNull_native);
      *a1 = v52;
      return result;
    }

    v17 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    v32 = v7 + OBJC_IVAR____TtC9SEService16SEPackageDetails_type;
    swift_beginAccess();
    v12 = *v32;
    v11 = *(v32 + 8);
    v10 = *(v32 + 16);
    swift_beginAccess();
    v50 = *(*(v17 + 24) + 16);
    sub_1C7BDF708(v12, v11, v10);
    v3 = swift_isUniquelyReferenced_nonNull_native();
    v33 = *a1;
    v53 = *a1;
    v7 = sub_1C7C70278(v12, v11, v10);
    v35 = v33[2];
    v36 = (v34 & 1) == 0;
    v37 = v35 + v36;
    if (!__OFADD__(v35, v36))
    {
      v17 = v34;
      if (v33[3] >= v37)
      {
        if (v3)
        {
          goto LABEL_28;
        }

        goto LABEL_48;
      }

      sub_1C7C704D4(v37, v3);
      v33 = v53;
      v38 = sub_1C7C70278(v12, v11, v10);
      if ((v17 & 1) == (v39 & 1))
      {
        v7 = v38;
        goto LABEL_28;
      }

      goto LABEL_49;
    }

LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v8)
  {
    v11 = *(v7 + OBJC_IVAR____TtC9SEService15ESIMProfileInfo_iccid);
    v10 = *(v7 + OBJC_IVAR____TtC9SEService15ESIMProfileInfo_iccid + 8);

    v17 = swift_isUniquelyReferenced_nonNull_native();
    v25 = *a1;
    v51 = *a1;
    v12 = sub_1C7C70278(v11, v10, 2);
    v27 = v25[2];
    v28 = (v26 & 1) == 0;
    v29 = v27 + v28;
    if (!__OFADD__(v27, v28))
    {
      v7 = v26;
      if (v25[3] >= v29)
      {
        if ((v17 & 1) == 0)
        {
          goto LABEL_43;
        }

        *a1 = v25;
        if ((v26 & 1) == 0)
        {
          goto LABEL_44;
        }

        goto LABEL_26;
      }

      sub_1C7C704D4(v29, v17);
      v25 = v51;
      v30 = sub_1C7C70278(v11, v10, 2);
      if ((v7 & 1) == (v31 & 1))
      {
        v12 = v30;
        *a1 = v51;
        if ((v7 & 1) == 0)
        {
          goto LABEL_44;
        }

        goto LABEL_26;
      }

      goto LABEL_49;
    }

    goto LABEL_35;
  }

  v50 = v2;
  v9 = v7 + OBJC_IVAR____TtC9SEService16SEPackageDetails_type;
  swift_beginAccess();
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v9 + 16);
  v13 = OBJC_IVAR____TtC9SEService16SEPackageDetails_instances;
  swift_beginAccess();
  v14 = *(v7 + v13);
  if (v14 >> 62)
  {
    v4 = sub_1C7C7D6D4();
  }

  else
  {
    v4 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1C7BDF708(v10, v11, v12);
  v7 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *a1;
  v53 = *a1;
  v17 = sub_1C7C70278(v10, v11, v12);
  v18 = v15[2];
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  LOBYTE(v3) = v16;
  if (v15[3] < v20)
  {
    sub_1C7C704D4(v20, v7);
    v15 = v53;
    v21 = sub_1C7C70278(v10, v11, v12);
    if ((v3 & 1) == (v22 & 1))
    {
      v17 = v21;
      *a1 = v53;
      if (v3)
      {
        goto LABEL_23;
      }

      goto LABEL_39;
    }

LABEL_49:
    result = sub_1C7C7DAF4();
    __break(1u);
    return result;
  }

  if ((v7 & 1) == 0)
  {
    goto LABEL_38;
  }

  *a1 = v15;
  if (v16)
  {
    goto LABEL_23;
  }

LABEL_39:
  for (result = sub_1C7C4F658(v17, v10, v11, v12, 0, v15); ; result = sub_1C7BEA9D8(v10, v11, v12))
  {
    v44 = v15[7];
    v45 = *(v44 + 8 * v17);
    v42 = __OFADD__(v45, v4);
    v46 = v45 + v4;
    if (!v42)
    {
      *(v44 + 8 * v17) = v46;
      return result;
    }

    __break(1u);
LABEL_43:
    sub_1C7C71E84();
    v25 = v51;
    *a1 = v51;
    if (v7)
    {
LABEL_26:
    }

    else
    {
LABEL_44:
      result = sub_1C7C4F658(v12, v11, v10, 2, 0, v25);
    }

    v47 = v25[7];
    v48 = *(v47 + 8 * v12);
    v42 = __OFADD__(v48, 1);
    v49 = v48 + 1;
    if (!v42)
    {
      break;
    }

    __break(1u);
LABEL_48:
    sub_1C7C71E84();
    v33 = v53;
LABEL_28:
    LOBYTE(v3) = v50;
    *a1 = v33;
    if (v17)
    {
      result = sub_1C7BEA9D8(v12, v11, v10);
    }

    else
    {
      result = sub_1C7C4F658(v7, v12, v11, v10, 0, v33);
    }

    v40 = v33[7];
    v41 = *(v40 + 8 * v7);
    v42 = __OFADD__(v41, v50);
    v43 = v41 + v50;
    if (!v42)
    {
      *(v40 + 8 * v7) = v43;
      return result;
    }

LABEL_37:
    __break(1u);
LABEL_38:
    sub_1C7C71E84();
    v15 = v53;
    *a1 = v53;
    if ((v3 & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_23:
    ;
  }

  *(v47 + 8 * v12) = v49;
  return result;
}

unint64_t *sub_1C7BFB318(uint64_t a1, uint64_t a2, char a3)
{
  v6 = a1;
  v16[1] = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 32);
  v8 = ((1 << v7) + 63) >> 6;
  if ((v7 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v10 = v16 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v10, v9);
    result = sub_1C7BFC218(v10, v11, v8, v6, a2, a3 & 1);
    if (v3)
    {
      return swift_willThrow();
    }

    return result;
  }

  v13 = swift_slowAlloc();
  v15 = sub_1C7BFC3C4(v13, v8, v6, a2, a3 & 1, v14);
  result = MEMORY[0x1CCA6C990](v13, -1, -1);
  if (!v3)
  {
    return v15;
  }

  return result;
}

void *sub_1C7BFB498(uint64_t a1, uint64_t (*a2)(char *, unint64_t, uint64_t), uint64_t (*a3)(void *, uint64_t, uint64_t))
{
  v5 = a1;
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v9 = v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    result = a2(v9, v7, v5);
    if (v3)
    {
      return swift_willThrow();
    }

    return result;
  }

  v12 = swift_slowAlloc();
  v13 = sub_1C7BFC33C(v12, v7, v5, a3);
  result = MEMORY[0x1CCA6C990](v12, -1, -1);
  if (!v3)
  {
    return v13;
  }

  return result;
}

uint64_t sub_1C7BFB608(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1C7BFC454(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1C7C7DA64();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1C7C7D444();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_1C7BFB73C(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1C7BFB73C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1C7BFBE7C(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_1C7BFBC88((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1C7BFBE90(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_1C7BFBE90((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        sub_1C7BFBC88((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_1C7BFBC88(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

char *sub_1C7BFBE90(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2635A8, &qword_1C7C8A3C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

unint64_t *sub_1C7BFBF94(unint64_t *result, uint8x8_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = 1 << *(a4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  while (2)
  {
    a2.i32[0] = dword_1F474F7C8;
    a2 = (vmovl_u8(a2).u64[0] & 0xFF00FF00FF00FFLL);
    do
    {
      while (1)
      {
        if (!v9)
        {
          v12 = v6;
          while (1)
          {
            v6 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
              break;
            }

            if (v6 >= ((v7 + 63) >> 6))
            {
              return sub_1C7C4F3F8(result, a3, v5, a4);
            }

            v13 = *(a4 + 64 + 8 * v6);
            ++v12;
            if (v13)
            {
              v9 = (v13 - 1) & v13;
              v11 = __clz(__rbit64(v13)) | (v6 << 6);
              goto LABEL_14;
            }
          }

          __break(1u);
          return result;
        }

        v10 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
        v11 = v10 | (v6 << 6);
LABEL_14:
        v14 = *(a4 + 48) + 24 * v11;
        v15 = *v14;
        if (*(v14 + 16) != 3)
        {
          break;
        }

        if ((v15 - 11) <= 3)
        {
          goto LABEL_17;
        }
      }
    }

    while (*(v14 + 16) || (vmaxv_u16(vceq_s16(a2, (*&vdup_n_s16(v15) & 0xFF00FF00FF00FFLL))) & 1) == 0);
LABEL_17:
    *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
    if (!__OFADD__(v5++, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
  return sub_1C7C4F3F8(result, a3, v5, a4);
}

unint64_t *sub_1C7BFC0D8(unint64_t *result, uint16x8_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = 1 << *(a4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  while (2)
  {
    a2.i32[0] = dword_1F474F750;
    a2 = vmovl_u8(*a2.i8);
    a2.i32[0] &= 0xFF00FFu;
    a2.i16[2] = a2.u8[4];
    a2.i16[3] = a2.u8[6];
    do
    {
      while (1)
      {
        if (!v9)
        {
          v12 = v6;
          while (1)
          {
            v6 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
              break;
            }

            if (v6 >= ((v7 + 63) >> 6))
            {
              return sub_1C7C4F3F8(result, a3, v5, a4);
            }

            v13 = *(a4 + 64 + 8 * v6);
            ++v12;
            if (v13)
            {
              v9 = (v13 - 1) & v13;
              v11 = __clz(__rbit64(v13)) | (v6 << 6);
              goto LABEL_14;
            }
          }

          __break(1u);
          return result;
        }

        v10 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
        v11 = v10 | (v6 << 6);
LABEL_14:
        v14 = *(a4 + 48) + 24 * v11;
        v15 = *v14;
        if (*(v14 + 16) != 3)
        {
          break;
        }

        if (__PAIR128__((v15 >= 0xB) + *(v14 + 8) - 1, v15 - 11) >= 4)
        {
          goto LABEL_17;
        }
      }
    }

    while (!*(v14 + 16) && (vmaxv_u16(vceq_s16(*a2.i8, (*&vdup_n_s16(v15) & 0xFF00FF00FF00FFLL))) & 1) != 0);
LABEL_17:
    *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
    if (!__OFADD__(v5++, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
  return sub_1C7C4F3F8(result, a3, v5, a4);
}

unint64_t *sub_1C7BFC218(unint64_t *result, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = 0;
  v8 = 0;
  v9 = 1 << *(a4 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a4 + 64);
  do
  {
    do
    {
      if (v11)
      {
        v12 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v13 = v12 | (v8 << 6);
        if (a6)
        {
          break;
        }
      }

      else
      {
        v14 = v8;
        do
        {
          v8 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            __break(1u);
            return result;
          }

          if (v8 >= ((v9 + 63) >> 6))
          {
            return sub_1C7C4F3F8(result, a3, v7, a4);
          }

          v15 = *(a4 + 64 + 8 * v8);
          ++v14;
        }

        while (!v15);
        v11 = (v15 - 1) & v15;
        v13 = __clz(__rbit64(v15)) | (v8 << 6);
        if (a6)
        {
          break;
        }
      }

      v16 = (a5 & 0xFFFFFFFFFFFFFFFDLL) == 0;
      v17 = *(*(a4 + 48) + 24 * v13 + 16);
      v18 = v17 == 1 || a5 != 1;
      if (v17 != 1)
      {
        v16 = 0;
      }
    }

    while (!v18 || v16);
    *(result + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
  }

  while (!__OFADD__(v7++, 1));
  __break(1u);
  return sub_1C7C4F3F8(result, a3, v7, a4);
}

void *sub_1C7BFC33C(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = a4(result, a2, a3);

    return v8;
  }

  return result;
}

unint64_t *sub_1C7BFC3C4(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, __n128 a6)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      v10 = a4;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
      a4 = v10;
    }

    v11 = sub_1C7BFC218(result, a6, a2, a3, a4, a5 & 1);

    return v11;
  }

  return result;
}

uint64_t sub_1C7BFC468(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *), uint64_t a3, char a4, void *a5)
{
  v54 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v40 = v10;
  v41 = v6;
  while (1)
  {
    v16 = v9;
    v17 = v11;
    if (!v9)
    {
      break;
    }

LABEL_13:
    v19 = __clz(__rbit64(v16)) | (v17 << 6);
    v20 = *(a1 + 48) + 24 * v19;
    v21 = *(*(a1 + 56) + 8 * v19);
    v22 = *(v20 + 8);
    v23 = *(v20 + 16);
    v46 = *v20;
    v47 = v22;
    v48 = v23;
    v49 = v21;
    sub_1C7BDF708(v46, v22, v23);
    a2(&v50, &v46);
    sub_1C7BEA9D8(v46, v47, v48);
    v24 = v52;
    if (v52 == 255)
    {
LABEL_23:
      sub_1C7C0040C(a1);
    }

    v25 = a4;
    v26 = v50;
    v27 = v51;
    v45 = v53;
    v28 = *v54;
    v30 = sub_1C7C70278(v50, v51, v52);
    v31 = v28[2];
    v32 = (v29 & 1) == 0;
    v33 = v31 + v32;
    if (__OFADD__(v31, v32))
    {
      goto LABEL_25;
    }

    v34 = v29;
    if (v28[3] >= v33)
    {
      if ((v25 & 1) == 0)
      {
        sub_1C7C71E84();
      }
    }

    else
    {
      sub_1C7C704D4(v33, v25 & 1);
      v35 = sub_1C7C70278(v26, v27, v24);
      if ((v34 & 1) != (v36 & 1))
      {
        goto LABEL_28;
      }

      v30 = v35;
    }

    v44 = (v16 - 1) & v16;
    v37 = *v54;
    if (v34)
    {
      v38 = *(v37[7] + 8 * v30);
      sub_1C7BEA9D8(v26, v27, v24);
      if (__OFADD__(v38, v45))
      {
        goto LABEL_26;
      }

      *(v37[7] + 8 * v30) = v38 + v45;
    }

    else
    {
      v37[(v30 >> 6) + 8] |= 1 << v30;
      v12 = v37[6] + 24 * v30;
      *v12 = v26;
      *(v12 + 8) = v27;
      *(v12 + 16) = v24;
      *(v37[7] + 8 * v30) = v45;
      v13 = v37[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_27;
      }

      v37[2] = v15;
    }

    a4 = 1;
    v11 = v17;
    v10 = v40;
    v6 = v41;
    v9 = v44;
  }

  v18 = v11;
  while (1)
  {
    v17 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v17 >= v10)
    {
      goto LABEL_23;
    }

    v16 = *(v6 + 8 * v17);
    ++v18;
    if (v16)
    {
      goto LABEL_13;
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
  result = sub_1C7C7DAF4();
  __break(1u);
  return result;
}

uint64_t sub_1C7BFC72C(uint64_t *a1, uint64_t a2, _BYTE *a3)
{
  v3 = *a1;
  if (a1[1] >> 62 != 1)
  {
    goto LABEL_12;
  }

  if (*a3)
  {
    return 0;
  }

  v4 = OBJC_IVAR____TtC9SEService10SESnapshot_seState;
  swift_beginAccess();
  v6 = *(a2 + v4);
  v7 = OBJC_IVAR____TtC9SEService7SEState_seStorageCredentials;
  result = swift_beginAccess();
  v9 = 0;
  v10 = 0;
  v11 = *(v6 + v7);
  v12 = *(v11 + 16);
  v13 = v11 + 40;
  while (2)
  {
    v14 = (v13 + 16 * v9);
    do
    {
      if (v12 == v9)
      {
        v21 = *(*(v6 + OBJC_IVAR____TtC9SEService7SEState_memoryInfo) + OBJC_IVAR____TtC9SEService13SERMemoryInfo_reservedFlashForEUICC);
        if (v21 >= v10)
        {
          return 0;
        }

        v18 = __OFSUB__(v10, v21);
        v22 = v10 - v21;
        if (!v18)
        {
          if (v22 >= *(v3 + OBJC_IVAR____TtC9SEService15ESIMProfileInfo_exactSize))
          {
            return *(v3 + OBJC_IVAR____TtC9SEService15ESIMProfileInfo_exactSize);
          }

          else
          {
            return v22;
          }
        }

LABEL_22:
        __break(1u);
        return result;
      }

      if (v9 >= v12)
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v15 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_21;
      }

      v16 = *v14;
      v14 += 2;
      ++v9;
    }

    while (v16 >> 62 != 1);
    v17 = *(*(v14 - 3) + OBJC_IVAR____TtC9SEService15ESIMProfileInfo_exactSize);
    v9 = v15;
    v18 = __OFADD__(v10, v17);
    v10 += v17;
    if (!v18)
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_12:
  sub_1C7C7D794();

  v19 = SEStorageCredential.description.getter();
  MEMORY[0x1CCA6B380](v19);

  MEMORY[0x1CCA6B380](0x7669672073617720, 0xEA00000000006E65);
  sub_1C7BEADA0();
  swift_allocError();
  *v20 = 0xD00000000000004DLL;
  *(v20 + 8) = 0x80000001C7C9D4C0;
  *(v20 + 16) = 2;
  return swift_willThrow();
}

void sub_1C7BFC930(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v6 = sub_1C7C7D1B4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  v51 = *a3;
  if (qword_1EC262170 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v6, qword_1EC288310);
  (*(v7 + 16))(v9, v13, v6);
  sub_1C7BDF708(v10, v11, v12);
  v14 = sub_1C7C7D194();
  v15 = sub_1C7C7D574();
  sub_1C7BEA9D8(v10, v11, v12);
  v49 = v15;
  v16 = os_log_type_enabled(v14, v15);
  v50 = v11;
  if (v16)
  {
    v46 = v14;
    v48 = a2;
    v17 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v52.i64[0] = v45;
    *v17 = 136315650;
    *(v17 + 4) = sub_1C7BE42F8(0xD000000000000031, 0x80000001C7C9D510, v52.i64);
    *(v17 + 12) = 2080;
    v54 = v10;
    v55 = v11;
    v56 = v12;
    v47 = v10;
    sub_1C7BDF708(v10, v11, v12);
    sub_1C7C7D324();
    v18 = v51;
    v19 = sub_1C7C7D334();
    v21 = v20;

    v22 = sub_1C7BE42F8(v19, v21, v52.i64);

    v23 = 0xE500000000000000;
    v24 = 0x7061654870;
    *(v17 + 14) = v22;
    *(v17 + 22) = 2080;
    v25 = 0xE300000000000000;
    v26 = 6582115;
    if (v18 != 2)
    {
      v26 = 0x69646E4964657375;
      v25 = 0xEB00000000736563;
    }

    if (v18)
    {
      v24 = 7499619;
      v23 = 0xE300000000000000;
    }

    if (v18 <= 1)
    {
      v27 = v24;
    }

    else
    {
      v27 = v26;
    }

    if (v18 <= 1)
    {
      v28 = v23;
    }

    else
    {
      v28 = v25;
    }

    v29 = sub_1C7BE42F8(v27, v28, v52.i64);

    *(v17 + 24) = v29;
    v30 = v46;
    _os_log_impl(&dword_1C7B9A000, v46, v49, "%s %s %s ", v17, 0x20u);
    v31 = v45;
    swift_arrayDestroy();
    MEMORY[0x1CCA6C990](v31, -1, -1);
    MEMORY[0x1CCA6C990](v17, -1, -1);

    (*(v7 + 8))(v9, v6);
    v10 = v47;
    a2 = v48;
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  v32 = OBJC_IVAR____TtC9SEService10SESnapshot_seState;
  swift_beginAccess();
  v33 = *(a2 + v32);
  v34 = v50;
  v52.i64[0] = v10;
  v52.i64[1] = v50;
  v53 = v12;
  v35 = v33;
  sub_1C7C6CB5C(&v52, &v57);

  v36 = v57;
  switch(v12)
  {
    case 0:
      if (!sub_1C7BDF6D8(v10, &unk_1F474F758))
      {
        break;
      }

      goto LABEL_26;
    case 2:
      if ((~(v57.i64[0] & v57.i64[1]) & 0xF000000000000007) == 0)
      {
        __break(1u);
        return;
      }

      v52 = v57;
      v57.i8[0] = v51;
      sub_1C7BFCFA8(v36.i64[0], v57.u64[1]);
      v37 = v58;
      sub_1C7BFC72C(v52.i64, a2, &v57);
      v38 = v37;
      sub_1C7BFCF38(v52.i64[0], v52.u64[1]);
LABEL_27:
      sub_1C7BFCF20(v36.i64[0], v36.u64[1]);
      v58 = v38;
      return;
    case 3:
      if (v10 == 26 && !v34)
      {
        if ((~(v57.i64[0] & v57.i64[1]) & 0xF000000000000007) == 0)
        {
          return;
        }

        if (v57.i64[1] >> 62 == 2)
        {
          swift_beginAccess();
        }

LABEL_30:
        sub_1C7BFCF20(v36.i64[0], v36.u64[1]);
        return;
      }

      if (__PAIR128__((v10 >= 0xB) + v34 - 1, v10 - 11) < 4)
      {
LABEL_26:
        v52.i64[0] = v10;
        v52.i64[1] = v34;
        v53 = v12;
        v57.i8[0] = v51;
        v39 = v58;
        sub_1C7BD5348(v57.i8, a2);
        v38 = v39;
        goto LABEL_27;
      }

      break;
  }

  v52.i64[0] = v10;
  v52.i64[1] = v34;
  v53 = v12;
  v57.i8[0] = v51;
  v40 = v58;
  v41 = sub_1C7BD4D04(v57.i8, a2);
  v58 = v40;
  if (v40)
  {
    goto LABEL_30;
  }

  v42 = v41;
  v52.i64[0] = v10;
  v52.i64[1] = v34;
  v53 = v12;
  v57.i8[0] = v51;
  v43 = sub_1C7BD5348(v57.i8, a2);
  sub_1C7BFCF20(v36.i64[0], v36.u64[1]);
  v58 = 0;
  if (__OFADD__(v42, v43))
  {
    __break(1u);
    goto LABEL_30;
  }
}

void sub_1C7BFCF20(void *result, unint64_t a2)
{
  if ((~(result & a2) & 0xF000000000000007) != 0)
  {
    sub_1C7BFCF38(result, a2);
  }
}

void sub_1C7BFCF38(void *a1, unint64_t a2)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {

LABEL_5:

      return;
    }

LABEL_7:

    goto LABEL_5;
  }

  if (v3 == 2)
  {
    goto LABEL_7;
  }
}

id sub_1C7BFCFA8(void *a1, unint64_t a2)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {

      return a1;
    }

LABEL_7:

    return a1;
  }

  if (v3 == 2)
  {
    goto LABEL_7;
  }

  v5 = a1;
}

char *sub_1C7BFD018(char **a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v135 = sub_1C7C7D1B4();
  v134 = *(v135 - 8);
  v8 = MEMORY[0x1EEE9AC00](v135);
  v132 = &v127 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v131 = &v127 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v127 - v12;
  v14 = *a1;
  v15 = a1[1];
  v16 = *(a1 + 16);
  v138 = *a4;
  v17 = OBJC_IVAR____TtC9SEService10SESnapshot_seState;
  swift_beginAccess();
  v18 = *(a2 + v17);
  v148.i64[0] = v14;
  v148.i64[1] = v15;
  v149 = v16;
  v19 = v18;
  sub_1C7C6CB5C(&v148, &v146);

  v20 = v146;
  if ((~(v146.i64[0] & v146.i64[1]) & 0xF000000000000007) == 0)
  {
    v136 = v146;
    v21 = type metadata accessor for SEPackageDetails();
    v22 = objc_allocWithZone(v21);
    v22[OBJC_IVAR____TtC9SEService16SEPackageDetails_packageLoaded] = 0;
    *&v22[OBJC_IVAR____TtC9SEService16SEPackageDetails_containers] = 0;
    *&v22[OBJC_IVAR____TtC9SEService16SEPackageDetails_instances] = MEMORY[0x1E69E7CC0];
    v23 = &v22[OBJC_IVAR____TtC9SEService16SEPackageDetails_type];
    *v23 = v14;
    *(v23 + 1) = v15;
    v23[16] = v16;
    sub_1C7BDF708(v14, v15, v16);
    v150.receiver = v22;
    v150.super_class = v21;
    v24 = objc_msgSendSuper2(&v150, sel_init);
    goto LABEL_10;
  }

  v25 = v146.i64[1] >> 62;
  if ((v146.i64[1] >> 62) > 1)
  {
    if (v25 != 3)
    {
      if (v138 > 1)
      {
        if (v138 == 2)
        {
          v53 = &OBJC_IVAR____TtC9SEService11MemoryUsage_cod;
        }

        else
        {
          v53 = &OBJC_IVAR____TtC9SEService11MemoryUsage_usedIndices;
        }
      }

      else if (v138)
      {
        v53 = &OBJC_IVAR____TtC9SEService11MemoryUsage_cor;
      }

      else
      {
        v53 = &OBJC_IVAR____TtC9SEService11MemoryUsage_pHeap;
      }

      v61 = *v53;
      v62 = v146.i64[0];
      swift_beginAccess();
      v14 = *&v62[v61];
      sub_1C7BFCF20(v62, v20.u64[1]);
      return v14;
    }
  }

  else if (v25)
  {
    v148 = v146;
    v146.i8[0] = v138;
    sub_1C7BFCFA8(v20.i64[0], v146.u64[1]);
    v26 = v139;
    v27 = sub_1C7BFC72C(v148.i64, a2, &v146);
    if (!v26)
    {
      v14 = v27;
    }

    sub_1C7BFCF20(v20.i64[0], v20.u64[1]);
    sub_1C7BFCF38(v148.i64[0], v148.u64[1]);
    return v14;
  }

  v136 = v146;
  v24 = v146.i64[0];
LABEL_10:
  v28 = v24;
  v29 = OBJC_IVAR____TtC9SEService16SEPackageDetails_containers;
  swift_beginAccess();
  v30 = *&v28[v29];
  v137 = v28;
  if (!a3)
  {
    v36 = OBJC_IVAR____TtC9SEService16SEPackageDetails_instances;
    swift_beginAccess();
    v37 = *&v28[v36];
    if (v37 >> 62)
    {
      goto LABEL_120;
    }

    if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_19;
    }

LABEL_121:
    v118 = v28;
    v119 = OBJC_IVAR____TtC9SEService16SEPackageDetails_packageLoaded;
    swift_beginAccess();
    if (v118[v119] == 1)
    {
      v143 = v14;
      v144 = v15;
      v145 = v16;
      v32 = v138;
      LOBYTE(v151) = v138;
      v120 = v139;
      v121 = sub_1C7BD4228(&v151, a2);
      v139 = v120;
      if (v120)
      {
        goto LABEL_126;
      }

      v122 = v121;
    }

    else
    {
      v122 = 0;
      v32 = v138;
    }

    v143 = v14;
    v144 = v15;
    v145 = v16;
    LOBYTE(v151) = v32;
    v123 = v139;
    v124 = sub_1C7BD47CC(&v151, a2);
    v139 = v123;
    if (v123)
    {
      goto LABEL_126;
    }

    v126 = v124 * v30;
    if ((v124 * v30) >> 64 == (v124 * v30) >> 63)
    {
      v96 = __OFADD__(v122, v126);
      v129 = (v122 + v126);
      v38 = v135;
      v39 = v134;
      if (!v96)
      {
        goto LABEL_20;
      }

      __break(1u);
      goto LABEL_132;
    }

    __break(1u);
    goto LABEL_137;
  }

  v133 = a3;
  if (v30 <= 1)
  {
    v31 = 1;
  }

  else
  {
    v31 = v30;
  }

  v146.i64[0] = v14;
  v146.i64[1] = v15;
  v147 = v16;
  v32 = v138;
  LOBYTE(v140) = v138;
  v33 = v139;
  v34 = sub_1C7BD4228(&v140, a2);
  if (v33)
  {
    goto LABEL_126;
  }

  v13 = v34;
  v146.i64[0] = v14;
  v146.i64[1] = v15;
  v147 = v16;
  LOBYTE(v140) = v32;
  v35 = sub_1C7BD47CC(&v140, a2);
  v30 = 0;
  v54 = v35 * v31;
  v55 = v137;
  if ((v35 * v31) >> 64 != (v35 * v31) >> 63)
  {
    __break(1u);
    goto LABEL_134;
  }

  v129 = &v13[v54];
  v32 = v133;
  if (__OFADD__(v13, v54))
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  v139 = 0;
  if (v133 <= 0)
  {
    if (qword_1EC262170 != -1)
    {
      swift_once();
    }

    v65 = v135;
    v66 = __swift_project_value_buffer(v135, qword_1EC288310);
    v67 = v134;
    v68 = v132;
    (*(v134 + 16))(v132, v66, v65);
    sub_1C7BDF708(v14, v15, v16);
    v69 = sub_1C7C7D194();
    v70 = sub_1C7C7D574();
    sub_1C7BEA9D8(v14, v15, v16);
    LODWORD(v131) = v70;
    v71 = v70;
    v72 = v69;
    if (!os_log_type_enabled(v69, v71))
    {

      sub_1C7BFCF20(v136.i64[0], v136.u64[1]);
      (*(v67 + 8))(v68, v135);
      return v129;
    }

    v73 = swift_slowAlloc();
    v130 = swift_slowAlloc();
    v140 = v130;
    *v73 = 136316162;
    *(v73 + 4) = sub_1C7BE42F8(0xD000000000000041, 0x80000001C7C9D550, &v140);
    *(v73 + 12) = 2080;
    v146.i64[0] = v14;
    v146.i64[1] = v15;
    v147 = v16;
    sub_1C7BDF708(v14, v15, v16);
    sub_1C7C7D324();
    v74 = sub_1C7C7D334();
    v76 = v75;

    v77 = sub_1C7BE42F8(v74, v76, &v140);

    *(v73 + 14) = v77;
    *(v73 + 22) = 2080;
    v146.i64[0] = v32;
    sub_1C7BFE364();
    v78 = sub_1C7C7D654();
    v80 = sub_1C7BE42F8(v78, v79, &v140);

    *(v73 + 24) = v80;
    *(v73 + 32) = 2080;
    if (v138 > 1)
    {
      v14 = v129;
      v81 = v132;
      if (v138 == 2)
      {
        v83 = 0xE300000000000000;
        v82 = 6582115;
      }

      else
      {
        v82 = 0x69646E4964657375;
        v83 = 0xEB00000000736563;
      }
    }

    else
    {
      v14 = v129;
      v81 = v132;
      if (v138)
      {
        v82 = 7499619;
        v83 = 0xE300000000000000;
      }

      else
      {
        v82 = 0x7061654870;
        v83 = 0xE500000000000000;
      }
    }

    v97 = sub_1C7BE42F8(v82, v83, &v140);

    *(v73 + 34) = v97;
    *(v73 + 42) = 2048;
    *(v73 + 44) = v14;
    _os_log_impl(&dword_1C7B9A000, v72, v131, "%s %s %s %s: result: %ld", v73, 0x34u);
    v98 = v130;
    swift_arrayDestroy();
    MEMORY[0x1CCA6C990](v98, -1, -1);
    MEMORY[0x1CCA6C990](v73, -1, -1);

    sub_1C7BFCF20(v136.i64[0], v136.u64[1]);
    (*(v134 + 8))(v81, v135);
    return v14;
  }

  if (!v16)
  {
    if (sub_1C7BDF6D8(v14, &unk_1F474F780))
    {
      goto LABEL_36;
    }

LABEL_55:
    v84 = OBJC_IVAR____TtC9SEService16SEPackageDetails_instances;
    swift_beginAccess();
    v13 = *&v55[v84];
    v140 = MEMORY[0x1E69E7CC0];
    if (!(v13 >> 62))
    {
      v28 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_57;
    }

LABEL_135:
    v28 = sub_1C7C7D6D4();
LABEL_57:

    if (v28)
    {
      v85 = 0;
      v132 = (v13 & 0xC000000000000001);
      v130 = v13 & 0xFFFFFFFFFFFFFF8;
      v128 = a2;
      v127 = v28;
      while (1)
      {
        if (v132)
        {
          v86 = MEMORY[0x1CCA6B7B0](v85, v13);
        }

        else
        {
          if (v85 >= *(v130 + 16))
          {
            goto LABEL_119;
          }

          v86 = *&v13[8 * v85 + 32];
        }

        v30 = v86;
        v87 = (v85 + 1);
        if (__OFADD__(v85, 1))
        {
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          if (!sub_1C7C7D6D4())
          {
            goto LABEL_121;
          }

LABEL_19:
          v129 = 0;
          v38 = v135;
          v39 = v134;
LABEL_20:
          if (qword_1EC262170 == -1)
          {
LABEL_21:
            v40 = __swift_project_value_buffer(v38, qword_1EC288310);
            (*(v39 + 16))(v13, v40, v38);
            sub_1C7BDF708(v14, v15, v16);
            v41 = sub_1C7C7D194();
            v42 = sub_1C7C7D574();
            sub_1C7BEA9D8(v14, v15, v16);
            if (os_log_type_enabled(v41, v42))
            {
              LODWORD(v133) = v42;
              v43 = swift_slowAlloc();
              v132 = swift_slowAlloc();
              v151 = v132;
              *v43 = 136316162;
              *(v43 + 4) = sub_1C7BE42F8(0xD000000000000041, 0x80000001C7C9D550, &v151);
              *(v43 + 12) = 2080;
              v143 = v14;
              v144 = v15;
              v145 = v16;
              sub_1C7BDF708(v14, v15, v16);
              sub_1C7C7D324();
              v44 = sub_1C7C7D334();
              v46 = v45;

              v47 = sub_1C7BE42F8(v44, v46, &v151);

              *(v43 + 14) = v47;
              *(v43 + 22) = 2080;
              v143 = 0;
              sub_1C7BFE364();
              v48 = sub_1C7C7D654();
              v50 = sub_1C7BE42F8(v48, v49, &v151);

              *(v43 + 24) = v50;
              *(v43 + 32) = 2080;
              if (v138 > 1)
              {
                v14 = v129;
                if (v138 == 2)
                {
                  v52 = 0xE300000000000000;
                  v51 = 6582115;
                }

                else
                {
                  v51 = 0x69646E4964657375;
                  v52 = 0xEB00000000736563;
                }
              }

              else
              {
                v14 = v129;
                if (v138)
                {
                  v51 = 7499619;
                  v52 = 0xE300000000000000;
                }

                else
                {
                  v51 = 0x7061654870;
                  v52 = 0xE500000000000000;
                }
              }

              v63 = v132;
              v64 = sub_1C7BE42F8(v51, v52, &v151);

              *(v43 + 34) = v64;
              *(v43 + 42) = 2048;
              *(v43 + 44) = v14;
              _os_log_impl(&dword_1C7B9A000, v41, v133, "%s %s %s %s: result: %ld", v43, 0x34u);
              swift_arrayDestroy();
              MEMORY[0x1CCA6C990](v63, -1, -1);
              MEMORY[0x1CCA6C990](v43, -1, -1);

              sub_1C7BFCF20(v136.i64[0], v136.u64[1]);
              (*(v134 + 8))(v13, v135);
              return v14;
            }

            sub_1C7BFCF20(v136.i64[0], v136.u64[1]);
            (*(v39 + 8))(v13, v38);
            return v129;
          }

LABEL_132:
          swift_once();
          goto LABEL_21;
        }

        v57 = *&v86[OBJC_IVAR____TtC9SEService8SEApplet_lifecycleState];
        if (v57 <= 30)
        {
          if (v57 <= 6)
          {
            v88 = v57 == 1 || v57 == 3;
            if (!v88)
            {
              goto LABEL_147;
            }

LABEL_85:
            sub_1C7C7D7E4();
            sub_1C7C7D814();
            a2 = v128;
            sub_1C7C7D824();
            sub_1C7C7D7F4();
            v28 = v127;
            goto LABEL_61;
          }

          if (v57 == 7)
          {
            goto LABEL_85;
          }

          if (v57 != 15 && v57 != 23)
          {
            goto LABEL_147;
          }
        }

        else if (v57 > 129)
        {
          if (v57 != 130)
          {
            if (v57 == 135)
            {
              goto LABEL_85;
            }

            if (v57 != 143)
            {
              goto LABEL_147;
            }
          }
        }

        else if (v57 != 31 && v57 != 39 && v57 != 129)
        {
          goto LABEL_147;
        }

LABEL_61:
        ++v85;
        v88 = v87 == v28;
        v30 = v139;
        v32 = v133;
        if (v88)
        {
          v89 = v140;
          goto LABEL_90;
        }
      }
    }

    v89 = MEMORY[0x1E69E7CC0];
LABEL_90:

    if ((v89 & 0x8000000000000000) == 0 && (v89 & 0x4000000000000000) == 0)
    {
      v90 = *(v89 + 16);
      goto LABEL_93;
    }

LABEL_137:
    v90 = sub_1C7C7D6D4();
LABEL_93:

    v140 = v14;
    v141 = v15;
    v142 = v16;
    LOBYTE(v143) = v138;
    v91 = sub_1C7BD4D04(&v143, a2);
    if (!v30)
    {
      v92 = v91 * v90;
      if ((v91 * v90) >> 64 == (v91 * v90) >> 63)
      {
        v93 = &v129[v92];
        if (!__OFADD__(v129, v92))
        {
          v140 = v14;
          v141 = v15;
          v142 = v16;
          LOBYTE(v143) = v138;
          sub_1C7BFC930(&v140, a2, &v143);
          v95 = v32 - v90;
          if (!__OFSUB__(v32, v90))
          {
            v57 = v94 * v95;
            if ((v94 * v95) >> 64 == (v94 * v95) >> 63)
            {
              v96 = __OFADD__(v93, v57);
              v57 += v93;
              v129 = v57;
              if (!v96)
              {
                v59 = v136.i64[1];
                goto LABEL_107;
              }

              goto LABEL_144;
            }

LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
            goto LABEL_145;
          }

LABEL_142:
          __break(1u);
          goto LABEL_143;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_140;
    }

LABEL_126:

    sub_1C7BFCF20(v136.i64[0], v136.u64[1]);
    return v14;
  }

  if (v16 != 3 || __PAIR128__(&v15[(v14 >= 0xB) - 1], v14 - 11) >= 4)
  {
    goto LABEL_55;
  }

LABEL_36:
  v146.i64[0] = v14;
  v146.i64[1] = v15;
  v147 = v16;
  LOBYTE(v140) = v138;
  v56 = sub_1C7BD4D04(&v140, a2);
  v57 = v129;
  v58 = &v129[v56];
  v59 = v136.i64[1];
  if (__OFADD__(v129, v56))
  {
    __break(1u);
    goto LABEL_142;
  }

  v146.i64[0] = v14;
  v146.i64[1] = v15;
  v147 = v16;
  LOBYTE(v140) = v138;
  sub_1C7BFC930(&v146, a2, &v140);
  v57 = v60 * v32;
  if ((v60 * v32) >> 64 == (v60 * v32) >> 63)
  {
    v96 = __OFADD__(v58, v57);
    v57 += v58;
    v129 = v57;
    if (!v96)
    {
LABEL_107:
      v136.i64[1] = v59;
      if (qword_1EC262170 == -1)
      {
LABEL_108:
        v99 = v135;
        v100 = __swift_project_value_buffer(v135, qword_1EC288310);
        v101 = v134;
        v102 = v131;
        (*(v134 + 16))(v131, v100, v99);
        sub_1C7BDF708(v14, v15, v16);
        v103 = sub_1C7C7D194();
        v104 = sub_1C7C7D574();
        sub_1C7BEA9D8(v14, v15, v16);
        if (os_log_type_enabled(v103, v104))
        {
          v139 = 0;
          v105 = swift_slowAlloc();
          v132 = swift_slowAlloc();
          v143 = v132;
          *v105 = 136316162;
          *(v105 + 4) = sub_1C7BE42F8(0xD000000000000041, 0x80000001C7C9D550, &v143);
          *(v105 + 12) = 2080;
          v140 = v14;
          v141 = v15;
          v142 = v16;
          sub_1C7BDF708(v14, v15, v16);
          sub_1C7C7D324();
          v106 = sub_1C7C7D334();
          v108 = v107;

          v109 = sub_1C7BE42F8(v106, v108, &v143);

          *(v105 + 14) = v109;
          *(v105 + 22) = 2080;
          v140 = v133;
          sub_1C7BFE364();
          v110 = sub_1C7C7D654();
          v112 = sub_1C7BE42F8(v110, v111, &v143);

          *(v105 + 24) = v112;
          *(v105 + 32) = 2080;
          if (v138 > 1)
          {
            v14 = v129;
            v113 = v131;
            if (v138 == 2)
            {
              v115 = 0xE300000000000000;
              v114 = 6582115;
            }

            else
            {
              v114 = 0x69646E4964657375;
              v115 = 0xEB00000000736563;
            }
          }

          else
          {
            v14 = v129;
            v113 = v131;
            if (v138)
            {
              v114 = 7499619;
              v115 = 0xE300000000000000;
            }

            else
            {
              v114 = 0x7061654870;
              v115 = 0xE500000000000000;
            }
          }

          v116 = v132;
          v117 = sub_1C7BE42F8(v114, v115, &v143);

          *(v105 + 34) = v117;
          *(v105 + 42) = 2048;
          *(v105 + 44) = v14;
          _os_log_impl(&dword_1C7B9A000, v103, v104, "%s %s %s %s: result: %ld", v105, 0x34u);
          swift_arrayDestroy();
          MEMORY[0x1CCA6C990](v116, -1, -1);
          MEMORY[0x1CCA6C990](v105, -1, -1);

          sub_1C7BFCF20(v136.i64[0], v136.u64[1]);
          (*(v134 + 8))(v113, v135);
          return v14;
        }

        sub_1C7BFCF20(v136.i64[0], v136.u64[1]);
        (*(v101 + 8))(v102, v99);
        return v129;
      }

LABEL_140:
      swift_once();
      goto LABEL_108;
    }

    goto LABEL_146;
  }

LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  v143 = v57;
  result = sub_1C7C7DAC4();
  __break(1u);
  return result;
}

unint64_t sub_1C7BFE364()
{
  result = qword_1EC2635A0;
  if (!qword_1EC2635A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2635A0);
  }

  return result;
}

uint64_t sub_1C7BFE3B8(uint64_t a1, uint64_t a2, unsigned __int8 *a3, char a4)
{
  v6 = *a3;
  v7 = sub_1C7BFB498(a1, sub_1C7BFBF94, sub_1C7BFBF94);
  if (*(v7 + 2))
  {
    v67 = v6;
    v64 = a4;
    if (a4)
    {
      v8 = OBJC_IVAR____TtC9SEService10SESnapshot_seState;
      swift_beginAccess();
      v9 = *(a2 + v8);
      v10 = OBJC_IVAR____TtC9SEService7SEState_seStorageCredentials;
      swift_beginAccess();
      v11 = *(v9 + v10);
      v12 = *(v11 + 16);
      if (v12)
      {
        v13 = (v11 + 40);
        v14 = v13;
        do
        {
          v15 = *v14;
          v14 += 2;
          v16 = v15 >> 62;
          if (v15 >> 62 == 3 || v16 == 0)
          {
            v18 = *(v13 - 1) + OBJC_IVAR____TtC9SEService16SEPackageDetails_type;
            swift_beginAccess();
            v20 = *v18;
            if (*(v18 + 16) == 3)
            {
              if (__PAIR128__((v20 >= 0xB) + *(v18 + 8) - 1, v20 - 11) < 4)
              {
                goto LABEL_15;
              }
            }

            else if (!*(v18 + 16))
            {
              v19.i32[0] = dword_1F474F7F0;
              if (vmaxv_u16(vceq_s16((vmovl_u8(v19).u64[0] & 0xFF00FF00FF00FFLL), (*&vdup_n_s16(v20) & 0xFF00FF00FF00FFLL))))
              {
LABEL_15:
                v21 = 0;
                goto LABEL_41;
              }
            }
          }

          v13 = v14;
          --v12;
        }

        while (v12);
      }
    }

    v22 = OBJC_IVAR____TtC9SEService10SESnapshot_seState;
    swift_beginAccess();
    v23 = *(*(a2 + v22) + OBJC_IVAR____TtC9SEService7SEState_seType);
    if ((v23 - 3) >= 3)
    {
      if ((v23 - 1) >= 2)
      {
        v24 = *(*(a2 + v22) + OBJC_IVAR____TtC9SEService7SEState_seType);
        goto LABEL_40;
      }

      v23 = 63;
      if (v67 != 3)
      {
        v23 = 0;
      }

      if (!v67)
      {
        v23 = 65608;
      }

      if (v67 <= 1)
      {
        if (!v67)
        {
          v24 = 1108;
          goto LABEL_40;
        }

        goto LABEL_35;
      }

      if (v67 == 2)
      {
        v24 = 2100;
        goto LABEL_40;
      }
    }

    else
    {
      v23 = 63;
      if (v67 != 3)
      {
        v23 = 0;
      }

      if (!v67)
      {
        v23 = 56980;
      }

      if (v67 <= 1)
      {
        if (!v67)
        {
          v24 = 1088;
          goto LABEL_40;
        }

LABEL_35:
        v24 = 74;
        goto LABEL_40;
      }

      if (v67 == 2)
      {
        v24 = 2080;
        goto LABEL_40;
      }
    }

    v24 = 52;
LABEL_40:
    v21 = v24 + v23;
LABEL_41:
    v60 = v7 + 64;
    v25 = 1 << v7[32];
    v26 = -1;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    v27 = v26 & *(v7 + 8);
    v61 = OBJC_IVAR____TtC9SEService10SESnapshot_seState;
    result = swift_beginAccess();
    v29 = 0;
    v30 = (v25 + 63) >> 6;
    v31 = v4;
    v63 = v7;
    while (1)
    {
      if (!v27)
      {
        while (1)
        {
          v32 = v29 + 1;
          if (__OFADD__(v29, 1))
          {
            break;
          }

          if (v32 >= v30)
          {
            goto LABEL_66;
          }

          v27 = *&v60[8 * v32];
          ++v29;
          if (v27)
          {
            v29 = v32;
            goto LABEL_49;
          }
        }

        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
        return result;
      }

LABEL_49:
      v33 = __clz(__rbit64(v27)) | (v29 << 6);
      v34 = *(v7 + 7);
      v35 = *(v7 + 6) + 24 * v33;
      v37 = *v35;
      v36 = *(v35 + 8);
      v38 = *(v35 + 16);
      v65 = *(v34 + 8 * v33);
      if ((v64 & 1) == 0)
      {
        break;
      }

      v62 = v31;
      v39 = *(v35 + 16);
      v40 = *(a2 + v61);
      sub_1C7BDF708(v37, v36, v39);
      v41 = v40;
      v42 = SEState.instances.getter();

      if (!*(v42 + 16))
      {

        v31 = v62;
        v38 = v39;
        goto LABEL_58;
      }

      v43 = v39;
      v44 = v37;
      v45 = v37;
      v46 = v36;
      v47 = v36;
      v48 = v43;
      v49 = sub_1C7C70278(v45, v47, v43);
      if ((v50 & 1) == 0)
      {

        v31 = v62;
        v38 = v48;
        v36 = v46;
        v37 = v44;
        goto LABEL_58;
      }

      v51 = *(*(v42 + 56) + 8 * v49);

      v52 = v51 <= 0;
      v31 = v62;
      v38 = v48;
      v36 = v46;
      v37 = v44;
      if (v52)
      {
        goto LABEL_58;
      }

LABEL_61:
      v68 = v67;
      v53 = v37;
      v54 = v36;
      v55 = v38;
      v57 = sub_1C7BD5348(&v68, a2);
      if (v31)
      {
LABEL_67:

        sub_1C7BEA9D8(v53, v54, v55);
        return v21;
      }

      v58 = v57;
      result = sub_1C7BEA9D8(v53, v54, v55);
      v59 = v58 * v65;
      if ((v58 * v65) >> 64 != (v58 * v65) >> 63)
      {
        goto LABEL_70;
      }

      v27 &= v27 - 1;
      v56 = __OFADD__(v21, v59);
      v21 += v59;
      v7 = v63;
      if (v56)
      {
        __break(1u);
LABEL_66:

        return v21;
      }
    }

    sub_1C7BDF708(v37, v36, v38);
LABEL_58:
    v53 = v37;
    v54 = v36;
    v55 = v38;
    v68 = v67;
    result = sub_1C7BD4D04(&v68, a2);
    if (v31)
    {
      goto LABEL_67;
    }

    v56 = __OFADD__(v21, result);
    v21 += result;
    if (v56)
    {
      goto LABEL_71;
    }

    v36 = v54;
    v37 = v53;
    goto LABEL_61;
  }

  return 0;
}

uint64_t sub_1C7BFE8C4(unint64_t a1, uint64_t a2, unsigned __int8 *a3, unint64_t a4, int a5, unint64_t a6, int a7)
{
  v8 = v7;
  LODWORD(v107) = a7;
  v102 = a5;
  v101 = a4;
  v13 = sub_1C7C7D1B4();
  v14 = *(v13 - 1);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = *a3;
  if (qword_1EC262170 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v17 = __swift_project_value_buffer(v13, qword_1EC288310);
    (*(v14 + 16))(v16, v17, v13);

    v18 = sub_1C7C7D194();
    v19 = sub_1C7C7D574();

    v20 = os_log_type_enabled(v18, v19);
    v106 = a2;
    if (v20)
    {
      LODWORD(v103) = v19;
      v104 = a6;
      v21 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v111[0] = v100;
      *v21 = 136315906;
      *(v21 + 4) = sub_1C7BE42F8(0xD000000000000050, 0x80000001C7C9D640, v111);
      *(v21 + 12) = 2080;
      sub_1C7C003B8();
      v22 = sub_1C7C7D264();
      v24 = sub_1C7BE42F8(v22, v23, v111);

      v25 = 0xE500000000000000;
      v26 = 0x7061654870;
      *(v21 + 14) = v24;
      *(v21 + 22) = 2080;
      v27 = 0xE300000000000000;
      v28 = 6582115;
      if (v105 != 2)
      {
        v28 = 0x69646E4964657375;
        v27 = 0xEB00000000736563;
      }

      if (v105)
      {
        v26 = 7499619;
        v25 = 0xE300000000000000;
      }

      v29 = v105 <= 1 ? v26 : v28;
      v30 = v105 <= 1 ? v25 : v27;
      v31 = sub_1C7BE42F8(v29, v30, v111);

      *(v21 + 24) = v31;
      *(v21 + 32) = 2080;
      if (v102)
      {
        v32 = 0xE500000000000000;
        v33 = 0x3E6C696E3CLL;
      }

      else
      {
        v110[0] = v101;
        sub_1C7BFE364();
        v33 = sub_1C7C7D654();
        v32 = v35;
      }

      v36 = sub_1C7BE42F8(v33, v32, v111);

      *(v21 + 34) = v36;
      _os_log_impl(&dword_1C7B9A000, v18, v103, "%s %s %s %s", v21, 0x2Au);
      v37 = v100;
      swift_arrayDestroy();
      MEMORY[0x1CCA6C990](v37, -1, -1);
      MEMORY[0x1CCA6C990](v21, -1, -1);

      v38 = *(v14 + 8);
      v14 += 8;
      v38(v16, v13);
      a2 = v106;
      a6 = v104;
    }

    else
    {

      v34 = *(v14 + 8);
      v14 += 8;
      v34(v16, v13);
    }

    v39 = OBJC_IVAR____TtC9SEService10SESnapshot_seState;
    swift_beginAccess();
    v40 = *(a2 + v39);
    v41 = OBJC_IVAR____TtC9SEService7SEState_seStorageCredentials;
    swift_beginAccess();
    v16 = *(v40 + v41);

    v42 = sub_1C7C72E94(MEMORY[0x1E69E7CC0]);
    v112 = v42;
    v43 = *(v16 + 16);
    if (!v43)
    {
      break;
    }

    v44 = 0;
    a2 = v16 + 32;
    while (v44 < *(v16 + 16))
    {
      v108 = *(a2 + 16 * v44);
      sub_1C7BFCFA8(v108, *(&v108 + 1));
      sub_1C7BFAE78(&v112, &v108);
      if (v8)
      {

        sub_1C7BFCF38(v108, *(&v108 + 1));

        __break(1u);
LABEL_113:

        while (1)
        {

          __break(1u);
        }
      }

      ++v44;
      sub_1C7BFCF38(v108, *(&v108 + 1));
      if (v43 == v44)
      {
        v45 = v112;
        goto LABEL_25;
      }
    }

LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
  }

  v45 = v42;
LABEL_25:

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v108 = v45;
  sub_1C7BFC468(a1, sub_1C7C4F7A8, 0, isUniquelyReferenced_nonNull_native, &v108);
  if (v8)
  {
    goto LABEL_113;
  }

  v47 = sub_1C7BFB318(v108, a6, v107 & 1);

  v16 = sub_1C7BFB498(v48, sub_1C7BFC0D8, sub_1C7BFC0D8);
  v107 = 0;
  v103 = v47;

  v14 = 0;
  v13 = (v16 + 64);
  v49 = *(v16 + 64);
  v104 = v16;
  v50 = 1 << *(v16 + 32);
  v51 = -1;
  if (v50 < 64)
  {
    v51 = ~(-1 << v50);
  }

  a6 = v51 & v49;
  v52 = (v50 + 63) >> 6;
  v8 = MEMORY[0x1E69E7CC0];
  if ((v51 & v49) == 0)
  {
    while (1)
    {
LABEL_30:
      v53 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_103;
      }

      if (v53 >= v52)
      {
        break;
      }

      a6 = v13[v53];
      ++v14;
      if (a6)
      {
        v16 = v8;
        v14 = v53;
        goto LABEL_34;
      }
    }

    v64 = 0;
    v14 = v103;
    a1 = (v103 + 8);
    v65 = 1 << *(v103 + 32);
    v66 = -1;
    if (v65 < 64)
    {
      v66 = ~(-1 << v65);
    }

    v67 = v66 & v103[8];
    v68 = v106;
    v13 = v107;
    while (v67)
    {
LABEL_49:
      v70 = __clz(__rbit64(v67));
      v67 &= v67 - 1;
      v71 = v103[6] + 24 * (v70 | (v64 << 6));
      v72 = *v71;
      v16 = *(v71 + 8);
      v73 = *(v71 + 16);
      if (*(v71 + 16))
      {
        if (v73 == 3 && !((v72 | 2) ^ 0xE | v16))
        {
          goto LABEL_55;
        }
      }

      else if (*v71 == 12 || *v71 == 10)
      {
LABEL_55:
        v107 = v8;
        swift_retain_n();
        sub_1C7BDF708(v72, v16, v73);

        v74 = 1 << *(v14 + 32);
        v75 = -1;
        if (v74 < 64)
        {
          v75 = ~(-1 << v74);
        }

        v8 = v75 & *(v14 + 64);
        v76 = (v74 + 63) >> 6;

        v14 = 0;
        a6 = 24;
        while (v8)
        {
LABEL_64:
          v78 = __clz(__rbit64(v8));
          v8 &= v8 - 1;
          v79 = v103[6] + 24 * (v78 | (v14 << 6));
          v16 = *v79;
          a2 = *(v79 + 8);
          v80 = *(v79 + 16);
          if (v80)
          {
            sub_1C7BDF708(*v79, *(v79 + 8), *(v79 + 16));
            sub_1C7BEA9D8(v16, a2, v80);
            sub_1C7BEA9D8(25, 0, 0);
          }

          else
          {
            sub_1C7BEA9D8(*v79, *(v79 + 8), 0);
            sub_1C7BEA9D8(25, 0, 0);
            if (v16 == 25)
            {
              v14 = v103;

              v68 = v106;
              v8 = v107;
LABEL_67:
              a6 = v105;
              goto LABEL_68;
            }
          }
        }

        while (1)
        {
          v77 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            goto LABEL_106;
          }

          if (v77 >= v76)
          {
            v14 = v103;

            v108 = xmmword_1C7C84B80;
            v109 = 0;
            a6 = v105;
            LOBYTE(v112) = v105;
            a2 = v106;
            v90 = sub_1C7BFD018(&v108, v106, 1, &v112);
            if (v13)
            {
              goto LABEL_69;
            }

            v16 = v90;
            v8 = v107;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              goto LABEL_111;
            }

            while (1)
            {
              v68 = a2;
              v98 = *(v8 + 16);
              v97 = *(v8 + 24);
              if (v98 >= v97 >> 1)
              {
                v99 = sub_1C7C2A6E0((v97 > 1), v98 + 1, 1, v8);
                v68 = a2;
                v8 = v99;
              }

              *(v8 + 16) = v98 + 1;
              *(v8 + 8 * v98 + 32) = v16;
LABEL_68:
              LOBYTE(v108) = a6;
              v81 = sub_1C7BFE3B8(v14, v68, &v108, 0);
              if (v13)
              {
LABEL_69:

LABEL_70:

                return v16;
              }

              v16 = v81;

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v8 = sub_1C7C2A6E0(0, *(v8 + 16) + 1, 1, v8);
              }

              v83 = *(v8 + 16);
              v82 = *(v8 + 24);
              if (v83 >= v82 >> 1)
              {
                v8 = sub_1C7C2A6E0((v82 > 1), v83 + 1, 1, v8);
              }

              *(v8 + 16) = v83 + 1;
              *(v8 + 8 * v83 + 32) = v16;
              if (v102)
              {
                v16 = 0;
                v84 = v83 + 1;
                v85 = 32;
                while (1)
                {
                  v86 = *(v8 + v85);
                  v87 = __OFADD__(v16, v86);
                  v16 += v86;
                  if (v87)
                  {
                    goto LABEL_105;
                  }

                  v85 += 8;
                  if (!--v84)
                  {
                    goto LABEL_70;
                  }
                }
              }

              *&v108 = v8;

              sub_1C7BFB608(&v108);
              if ((v101 & 0x8000000000000000) != 0)
              {
                __break(1u);
              }

              else
              {
                v88 = *(v108 + 16);
                v89 = v88 - v101;
                if (v88 < v101)
                {
                  v89 = 0;
                }

                if (v89 == v88)
                {

                  swift_unknownObjectRelease();
                  return 0;
                }

                if (v89 < v88)
                {
                  v16 = 0;
                  if (v88 >= v101)
                  {
                    v91 = v101;
                  }

                  else
                  {
                    v91 = *(v108 + 16);
                  }

                  v92 = -v91;
                  v93 = v108 + 8 * v88 + 32;
                  do
                  {
                    v94 = *(v93 + 8 * v92);
                    v87 = __OFADD__(v16, v94);
                    v16 += v94;
                    if (v87)
                    {
                      goto LABEL_107;
                    }
                  }

                  while (!__CFADD__(v92++, 1));

                  swift_unknownObjectRelease();
                  return v16;
                }
              }

              __break(1u);
LABEL_111:
              v8 = sub_1C7C2A6E0(0, *(v8 + 16) + 1, 1, v8);
            }
          }

          v8 = *(a1 + 8 * v77);
          ++v14;
          if (v8)
          {
            v14 = v77;
            goto LABEL_64;
          }
        }
      }
    }

    while (1)
    {
      v69 = v64 + 1;
      if (__OFADD__(v64, 1))
      {
        break;
      }

      if (v69 >= ((v65 + 63) >> 6))
      {
        goto LABEL_67;
      }

      v67 = *(a1 + 8 * v69);
      ++v64;
      if (v67)
      {
        v64 = v69;
        goto LABEL_49;
      }
    }

LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  while (1)
  {
    v16 = v8;
LABEL_34:
    v54 = __clz(__rbit64(a6)) | (v14 << 6);
    v55 = *(v104 + 48) + 24 * v54;
    v56 = *(v55 + 8);
    v58 = *(v55 + 16);
    v59 = *(*(v104 + 56) + 8 * v54);
    *&v108 = *v55;
    v57 = v108;
    *(&v108 + 1) = v56;
    v109 = v58;
    LOBYTE(v112) = v105;
    sub_1C7BDF708(v108, v56, v58);
    v60 = v107;
    v61 = sub_1C7BFD018(&v108, v106, v59, &v112);
    v107 = v60;
    if (v60)
    {
      break;
    }

    v62 = v61;
    sub_1C7BEA9D8(v57, v56, v58);
    v8 = v16;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1C7C2A6E0(0, *(v16 + 16) + 1, 1, v16);
    }

    a1 = *(v8 + 16);
    v63 = *(v8 + 24);
    a2 = a1 + 1;
    if (a1 >= v63 >> 1)
    {
      v8 = sub_1C7C2A6E0((v63 > 1), a1 + 1, 1, v8);
    }

    a6 &= a6 - 1;
    *(v8 + 16) = a2;
    *(v8 + 8 * a1 + 32) = v62;
    if (!a6)
    {
      goto LABEL_30;
    }
  }

  sub_1C7BEA9D8(v57, v56, v58);
  return v16;
}

void sub_1C7BFF440(uint64_t a1, char *a2, uint64_t a3, unsigned __int8 *a4)
{
  v5 = v4;
  v72 = a3;
  v74 = a2;
  v8 = sub_1C7C7D1B4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = *(a1 + 8);
  LODWORD(v14) = *(a1 + 16);
  v86 = *a4;
  if (qword_1EC262170 != -1)
  {
LABEL_60:
    swift_once();
  }

  v75 = v5;
  v15 = __swift_project_value_buffer(v8, qword_1EC288310);
  (*(v9 + 16))(v11, v15, v8);
  sub_1C7BDF708(v12, v13, v14);
  v16 = sub_1C7C7D194();
  v17 = sub_1C7C7D574();
  sub_1C7BEA9D8(v12, v13, v14);
  v18 = os_log_type_enabled(v16, v17);
  v77 = v12;
  v76 = v13;
  v73 = v14;
  if (v18)
  {
    v71 = v8;
    v19 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v81[0] = v70;
    *v19 = 136315906;
    *(v19 + 4) = sub_1C7BE42F8(0xD00000000000004DLL, 0x80000001C7C9D5F0, v81);
    *(v19 + 12) = 2080;
    v83 = v12;
    v84 = v13;
    v85 = v14;
    sub_1C7BDF708(v12, v13, v14);
    sub_1C7C7D324();
    v20 = sub_1C7C7D334();
    v22 = v21;

    v23 = sub_1C7BE42F8(v20, v22, v81);

    *(v19 + 14) = v23;
    *(v19 + 22) = 2080;
    v83 = v72;
    sub_1C7BFE364();
    v24 = sub_1C7C7D654();
    v26 = sub_1C7BE42F8(v24, v25, v81);

    v27 = 0xE500000000000000;
    v28 = 0x7061654870;
    *(v19 + 24) = v26;
    *(v19 + 32) = 2080;
    v29 = 0xE300000000000000;
    v30 = 6582115;
    if (v86 != 2)
    {
      v30 = 0x69646E4964657375;
      v29 = 0xEB00000000736563;
    }

    if (v86)
    {
      v28 = 7499619;
      v27 = 0xE300000000000000;
    }

    if (v86 <= 1)
    {
      v31 = v28;
    }

    else
    {
      v31 = v30;
    }

    if (v86 <= 1)
    {
      v32 = v27;
    }

    else
    {
      v32 = v29;
    }

    v33 = sub_1C7BE42F8(v31, v32, v81);

    *(v19 + 34) = v33;
    _os_log_impl(&dword_1C7B9A000, v16, v17, "%s %s %s %s", v19, 0x2Au);
    v34 = v70;
    swift_arrayDestroy();
    MEMORY[0x1CCA6C990](v34, -1, -1);
    MEMORY[0x1CCA6C990](v19, -1, -1);

    (*(v9 + 8))(v11, v71);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  v8 = OBJC_IVAR____TtC9SEService10SESnapshot_seState;
  v11 = v74;
  swift_beginAccess();
  v35 = *&v11[v8];
  v36 = SEState.friendlyDetails.getter();

  v9 = v73;
  if (v36[2] && (v37 = sub_1C7C70278(v77, v76, v73), (v38 & 1) != 0))
  {
    v39 = *(v36[7] + 8 * v37);
  }

  else
  {
    v40 = type metadata accessor for SEPackageDetails();
    v41 = objc_allocWithZone(v40);
    v41[OBJC_IVAR____TtC9SEService16SEPackageDetails_packageLoaded] = 0;
    *&v41[OBJC_IVAR____TtC9SEService16SEPackageDetails_containers] = 0;
    *&v41[OBJC_IVAR____TtC9SEService16SEPackageDetails_instances] = MEMORY[0x1E69E7CC0];
    v42 = &v41[OBJC_IVAR____TtC9SEService16SEPackageDetails_type];
    v43 = v77;
    v44 = v76;
    *v42 = v77;
    *(v42 + 1) = v44;
    v42[16] = v9;
    sub_1C7BDF708(v43, v44, v9);
    v82.receiver = v41;
    v82.super_class = v40;
    v39 = objc_msgSendSuper2(&v82, sel_init);
  }

  v14 = v39;

  v45 = OBJC_IVAR____TtC9SEService16SEPackageDetails_containers;
  swift_beginAccess();
  v5 = *&v14[v45];
  v46 = OBJC_IVAR____TtC9SEService16SEPackageDetails_packageLoaded;
  swift_beginAccess();
  if (v14[v46])
  {
    v5 = 0;
    v47 = v75;
    v8 = v77;
    v12 = v76;
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_38;
  }

  v48 = v9;
  if (v9 != 3 || __PAIR128__((v77 >= 0xB) + v76 - 1, v77 - 11) >= 4)
  {
    goto LABEL_52;
  }

  while (2)
  {
    v53 = *&v11[v8];
    v54 = OBJC_IVAR____TtC9SEService7SEState_seStorageCredentials;
    swift_beginAccess();
    v55 = *(v53 + v54);
    v56 = *(v55 + 16);
    if (!v56)
    {
      break;
    }

    v57 = (v55 + 40);
    v58 = v57;
    while (1)
    {
      v59 = *v58;
      v58 += 2;
      v60 = v59 >> 62;
      if (v59 >> 62 != 3 && v60 != 0)
      {
        goto LABEL_42;
      }

      v62 = *(v57 - 1) + OBJC_IVAR____TtC9SEService16SEPackageDetails_type;
      swift_beginAccess();
      v64 = *v62;
      if (*(v62 + 16) != 3)
      {
        break;
      }

      if (__PAIR128__((v64 >= 0xB) + *(v62 + 8) - 1, v64 - 11) < 4)
      {
        goto LABEL_51;
      }

LABEL_42:
      v57 = v58;
      if (!--v56)
      {
        goto LABEL_52;
      }
    }

    if (*(v62 + 16))
    {
      goto LABEL_42;
    }

    v63.i32[0] = dword_1F474F840;
    if ((vmaxv_u16(vceq_s16((vmovl_u8(v63).u64[0] & 0xFF00FF00FF00FFLL), (*&vdup_n_s16(v64) & 0xFF00FF00FF00FFLL))) & 1) == 0)
    {
      goto LABEL_42;
    }

LABEL_51:
    v5 = 0;
    v47 = v75;
    v8 = v77;
    v12 = v76;
    v9 = v48;
LABEL_21:
    LOBYTE(v13) = v86;
LABEL_22:
    if (!v9)
    {
      if (!sub_1C7BDF6D8(v8, &unk_1F474F848))
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    }

    if (v9 == 3 && __PAIR128__((v8 >= 0xB) + v12 - 1, v8 - 11) < 4)
    {
LABEL_31:
      v78 = v8;
      v79 = v12;
      v80 = v9;
      v87 = v13;
      v49 = sub_1C7BD4D04(&v87, v11);
      if (v47)
      {
        goto LABEL_54;
      }

      v50 = __OFADD__(v5, v49);
      v5 += v49;
      if (!v50)
      {
        goto LABEL_33;
      }

LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

LABEL_33:
    v78 = v8;
    v79 = v12;
    v80 = v9;
    v87 = v13;
    sub_1C7BFC930(&v78, v11, &v87);
    v52 = v51;

    if (v47)
    {
      return;
    }

    if ((v52 * v72) >> 64 != (v52 * v72) >> 63)
    {
      __break(1u);
      goto LABEL_62;
    }

    if (!__OFADD__(v5, v52 * v72))
    {
      return;
    }

    __break(1u);
LABEL_38:
    v48 = v9;
    if (sub_1C7BDF6D8(v77, &unk_1F474F7F8))
    {
      continue;
    }

    break;
  }

LABEL_52:
  v8 = v77;
  v12 = v76;
  v78 = v77;
  v79 = v76;
  v9 = v48;
  v80 = v48;
  v13 = v86;
  v87 = v86;
  v47 = v75;
  v65 = sub_1C7BD4228(&v87, v11);
  if (!v47)
  {
    v66 = v65;
    v78 = v8;
    v79 = v12;
    v80 = v9;
    v87 = v13;
    v67 = sub_1C7BD47CC(&v87, v11);
    v68 = v67 * v5;
    if ((v67 * v5) >> 64 == (v67 * v5) >> 63)
    {
      v5 = v66 + v68;
      if (!__OFADD__(v66, v68))
      {
        goto LABEL_22;
      }

      __break(1u);
      goto LABEL_60;
    }

LABEL_63:
    __break(1u);
    return;
  }

LABEL_54:
}

void sub_1C7BFFC28(unint64_t a1, char *a2, unsigned __int8 *a3)
{
  v69 = a2;
  v5 = sub_1C7C7D1B4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = *a3;
  if (qword_1EC262170 != -1)
  {
LABEL_64:
    swift_once();
  }

  v9 = __swift_project_value_buffer(v5, qword_1EC288310);
  (*(v6 + 16))(v8, v9, v5);

  v10 = sub_1C7C7D194();
  v11 = sub_1C7C7D574();

  v12 = os_log_type_enabled(v10, v11);
  v70 = a1;
  if (v12)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v77[0] = v14;
    *v13 = 136315650;
    *(v13 + 4) = sub_1C7BE42F8(0xD000000000000046, 0x80000001C7C9D5A0, v77);
    *(v13 + 12) = 2080;
    sub_1C7C003B8();
    v15 = sub_1C7C7D264();
    v17 = sub_1C7BE42F8(v15, v16, v77);

    v18 = 0xE500000000000000;
    v19 = 0x7061654870;
    *(v13 + 14) = v17;
    *(v13 + 22) = 2080;
    v20 = 0xE300000000000000;
    v21 = 6582115;
    if (v79 != 2)
    {
      v21 = 0x69646E4964657375;
      v20 = 0xEB00000000736563;
    }

    if (v79)
    {
      v19 = 7499619;
      v18 = 0xE300000000000000;
    }

    if (v79 <= 1)
    {
      v22 = v19;
    }

    else
    {
      v22 = v21;
    }

    if (v79 <= 1)
    {
      v23 = v18;
    }

    else
    {
      v23 = v20;
    }

    a1 = sub_1C7BE42F8(v22, v23, v77);

    *(v13 + 24) = a1;
    _os_log_impl(&dword_1C7B9A000, v10, v11, "%s %s %s", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1CCA6C990](v14, -1, -1);
    MEMORY[0x1CCA6C990](v13, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  v6 = v70 + 64;
  v24 = 1 << *(v70 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(v70 + 64);
  v8 = ((v24 + 63) >> 6);

  v28 = 0;
  v29 = 0;
  do
  {
    if (!v26)
    {
      while (1)
      {
        v30 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          break;
        }

        if (v30 >= v8)
        {
          goto LABEL_26;
        }

        v26 = *(v6 + 8 * v30);
        ++v28;
        if (v26)
        {
          v28 = v30;
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

LABEL_22:
    v31 = __clz(__rbit64(v26)) | (v28 << 6);
    v32 = *(v27 + 48) + 24 * v31;
    v33 = *(v32 + 8);
    a1 = *(v32 + 16);
    v34 = *(*(v27 + 56) + 8 * v31);
    v77[0] = *v32;
    v5 = v77[0];
    v77[1] = v33;
    v78 = a1;
    v76[0] = v79;
    sub_1C7BDF708(v77[0], v33, a1);
    v35 = v73;
    sub_1C7BFF440(v77, v69, v34, v76);
    v73 = v35;
    if (v35)
    {
LABEL_57:

      sub_1C7BEA9D8(v5, v33, a1);
      return;
    }

    v37 = v36;
    v26 &= v26 - 1;
    sub_1C7BEA9D8(v5, v33, a1);
    v38 = __OFADD__(v29, v37);
    v29 += v37;
    v27 = v70;
  }

  while (!v38);
  __break(1u);
LABEL_26:
  v67 = v29;

  v39 = OBJC_IVAR____TtC9SEService10SESnapshot_seState;
  v40 = v69;
  swift_beginAccess();
  v41 = *&v40[v39];
  v8 = OBJC_IVAR____TtC9SEService7SEState_seStorageCredentials;
  swift_beginAccess();
  a1 = *&v8[v41];
  v5 = *(a1 + 16);
  v68 = v41;

  if (v5)
  {
    v8 = 0;
    v42 = (a1 + 40);
    v71 = v5;
    v72 = a1;
    while (v8 < *(a1 + 16))
    {
      v43 = *v42;
      if (!(*v42 >> 62))
      {
        v44 = *(v42 - 1);
        v45 = &v44[OBJC_IVAR____TtC9SEService16SEPackageDetails_type];
        swift_beginAccess();
        v47 = *v45;
        v46 = *(v45 + 1);
        v48 = v45[16];
        if ((v48 - 1) >= 2)
        {
          if (v45[16] && !(v47 ^ 5 | v46))
          {
            v65 = v44;
            sub_1C7BEA9D8(v47, v46, 3u);
            sub_1C7BEA9D8(5, 0, 3u);

            sub_1C7BFCF38(v44, v43);
            return;
          }
        }

        else
        {
          swift_bridgeObjectRetain_n();
        }

        v49 = v44;
        sub_1C7BEA9D8(v47, v46, v48);
        sub_1C7BEA9D8(5, 0, 3u);
        sub_1C7BEA9D8(v47, v46, v48);
        v51 = *v45;
        v50 = *(v45 + 1);
        v52 = v45[16];
        if (v52)
        {
          sub_1C7BDF708(*v45, *(v45 + 1), v45[16]);
          sub_1C7BDF708(v51, v50, v52);
          sub_1C7BEA9D8(v51, v50, v52);
          sub_1C7BEA9D8(25, 0, 0);
          sub_1C7BFCF38(v44, v43);
          sub_1C7BEA9D8(v51, v50, v52);
          v5 = v71;
          a1 = v72;
        }

        else
        {
          sub_1C7BEA9D8(*v45, *(v45 + 1), 0);
          sub_1C7BEA9D8(25, 0, 0);
          v53 = v51;
          sub_1C7BFCF38(v44, v43);
          v5 = v71;
          a1 = v72;
          if (v53 == 25)
          {

            return;
          }
        }
      }

      ++v8;
      v42 += 2;
      if (v5 == v8)
      {
        goto LABEL_39;
      }
    }

LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

LABEL_39:

  v54 = 0;
  v33 = v70;
  v55 = 1 << *(v70 + 32);
  v56 = -1;
  if (v55 < 64)
  {
    v56 = ~(-1 << v55);
  }

  v57 = v56 & *(v70 + 64);
  v58 = (v55 + 63) >> 6;
  do
  {
    while (1)
    {
      if (!v57)
      {
        while (1)
        {
          v59 = v54 + 1;
          if (__OFADD__(v54, 1))
          {
            goto LABEL_62;
          }

          if (v59 >= v58)
          {
            return;
          }

          v57 = *(v6 + 8 * v59);
          ++v54;
          if (v57)
          {
            v54 = v59;
            break;
          }
        }
      }

      v60 = __clz(__rbit64(v57));
      v57 &= v57 - 1;
      v61 = *(v70 + 48) + 24 * (v60 | (v54 << 6));
      v62 = *v61;
      a1 = *(v61 + 8);
      v5 = *(v61 + 16);
      if (!*(v61 + 16))
      {
        break;
      }

      if (v5 == 3 && !((v62 | 2) ^ 0xE | a1))
      {
        goto LABEL_53;
      }
    }
  }

  while (*v61 != 12 && *v61 != 10);
LABEL_53:

  sub_1C7BDF708(v62, a1, v5);

  v74 = xmmword_1C7C84B80;
  v75 = 0;
  v80 = v79;
  v63 = v73;
  sub_1C7BFF440(&v74, v69, 1, &v80);
  if (!v63 && __OFADD__(v67, v64))
  {
    __break(1u);
    goto LABEL_57;
  }
}

unint64_t sub_1C7C003B8()
{
  result = qword_1EC2645C0;
  if (!qword_1EC2645C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2645C0);
  }

  return result;
}

uint64_t sub_1C7C0042C()
{
  if (*v0)
  {
    return 0x676E696E676973;
  }

  else
  {
    return 1919251317;
  }
}

uint64_t sub_1C7C00460@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1919251317 && a2 == 0xE400000000000000;
  if (v5 || (sub_1C7C7DAA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x676E696E676973 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1C7C7DAA4();

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

uint64_t sub_1C7C0053C(uint64_t a1)
{
  v2 = sub_1C7C00954();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C00578(uint64_t a1)
{
  v2 = sub_1C7C00954();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C005B4(uint64_t a1)
{
  v2 = sub_1C7C009A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C005F0(uint64_t a1)
{
  v2 = sub_1C7C009A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C0062C(uint64_t a1)
{
  v2 = sub_1C7C009FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C00668(uint64_t a1)
{
  v2 = sub_1C7C009FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t JPKIInternalTypes.CertificateType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2635B0, &qword_1C7C8A3E0);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2635B8, &qword_1C7C8A3E8);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2635C0, &qword_1C7C8A3F0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C00954();
  sub_1C7C7DBA4();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1C7C009A8();
    v14 = v18;
    sub_1C7C7D9E4();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1C7C009FC();
    sub_1C7C7D9E4();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

unint64_t sub_1C7C00954()
{
  result = qword_1EC2635C8;
  if (!qword_1EC2635C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2635C8);
  }

  return result;
}

unint64_t sub_1C7C009A8()
{
  result = qword_1EC2635D0;
  if (!qword_1EC2635D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2635D0);
  }

  return result;
}

unint64_t sub_1C7C009FC()
{
  result = qword_1EC2635D8;
  if (!qword_1EC2635D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2635D8);
  }

  return result;
}

uint64_t JPKIInternalTypes.CertificateType.hashValue.getter()
{
  v1 = *v0;
  sub_1C7C7DB64();
  MEMORY[0x1CCA6BB80](v1);
  return sub_1C7C7DB84();
}

uint64_t JPKIInternalTypes.CertificateType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2635E0, &qword_1C7C8A3F8);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2635E8, &qword_1C7C8A400);
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2635F0, &unk_1C7C8A408);
  v30 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C00954();
  v12 = v31;
  sub_1C7C7DB94();
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
    v16 = sub_1C7C7D9D4();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_1C7BEAACC();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_1C7C7D7C4();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2627F0, &qword_1C7C84F30);
      *v22 = &type metadata for JPKIInternalTypes.CertificateType;
      sub_1C7C7D954();
      sub_1C7C7D7B4();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
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
        sub_1C7C009A8();
        sub_1C7C7D944();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_1C7C009FC();
        sub_1C7C7D944();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v13);
}

uint64_t sub_1C7C00FC4()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_1C7C00FFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_1C7C7DAA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001C7C9DA00 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1C7C7DAA4();

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

uint64_t sub_1C7C010E0(uint64_t a1)
{
  v2 = sub_1C7C012F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C0111C(uint64_t a1)
{
  v2 = sub_1C7C012F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t JPKIInternalTypes.CertificateInfo.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2635F8, &qword_1C7C8A418);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v11 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C012F8();
  sub_1C7C7DBA4();
  v14 = v8;
  v13 = 0;
  sub_1C7C0134C();
  sub_1C7C7DA44();
  if (!v2)
  {
    v12 = 1;
    sub_1C7C7DA54();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1C7C012F8()
{
  result = qword_1EC263600;
  if (!qword_1EC263600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263600);
  }

  return result;
}

unint64_t sub_1C7C0134C()
{
  result = qword_1EC263608;
  if (!qword_1EC263608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263608);
  }

  return result;
}

uint64_t JPKIInternalTypes.CertificateInfo.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263610, &qword_1C7C8A420);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C012F8();
  sub_1C7C7DB94();
  if (!v2)
  {
    v14 = 0;
    sub_1C7C0155C();
    sub_1C7C7D9B4();
    v9 = v15;
    v13 = 1;
    v11 = sub_1C7C7D9C4();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

unint64_t sub_1C7C0155C()
{
  result = qword_1EC263618;
  if (!qword_1EC263618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263618);
  }

  return result;
}

uint64_t JPKIInternalTypes.CertificateData.certificate.getter()
{
  v1 = *(v0 + 16);
  sub_1C7BED654(v1, *(v0 + 24));
  return v1;
}

uint64_t sub_1C7C01634@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6369666974726563 && a2 == 0xEB00000000657461)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1C7C7DAA4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1C7C016C0(uint64_t a1)
{
  v2 = sub_1C7C018E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C016FC(uint64_t a1)
{
  v2 = sub_1C7C018E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t JPKIInternalTypes.CertificateData.__deallocating_deinit()
{
  sub_1C7BDF778(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t JPKIInternalTypes.CertificateData.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263620, &qword_1C7C8A428);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C018E8();
  sub_1C7C7DBA4();
  v8 = *(v2 + 24);
  v10 = *(v2 + 16);
  v11 = v8;
  sub_1C7BED654(v10, v8);
  sub_1C7BED7DC();
  sub_1C7C7DA44();
  sub_1C7BDF778(v10, v11);
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1C7C018E8()
{
  result = qword_1EC263628;
  if (!qword_1EC263628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263628);
  }

  return result;
}

uint64_t JPKIInternalTypes.CertificateData.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  JPKIInternalTypes.CertificateData.init(from:)(a1);
  return v2;
}

uint64_t *JPKIInternalTypes.CertificateData.init(from:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263630, &qword_1C7C8A430);
  v9 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C018E8();
  sub_1C7C7DB94();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1C7BED744();
    sub_1C7C7D9B4();
    (*(v9 + 8))(v6, v4);
    *(v1 + 16) = v8;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v1;
}

uint64_t sub_1C7C01B98()
{
  if (*v0)
  {
    return 0x69426D6574737973;
  }

  else
  {
    return 0x647261646E617473;
  }
}

uint64_t sub_1C7C01BE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x647261646E617473 && a2 == 0xE800000000000000;
  if (v6 || (sub_1C7C7DAA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x69426D6574737973 && a2 == 0xEE00797274656D6FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1C7C7DAA4();

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

uint64_t sub_1C7C01CC4(uint64_t a1)
{
  v2 = sub_1C7C02124();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C01D00(uint64_t a1)
{
  v2 = sub_1C7C02124();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C01D3C(uint64_t a1)
{
  v2 = sub_1C7C021CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C01D78(uint64_t a1)
{
  v2 = sub_1C7C021CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C01DB4(uint64_t a1)
{
  v2 = sub_1C7C02178();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C01DF0(uint64_t a1)
{
  v2 = sub_1C7C02178();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t JPKIInternalTypes.UserAuthentication.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263638, &qword_1C7C8A438);
  v18 = *(v3 - 8);
  v19 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v17 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263640, &qword_1C7C8A440);
  v21 = *(v5 - 8);
  v22 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263648, &qword_1C7C8A448);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = v1[1];
  v20 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C02124();
  sub_1C7C7DBA4();
  if (v12)
  {
    v23 = 0;
    sub_1C7C021CC();
    sub_1C7C7D9E4();
    v13 = v22;
    sub_1C7C7DA14();
    (*(v21 + 8))(v7, v13);
  }

  else
  {
    v24 = 1;
    sub_1C7C02178();
    v15 = v17;
    sub_1C7C7D9E4();
    (*(v18 + 8))(v15, v19);
  }

  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_1C7C02124()
{
  result = qword_1EC263650;
  if (!qword_1EC263650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263650);
  }

  return result;
}

unint64_t sub_1C7C02178()
{
  result = qword_1EC263658;
  if (!qword_1EC263658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263658);
  }

  return result;
}

unint64_t sub_1C7C021CC()
{
  result = qword_1EC263660;
  if (!qword_1EC263660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263660);
  }

  return result;
}

uint64_t JPKIInternalTypes.UserAuthentication.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v33 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263668, &qword_1C7C8A450);
  v4 = *(v3 - 8);
  v30 = v3;
  v31 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v30 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263670, &qword_1C7C8A458);
  v32 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263678, &qword_1C7C8A460);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v30 - v12;
  v14 = a1[3];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1C7C02124();
  v15 = v34;
  sub_1C7C7DB94();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(v35);
  }

  v34 = v11;
  v16 = sub_1C7C7D9D4();
  v17 = (2 * *(v16 + 16)) | 1;
  v36 = v16;
  v37 = v16 + 32;
  v38 = 0;
  v39 = v17;
  v18 = sub_1C7BEAACC();
  v19 = v10;
  if (v18 == 2 || v38 != v39 >> 1)
  {
    v22 = sub_1C7C7D7C4();
    swift_allocError();
    v24 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2627F0, &qword_1C7C84F30);
    *v24 = &type metadata for JPKIInternalTypes.UserAuthentication;
    sub_1C7C7D954();
    sub_1C7C7D7B4();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
    swift_willThrow();
    (*(v34 + 8))(v13, v10);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0Tm(v35);
  }

  if (v18)
  {
    v40 = 1;
    sub_1C7C02178();
    sub_1C7C7D944();
    v20 = 0;
    v21 = v34;
    (*(v31 + 8))(v6, v30);
    (*(v21 + 8))(v13, v10);
    swift_unknownObjectRelease();
    v27 = 0;
  }

  else
  {
    v40 = 0;
    sub_1C7C021CC();
    sub_1C7C7D944();
    v26 = v34;
    v20 = sub_1C7C7D984();
    v27 = v28;
    (*(v32 + 8))(v9, v7);
    (*(v26 + 8))(v13, v19);
    swift_unknownObjectRelease();
  }

  v29 = v33;
  *v33 = v20;
  v29[1] = v27;
  return __swift_destroy_boxed_opaque_existential_0Tm(v35);
}

uint64_t JPKIInternalTypes.DigitalSignature.signature.getter()
{
  v1 = *(v0 + 24);
  sub_1C7BED654(v1, *(v0 + 32));
  return v1;
}

uint64_t sub_1C7C0279C()
{
  if (*v0)
  {
    return 0x727574616E676973;
  }

  else
  {
    return 0x6369666974726563;
  }
}

uint64_t sub_1C7C027E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6369666974726563 && a2 == 0xEF61746144657461;
  if (v6 || (sub_1C7C7DAA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x727574616E676973 && a2 == 0xE900000000000065)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1C7C7DAA4();

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

uint64_t sub_1C7C028D4(uint64_t a1)
{
  v2 = sub_1C7C02B88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C02910(uint64_t a1)
{
  v2 = sub_1C7C02B88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *JPKIInternalTypes.DigitalSignature.deinit()
{

  sub_1C7BDF778(*(v0 + 24), *(v0 + 32));
  return v0;
}

uint64_t JPKIInternalTypes.DigitalSignature.__deallocating_deinit()
{

  sub_1C7BDF778(*(v0 + 24), *(v0 + 32));

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t JPKIInternalTypes.DigitalSignature.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263680, &qword_1C7C8A468);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C02B88();
  sub_1C7C7DBA4();
  v12 = v3[2];
  v14 = 0;
  type metadata accessor for JPKIInternalTypes.CertificateData();
  sub_1C7C0D3A0(&qword_1EC263690, type metadata accessor for JPKIInternalTypes.CertificateData, &protocol conformance descriptor for JPKIInternalTypes.CertificateData);
  sub_1C7C7DA44();
  if (!v2)
  {
    v9 = v3[4];
    v12 = v3[3];
    v13 = v9;
    v14 = 1;
    sub_1C7BED654(v12, v9);
    sub_1C7BED7DC();
    sub_1C7C7DA44();
    sub_1C7BDF778(v12, v13);
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1C7C02B88()
{
  result = qword_1EC263688;
  if (!qword_1EC263688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263688);
  }

  return result;
}

uint64_t JPKIInternalTypes.DigitalSignature.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  JPKIInternalTypes.DigitalSignature.init(from:)(a1);
  return v2;
}

uint64_t *JPKIInternalTypes.DigitalSignature.init(from:)(void *a1)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263698, &qword_1C7C8A470);
  v4 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v6 = &v10 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C02B88();
  sub_1C7C7DB94();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v7 = v4;
    type metadata accessor for JPKIInternalTypes.CertificateData();
    v13 = 0;
    sub_1C7C0D3A0(&qword_1EC2636A0, type metadata accessor for JPKIInternalTypes.CertificateData, &protocol conformance descriptor for JPKIInternalTypes.CertificateData);
    v8 = v11;
    sub_1C7C7D9B4();
    *(v1 + 16) = v12;
    v13 = 1;
    sub_1C7BED744();
    sub_1C7C7D9B4();
    (*(v7 + 8))(v6, v8);
    *(v1 + 24) = v12;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v1;
}

uint64_t sub_1C7C02EE0@<X0>(uint64_t a1@<X0>, uint64_t (*a3)(uint64_t)@<X4>, uint64_t *a4@<X8>)
{
  v8 = swift_allocObject();
  result = a3(a1);
  if (!v4)
  {
    *a4 = v8;
  }

  return result;
}

unint64_t JPKIInternalTypes.InternalError.localizedDescription.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  switch(*(v0 + 40))
  {
    case 1:
      v6 = 0x6F72724520435058;
      goto LABEL_20;
    case 2:
      sub_1C7C7D794();

      v20 = 0xD00000000000001DLL;
      v15 = sub_1C7C7DA74();
      goto LABEL_22;
    case 3:
      sub_1C7C7D794();

      v12 = 0xD000000000000011;
      goto LABEL_25;
    case 4:
      sub_1C7C7D794();

      v12 = 0xD000000000000017;
      goto LABEL_25;
    case 5:
      v20 = 0;
      sub_1C7C7D794();
      MEMORY[0x1CCA6B380](0x746163696C707041, 0xEC000000206E6F69);
      MEMORY[0x1CCA6B380](v1, v2);
      MEMORY[0x1CCA6B380](0xD000000000000020, 0x80000001C7C9D840);
      MEMORY[0x1CCA6B380](v4, v3);
      MEMORY[0x1CCA6B380](0x776F6C6C61202D20, 0xEF20657261206465);
      v15 = sub_1C7C7D514();
LABEL_22:
      MEMORY[0x1CCA6B380](v15);

      return v20;
    case 6:
      sub_1C7C7D794();

      v12 = 0xD000000000000012;
      goto LABEL_25;
    case 7:
      sub_1C7C7D794();

      v20 = 0xD00000000000002ALL;
      v16 = sub_1C7C7CFE4();
      MEMORY[0x1CCA6B380](v16);

      v13 = 8250;
      v14 = 0xE200000000000000;
      goto LABEL_18;
    case 8:
      v20 = 0;
      sub_1C7C7D794();
      MEMORY[0x1CCA6B380](0xD000000000000029, 0x80000001C7C9D7C0);
      MEMORY[0x1CCA6B380](v4, v3);
      v10 = 0x7265206874697720;
      v11 = 0xED0000203A726F72;
      goto LABEL_28;
    case 9:
      v20 = 0;
      sub_1C7C7D794();
      MEMORY[0x1CCA6B380](0xD000000000000027, 0x80000001C7C9D790);
      MEMORY[0x1CCA6B380](v1, v2);
      v13 = 0x6573756163656220;
      v14 = 0xE900000000000020;
LABEL_18:
      MEMORY[0x1CCA6B380](v13, v14);
      v17 = v4;
      v18 = v3;
      goto LABEL_30;
    case 0xA:
      sub_1C7C7D794();

      v20 = 0xD000000000000017;
      v19 = sub_1C7C7DA74();
      MEMORY[0x1CCA6B380](v19);

      v17 = 0x7466656C20;
      v18 = 0xE500000000000000;
      goto LABEL_30;
    case 0xB:
      v20 = 0;
      sub_1C7C7D794();
      v10 = 0xD00000000000003ELL;
      v11 = 0x80000001C7C9D700;
LABEL_28:
      MEMORY[0x1CCA6B380](v10, v11);
      goto LABEL_29;
    case 0xC:
      sub_1C7C7D794();

      v12 = 0xD000000000000022;
LABEL_25:
      v20 = v12;
      goto LABEL_29;
    case 0xD:
      sub_1C7C7D794();

      v20 = 0x20737365636F7250;
      MEMORY[0x1CCA6B380](v1, v2);
      v17 = 0x726F6620746F6E20;
      v18 = 0xEF646E756F726765;
      goto LABEL_30;
    case 0xE:
      v7 = 0xD000000000000020;
      if (v1 == 1 && (v4 | v2 | v3 | v5) == 0)
      {
        v7 = 0xD000000000000016;
      }

      if (v4 | v2 | v1 | v3 | v5)
      {
        return v7;
      }

      else
      {
        return 0xD000000000000018;
      }

    default:
      sub_1C7C7D794();

      v6 = 0x73694D2065707954;
LABEL_20:
      v20 = v6;
LABEL_29:
      v17 = v1;
      v18 = v2;
LABEL_30:
      MEMORY[0x1CCA6B380](v17, v18);
      return v20;
  }
}

unint64_t sub_1C7C035E0(char a1)
{
  result = 0x6D73694D65707974;
  switch(a1)
  {
    case 1:
      result = 0x726F727245637078;
      break;
    case 2:
    case 10:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0x797274656D6F6962;
      break;
    case 5:
      result = 0x6C616E7265746E69;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0xD000000000000013;
      break;
    case 8:
      result = 0x61766E4973736170;
      break;
    case 9:
      result = 0x61467463656C6573;
      break;
    case 11:
      result = 0xD000000000000014;
      break;
    case 12:
      result = 0xD00000000000001BLL;
      break;
    case 13:
      result = 0xD00000000000001FLL;
      break;
    case 14:
      result = 0x46676E696E676973;
      break;
    case 15:
      result = 0xD000000000000017;
      break;
    case 16:
      result = 0xD000000000000014;
      break;
    case 17:
      result = 0x456E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C7C0383C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x43726F727245616CLL && a2 == 0xEB0000000065646FLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1C7C7DAA4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1C7C038C8(uint64_t a1)
{
  v2 = sub_1C7C0611C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C03904(uint64_t a1)
{
  v2 = sub_1C7C0611C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C03940()
{
  if (*v0)
  {
    return 0x6369666974726563;
  }

  else
  {
    return 7956599;
  }
}

uint64_t sub_1C7C03980@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7956599 && a2 == 0xE300000000000000;
  if (v5 || (sub_1C7C7DAA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6369666974726563 && a2 == 0xED00006449657461)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1C7C7DAA4();

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

uint64_t sub_1C7C03A64(uint64_t a1)
{
  v2 = sub_1C7C05F24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C03AA0(uint64_t a1)
{
  v2 = sub_1C7C05F24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C03AE4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C7C10DB4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1C7C03B18(uint64_t a1)
{
  v2 = sub_1C7C05C84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C03B54(uint64_t a1)
{
  v2 = sub_1C7C05C84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C03B90(uint64_t a1)
{
  v2 = sub_1C7C06170();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C03BCC(uint64_t a1)
{
  v2 = sub_1C7C06170();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C03C08(uint64_t a1)
{
  v2 = sub_1C7C061C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C03C44(uint64_t a1)
{
  v2 = sub_1C7C061C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C03CA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x526465776F6C6C61 && a2 == 0xEE00736569727465)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1C7C7DAA4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1C7C03D34(uint64_t a1)
{
  v2 = sub_1C7C05E7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C03D70(uint64_t a1)
{
  v2 = sub_1C7C05E7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C03DAC(uint64_t a1)
{
  v2 = sub_1C7C060C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C03DE8(uint64_t a1)
{
  v2 = sub_1C7C060C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C03E24()
{
  if (*v0)
  {
    return 7956599;
  }

  else
  {
    return 0x6F6974617265706FLL;
  }
}

uint64_t sub_1C7C03E5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F6974617265706FLL && a2 == 0xE90000000000006ELL;
  if (v6 || (sub_1C7C7DAA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7956599 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1C7C7DAA4();

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

uint64_t sub_1C7C03F40(uint64_t a1)
{
  v2 = sub_1C7C05ED0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C03F7C(uint64_t a1)
{
  v2 = sub_1C7C05ED0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C03FC8(uint64_t a1)
{
  v2 = sub_1C7C05D80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C04004(uint64_t a1)
{
  v2 = sub_1C7C05D80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C04040()
{
  v1 = 0x444973736170;
  if (*v0 != 1)
  {
    v1 = 0x496465776F6C6C61;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_1C7C040A0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C7C11360(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1C7C040C8(uint64_t a1)
{
  v2 = sub_1C7C06020();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C04104(uint64_t a1)
{
  v2 = sub_1C7C06020();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C04140(uint64_t a1)
{
  v2 = sub_1C7C05FCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C0417C(uint64_t a1)
{
  v2 = sub_1C7C05FCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C041CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x444973736170 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1C7C7DAA4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1C7C04250(uint64_t a1)
{
  v2 = sub_1C7C06074();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C0428C(uint64_t a1)
{
  v2 = sub_1C7C06074();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C042E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x80000001C7C9DB60 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1C7C7DAA4();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1C7C04378(uint64_t a1)
{
  v2 = sub_1C7C05D2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C043B4(uint64_t a1)
{
  v2 = sub_1C7C05D2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C043F0()
{
  if (*v0)
  {
    return 7956599;
  }

  else
  {
    return 6580577;
  }
}

uint64_t sub_1C7C04414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 6580577 && a2 == 0xE300000000000000;
  if (v5 || (sub_1C7C7DAA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7956599 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1C7C7DAA4();

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

uint64_t sub_1C7C044F0(uint64_t a1)
{
  v2 = sub_1C7C05F78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C0452C(uint64_t a1)
{
  v2 = sub_1C7C05F78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C04568@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 7956599 && a2 == 0xE300000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1C7C7DAA4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1C7C045F0(uint64_t a1)
{
  v2 = sub_1C7C05DD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C0462C(uint64_t a1)
{
  v2 = sub_1C7C05DD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C04668(uint64_t a1)
{
  v2 = sub_1C7C0626C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C046A4(uint64_t a1)
{
  v2 = sub_1C7C0626C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C046E0(uint64_t a1)
{
  v2 = sub_1C7C05CD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C0471C(uint64_t a1)
{
  v2 = sub_1C7C05CD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C04758(uint64_t a1)
{
  v2 = sub_1C7C05E28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C04794(uint64_t a1)
{
  v2 = sub_1C7C05E28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C047D0(uint64_t a1)
{
  v2 = sub_1C7C06218();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C0480C(uint64_t a1)
{
  v2 = sub_1C7C06218();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t JPKIInternalTypes.InternalError.encode(to:)(void *a1)
{
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2636A8, &qword_1C7C8A478);
  v59 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v58 = &v55 - v3;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2636B0, &qword_1C7C8A480);
  v76 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v103 = &v55 - v4;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2636B8, &qword_1C7C8A488);
  v75 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v101 = &v55 - v5;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2636C0, &qword_1C7C8A490);
  v74 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v99 = &v55 - v6;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2636C8, &qword_1C7C8A498);
  v56 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v55 = &v55 - v7;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2636D0, &qword_1C7C8A4A0);
  v72 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v95 = &v55 - v8;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2636D8, &qword_1C7C8A4A8);
  v73 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v96 = &v55 - v9;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2636E0, &qword_1C7C8A4B0);
  v71 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v93 = &v55 - v10;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2636E8, &qword_1C7C8A4B8);
  v70 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v90 = &v55 - v11;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2636F0, &qword_1C7C8A4C0);
  v68 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v87 = &v55 - v12;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2636F8, &qword_1C7C8A4C8);
  v69 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v89 = &v55 - v13;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263700, &qword_1C7C8A4D0);
  v67 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v85 = &v55 - v14;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263708, &qword_1C7C8A4D8);
  v83 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v82 = &v55 - v15;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263710, &qword_1C7C8A4E0);
  v80 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v79 = &v55 - v16;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263718, &qword_1C7C8A4E8);
  v62 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v61 = &v55 - v17;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263720, &qword_1C7C8A4F0);
  v65 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v64 = &v55 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263728, &qword_1C7C8A4F8);
  v78 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v55 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263730, &qword_1C7C8A500);
  v77 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v55 - v23;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263738, &qword_1C7C8A508);
  v109 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v26 = &v55 - v25;
  v27 = v1[1];
  v110 = *v1;
  v28 = v1[2];
  v107 = v1[3];
  v108 = v27;
  v105 = v1[4];
  v106 = v28;
  v29 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C05C84();
  v111 = v26;
  sub_1C7C7DBA4();
  switch(v29)
  {
    case 1:
      LOBYTE(v114) = 1;
      sub_1C7C06218();
      v41 = v111;
      v30 = v112;
      sub_1C7C7D9E4();
      sub_1C7C7DA14();
      (*(v78 + 8))(v21, v19);
      v42 = *(v109 + 8);
      v43 = v41;
      return v42(v43, v30);
    case 2:
      LOBYTE(v114) = 4;
      sub_1C7C0611C();
      v36 = v79;
      v31 = v111;
      v30 = v112;
      sub_1C7C7D9E4();
      v37 = v81;
      sub_1C7C7DA34();
      v38 = &v112;
      goto LABEL_28;
    case 3:
      LOBYTE(v114) = 5;
      sub_1C7C060C8();
      v36 = v82;
      v31 = v111;
      v30 = v112;
      sub_1C7C7D9E4();
      v37 = v84;
      sub_1C7C7DA14();
      v38 = &v115;
      goto LABEL_28;
    case 4:
      LOBYTE(v114) = 6;
      sub_1C7C06074();
      v36 = v85;
      v31 = v111;
      v30 = v112;
      sub_1C7C7D9E4();
      v37 = v86;
      sub_1C7C7DA14();
      v38 = &v99;
      goto LABEL_28;
    case 5:
      LOBYTE(v114) = 7;
      sub_1C7C06020();
      v44 = v89;
      v46 = v111;
      v45 = v112;
      sub_1C7C7D9E4();
      LOBYTE(v114) = 0;
      v47 = v91;
      v48 = v113;
      sub_1C7C7DA14();
      if (!v48)
      {
        LOBYTE(v114) = 1;
        sub_1C7C7DA14();
        v114 = v105;
        v116 = 2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2637A0, &qword_1C7C8A510);
        sub_1C7C080B4(&qword_1EC2637A8, MEMORY[0x1E69E6160], MEMORY[0x1E69E64F0]);
        sub_1C7C7DA44();
      }

      (*(v69 + 8))(v44, v47);
      return (*(v109 + 8))(v46, v45);
    case 6:
      LOBYTE(v114) = 8;
      sub_1C7C05FCC();
      v36 = v87;
      v31 = v111;
      v30 = v112;
      sub_1C7C7D9E4();
      v37 = v88;
      sub_1C7C7DA14();
      v38 = &v100;
      goto LABEL_28;
    case 7:
      LOBYTE(v114) = 9;
      sub_1C7C05F78();
      v36 = v90;
      v31 = v111;
      v30 = v112;
      sub_1C7C7D9E4();
      v114 = v110;
      v115 = v108;
      v116 = 0;
      sub_1C7BED7DC();
      v37 = v92;
      v40 = v113;
      sub_1C7C7DA44();
      if (!v40)
      {
        LOBYTE(v114) = 1;
        sub_1C7C7DA14();
      }

      v38 = &v102;
      goto LABEL_28;
    case 8:
      LOBYTE(v114) = 10;
      sub_1C7C05F24();
      v36 = v93;
      v31 = v111;
      v30 = v112;
      sub_1C7C7D9E4();
      LOBYTE(v114) = 0;
      v37 = v94;
      v50 = v113;
      sub_1C7C7DA14();
      if (!v50)
      {
        LOBYTE(v114) = 1;
        sub_1C7C7DA14();
      }

      v38 = &v103;
      goto LABEL_28;
    case 9:
      LOBYTE(v114) = 11;
      sub_1C7C05ED0();
      v36 = v96;
      v31 = v111;
      v30 = v112;
      sub_1C7C7D9E4();
      LOBYTE(v114) = 0;
      v37 = v98;
      v39 = v113;
      sub_1C7C7DA14();
      if (!v39)
      {
        LOBYTE(v114) = 1;
        sub_1C7C7DA14();
      }

      v38 = &v105;
      goto LABEL_28;
    case 10:
      LOBYTE(v114) = 12;
      sub_1C7C05E7C();
      v36 = v95;
      v31 = v111;
      v30 = v112;
      sub_1C7C7D9E4();
      v37 = v97;
      sub_1C7C7DA34();
      v38 = &v104;
      goto LABEL_28;
    case 11:
      LOBYTE(v114) = 14;
      sub_1C7C05DD4();
      v36 = v99;
      v31 = v111;
      v30 = v112;
      sub_1C7C7D9E4();
      v37 = v100;
      sub_1C7C7DA14();
      v38 = &v106;
      goto LABEL_28;
    case 12:
      LOBYTE(v114) = 15;
      sub_1C7C05D80();
      v36 = v101;
      v31 = v111;
      v30 = v112;
      sub_1C7C7D9E4();
      v37 = v102;
      sub_1C7C7DA14();
      v38 = &v107;
      goto LABEL_28;
    case 13:
      LOBYTE(v114) = 16;
      sub_1C7C05D2C();
      v36 = v103;
      v31 = v111;
      v30 = v112;
      sub_1C7C7D9E4();
      v37 = v104;
      sub_1C7C7DA14();
      v38 = &v108;
LABEL_28:
      (*(*(v38 - 32) + 8))(v36, v37);
      goto LABEL_29;
    case 14:
      if (!(v106 | v108 | v110 | v107 | v105))
      {
        LOBYTE(v114) = 2;
        sub_1C7C061C4();
        v51 = v64;
        v35 = v111;
        v34 = v112;
        sub_1C7C7D9E4();
        (*(v65 + 8))(v51, v66);
        return (*(v109 + 8))(v35, v34);
      }

      v32 = v106 | v108 | v107 | v105;
      if (v110 == 1 && !v32)
      {
        LOBYTE(v114) = 3;
        sub_1C7C06170();
        v33 = v61;
        v35 = v111;
        v34 = v112;
        sub_1C7C7D9E4();
        (*(v62 + 8))(v33, v63);
        return (*(v109 + 8))(v35, v34);
      }

      v30 = v112;
      v52 = v111;
      if (v110 != 2 || v32)
      {
        LOBYTE(v114) = 17;
        sub_1C7C05CD8();
        v54 = v58;
        sub_1C7C7D9E4();
        (*(v59 + 8))(v54, v60);
      }

      else
      {
        LOBYTE(v114) = 13;
        sub_1C7C05E28();
        v53 = v55;
        sub_1C7C7D9E4();
        (*(v56 + 8))(v53, v57);
      }

      v42 = *(v109 + 8);
      v43 = v52;
      return v42(v43, v30);
    default:
      LOBYTE(v114) = 0;
      sub_1C7C0626C();
      v31 = v111;
      v30 = v112;
      sub_1C7C7D9E4();
      sub_1C7C7DA14();
      (*(v77 + 8))(v24, v22);
LABEL_29:
      v42 = *(v109 + 8);
      v43 = v31;
      return v42(v43, v30);
  }
}

unint64_t sub_1C7C05C84()
{
  result = qword_1EC263740;
  if (!qword_1EC263740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263740);
  }

  return result;
}

unint64_t sub_1C7C05CD8()
{
  result = qword_1EC263748;
  if (!qword_1EC263748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263748);
  }

  return result;
}

unint64_t sub_1C7C05D2C()
{
  result = qword_1EC263750;
  if (!qword_1EC263750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263750);
  }

  return result;
}

unint64_t sub_1C7C05D80()
{
  result = qword_1EC263758;
  if (!qword_1EC263758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263758);
  }

  return result;
}

unint64_t sub_1C7C05DD4()
{
  result = qword_1EC263760;
  if (!qword_1EC263760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263760);
  }

  return result;
}

unint64_t sub_1C7C05E28()
{
  result = qword_1EC263768;
  if (!qword_1EC263768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263768);
  }

  return result;
}

unint64_t sub_1C7C05E7C()
{
  result = qword_1EC263770;
  if (!qword_1EC263770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263770);
  }

  return result;
}

unint64_t sub_1C7C05ED0()
{
  result = qword_1EC263778;
  if (!qword_1EC263778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263778);
  }

  return result;
}

unint64_t sub_1C7C05F24()
{
  result = qword_1EC263780;
  if (!qword_1EC263780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263780);
  }

  return result;
}

unint64_t sub_1C7C05F78()
{
  result = qword_1EC263788;
  if (!qword_1EC263788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263788);
  }

  return result;
}

unint64_t sub_1C7C05FCC()
{
  result = qword_1EC263790;
  if (!qword_1EC263790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263790);
  }

  return result;
}

unint64_t sub_1C7C06020()
{
  result = qword_1EC263798;
  if (!qword_1EC263798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263798);
  }

  return result;
}

unint64_t sub_1C7C06074()
{
  result = qword_1EC2637B0;
  if (!qword_1EC2637B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2637B0);
  }

  return result;
}

unint64_t sub_1C7C060C8()
{
  result = qword_1EC2637B8;
  if (!qword_1EC2637B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2637B8);
  }

  return result;
}

unint64_t sub_1C7C0611C()
{
  result = qword_1EC2637C0;
  if (!qword_1EC2637C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2637C0);
  }

  return result;
}

unint64_t sub_1C7C06170()
{
  result = qword_1EC2637C8;
  if (!qword_1EC2637C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2637C8);
  }

  return result;
}

unint64_t sub_1C7C061C4()
{
  result = qword_1EC2637D0;
  if (!qword_1EC2637D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2637D0);
  }

  return result;
}

unint64_t sub_1C7C06218()
{
  result = qword_1EC2637D8;
  if (!qword_1EC2637D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2637D8);
  }

  return result;
}

unint64_t sub_1C7C0626C()
{
  result = qword_1EC2637E0;
  if (!qword_1EC2637E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2637E0);
  }

  return result;
}

uint64_t JPKIInternalTypes.InternalError.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v211 = a2;
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2637E8, &qword_1C7C8A518);
  v196 = *(v216 - 8);
  MEMORY[0x1EEE9AC00](v216);
  v215 = &v160 - v3;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2637F0, &qword_1C7C8A520);
  v197 = *(v198 - 8);
  MEMORY[0x1EEE9AC00](v198);
  v210 = &v160 - v4;
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2637F8, &qword_1C7C8A528);
  v194 = *(v195 - 8);
  MEMORY[0x1EEE9AC00](v195);
  v209 = &v160 - v5;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263800, &qword_1C7C8A530);
  v192 = *(v193 - 8);
  MEMORY[0x1EEE9AC00](v193);
  v208 = &v160 - v6;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263808, &qword_1C7C8A538);
  v189 = *(v190 - 8);
  MEMORY[0x1EEE9AC00](v190);
  v206 = &v160 - v7;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263810, &qword_1C7C8A540);
  v187 = *(v188 - 8);
  MEMORY[0x1EEE9AC00](v188);
  v205 = &v160 - v8;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263818, &qword_1C7C8A548);
  v185 = *(v191 - 8);
  MEMORY[0x1EEE9AC00](v191);
  v207 = &v160 - v9;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263820, &qword_1C7C8A550);
  v182 = *(v186 - 8);
  MEMORY[0x1EEE9AC00](v186);
  v204 = &v160 - v10;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263828, &qword_1C7C8A558);
  v181 = *(v184 - 8);
  MEMORY[0x1EEE9AC00](v184);
  v203 = &v160 - v11;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263830, &qword_1C7C8A560);
  v179 = *(v180 - 8);
  MEMORY[0x1EEE9AC00](v180);
  v214 = &v160 - v12;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263838, &qword_1C7C8A568);
  v183 = *(v178 - 8);
  MEMORY[0x1EEE9AC00](v178);
  v202 = &v160 - v13;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263840, &qword_1C7C8A570);
  v176 = *(v177 - 8);
  MEMORY[0x1EEE9AC00](v177);
  v213 = &v160 - v14;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263848, &qword_1C7C8A578);
  v174 = *(v175 - 8);
  MEMORY[0x1EEE9AC00](v175);
  v212 = &v160 - v15;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263850, &qword_1C7C8A580);
  v172 = *(v173 - 8);
  MEMORY[0x1EEE9AC00](v173);
  v201 = &v160 - v16;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263858, &qword_1C7C8A588);
  v170 = *(v171 - 8);
  MEMORY[0x1EEE9AC00](v171);
  v200 = &v160 - v17;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263860, &qword_1C7C8A590);
  v167 = *(v169 - 8);
  MEMORY[0x1EEE9AC00](v169);
  v199 = &v160 - v18;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263868, &qword_1C7C8A598);
  v166 = *(v168 - 8);
  MEMORY[0x1EEE9AC00](v168);
  v20 = &v160 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263870, &qword_1C7C8A5A0);
  v165 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v160 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263878, &qword_1C7C8A5A8);
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v160 - v26;
  v28 = a1[3];
  v217 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v28);
  sub_1C7C05C84();
  v29 = v218;
  sub_1C7C7DB94();
  v218 = v29;
  if (v29)
  {
LABEL_8:
    v49 = v217;
    return __swift_destroy_boxed_opaque_existential_0Tm(v49);
  }

  v161 = v23;
  v160 = v21;
  v162 = v20;
  v31 = v212;
  v30 = v213;
  v32 = v214;
  v33 = v215;
  v34 = v216;
  v163 = v25;
  v164 = v24;
  v35 = sub_1C7C7D9D4();
  v36 = (2 * *(v35 + 16)) | 1;
  v221 = v35;
  v222 = v35 + 32;
  v223 = 0;
  v224 = v36;
  v37 = sub_1C7BDF140();
  if (v223 != v224 >> 1)
  {
LABEL_6:
    v44 = sub_1C7C7D7C4();
    v45 = swift_allocError();
    v47 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2627F0, &qword_1C7C84F30);
    *v47 = &type metadata for JPKIInternalTypes.InternalError;
    v48 = v164;
    sub_1C7C7D954();
    sub_1C7C7D7B4();
    (*(*(v44 - 8) + 104))(v47, *MEMORY[0x1E69E6AF8], v44);
    v218 = v45;
    swift_willThrow();
    (*(v163 + 8))(v27, v48);
LABEL_7:
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  v38 = v211;
  switch(v37)
  {
    case 0:
      LOBYTE(v219) = 0;
      sub_1C7C0626C();
      v39 = v161;
      v40 = v164;
      v41 = v218;
      sub_1C7C7D944();
      v218 = v41;
      if (v41)
      {
        goto LABEL_46;
      }

      v42 = v160;
      v43 = sub_1C7C7D984();
      v218 = 0;
      v137 = v43;
      v139 = v138;
      (*(v165 + 8))(v39, v42);
      (*(v163 + 8))(v27, v40);
      swift_unknownObjectRelease();
      v140 = v137;
      v141 = 0;
      v142 = 0;
      v143 = 0;
      v144 = 0;
      goto LABEL_52;
    case 1:
      LOBYTE(v219) = 1;
      sub_1C7C06218();
      v92 = v162;
      v79 = v164;
      v93 = v218;
      sub_1C7C7D944();
      v218 = v93;
      if (v93)
      {
        goto LABEL_38;
      }

      v94 = v168;
      v95 = sub_1C7C7D984();
      v96 = v163;
      v218 = 0;
      v140 = v95;
      v139 = v145;
      (*(v166 + 8))(v92, v94);
      (*(v96 + 8))(v27, v164);
      swift_unknownObjectRelease();
      v141 = 0;
      v142 = 0;
      v143 = 0;
      v144 = 1;
      goto LABEL_52;
    case 2:
      LOBYTE(v219) = 2;
      sub_1C7C061C4();
      v78 = v199;
      v79 = v164;
      v80 = v218;
      sub_1C7C7D944();
      v218 = v80;
      if (v80)
      {
        goto LABEL_38;
      }

      (*(v167 + 8))(v78, v169);
      (*(v163 + 8))(v27, v79);
      swift_unknownObjectRelease();
      v140 = 0;
      v139 = 0;
      v141 = 0;
      v142 = 0;
      v143 = 0;
      v144 = 14;
      goto LABEL_52;
    case 3:
      LOBYTE(v219) = 3;
      sub_1C7C06170();
      v86 = v200;
      v79 = v164;
      v87 = v218;
      sub_1C7C7D944();
      v218 = v87;
      if (v87)
      {
        goto LABEL_38;
      }

      (*(v170 + 8))(v86, v171);
      (*(v163 + 8))(v27, v79);
      swift_unknownObjectRelease();
      v139 = 0;
      v141 = 0;
      v142 = 0;
      v143 = 0;
      v144 = 14;
      v140 = 1;
      goto LABEL_52;
    case 4:
      LOBYTE(v219) = 4;
      sub_1C7C0611C();
      v66 = v201;
      v40 = v164;
      v67 = v218;
      sub_1C7C7D944();
      v218 = v67;
      if (v67)
      {
        goto LABEL_46;
      }

      v68 = v173;
      v69 = sub_1C7C7D9A4();
      v218 = 0;
      v140 = v69;
      (*(v172 + 8))(v66, v68);
      (*(v163 + 8))(v27, v40);
      swift_unknownObjectRelease();
      v139 = 0;
      v141 = 0;
      v142 = 0;
      v143 = 0;
      v144 = 2;
      goto LABEL_52;
    case 5:
      LOBYTE(v219) = 5;
      sub_1C7C060C8();
      v98 = v31;
      v40 = v164;
      v99 = v218;
      sub_1C7C7D944();
      v218 = v99;
      if (v99)
      {
        goto LABEL_46;
      }

      v100 = v175;
      v101 = sub_1C7C7D984();
      v218 = 0;
      v140 = v101;
      v139 = v102;
      (*(v174 + 8))(v98, v100);
      (*(v163 + 8))(v27, v40);
      swift_unknownObjectRelease();
      v141 = 0;
      v142 = 0;
      v143 = 0;
      v144 = 3;
      goto LABEL_52;
    case 6:
      LOBYTE(v219) = 6;
      sub_1C7C06074();
      v105 = v30;
      v40 = v164;
      v106 = v218;
      sub_1C7C7D944();
      v218 = v106;
      if (v106)
      {
        goto LABEL_46;
      }

      v107 = v177;
      v108 = sub_1C7C7D984();
      v218 = 0;
      v140 = v108;
      v139 = v109;
      (*(v176 + 8))(v105, v107);
      (*(v163 + 8))(v27, v40);
      swift_unknownObjectRelease();
      v141 = 0;
      v142 = 0;
      v143 = 0;
      v144 = 4;
      goto LABEL_52;
    case 7:
      LOBYTE(v219) = 7;
      sub_1C7C06020();
      v88 = v202;
      v89 = v27;
      v90 = v164;
      v91 = v218;
      sub_1C7C7D944();
      v218 = v91;
      if (v91)
      {
        (*(v163 + 8))(v89, v90);
        goto LABEL_7;
      }

      LOBYTE(v219) = 0;
      v117 = v178;
      v118 = sub_1C7C7D984();
      v218 = 0;
      v139 = v130;
      v131 = v118;
      LOBYTE(v219) = 1;
      v132 = sub_1C7C7D984();
      v218 = 0;
      v133 = v183;
      v135 = v134;
      v216 = v132;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2637A0, &qword_1C7C8A510);
      v225 = 2;
      sub_1C7C080B4(&qword_1EC263880, MEMORY[0x1E69E6190], MEMORY[0x1E69E6510]);
      v136 = v218;
      sub_1C7C7D9B4();
      v218 = v136;
      if (v136)
      {

        (*(v133 + 8))(v88, v117);
        (*(v163 + 8))(v89, v90);
        goto LABEL_7;
      }

      (*(v133 + 8))(v88, v117);
      (*(v163 + 8))(v89, v90);
      swift_unknownObjectRelease();
      v143 = v219;
      v144 = 5;
      v140 = v131;
      v141 = v216;
      v142 = v135;
      goto LABEL_55;
    case 8:
      LOBYTE(v219) = 8;
      sub_1C7C05FCC();
      v40 = v164;
      v114 = v218;
      sub_1C7C7D944();
      v218 = v114;
      if (v114)
      {
        goto LABEL_46;
      }

      v115 = v180;
      v116 = sub_1C7C7D984();
      v218 = 0;
      v140 = v116;
      v139 = v150;
      (*(v179 + 8))(v32, v115);
      (*(v163 + 8))(v27, v40);
      swift_unknownObjectRelease();
      v141 = 0;
      v142 = 0;
      v143 = 0;
      v144 = 6;
      goto LABEL_52;
    case 9:
      LOBYTE(v219) = 9;
      sub_1C7C05F78();
      v74 = v203;
      v62 = v164;
      v75 = v218;
      sub_1C7C7D944();
      v218 = v75;
      if (v75)
      {
        goto LABEL_43;
      }

      v225 = 0;
      sub_1C7BED744();
      v76 = v184;
      v77 = v218;
      sub_1C7C7D9B4();
      v218 = v77;
      if (v77)
      {
        (*(v181 + 8))(v74, v76);
LABEL_43:
        (*(v163 + 8))(v27, v62);
        goto LABEL_7;
      }

      v140 = v219;
      v127 = v220;
      v225 = 1;
      v128 = sub_1C7C7D984();
      v129 = (v163 + 8);
      v218 = 0;
      v151 = *(v181 + 8);
      v216 = v127;
      v152 = v128;
      v153 = v74;
      v155 = v154;
      v151(v153, v76);
      (*v129)(v27, v62);
      swift_unknownObjectRelease();
      v142 = v155;
      v141 = v152;
      v139 = v216;
      v143 = 0;
      v144 = 7;
LABEL_55:
      v49 = v217;
      v38 = v211;
      goto LABEL_53;
    case 10:
      LOBYTE(v219) = 10;
      sub_1C7C05F24();
      v110 = v204;
      v62 = v164;
      v111 = v218;
      sub_1C7C7D944();
      v218 = v111;
      if (v111)
      {
        goto LABEL_43;
      }

      LOBYTE(v219) = 0;
      v112 = v186;
      v113 = sub_1C7C7D984();
      v218 = 0;
      v147 = v146;
      v216 = v113;
      LOBYTE(v219) = 1;
      v148 = sub_1C7C7D984();
      v149 = (v163 + 8);
      v218 = 0;
      v156 = v148;
      v157 = v110;
      v159 = v158;
      (*(v182 + 8))(v157, v112);
      (*v149)(v27, v62);
      swift_unknownObjectRelease();
      v142 = v159;
      v141 = v156;
      v139 = v147;
      v143 = 0;
      v144 = 8;
      goto LABEL_54;
    case 11:
      LOBYTE(v219) = 11;
      sub_1C7C05ED0();
      v61 = v207;
      v62 = v164;
      v63 = v218;
      sub_1C7C7D944();
      v218 = v63;
      if (v63)
      {
        goto LABEL_43;
      }

      LOBYTE(v219) = 0;
      v64 = v191;
      v65 = sub_1C7C7D984();
      v218 = 0;
      v120 = v119;
      v216 = v65;
      LOBYTE(v219) = 1;
      v121 = sub_1C7C7D984();
      v122 = (v163 + 8);
      v218 = 0;
      v123 = v121;
      v124 = v61;
      v126 = v125;
      (*(v185 + 8))(v124, v64);
      (*v122)(v27, v62);
      swift_unknownObjectRelease();
      v142 = v126;
      v141 = v123;
      v139 = v120;
      v143 = 0;
      v144 = 9;
LABEL_54:
      v140 = v216;
      goto LABEL_55;
    case 12:
      LOBYTE(v219) = 12;
      sub_1C7C05E7C();
      v70 = v205;
      v40 = v164;
      v71 = v218;
      sub_1C7C7D944();
      v218 = v71;
      if (v71)
      {
        goto LABEL_46;
      }

      v72 = v188;
      v73 = sub_1C7C7D9A4();
      v218 = 0;
      v140 = v73;
      (*(v187 + 8))(v70, v72);
      (*(v163 + 8))(v27, v40);
      swift_unknownObjectRelease();
      v139 = 0;
      v141 = 0;
      v142 = 0;
      v143 = 0;
      v144 = 10;
      goto LABEL_52;
    case 13:
      LOBYTE(v219) = 13;
      sub_1C7C05E28();
      v103 = v206;
      v79 = v164;
      v104 = v218;
      sub_1C7C7D944();
      v218 = v104;
      if (v104)
      {
        goto LABEL_38;
      }

      (*(v189 + 8))(v103, v190);
      (*(v163 + 8))(v27, v79);
      swift_unknownObjectRelease();
      v139 = 0;
      v141 = 0;
      v142 = 0;
      v143 = 0;
      v144 = 14;
      v140 = 2;
      goto LABEL_52;
    case 14:
      LOBYTE(v219) = 14;
      sub_1C7C05DD4();
      v56 = v208;
      v40 = v164;
      v57 = v218;
      sub_1C7C7D944();
      v218 = v57;
      if (v57)
      {
        goto LABEL_46;
      }

      v58 = v193;
      v59 = sub_1C7C7D984();
      v218 = 0;
      v140 = v59;
      v139 = v60;
      (*(v192 + 8))(v56, v58);
      (*(v163 + 8))(v27, v40);
      swift_unknownObjectRelease();
      v141 = 0;
      v142 = 0;
      v143 = 0;
      v144 = 11;
      goto LABEL_52;
    case 15:
      LOBYTE(v219) = 15;
      sub_1C7C05D80();
      v81 = v209;
      v40 = v164;
      v82 = v218;
      sub_1C7C7D944();
      v218 = v82;
      if (v82)
      {
        goto LABEL_46;
      }

      v83 = v195;
      v84 = sub_1C7C7D984();
      v218 = 0;
      v140 = v84;
      v139 = v85;
      (*(v194 + 8))(v81, v83);
      (*(v163 + 8))(v27, v40);
      swift_unknownObjectRelease();
      v141 = 0;
      v142 = 0;
      v143 = 0;
      v144 = 12;
      goto LABEL_52;
    case 16:
      LOBYTE(v219) = 16;
      sub_1C7C05D2C();
      v51 = v210;
      v40 = v164;
      v52 = v218;
      sub_1C7C7D944();
      v218 = v52;
      if (!v52)
      {
        v53 = v198;
        v54 = sub_1C7C7D984();
        v218 = 0;
        v140 = v54;
        v139 = v55;
        (*(v197 + 8))(v51, v53);
        (*(v163 + 8))(v27, v40);
        swift_unknownObjectRelease();
        v141 = 0;
        v142 = 0;
        v143 = 0;
        v144 = 13;
        goto LABEL_52;
      }

LABEL_46:
      (*(v163 + 8))(v27, v40);
      goto LABEL_7;
    case 17:
      LOBYTE(v219) = 17;
      sub_1C7C05CD8();
      v79 = v164;
      v97 = v218;
      sub_1C7C7D944();
      v218 = v97;
      if (v97)
      {
LABEL_38:
        (*(v163 + 8))(v27, v79);
        goto LABEL_7;
      }

      (*(v196 + 8))(v33, v34);
      (*(v163 + 8))(v27, v79);
      swift_unknownObjectRelease();
      v139 = 0;
      v141 = 0;
      v142 = 0;
      v143 = 0;
      v144 = 14;
      v140 = 3;
LABEL_52:
      v49 = v217;
LABEL_53:
      *v38 = v140;
      *(v38 + 8) = v139;
      *(v38 + 16) = v141;
      *(v38 + 24) = v142;
      *(v38 + 32) = v143;
      *(v38 + 40) = v144;
      break;
    default:
      goto LABEL_6;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v49);
}

uint64_t sub_1C7C080B4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC2637A0, &qword_1C7C8A510);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *JPKIInternalTypes.CertificateInfo.init(type:authTriesRemaining:)@<X0>(_BYTE *result@<X0>, char a2@<W1>, _BYTE *a3@<X8>)
{
  *a3 = *result;
  a3[1] = a2;
  return result;
}

uint64_t JPKIInternalTypes.CertificateData.__allocating_init(certificateData:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

void *JPKIInternalTypes.DigitalSignature.__allocating_init(certificate:signature:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  return result;
}

uint64_t JPKIXPCRequest.passIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

void JPKIXPCRequest.operation.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  v7 = *(v1 + 56);
  *(a1 + 40) = v7;
  sub_1C7C08280(v2, v3, v4, v5, v6, v7);
}

void sub_1C7C08280(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, char a6)
{
  if (a6 == 2)
  {
    v11 = a5;

    v7 = v11 & 1;
    a2 = a3;
    v9 = a4;
LABEL_9:

    sub_1C7C08334(a2, v9, v7);
    return;
  }

  if (a6 != 1)
  {
    if (a6)
    {
      return;
    }

    v7 = a4 & 1;
    v9 = a3;
    goto LABEL_9;
  }
}

void sub_1C7C08334(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
    sub_1C7BED654(a1, a2);
  }

  else
  {
  }
}

uint64_t JPKIXPCRequest.JPKIOperation.description.getter()
{
  if (*(v0 + 40) > 1u)
  {
    if (*(v0 + 40) == 2)
    {
      return 1852270963;
    }

    else if (*(v0 + 24) | *(v0 + 32) | *v0 | *(v0 + 16) | *(v0 + 8))
    {
      return 0x4C4341746567;
    }

    else
    {
      return 0xD00000000000001CLL;
    }
  }

  else if (*(v0 + 40))
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0x7472654364616572;
  }
}

uint64_t sub_1C7C08408(uint64_t a1)
{
  v2 = sub_1C7C09188();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C08444(uint64_t a1)
{
  v2 = sub_1C7C09188();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1C7C08480()
{
  v1 = *v0;
  v2 = 0x7472654364616572;
  v3 = 1852270963;
  if (v1 != 3)
  {
    v3 = 0x4C4341746567;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000013;
  }

  if (!*v0)
  {
    v2 = 0xD00000000000001CLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1C7C08520@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C7C11488(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1C7C08548(uint64_t a1)
{
  v2 = sub_1C7C09038();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C08584(uint64_t a1)
{
  v2 = sub_1C7C09038();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C085C0(uint64_t a1)
{
  v2 = sub_1C7C0908C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C085FC(uint64_t a1)
{
  v2 = sub_1C7C0908C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C08638(uint64_t a1)
{
  v2 = sub_1C7C09284();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C08674(uint64_t a1)
{
  v2 = sub_1C7C09284();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C086B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1C7C7DAA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1C7C7DAA4();

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

uint64_t sub_1C7C0877C(uint64_t a1)
{
  v2 = sub_1C7C09230();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C087B8(uint64_t a1)
{
  v2 = sub_1C7C09230();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C087F4(uint64_t a1)
{
  v2 = sub_1C7C090E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C08830(uint64_t a1)
{
  v2 = sub_1C7C090E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t JPKIXPCRequest.JPKIOperation.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263888, &qword_1C7C8A5B0);
  v39 = *(v3 - 8);
  v40 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v38 = &v36 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263890, &qword_1C7C8A5B8);
  v47 = *(v5 - 8);
  v48 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v46 = &v36 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263898, &qword_1C7C8A5C0);
  v44 = *(v7 - 8);
  v45 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v43 = &v36 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2638A0, &qword_1C7C8A5C8);
  v41 = *(v9 - 8);
  v42 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2638A8, &qword_1C7C8A5D0);
  v37 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v36 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2638B0, &qword_1C7C8A5D8);
  v16 = *(v15 - 8);
  v53 = v15;
  v54 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = *v1;
  v17 = v1[1];
  v19 = v1[3];
  v51 = v1[2];
  v52 = v17;
  v50 = v19;
  v49 = v1[4];
  v20 = *(v1 + 40);
  v21 = a1[3];
  v22 = a1;
  v24 = &v36 - v23;
  __swift_project_boxed_opaque_existential_1(v22, v21);
  sub_1C7C09038();
  sub_1C7C7DBA4();
  if (v20 <= 1)
  {
    if (!v20)
    {
      LOBYTE(v56) = 1;
      sub_1C7C09230();
      v25 = v53;
      sub_1C7C7D9E4();
      LOBYTE(v56) = v18 & 1;
      v59 = 0;
      sub_1C7C0134C();
      v26 = v42;
      v27 = v55;
      sub_1C7C7DA44();
      if (!v27)
      {
        v56 = v52;
        v57 = v51;
        v58 = v50 & 1;
        v59 = 1;
        sub_1C7C09134();
        sub_1C7C7DA44();
      }

      (*(v41 + 8))(v11, v26);
      return (*(v54 + 8))(v24, v25);
    }

    LOBYTE(v56) = 2;
    sub_1C7C09188();
    v28 = v43;
    v25 = v53;
    sub_1C7C7D9E4();
    LOBYTE(v56) = v18 & 1;
    v59 = 0;
    sub_1C7C0134C();
    v29 = v45;
    v32 = v55;
    sub_1C7C7DA44();
    if (!v32)
    {
      v56 = v52;
      v57 = v51;
      v59 = 1;
      sub_1C7C091DC();
      sub_1C7C7DA44();
      v56 = v50;
      v57 = v49;
      v59 = 2;
      sub_1C7C7DA44();
    }

    v31 = v44;
LABEL_15:
    (*(v31 + 8))(v28, v29);
    return (*(v54 + 8))(v24, v25);
  }

  if (v20 == 2)
  {
    LOBYTE(v56) = 3;
    sub_1C7C090E0();
    v28 = v46;
    v25 = v53;
    sub_1C7C7D9E4();
    v56 = v18;
    v59 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2638D0, &qword_1C7C8A5E0);
    sub_1C7C09E3C(&qword_1EC2638D8, sub_1C7BED7DC, MEMORY[0x1E69E6300]);
    v29 = v48;
    v30 = v55;
    sub_1C7C7DA44();
    if (!v30)
    {
      LOBYTE(v56) = v52 & 1;
      v59 = 1;
      sub_1C7C0134C();
      sub_1C7C7DA44();
      v56 = v51;
      v57 = v50;
      v58 = v49 & 1;
      v59 = 2;
      sub_1C7C09134();
      sub_1C7C7DA44();
    }

    v31 = v47;
    goto LABEL_15;
  }

  if (v51 | v52 | v18 | v50 | v49)
  {
    LOBYTE(v56) = 4;
    sub_1C7C0908C();
    v34 = v38;
    v35 = v53;
    sub_1C7C7D9E4();
    (*(v39 + 8))(v34, v40);
  }

  else
  {
    LOBYTE(v56) = 0;
    sub_1C7C09284();
    v35 = v53;
    sub_1C7C7D9E4();
    (*(v37 + 8))(v14, v12);
  }

  return (*(v54 + 8))(v24, v35);
}

unint64_t sub_1C7C09038()
{
  result = qword_1EC2638B8;
  if (!qword_1EC2638B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2638B8);
  }

  return result;
}

unint64_t sub_1C7C0908C()
{
  result = qword_1EC2638C0;
  if (!qword_1EC2638C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2638C0);
  }

  return result;
}

unint64_t sub_1C7C090E0()
{
  result = qword_1EC2638C8;
  if (!qword_1EC2638C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2638C8);
  }

  return result;
}

unint64_t sub_1C7C09134()
{
  result = qword_1EC2638E0;
  if (!qword_1EC2638E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2638E0);
  }

  return result;
}

unint64_t sub_1C7C09188()
{
  result = qword_1EC2638E8;
  if (!qword_1EC2638E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2638E8);
  }

  return result;
}

unint64_t sub_1C7C091DC()
{
  result = qword_1EC2638F0;
  if (!qword_1EC2638F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2638F0);
  }

  return result;
}

unint64_t sub_1C7C09230()
{
  result = qword_1EC2638F8;
  if (!qword_1EC2638F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2638F8);
  }

  return result;
}

unint64_t sub_1C7C09284()
{
  result = qword_1EC263900;
  if (!qword_1EC263900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263900);
  }

  return result;
}

uint64_t JPKIXPCRequest.JPKIOperation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263908, &qword_1C7C8A5E8);
  v54 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v65 = &v52 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263910, &qword_1C7C8A5F0);
  v5 = *(v4 - 8);
  v59 = v4;
  v60 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v64 = &v52 - v6;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263918, &qword_1C7C8A5F8);
  v61 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v63 = &v52 - v7;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263920, &qword_1C7C8A600);
  v56 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v9 = &v52 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263928, &qword_1C7C8A608);
  v53 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v52 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263930, &qword_1C7C8A610);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v52 - v15;
  v17 = a1[3];
  v66 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1C7C09038();
  v18 = v67;
  sub_1C7C7DB94();
  if (v18)
  {
    goto LABEL_23;
  }

  v67 = 0;
  v19 = v12;
  v52 = v10;
  v21 = v64;
  v20 = v65;
  v22 = v63;
  v23 = sub_1C7C7D9D4();
  v24 = (2 * *(v23 + 16)) | 1;
  v73 = v23;
  v74 = v23 + 32;
  v75 = 0;
  v76 = v24;
  v25 = sub_1C7BEAAD0();
  if (v25 == 5 || v75 != v76 >> 1)
  {
    v28 = v16;
    v29 = sub_1C7C7D7C4();
    swift_allocError();
    v30 = v13;
    v32 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2627F0, &qword_1C7C84F30);
    *v32 = &type metadata for JPKIXPCRequest.JPKIOperation;
    sub_1C7C7D954();
    sub_1C7C7D7B4();
    (*(*(v29 - 8) + 104))(v32, *MEMORY[0x1E69E6AF8], v29);
    swift_willThrow();
    (*(v14 + 8))(v28, v30);
LABEL_22:
    swift_unknownObjectRelease();
LABEL_23:
    v49 = v66;
    return __swift_destroy_boxed_opaque_existential_0Tm(v49);
  }

  if (v25 <= 1u)
  {
    if (v25)
    {
      LOBYTE(v70) = 1;
      sub_1C7C09230();
      v38 = v67;
      sub_1C7C7D944();
      if (v38)
      {
        goto LABEL_21;
      }

      LOBYTE(v70) = 0;
      sub_1C7C0155C();
      v39 = v55;
      sub_1C7C7D9B4();
      v50 = v68;
      v78 = 1;
      sub_1C7C09EB4();
      sub_1C7C7D9B4();
      (*(v56 + 8))(v9, v39);
      (*(v14 + 8))(v16, v13);
      swift_unknownObjectRelease();
      v48 = 0;
      v47 = 0;
      v44 = v70;
      v46 = v71;
      v45 = v72;
    }

    else
    {
      LOBYTE(v70) = 0;
      sub_1C7C09284();
      v33 = v67;
      sub_1C7C7D944();
      if (v33)
      {
        goto LABEL_21;
      }

      (*(v53 + 8))(v19, v52);
      (*(v14 + 8))(v16, v13);
      swift_unknownObjectRelease();
      v50 = 0;
      v44 = 0;
      v46 = 0;
      v45 = 0;
      v48 = 0;
      v47 = 3;
    }

LABEL_13:
    v49 = v66;
    v51 = v62;
    goto LABEL_18;
  }

  if (v25 == 2)
  {
    LOBYTE(v70) = 2;
    sub_1C7C09188();
    v34 = v22;
    v35 = v67;
    sub_1C7C7D944();
    if (v35)
    {
      goto LABEL_21;
    }

    LOBYTE(v70) = 0;
    sub_1C7C0155C();
    v36 = v57;
    sub_1C7C7D9B4();
    v65 = v13;
    v50 = v78;
    LOBYTE(v68) = 1;
    sub_1C7C09F08();
    sub_1C7C7D9B4();
    v67 = v16;
    v44 = v70;
    v46 = v71;
    v77 = 2;
    sub_1C7C7D9B4();
    (*(v61 + 8))(v34, v36);
    (*(v14 + 8))(v67, v65);
    swift_unknownObjectRelease();
    v45 = v68;
    v48 = v69;
    v47 = 1;
    goto LABEL_13;
  }

  if (v25 != 3)
  {
    v51 = v62;
    LOBYTE(v70) = 4;
    sub_1C7C0908C();
    v37 = v67;
    sub_1C7C7D944();
    if (!v37)
    {
      (*(v54 + 8))(v20, v58);
      (*(v14 + 8))(v16, v13);
      swift_unknownObjectRelease();
      v44 = 0;
      v46 = 0;
      v45 = 0;
      v48 = 0;
      v47 = 3;
      v50 = 1;
      v49 = v66;
      goto LABEL_18;
    }

    goto LABEL_21;
  }

  LOBYTE(v70) = 3;
  sub_1C7C090E0();
  v26 = v67;
  sub_1C7C7D944();
  if (v26)
  {
LABEL_21:
    (*(v14 + 8))(v16, v13);
    goto LABEL_22;
  }

  v67 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2638D0, &qword_1C7C8A5E0);
  LOBYTE(v70) = 0;
  sub_1C7C09E3C(&qword_1EC263938, sub_1C7BED744, MEMORY[0x1E69E6330]);
  v27 = v59;
  sub_1C7C7D9B4();
  v40 = v68;
  LOBYTE(v70) = 1;
  sub_1C7C0155C();
  sub_1C7C7D9B4();
  v41 = v67;
  v65 = v40;
  v43 = v21;
  v44 = v78;
  v77 = 2;
  sub_1C7C09EB4();
  sub_1C7C7D9B4();
  (*(v60 + 8))(v43, v27);
  (*(v14 + 8))(v41, v13);
  swift_unknownObjectRelease();
  v46 = v70;
  v45 = v71;
  v47 = 2;
  v48 = v72;
  v50 = v65;
  v49 = v66;
  v51 = v62;
LABEL_18:
  *v51 = v50;
  *(v51 + 8) = v44;
  *(v51 + 16) = v46;
  *(v51 + 24) = v45;
  *(v51 + 32) = v48;
  *(v51 + 40) = v47;
  return __swift_destroy_boxed_opaque_existential_0Tm(v49);
}

uint64_t sub_1C7C09E3C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC2638D0, &qword_1C7C8A5E0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C7C09EB4()
{
  result = qword_1EC263940;
  if (!qword_1EC263940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263940);
  }

  return result;
}

unint64_t sub_1C7C09F08()
{
  result = qword_1EC263948;
  if (!qword_1EC263948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263948);
  }

  return result;
}

uint64_t sub_1C7C09F8C()
{
  if (*(v0 + 40) > 1u)
  {
    if (*(v0 + 40) == 2)
    {
      return 1852270963;
    }

    else if (*(v0 + 24) | *(v0 + 32) | *v0 | *(v0 + 16) | *(v0 + 8))
    {
      return 0x4C4341746567;
    }

    else
    {
      return 0xD00000000000001CLL;
    }
  }

  else if (*(v0 + 40))
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0x7472654364616572;
  }
}

unint64_t JPKIXPCRequest.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = *(v0 + 56);
  sub_1C7C7D794();

  MEMORY[0x1CCA6B380](v1, v2);
  MEMORY[0x1CCA6B380](0x6974617265706F20, 0xEB00000000206E6FLL);
  if (v8 > 1)
  {
    if (v8 == 2)
    {
      v10 = 0xE400000000000000;
      v9 = 1852270963;
    }

    else
    {
      v11 = v5 | v4 | v3 | v6 | v7;
      if (v11)
      {
        v9 = 0x4C4341746567;
      }

      else
      {
        v9 = 0xD00000000000001CLL;
      }

      if (v11)
      {
        v10 = 0xE600000000000000;
      }

      else
      {
        v10 = 0x80000001C7C9D930;
      }
    }
  }

  else
  {
    if (v8)
    {
      v9 = 0xD000000000000013;
    }

    else
    {
      v9 = 0x7472654364616572;
    }

    if (v8)
    {
      v10 = 0x80000001C7C9D910;
    }

    else
    {
      v10 = 0xEF65746163696669;
    }
  }

  MEMORY[0x1CCA6B380](v9, v10);

  return 0xD000000000000010;
}

uint64_t sub_1C7C0A1D0()
{
  if (*v0)
  {
    return 0x6F6974617265706FLL;
  }

  else
  {
    return 0x6E65644973736170;
  }
}

uint64_t sub_1C7C0A21C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E65644973736170 && a2 == 0xEE00726569666974;
  if (v6 || (sub_1C7C7DAA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F6974617265706FLL && a2 == 0xE90000000000006ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1C7C7DAA4();

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

uint64_t sub_1C7C0A308(uint64_t a1)
{
  v2 = sub_1C7C0A558();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C0A344(uint64_t a1)
{
  v2 = sub_1C7C0A558();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t JPKIXPCRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263950, &qword_1C7C8A618);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - v5;
  v7 = *(v1 + 16);
  v14 = *(v1 + 24);
  v15 = v7;
  v8 = *(v1 + 32);
  v12 = *(v1 + 40);
  v13 = v8;
  v11 = *(v1 + 48);
  v23 = *(v1 + 56);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C0A558();
  sub_1C7C7DBA4();
  LOBYTE(v17) = 0;
  v9 = v16;
  sub_1C7C7DA14();
  if (!v9)
  {
    v17 = v15;
    v18 = v14;
    v19 = v13;
    v20 = v12;
    v21 = v11;
    v22 = v23;
    v24 = 1;
    sub_1C7C08280(v15, v14, v13, v12, v11, v23);
    sub_1C7C0A5AC();
    sub_1C7C7DA44();
    sub_1C7C0A600(v17, v18, v19, v20, v21, v22);
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1C7C0A558()
{
  result = qword_1EC263958;
  if (!qword_1EC263958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263958);
  }

  return result;
}

unint64_t sub_1C7C0A5AC()
{
  result = qword_1EC263960;
  if (!qword_1EC263960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263960);
  }

  return result;
}

void sub_1C7C0A600(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, char a6)
{
  v6 = a5;
  if (a6 == 2)
  {

    v8 = v6 & 1;
    a2 = a3;
    v10 = a4;
LABEL_9:

    sub_1C7C0A6B4(a2, v10, v8);
    return;
  }

  if (a6 != 1)
  {
    if (a6)
    {
      return;
    }

    v8 = a4 & 1;
    v10 = a3;
    goto LABEL_9;
  }
}

uint64_t sub_1C7C0A6B4(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
    return sub_1C7BDF778(a1, a2);
  }

  else
  {
  }
}

uint64_t JPKIXPCRequest.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263968, &qword_1C7C8A620);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C0A558();
  sub_1C7C7DB94();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  LOBYTE(v22[0]) = 0;
  v9 = sub_1C7C7D984();
  v11 = v10;
  v12 = v9;
  v32 = 1;
  sub_1C7C0A938();
  sub_1C7C7D9B4();
  (*(v6 + 8))(v8, v5);
  v13 = v27;
  v14 = v28;
  v19 = v29;
  v31 = v30;
  *&v20[0] = v12;
  *(&v20[0] + 1) = v11;
  v20[1] = v27;
  *v21 = v28;
  *&v21[16] = v29;
  v21[24] = v30;
  v15 = v20[0];
  v16 = v27;
  v17 = v28;
  *(a2 + 41) = *&v21[9];
  a2[1] = v16;
  a2[2] = v17;
  *a2 = v15;
  sub_1C7C0A98C(v20, v22);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v22[0] = v12;
  v22[1] = v11;
  v23 = v13;
  v24 = v14;
  v25 = v19;
  v26 = v31;
  return sub_1C7C0A9C4(v22);
}

unint64_t sub_1C7C0A938()
{
  result = qword_1EC263970;
  if (!qword_1EC263970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263970);
  }

  return result;
}

uint64_t sub_1C7C0AA40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x68747541747865 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1C7C7DAA4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1C7C0AAC8(uint64_t a1)
{
  v2 = sub_1C7C0B09C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C0AB04(uint64_t a1)
{
  v2 = sub_1C7C0B09C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C0AB40()
{
  if (*v0)
  {
    return 0x797274656D6F6962;
  }

  else
  {
    return 0x647261646E617473;
  }
}

uint64_t sub_1C7C0AB74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x647261646E617473 && a2 == 0xE800000000000000;
  if (v6 || (sub_1C7C7DAA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x797274656D6F6962 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1C7C7DAA4();

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

uint64_t sub_1C7C0AC50(uint64_t a1)
{
  v2 = sub_1C7C0B048();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C0AC8C(uint64_t a1)
{
  v2 = sub_1C7C0B048();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C0ACC8(uint64_t a1)
{
  v2 = sub_1C7C0B0F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C0AD04(uint64_t a1)
{
  v2 = sub_1C7C0B0F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t JPKIInternalTypes.UserAuthenticationInternal.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263978, &qword_1C7C8A628);
  v22 = *(v3 - 8);
  v23 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v21 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263980, &qword_1C7C8A630);
  v19 = *(v5 - 8);
  v20 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263988, &qword_1C7C8A638);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - v10;
  v12 = v1[1];
  v24 = *v1;
  v25 = v12;
  v13 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C0B048();
  sub_1C7C7DBA4();
  if (v13)
  {
    LOBYTE(v26) = 1;
    sub_1C7C0B09C();
    v14 = v21;
    sub_1C7C7D9E4();
    v26 = v24;
    v27 = v25;
    sub_1C7BED7DC();
    v15 = v23;
    sub_1C7C7DA44();
    (*(v22 + 8))(v14, v15);
  }

  else
  {
    LOBYTE(v26) = 0;
    sub_1C7C0B0F0();
    sub_1C7C7D9E4();
    v16 = v20;
    sub_1C7C7DA14();
    (*(v19 + 8))(v7, v16);
  }

  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_1C7C0B048()
{
  result = qword_1EC263990;
  if (!qword_1EC263990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263990);
  }

  return result;
}

unint64_t sub_1C7C0B09C()
{
  result = qword_1EC263998;
  if (!qword_1EC263998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263998);
  }

  return result;
}

unint64_t sub_1C7C0B0F0()
{
  result = qword_1EC2639A0;
  if (!qword_1EC2639A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2639A0);
  }

  return result;
}

uint64_t JPKIInternalTypes.UserAuthenticationInternal.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2639A8, &qword_1C7C8A640);
  v37 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v4 = &v32[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2639B0, &qword_1C7C8A648);
  v36 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v32[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2639B8, &qword_1C7C8A650);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v32[-v10];
  v12 = a1[3];
  v46 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1C7C0B048();
  v13 = v39;
  sub_1C7C7DB94();
  if (!v13)
  {
    v34 = v5;
    v39 = v9;
    v14 = v38;
    v15 = v11;
    v16 = sub_1C7C7D9D4();
    v17 = (2 * *(v16 + 16)) | 1;
    v42 = v16;
    v43 = v16 + 32;
    v44 = 0;
    v45 = v17;
    v18 = sub_1C7BEAACC();
    v19 = v8;
    if (v18 == 2 || v44 != v45 >> 1)
    {
      v24 = sub_1C7C7D7C4();
      swift_allocError();
      v26 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2627F0, &qword_1C7C84F30);
      *v26 = &type metadata for JPKIInternalTypes.UserAuthenticationInternal;
      sub_1C7C7D954();
      sub_1C7C7D7B4();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
      swift_willThrow();
      (*(v39 + 8))(v11, v8);
      swift_unknownObjectRelease();
    }

    else
    {
      v33 = v18;
      v20 = v39;
      if (v18)
      {
        LOBYTE(v40) = 1;
        sub_1C7C0B09C();
        sub_1C7C7D944();
        sub_1C7BED744();
        v21 = v35;
        sub_1C7C7D9B4();
        (*(v37 + 8))(v4, v21);
        (*(v20 + 8))(v11, v19);
        swift_unknownObjectRelease();
        v22 = v40;
        v23 = v41;
      }

      else
      {
        LOBYTE(v40) = 0;
        sub_1C7C0B0F0();
        v28 = v7;
        sub_1C7C7D944();
        v29 = v19;
        v30 = v34;
        v22 = sub_1C7C7D984();
        v23 = v31;
        (*(v36 + 8))(v28, v30);
        (*(v39 + 8))(v15, v29);
        swift_unknownObjectRelease();
      }

      *v14 = v22;
      *(v14 + 8) = v23;
      *(v14 + 16) = v33 & 1;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v46);
}

unint64_t JPKIXPCResponse.description.getter()
{
  v1 = *(v0 + 40) >> 5;
  if (v1 > 2)
  {
    v3 = 0x4C4341746567;
    if (v1 != 4)
    {
      v3 = 0xD000000000000013;
    }

    if (v1 == 3)
    {
      return 1852270963;
    }

    else
    {
      return v3;
    }
  }

  else if (v1)
  {
    if (v1 == 1)
    {
      return 0xD00000000000001CLL;
    }

    else
    {
      return 0x7472654364616572;
    }
  }

  else
  {
    v4 = JPKIInternalTypes.InternalError.localizedDescription.getter();
    MEMORY[0x1CCA6B380](v4);

    return 0x2021726F727245;
  }
}

uint64_t sub_1C7C0B7C0(uint64_t a1)
{
  v2 = sub_1C7C0C638();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C0B7FC(uint64_t a1)
{
  v2 = sub_1C7C0C638();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1C7C0B838()
{
  v1 = *v0;
  v2 = 0x726F727265;
  v3 = 1852270963;
  if (v1 != 4)
  {
    v3 = 0x4C4341746567;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000013;
  }

  v4 = 0xD00000000000001CLL;
  if (v1 != 1)
  {
    v4 = 0x7472654364616572;
  }

  if (*v0)
  {
    v2 = v4;
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

uint64_t sub_1C7C0B8F4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C7C11748(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1C7C0B928(uint64_t a1)
{
  v2 = sub_1C7C0C47C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C0B964(uint64_t a1)
{
  v2 = sub_1C7C0C47C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C0B9A0(uint64_t a1)
{
  v2 = sub_1C7C0C788();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C0B9DC(uint64_t a1)
{
  v2 = sub_1C7C0C788();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C0BA18(uint64_t a1)
{
  v2 = sub_1C7C0C4D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C0BA54(uint64_t a1)
{
  v2 = sub_1C7C0C4D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C0BA90(uint64_t a1)
{
  v2 = sub_1C7C0C6E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C0BACC(uint64_t a1)
{
  v2 = sub_1C7C0C6E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C0BB08(uint64_t a1)
{
  v2 = sub_1C7C0C68C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C0BB44(uint64_t a1)
{
  v2 = sub_1C7C0C68C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C0BB80(uint64_t a1)
{
  v2 = sub_1C7C0C524();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C0BBBC(uint64_t a1)
{
  v2 = sub_1C7C0C524();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t JPKIXPCResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2639C0, &qword_1C7C8A658);
  v49 = *(v3 - 8);
  v50 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v48 = &v33 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2639C8, &qword_1C7C8A660);
  v46 = *(v5 - 8);
  v47 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v45 = &v33 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2639D0, &qword_1C7C8A668);
  v41 = *(v7 - 8);
  v42 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v38 = &v33 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2639D8, &qword_1C7C8A670);
  v43 = *(v9 - 8);
  v44 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v40 = &v33 - v10;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2639E0, &qword_1C7C8A678);
  v37 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v12 = &v33 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2639E8, &qword_1C7C8A680);
  v36 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v33 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2639F0, &qword_1C7C8A688);
  v52 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v17 = *v1;
  v35 = v1[1];
  v51 = v17;
  v34 = *(v1 + 4);
  v18 = *(v1 + 40);
  v19 = a1[3];
  v20 = a1;
  v22 = &v33 - v21;
  __swift_project_boxed_opaque_existential_1(v20, v19);
  sub_1C7C0C47C();
  sub_1C7C7DBA4();
  v23 = v18 >> 5;
  if (v18 >> 5 > 2)
  {
    if (v23 == 3)
    {
      LOBYTE(v53) = 4;
      sub_1C7C0C524();
      v30 = v45;
      sub_1C7C7D9E4();
      *&v53 = v51;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263A10, &qword_1C7C8A690);
      sub_1C7C0C578(&qword_1EC263A18, &qword_1EC263A20, &protocol conformance descriptor for JPKIInternalTypes.DigitalSignature, MEMORY[0x1E69E6300]);
      v31 = v47;
      sub_1C7C7DA44();
      (*(v46 + 8))(v30, v31);
      return (*(v52 + 8))(v22, v16);
    }

    v24 = v16;
    if (v23 != 4)
    {
      LOBYTE(v53) = 3;
      sub_1C7C0C638();
      v32 = v38;
      sub_1C7C7D9E4();
      (*(v41 + 8))(v32, v42);
      return (*(v52 + 8))(v22, v16);
    }

    LOBYTE(v53) = 5;
    sub_1C7C0C4D0();
    v26 = v48;
    sub_1C7C7D9E4();
    v53 = v51;
    sub_1C7BED7DC();
    v27 = v50;
    sub_1C7C7DA44();
    v28 = v49;
    goto LABEL_11;
  }

  if (!v23)
  {
    LOBYTE(v53) = 0;
    sub_1C7C0C788();
    sub_1C7C7D9E4();
    v53 = v51;
    v54 = v35;
    v55 = v34;
    v56 = v18;
    sub_1C7C0C7DC();
    sub_1C7C7DA44();
    (*(v36 + 8))(v15, v13);
    return (*(v52 + 8))(v22, v16);
  }

  v24 = v16;
  if (v23 != 1)
  {
    LOBYTE(v53) = 2;
    sub_1C7C0C68C();
    v26 = v40;
    sub_1C7C7D9E4();
    *&v53 = v51;
    type metadata accessor for JPKIInternalTypes.CertificateData();
    sub_1C7C0D3A0(&qword_1EC263690, type metadata accessor for JPKIInternalTypes.CertificateData, &protocol conformance descriptor for JPKIInternalTypes.CertificateData);
    v27 = v44;
    sub_1C7C7DA44();
    v28 = v43;
LABEL_11:
    (*(v28 + 8))(v26, v27);
    return (*(v52 + 8))(v22, v24);
  }

  LOBYTE(v53) = 1;
  sub_1C7C0C6E0();
  sub_1C7C7D9E4();
  *&v53 = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263A40, &qword_1C7C8A698);
  sub_1C7C0D3E4(&qword_1EC263A48, sub_1C7C0C734, MEMORY[0x1E69E6300]);
  v25 = v39;
  sub_1C7C7DA44();
  (*(v37 + 8))(v12, v25);
  return (*(v52 + 8))(v22, v24);
}

unint64_t sub_1C7C0C47C()
{
  result = qword_1EC2639F8;
  if (!qword_1EC2639F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2639F8);
  }

  return result;
}

unint64_t sub_1C7C0C4D0()
{
  result = qword_1EC263A00;
  if (!qword_1EC263A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263A00);
  }

  return result;
}

unint64_t sub_1C7C0C524()
{
  result = qword_1EC263A08;
  if (!qword_1EC263A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263A08);
  }

  return result;
}

uint64_t sub_1C7C0C578(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC263A10, &qword_1C7C8A690);
    sub_1C7C0D3A0(a2, type metadata accessor for JPKIInternalTypes.DigitalSignature, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C7C0C638()
{
  result = qword_1EC263A28;
  if (!qword_1EC263A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263A28);
  }

  return result;
}

unint64_t sub_1C7C0C68C()
{
  result = qword_1EC263A30;
  if (!qword_1EC263A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263A30);
  }

  return result;
}

unint64_t sub_1C7C0C6E0()
{
  result = qword_1EC263A38;
  if (!qword_1EC263A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263A38);
  }

  return result;
}

unint64_t sub_1C7C0C734()
{
  result = qword_1EC263A50;
  if (!qword_1EC263A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263A50);
  }

  return result;
}

unint64_t sub_1C7C0C788()
{
  result = qword_1EC263A58;
  if (!qword_1EC263A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263A58);
  }

  return result;
}

unint64_t sub_1C7C0C7DC()
{
  result = qword_1EC263A60;
  if (!qword_1EC263A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263A60);
  }

  return result;
}

uint64_t JPKIXPCResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263A68, &qword_1C7C8A6A0);
  v62 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v69 = &v52 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263A70, &qword_1C7C8A6A8);
  v5 = *(v4 - 8);
  v63 = v4;
  v64 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v65 = &v52 - v6;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263A78, &qword_1C7C8A6B0);
  v57 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v68 = &v52 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263A80, &qword_1C7C8A6B8);
  v9 = *(v8 - 8);
  v60 = v8;
  v61 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v67 = &v52 - v10;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263A88, &qword_1C7C8A6C0);
  v56 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v12 = &v52 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263A90, &qword_1C7C8A6C8);
  v54 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v52 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263A98, &qword_1C7C8A6D0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v52 - v18;
  v20 = a1[3];
  v80 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1C7C0C47C();
  v21 = v70;
  sub_1C7C7DB94();
  if (!v21)
  {
    v22 = v15;
    v53 = v13;
    v70 = 0;
    v23 = v67;
    v24 = v68;
    v25 = v69;
    v26 = sub_1C7C7D9D4();
    v27 = (2 * *(v26 + 16)) | 1;
    v76 = v26;
    v77 = v26 + 32;
    v78 = 0;
    v79 = v27;
    v28 = sub_1C7BDF174();
    if (v28 == 6 || v78 != v79 >> 1)
    {
      v31 = sub_1C7C7D7C4();
      swift_allocError();
      v33 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2627F0, &qword_1C7C84F30);
      *v33 = &type metadata for JPKIXPCResponse;
      sub_1C7C7D954();
      sub_1C7C7D7B4();
      (*(*(v31 - 8) + 104))(v33, *MEMORY[0x1E69E6AF8], v31);
      swift_willThrow();
    }

    else if (v28 > 2u)
    {
      if (v28 == 3)
      {
        LOBYTE(v71) = 3;
        sub_1C7C0C638();
        v40 = v70;
        sub_1C7C7D944();
        v51 = v66;
        if (!v40)
        {
          (*(v57 + 8))(v24, v59);
          (*(v17 + 8))(v19, v16);
          swift_unknownObjectRelease();
          v48 = 0;
          v46 = 0;
          v47 = 0;
          v49 = 0uLL;
          v50 = -96;
          goto LABEL_24;
        }
      }

      else
      {
        v51 = v66;
        if (v28 == 4)
        {
          LOBYTE(v71) = 4;
          sub_1C7C0C524();
          v35 = v65;
          v36 = v70;
          sub_1C7C7D944();
          if (!v36)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263A10, &qword_1C7C8A690);
            sub_1C7C0C578(&qword_1EC263AA0, &qword_1EC263AA8, &protocol conformance descriptor for JPKIInternalTypes.DigitalSignature, MEMORY[0x1E69E6330]);
            v37 = v63;
            sub_1C7C7D9B4();
            (*(v64 + 8))(v35, v37);
            (*(v17 + 8))(v19, v16);
            swift_unknownObjectRelease();
            v46 = 0;
            v47 = 0;
            v48 = v71;
            v49 = 0uLL;
            v50 = 96;
            goto LABEL_24;
          }
        }

        else
        {
          v42 = v66;
          LOBYTE(v71) = 5;
          sub_1C7C0C4D0();
          v43 = v25;
          v44 = v70;
          sub_1C7C7D944();
          if (!v44)
          {
            sub_1C7BED744();
            v45 = v55;
            sub_1C7C7D9B4();
            (*(v62 + 8))(v43, v45);
            (*(v17 + 8))(v19, v16);
            swift_unknownObjectRelease();
            v47 = 0;
            v48 = v71;
            v46 = v72;
            v49 = 0uLL;
            v50 = 0x80;
            v51 = v42;
            goto LABEL_24;
          }
        }
      }
    }

    else if (v28)
    {
      v29 = v70;
      if (v28 == 1)
      {
        LOBYTE(v71) = 1;
        sub_1C7C0C6E0();
        sub_1C7C7D944();
        if (!v29)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263A40, &qword_1C7C8A698);
          sub_1C7C0D3E4(&qword_1EC263AB0, sub_1C7C0D45C, MEMORY[0x1E69E6330]);
          v30 = v58;
          sub_1C7C7D9B4();
          (*(v56 + 8))(v12, v30);
          (*(v17 + 8))(v19, v16);
          swift_unknownObjectRelease();
          v46 = 0;
          v47 = 0;
          v48 = v71;
          v49 = 0uLL;
          v50 = 32;
          v51 = v66;
LABEL_24:
          *v51 = v48;
          *(v51 + 8) = v46;
          *(v51 + 16) = v49;
          *(v51 + 32) = v47;
          *(v51 + 40) = v50;
          return __swift_destroy_boxed_opaque_existential_0Tm(v80);
        }
      }

      else
      {
        LOBYTE(v71) = 2;
        sub_1C7C0C68C();
        sub_1C7C7D944();
        if (!v29)
        {
          type metadata accessor for JPKIInternalTypes.CertificateData();
          sub_1C7C0D3A0(&qword_1EC2636A0, type metadata accessor for JPKIInternalTypes.CertificateData, &protocol conformance descriptor for JPKIInternalTypes.CertificateData);
          v41 = v60;
          sub_1C7C7D9B4();
          (*(v61 + 8))(v23, v41);
          (*(v17 + 8))(v19, v16);
          swift_unknownObjectRelease();
          v46 = 0;
          v47 = 0;
          v48 = v71;
          v49 = 0uLL;
          v50 = 64;
          v51 = v66;
          goto LABEL_24;
        }
      }
    }

    else
    {
      LOBYTE(v71) = 0;
      sub_1C7C0C788();
      v38 = v70;
      sub_1C7C7D944();
      if (!v38)
      {
        sub_1C7C0D4B0();
        v39 = v53;
        sub_1C7C7D9B4();
        (*(v54 + 8))(v22, v39);
        (*(v17 + 8))(v19, v16);
        swift_unknownObjectRelease();
        v48 = v71;
        v46 = v72;
        v49 = v73;
        v47 = v74;
        v50 = v75;
        v51 = v66;
        goto LABEL_24;
      }
    }

    (*(v17 + 8))(v19, v16);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v80);
}

uint64_t sub_1C7C0D3A0(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C7C0D3E4(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC263A40, &qword_1C7C8A698);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C7C0D45C()
{
  result = qword_1EC263AB8;
  if (!qword_1EC263AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263AB8);
  }

  return result;
}

unint64_t sub_1C7C0D4B0()
{
  result = qword_1EC263AC0;
  if (!qword_1EC263AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263AC0);
  }

  return result;
}

unint64_t sub_1C7C0D508()
{
  result = qword_1EC263AC8;
  if (!qword_1EC263AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263AC8);
  }

  return result;
}

unint64_t sub_1C7C0D560()
{
  result = qword_1EC263AD0;
  if (!qword_1EC263AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC263AD0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JPKIInternalTypes.CertificateInfo(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for JPKIInternalTypes.CertificateInfo(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1C7C0D7B4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C7C0D804(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1C7C0D858(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}