uint64_t storeEnumTagSinglePayload for UniqueIOUtilError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C6E32C08()
{
  result = qword_1EC1F7EC0;
  if (!qword_1EC1F7EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7EC0);
  }

  return result;
}

uint64_t sub_1C6E32C74()
{
  v1 = *v0;
  sub_1C6EE5580();
  MEMORY[0x1CCA58990](v1);
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E32CE8(uint64_t a1)
{
  v2 = *v1;
  sub_1C6EE5580();
  MEMORY[0x1CCA58990](v2);
  return sub_1C6EE55A0();
}

char *sub_1C6E32D3C(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = a4;
  v7 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v7 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
    v46 = 0;
    v47 = a1 + 32;
    v48 = a2 + 56;
    v11 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v49 = v46;
      while (1)
      {
        if (v49 >= v4)
        {
LABEL_77:
          __break(1u);
LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
          goto LABEL_80;
        }

        v46 = v49 + 1;
        if (__OFADD__(v49, 1))
        {
          goto LABEL_78;
        }

        if (*(a2 + 16))
        {
          break;
        }

LABEL_54:
        v49 = v46;
        if (v46 == v4)
        {
          return v11;
        }
      }

      v50 = (v47 + 16 * v49);
      v5 = *v50;
      v51 = v50[1];
      sub_1C6EE5580();

      sub_1C6EE4B30();
      v52 = sub_1C6EE55A0();
      v53 = -1 << *(a2 + 32);
      v54 = v52 & ~v53;
      if (((*(v48 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54) & 1) == 0)
      {
        break;
      }

      v55 = ~v53;
      while (1)
      {
        v56 = (*(a2 + 48) + 16 * v54);
        v57 = *v56 == v5 && v56[1] == v51;
        if (v57 || (sub_1C6EE54B0() & 1) != 0)
        {
          break;
        }

        v54 = (v54 + 1) & v55;
        if (((*(v48 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54) & 1) == 0)
        {
          goto LABEL_53;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6E15A10(0, *(v11 + 16) + 1, 1);
      }

      v59 = *(v11 + 16);
      v58 = *(v11 + 24);
      v60 = v59 + 1;
      if (v59 >= v58 >> 1)
      {
        sub_1C6E15A10((v58 > 1), v59 + 1, 1);
        v60 = v59 + 1;
      }

      *(v11 + 16) = v60;
      v61 = v11 + 16 * v59;
      *(v61 + 32) = v5;
      *(v61 + 40) = v51;
      if (v46 == v4)
      {
        return v11;
      }
    }

LABEL_53:

    goto LABEL_54;
  }

  v66 = a1 + 32;
  v8 = a2 + 56;

  v9 = 0;
  v10 = 0;
  v62 = 0;
  v63 = MEMORY[0x1E69E7CC0];
  v11 = 0xE000000000000000;
  v64 = v4;
  v65 = v5;
  while (v9 != v4)
  {
    v12 = v11;
    v13 = v10;
    while (1)
    {
      if (v9 >= v4)
      {
        __break(1u);
LABEL_76:
        __break(1u);
        goto LABEL_77;
      }

      v14 = v9;
      v15 = __OFADD__(v9++, 1);
      if (v15)
      {
        goto LABEL_76;
      }

      v16 = (v66 + 16 * v14);
      v10 = *v16;
      v11 = v16[1];
      if (v14)
      {
        break;
      }

LABEL_9:

      v12 = v11;
      v13 = v10;
      if (v9 == v4)
      {
        goto LABEL_43;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9A60, &qword_1C6EE6950);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1C6EE6B40;
    *(v17 + 32) = v13;
    *(v17 + 40) = v12;
    v67 = v10;
    *(v17 + 48) = v10;
    *(v17 + 56) = v11;
    swift_bridgeObjectRetain_n();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9A50, &qword_1C6EE90D0);
    sub_1C6E33840();
    v5 = sub_1C6EE4A10();
    v19 = v18;

    if (*(a2 + 16))
    {
      sub_1C6EE5580();
      sub_1C6EE4B30();
      v20 = sub_1C6EE55A0();
      v21 = -1 << *(a2 + 32);
      v22 = v20 & ~v21;
      if ((*(v8 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
      {
        v23 = ~v21;
        while (1)
        {
          v24 = (*(a2 + 48) + 16 * v22);
          v25 = *v24 == v5 && v24[1] == v19;
          if (v25 || (sub_1C6EE54B0() & 1) != 0)
          {
            break;
          }

          v22 = (v22 + 1) & v23;
          if (((*(v8 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
          {
            goto LABEL_22;
          }
        }

        swift_bridgeObjectRelease_n();
        v10 = v5;
        v11 = v19;
        v4 = v64;
        goto LABEL_9;
      }
    }

LABEL_22:

    if (!*(a2 + 16))
    {

      v4 = v64;
      goto LABEL_33;
    }

    sub_1C6EE5580();
    sub_1C6EE4B30();
    v26 = sub_1C6EE55A0();
    v27 = -1 << *(a2 + 32);
    v28 = v26 & ~v27;
    v4 = v64;
    if (((*(v8 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
    {
LABEL_31:

LABEL_33:
      v10 = v67;
      goto LABEL_9;
    }

    v29 = ~v27;
    while (1)
    {
      v30 = (*(a2 + 48) + 16 * v28);
      v31 = *v30 == v13 && v30[1] == v12;
      if (v31 || (sub_1C6EE54B0() & 1) != 0)
      {
        break;
      }

      v28 = (v28 + 1) & v29;
      if (((*(v8 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v32 = v63;
    }

    else
    {
      v32 = sub_1C6ED8FB0(0, *(v63 + 2) + 1, 1, v63);
    }

    v34 = *(v32 + 2);
    v33 = *(v32 + 3);
    if (v34 >= v33 >> 1)
    {
      v32 = sub_1C6ED8FB0((v33 > 1), v34 + 1, 1, v32);
    }

    *(v32 + 2) = v34 + 1;
    v63 = v32;
    v35 = &v32[16 * v34];
    *(v35 + 4) = v13;
    *(v35 + 5) = v12;
    v5 = v65;
    sub_1C6DF0C68();

    v36 = sub_1C6EE4FF0();

    v37 = *(v36 + 16);

    v15 = __OFADD__(v62, v37);
    v62 += v37;
    v10 = v67;
    if (v15)
    {
      goto LABEL_79;
    }
  }

LABEL_43:
  if ((sub_1C6EDCBA0(v10, v11, a2) & 1) == 0)
  {

    return v63;
  }

  v5 = v10;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v38 = v63;
    goto LABEL_46;
  }

LABEL_80:
  v38 = sub_1C6ED8FB0(0, *(v63 + 2) + 1, 1, v63);
LABEL_46:
  v40 = *(v38 + 2);
  v39 = *(v38 + 3);
  if (v40 >= v39 >> 1)
  {
    v38 = sub_1C6ED8FB0((v39 > 1), v40 + 1, 1, v38);
  }

  *(v38 + 2) = v40 + 1;
  v41 = v38;
  v42 = &v38[16 * v40];
  *(v42 + 4) = v5;
  *(v42 + 5) = v11;
  sub_1C6DF0C68();
  v43 = sub_1C6EE4FF0();

  v44 = *(v43 + 16);

  if (!__OFADD__(v62, v44))
  {
    return v41;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6E33400(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EC8, &unk_1C6EE90C0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v22 - v6;
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NGramsStrategy(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v22 - v13;
  v15 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NGramsSpec(0) + 24);
  sub_1C6E336A8(a1 + v15, v7);
  v16 = *(v9 + 48);
  if (v16(v7, 1, v8) == 1)
  {
    *v14 = 0;
    v14[8] = 1;
    *(v14 + 2) = 0;
    *(v14 + 3) = 0xE000000000000000;
    sub_1C6EE4420();
    if (v16(v7, 1, v8) != 1)
    {
      sub_1C6E33718(v7);
    }
  }

  else
  {
    sub_1C6E337DC(v7, v14);
  }

  v17 = *v14;
  v18 = v14[8];
  sub_1C6E33780(v14);
  if (v18 != 1 || v17 == 0)
  {
    return 0;
  }

  sub_1C6E336A8(a1 + v15, v5);
  if (v16(v5, 1, v8) == 1)
  {
    *v12 = 0;
    v12[8] = 1;
    *(v12 + 2) = 0;
    *(v12 + 3) = 0xE000000000000000;
    sub_1C6EE4420();
    if (v16(v5, 1, v8) != 1)
    {
      sub_1C6E33718(v5);
    }
  }

  else
  {
    sub_1C6E337DC(v5, v12);
  }

  v20 = *(v12 + 2);

  sub_1C6E33780(v12);
  return v20;
}

uint64_t sub_1C6E336A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EC8, &unk_1C6EE90C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6E33718(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EC8, &unk_1C6EE90C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C6E33780(uint64_t a1)
{
  v2 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NGramsStrategy(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C6E337DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NGramsStrategy(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C6E33840()
{
  result = qword_1EDEF67C8;
  if (!qword_1EDEF67C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC1F9A50, &qword_1C6EE90D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEF67C8);
  }

  return result;
}

uint64_t sub_1C6E338A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C6E338EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C6E33938(uint64_t a1)
{
  v2 = sub_1C6EE4760();
  v28 = *(v2 - 8);
  v29 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C6EE4790();
  v30 = *(v5 - 8);
  v31 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEF8F80 != -1)
  {
    swift_once();
  }

  v8 = qword_1EDEF8F88;
  v9 = sub_1C6EE4EB0();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
  v10 = swift_allocObject();
  v24 = xmmword_1C6EE6590;
  *(v10 + 16) = xmmword_1C6EE6590;
  v11 = MEMORY[0x1E69E6158];
  v12 = sub_1C6EE49B0();
  v14 = v13;
  *(v10 + 56) = v11;
  v26 = sub_1C6DF10E0();
  *(v10 + 64) = v26;
  *(v10 + 32) = v12;
  *(v10 + 40) = v14;
  sub_1C6EE4730("CoreMLModelContainer.doCall with inputs=%{public}@", 50, 2, &dword_1C6DE9000, v8, v9, v10);

  v15 = v8;
  sub_1C6EE4770();
  sub_1C6EE4780();
  sub_1C6EE4740();
  v16 = swift_slowAlloc();
  v17 = swift_slowAlloc();
  v32 = v17;
  *v16 = 136446210;
  v18 = v27;
  *(v16 + 4) = sub_1C6E41514(*(v27 + OBJC_IVAR____TtC18ComputationalGraph20CoreMLModelContainer_modelDisplayName), *(v27 + OBJC_IVAR____TtC18ComputationalGraph20CoreMLModelContainer_modelDisplayName + 8), &v32);
  v19 = sub_1C6EE4780();
  LOBYTE(v12) = sub_1C6EE4F80();
  v20 = sub_1C6EE4750();
  _os_signpost_emit_with_name_impl(&dword_1C6DE9000, v19, v12, v20, "CoreMLModelContainer.doCall", "%{public}s", v16, 0xCu);
  sub_1C6E33D88(v18, a1, &v33);
  LOBYTE(v8) = sub_1C6EE4F70();
  v21 = sub_1C6EE4750();
  _os_signpost_emit_with_name_impl(&dword_1C6DE9000, v19, v8, v21, "CoreMLModelContainer.doCall", "%{public}s", v16, 0xCu);

  v22 = v33;
  __swift_destroy_boxed_opaque_existential_0(v17);
  MEMORY[0x1CCA59290](v17, -1, -1);
  MEMORY[0x1CCA59290](v16, -1, -1);
  (*(v28 + 8))(v4, v29);
  (*(v30 + 8))(v7, v31);
  return v22;
}

void sub_1C6E33D88(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v66 = a3;
  v5 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO(0);
  v67 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v74 = a1;
  v8 = sub_1C6E2E05C(a2);
  if (qword_1EDEF8F80 != -1)
  {
LABEL_27:
    swift_once();
  }

  v9 = qword_1EDEF8F88;
  v10 = sub_1C6EE4EB0();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1C6EE6590;
  sub_1C6E34D60();

  v13 = MEMORY[0x1E69E6158];
  v14 = sub_1C6EE49B0();
  v16 = v15;

  *(v12 + 56) = v13;
  v17 = sub_1C6DF10E0();
  *(v12 + 64) = v17;
  *(v12 + 32) = v14;
  *(v12 + 40) = v16;
  sub_1C6EE4730("CoreMLModelContainer.doCall with built inputs=%{public}@", 56, 2, &dword_1C6DE9000, v9, v10, v12);

  v18 = sub_1C6E34394(v8);

  v19 = objc_allocWithZone(MEMORY[0x1E695FE48]);
  v20 = v75;
  v21 = sub_1C6E34944(v18);
  if (v20)
  {
    return;
  }

  v70 = v17;
  v71 = v11;
  v68 = v9;
  v22 = v74;
  v23 = *(v74 + OBJC_IVAR____TtC18ComputationalGraph20CoreMLModelContainer_executionLock);
  v24 = MEMORY[0x1EEE9AC00](v21);
  *(&v63 - 2) = v22;
  *(&v63 - 1) = v24;
  v25 = MEMORY[0x1EEE9AC00](v24);
  *(&v63 - 2) = sub_1C6E34DAC;
  *(&v63 - 1) = v26;
  v27 = v25;
  os_unfair_lock_lock(v23 + 4);
  sub_1C6E34DC8(&v76);
  v8 = 0;
  os_unfair_lock_unlock(v23 + 4);
  v65 = 0;
  v64 = v27;
  v75 = v76;
  v28 = *(v22 + OBJC_IVAR____TtC18ComputationalGraph19AbstractComputation_modelIOSpec + 8);
  v73 = *(v28 + 16);
  if (!v73)
  {
    v74 = MEMORY[0x1E69E7CC8];
LABEL_21:
    v60 = v65;
    sub_1C6E2AAA8(v74);
    if (v60)
    {

      swift_unknownObjectRelease();
    }

    else
    {
      v62 = v61;

      swift_unknownObjectRelease();

      *v66 = v62;
    }

    return;
  }

  v29 = 0;
  v74 = MEMORY[0x1E69E7CC8];
  v69 = xmmword_1C6EE6B40;
  v31 = v67;
  v30 = v68;
  v72 = v28;
  while (1)
  {
    if (v29 >= *(v28 + 16))
    {
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    sub_1C6E00BFC(v28 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + v31[9] * v29, v7);
    v39 = *v7;
    v38 = v7[1];
    v40 = v75;
    swift_getObjectType();

    v41 = sub_1C6EE4A60();
    v42 = [v40 featureValueForName_];

    if (v42)
    {
      v43 = [v42 multiArrayValue];

      if (v43)
      {
        break;
      }
    }

    v32 = swift_allocObject();
    *(v32 + 16) = v69;
    v76 = 0;
    v77 = 0xE000000000000000;
    v78 = v75;
    v8 = &v76;
    sub_1C6EE5480();
    v33 = v76;
    v34 = v77;
    v35 = MEMORY[0x1E69E6158];
    v36 = v70;
    *(v32 + 56) = MEMORY[0x1E69E6158];
    *(v32 + 64) = v36;
    *(v32 + 32) = v33;
    *(v32 + 40) = v34;
    *(v32 + 96) = v35;
    *(v32 + 104) = v36;
    *(v32 + 72) = v39;
    *(v32 + 80) = v38;
    v37 = sub_1C6EE4EE0();
    sub_1C6EE4730("Failed to get value. modelOutput=%{public}@, outputName=%{public}@", 66, 2, &dword_1C6DE9000, v30, v37, v32);

LABEL_6:
    ++v29;
    sub_1C6E34E0C(v7, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
    v28 = v72;
    if (v73 == v29)
    {
      goto LABEL_21;
    }
  }

  v44 = v7;
  v7 = v31;
  v8 = v74;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v76 = v8;
  v46 = sub_1C6DEC784(v39, v38);
  v48 = v8[2];
  v49 = (v47 & 1) == 0;
  v50 = __OFADD__(v48, v49);
  v51 = v48 + v49;
  if (v50)
  {
    goto LABEL_26;
  }

  v52 = v47;
  if (v8[3] >= v51)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = &v76;
      v59 = v46;
      sub_1C6E09C58();
      v46 = v59;
    }
  }

  else
  {
    sub_1C6E072DC(v51, isUniquelyReferenced_nonNull_native);
    v8 = v76;
    v46 = sub_1C6DEC784(v39, v38);
    if ((v52 & 1) != (v53 & 1))
    {
      goto LABEL_29;
    }
  }

  v31 = v7;
  v7 = v44;
  v74 = v76;
  if (v52)
  {
    v54 = *(v76 + 56);
    v8 = *(v54 + 8 * v46);
    *(v54 + 8 * v46) = v43;

    v30 = v68;
    goto LABEL_6;
  }

  v55 = v74;
  *(v76 + 8 * (v46 >> 6) + 64) |= 1 << v46;
  v56 = (v55[6] + 16 * v46);
  *v56 = v39;
  v56[1] = v38;
  *(v55[7] + 8 * v46) = v43;
  v57 = v55[2];
  v50 = __OFADD__(v57, 1);
  v58 = v57 + 1;
  v30 = v68;
  if (!v50)
  {
    v55[2] = v58;
    goto LABEL_6;
  }

  __break(1u);
LABEL_29:
  sub_1C6EE5500();
  __break(1u);
}

unint64_t sub_1C6E34394(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7790, &unk_1C6EE6940);
    v2 = sub_1C6EE5340();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = v13 | (v12 << 6);
        v15 = (*(a1 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(a1 + 56) + 8 * v14);
        sub_1C6E34D60();

        v19 = v18;
        swift_dynamicCast();
        sub_1C6DEC868(&v25, v27);
        sub_1C6DEC868(v27, v28);
        sub_1C6DEC868(v28, &v26);
        result = sub_1C6DEC784(v17, v16);
        if (v20)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v17;
          v9[1] = v16;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          __swift_destroy_boxed_opaque_existential_0(v11);
          result = sub_1C6DEC868(&v26, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v21 = (v2[6] + 16 * result);
          *v21 = v17;
          v21[1] = v16;
          result = sub_1C6DEC868(&v26, (v2[7] + 32 * result));
          v22 = v2[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_21;
          }

          v2[2] = v24;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

id sub_1C6E345F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v7 = sub_1C6E34A2C();
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    result = (*(a1 + OBJC_IVAR____TtC18ComputationalGraph20CoreMLModelContainer_modelProvider))();
    if (v3)
    {
      return result;
    }

    v13 = *(a1 + OBJC_IVAR____TtC18ComputationalGraph20CoreMLModelContainer____lazy_storage____model);
    *(a1 + OBJC_IVAR____TtC18ComputationalGraph20CoreMLModelContainer____lazy_storage____model) = result;
    v8 = result;
    sub_1C6E34D50(v13);
    v7 = 0;
  }

  v15[0] = 0;
  v9 = v7;
  v10 = [v8 predictionFromFeatures:a2 error:v15];

  v11 = v15[0];
  if (v10)
  {
    *a3 = v10;
    return v11;
  }

  else
  {
    v14 = v15[0];
    sub_1C6EE4050();

    return swift_willThrow();
  }
}

void sub_1C6E34724()
{

  v1 = *(v0 + OBJC_IVAR____TtC18ComputationalGraph20CoreMLModelContainer____lazy_storage____model);

  sub_1C6E34D50(v1);
}

uint64_t sub_1C6E3478C()
{

  sub_1C6E34E0C(v0 + OBJC_IVAR____TtC18ComputationalGraph19AbstractComputation_modelIOSpec, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec);
  sub_1C6E00DCC(v0 + OBJC_IVAR____TtC18ComputationalGraph19AbstractComputation_nodeCachePolicy);

  sub_1C6E34D50(*(v0 + OBJC_IVAR____TtC18ComputationalGraph20CoreMLModelContainer____lazy_storage____model));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CoreMLModelContainer(uint64_t a1)
{
  result = qword_1EDEF82C0;
  if (!qword_1EDEF82C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1C6E34944(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1C6EE4990();

  v7[0] = 0;
  v3 = [v1 initWithDictionary:v2 error:v7];

  if (v3)
  {
    v4 = v7[0];
  }

  else
  {
    v5 = v7[0];
    sub_1C6EE4050();

    swift_willThrow();
  }

  return v3;
}

uint64_t sub_1C6E34A2C()
{
  result = *(v0 + OBJC_IVAR____TtC18ComputationalGraph20CoreMLModelContainer____lazy_storage____model);
  if (result == 1)
  {
    result = 0;
    *(v0 + OBJC_IVAR____TtC18ComputationalGraph20CoreMLModelContainer____lazy_storage____model) = 0;
  }

  return result;
}

uint64_t sub_1C6E34A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v28 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7508, &unk_1C6EE6690);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v27 - v12;
  v14 = sub_1C6EE42F0();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC18ComputationalGraph20CoreMLModelContainer_executionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7ED0, &unk_1C6EE9160);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v6 + v18) = v19;
  *(v6 + OBJC_IVAR____TtC18ComputationalGraph20CoreMLModelContainer____lazy_storage____model) = 1;
  v20 = (v6 + OBJC_IVAR____TtC18ComputationalGraph20CoreMLModelContainer_modelDisplayName);
  *v20 = a2;
  v20[1] = a3;
  v21 = (v6 + OBJC_IVAR____TtC18ComputationalGraph20CoreMLModelContainer_modelProvider);
  *v21 = a4;
  v21[1] = a5;

  sub_1C6EE42E0();
  v22 = sub_1C6EE42D0();
  v24 = v23;
  (*(v15 + 8))(v17, v14);
  v25 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_NodeCachePolicy(0);
  (*(*(v25 - 8) + 56))(v13, 1, 1, v25);
  *(v6 + 16) = v22;
  *(v6 + 24) = v24;
  sub_1C6E34C7C(v28, v6 + OBJC_IVAR____TtC18ComputationalGraph19AbstractComputation_modelIOSpec);
  sub_1C6E34CE0(v13, v6 + OBJC_IVAR____TtC18ComputationalGraph19AbstractComputation_nodeCachePolicy);
  return v6;
}

uint64_t sub_1C6E34C7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6E34CE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7508, &unk_1C6EE6690);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1C6E34D50(id a1)
{
  if (a1 != 1)
  {
  }
}

unint64_t sub_1C6E34D60()
{
  result = qword_1EDEF6788;
  if (!qword_1EDEF6788)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDEF6788);
  }

  return result;
}

void *sub_1C6E34DC8@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t sub_1C6E34E0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_1C6E34E6C@<D0>(uint64_t a1@<X2>, uint64_t a2@<X8>, uint64_t a3@<X0>, uint64_t a4@<X1>)
{
  if (*(a1 + 16) && (v6 = sub_1C6E35D64(a3, a4), (v7 & 1) != 0))
  {
    v8 = *(a1 + 56) + 24 * v6;
    v9 = *v8;
    v10 = *(v8 + 8);
    v11 = *(v8 + 16);
    *a2 = *v8;
    *(a2 + 8) = v10;
    *(a2 + 16) = v11;

    sub_1C6E00CBC(v9, v10, v11);
  }

  else
  {
    result = 0.0;
    *a2 = xmmword_1C6EE7FC0;
    *(a2 + 16) = -1;
  }

  return result;
}

uint64_t sub_1C6E34EEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    sub_1C6E35D64(a1, a2);
    if (v5)
    {
      return Feature.stringList.getter();
    }
  }

  sub_1C6E2AC54();
  swift_allocError();
  v7 = MEMORY[0x1E69E6168];
  v8[3] = MEMORY[0x1E69E6158];
  v8[4] = v7;
  *v8 = a1;
  v8[1] = a2;
  swift_willThrow();
}

char *sub_1C6E34FC0(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_1C6EE42F0();
  v40 = *(v6 - 8);
  v41 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO(0) - 8;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v40 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v18 = &v40 - v17;
  v19 = v3 + OBJC_IVAR____TtC18ComputationalGraph28TextPreprocessModelContainer_dictionaryBackedTokenizer;
  v20 = *(a1 + 16);
  *v19 = *a1;
  *(v19 + 16) = v20;
  *(v19 + 96) = *(a1 + 96);
  v21 = *(a1 + 80);
  *(v19 + 64) = *(a1 + 64);
  *(v19 + 80) = v21;
  v22 = *(a1 + 48);
  *(v19 + 32) = *(a1 + 32);
  *(v19 + 48) = v22;
  v23 = *(*a2 + 16);
  if (v23 == 1 && (v24 = (*(v16 + 80) + 32) & ~*(v16 + 80), sub_1C6E00BFC(*a2 + v24, &v40 - v17), sub_1C6E35C10(v18, v3 + OBJC_IVAR____TtC18ComputationalGraph28TextPreprocessModelContainer_input, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO), v25 = a2[1], *(v25 + 16) == 1))
  {
    sub_1C6E00BFC(v25 + v24, v15);
    v26 = OBJC_IVAR____TtC18ComputationalGraph28TextPreprocessModelContainer_output;
    sub_1C6E35C10(v15, v3 + OBJC_IVAR____TtC18ComputationalGraph28TextPreprocessModelContainer_output, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
    sub_1C6E00BFC(v3 + v26, v12);
    v27 = *(v12 + 2);
    if (*(v27 + 16) == 1)
    {
      v28 = *(v27 + 32);
      sub_1C6E35BB0(v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
      *(v3 + OBJC_IVAR____TtC18ComputationalGraph28TextPreprocessModelContainer_codesLength) = v28;
      sub_1C6EE42E0();
      v29 = sub_1C6EE42D0();
      v31 = v30;
      (*(v40 + 8))(v8, v41);
      sub_1C6E35C10(a2, v3 + OBJC_IVAR____TtC18ComputationalGraph19AbstractComputation_modelIOSpec, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec);
      v32 = OBJC_IVAR____TtC18ComputationalGraph19AbstractComputation_nodeCachePolicy;
      v33 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_NodeCachePolicy(0);
      (*(*(v33 - 8) + 56))(v3 + v32, 1, 1, v33);
      *(v3 + 16) = v29;
      *(v3 + 24) = v31;
      return v3;
    }

    sub_1C6E0E478();
    v38 = swift_allocError();
    v36 = 1;
    *v39 = 1;
    v42 = v38;
    swift_willThrow();
    sub_1C6E35BB0(a2, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec);
    sub_1C6E35BB0(v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
  }

  else
  {
    sub_1C6E0E478();
    v34 = swift_allocError();
    *v35 = 0;
    v42 = v34;
    swift_willThrow();
    sub_1C6E35BB0(a2, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec);
    v36 = 0;
  }

  if (v23 == 1)
  {
    sub_1C6E35BB0(v3 + OBJC_IVAR____TtC18ComputationalGraph28TextPreprocessModelContainer_input, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
  }

  if (v36)
  {
    sub_1C6E35BB0(v3 + OBJC_IVAR____TtC18ComputationalGraph28TextPreprocessModelContainer_output, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
  }

  type metadata accessor for TextPreprocessModelContainer(0);
  swift_deallocPartialClassInstance();
  return v3;
}

uint64_t sub_1C6E35484(uint64_t a1)
{
  v2 = sub_1C6E34EEC(*(v1 + OBJC_IVAR____TtC18ComputationalGraph28TextPreprocessModelContainer_input), *(v1 + OBJC_IVAR____TtC18ComputationalGraph28TextPreprocessModelContainer_input + 8), a1);
  v3 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC18ComputationalGraph28TextPreprocessModelContainer_codesLength);
  v5 = sub_1C6E2C1EC(v2, v4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7AC0, &unk_1C6EE7860);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C6EE83C0;
  *(v6 + 32) = sub_1C6EE4E30();
  *(v6 + 40) = sub_1C6EE4E30();
  v7 = objc_allocWithZone(MEMORY[0x1E695FED0]);
  v8 = sub_1C6E35C78(v6, 131104);
  v25 = v3;
  v28 = *(v5 + 16);
  if (v28)
  {
    v9 = 0;
    v26 = v5;
    v27 = v5 + 32;
    while (v9 < *(v5 + 16))
    {
      if ((v4 & 0x8000000000000000) != 0)
      {
        goto LABEL_14;
      }

      if (v4)
      {
        if (v4 > *(*(v27 + 8 * v9) + 16))
        {
          goto LABEL_15;
        }

        v10 = 0;
        do
        {
          v11 = v10 + 1;
          v12 = swift_allocObject();
          *(v12 + 16) = xmmword_1C6EE83C0;
          *(v12 + 32) = sub_1C6EE4E30();
          *(v12 + 40) = sub_1C6EE4E30();
          v13 = sub_1C6EE5550();
          sub_1C6E1F61C();
          v14 = sub_1C6EE4C90();

          [v8 setObject:v13 forKeyedSubscript:v14];

          v10 = v11;
        }

        while (v4 != v11);

        v5 = v26;
      }

      if (++v9 == v28)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    swift_once();
    v21 = qword_1EDEF8F88;
    v22 = sub_1C6EE4EC0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
    v23 = swift_allocObject();
    *(v23 + 16) = *(v9 + 1424);
    swift_getErrorValue();
    sub_1C6EE5480();
    *(v23 + 56) = MEMORY[0x1E69E6158];
    *(v23 + 64) = sub_1C6DF10E0();
    *(v23 + 32) = 0;
    *(v23 + 40) = 0xE000000000000000;
    sub_1C6EE4730("Failed to make MLMultiArray with error %{public}@", 49, 2, &dword_1C6DE9000, v21, v22, v23);

    return MEMORY[0x1E69E7CC8];
  }

  else
  {
LABEL_11:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7C70, &unk_1C6EE8400);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C6EE6590;
    v16 = *(v25 + OBJC_IVAR____TtC18ComputationalGraph28TextPreprocessModelContainer_output + 8);
    *(inited + 32) = *(v25 + OBJC_IVAR____TtC18ComputationalGraph28TextPreprocessModelContainer_output);
    *(inited + 40) = v16;
    *(inited + 48) = v8;

    v17 = v8;
    v18 = sub_1C6E0BB74(inited);
    swift_setDeallocating();
    sub_1C6E35E94(inited + 32, &qword_1EC1F7C78, &unk_1C6EE91B0);
    sub_1C6E2AAA8(v18);
    v20 = v19;
  }

  return v20;
}

uint64_t sub_1C6E35898()
{

  sub_1C6E35BB0(v0 + OBJC_IVAR____TtC18ComputationalGraph28TextPreprocessModelContainer_input, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
  return sub_1C6E35BB0(v0 + OBJC_IVAR____TtC18ComputationalGraph28TextPreprocessModelContainer_output, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
}

uint64_t sub_1C6E3594C()
{

  sub_1C6E35BB0(v0 + OBJC_IVAR____TtC18ComputationalGraph19AbstractComputation_modelIOSpec, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec);
  sub_1C6E35E94(v0 + OBJC_IVAR____TtC18ComputationalGraph19AbstractComputation_nodeCachePolicy, &qword_1EC1F7508, &unk_1C6EE6690);

  sub_1C6E35BB0(v0 + OBJC_IVAR____TtC18ComputationalGraph28TextPreprocessModelContainer_input, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
  sub_1C6E35BB0(v0 + OBJC_IVAR____TtC18ComputationalGraph28TextPreprocessModelContainer_output, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TextPreprocessModelContainer(uint64_t a1)
{
  result = qword_1EDEF7F20;
  if (!qword_1EDEF7F20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6E35B04(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO(319);
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

uint64_t sub_1C6E35BB0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C6E35C10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_1C6E35C78(uint64_t a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  sub_1C6E1F61C();
  v4 = sub_1C6EE4C90();

  v9[0] = 0;
  v5 = [v2 initWithShape:v4 dataType:a2 error:v9];

  if (v5)
  {
    v6 = v9[0];
  }

  else
  {
    v7 = v9[0];
    sub_1C6EE4050();

    swift_willThrow();
  }

  return v5;
}

unint64_t sub_1C6E35D64(uint64_t a1, uint64_t a2)
{
  sub_1C6EE5580();
  sub_1C6EE4B30();
  v4 = sub_1C6EE55A0();

  return sub_1C6E35DDC(a1, a2, v4);
}

unint64_t sub_1C6E35DDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1C6EE54B0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1C6E35E94(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *sub_1C6E35EF4(uint64_t a1)
{
  v2 = sub_1C6EE4970();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6E41EBC(&qword_1EDEF6210, MEMORY[0x1E69666B0], MEMORY[0x1E69666B8]);
  v6 = sub_1C6EE4C10();
  v34 = MEMORY[0x1E69E7CC0];
  sub_1C6E15A10(0, v6 & ~(v6 >> 63), 0);
  v7 = v34;
  (*(v3 + 16))(v5, a1, v2);
  result = sub_1C6EE4C00();
  if ((v6 & 0x8000000000000000) == 0)
  {
    v9 = v33;
    if (v6)
    {
      v10 = v32;
      *&v31 = *(v32 + 16);
      v30 = xmmword_1C6EE6590;
      v11 = v33;
      while (v31 != v11)
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_21;
        }

        if (v11 >= *(v10 + 16))
        {
          goto LABEL_22;
        }

        v12 = *(v10 + 32 + v11);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
        v13 = swift_allocObject();
        *(v13 + 16) = v30;
        *(v13 + 56) = MEMORY[0x1E69E7508];
        *(v13 + 64) = MEMORY[0x1E69E7558];
        *(v13 + 32) = v12;
        result = sub_1C6EE4AC0();
        v34 = v7;
        v16 = *(v7 + 16);
        v15 = *(v7 + 24);
        if (v16 >= v15 >> 1)
        {
          v29 = result;
          v18 = v14;
          sub_1C6E15A10((v15 > 1), v16 + 1, 1);
          v14 = v18;
          result = v29;
          v7 = v34;
        }

        *(v7 + 16) = v16 + 1;
        v17 = v7 + 16 * v16;
        *(v17 + 32) = result;
        *(v17 + 40) = v14;
        ++v11;
        if (!--v6)
        {
          v33 = v11;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
    }

    else
    {
      v11 = v33;
LABEL_12:
      v19 = v32;
      v20 = *(v32 + 16);
      if (v11 == v20)
      {
LABEL_13:

        return v7;
      }

      v31 = xmmword_1C6EE6590;
      while (v11 < v20)
      {
        v21 = *(v19 + 32 + v11);
        v33 = v11 + 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
        v22 = swift_allocObject();
        *(v22 + 16) = v31;
        *(v22 + 56) = MEMORY[0x1E69E7508];
        *(v22 + 64) = MEMORY[0x1E69E7558];
        *(v22 + 32) = v21;
        result = sub_1C6EE4AC0();
        v34 = v7;
        v25 = *(v7 + 16);
        v24 = *(v7 + 24);
        if (v25 >= v24 >> 1)
        {
          v27 = result;
          v28 = v23;
          sub_1C6E15A10((v24 > 1), v25 + 1, 1);
          v23 = v28;
          result = v27;
          v7 = v34;
        }

        *(v7 + 16) = v25 + 1;
        v26 = v7 + 16 * v25;
        *(v26 + 32) = result;
        *(v26 + 40) = v23;
        v20 = *(v19 + 16);
        v11 = v33;
        if (v33 == v20)
        {
          goto LABEL_13;
        }
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6E362A4()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v1 = sub_1C6EE40B0();
    *(v0 + 16) = v1;
  }

  return v1;
}

char *sub_1C6E36310()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v56 = &v52 - v2;
  v3 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v57 = (&v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpecHeader(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v58 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF8, &unk_1C6EF23C0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v59 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v52 - v12;
  v65 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpec(0);
  MEMORY[0x1EEE9AC00](v65);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F00, &unk_1C6EE9290);
  v16 = MEMORY[0x1EEE9AC00](v64);
  v63 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v52 - v19;
  v21 = *(v0 + OBJC_IVAR____TtC18ComputationalGraph14ResourceReader_localComputationalGraphSpecs);
  v22 = *(v21 + 16);
  if (!v22)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v23 = v21 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
  v62 = (v7 + 48);
  v52 = (v4 + 56);
  v67 = v6;
  v68 = MEMORY[0x1E69E7CC0];
  v24 = *(v18 + 72);
  v60 = v3;
  v61 = v24;
  v25 = &unk_1C6EF23C0;
  v53 = (v4 + 48);
  v54 = &v52 - v19;
  v55 = v13;
  do
  {
    v69 = v23;
    v70 = v22;
    sub_1C6E41E54(v23, v20, &qword_1EC1F7F00, &unk_1C6EE9290);
    v26 = v63;
    sub_1C6E41E54(v20, v63, &qword_1EC1F7F00, &unk_1C6EE9290);
    sub_1C6E41D64(v26 + *(v64 + 48), v15, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpec);
    v27 = sub_1C6EE41A0();
    (*(*(v27 - 8) + 8))(v26, v27);
    v28 = *(v65 + 32);
    sub_1C6E41E54(&v15[v28], v13, &qword_1EC1F7EF8, v25);
    v29 = v13;
    v30 = v13;
    v31 = v67;
    v66 = *v62;
    if (v66(v29, 1, v67) == 1)
    {
      sub_1C6E41F84(v15, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpec);
      sub_1C6E41F04(v20, &qword_1EC1F7F00, &unk_1C6EE9290);
      sub_1C6E41F04(v30, &qword_1EC1F7EF8, v25);
      v13 = v30;
    }

    else
    {
      sub_1C6E41F04(v30, &qword_1EC1F7EF8, v25);
      v32 = v15;
      v33 = v59;
      v34 = v25;
      sub_1C6E41E54(&v15[v28], v59, &qword_1EC1F7EF8, v25);
      v35 = v66;
      if (v66(v33, 1, v31) == 1)
      {
        v36 = v58;
        *v58 = 0;
        *(v36 + 1) = 0xE000000000000000;
        sub_1C6EE4420();
        (*v52)(&v36[*(v31 + 24)], 1, 1, v60);
        v37 = v35(v33, 1, v31);
        v38 = v36;
        v25 = v34;
        v39 = v53;
        if (v37 != 1)
        {
          sub_1C6E41F04(v59, &qword_1EC1F7EF8, v34);
        }
      }

      else
      {
        v40 = v33;
        v38 = v58;
        sub_1C6E41D64(v40, v58, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpecHeader);
        v25 = v34;
        v39 = v53;
      }

      v41 = v56;
      sub_1C6E41E54(&v38[*(v67 + 24)], v56, &qword_1EC1F7EF0, &unk_1C6EE9280);
      v42 = *v39;
      v43 = v60;
      if ((*v39)(v41, 1, v60) == 1)
      {
        v44 = v57;
        *v57 = 0;
        v44[1] = 0xE000000000000000;
        sub_1C6EE4420();
        sub_1C6E41F84(v38, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpecHeader);
        if (v42(v41, 1, v43) != 1)
        {
          sub_1C6E41F04(v41, &qword_1EC1F7EF0, &unk_1C6EE9280);
        }
      }

      else
      {
        sub_1C6E41F84(v38, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpecHeader);
        v44 = v57;
        sub_1C6E41D64(v41, v57, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
      }

      v46 = *v44;
      v45 = v44[1];

      sub_1C6E41F84(v44, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v68 = sub_1C6ED8FB0(0, *(v68 + 2) + 1, 1, v68);
      }

      v48 = *(v68 + 2);
      v47 = *(v68 + 3);
      if (v48 >= v47 >> 1)
      {
        v68 = sub_1C6ED8FB0((v47 > 1), v48 + 1, 1, v68);
      }

      v15 = v32;
      sub_1C6E41F84(v32, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpec);
      v20 = v54;
      sub_1C6E41F04(v54, &qword_1EC1F7F00, &unk_1C6EE9290);
      v49 = v68;
      *(v68 + 2) = v48 + 1;
      v50 = &v49[16 * v48];
      *(v50 + 4) = v46;
      *(v50 + 5) = v45;
      v13 = v55;
    }

    v23 = v69 + v61;
    v22 = v70 - 1;
  }

  while (v70 != 1);
  return v68;
}

void *sub_1C6E36AAC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, unint64_t a5)
{
  v6 = v5;
  v166 = a5;
  LODWORD(v164) = a4;
  v163 = a3;
  v174 = a2;
  v145 = sub_1C6EE47A0();
  v156 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145);
  v155 = &v144 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v183 = &v144 - v10;
  v182 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID(0);
  v149 = *(v182 - 8);
  MEMORY[0x1EEE9AC00](v182);
  v181 = &v144 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF8, &unk_1C6EF23C0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v184 = &v144 - v13;
  v180 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpecHeader(0);
  v148 = *(v180 - 8);
  MEMORY[0x1EEE9AC00](v180);
  v179 = &v144 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F00, &unk_1C6EE9290);
  v146 = *(v187 - 8);
  v15 = MEMORY[0x1EEE9AC00](v187);
  v186 = &v144 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v177 = (&v144 - v17);
  v178 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpec(0);
  v151 = *(v178 - 8);
  v18 = MEMORY[0x1EEE9AC00](v178);
  v188 = &v144 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v147 = &v144 - v20;
  v21 = sub_1C6EE41A0();
  v168 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v162 = &v144 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1C6EE4790();
  v24 = *(v23 - 8);
  v175 = v23;
  v176 = v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v158 = &v144 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v169 = &v144 - v27;
  v28 = sub_1C6EE4760();
  v171 = *(v28 - 8);
  v172 = v28;
  v29 = MEMORY[0x1EEE9AC00](v28);
  v154 = &v144 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v159 = &v144 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v170 = &v144 - v33;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9AB0, &qword_1C6EE9250);
  v34 = MEMORY[0x1EEE9AC00](v157);
  v160 = &v144 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v161 = &v144 - v37;
  MEMORY[0x1EEE9AC00](v36);
  v39 = &v144 - v38;
  *(v6 + 16) = 0;
  v40 = OBJC_IVAR____TtC18ComputationalGraph14ResourceReader_signposter;
  if (qword_1EDEF8F80 != -1)
  {
    swift_once();
  }

  v41 = qword_1EDEF8F88;
  sub_1C6EE4770();
  *(v6 + OBJC_IVAR____TtC18ComputationalGraph14ResourceReader_loadedComputations) = MEMORY[0x1E69E7CC8];
  v42 = (v6 + OBJC_IVAR____TtC18ComputationalGraph14ResourceReader_didCacheModelsObserver);
  *v42 = 0;
  v42[1] = 0;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1C6EE6B40;
  sub_1C6E41EBC(qword_1EDEF8FC0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
  v173 = a1;
  v185 = v21;
  v44 = sub_1C6EE5460();
  v46 = v45;
  v47 = MEMORY[0x1E69E6158];
  *(v43 + 56) = MEMORY[0x1E69E6158];
  v48 = v6;
  v49 = sub_1C6DF10E0();
  *(v43 + 64) = v49;
  *(v43 + 32) = v44;
  *(v43 + 40) = v46;
  sub_1C6E41E54(v174, v39, &unk_1EC1F9AB0, &qword_1C6EE9250);
  v50 = sub_1C6EE4AF0();
  *(v43 + 96) = v47;
  *(v43 + 104) = v49;
  v152 = v49;
  v51 = v48;
  *(v43 + 72) = v50;
  *(v43 + 80) = v52;
  v53 = sub_1C6EE4EE0();
  v153 = v41;
  sub_1C6EE4730("Initializing ResourceReader with baseDirectory: %{public}@ modelsDirectory: %{public}@", 86, 2, &dword_1C6DE9000, v41, v53, v43);

  v54 = v175;
  v55 = v176;
  v56 = *(v176 + 16);
  v57 = v169;
  v56(v169, v51 + v40, v175);
  sub_1C6EE4780();
  v58 = v170;
  sub_1C6EE4740();
  v169 = *(v55 + 8);
  (v169)(v57, v54);
  v157 = v40;
  v167 = v51;
  v59 = v158;
  v56(v158, v51 + v40, v54);
  v60 = sub_1C6EE4780();
  v61 = sub_1C6EE4F80();
  v62 = v54;
  v63 = v55 + 8;
  if (sub_1C6EE4FB0())
  {
    v64 = swift_slowAlloc();
    *v64 = 0;
    v65 = sub_1C6EE4750();
    _os_signpost_emit_with_name_impl(&dword_1C6DE9000, v60, v61, v65, "ResourceReader.init", "", v64, 2u);
    MEMORY[0x1CCA59290](v64, -1, -1);
  }

  (*(v171 + 16))(v159, v58, v172);
  sub_1C6EE47D0();
  swift_allocObject();
  v66 = sub_1C6EE47C0();
  v176 = v63;
  (v169)(v59, v62);
  v67 = v162;
  v68 = v173;
  sub_1C6EE4120();
  v69 = OBJC_IVAR____TtC18ComputationalGraph14ResourceReader_baseDirectory;
  v70 = v168;
  v71 = v167;
  v72 = v185;
  (*(v168 + 32))(v167 + OBJC_IVAR____TtC18ComputationalGraph14ResourceReader_baseDirectory, v67, v185);
  v73 = v174;
  v74 = v160;
  sub_1C6E41E54(v174, v160, &unk_1EC1F9AB0, &qword_1C6EE9250);
  if ((*(v70 + 48))(v74, 1, v72) == 1)
  {
    sub_1C6E41F04(v74, &unk_1EC1F9AB0, &qword_1C6EE9250);
    v75 = 1;
    v76 = v165;
    v77 = v161;
  }

  else
  {
    v77 = v161;
    sub_1C6EE4120();
    v72 = v185;
    (*(v70 + 8))(v74, v185);
    v75 = 0;
    v76 = v165;
  }

  (*(v70 + 56))(v77, v75, 1, v72);
  v78 = v77;
  v79 = OBJC_IVAR____TtC18ComputationalGraph14ResourceReader_modelsDirectory;
  sub_1C6E41FE4(v78, v71 + OBJC_IVAR____TtC18ComputationalGraph14ResourceReader_modelsDirectory, &unk_1EC1F9AB0, &qword_1C6EE9250);
  *(v71 + OBJC_IVAR____TtC18ComputationalGraph14ResourceReader_computeUnits) = v163;
  *(v71 + OBJC_IVAR____TtC18ComputationalGraph14ResourceReader_readOnly) = v164 & 1;
  v80 = sub_1C6E37F00(v166, v68);
  if (v76)
  {

LABEL_10:
    sub_1C6E41F04(v73, &unk_1EC1F9AB0, &qword_1C6EE9250);
    v81 = *(v70 + 8);
    v82 = v185;
    v81(v173, v185);
    (*(v171 + 8))(v170, v172);

    v81(v71 + v69, v82);
    sub_1C6E41F04(v71 + v79, &unk_1EC1F9AB0, &qword_1C6EE9250);
    (v169)(v71 + v157, v175);

    sub_1C6E41D54(*(v71 + OBJC_IVAR____TtC18ComputationalGraph14ResourceReader_didCacheModelsObserver), *(v71 + OBJC_IVAR____TtC18ComputationalGraph14ResourceReader_didCacheModelsObserver + 8));
    type metadata accessor for ResourceReader(0);
    swift_deallocPartialClassInstance();
    return v71;
  }

  v83 = v80;

  if (!*(v83 + 16))
  {

    sub_1C6DFE4C0();
    swift_allocError();
    *v98 = xmmword_1C6EE91C0;
    *(v98 + 16) = 5;
    swift_willThrow();

    goto LABEL_10;
  }

  v166 = v66;
  v165 = 0;
  *(v71 + OBJC_IVAR____TtC18ComputationalGraph14ResourceReader_localComputationalGraphSpecs) = v83;
  v164 = swift_allocObject();
  *(v164 + 16) = xmmword_1C6EE6590;
  v189 = 0;
  v190 = 0xE000000000000000;
  v84 = *(v83 + 16);
  v85 = MEMORY[0x1E69E7CC0];
  if (v84)
  {
    v191 = MEMORY[0x1E69E7CC0];

    sub_1C6E15BF0(0, v84, 0);
    v86 = v191;
    v87 = v83 + ((*(v146 + 80) + 32) & ~*(v146 + 80));
    v88 = *(v146 + 72);
    v175 = v83;
    v176 = v88;
    v89 = (v168 + 8);
    v90 = v151;
    v91 = v147;
    do
    {
      v92 = v177;
      sub_1C6E41E54(v87, v177, &qword_1EC1F7F00, &unk_1C6EE9290);
      v93 = v92;
      v94 = v186;
      sub_1C6E41FE4(v93, v186, &qword_1EC1F7F00, &unk_1C6EE9290);
      sub_1C6E41D64(v94 + *(v187 + 48), v91, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpec);
      (*v89)(v94, v185);
      v191 = v86;
      v96 = *(v86 + 16);
      v95 = *(v86 + 24);
      if (v96 >= v95 >> 1)
      {
        sub_1C6E15BF0((v95 > 1), v96 + 1, 1);
        v86 = v191;
      }

      *(v86 + 16) = v96 + 1;
      sub_1C6E41D64(v91, v86 + ((*(v90 + 80) + 32) & ~*(v90 + 80)) + *(v90 + 72) * v96, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpec);
      v87 += v176;
      --v84;
    }

    while (v84);

    v71 = v167;
    v97 = v86;
    v85 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v97 = MEMORY[0x1E69E7CC0];
    v90 = v151;
  }

  v99 = *(v97 + 16);
  v101 = v182;
  v100 = v183;
  v102 = v181;
  v103 = v184;
  if (v99)
  {
    v191 = v85;
    v104 = v97;
    sub_1C6E15A10(0, v99, 0);
    v187 = v191;
    v105 = (*(v90 + 80) + 32) & ~*(v90 + 80);
    v163 = v104;
    v106 = v104 + v105;
    v107 = (v148 + 48);
    v169 = (v149 + 56);
    v176 = *(v90 + 72);
    v177 = (v148 + 48);
    v175 = (v149 + 48);
    do
    {
      v186 = v99;
      v108 = v188;
      sub_1C6E41DCC(v106, v188, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpec);
      sub_1C6E41E54(v108 + *(v178 + 32), v103, &qword_1EC1F7EF8, &unk_1C6EF23C0);
      v109 = *v107;
      v110 = v180;
      if ((*v107)(v103, 1, v180) == 1)
      {
        v111 = v179;
        *v179 = 0;
        *(v111 + 1) = 0xE000000000000000;
        sub_1C6EE4420();
        (*v169)(&v111[*(v110 + 24)], 1, 1, v101);
        if (v109(v103, 1, v110) != 1)
        {
          sub_1C6E41F04(v184, &qword_1EC1F7EF8, &unk_1C6EF23C0);
        }
      }

      else
      {
        v111 = v179;
        sub_1C6E41D64(v103, v179, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpecHeader);
      }

      sub_1C6E41E54(&v111[*(v110 + 24)], v100, &qword_1EC1F7EF0, &unk_1C6EE9280);
      v112 = *v175;
      v113 = (*v175)(v100, 1, v101);
      v114 = v186;
      if (v113 == 1)
      {
        *v102 = 0;
        v102[1] = 0xE000000000000000;
        sub_1C6EE4420();
        if (v112(v100, 1, v101) != 1)
        {
          sub_1C6E41F04(v100, &qword_1EC1F7EF0, &unk_1C6EE9280);
        }
      }

      else
      {
        sub_1C6E41D64(v100, v102, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
      }

      v116 = *v102;
      v115 = v102[1];

      sub_1C6E41F84(v102, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
      sub_1C6E41F84(v111, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpecHeader);
      sub_1C6E41F84(v188, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpec);
      v191 = v187;
      v118 = *(v187 + 16);
      v117 = *(v187 + 24);
      if (v118 >= v117 >> 1)
      {
        sub_1C6E15A10((v117 > 1), v118 + 1, 1);
        v187 = v191;
      }

      v119 = v187;
      *(v187 + 16) = v118 + 1;
      v120 = v119 + 16 * v118;
      *(v120 + 32) = v116;
      *(v120 + 40) = v115;
      v107 = v177;
      v106 += v176;
      v99 = v114 - 1;
      v101 = v182;
      v100 = v183;
      v102 = v181;
      v103 = v184;
    }

    while (v99);

    v71 = v167;
  }

  else
  {

    v187 = MEMORY[0x1E69E7CC0];
  }

  v121 = MEMORY[0x1E69E6158];
  v122 = MEMORY[0x1CCA580B0](v187, MEMORY[0x1E69E6158]);
  v124 = v123;

  MEMORY[0x1CCA57F60](v122, v124);

  v125 = v189;
  v126 = v190;
  v127 = v164;
  v128 = v152;
  *(v164 + 56) = v121;
  v127[8] = v128;
  v127[4] = v125;
  v127[5] = v126;
  v129 = sub_1C6EE4EE0();
  sub_1C6EE4730("Loaded computationalGraph specs: %{public}@", 43, 2, &dword_1C6DE9000, v153, v129, v127);

  v130 = sub_1C6EE4780();
  v131 = v154;
  sub_1C6EE47B0();
  v132 = sub_1C6EE4F70();
  v133 = sub_1C6EE4FB0();
  v134 = v174;
  v135 = v156;
  v136 = v155;
  if (v133)
  {

    sub_1C6EE47E0();

    v137 = v145;
    if ((*(v135 + 88))(v136, v145) == *MEMORY[0x1E69E93E8])
    {
      v138 = "[Error] Interval already ended";
    }

    else
    {
      (*(v135 + 8))(v136, v137);
      v138 = "";
    }

    v139 = swift_slowAlloc();
    *v139 = 0;
    v140 = sub_1C6EE4750();
    _os_signpost_emit_with_name_impl(&dword_1C6DE9000, v130, v132, v140, "ResourceReader.init", v138, v139, 2u);
    MEMORY[0x1CCA59290](v139, -1, -1);
    v134 = v174;
  }

  sub_1C6E41F04(v134, &unk_1EC1F9AB0, &qword_1C6EE9250);
  (*(v168 + 8))(v173, v185);
  v141 = v172;
  v142 = *(v171 + 8);
  v142(v131, v172);
  v142(v170, v141);
  return v71;
}

uint64_t sub_1C6E37F00(unint64_t a1, uint64_t a2)
{
  v5 = sub_1C6EE41A0();
  v39 = *(v5 - 1);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16))
  {
    if (qword_1EDEF8F80 != -1)
    {
      swift_once();
    }

    v28 = qword_1EDEF8F88;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1C6EE6590;
    sub_1C6E41EBC(qword_1EDEF8FC0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v29 = sub_1C6EE5460();
    v31 = v30;
    *(v18 + 56) = MEMORY[0x1E69E6158];
    *(v18 + 64) = sub_1C6DF10E0();
    *(v18 + 32) = v29;
    *(v18 + 40) = v31;
    v32 = sub_1C6EE4EE0();
    sub_1C6EE4730("No package file names specified, gathering computationalGraph specs from base directory %{public}@", 98, 2, &dword_1C6DE9000, v28, v32, v18);

    v33 = sub_1C6E38418();
    if (!v2)
    {
      return v33;
    }

    return v18;
  }

  MEMORY[0x1EEE9AC00](v6);
  *(&v35 - 2) = a2;
  v9 = sub_1C6EDC2B0(sub_1C6E41E34, (&v35 - 4), a1);
  if (qword_1EDEF8F80 != -1)
  {
    goto LABEL_35;
  }

LABEL_3:
  v10 = qword_1EDEF8F88;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C6EE6590;
  v37 = v5;
  v12 = MEMORY[0x1CCA580B0](v9, v5);
  v38 = v9;
  v14 = v13;
  *(v11 + 56) = MEMORY[0x1E69E6158];
  *(v11 + 64) = sub_1C6DF10E0();
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  v15 = v38;
  v16 = sub_1C6EE4EE0();
  sub_1C6EE4730("Package IDs specified, gathering computationalGraph specs from packages %{public}@", 82, 2, &dword_1C6DE9000, v10, v16, v11);

  v36 = *(v15 + 16);
  if (v36)
  {
    v17 = 0;
    v35 = v39 + 16;
    v5 = (v39 + 8);
    v18 = MEMORY[0x1E69E7CC0];
    v9 = v37;
    while (1)
    {
      if (v17 >= *(v15 + 16))
      {
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        swift_once();
        goto LABEL_3;
      }

      (*(v39 + 16))(v8, v15 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v17, v9);
      v19 = sub_1C6E38418();
      if (v2)
      {

        (*v5)(v8, v9);

        return v18;
      }

      v20 = v19;
      v21 = *(v19 + 16);
      v22 = *(v18 + 16);
      v9 = v22 + v21;
      if (__OFADD__(v22, v21))
      {
        goto LABEL_31;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v9 <= *(v18 + 24) >> 1)
      {
        if (*(v20 + 16))
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v22 <= v9)
        {
          v24 = v22 + v21;
        }

        else
        {
          v24 = v22;
        }

        v18 = sub_1C6ED980C(isUniquelyReferenced_nonNull_native, v24, 1, v18);
        if (*(v20 + 16))
        {
LABEL_18:
          v9 = (*(v18 + 24) >> 1) - *(v18 + 16);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F00, &unk_1C6EE9290);
          if (v9 < v21)
          {
            goto LABEL_33;
          }

          swift_arrayInitWithCopy();

          if (v21)
          {
            v25 = *(v18 + 16);
            v26 = __OFADD__(v25, v21);
            v27 = v25 + v21;
            if (v26)
            {
              goto LABEL_34;
            }

            *(v18 + 16) = v27;
          }

          goto LABEL_6;
        }
      }

      if (v21)
      {
        goto LABEL_32;
      }

LABEL_6:
      ++v17;
      v9 = v37;
      (*v5)(v8, v37);
      v15 = v38;
      if (v36 == v17)
      {
        goto LABEL_27;
      }
    }
  }

  v18 = MEMORY[0x1E69E7CC0];
LABEL_27:

  return v18;
}

uint64_t sub_1C6E38418()
{
  v0 = sub_1C6EE4450();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v42 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F18, &unk_1C6EE92C0);
  v54 = *(v3 - 8);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v53 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v55 = &v42 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v42 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F00, &unk_1C6EE9290);
  v52 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v42 - v11;
  v13 = sub_1C6EE41A0();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v58;
  result = sub_1C6E408F8();
  v58 = v17;
  if (v17)
  {
    return result;
  }

  v48 = v2;
  v49 = v10;
  v50 = v13;
  v51 = v12;
  v19 = MEMORY[0x1E69E7CC0];
  if (result)
  {
    v56 = v9;
    v57 = v3;
    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    sub_1C6EE4120();
    v21 = v58;
    sub_1C6E40A74(v16, v20);
    v22 = v51;
    v58 = v21;
    v23 = v14;
    if (v21)
    {
      (*(v14 + 8))(v16, v50);
    }

    (*(v14 + 8))(v16, v50);
    swift_beginAccess();
    v24 = *(v20 + 16);

    v9 = v56;
    v3 = v57;
  }

  else
  {
    v24 = MEMORY[0x1E69E7CC0];
    v22 = v51;
    v23 = v14;
  }

  v25 = *(v24 + 16);
  v26 = v55;
  if (v25)
  {
    v63 = v19;
    v47 = v24;
    v42 = v25;
    sub_1C6E15BB0(0, v25, 0);
    v27 = v47;
    v57 = v63;
    result = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpec(0);
    v45 = result;
    v28 = 0;
    v29 = v54;
    v44 = v27 + ((*(v29 + 80) + 32) & ~*(v29 + 80));
    v43 = (v23 + 32);
    v46 = (v23 + 8);
    while (v28 < *(v27 + 16))
    {
      v30 = *(v29 + 72);
      v56 = v28;
      v31 = v9;
      sub_1C6E41E54(v44 + v30 * v28, v9, &qword_1EC1F7F18, &unk_1C6EE92C0);
      sub_1C6E41E54(v9, v26, &qword_1EC1F7F18, &unk_1C6EE92C0);
      sub_1C6DF1134(*(v26 + *(v3 + 48)), *(v26 + *(v3 + 48) + 8));
      v32 = v26;
      v33 = v50;
      (*v43)(v22, v32, v50);
      v34 = v53;
      sub_1C6E41E54(v9, v53, &qword_1EC1F7F18, &unk_1C6EE92C0);
      v62 = *(v34 + *(v3 + 48));
      v61 = 0;
      v59 = 0u;
      v60 = 0u;
      sub_1C6EE4440();
      sub_1C6E41EBC(qword_1EDEF7A60, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpec, &unk_1C6EF2D9C);
      v35 = v58;
      sub_1C6EE45D0();
      v58 = v35;
      if (v35)
      {
        sub_1C6E41F04(v9, &qword_1EC1F7F18, &unk_1C6EE92C0);

        v41 = *v46;
        (*v46)(v34, v33);
        v41(v51, v33);
      }

      sub_1C6E41F04(v9, &qword_1EC1F7F18, &unk_1C6EE92C0);
      (*v46)(v34, v33);
      v36 = v57;
      v63 = v57;
      v38 = *(v57 + 16);
      v37 = *(v57 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_1C6E15BB0((v37 > 1), v38 + 1, 1);
        v36 = v63;
      }

      v39 = v56 + 1;
      *(v36 + 16) = v38 + 1;
      v22 = v51;
      v40 = (*(v52 + 80) + 32) & ~*(v52 + 80);
      v57 = v36;
      result = sub_1C6E41FE4(v51, v36 + v40 + *(v52 + 72) * v38, &qword_1EC1F7F00, &unk_1C6EE9290);
      v28 = v39;
      v29 = v54;
      v26 = v55;
      v27 = v47;
      v9 = v31;
      if (v42 == v39)
      {

        return v57;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1C6E38ACC(void *a1)
{
  v2 = sub_1C6EE4090();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1[1];
  v8[0] = *a1;
  v8[1] = v6;
  (*(v3 + 104))(v5, *MEMORY[0x1E6968F70], v2);
  sub_1C6DF0C68();
  sub_1C6EE4180();
  return (*(v3 + 8))(v5, v2);
}

void *sub_1C6E38BFC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D68, &unk_1C6EE89B0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v51 - v2;
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_DefaultFeatures(0);
  v51 = *(v8 - 8);
  v52 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpec(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F00, &unk_1C6EE9290);
  v14 = MEMORY[0x1EEE9AC00](v60);
  v59 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v51 - v16;
  v19 = *(v0 + OBJC_IVAR____TtC18ComputationalGraph14ResourceReader_localComputationalGraphSpecs);
  v57 = *(v19 + 16);
  if (!v57)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v20 = 0;
  v58 = v19 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v21 = MEMORY[0x1E69E7CC8];
  v22 = (v5 + 48);
  v65 = v4;
  v66 = v3;
  v63 = v10;
  v64 = v7;
  v55 = v17;
  v56 = v13;
  v53 = v19;
  v54 = &v51 - v16;
  v62 = (v5 + 48);
  while (1)
  {
    if (v20 >= *(v19 + 16))
    {
      goto LABEL_31;
    }

    v24 = *(v17 + 72);
    v61 = v20;
    sub_1C6E41E54(v58 + v24 * v20, v18, &qword_1EC1F7F00, &unk_1C6EE9290);
    v25 = v18;
    v26 = v59;
    sub_1C6E41E54(v25, v59, &qword_1EC1F7F00, &unk_1C6EE9290);
    sub_1C6E41D64(v26 + *(v60 + 48), v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpec);
    v27 = sub_1C6EE41A0();
    (*(*(v27 - 8) + 8))(v26, v27);
    v28 = *(v13 + 2);
    v70 = *(v28 + 16);
    if (v70)
    {
      break;
    }

LABEL_3:
    v23 = v61 + 1;
    v18 = v54;
    sub_1C6E41F04(v54, &qword_1EC1F7F00, &unk_1C6EE9290);
    v13 = v56;
    sub_1C6E41F84(v56, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpec);
    v20 = v23;
    v17 = v55;
    v19 = v53;
    if (v23 == v57)
    {
      return v21;
    }
  }

  v29 = 0;
  v69 = *(v52 + 24);
  v68 = v28 + ((*(v51 + 80) + 32) & ~*(v51 + 80));
  v67 = *(v51 + 72);
  while (1)
  {
    sub_1C6E41DCC(v68 + v67 * v29, v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_DefaultFeatures);
    sub_1C6E41E54(&v10[v69], v3, &qword_1EC1F7D68, &unk_1C6EE89B0);
    v30 = *v22;
    if ((*v22)(v3, 1, v4) == 1)
    {
      *v7 = sub_1C6E0B978(MEMORY[0x1E69E7CC0]);
      sub_1C6EE4420();
      if (v30(v3, 1, v4) != 1)
      {
        sub_1C6E41F04(v3, &qword_1EC1F7D68, &unk_1C6EE89B0);
      }
    }

    else
    {
      sub_1C6E41D64(v3, v7, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
    }

    v31 = sub_1C6E29CBC(v7);
    sub_1C6E41F84(v7, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
    v32 = *v10;
    v33 = *(*v10 + 16);

    if (v33)
    {
      break;
    }

LABEL_7:
    swift_bridgeObjectRelease_n();
    ++v29;
    v10 = v63;
    sub_1C6E41F84(v63, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_DefaultFeatures);
    v4 = v65;
    v3 = v66;
    v7 = v64;
    v22 = v62;
    if (v29 == v70)
    {
      goto LABEL_3;
    }
  }

  v34 = (v32 + 40);
  while (1)
  {
    v36 = *(v34 - 1);
    v35 = *v34;
    swift_bridgeObjectRetain_n();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v71 = v21;
    v39 = sub_1C6DEC784(v36, v35);
    v40 = v21[2];
    v41 = (v38 & 1) == 0;
    v42 = v40 + v41;
    if (__OFADD__(v40, v41))
    {
      break;
    }

    v43 = v38;
    if (v21[3] >= v42)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v21 = v71;
        if (v38)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_1C6E0A2EC();
        v21 = v71;
        if (v43)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
      sub_1C6E07EA4(v42, isUniquelyReferenced_nonNull_native);
      v44 = sub_1C6DEC784(v36, v35);
      if ((v43 & 1) != (v45 & 1))
      {
        goto LABEL_32;
      }

      v39 = v44;
      v21 = v71;
      if (v43)
      {
LABEL_14:
        *(v21[7] + 8 * v39) = v31;
        swift_bridgeObjectRelease_n();
        goto LABEL_15;
      }
    }

    v21[(v39 >> 6) + 8] |= 1 << v39;
    v46 = (v21[6] + 16 * v39);
    *v46 = v36;
    v46[1] = v35;
    *(v21[7] + 8 * v39) = v31;
    v47 = v21[2];
    v48 = __OFADD__(v47, 1);
    v49 = v47 + 1;
    if (v48)
    {
      goto LABEL_30;
    }

    v21[2] = v49;
LABEL_15:

    v34 += 2;
    if (!--v33)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  result = sub_1C6EE5500();
  __break(1u);
  return result;
}

uint64_t (*sub_1C6E392C8())(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage(0);
  v62 = *(v3 - 8);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v64 = v48 - v7;
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpec(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C6EE41A0();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v66 = (v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F00, &unk_1C6EE9290);
  v14 = MEMORY[0x1EEE9AC00](v57);
  v56 = v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v60 = v48 - v17;
  v63 = v0;
  v18 = *(v0 + OBJC_IVAR____TtC18ComputationalGraph14ResourceReader_localComputationalGraphSpecs);
  v51 = *(v18 + 16);
  if (!v51)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v48[1] = v3;
  v19 = 0;
  v55 = v18 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v54 = (v12 + 32);
  v52 = (v12 + 8);
  v20 = MEMORY[0x1E69E7CC8];
  v21 = MEMORY[0x1E69E7CC8];
  v22 = v64;
  v53 = v10;
  v59 = v11;
  v49 = v18;
  v50 = v16;
  while (1)
  {
    if (v19 >= *(v18 + 16))
    {
      goto LABEL_30;
    }

    v23 = *(v16 + 72);
    v58 = v19;
    v24 = v60;
    sub_1C6E41E54(v55 + v23 * v19, v60, &qword_1EC1F7F00, &unk_1C6EE9290);
    v25 = v56;
    sub_1C6E41E54(v24, v56, &qword_1EC1F7F00, &unk_1C6EE9290);
    v26 = *(v57 + 48);
    (*v54)(v66, v25, v59);
    sub_1C6E41D64(v25 + v26, v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpec);
    v27 = *(v10 + 1);
    v65 = *(v27 + 16);
    if (v65)
    {
      break;
    }

    v42 = v20;
LABEL_22:
    v46 = v58 + 1;
    sub_1C6E41F04(v60, &qword_1EC1F7F00, &unk_1C6EE9290);
    v10 = v53;
    sub_1C6E41F84(v53, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpec);
    (*v52)(v66, v59);
    v20 = v42;
    v19 = v46;
    v16 = v50;
    v18 = v49;
    if (v46 == v51)
    {
      return v21;
    }
  }

  v28 = 0;
  v61 = v27;
  while (v28 < *(v27 + 16))
  {
    v29 = *(v62 + 72);
    sub_1C6E41DCC(v27 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + v29 * v28, v22, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage);
    sub_1C6E41DCC(v22, v6, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage);
    v30 = sub_1C6E3B790(v66, v22);
    if (v2)
    {
      v21 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage;
      sub_1C6E41F84(v6, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage);
      sub_1C6E41F84(v22, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage);
      sub_1C6E41F04(v60, &qword_1EC1F7F00, &unk_1C6EE9290);
      sub_1C6E41F84(v53, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpec);
      (*v52)(v66, v59);

      return v21;
    }

    v31 = v30;
    v67 = 0;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v68 = v20;
    v33 = v6;
    v35 = sub_1C6E02400(v6);
    v36 = *(v20 + 2);
    v37 = (v34 & 1) == 0;
    v38 = v36 + v37;
    if (__OFADD__(v36, v37))
    {
      goto LABEL_28;
    }

    v39 = v34;
    if (*(v20 + 3) >= v38)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v42 = v68;
        if (v34)
        {
          goto LABEL_6;
        }
      }

      else
      {
        sub_1C6E0A0AC();
        v42 = v68;
        if (v39)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
      sub_1C6E07820(v38, isUniquelyReferenced_nonNull_native);
      v40 = sub_1C6E02400(v33);
      if ((v39 & 1) != (v41 & 1))
      {
        goto LABEL_31;
      }

      v35 = v40;
      v42 = v68;
      if (v39)
      {
LABEL_6:
        *(*(v42 + 7) + 8 * v35) = v31;

        v6 = v33;
        goto LABEL_7;
      }
    }

    *(v42 + (v35 >> 6) + 8) |= 1 << v35;
    v6 = v33;
    sub_1C6E41DCC(v33, *(v42 + 6) + v35 * v29, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage);
    *(*(v42 + 7) + 8 * v35) = v31;
    v43 = *(v42 + 2);
    v44 = __OFADD__(v43, 1);
    v45 = v43 + 1;
    if (v44)
    {
      goto LABEL_29;
    }

    *(v42 + 2) = v45;
LABEL_7:
    ++v28;
    sub_1C6E41F84(v6, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage);
    v22 = v64;
    sub_1C6E41F84(v64, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage);
    v21 = v42;
    v20 = v42;
    v2 = v67;
    v27 = v61;
    if (v65 == v28)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  result = sub_1C6EE5500();
  __break(1u);
  return result;
}

uint64_t sub_1C6E39950(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7508, &unk_1C6EE6690);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v234 = &v215 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v244 = &v215 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v255 = &v215 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F08, &qword_1C6EE92A0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v215 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v215 - v13;
  v282 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO(0);
  v15 = *(v282 - 8);
  v16 = MEMORY[0x1EEE9AC00](v282);
  v277 = (&v215 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = MEMORY[0x1EEE9AC00](v16);
  v276 = &v215 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v275 = (&v215 - v21);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v274 = &v215 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v281 = &v215 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v280 = &v215 - v26;
  v247 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec(0);
  v27 = MEMORY[0x1EEE9AC00](v247);
  v264 = (&v215 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v27);
  v259 = &v215 - v29;
  v238 = sub_1C6EE42F0();
  v30 = *(v238 - 8);
  MEMORY[0x1EEE9AC00](v238);
  v237 = &v215 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v246 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID(0);
  v32 = *(v246 - 8);
  MEMORY[0x1EEE9AC00](v246);
  v236 = (&v215 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7820, &unk_1C6EEA180);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v224 = &v215 - v35;
  v240 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelStorage(0);
  v36 = *(v240 - 8);
  MEMORY[0x1EEE9AC00](v240);
  v223 = (&v215 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
  v39 = MEMORY[0x1EEE9AC00](v38 - 8);
  v235 = &v215 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v245 = &v215 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F10, &qword_1C6EE92A8);
  v43 = MEMORY[0x1EEE9AC00](v42 - 8);
  v225 = &v215 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v256 = &v215 - v45;
  v252 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage(0);
  v46 = *(v252 - 8);
  v47 = MEMORY[0x1EEE9AC00](v252);
  v222 = &v215 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v261 = &v215 - v49;
  v260 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ComputationNode(0);
  v254 = *(v260 - 1);
  MEMORY[0x1EEE9AC00](v260);
  v265 = (&v215 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
  v51 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpec(0);
  MEMORY[0x1EEE9AC00](v51 - 8);
  v232 = &v215 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F00, &unk_1C6EE9290);
  v53 = MEMORY[0x1EEE9AC00](v230);
  v229 = &v215 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53);
  v231 = &v215 - v56;
  v57 = *(v1 + OBJC_IVAR____TtC18ComputationalGraph14ResourceReader_localComputationalGraphSpecs);
  v285 = MEMORY[0x1E69E7CC0];
  v226 = *(v57 + 16);
  if (!v226)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v227 = v57 + ((*(v55 + 80) + 32) & ~*(v55 + 80));
  v58 = (v46 + 48);
  v59 = 0;
  v250 = v58;
  v219 = v36;
  v239 = (v36 + 56);
  v242 = (v32 + 48);
  v233 = (v30 + 8);
  v278 = (v15 + 48);
  v279 = (v15 + 56);
  v283 = MEMORY[0x1E69E7CC0];
  v241 = a1;
  v269 = v12;
  v272 = v14;
  v60 = v252;
  v61 = v256;
  v62 = a1;
  v253 = v15;
  v221 = v55;
  v220 = v57;
  while (1)
  {
    if (v59 >= *(v57 + 16))
    {
LABEL_114:
      __break(1u);
LABEL_115:
      __break(1u);
LABEL_116:
      result = sub_1C6EE5500();
      __break(1u);
      return result;
    }

    v63 = *(v55 + 72);
    v228 = v59;
    v64 = v227 + v63 * v59;
    v65 = v231;
    sub_1C6E41E54(v64, v231, &qword_1EC1F7F00, &unk_1C6EE9290);
    v66 = v229;
    sub_1C6E41E54(v65, v229, &qword_1EC1F7F00, &unk_1C6EE9290);
    v67 = v232;
    sub_1C6E41D64(v66 + *(v230 + 48), v232, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpec);
    v68 = sub_1C6EE41A0();
    (*(*(v68 - 8) + 8))(v66, v68);
    v69 = *v67;
    v248 = *(*v67 + 16);
    if (v248)
    {
      break;
    }

LABEL_3:
    v59 = v228 + 1;
    sub_1C6E41F04(v231, &qword_1EC1F7F00, &unk_1C6EE9290);
    sub_1C6E41F84(v232, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpec);
    v55 = v221;
    v57 = v220;
    if (v59 == v226)
    {
      return v283;
    }
  }

  v70 = 0;
  v251 = v260[7];
  v249 = v69 + ((*(v254 + 80) + 32) & ~*(v254 + 80));
  v71 = v265;
  v243 = v69;
  while (1)
  {
    if (v70 >= *(v69 + 16))
    {
LABEL_113:
      __break(1u);
      goto LABEL_114;
    }

    sub_1C6E41DCC(v249 + *(v254 + 72) * v70, v71, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ComputationNode);
    sub_1C6E41E54(v71 + v251, v61, &qword_1EC1F7F10, &qword_1C6EE92A8);
    v72 = *v250;
    if ((*v250)(v61, 1, v60) == 1)
    {
      v73 = v261;
      sub_1C6EE4420();
      (*v239)(v73 + *(v60 + 20), 1, 1, v240);
      v74 = *(v60 + 24);
      v75 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec(0);
      v76 = v73 + v74;
      v77 = v256;
      (*(*(v75 - 8) + 56))(v76, 1, 1, v75);
      if (v72(v77, 1, v60) != 1)
      {
        sub_1C6E41F04(v77, &qword_1EC1F7F10, &qword_1C6EE92A8);
      }
    }

    else
    {
      sub_1C6E41D64(v61, v261, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage);
    }

    v78 = v261;
    if (!*(v62 + 16))
    {
      break;
    }

    v79 = sub_1C6E02400(v261);
    if ((v80 & 1) == 0)
    {
      break;
    }

    v266 = v70;
    v263 = *(*(v62 + 56) + 8 * v79);

    sub_1C6E41F84(v78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage);
    v81 = v265;
    v82 = *v265;
    v83 = v265[1];
    v271 = v260[9];
    v84 = v245;
    sub_1C6E41E54(v265 + v271, v245, &qword_1EC1F7EF0, &unk_1C6EE9280);
    v85 = v246;
    v273 = *v242;
    v86 = v273(v84, 1, v246);
    v270 = v82;

    v283 = v83;

    sub_1C6E41F04(v84, &qword_1EC1F7EF0, &unk_1C6EE9280);
    if (v86 == 1)
    {
      v87 = v237;
      sub_1C6EE42E0();
      v258 = sub_1C6EE42D0();
      v257 = v88;
      (*v233)(v87, v238);
      v89 = v277;
      v90 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v91 = v81 + v271;
      v92 = v235;
      sub_1C6E41E54(v91, v235, &qword_1EC1F7EF0, &unk_1C6EE9280);
      v93 = v273;
      v94 = v273(v92, 1, v85);
      v89 = v277;
      v90 = MEMORY[0x1E69E7CC0];
      if (v94 == 1)
      {
        v95 = v236;
        *v236 = 0;
        v95[1] = 0xE000000000000000;
        sub_1C6EE4420();
        if (v93(v92, 1, v85) != 1)
        {
          sub_1C6E41F04(v92, &qword_1EC1F7EF0, &unk_1C6EE9280);
        }
      }

      else
      {
        v95 = v236;
        sub_1C6E41D64(v92, v236, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
      }

      v96 = v95[1];
      v258 = *v95;
      v257 = v96;

      sub_1C6E41F84(v95, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
    }

    ++v266;
    v262 = (v263 + OBJC_IVAR____TtC18ComputationalGraph19AbstractComputation_modelIOSpec);
    v97 = v264;
    *v264 = v90;
    v97[1] = v90;
    sub_1C6EE4420();
    v98 = v270 + 64;
    v99 = 1 << *(v270 + 32);
    if (v99 < 64)
    {
      v100 = ~(-1 << v99);
    }

    else
    {
      v100 = -1;
    }

    v101 = v100 & *(v270 + 64);
    v102 = (v99 + 63) >> 6;

    v103 = 0;
    v104 = MEMORY[0x1E69E7CC8];
    v267 = v102;
    v268 = v98;
    while (v101)
    {
      v107 = v103;
LABEL_32:
      v108 = (v107 << 10) | (16 * __clz(__rbit64(v101)));
      v109 = *(v270 + 56);
      v110 = (*(v270 + 48) + v108);
      v111 = v110[1];
      v271 = *v110;
      v112 = (v109 + v108);
      v113 = *v112;
      v114 = v112[1];
      v273 = v111;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v284 = v104;
      v117 = sub_1C6DEC784(v113, v114);
      v118 = *(v104 + 16);
      v119 = (v116 & 1) == 0;
      v120 = v118 + v119;
      if (__OFADD__(v118, v119))
      {
        __break(1u);
LABEL_112:
        __break(1u);
        goto LABEL_113;
      }

      v121 = v116;
      if (*(v104 + 24) >= v120)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v122 = v104;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7728, &unk_1C6EE92B0);
          v131 = sub_1C6EE5320();
          v122 = v131;
          if (*(v104 + 16))
          {
            v132 = (v131 + 64);
            v133 = (v104 + 64);
            v134 = ((1 << *(v122 + 32)) + 63) >> 6;
            v216 = v104 + 64;
            if (v122 != v104 || v132 >= &v133[8 * v134])
            {
              memmove(v132, v133, 8 * v134);
            }

            v135 = 0;
            *(v122 + 16) = *(v104 + 16);
            v136 = 1 << *(v104 + 32);
            if (v136 < 64)
            {
              v137 = ~(-1 << v136);
            }

            else
            {
              v137 = -1;
            }

            v138 = v137 & *(v104 + 64);
            v139 = (v136 + 63) >> 6;
            v217 = v139;
            if (v138)
            {
              do
              {
                v140 = __clz(__rbit64(v138));
                v218 = (v138 - 1) & v138;
LABEL_55:
                v143 = 16 * (v140 | (v135 << 6));
                v144 = (*(v104 + 48) + v143);
                v146 = *v144;
                v145 = v144[1];
                v147 = (*(v104 + 56) + v143);
                v148 = *v147;
                v149 = v147[1];
                v150 = (*(v122 + 48) + v143);
                *v150 = v146;
                v150[1] = v145;
                v151 = (*(v122 + 56) + v143);
                *v151 = v148;
                v151[1] = v149;

                v139 = v217;
                v138 = v218;
              }

              while (v218);
            }

            v141 = v135;
            while (1)
            {
              v135 = v141 + 1;
              if (__OFADD__(v141, 1))
              {
                goto LABEL_115;
              }

              if (v135 >= v139)
              {
                break;
              }

              v142 = *(v216 + 8 * v135);
              ++v141;
              if (v142)
              {
                v140 = __clz(__rbit64(v142));
                v218 = (v142 - 1) & v142;
                goto LABEL_55;
              }
            }
          }
        }
      }

      else
      {
        sub_1C6E07BE4(v120, isUniquelyReferenced_nonNull_native);
        v122 = v284;
        v123 = sub_1C6DEC784(v113, v114);
        if ((v121 & 1) != (v124 & 1))
        {
          goto LABEL_116;
        }

        v117 = v123;
      }

      v89 = v277;
      v101 &= v101 - 1;
      if (v121)
      {

        v105 = (*(v122 + 56) + 16 * v117);
        v106 = v273;
        *v105 = v271;
        v105[1] = v106;
      }

      else
      {
        *(v122 + 8 * (v117 >> 6) + 64) |= 1 << v117;
        v125 = (*(v122 + 48) + 16 * v117);
        *v125 = v113;
        v125[1] = v114;
        v126 = (*(v122 + 56) + 16 * v117);
        v127 = v273;
        *v126 = v271;
        v126[1] = v127;

        v128 = *(v122 + 16);
        v129 = __OFADD__(v128, 1);
        v130 = v128 + 1;
        if (v129)
        {
          goto LABEL_112;
        }

        *(v122 + 16) = v130;
      }

      v103 = v107;
      v104 = v122;
      v14 = v272;
      v102 = v267;
      v98 = v268;
    }

    while (1)
    {
      v107 = v103 + 1;
      if (__OFADD__(v103, 1))
      {
        __break(1u);
        return v283;
      }

      if (v107 >= v102)
      {
        break;
      }

      v101 = *(v98 + 8 * v107);
      ++v103;
      if (v101)
      {
        goto LABEL_32;
      }
    }

    v152 = *v262;
    v153 = *(*v262 + 16);
    if (v153)
    {
      v273 = ((*(v253 + 80) + 32) & ~*(v253 + 80));
      v154 = v273 + v152;
      v155 = *(v253 + 72);
      v156 = MEMORY[0x1E69E7CC0];
      do
      {
        v157 = v280;
        sub_1C6E41DCC(v154, v280, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
        v158 = v275;
        sub_1C6E41DCC(v157, v275, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
        if (*(v104 + 16) && (v159 = sub_1C6DEC784(*v158, v158[1]), (v160 & 1) != 0))
        {
          v161 = (*(v104 + 56) + 16 * v159);
          v163 = *v161;
          v162 = v161[1];

          sub_1C6E41F84(v280, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);

          *v158 = v163;
          v158[1] = v162;
          v14 = v272;
          sub_1C6E41DCC(v158, v272, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
          v164 = 0;
        }

        else
        {
          sub_1C6E41F84(v280, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
          v164 = 1;
        }

        v165 = v282;
        (*v279)(v14, v164, 1, v282);
        sub_1C6E41F84(v158, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
        if ((*v278)(v14, 1, v165) == 1)
        {
          sub_1C6E41F04(v14, &qword_1EC1F7F08, &qword_1C6EE92A0);
        }

        else
        {
          sub_1C6E41D64(v14, v274, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v156 = sub_1C6ED9830(0, v156[2] + 1, 1, v156);
          }

          v167 = v156[2];
          v166 = v156[3];
          if (v167 >= v166 >> 1)
          {
            v156 = sub_1C6ED9830((v166 > 1), v167 + 1, 1, v156);
          }

          v156[2] = v167 + 1;
          sub_1C6E41D64(v274, v273 + v156 + v167 * v155, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
        }

        v89 = v277;
        v154 += v155;
        --v153;
      }

      while (v153);

      v168 = MEMORY[0x1E69E7CC0];
    }

    else
    {

      v168 = MEMORY[0x1E69E7CC0];
      v156 = MEMORY[0x1E69E7CC0];
    }

    sub_1C6ED1F60(v156);
    v169 = v262[1];
    v170 = *(v169 + 16);
    v171 = v269;
    if (v170)
    {
      v273 = ((*(v253 + 80) + 32) & ~*(v253 + 80));
      v172 = v273 + v169;
      v173 = *(v253 + 72);
      v174 = v168;
      do
      {
        v175 = v281;
        sub_1C6E41DCC(v172, v281, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
        sub_1C6E41DCC(v175, v89, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
        if (*(v283 + 16) && (v176 = sub_1C6DEC784(*v89, v89[1]), (v177 & 1) != 0))
        {
          v178 = (*(v283 + 56) + 16 * v176);
          v180 = *v178;
          v179 = v178[1];

          sub_1C6E41F84(v281, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);

          *v89 = v180;
          v89[1] = v179;
          v171 = v269;
          sub_1C6E41DCC(v89, v269, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
          v181 = 0;
        }

        else
        {
          sub_1C6E41F84(v281, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
          v181 = 1;
        }

        v182 = v282;
        (*v279)(v171, v181, 1, v282);
        sub_1C6E41F84(v89, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
        if ((*v278)(v171, 1, v182) == 1)
        {
          sub_1C6E41F04(v171, &qword_1EC1F7F08, &qword_1C6EE92A0);
        }

        else
        {
          sub_1C6E41D64(v171, v276, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v174 = sub_1C6ED9830(0, v174[2] + 1, 1, v174);
          }

          v184 = v174[2];
          v183 = v174[3];
          if (v184 >= v183 >> 1)
          {
            v174 = sub_1C6ED9830((v183 > 1), v184 + 1, 1, v174);
          }

          v174[2] = v184 + 1;
          sub_1C6E41D64(v276, v273 + v174 + v184 * v173, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
          v89 = v277;
        }

        v172 += v173;
        --v170;
      }

      while (v170);
    }

    else
    {
      v174 = v168;
    }

    v185 = v264;
    sub_1C6ED1F60(v174);
    sub_1C6E41D64(v185, v259, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec);
    v271 = v260[8];
    v186 = v244;
    sub_1C6E41E54(v265 + v271, v244, &qword_1EC1F7508, &unk_1C6EE6690);
    v187 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_NodeCachePolicy(0);
    v188 = *(v187 - 8);
    v189 = 1;
    v273 = *(v188 + 48);
    v190 = v273(v186, 1, v187);
    sub_1C6E41F04(v186, &qword_1EC1F7508, &unk_1C6EE6690);
    if (v190 != 1)
    {
      v191 = v234;
      sub_1C6E41E54(v265 + v271, v234, &qword_1EC1F7508, &unk_1C6EE6690);
      if (v273(v191, 1, v187) == 1)
      {
        v192 = v255;
        sub_1C6EE4420();
        v193 = *(v187 + 20);
        v194 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey(0);
        (*(*(v194 - 8) + 56))(v192 + v193, 1, 1, v194);
        if (v273(v191, 1, v187) != 1)
        {
          sub_1C6E41F04(v191, &qword_1EC1F7508, &unk_1C6EE6690);
        }
      }

      else
      {
        sub_1C6E41D64(v191, v255, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_NodeCachePolicy);
      }

      v189 = 0;
    }

    v195 = v255;
    (*(v188 + 56))(v255, v189, 1, v187);
    type metadata accessor for AliasedModelContainer(0);
    v196 = swift_allocObject();
    *(v196 + OBJC_IVAR____TtC18ComputationalGraph21AliasedModelContainer_modelContainer) = v263;
    *(v196 + OBJC_IVAR____TtC18ComputationalGraph21AliasedModelContainer_inputAliasMap) = v270;
    *(v196 + OBJC_IVAR____TtC18ComputationalGraph21AliasedModelContainer_outputAliasMap) = v283;
    v197 = v257;
    *(v196 + 16) = v258;
    *(v196 + 24) = v197;
    sub_1C6E41D64(v259, v196 + OBJC_IVAR____TtC18ComputationalGraph19AbstractComputation_modelIOSpec, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec);
    sub_1C6E41FE4(v195, v196 + OBJC_IVAR____TtC18ComputationalGraph19AbstractComputation_nodeCachePolicy, &qword_1EC1F7508, &unk_1C6EE6690);

    MEMORY[0x1CCA58080](v198);
    if (*((v285 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v285 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1C6EE4CE0();
    }

    sub_1C6EE4D20();

    v71 = v265;
    sub_1C6E41F84(v265, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ComputationNode);
    v283 = v285;
    v70 = v266;
    v62 = v241;
    v60 = v252;
    v61 = v256;
    v69 = v243;
    if (v266 == v248)
    {
      goto LABEL_3;
    }
  }

  sub_1C6E41F84(v78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage);
  v199 = v225;
  sub_1C6E41E54(v265 + v251, v225, &qword_1EC1F7F10, &qword_1C6EE92A8);
  if (v72(v199, 1, v60) == 1)
  {
    v200 = v222;
    sub_1C6EE4420();
    v201 = v240;
    (*v239)(v200 + *(v60 + 20), 1, 1, v240);
    v202 = *(v60 + 24);
    v203 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec(0);
    (*(*(v203 - 8) + 56))(v200 + v202, 1, 1, v203);
    v204 = v72(v199, 1, v60);
    v205 = v224;
    v206 = v219;
    if (v204 != 1)
    {
      sub_1C6E41F04(v199, &qword_1EC1F7F10, &qword_1C6EE92A8);
    }
  }

  else
  {
    v200 = v222;
    sub_1C6E41D64(v199, v222, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage);
    v205 = v224;
    v201 = v240;
    v206 = v219;
  }

  sub_1C6E41E54(v200 + *(v252 + 20), v205, &qword_1EC1F7820, &unk_1C6EEA180);
  v208 = *(v206 + 48);
  if (v208(v205, 1, v201) == 1)
  {
    v209 = v223;
    *v223 = 0;
    v209[1] = 0xE000000000000000;
    v209[2] = 0;
    *(v209 + 24) = 1;
    v210 = v209;
    sub_1C6EE4420();
    sub_1C6E41F84(v200, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage);
    if (v208(v205, 1, v201) != 1)
    {
      sub_1C6E41F04(v205, &qword_1EC1F7820, &unk_1C6EEA180);
    }
  }

  else
  {
    sub_1C6E41F84(v200, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage);
    v210 = v223;
    sub_1C6E41D64(v205, v223, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelStorage);
  }

  v211 = v210;
  v212 = *v210;
  v213 = *(v211 + 8);

  sub_1C6E41F84(v211, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelStorage);
  sub_1C6DFE4C0();
  swift_allocError();
  *v214 = v212;
  *(v214 + 8) = v213;
  *(v214 + 16) = 0;
  swift_willThrow();
  sub_1C6E41F84(v265, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ComputationNode);
  sub_1C6E41F04(v231, &qword_1EC1F7F00, &unk_1C6EE9290);
  sub_1C6E41F84(v232, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpec);
}

char *sub_1C6E3B790(void *a1, uint64_t a2)
{
  v47 = a1;
  v3 = sub_1C6EE4760();
  v53 = *(v3 - 8);
  v54 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v52 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7820, &unk_1C6EEA180);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v45 - v6;
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelStorage(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C6EE41A0();
  v49 = *(v12 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v46 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v55 = &v45 - v15;
  v16 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage(0) + 20);
  v48 = a2;
  sub_1C6E41E54(a2 + v16, v7, &qword_1EC1F7820, &unk_1C6EEA180);
  v17 = *(v9 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    *v11 = 0;
    *(v11 + 1) = 0xE000000000000000;
    *(v11 + 2) = 0;
    v11[24] = 1;
    sub_1C6EE4420();
    if (v17(v7, 1, v8) != 1)
    {
      sub_1C6E41F04(v7, &qword_1EC1F7820, &unk_1C6EEA180);
    }
  }

  else
  {
    sub_1C6E41D64(v7, v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelStorage);
  }

  sub_1C6E41F84(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelStorage);
  sub_1C6EE4110();

  if (qword_1EDEF8F80 != -1)
  {
    swift_once();
  }

  v18 = qword_1EDEF8F88;
  v19 = sub_1C6EE4EB0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1C6EE6590;
  sub_1C6E41EBC(qword_1EDEF8FC0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
  v21 = sub_1C6EE5460();
  v23 = v22;
  *(v20 + 56) = MEMORY[0x1E69E6158];
  *(v20 + 64) = sub_1C6DF10E0();
  *(v20 + 32) = v21;
  *(v20 + 40) = v23;
  sub_1C6EE4730("Loading model at: %{public}@", 28, 2, &dword_1C6DE9000, v18, v19, v20);

  v24 = v50;
  sub_1C6EE4780();
  v25 = v52;
  sub_1C6EE4740();
  v26 = v49;
  v27 = v46;
  (*(v49 + 16))(v46, v55, v12);
  v28 = swift_slowAlloc();
  v47 = swift_slowAlloc();
  v57 = v47;
  *v28 = 136446210;
  v29 = sub_1C6EE5460();
  v31 = v30;
  v32 = *(v26 + 8);
  v49 = v12;
  v33 = v12;
  v34 = v32;
  v32(v27, v33);
  v35 = sub_1C6E41514(v29, v31, &v57);

  *(v28 + 4) = v35;
  v36 = sub_1C6EE4780();
  LOBYTE(v31) = sub_1C6EE4F80();
  v37 = sub_1C6EE4750();
  v38 = v55;
  _os_signpost_emit_with_name_impl(&dword_1C6DE9000, v36, v31, v37, "ResourceReader.loadComputation", "%{public}s", v28, 0xCu);
  v39 = v51;
  sub_1C6E3BDF4(v48, v38, v24, &v56);
  if (v39)
  {

    (*(v53 + 8))(v25, v54);
    v34(v38, v49);
  }

  else
  {
    v40 = v38;
    v41 = sub_1C6EE4F70();
    v42 = sub_1C6EE4750();
    _os_signpost_emit_with_name_impl(&dword_1C6DE9000, v36, v41, v42, "ResourceReader.loadComputation", "%{public}s", v28, 0xCu);

    v38 = v56;
    v43 = v47;
    __swift_destroy_boxed_opaque_existential_0(v47);
    MEMORY[0x1CCA59290](v43, -1, -1);
    MEMORY[0x1CCA59290](v28, -1, -1);
    (*(v53 + 8))(v25, v54);
    v34(v40, v49);
  }

  return v38;
}

uint64_t sub_1C6E3BDF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v299 = a3;
  v307 = a2;
  v282 = a4;
  v272 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FeaturePreprocessingSpec(0);
  MEMORY[0x1EEE9AC00](v272);
  v273 = &v253 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v281 = sub_1C6EE41A0();
  v280 = *(v281 - 8);
  v6 = MEMORY[0x1EEE9AC00](v281);
  v279 = &v253 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v278 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v317 = &v253 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7820, &unk_1C6EEA180);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v304 = &v253 - v10;
  v316 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelStorage(0);
  v297 = *(v316 - 8);
  MEMORY[0x1EEE9AC00](v316);
  v298 = (&v253 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v270 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_TextCodesSpec(0);
  MEMORY[0x1EEE9AC00](v270);
  v271 = (&v253 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EE0, &unk_1C6EE9260);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v261 = &v253 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v276 = &v253 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v263 = &v253 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v256 = &v253 - v20;
  v314 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec(0);
  v315 = *(v314 - 8);
  v21 = MEMORY[0x1EEE9AC00](v314);
  v260 = (&v253 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = MEMORY[0x1EEE9AC00](v21);
  v275 = &v253 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v262 = &v253 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v255 = (&v253 - v27);
  v28 = sub_1C6EE4450();
  v29 = MEMORY[0x1EEE9AC00](v28 - 8);
  v268 = &v253 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v267 = &v253 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v266 = &v253 - v33;
  v265 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_TokenizerSpec(0);
  MEMORY[0x1EEE9AC00](v265);
  v269 = &v253 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EE8, &unk_1C6EEA1D0);
  v36 = MEMORY[0x1EEE9AC00](v35 - 8);
  v294 = &v253 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v293 = &v253 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v292 = &v253 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v303 = &v253 - v43;
  v44 = MEMORY[0x1EEE9AC00](v42);
  v302 = &v253 - v45;
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v253 - v46;
  v318 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIdentification(0);
  v326 = *(v318 - 8);
  v48 = MEMORY[0x1EEE9AC00](v318);
  v291 = &v253 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x1EEE9AC00](v48);
  v290 = &v253 - v51;
  v52 = MEMORY[0x1EEE9AC00](v50);
  v289 = &v253 - v53;
  v54 = MEMORY[0x1EEE9AC00](v52);
  v296 = &v253 - v55;
  v56 = MEMORY[0x1EEE9AC00](v54);
  v306 = (&v253 - v57);
  MEMORY[0x1EEE9AC00](v56);
  v59 = &v253 - v58;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7810, &unk_1C6EE9270);
  v61 = MEMORY[0x1EEE9AC00](v60 - 8);
  v288 = &v253 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = MEMORY[0x1EEE9AC00](v61);
  v287 = &v253 - v64;
  v65 = MEMORY[0x1EEE9AC00](v63);
  v286 = &v253 - v66;
  v67 = MEMORY[0x1EEE9AC00](v65);
  v301 = &v253 - v68;
  v69 = MEMORY[0x1EEE9AC00](v67);
  v264 = &v253 - v70;
  v71 = MEMORY[0x1EEE9AC00](v69);
  v277 = &v253 - v72;
  v73 = MEMORY[0x1EEE9AC00](v71);
  v305 = &v253 - v74;
  v75 = MEMORY[0x1EEE9AC00](v73);
  v259 = &v253 - v76;
  v77 = MEMORY[0x1EEE9AC00](v75);
  v254 = &v253 - v78;
  MEMORY[0x1EEE9AC00](v77);
  v80 = &v253 - v79;
  v81 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec(0);
  v82 = *(v81 - 1);
  v83 = MEMORY[0x1EEE9AC00](v81);
  v285 = &v253 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = MEMORY[0x1EEE9AC00](v83);
  v284 = &v253 - v86;
  v87 = MEMORY[0x1EEE9AC00](v85);
  v283 = &v253 - v88;
  v89 = MEMORY[0x1EEE9AC00](v87);
  v295 = &v253 - v90;
  v91 = MEMORY[0x1EEE9AC00](v89);
  v257 = &v253 - v92;
  v93 = MEMORY[0x1EEE9AC00](v91);
  v274 = &v253 - v94;
  v95 = MEMORY[0x1EEE9AC00](v93);
  v310 = &v253 - v96;
  v97 = MEMORY[0x1EEE9AC00](v95);
  v258 = &v253 - v98;
  v99 = MEMORY[0x1EEE9AC00](v97);
  v253 = &v253 - v100;
  MEMORY[0x1EEE9AC00](v99);
  v102 = &v253 - v101;
  v300 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage(0);
  v103 = *(v300 + 24);
  v311 = a1;
  v309 = v103;
  sub_1C6E41E54(a1 + v103, v80, &qword_1EC1F7810, &unk_1C6EE9270);
  v104 = *(v82 + 48);
  v105 = v104(v80, 1, v81);
  v313 = v82 + 48;
  v312 = v104;
  if (v105 == 1)
  {
    sub_1C6EE4420();
    v106 = v81[5];
    v107 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID(0);
    (*(*(v107 - 8) + 56))(&v102[v106], 1, 1, v107);
    v108 = v326;
    v109 = v318;
    (*(v326 + 56))(&v102[v81[6]], 1, 1);
    (*(v315 + 56))(&v102[v81[7]], 1, 1, v314);
    v110 = v104(v80, 1, v81);
    v111 = v108;
    if (v110 != 1)
    {
      sub_1C6E41F04(v80, &qword_1EC1F7810, &unk_1C6EE9270);
    }
  }

  else
  {
    v109 = v318;
    sub_1C6E41D64(v80, v102, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec);
    v111 = v326;
  }

  sub_1C6E41E54(&v102[v81[6]], v47, &qword_1EC1F7EE8, &unk_1C6EEA1D0);
  v112 = *(v111 + 48);
  v113 = v112(v47, 1, v109);
  v114 = v316;
  if (v113 == 1)
  {
    *v59 = 0;
    *(v59 + 1) = 0xE000000000000000;
    *(v59 + 2) = 0;
    *(v59 + 3) = 0xE000000000000000;
    *(v59 + 4) = 0;
    v59[40] = 1;
    sub_1C6EE4420();
    sub_1C6E41F84(v102, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec);
    v115 = v109;
    if (v112(v47, 1, v109) != 1)
    {
      sub_1C6E41F04(v47, &qword_1EC1F7EE8, &unk_1C6EEA1D0);
    }
  }

  else
  {
    sub_1C6E41F84(v102, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec);
    sub_1C6E41D64(v47, v59, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIdentification);
    v115 = v109;
  }

  v116 = *(v59 + 4);
  v117 = v59[40];
  sub_1C6E41F84(v59, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIdentification);
  v118 = v317;
  if (v117 != 1)
  {
    sub_1C6DFE4C0();
    swift_allocError();
    *v125 = v116;
    *(v125 + 8) = 0;
    v126 = 2;
LABEL_76:
    *(v125 + 16) = v126;
    return swift_willThrow();
  }

  if (v116 > 4)
  {
    v119 = v312;
    v120 = v310;
    if (v116 > 6)
    {
      if (v116 == 7)
      {
        v152 = v308;
        result = sub_1C6EE41C0();
        if (!v152)
        {
          v322 = result;
          v323 = v153;
          v321 = 0;
          v319 = 0u;
          v320 = 0u;
          sub_1C6EE4440();
          sub_1C6E41EBC(&qword_1EDEF62B0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FeaturePreprocessingSpec, &unk_1C6EEBC58);
          v154 = v273;
          sub_1C6EE45D0();
          v155 = v264;
          sub_1C6E41E54(v311 + v309, v264, &qword_1EC1F7810, &unk_1C6EE9270);
          if (v119(v155, 1, v81) == 1)
          {
            v156 = v257;
            sub_1C6EE4420();
            v157 = v81[5];
            v158 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID(0);
            (*(*(v158 - 8) + 56))(v156 + v157, 1, 1, v158);
            (*(v326 + 56))(v156 + v81[6], 1, 1, v115);
            v159 = v156;
            v160 = v264;
            v161 = v315;
            v162 = v119;
            v163 = v314;
            (*(v315 + 56))(v159 + v81[7], 1, 1, v314);
            if (v162(v160, 1, v81) != 1)
            {
              sub_1C6E41F04(v160, &qword_1EC1F7810, &unk_1C6EE9270);
            }
          }

          else
          {
            v159 = v257;
            sub_1C6E41D64(v155, v257, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec);
            v161 = v315;
            v163 = v314;
          }

          v230 = v261;
          sub_1C6E41E54(v159 + v81[7], v261, &qword_1EC1F7EE0, &unk_1C6EE9260);
          v231 = *(v161 + 48);
          if (v231(v230, 1, v163) == 1)
          {
            v232 = MEMORY[0x1E69E7CC0];
            v233 = v260;
            *v260 = MEMORY[0x1E69E7CC0];
            v233[1] = v232;
            sub_1C6EE4420();
            sub_1C6E41F84(v159, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec);
            if (v231(v230, 1, v163) != 1)
            {
              sub_1C6E41F04(v230, &qword_1EC1F7EE0, &unk_1C6EE9260);
            }
          }

          else
          {
            sub_1C6E41F84(v159, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec);
            v233 = v260;
            sub_1C6E41D64(v230, v260, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec);
          }

          type metadata accessor for FeaturePreprocessingContainer(0);
          swift_allocObject();
          result = sub_1C6E19240(v154, v233);
          goto LABEL_107;
        }

        return result;
      }

      if (v116 == 8)
      {
        v127 = v287;
        sub_1C6E41E54(v311 + v309, v287, &qword_1EC1F7810, &unk_1C6EE9270);
        if (v119(v127, 1, v81) == 1)
        {
          v128 = v284;
          sub_1C6EE4420();
          v129 = v81[5];
          v130 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID(0);
          (*(*(v130 - 8) + 56))(v128 + v129, 1, 1, v130);
          (*(v326 + 56))(v128 + v81[6], 1, 1, v115);
          v131 = v128;
          (*(v315 + 56))(v128 + v81[7], 1, 1, v314);
          v132 = v119(v127, 1, v81);
          v133 = v290;
          if (v132 != 1)
          {
            sub_1C6E41F04(v127, &qword_1EC1F7810, &unk_1C6EE9270);
          }
        }

        else
        {
          v131 = v284;
          sub_1C6E41D64(v127, v284, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec);
          v133 = v290;
        }

        v190 = v131 + v81[6];
        v191 = &v322;
      }

      else
      {
        v179 = v288;
        sub_1C6E41E54(v311 + v309, v288, &qword_1EC1F7810, &unk_1C6EE9270);
        if (v119(v179, 1, v81) == 1)
        {
          v180 = v285;
          sub_1C6EE4420();
          v181 = v81[5];
          v182 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID(0);
          (*(*(v182 - 8) + 56))(v180 + v181, 1, 1, v182);
          (*(v326 + 56))(v180 + v81[6], 1, 1, v115);
          v131 = v180;
          (*(v315 + 56))(v180 + v81[7], 1, 1, v314);
          v183 = v119(v179, 1, v81);
          v133 = v291;
          if (v183 != 1)
          {
            sub_1C6E41F04(v179, &qword_1EC1F7810, &unk_1C6EE9270);
          }
        }

        else
        {
          v131 = v285;
          sub_1C6E41D64(v179, v285, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec);
          v133 = v291;
        }

        v190 = v131 + v81[6];
        v191 = &v323;
      }

      goto LABEL_71;
    }

    if (v116 != 5)
    {
      goto LABEL_24;
    }

LABEL_28:
    v139 = v301;
    sub_1C6E41E54(v311 + v309, v301, &qword_1EC1F7810, &unk_1C6EE9270);
    if (v119(v139, 1, v81) == 1)
    {
      v140 = v295;
      sub_1C6EE4420();
      v141 = v81[5];
      v142 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID(0);
      (*(*(v142 - 8) + 56))(v140 + v141, 1, 1, v142);
      (*(v326 + 56))(v140 + v81[6], 1, 1, v115);
      v131 = v140;
      (*(v315 + 56))(v140 + v81[7], 1, 1, v314);
      v143 = v119(v139, 1, v81);
      v133 = v296;
      if (v143 != 1)
      {
        sub_1C6E41F04(v139, &qword_1EC1F7810, &unk_1C6EE9270);
      }
    }

    else
    {
      v131 = v295;
      sub_1C6E41D64(v139, v295, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec);
      v133 = v296;
    }

    v190 = v131 + v81[6];
    v191 = &v325;
LABEL_71:
    v224 = *(v191 - 32);
    sub_1C6E41E54(v190, v224, &qword_1EC1F7EE8, &unk_1C6EEA1D0);
    if (v112(v224, 1, v115) == 1)
    {
      *v133 = 0;
      *(v133 + 8) = 0xE000000000000000;
      *(v133 + 16) = 0;
      *(v133 + 24) = 0xE000000000000000;
      *(v133 + 32) = 0;
      *(v133 + 40) = 1;
      sub_1C6EE4420();
      sub_1C6E41F84(v131, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec);
      if (v112(v224, 1, v115) != 1)
      {
        sub_1C6E41F04(v224, &qword_1EC1F7EE8, &unk_1C6EEA1D0);
      }
    }

    else
    {
      sub_1C6E41F84(v131, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec);
      sub_1C6E41D64(v224, v133, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIdentification);
    }

    v225 = *(v133 + 32);
    v226 = *(v133 + 40);
    sub_1C6E41F84(v133, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIdentification);
    sub_1C6DFE4C0();
    swift_allocError();
    *v125 = v225;
    *(v125 + 8) = v226;
    v126 = 4;
    goto LABEL_76;
  }

  v119 = v312;
  v120 = v310;
  if (v116 <= 1)
  {
    if (v116)
    {
LABEL_24:
      v134 = v305;
      sub_1C6E41E54(v311 + v309, v305, &qword_1EC1F7810, &unk_1C6EE9270);
      if (v119(v134, 1, v81) == 1)
      {
        sub_1C6EE4420();
        v135 = v81[5];
        v136 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID(0);
        v137 = v120 + v135;
        v138 = v305;
        (*(*(v136 - 8) + 56))(v137, 1, 1, v136);
        (*(v326 + 56))(v120 + v81[6], 1, 1, v115);
        (*(v315 + 56))(v120 + v81[7], 1, 1, v314);
        if (v119(v138, 1, v81) != 1)
        {
          sub_1C6E41F04(v138, &qword_1EC1F7810, &unk_1C6EE9270);
        }
      }

      else
      {
        sub_1C6E41D64(v134, v120, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec);
      }

      v184 = v302;
      sub_1C6E41E54(v120 + v81[6], v302, &qword_1EC1F7EE8, &unk_1C6EEA1D0);
      if (v112(v184, 1, v115) == 1)
      {
        v185 = v306;
        *v306 = 0;
        v185[1] = 0xE000000000000000;
        v185[2] = 0;
        v185[3] = 0xE000000000000000;
        v185[4] = 0;
        *(v185 + 40) = 1;
        sub_1C6EE4420();
        sub_1C6E41F84(v120, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec);
        v186 = v112(v184, 1, v115) == 1;
        v187 = v299;
        v188 = v184;
        v189 = v297;
        if (!v186)
        {
          sub_1C6E41F04(v188, &qword_1EC1F7EE8, &unk_1C6EEA1D0);
        }
      }

      else
      {
        sub_1C6E41F84(v120, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec);
        sub_1C6E41D64(v184, v306, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIdentification);
        v187 = v299;
        v189 = v297;
      }

      v192 = v304;
      sub_1C6E41E54(v311 + *(v300 + 20), v304, &qword_1EC1F7820, &unk_1C6EEA180);
      v193 = *(v189 + 48);
      if (v193(v192, 1, v114) == 1)
      {
        v194 = v114;
        v195 = v298;
        *v298 = 0;
        v195[1] = 0xE000000000000000;
        v195[2] = 0;
        *(v195 + 24) = 1;
        sub_1C6EE4420();
        if (v193(v192, 1, v194) != 1)
        {
          sub_1C6E41F04(v192, &qword_1EC1F7820, &unk_1C6EEA180);
        }
      }

      else
      {
        v195 = v298;
        sub_1C6E41D64(v192, v298, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelStorage);
      }

      v196 = v195[2];
      sub_1C6E41F84(v195, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelStorage);
      v197 = v306;
      v198 = v308;
      sub_1C6E3EF78(v187, v307, v306, v196, v118);
      v199 = v187;
      if (v198)
      {
        return sub_1C6E41F84(v197, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIdentification);
      }

      v310 = 0;
      v200 = [objc_allocWithZone(MEMORY[0x1E695FEB0]) init];
      v201 = v197[2];
      v316 = v197[3];
      v308 = v201;
      v202 = sub_1C6EE4A60();
      [v200 setModelDisplayName_];

      [v200 setComputeUnits_];
      [v200 setAllowBackgroundGPUCompute_];
      v203 = v280 + 32;
      v204 = *(v280 + 32);
      v205 = v279;
      v206 = v281;
      v204(v279, v118, v281);
      v207 = v81;
      v208 = (*(v203 + 48) + 16) & ~*(v203 + 48);
      v209 = (v278 + v208 + 7) & 0xFFFFFFFFFFFFFFF8;
      v210 = swift_allocObject();
      v211 = v210 + v208;
      v212 = v207;
      v204(v211, v205, v206);
      v317 = v210;
      *(v210 + v209) = v200;
      v213 = v312;

      sub_1C6E41F84(v306, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIdentification);
      v214 = v277;
      sub_1C6E41E54(v311 + v309, v277, &qword_1EC1F7810, &unk_1C6EE9270);
      if (v213(v214, 1, v207) == 1)
      {
        v215 = v274;
        sub_1C6EE4420();
        v216 = v212[5];
        v217 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID(0);
        (*(*(v217 - 8) + 56))(v215 + v216, 1, 1, v217);
        (*(v326 + 56))(v215 + v212[6], 1, 1, v318);
        v218 = v314;
        (*(v315 + 56))(v215 + v212[7], 1, 1, v314);
        v219 = v213(v214, 1, v212);
        v220 = v276;
        v221 = v275;
        if (v219 != 1)
        {
          sub_1C6E41F04(v214, &qword_1EC1F7810, &unk_1C6EE9270);
        }
      }

      else
      {
        v215 = v274;
        sub_1C6E41D64(v214, v274, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec);
        v218 = v314;
        v220 = v276;
        v221 = v275;
      }

      sub_1C6E41E54(v215 + v212[7], v220, &qword_1EC1F7EE0, &unk_1C6EE9260);
      v227 = *(v315 + 48);
      if (v227(v220, 1, v218) == 1)
      {
        v228 = MEMORY[0x1E69E7CC0];
        *v221 = MEMORY[0x1E69E7CC0];
        v221[1] = v228;
        sub_1C6EE4420();
        sub_1C6E41F84(v215, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec);
        if (v227(v220, 1, v218) != 1)
        {
          sub_1C6E41F04(v220, &qword_1EC1F7EE0, &unk_1C6EE9260);
        }
      }

      else
      {
        sub_1C6E41F84(v215, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec);
        sub_1C6E41D64(v220, v221, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec);
      }

      type metadata accessor for CoreMLModelContainer(0);
      swift_allocObject();
      v229 = sub_1C6E34A4C(v221, v308, v316, sub_1C6E41B18, v317);

      goto LABEL_84;
    }

    goto LABEL_28;
  }

  if (v116 == 2)
  {
    v144 = v286;
    sub_1C6E41E54(v311 + v309, v286, &qword_1EC1F7810, &unk_1C6EE9270);
    if (v119(v144, 1, v81) == 1)
    {
      v145 = v283;
      sub_1C6EE4420();
      v146 = v81[5];
      v147 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID(0);
      (*(*(v147 - 8) + 56))(v145 + v146, 1, 1, v147);
      (*(v326 + 56))(v145 + v81[6], 1, 1, v115);
      v148 = v145;
      (*(v315 + 56))(v145 + v81[7], 1, 1, v314);
      v149 = v119(v144, 1, v81);
      v150 = v292;
      v151 = v289;
      if (v149 != 1)
      {
        sub_1C6E41F04(v144, &qword_1EC1F7810, &unk_1C6EE9270);
      }
    }

    else
    {
      v148 = v283;
      sub_1C6E41D64(v144, v283, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec);
      v150 = v292;
      v151 = v289;
    }

    sub_1C6E41E54(v148 + v81[6], v150, &qword_1EC1F7EE8, &unk_1C6EEA1D0);
    if (v112(v150, 1, v115) == 1)
    {
      *v151 = 0;
      *(v151 + 8) = 0xE000000000000000;
      *(v151 + 16) = 0;
      *(v151 + 24) = 0xE000000000000000;
      *(v151 + 32) = 0;
      *(v151 + 40) = 1;
      sub_1C6EE4420();
      sub_1C6E41F84(v148, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec);
      if (v112(v150, 1, v115) != 1)
      {
        sub_1C6E41F04(v150, &qword_1EC1F7EE8, &unk_1C6EEA1D0);
      }
    }

    else
    {
      sub_1C6E41F84(v148, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec);
      sub_1C6E41D64(v150, v151, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIdentification);
    }

    v222 = *(v151 + 32);
    v223 = *(v151 + 40);
    sub_1C6E41F84(v151, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIdentification);
    sub_1C6DFE4C0();
    swift_allocError();
    *v125 = v222;
    *(v125 + 8) = v223;
    v126 = 3;
    goto LABEL_76;
  }

  if (v116 == 3)
  {
    v121 = v308;
    result = sub_1C6EE41C0();
    if (!v121)
    {
      v322 = result;
      v323 = v123;
      v321 = 0;
      v319 = 0u;
      v320 = 0u;
      sub_1C6EE4440();
      sub_1C6E41EBC(qword_1EDEF89C8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_TokenizerSpec, &unk_1C6EF0698);
      v124 = v269;
      sub_1C6EE45D0();
      sub_1C6E2CAD0(v124, 0, v324);
      sub_1C6E41F84(v124, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_TokenizerSpec);
      v239 = v254;
      sub_1C6E41E54(v311 + v309, v254, &qword_1EC1F7810, &unk_1C6EE9270);
      v240 = v119(v239, 1, v81);
      if (v240 == 1)
      {
        v241 = v253;
        sub_1C6EE4420();
        v242 = v81[5];
        v243 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID(0);
        (*(*(v243 - 8) + 56))(v241 + v242, 1, 1, v243);
        v244 = v115;
        v245 = v241;
        (*(v326 + 56))(v241 + v81[6], 1, 1, v244);
        v246 = v315;
        v247 = v119;
        v248 = v314;
        (*(v315 + 56))(v245 + v81[7], 1, 1, v314);
        if (v247(v239, 1, v81) != 1)
        {
          sub_1C6E41F04(v239, &qword_1EC1F7810, &unk_1C6EE9270);
        }
      }

      else
      {
        v245 = v253;
        sub_1C6E41D64(v239, v253, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec);
        v246 = v315;
        v248 = v314;
      }

      v249 = v256;
      sub_1C6E41E54(v245 + v81[7], v256, &qword_1EC1F7EE0, &unk_1C6EE9260);
      v250 = *(v246 + 48);
      if (v250(v249, 1, v248) == 1)
      {
        v251 = MEMORY[0x1E69E7CC0];
        v252 = v255;
        *v255 = MEMORY[0x1E69E7CC0];
        v252[1] = v251;
        sub_1C6EE4420();
        sub_1C6E41F84(v245, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec);
        if (v250(v249, 1, v248) != 1)
        {
          sub_1C6E41F04(v249, &qword_1EC1F7EE0, &unk_1C6EE9260);
        }
      }

      else
      {
        sub_1C6E41F84(v245, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec);
        v252 = v255;
        sub_1C6E41D64(v249, v255, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec);
      }

      type metadata accessor for TextPreprocessModelContainer(0);
      swift_allocObject();
      result = sub_1C6E34FC0(v324, v252);
LABEL_107:
      v229 = result;
LABEL_84:
      *v282 = v229;
    }
  }

  else
  {
    v164 = v308;
    result = sub_1C6EE41C0();
    if (!v164)
    {
      v322 = result;
      v323 = v165;
      v321 = 0;
      v319 = 0u;
      v320 = 0u;
      sub_1C6EE4440();
      sub_1C6E41EBC(&qword_1EDEF62E0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_TextCodesSpec, &unk_1C6EEF544);
      v166 = v271;
      sub_1C6EE45D0();
      v317 = *v166;
      v167 = v119;
      v169 = v166[1];
      v168 = v166[2];

      sub_1C6E41F84(v166, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_TextCodesSpec);
      v170 = v259;
      sub_1C6E41E54(v311 + v309, v259, &qword_1EC1F7810, &unk_1C6EE9270);
      v171 = v167(v170, 1, v81);
      v310 = 0;
      if (v171 == 1)
      {
        v172 = v258;
        sub_1C6EE4420();
        v173 = v81[5];
        v174 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID(0);
        (*(*(v174 - 8) + 56))(v172 + v173, 1, 1, v174);
        v175 = v170;
        (*(v326 + 56))(v172 + v81[6], 1, 1, v115);
        v176 = v314;
        (*(v315 + 56))(v172 + v81[7], 1, 1, v314);
        v177 = v167(v170, 1, v81);
        v178 = v262;
        if (v177 != 1)
        {
          sub_1C6E41F04(v175, &qword_1EC1F7810, &unk_1C6EE9270);
        }
      }

      else
      {
        v172 = v258;
        sub_1C6E41D64(v170, v258, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec);
        v176 = v314;
        v178 = v262;
      }

      v234 = v172 + v81[7];
      v235 = v263;
      sub_1C6E41E54(v234, v263, &qword_1EC1F7EE0, &unk_1C6EE9260);
      v236 = *(v315 + 48);
      if (v236(v235, 1, v176) == 1)
      {
        v237 = MEMORY[0x1E69E7CC0];
        *v178 = MEMORY[0x1E69E7CC0];
        v178[1] = v237;
        sub_1C6EE4420();
        sub_1C6E41F84(v172, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec);
        if (v236(v235, 1, v176) != 1)
        {
          sub_1C6E41F04(v235, &qword_1EC1F7EE0, &unk_1C6EE9260);
        }
      }

      else
      {
        sub_1C6E41F84(v172, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec);
        sub_1C6E41D64(v235, v178, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec);
      }

      type metadata accessor for TextOutputContainer(0);
      swift_allocObject();
      v238 = v310;
      result = sub_1C6E0D52C(v168, v317, v169, v178);
      if (!v238)
      {
        goto LABEL_107;
      }
    }
  }

  return result;
}

uint64_t sub_1C6E3E990@<X0>(char *a1@<X8>)
{
  v49 = a1;
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9AB0, &qword_1C6EE9250);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v45 - v4;
  v6 = sub_1C6EE41A0();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v45 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v45 - v14;
  v17 = v16;
  sub_1C6E41E54(v2 + OBJC_IVAR____TtC18ComputationalGraph14ResourceReader_modelsDirectory, v5, &unk_1EC1F9AB0, &qword_1C6EE9250);
  if ((*(v7 + 48))(v5, 1, v17) == 1)
  {
    sub_1C6E41F04(v5, &unk_1EC1F9AB0, &qword_1C6EE9250);
    return (*(v7 + 56))(v49, 1, 1, v17);
  }

  v47 = v15;
  v48 = v7;
  v19 = *(v7 + 32);
  v19(v15, v5, v17);
  v20 = sub_1C6EE40B0();
  v46 = v17;
  v21 = v20;
  v22 = *(v20 + 16);
  v23 = *(sub_1C6E362A4() + 16);

  if (v23 >= v22)
  {

    v50 = 0;
    v51 = 0xE000000000000000;
    sub_1C6EE51B0();
    MEMORY[0x1CCA57F60](0xD00000000000004ALL, 0x80000001C6EF8E00);
    sub_1C6E41EBC(qword_1EDEF8FC0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v30 = v46;
    v31 = sub_1C6EE5460();
    MEMORY[0x1CCA57F60](v31);

    MEMORY[0x1CCA57F60](0xD000000000000011, 0x80000001C6EF8E50);
LABEL_16:
    v41 = sub_1C6EE5460();
    MEMORY[0x1CCA57F60](v41);

    v42 = v50;
    v43 = v51;
    sub_1C6DFE4C0();
    swift_allocError();
    *v44 = v42;
    *(v44 + 8) = v43;
    *(v44 + 16) = 1;
    swift_willThrow();
    return (*(v48 + 8))(v47, v30);
  }

  v24 = *(v2 + 16);
  v25 = *(v24 + 16);
  v26 = *(v21 + 16);
  if (v26 < v25)
  {
    __break(1u);
    goto LABEL_18;
  }

  v27 = v46;
  v28 = v19;
  v45 = v21;
  if (v26 == v25)
  {
  }

  else
  {
    sub_1C6EC8DE0(v21, v21 + 32, 0, (2 * v25) | 1);
  }

  v32 = sub_1C6E59BCC(v24, v29);

  if ((v32 & 1) == 0)
  {

    v50 = 0;
    v51 = 0xE000000000000000;
    sub_1C6EE51B0();
    MEMORY[0x1CCA57F60](0xD000000000000041, 0x80000001C6EF8E70);
    sub_1C6E41EBC(qword_1EDEF8FC0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v30 = v27;
    v40 = sub_1C6EE5460();
    MEMORY[0x1CCA57F60](v40);

    MEMORY[0x1CCA57F60](0xD000000000000011, 0x80000001C6EF8E50);
    goto LABEL_16;
  }

  v33 = *(*(v2 + 16) + 16);
  v34 = *(v45 + 16);
  if (v34 < v33)
  {
LABEL_18:
    __break(1u);
    return result;
  }

  (*(v48 + 16))(v13, v47, v27);
  v35 = v34 - v33;
  v52 = v28;
  if (v34 != v33)
  {
    v36 = (v48 + 8);
    v37 = v45 + 16 * v33 + 40;
    do
    {

      sub_1C6EE4110();

      (*v36)(v13, v27);
      v52(v13, v10, v27);
      v37 += 16;
      --v35;
    }

    while (v35);
  }

  v38 = v48;
  (*(v48 + 8))(v47, v27);
  v39 = v49;
  v52(v49, v13, v27);
  return (*(v38 + 56))(v39, 0, 1, v27);
}

uint64_t sub_1C6E3EF78@<X0>(void (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X8>)
{
  v141 = a3;
  v142 = a4;
  v145 = a5;
  v156 = *MEMORY[0x1E69E9840];
  v140 = sub_1C6EE4970();
  v139 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140);
  v138 = v130 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = sub_1C6EE4960();
  v144 = *(v153 - 8);
  MEMORY[0x1EEE9AC00](v153);
  v154 = v130 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C6EE41A0();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v135 = v130 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v137 = v130 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v143 = v130 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v149 = v130 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v20 = v130 - v19;
  v21 = &qword_1C6EE9250;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9AB0, &qword_1C6EE9250);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v136 = v130 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = v130 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v29 = v130 - v28;
  v150 = a1;
  v146 = a2;
  sub_1C6E4039C(v130 - v28);
  v151 = v29;
  v30 = v29;
  v31 = v10;
  sub_1C6E41E54(v30, v27, &unk_1EC1F9AB0, &qword_1C6EE9250);
  v32 = v10 + 48;
  v33 = *(v10 + 48);
  if (v33(v27, 1, v9) == 1)
  {
    sub_1C6E41F04(v27, &unk_1EC1F9AB0, &qword_1C6EE9250);
  }

  else
  {
    v134 = v33;
    v34 = *(v10 + 32);
    v34(v20, v27, v9);
    v35 = [objc_opt_self() defaultManager];
    sub_1C6EE4170();
    v36 = v9;
    v21 = sub_1C6EE4A60();

    v37 = [v35 fileExistsAtPath_];

    if (v37)
    {
      v154 = v34;
      v38 = v36;
      v21 = v145;
      if (qword_1EDEF8F80 != -1)
      {
LABEL_77:
        swift_once();
      }

      v39 = qword_1EDEF8F88;
      v40 = sub_1C6EE4EB0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_1C6EE6590;
      sub_1C6E41EBC(qword_1EDEF8FC0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v42 = sub_1C6EE5460();
      v44 = v43;
      *(v41 + 56) = MEMORY[0x1E69E6158];
      *(v41 + 64) = sub_1C6DF10E0();
      *(v41 + 32) = v42;
      *(v41 + 40) = v44;
      sub_1C6EE4730("Found cached compiled model at: %{public}@", 42, 2, &dword_1C6DE9000, v39, v40, v41);

      sub_1C6E41F04(v151, &unk_1EC1F9AB0, &qword_1C6EE9250);
      return (v154)(v21, v20, v38);
    }

    (*(v10 + 8))(v20, v36);
    v9 = v36;
    v31 = v10;
    v33 = v134;
  }

  v38 = v149;
  if (*(v150 + OBJC_IVAR____TtC18ComputationalGraph14ResourceReader_readOnly))
  {
    sub_1C6DFE4C0();
    swift_allocError();
    *v46 = xmmword_1C6EE91D0;
LABEL_9:
    *(v46 + 16) = 5;
    swift_willThrow();
    return sub_1C6E41F04(v151, &unk_1EC1F9AB0, &qword_1C6EE9250);
  }

  v47 = v152;
  v48 = sub_1C6DFDC30(v146);
  v49 = v47;
  if (v47)
  {
    return sub_1C6E41F04(v151, &unk_1EC1F9AB0, &qword_1C6EE9250);
  }

  v20 = v48;
  v134 = v33;
  v130[1] = v32;
  sub_1C6EE4950();
  v50 = *(v20 + 2);
  v133 = v31;
  v51 = v20;
  v150 = v50;
  if (!v50)
  {
LABEL_32:

    v59 = v138;
    v60 = v154;
    sub_1C6EE4940();
    v61 = sub_1C6E35EF4(v59);
    (*(v139 + 8))(v59, v140);
    *&v155 = v61;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9A50, &qword_1C6EE90D0);
    sub_1C6E33840();
    v62 = sub_1C6EE4A10();
    v64 = v63;

    (*(v144 + 8))(v60, v153);
    v66 = *v141;
    v65 = v141[1];
    if ((v62 != *v141 || v64 != v65) && (sub_1C6EE54B0() & 1) == 0)
    {
      if (qword_1EDEF8F80 != -1)
      {
        swift_once();
      }

      v116 = qword_1EDEF8F88;
      v117 = sub_1C6EE4EC0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
      v118 = swift_allocObject();
      *(v118 + 16) = xmmword_1C6EE6B40;
      v119 = MEMORY[0x1E69E6158];
      *(v118 + 56) = MEMORY[0x1E69E6158];
      v120 = sub_1C6DF10E0();
      *(v118 + 32) = v62;
      *(v118 + 40) = v64;
      *(v118 + 96) = v119;
      *(v118 + 104) = v120;
      *(v118 + 64) = v120;
      *(v118 + 72) = v66;
      *(v118 + 80) = v65;

      sub_1C6EE4730("MD5 Mismatch. Actual=%{public}@ Expected=%{public}@", 51, 2, &dword_1C6DE9000, v116, v117, v118);

      sub_1C6DFE4C0();
      swift_allocError();
      *v46 = 0;
      *(v46 + 8) = 0;
      goto LABEL_9;
    }

    if (v142 == 10)
    {
      (*(v31 + 16))(v143, v146, v9);
      v67 = v134;
    }

    else
    {
      v68 = objc_opt_self();
      v69 = sub_1C6EE4100();
      *&v155 = 0;
      v70 = [v68 compileModelAtURL:v69 error:&v155];

      v71 = v155;
      v67 = v134;
      if (!v70)
      {
        v123 = v155;
        sub_1C6EE4050();

        swift_willThrow();
        return sub_1C6E41F04(v151, &unk_1EC1F9AB0, &qword_1C6EE9250);
      }

      sub_1C6EE4150();
      v72 = v71;
    }

    v73 = v136;
    sub_1C6E41E54(v151, v136, &unk_1EC1F9AB0, &qword_1C6EE9250);
    if (v67(v73, 1, v9) == 1)
    {
      v38 = v9;
      sub_1C6E41F04(v73, &unk_1EC1F9AB0, &qword_1C6EE9250);
      if (qword_1EDEF8F80 != -1)
      {
        goto LABEL_80;
      }

      goto LABEL_42;
    }

    v85 = *(v31 + 32);
    v153 = v31 + 32;
    v154 = v85;
    (v85)(v137, v73, v9);
    v86 = objc_opt_self();
    v87 = v31;
    v88 = [v86 defaultManager];
    v89 = v135;
    sub_1C6EE4130();
    v90 = sub_1C6EE4100();
    v91 = *(v87 + 8);
    v131 = v9;
    v133 = v87 + 8;
    v91(v89, v9);
    *&v155 = 0;
    v92 = [v88 createDirectoryAtURL:v90 withIntermediateDirectories:1 attributes:0 error:&v155];

    if (v92)
    {
      v150 = v91;
      v93 = v155;
      v94 = [v86 defaultManager];
      v95 = sub_1C6EE4100();
      v96 = sub_1C6EE4100();
      *&v155 = 0;
      v97 = [v94 moveItemAtURL:v95 toURL:v96 error:&v155];

      if (v97)
      {
        v98 = v155;
        if (v142 == 10)
        {
LABEL_54:
          v152 = v49;
          if (qword_1EDEF8F80 != -1)
          {
            swift_once();
          }

          v104 = qword_1EDEF8F88;
          v105 = sub_1C6EE4EB0();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
          v106 = swift_allocObject();
          *(v106 + 16) = xmmword_1C6EE6B40;
          *&v155 = 0;
          *(&v155 + 1) = 0xE000000000000000;
          if (v142 == 10)
          {
            v107 = 1667592784;
          }

          else
          {
            v107 = 67;
          }

          if (v142 == 10)
          {
            v108 = 0xE400000000000000;
          }

          else
          {
            v108 = 0xE100000000000000;
          }

          MEMORY[0x1CCA57F60](v107, v108);

          v109 = v155;
          v110 = MEMORY[0x1E69E6158];
          *(v106 + 56) = MEMORY[0x1E69E6158];
          v111 = sub_1C6DF10E0();
          *(v106 + 64) = v111;
          *(v106 + 32) = v109;
          sub_1C6E41EBC(qword_1EDEF8FC0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
          v112 = v137;
          v113 = v131;
          v114 = sub_1C6EE5460();
          *(v106 + 96) = v110;
          *(v106 + 104) = v111;
          *(v106 + 72) = v114;
          *(v106 + 80) = v115;
          sub_1C6EE4730("%{public}@ompiled model moved to: %{public}@", 44, 2, &dword_1C6DE9000, v104, v105, v106);

          v150(v143, v113);
          sub_1C6E41F04(v151, &unk_1EC1F9AB0, &qword_1C6EE9250);
          return (v154)(v145, v112, v113);
        }

        v99 = [v86 defaultManager];
        v100 = sub_1C6EE4100();
        *&v155 = 0;
        v101 = [v99 removeItemAtURL:v100 error:&v155];

        v102 = v131;
        if (v101)
        {
          v103 = v155;
          goto LABEL_54;
        }

        v129 = v155;
        v122 = sub_1C6EE4050();

        swift_willThrow();
      }

      else
      {
        v124 = v155;
        v122 = sub_1C6EE4050();

        swift_willThrow();
        v102 = v131;
      }

      v91 = v150;
    }

    else
    {
      v121 = v155;
      v122 = sub_1C6EE4050();

      swift_willThrow();
      v102 = v131;
    }

    v91(v137, v102);
    if (qword_1EDEF8F80 != -1)
    {
      swift_once();
    }

    v125 = qword_1EDEF8F88;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
    v126 = swift_allocObject();
    *(v126 + 16) = xmmword_1C6EE6590;
    *&v155 = 0;
    *(&v155 + 1) = 0xE000000000000000;
    swift_getErrorValue();
    sub_1C6EE5480();
    v127 = v155;
    *(v126 + 56) = MEMORY[0x1E69E6158];
    *(v126 + 64) = sub_1C6DF10E0();
    *(v126 + 32) = v127;
    v128 = sub_1C6EE4EE0();
    sub_1C6EE4730("Failed to cache compiled model with error %{public}@", 52, 2, &dword_1C6DE9000, v125, v128, v126);

    sub_1C6E41F04(v151, &unk_1EC1F9AB0, &qword_1C6EE9250);
    return (v154)(v145, v143, v102);
  }

  v52 = 0;
  v147 = (v31 + 8);
  v148 = v31 + 16;
  v132 = v20;
  v131 = v9;
  while (1)
  {
    if (v52 >= *(v51 + 2))
    {
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    (*(v31 + 16))(v38, &v51[((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v52], v9);
    v53 = sub_1C6EE41C0();
    if (v49)
    {
      (*v147)(v38, v9);

      (*(v144 + 8))(v154, v153);
      return sub_1C6E41F04(v151, &unk_1EC1F9AB0, &qword_1C6EE9250);
    }

    v55 = v53;
    v21 = v54;
    v56 = v54 >> 62;
    if ((v54 >> 62) > 1)
    {
      break;
    }

    if (v56)
    {
      if (v53 >> 32 < v53)
      {
        goto LABEL_75;
      }

      if (sub_1C6EE3F90() && __OFSUB__(v55, sub_1C6EE3FC0()))
      {
        goto LABEL_79;
      }

      sub_1C6EE3FB0();
      sub_1C6E41EBC(&qword_1EDEF6218, MEMORY[0x1E6966688], MEMORY[0x1E6966680]);
      v20 = v154;
      sub_1C6EE4930();
      sub_1C6DF1134(v55, v21);
      sub_1C6DF1134(v55, v21);
      v9 = v131;
      goto LABEL_31;
    }

    *&v155 = v53;
    WORD4(v155) = v54;
    BYTE10(v155) = BYTE2(v54);
    BYTE11(v155) = BYTE3(v54);
    BYTE12(v155) = BYTE4(v54);
    BYTE13(v155) = BYTE5(v54);
    sub_1C6E41EBC(&qword_1EDEF6218, MEMORY[0x1E6966688], MEMORY[0x1E6966680]);
LABEL_15:
    v20 = v154;
    sub_1C6EE4930();
    sub_1C6DF1134(v55, v21);
    sub_1C6DF1134(v55, v21);
LABEL_16:
    v52 = (v52 + 1);
    (*v147)(v38, v9);
    if (v150 == v52)
    {
      goto LABEL_32;
    }
  }

  if (v56 != 2)
  {
    sub_1C6E41EBC(&qword_1EDEF6218, MEMORY[0x1E6966688], MEMORY[0x1E6966680]);
    *&v155 = 0;
    *(&v155 + 6) = 0;
    goto LABEL_15;
  }

  v152 = 0;
  v57 = *(v53 + 16);
  v58 = *(v53 + 24);

  v20 = (v21 & 0x3FFFFFFFFFFFFFFFLL);
  if (!sub_1C6EE3F90() || (v20 = (v21 & 0x3FFFFFFFFFFFFFFFLL), !__OFSUB__(v57, sub_1C6EE3FC0())))
  {
    if (__OFSUB__(v58, v57))
    {
      goto LABEL_76;
    }

    sub_1C6EE3FB0();
    sub_1C6E41EBC(&qword_1EDEF6218, MEMORY[0x1E6966688], MEMORY[0x1E6966680]);
    v20 = v154;
    sub_1C6EE4930();
    sub_1C6DF1134(v55, v21);
    sub_1C6DF1134(v55, v21);
    v49 = v152;
LABEL_31:
    v31 = v133;
    v51 = v132;
    goto LABEL_16;
  }

  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  swift_once();
LABEL_42:
  v74 = qword_1EDEF8F88;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
  v75 = swift_allocObject();
  *(v75 + 16) = xmmword_1C6EE6B40;
  *&v155 = 0;
  *(&v155 + 1) = 0xE000000000000000;
  if (v142 == 10)
  {
    v76 = 6648432;
  }

  else
  {
    v76 = 0;
  }

  if (v142 == 10)
  {
    v77 = 0xE300000000000000;
  }

  else
  {
    v77 = 0xE000000000000000;
  }

  MEMORY[0x1CCA57F60](v76, v77);

  v78 = v155;
  v79 = MEMORY[0x1E69E6158];
  *(v75 + 56) = MEMORY[0x1E69E6158];
  v80 = sub_1C6DF10E0();
  *(v75 + 64) = v80;
  *(v75 + 32) = v78;
  sub_1C6E41EBC(qword_1EDEF8FC0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
  v81 = v143;
  v82 = sub_1C6EE5460();
  *(v75 + 96) = v79;
  *(v75 + 104) = v80;
  *(v75 + 72) = v82;
  *(v75 + 80) = v83;
  v84 = sub_1C6EE4EE0();
  sub_1C6EE4730("Model %{public}@compiled, but no model cache specified, leaving at %{public}@", 77, 2, &dword_1C6DE9000, v74, v84, v75);

  sub_1C6E41F04(v151, &unk_1EC1F9AB0, &qword_1C6EE9250);
  return (*(v133 + 32))(v145, v81, v38);
}

id sub_1C6E40518(uint64_t a1, void *a2)
{
  v4 = sub_1C6EE41A0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6E41BA8();
  (*(v5 + 16))(v7, a1, v4);
  v8 = a2;
  v9 = sub_1C6E41BF4(v7, v8);

  return v9;
}

uint64_t sub_1C6E4062C()
{

  v1 = OBJC_IVAR____TtC18ComputationalGraph14ResourceReader_baseDirectory;
  v2 = sub_1C6EE41A0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1C6E41F04(v0 + OBJC_IVAR____TtC18ComputationalGraph14ResourceReader_modelsDirectory, &unk_1EC1F9AB0, &qword_1C6EE9250);

  v3 = OBJC_IVAR____TtC18ComputationalGraph14ResourceReader_signposter;
  v4 = sub_1C6EE4790();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  sub_1C6E41D54(*(v0 + OBJC_IVAR____TtC18ComputationalGraph14ResourceReader_didCacheModelsObserver), *(v0 + OBJC_IVAR____TtC18ComputationalGraph14ResourceReader_didCacheModelsObserver + 8));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ResourceReader(uint64_t a1)
{
  result = qword_1EDEF8628;
  if (!qword_1EDEF8628)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C6E407B8(uint64_t a1)
{
  sub_1C6EE41A0();
  if (v1 <= 0x3F)
  {
    sub_1C6DEFDAC(319);
    if (v2 <= 0x3F)
    {
      sub_1C6EE4790();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_1C6E408F8()
{
  v2 = sub_1C6EE4020();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F9A40, &unk_1C6EE65A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C6EE6590;
  v7 = *MEMORY[0x1E695DB78];
  *(inited + 32) = *MEMORY[0x1E695DB78];
  v8 = v7;
  sub_1C6ED9D4C(inited);
  swift_setDeallocating();
  sub_1C6E41F84(inited + 32, type metadata accessor for URLResourceKey);
  sub_1C6EE40C0();

  if (!v1)
  {
    v0 = sub_1C6EE3FF0();
    (*(v3 + 8))(v5, v2);
  }

  return v0 & 1;
}

uint64_t sub_1C6E40A74(uint64_t a1, uint64_t a2)
{
  v83 = a2;
  v95 = *MEMORY[0x1E69E9840];
  v89 = sub_1C6EE4020();
  v81 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v90 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F18, &unk_1C6EE92C0);
  v80 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v79 = &v76 - v4;
  v93 = sub_1C6EE41A0();
  v91 = *(v93 - 8);
  v5 = MEMORY[0x1EEE9AC00](v93);
  v7 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v76 - v9;
  v11 = MEMORY[0x1EEE9AC00](v8);
  v85 = (&v76 - v12);
  MEMORY[0x1EEE9AC00](v11);
  v86 = &v76 - v13;
  if (qword_1EDEF8F80 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v14 = qword_1EDEF8F88;
    v15 = sub_1C6EE4EB0();
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
    v17 = swift_allocObject();
    v92 = xmmword_1C6EE6590;
    *(v17 + 16) = xmmword_1C6EE6590;
    v18 = sub_1C6EE4170();
    v20 = v19;
    *(v17 + 56) = MEMORY[0x1E69E6158];
    v82 = sub_1C6DF10E0();
    *(v17 + 64) = v82;
    *(v17 + 32) = v18;
    *(v17 + 40) = v20;
    v84 = v14;
    sub_1C6EE4730("Processing directory: %{public}@", 32, 2, &dword_1C6DE9000, v14, v15, v17);

    v21 = objc_opt_self();
    v22 = [v21 defaultManager];
    v87 = a1;
    sub_1C6EE4170();
    v23 = sub_1C6EE4A60();

    v94[0] = 0;
    v24 = [v22 contentsOfDirectoryAtPath:v23 error:v94];

    v25 = v94[0];
    if (!v24)
    {
LABEL_23:
      v75 = v94[0];
      sub_1C6EE4050();

      return swift_willThrow();
    }

    v76 = v16;
    v77 = v7;
    v26 = sub_1C6EE4CA0();
    v27 = v25;

    strcpy(v94, "tabi_spec.pb");
    BYTE5(v94[1]) = 0;
    HIWORD(v94[1]) = -5120;
    MEMORY[0x1EEE9AC00](v28);
    *(&v76 - 2) = v94;
    v29 = v88;
    v30 = sub_1C6EE26E8(sub_1C6E41F64, (&v76 - 4), v26);
    v31 = v29;

    if (v30)
    {
      break;
    }

    v46 = [v21 defaultManager];
    v47 = sub_1C6EE4100();
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F9A40, &unk_1C6EE65A0);
    v49 = swift_allocObject();
    *(v49 + 16) = v92;
    v50 = *MEMORY[0x1E695DB78];
    *(v49 + 32) = *MEMORY[0x1E695DB78];
    type metadata accessor for URLResourceKey(0);
    v82 = v50;
    v51 = sub_1C6EE4C90();

    v94[0] = 0;
    v52 = [v46 contentsOfDirectoryAtURL:v47 includingPropertiesForKeys:v51 options:0 error:v94];

    v53 = v94[0];
    if (!v52)
    {
      goto LABEL_23;
    }

    v7 = sub_1C6EE4CA0();
    v54 = v53;

    v88 = *(v7 + 2);
    if (!v88)
    {
    }

    v55 = 0;
    v56 = v91;
    v87 = &v7[(*(v56 + 80) + 32) & ~*(v56 + 80)];
    v86 = (v91 + 16);
    v84 = (v81 + 8);
    v85 = (v91 + 8);
    a1 = v93;
    v57 = v82;
    while (v55 < *(v7 + 2))
    {
      (*(v56 + 16))(v10, v87 + *(v56 + 72) * v55, a1);
      inited = swift_initStackObject();
      *(inited + 16) = v92;
      *(inited + 32) = v57;
      v59 = v57;
      sub_1C6ED9D4C(inited);
      swift_setDeallocating();
      sub_1C6E41F84(inited + 32, type metadata accessor for URLResourceKey);
      v60 = v90;
      sub_1C6EE40C0();
      if (v31)
      {

        return (*v85)(v10, v93);
      }

      v61 = sub_1C6EE3FF0();
      (*v84)(v60, v89);
      if (v61 == 2 || (v61 & 1) == 0)
      {
        a1 = v93;
        (*v85)(v10, v93);
        v56 = v91;
      }

      else
      {
        v62 = v48;
        v63 = v10;
        v64 = v77;
        sub_1C6EE4120();
        sub_1C6E40A74(v64, v83);
        a1 = v93;
        v56 = v91;
        v81 = 0;
        v65 = *v85;
        (*v85)(v64, v93);
        v65(v63, a1);
        v31 = v81;
        v10 = v63;
        v48 = v62;
        v57 = v82;
      }

      if (v88 == ++v55)
      {
      }
    }

    __break(1u);
LABEL_26:
    swift_once();
  }

  v32 = swift_allocObject();
  *(v32 + 16) = v92;
  sub_1C6E41EBC(qword_1EDEF8FC0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
  v33 = v87;
  v34 = v93;
  v35 = sub_1C6EE5460();
  v36 = v82;
  *(v32 + 56) = MEMORY[0x1E69E6158];
  *(v32 + 64) = v36;
  *(v32 + 32) = v35;
  *(v32 + 40) = v37;
  v38 = sub_1C6EE4EE0();
  sub_1C6EE4730("Found ComputationalGraph Spec at: %{public}@", 44, 2, &dword_1C6DE9000, v84, v38, v32);

  v39 = v91;
  v40 = v86;
  (*(v91 + 16))(v86, v33, v34);
  v41 = v85;
  sub_1C6EE4110();
  v42 = sub_1C6EE41C0();
  if (v29)
  {
    v44 = *(v39 + 8);
    v44(v41, v34);
    return (v44)(v40, v34);
  }

  else
  {
    v66 = v42;
    v67 = v43;
    (*(v39 + 8))(v41, v34);
    v68 = v79;
    v69 = &v79[*(v78 + 48)];
    (*(v39 + 32))(v79, v40, v34);
    *v69 = v66;
    *(v69 + 1) = v67;
    v70 = v83;
    swift_beginAccess();
    v71 = *(v70 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v70 + 16) = v71;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v71 = sub_1C6ED97E8(0, v71[2] + 1, 1, v71);
      *(v83 + 16) = v71;
    }

    v74 = v71[2];
    v73 = v71[3];
    if (v74 >= v73 >> 1)
    {
      v71 = sub_1C6ED97E8((v73 > 1), v74 + 1, 1, v71);
    }

    v71[2] = v74 + 1;
    sub_1C6E41FE4(v68, v71 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v74, &qword_1EC1F7F18, &unk_1C6EE92C0);
    *(v83 + 16) = v71;
    return swift_endAccess();
  }
}

unint64_t sub_1C6E41514(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1C6E415E0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1C6E41ABC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_1C6E415E0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1C6E416EC(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1C6EE5240();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_1C6E416EC(uint64_t a1, unint64_t a2)
{
  v3 = sub_1C6E41738(a1, a2);
  sub_1C6E41868(&unk_1F468A2A0);
  return v3;
}

void *sub_1C6E41738(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1C6E41954(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1C6EE5240();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1C6EE4B90();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1C6E41954(v10, 0);
        result = sub_1C6EE5190();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1C6E41868(uint64_t result)
{
  v2 = *(result + 16);
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1C6E419C8(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1C6E41954(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7ED8, &qword_1C6EE9258);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_0(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1C6E419C8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7ED8, &qword_1C6EE9258);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1C6E41ABC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

id sub_1C6E41B18()
{
  v1 = *(sub_1C6EE41A0() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  return sub_1C6E40518(v0 + v2, *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

unint64_t sub_1C6E41BA8()
{
  result = qword_1EDEF6760;
  if (!qword_1EDEF6760)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDEF6760);
  }

  return result;
}

id sub_1C6E41BF4(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1C6EE4100();
  v13[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() modelWithContentsOfURL:v4 configuration:a2 error:v13];

  v6 = v13[0];
  if (v5)
  {
    v7 = sub_1C6EE41A0();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v13[0];
    sub_1C6EE4050();

    swift_willThrow();
    v11 = sub_1C6EE41A0();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  return v5;
}

uint64_t sub_1C6E41D54(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1C6E41D64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6E41DCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6E41E54(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6E41EBC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C6E41F04(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C6E41F84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C6E41FE4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_18ComputationalGraph14ResourceReaderC6ErrorsO(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 4)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_1C6E42068(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 17))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 16);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1C6E420B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C6E420F8(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    LOBYTE(a2) = 5;
  }

  *(result + 16) = a2;
  return result;
}

void *sub_1C6E42130@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v132 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCaseResult(0);
  v139 = *(v132 - 8);
  v6 = MEMORY[0x1EEE9AC00](v132);
  v114 = (&v113 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v113 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v147 = &v113 - v11;
  v131 = sub_1C6EE4760();
  v12 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v148 = &v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_1C6EE4790();
  v14 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v150 = &v113 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D68, &unk_1C6EE89B0);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v134 = &v113 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v136 = &v113 - v19;
  v135 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(0);
  v20 = *(v135 - 8);
  v21 = MEMORY[0x1EEE9AC00](v135);
  v133 = (&v113 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v21);
  v137 = (&v113 - v23);
  v149 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCase(0);
  v24 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149);
  v153 = (&v113 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = a2[1];
  v129 = *a2;
  v128 = v26;
  v27 = MEMORY[0x1E69E7CC0];
  a3[2] = MEMORY[0x1E69E7CC0];
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestBundleResult(0);
  v138 = a3;
  result = sub_1C6EE4420();
  v29 = *a1;
  v126 = *(*a1 + 16);
  if (v126)
  {
    result = objc_opt_self();
    v120 = result;
    v125 = v29 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
    v124 = 0x80000001C6EF9300;
    v123 = (v20 + 48);
    v119 = (v12 + 8);
    v30 = 0;
    v118 = (v14 + 8);
    v146 = xmmword_1C6EE6590;
    v122 = xmmword_1C6EE91C0;
    *(&v31 + 1) = 4;
    v127 = xmmword_1C6EE6B40;
    *&v31 = 136446210;
    v121 = v31;
    v152 = MEMORY[0x1E69E7CC0];
    v32 = MEMORY[0x1E69E6158];
    v33 = v136;
    v34 = v135;
    v35 = v137;
    v117 = v10;
    v116 = v29;
    v115 = v24;
    while (v30 < *(v29 + 16))
    {
      v39 = *(v24 + 72);
      v142 = v30;
      v40 = v153;
      sub_1C6E4A3EC(v125 + v39 * v30, v153, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCase);
      v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F30, &qword_1C6EE94C8);
      v41 = swift_allocObject();
      *(v41 + 16) = v146;
      v160 = 0;
      v161 = 0xE000000000000000;
      sub_1C6EE51B0();

      v160 = 0x1000000000000017;
      v161 = v124;
      v42 = v40[1];
      v140 = *v40;
      v141 = v42;
      MEMORY[0x1CCA57F60]();
      MEMORY[0x1CCA57F60](3026478, 0xE300000000000000);
      v43 = v160;
      v44 = v161;
      *(v41 + 56) = v32;
      *(v41 + 32) = v43;
      *(v41 + 40) = v44;
      sub_1C6EE5560();

      v45 = type metadata accessor for FatalFeaturesStore();
      v46 = swift_allocObject();
      v162 = v45;
      v163 = &off_1F468D870;
      v160 = v46;
      sub_1C6E4A29C(v40 + *(v149 + 28), v33, &qword_1EC1F7D68, &unk_1C6EE89B0);
      v47 = *v123;
      if ((*v123)(v33, 1, v34) == 1)
      {
        *v35 = sub_1C6E0B978(MEMORY[0x1E69E7CC0]);
        sub_1C6EE4420();
        v48 = v47(v33, 1, v34);
        v49 = v134;
        if (v48 != 1)
        {
          sub_1C6E4A304(v33, &qword_1EC1F7D68, &unk_1C6EE89B0);
        }
      }

      else
      {
        sub_1C6E4A384(v33, v35, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
        v49 = v134;
      }

      v151 = sub_1C6E29CBC(v35);
      sub_1C6E4A454(v35, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
      sub_1C6E4A29C(v153 + *(v149 + 32), v49, &qword_1EC1F7D68, &unk_1C6EE89B0);
      if (v47(v49, 1, v34) == 1)
      {
        v50 = sub_1C6E0B978(MEMORY[0x1E69E7CC0]);
        v51 = v133;
        *v133 = v50;
        sub_1C6EE4420();
        v52 = v47(v49, 1, v34);
        v53 = v154;
        if (v52 != 1)
        {
          sub_1C6E4A304(v49, &qword_1EC1F7D68, &unk_1C6EE89B0);
        }
      }

      else
      {
        v51 = v133;
        sub_1C6E4A384(v49, v133, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
        v53 = v154;
      }

      v54 = *v51;

      sub_1C6E4A454(v51, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
      v55 = *(v54 + 16);
      if (v55)
      {
        v56 = sub_1C6E03038(*(v54 + 16), 0);
        v57 = sub_1C6E0D438();
        result = sub_1C6E4A14C(v158[0]);
        if (v57 != v55)
        {
          goto LABEL_46;
        }
      }

      else
      {

        v56 = MEMORY[0x1E69E7CC0];
      }

      memset(v158, 0, sizeof(v158));
      v159 = v122;
      if (qword_1EDEF8F80 != -1)
      {
        swift_once();
      }

      v154 = v53;
      v58 = qword_1EDEF8F88;
      sub_1C6EE4770();
      if (qword_1EDEF8FA0 != -1)
      {
        swift_once();
      }

      v59 = qword_1EDEF8FA8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
      v60 = swift_allocObject();
      *(v60 + 16) = v127;
      v144 = v56;
      v61 = MEMORY[0x1CCA580B0](v56, v32);
      v63 = v62;
      *(v60 + 56) = v32;
      v64 = sub_1C6DF10E0();
      *(v60 + 64) = v64;
      *(v60 + 32) = v61;
      *(v60 + 40) = v63;
      v65 = v151;
      v66 = sub_1C6EE49B0();
      *(v60 + 96) = v32;
      *(v60 + 104) = v64;
      *(v60 + 72) = v66;
      *(v60 + 80) = v67;
      v68 = sub_1C6EE4EE0();
      sub_1C6EE4730("Calling into graph for outputs %{public}@ with bound inputs %{public}@", 70, 2, &dword_1C6DE9000, v59, v68, v60);

      sub_1C6EE4780();
      sub_1C6EE4740();
      v69 = swift_slowAlloc();
      v143 = swift_slowAlloc();
      v164 = v143;
      *v69 = v121;
      v155[0] = 0;
      v155[1] = 0xE000000000000000;
      sub_1C6EE51B0();

      v156 = 0x3D737475706E69;
      v157 = 0xE700000000000000;
      v70 = v65[2];
      if (v70)
      {
        sub_1C6E03038(v65[2], 0);
        v71 = sub_1C6E0D430();
        v72 = v155[0];

        result = sub_1C6E4A14C(v72);
        if (v71 != v70)
        {
          goto LABEL_47;
        }

        v32 = MEMORY[0x1E69E6158];
      }

      v73 = sub_1C6EE4C90();

      v74 = [v120 localizedStringByJoiningStrings_];

      v75 = sub_1C6EE4A90();
      v77 = v76;

      MEMORY[0x1CCA57F60](v75, v77);

      MEMORY[0x1CCA57F60](0x74757074756F202CLL, 0xEA00000000003D73);
      v78 = v144;
      v79 = MEMORY[0x1CCA580B0](v144, v32);
      MEMORY[0x1CCA57F60](v79);

      v80 = sub_1C6E41514(v156, v157, &v164);

      *(v69 + 4) = v80;
      v81 = sub_1C6EE4780();
      LOBYTE(v75) = sub_1C6EE4F80();
      v82 = v148;
      v83 = sub_1C6EE4750();
      _os_signpost_emit_with_name_impl(&dword_1C6DE9000, v81, v75, v83, "SubGraphComputation.buildAndCall", "%{public}s", v69, 0xCu);
      v84 = v154;
      sub_1C6EDFEE4(v78, v129, v128, v151, &v160, v158, 0, sub_1C6E43508, v155, 0);
      v154 = v84;
      LOBYTE(v75) = sub_1C6EE4F70();
      v85 = sub_1C6EE4750();
      _os_signpost_emit_with_name_impl(&dword_1C6DE9000, v81, v75, v85, "SubGraphComputation.buildAndCall", "%{public}s", v69, 0xCu);

      v86 = v143;
      __swift_destroy_boxed_opaque_existential_0(v143);
      MEMORY[0x1CCA59290](v86, -1, -1);
      MEMORY[0x1CCA59290](v69, -1, -1);

      (*v119)(v82, v131);
      (*v118)(v150, v130);
      sub_1C6E4A304(v158, &qword_1EC1F7F38, &unk_1C6EF7A00);
      v87 = sub_1C6E4A304(&v160, &qword_1EC1F7F40, &unk_1C6EE94D0);
      MEMORY[0x1EEE9AC00](v87);
      sub_1C6E4A1FC(&qword_1EC1F7F48, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCaseResult, &unk_1C6EEE9F8);
      v88 = v154;
      sub_1C6EE4600();
      v35 = v137;
      if (v88)
      {

        sub_1C6E4A454(v153, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCase);
        v102 = swift_allocObject();
        *(v102 + 16) = v127;
        v103 = MEMORY[0x1E69E6158];
        *(v102 + 56) = MEMORY[0x1E69E6158];
        *(v102 + 32) = 0xD000000000000012;
        *(v102 + 40) = 0x80000001C6EF93A0;
        v160 = 0;
        v161 = 0xE000000000000000;
        swift_getErrorValue();
        sub_1C6EE5480();
        v104 = v160;
        v105 = v161;
        *(v102 + 88) = v103;
        *(v102 + 64) = v104;
        *(v102 + 72) = v105;
        sub_1C6EE5560();

        v106 = v138;
        *v138 = 1;
        *(v106 + 8) = 1;
        v107 = swift_allocObject();
        *(v107 + 16) = v146;
        *(v107 + 56) = v103;
        *(v107 + 32) = 0x65637845208C9DE2;
        v108 = 0xAD00006E6F697470;
        goto LABEL_43;
      }

      v154 = 0;

      v89 = v152;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v152 = sub_1C6ED9858(0, v89[2] + 1, 1, v89);
      }

      v90 = v117;
      v33 = v136;
      v34 = v135;
      v29 = v116;
      v32 = MEMORY[0x1E69E6158];
      v92 = v152[2];
      v91 = v152[3];
      if (v92 >= v91 >> 1)
      {
        v152 = sub_1C6ED9858((v91 > 1), v92 + 1, 1, v152);
      }

      v93 = v152;
      v152[2] = v92 + 1;
      v94 = v93 + ((*(v139 + 80) + 32) & ~*(v139 + 80)) + *(v139 + 72) * v92;
      sub_1C6E4A384(v147, v94, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCaseResult);
      v138[2] = v93;
      sub_1C6E4A3EC(v94, v90, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCaseResult);
      v95 = *v90;
      v96 = swift_allocObject();
      *(v96 + 16) = v146;
      if (v95 == 1)
      {
        v160 = 0x2220859CE2;
        v161 = 0xA500000000000000;
        MEMORY[0x1CCA57F60](v140, v141);
        v36 = 0x737361502022;
      }

      else
      {
        v160 = 0x22208C9DE2;
        v161 = 0xA500000000000000;
        MEMORY[0x1CCA57F60](v140, v141);
        v36 = 0x6C6961462022;
      }

      MEMORY[0x1CCA57F60](v36 & 0xFFFFFFFFFFFFLL | 0x6465000000000000, 0xE800000000000000);
      v37 = v160;
      v38 = v161;
      v24 = v115;
      v30 = v142 + 1;
      *(v96 + 56) = v32;
      *(v96 + 32) = v37;
      *(v96 + 40) = v38;
      sub_1C6EE5560();

      sub_1C6E4A454(v90, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCaseResult);
      result = sub_1C6E4A454(v153, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCase);
      if (v126 == v30)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
    goto LABEL_45;
  }

  v152 = v27;
  v32 = MEMORY[0x1E69E6158];
LABEL_33:
  v97 = v152;
  v98 = v152[2];
  if (v98)
  {
    v99 = 0;
    while (v99 < v97[2])
    {
      v100 = v114;
      sub_1C6E4A3EC(v97 + ((*(v139 + 80) + 32) & ~*(v139 + 80)) + *(v139 + 72) * v99, v114, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCaseResult);
      v101 = *v100;
      result = sub_1C6E4A454(v100, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCaseResult);
      if (v101 != 1)
      {
        v112 = v138;
        *v138 = 3;
        *(v112 + 8) = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F30, &qword_1C6EE94C8);
        v110 = swift_allocObject();
        v107 = v110;
        *(v110 + 16) = xmmword_1C6EE6590;
        v108 = 0x80000001C6EF93C0;
        *(v110 + 56) = v32;
        v111 = 0x1000000000000018;
        goto LABEL_42;
      }

      if (v98 == ++v99)
      {
        goto LABEL_40;
      }
    }

LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    return result;
  }

LABEL_40:
  v109 = v138;
  *v138 = 2;
  *(v109 + 8) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F30, &qword_1C6EE94C8);
  v110 = swift_allocObject();
  v107 = v110;
  *(v110 + 16) = xmmword_1C6EE6590;
  v108 = 0x80000001C6EF93E0;
  *(v110 + 56) = v32;
  v111 = 0x1000000000000014;
LABEL_42:
  *(v110 + 32) = v111;
LABEL_43:
  *(v107 + 40) = v108;
  sub_1C6EE5560();
}

uint64_t sub_1C6E43508()
{
  sub_1C6E49F48();
  swift_allocError();
  *v0 = xmmword_1C6EE91C0;
  *(v0 + 16) = 4;
  return swift_willThrow();
}

uint64_t sub_1C6E43564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = a1;
  v6 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCase(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1C6E438A8(a2, a3);
  if (!v3)
  {
    v17 = result;
    v18 = v16;
    v30 = v9;
    v31 = v7;
    v32 = v6;
    v33 = 0;
    v19 = v15;
    sub_1C6E4A3EC(a2, v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCase);
    v29 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCaseResult(0);
    v20 = *(v29 + 28);
    v21 = v34;
    sub_1C6E4A304(v34 + v20, &qword_1EC1F7F50, &unk_1C6EED3E0);
    sub_1C6E4A384(v13, v21 + v20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCase);
    (*(v11 + 56))(v21 + v20, 0, 1, v10);
    v22 = v33;
    v23 = sub_1C6E45130(a2, v17, v21, v19, v18 & 1);
    if (v22)
    {
    }

    else
    {
      *v21 = v23;
      *(v21 + 8) = v24 & 1;
      MEMORY[0x1EEE9AC00](v23);
      *(&v28 - 2) = v17;
      sub_1C6E4A1FC(qword_1EDEF7B08, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features, &unk_1C6EF40C8);
      v25 = v30;
      v26 = v32;
      sub_1C6EE4600();

      v27 = *(v29 + 32);
      sub_1C6E4A304(v21 + v27, &qword_1EC1F7D68, &unk_1C6EE89B0);
      sub_1C6E4A384(v25, v21 + v27, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
      return (*(v31 + 56))(v21 + v27, 0, 1, v26);
    }
  }

  return result;
}

uint64_t sub_1C6E438A8(uint64_t a1, uint64_t a2)
{
  v108 = a2;
  v106 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeaturesConfig(0);
  v102 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v95 = (&v88 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F78, &qword_1C6EE9508);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v94 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v101 = &v88 - v7;
  v110 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_AssertionConfig(0);
  v107 = *(v110 - 8);
  v8 = MEMORY[0x1EEE9AC00](v110);
  v96 = (&v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v100 = &v88 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F60, &qword_1C6EE94F0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v93 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v99 = &v88 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v105 = (&v88 - v16);
  v17 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TestCaseConfig(0);
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v92 = &v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v98 = &v88 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v104 = &v88 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F70, &qword_1C6EE9500);
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  v90 = &v88 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v97 = &v88 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v103 = &v88 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v88 - v31;
  v33 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCase(0) + 36);
  sub_1C6E4A29C(a1 + v33, v32, &qword_1EC1F7F70, &qword_1C6EE9500);
  v36 = *(v18 + 48);
  v34 = v18 + 48;
  v35 = v36;
  v37 = v36(v32, 1, v17);
  sub_1C6E4A304(v32, &qword_1EC1F7F70, &qword_1C6EE9500);
  if (v37 == 1)
  {
    goto LABEL_7;
  }

  v38 = v103;
  sub_1C6E4A29C(a1 + v33, v103, &qword_1EC1F7F70, &qword_1C6EE9500);
  v39 = v35(v38, 1, v17);
  v91 = v34;
  v89 = v35;
  v88 = v33;
  if (v39 == 1)
  {
    v40 = v104;
    sub_1C6EE4420();
    v41 = *(v17 + 20);
    v42 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceConfig(0);
    (*(*(v42 - 8) + 56))(&v40[v41], 1, 1, v42);
    v43 = v110;
    (*(v107 + 56))(&v40[*(v17 + 24)], 1, 1, v110);
    if (v35(v38, 1, v17) != 1)
    {
      sub_1C6E4A304(v38, &qword_1EC1F7F70, &qword_1C6EE9500);
    }
  }

  else
  {
    v40 = v104;
    sub_1C6E4A384(v38, v104, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TestCaseConfig);
    v43 = v110;
  }

  v44 = v17;
  v45 = &v40[*(v17 + 24)];
  v46 = v105;
  sub_1C6E4A29C(v45, v105, &qword_1EC1F7F60, &qword_1C6EE94F0);
  sub_1C6E4A454(v40, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TestCaseConfig);
  v47 = *(v107 + 48);
  v48 = (v47)(v46, 1, v43);
  sub_1C6E4A304(v46, &qword_1EC1F7F60, &qword_1C6EE94F0);
  v49 = v89;
  if (v48 == 1)
  {
LABEL_7:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F30, &qword_1C6EE94C8);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_1C6EE6590;
    v51 = 0x80000001C6EF9730;
    *(v50 + 56) = MEMORY[0x1E69E6158];
    v52 = 0x100000000000005BLL;
LABEL_8:
    *(v50 + 32) = v52;
    *(v50 + 40) = v51;
    sub_1C6EE5560();

    v53 = v108;

    return v53;
  }

  v55 = v97;
  sub_1C6E4A29C(a1 + v88, v97, &qword_1EC1F7F70, &qword_1C6EE9500);
  v56 = v49(v55, 1, v44);
  v104 = v47;
  if (v56 == 1)
  {
    v57 = v98;
    sub_1C6EE4420();
    v58 = *(v44 + 20);
    v59 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceConfig(0);
    (*(*(v59 - 8) + 56))(v57 + v58, 1, 1, v59);
    v60 = v110;
    (*(v107 + 56))(v57 + *(v44 + 24), 1, 1, v110);
    v61 = v57;
    v62 = v49(v55, 1, v44) == 1;
    v63 = v55;
    v64 = v106;
    v66 = v99;
    v65 = v100;
    if (!v62)
    {
      sub_1C6E4A304(v63, &qword_1EC1F7F70, &qword_1C6EE9500);
    }
  }

  else
  {
    v61 = v98;
    sub_1C6E4A384(v55, v98, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TestCaseConfig);
    v64 = v106;
    v60 = v110;
    v66 = v99;
    v65 = v100;
  }

  sub_1C6E4A29C(v61 + *(v44 + 24), v66, &qword_1EC1F7F60, &qword_1C6EE94F0);
  v67 = v104;
  if ((v104)(v66, 1, v60) == 1)
  {
    *v65 = 0;
    *(v65 + 8) = 1;
    sub_1C6EE4420();
    sub_1C6E4A454(v61, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TestCaseConfig);
    (*(v102 + 56))(v65 + *(v60 + 24), 1, 1, v64);
    if ((v67)(v66, 1, v60) != 1)
    {
      sub_1C6E4A304(v66, &qword_1EC1F7F60, &qword_1C6EE94F0);
    }
  }

  else
  {
    sub_1C6E4A454(v61, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TestCaseConfig);
    sub_1C6E4A384(v66, v65, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_AssertionConfig);
  }

  v68 = v101;
  sub_1C6E4A29C(v65 + *(v60 + 24), v101, &qword_1EC1F7F78, &qword_1C6EE9508);
  sub_1C6E4A454(v65, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_AssertionConfig);
  v105 = *(v102 + 48);
  v69 = (v105)(v68, 1, v106);
  sub_1C6E4A304(v68, &qword_1EC1F7F78, &qword_1C6EE9508);
  if (v69 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F30, &qword_1C6EE94C8);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_1C6EE6590;
    v51 = 0x80000001C6EF9790;
    *(v50 + 56) = MEMORY[0x1E69E6158];
    v52 = 0x1000000000000070;
    goto LABEL_8;
  }

  v70 = v90;
  sub_1C6E4A29C(a1 + v88, v90, &qword_1EC1F7F70, &qword_1C6EE9500);
  v71 = v89;
  if (v89(v70, 1, v44) == 1)
  {
    v72 = v92;
    sub_1C6EE4420();
    v73 = *(v44 + 20);
    v74 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceConfig(0);
    (*(*(v74 - 8) + 56))(v72 + v73, 1, 1, v74);
    (*(v107 + 56))(v72 + *(v44 + 24), 1, 1, v110);
    v75 = v71(v70, 1, v44);
    v76 = v106;
    if (v75 != 1)
    {
      sub_1C6E4A304(v70, &qword_1EC1F7F70, &qword_1C6EE9500);
    }
  }

  else
  {
    v72 = v92;
    sub_1C6E4A384(v70, v92, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TestCaseConfig);
    v76 = v106;
  }

  v53 = v93;
  sub_1C6E4A29C(v72 + *(v44 + 24), v93, &qword_1EC1F7F60, &qword_1C6EE94F0);
  v77 = v110;
  if ((v67)(v53, 1, v110) == 1)
  {
    v78 = v96;
    *v96 = 0;
    *(v78 + 8) = 1;
    sub_1C6EE4420();
    sub_1C6E4A454(v72, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TestCaseConfig);
    (*(v102 + 56))(v78 + *(v77 + 24), 1, 1, v76);
    v79 = (v67)(v53, 1, v77);
    v80 = v95;
    if (v79 != 1)
    {
      sub_1C6E4A304(v53, &qword_1EC1F7F60, &qword_1C6EE94F0);
    }
  }

  else
  {
    sub_1C6E4A454(v72, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TestCaseConfig);
    v78 = v96;
    sub_1C6E4A384(v53, v96, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_AssertionConfig);
    v80 = v95;
  }

  v81 = v94;
  sub_1C6E4A29C(v78 + *(v110 + 24), v94, &qword_1EC1F7F78, &qword_1C6EE9508);
  v82 = v105;
  if ((v105)(v81, 1, v76) == 1)
  {
    *v80 = sub_1C6E0C4F4(MEMORY[0x1E69E7CC0]);
    sub_1C6EE4420();
    v83 = v82(v81, 1, v76);
    if (v83 != 1)
    {
      v83 = sub_1C6E4A304(v81, &qword_1EC1F7F78, &qword_1C6EE9508);
    }
  }

  else
  {
    v83 = sub_1C6E4A384(v81, v80, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeaturesConfig);
  }

  MEMORY[0x1EEE9AC00](v83);
  *(&v88 - 2) = v80;
  v84 = v109;
  v85 = sub_1C6EDC5E4(sub_1C6E4A364, (&v88 - 4), v108);
  if (v84)
  {
    sub_1C6E4A454(v78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_AssertionConfig);
    sub_1C6E4A454(v80, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeaturesConfig);
  }

  else
  {
    if (*(v85 + 16))
    {
      v86 = v85;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F77A8, &qword_1C6EE6960);
      v87 = sub_1C6EE5340();
      v85 = v86;
    }

    else
    {
      v87 = MEMORY[0x1E69E7CC8];
    }

    v111 = v87;
    sub_1C6E298C0(v85, 1, &v111);
    v53 = v111;
    sub_1C6E4A454(v96, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_AssertionConfig);
    sub_1C6E4A454(v80, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeaturesConfig);
  }

  return v53;
}

uint64_t sub_1C6E44730@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a3;
  v7 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeatureConfig(0);
  v25 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v26 = &v23 - v11;
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  v16 = *(a1 + 32);
  v17 = *a2;
  v18 = *(v17 + 16);

  result = sub_1C6E00CBC(v14, v15, v16);
  if (v18 && (result = sub_1C6DEC784(v12, v13), (v20 & 1) != 0))
  {
    sub_1C6E4A3EC(*(v17 + 56) + *(v25 + 72) * result, v10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeatureConfig);
    v21 = v26;
    sub_1C6E4A384(v10, v26, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeatureConfig);
    *a4 = v12;
    *(a4 + 8) = v13;

    v22 = v27;
    sub_1C6E44948(v21, v14, v15, v16, v12, v13, a4 + 16);

    sub_1C6E00C60(v14, v15, v16);
    result = sub_1C6E4A454(v21, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeatureConfig);
    if (v22)
    {

      *v24 = v22;
    }
  }

  else
  {
    *a4 = v12;
    *(a4 + 8) = v13;
    *(a4 + 16) = v14;
    *(a4 + 24) = v15;
    *(a4 + 32) = v16;
  }

  return result;
}

uint64_t sub_1C6E44948@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_SliceSpec(0) - 8;
  result = MEMORY[0x1EEE9AC00](v14);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 1)
  {
    v20 = (a3 >> 60) & 3 | (4 * (a4 & 1));
    if (v20 > 2)
    {
      if (v20 > 4)
      {
        if (v20 != 5)
        {
          goto LABEL_76;
        }

        v29 = a3 >> 62;
        if ((a3 >> 62) > 1)
        {
          if (v29 == 2)
          {
            v35 = *(a2 + 16);
            v34 = *(a2 + 24);
            v19 = v34 - v35;
            if (__OFSUB__(v34, v35))
            {
              __break(1u);
              goto LABEL_44;
            }
          }

          else
          {
            v19 = 0;
          }
        }

        else if (v29)
        {
          v31 = (HIDWORD(a2) - a2);
          if (__OFSUB__(HIDWORD(a2), a2))
          {
LABEL_80:
            __break(1u);
            goto LABEL_81;
          }

          v19 = v31;
        }

        else
        {
          v19 = BYTE6(a3);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9AC0, &qword_1C6EE6A50);
        result = swift_allocObject();
        *(result + 16) = xmmword_1C6EE6590;
        v31 = 0xFFFFFFFEFFFFFFFFLL;
        if (v19 >= 0xFFFFFFFEFFFFFFFFLL)
        {
          v31 = 0xFFFFFFFFLL;
          if (v19 <= 0xFFFFFFFFLL)
          {
            *(result + 32) = v19 / 2;
            goto LABEL_37;
          }

          goto LABEL_79;
        }

LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
        goto LABEL_80;
      }

      if (v20 == 3)
      {
        v19 = *(a2 + 16);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9AC0, &qword_1C6EE6A50);
        result = swift_allocObject();
        *(result + 16) = xmmword_1C6EE6590;
        v17 = v19 >> 31;
        if (v19 >> 31)
        {
          __break(1u);
          goto LABEL_7;
        }

        goto LABEL_36;
      }

LABEL_35:
      v19 = *(a2 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9AC0, &qword_1C6EE6A50);
      result = swift_allocObject();
      *(result + 16) = xmmword_1C6EE6590;
      v31 = v19 >> 31;
      if (!(v19 >> 31))
      {
        goto LABEL_36;
      }

      __break(1u);
      goto LABEL_78;
    }

    if (v20)
    {
      if (v20 == 1)
      {
        v19 = *(a2 + 16);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9AC0, &qword_1C6EE6A50);
        result = swift_allocObject();
        *(result + 16) = xmmword_1C6EE6590;
        v17 = v19 >> 31;
        if (v19 >> 31)
        {
          __break(1u);
          goto LABEL_13;
        }

        goto LABEL_36;
      }
    }

    else
    {
      v19 = *(a2 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9AC0, &qword_1C6EE6A50);
      result = swift_allocObject();
      *(result + 16) = xmmword_1C6EE6590;
      if (!(v19 >> 31))
      {
        goto LABEL_36;
      }

      __break(1u);
    }

    v19 = *(a2 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9AC0, &qword_1C6EE6A50);
    result = swift_allocObject();
    *(result + 16) = xmmword_1C6EE6590;
    if (v19 >> 31)
    {
      __break(1u);
      goto LABEL_35;
    }

LABEL_36:
    *(result + 32) = v19;
LABEL_37:
    v33 = 0x1000000000000000;
    *a7 = result;
LABEL_38:
    *(a7 + 8) = v33;
LABEL_39:
    *(a7 + 16) = 0;
    return result;
  }

LABEL_7:
  if (*(*(a1 + 8) + 16))
  {
    v46 = 0;
    v47 = 0xE000000000000000;
    sub_1C6EE51B0();
    MEMORY[0x1CCA57F60](0xD000000000000062, 0x80000001C6EF9810);
    MEMORY[0x1CCA57F60](a5, a6);
    MEMORY[0x1CCA57F60](39, 0xE100000000000000);
    v21 = v46;
    v22 = v47;
    sub_1C6E49F48();
    swift_allocError();
    *v23 = v21;
    *(v23 + 8) = v22;
    v24 = 2;
LABEL_15:
    *(v23 + 16) = v24;
    return swift_willThrow();
  }

LABEL_13:
  v25 = *(a1 + 16);
  v26 = *(v25 + 16);
  if (v26 > 1)
  {
    v46 = 0;
    v47 = 0xE000000000000000;
    sub_1C6EE51B0();
    MEMORY[0x1CCA57F60](0xD00000000000003DLL, 0x80000001C6EF98C0);
    MEMORY[0x1CCA57F60](a5, a6);
    MEMORY[0x1CCA57F60](0xD000000000000017, 0x80000001C6EF9900);
    v27 = v46;
    v28 = v47;
    sub_1C6E49F48();
    swift_allocError();
    *v23 = v27;
    *(v23 + 8) = v28;
    v24 = 3;
    goto LABEL_15;
  }

  if (!v26)
  {
    goto LABEL_45;
  }

  sub_1C6E4A3EC(v25 + ((*(v17 + 80) + 32) & ~*(v17 + 80)), v19, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_SliceSpec);
  if (*v19 != 1)
  {
LABEL_44:
    sub_1C6E4A454(v19, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_SliceSpec);
LABEL_45:
    *a7 = a2;
    *(a7 + 8) = a3;
    *(a7 + 16) = a4 & 1;
    return sub_1C6E00CBC(a2, a3, a4 & 1);
  }

  v30 = (a3 >> 60) & 3 | (4 * (a4 & 1));
  if (v30 <= 2)
  {
    if (v30)
    {
      if (v30 != 1)
      {
        v16 = *(v19 + 4);
        v31 = *(v19 + 8);
        if (v31 >= v16)
        {
          if ((v16 & 0x80000000) == 0)
          {
            v41 = *(a2 + 16);
            if (v41 >= v31)
            {
              if (v41 == v31 - v16)
              {
                sub_1C6E00CBC(a2, a3, a4 & 1);
              }

              else
              {
                sub_1C6EC8B68(a2, a2 + 32, v16, (2 * v31) | 1);
                a2 = v44;
              }

              result = sub_1C6E4A454(v19, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_SliceSpec);
              v33 = 0x2000000000000000;
              goto LABEL_74;
            }

            goto LABEL_91;
          }

          goto LABEL_87;
        }

        goto LABEL_83;
      }

      v16 = *(v19 + 4);
      v31 = *(v19 + 8);
      if (v31 >= v16)
      {
        if ((v16 & 0x80000000) == 0)
        {
          v36 = *(a2 + 16);
          if (v36 >= v31)
          {
            if (v36 == v31 - v16)
            {
              sub_1C6E00CBC(a2, a3, a4 & 1);
            }

            else
            {
              sub_1C6EC8A98(a2, a2 + 32, v16, (2 * v31) | 1);
              a2 = v43;
            }

            result = sub_1C6E4A454(v19, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_SliceSpec);
            v33 = 0x1000000000000000;
            goto LABEL_74;
          }

          goto LABEL_90;
        }

        goto LABEL_86;
      }

LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
      goto LABEL_93;
    }

    v16 = *(v19 + 4);
    v31 = *(v19 + 8);
    if (v31 >= v16)
    {
      if ((v16 & 0x80000000) == 0)
      {
        v40 = *(a2 + 16);
        if (v40 >= v31)
        {
          if (v40 == v31 - v16)
          {
            sub_1C6E00CBC(a2, a3, a4 & 1);
LABEL_67:
            result = sub_1C6E4A454(v19, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_SliceSpec);
            *a7 = a2;
            *(a7 + 8) = 0;
            goto LABEL_39;
          }

LABEL_93:
          sub_1C6EC8C38(a2, a2 + 32, v16, (2 * v31) | 1);
          a2 = v42;
          goto LABEL_67;
        }

        goto LABEL_89;
      }

      goto LABEL_85;
    }

LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  if (v30 <= 4)
  {
    if (v30 == 3)
    {
      v16 = *(v19 + 4);
      v31 = *(v19 + 8);
      if (v31 >= v16)
      {
        if ((v16 & 0x80000000) == 0)
        {
          v32 = *(a2 + 16);
          if (v32 >= v31)
          {
            if (v32 == v31 - v16)
            {
              sub_1C6E00CBC(a2, a3, a4 & 1);
            }

            else
            {
              sub_1C6EC8D08(a2, a2 + 32, v16, (2 * v31) | 1);
              a2 = v45;
            }

            result = sub_1C6E4A454(v19, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_SliceSpec);
            v33 = 0x3000000000000000;
LABEL_74:
            *a7 = a2;
            goto LABEL_38;
          }

          goto LABEL_92;
        }

        goto LABEL_88;
      }

      goto LABEL_84;
    }

    goto LABEL_61;
  }

  if (v30 == 5)
  {
LABEL_61:
    v46 = 0;
    v47 = 0xE000000000000000;
    sub_1C6EE51B0();

    v46 = 0xD00000000000001DLL;
    v47 = 0x80000001C6EF9880;
    MEMORY[0x1CCA57F60](a5, a6);
    MEMORY[0x1CCA57F60](0xD000000000000010, 0x80000001C6EF98A0);
    v37 = v46;
    v38 = v47;
    sub_1C6E49F48();
    swift_allocError();
    *v39 = v37;
    *(v39 + 8) = v38;
    *(v39 + 16) = 2;
    swift_willThrow();
    return sub_1C6E4A454(v19, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_SliceSpec);
  }

  result = sub_1C6E4A454(v19, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_SliceSpec);
LABEL_76:
  *a7 = a2;
  *(a7 + 8) = a3;
  *(a7 + 16) = a4 & 1;
  return result;
}

uint64_t sub_1C6E45130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v476 = a5;
  v489 = a4;
  v458 = a3;
  v475 = a2;
  v480 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  *&v490 = *(v480 - 8);
  MEMORY[0x1EEE9AC00](v480);
  v447 = &v401 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v457 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D20, &qword_1C6EE94E0);
  MEMORY[0x1EEE9AC00](v457);
  v460 = &v401 - v7;
  v426 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v8 = MEMORY[0x1EEE9AC00](v426);
  v406 = (&v401 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x1EEE9AC00](v8);
  v415 = (&v401 - v11);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v424 = &v401 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v408 = (&v401 - v15);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v421 = (&v401 - v17);
  MEMORY[0x1EEE9AC00](v16);
  v420 = (&v401 - v18);
  v423 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList(0);
  v19 = MEMORY[0x1EEE9AC00](v423);
  v407 = (&v401 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = MEMORY[0x1EEE9AC00](v19);
  v413 = (&v401 - v22);
  MEMORY[0x1EEE9AC00](v21);
  v419 = (&v401 - v23);
  v453 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceConfig(0);
  *(&v486 + 1) = *(v453 - 8);
  MEMORY[0x1EEE9AC00](v453);
  v434 = &v401 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F58, &qword_1C6EE94E8);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v430 = &v401 - v26;
  v429 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceForDType(0);
  v467 = *(v429 - 8);
  v27 = MEMORY[0x1EEE9AC00](v429);
  v454 = (&v401 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v27);
  v435 = &v401 - v29;
  v448 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_AssertionConfig(0);
  v30 = *(v448 - 8);
  MEMORY[0x1EEE9AC00](v448);
  v437 = (&v401 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F60, &qword_1C6EE94F0);
  v33 = MEMORY[0x1EEE9AC00](v32 - 8);
  v439 = &v401 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v442 = &v401 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F68, &qword_1C6EE94F8);
  v37 = MEMORY[0x1EEE9AC00](v36 - 8);
  v433 = &v401 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v450 = &v401 - v39;
  v461 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TestCaseConfig(0);
  *&v486 = *(v461 - 8);
  v40 = MEMORY[0x1EEE9AC00](v461);
  v432 = &v401 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x1EEE9AC00](v40);
  v436 = &v401 - v43;
  v44 = MEMORY[0x1EEE9AC00](v42);
  v441 = &v401 - v45;
  MEMORY[0x1EEE9AC00](v44);
  v449 = &v401 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F70, &qword_1C6EE9500);
  v48 = MEMORY[0x1EEE9AC00](v47 - 8);
  v431 = &v401 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x1EEE9AC00](v48);
  v438 = &v401 - v51;
  v52 = MEMORY[0x1EEE9AC00](v50);
  v440 = &v401 - v53;
  v54 = MEMORY[0x1EEE9AC00](v52);
  v444 = &v401 - v55;
  v56 = MEMORY[0x1EEE9AC00](v54);
  v452 = &v401 - v57;
  MEMORY[0x1EEE9AC00](v56);
  v473 = &v401 - v58;
  v59 = sub_1C6EE4AE0();
  MEMORY[0x1EEE9AC00](v59 - 8);
  v487 = &v401 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7A98, &qword_1C6EE7840);
  v62 = MEMORY[0x1EEE9AC00](v61 - 8);
  v456 = &v401 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = MEMORY[0x1EEE9AC00](v62);
  v409 = &v401 - v65;
  v66 = MEMORY[0x1EEE9AC00](v64);
  v414 = &v401 - v67;
  v68 = MEMORY[0x1EEE9AC00](v66);
  v416 = &v401 - v69;
  v70 = MEMORY[0x1EEE9AC00](v68);
  v411 = &v401 - v71;
  v72 = MEMORY[0x1EEE9AC00](v70);
  v422 = &v401 - v73;
  v74 = MEMORY[0x1EEE9AC00](v72);
  v418 = &v401 - v75;
  v76 = MEMORY[0x1EEE9AC00](v74);
  v410 = &v401 - v77;
  v78 = MEMORY[0x1EEE9AC00](v76);
  v412 = &v401 - v79;
  v80 = MEMORY[0x1EEE9AC00](v78);
  v417 = &v401 - v81;
  v82 = MEMORY[0x1EEE9AC00](v80);
  v465 = &v401 - v83;
  MEMORY[0x1EEE9AC00](v82);
  v466 = &v401 - v84;
  v85 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList(0);
  v86 = MEMORY[0x1EEE9AC00](v85 - 8);
  v488 = (&v401 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v86);
  v483 = (&v401 - v88);
  v455 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature(0);
  v472 = *(v455 - 8);
  v89 = MEMORY[0x1EEE9AC00](v455);
  v468 = &v401 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = MEMORY[0x1EEE9AC00](v89);
  v464 = &v401 - v92;
  v93 = MEMORY[0x1EEE9AC00](v91);
  v95 = &v401 - v94;
  MEMORY[0x1EEE9AC00](v93);
  v471 = &v401 - v96;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D28, &qword_1C6EE8970);
  v98 = MEMORY[0x1EEE9AC00](v97 - 8);
  v474 = (&v401 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v98);
  v484 = (&v401 - v100);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D68, &unk_1C6EE89B0);
  MEMORY[0x1EEE9AC00](v101 - 8);
  v103 = &v401 - v102;
  v104 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(0);
  v105 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v107 = &v401 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0);
  v459 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCase(0);
  v108 = *(v459 + 32);
  v463 = a1;
  sub_1C6E4A29C(a1 + v108, v103, &qword_1EC1F7D68, &unk_1C6EE89B0);
  v109 = *(v105 + 48);
  if (v109(v103, 1, v104) == 1)
  {
    *v107 = sub_1C6E0B978(MEMORY[0x1E69E7CC0]);
    sub_1C6EE4420();
    if (v109(v103, 1, v104) != 1)
    {
      sub_1C6E4A304(v103, &qword_1EC1F7D68, &unk_1C6EE89B0);
    }
  }

  else
  {
    sub_1C6E4A384(v103, v107, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
  }

  v110 = *v107;

  sub_1C6E4A454(v107, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
  v111 = 0;
  v112 = v110 + 64;
  v113 = 1 << *(v110 + 32);
  v114 = -1;
  if (v113 < 64)
  {
    v114 = ~(-1 << v113);
  }

  v115 = v114 & *(v110 + 64);
  v116 = (v113 + 63) >> 6;
  v462 = (v486 + 48);
  v446 = (*(&v486 + 1) + 56);
  v445 = (v30 + 56);
  v451 = (*(&v486 + 1) + 48);
  v443 = (v30 + 48);
  v428 = (v467 + 56);
  v427 = (v467 + 48);
  v117 = &qword_1EC1F7D30;
  v481 = (v490 + 48);
  v425 = xmmword_1C6EE6B50;
  v477 = v95;
  v118 = v484;
  v470 = v110 + 64;
  v482 = v110;
  v469 = v116;
  if (!v115)
  {
LABEL_9:
    if (v116 <= (v111 + 1))
    {
      v121 = v111 + 1;
    }

    else
    {
      v121 = v116;
    }

    v122 = v121 - 1;
    while (1)
    {
      v120 = v111 + 1;
      if (__OFADD__(v111, 1))
      {
        break;
      }

      if (v120 >= v116)
      {
        v119 = v95;
        v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D30, &qword_1C6EE8978);
        v166 = v474;
        (*(*(v165 - 8) + 56))(v474, 1, 1, v165);
        v479 = 0;
        v478 = v122;
        v131 = v166;
        goto LABEL_18;
      }

      v115 = *(v112 + 8 * v120);
      ++v111;
      if (v115)
      {
        v119 = v95;
        v478 = v120;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_265:
    __break(1u);
LABEL_266:
    __break(1u);
LABEL_267:
    __break(1u);
LABEL_268:

    *&v492 = 0;
    *(&v492 + 1) = 0xE000000000000000;
    sub_1C6EE51B0();
    v368 = v122;
    MEMORY[0x1CCA57F60](0xD00000000000001ELL, 0x80000001C6EF9550);
    MEMORY[0x1CCA57F60](v117, v110);

    MEMORY[0x1CCA57F60](0x646E692074612022, 0xEB00000000207865);
    *&v491 = v107 - 1;
    v369 = sub_1C6EE5460();
    MEMORY[0x1CCA57F60](v369);

    MEMORY[0x1CCA57F60](0xD000000000000011, 0x80000001C6EF94C0);
    sub_1C6EE4DE0();
    MEMORY[0x1CCA57F60](0xD00000000000002ALL, 0x80000001C6EF94E0);
    sub_1C6EE4DE0();
    MEMORY[0x1CCA57F60](0xD00000000000001DLL, 0x80000001C6EF9510);
    sub_1C6EE4DE0();
    MEMORY[0x1CCA57F60](0xD00000000000001CLL, 0x80000001C6EF9530);
    sub_1C6EE4DE0();

    sub_1C6E00C60(v486, *(&v486 + 1), v485);
    v373 = *(&v492 + 1);
    v372 = v492;
    sub_1C6E4A454(v368, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceForDType);
    goto LABEL_252;
  }

  while (1)
  {
    v119 = v95;
    v478 = v111;
    v120 = v111;
LABEL_17:
    v479 = (v115 - 1) & v115;
    v123 = __clz(__rbit64(v115)) | (v120 << 6);
    v124 = (*(v110 + 48) + 16 * v123);
    v125 = *v124;
    v126 = v124[1];
    v127 = v471;
    sub_1C6E4A3EC(*(v110 + 56) + *(v472 + 72) * v123, v471, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
    v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D30, &qword_1C6EE8978);
    v129 = *(v128 + 48);
    v130 = v474;
    *v474 = v125;
    v130[1] = v126;
    v131 = v130;
    sub_1C6E4A384(v127, v130 + v129, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
    (*(*(v128 - 8) + 56))(v131, 0, 1, v128);

    v118 = v484;
LABEL_18:
    sub_1C6E4A18C(v131, v118);
    v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D30, &qword_1C6EE8978);
    v133 = (*(*(v132 - 8) + 48))(v118, 1, v132);
    v134 = v475;
    if (v133 == 1)
    {

      return 1;
    }

    v117 = *v118;
    v110 = v118[1];
    v95 = v119;
    sub_1C6E4A384(v118 + *(v132 + 48), v119, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
    if (!*(v134 + 16) || (v135 = sub_1C6DEC784(v117, v110), (v136 & 1) == 0))
    {
      *&v492 = 0;
      *(&v492 + 1) = 0xE000000000000000;
      sub_1C6EE51B0();

      *&v492 = 0xD000000000000027;
      *(&v492 + 1) = 0x80000001C6EF9400;
      MEMORY[0x1CCA57F60](v117, v110);

      MEMORY[0x1CCA57F60](34, 0xE100000000000000);

      goto LABEL_251;
    }

    v137 = *(v134 + 56) + 24 * v135;
    v138 = *(v137 + 8);
    *&v486 = *v137;
    *(&v486 + 1) = v138;
    v139 = *(v137 + 16);
    v140 = v473;
    if ((v476 & 1) == 0)
    {
      goto LABEL_222;
    }

    v141 = v480;
    v485 = *(v137 + 16);
    if (((1 << v489) & 0x18) != 0)
    {
      if (v139)
      {
        v142 = 4;
      }

      else
      {
        v142 = 0;
      }

      if (((*(&v486 + 1) >> 60) & 3 | v142) == 3)
      {
        v143 = v466;
        sub_1C6E4A29C(v95, v466, &qword_1EC1F7A98, &qword_1C6EE7840);
        v144 = *v481;
        if ((*v481)(v143, 1, v141) == 1)
        {
          v146 = v486;

          sub_1C6E4A304(v143, &qword_1EC1F7A98, &qword_1C6EE7840);
        }

        else
        {
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v146 = v486;

          if (EnumCaseMultiPayload == 3)
          {

            sub_1C6E4A384(v143, v483, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
            *&v492 = v146;
            *(&v492 + 1) = *(&v486 + 1);
            v493 = v485;
            v107 = v464;
            sub_1C6E0F330(v464);
            v147 = v465;
            sub_1C6E4A29C(v107, v465, &qword_1EC1F7A98, &qword_1C6EE7840);
            sub_1C6E4A454(v107, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
            if (v144(v147, 1, v141) == 1)
            {
              sub_1C6E4A304(v147, &qword_1EC1F7A98, &qword_1C6EE7840);
            }

            else
            {
              if (swift_getEnumCaseMultiPayload() == 3)
              {
                v148 = sub_1C6E4A384(v147, v488, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
                v122 = *v483;
                v149 = *(*v483 + 16);
                if (v149)
                {
                  v150 = 0;
                  v95 = v122 + 32;
                  do
                  {
                    if (v150 >= *(v122 + 16))
                    {
                      goto LABEL_265;
                    }

                    v153 = *(v95 + 16 * v150);
                    v107 = *v488;
                    v110 = *(&v153 + 1);
                    v154 = v153;
                    v490 = v153;
                    v117 = &v401;
                    if (v489 == 3)
                    {
                      v492 = v153;
                      MEMORY[0x1EEE9AC00](v148);
                      *(&v401 - 2) = &v492;
                      sub_1C6E00D18(v154, v110);
                      v155 = v494;
                      v156 = sub_1C6EE2794(sub_1C6E4A4B4, (&v401 - 4), v107);
                      v494 = v155;
                      if ((v156 & 1) == 0)
                      {
                        *&v492 = 0;
                        *(&v492 + 1) = 0xE000000000000000;
                        sub_1C6EE51B0();
                        MEMORY[0x1CCA57F60](0xD00000000000001FLL, 0x80000001C6EF9710);
                        sub_1C6EE4AD0();
                        v489 = v154;
                        *&v491 = sub_1C6EE4AB0();
                        *(&v491 + 1) = v340;
                        __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC1F7DF0, &qword_1C6EE8DF0);
                        v341 = sub_1C6EE4AF0();
                        MEMORY[0x1CCA57F60](v341);

                        MEMORY[0x1CCA57F60](0xD000000000000012, 0x80000001C6EF96F0);
                        v122 = 0;
                        v342 = *(v107 + 16);
                        v343 = (v107 + 40);
                        *&v490 = MEMORY[0x1E69E7CC0];
                        v484 = (v107 + 40);
LABEL_235:
                        v344 = &v343[2 * v122];
                        while (v342 != v122)
                        {
                          if (v122 >= *(v107 + 16))
                          {
                            goto LABEL_267;
                          }

                          ++v122;
                          v117 = (v344 + 2);
                          v346 = *(v344 - 1);
                          v345 = *v344;
                          sub_1C6E00D18(v346, *v344);
                          sub_1C6EE4AD0();
                          v347 = sub_1C6EE4AB0();
                          v95 = v348;
                          sub_1C6DF1134(v346, v345);
                          v344 = v117;
                          if (v95)
                          {
                            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                            {
                              *&v490 = sub_1C6ED8FB0(0, *(v490 + 16) + 1, 1, v490);
                            }

                            v350 = *(v490 + 16);
                            v349 = *(v490 + 24);
                            if (v350 >= v349 >> 1)
                            {
                              *&v490 = sub_1C6ED8FB0((v349 > 1), v350 + 1, 1, v490);
                            }

                            v351 = v490;
                            *(v490 + 16) = v350 + 1;
                            v352 = v351 + 16 * v350;
                            *(v352 + 32) = v347;
                            *(v352 + 40) = v95;
                            v343 = v484;
                            goto LABEL_235;
                          }
                        }

LABEL_244:
                        v353 = MEMORY[0x1CCA580B0](v490, MEMORY[0x1E69E6158]);
                        v355 = v354;

                        MEMORY[0x1CCA57F60](v353, v355);

                        sub_1C6DF1134(v489, v110);
                        sub_1C6E00C60(v486, *(&v486 + 1), v485);
                        v356 = v492;
                        sub_1C6E4A454(v477, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
                        sub_1C6E4A454(v483, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
                        sub_1C6E4A454(v488, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
                        *(v458 + 16) = v356;
                        goto LABEL_257;
                      }
                    }

                    else
                    {
                      v492 = v153;
                      MEMORY[0x1EEE9AC00](v148);
                      *(&v401 - 2) = &v492;
                      sub_1C6E00D18(v154, v110);
                      v151 = v494;
                      v152 = sub_1C6EE2794(sub_1C6E4A244, (&v401 - 4), v107);
                      v494 = v151;
                      if (v152)
                      {
                        *&v492 = 0;
                        *(&v492 + 1) = 0xE000000000000000;
                        sub_1C6EE51B0();
                        MEMORY[0x1CCA57F60](0xD000000000000023, 0x80000001C6EF96C0);
                        sub_1C6EE4AD0();
                        v489 = v154;
                        *&v491 = sub_1C6EE4AB0();
                        *(&v491 + 1) = v327;
                        __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC1F7DF0, &qword_1C6EE8DF0);
                        v328 = sub_1C6EE4AF0();
                        MEMORY[0x1CCA57F60](v328);

                        MEMORY[0x1CCA57F60](0xD000000000000012, 0x80000001C6EF96F0);
                        v122 = 0;
                        v329 = *(v107 + 16);
                        v330 = (v107 + 40);
                        *&v490 = MEMORY[0x1E69E7CC0];
                        v484 = (v107 + 40);
LABEL_226:
                        v331 = &v330[2 * v122];
                        while (v329 != v122)
                        {
                          if (v122 >= *(v107 + 16))
                          {
                            goto LABEL_266;
                          }

                          ++v122;
                          v117 = (v331 + 2);
                          v333 = *(v331 - 1);
                          v332 = *v331;
                          sub_1C6E00D18(v333, *v331);
                          sub_1C6EE4AD0();
                          v334 = sub_1C6EE4AB0();
                          v95 = v335;
                          sub_1C6DF1134(v333, v332);
                          v331 = v117;
                          if (v95)
                          {
                            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                            {
                              *&v490 = sub_1C6ED8FB0(0, *(v490 + 16) + 1, 1, v490);
                            }

                            v337 = *(v490 + 16);
                            v336 = *(v490 + 24);
                            if (v337 >= v336 >> 1)
                            {
                              *&v490 = sub_1C6ED8FB0((v336 > 1), v337 + 1, 1, v490);
                            }

                            v338 = v490;
                            *(v490 + 16) = v337 + 1;
                            v339 = v338 + 16 * v337;
                            *(v339 + 32) = v334;
                            *(v339 + 40) = v95;
                            v330 = v484;
                            goto LABEL_226;
                          }
                        }

                        goto LABEL_244;
                      }
                    }

                    ++v150;
                    v148 = sub_1C6DF1134(v490, v110);
                  }

                  while (v149 != v150);
                }

                sub_1C6E00C60(v486, *(&v486 + 1), v485);
                v95 = v477;
                sub_1C6E4A454(v477, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
                sub_1C6E4A454(v483, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
                sub_1C6E4A454(v488, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
                goto LABEL_64;
              }

              sub_1C6E4A454(v147, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
            }

            *&v492 = 0;
            *(&v492 + 1) = 0xE000000000000000;
            sub_1C6EE51B0();
            v491 = v492;
            MEMORY[0x1CCA57F60](0xD000000000000040, 0x80000001C6EF9670);
            v363 = v486;
            v492 = v486;
            v364 = v485;
            v493 = v485;
            sub_1C6EE52F0();
            MEMORY[0x1CCA57F60](0xD000000000000029, 0x80000001C6EF9640);

            sub_1C6E00C60(v363, *(&v363 + 1), v364);
            v373 = *(&v491 + 1);
            v372 = v491;
            sub_1C6E4A454(v95, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
            v361 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList;
            v362 = v483;
            goto LABEL_256;
          }

          sub_1C6E4A454(v143, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
        }

        *&v492 = 0;
        *(&v492 + 1) = 0xE000000000000000;
        sub_1C6EE51B0();
        MEMORY[0x1CCA57F60](0xD00000000000003BLL, 0x80000001C6EF9600);
        MEMORY[0x1CCA57F60](v117, v110);

        MEMORY[0x1CCA57F60](0xD000000000000029, 0x80000001C6EF9640);

        sub_1C6E00C60(v146, *(&v486 + 1), v485);
LABEL_251:
        v373 = *(&v492 + 1);
        v372 = v492;
LABEL_252:
        v361 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature;
        v362 = v95;
        goto LABEL_256;
      }

      v357 = v486;
      v358 = v139;
      v359 = *(&v486 + 1);
      sub_1C6E00CBC(v486, *(&v486 + 1), v358);

      sub_1C6E49F48();
      swift_allocError();
      *v360 = 0xD000000000000045;
      *(v360 + 8) = 0x80000001C6EF95B0;
      *(v360 + 16) = 2;
      swift_willThrow();

      v324 = v357;
      v325 = v359;
      v326 = v358;
LABEL_223:
      sub_1C6E00C60(v324, v325, v326);
      return sub_1C6E4A454(v95, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
    }

    if (v489 != 5)
    {
LABEL_222:
      v321 = v486;
      sub_1C6E00CBC(v486, *(&v486 + 1), v139);

      *&v492 = 0;
      *(&v492 + 1) = 0xE000000000000000;
      sub_1C6EE51B0();
      MEMORY[0x1CCA57F60](0x6F69747265737341, 0xEF2065707974206ELL);
      *&v491 = v489;
      BYTE8(v491) = v476 & 1;
      sub_1C6EE52F0();
      MEMORY[0x1CCA57F60](0xD000000000000011, 0x80000001C6EF9430);
      v322 = v492;
      sub_1C6E49F48();
      swift_allocError();
      *v323 = v322;
      *(v323 + 16) = 2;
      swift_willThrow();

      v325 = *(&v321 + 1);
      v324 = v321;
      v326 = v139;
      goto LABEL_223;
    }

    v405 = v117;
    *&v490 = v110;
    v157 = *(v459 + 36);
    v158 = v463;
    sub_1C6E4A29C(v463 + v157, v473, &qword_1EC1F7F70, &qword_1C6EE9500);
    v159 = *v462;
    v160 = v461;
    v161 = (*v462)(v140, 1, v461);
    v162 = v139;
    v163 = v140;
    v164 = v161;
    sub_1C6E00CBC(v486, *(&v486 + 1), v162);
    if (v164 == 1)
    {

      sub_1C6E4A304(v163, &qword_1EC1F7F70, &qword_1C6EE9500);
      v95 = v477;
      goto LABEL_58;
    }

    sub_1C6E4A304(v163, &qword_1EC1F7F70, &qword_1C6EE9500);
    v404 = v157;
    v167 = v452;
    sub_1C6E4A29C(v158 + v157, v452, &qword_1EC1F7F70, &qword_1C6EE9500);
    v168 = v159;
    if (v159(v167, 1, v160) == 1)
    {
      v169 = v477;
      v170 = v449;
      sub_1C6EE4420();
      v171 = v167;
      v172 = v453;
      (*v446)(v170 + *(v160 + 20), 1, 1, v453);
      (*v445)(v170 + *(v160 + 24), 1, 1, v448);
      if (v168(v171, 1, v160) != 1)
      {
        sub_1C6E4A304(v452, &qword_1EC1F7F70, &qword_1C6EE9500);
      }
    }

    else
    {
      v169 = v477;
      v170 = v449;
      sub_1C6E4A384(v167, v449, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TestCaseConfig);
      v172 = v453;
    }

    v173 = v170 + *(v160 + 20);
    v174 = v170;
    v175 = v450;
    sub_1C6E4A29C(v173, v450, &qword_1EC1F7F68, &qword_1C6EE94F8);
    sub_1C6E4A454(v174, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TestCaseConfig);
    v176 = *v451;
    v177 = (*v451)(v175, 1, v172);
    sub_1C6E4A304(v175, &qword_1EC1F7F68, &qword_1C6EE94F8);
    if (v177 == 1)
    {

      v95 = v169;
      goto LABEL_58;
    }

    v403 = v176;
    v178 = v168;
    v179 = v404;
    v180 = v463;
    v181 = v444;
    sub_1C6E4A29C(v463 + v404, v444, &qword_1EC1F7F70, &qword_1C6EE9500);
    if (v178(v181, 1, v160) == 1)
    {
      v95 = v169;

      sub_1C6E4A304(v181, &qword_1EC1F7F70, &qword_1C6EE9500);
      goto LABEL_58;
    }

    sub_1C6E4A304(v181, &qword_1EC1F7F70, &qword_1C6EE9500);
    v182 = v440;
    sub_1C6E4A29C(v180 + v179, v440, &qword_1EC1F7F70, &qword_1C6EE9500);
    v183 = v178(v182, 1, v160);
    v184 = v443;
    v185 = v178;
    if (v183 == 1)
    {
      v186 = v441;
      sub_1C6EE4420();
      (*v446)(v186 + *(v160 + 20), 1, 1, v453);
      v187 = v448;
      (*v445)(v186 + *(v160 + 24), 1, 1, v448);
      v188 = v160;
      if (v178(v182, 1, v160) != 1)
      {
        sub_1C6E4A304(v182, &qword_1EC1F7F70, &qword_1C6EE9500);
      }
    }

    else
    {
      v186 = v441;
      sub_1C6E4A384(v182, v441, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TestCaseConfig);
      v187 = v448;
      v188 = v160;
    }

    v189 = v186 + *(v188 + 24);
    v190 = v186;
    v191 = v442;
    sub_1C6E4A29C(v189, v442, &qword_1EC1F7F60, &qword_1C6EE94F0);
    sub_1C6E4A454(v190, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TestCaseConfig);
    v192 = *v184;
    v193 = (*v184)(v191, 1, v187);
    sub_1C6E4A304(v191, &qword_1EC1F7F60, &qword_1C6EE94F0);
    if (v193 == 1)
    {

      v95 = v477;
      goto LABEL_58;
    }

    v206 = v192;
    v207 = v438;
    sub_1C6E4A29C(v463 + v404, v438, &qword_1EC1F7F70, &qword_1C6EE9500);
    v208 = v185(v207, 1, v188);
    v95 = v477;
    if (v208 == 1)
    {
      v209 = v436;
      sub_1C6EE4420();
      v210 = v453;
      (*v446)(v209 + *(v188 + 20), 1, 1);
      (*v445)(v209 + *(v188 + 24), 1, 1, v448);
      if (v185(v207, 1, v188) != 1)
      {
        sub_1C6E4A304(v438, &qword_1EC1F7F70, &qword_1C6EE9500);
      }
    }

    else
    {
      v209 = v436;
      sub_1C6E4A384(v207, v436, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TestCaseConfig);
      v210 = v453;
    }

    v211 = v439;
    sub_1C6E4A29C(v209 + *(v461 + 24), v439, &qword_1EC1F7F60, &qword_1C6EE94F0);
    v212 = v448;
    if (v206(v211, 1, v448) == 1)
    {
      v213 = v437;
      *v437 = 0;
      *(v213 + 8) = 1;
      sub_1C6EE4420();
      sub_1C6E4A454(v209, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TestCaseConfig);
      v214 = *(v212 + 24);
      v215 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeaturesConfig(0);
      (*(*(v215 - 8) + 56))(v213 + v214, 1, 1, v215);
      v216 = v212;
      v217 = v213;
      if (v206(v439, 1, v216) != 1)
      {
        sub_1C6E4A304(v439, &qword_1EC1F7F60, &qword_1C6EE94F0);
      }
    }

    else
    {
      sub_1C6E4A454(v209, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TestCaseConfig);
      v217 = v437;
      sub_1C6E4A384(v211, v437, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_AssertionConfig);
    }

    v218 = *v217;
    sub_1C6E4A454(v217, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_AssertionConfig);
    if (v218 != 5)
    {

      goto LABEL_58;
    }

    v219 = v431;
    sub_1C6E4A29C(v463 + v404, v431, &qword_1EC1F7F70, &qword_1C6EE9500);
    v220 = v461;
    if (v185(v219, 1, v461) == 1)
    {
      v221 = v432;
      sub_1C6EE4420();
      (*v446)(v221 + *(v220 + 20), 1, 1, v210);
      (*v445)(v221 + *(v220 + 24), 1, 1, v448);
      v222 = v185(v219, 1, v220);
      v223 = v434;
      v224 = v433;
      if (v222 != 1)
      {
        sub_1C6E4A304(v219, &qword_1EC1F7F70, &qword_1C6EE9500);
      }
    }

    else
    {
      v221 = v432;
      sub_1C6E4A384(v219, v432, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TestCaseConfig);
      v223 = v434;
      v224 = v433;
    }

    sub_1C6E4A29C(v221 + *(v220 + 20), v224, &qword_1EC1F7F68, &qword_1C6EE94F8);
    v225 = v403;
    if (v403(v224, 1, v210) == 1)
    {
      *v223 = MEMORY[0x1E69E7CC0];
      sub_1C6EE4420();
      sub_1C6E4A454(v221, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TestCaseConfig);
      v226 = v225(v224, 1, v210);
      v227 = v405;
      if (v226 != 1)
      {
        sub_1C6E4A304(v224, &qword_1EC1F7F68, &qword_1C6EE94F8);
      }
    }

    else
    {
      sub_1C6E4A454(v221, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TestCaseConfig);
      sub_1C6E4A384(v224, v223, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceConfig);
      v227 = v405;
    }

    v228 = *v223;

    sub_1C6E4A454(v223, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceConfig);
    v229 = *(v228 + 16);
    v230 = (*(&v486 + 1) >> 60) & 3;
    if (v229)
    {
      v231 = 0;
      v232 = v228 + ((*(v467 + 80) + 32) & ~*(v467 + 80));
      if (v485)
      {
        v233 = 4;
      }

      else
      {
        v233 = 0;
      }

      v95 = v230 | v233;
      while (v231 < *(v228 + 16))
      {
        v225 = v454;
        sub_1C6E4A3EC(v232 + *(v467 + 72) * v231, v454, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceForDType);
        v234 = *v225;
        if (v95 > 2)
        {
          if ((v95 - 4) < 2)
          {
            if (v234 == 7)
            {
              goto LABEL_107;
            }
          }

          else if (v95 == 3)
          {
            if (v234 == 6)
            {
              goto LABEL_107;
            }
          }

          else if (!v234)
          {
LABEL_107:

            v235 = v430;
            sub_1C6E4A384(v454, v430, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceForDType);
            v236 = 0;
            goto LABEL_109;
          }
        }

        else if (v95)
        {
          if (v95 == 1)
          {
            if (v234 == 2)
            {
              goto LABEL_107;
            }
          }

          else if (v234 == 3)
          {
            goto LABEL_107;
          }
        }

        else if (v234 == 4)
        {
          goto LABEL_107;
        }

        ++v231;
        sub_1C6E4A454(v454, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceForDType);
        if (v229 == v231)
        {
          goto LABEL_108;
        }
      }

      __break(1u);
LABEL_273:
      *&v492 = 0;
      *(&v492 + 1) = 0xE000000000000000;
      sub_1C6EE51B0();
      MEMORY[0x1CCA57F60](0xD00000000000001ELL, 0x80000001C6EF9550);
      MEMORY[0x1CCA57F60](v227, v490);

      MEMORY[0x1CCA57F60](0x207361772022, 0xE600000000000000);
      *&v491 = v206;
      v374 = sub_1C6EE5460();
      MEMORY[0x1CCA57F60](v374);

      MEMORY[0x1CCA57F60](0xD000000000000033, 0x80000001C6EF9570);
      v375 = v410;
      sub_1C6E4A29C(v95, v410, &qword_1EC1F7A98, &qword_1C6EE7840);
      if (v225(v375, 1, v231) == 1)
      {
        sub_1C6E4A304(v375, &qword_1EC1F7A98, &qword_1C6EE7840);
      }

      else
      {
        if (!swift_getEnumCaseMultiPayload())
        {
          v380 = v407;
          sub_1C6E4A384(v410, v407, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
          goto LABEL_285;
        }

        sub_1C6E4A454(v410, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
      }

      v380 = v407;
      *v407 = MEMORY[0x1E69E7CC0];
      sub_1C6EE4420();
LABEL_285:
      v381 = *v380;

      sub_1C6E4A454(v380, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
      v382 = *(v381 + 16);

      *&v491 = v382;
      v383 = sub_1C6EE5460();
      MEMORY[0x1CCA57F60](v383);

      v384 = 0x746E656D656C6520;
      v385 = 0xE900000000000073;
      goto LABEL_322;
    }

LABEL_108:

    v236 = 1;
    v235 = v430;
LABEL_109:
    v237 = v429;
    (*v428)(v235, v236, 1, v429);
    v238 = (*v427)(v235, 1, v237);
    v95 = v477;
    if (v238 != 1)
    {
      break;
    }

    sub_1C6E4A304(v235, &qword_1EC1F7F58, &qword_1C6EE94E8);
LABEL_58:
    v492 = v486;
    v493 = v485;
    v194 = v468;
    sub_1C6E0F330(v468);
    v195 = *(v457 + 48);
    v196 = v460;
    sub_1C6E4A29C(v194, v460, &qword_1EC1F7A98, &qword_1C6EE7840);
    sub_1C6E4A29C(v95, v196 + v195, &qword_1EC1F7A98, &qword_1C6EE7840);
    v197 = *v481;
    v198 = v480;
    v199 = (*v481)(v196, 1, v480);
    v200 = v456;
    if (v199 == 1)
    {
      if (v197(v196 + v195, 1, v198) == 1)
      {
        sub_1C6E4A304(v196, &qword_1EC1F7A98, &qword_1C6EE7840);
        v95 = v477;
        goto LABEL_63;
      }

      sub_1C6E00C60(v486, *(&v486 + 1), v485);
      sub_1C6E4A454(v468, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
      v366 = v477;
      v367 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature;
LABEL_261:
      sub_1C6E4A454(v366, v367);
      sub_1C6E4A304(v460, &qword_1EC1F7D20, &qword_1C6EE94E0);
      return 2;
    }

    sub_1C6E4A29C(v196, v456, &qword_1EC1F7A98, &qword_1C6EE7840);
    if (v197(v196 + v195, 1, v198) == 1)
    {

      sub_1C6E00C60(v486, *(&v486 + 1), v485);
      sub_1C6E4A454(v468, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
      sub_1C6E4A454(v477, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
      v367 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind;
      v366 = v200;
      goto LABEL_261;
    }

    v201 = v196 + v195;
    v202 = v447;
    sub_1C6E4A384(v201, v447, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    v203 = sub_1C6EAA0D8(v200, v202);
    sub_1C6E4A454(v202, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    sub_1C6E4A454(v200, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    sub_1C6E4A304(v196, &qword_1EC1F7A98, &qword_1C6EE7840);
    v95 = v477;
    if ((v203 & 1) == 0)
    {

      sub_1C6E00C60(v486, *(&v486 + 1), v485);
      sub_1C6E4A454(v468, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
      sub_1C6E4A454(v95, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
      return 2;
    }

LABEL_63:
    sub_1C6EE4430();
    sub_1C6E4A1FC(&qword_1EDEF6870, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v204 = v468;
    v205 = sub_1C6EE4A50();
    sub_1C6E00C60(v486, *(&v486 + 1), v485);
    v107 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature;
    sub_1C6E4A454(v204, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
    sub_1C6E4A454(v95, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
    if ((v205 & 1) == 0)
    {

      return 2;
    }

LABEL_64:
    v110 = v482;
    v118 = v484;
LABEL_65:
    v112 = v470;
    v116 = v469;
    v117 = &qword_1EC1F7D30;
    v115 = v479;
    v111 = v478;
    if (!v479)
    {
      goto LABEL_9;
    }
  }

  v239 = v235;
  v122 = v435;
  result = sub_1C6E4A384(v239, v435, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceForDType);
  if (v485)
  {
    v241 = 4;
  }

  else
  {
    v241 = 0;
  }

  v242 = v230 | v241;
  v231 = v480;
  if (v242 <= 3)
  {
    if (v242 > 0)
    {

      sub_1C6E00C60(v486, *(&v486 + 1), v485);
      goto LABEL_271;
    }

    v206 = *(v486 + 16);
    v247 = v417;
    sub_1C6E4A29C(v95, v417, &qword_1EC1F7A98, &qword_1C6EE7840);
    v225 = *v481;
    if ((*v481)(v247, 1, v231) == 1)
    {
      sub_1C6E4A304(v247, &qword_1EC1F7A98, &qword_1C6EE7840);
      v248 = v419;
      v118 = v484;
    }

    else
    {
      v254 = swift_getEnumCaseMultiPayload();
      v255 = v247;
      v248 = v419;
      v118 = v484;
      if (!v254)
      {
        sub_1C6E4A384(v255, v419, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
LABEL_128:
        v256 = *v248;

        sub_1C6E4A454(v248, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
        v257 = *(v256 + 16);

        if (v206 != v257)
        {
          goto LABEL_273;
        }

        v258 = v490;
        v259 = v412;
        sub_1C6E4A29C(v95, v412, &qword_1EC1F7A98, &qword_1C6EE7840);
        if (v225(v259, 1, v231) == 1)
        {
          sub_1C6E4A304(v259, &qword_1EC1F7A98, &qword_1C6EE7840);
          v122 = v435;
          v260 = v413;
        }

        else
        {
          v265 = swift_getEnumCaseMultiPayload();
          v122 = v435;
          v260 = v413;
          if (!v265)
          {
            sub_1C6E4A384(v259, v413, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
            v110 = v258;
LABEL_140:
            v117 = v405;
            v266 = *v260;

            result = sub_1C6E4A454(v260, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
            v107 = 0;
            while (*(v486 + 16) != v107)
            {
              v267 = *(v266 + 16);
              if (v107 == v267)
              {
                break;
              }

              if (v107 >= v267)
              {
                __break(1u);
LABEL_325:
                __break(1u);
LABEL_326:
                __break(1u);
                goto LABEL_327;
              }

              v268 = *(v266 + 4 * v107 + 32);
              v269 = vabds_f32(v268, *(v486 + 32 + 4 * v107++));
              if (v269 > (*(v122 + 16) + (fabsf(v268) * *(v122 + 12))))
              {
                goto LABEL_268;
              }
            }

            goto LABEL_219;
          }

          sub_1C6E4A454(v259, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
        }

        v110 = v258;
        *v260 = MEMORY[0x1E69E7CC0];
        sub_1C6EE4420();
        goto LABEL_140;
      }

      sub_1C6E4A454(v255, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    }

    *v248 = MEMORY[0x1E69E7CC0];
    sub_1C6EE4420();
    goto LABEL_128;
  }

  v243 = v424;
  if (v242 != 4)
  {
    v118 = v484;
    if (v242 == 5)
    {
      v244 = v486;
      v245 = *(&v486 + 1) >> 62;
      v402 = *(&v486 + 1) >> 62;
      if ((*(&v486 + 1) >> 62) > 1)
      {
        if (v245 == 2)
        {
          v263 = *(v486 + 16);
          v262 = *(v486 + 24);
          _VF = __OFSUB__(v262, v263);
          v246 = v262 - v263;
          if (_VF)
          {
            goto LABEL_330;
          }

          goto LABEL_175;
        }

        v404 = 0;
      }

      else
      {
        if (v245)
        {
          LODWORD(v246) = DWORD1(v486) - v486;
          if (__OFSUB__(DWORD1(v486), v486))
          {
            goto LABEL_331;
          }

          v246 = v246;
        }

        else
        {
          v246 = BYTE14(v486);
        }

LABEL_175:
        v404 = v246;
      }

      v291 = v416;
      sub_1C6E4A29C(v95, v416, &qword_1EC1F7A98, &qword_1C6EE7840);
      v292 = *v481;
      if ((*v481)(v291, 1, v480) == 1)
      {
        sub_1C6E4A304(v291, &qword_1EC1F7A98, &qword_1C6EE7840);
        goto LABEL_182;
      }

      if (swift_getEnumCaseMultiPayload() == 4)
      {
        sub_1C6E4A384(v291, v243, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      }

      else
      {
        sub_1C6E4A454(v291, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
LABEL_182:
        *v243 = v425;
        sub_1C6EE4420();
      }

      v293 = v243;
      v294 = *v243;
      v295 = *(v243 + 8);
      sub_1C6E00D18(v294, v295);
      sub_1C6E4A454(v293, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      v296 = v295 >> 62;
      v403 = v292;
      if ((v295 >> 62) <= 1)
      {
        if (!v296)
        {
          v297 = BYTE6(v295);
          v298 = v415;
          v299 = v414;
          v300 = v480;
LABEL_192:
          if (v404 != v297)
          {
            goto LABEL_277;
          }

LABEL_195:
          v303 = v494;
          v304 = sub_1C6E1FDB0(v244, *(&v486 + 1) & 0xCFFFFFFFFFFFFFFFLL);
          if (!v303)
          {
            v305 = v304;
            sub_1C6E4A29C(v95, v299, &qword_1EC1F7A98, &qword_1C6EE7840);
            if (v403(v299, 1, v300) == 1)
            {
              sub_1C6E4A304(v299, &qword_1EC1F7A98, &qword_1C6EE7840);
              v288 = v405;
              goto LABEL_211;
            }

            v306 = swift_getEnumCaseMultiPayload();
            v288 = v405;
            if (v306 == 4)
            {
              sub_1C6E4A384(v299, v298, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
              v290 = v490;
            }

            else
            {
              sub_1C6E4A454(v299, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
LABEL_211:
              v290 = v490;
              *v298 = v425;
              sub_1C6EE4420();
            }

            v315 = *v298;
            v316 = v298[1];
            sub_1C6E00D18(*v298, v316);
            sub_1C6E4A454(v298, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
            v317 = sub_1C6E1FDB0(v315, v316);
            v494 = 0;
            v107 = v317;
            result = sub_1C6DF1134(v315, v316);
            v311 = 8;
            v122 = v435;
            while (v311 - *(v305 + 2) != 8)
            {
              v318 = *(v107 + 16);
              if (v311 - 8 == v318)
              {
                break;
              }

              if (v311 - 8 >= v318)
              {
                goto LABEL_326;
              }

              v319 = *(v107 + 4 * v311);
              v320 = vabds_f32(v319, *&v305[4 * v311++]);
              if (v320 > (*(v435 + 16) + (fabsf(v319) * *(v435 + 12))))
              {
                goto LABEL_208;
              }
            }

LABEL_218:

LABEL_219:

            sub_1C6E00C60(v486, *(&v486 + 1), v485);
            sub_1C6E4A454(v122, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceForDType);
            sub_1C6E4A454(v95, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
            v110 = v482;
            goto LABEL_65;
          }

          sub_1C6E00C60(v486, *(&v486 + 1), v485);
          sub_1C6E4A454(v435, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceForDType);
          return sub_1C6E4A454(v95, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
        }

        result = sub_1C6DF1134(v294, v295);
        LODWORD(v297) = HIDWORD(v294) - v294;
        v300 = v480;
        if (__OFSUB__(HIDWORD(v294), v294))
        {
          goto LABEL_333;
        }

        v297 = v297;
        v244 = v486;
LABEL_191:
        v298 = v415;
        v299 = v414;
        goto LABEL_192;
      }

      if (v296 == 2)
      {
        v302 = *(v294 + 16);
        v301 = *(v294 + 24);
        result = sub_1C6DF1134(v294, v295);
        v297 = v301 - v302;
        if (__OFSUB__(v301, v302))
        {
          goto LABEL_332;
        }

        v244 = v486;
        v300 = v480;
        goto LABEL_191;
      }

      v298 = v415;
      v299 = v414;
      v300 = v480;
      if (!v404)
      {
        goto LABEL_195;
      }

LABEL_277:
      v378 = 0xD000000000000011;
      *&v492 = 0;
      *(&v492 + 1) = 0xE000000000000000;
      sub_1C6EE51B0();
      MEMORY[0x1CCA57F60](0xD000000000000020, 0x80000001C6EF9450);
      MEMORY[0x1CCA57F60](v405, v490);

      result = MEMORY[0x1CCA57F60](0x207361772022, 0xE600000000000000);
      if (v402 > 1)
      {
        v379 = 0;
        if (v402 == 2)
        {
          v388 = *(v486 + 16);
          v387 = *(v486 + 24);
          _VF = __OFSUB__(v387, v388);
          v379 = v387 - v388;
          if (_VF)
          {
            __break(1u);
            goto LABEL_292;
          }
        }
      }

      else
      {
        if (v402)
        {
          goto LABEL_303;
        }

        v379 = BYTE14(v486);
      }

LABEL_305:
      *&v491 = v379;
      v393 = sub_1C6EE5460();
      MEMORY[0x1CCA57F60](v393);

      MEMORY[0x1CCA57F60](v378 + 33, 0x80000001C6EF9480);
      v394 = v409;
      sub_1C6E4A29C(v477, v409, &qword_1EC1F7A98, &qword_1C6EE7840);
      if (v403(v394, 1, v480) == 1)
      {
        sub_1C6E4A304(v394, &qword_1EC1F7A98, &qword_1C6EE7840);
        goto LABEL_310;
      }

      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v395 = v406;
        sub_1C6E4A384(v409, v406, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      }

      else
      {
        sub_1C6E4A454(v409, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
LABEL_310:
        v395 = v406;
        *v406 = v425;
        sub_1C6EE4420();
      }

      v396 = *v395;
      v390 = v395[1];
      sub_1C6E00D18(*v395, v390);
      sub_1C6E4A454(v395, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      v397 = v390 >> 62;
      if ((v390 >> 62) <= 1)
      {
        if (v397)
        {
          result = sub_1C6DF1134(v396, v390);
          LODWORD(v391) = HIDWORD(v396) - v396;
          if (!__OFSUB__(HIDWORD(v396), v396))
          {
            goto LABEL_320;
          }

          goto LABEL_335;
        }

LABEL_313:
        v391 = BYTE6(v390);
        goto LABEL_321;
      }

      if (v397 == 2)
      {
        v399 = *(v396 + 16);
        v398 = *(v396 + 24);
        sub_1C6DF1134(v396, v390);
        v391 = v398 - v399;
        if (!__OFSUB__(v398, v399))
        {
LABEL_321:
          *&v491 = v391;
          v400 = sub_1C6EE5460();
          MEMORY[0x1CCA57F60](v400);

          v384 = 0x736574796220;
          v385 = 0xE600000000000000;
LABEL_322:
          MEMORY[0x1CCA57F60](v384, v385);

          sub_1C6E00C60(v486, *(&v486 + 1), v485);
          v373 = *(&v492 + 1);
          v372 = v492;
          sub_1C6E4A454(v435, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceForDType);
          v361 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature;
          v362 = v477;
LABEL_256:
          sub_1C6E4A454(v362, v361);
          v365 = v458;
          *(v458 + 16) = v372;
          *(v365 + 24) = v373;
LABEL_257:

          return 2;
        }

        __break(1u);
      }

LABEL_318:
      v391 = 0;
      goto LABEL_321;
    }

LABEL_271:
    sub_1C6E4A454(v435, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceForDType);
    sub_1C6E4A454(v95, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
    return 2;
  }

  v249 = *(v486 + 16);
  v250 = v418;
  sub_1C6E4A29C(v95, v418, &qword_1EC1F7A98, &qword_1C6EE7840);
  v251 = *v481;
  v252 = (*v481)(v250, 1, v231);
  v118 = v484;
  if (v252 == 1)
  {
    sub_1C6E4A304(v250, &qword_1EC1F7A98, &qword_1C6EE7840);
    v253 = v420;
    goto LABEL_148;
  }

  v261 = swift_getEnumCaseMultiPayload();
  v253 = v420;
  if (v261 == 4)
  {
    sub_1C6E4A384(v250, v420, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  }

  else
  {
    sub_1C6E4A454(v250, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
LABEL_148:
    *v253 = v425;
    sub_1C6EE4420();
  }

  v270 = *v253;
  v271 = v253[1];
  sub_1C6E00D18(*v253, v271);
  sub_1C6E4A454(v253, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v272 = v271 >> 62;
  if ((v271 >> 62) > 1)
  {
    if (v272 == 2)
    {
      v276 = *(v270 + 16);
      v275 = *(v270 + 24);
      result = sub_1C6DF1134(v270, v271);
      v274 = v275 - v276;
      if (__OFSUB__(v275, v276))
      {
        goto LABEL_328;
      }

      v122 = v435;
    }

    else
    {
      v274 = 0;
    }

    v277 = v421;
    v273 = v422;
  }

  else
  {
    v273 = v422;
    if (v272)
    {
      result = sub_1C6DF1134(v270, v271);
      LODWORD(v274) = HIDWORD(v270) - v270;
      if (__OFSUB__(HIDWORD(v270), v270))
      {
        goto LABEL_329;
      }

      v274 = v274;
      v122 = v435;
    }

    else
    {
      v274 = BYTE6(v271);
    }

    v277 = v421;
  }

  if (v249 == v274 / 2)
  {
    if (v249)
    {
      *&v492 = MEMORY[0x1E69E7CC0];
      result = sub_1C6E15AF0(0, v249 & ~(v249 >> 63), 0);
      if (v249 < 1)
      {
LABEL_327:
        __break(1u);
LABEL_328:
        __break(1u);
LABEL_329:
        __break(1u);
LABEL_330:
        __break(1u);
LABEL_331:
        __break(1u);
LABEL_332:
        __break(1u);
LABEL_333:
        __break(1u);
        goto LABEL_334;
      }

      v278 = v492;
      v279 = (v486 + 32);
      v280 = *(v492 + 16);
      do
      {
        _H8 = *v279;
        *&v492 = v278;
        v282 = *(v278 + 24);
        if (v280 >= v282 >> 1)
        {
          sub_1C6E15AF0((v282 > 1), v280 + 1, 1);
          v278 = v492;
        }

        __asm { FCVT            S0, H8 }

        *(v278 + 16) = v280 + 1;
        *(v278 + 4 * v280 + 32) = _S0;
        ++v279;
        ++v280;
        --v249;
      }

      while (v249);
      v122 = v435;
      v287 = v480;
      v277 = v421;
      v273 = v422;
    }

    else
    {
      v278 = MEMORY[0x1E69E7CC0];
      v287 = v480;
    }

    sub_1C6E4A29C(v95, v273, &qword_1EC1F7A98, &qword_1C6EE7840);
    if (v251(v273, 1, v287) == 1)
    {
      sub_1C6E4A304(v273, &qword_1EC1F7A98, &qword_1C6EE7840);
      v288 = v405;
      goto LABEL_201;
    }

    v289 = swift_getEnumCaseMultiPayload();
    v288 = v405;
    if (v289 == 4)
    {
      sub_1C6E4A384(v273, v277, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      v290 = v490;
    }

    else
    {
      sub_1C6E4A454(v273, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
LABEL_201:
      v290 = v490;
      *v277 = v425;
      sub_1C6EE4420();
    }

    v307 = *v277;
    v308 = v277[1];
    sub_1C6E00D18(*v277, v308);
    sub_1C6E4A454(v277, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    v309 = v494;
    v310 = sub_1C6E1FDB0(v307, v308);
    v494 = v309;
    if (!v309)
    {
      v107 = v310;
      result = sub_1C6DF1134(v307, v308);
      v311 = 8;
      while (v311 - *(v278 + 16) != 8)
      {
        v312 = *(v107 + 16);
        if (v311 - 8 == v312)
        {
          break;
        }

        if (v311 - 8 >= v312)
        {
          goto LABEL_325;
        }

        v313 = *(v107 + 4 * v311);
        v314 = vabds_f32(v313, *(v278 + 4 * v311++));
        if (v314 > (*(v122 + 16) + (fabsf(v313) * *(v122 + 12))))
        {
LABEL_208:

          *&v492 = 0;
          *(&v492 + 1) = 0xE000000000000000;
          sub_1C6EE51B0();
          v370 = v122;
          MEMORY[0x1CCA57F60](0xD000000000000020, 0x80000001C6EF9450);
          MEMORY[0x1CCA57F60](v288, v290);

          MEMORY[0x1CCA57F60](0x646E692074612022, 0xEB00000000207865);
          *&v491 = v311 - 9;
          v371 = sub_1C6EE5460();
          MEMORY[0x1CCA57F60](v371);

          MEMORY[0x1CCA57F60](0xD000000000000011, 0x80000001C6EF94C0);
          sub_1C6EE4DE0();
          MEMORY[0x1CCA57F60](0xD00000000000002ALL, 0x80000001C6EF94E0);
          sub_1C6EE4DE0();
          MEMORY[0x1CCA57F60](0xD00000000000001DLL, 0x80000001C6EF9510);
          sub_1C6EE4DE0();
          MEMORY[0x1CCA57F60](0xD00000000000001CLL, 0x80000001C6EF9530);
          sub_1C6EE4DE0();

          sub_1C6E00C60(v486, *(&v486 + 1), v485);
          v373 = *(&v492 + 1);
          v372 = v492;
          sub_1C6E4A454(v370, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceForDType);
          goto LABEL_252;
        }
      }

      goto LABEL_218;
    }

    sub_1C6DF1134(v307, v308);

    sub_1C6E00C60(v486, *(&v486 + 1), v485);
    sub_1C6E4A454(v122, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceForDType);
    return sub_1C6E4A454(v95, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
  }

  *&v492 = 0;
  *(&v492 + 1) = 0xE000000000000000;
  sub_1C6EE51B0();
  MEMORY[0x1CCA57F60](0xD000000000000020, 0x80000001C6EF9450);
  MEMORY[0x1CCA57F60](v227, v490);

  MEMORY[0x1CCA57F60](0x207361772022, 0xE600000000000000);
  *&v491 = v249;
  v376 = sub_1C6EE5460();
  MEMORY[0x1CCA57F60](v376);

  MEMORY[0x1CCA57F60](0xD000000000000032, 0x80000001C6EF9480);
  v377 = v411;
  sub_1C6E4A29C(v95, v411, &qword_1EC1F7A98, &qword_1C6EE7840);
  if (v251(v377, 1, v480) == 1)
  {
    sub_1C6E4A304(v377, &qword_1EC1F7A98, &qword_1C6EE7840);
    goto LABEL_293;
  }

  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v386 = v408;
    sub_1C6E4A384(v411, v408, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    goto LABEL_294;
  }

LABEL_292:
  sub_1C6E4A454(v411, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
LABEL_293:
  v386 = v408;
  *v408 = v425;
  sub_1C6EE4420();
LABEL_294:
  v389 = *v386;
  v390 = v386[1];
  sub_1C6E00D18(*v386, v390);
  sub_1C6E4A454(v386, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v391 = v390 >> 62;
  if ((v390 >> 62) > 1)
  {
    goto LABEL_299;
  }

  if (!v391)
  {
    goto LABEL_313;
  }

  sub_1C6DF1134(v389, v390);
  LODWORD(v391) = HIDWORD(v389) - v389;
  if (!__OFSUB__(HIDWORD(v389), v389))
  {
LABEL_320:
    v391 = v391;
    goto LABEL_321;
  }

  __break(1u);
LABEL_299:
  if (v391 != 2)
  {
    goto LABEL_318;
  }

  v392 = *(v389 + 16);
  v378 = *(v389 + 24);
  result = sub_1C6DF1134(v389, v390);
  v391 = v378 - v392;
  if (!__OFSUB__(v378, v392))
  {
    goto LABEL_321;
  }

  __break(1u);
LABEL_303:
  LODWORD(v379) = DWORD1(v486) - v486;
  if (!__OFSUB__(DWORD1(v486), v486))
  {
    v379 = v379;
    goto LABEL_305;
  }

LABEL_334:
  __break(1u);
LABEL_335:
  __break(1u);
  return result;
}

uint64_t static TestRunner.test(testBundleURL:packageURL:)(char *a1, uint64_t a2)
{
  v57 = a2;
  v60 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9AB0, &qword_1C6EE9250);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v58 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v53 - v5;
  v7 = sub_1C6EE41A0();
  v59 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v53 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v53 - v14;
  v16 = sub_1C6EE4450();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v17 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestBundle(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestBundleResult(0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = (&v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = v65;
  result = sub_1C6EE41C0();
  if (!v23)
  {
    v55 = v10;
    v56 = v13;
    v65 = v15;
    v60 = v6;
    v26 = v59;
    v54 = v22;
    v63 = result;
    v64 = v25;
    v62 = 0;
    memset(v61, 0, sizeof(v61));
    sub_1C6EE4440();
    sub_1C6E4A1FC(&qword_1EC1F7F20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestBundle, &unk_1C6EEEE58);
    sub_1C6EE45D0();
    v53 = v19;
    v27 = v26;
    v28 = *(v26 + 16);
    v29 = v7;
    v30 = v65;
    v28();
    v31 = v56;
    (v28)(v56, v30, v29);
    v32 = v60;
    (*(v27 + 56))(v60, 1, 1, v29);
    v33 = v55;
    (v28)(v55, v31, v29);
    v34 = v58;
    sub_1C6E4A29C(v32, v58, &unk_1EC1F9AB0, &qword_1C6EE9250);
    type metadata accessor for ResourceReader(0);
    swift_allocObject();
    v35 = sub_1C6E36AAC(v33, v34, 2, 0, MEMORY[0x1E69E7CD0]);
    sub_1C6E4A304(v32, &unk_1EC1F9AB0, &qword_1C6EE9250);
    v36 = *(v27 + 8);
    v36(v31, v29);
    v36(v30, v29);
    v37 = sub_1C6E392C8();
    v38 = sub_1C6E38BFC();
    v39 = sub_1C6E39950(v37);

    sub_1C6EC11F0(v39, v38, v61);
    v40 = v61[0];
    v41 = *(v35 + OBJC_IVAR____TtC18ComputationalGraph14ResourceReader_didCacheModelsObserver);
    if (v41)
    {
      v42 = *(v35 + OBJC_IVAR____TtC18ComputationalGraph14ResourceReader_didCacheModelsObserver + 8);

      v41(v43);

      sub_1C6E41D54(v41, v42);
    }

    else
    {
    }

    v61[0] = v40;
    v44 = v53;
    v45 = v54;
    sub_1C6E42130(v53, v61, v54);

    sub_1C6E4A454(v44, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestBundle);
    v46 = *v45;
    if (*(v45 + 8) == 1)
    {
      if (v46 > 1)
      {
        if (v46 == 2)
        {
          v52 = v45;
          return sub_1C6E4A454(v52, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestBundleResult);
        }

        v47 = 0x80000001C6EF92E0;
        sub_1C6E49F48();
        swift_allocError();
        v49 = 0xD000000000000010;
      }

      else if (v46)
      {
        v47 = 0x80000001C6EF92C0;
        sub_1C6E49F48();
        swift_allocError();
        v49 = 0xD00000000000001BLL;
      }

      else
      {
        v47 = 0x80000001C6EF92A0;
        sub_1C6E49F48();
        swift_allocError();
        v49 = 0xD00000000000001FLL;
      }

      *v48 = v49;
      *(v48 + 8) = v47;
    }

    else
    {
      *&v61[0] = 0;
      *(&v61[0] + 1) = 0xE000000000000000;
      sub_1C6EE51B0();

      *&v61[0] = 0xD000000000000025;
      *(&v61[0] + 1) = 0x80000001C6EF9270;
      v63 = v46;
      v50 = sub_1C6EE5460();
      MEMORY[0x1CCA57F60](v50);

      v51 = v61[0];
      sub_1C6E49F48();
      swift_allocError();
      *v48 = v51;
    }

    *(v48 + 16) = 1;
    swift_willThrow();
    v52 = v45;
    return sub_1C6E4A454(v52, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestBundleResult);
  }

  return result;
}

unint64_t sub_1C6E49F48()
{
  result = qword_1EC1F7F28;
  if (!qword_1EC1F7F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7F28);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TestRunner(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}