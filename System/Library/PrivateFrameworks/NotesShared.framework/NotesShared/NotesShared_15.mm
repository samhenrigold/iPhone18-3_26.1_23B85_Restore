unint64_t MessageChunking.UnsafeAppendingAccumulator.init()@<X0>(unint64_t *a1@<X8>)
{
  result = sub_214FA5B00(MEMORY[0x277D84F90]);
  *a1 = result;
  return result;
}

uint64_t MessageChunking.UnsafeAppendingAccumulator.process<A>(incoming:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v57 = a5;
  v6 = v5;
  v11 = sub_2150A3A00();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for MessageChunking.Message(0, a2, a3, a4);
  MEMORY[0x28223BE20](v16, v17);
  v19 = (&v50 - v18);
  (*(v20 + 16))(&v50 - v18, a1, v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43718, &unk_2150C7780);
    v51 = *(v19 + v21[12]);
    v22 = (v19 + v21[20]);
    v24 = *v22;
    v23 = v22[1];
    v55 = *(v19 + v21[16]);
    *&v56 = v24;
    *(&v56 + 1) = v23;
    (*(v12 + 32))(v15, v19, v11);
    v25 = *v6;
    v26 = *(*v6 + 16);
    v53 = v15;
    v54 = v11;
    v52 = v12;
    if (v26 && (v27 = sub_214FB198C(v15), (v28 & 1) != 0))
    {
      v29 = (*(v25 + 56) + 16 * v27);
      v30 = *v29;
      v31 = v29[1];
      sub_214FCA120(*v29, v31);
    }

    else
    {
      v30 = 0;
      v31 = 0xC000000000000000;
    }

    v37 = a3;
    v62 = v30;
    v63 = v31;
    v60 = MEMORY[0x277CC9318];
    v61 = MEMORY[0x277CC9300];
    v38 = v56;
    v59 = v56;
    v39 = __swift_project_boxed_opaque_existential_1(&v59, MEMORY[0x277CC9318]);
    v41 = *v39;
    v40 = v39[1];
    sub_214FCA120(v30, v31);
    sub_214FCA120(v38, *(&v38 + 1));
    sub_214FEE8FC(v41, v40, &v62);
    sub_214F7EDE4(v30, v31);
    result = __swift_destroy_boxed_opaque_existential_0(&v59);
    if (__OFSUB__(v55, 1))
    {
      __break(1u);
    }

    else
    {
      v42 = v62;
      v43 = v63;
      if (v51 == v55 - 1)
      {
        v44 = v53;
        sub_214FE8B94(v53, &v59);
        sub_214FE1228(v59, *(&v59 + 1));
        *&v59 = *v6;
        v45 = sub_2150A57E0();
        v64 = v37;

        WitnessTable = swift_getWitnessTable();
        sub_214FE7EC0(v42, v43, v45, WitnessTable, v57);
        sub_214F7EDE4(v42, v43);
        sub_214F7EDE4(v56, *(&v56 + 1));

        return (*(v52 + 8))(v44, v54);
      }

      else
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v59 = *v6;
        *v6 = 0x8000000000000000;
        v48 = v42;
        v49 = v53;
        sub_214FEC6A4(v48, v43, v53, isUniquelyReferenced_nonNull_native);
        sub_214F7EDE4(v56, *(&v56 + 1));
        *v6 = v59;
        (*(v52 + 8))(v49, v54);
        return (*(*(a2 - 8) + 56))(v57, 1, 1, a2);
      }
    }
  }

  else
  {
    v33 = *v19;
    v32 = v19[1];
    *&v59 = *v6;
    v34 = sub_2150A57E0();
    v58 = a3;

    v35 = swift_getWitnessTable();
    sub_214FE7EC0(v33, v32, v34, v35, v57);

    return sub_214F7EDE4(v33, v32);
  }

  return result;
}

uint64_t sub_214FE7EC0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v22[1] = a4;
  v23 = a5;
  v8 = sub_2150A57E0();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = v22 - v12;
  v14 = *(a3 - 8);
  MEMORY[0x28223BE20](v11, v15);
  v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[2] = a1;
  v22[3] = a2;
  sub_214FCA120(a1, a2);
  v18 = swift_dynamicCast();
  v19 = *(v14 + 56);
  if (v18)
  {
    v19(v13, 0, 1, a3);
    v20 = *(v14 + 32);
    v20(v17, v13, a3);
    return (v20)(v23, v17, a3);
  }

  else
  {
    v19(v13, 1, 1, a3);
    (*(v9 + 8))(v13, v8);
    sub_2150A3500();
    swift_allocObject();
    sub_2150A34F0();
    sub_2150A34E0();
  }
}

uint64_t MessageChunking.Message.description.getter(unint64_t a1)
{
  v2 = v1;
  v4 = sub_2150A3A00();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = (&v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12, v2, a1);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v4 = *v12;
    v9 = v12[1];
    v41[0] = 0;
    v41[1] = 0xE000000000000000;
    sub_2150A5B20();

    strcpy(v41, ".complete(t=");
    BYTE5(v41[1]) = 0;
    HIWORD(v41[1]) = -5120;
    v40 = *(a1 + 16);
    swift_getMetatypeMetadata();
    v28 = sub_2150A4B30();
    v23 = v29;
    MEMORY[0x2160617E0](v28);

    result = MEMORY[0x2160617E0](0x654C61746164202CLL, 0xEA00000000003D6ELL);
    v30 = v9 >> 62;
    if ((v9 >> 62) <= 1)
    {
      if (!v30)
      {
        v26 = BYTE6(v9);
LABEL_19:
        v40 = v26;
        v36 = sub_2150A6100();
        MEMORY[0x2160617E0](v36);

        MEMORY[0x2160617E0](41, 0xE100000000000000);
        sub_214F7EDE4(v4, v9);
        return v41[0];
      }

      goto LABEL_17;
    }

    v26 = 0;
    if (v30 != 2)
    {
      goto LABEL_19;
    }

    v32 = *(v4 + 16);
    v31 = *(v4 + 24);
    v33 = __OFSUB__(v31, v32);
    v26 = v31 - v32;
    if (!v33)
    {
      goto LABEL_19;
    }

    __break(1u);
LABEL_13:
    if (v26 != 2)
    {
      v27 = 0;
      goto LABEL_23;
    }

    v35 = *(v23 + 16);
    v34 = *(v23 + 24);
    v33 = __OFSUB__(v34, v35);
    v27 = v34 - v35;
    if (!v33)
    {
      goto LABEL_23;
    }

    __break(1u);
LABEL_17:
    LODWORD(v26) = HIDWORD(v4) - v4;
    if (!__OFSUB__(HIDWORD(v4), v4))
    {
      v26 = v26;
      goto LABEL_19;
    }

LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43718, &unk_2150C7780);
  v15 = *(v12 + v14[12]);
  v16 = *(v12 + v14[16]);
  v17 = (v12 + v14[20]);
  v19 = *v17;
  v18 = v17[1];
  (*(v5 + 32))(v9, v12, v4);
  v41[0] = 0;
  v41[1] = 0xE000000000000000;
  sub_2150A5B20();

  strcpy(v41, ".partial(t=");
  HIDWORD(v41[1]) = -352321536;
  v40 = *(a1 + 16);
  swift_getMetatypeMetadata();
  v20 = sub_2150A4B30();
  MEMORY[0x2160617E0](v20);

  MEMORY[0x2160617E0](0x3D6469202CLL, 0xE500000000000000);
  sub_214FEF250(&qword_280C24850, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v21 = sub_2150A6100();
  MEMORY[0x2160617E0](v21);

  result = MEMORY[0x2160617E0](0x3D716573202CLL, 0xE600000000000000);
  if (__OFADD__(v15, 1))
  {
    __break(1u);
    goto LABEL_26;
  }

  v23 = v19;
  v40 = v15 + 1;
  v24 = sub_2150A6100();
  MEMORY[0x2160617E0](v24);

  MEMORY[0x2160617E0](47, 0xE100000000000000);
  v40 = v16;
  v25 = sub_2150A6100();
  MEMORY[0x2160617E0](v25);

  result = MEMORY[0x2160617E0](0x4C6B6E756863202CLL, 0xEB000000003D6E65);
  v26 = v18 >> 62;
  a1 = v18;
  if ((v18 >> 62) > 1)
  {
    goto LABEL_13;
  }

  if (!v26)
  {
    v27 = BYTE6(v18);
LABEL_23:
    v40 = v27;
    v38 = sub_2150A6100();
    MEMORY[0x2160617E0](v38);

    MEMORY[0x2160617E0](41, 0xE100000000000000);
    sub_214F7EDE4(v23, a1);
    v37 = v41[0];
    (*(v5 + 8))(v9, v4);
    return v37;
  }

  LODWORD(v27) = HIDWORD(v19) - v19;
  if (!__OFSUB__(HIDWORD(v19), v19))
  {
    v27 = v27;
    goto LABEL_23;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_214FE8650@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
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
    v10 = sub_2150A3250();
    if (v10)
    {
      v11 = sub_2150A3270();
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
      result = sub_2150A3260();
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
  v10 = sub_2150A3250();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_2150A3270();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_2150A3260();
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

uint64_t sub_214FE8880(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
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
    v10 = sub_214FEEAC8(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_214F7EDE4(a3, a4);
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
  sub_214FE8650(v13, a3, a4, &v12);
  v10 = v4;
  sub_214F7EDE4(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_214FE8A10(uint64_t a1)
{
  v2 = v1;
  v3 = sub_214FB18DC(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v10 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_214FECEE8();
    v7 = v10;
  }

  v8 = *(*(v7 + 56) + 8 * v5);
  sub_214F40DE8(v5, v7);
  *v2 = v7;
  return v8;
}

double sub_214FE8AA4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_214FB1B98(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v15 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_214FEDD50();
      v9 = v15;
    }

    v10 = *(v9 + 48);
    v11 = sub_2150A3750();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56) + 40 * v7;
    v13 = *(v12 + 16);
    *a2 = *v12;
    *(a2 + 16) = v13;
    *(a2 + 32) = *(v12 + 32);
    sub_214F412F4(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = -1;
  }

  return result;
}

double sub_214FE8B94@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_214FB198C(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_214FEE26C();
      v9 = v13;
    }

    v10 = *(v9 + 48);
    v11 = sub_2150A3A00();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    *a2 = *(*(v9 + 56) + 16 * v7);
    sub_214F41954(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = xmmword_2150C7210;
  }

  return result;
}

uint64_t sub_214FE8C70(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43970, &qword_2150C7DA0);
  v35 = v4;
  result = sub_2150A5E90();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
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
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_2150A64B0();
      sub_2150A4BB0();
      result = sub_2150A64E0();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_214FE8F14(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42EC0, &qword_2150C53F8);
  result = sub_2150A5E90();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
      }

      result = sub_2150A5770();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v4 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_214FE9184(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42DC8, &qword_2150C5460);
  v37 = v4;
  result = sub_2150A5E90();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_2150A64B0();
      sub_2150A4BB0();
      result = sub_2150A64E0();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_214FE9444(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v42 = sub_2150A3E80();
  v5 = *(v42 - 8);
  MEMORY[0x28223BE20](v42, v6);
  v41 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43958, &unk_2150C7D40);
  v40 = v4;
  result = sub_2150A5E90();
  v10 = result;
  if (*(v8 + 16))
  {
    v36 = v2;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v37 = (v5 + 16);
    v38 = v8;
    v39 = v5;
    v17 = (v5 + 32);
    v18 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = *(v8 + 56);
      v25 = *(*(v8 + 48) + 8 * v23);
      v26 = *(v39 + 72);
      v27 = v24 + v26 * v23;
      if (v40)
      {
        (*v17)(v41, v27, v42);
      }

      else
      {
        (*v37)(v41, v27, v42);
      }

      sub_2150A64B0();
      MEMORY[0x216063080](v25);
      result = sub_2150A64E0();
      v28 = -1 << *(v10 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v19 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v10 + 48) + 8 * v19) = v25;
      result = (*v17)(*(v10 + 56) + v26 * v19, v41, v42);
      ++*(v10 + 16);
      v8 = v38;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v8 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v12, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v35;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_214FE97A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v32 = v6;
  result = sub_2150A5E90();
  v9 = result;
  if (*(v7 + 16))
  {
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
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v23 = *(*(v7 + 56) + 8 * v21);
      if ((v32 & 1) == 0)
      {
      }

      sub_2150A64B0();
      MEMORY[0x216063080](v22);
      result = sub_2150A64E0();
      v24 = -1 << *(v9 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v16 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v16 + 8 * v26);
          if (v30 != -1)
          {
            v17 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v25) & ~*(v16 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      *(*(v9 + 56) + 8 * v17) = v23;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v32 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v31 = 1 << *(v7 + 32);
    v5 = v4;
    if (v31 >= 64)
    {
      bzero((v7 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v31;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_214FE9A30(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43940, &qword_2150C7D28);
  v34 = v4;
  result = sub_2150A5E90();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_2150A64B0();
      sub_2150A4BB0();
      result = sub_2150A64E0();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_214FE9CD8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_2150A3A00();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43160, &qword_2150C5F30);
  v45 = v4;
  result = sub_2150A5E90();
  v12 = result;
  if (*(v10 + 16))
  {
    v50 = v9;
    v41 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v42 = (v6 + 16);
    v43 = v10;
    v44 = v6;
    v46 = (v6 + 32);
    v19 = result + 64;
    while (v17)
    {
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v49 = *(v44 + 72);
      v28 = v27 + v49 * v26;
      if (v45)
      {
        (*v46)(v50, v28, v5);
        v29 = (*(v10 + 56) + 16 * v26);
        v30 = *v29;
        v47 = v29[1];
        v48 = v30;
      }

      else
      {
        (*v42)(v50, v28, v5);
        v31 = (*(v10 + 56) + 16 * v26);
        v32 = *v31;
        v47 = v31[1];
        v48 = v32;
      }

      sub_214FEF250(&qword_280C241B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_2150A49A0();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = (*v46)(*(v12 + 48) + v49 * v20, v50, v5);
      v21 = (*(v12 + 56) + 16 * v20);
      v22 = v47;
      *v21 = v48;
      v21[1] = v22;
      ++*(v12 + 16);
      v10 = v43;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v25 = v14[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v17 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v40 = 1 << *(v10 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_214FEA0C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CA42768, &unk_2150C3F10);
  v37 = v4;
  result = sub_2150A5E90();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v2;
    v36 = v5;
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v24 = (*(v5 + 56) + 32 * v21);
      v25 = v24[1];
      v39 = *v24;
      v40 = *v22;
      v26 = v24[3];
      v38 = v24[2];
      if ((v37 & 1) == 0)
      {
      }

      sub_2150A64B0();
      sub_2150A4BB0();
      result = sub_2150A64E0();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v40;
      v16[1] = v23;
      v17 = (*(v7 + 56) + 32 * v15);
      *v17 = v39;
      v17[1] = v25;
      v17[2] = v38;
      v17[3] = v26;
      ++*(v7 + 16);
      v5 = v36;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_214FEA394(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  LODWORD(v4) = a2;
  v63 = sub_2150A3A00();
  v5 = *(v63 - 8);
  v7 = MEMORY[0x28223BE20](v63, v6);
  v62 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v68 = &v55 - v10;
  v11 = type metadata accessor for NoteEditActivityEvent.Parents(0);
  v66 = *(v11 - 8);
  v67 = v11;
  v13 = MEMORY[0x28223BE20](v11, v12);
  v15 = (&v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v55 - v17;
  v19 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42F58, &qword_2150C54A0);
  v70 = sub_2150A5E90();
  if (*(v19 + 16))
  {
    v65 = v15;
    v55 = v2;
    v20 = 0;
    v21 = *(v19 + 64);
    v57 = (v19 + 64);
    v22 = 1 << *(v19 + 32);
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    else
    {
      v23 = -1;
    }

    v24 = v23 & v21;
    v56 = (v22 + 63) >> 6;
    v59 = (v5 + 32);
    v58 = (v5 + 8);
    v25 = v70 + 64;
    v61 = v4;
    v60 = v19;
    v64 = v18;
    while (v24)
    {
      v28 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
LABEL_15:
      v32 = v28 | (v20 << 6);
      v33 = *(v66 + 72);
      v34 = *(v19 + 48) + v33 * v32;
      if (v4)
      {
        sub_214FEF300(v34, v18, type metadata accessor for NoteEditActivityEvent.Parents);
        v69 = *(*(v19 + 56) + 8 * v32);
      }

      else
      {
        sub_214FEF298(v34, v18, type metadata accessor for NoteEditActivityEvent.Parents);
        v69 = *(*(v19 + 56) + 8 * v32);
      }

      sub_2150A64B0();
      v35 = v18;
      v36 = v65;
      sub_214FEF298(v35, v65, type metadata accessor for NoteEditActivityEvent.Parents);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v38 = *v36;
      if (EnumCaseMultiPayload == 1)
      {
        v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA430B0, &unk_2150C7D90);
        v40 = *(v39 + 64);
        v4 = *v59;
        v41 = v63;
        (*v59)(v68, v36 + *(v39 + 48), v63);
        v42 = v36 + v40;
        v43 = v62;
        v4(v62, v42, v41);
        MEMORY[0x216063080](1);
        sub_2150A5790();
        sub_214FEF250(&qword_280C241B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
        v44 = v68;
        sub_2150A49B0();
        LOBYTE(v4) = v61;
        sub_2150A49B0();

        v45 = *v58;
        (*v58)(v43, v41);
        v46 = v41;
        v19 = v60;
        v45(v44, v46);
      }

      else
      {
        MEMORY[0x216063080](0);
        sub_2150A5790();
      }

      result = sub_2150A64E0();
      v47 = -1 << *(v70 + 32);
      v48 = result & ~v47;
      v49 = v48 >> 6;
      v18 = v64;
      if (((-1 << v48) & ~*(v25 + 8 * (v48 >> 6))) == 0)
      {
        v50 = 0;
        v51 = (63 - v47) >> 6;
        while (++v49 != v51 || (v50 & 1) == 0)
        {
          v52 = v49 == v51;
          if (v49 == v51)
          {
            v49 = 0;
          }

          v50 |= v52;
          v53 = *(v25 + 8 * v49);
          if (v53 != -1)
          {
            v26 = __clz(__rbit64(~v53)) + (v49 << 6);
            goto LABEL_7;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v48) & ~*(v25 + 8 * (v48 >> 6)))) | v48 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      v27 = v70;
      sub_214FEF300(v18, *(v70 + 48) + v33 * v26, type metadata accessor for NoteEditActivityEvent.Parents);
      *(*(v27 + 56) + 8 * v26) = v69;
      ++*(v27 + 16);
    }

    v29 = v20;
    result = v57;
    while (1)
    {
      v20 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v20 >= v56)
      {
        break;
      }

      v31 = v57[v20];
      ++v29;
      if (v31)
      {
        v28 = __clz(__rbit64(v31));
        v24 = (v31 - 1) & v31;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v55;
      goto LABEL_37;
    }

    v54 = 1 << *(v19 + 32);
    v3 = v55;
    if (v54 >= 64)
    {
      bzero(v57, ((v54 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v57 = -1 << v54;
    }

    *(v19 + 16) = 0;
  }

LABEL_37:
  *v3 = v70;
  return result;
}

uint64_t sub_214FEA9A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_2150A3750();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42EE8, &qword_2150C5420);
  v47 = v4;
  result = sub_2150A5E90();
  v12 = result;
  if (*(v10 + 16))
  {
    v50 = v9;
    v51 = v5;
    v43 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v44 = (v6 + 16);
    v45 = v6;
    v48 = (v6 + 32);
    v19 = result + 64;
    v46 = v10;
    while (v17)
    {
      v24 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v27 = v24 | (v13 << 6);
      v28 = *(v10 + 48);
      v49 = *(v6 + 72);
      v29 = v28 + v49 * v27;
      v30 = 40 * v27;
      if (v47)
      {
        (*v48)(v50, v29, v51);
        v31 = *(v10 + 56) + v30;
        v32 = *(v31 + 32);
        v33 = *(v31 + 16);
        v52 = *v31;
        v53 = v33;
        v54 = v32;
      }

      else
      {
        (*v44)(v50, v29, v51);
        sub_214F43C14(*(v10 + 56) + v30, &v52, &qword_27CA436C0, &unk_2150C7D80);
      }

      sub_214FEF250(&qword_280C241C8, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
      result = sub_2150A49A0();
      v34 = -1 << *(v12 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v19 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        v6 = v45;
        v10 = v46;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v19 + 8 * v36);
          if (v40 != -1)
          {
            v20 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v35) & ~*(v19 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
      v6 = v45;
      v10 = v46;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = (*v48)(*(v12 + 48) + v49 * v20, v50, v51);
      v21 = *(v12 + 56) + 40 * v20;
      v22 = v52;
      v23 = v53;
      *(v21 + 32) = v54;
      *v21 = v22;
      *(v21 + 16) = v23;
      ++*(v12 + 16);
    }

    v25 = v13;
    while (1)
    {
      v13 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v26 = v14[v13];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v17 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_34;
    }

    v41 = 1 << *(v10 + 32);
    v3 = v43;
    if (v41 >= 64)
    {
      bzero(v14, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v41;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_214FEADA4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_2150A3750();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42EF8, &qword_2150C5430);
  v40 = v4;
  result = sub_2150A5E90();
  v12 = result;
  if (*(v10 + 16))
  {
    v44 = v9;
    v36 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v10;
    v39 = v6;
    v41 = (v6 + 32);
    v19 = result + 64;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v43 = *(v39 + 72);
      v26 = v25 + v43 * v24;
      if (v40)
      {
        (*v41)(v44, v26, v5);
        v42 = *(*(v10 + 56) + 8 * v24);
      }

      else
      {
        (*v37)(v44, v26, v5);
        v42 = *(*(v10 + 56) + 8 * v24);
      }

      sub_214FEF250(&qword_280C241C8, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
      result = sub_2150A49A0();
      v27 = -1 << *(v12 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v19 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v19 + 8 * v29);
          if (v33 != -1)
          {
            v20 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v28) & ~*(v19 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = (*v41)(*(v12 + 48) + v43 * v20, v44, v5);
      *(*(v12 + 56) + 8 * v20) = v42;
      ++*(v12 + 16);
      v10 = v38;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v10 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v14, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v34;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_214FEB180(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_2150A3A00();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v45 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42ED0, &qword_2150C5408);
  v44 = v4;
  result = sub_2150A5E90();
  v11 = result;
  if (*(v9 + 16))
  {
    v49 = v5;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v40 = v2;
    v41 = (v6 + 16);
    v42 = v9;
    v43 = v6;
    v46 = (v6 + 32);
    v18 = result + 64;
    v19 = v45;
    while (v16)
    {
      v22 = __clz(__rbit64(v16));
      v23 = (v16 - 1) & v16;
LABEL_15:
      v26 = v22 | (v12 << 6);
      v27 = *(v9 + 48) + *(v43 + 72) * v26;
      v47 = *(v43 + 72);
      v48 = v23;
      if (v44)
      {
        (*v46)(v19, v27, v49);
        v28 = (*(v9 + 56) + 16 * v26);
        v30 = *v28;
        v29 = v28[1];
      }

      else
      {
        (*v41)(v19, v27, v49);
        v31 = (*(v9 + 56) + 16 * v26);
        v30 = *v31;
        v29 = v31[1];
        sub_214FCA120(*v31, v29);
      }

      sub_214FEF250(&qword_280C241B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_2150A49A0();
      v32 = -1 << *(v11 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v18 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        v19 = v45;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v18 + 8 * v34);
          if (v38 != -1)
          {
            v20 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v33) & ~*(v18 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
      v19 = v45;
LABEL_7:
      *(v18 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = (*v46)(*(v11 + 48) + v47 * v20, v19, v49);
      v21 = (*(v11 + 56) + 16 * v20);
      *v21 = v30;
      v21[1] = v29;
      ++*(v11 + 16);
      v9 = v42;
      v16 = v48;
    }

    v24 = v12;
    while (1)
    {
      v12 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v25 = v13[v12];
      ++v24;
      if (v25)
      {
        v22 = __clz(__rbit64(v25));
        v23 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_34;
    }

    v39 = 1 << *(v9 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v13, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v39;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_214FEB568(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA42F10, &unk_2150C7D60);
  v33 = v4;
  result = sub_2150A5E90();
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
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_214D72488(v24, v34);
      }

      else
      {
        sub_214F50074(v24, v34);
      }

      sub_2150A64B0();
      sub_2150A4BB0();
      result = sub_2150A64E0();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_214D72488(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_214FEB820(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for PersistedActivityEvent(0);
  v40 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v42 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44B80, &unk_2150C7D50);
  v41 = v4;
  result = sub_2150A5E90();
  v10 = result;
  if (*(v8 + 16))
  {
    v38 = v2;
    v39 = v8;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = *(v8 + 56);
      v25 = (*(v8 + 48) + 16 * v23);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(v40 + 72);
      v29 = v24 + v28 * v23;
      if (v41)
      {
        sub_214FEF300(v29, v42, type metadata accessor for PersistedActivityEvent);
      }

      else
      {
        sub_214FEF298(v29, v42, type metadata accessor for PersistedActivityEvent);
      }

      sub_2150A64B0();
      sub_2150A4BB0();
      result = sub_2150A64E0();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v26;
      v19[1] = v27;
      result = sub_214FEF300(v42, *(v10 + 56) + v28 * v18, type metadata accessor for PersistedActivityEvent);
      ++*(v10 + 16);
      v8 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v8 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

void sub_214FEBB98(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_214FB18DC(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_214FE8F14(v13, a3 & 1);
      v8 = sub_214FB18DC(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_214FEF0BC();
        sub_2150A63E0();
        __break(1u);
        return;
      }
    }

    else
    {
      v16 = v8;
      sub_214FECEE8();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;

    return;
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v19 = v18[2];
  v12 = __OFADD__(v19, 1);
  v20 = v19 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v20;

  v21 = a2;
}

uint64_t sub_214FEBD18(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_214FB1920(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_214FED1C4();
      goto LABEL_7;
    }

    sub_214FE9444(v13, a3 & 1);
    v24 = sub_214FB1920(a2);
    if ((v14 & 1) == (v25 & 1))
    {
      v10 = v24;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    type metadata accessor for CloudSessionPhase(0);
    result = sub_2150A63E0();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = sub_2150A3E80();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_214FEC9D0(v10, a2, a1, v16);
}

unint64_t sub_214FEBE94(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v12 = *v5;
  result = sub_214FB1920(a2);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 < v18 || (a3 & 1) != 0)
    {
      sub_214FE97A8(v18, a3 & 1, a4, a5);
      result = sub_214FB1920(a2);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_16:
        type metadata accessor for CloudSessionPhase(0);
        result = sub_2150A63E0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = result;
      sub_214FED42C(a4, a5);
      result = v21;
    }
  }

  v23 = *v8;
  if ((v19 & 1) == 0)
  {
    v23[(result >> 6) + 8] |= 1 << result;
    *(v23[6] + 8 * result) = a2;
    *(v23[7] + 8 * result) = a1;
    v24 = v23[2];
    v17 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v17)
    {
      v23[2] = v25;
      return result;
    }

    goto LABEL_15;
  }

  *(v23[7] + 8 * result) = a1;
}

void sub_214FEC004(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_214F30094(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_214FE9A30(v16, a4 & 1);
      v11 = sub_214F30094(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_2150A63E0();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_214FED578();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

void sub_214FEC180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_214F30094(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_214FE9184(v18, a5 & 1);
      v13 = sub_214F30094(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        sub_2150A63E0();
        __break(1u);
        return;
      }
    }

    else
    {
      v21 = v13;
      sub_214FED04C();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;

    return;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v25 = (v23[6] + 16 * v13);
  *v25 = a3;
  v25[1] = a4;
  v26 = (v23[7] + 16 * v13);
  *v26 = a1;
  v26[1] = a2;
  v27 = v23[2];
  v17 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v28;
}

uint64_t sub_214FEC308(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_2150A3750();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_214FB1B98(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_214FEDD50();
      goto LABEL_7;
    }

    sub_214FEA9A0(v18, a3 & 1);
    v24 = sub_214FB1B98(a2);
    if ((v19 & 1) == (v25 & 1))
    {
      v15 = v24;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_214FECACC(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_2150A63E0();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7] + 40 * v15;

  return sub_214FEF1E0(a1, v22);
}

void sub_214FEC4D8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_2150A3750();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_214FB1B98(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_214FEDFEC();
      goto LABEL_7;
    }

    sub_214FEADA4(v18, a3 & 1);
    v22 = sub_214FB1B98(a2);
    if ((v19 & 1) == (v23 & 1))
    {
      v15 = v22;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      sub_214FECB98(v15, v12, a1, v21);
      return;
    }

LABEL_15:
    sub_2150A63E0();
    __break(1u);
    return;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v21[7] + 8 * v15) = a1;
}

uint64_t sub_214FEC6A4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v31 = a1;
  v9 = sub_2150A3A00();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v4;
  v16 = sub_214FB198C(a3);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 < v19 || (a4 & 1) == 0)
  {
    if (v21 >= v19 && (a4 & 1) == 0)
    {
      sub_214FEE26C();
      goto LABEL_9;
    }

    sub_214FEB180(v19, a4 & 1);
    v22 = sub_214FB198C(a3);
    if ((v20 & 1) == (v23 & 1))
    {
      v16 = v22;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_2150A63E0();
    __break(1u);
    return result;
  }

LABEL_9:
  v24 = v31;
  v25 = *v5;
  if (v20)
  {
    v26 = (v25[7] + 16 * v16);
    v27 = *v26;
    v28 = v26[1];
    *v26 = v31;
    v26[1] = a2;

    return sub_214F7EDE4(v27, v28);
  }

  else
  {
    (*(v10 + 16))(v13, a3, v9);
    return sub_214FECC50(v16, v13, v24, a2, v25);
  }
}

_OWORD *sub_214FEC880(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_214F30094(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_214FEE4F8();
      v11 = v19;
      goto LABEL_8;
    }

    sub_214FEB568(v16, a4 & 1);
    v11 = sub_214F30094(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_2150A63E0();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v22);

    return sub_214D72488(a1, v22);
  }

  else
  {
    sub_214FECD10(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_214FEC9D0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = sub_2150A3E80();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

unint64_t sub_214FECA7C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

uint64_t sub_214FECACC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_2150A3750();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v11 = a4[7] + 40 * a1;
  *(v11 + 32) = *(a3 + 32);
  v12 = *(a3 + 16);
  *v11 = *a3;
  *(v11 + 16) = v12;
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_214FECB98(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_2150A3750();
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

uint64_t sub_214FECC50(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = sub_2150A3A00();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

_OWORD *sub_214FECD10(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_214D72488(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

id sub_214FECD7C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43970, &qword_2150C7DA0);
  v2 = *v0;
  v3 = sub_2150A5E80();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_214FECEE8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42EC0, &qword_2150C53F8);
  v2 = *v0;
  v3 = sub_2150A5E80();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_214FED04C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42DC8, &qword_2150C5460);
  v2 = *v0;
  v3 = sub_2150A5E80();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_214FED1C4()
{
  v1 = v0;
  v30 = sub_2150A3E80();
  v32 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v2);
  v29 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43958, &unk_2150C7D40);
  v4 = *v0;
  v5 = sub_2150A5E80();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v4 + 16);
    v31 = v6;
    *(v6 + 16) = v10;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v32 + 16;
    v26 = v4 + 64;
    for (i = v32 + 32; v13; result = (*(v20 + 32))(*(v24 + 56) + v21, v23, v22))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_14:
      v18 = v15 | (v9 << 6);
      v19 = *(*(v4 + 48) + 8 * v18);
      v20 = v32;
      v21 = *(v32 + 72) * v18;
      v23 = v29;
      v22 = v30;
      (*(v32 + 16))(v29, *(v4 + 56) + v21, v30);
      v24 = v31;
      *(*(v31 + 48) + 8 * v18) = v19;
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v25;
        v6 = v31;
        goto LABEL_18;
      }

      v17 = *(v26 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_214FED42C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_2150A5E80();
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
        *(*(v6 + 48) + 8 * v19) = *(*(v4 + 48) + 8 * v19);
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

void *sub_214FED578()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43940, &qword_2150C7D28);
  v2 = *v0;
  v3 = sub_2150A5E80();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_214FED6E8()
{
  v1 = v0;
  v36 = sub_2150A3A00();
  v38 = *(v36 - 8);
  MEMORY[0x28223BE20](v36, v2);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43160, &qword_2150C5F30);
  v4 = *v0;
  v5 = sub_2150A5E80();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v32 = v38 + 32;
    v33 = v38 + 16;
    v34 = v4;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v38;
        v21 = *(v38 + 72) * v19;
        v22 = v35;
        v23 = v36;
        (*(v38 + 16))(v35, *(v4 + 48) + v21, v36);
        v24 = 16 * v19;
        v25 = (*(v4 + 56) + 16 * v19);
        v26 = *v25;
        v27 = v25[1];
        v28 = v37;
        (*(v20 + 32))(*(v37 + 48) + v21, v22, v23);
        v29 = (*(v28 + 56) + v24);
        *v29 = v26;
        v29[1] = v27;
        v4 = v34;

        v14 = v39;
      }

      while (v39);
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

        v1 = v30;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v31 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_214FED974()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CA42768, &unk_2150C3F10);
  v2 = *v0;
  v3 = sub_2150A5E80();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        v20 = *v19;
        v21 = v19[1];
        v17 *= 32;
        v22 = (*(v2 + 56) + v17);
        v23 = *v22;
        v24 = v22[1];
        v26 = v22[2];
        v25 = v22[3];
        v27 = (*(v4 + 48) + v18);
        *v27 = v20;
        v27[1] = v21;
        v28 = (*(v4 + 56) + v17);
        *v28 = v23;
        v28[1] = v24;
        v28[2] = v26;
        v28[3] = v25;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_214FEDB08()
{
  v1 = v0;
  v2 = type metadata accessor for NoteEditActivityEvent.Parents(0);
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v28 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42F58, &qword_2150C54A0);
  v5 = *v0;
  v6 = sub_2150A5E80();
  v7 = v6;
  if (*(v5 + 16))
  {
    v26 = v1;
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, (v5 + 64), 8 * v9);
    }

    v27 = v5 + 64;
    v10 = 0;
    v11 = *(v5 + 16);
    v30 = v7;
    *(v7 + 16) = v11;
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = v28;
        v22 = *(v29 + 72) * v20;
        sub_214FEF298(*(v5 + 48) + v22, v28, type metadata accessor for NoteEditActivityEvent.Parents);
        v23 = *(*(v5 + 56) + 8 * v20);
        v24 = v30;
        sub_214FEF300(v21, *(v30 + 48) + v22, type metadata accessor for NoteEditActivityEvent.Parents);
        *(*(v24 + 56) + 8 * v20) = v23;
        result = v23;
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v26;
        v7 = v30;
        goto LABEL_18;
      }

      v19 = *(v27 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_214FEDD50()
{
  v1 = v0;
  v2 = sub_2150A3750();
  v3 = *(v2 - 8);
  v35 = v2;
  v36 = v3;
  MEMORY[0x28223BE20](v2, v4);
  v34 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42EE8, &qword_2150C5420);
  v6 = *v0;
  v7 = sub_2150A5E80();
  v8 = v7;
  if (*(v6 + 16))
  {
    v31 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v37 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v32 = v36 + 32;
    v33 = v36 + 16;
    if (v16)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v38 = (v16 - 1) & v16;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v23 = v35;
        v22 = v36;
        v24 = *(v36 + 72) * v21;
        v25 = v34;
        (*(v36 + 16))(v34, *(v6 + 48) + v24, v35);
        v21 *= 40;
        sub_214F43C14(*(v6 + 56) + v21, v39, &qword_27CA436C0, &unk_2150C7D80);
        v26 = v37;
        result = (*(v22 + 32))(*(v37 + 48) + v24, v25, v23);
        v27 = *(v26 + 56) + v21;
        v28 = v39[0];
        v29 = v39[1];
        *(v27 + 32) = v40;
        *v27 = v28;
        *(v27 + 16) = v29;
        v16 = v38;
      }

      while (v38);
    }

    v19 = v12;
    v8 = v37;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v31;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v38 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

char *sub_214FEDFEC()
{
  v1 = v0;
  v34 = sub_2150A3750();
  v36 = *(v34 - 8);
  MEMORY[0x28223BE20](v34, v2);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42EF8, &qword_2150C5430);
  v4 = *v0;
  v5 = sub_2150A5E80();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;

        v14 = v37;
      }

      while (v37);
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

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

char *sub_214FEE26C()
{
  v1 = v0;
  v2 = sub_2150A3A00();
  v3 = *(v2 - 8);
  v39 = v2;
  v40 = v3;
  MEMORY[0x28223BE20](v2, v4);
  v38 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42ED0, &qword_2150C5408);
  v6 = *v0;
  v7 = sub_2150A5E80();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v33 = v1;
    v34 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v41 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v35 = v40 + 32;
    v36 = v40 + 16;
    v37 = v6;
    if (v16)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v42 = (v16 - 1) & v16;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = v39;
        v23 = v40;
        v24 = *(v40 + 72) * v21;
        v25 = v38;
        (*(v40 + 16))(v38, *(v6 + 48) + v24, v39);
        v26 = *(v6 + 56);
        v27 = 16 * v21;
        v28 = (v26 + 16 * v21);
        v29 = *v28;
        v30 = v28[1];
        v31 = v41;
        (*(v23 + 32))(*(v41 + 48) + v24, v25, v22);
        v32 = (*(v31 + 56) + v27);
        v6 = v37;
        *v32 = v29;
        v32[1] = v30;
        result = sub_214FCA120(v29, v30);
        v16 = v42;
      }

      while (v42);
    }

    v19 = v12;
    v8 = v41;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v33;
        goto LABEL_18;
      }

      v20 = *(v34 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v42 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_214FEE4F8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA42F10, &unk_2150C7D60);
  v2 = *v0;
  v3 = sub_2150A5E80();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        sub_214F50074(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_214D72488(v25, (*(v4 + 56) + v22));
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

  return result;
}

void *sub_214FEE69C()
{
  v1 = v0;
  v2 = type metadata accessor for PersistedActivityEvent(0);
  v34 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v33 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44B80, &unk_2150C7D50);
  v5 = *v0;
  v6 = sub_2150A5E80();
  v7 = v6;
  if (*(v5 + 16))
  {
    v32 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v35 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v36 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = 16 * v20;
        v22 = *(v5 + 56);
        v23 = (*(v5 + 48) + 16 * v20);
        v24 = v5;
        v25 = *v23;
        v26 = v23[1];
        v27 = v33;
        v28 = *(v34 + 72) * v20;
        sub_214FEF298(v22 + v28, v33, type metadata accessor for PersistedActivityEvent);
        v29 = v35;
        v30 = (*(v35 + 48) + v21);
        *v30 = v25;
        v30[1] = v26;
        v5 = v24;
        sub_214FEF300(v27, *(v29 + 56) + v28, type metadata accessor for PersistedActivityEvent);

        v15 = v36;
      }

      while (v36);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v32;
        v7 = v35;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v36 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

uint64_t sub_214FEE8FC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      return sub_2150A3780();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_214FEEA34(v4, v5);
  }

  if (v3 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return sub_214FEEA34(v4, v5);
  }

  return sub_2150A3780();
}

uint64_t sub_214FEEA34(uint64_t a1, uint64_t a2)
{
  result = sub_2150A3250();
  if (!result || (result = sub_2150A3270(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_2150A3260();
      return sub_2150A3780();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_214FEEAC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_2150A3250();
  v11 = result;
  if (result)
  {
    result = sub_2150A3270();
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

  sub_2150A3260();
  sub_214FE8650(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_214FEEB80(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
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
          sub_214FCA120(a3, a4);
          return sub_214FE8880(v13, a2, a3, a4) & 1;
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

unint64_t sub_214FEED30()
{
  result = qword_27CA43720;
  if (!qword_27CA43720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43720);
  }

  return result;
}

unint64_t sub_214FEED84()
{
  result = qword_27CA43728[0];
  if (!qword_27CA43728[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CA43728);
  }

  return result;
}

void sub_214FEEDE8(uint64_t a1)
{
  sub_214FEEE5C();
  if (v1 <= 0x3F)
  {
    sub_214FEEE8C(319, v1);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_214FEEE5C()
{
  result = qword_27CA437B0;
  if (!qword_27CA437B0)
  {
    result = MEMORY[0x277CC9318];
    atomic_store(MEMORY[0x277CC9318], &qword_27CA437B0);
  }

  return result;
}

void sub_214FEEE8C(uint64_t a1, uint64_t a2)
{
  if (!qword_27CA437B8[0])
  {
    MEMORY[0x28223BE20](a1, a2);
    sub_2150A3A00();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, qword_27CA437B8);
    }
  }
}

unint64_t sub_214FEF0BC()
{
  result = qword_280C24528;
  if (!qword_280C24528)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280C24528);
  }

  return result;
}

uint64_t sub_214FEF108(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43960, &qword_2150C7D70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_214FEF170(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43960, &qword_2150C7D70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_214FEF1E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA436C0, &unk_2150C7D80);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_214FEF250(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_214FEF298(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_214FEF300(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void static DispatchTimeInterval.timeInterval(_:)(void *a1@<X8>, double a2@<D0>)
{
  v3 = a2 * 1000000000.0;
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    return;
  }

  *a1 = v3;
  v4 = *MEMORY[0x277D85168];
  v5 = sub_2150A43F0();
  v6 = *(*(v5 - 8) + 104);

  v6(a1, v4, v5);
}

uint64_t Command.run()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_214FEF4A4, 0, 0);
}

uint64_t sub_214FEF4A4()
{
  v1 = v0[2];
  v2 = *(v0[4] + 32);
  v1[3] = swift_getAssociatedTypeWitness();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v8 = (v2 + *v2);
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_214FEF5EC;
  v5 = v0[4];
  v6 = v0[3];

  return v8(boxed_opaque_existential_1, v6, v5);
}

uint64_t sub_214FEF5EC()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_214FEF720, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_214FEF720()
{
  __swift_deallocate_boxed_opaque_existential_0(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t static Commands.commandNames.getter(uint64_t a1, uint64_t a2)
{
  v9[5] = (*(a2 + 16))();
  v9[2] = a1;
  v9[3] = a2;
  v4 = sub_2150A4FD0();
  WitnessTable = swift_getWitnessTable();
  v7 = sub_214F86288(sub_214FEF864, v9, v4, MEMORY[0x277D837D0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v6);

  return v7;
}

uint64_t sub_214FEF864@<X0>(uint64_t *a1@<X8>)
{
  result = (*(*(*(v1 + 24) + 8) + 32))(*(v1 + 16));
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t static Commands<>.allCommands.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness, v4);
  sub_2150A5B40();
  swift_getAssociatedConformanceWitness();
  return sub_2150A4FE0();
}

uint64_t Commands<>.name.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2150A4DF0();
  v3 = sub_2150A4D30();
  v5 = sub_214FBDA8C(v3, v4);

  return v5;
}

uint64_t dispatch thunk of AnyCommand.run()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 48) + **(a3 + 48));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_214F53FB0;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of Command.run()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 32) + **(a3 + 32));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_214F557A8;

  return v9(a1, a2, a3);
}

void __swiftcall ICQueryType.filterSelection(managedObjectContext:accountObjectID:)(ICFilterSelection *__return_ptr retstr, NSManagedObjectContext managedObjectContext, NSManagedObjectID accountObjectID)
{
  isa = accountObjectID.super.isa;
  v105 = managedObjectContext.super.isa;
  v102 = type metadata accessor for ICQueryType.DateRange(0);
  v5 = MEMORY[0x28223BE20](v102, v4);
  v99 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v98 = &v98 - v8;
  v9 = type metadata accessor for ICQueryType.RelativeDateRange(0);
  v11 = MEMORY[0x28223BE20](v9 - 8, v10);
  v101 = &v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v100 = &v98 - v14;
  v16 = MEMORY[0x277D84F90];
  v110 = *v3;
  v15 = v110;
  v111 = MEMORY[0x277D84F90];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA426B8, &qword_2150CD140);
  inited = swift_initStackObject();
  v108 = xmmword_2150C25D0;
  *(inited + 16) = xmmword_2150C25D0;
  *(inited + 32) = v15;

  sub_214FF2398(inited, &v111);
  swift_setDeallocating();
  sub_214FF323C(inited + 32);
  v20 = v111;
  v111 = v16;
  v21 = *(v20 + 16);
  v103 = v20;
  if (v21)
  {
    v107 = v17;
    v22 = (v20 + 32);
    v106 = MEMORY[0x277D84F90];
    while (1)
    {
      v26 = *v22++;
      v25 = v26;
      if (v26 <= 4)
      {
        if (v25 <= 1)
        {
          if (!v25)
          {
            v110 = v15;
            v19.value.super.isa = v105;
            ICQueryType.tagSelection(managedObjectContext:)(0, v19);
            v53 = v52;
            if (![v52 isNonEmpty])
            {

              goto LABEL_8;
            }

            v23 = v53;
            goto LABEL_4;
          }

          if (v25 == 1)
          {
            v109 = v15;
            v39 = swift_initStackObject();
            *(v39 + 16) = v108;
            *(v39 + 32) = v15;

            sub_214FF10B0(1, v39, &v110);
            swift_setDeallocating();
            sub_214FF323C(v39 + 32);
            v40 = v110;
            if ((~v110 & 0xF000000000000007) != 0)
            {
              if (((v110 >> 59) & 0x1E | (v110 >> 2) & 1) == 9)
              {
                v41 = swift_projectBox();
                v42 = v100;
                sub_214FF3290(v41, v100, type metadata accessor for ICQueryType.RelativeDateRange);
                sub_214F94748(v40);
                v43 = *v42;
                v44 = v43 != 5;
                v45 = 7;
                if (v43 == 5)
                {
                  v45 = 5;
                }

                v46 = 3;
                if (v43 != 3)
                {
                  v46 = 4;
                }

                if (*v42 <= 4u)
                {
                  v44 = 0;
                  v45 = v46;
                }

                v47 = 2;
                if (v43 == 1)
                {
                  v47 = 1;
                }

                if (!*v42)
                {
                  v47 = *v42;
                }

                v48 = *v42 > 2u && v44;
                if (*v42 <= 2u)
                {
                  v49 = v47;
                }

                else
                {
                  v49 = v45;
                }

                v50 = [objc_allocWithZone(ICDateCreatedFilterTypeSelection) initWithSelectionType_];
                if (!v48)
                {
                  goto LABEL_136;
                }

                if ((v42[16] & 1) == 0)
                {
                  goto LABEL_81;
                }

                goto LABEL_49;
              }

              sub_214F94748(v110);
            }

            v109 = v15;
            v76 = swift_initStackObject();
            *(v76 + 16) = v108;
            *(v76 + 32) = v15;

            sub_214FF10B0(1, v76, &v110);
            swift_setDeallocating();
            sub_214FF323C(v76 + 32);
            v77 = v110;
            if ((~v110 & 0xF000000000000007) != 0)
            {
              if (((v110 >> 59) & 0x1E | (v110 >> 2) & 1) != 8)
              {
                goto LABEL_122;
              }

              v78 = swift_projectBox();
              v79 = v98;
              sub_214FF3290(v78, v98, type metadata accessor for ICQueryType.DateRange);
              sub_214F94748(v77);
              v80 = ICDateCreatedFilterTypeSelection;
              goto LABEL_119;
            }
          }
        }

        else
        {
          if (v25 != 2)
          {
            if (v25 == 3)
            {
              v110 = v15;
              v34 = 3;
            }

            else
            {
              if (v25 != 4)
              {
                goto LABEL_8;
              }

              v110 = v15;
              v34 = 4;
            }

            v19.value.super.isa = ICQueryType.participantsSelection(filterType:managedObjectContext:accountObjectID:)(v34, v105, isa);
            if (!v19.value.super.isa)
            {
              goto LABEL_8;
            }

            v23 = v19.value.super.isa;
            goto LABEL_4;
          }

          v109 = v15;
          v58 = swift_initStackObject();
          *(v58 + 16) = v108;
          *(v58 + 32) = v15;

          sub_214FF10B0(2, v58, &v110);
          swift_setDeallocating();
          sub_214FF323C(v58 + 32);
          v59 = v110;
          if ((~v110 & 0xF000000000000007) != 0)
          {
            if (((v110 >> 59) & 0x1E | (v110 >> 2) & 1) == 0xF)
            {
              v60 = swift_projectBox();
              v42 = v101;
              sub_214FF3290(v60, v101, type metadata accessor for ICQueryType.RelativeDateRange);
              sub_214F94748(v59);
              v61 = *v42;
              v62 = v61 != 5;
              v63 = 7;
              if (v61 == 5)
              {
                v63 = 5;
              }

              v64 = 3;
              if (v61 != 3)
              {
                v64 = 4;
              }

              if (*v42 <= 4u)
              {
                v62 = 0;
                v63 = v64;
              }

              v65 = 2;
              if (v61 == 1)
              {
                v65 = 1;
              }

              if (!*v42)
              {
                v65 = *v42;
              }

              v66 = *v42 > 2u && v62;
              if (*v42 <= 2u)
              {
                v67 = v65;
              }

              else
              {
                v67 = v63;
              }

              v50 = [objc_allocWithZone(ICDateEditedFilterTypeSelection) initWithSelectionType_];
              if (!v66)
              {
                goto LABEL_136;
              }

              if ((v42[16] & 1) == 0)
              {
LABEL_81:
                v51 = sub_2150A5350();
LABEL_82:
                [v50 setRelativeRangeAmount_];

                v68 = v42[1];
                if (v68 > 2)
                {
                  if (v68 == 3)
                  {
                    v70 = 4;
                    goto LABEL_135;
                  }

                  if (v68 == 4)
                  {
                    v70 = 5;
                    goto LABEL_135;
                  }
                }

                else
                {
                  v69 = 3;
                  if (v68 == 1)
                  {
                    v69 = 2;
                  }

                  if (v42[1])
                  {
                    v70 = v69;
                  }

                  else
                  {
                    v70 = 1;
                  }

LABEL_135:
                  [v50 setRelativeRangeSelectionType_];
                }

LABEL_136:
                v94 = v50;
                MEMORY[0x216061A60]();
                if (*((v111 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v111 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_2150A4F10();
                }

                sub_2150A4F70();

                sub_214FF32F8(v42, type metadata accessor for ICQueryType.RelativeDateRange);
                goto LABEL_139;
              }

LABEL_49:
              v51 = 0;
              goto LABEL_82;
            }

            sub_214F94748(v110);
          }

          v109 = v15;
          v84 = swift_initStackObject();
          *(v84 + 16) = v108;
          *(v84 + 32) = v15;

          sub_214FF10B0(2, v84, &v110);
          swift_setDeallocating();
          sub_214FF323C(v84 + 32);
          v77 = v110;
          if ((~v110 & 0xF000000000000007) != 0)
          {
            if (((v110 >> 59) & 0x1E | (v110 >> 2) & 1) != 0xE)
            {
LABEL_122:
              v19.value.super.isa = v77;
LABEL_123:
              sub_214F94748(v19.value.super.isa);
              goto LABEL_8;
            }

            v85 = swift_projectBox();
            v79 = v99;
            sub_214FF3290(v85, v99, type metadata accessor for ICQueryType.DateRange);
            sub_214F94748(v77);
            v80 = ICDateEditedFilterTypeSelection;
LABEL_119:
            v86 = [objc_allocWithZone(v80) initWithSelectionType_];
            v87 = sub_2150A38F0();
            v88 = sub_2150A38F0();
            [v86 setSpecificDateRangeFrom:v87 to:v88];

            v89 = v86;
            MEMORY[0x216061A60]();
            if (*((v111 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v111 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_2150A4F10();
            }

            sub_2150A4F70();

            sub_214FF32F8(v79, type metadata accessor for ICQueryType.DateRange);
LABEL_7:
            v106 = v111;
          }
        }
      }

      else
      {
        if (v25 > 7)
        {
          switch(v25)
          {
            case 8:
              v109 = v15;
              v74 = swift_initStackObject();
              *(v74 + 16) = v108;
              *(v74 + 32) = v15;

              sub_214FF10B0(8, v74, &v110);
              swift_setDeallocating();
              sub_214FF323C(v74 + 32);
              v19.value.super.isa = v110;
              if ((~v110 & 0xF000000000000007) == 0)
              {
                goto LABEL_8;
              }

              if (((v110 >> 59) & 0x1E | (v110 >> 2) & 1) != 0x14)
              {
                goto LABEL_123;
              }

              v75 = *((v110 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
              sub_214F94748(v110);
              v37 = ~v75;
              v38 = ICQuickNotesFilterTypeSelection;
              break;
            case 9:
              v109 = v15;
              v56 = swift_initStackObject();
              *(v56 + 16) = v108;
              *(v56 + 32) = v15;

              sub_214FF10B0(9, v56, &v110);
              swift_setDeallocating();
              sub_214FF323C(v56 + 32);
              v19.value.super.isa = v110;
              if ((~v110 & 0xF000000000000007) == 0)
              {
                goto LABEL_8;
              }

              if (((v110 >> 59) & 0x1E | (v110 >> 2) & 1) != 0x11)
              {
                goto LABEL_123;
              }

              v57 = *((v110 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
              sub_214F94748(v110);
              v37 = ~v57;
              v38 = ICPinnedNotesFilterTypeSelection;
              break;
            case 10:
              v109 = v15;
              v35 = swift_initStackObject();
              *(v35 + 16) = v108;
              *(v35 + 32) = v15;

              sub_214FF10B0(10, v35, &v110);
              swift_setDeallocating();
              sub_214FF323C(v35 + 32);
              v19.value.super.isa = v110;
              if ((~v110 & 0xF000000000000007) == 0)
              {
                goto LABEL_8;
              }

              if (((v110 >> 59) & 0x1E | (v110 >> 2) & 1) != 0x10)
              {
                goto LABEL_123;
              }

              v36 = *((v110 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
              sub_214F94748(v110);
              v37 = ~v36;
              v38 = ICLockedNotesFilterTypeSelection;
              break;
            default:
              goto LABEL_8;
          }

          [objc_allocWithZone(v38) initWithInclusionType_];
          goto LABEL_101;
        }

        if (v25 == 5)
        {
          v109 = v15;
          v71 = swift_initStackObject();
          *(v71 + 16) = v108;
          *(v71 + 32) = v15;

          sub_214FF10B0(5, v71, &v110);
          swift_setDeallocating();
          sub_214FF323C(v71 + 32);
          if ((~v110 & 0xF000000000000007) != 0)
          {
            if (((v110 >> 59) & 0x1E | (v110 >> 2) & 1) == 5)
            {
              v72 = *((v110 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
              sub_214F94748(v110);
              if (v72)
              {
                v73 = 0;
              }

              else
              {
                v73 = 3;
              }

              [objc_allocWithZone(ICChecklistsFilterTypeSelection) initWithSelectionType_];
LABEL_94:
              MEMORY[0x216061A60]();
              if (*((v111 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v111 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_2150A4F10();
              }

              sub_2150A4F70();
LABEL_139:
              v106 = v111;
              goto LABEL_8;
            }

            sub_214F94748(v110);
          }

          v109 = v15;
          v90 = swift_initStackObject();
          *(v90 + 16) = v108;
          *(v90 + 32) = v15;

          sub_214FF10B0(5, v90, &v110);
          swift_setDeallocating();
          sub_214FF323C(v90 + 32);
          if ((~v110 & 0xF000000000000007) != 0 && (v91 = (v110 >> 59) & 0x1E | (v110 >> 2) & 1, sub_214F94748(v110), v91 == 6))
          {
            [objc_allocWithZone(ICChecklistsFilterTypeSelection) initWithSelectionType_];
          }

          else
          {
            v109 = v15;
            v92 = swift_initStackObject();
            *(v92 + 16) = v108;
            *(v92 + 32) = v15;

            sub_214FF10B0(5, v92, &v110);
            swift_setDeallocating();
            sub_214FF323C(v92 + 32);
            if ((~v110 & 0xF000000000000007) == 0)
            {
              goto LABEL_8;
            }

            v93 = (v110 >> 59) & 0x1E | (v110 >> 2) & 1;
            sub_214F94748(v110);
            if (v93 != 7)
            {
              goto LABEL_8;
            }

            [objc_allocWithZone(ICChecklistsFilterTypeSelection) initWithSelectionType_];
          }

LABEL_101:
          MEMORY[0x216061A60]();
          if (*((v111 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v111 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_2150A4F10();
          }

          sub_2150A4F70();
          goto LABEL_7;
        }

        if (v25 != 6)
        {
          if (v25 != 7)
          {
            goto LABEL_8;
          }

          v110 = v15;
          v27 = swift_initStackObject();
          *(v27 + 16) = v108;
          *(v27 + 32) = v15;

          v28 = sub_214FF16C0(v27, 0);
          v30 = v29;
          swift_setDeallocating();
          sub_214FF323C(v27 + 32);
          if (!v30)
          {
            goto LABEL_8;
          }

          v31 = objc_allocWithZone(ICFoldersFilterTypeSelection);

          v32 = sub_2150A4EB0();

          v33 = [v31 initWithManagedObjectContext:v105 inclusionType:v28 folderIdentifiers:v32];

          v23 = v33;
LABEL_4:
          v24 = v23;
          MEMORY[0x216061A60]();
          if (*((v111 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v111 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_2150A4F10();
          }

          sub_2150A4F70();

          goto LABEL_7;
        }

        v109 = v15;
        v54 = swift_initStackObject();
        *(v54 + 16) = v108;
        *(v54 + 32) = v15;

        sub_214FF10B0(6, v54, &v110);
        swift_setDeallocating();
        sub_214FF323C(v54 + 32);
        if ((~v110 & 0xF000000000000007) != 0)
        {
          if (((v110 >> 59) & 0x1E | (v110 >> 2) & 1) == 4)
          {
            v55 = *((v110 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
            sub_214F94748(v110);
            [objc_allocWithZone(ICAttachmentsFilterTypeSelection) initWithAttachmentSection_];
            goto LABEL_94;
          }

          sub_214F94748(v110);
        }

        v109 = v15;
        v81 = swift_initStackObject();
        *(v81 + 16) = v108;
        *(v81 + 32) = v15;

        sub_214FF10B0(6, v81, &v110);
        swift_setDeallocating();
        sub_214FF323C(v81 + 32);
        v19.value.super.isa = v110;
        if ((~v110 & 0xF000000000000007) != 0)
        {
          if (((v110 >> 59) & 0x1E | (v110 >> 2) & 1) != 3)
          {
            goto LABEL_123;
          }

          v82 = *((v110 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          sub_214F94748(v110);
          if (v82)
          {
            v83 = 1;
          }

          else
          {
            v83 = 9;
          }

          [objc_allocWithZone(ICAttachmentsFilterTypeSelection) initWithSelectionType_];
          goto LABEL_101;
        }
      }

LABEL_8:
      if (!--v21)
      {
        goto LABEL_141;
      }
    }
  }

  v106 = v16;
LABEL_141:

  v110 = v15;
  v95 = sub_214FF18A8();
  v96 = objc_allocWithZone(ICFilterSelection);
  sub_214D55670(0, &qword_27CA43978, off_278192CD8);
  v97 = sub_2150A4EB0();

  [v96 initWithFilterTypeSelections:v97 joinOperator:v95];
}

void __swiftcall ICQueryType.tagSelection(managedObjectContext:)(ICTagSelection *__return_ptr retstr, NSManagedObjectContext_optional managedObjectContext)
{
  isa = managedObjectContext.value.super.isa;
  v4 = *v2;
  v5 = [objc_allocWithZone(ICTagSelection) initWithManagedObjectContext_];
  if (isa)
  {
    v29 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA426B8, &qword_2150CD140);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2150C25D0;
    *(inited + 32) = v4;

    v7 = isa;
    sub_214FF19EC(inited, v30);
    swift_setDeallocating();
    sub_214FF323C(inited + 32);
    v8 = v30[0];
    if ((~v30[0] & 0xF000000000000007) != 0)
    {
      [v5 setMode_];
      v29 = v8;
      v9 = swift_initStackObject();
      *(v9 + 16) = xmmword_2150C25D0;
      *(v9 + 32) = v8;

      sub_214FF19EC(v9, v30);
      swift_setDeallocating();
      sub_214FF323C(v9 + 32);
      if ((~v30[0] & 0xF000000000000007) != 0)
      {
        v10 = v30[1];
        sub_214F94748(v30[0]);
      }

      else
      {
        v10 = 1;
      }

      v11 = [v5 setTagOperator_];
      v30[0] = v8;
      sub_214FF1DD4(v11);
      v29 = v12;
      v13 = v7;

      sub_214FF3358(v14, v13, &v29);
      v16 = v15;

      sub_214F84524(v16);

      v17 = v29;
      sub_214D55670(0, &qword_27CA44A80, 0x277CBE448);
      sub_214FC7854();
      v18 = sub_2150A52D0();
      [v5 setIncludedObjectIDs_];

      sub_214F8448C(v17);

      v19 = sub_2150A52D0();

      [v5 setUnresolvedIncludedTagIdentifiers_];

      v30[0] = v8;
      sub_214FF1FB4(v20);
      v29 = v21;
      v22 = v13;

      sub_214FF3358(v23, v22, &v29);
      v25 = v24;

      sub_214F84524(v25);

      v26 = v29;
      v27 = sub_2150A52D0();
      [v5 setExcludedObjectIDs_];

      sub_214F8448C(v26);

      v28 = sub_2150A52D0();

      [v5 setUnresolvedExcludedTagIdentifiers_];

      sub_214F94748(v8);
    }

    else
    {
    }
  }
}

void sub_214FF10B0(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    v6 = (a2 + 32);
    while (2)
    {
      v8 = *v6++;
      v7 = v8;
      switch((v8 >> 59) & 0x1E | (v8 >> 2) & 1)
      {
        case 0uLL:
          goto LABEL_21;
        case 1uLL:
          v11 = *((v7 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA426B8, &qword_2150CD140);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_2150C25D0;
          *(inited + 32) = v11;

          sub_214FF10B0(a1, inited, &v15);
          swift_setDeallocating();
          sub_214FF323C(inited + 32);
          v13 = v15;
          v14 = ~v15 & 0xF000000000000007;

          if (!v14)
          {
            goto LABEL_4;
          }

          *a3 = v13;
          return;
        case 2uLL:
          v7 &= 0xFFFFFFFFFFFFFFBuLL;
LABEL_21:
          v9 = *(v7 + 16);

          sub_214FF10B0(a1, v9, &v15);

          v10 = v15;
          if ((~v15 & 0xF000000000000007) != 0)
          {
            goto LABEL_30;
          }

          goto LABEL_4;
        case 3uLL:
        case 4uLL:
          if (a1 == 6)
          {
            goto LABEL_28;
          }

          goto LABEL_4;
        case 5uLL:
        case 6uLL:
        case 7uLL:
          if (a1 == 5)
          {
            goto LABEL_28;
          }

          goto LABEL_4;
        case 8uLL:
        case 9uLL:
          if (a1 == 1)
          {
            goto LABEL_28;
          }

          goto LABEL_4;
        case 0xBuLL:
          if (a1 == 7)
          {
            goto LABEL_28;
          }

          goto LABEL_4;
        case 0xCuLL:
        case 0xDuLL:
          if (a1 != 4)
          {
            goto LABEL_4;
          }

          goto LABEL_28;
        case 0xEuLL:
        case 0xFuLL:
          if (a1 == 2)
          {
            goto LABEL_28;
          }

          goto LABEL_4;
        case 0x10uLL:
          if (a1 == 10)
          {
            goto LABEL_28;
          }

          goto LABEL_4;
        case 0x11uLL:
          if (a1 == 9)
          {
            goto LABEL_28;
          }

          goto LABEL_4;
        case 0x12uLL:
        case 0x13uLL:
          if (a1 == 3)
          {
            goto LABEL_28;
          }

          goto LABEL_4;
        case 0x14uLL:
          if (a1 != 8)
          {
            goto LABEL_4;
          }

LABEL_28:
          *a3 = v7;

          return;
        default:
LABEL_4:
          if (--v4)
          {
            continue;
          }

          goto LABEL_29;
      }
    }
  }

LABEL_29:
  v10 = 0xF000000000000007;
LABEL_30:
  *a3 = v10;
}

id ICQueryType.participantsSelection(filterType:managedObjectContext:accountObjectID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  if (a1 == 3)
  {
    v6 = off_278192F58;
LABEL_5:
    v7 = [objc_allocWithZone(*v6) initWithManagedObjectContext:a2 accountObjectID:a3];
    v31[0] = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA426B8, &qword_2150CD140);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2150C25D0;
    *(inited + 32) = v5;

    v9 = sub_214FF21E0(inited, a1);
    v11 = v10;
    swift_setDeallocating();
    sub_214FF323C(inited + 32);
    if (v11)
    {
      if (v11[2] != 1 || v9 != 1)
      {
        goto LABEL_34;
      }

      objc_opt_self();
      v13 = swift_dynamicCastObjCClass();
      if (!v13)
      {
        goto LABEL_34;
      }

      v14 = v13;
      v16 = v11[4];
      v15 = v11[5];

      v17 = v7;
      v18 = [v14 currentUserID];
      if (v18)
      {
        v19 = v18;
        v20 = sub_2150A4AD0();
        v22 = v21;

        if (v15)
        {
          if (v22)
          {
            if (v16 == v20 && v22 == v15)
            {

LABEL_38:

              [v14 setSelectionType_];

              return v7;
            }

            v30 = sub_2150A6270();

            if (v30)
            {
              goto LABEL_38;
            }

            goto LABEL_33;
          }
        }

        else if (!v22)
        {
          goto LABEL_38;
        }
      }

      else if (!v15)
      {
        goto LABEL_38;
      }

LABEL_33:

LABEL_34:
      [v7 setSelectionType_];
      [v7 setJoinOperator_];
      sub_214F8448C(v11);

      v28 = sub_2150A52D0();

      [v7 setParticipantUserIDs_];

      goto LABEL_35;
    }

    if (a1 == 4)
    {
      v23 = swift_initStackObject();
      *(v23 + 16) = xmmword_2150C25D0;
      *(v23 + 32) = v5;

      sub_214FF10B0(4, v23, v31);
      swift_setDeallocating();
      sub_214FF323C(v23 + 32);
      v24 = v31[0];
      if ((~v31[0] & 0xF000000000000007) != 0)
      {
        if (((v31[0] >> 59) & 0x1E | (LODWORD(v31[0]) >> 2) & 1) == 0xC)
        {
LABEL_22:
          v25 = *((v24 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          sub_214F94748(v24);
          if (v25)
          {
            v26 = 1;
          }

          else
          {
            v26 = 3;
          }

          [v7 setSelectionType_];
          goto LABEL_35;
        }

        goto LABEL_28;
      }
    }

    else
    {
      v27 = swift_initStackObject();
      *(v27 + 16) = xmmword_2150C25D0;
      *(v27 + 32) = v5;

      sub_214FF10B0(3, v27, v31);
      swift_setDeallocating();
      sub_214FF323C(v27 + 32);
      v24 = v31[0];
      if ((~v31[0] & 0xF000000000000007) != 0)
      {
        if (((v31[0] >> 59) & 0x1E | (LODWORD(v31[0]) >> 2) & 1) == 0x12)
        {
          goto LABEL_22;
        }

LABEL_28:
        sub_214F94748(v24);
      }
    }

LABEL_35:

    return v7;
  }

  if (a1 == 4)
  {
    v6 = off_278192DD0;
    goto LABEL_5;
  }

  return 0;
}

uint64_t sub_214FF16C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = (a1 + 32);
  while (1)
  {
    v6 = *v4++;
    v5 = v6;
    v7 = (v6 >> 59) & 0x1E | (v6 >> 2) & 1;
    if (v7)
    {
      break;
    }

    v10 = sub_214FF16C0(v13, a2);
    v15 = v14;

    if (v15)
    {
      return v10;
    }

LABEL_4:
    if (!--v2)
    {
      return 0;
    }
  }

  if (v7 == 1)
  {
    v8 = *((v5 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA426B8, &qword_2150CD140);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2150C25D0;
    *(inited + 32) = v8;

    v10 = sub_214FF16C0(inited, 1);
    v12 = v11;
    swift_setDeallocating();
    sub_214FF323C(inited + 32);

    if (v12)
    {
      return v10;
    }

    goto LABEL_4;
  }

  if (v7 != 2)
  {
    goto LABEL_4;
  }

  v17 = *((v5 & 0xFFFFFFFFFFFFFFBLL) + 0x10);

  if (*(sub_214FF2D64(v18) + 16) != *(v17 + 16))
  {

    a2 = sub_214FF16C0(v17, a2);
  }

  return a2;
}

uint64_t sub_214FF18A8()
{
  if ((*v0 >> 59) & 0x1E | (*v0 >> 2) & 1)
  {
    return 0;
  }

  v2 = *(*v0 + 16);
  v3 = *(v2 + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0xF000000000000007;
  do
  {
    while (1)
    {
      if (v5 >= *(v2 + 16))
      {
        __break(1u);
        return result;
      }

      v7 = *(v2 + 32 + 8 * v5);
      v8 = (v7 >> 59) & 0x1E | (v7 >> 2) & 1;
      result = v7;
      if (!v8 || v8 == 2)
      {

        result = sub_214F94748(v6);
        v6 = v7;
        break;
      }

      if (v8 != 10)
      {
        break;
      }

      v4 = 1;
      if (v3 - 1 == v5++)
      {

        goto LABEL_15;
      }
    }

    ++v5;
  }

  while (v3 != v5);

  if ((v4 & 1) == 0)
  {
    sub_214F94748(v6);
    return 0;
  }

LABEL_15:
  if ((~v6 & 0xF000000000000007) == 0)
  {
    return 0;
  }

  sub_214F94748(v6);
  return ((v6 >> 59) & 0x1E | (v6 >> 2) & 1) == 2;
}

uint64_t sub_214FF19EC@<X0>(uint64_t result@<X0>, unint64_t *a2@<X8>)
{
  v2 = *(result + 16);
  if (!v2)
  {
    v16 = 0;
    v5 = 0xF000000000000007;
    goto LABEL_32;
  }

  v17 = a2;
  v3 = (result + 32);
  while (1)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = (v6 >> 59) & 0x1E | (v6 >> 2) & 1;
    if (v7 > 1)
    {
      if (v7 == 2)
      {
        v10 = *((v5 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        if (!*(v10 + 16))
        {
          goto LABEL_12;
        }

        v11 = *(v10 + 32);
        v4 = (v11 >> 59) & 0x1E;
        if (((v11 >> 59) & 0x1E | (v11 >> 2) & 1) == 1)
        {
          v4 = (*((v11 & 0xFFFFFFFFFFFFFFBLL) + 0x10) >> 59) & 0x1ELL;
        }

        if (v4 == 22)
        {

          v16 = 2;
          goto LABEL_31;
        }

        sub_214FF19EC(v10, &v18);

        v5 = v18;
        if ((~v18 & 0xF000000000000007) != 0)
        {
          goto LABEL_27;
        }

        goto LABEL_11;
      }

      if ((v7 - 22) < 2)
      {

        v16 = 1;
        goto LABEL_31;
      }

      goto LABEL_12;
    }

    if (!v7)
    {
      break;
    }

    if (v7 == 1)
    {
      v8 = *((v5 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA426B8, &qword_2150CD140);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2150C25D0;
      *(inited + 32) = v8;

      sub_214FF19EC(inited, &v18);
      swift_setDeallocating();
      sub_214FF323C(inited + 32);
      v5 = v18;
      if ((~v18 & 0xF000000000000007) != 0)
      {
LABEL_27:
        v16 = v19;

        goto LABEL_31;
      }

LABEL_11:
    }

LABEL_12:
    if (!--v2)
    {
      v16 = 0;
      v5 = 0xF000000000000007;
      goto LABEL_31;
    }
  }

  v12 = *(v5 + 16);
  if (!*(v12 + 16))
  {
    goto LABEL_12;
  }

  v13 = *(v12 + 32);
  v14 = (v13 >> 59) & 0x1E;
  if (((v13 >> 59) & 0x1E | (v13 >> 2) & 1) == 1)
  {
    v14 = (*((v13 & 0xFFFFFFFFFFFFFFBLL) + 0x10) >> 59) & 0x1ELL;
  }

  if (v14 == 22)
  {

    v16 = 1;
    goto LABEL_31;
  }

  sub_214FF19EC(v12, &v18);

  v15 = v18;
  if ((~v18 & 0xF000000000000007) == 0)
  {
    goto LABEL_11;
  }

  v16 = v19;

  v5 = v15;
LABEL_31:
  a2 = v17;
LABEL_32:
  *a2 = v5;
  a2[1] = v16;
  return result;
}

uint64_t sub_214FF1CF4()
{
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA426B8, &qword_2150CD140);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2150C25D0;
  *(inited + 32) = v4;

  sub_214FF3090(inited, &v5);
  swift_setDeallocating();
  sub_214FF323C(inited + 32);
  if ((~v5 & 0xF000000000000007) == 0)
  {
    return 0;
  }

  if (((v5 >> 59) & 0x1E | (v5 >> 2) & 1) != 0x17)
  {
    sub_214F94748(v5);
    return 0;
  }

  v2 = *((v5 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  sub_214F94748(v5);
  if (v2)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

void sub_214FF1DD4(uint64_t a1)
{
  v26 = *v1;
  v29 = v26;
  sub_214FF2E7C(a1);
  v3 = v2;
  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = v2 + 40;
    v25 = *(v2 + 16);
    v22 = v4 - 1;
    v7 = MEMORY[0x277D84F90];
    v23 = v2 + 40;
    do
    {
      v24 = v7;
      v8 = (v6 + 16 * v5);
      v9 = v5;
      while (1)
      {
        if (v9 >= *(v3 + 16))
        {
          __break(1u);
          return;
        }

        v11 = *(v8 - 1);
        v10 = *v8;
        v5 = v9 + 1;
        v27[2] = v26;

        sub_214FF1FB4(v12);
        v14 = v13;
        v27[0] = v11;
        v27[1] = v10;
        MEMORY[0x28223BE20](v13, v15);
        v21[2] = v27;
        v16 = sub_215068408(sub_214FF353C, v21, v14);

        if ((v16 & 1) == 0)
        {
          break;
        }

        v8 += 2;
        ++v9;
        if (v25 == v5)
        {
          goto LABEL_13;
        }
      }

      v7 = v24;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = v7;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_214F86A20(0, *(v7 + 16) + 1, 1);
        v7 = v28;
      }

      v19 = *(v7 + 16);
      v18 = *(v7 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_214F86A20((v18 > 1), v19 + 1, 1);
        v7 = v28;
      }

      *(v7 + 16) = v19 + 1;
      v20 = v7 + 16 * v19;
      *(v20 + 32) = v11;
      *(v20 + 40) = v10;
      v6 = v23;
    }

    while (v22 != v9);
  }

LABEL_13:
}

void sub_214FF1FB4(uint64_t a1)
{
  v2 = *v1;
  v3 = (*v1 >> 59) & 0x1E | (*v1 >> 2) & 1;
  if (v3)
  {
    if (v3 == 1)
    {
      v19 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      if (((v19 >> 59) & 0x1E | (v19 >> 2) & 1) == 0x16)
      {
        v20 = v19 & 0xFFFFFFFFFFFFFFBLL;
        v22 = *(v20 + 16);
        v21 = *(v20 + 24);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DC0, &qword_2150C2720);
        v23 = swift_allocObject();
        *(v23 + 16) = xmmword_2150C25D0;
        *(v23 + 32) = v22;
        *(v23 + 40) = v21;
      }

      else
      {
        sub_214FF1FB4(a1);
      }

      return;
    }

    if (v3 != 2)
    {
      return;
    }

    v2 &= 0xFFFFFFFFFFFFFFBuLL;
  }

  v4 = *(v2 + 16);
  v5 = *(v4 + 16);

  if (!v5)
  {
LABEL_26:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (v7 < *(v4 + 16))
  {
    sub_214FF1FB4(v6);
    v10 = *(v9 + 16);
    v11 = *(v8 + 2);
    v12 = v11 + v10;
    if (__OFADD__(v11, v10))
    {
      goto LABEL_29;
    }

    v13 = v9;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v12 <= *(v8 + 3) >> 1)
    {
      if (*(v13 + 16))
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v11 <= v12)
      {
        v15 = v11 + v10;
      }

      else
      {
        v15 = v11;
      }

      v8 = sub_21505F4D0(isUniquelyReferenced_nonNull_native, v15, 1, v8);
      if (*(v13 + 16))
      {
LABEL_19:
        if ((*(v8 + 3) >> 1) - *(v8 + 2) < v10)
        {
          goto LABEL_31;
        }

        swift_arrayInitWithCopy();

        if (v10)
        {
          v16 = *(v8 + 2);
          v17 = __OFADD__(v16, v10);
          v18 = v16 + v10;
          if (v17)
          {
            goto LABEL_32;
          }

          *(v8 + 2) = v18;
        }

        goto LABEL_8;
      }
    }

    if (v10)
    {
      goto LABEL_30;
    }

LABEL_8:
    if (v5 == ++v7)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

uint64_t sub_214FF21E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v6 = *v4++;
      v5 = v6;
      v7 = (v6 >> 59) & 0x1E | (v6 >> 2) & 1;
      if (v7 == 2)
      {
        v13 = *((v5 & 0xFFFFFFFFFFFFFFBLL) + 0x10);

        if (*(sub_214FF2C0C(v14, a2) + 16) == *(v13 + 16))
        {

          return 2;
        }

        v10 = sub_214FF21E0(v13, a2);
        v16 = v15;

        if (v16)
        {
          return v10;
        }
      }

      else if (!v7)
      {
        v8 = *(v5 + 16);

        if (*(sub_214FF2C0C(v9, a2) + 16) == *(v8 + 16))
        {

          return 1;
        }

        v10 = sub_214FF21E0(v8, a2);
        v12 = v11;

        if (v12)
        {
          return v10;
        }
      }

      --v2;
    }

    while (v2);
  }

  return 0;
}

void sub_214FF2398(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = 0;
    v5 = a1 + 32;
    do
    {
      v8 = *(v5 + 8 * v4);
      switch((v8 >> 59) & 0x1E | (v8 >> 2) & 1)
      {
        case 0uLL:
          goto LABEL_75;
        case 1uLL:
          v57 = *((v8 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA426B8, &qword_2150CD140);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_2150C25D0;
          *(inited + 32) = v57;

          sub_214FF2398(inited, a2);
          swift_setDeallocating();
          sub_214FF323C(inited + 32);

          goto LABEL_6;
        case 2uLL:
          v8 &= 0xFFFFFFFFFFFFFFBuLL;
LABEL_75:
          v56 = *(v8 + 16);

          sub_214FF2398(v56, a2);

          goto LABEL_6;
        case 3uLL:
        case 4uLL:
          v9 = *a2;
          v26 = *(*a2 + 16);
          v27 = v26;
          v28 = 32;
          while (v27)
          {
            v29 = *(v9 + v28);
            v28 += 8;
            --v27;
            if (v29 == 6)
            {
              goto LABEL_6;
            }
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_215060370(0, v26 + 1, 1, v9);
          }

          v47 = *(v9 + 16);
          v46 = *(v9 + 24);
          if (v47 >= v46 >> 1)
          {
            v9 = sub_215060370((v46 > 1), v47 + 1, 1, v9);
          }

          *(v9 + 16) = v47 + 1;
          v6 = v9 + 8 * v47;
          v7 = 6;
          goto LABEL_4;
        case 5uLL:
        case 6uLL:
        case 7uLL:
          v9 = *a2;
          v10 = *(*a2 + 16);
          v11 = v10;
          v12 = 32;
          while (v11)
          {
            v13 = *(v9 + v12);
            v12 += 8;
            --v11;
            if (v13 == 5)
            {
              goto LABEL_6;
            }
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_215060370(0, v10 + 1, 1, v9);
          }

          v39 = *(v9 + 16);
          v38 = *(v9 + 24);
          if (v39 >= v38 >> 1)
          {
            v9 = sub_215060370((v38 > 1), v39 + 1, 1, v9);
          }

          *(v9 + 16) = v39 + 1;
          v6 = v9 + 8 * v39;
          v7 = 5;
          goto LABEL_4;
        case 8uLL:
        case 9uLL:
          v9 = *a2;
          v22 = *(*a2 + 16);
          v23 = v22;
          v24 = 32;
          while (v23)
          {
            v25 = *(v9 + v24);
            v24 += 8;
            --v23;
            if (v25 == 1)
            {
              goto LABEL_6;
            }
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_215060370(0, v22 + 1, 1, v9);
          }

          v45 = *(v9 + 16);
          v44 = *(v9 + 24);
          if (v45 >= v44 >> 1)
          {
            v9 = sub_215060370((v44 > 1), v45 + 1, 1, v9);
          }

          *(v9 + 16) = v45 + 1;
          v6 = v9 + 8 * v45;
          v7 = 1;
          goto LABEL_4;
        case 0xBuLL:
          v9 = *a2;
          v63 = *(*a2 + 16);
          v64 = v63;
          v65 = 32;
          while (v64)
          {
            v66 = *(v9 + v65);
            v65 += 8;
            --v64;
            if (v66 == 7)
            {
              goto LABEL_6;
            }
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_215060370(0, v63 + 1, 1, v9);
          }

          v78 = *(v9 + 16);
          v77 = *(v9 + 24);
          if (v78 >= v77 >> 1)
          {
            v9 = sub_215060370((v77 > 1), v78 + 1, 1, v9);
          }

          *(v9 + 16) = v78 + 1;
          v73 = v9 + 8 * v78;
          v74 = 7;
          goto LABEL_109;
        case 0xCuLL:
        case 0xDuLL:
          v9 = *a2;
          v14 = *(*a2 + 16);
          v15 = v14;
          v16 = 32;
          while (v15)
          {
            v17 = *(v9 + v16);
            v16 += 8;
            --v15;
            if (v17 == 4)
            {
              goto LABEL_6;
            }
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_215060370(0, v14 + 1, 1, v9);
          }

          v41 = *(v9 + 16);
          v40 = *(v9 + 24);
          if (v41 >= v40 >> 1)
          {
            v9 = sub_215060370((v40 > 1), v41 + 1, 1, v9);
          }

          *(v9 + 16) = v41 + 1;
          v6 = v9 + 8 * v41;
          v7 = 4;
          goto LABEL_4;
        case 0xEuLL:
        case 0xFuLL:
          v9 = *a2;
          v34 = *(*a2 + 16);
          v35 = v34;
          v36 = 32;
          while (v35)
          {
            v37 = *(v9 + v36);
            v36 += 8;
            --v35;
            if (v37 == 2)
            {
              goto LABEL_6;
            }
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_215060370(0, v34 + 1, 1, v9);
          }

          v51 = *(v9 + 16);
          v50 = *(v9 + 24);
          if (v51 >= v50 >> 1)
          {
            v9 = sub_215060370((v50 > 1), v51 + 1, 1, v9);
          }

          *(v9 + 16) = v51 + 1;
          v6 = v9 + 8 * v51;
          v7 = 2;
          goto LABEL_4;
        case 0x10uLL:
          v9 = *a2;
          v59 = *(*a2 + 16);
          v60 = v59;
          v61 = 32;
          while (v60)
          {
            v62 = *(v9 + v61);
            v61 += 8;
            --v60;
            if (v62 == 10)
            {
              goto LABEL_6;
            }
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_215060370(0, v59 + 1, 1, v9);
          }

          v76 = *(v9 + 16);
          v75 = *(v9 + 24);
          if (v76 >= v75 >> 1)
          {
            v9 = sub_215060370((v75 > 1), v76 + 1, 1, v9);
          }

          *(v9 + 16) = v76 + 1;
          v73 = v9 + 8 * v76;
          v74 = 10;
          goto LABEL_109;
        case 0x11uLL:
          v9 = *a2;
          v52 = *(*a2 + 16);
          v53 = v52;
          v54 = 32;
          while (v53)
          {
            v55 = *(v9 + v54);
            v54 += 8;
            --v53;
            if (v55 == 9)
            {
              goto LABEL_6;
            }
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_215060370(0, v52 + 1, 1, v9);
          }

          v72 = *(v9 + 16);
          v71 = *(v9 + 24);
          if (v72 >= v71 >> 1)
          {
            v9 = sub_215060370((v71 > 1), v72 + 1, 1, v9);
          }

          *(v9 + 16) = v72 + 1;
          v73 = v9 + 8 * v72;
          v74 = 9;
          goto LABEL_109;
        case 0x12uLL:
        case 0x13uLL:
          v9 = *a2;
          v18 = *(*a2 + 16);
          v19 = v18;
          v20 = 32;
          while (v19)
          {
            v21 = *(v9 + v20);
            v20 += 8;
            --v19;
            if (v21 == 3)
            {
              goto LABEL_6;
            }
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_215060370(0, v18 + 1, 1, v9);
          }

          v43 = *(v9 + 16);
          v42 = *(v9 + 24);
          if (v43 >= v42 >> 1)
          {
            v9 = sub_215060370((v42 > 1), v43 + 1, 1, v9);
          }

          *(v9 + 16) = v43 + 1;
          v6 = v9 + 8 * v43;
          v7 = 3;
LABEL_4:
          *(v6 + 32) = v7;
          goto LABEL_5;
        case 0x14uLL:
          v9 = *a2;
          v67 = *(*a2 + 16);
          v68 = v67;
          v69 = 32;
          while (v68)
          {
            v70 = *(v9 + v69);
            v69 += 8;
            --v68;
            if (v70 == 8)
            {
              goto LABEL_6;
            }
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_215060370(0, v67 + 1, 1, v9);
          }

          v80 = *(v9 + 16);
          v79 = *(v9 + 24);
          if (v80 >= v79 >> 1)
          {
            v9 = sub_215060370((v79 > 1), v80 + 1, 1, v9);
          }

          *(v9 + 16) = v80 + 1;
          v73 = v9 + 8 * v80;
          v74 = 8;
LABEL_109:
          *(v73 + 32) = v74;

          goto LABEL_5;
        case 0x16uLL:
        case 0x17uLL:
          v9 = *a2;
          v30 = *(*a2 + 16);
          v31 = v30;
          v32 = 32;
          break;
        default:
          goto LABEL_6;
      }

      while (v31)
      {
        v33 = *(v9 + v32);
        v32 += 8;
        --v31;
        if (!v33)
        {
          goto LABEL_6;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_215060370(0, v30 + 1, 1, v9);
      }

      v49 = *(v9 + 16);
      v48 = *(v9 + 24);
      if (v49 >= v48 >> 1)
      {
        v9 = sub_215060370((v48 > 1), v49 + 1, 1, v9);
      }

      *(v9 + 16) = v49 + 1;
      *(v9 + 8 * v49 + 32) = 0;
LABEL_5:
      *a2 = v9;
LABEL_6:
      ++v4;
    }

    while (v4 != v2);
  }
}

uint64_t sub_214FF2C0C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    v4 = 0;
    v5 = result + 32;
    v6 = MEMORY[0x277D84F90];
    while (1)
    {
      for (i = v4; ; ++i)
      {
        if (i >= v2)
        {
          __break(1u);
LABEL_20:
          __break(1u);
          return result;
        }

        v4 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_20;
        }

        v8 = *(v5 + 8 * i);
        if (a2 != 3)
        {
          break;
        }

        if (((v8 >> 59) & 0x1E | (v8 >> 2) & 1) == 0x13)
        {
          goto LABEL_11;
        }

LABEL_5:
        if (v4 == v2)
        {
          return v6;
        }
      }

      if (a2 != 4 || ((v8 >> 59) & 0x1E | (v8 >> 2) & 1) != 0xD)
      {
        goto LABEL_5;
      }

LABEL_11:
      v10 = *((v8 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v9 = *((v8 & 0xFFFFFFFFFFFFFFBLL) + 0x18);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_21505F4D0(0, *(v6 + 16) + 1, 1, v6);
        v6 = result;
      }

      v12 = *(v6 + 16);
      v11 = *(v6 + 24);
      if (v12 >= v11 >> 1)
      {
        result = sub_21505F4D0((v11 > 1), v12 + 1, 1, v6);
        v6 = result;
      }

      *(v6 + 16) = v12 + 1;
      v13 = v6 + 16 * v12;
      *(v13 + 32) = v10;
      *(v13 + 40) = v9;
      if (v4 == v2)
      {
        return v6;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_214FF2D64(uint64_t result)
{
  v1 = 0;
  v2 = *(result + 16);
  v3 = result + 32;
  v4 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v2 == v1)
    {
      return v4;
    }

    if (v1 >= v2)
    {
      break;
    }

    v5 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_13;
    }

    v6 = *(v3 + 8 * v1++);
    if (((v6 >> 59) & 0x1E | (v6 >> 2) & 1) == 0xB)
    {
      v8 = *((v6 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v7 = *((v6 & 0xFFFFFFFFFFFFFFBLL) + 0x18);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_21505F4D0(0, *(v4 + 16) + 1, 1, v4);
        v4 = result;
      }

      v10 = *(v4 + 16);
      v9 = *(v4 + 24);
      if (v10 >= v9 >> 1)
      {
        result = sub_21505F4D0((v9 > 1), v10 + 1, 1, v4);
        v4 = result;
      }

      *(v4 + 16) = v10 + 1;
      v11 = v4 + 16 * v10;
      *(v11 + 32) = v8;
      *(v11 + 40) = v7;
      v1 = v5;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

void sub_214FF2E7C(uint64_t a1)
{
  v2 = *v1;
  v3 = (*v1 >> 59) & 0x1E | (*v1 >> 2) & 1;
  v4 = MEMORY[0x277D84F90];
  if (v3 > 1)
  {
    if (v3 != 2)
    {
      if (v3 == 22)
      {
        v5 = v2 & 0xFFFFFFFFFFFFFFBLL;
        v7 = *(v5 + 16);
        v6 = *(v5 + 24);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DC0, &qword_2150C2720);
        v8 = swift_allocObject();
        *(v8 + 16) = xmmword_2150C25D0;
        *(v8 + 32) = v7;
        *(v8 + 40) = v6;
      }

      return;
    }

    v2 &= 0xFFFFFFFFFFFFFFBuLL;
  }

  else if (v3)
  {
    if (v3 == 1)
    {
      sub_214FF2E7C(a1);
    }

    return;
  }

  v9 = *(v2 + 16);
  v10 = *(v9 + 16);

  if (!v10)
  {
LABEL_27:

    return;
  }

  v12 = 0;
  while (v12 < *(v9 + 16))
  {
    sub_214FF2E7C(v11);
    v14 = *(v13 + 16);
    v15 = *(v4 + 2);
    v16 = v15 + v14;
    if (__OFADD__(v15, v14))
    {
      goto LABEL_30;
    }

    v17 = v13;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v16 <= *(v4 + 3) >> 1)
    {
      if (*(v17 + 16))
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (v15 <= v16)
      {
        v19 = v15 + v14;
      }

      else
      {
        v19 = v15;
      }

      v4 = sub_21505F4D0(isUniquelyReferenced_nonNull_native, v19, 1, v4);
      if (*(v17 + 16))
      {
LABEL_23:
        if ((*(v4 + 3) >> 1) - *(v4 + 2) < v14)
        {
          goto LABEL_32;
        }

        swift_arrayInitWithCopy();

        if (v14)
        {
          v20 = *(v4 + 2);
          v21 = __OFADD__(v20, v14);
          v22 = v20 + v14;
          if (v21)
          {
            goto LABEL_33;
          }

          *(v4 + 2) = v22;
        }

        goto LABEL_12;
      }
    }

    if (v14)
    {
      goto LABEL_31;
    }

LABEL_12:
    if (v10 == ++v12)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
}

double sub_214FF3090@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *(a1 + 16);
  v3 = (a1 + 32);
  do
  {
    while (1)
    {
      if (!v2)
      {
        *a2 = 0xF000000000000007;
        return result;
      }

      v5 = *v3++;
      v4 = v5;
      v6 = (v5 >> 59) & 0x1E | (v5 >> 2) & 1;
      --v2;
      if (v6 > 1)
      {
        break;
      }

      if (!v6)
      {
        v11 = a2;
LABEL_15:
        v12 = *(v4 + 16);

        sub_214FF3090(v12, v11);

        return result;
      }

      if (v6 == 1)
      {
        v7 = *((v4 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA426B8, &qword_2150CD140);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2150C25D0;
        *(inited + 32) = v7;

        sub_214FF3090(inited, a2);
        swift_setDeallocating();
        sub_214FF323C(inited + 32);

        return result;
      }
    }

    if (v6 == 2)
    {
      v11 = a2;
      v4 &= 0xFFFFFFFFFFFFFFBuLL;
      goto LABEL_15;
    }
  }

  while (v6 != 23);
  *a2 = v4;

  return result;
}

uint64_t sub_214FF3290(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_214FF32F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_214FF3358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = MEMORY[0x277D84F90];
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = 0;
    v6 = a1 + 40;
    v19 = a1 + 40;
    do
    {
      v7 = (v6 + 16 * v5);
      for (i = v5; ; ++i)
      {
        if (i >= v3)
        {
          __break(1u);
LABEL_24:
          __break(1u);
          return;
        }

        v5 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_24;
        }

        v10 = *(v7 - 1);
        v9 = *v7;
        v11 = objc_opt_self();

        v12 = sub_2150A4A90();
        v13 = [v11 hashtagObjectIDWithStandardizedContent:v12 context:a2];

        if (v13)
        {
          break;
        }

        v7 += 2;
        if (v5 == v3)
        {
          return;
        }
      }

      v14 = *(*a3 + 16);
      if (v14)
      {
        v15 = 0;
        v16 = (*a3 + 40);
        while (1)
        {
          v17 = *(v16 - 1) == v10 && *v16 == v9;
          if (v17 || (sub_2150A6270() & 1) != 0)
          {
            break;
          }

          ++v15;
          v16 += 2;
          if (v14 == v15)
          {
            goto LABEL_19;
          }
        }

        sub_215037FA8(v15);
      }

LABEL_19:

      MEMORY[0x216061A60](v18);
      if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2150A4F10();
      }

      sub_2150A4F70();
      v6 = v19;
    }

    while (v5 != v3);
  }
}

uint64_t sub_214FF3578(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___ICQueryObjC_type;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_214FF35E8@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR___ICQueryObjC_type;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

uint64_t sub_214FF3648(uint64_t *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR___ICQueryObjC_type;
  swift_beginAccess();
  *(v1 + v3) = v2;
}

id ICQuery.__allocating_init(entity:type:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  *&v4[OBJC_IVAR___ICQueryObjC_type] = *a2;
  v6.receiver = v4;
  v6.super_class = v2;
  return objc_msgSendSuper2(&v6, sel_init);
}

id ICQuery.init(entity:type:)(uint64_t a1, void *a2)
{
  *&v2[OBJC_IVAR___ICQueryObjC_type] = *a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ICQuery(a1, a2);
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t sub_214FF39E4()
{
  v1 = sub_2150A5B20();
  v9 = 0;
  v10 = 0xE000000000000000;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for ICQuery(v1, v2);
  v3 = objc_msgSendSuper2(&v8, sel_debugDescription);
  v4 = sub_2150A4AD0();
  v6 = v5;

  MEMORY[0x2160617E0](v4, v6);

  MEMORY[0x2160617E0](0x797469746E65203ALL, 0xEB00000000203D20);
  sub_2150A5DB0();
  MEMORY[0x2160617E0](0x203A65707974202CLL, 0xEA0000000000203DLL);
  swift_beginAccess();
  sub_2150A5DB0();
  return v9;
}

uint64_t sub_214FF3B2C(uint64_t a1)
{
  v2 = sub_214FA9E9C(a1, v12);
  if (!v13)
  {
    sub_214F302D4(v12, &qword_27CA42178, &qword_2150C6010);
    goto LABEL_5;
  }

  type metadata accessor for ICQuery(v2, v3);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v7 = 0;
    return v7 & 1;
  }

  v4 = v10;
  v5 = OBJC_IVAR___ICQueryObjC_type;
  swift_beginAccess();
  v11 = *&v10[v5];
  v6 = OBJC_IVAR___ICQueryObjC_type;
  swift_beginAccess();
  v9 = *(v1 + v6);

  v7 = static ICQueryType.== infix(_:_:)(&v11, &v9);

  return v7 & 1;
}

id ICQuery.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_214FF3D5C()
{
  if (*v0)
  {
    return 1701869940;
  }

  else
  {
    return 0x797469746E65;
  }
}

void sub_214FF3D8C(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x797469746E65 && a2 == 0xE600000000000000;
  if (v6 || (sub_2150A6270() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_2150A6270();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_214FF3E64(uint64_t a1)
{
  v2 = sub_214FF6EE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214FF3EA0(uint64_t a1)
{
  v2 = sub_214FF6EE8();

  return MEMORY[0x2821FE720](a1, v2);
}

id ICQuery.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ICQuery(a1, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_214FF3F10(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43988, &qword_2150C7E20);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v12[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214FF6EE8();
  sub_2150A65B0();
  v14 = 0;
  sub_214FF6F3C();
  sub_2150A60A0();
  if (!v2)
  {
    v10 = OBJC_IVAR___ICQueryObjC_type;
    swift_beginAccess();
    v13 = *(v3 + v10);
    v12[15] = 1;
    sub_214F93278();

    sub_2150A60A0();
  }

  return (*(v6 + 8))(v9, v5);
}

void *ICQuery.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA439A0, &qword_2150C7E28);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v17 - v8;
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214FF6EE8();
  sub_2150A6590();
  if (v2)
  {
    v12 = __swift_destroy_boxed_opaque_existential_0(a1);
    type metadata accessor for ICQuery(v12, v13);
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v20) = 0;
    sub_214FF6F90();
    sub_2150A5FC0();
    v19 = 1;
    sub_214F931AC();
    v11 = sub_2150A5FC0();
    *&v3[OBJC_IVAR___ICQueryObjC_type] = v20;
    v16 = type metadata accessor for ICQuery(v11, v15);
    v18.receiver = v3;
    v18.super_class = v16;
    v10 = objc_msgSendSuper2(&v18, sel_init);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v10;
}

void *sub_214FF432C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = objc_allocWithZone(type metadata accessor for ICQuery(a1, a2));
  result = ICQuery.init(from:)(a1);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

id static ICQuery.makeQueryForNotesMatching(_:)(void *a1)
{
  v2 = v1;
  v3 = [a1 filterTypeSelections];
  sub_214FF6FE4();
  v4 = sub_2150A4ED0();

  if (v4 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2150A59D0())
  {
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    v26 = i;
    v27 = v2;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x216062780](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v8 = *(v4 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v30 = v8;
      sub_214FF4658(&v30, v2, &v29);

      v11 = v29;
      if ((~v29 & 0xF000000000000007) != 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_2150600E0(0, *(v7 + 2) + 1, 1, v7);
        }

        v13 = *(v7 + 2);
        v12 = *(v7 + 3);
        if (v13 >= v12 >> 1)
        {
          v7 = sub_2150600E0((v12 > 1), v13 + 1, 1, v7);
        }

        *(v7 + 2) = v13 + 1;
        *&v7[8 * v13 + 32] = v11;
        i = v26;
        v2 = v27;
      }

      else
      {
        sub_214F94748(v29);
      }

      ++v6;
      if (v10 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v7 = MEMORY[0x277D84F90];
LABEL_21:

  v14 = [a1 joinOperator];
  v15 = swift_allocObject();
  *(v15 + 16) = v7;
  if (v14)
  {
    v16 = v15 | 0x1000000000000000;
  }

  else
  {
    v16 = v15;
  }

  v17 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA426B8, &qword_2150CD140);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_2150C29C0;
  v19 = swift_allocObject();
  v20 = [a1 includeRecentlyDeleted];
  *(v19 + 16) = v20;
  *(v18 + 32) = v19 | 0x5000000000000000;
  *(v18 + 40) = v16;
  *(v17 + 16) = v18;
  v22 = type metadata accessor for ICQuery(v20, v21);
  v23 = objc_allocWithZone(v22);
  *&v23[OBJC_IVAR___ICQueryObjC_type] = v17;
  v28.receiver = v23;
  v28.super_class = v22;
  return objc_msgSendSuper2(&v28, sel_init);
}

void sub_214FF4658(id *a1@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  v458 = a2;
  v461 = a3;
  v4 = sub_2150A3960();
  v5 = *(v4 - 8);
  v453 = v4;
  v454 = v5;
  v7 = MEMORY[0x28223BE20](v4, v6);
  v446 = &v439 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v445 = &v439 - v11;
  v13 = MEMORY[0x28223BE20](v10, v12);
  v448 = &v439 - v14;
  v16 = MEMORY[0x28223BE20](v13, v15);
  v459 = &v439 - v17;
  v19 = MEMORY[0x28223BE20](v16, v18);
  v447 = &v439 - v20;
  v22 = MEMORY[0x28223BE20](v19, v21);
  v449 = &v439 - v23;
  v25 = MEMORY[0x28223BE20](v22, v24);
  v457 = &v439 - v26;
  v28 = MEMORY[0x28223BE20](v25, v27);
  v452 = &v439 - v29;
  v31 = MEMORY[0x28223BE20](v28, v30);
  v456 = &v439 - v32;
  v34 = MEMORY[0x28223BE20](v31, v33);
  v451 = &v439 - v35;
  v37 = MEMORY[0x28223BE20](v34, v36);
  v460 = &v439 - v38;
  v40 = MEMORY[0x28223BE20](v37, v39);
  v450 = &v439 - v41;
  MEMORY[0x28223BE20](v40, v42);
  v44 = &v439 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42C68, &qword_2150C4018);
  v47 = MEMORY[0x28223BE20](v45 - 8, v46);
  v49 = &v439 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47, v50);
  v52 = &v439 - v51;
  v53 = type metadata accessor for ICQueryType.RelativeDateRange(0);
  v455 = *(v53 - 8);
  v55 = MEMORY[0x28223BE20](v53, v54);
  v57 = &v439 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v55, v58);
  v60 = &v439 - v59;
  v61 = *a1;
  objc_opt_self();
  v62 = swift_dynamicCastObjCClass();
  if (!v62)
  {
    v443 = v52;
    v444 = v60;
    v441 = v57;
    v442 = v49;
    v440 = v44;
    v68 = v456;
    v69 = v457;
    v70 = v459;
    v71 = v460;
    objc_opt_self();
    v72 = swift_dynamicCastObjCClass();
    if (v72)
    {
      v73 = v72;
      v459 = v61;
      v74 = [v73 selectionType];
      if (v74 <= 5)
      {
        v75 = v455;
        v76 = v444;
        if (v74 < 6)
        {
LABEL_9:

          v77 = v443;
          sub_214FF6784(v73, v443);
          if ((*(v75 + 48))(v77, 1, v53) == 1)
          {

LABEL_16:
            sub_214F302D4(v77, &qword_27CA42C68, &qword_2150C4018);
            goto LABEL_68;
          }

          sub_214FF7E68(v77, v76);
          v95 = swift_allocBox();
          v97 = sub_214FF7ECC(v76, v96);
          v98 = v95 | 0x4000000000000004;
          v100 = type metadata accessor for ICQuery(v97, v99);
          v101 = objc_allocWithZone(v100);
          *&v101[OBJC_IVAR___ICQueryObjC_type] = v98;
          v462.receiver = v101;
          v462.super_class = v100;
          v65 = objc_msgSendSuper2(&v462, sel_init);

          v102 = v76;
LABEL_35:
          sub_214FF7F30(v102);
          goto LABEL_43;
        }

        goto LABEL_49;
      }

      if (v74 <= 7)
      {
        v75 = v455;
        v76 = v444;
        if (v74 != 6)
        {
          goto LABEL_9;
        }

        v141 = [v73 primaryDate];
        if (v141)
        {
          v142 = v141;
          sub_2150A3930();

          v143 = [v73 secondaryDate];
          if (v143)
          {
            v144 = v451;
            sub_2150A3930();

            v145 = type metadata accessor for ICQueryType.DateRange(0);
            v146 = swift_allocBox();
            v148 = v147;
            v149 = v454;
            v150 = *(v454 + 16);
            v151 = v147;
            v152 = v71;
            v153 = v453;
            v150(v151, v152, v453);
            v154 = (v150)(v148 + *(v145 + 20), v144, v153);
            v156 = type metadata accessor for ICQuery(v154, v155);
            v157 = objc_allocWithZone(v156);
            *&v157[OBJC_IVAR___ICQueryObjC_type] = v146 | 0x4000000000000000;
            v464.receiver = v157;
            v464.super_class = v156;
            v65 = objc_msgSendSuper2(&v464, sel_init);

            v158 = *(v149 + 8);
            v158(v144, v153);
            v158(v460, v153);
            goto LABEL_43;
          }

          (*(v454 + 8))(v71, v453);
          goto LABEL_67;
        }
      }

      else
      {
        v83 = v454;
        if (v74 != 8)
        {
          if (v74 == 9)
          {
            v159 = [v73 primaryDate];

            v160 = v452;
            if (v159)
            {
              v161 = v68;
              sub_2150A3930();

              v162 = type metadata accessor for ICQueryType.DateRange(0);
              v163 = swift_allocBox();
              v165 = v164;
              sub_2150A37F0();
              v166 = v453;
              (*(v83 + 16))(v165 + *(v162 + 20), v161, v453);
              v167 = (*(v83 + 32))(v165, v160, v166);
              v169 = type metadata accessor for ICQuery(v167, v168);
              v170 = objc_allocWithZone(v169);
              *&v170[OBJC_IVAR___ICQueryObjC_type] = v163 | 0x4000000000000000;
              v465.receiver = v170;
              v465.super_class = v169;
              v65 = objc_msgSendSuper2(&v465, sel_init);

              (*(v83 + 8))(v161, v166);
              goto LABEL_43;
            }

            goto LABEL_67;
          }

          v84 = v452;
          if (v74 == 10)
          {
            v85 = [v73 primaryDate];

            if (v85)
            {
              sub_2150A3930();

              v86 = type metadata accessor for ICQueryType.DateRange(0);
              v87 = swift_allocBox();
              v89 = v88;
              sub_2150A3860();
              v90 = v453;
              (*(v83 + 16))(v89, v69, v453);
              v91 = (*(v83 + 32))(v89 + *(v86 + 20), v84, v90);
              v93 = type metadata accessor for ICQuery(v91, v92);
              v94 = objc_allocWithZone(v93);
              *&v94[OBJC_IVAR___ICQueryObjC_type] = v87 | 0x4000000000000000;
              v466.receiver = v94;
              v466.super_class = v93;
              v65 = objc_msgSendSuper2(&v466, sel_init);

              (*(v83 + 8))(v69, v90);
              goto LABEL_43;
            }

LABEL_67:

            goto LABEL_68;
          }

LABEL_49:

          goto LABEL_50;
        }

        v171 = [v73 primaryDate];
        if (v171)
        {
          v172 = v440;
          v173 = v171;
          sub_2150A3930();

          v174 = [v73 secondaryDate];
          if (v174)
          {
            v175 = v450;
            sub_2150A3930();

            v176 = type metadata accessor for ICQueryType.DateRange(0);
            v177 = swift_allocBox();
            v179 = v178;
            v180 = *(v83 + 16);
            v181 = v178;
            v182 = v172;
            v183 = v453;
            v180(v181, v182, v453);
            v184 = (v180)(v179 + *(v176 + 20), v175, v183);
            v186 = type metadata accessor for ICQuery(v184, v185);
            v187 = objc_allocWithZone(v186);
            *&v187[OBJC_IVAR___ICQueryObjC_type] = v177 | 0x4000000000000000;
            v463.receiver = v187;
            v463.super_class = v186;
            v65 = objc_msgSendSuper2(&v463, sel_init);

            v188 = *(v83 + 8);
            v188(v175, v183);
            v188(v440, v183);
            v66 = OBJC_IVAR___ICQueryObjC_type;
            goto LABEL_3;
          }

          (*(v83 + 8))(v172, v453);
          goto LABEL_67;
        }
      }

      v190 = v459;

      goto LABEL_68;
    }

    objc_opt_self();
    v78 = swift_dynamicCastObjCClass();
    if (v78)
    {
      v79 = v78;
      v80 = v61;
      v81 = [v79 selectionType];
      if (v81 <= 5)
      {
        v82 = v455;
        if (v81 >= 6)
        {
          goto LABEL_49;
        }

LABEL_14:

        v77 = v442;
        sub_214FF6784(v79, v442);
        if ((*(v82 + 48))(v77, 1, v53) == 1)
        {

          goto LABEL_16;
        }

        v126 = v441;
        sub_214FF7E68(v77, v441);
        v127 = swift_allocBox();
        v129 = sub_214FF7ECC(v126, v128);
        v130 = v127 | 0x7000000000000004;
        v132 = type metadata accessor for ICQuery(v129, v131);
        v133 = objc_allocWithZone(v132);
        *&v133[OBJC_IVAR___ICQueryObjC_type] = v130;
        v467.receiver = v133;
        v467.super_class = v132;
        v65 = objc_msgSendSuper2(&v467, sel_init);

        v102 = v126;
        goto LABEL_35;
      }

      if (v81 <= 7)
      {
        v189 = v454;
        if (v81 != 6)
        {
          v82 = v455;
          goto LABEL_14;
        }

        v198 = [v79 primaryDate];
        if (v198)
        {
          v199 = v198;
          sub_2150A3930();

          v200 = [v79 secondaryDate];
          if (!v200)
          {
            (*(v189 + 8))(v70, v453);

            goto LABEL_68;
          }

          sub_2150A3930();

          v201 = type metadata accessor for ICQueryType.DateRange(0);
          v202 = swift_allocBox();
          v204 = v203;
          v460 = v80;
          v205 = *(v189 + 16);
          v206 = v203;
          v207 = v70;
          v208 = v453;
          v205(v206, v207, v453);
          v209 = v448;
          v210 = (v205)(v204 + *(v201 + 20), v448, v208);
          v212 = type metadata accessor for ICQuery(v210, v211);
          v213 = objc_allocWithZone(v212);
          *&v213[OBJC_IVAR___ICQueryObjC_type] = v202 | 0x7000000000000000;
          v469.receiver = v213;
          v469.super_class = v212;
          v65 = objc_msgSendSuper2(&v469, sel_init);

          v214 = *(v189 + 8);
          v214(v209, v208);
          v214(v459, v208);
LABEL_43:
          v66 = OBJC_IVAR___ICQueryObjC_type;
          goto LABEL_3;
        }
      }

      else
      {
        v113 = v453;
        v112 = v454;
        if (v81 != 8)
        {
          if (v81 == 9)
          {
            v215 = [v79 primaryDate];

            v216 = v452;
            if (v215)
            {
              v217 = v445;
              sub_2150A3930();

              v218 = type metadata accessor for ICQueryType.DateRange(0);
              v219 = swift_allocBox();
              v221 = v220;
              sub_2150A37F0();
              (*(v112 + 16))(v221 + *(v218 + 20), v217, v113);
              v222 = (*(v112 + 32))(v221, v216, v113);
              v224 = type metadata accessor for ICQuery(v222, v223);
              v225 = objc_allocWithZone(v224);
              *&v225[OBJC_IVAR___ICQueryObjC_type] = v219 | 0x7000000000000000;
              v470.receiver = v225;
              v470.super_class = v224;
              v65 = objc_msgSendSuper2(&v470, sel_init);

              (*(v112 + 8))(v217, v113);
              goto LABEL_43;
            }
          }

          else
          {
            v114 = v452;
            if (v81 != 10)
            {
              goto LABEL_49;
            }

            v115 = [v79 primaryDate];

            if (v115)
            {
              v116 = v446;
              sub_2150A3930();

              v117 = type metadata accessor for ICQueryType.DateRange(0);
              v118 = swift_allocBox();
              v120 = v119;
              sub_2150A3860();
              v121 = v453;
              (*(v112 + 16))(v120, v116, v453);
              v122 = (*(v112 + 32))(v120 + *(v117 + 20), v114, v121);
              v124 = type metadata accessor for ICQuery(v122, v123);
              v125 = objc_allocWithZone(v124);
              *&v125[OBJC_IVAR___ICQueryObjC_type] = v118 | 0x7000000000000000;
              v471.receiver = v125;
              v471.super_class = v124;
              v65 = objc_msgSendSuper2(&v471, sel_init);

              (*(v112 + 8))(v116, v121);
              goto LABEL_43;
            }
          }

LABEL_64:

          goto LABEL_68;
        }

        v226 = [v79 primaryDate];
        if (v226)
        {
          v227 = v449;
          v228 = v226;
          sub_2150A3930();

          v229 = [v79 secondaryDate];
          if (v229)
          {
            sub_2150A3930();

            v230 = type metadata accessor for ICQueryType.DateRange(0);
            v231 = swift_allocBox();
            v232 = v227;
            v234 = v233;
            v235 = *(v112 + 16);
            v235(v233, v232, v113);
            v236 = v234 + *(v230 + 20);
            v237 = v447;
            v238 = (v235)(v236, v447, v113);
            v240 = type metadata accessor for ICQuery(v238, v239);
            v241 = objc_allocWithZone(v240);
            *&v241[OBJC_IVAR___ICQueryObjC_type] = v231 | 0x7000000000000000;
            v468.receiver = v241;
            v468.super_class = v240;
            v65 = objc_msgSendSuper2(&v468, sel_init);

            v242 = *(v112 + 8);
            v242(v237, v113);
            v242(v449, v113);
            v66 = OBJC_IVAR___ICQueryObjC_type;
            goto LABEL_3;
          }

          (*(v112 + 8))(v227, v113);

LABEL_68:
          v67 = 0xF000000000000007;
          goto LABEL_5;
        }
      }

      goto LABEL_64;
    }

    objc_opt_self();
    v103 = swift_dynamicCastObjCClass();
    if (v103)
    {
      v104 = v103;
      v105 = swift_allocObject();
      v106 = v61;
      v107 = [v104 inclusionType];
      *(v105 + 16) = v107 == 0;
      v109 = type metadata accessor for ICQuery(v107, v108);
      v110 = objc_allocWithZone(v109);
      *&v110[OBJC_IVAR___ICQueryObjC_type] = v105 | 0x8000000000000004;
      v472.receiver = v110;
      v472.super_class = v109;
      v111 = objc_msgSendSuper2(&v472, sel_init);
LABEL_54:
      v65 = v111;

      v66 = OBJC_IVAR___ICQueryObjC_type;
      goto LABEL_3;
    }

    objc_opt_self();
    v134 = swift_dynamicCastObjCClass();
    if (v134)
    {
      v135 = v134;
      v136 = swift_allocObject();
      v106 = v61;
      v137 = [v135 inclusionType];
      *(v136 + 16) = v137 == 0;
      v139 = type metadata accessor for ICQuery(v137, v138);
      v140 = objc_allocWithZone(v139);
      *&v140[OBJC_IVAR___ICQueryObjC_type] = v136 | 0x8000000000000000;
      v473.receiver = v140;
      v473.super_class = v139;
      v111 = objc_msgSendSuper2(&v473, sel_init);
      goto LABEL_54;
    }

    objc_opt_self();
    v191 = swift_dynamicCastObjCClass();
    if (v191)
    {
      v192 = v191;
      v193 = swift_allocObject();
      v106 = v61;
      v194 = [v192 inclusionType];
      *(v193 + 16) = v194 == 0;
      v196 = type metadata accessor for ICQuery(v194, v195);
      v197 = objc_allocWithZone(v196);
      *&v197[OBJC_IVAR___ICQueryObjC_type] = v193 | 0xA000000000000000;
      v474.receiver = v197;
      v474.super_class = v196;
      v111 = objc_msgSendSuper2(&v474, sel_init);
      goto LABEL_54;
    }

    objc_opt_self();
    v243 = swift_dynamicCastObjCClass();
    if (v243)
    {
      v244 = v243;
      v245 = v61;
      v246 = [v244 selectionType];
      if (v246 > 1)
      {
        if (v246 == 2)
        {
          v294 = swift_allocObject();
          *(v294 + 16) = 1;
          v295 = v294 | 0x3000000000000004;
          v297 = type metadata accessor for ICQuery(v294, v296);
          v298 = objc_allocWithZone(v297);
          *&v298[OBJC_IVAR___ICQueryObjC_type] = v295;
          v477.receiver = v298;
          v477.super_class = v297;
          v252 = objc_msgSendSuper2(&v477, sel_init);
        }

        else
        {
          if (v246 != 3)
          {
            goto LABEL_50;
          }

          v262 = swift_allocObject();
          *(v262 + 16) = 0;
          v263 = v262 | 0x2000000000000004;
          v265 = type metadata accessor for ICQuery(v262, v264);
          v266 = objc_allocWithZone(v265);
          *&v266[OBJC_IVAR___ICQueryObjC_type] = v263;
          v478.receiver = v266;
          v478.super_class = v265;
          v252 = objc_msgSendSuper2(&v478, sel_init);
        }
      }

      else if (v246)
      {
        if (v246 != 1)
        {
          goto LABEL_50;
        }

        v247 = swift_allocObject();
        *(v247 + 16) = 1;
        v248 = v247 | 0x3000000000000000;
        v250 = type metadata accessor for ICQuery(v247, v249);
        v251 = objc_allocWithZone(v250);
        *&v251[OBJC_IVAR___ICQueryObjC_type] = v248;
        v476.receiver = v251;
        v476.super_class = v250;
        v252 = objc_msgSendSuper2(&v476, sel_init);
      }

      else
      {
        v289 = swift_allocObject();
        *(v289 + 16) = 1;
        v290 = v289 | 0x2000000000000004;
        v292 = type metadata accessor for ICQuery(v289, v291);
        v293 = objc_allocWithZone(v292);
        *&v293[OBJC_IVAR___ICQueryObjC_type] = v290;
        v475.receiver = v293;
        v475.super_class = v292;
        v252 = objc_msgSendSuper2(&v475, sel_init);
      }

LABEL_96:
      v65 = v252;

      v66 = OBJC_IVAR___ICQueryObjC_type;
      goto LABEL_3;
    }

    objc_opt_self();
    v253 = swift_dynamicCastObjCClass();
    if (v253)
    {
      v254 = v253;
      v245 = v61;
      v255 = [v254 selectionType];
      if (v255 <= 4)
      {
        if (v255 > 2)
        {
          if (v255 == 3)
          {
            v331 = swift_allocObject();
            *(v331 + 16) = 7;
            v332 = v331 | 0x2000000000000000;
            v334 = type metadata accessor for ICQuery(v331, v333);
            v335 = objc_allocWithZone(v334);
            *&v335[OBJC_IVAR___ICQueryObjC_type] = v332;
            v482.receiver = v335;
            v482.super_class = v334;
            v252 = objc_msgSendSuper2(&v482, sel_init);
          }

          else
          {
            v304 = swift_allocObject();
            *(v304 + 16) = 2;
            v305 = v304 | 0x2000000000000000;
            v307 = type metadata accessor for ICQuery(v304, v306);
            v308 = objc_allocWithZone(v307);
            *&v308[OBJC_IVAR___ICQueryObjC_type] = v305;
            v483.receiver = v308;
            v483.super_class = v307;
            v252 = objc_msgSendSuper2(&v483, sel_init);
          }

          goto LABEL_96;
        }

        if (v255 != 1)
        {
          if (v255 != 2)
          {
            goto LABEL_50;
          }

          v299 = swift_allocObject();
          *(v299 + 16) = 1;
          v300 = v299 | 0x2000000000000000;
          v302 = type metadata accessor for ICQuery(v299, v301);
          v303 = objc_allocWithZone(v302);
          *&v303[OBJC_IVAR___ICQueryObjC_type] = v300;
          v481.receiver = v303;
          v481.super_class = v302;
          v252 = objc_msgSendSuper2(&v481, sel_init);
          goto LABEL_96;
        }

        v325 = swift_allocObject();
        *(v325 + 16) = 1;
        v326 = v325 | 0x1000000000000004;
        v328 = type metadata accessor for ICQuery(v325, v327);
        v329 = objc_allocWithZone(v328);
        *&v329[OBJC_IVAR___ICQueryObjC_type] = v326;
        v479.receiver = v329;
        v479.super_class = v328;
        v261 = objc_msgSendSuper2(&v479, sel_init);
      }

      else
      {
        if (v255 <= 6)
        {
          if (v255 == 5)
          {
            v341 = swift_allocObject();
            *(v341 + 16) = 3;
            v342 = v341 | 0x2000000000000000;
            v344 = type metadata accessor for ICQuery(v341, v343);
            v345 = objc_allocWithZone(v344);
            *&v345[OBJC_IVAR___ICQueryObjC_type] = v342;
            v484.receiver = v345;
            v484.super_class = v344;
            v252 = objc_msgSendSuper2(&v484, sel_init);
          }

          else
          {
            v320 = swift_allocObject();
            *(v320 + 16) = 4;
            v321 = v320 | 0x2000000000000000;
            v323 = type metadata accessor for ICQuery(v320, v322);
            v324 = objc_allocWithZone(v323);
            *&v324[OBJC_IVAR___ICQueryObjC_type] = v321;
            v485.receiver = v324;
            v485.super_class = v323;
            v252 = objc_msgSendSuper2(&v485, sel_init);
          }

          goto LABEL_96;
        }

        if (v255 == 7)
        {
          v336 = swift_allocObject();
          *(v336 + 16) = 5;
          v337 = v336 | 0x2000000000000000;
          v339 = type metadata accessor for ICQuery(v336, v338);
          v340 = objc_allocWithZone(v339);
          *&v340[OBJC_IVAR___ICQueryObjC_type] = v337;
          v486.receiver = v340;
          v486.super_class = v339;
          v252 = objc_msgSendSuper2(&v486, sel_init);
          goto LABEL_96;
        }

        if (v255 == 8)
        {
          v346 = swift_allocObject();
          *(v346 + 16) = 6;
          v347 = v346 | 0x2000000000000000;
          v349 = type metadata accessor for ICQuery(v346, v348);
          v350 = objc_allocWithZone(v349);
          *&v350[OBJC_IVAR___ICQueryObjC_type] = v347;
          v487.receiver = v350;
          v487.super_class = v349;
          v252 = objc_msgSendSuper2(&v487, sel_init);
          goto LABEL_96;
        }

        if (v255 != 9)
        {
          goto LABEL_50;
        }

        v256 = swift_allocObject();
        *(v256 + 16) = 0;
        v257 = v256 | 0x1000000000000004;
        v259 = type metadata accessor for ICQuery(v256, v258);
        v260 = objc_allocWithZone(v259);
        *&v260[OBJC_IVAR___ICQueryObjC_type] = v257;
        v480.receiver = v260;
        v480.super_class = v259;
        v261 = objc_msgSendSuper2(&v480, sel_init);
      }

      v65 = v261;

      v330 = OBJC_IVAR___ICQueryObjC_type;
      swift_beginAccess();
      v67 = *(v65 + v330);
      goto LABEL_4;
    }

    objc_opt_self();
    v267 = swift_dynamicCastObjCClass();
    if (v267)
    {
      v268 = v267;
      v61 = v61;
      v269 = [v268 folderIdentifiers];
      v270 = sub_2150A4ED0();

      v271 = *(v270 + 16);

      if (v271)
      {
        v459 = v268;
        v460 = v61;
        v272 = [v268 folderIdentifiers];
        v273 = sub_2150A4ED0();

        v274 = *(v273 + 16);
        if (v274)
        {
          v495[0] = MEMORY[0x277D84F90];
          sub_214F86F8C(0, v274, 0);
          v275 = v495[0];
          v458 = v273;
          v276 = (v273 + 40);
          do
          {
            v278 = *(v276 - 1);
            v277 = *v276;
            v279 = swift_allocObject();
            *(v279 + 16) = v278;
            *(v279 + 24) = v277;
            v280 = v279 | 0x5000000000000004;
            v282 = type metadata accessor for ICQuery(v279, v281);
            v283 = objc_allocWithZone(v282);
            *&v283[OBJC_IVAR___ICQueryObjC_type] = v280;
            v488.receiver = v283;
            v488.super_class = v282;

            v284 = objc_msgSendSuper2(&v488, sel_init);
            v285 = OBJC_IVAR___ICQueryObjC_type;
            swift_beginAccess();
            v286 = *(v284 + v285);

            v495[0] = v275;
            v288 = *(v275 + 16);
            v287 = *(v275 + 24);
            if (v288 >= v287 >> 1)
            {
              sub_214F86F8C((v287 > 1), v288 + 1, 1);
              v275 = v495[0];
            }

            *(v275 + 16) = v288 + 1;
            *(v275 + 8 * v288 + 32) = v286;
            v276 += 2;
            --v274;
          }

          while (v274);
        }

        else
        {

          v275 = MEMORY[0x277D84F90];
        }

        v351 = swift_allocObject();
        *(v351 + 16) = v275;
        v67 = v351 | 0x1000000000000000;
        v352 = [v459 inclusionType];

        if (v352 == 1)
        {
          v353 = swift_allocObject();
          *(v353 + 16) = v67;
          v67 = v353 | 4;
        }

        goto LABEL_5;
      }

      goto LABEL_50;
    }

    objc_opt_self();
    v309 = swift_dynamicCastObjCClass();
    if (v309)
    {
      v310 = v309;
      v311 = v61;
      v458 = v310;
      v459 = v311;
      v312 = [v310 selectionType];
      if (v312 == 3)
      {
        v313 = v459;

        v382 = swift_allocObject();
        *(v382 + 16) = 0;
        v383 = v382 | 0x9000000000000000;
        v385 = type metadata accessor for ICQuery(v382, v384);
        v386 = objc_allocWithZone(v385);
        *&v386[OBJC_IVAR___ICQueryObjC_type] = v383;
        v492.receiver = v386;
        v492.super_class = v385;
        v319 = objc_msgSendSuper2(&v492, sel_init);
        goto LABEL_142;
      }

      if (v312 != 2)
      {
        if (v312 != 1)
        {
          goto LABEL_49;
        }

        v313 = v459;

        v314 = swift_allocObject();
        *(v314 + 16) = 1;
        v315 = v314 | 0x9000000000000000;
        v317 = type metadata accessor for ICQuery(v314, v316);
        v318 = objc_allocWithZone(v317);
        *&v318[OBJC_IVAR___ICQueryObjC_type] = v315;
        v489.receiver = v318;
        v489.super_class = v317;
        v319 = objc_msgSendSuper2(&v489, sel_init);
        goto LABEL_142;
      }

      if ([v458 joinOperator] - 1 > 1)
      {
        goto LABEL_49;
      }

      v360 = [v458 participantUserIDs];
      v361 = sub_2150A52E0();

      v362 = 1 << *(v361 + 32);
      v363 = -1;
      if (v362 < 64)
      {
        v363 = ~(-1 << v362);
      }

      v364 = v363 & *(v361 + 56);
      v365 = (v362 + 63) >> 6;
      v457 = v361;

      v366 = 0;
      v460 = MEMORY[0x277D84F90];
      if (v364)
      {
        goto LABEL_132;
      }

      while (1)
      {
        v367 = v366 + 1;
        if (__OFADD__(v366, 1))
        {
          __break(1u);
          goto LABEL_169;
        }

        if (v367 >= v365)
        {
          break;
        }

        v364 = *(v361 + 56 + 8 * v367);
        ++v366;
        if (v364)
        {
          v366 = v367;
          do
          {
LABEL_132:
            v368 = (*(v457 + 6) + ((v366 << 10) | (16 * __clz(__rbit64(v364)))));
            v369 = *v368;
            v370 = v368[1];
            v371 = swift_allocObject();
            *(v371 + 16) = v369;
            *(v371 + 24) = v370;
            v372 = v371 | 0x9000000000000004;
            v374 = type metadata accessor for ICQuery(v371, v373);
            v375 = objc_allocWithZone(v374);
            *&v375[OBJC_IVAR___ICQueryObjC_type] = v372;
            v491.receiver = v375;
            v491.super_class = v374;

            v376 = objc_msgSendSuper2(&v491, sel_init);
            v377 = OBJC_IVAR___ICQueryObjC_type;
            swift_beginAccess();
            v378 = *(v376 + v377);

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v460 = sub_2150600E0(0, *(v460 + 2) + 1, 1, v460);
            }

            v380 = *(v460 + 2);
            v379 = *(v460 + 3);
            if (v380 >= v379 >> 1)
            {
              v460 = sub_2150600E0((v379 > 1), v380 + 1, 1, v460);
            }

            v364 &= v364 - 1;
            v381 = v460;
            *(v460 + 2) = v380 + 1;
            *&v381[8 * v380 + 32] = v378;
          }

          while (v364);
        }
      }

      v392 = [v458 joinOperator];
      v393 = v459;

      v394 = swift_allocObject();
      *(v394 + 16) = v460;
      if (v392 == 1)
      {
        v396 = v394;
      }

      else
      {
        v396 = v394 | 0x1000000000000000;
      }

      v397 = type metadata accessor for ICQuery(v394, v395);
      v398 = objc_allocWithZone(v397);
      *&v398[OBJC_IVAR___ICQueryObjC_type] = v396;
      v490.receiver = v398;
      v490.super_class = v397;
      v399 = objc_msgSendSuper2(&v490, sel_init);
    }

    else
    {
      objc_opt_self();
      v460 = swift_dynamicCastObjCClass();
      if (!v460)
      {
        goto LABEL_68;
      }

      v459 = v61;
      v354 = [v460 selectionType];
      if (v354 <= 1)
      {
        if (!v354)
        {

          v400 = [v460 currentUserID];
          if (v400)
          {
            v401 = v400;
            v402 = sub_2150A4AD0();
            v404 = v403;

            v405 = swift_allocObject();
            *(v405 + 16) = v402;
            *(v405 + 24) = v404;
            v406 = v405 | 0x6000000000000004;
            v408 = type metadata accessor for ICQuery(v405, v407);
            v409 = objc_allocWithZone(v408);
            *&v409[OBJC_IVAR___ICQueryObjC_type] = v406;
            v493.receiver = v409;
            v493.super_class = v408;
            v65 = objc_msgSendSuper2(&v493, sel_init);

            goto LABEL_43;
          }

LABEL_50:

          goto LABEL_68;
        }

        if (v354 != 1)
        {
          goto LABEL_49;
        }

        v313 = v459;

        v355 = swift_allocObject();
        *(v355 + 16) = 1;
        v356 = v355 | 0x6000000000000000;
        v358 = type metadata accessor for ICQuery(v355, v357);
        v359 = objc_allocWithZone(v358);
        *&v359[OBJC_IVAR___ICQueryObjC_type] = v356;
        v494.receiver = v359;
        v494.super_class = v358;
        v319 = objc_msgSendSuper2(&v494, sel_init);
LABEL_142:
        v65 = v319;

        goto LABEL_43;
      }

      if (v354 != 2)
      {
        if (v354 != 3)
        {
          goto LABEL_49;
        }

        v313 = v459;

        v387 = swift_allocObject();
        *(v387 + 16) = 0;
        v388 = v387 | 0x6000000000000000;
        v390 = type metadata accessor for ICQuery(v387, v389);
        v391 = objc_allocWithZone(v390);
        *&v391[OBJC_IVAR___ICQueryObjC_type] = v388;
        v498.receiver = v391;
        v498.super_class = v390;
        v319 = objc_msgSendSuper2(&v498, sel_init);
        goto LABEL_142;
      }

      if ([v460 joinOperator] - 1 > 1)
      {
        goto LABEL_49;
      }

      v410 = [v460 participantUserIDs];
      v411 = sub_2150A52E0();

      v412 = 1 << *(v411 + 32);
      v413 = -1;
      if (v412 < 64)
      {
        v413 = ~(-1 << v412);
      }

      v414 = v413 & *(v411 + 56);
      v415 = (v412 + 63) >> 6;
      v457 = v411;

      v416 = 0;
      v458 = MEMORY[0x277D84F90];
      if (v414)
      {
        goto LABEL_157;
      }

      while (1)
      {
        v417 = v416 + 1;
        if (__OFADD__(v416, 1))
        {
LABEL_169:
          __break(1u);
          return;
        }

        if (v417 >= v415)
        {
          break;
        }

        v414 = *(v411 + 56 + 8 * v417);
        ++v416;
        if (v414)
        {
          v416 = v417;
          do
          {
LABEL_157:
            v418 = (*(v457 + 6) + ((v416 << 10) | (16 * __clz(__rbit64(v414)))));
            v419 = *v418;
            v420 = v418[1];
            v421 = swift_allocObject();
            *(v421 + 16) = v419;
            *(v421 + 24) = v420;
            v422 = v421 | 0x6000000000000004;
            v424 = type metadata accessor for ICQuery(v421, v423);
            v425 = objc_allocWithZone(v424);
            *&v425[OBJC_IVAR___ICQueryObjC_type] = v422;
            v497.receiver = v425;
            v497.super_class = v424;

            v426 = objc_msgSendSuper2(&v497, sel_init);
            v427 = OBJC_IVAR___ICQueryObjC_type;
            swift_beginAccess();
            v428 = *(v426 + v427);

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v458 = sub_2150600E0(0, *(v458 + 2) + 1, 1, v458);
            }

            v430 = *(v458 + 2);
            v429 = *(v458 + 3);
            if (v430 >= v429 >> 1)
            {
              v458 = sub_2150600E0((v429 > 1), v430 + 1, 1, v458);
            }

            v414 &= v414 - 1;
            v431 = v458;
            *(v458 + 2) = v430 + 1;
            *&v431[8 * v430 + 32] = v428;
          }

          while (v414);
        }
      }

      v432 = [v460 joinOperator];
      v393 = v459;

      v433 = swift_allocObject();
      *(v433 + 16) = v458;
      if (v432 == 1)
      {
        v435 = v433;
      }

      else
      {
        v435 = v433 | 0x1000000000000000;
      }

      v436 = type metadata accessor for ICQuery(v433, v434);
      v437 = objc_allocWithZone(v436);
      *&v437[OBJC_IVAR___ICQueryObjC_type] = v435;
      v496.receiver = v437;
      v496.super_class = v436;
      v399 = objc_msgSendSuper2(&v496, sel_init);
    }

    v65 = v399;

    v438 = OBJC_IVAR___ICQueryObjC_type;
    swift_beginAccess();
    v67 = *(v65 + v438);
    goto LABEL_4;
  }

  v63 = v62;
  v64 = v61;
  v65 = _s11NotesShared7ICQueryC012makeQueryForA8MatchingyACSo14ICTagSelectionCFZ_0(v63);

  v66 = OBJC_IVAR___ICQueryObjC_type;
LABEL_3:
  swift_beginAccess();
  v67 = *(v65 + v66);
LABEL_4:

LABEL_5:
  *v461 = v67;
}

uint64_t sub_214FF6784@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 selectionType];
  if (v4 <= 2)
  {
    if (v4)
    {
      if (v4 == 1)
      {
        v5 = 1;
      }

      else
      {
        if (v4 != 2)
        {
LABEL_14:
          v8 = type metadata accessor for ICQueryType.RelativeDateRange(0);
          v9 = *(*(v8 - 8) + 56);
          v10 = v8;
          v11 = a2;
          v12 = 1;
          goto LABEL_20;
        }

        v5 = 2;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    if (v4 <= 4)
    {
      if (v4 == 3)
      {
        v5 = 3;
      }

      else
      {
        v5 = 4;
      }

      goto LABEL_19;
    }

    if (v4 != 5)
    {
      if (v4 == 7 && [a1 relativeRangeSelectionType] - 1 < 5)
      {
        v6 = [a1 relativeRangeAmount];
        if (v6)
        {
          v7 = v6;
          sub_2150A5360();
        }
      }

      goto LABEL_14;
    }

    v5 = 5;
  }

LABEL_19:
  v13 = type metadata accessor for ICQueryType.RelativeDateRange(0);
  v14 = *(v13 + 28);
  v15 = sub_2150A3960();
  (*(*(v15 - 8) + 56))(a2 + v14, 1, 1, v15);
  *a2 = v5;
  *(a2 + 1) = 5;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v9 = *(*(v13 - 8) + 56);
  v11 = a2;
  v12 = 0;
  v10 = v13;
LABEL_20:

  return v9(v11, v12, 1, v10);
}

id static ICQuery.makeQueryForNonDeletedNotes()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  v1 = v0 | 0x5000000000000000;
  v3 = type metadata accessor for ICQuery(v0, v2);
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR___ICQueryObjC_type] = v1;
  v6.receiver = v4;
  v6.super_class = v3;
  return objc_msgSendSuper2(&v6, sel_init);
}

id ICQuery.replacing(tagIdentifier:withNewTagIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = OBJC_IVAR___ICQueryObjC_type;
  swift_beginAccess();
  v17 = *(v4 + v9);

  sub_214F8E480(a1, a2, a3, a4, &v18);

  v11 = v18;
  v13 = type metadata accessor for ICQuery(v10, v12);
  v14 = objc_allocWithZone(v13);
  *&v14[OBJC_IVAR___ICQueryObjC_type] = v11;
  v16.receiver = v14;
  v16.super_class = v13;
  return objc_msgSendSuper2(&v16, sel_init);
}

id ICQuery.removing(tagIdentifier:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR___ICQueryObjC_type;
  swift_beginAccess();
  v12 = *(v2 + v5);

  sub_214F8E848(a1, a2, &v13);

  result = 0;
  v8 = v13;
  if ((~v13 & 0xF000000000000007) != 0)
  {
    v9 = type metadata accessor for ICQuery(0, v6);
    v10 = objc_allocWithZone(v9);
    *&v10[OBJC_IVAR___ICQueryObjC_type] = v8;
    v11.receiver = v10;
    v11.super_class = v9;
    return objc_msgSendSuper2(&v11, sel_init);
  }

  return result;
}

unint64_t sub_214FF6EE8()
{
  result = qword_27CA43990;
  if (!qword_27CA43990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43990);
  }

  return result;
}

unint64_t sub_214FF6F3C()
{
  result = qword_27CA43998;
  if (!qword_27CA43998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43998);
  }

  return result;
}

unint64_t sub_214FF6F90()
{
  result = qword_27CA439A8;
  if (!qword_27CA439A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA439A8);
  }

  return result;
}

unint64_t sub_214FF6FE4()
{
  result = qword_27CA43978;
  if (!qword_27CA43978)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CA43978);
  }

  return result;
}

id sub_214FF7030(char a1, char a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v6 = v4 | 0xB000000000000004;
  if ((a2 & 1) == 0)
  {
    v7 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA426B8, &qword_2150CD140);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_2150C29C0;
    *(v8 + 32) = v6;
    v4 = swift_allocObject();
    *(v4 + 16) = 0;
    *(v8 + 40) = v4 | 0x5000000000000000;
    *(v7 + 16) = v8;
    v6 = v7;
  }

  v9 = type metadata accessor for ICQuery(v4, v5);
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR___ICQueryObjC_type] = v6;
  v12.receiver = v10;
  v12.super_class = v9;
  return objc_msgSendSuper2(&v12, sel_init);
}

char *_s11NotesShared7ICQueryC012makeQueryForA8MatchingyACSo14ICTagSelectionCFZ_0(void *a1)
{
  v1 = a1;
  v2 = [a1 mode];
  if (v2)
  {
    if (v2 == 2)
    {
      v3 = [v1 allowsRecentlyDeleted];
      v4 = 0;
    }

    else
    {
      if (v2 != 1)
      {
        result = sub_2150A5E10();
        __break(1u);
        return result;
      }

      v3 = [v1 allowsRecentlyDeleted];
      v4 = 1;
    }

    return sub_214FF7030(v4, v3);
  }

  else
  {
    v5 = [v1 includedTagIdentifiers];
    v6 = sub_2150A4ED0();

    v7 = *(v6 + 16);
    v8 = MEMORY[0x277D84F90];
    v9 = &qword_27CA43000;
    v10 = &selRef_hidesCallNotesInCustomFolders;
    v65 = v1;
    if (v7)
    {
      v70[0] = MEMORY[0x277D84F90];
      sub_214F86F8C(0, v7, 0);
      v11 = v70[0];
      v12 = (v6 + 40);
      do
      {
        v14 = *(v12 - 1);
        v13 = *v12;
        v15 = swift_allocObject();
        *(v15 + 16) = v14;
        *(v15 + 24) = v13;
        v16 = v15 | 0xB000000000000000;
        v18 = type metadata accessor for ICQuery(v15, v17);
        v19 = objc_allocWithZone(v18);
        *&v19[OBJC_IVAR___ICQueryObjC_type] = v16;
        v72.receiver = v19;
        v72.super_class = v18;

        v20 = objc_msgSendSuper2(&v72, sel_init);
        v21 = OBJC_IVAR___ICQueryObjC_type;
        swift_beginAccess();
        v22 = *&v20[v21];

        v70[0] = v11;
        v24 = *(v11 + 16);
        v23 = *(v11 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_214F86F8C((v23 > 1), v24 + 1, 1);
          v11 = v70[0];
        }

        *(v11 + 16) = v24 + 1;
        *(v11 + 8 * v24 + 32) = v22;
        v12 += 2;
        --v7;
      }

      while (v7);

      v10 = &selRef_hidesCallNotesInCustomFolders;
      v1 = v65;
      v8 = MEMORY[0x277D84F90];
    }

    else
    {

      v11 = MEMORY[0x277D84F90];
    }

    v73 = v11;
    v26 = [v1 excludedTagIdentifiers];
    v27 = sub_2150A4ED0();

    v28 = *(v27 + 16);
    if (v28)
    {
      v67[0] = v8;
      sub_214F86F8C(0, v28, 0);
      v29 = (v27 + 40);
      do
      {
        v31 = *(v29 - 1);
        v30 = *v29;
        v32 = swift_allocObject();
        v33 = swift_allocObject();
        *(v33 + 16) = v31;
        *(v33 + 24) = v30;
        v34 = v33 | 0xB000000000000000;
        v36 = type metadata accessor for ICQuery(v33, v35);
        v37 = objc_allocWithZone(v36);
        *&v37[v9[304]] = v34;
        v71.receiver = v37;
        v71.super_class = v36;
        v38 = v9;
        v39 = v10;
        v40 = v10[291];
        swift_bridgeObjectRetain_n();
        v41 = objc_msgSendSuper2(&v71, v40);
        v42 = v38[304];
        swift_beginAccess();
        v43 = *&v41[v42];

        v10 = v39;
        v9 = v38;
        *(v32 + 16) = v43;
        v44 = objc_allocWithZone(v36);
        *&v44[v38[304]] = v32 | 4;
        v69.receiver = v44;
        v69.super_class = v36;
        v45 = objc_msgSendSuper2(&v69, v10 + 2936);

        v46 = v38[304];
        swift_beginAccess();
        v47 = *&v45[v46];

        v67[0] = v8;
        v49 = *(v8 + 16);
        v48 = *(v8 + 24);
        if (v49 >= v48 >> 1)
        {
          sub_214F86F8C((v48 > 1), v49 + 1, 1);
          v8 = v67[0];
        }

        *(v8 + 16) = v49 + 1;
        *(v8 + 8 * v49 + 32) = v47;
        v29 += 2;
        --v28;
      }

      while (v28);

      v1 = v65;
    }

    else
    {
    }

    sub_215068E70(v8);
    v50 = [v1 tagOperator];
    v51 = swift_allocObject();
    *(v51 + 16) = v73;
    if (v50 == 1)
    {
      v53 = v51;
    }

    else
    {
      v53 = v51 | 0x1000000000000000;
    }

    v54 = type metadata accessor for ICQuery(v51, v52);
    v55 = objc_allocWithZone(v54);
    *&v55[v9[304]] = v53;
    v68.receiver = v55;
    v68.super_class = v54;
    v56 = v10[291];

    v57 = objc_msgSendSuper2(&v68, v56);
    if ([v1 allowsRecentlyDeleted])
    {
    }

    else
    {
      v58 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA426B8, &qword_2150CD140);
      v59 = swift_allocObject();
      *(v59 + 16) = xmmword_2150C29C0;
      v60 = swift_allocObject();
      *(v60 + 16) = 0;
      *(v59 + 32) = v60 | 0x5000000000000000;
      v61 = v9[304];
      swift_beginAccess();
      *(v59 + 40) = *&v57[v61];
      *(v58 + 16) = v59;
      v62 = objc_allocWithZone(v54);
      *&v62[v9[304]] = v58;
      v66.receiver = v62;
      v66.super_class = v54;
      v63 = v10[291];

      v64 = objc_msgSendSuper2(&v66, v63);

      return v64;
    }

    return v57;
  }
}

id _s11NotesShared7ICQueryC031makeQueryForRecentlyDeletedMathA0ACyFZ_0()
{
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA426B8, &qword_2150CD140);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2150C29C0;
  v2 = swift_allocObject();
  *(v2 + 16) = sub_2150A4AD0();
  *(v2 + 24) = v3;
  *(v1 + 32) = v2 | 0xA000000000000004;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_2150A4AD0();
  *(v4 + 24) = v5;
  *(v1 + 40) = v4 | 0xA000000000000004;
  *(v0 + 16) = v1;
  v6 = swift_allocObject();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2150C29C0;
  *(v7 + 32) = v0 | 0x1000000000000000;
  v8 = swift_allocObject();
  *(v8 + 16) = 1;
  *(v7 + 40) = v8 | 0x5000000000000000;
  *(v6 + 16) = v7;
  v10 = type metadata accessor for ICQuery(v8, v9);
  v11 = objc_allocWithZone(v10);
  *&v11[OBJC_IVAR___ICQueryObjC_type] = v6;
  v13.receiver = v11;
  v13.super_class = v10;
  return objc_msgSendSuper2(&v13, sel_init);
}

id _s11NotesShared7ICQueryC018makeQueryForPinnedA0_21allowsRecentlyDeletedACSb_SbtFZ_0(char a1, char a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v6 = v4 | 0x8000000000000004;
  if ((a2 & 1) == 0)
  {
    v7 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA426B8, &qword_2150CD140);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_2150C29C0;
    *(v8 + 32) = v6;
    v4 = swift_allocObject();
    *(v4 + 16) = 0;
    *(v8 + 40) = v4 | 0x5000000000000000;
    *(v7 + 16) = v8;
    v6 = v7;
  }

  v9 = type metadata accessor for ICQuery(v4, v5);
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR___ICQueryObjC_type] = v6;
  v12.receiver = v10;
  v12.super_class = v9;
  return objc_msgSendSuper2(&v12, sel_init);
}