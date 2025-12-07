_OWORD *AnyCodable.value.getter@<X0>(uint64_t a1@<X8>)
{
  result = sub_1D8FD68E4(v1, v45);
  switch(v46)
  {
    case 1:
      v36 = v45[0];
      *(a1 + 24) = MEMORY[0x1E69E6158];
      *a1 = v36;
      return result;
    case 2:
      v12 = *&v45[0];
      v13 = MEMORY[0x1E69E6530];
      goto LABEL_34;
    case 3:
      v4 = v45[0];
      v5 = MEMORY[0x1E69E7230];
      goto LABEL_38;
    case 4:
      v14 = v45[0];
      v15 = MEMORY[0x1E69E7290];
      goto LABEL_14;
    case 5:
      v37 = v45[0];
      v38 = MEMORY[0x1E69E72F0];
      goto LABEL_36;
    case 6:
      v12 = *&v45[0];
      v13 = MEMORY[0x1E69E7360];
      goto LABEL_34;
    case 7:
      v12 = *&v45[0];
      v13 = MEMORY[0x1E69E6810];
      goto LABEL_34;
    case 8:
      v4 = v45[0];
      v5 = MEMORY[0x1E69E7508];
      goto LABEL_38;
    case 9:
      v14 = v45[0];
      v15 = MEMORY[0x1E69E75F8];
LABEL_14:
      *(a1 + 24) = v15;
      *a1 = v14;
      return result;
    case 10:
      v37 = v45[0];
      v38 = MEMORY[0x1E69E7668];
LABEL_36:
      *(a1 + 24) = v38;
      *a1 = v37;
      return result;
    case 11:
      v12 = *&v45[0];
      v13 = MEMORY[0x1E69E76D8];
LABEL_34:
      *(a1 + 24) = v13;
      *a1 = v12;
      return result;
    case 12:
      v16 = v45[0];
      *(a1 + 24) = MEMORY[0x1E69E6448];
      *a1 = v16;
      return result;
    case 13:
      v39 = *&v45[0];
      *(a1 + 24) = MEMORY[0x1E69E63B0];
      *a1 = v39;
      return result;
    case 14:
      v6 = *&v45[0];
      v7 = *(*&v45[0] + 16);
      if (v7)
      {
        v42 = MEMORY[0x1E69E7CC0];
        sub_1D8E3151C(0, v7, 0);
        v8 = v42;
        v9 = v6 + 32;
        do
        {
          sub_1D8FD68E4(v9, v44);
          AnyCodable.value.getter(v43);
          sub_1D8FD6940(v44);
          v11 = *(v42 + 16);
          v10 = *(v42 + 24);
          if (v11 >= v10 >> 1)
          {
            sub_1D8E3151C((v10 > 1), v11 + 1, 1);
          }

          *(v42 + 16) = v11 + 1;
          sub_1D8D65618(v43, (v42 + 32 * v11 + 32));
          v9 += 40;
          --v7;
        }

        while (v7);
      }

      else
      {

        v8 = MEMORY[0x1E69E7CC0];
      }

      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7A78, &unk_1D9199550);
      *(a1 + 24) = result;
      *a1 = v8;
      return result;
    case 15:
      v17 = *&v45[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB42E0, &unk_1D9188E40);
      result = sub_1D917977C();
      v18 = result;
      v19 = 0;
      v20 = *(v17 + 64);
      v41 = result;
      v21 = 1 << *(v17 + 32);
      v22 = -1;
      if (v21 < 64)
      {
        v22 = ~(-1 << v21);
      }

      i = v22 & v20;
      v24 = (v21 + 63) >> 6;
      v40 = result + 4;
      if ((v22 & v20) != 0)
      {
        goto LABEL_19;
      }

      break;
    case 16:
      return sub_1D8D65618(v45, a1);
    default:
      v4 = v45[0];
      v5 = MEMORY[0x1E69E6370];
LABEL_38:
      *(a1 + 24) = v5;
      *a1 = v4;
      return result;
  }

LABEL_20:
  v26 = v19;
  do
  {
    v19 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
      goto LABEL_44;
    }

    if (v19 >= v24)
    {

      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4608, &qword_1D91AC8D0);
      *(a1 + 24) = result;
      *a1 = v18;
      return result;
    }

    v27 = *(v17 + 64 + 8 * v19);
    ++v26;
  }

  while (!v27);
  v25 = __clz(__rbit64(v27));
  for (i = (v27 - 1) & v27; ; i &= i - 1)
  {
    v28 = v25 | (v19 << 6);
    v29 = (*(v17 + 48) + 16 * v28);
    v30 = *v29;
    v31 = v29[1];
    sub_1D8FD68E4(*(v17 + 56) + 40 * v28, v44);

    AnyCodable.value.getter(v43);
    sub_1D8FD6940(v44);
    v18 = v41;
    *(v40 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    v32 = (v41[6] + 16 * v28);
    *v32 = v30;
    v32[1] = v31;
    result = sub_1D8D65618(v43, (v41[7] + 32 * v28));
    v33 = v41[2];
    v34 = __OFADD__(v33, 1);
    v35 = v33 + 1;
    if (v34)
    {
      break;
    }

    v41[2] = v35;
    if (!i)
    {
      goto LABEL_20;
    }

LABEL_19:
    v25 = __clz(__rbit64(i));
  }

LABEL_44:
  __break(1u);
  return result;
}

uint64_t AnyCodable.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179EDC();
  if (!v2)
  {
    v5 = v9;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v6 = sub_1D9179AEC() & 1;
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    *a2 = v6;
    *(a2 + 8) = v5;
    *(a2 + 16) = v10;
    *(a2 + 32) = 0;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t AnyCodable.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179F0C();
  sub_1D8FD68E4(v1, v7);
  switch(v8)
  {
    case 1:
      __swift_mutable_project_boxed_opaque_existential_1(v9, v10);
      sub_1D9179B5C();
      goto LABEL_15;
    case 2:
      __swift_mutable_project_boxed_opaque_existential_1(v9, v10);
      sub_1D9179B9C();
      return __swift_destroy_boxed_opaque_existential_1Tm(v9);
    case 3:
      __swift_mutable_project_boxed_opaque_existential_1(v9, v10);
      sub_1D9179BCC();
      return __swift_destroy_boxed_opaque_existential_1Tm(v9);
    case 4:
      __swift_mutable_project_boxed_opaque_existential_1(v9, v10);
      sub_1D9179BDC();
      return __swift_destroy_boxed_opaque_existential_1Tm(v9);
    case 5:
      __swift_mutable_project_boxed_opaque_existential_1(v9, v10);
      sub_1D9179BEC();
      return __swift_destroy_boxed_opaque_existential_1Tm(v9);
    case 6:
      __swift_mutable_project_boxed_opaque_existential_1(v9, v10);
      sub_1D9179BFC();
      return __swift_destroy_boxed_opaque_existential_1Tm(v9);
    case 7:
      __swift_mutable_project_boxed_opaque_existential_1(v9, v10);
      sub_1D9179BAC();
      return __swift_destroy_boxed_opaque_existential_1Tm(v9);
    case 8:
      __swift_mutable_project_boxed_opaque_existential_1(v9, v10);
      sub_1D9179C0C();
      return __swift_destroy_boxed_opaque_existential_1Tm(v9);
    case 9:
      __swift_mutable_project_boxed_opaque_existential_1(v9, v10);
      sub_1D9179C1C();
      return __swift_destroy_boxed_opaque_existential_1Tm(v9);
    case 10:
      __swift_mutable_project_boxed_opaque_existential_1(v9, v10);
      sub_1D9179C2C();
      return __swift_destroy_boxed_opaque_existential_1Tm(v9);
    case 11:
      __swift_mutable_project_boxed_opaque_existential_1(v9, v10);
      sub_1D9179C3C();
      return __swift_destroy_boxed_opaque_existential_1Tm(v9);
    case 12:
      __swift_mutable_project_boxed_opaque_existential_1(v9, v10);
      sub_1D9179B8C();
      return __swift_destroy_boxed_opaque_existential_1Tm(v9);
    case 13:
      __swift_mutable_project_boxed_opaque_existential_1(v9, v10);
      sub_1D9179B7C();
      return __swift_destroy_boxed_opaque_existential_1Tm(v9);
    case 14:
      *&v6[0] = *&v7[0];
      __swift_mutable_project_boxed_opaque_existential_1(v9, v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA728, &unk_1D91B6CE8);
      sub_1D90F448C(&qword_1ECABA738, sub_1D8FD6000, MEMORY[0x1E69E6300]);
      goto LABEL_11;
    case 15:
      *&v6[0] = *&v7[0];
      __swift_mutable_project_boxed_opaque_existential_1(v9, v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8828, qword_1D91A3B50);
      sub_1D90F4408(&qword_1ECAB0148, sub_1D8FD6000, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
LABEL_11:
      sub_1D9179BBC();
LABEL_15:

      break;
    case 16:
      sub_1D8D65618(v7, v6);
      v2 = sub_1D917954C();
      swift_allocError();
      v4 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB84B0, &qword_1D91A1350);
      sub_1D8CFAD1C(v6, v4);
      sub_1D91794FC();
      (*(*(v2 - 8) + 104))(v4, *MEMORY[0x1E69E6B30], v2);
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
      break;
    default:
      __swift_mutable_project_boxed_opaque_existential_1(v9, v10);
      sub_1D9179B6C();
      break;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v9);
}

uint64_t AnyCodable.init(BOOLeanLiteral:)@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  *a2 = result;
  a2[32] = 0;
  return result;
}

uint64_t AnyCodable.init(integerLiteral:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 32) = 2;
  return result;
}

uint64_t AnyCodable.init(stringLiteral:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 32) = 1;
  return result;
}

void AnyCodable.init(dictionaryLiteral:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB42C8, &unk_1D9188E20);
    v4 = sub_1D91797AC();
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC8];
  }

  v6 = v4;
  sub_1D90F4504(a1, 1, &v6);

  v5 = v6;

  sub_1D90F2C34(v5, a2);
}

_BYTE *sub_1D90F42FC@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X8>)
{
  *a2 = *result;
  a2[32] = 0;
  return result;
}

void *sub_1D90F430C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 32) = 2;
  return result;
}

double sub_1D90F4320@<D0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  *(a2 + 32) = 13;
  return result;
}

void sub_1D90F434C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB42C8, &unk_1D9188E20);
    v4 = sub_1D91797AC();
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC8];
  }

  v6 = v4;
  sub_1D90F4504(a1, 1, &v6);

  v5 = v6;

  sub_1D90F2C34(v5, a2);
}

uint64_t sub_1D90F4408(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB8828, qword_1D91A3B50);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D90F448C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECABA728, &unk_1D91B6CE8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_OWORD *sub_1D90F4504(_OWORD *result, char a2, uint64_t *a3)
{
  v3 = *(result + 2);
  if (!v3)
  {
    return result;
  }

  for (i = result + 2; ; i = (i + 72))
  {
    sub_1D90F4900(i, v31);
    v28 = v31[0];
    v29 = v31[1];
    v30 = v32;
    sub_1D8D65618(&v33, v27);
    v10 = *a3;
    v11 = sub_1D8D6550C(&v28);
    v13 = *(v10 + 16);
    v14 = (v12 & 1) == 0;
    v15 = __OFADD__(v13, v14);
    v16 = v13 + v14;
    if (v15)
    {
      break;
    }

    v17 = v12;
    if (*(v10 + 24) < v16)
    {
      sub_1D90078EC(v16, a2 & 1);
      v11 = sub_1D8D6550C(&v28);
      if ((v17 & 1) != (v18 & 1))
      {
        goto LABEL_18;
      }

LABEL_10:
      if (v17)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (a2)
    {
      goto LABEL_10;
    }

    v25 = v11;
    sub_1D8F842F0();
    v11 = v25;
    if (v17)
    {
LABEL_3:
      v7 = *a3;
      v8 = 32 * v11;
      sub_1D8CFAD1C(*(*a3 + 56) + 32 * v11, v26);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      sub_1D8D9A308(&v28);
      v9 = *(v7 + 56);
      __swift_destroy_boxed_opaque_existential_1Tm((v9 + v8));
      result = sub_1D8D65618(v26, (v9 + v8));
      goto LABEL_4;
    }

LABEL_11:
    v19 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v20 = v19[6] + 40 * v11;
    v21 = v28;
    v22 = v29;
    *(v20 + 32) = v30;
    *v20 = v21;
    *(v20 + 16) = v22;
    result = sub_1D8D65618(v27, (v19[7] + 32 * v11));
    v23 = v19[2];
    v15 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (v15)
    {
      goto LABEL_17;
    }

    v19[2] = v24;
LABEL_4:
    a2 = 1;
    if (!--v3)
    {
      return result;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_1D9179CFC();
  __break(1u);
  return result;
}

unint64_t sub_1D90F4704()
{
  result = qword_1ECABA740;
  if (!qword_1ECABA740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA740);
  }

  return result;
}

unint64_t sub_1D90F4768()
{
  result = qword_1ECABA748;
  if (!qword_1ECABA748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA748);
  }

  return result;
}

unint64_t sub_1D90F47CC()
{
  result = qword_1ECABA750;
  if (!qword_1ECABA750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA750);
  }

  return result;
}

uint64_t sub_1D90F4844(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF0 && *(a1 + 33))
  {
    return (*a1 + 240);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0x11)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D90F4880(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xEF)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 240;
    if (a3 >= 0xF0)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF0)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D90F48CC(uint64_t result, unsigned int a2)
{
  if (a2 > 0x10)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 17;
    LOBYTE(a2) = 17;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_1D90F4900(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C80, &unk_1D91949C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void static Persona.current.getter(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[5] = &type metadata for Persona.CurrentUserExecutionStrategy;
  a1[6] = &off_1F5482BB8;
}

double Persona.identifier.getter@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;

  return result;
}

double Persona.init(personaIdentifier:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  a3[5] = &type metadata for Persona.AdoptPersonaExecutionStrategy;
  a3[6] = &off_1F5482BA8;
  a3[2] = a1;
  a3[3] = a2;

  return result;
}

uint64_t Persona.perform<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D90F4A1C, 0, 0);
}

uint64_t sub_1D90F4A1C()
{
  v1 = v0[6];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v10 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_1D90F4B50;
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[2];
  v8 = v0[3];

  return v10(v7, v8, v5, v6, v2, v3);
}

uint64_t sub_1D90F4B50()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D90F4C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v5[12] = a2;
  v5[13] = a3;
  v5[11] = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D90F4CE0, 0, 0);
}

uint64_t sub_1D90F4CE0()
{
  v76 = v0;
  v75 = *MEMORY[0x1E69E9840];
  v1 = objc_opt_self();
  v2 = [v1 currentPersona];
  v0[16] = v2;
  if (v2)
  {
    v3 = v2;

    v4 = [v3 userPersonaUniqueString];
    v5 = v0[15];
    if (v4)
    {
      v6 = v0[14];
      v7 = v4;
      v8 = sub_1D917820C();
      v10 = v9;

      if (v8 == v6 && v10 == v5)
      {

LABEL_21:
        if (qword_1EDCD1090 != -1)
        {
          swift_once();
        }

        v49 = sub_1D917744C();
        __swift_project_value_buffer(v49, qword_1EDCD1098);

        v50 = sub_1D917741C();
        v51 = sub_1D9178CEC();

        if (os_log_type_enabled(v50, v51))
        {
          v53 = v0[14];
          v52 = v0[15];
          v54 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          v73 = v55;
          *v54 = 136315138;
          *(v54 + 4) = sub_1D8CFA924(v53, v52, &v73);
          _os_log_impl(&dword_1D8CEC000, v50, v51, "Already running as persona %s, nothing to do.", v54, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v55);
          MEMORY[0x1DA72CB90](v55, -1, -1);
          MEMORY[0x1DA72CB90](v54, -1, -1);
        }

        v72 = (v0[12] + *v0[12]);
        v56 = swift_task_alloc();
        v0[20] = v56;
        *v56 = v0;
        v57 = sub_1D90F58A4;
LABEL_37:
        v56[1] = v57;
        v71 = v0[11];

        return v72(v71);
      }

      v12 = sub_1D9179ACC();

      if (v12)
      {
        goto LABEL_21;
      }
    }

    else
    {
    }

    if (qword_1EDCD1090 != -1)
    {
      swift_once();
    }

    v15 = sub_1D917744C();
    __swift_project_value_buffer(v15, qword_1EDCD1098);

    v16 = v3;
    v17 = sub_1D917741C();
    v18 = sub_1D9178D1C();

    if (os_log_type_enabled(v17, v18))
    {
      v20 = v0[14];
      v19 = v0[15];
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v73 = v22;
      *v21 = 136315394;
      *(v21 + 4) = sub_1D8CFA924(v20, v19, &v73);
      *(v21 + 12) = 2080;
      v23 = sub_1D90F5BAC();
      v25 = sub_1D8CFA924(v23, v24, &v73);

      *(v21 + 14) = v25;
      _os_log_impl(&dword_1D8CEC000, v17, v18, "Request to execute as user %s, currently running as %s", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v22, -1, -1);
      MEMORY[0x1DA72CB90](v21, -1, -1);
    }

    v0[8] = 0;
    v26 = [v16 copyCurrentPersonaContextWithError_];
    v0[17] = v26;
    v27 = v0[8];
    if (v26)
    {
      v28 = v26;
      v29 = v27;
      v30 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
      v31 = [v16 generateAndRestorePersonaContextWithPersonaUniqueString_];

      if (!v31)
      {
        v61 = sub_1D917741C();
        v62 = sub_1D9178D1C();
        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          v64 = swift_slowAlloc();
          v73 = v64;
          *v63 = 136315138;
          v65 = [v1 currentPersona];
          if (v65)
          {
            v66 = v65;
            v67 = sub_1D90F5BAC();
            v69 = v68;
          }

          else
          {
            v69 = 0xE300000000000000;
            v67 = 7104878;
          }

          v70 = sub_1D8CFA924(v67, v69, &v73);

          *(v63 + 4) = v70;
          _os_log_impl(&dword_1D8CEC000, v61, v62, "Executing as %s", v63, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v64);
          MEMORY[0x1DA72CB90](v64, -1, -1);
          MEMORY[0x1DA72CB90](v63, -1, -1);
        }

        v72 = (v0[12] + *v0[12]);
        v56 = swift_task_alloc();
        v0[18] = v56;
        *v56 = v0;
        v57 = sub_1D90F56BC;
        goto LABEL_37;
      }

      v32 = v31;
      v33 = sub_1D917741C();
      v34 = sub_1D9178CFC();

      if (os_log_type_enabled(v33, v34))
      {
        v36 = v0[14];
        v35 = v0[15];
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v73 = v38;
        *v37 = 136315394;
        *(v37 + 4) = sub_1D8CFA924(v36, v35, &v73);
        *(v37 + 12) = 2080;
        swift_getErrorValue();
        v39 = sub_1D9179D2C();
        v41 = sub_1D8CFA924(v39, v40, &v73);

        *(v37 + 14) = v41;
        _os_log_impl(&dword_1D8CEC000, v33, v34, "Failed adopting persona %s: %s", v37, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1DA72CB90](v38, -1, -1);
        MEMORY[0x1DA72CB90](v37, -1, -1);
      }

      v43 = v0[14];
      v42 = v0[15];
      v44 = sub_1D917717C();
      sub_1D90F6334();
      swift_allocError();
      v46 = v45;
      v73 = 0;
      v74 = 0xE000000000000000;
      sub_1D917946C();

      v73 = 0xD000000000000018;
      v74 = 0x80000001D91D61C0;
      MEMORY[0x1DA7298F0](v43, v42);
      MEMORY[0x1DA7298F0](8238, 0xE200000000000000);
      swift_getErrorValue();
      v47 = sub_1D9179D2C();
      MEMORY[0x1DA7298F0](v47);

      v48 = v74;
      *v46 = v73;
      v46[1] = v48;
      (*(*(v44 - 8) + 104))(v46, *MEMORY[0x1E698AE28], v44);
      swift_willThrow();

      sub_1D90F5EF4(v16, v28);
    }

    else
    {
      v58 = v27;
      sub_1D9176A6C();

      swift_willThrow();
    }
  }

  else
  {
    v13 = sub_1D917717C();
    sub_1D90F6334();
    swift_allocError();
    *v14 = 0xD000000000000033;
    v14[1] = 0x80000001D91D6180;
    (*(*(v13 - 8) + 104))(v14, *MEMORY[0x1E698AE28], v13);
    swift_willThrow();
  }

  v59 = v0[1];

  return v59();
}

uint64_t sub_1D90F56BC()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_1D90F5B04;
  }

  else
  {
    v2 = sub_1D90F57FC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D90F57FC()
{
  v1 = v0[16];
  v2 = v0[17];
  sub_1D90F5EF4(v1, v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D90F58A4()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_1D90F5A74;
  }

  else
  {
    v2 = sub_1D90F59E4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D90F59E4()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D90F5A74()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D90F5B04()
{
  v1 = v0[16];
  v2 = v0[17];
  sub_1D90F5EF4(v1, v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D90F5BAC()
{
  v1 = v0;
  v2 = 0x3E6C696E3CLL;
  sub_1D917946C();
  v3 = [v0 userPersonaUniqueString];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1D917820C();
    v7 = v6;
  }

  else
  {
    v7 = 0xE500000000000000;
    v5 = 0x3E6C696E3CLL;
  }

  MEMORY[0x1DA7298F0](v5, v7);

  MEMORY[0x1DA7298F0](10272, 0xE200000000000000);
  v8 = [v1 userPersonaNickName];
  if (v8)
  {
    v9 = v8;
    v2 = sub_1D917820C();
    v11 = v10;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  MEMORY[0x1DA7298F0](v2, v11);

  v12 = 0xE800000000000000;
  MEMORY[0x1DA7298F0](0x203A65707974202CLL, 0xE800000000000000);
  v13 = [v1 userPersonaType];
  if (v13 > 3)
  {
    if (v13 > 5)
    {
      if (v13 == 6)
      {
        v12 = 0xE500000000000000;
        v14 = 0x7473657547;
        goto LABEL_25;
      }

      if (v13 == 1000)
      {
        v12 = 0xE700000000000000;
        v14 = 0x64696C61766E49;
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    if (v13 == 4)
    {
      v12 = 0xE90000000000006CLL;
      v14 = 0x6173726576696E55;
    }

    else
    {
      v12 = 0xE700000000000000;
      v14 = 0x746C7561666544;
    }
  }

  else
  {
    if (v13 <= 1)
    {
      if (!v13)
      {
        v14 = 0x6C616E6F73726550;
        goto LABEL_25;
      }

      if (v13 == 1)
      {
        v12 = 0xE700000000000000;
        v14 = 0x646567616E614DLL;
        goto LABEL_25;
      }

LABEL_24:
      v14 = 0x6E776F6E6B6E753CLL;
      v12 = 0xE90000000000003ELL;
      goto LABEL_25;
    }

    if (v13 == 2)
    {
      v12 = 0xEA00000000006573;
      v14 = 0x6972707265746E45;
    }

    else
    {
      v12 = 0xE600000000000000;
      v14 = 0x6D6574737953;
    }
  }

LABEL_25:
  MEMORY[0x1DA7298F0](v14, v12);

  MEMORY[0x1DA7298F0](0x203A444955202CLL, 0xE700000000000000);
  [v1 uid];
  v15 = sub_1D9179A4C();
  MEMORY[0x1DA7298F0](v15);

  MEMORY[0x1DA7298F0](0x203A444947202CLL, 0xE700000000000000);
  [v1 gid];
  v16 = sub_1D9179A4C();
  MEMORY[0x1DA7298F0](v16);

  MEMORY[0x1DA7298F0](41, 0xE100000000000000);
  return 0;
}

void sub_1D90F5EF4(void *a1, void *a2)
{
  if (qword_1EDCD1090 != -1)
  {
    swift_once();
  }

  v3 = sub_1D917744C();
  __swift_project_value_buffer(v3, qword_1EDCD1098);
  v4 = a2;
  oslog = sub_1D917741C();
  v5 = sub_1D9178D1C();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = v7;
    *v6 = 136315394;
    v8 = [v4 description];
    v9 = sub_1D917820C();
    v11 = v10;

    v12 = sub_1D8CFA924(v9, v11, &v20);

    *(v6 + 4) = v12;
    *(v6 + 12) = 2080;
    v13 = [objc_opt_self() currentPersona];
    if (v13)
    {
      v14 = v13;
      v15 = sub_1D90F5BAC();
      v17 = v16;
    }

    else
    {
      v17 = 0xE300000000000000;
      v15 = 7104878;
    }

    v18 = sub_1D8CFA924(v15, v17, &v20);

    *(v6 + 14) = v18;
    _os_log_impl(&dword_1D8CEC000, oslog, v5, "Restored persona context %s, executing as %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v7, -1, -1);
    MEMORY[0x1DA72CB90](v6, -1, -1);
  }
}

uint64_t sub_1D90F611C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *v3;
  v8 = v3[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1D8D58924;

  return sub_1D90F4C48(a1, a2, a3, v9, v8);
}

uint64_t _s18PodcastsFoundation7PersonaV10IdentifierO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = a1[1];
  v6 = a2[1];
  if (!v5)
  {
    if (!v6)
    {
      swift_bridgeObjectRelease_n();
      return 1;
    }

    return 0;
  }

  if (!v6)
  {
    return 0;
  }

  if (*a1 == *a2 && v5 == v6)
  {
    return 1;
  }

  return sub_1D9179ACC();
}

uint64_t sub_1D90F6260(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D90F62A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D90F6334()
{
  result = qword_1ECABA758;
  if (!qword_1ECABA758)
  {
    sub_1D917717C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA758);
  }

  return result;
}

id PodcastDonationModel.contentID.getter()
{
  v1 = *v0;
  sub_1D8D5055C(*v0, *(v0 + 8), *(v0 + 16));
  return v1;
}

uint64_t PodcastDonationModel.name.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t PodcastDonationModel.providerName.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t PodcastDonationModel.init(contentID:name:providerName:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

uint64_t _s18PodcastsFoundation20PodcastDonationModelV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = *a2;
  v8 = *(a2 + 16);
  v9 = a2[3];
  v10 = a2[4];
  v12 = a2[5];
  v11 = a2[6];
  if (*(a1 + 16))
  {
    if (*(a1 + 16) == 1)
    {
      if (v8 != 1)
      {
        return 0;
      }

      sub_1D8D6F530();
      if ((sub_1D917914C() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v8 != 2 || (v2 != v7 || a1[1] != a2[1]) && (sub_1D9179ACC() & 1) == 0)
    {
      return 0;
    }

LABEL_13:
    if ((v3 != v9 || v4 != v10) && (sub_1D9179ACC() & 1) == 0)
    {
      return 0;
    }

    if (v6)
    {
      if (!v11 || (v5 != v12 || v6 != v11) && (sub_1D9179ACC() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v11)
    {
      return 0;
    }

    return 1;
  }

  result = 0;
  if (!*(a2 + 16) && v2 == v7)
  {
    goto LABEL_13;
  }

  return result;
}

unint64_t sub_1D90F65A4()
{
  result = qword_1ECABA760;
  if (!qword_1ECABA760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA760);
  }

  return result;
}

uint64_t sub_1D90F65F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D90F6640(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t StationDonationModel.stationUUID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t StationDonationModel.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

PodcastsFoundation::StationDonationModel __swiftcall StationDonationModel.init(stationUUID:name:)(Swift::String stationUUID, Swift::String name)
{
  *v2 = stationUUID;
  v2[1] = name;
  result.name = name;
  result.stationUUID = stationUUID;
  return result;
}

uint64_t sub_1D90F66F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1D90F6740(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 DonationService.init(persona:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  result = *(a1 + 32);
  *(a2 + 32) = result;
  *(a2 + 48) = *(a1 + 48);
  return result;
}

uint64_t sub_1D90F67A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D90F680C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D90F6870(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 168);
  swift_willThrow();

  v4 = *(v2 + 8);

  return v4();
}

unint64_t sub_1D90F698C()
{
  result = qword_1ECABA768;
  if (!qword_1ECABA768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA768);
  }

  return result;
}

unint64_t sub_1D90F69E0()
{
  result = qword_1ECAAFDE8;
  if (!qword_1ECAAFDE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECAAFDE8);
  }

  return result;
}

uint64_t sub_1D90F6A2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = (*a1 == *a2) & ~v2;
  if (*a2)
  {
    v4 = *(a2 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    v2 = 0;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  if (*(a1 + 8) == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1D90F6A68()
{
  v1 = 0xD000000000000011;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x20646F70656D6F48;
  }
}

void sub_1D90F6B08(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1D8D32880();
  }
}

id SiriDonator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SiriDonator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriDonator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D90F6CB0()
{
  (*(v0[7] + 8))(v4, v0[5], v0[2], v0[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB57F0, &unk_1D9190AA0);
  v1 = swift_dynamicCast();
  if ((v1 & 1) == 0)
  {
    v5 = 0;
  }

  v2 = v0 + 4;
  if (v1)
  {
    v2 = &v5;
  }

  return *v2;
}

uint64_t sub_1D90F6D4C()
{
  (*(*(v0 + 56) + 8))(v3, *(v0 + 40), *(v0 + 16), *(v0 + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB57F0, &unk_1D9190AA0);
  if ((swift_dynamicCast() & 1) == 0 || (v1 = v4, v4 == 2))
  {
    v1 = *(v0 + 32);
  }

  return v1 & 1;
}

uint64_t sub_1D90F6DE4()
{
  (*(v0[8] + 8))(v3, v0[6], v0[2], v0[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB57F0, &unk_1D9190AA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECABA7E0, &qword_1D91A3E10);
  if (swift_dynamicCast())
  {
    v1 = &v4;
  }

  else
  {
    v4 = 0;
    v1 = v0 + 4;
  }

  return *v1;
}

unint64_t sub_1D90F6F18()
{
  result = qword_1ECABA7D0;
  if (!qword_1ECABA7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA7D0);
  }

  return result;
}

uint64_t sub_1D90F6F7C(unint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5)
{
  v61 = a4;
  v8 = sub_1D9177E0C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D9177E9C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v17 = result;
    if (a2)
    {
      if (qword_1EDCD1090 != -1)
      {
LABEL_39:
        swift_once();
      }

      v18 = sub_1D917744C();
      __swift_project_value_buffer(v18, qword_1EDCD1098);

      v19 = sub_1D917741C();
      v20 = sub_1D9178CFC();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        aBlock[0] = v22;
        *v21 = 141558275;
        *(v21 + 4) = 1752392040;
        *(v21 + 12) = 2081;
        v23 = *(v17 + 24);
        if (v23)
        {
          v24 = [v23 description];
          v25 = sub_1D917820C();
          v27 = v26;
        }

        else
        {
          v27 = 0xEF72657375206576;
          v25 = 0x6974636120726F66;
        }

        v51 = sub_1D8CFA924(v25, v27, aBlock);

        *(v21 + 14) = v51;
        _os_log_impl(&dword_1D8CEC000, v19, v20, "Account %{private,mask.hash}s: Not proceeding with donation because we encountered an error fetching podcasts.", v21, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v22);
        MEMORY[0x1DA72CB90](v22, -1, -1);
        MEMORY[0x1DA72CB90](v21, -1, -1);
      }

      v61(a1, 0, 1);
    }

    else
    {
      v28 = objc_opt_self();

      if ([v28 isRunningOnHomepod])
      {
        v58 = a5;
        if (a1 >> 62)
        {
          v29 = sub_1D917935C();
        }

        else
        {
          v29 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v59 = v17;
        v30 = MEMORY[0x1E69E7CC0];
        if (v29)
        {
          v17 = 0;
          v31 = MEMORY[0x1E69E7CC0];
          do
          {
            v57 = v31;
            v32 = v17;
            while (1)
            {
              if ((a1 & 0xC000000000000001) != 0)
              {
                v33 = MEMORY[0x1DA72AA90](v32, a1);
              }

              else
              {
                if (v32 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_38;
                }

                v33 = *(a1 + 8 * v32 + 32);
              }

              v34 = v33;
              v17 = v32 + 1;
              if (__OFADD__(v32, 1))
              {
                __break(1u);
LABEL_38:
                __break(1u);
                goto LABEL_39;
              }

              v36 = *&v33[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_id];
              v35 = *&v33[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_id + 8];

              v60 = sub_1D8FE6808(v36, v35);

              v37 = *&v34[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes];
              if (v37)
              {
                v38 = v37[12];
                if (v38)
                {
                  break;
                }
              }

              ++v32;
              if (v17 == v29)
              {
                v30 = MEMORY[0x1E69E7CC0];
                v31 = v57;
                goto LABEL_34;
              }
            }

            v39 = v37[11];

            v40 = v37[3];
            v55 = v37[2];

            v41 = v57;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v56 = v39;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v41 = sub_1D8D4EF90(0, *(v41 + 2) + 1, 1, v41);
            }

            v43 = v60;
            v45 = *(v41 + 2);
            v44 = *(v41 + 3);
            v46 = v41;
            if (v45 >= v44 >> 1)
            {
              v46 = sub_1D8D4EF90((v44 > 1), v45 + 1, 1, v41);
              v43 = v60;
            }

            *(v46 + 2) = v45 + 1;
            v47 = &v46[56 * v45];
            v31 = v46;
            *(v47 + 4) = v43;
            *(v47 + 5) = 0;
            v47[48] = 0;
            v48 = v55;
            *(v47 + 7) = v56;
            *(v47 + 8) = v38;
            *(v47 + 9) = v48;
            *(v47 + 10) = v40;
            v30 = MEMORY[0x1E69E7CC0];
          }

          while (v17 != v29);
        }

        else
        {
          v31 = MEMORY[0x1E69E7CC0];
        }

LABEL_34:
        sub_1D8D99898(a1, 0);
        v52 = v59;
        v53 = *(v59 + 80);
        v54 = *(v59 + 88);
        *(v59 + 80) = v31;
        *(v52 + 88) = v30;

        sub_1D8D4F5BC(v53, v54);
        v61(v31, v30, 0);
      }

      else
      {
        v60 = *(v17 + 72);
        v49 = swift_allocObject();
        v49[2] = v17;
        v49[3] = a1;
        v49[4] = v61;
        v49[5] = a5;
        aBlock[4] = sub_1D90F9C2C;
        aBlock[5] = v49;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1D8CF5F60;
        aBlock[3] = &block_descriptor_26_5;
        v50 = _Block_copy(aBlock);

        sub_1D9177E4C();
        v62 = MEMORY[0x1E69E7CC0];
        sub_1D8D123F8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
        sub_1D8D1D5B0();
        sub_1D91792CC();
        MEMORY[0x1DA72A400](0, v15, v11, v50);
        _Block_release(v50);
        (*(v9 + 8))(v11, v8);
        (*(v13 + 8))(v15, v12);
      }
    }
  }

  return result;
}

uint64_t sub_1D90F7668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D9177F1C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = (&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(a1 + 72);
  *v12 = v13;
  (*(v9 + 104))(v12, *MEMORY[0x1E69E8020], v8, v10);
  v14 = v13;
  LOBYTE(v13) = sub_1D9177F4C();
  result = (*(v9 + 8))(v12, v8);
  if (v13)
  {
    v16 = swift_allocObject();
    v16[2] = a1;
    v16[3] = a3;
    v16[4] = a4;
    v16[5] = a2;

    sub_1D90F8F2C(sub_1D90F9C38, v16, 2, &unk_1F5483278, sub_1D90F9C48);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D90F7828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v123 = a2;
  v6 = sub_1D9177E0C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D9177E9C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v122 = result;
  if (result)
  {
    v112 = a3;
    v113 = a4;
    v114 = v13;
    v115 = v11;
    v116 = v9;
    v117 = v10;
    v118 = v7;
    v119 = v6;
    v15 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
    v16 = [objc_opt_self() predicateForNotHiddenPodcasts];
    [v15 setPredicate_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C50, &unk_1D918DD10);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1D9195F30;
    v18 = sub_1D917820C();
    v19 = MEMORY[0x1E69E6158];
    *(v17 + 56) = MEMORY[0x1E69E6158];
    *(v17 + 32) = v18;
    *(v17 + 40) = v20;
    v21 = sub_1D917820C();
    *(v17 + 88) = v19;
    *(v17 + 64) = v21;
    *(v17 + 72) = v22;
    v23 = sub_1D917820C();
    *(v17 + 120) = v19;
    *(v17 + 96) = v23;
    *(v17 + 104) = v24;
    v25 = sub_1D917820C();
    *(v17 + 152) = v19;
    *(v17 + 128) = v25;
    *(v17 + 136) = v26;
    v27 = sub_1D917820C();
    *(v17 + 184) = v19;
    *(v17 + 160) = v27;
    *(v17 + 168) = v28;
    v29 = sub_1D91785DC();

    [v15 setPropertiesToFetch_];

    v30 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
    v31 = [objc_opt_self() topLevelPlaylistsPredicate];
    [v30 setPredicate_];

    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1D918A530;
    v33 = sub_1D917820C();
    *(v32 + 56) = v19;
    *(v32 + 32) = v33;
    *(v32 + 40) = v34;
    v35 = sub_1D917820C();
    *(v32 + 88) = v19;
    *(v32 + 64) = v35;
    *(v32 + 72) = v36;
    v37 = sub_1D91785DC();

    [v30 setPropertiesToFetch_];

    sub_1D8CF2154(0, &qword_1EDCD0790, off_1E8567640);
    v111 = v15;
    v38 = sub_1D917908C();
    sub_1D8CF2154(0, &qword_1EDCD0A28, off_1E8567638);
    v39 = sub_1D917908C();
    v40 = v122;
    v41 = v39;
    v109 = 0;
    if (qword_1EDCD1090 != -1)
    {
LABEL_38:
      swift_once();
    }

    v42 = sub_1D917744C();
    __swift_project_value_buffer(v42, qword_1EDCD1098);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();

    v43 = sub_1D917741C();
    v44 = sub_1D9178D1C();

    v45 = os_log_type_enabled(v43, v44);
    v46 = v38 >> 62;
    v120 = (v41 >> 62);
    v123 = v41;
    if (v45)
    {
      v47 = v38;
      v48 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      aBlock[0] = v41;
      *v48 = 141558787;
      *(v48 + 4) = 1752392040;
      *(v48 + 12) = 2081;
      v49 = *(v40 + 24);
      if (v49)
      {
        v50 = [v49 description];
        v51 = sub_1D917820C();
        v53 = v52;
      }

      else
      {
        v51 = 0x6974636120726F66;
        v53 = 0xEF72657375206576;
      }

      v54 = sub_1D8CFA924(v51, v53, aBlock);

      *(v48 + 14) = v54;
      *(v48 + 22) = 2048;
      if (v46)
      {
        v55 = sub_1D917935C();
      }

      else
      {
        v55 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v48 + 24) = v55;

      *(v48 + 32) = 2048;
      if (v120)
      {
        v56 = sub_1D917935C();
      }

      else
      {
        v56 = *((v123 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v48 + 34) = v56;

      _os_log_impl(&dword_1D8CEC000, v43, v44, "Account %{private,mask.hash}s: Fetched %ld podcasts and %ld stations from DB.", v48, 0x2Au);
      __swift_destroy_boxed_opaque_existential_1Tm(v41);
      MEMORY[0x1DA72CB90](v41, -1, -1);
      MEMORY[0x1DA72CB90](v48, -1, -1);

      v38 = v47;
    }

    else
    {

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
    }

    v110 = v30;
    v30 = (v38 & 0xFFFFFFFFFFFFFF8);
    if (v46)
    {
      v57 = sub_1D917935C();
      if (v57)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v57 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v57)
      {
LABEL_15:
        v58 = 0;
        v121 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          v40 = v58;
          while (1)
          {
            if ((v38 & 0xC000000000000001) != 0)
            {
              v59 = MEMORY[0x1DA72AA90](v40, v38);
            }

            else
            {
              if (v40 >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_37;
              }

              v59 = *(v38 + 8 * v40 + 32);
            }

            v60 = v59;
            v58 = v40 + 1;
            if (__OFADD__(v40, 1))
            {
              __break(1u);
LABEL_37:
              __break(1u);
              goto LABEL_38;
            }

            v61 = [v59 uuid];
            if (v61)
            {
              break;
            }

LABEL_18:

            ++v40;
            if (v58 == v57)
            {
              goto LABEL_41;
            }
          }

          v62 = v61;
          v63 = sub_1D917820C();
          v41 = v64;

          v65 = [v60 title];
          if (!v65)
          {
            break;
          }

          v66 = v65;
          v107 = sub_1D917820C();
          v106 = v67;

          v68 = [v60 provider];
          if (v68)
          {
            v69 = v68;
            v108 = sub_1D917820C();
            v71 = v70;
          }

          else
          {

            v108 = 0;
            v71 = 0;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v121 = sub_1D8D4EF90(0, *(v121 + 2) + 1, 1, v121);
          }

          v73 = *(v121 + 2);
          v72 = *(v121 + 3);
          if (v73 >= v72 >> 1)
          {
            v121 = sub_1D8D4EF90((v72 > 1), v73 + 1, 1, v121);
          }

          v74 = v121;
          *(v121 + 2) = v73 + 1;
          v75 = &v74[56 * v73];
          *(v75 + 4) = v63;
          *(v75 + 5) = v41;
          v75[48] = 2;
          v76 = v106;
          *(v75 + 7) = v107;
          *(v75 + 8) = v76;
          *(v75 + 9) = v108;
          *(v75 + 10) = v71;
          if (v58 == v57)
          {
            goto LABEL_41;
          }
        }

        goto LABEL_18;
      }
    }

    v121 = MEMORY[0x1E69E7CC0];
LABEL_41:

    if (v120)
    {
      goto LABEL_66;
    }

    v77 = v123;
    v78 = v123 & 0xFFFFFFFFFFFFFF8;
    v79 = *((v123 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_43:
    if (v79)
    {
      v80 = v77 & 0xC000000000000001;
      v120 = MEMORY[0x1E69E7CC0];
      v81 = 0;
      if ((v77 & 0xC000000000000001) != 0)
      {
LABEL_60:
        v82 = MEMORY[0x1DA72AA90](v81, v77);
        goto LABEL_51;
      }

      while (1)
      {
        while (1)
        {
          if (v81 >= *(v78 + 16))
          {
LABEL_65:
            __break(1u);
LABEL_66:
            v77 = v123;
            v78 = v123 & 0xFFFFFFFFFFFFFF8;
            v79 = sub_1D917935C();
            goto LABEL_43;
          }

          v82 = *(v77 + 8 * v81 + 32);
LABEL_51:
          v83 = v82;
          v84 = v81 + 1;
          if (__OFADD__(v81, 1))
          {
            __break(1u);
            goto LABEL_65;
          }

          v85 = [v82 uuid];
          if (v85)
          {
            break;
          }

LABEL_47:

          ++v81;
          if (v84 == v79)
          {
            goto LABEL_62;
          }

          if (v80)
          {
            goto LABEL_60;
          }
        }

        v86 = v85;
        v87 = sub_1D917820C();
        v89 = v88;

        v90 = [v83 title];
        if (!v90)
        {

          v77 = v123;
          goto LABEL_47;
        }

        v91 = v90;
        v92 = sub_1D917820C();
        v108 = v93;

        v94 = v120;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v94 = sub_1D8D4F0C8(0, *(v94 + 2) + 1, 1, v94);
        }

        v96 = *(v94 + 2);
        v95 = *(v94 + 3);
        if (v96 >= v95 >> 1)
        {
          v94 = sub_1D8D4F0C8((v95 > 1), v96 + 1, 1, v94);
        }

        *(v94 + 2) = v96 + 1;
        v120 = v94;
        v97 = &v94[32 * v96];
        *(v97 + 4) = v87;
        *(v97 + 5) = v89;
        v98 = v108;
        *(v97 + 6) = v92;
        *(v97 + 7) = v98;
        v77 = v123;
        if (v84 == v79)
        {
          goto LABEL_62;
        }

        v81 = v84;
        if (v80)
        {
          goto LABEL_60;
        }
      }
    }

    v120 = MEMORY[0x1E69E7CC0];
LABEL_62:

    v99 = swift_allocObject();
    v100 = v113;
    v99[2] = v112;
    v99[3] = v100;
    v101 = v120;
    v99[4] = v121;
    v99[5] = v101;
    aBlock[4] = sub_1D90F9B30;
    aBlock[5] = v99;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D8CF5F60;
    aBlock[3] = &block_descriptor_10_8;
    v102 = _Block_copy(aBlock);

    v103 = v114;
    sub_1D9177E4C();
    v124 = MEMORY[0x1E69E7CC0];
    sub_1D8D123F8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D8D1D5B0();
    v104 = v116;
    v105 = v119;
    sub_1D91792CC();
    MEMORY[0x1DA72A400](0, v103, v104, v102);
    _Block_release(v102);

    (*(v118 + 8))(v104, v105);
    (*(v115 + 8))(v103, v117);
  }

  return result;
}

double sub_1D90F8650(unint64_t a1, char a2, void *a3, void (*a4)(void, void, void), uint64_t a5, unint64_t a6)
{
  v6 = a4;
  v8 = a1;
  if (a2)
  {
    if (qword_1EDCD1090 != -1)
    {
      goto LABEL_44;
    }

    goto LABEL_3;
  }

  if (qword_1EDCD1090 != -1)
  {
    swift_once();
  }

  v21 = sub_1D917744C();
  __swift_project_value_buffer(v21, qword_1EDCD1098);

  sub_1D8D81A00(v8, 0);

  sub_1D8D81A00(v8, 0);
  v22 = sub_1D917741C();
  v23 = sub_1D9178D1C();

  v24 = a6 >> 62;
  v79 = v8 >> 62;
  v82 = a6;
  v76 = a3;
  if (os_log_type_enabled(v22, v23))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v84[0] = v26;
    *v25 = 141558787;
    *(v25 + 4) = 1752392040;
    *(v25 + 12) = 2081;
    v27 = a3[3];
    if (v27)
    {
      v28 = [v27 description];
      v29 = sub_1D917820C();
      v31 = v30;
    }

    else
    {
      v29 = 0x6974636120726F66;
      v31 = 0xEF72657375206576;
    }

    v34 = sub_1D8CFA924(v29, v31, v84);

    *(v25 + 14) = v34;
    *(v25 + 22) = 2048;
    a3 = v82;
    if (v24)
    {
      v35 = sub_1D917935C();
    }

    else
    {
      v35 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v25 + 24) = v35;

    *(v25 + 32) = 2048;
    if (v79)
    {
      v36 = sub_1D917935C();
    }

    else
    {
      v36 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    sub_1D8D99898(v8, 0);
    *(v25 + 34) = v36;
    sub_1D8D99898(v8, 0);
    _os_log_impl(&dword_1D8CEC000, v22, v23, "Account %{private,mask.hash}s: Fetched %ld podcasts and %ld stations from MAPI.", v25, 0x2Au);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    MEMORY[0x1DA72CB90](v26, -1, -1);
    MEMORY[0x1DA72CB90](v25, -1, -1);

    a6 = v82;
  }

  else
  {
    sub_1D8D99898(v8, 0);

    sub_1D8D99898(v8, 0);
  }

  v8 = a6 & 0xFFFFFFFFFFFFFF8;
  if (v24)
  {
    v37 = sub_1D917935C();
    if (v37)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v37 = *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v37)
    {
LABEL_24:
      v38 = 0;
      v6 = 0;
      v78 = MEMORY[0x1E69E7CC0];
      v39 = a6 & 0xC000000000000001;
      while (1)
      {
        v40 = v38;
        while (1)
        {
          if (v39)
          {
            v41 = MEMORY[0x1DA72AA90](v40, a6);
          }

          else
          {
            if (v40 >= *(v8 + 16))
            {
              goto LABEL_43;
            }

            v41 = *(a6 + 8 * v40 + 32);
          }

          v42 = v41;
          v38 = v40 + 1;
          if (__OFADD__(v40, 1))
          {
            __break(1u);
LABEL_43:
            __break(1u);
LABEL_44:
            swift_once();
LABEL_3:
            v9 = sub_1D917744C();
            __swift_project_value_buffer(v9, qword_1EDCD1098);

            v10 = sub_1D917741C();
            v11 = sub_1D9178CFC();

            if (os_log_type_enabled(v10, v11))
            {
              v12 = v6;
              v13 = swift_slowAlloc();
              v14 = swift_slowAlloc();
              v84[0] = v14;
              *v13 = 141558275;
              *(v13 + 4) = 1752392040;
              *(v13 + 12) = 2081;
              v15 = a3[3];
              if (v15)
              {
                v16 = [v15 description];
                v17 = sub_1D917820C();
                v19 = v18;
              }

              else
              {
                v17 = 0x6974636120726F66;
                v19 = 0xEF72657375206576;
              }

              v32 = sub_1D8CFA924(v17, v19, v84);

              *(v13 + 14) = v32;
              _os_log_impl(&dword_1D8CEC000, v10, v11, "Account %{private,mask.hash}s: Not proceeding with donation because we encountered an error fetching stations.", v13, 0x16u);
              __swift_destroy_boxed_opaque_existential_1Tm(v14);
              MEMORY[0x1DA72CB90](v14, -1, -1);
              MEMORY[0x1DA72CB90](v13, -1, -1);

              v6 = v12;
              v8 = a1;
            }

            else
            {
            }

            v6(v8, 0, 1);
            return result;
          }

          v44 = *&v41[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_id];
          v43 = *&v41[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_id + 8];

          v45 = sub_1D8FE6808(v44, v43);

          a3 = *&v42[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes];
          if (!a3)
          {

            goto LABEL_26;
          }

          v46 = a3[12];
          if (v46)
          {
            break;
          }

          a6 = v82;
LABEL_26:
          ++v40;
          if (v38 == v37)
          {
            goto LABEL_47;
          }
        }

        v75 = a3[11];

        v48 = a3[2];
        v47 = a3[3];

        v74 = v48;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v78 = sub_1D8D4EF90(0, *(v78 + 2) + 1, 1, v78);
        }

        v49 = v45;
        v51 = *(v78 + 2);
        v50 = *(v78 + 3);
        a3 = (v51 + 1);
        if (v51 >= v50 >> 1)
        {
          v78 = sub_1D8D4EF90((v50 > 1), v51 + 1, 1, v78);
          v49 = v45;
        }

        *(v78 + 2) = a3;
        v52 = &v78[56 * v51];
        *(v52 + 4) = v49;
        *(v52 + 5) = 0;
        v52[48] = 0;
        *(v52 + 7) = v75;
        *(v52 + 8) = v46;
        *(v52 + 9) = v74;
        *(v52 + 10) = v47;
        a6 = v82;
        if (v38 == v37)
        {
          goto LABEL_47;
        }
      }
    }
  }

  v6 = 0;
  v78 = MEMORY[0x1E69E7CC0];
LABEL_47:
  v53 = a1;
  if (v79)
  {
    goto LABEL_69;
  }

  v54 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v54)
  {
    goto LABEL_70;
  }

  do
  {
    v55 = v53 & 0xC000000000000001;
    v80 = MEMORY[0x1E69E7CC0];
    v56 = 0;
    if ((v53 & 0xC000000000000001) != 0)
    {
LABEL_66:
      v57 = MEMORY[0x1DA72AA90](v56, v53);
      goto LABEL_56;
    }

    while (v56 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v57 = *(v53 + 8 * v56 + 32);
LABEL_56:
      v58 = v57;
      v59 = v56 + 1;
      if (__OFADD__(v56, 1))
      {
        __break(1u);
        break;
      }

      v60 = *&v57[OBJC_IVAR____TtC18PodcastsFoundation20ServerPodcastStation_id + 8];
      v84[0] = *&v57[OBJC_IVAR____TtC18PodcastsFoundation20ServerPodcastStation_id];
      v84[1] = v60;
      sub_1D8D447DC();
      v61 = sub_1D91791FC();
      if (v61[2] <= 1uLL)
      {

LABEL_52:
        ++v56;
        if (v59 == v54)
        {
          goto LABEL_71;
        }

        if (v55)
        {
          goto LABEL_66;
        }
      }

      else
      {
        v83 = v6;
        v63 = v61[6];
        v62 = v61[7];

        v64 = *&v58[OBJC_IVAR____TtC18PodcastsFoundation20ServerPodcastStation_attributes];

        v65 = *(v64 + 16);
        v66 = *(v64 + 24);

        if (!v66)
        {

          v53 = a1;
          v6 = v83;
          goto LABEL_52;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v80 = sub_1D8D4F0C8(0, *(v80 + 2) + 1, 1, v80);
        }

        v68 = *(v80 + 2);
        v67 = *(v80 + 3);
        v69 = v63;
        if (v68 >= v67 >> 1)
        {
          v71 = sub_1D8D4F0C8((v67 > 1), v68 + 1, 1, v80);
          v69 = v63;
          v80 = v71;
        }

        v53 = a1;
        *(v80 + 2) = v68 + 1;
        v70 = &v80[32 * v68];
        *(v70 + 4) = v69;
        *(v70 + 5) = v62;
        *(v70 + 6) = v65;
        *(v70 + 7) = v66;
        v6 = v83;
        if (v59 == v54)
        {
          goto LABEL_71;
        }

        ++v56;
        if (v55)
        {
          goto LABEL_66;
        }
      }
    }

    __break(1u);
LABEL_69:
    v54 = sub_1D917935C();
  }

  while (v54);
LABEL_70:
  v80 = MEMORY[0x1E69E7CC0];
LABEL_71:
  v72 = v76[10];
  v73 = v76[11];
  v76[10] = v78;
  v76[11] = v80;

  sub_1D8D4F5BC(v72, v73);
  a4(v78, v80, 0);

  return result;
}

uint64_t sub_1D90F8F2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v62 = a5;
  v59 = a3;
  v60 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v47 - v9;
  v11 = type metadata accessor for MediaRequest.Params(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D9177F1C();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = (&v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v61 = v5;
  v19 = v5[9];
  *v18 = v19;
  (*(v15 + 104))(v18, *MEMORY[0x1E69E8020], v14, v16);
  v20 = v19;
  LOBYTE(v19) = sub_1D9177F4C();
  result = (*(v15 + 8))(v18, v14);
  if (v19)
  {
    v22 = sub_1D9176C2C();
    v23 = *(*(v22 - 8) + 56);
    v56 = v10;
    v23(v10, 1, 1, v22);
    v58 = a4;
    v24 = MEMORY[0x1E69E7CC0];
    v55 = sub_1D8D94DF8(MEMORY[0x1E69E7CC0]);
    v54 = sub_1D8D94DF8(v24);
    v53 = sub_1D8D951E0(v24);
    v52 = sub_1D8D9503C(v24);
    v51 = sub_1D8D9536C(v24);
    v50 = sub_1D8D9536C(v24);
    v49 = sub_1D8D953C4(v24);
    v25 = sub_1D8D952D8(v24);
    v57 = a1;
    v26 = v25;
    v48 = sub_1D8D95394(v24);
    v27 = sub_1D8D957C4(v24);
    *(v13 + 41) = 263;
    v13[43] = 5;
    v13[152] = 1;
    v13[201] = 1;
    v28 = v11[28];
    v23(&v13[v28], 1, 1, v22);
    v29 = &v13[v11[29]];
    v30 = &v13[v11[31]];
    v31 = v11[33];
    v47 = v11[34];
    v32 = &v13[v31];
    v33 = &v13[v11[35]];
    *v13 = 1;
    *(v13 + 8) = 0u;
    *(v13 + 24) = 0u;
    v13[40] = 4;
    v13[41] = v59;
    *(v13 + 21) = 1281;
    v34 = v54;
    *(v13 + 6) = v55;
    *(v13 + 7) = v34;
    v35 = v52;
    *(v13 + 8) = v53;
    *(v13 + 9) = v24;
    v36 = v50;
    v37 = v51;
    *(v13 + 10) = v35;
    *(v13 + 11) = v37;
    *(v13 + 12) = v36;
    v38 = v48;
    *(v13 + 13) = v49;
    *(v13 + 14) = v24;
    *(v13 + 15) = v26;
    *(v13 + 16) = v24;
    *(v13 + 17) = v24;
    *(v13 + 18) = v24;
    v13[152] = 0;
    *(v13 + 20) = 0;
    v13[168] = 1;
    *(v13 + 22) = v38;
    *(v13 + 23) = v27;
    *(v13 + 24) = 0;
    *(v13 + 100) = 257;
    v13[202] = 0;
    sub_1D8E26828(v56, &v13[v28]);
    *v29 = 0;
    *(v29 + 1) = 0;
    v13[v11[30]] = 0;
    *v30 = 0;
    *(v30 + 1) = 0;
    *&v13[v11[32]] = v24;
    *v32 = 0;
    *(v32 + 1) = 0;
    v13[v47] = 2;
    *v33 = 0;
    *(v33 + 1) = 0;
    v39 = v61;
    v40 = v61[7];
    v41 = v61[8];
    __swift_project_boxed_opaque_existential_1(v61 + 4, v40);
    v42 = v39[3];
    v43 = swift_allocObject();
    swift_weakInit();
    v44 = swift_allocObject();
    v45 = v57;
    v44[2] = v43;
    v44[3] = v45;
    v44[4] = v60;
    v46 = *(v41 + 32);

    v46(v13, v42, v62, v44, v40, v41);

    sub_1D8D90BEC(v13);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D90F9398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v30 = a7;
  v14 = sub_1D9177E0C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1D9177E9C();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v28 = v19;
    v29 = v18;
    v27 = *(result + 72);
    v23 = result;
    v24 = swift_allocObject();
    v24[2] = a5;
    v24[3] = v23;
    v24[4] = v30;
    v24[5] = a8;
    v24[6] = a1;
    aBlock[4] = a10;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D8CF5F60;
    aBlock[3] = a11;
    v25 = _Block_copy(aBlock);
    v26 = a5;

    sub_1D9177E4C();
    v31 = MEMORY[0x1E69E7CC0];
    sub_1D8D123F8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D8D1D5B0();
    sub_1D91792CC();
    MEMORY[0x1DA72A400](0, v21, v17, v25);
    _Block_release(v25);
    (*(v15 + 8))(v17, v14);
    (*(v28 + 8))(v21, v29);
  }

  return result;
}

void sub_1D90F9660(void *a1, uint64_t a2, void (*a3)(void, void), uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t), const char *a7, const char *a8)
{
  if (a1)
  {
    v12 = a1;
    if (qword_1EDCD1090 != -1)
    {
      swift_once();
    }

    v13 = sub_1D917744C();
    __swift_project_value_buffer(v13, qword_1EDCD1098);
    v14 = a1;

    v15 = sub_1D917741C();
    v16 = sub_1D9178CFC();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v50 = v19;
      *v17 = 141558531;
      *(v17 + 4) = 1752392040;
      *(v17 + 12) = 2081;
      v20 = *(a2 + 24);
      if (v20)
      {
        v49 = v16;
        v21 = v18;
        v22 = v19;
        v23 = a7;
        v24 = a3;
        v25 = [v20 description];
        v26 = sub_1D917820C();
        v28 = v27;

        a3 = v24;
        a7 = v23;
        v19 = v22;
        v18 = v21;
        v16 = v49;
      }

      else
      {
        v26 = 0x6974636120726F66;
        v28 = 0xEF72657375206576;
      }

      v42 = sub_1D8CFA924(v26, v28, &v50);

      *(v17 + 14) = v42;
      *(v17 + 22) = 2112;
      v43 = sub_1D9176A5C();
      *(v17 + 24) = v43;
      *v18 = v43;
      _os_log_impl(&dword_1D8CEC000, v15, v16, a7, v17, 0x20u);
      sub_1D8E262AC(v18);
      MEMORY[0x1DA72CB90](v18, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x1DA72CB90](v19, -1, -1);
      MEMORY[0x1DA72CB90](v17, -1, -1);
    }

    else
    {
    }

    v44 = a1;
    a3(a1, 1);

    v45 = a1;
LABEL_24:

    return;
  }

  if (!a5 || (v30 = a6(a5)) == 0)
  {
    if (qword_1EDCD1090 != -1)
    {
      swift_once();
    }

    v31 = sub_1D917744C();
    __swift_project_value_buffer(v31, qword_1EDCD1098);

    v32 = sub_1D917741C();
    v33 = sub_1D9178CFC();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v50 = v35;
      *v34 = 141558275;
      *(v34 + 4) = 1752392040;
      *(v34 + 12) = 2081;
      v36 = *(a2 + 24);
      if (v36)
      {
        v37 = a3;
        v38 = [v36 description];
        v39 = sub_1D917820C();
        v41 = v40;

        a3 = v37;
      }

      else
      {
        v39 = 0x6974636120726F66;
        v41 = 0xEF72657375206576;
      }

      v46 = sub_1D8CFA924(v39, v41, &v50);

      *(v34 + 14) = v46;
      _os_log_impl(&dword_1D8CEC000, v32, v33, a8, v34, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      MEMORY[0x1DA72CB90](v35, -1, -1);
      MEMORY[0x1DA72CB90](v34, -1, -1);
    }

    sub_1D90F9BD8();
    v47 = swift_allocError();
    *v48 = 1;
    *(v48 + 8) = 1;
    a3(v47, 1);
    v45 = v47;
    goto LABEL_24;
  }

  a3(v30, 0);
}

unint64_t sub_1D90F9BD8()
{
  result = qword_1ECAB2AA8;
  if (!qword_1ECAB2AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2AA8);
  }

  return result;
}

uint64_t objectdestroy_16Tm_0()
{

  return swift_deallocObject();
}

uint64_t sub_1D90F9D48()
{
  v23 = v0;
  if (qword_1EDCD1090 != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v2 = v0[12];
  v3 = sub_1D917744C();
  __swift_project_value_buffer(v3, qword_1EDCD1098);
  sub_1D8D35688(v2, (v0 + 2));
  v4 = v1;
  v5 = sub_1D917741C();
  v6 = sub_1D9178CFC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22 = v9;
    *v7 = 141558531;
    *(v7 + 4) = 1752392040;
    *(v7 + 12) = 2081;
    v10 = *(v0[3] + 24);
    if (v10)
    {
      v11 = [v10 description];
      v12 = sub_1D917820C();
      v14 = v13;
    }

    else
    {
      v14 = 0xEF72657375206576;
      v12 = 0x6974636120726F66;
    }

    sub_1D8D330B0((v0 + 2));
    v15 = sub_1D8CFA924(v12, v14, &v22);

    *(v7 + 14) = v15;
    *(v7 + 22) = 2112;
    v16 = sub_1D9176A5C();
    *(v7 + 24) = v16;
    *v8 = v16;
    _os_log_impl(&dword_1D8CEC000, v5, v6, "Account %{private,mask.hash}s: Donation failed with error:%@", v7, 0x20u);
    sub_1D8E262AC(v8);
    MEMORY[0x1DA72CB90](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1DA72CB90](v9, -1, -1);
    MEMORY[0x1DA72CB90](v7, -1, -1);
  }

  else
  {

    sub_1D8D330B0((v0 + 2));
  }

  v17 = v0[16];
  v18 = v0[13];
  v19 = v17;
  v18(v17);

  v20 = v0[1];

  return v20();
}

uint64_t sub_1D90F9FF4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[14];
  v7 = v1[15];
  v8 = v1[16];
  v9 = v1[17];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D8D5FF18;

  return sub_1D8D4FA18(a1, v4, v5, (v1 + 4), v6, v7, v8, v9);
}

double sub_1D90FA0CC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_1D90FA10C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1D90FA154(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t EpisodeBookmarkState.dictionaryKey.getter(char a1)
{
  if (a1)
  {
    return 0x6B72616D6B6F6F62;
  }

  else
  {
    return 0x6D6B6F6F42746F6ELL;
  }
}

uint64_t EpisodeBookmarkState.hashValue.getter(char a1)
{
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](a1 & 1);
  return sub_1D9179E1C();
}

uint64_t sub_1D90FA288()
{
  if (*v0)
  {
    return 0x6B72616D6B6F6F62;
  }

  else
  {
    return 0x6D6B6F6F42746F6ELL;
  }
}

uint64_t static EpisodeBookmarkState.state(for:)(uint64_t a1)
{
  return *(a1 + 10);
}

{
  return *(a1 + *(type metadata accessor for InMemoryEpisodeStateModel(0) + 20));
}

uint64_t sub_1D90FA2E8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for InMemoryEpisodeStateModel(0);
  *a2 = *(a1 + *(result + 20));
  return result;
}

uint64_t EpisodeBookmarkStateRule<>.eraseToAnyEpisodeBookmarkStateRule()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)(char a1, char a2)@<X8>)
{
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v3, a1, v7);
  return sub_1D90FA43C(v9, a1, a2, a3);
}

uint64_t sub_1D90FA43C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)(char a1, char a2)@<X8>)
{
  v8 = *(a2 - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  result = (*(v8 + 32))(v10 + v9, a1, a2);
  *a4 = sub_1D90FA614;
  a4[1] = v10;
  return result;
}

unint64_t sub_1D90FA584(uint64_t a1)
{
  result = sub_1D90FA5AC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D90FA5AC()
{
  result = qword_1ECABA800;
  if (!qword_1ECABA800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA800);
  }

  return result;
}

uint64_t sub_1D90FA614(char a1, char a2)
{
  v3 = *(v2 + 24);
  v6 = a1 & 1;
  v5 = a2 & 1;
  return (*(*(v3 + 8) + 24))(&v6, &v5) & 1;
}

void static EpisodeDownloadState.defaultState.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = -64;
}

uint64_t EpisodeDownloadState.dictionaryKey.getter()
{
  v1 = 0x6E776F6E6B6E75;
  if (*(v0 + 16) >> 6 == 2)
  {
    v1 = 0x64616F6C6E776F64;
  }

  if (*(v0 + 16) >> 6 <= 1u)
  {
    return 0x64616F6C6E776F64;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1D90FA780()
{
  v1 = 0x6E776F6E6B6E75;
  if (*(v0 + 16) >> 6 == 2)
  {
    v1 = 0x64616F6C6E776F64;
  }

  if (*(v0 + 16) >> 6 <= 1u)
  {
    return 0x64616F6C6E776F64;
  }

  else
  {
    return v1;
  }
}

void static EpisodeDownloadState.state(for:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);
  v5 = *(a1 + 11);
  v6 = Set<>.firstEpisodeUUID.getter(*a1);
  if (!v7)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    v8 = -2;
    goto LABEL_7;
  }

  if (v5)
  {

    *a2 = 0;
    *(a2 + 8) = 0;
    v8 = -64;
LABEL_7:
    *(a2 + 16) = v8;
    return;
  }

  if (v3)
  {
    v8 = v4 | 0x80;
    *a2 = v6;
    *(a2 + 8) = v7;
    goto LABEL_7;
  }

  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 16) = 0;
}

void sub_1D90FA88C(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = -2;
}

void static EpisodeDownloadState.state(for:)(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = -2;
}

uint64_t _s18PodcastsFoundation20EpisodeDownloadStateO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = a2[1];
  v7 = *(a2 + 16);
  v8 = v7 >> 6;
  if (v7 >> 6 > 1)
  {
    if (v8 != 2)
    {
      v15 = v4 >= 0xC0 && (v2 | v3) == 0;
      if (v15 && v4 == 192)
      {
        sub_1D90FAC80(*a2, a2[1], v7);
        v16 = 0;
        v17 = 0;
        v18 = 192;
LABEL_32:
        sub_1D90FAC80(v16, v17, v18);
        v14 = 1;
        return v14 & 1;
      }

      goto LABEL_28;
    }

    if ((v4 & 0xC0) != 0x80)
    {
      goto LABEL_27;
    }

    if (v6 == v3 && v5 == v2)
    {
      sub_1D90FAC64(*a1, v2, v4);
      sub_1D90FAC64(v3, v2, v7);
      sub_1D90FAC80(v3, v2, v7);
      sub_1D90FAC80(v3, v2, v4);
    }

    else
    {
      v13 = sub_1D9179ACC();
      sub_1D90FAC64(v3, v2, v4);
      sub_1D90FAC64(v6, v5, v7);
      sub_1D90FAC80(v6, v5, v7);
      sub_1D90FAC80(v3, v2, v4);
      if ((v13 & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    v14 = v7 ^ v4 ^ 1;
    return v14 & 1;
  }

  if (!v8)
  {
    if (v4 < 0x40)
    {
      if (v6 != v3 || v5 != v2)
      {
        v10 = sub_1D9179ACC();
        sub_1D90FAC64(v3, v2, v4);
        sub_1D90FAC64(v6, v5, v7);
        sub_1D90FAC80(v6, v5, v7);
        sub_1D90FAC80(v3, v2, v4);
        return v10 & 1;
      }

      sub_1D90FAC64(*a1, v2, v4);
      sub_1D90FAC64(v3, v2, v7);
      sub_1D90FAC80(v3, v2, v7);
      v16 = v3;
      v17 = v2;
      v18 = v4;
      goto LABEL_32;
    }

LABEL_27:

    goto LABEL_28;
  }

  if ((v4 & 0xC0) != 0x40)
  {
LABEL_28:
    sub_1D90FAC64(v3, v2, v4);
    sub_1D90FAC80(v6, v5, v7);
    sub_1D90FAC80(v3, v2, v4);
    goto LABEL_29;
  }

  sub_1D90FAC80(*a2, a2[1], v7);
  sub_1D90FAC80(v3, v2, v4);
  if (*&v6 != *&v3)
  {
LABEL_29:
    v14 = 0;
    return v14 & 1;
  }

  v14 = v5 ^ v2 ^ 1;
  return v14 & 1;
}

uint64_t get_enum_tag_for_layout_string_18PodcastsFoundation20EpisodeDownloadStateO(uint64_t a1)
{
  v1 = *(a1 + 16) >> 6;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1D90FAB80(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 17))
  {
    return (*a1 + 125);
  }

  v3 = ((*(a1 + 16) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 16) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D90FABD4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 16) = 0;
    *result = a2 - 125;
    *(result + 8) = 0;
    if (a3 >= 0x7D)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_1D90FAC38(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    *(result + 16) = *(result + 16) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    *(result + 16) = -64;
  }

  return result;
}

double sub_1D90FAC64(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (((a3 >> 6) & 1 | 2) == 2)
  {
  }

  return result;
}

double sub_1D90FAC80(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (((a3 >> 6) & 1 | 2) == 2)
  {
  }

  return result;
}

uint64_t EpisodeDownloadStateRule<>.eraseToAnyEpisodeDownloadStateRule()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)(__int128 *a1, __int128 *a2)@<X8>)
{
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v3, a1, v7);
  return sub_1D90FAD7C(v9, a1, a2, a3);
}

uint64_t sub_1D90FAD7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)(__int128 *a1, __int128 *a2)@<X8>)
{
  v8 = *(a2 - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  result = (*(v8 + 32))(v10 + v9, a1, a2);
  *a4 = sub_1D90FB5B8;
  a4[1] = v10;
  return result;
}

uint64_t AnyEpisodeDownloadStateRule.canMove(from:to:)(__int128 *a1, __int128 *a2)
{
  v3 = *(a1 + 16);
  v4 = *(a2 + 16);
  v5 = *v2;
  v9 = *a1;
  v10 = v3;
  v7 = *a2;
  v8 = v4;
  return v5(&v9, &v7) & 1;
}

uint64_t sub_1D90FAEB8(__int128 *a1, __int128 *a2)
{
  v3 = *(a1 + 16);
  v4 = *(a2 + 16);
  v5 = *v2;
  v9 = *a1;
  v10 = v3;
  v7 = *a2;
  v8 = v4;
  return v5(&v9, &v7) & 1;
}

uint64_t DownloadingRules.canMove(from:to:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if ((v2 & 0xC0) != 0x40)
  {
    goto LABEL_11;
  }

  v4 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *a2;
  v6 = *(a2 + 8);
  v8 = *(a1 + 16) >> 6;
  v9 = v8 == 3 && *a1 == 0;
  if (v9 && v5 == -64)
  {
    sub_1D90FAC80(0, 0, 0xC0u);
    v11 = 0;
    v12 = 0;
    v13 = 192;
LABEL_15:
    sub_1D90FAC80(v11, v12, v13);
    v10 = 1;
    return v10 & 1;
  }

  sub_1D90FAC64(*a1, v3, v5);
  sub_1D90FAC80(0, 0, 0xC0u);
  sub_1D90FAC80(v4, v3, v5);
  if ((v5 & 0x80000000) != 0)
  {
LABEL_11:
    v10 = 0;
  }

  else
  {
    if (v8 != 1)
    {
      sub_1D90FAC64(v4, v3, v5);
      sub_1D90FAC80(v4, v3, v5);
      v11 = v7;
      v12 = v6;
      v13 = v2;
      goto LABEL_15;
    }

    sub_1D90FAC80(v4, v3, v5);
    sub_1D90FAC80(v7, v6, v2);
    v10 = 1;
    if ((v3 & ~v6 & 1) == 0 && *&v4 >= *&v7)
    {
      v10 = (v3 ^ 1) & v6;
    }
  }

  return v10 & 1;
}

BOOL DownloadedRules.canMove(from:to:)(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 16) & 0xC0) != 0x80)
  {
    return 0;
  }

  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = v4 >> 6 == 3 && *a1 == 0;
  if (v5 && v4 == 192)
  {
    sub_1D90FAC80(0, 0, 0xC0u);
    sub_1D90FAC80(0, 0, 0xC0u);
    return 1;
  }

  else
  {
    sub_1D90FAC64(*a1, v3, v4);
    sub_1D90FAC80(0, 0, 0xC0u);
    sub_1D90FAC80(v2, v3, v4);
    return v4 >> 6 != 3;
  }
}

unint64_t sub_1D90FB144(uint64_t a1)
{
  result = sub_1D90FB16C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D90FB16C()
{
  result = qword_1ECABA818;
  if (!qword_1ECABA818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA818);
  }

  return result;
}

unint64_t sub_1D90FB1C0(uint64_t a1)
{
  result = sub_1D90FB1E8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D90FB1E8()
{
  result = qword_1ECABA820;
  if (!qword_1ECABA820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA820);
  }

  return result;
}

unint64_t sub_1D90FB23C(uint64_t a1)
{
  result = sub_1D90FB264();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D90FB264()
{
  result = qword_1ECABA828;
  if (!qword_1ECABA828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA828);
  }

  return result;
}

unint64_t sub_1D90FB2B8(uint64_t a1)
{
  result = sub_1D90FB2E0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D90FB2E0()
{
  result = qword_1ECABA830;
  if (!qword_1ECABA830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA830);
  }

  return result;
}

BOOL sub_1D90FB334(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 16) & 0xC0) != 0x80)
  {
    return 0;
  }

  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = v4 >> 6 == 3 && *a1 == 0;
  if (v5 && v4 == 192)
  {
    sub_1D90FAC80(0, 0, 0xC0u);
    sub_1D90FAC80(0, 0, 0xC0u);
    return 1;
  }

  else
  {
    sub_1D90FAC64(*a1, v3, v4);
    sub_1D90FAC80(0, 0, 0xC0u);
    sub_1D90FAC80(v2, v3, v4);
    return v4 >> 6 != 3;
  }
}

uint64_t sub_1D90FB448(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  if ((a6 & 0xC0) != 0x40)
  {
    return 0;
  }

  v8 = a3 >> 6;
  if (v8 == 3 && !(a2 | a1) && a3 == 192)
  {
    sub_1D90FAC80(0, 0, 0xC0u);
    v9 = 0;
    v10 = 0;
    v11 = 192;
LABEL_16:
    sub_1D90FAC80(v9, v10, v11);
    v18 = 1;
    return v18 & 1;
  }

  sub_1D90FAC64(a1, a2, a3);
  sub_1D90FAC80(0, 0, 0xC0u);
  sub_1D90FAC80(a1, a2, a3);
  if ((a3 & 0x80) == 0)
  {
    if (v8 == 1)
    {
      sub_1D90FAC80(a1, a2, a3);
      sub_1D90FAC80(a4, a5, a6);
      v17 = (a2 ^ 1) & a5;
      if (*&a1 < *&a4)
      {
        v17 = 1;
      }

      if (a2 & ~a5)
      {
        v18 = 1;
      }

      else
      {
        v18 = v17;
      }

      return v18 & 1;
    }

    sub_1D90FAC64(a1, a2, a3);
    sub_1D90FAC80(a1, a2, a3);
    v9 = a4;
    v10 = a5;
    v11 = a6;
    goto LABEL_16;
  }

  v18 = 0;
  return v18 & 1;
}

uint64_t sub_1D90FB5B8(__int128 *a1, __int128 *a2)
{
  v3 = *(v2 + 24);
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  v9 = *a1;
  v10 = v4;
  v7 = *a2;
  v8 = v5;
  return (*(*(v3 + 8) + 24))(&v9, &v7) & 1;
}

uint64_t sub_1D90FB680(uint64_t a1)
{
  v2 = v1;
  *(v1 + 16) = a1;
  swift_beginAccess();
  v4 = *(a1 + 80);

  [v4 lock];
  swift_beginAccess();
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  [*(a1 + 80) unlock];
  if (!(v7 >> 6))
  {
    sub_1D90FAC80(v5, v6, v7);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA850, &qword_1D91B7E08);
  swift_allocObject();
  *(v2 + 24) = sub_1D917795C();
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = *(a1 + 80);

  [v9 lock];
  sub_1D90FC2A8(v2, sub_1D90FC538, v8, a1);
  [*(a1 + 80) unlock];

  return v2;
}

uint64_t sub_1D90FB868(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    swift_beginAccess();
    [*(a1 + 80) lock];
    swift_beginAccess();
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    [*(a1 + 80) unlock];
    v7 = v6 >> 6;
    if (v6 >> 6 > 1)
    {
      if (v7 == 2)
      {
        v8 = v5;
      }

      else
      {
        v4 = 0;
        v8 = 0;
      }

      if (v7 == 2)
      {
        v9 = 1;
      }

      else
      {
        v9 = 2;
      }
    }

    else if (v7)
    {
      v9 = 0;
      v8 = v5 & 1;
    }

    else
    {
      sub_1D90FAC80(v4, v5, v6);
      v4 = 0;
      v8 = 0;
      v9 = 2;
    }

    sub_1D917790C();

    return sub_1D8D02FCC(v4, v8, v9);
  }

  return result;
}

uint64_t ModernEpisodeDownloadStateMachine.deinit()
{

  return v0;
}

uint64_t ModernEpisodeDownloadStateMachine.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t EpisodeStateController<>.modernEpisodeDownloadStateMachine(for:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA848, &qword_1D91B7CE0);
  sub_1D9178E2C();
  type metadata accessor for ModernEpisodeDownloadStateMachine();
  v1 = swift_allocObject();
  sub_1D90FB680(v3);
  return v1;
}

uint64_t EpisodeStateController<>.modernEpisodeDownloadStateMachine(for:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA848, &qword_1D91B7CE0);
  sub_1D9178E2C();
  type metadata accessor for ModernEpisodeDownloadStateMachine();
  v2 = swift_allocObject();
  sub_1D90FB680(v4);
  return v2;
}

uint64_t sub_1D90FBB68@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6DE0, &qword_1D9195250);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14 - v7;
  v9 = qword_1EDCD3488;
  swift_beginAccess();
  sub_1D8D088B4(v1 + v9, v8, &qword_1ECAB6DE0, &qword_1D9195250);
  v10 = sub_1D917734C();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_1D8D08A50(v8, &qword_1ECAB6DE0, &qword_1D9195250);
  if (qword_1EDCD0728 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v12 = qword_1EDCD0730;

  sub_1D917730C();
  (*(v11 + 16))(v5, a1, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_1D8D25E44(v5, v1 + v9);
  return swift_endAccess();
}

uint64_t sub_1D90FBDBC(unint64_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  v52 = a2;
  v53 = a3;
  v7 = sub_1D917734C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v49 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v10 = a1[3];
  if (*(v10 + 16))
  {

    v11 = sub_1D8F0712C(v52, v53, a4 & 1);
    if (v12)
    {
      v13 = *(*(v10 + 56) + 8 * v11);

      return v13;
    }
  }

  v48 = v7;
  v46 = v4;
  v47 = a4;
  sub_1D9178F5C();
  if (qword_1EDCD0728 != -1)
  {
    goto LABEL_21;
  }

LABEL_6:
  swift_beginAccess();
  v15 = *(a1 + qword_1EDCD3490);
  v14 = *(a1 + qword_1EDCD3490 + 8);
  v16 = *(a1 + qword_1EDCD3490 + 16);
  v17 = qword_1EDCD0730;
  v18 = v49;
  sub_1D90FBB68(v49);
  v43 = v14;
  v44 = v15;
  v42 = v16;
  sub_1D91772FC();

  v19 = *(v8 + 8);
  v45 = v8 + 8;
  v41 = v19;
  (v19)(v18, v48);
  v8 = a1[2];
  if (!(v8 >> 62))
  {
    v20 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v20)
    {
      goto LABEL_23;
    }

    goto LABEL_8;
  }

  v20 = sub_1D917935C();
  if (v20)
  {
LABEL_8:
    v39 = a1;
    a1 = 0;
    v50 = v8 & 0xFFFFFFFFFFFFFF8;
    v51 = v8 & 0xC000000000000001;
    v21 = v47 & 1;
    v40 = v47 & 1;
    while (1)
    {
      if (v51)
      {
        v22 = MEMORY[0x1DA72AA90](a1, v8);
        v23 = a1 + 1;
        if (__OFADD__(a1, 1))
        {
LABEL_17:
          __break(1u);
LABEL_18:
          v26 = 0;
          v27 = 0;
          v25 = 192;
LABEL_19:
          a1 = v39;
          goto LABEL_24;
        }
      }

      else
      {
        if (a1 >= *(v50 + 16))
        {
          __break(1u);
LABEL_21:
          swift_once();
          goto LABEL_6;
        }

        v22 = *(v8 + 8 * a1 + 32);

        v23 = a1 + 1;
        if (__OFADD__(a1, 1))
        {
          goto LABEL_17;
        }
      }

      v24 = v21;
      (*(v22 + 64))(&v54, v52, v53, v21);

      v25 = v56;
      v26 = v54;
      v27 = v55;
      if (v56 <= 0xFDu)
      {
        goto LABEL_19;
      }

      sub_1D90FC5B0(v54, v55, v56);
      a1 = (a1 + 1);
      v21 = v24;
      if (v23 == v20)
      {
        goto LABEL_18;
      }
    }
  }

LABEL_23:
  v26 = 0;
  v27 = 0;
  v40 = v47 & 1;
  v25 = 192;
LABEL_24:
  v28 = a1[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA848, &qword_1D91B7CE0);
  v13 = swift_allocObject();
  *(v13 + 64) = MEMORY[0x1E69E7CC0];
  v29 = objc_allocWithZone(MEMORY[0x1E696AE68]);
  sub_1D90FAC64(v26, v27, v25);

  v30 = [v29 init];
  v32 = v52;
  v31 = v53;
  *(v13 + 16) = v52;
  *(v13 + 24) = v31;
  LOBYTE(v29) = v47 & 1;
  *(v13 + 32) = v47 & 1;
  *(v13 + 40) = v26;
  *(v13 + 48) = v27;
  *(v13 + 56) = v25;
  *(v13 + 72) = v28;
  *(v13 + 80) = v30;
  swift_beginAccess();
  sub_1D8DB5EC8(v32, v31, v29);
  sub_1D8DB5EC8(v32, v31, v29);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v57 = a1[3];
  a1[3] = 0x8000000000000000;
  sub_1D8F51154(v13, v32, v31, v40, isUniquelyReferenced_nonNull_native);
  sub_1D8DB5FC8(v32, v31, v29);
  a1[3] = v57;
  swift_endAccess();
  sub_1D9178F4C();
  v34 = qword_1EDCD0730;
  v35 = v49;
  sub_1D90FBB68(v49);
  sub_1D91772FC();

  v36 = sub_1D90FAC80(v26, v27, v25);
  v41(v35, v48, v36);
  return v13;
}

uint64_t sub_1D90FC2A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_unknownObjectWeakInit();
  v14 = a2;
  v15 = a3;
  sub_1D8D088B4(v13, v12, &qword_1ECAB6058, &unk_1D91B7E10);
  swift_beginAccess();
  v7 = *(a4 + 64);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a4 + 64) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_1D8ECDC14(0, v7[2] + 1, 1, v7);
    *(a4 + 64) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = sub_1D8ECDC14((v9 > 1), v10 + 1, 1, v7);
  }

  v7[2] = v10 + 1;
  sub_1D90FC540(v12, &v7[3 * v10 + 4]);
  *(a4 + 64) = v7;
  swift_endAccess();
  return sub_1D8D08A50(v13, &qword_1ECAB6058, &unk_1D91B7E10);
}

uint64_t _s18PodcastsFoundation26ModernEpisodeDownloadStateO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if (a3 == 1)
    {
      if (a6 == 1)
      {
        if (a1 != a4 || a2 != a5)
        {
          return sub_1D9179ACC();
        }

        return 1;
      }
    }

    else if (a6 == 2 && !(a5 | a4))
    {
      return 1;
    }

    return 0;
  }

  if (a6)
  {
    return 0;
  }

  v7 = a5 ^ a2 ^ 1;
  if (*&a1 != *&a4)
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_1D90FC4A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D90FBDBC(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18PodcastsFoundation26ModernEpisodeDownloadStateO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1D90FC4F8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1D90FC540(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6058, &unk_1D91B7E10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_1D90FC5B0(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 <= 0xFDu)
  {
    return sub_1D90FAC80(a1, a2, a3);
  }

  return result;
}

uint64_t EpisodePlayState.init(positionInMilliseconds:completed:recordedDate:duration:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, double *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  if (a1)
  {
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA858, &qword_1D91B8020) + 48);
    sub_1D8E964A4(a2, a3);
    *(a3 + v7) = 0;
    type metadata accessor for EpisodePlayState(0);
  }

  else
  {
    v9 = a4 / 1000.0;
    sub_1D8D08A50(a2, &qword_1ECAB75C0, &unk_1D9188A50);
    if (v9 > 15.0)
    {
      *a3 = v9;
      a3[1] = a5;
    }

    type metadata accessor for EpisodePlayState(0);
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t static EpisodePlayState.initialState.getter()
{
  type metadata accessor for EpisodePlayState(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t static EpisodePlayState.defaultState.getter()
{
  type metadata accessor for EpisodePlayState(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t EpisodePlayState.dictionaryKey.getter()
{
  v1 = type metadata accessor for EpisodePlayState(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8D239FC(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        return 0x6C616974726170;
      }

      sub_1D8D08A50(v3, &qword_1ECAB75C0, &unk_1D9188A50);
      return 0x646579616C70;
    }

    v6 = 1684956528;
    return v6 | 0x676E6900000000;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v6 = 2036427888;
    return v6 | 0x676E6900000000;
  }

  if (EnumCaseMultiPayload == 4)
  {
    return 0x646579616C706E75;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

BOOL EpisodePlayState.isEpisodePlaying.getter()
{
  v1 = v0;
  v2 = type metadata accessor for EpisodePlayState(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v10 - v6;
  sub_1D8D239FC(v1, &v10 - v6);
  v8 = 0;
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_1D8D239FC(v7, v4);
    if (v4[16] != 1)
    {
      v8 = 1;
    }
  }

  sub_1D8D23A60(v7);
  return v8;
}

BOOL EpisodePlayState.isPending.getter()
{
  v1 = type metadata accessor for EpisodePlayState(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8D239FC(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    sub_1D8D23A60(v3);
  }

  return EnumCaseMultiPayload == 0;
}

BOOL EpisodePlayState.isEpisodePlayed.getter()
{
  v1 = type metadata accessor for EpisodePlayState(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8D239FC(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    sub_1D8D08A50(v3, &qword_1ECAB75C0, &unk_1D9188A50);
  }

  else
  {
    sub_1D8D23A60(v3);
  }

  return EnumCaseMultiPayload == 2;
}

BOOL EpisodePlayState.isEpisodePaused.getter()
{
  v1 = v0;
  v2 = type metadata accessor for EpisodePlayState(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v10 - v6;
  sub_1D8D239FC(v1, &v10 - v6);
  v8 = 0;
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_1D8D239FC(v7, v4);
    if (v4[16])
    {
      v8 = 1;
    }
  }

  sub_1D8D23A60(v7);
  return v8;
}

BOOL EpisodePlayState.isPartial.getter()
{
  v1 = type metadata accessor for EpisodePlayState(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8D239FC(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    sub_1D8D23A60(v3);
  }

  return EnumCaseMultiPayload == 1;
}

uint64_t EpisodePlayState.timeRemaining.getter()
{
  v1 = type metadata accessor for EpisodePlayState(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = (&v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D8D239FC(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (((1 << EnumCaseMultiPayload) & 0xB) != 0)
  {
    v5 = v3[1] - *v3;
    if (v5 <= 0.0)
    {
      v5 = 0.0;
    }

    return *&v5;
  }

  else
  {
    result = 0;
    if (((1 << EnumCaseMultiPayload) & 0x30) == 0)
    {
      sub_1D8D08A50(v3, &qword_1ECAB75C0, &unk_1D9188A50);
      return 0;
    }
  }

  return result;
}

uint64_t EpisodePlayState.hash(into:)(uint64_t a1)
{
  v2 = sub_1D9176E3C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27 - v10;
  v12 = type metadata accessor for EpisodePlayState(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D8D239FC(v1, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v23 = *v14;
      v24 = v14[1];
      MEMORY[0x1DA72B390](4);
      if (v23 == 0.0)
      {
        v25 = 0.0;
      }

      else
      {
        v25 = v23;
      }

      MEMORY[0x1DA72B3C0](*&v25);
      if (v24 == 0.0)
      {
        v26 = 0.0;
      }

      else
      {
        v26 = v24;
      }

      MEMORY[0x1DA72B3C0](*&v26);
      sub_1D9179DDC();
      sub_1D9179DDC();
      return sub_1D9179DDC();
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        v19 = 0;
      }

      else
      {
        v19 = 5;
      }

      return MEMORY[0x1DA72B390](v19);
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v16 = *v14;
      v17 = v14[1];
      v18 = 1;
      goto LABEL_9;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v16 = *v14;
      v17 = v14[1];
      v18 = 2;
LABEL_9:
      MEMORY[0x1DA72B390](v18);
      if (v16 == 0.0)
      {
        v20 = 0.0;
      }

      else
      {
        v20 = v16;
      }

      MEMORY[0x1DA72B3C0](*&v20);
      if (v17 == 0.0)
      {
        v21 = 0.0;
      }

      else
      {
        v21 = v17;
      }

      return MEMORY[0x1DA72B3C0](*&v21);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA858, &qword_1D91B8020);
    sub_1D8E964A4(v14, v11);
    MEMORY[0x1DA72B390](3);
    sub_1D8D088B4(v11, v8, &qword_1ECAB75C0, &unk_1D9188A50);
    if ((*(v3 + 48))(v8, 1, v2) == 1)
    {
      sub_1D9179DDC();
    }

    else
    {
      (*(v3 + 32))(v5, v8, v2);
      sub_1D9179DDC();
      sub_1D8D230C4(&qword_1ECAB88E8, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
      sub_1D917814C();
      (*(v3 + 8))(v5, v2);
    }

    sub_1D9179DDC();
    return sub_1D8D08A50(v11, &qword_1ECAB75C0, &unk_1D9188A50);
  }
}

uint64_t EpisodePlayState.hashValue.getter()
{
  sub_1D9179DBC();
  EpisodePlayState.hash(into:)(v1);
  return sub_1D9179E1C();
}

uint64_t sub_1D90FD17C(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8D239FC(v4, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        return 0x6C616974726170;
      }

      sub_1D8D08A50(v3, &qword_1ECAB75C0, &unk_1D9188A50);
      return 0x646579616C70;
    }

    v7 = 1684956528;
    return v7 | 0x676E6900000000;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v7 = 2036427888;
    return v7 | 0x676E6900000000;
  }

  if (EnumCaseMultiPayload == 4)
  {
    return 0x646579616C706E75;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t static EpisodePlayState.state(for:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23 - v8;
  if (*(a1 + 11))
  {
    v10 = type metadata accessor for EpisodePlayState(0);
    v11 = *(*(v10 - 8) + 56);
    v12 = v10;
    v13 = a2;
    v14 = 1;
LABEL_11:

    return v11(v13, v14, 1, v12);
  }

  if (*(a1 + 12) == 1)
  {
    *a2 = *(a1 + 16);
    v15 = type metadata accessor for EpisodePlayState(0);
LABEL_10:
    swift_storeEnumTagMultiPayload();
    v11 = *(*(v15 - 8) + 56);
    v13 = a2;
    v14 = 0;
    v12 = v15;
    goto LABEL_11;
  }

  if (!*(a1 + 13))
  {
    v15 = type metadata accessor for EpisodePlayState(0);
    goto LABEL_10;
  }

  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = sub_1D9176E3C();
  v19 = *(*(v18 - 8) + 56);
  v19(v9, 1, 1, v18);
  if (v16 > 0.0)
  {
    sub_1D9176CBC();
    sub_1D8D08A50(v9, &qword_1ECAB75C0, &unk_1D9188A50);
    v19(v6, 0, 1, v18);
    sub_1D8E964A4(v6, v9);
  }

  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA858, &qword_1D91B8020) + 48);
  sub_1D8E964A4(v9, a2);
  *(a2 + v20) = v17;
  v21 = type metadata accessor for EpisodePlayState(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v21 - 8) + 56))(a2, 0, 1, v21);
}

uint64_t sub_1D90FD5F0()
{
  sub_1D9179DBC();
  EpisodePlayState.hash(into:)(v1);
  return sub_1D9179E1C();
}

uint64_t sub_1D90FD634(uint64_t a1)
{
  sub_1D9179DBC();
  EpisodePlayState.hash(into:)(v2);
  return sub_1D9179E1C();
}

uint64_t _s18PodcastsFoundation16EpisodePlayStateO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9176E3C();
  v53 = *(v4 - 8);
  v54 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v50 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v51 = &v49 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75B8, &qword_1D9197C80);
  MEMORY[0x1EEE9AC00](v8);
  v52 = &v49 - v9;
  v10 = type metadata accessor for EpisodePlayState(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v49 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v49 - v17);
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v49 - v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA860, &unk_1D91B7EF0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v49 - v23;
  v26 = (&v49 + *(v25 + 56) - v23);
  sub_1D8D239FC(a1, &v49 - v23);
  sub_1D8D239FC(a2, v26);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_1D8D239FC(v24, v18);
        v28 = v18[1];
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v29 = *v18;
          goto LABEL_12;
        }

        goto LABEL_27;
      }

      sub_1D8D239FC(v24, v15);
      v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA858, &qword_1D91B8020) + 48);
      v38 = v15[v37];
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        sub_1D8D08A50(v15, &qword_1ECAB75C0, &unk_1D9188A50);
        goto LABEL_27;
      }

      v39 = *(v26 + v37);
      v40 = *(v8 + 48);
      v41 = v52;
      sub_1D8E964A4(v15, v52);
      sub_1D8E964A4(v26, v41 + v40);
      v43 = v53;
      v42 = v54;
      v44 = *(v53 + 48);
      if (v44(v41, 1, v54) == 1)
      {
        if (v44(v41 + v40, 1, v42) == 1)
        {
          sub_1D8D08A50(v41, &qword_1ECAB75C0, &unk_1D9188A50);
LABEL_34:
          v36 = v38 ^ v39;
          goto LABEL_35;
        }
      }

      else
      {
        v45 = v51;
        sub_1D8D088B4(v41, v51, &qword_1ECAB75C0, &unk_1D9188A50);
        if (v44(v41 + v40, 1, v42) != 1)
        {
          v46 = v50;
          (*(v43 + 32))(v50, v41 + v40, v42);
          sub_1D8D230C4(&qword_1ECAB75C8, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
          v47 = sub_1D91781BC();
          v48 = *(v43 + 8);
          v48(v46, v42);
          v48(v45, v42);
          sub_1D8D08A50(v41, &qword_1ECAB75C0, &unk_1D9188A50);
          if (v47)
          {
            goto LABEL_34;
          }

LABEL_31:
          sub_1D8D23A60(v24);
          return 0;
        }

        (*(v43 + 8))(v45, v42);
      }

      sub_1D8D08A50(v41, &qword_1ECAB75B8, &qword_1D9197C80);
      goto LABEL_31;
    }

    sub_1D8D239FC(v24, v21);
    v28 = v21[1];
    if (!swift_getEnumCaseMultiPayload())
    {
      v29 = *v21;
LABEL_12:
      if (v29 == *v26)
      {
        v30 = v28 == v26[1];
        sub_1D8D23A60(v24);
        return v30;
      }

      goto LABEL_31;
    }

LABEL_27:
    sub_1D8D08A50(v24, &qword_1ECABA860, &unk_1D91B7EF0);
    return 0;
  }

  if (EnumCaseMultiPayload != 3)
  {
    if (EnumCaseMultiPayload == 4)
    {
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_27;
      }
    }

    else if (swift_getEnumCaseMultiPayload() != 5)
    {
      goto LABEL_27;
    }

    sub_1D8D23A60(v24);
    return 1;
  }

  sub_1D8D239FC(v24, v12);
  v32 = v12[1];
  v33 = *(v12 + 16);
  v34 = *(v12 + 17);
  v35 = *(v12 + 18);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    goto LABEL_27;
  }

  if (*v12 != *v26 || v32 != v26[1] || v33 != *(v26 + 16) || v34 != *(v26 + 17))
  {
    goto LABEL_31;
  }

  v36 = v35 ^ *(v26 + 18);
LABEL_35:
  sub_1D8D23A60(v24);
  return v36 ^ 1u;
}

uint64_t EpisodePlayStateRule<>.eraseToAnyEpisodePlayStateRule()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)()@<X8>)
{
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v3, a1, v7);
  return sub_1D90FDDBC(v9, a1, a2, a3);
}

uint64_t sub_1D90FDDBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v8 = *(a2 - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  result = (*(v8 + 32))(v10 + v9, a1, a2);
  *a4 = sub_1D90FE40C;
  a4[1] = v10;
  return result;
}

unint64_t sub_1D90FDEFC(uint64_t a1)
{
  result = sub_1D90FDF24();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D90FDF24()
{
  result = qword_1ECABA868;
  if (!qword_1ECABA868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA868);
  }

  return result;
}

unint64_t sub_1D90FDF78(uint64_t a1)
{
  result = sub_1D90FDFA0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D90FDFA0()
{
  result = qword_1ECABA870;
  if (!qword_1ECABA870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA870);
  }

  return result;
}

BOOL sub_1D90FE004(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EpisodePlayState(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12 - v8;
  sub_1D8D239FC(a2, &v12 - v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    swift_storeEnumTagMultiPayload();
    _s18PodcastsFoundation16EpisodePlayStateO2eeoiySbAC_ACtFZ_0(a1, v6);
    v9 = v6;
  }

  sub_1D8D23A60(v9);
  return EnumCaseMultiPayload == 3;
}

BOOL sub_1D90FE100(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EpisodePlayState(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12 - v8;
  sub_1D8D239FC(a2, &v12 - v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    sub_1D8CF5EF8(v9);
    swift_storeEnumTagMultiPayload();
    _s18PodcastsFoundation16EpisodePlayStateO2eeoiySbAC_ACtFZ_0(a1, v6);
    v9 = v6;
  }

  sub_1D8D23A60(v9);
  return EnumCaseMultiPayload == 2;
}

BOOL sub_1D90FE204(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EpisodePlayState(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12 - v8;
  sub_1D8D239FC(a2, &v12 - v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    swift_storeEnumTagMultiPayload();
    _s18PodcastsFoundation16EpisodePlayStateO2eeoiySbAC_ACtFZ_0(a1, v6);
    v9 = v6;
  }

  sub_1D8D23A60(v9);
  return EnumCaseMultiPayload == 1;
}

BOOL sub_1D90FE300(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EpisodePlayState(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12 - v8;
  sub_1D8D239FC(a2, &v12 - v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1D8D23A60(v9);
  if (EnumCaseMultiPayload == 4)
  {
    swift_storeEnumTagMultiPayload();
    _s18PodcastsFoundation16EpisodePlayStateO2eeoiySbAC_ACtFZ_0(a1, v6);
    sub_1D8D23A60(v6);
  }

  return EnumCaseMultiPayload == 4;
}

char *EpisodeStateController.__allocating_init(dataSources:transitionRules:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_1D8D1F120(a1, a2);

  return v4;
}

uint64_t sub_1D90FE4F4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D90FE8DC(a1);
  }

  return result;
}

uint64_t sub_1D90FE554(uint64_t a1)
{
  if (qword_1EDCD0728 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = qword_1EDCD0730;

  return sub_1D917730C();
}

uint64_t sub_1D90FE5F8(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 80);
  v6 = *(v5 - 8);
  v20 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v19 - v7;
  v27 = v2[2];
  v21 = v5;
  v22 = *(v9 + 88);
  v23 = *(v9 + 96);
  v24 = a1;
  v25 = a2;
  v11 = v10 & 1;
  v26 = v10 & 1;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for AnyEpisodeStateDataSource(255, v5, AssociatedConformanceWitness, v13);
  sub_1D91786FC();

  swift_getWitnessTable();
  v14 = sub_1D917843C();

  sub_1D8DB5634(a1, a2, v11);
  v15 = 0;
  while (1)
  {
    if (v15 == sub_1D91786AC())
    {
      goto LABEL_11;
    }

    v16 = sub_1D917868C();
    sub_1D917862C();
    if (v16)
    {
      (*(v6 + 16))(v8, v14 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15, v5);
      if (__OFADD__(v15, 1))
      {
        goto LABEL_10;
      }

      goto LABEL_5;
    }

    result = sub_1D91794BC();
    if (v20 != 8)
    {
      break;
    }

    v27 = result;
    (*(v6 + 16))(v8, &v27, v5);
    swift_unknownObjectRelease();
    if (__OFADD__(v15, 1))
    {
LABEL_10:
      __break(1u);
LABEL_11:
    }

LABEL_5:
    v17 = sub_1D90FF5CC(v8);
    (*(v6 + 8))(v8, v5);
    ++v15;
    if (v17)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void sub_1D90FE8DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 48);
    do
    {
      v3 = *(v2 - 2);
      v4 = *(v2 - 1);
      v5 = *v2;
      v2 += 24;
      sub_1D8DB5EC8(v3, v4, v5);
      sub_1D90FE5F8(v3, v4);
      sub_1D8DB5FC8(v3, v4, v5);
      --v1;
    }

    while (v1);
  }
}

uint64_t EpisodeStateController.deinit()
{

  sub_1D8D25DDC(v0 + qword_1EDCD3488);
  return v0;
}

uint64_t EpisodeStateController.__deallocating_deinit()
{
  EpisodeStateController.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D90FEAB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_1D8D1ED18(a1, a2, a3);
  return v6;
}

uint64_t sub_1D90FEB08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_projectBox();
  swift_beginAccess();
  v6 = (*(a4 + 32))(a3, a4);
  swift_endAccess();
  return v6;
}

uint64_t sub_1D90FEB88@<X0>(uint64_t (**a1)()@<X8>)
{
  result = sub_1D90FECA0();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_1D90FF138;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_1D90FEBF8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1D90FF130;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_1D8D1F93C(v1, v2);
  sub_1D8D1F7DC(v4, v3);

  return sub_1D8D15664(v4, v3);
}

uint64_t sub_1D90FECA0()
{
  v0 = sub_1D8D1F840();

  v2 = v0(v1);

  return v2;
}

uint64_t sub_1D90FECF8(uint64_t a1, uint64_t a2)
{
  sub_1D8D1F7DC(a1, a2);

  return sub_1D8D15664(a1, a2);
}

uint64_t (*sub_1D90FED40(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1D90FECA0();
  a1[1] = v3;
  return sub_1D90FED88;
}

uint64_t sub_1D90FED88(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a1;
  if (a2)
  {
    sub_1D8D1F93C(v4, v3);
    sub_1D8D1F7DC(v2, v3);
    sub_1D8D15664(v2, v3);
  }

  else
  {
    sub_1D8D1F7DC(v4, v3);
  }

  return sub_1D8D15664(v2, v3);
}

uint64_t AnyEpisodeStateDataSource.deinit()
{

  return v0;
}

uint64_t AnyEpisodeStateDataSource.__deallocating_deinit()
{
  AnyEpisodeStateDataSource.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D90FEEC0(uint64_t a1, uint64_t a2)
{
  sub_1D8D1F7DC(a1, a2);

  return sub_1D8D15664(a1, a2);
}

uint64_t (*sub_1D90FEF0C(uint64_t **a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1D90FED40(v2);
  return sub_1D90FEF80;
}

void sub_1D90FEF80(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t static EpisodeStateIdentifier.== infix(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, int a6)
{
  if ((a3 & 1) == 0)
  {
    return (a1 == a4) & ~a6;
  }

  if ((a6 & 1) == 0)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  return sub_1D9179ACC();
}

uint64_t EpisodeStateIdentifier.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    MEMORY[0x1DA72B390](1);

    return _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    MEMORY[0x1DA72B390](0, a2, a3);
    return MEMORY[0x1DA72B3C0](a2);
  }
}

uint64_t EpisodeStateIdentifier.hashValue.getter(uint64_t a1, uint64_t a2, char a3)
{
  sub_1D9179DBC();
  if (a3)
  {
    MEMORY[0x1DA72B390](1);
    _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    MEMORY[0x1DA72B390](0);
    MEMORY[0x1DA72B3C0](a1);
  }

  return sub_1D9179E1C();
}

uint64_t sub_1D90FF29C()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  sub_1D9179DBC();
  if (v2 == 1)
  {
    MEMORY[0x1DA72B390](1);
    _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    MEMORY[0x1DA72B390](0);
    MEMORY[0x1DA72B3C0](v1);
  }

  return sub_1D9179E1C();
}

uint64_t sub_1D90FF324(uint64_t a1)
{
  v2 = *v1;
  if (*(v1 + 16) == 1)
  {
    MEMORY[0x1DA72B390](1);

    return _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    MEMORY[0x1DA72B390](0);
    return MEMORY[0x1DA72B3C0](v2);
  }
}

uint64_t sub_1D90FF3AC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 112);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 40))(v1 + v4, a1);
  return swift_endAccess();
}

double sub_1D90FF454(uint64_t a1)
{
  v3 = *(*v1 + 120);
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t sub_1D90FF4D4()
{
  sub_1D8DB7FB4();

  return swift_unknownObjectRetain();
}

uint64_t sub_1D90FF4FC(uint64_t a1)
{
  v3 = *(*v1 + 136);
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_1D90FF5CC(uint64_t a1)
{
  v2 = *v1;
  v5[3] = a1;
  v3 = type metadata accessor for EpisodeStateMachine(0, v2[10], v2[11], v2[12]);
  Lockable.locked<A>(perform:)(sub_1D9100DD0, v5, v3, MEMORY[0x1E69E6370], &protocol witness table for EpisodeStateMachine<A, B>);
  return v6;
}

uint64_t sub_1D90FF688@<X0>(uint64_t a1@<X0>, void (*a2)(void, void, void)@<X1>, char *a3@<X8>)
{
  v89 = a3;
  v5 = *a1;
  v6 = sub_1D917744C();
  v77 = *(v6 - 8);
  v78 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v76 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v5[11];
  v9 = sub_1D91791BC();
  isa = v9[-1].isa;
  v80 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v84 = &v75 - v10;
  v88 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v82 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v86 = &v75 - v14;
  v15 = v5[10];
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v81 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v75 - v20;
  sub_1D8DB8144(&v75 - v20);
  v22 = v5[12];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v90 = a2;
  v24 = sub_1D91781BC();
  v85 = v16;
  v26 = *(v16 + 8);
  v25 = v16 + 8;
  v87 = v21;
  v83 = v26;
  result = (v26)(v21, v15);
  if (v24)
  {
    v28 = 1;
    goto LABEL_8;
  }

  v75 = v25;
  v94 = (*(AssociatedConformanceWitness + 32))(v15, AssociatedConformanceWitness);
  v95 = v29;
  v30 = v84;
  sub_1D91780FC();

  v31 = v88;
  if ((*(v88 + 48))(v30, 1, v8) == 1)
  {
    (*(isa + 1))(v30, v80);
    v32 = v90;
LABEL_7:
    v40 = v87;
    (*(v85 + 16))(v87, v32, v15);
    sub_1D90FF3AC(v40);
    result = sub_1D910017C();
    v28 = 1;
    goto LABEL_8;
  }

  v33 = v86;
  (*(v31 + 32))(v86, v30, v8);
  v34 = v87;
  sub_1D8DB8144(v87);
  v35 = v15;
  v36 = v90;
  v37 = (*(v22 + 24))(v34, v90, v8, v22);
  v38 = v34;
  v39 = v35;
  v83(v38, v35);
  if (v37)
  {
    (*(v31 + 8))(v33, v8);
    v32 = v36;
    v15 = v35;
    goto LABEL_7;
  }

  if (qword_1ECAAFC40 != -1)
  {
    swift_once();
  }

  v41 = v78;
  v42 = __swift_project_value_buffer(v78, qword_1ECAAFC48);
  swift_beginAccess();
  v43 = v77;
  v44 = v76;
  (*(v77 + 16))(v76, v42, v41);
  v45 = v90;
  v46 = v39;
  v90 = *(v85 + 16);
  v90(v81, v45, v39);
  (*(v88 + 16))(v82, v86, v8);

  v47 = sub_1D917741C();
  v48 = sub_1D9178CEC();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    v96 = v85;
    *v49 = 136315906;
    v50 = *(a1 + 24);
    v51 = *(a1 + 32);
    DynamicType = *(a1 + 16);
    v92 = v50;
    v93 = v51;
    sub_1D8DB5EC8(DynamicType, v50, v51);
    v52 = sub_1D917826C();
    LODWORD(v84) = v48;
    v54 = v8;
    v55 = sub_1D8CFA924(v52, v53, &v96);

    *(v49 + 4) = v55;
    *(v49 + 12) = 2080;
    v80 = v47;
    v56 = v87;
    sub_1D8DB8144(v87);
    v57 = sub_1D917826C();
    v59 = sub_1D8CFA924(v57, v58, &v96);

    *(v49 + 14) = v59;
    *(v49 + 22) = 2080;
    v60 = v81;
    v90(v56, v81, v46);
    v61 = sub_1D917826C();
    v62 = v46;
    v64 = v63;
    v83(v60, v62);
    v65 = sub_1D8CFA924(v61, v64, &v96);

    *(v49 + 24) = v65;
    *(v49 + 32) = 2080;
    v66 = v82;
    DynamicType = swift_getDynamicType();
    swift_getMetatypeMetadata();
    v67 = sub_1D917826C();
    v69 = v68;
    v70 = *(v88 + 8);
    v70(v66, v54);
    v71 = sub_1D8CFA924(v67, v69, &v96);

    *(v49 + 34) = v71;
    v72 = v80;
    _os_log_impl(&dword_1D8CEC000, v80, v84, "Denied state change for %s: %s -> %s, rule: %s", v49, 0x2Au);
    v73 = v85;
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v73, -1, -1);
    MEMORY[0x1DA72CB90](v49, -1, -1);

    (*(v77 + 8))(v76, v78);
    result = (v70)(v86, v54);
  }

  else
  {

    v83(v81, v46);
    (*(v43 + 8))(v44, v41);
    v74 = *(v88 + 8);
    v74(v86, v8);
    result = (v74)(v82, v8);
  }

  v28 = 0;
LABEL_8:
  *v89 = v28;
  return result;
}

uint64_t sub_1D90FFF2C(uint64_t a1)
{
  v2 = *v1;
  v5[3] = a1;
  v3 = type metadata accessor for EpisodeStateMachine(0, v2[10], v2[11], v2[12]);
  return Lockable.locked<A>(perform:)(sub_1D9100DEC, v5, v3, MEMORY[0x1E69E7CA8] + 8, &protocol witness table for EpisodeStateMachine<A, B>);
}

double sub_1D90FFFE4(uint64_t **a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  type metadata accessor for StateMachineChangeObserverAction(255, v2[10], v2[11], v2[12]);
  sub_1D91786FC();

  swift_getWitnessTable();
  v3 = sub_1D917958C();
  return sub_1D90FF454(v3);
}

uint64_t sub_1D9100118(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_unknownObjectRelease();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      swift_unknownObjectRelease();
      return v5 != a2;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1D910017C()
{
  v1 = sub_1D9177E0C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D9177E9C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8CFD888();
  v9 = sub_1D9178E1C();
  aBlock[4] = sub_1D910104C;
  v13 = v0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_87;
  v10 = _Block_copy(aBlock);

  sub_1D9177E4C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D8D123F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8D1D5B0();
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v8, v4, v10);
  _Block_release(v10);

  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1D91003EC(uint64_t a1)
{
  v2 = type metadata accessor for EpisodeStateMachine(0, *(*a1 + 80), *(*a1 + 88), *(*a1 + 96));
  Lockable.locked<A>(perform:)(sub_1D9101054, a1, v2, MEMORY[0x1E69E7CA8] + 8, &protocol witness table for EpisodeStateMachine<A, B>);
  swift_getWitnessTable();
  sub_1D917788C();
  sub_1D917798C();
}

void sub_1D91004E4(uint64_t **a1)
{
  v2 = *a1;
  v3 = (*a1)[15];
  swift_beginAccess();
  v4 = *(a1 + v3);
  v5 = type metadata accessor for StateMachineChangeObserverAction(0, v2[10], v2[11], v2[12]);

  if (sub_1D91786AC())
  {
    v6 = 0;
    v7 = v4 + 32;
    while (1)
    {
      v8 = sub_1D917868C();
      sub_1D917862C();
      if ((v8 & 1) == 0)
      {
        break;
      }

      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_10;
      }

      v10 = *(v5 - 8);
      (*(v10 + 16))(v14, v7, v5);
      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        v15(a1);
      }

      (*(v10 + 8))(v14, v5);
      ++v6;
      v7 += 24;
      if (v9 == sub_1D91786AC())
      {
        goto LABEL_8;
      }
    }

    sub_1D91794BC();
    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
LABEL_8:

    v11 = (*a1)[15];
    v12 = swift_beginAccess();
    v16 = *(a1 + v11);
    MEMORY[0x1EEE9AC00](v12);
    sub_1D91786FC();

    swift_getWitnessTable();
    v13 = sub_1D917958C();
    sub_1D90FF454(v13);
  }
}

uint64_t *EpisodeStateMachine.deinit()
{
  v1 = *v0;
  v2 = sub_1D8DB5FC8(v0[2], v0[3], *(v0 + 32));
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 112), v2);

  swift_unknownObjectRelease();
  return v0;
}

uint64_t EpisodeStateMachine.__deallocating_deinit()
{
  EpisodeStateMachine.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D91008E0@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X8>)
{
  type metadata accessor for EpisodeStateMachine(0, a1[10], a1[11], a1[12]);
  result = sub_1D917788C();
  *a3 = result;
  return result;
}

uint64_t sub_1D9100928(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (!a2)
  {
LABEL_15:
    v9 = MEMORY[0x1E69E7CD0];
    goto LABEL_16;
  }

  v8 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v9 = MEMORY[0x1E69E7CD0];
  if (!v8)
  {
LABEL_16:
    if (a4)
    {
      return v9;
    }

    goto LABEL_37;
  }

  sub_1D9179DBC();
  MEMORY[0x1DA72B390](1);

  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  v10 = sub_1D9179E1C();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v12))
  {
    v13 = ~v11;
    v14 = *(v9 + 48);
    while (1)
    {
      v15 = v14 + 24 * v12;
      if (*(v15 + 16) == 1)
      {
        v16 = *v15 == a1 && *(v15 + 8) == a2;
        if (v16 || (sub_1D9179ACC() & 1) != 0)
        {
          break;
        }
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v12) & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    goto LABEL_15;
  }

LABEL_18:
  result = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(v9 + 16);
  if (*(v9 + 24) <= v18)
  {
    if (result)
    {
      sub_1D8EFD2E0(v18 + 1);
    }

    else
    {
      sub_1D8F01E58(v18 + 1);
    }

    sub_1D9179DBC();
    MEMORY[0x1DA72B390](1);
    _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
    result = sub_1D9179E1C();
    v19 = -1 << *(v9 + 32);
    v12 = result & ~v19;
    if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
    {
      v20 = ~v19;
      v21 = *(v9 + 48);
      do
      {
        v22 = v21 + 24 * v12;
        if (*(v22 + 16) == 1)
        {
          if (*v22 == a1 && *(v22 + 8) == a2)
          {
            goto LABEL_56;
          }

          result = sub_1D9179ACC();
          if (result)
          {
            goto LABEL_56;
          }
        }

        v12 = (v12 + 1) & v20;
      }

      while (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
    }
  }

  else if (result)
  {
    v9 = MEMORY[0x1E69E7CD0];
  }

  else
  {
    result = sub_1D8F007E0();
  }

  *(v9 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v12;
  v24 = *(v9 + 48) + 24 * v12;
  *v24 = a1;
  *(v24 + 8) = a2;
  *(v24 + 16) = 1;
  v25 = *(v9 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (v26)
  {
    __break(1u);
    goto LABEL_61;
  }

  *(v9 + 16) = v27;
  if (a4)
  {
    return v9;
  }

LABEL_37:
  if (!a3 || a3 == 1000000000000)
  {
    return v9;
  }

  sub_1D9179DBC();
  MEMORY[0x1DA72B390](0);
  MEMORY[0x1DA72B3C0](a3);
  v28 = sub_1D9179E1C();
  v29 = -1 << *(v9 + 32);
  a4 = v28 & ~v29;
  if ((*(v9 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v30 = ~v29;
    do
    {
      v31 = *(v9 + 48) + 24 * a4;
      if ((*(v31 + 16) & 1) == 0 && *v31 == a3)
      {
        return v9;
      }

      a4 = (a4 + 1) & v30;
    }

    while (((*(v9 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  v32 = *(v9 + 16);
  if (*(v9 + 24) > v32)
  {
    if ((result & 1) == 0)
    {
      result = sub_1D8F007E0();
    }

    goto LABEL_57;
  }

  if (result)
  {
    sub_1D8EFD2E0(v32 + 1);
  }

  else
  {
    sub_1D8F01E58(v32 + 1);
  }

  sub_1D9179DBC();
  MEMORY[0x1DA72B390](0);
  MEMORY[0x1DA72B3C0](a3);
  result = sub_1D9179E1C();
  v33 = -1 << *(v9 + 32);
  a4 = result & ~v33;
  if ((*(v9 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v34 = ~v33;
    while (1)
    {
      v35 = *(v9 + 48) + 24 * a4;
      if ((*(v35 + 16) & 1) == 0 && *v35 == a3)
      {
        break;
      }

      a4 = (a4 + 1) & v34;
      if (((*(v9 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) == 0)
      {
        goto LABEL_57;
      }
    }

LABEL_56:
    result = sub_1D9179CEC();
    __break(1u);
  }

LABEL_57:
  *(v9 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << a4;
  v36 = *(v9 + 48) + 24 * a4;
  *v36 = a3;
  *(v36 + 8) = 0;
  *(v36 + 16) = 0;
  v37 = *(v9 + 16);
  v26 = __OFADD__(v37, 1);
  v38 = v37 + 1;
  if (!v26)
  {
    *(v9 + 16) = v38;
    return v9;
  }

LABEL_61:
  __break(1u);
  return result;
}

uint64_t dispatch thunk of static EpisodeState.state(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 40))(a1, a2);
}

{
  return (*(a3 + 48))(a1, a2);
}

uint64_t sub_1D9100E80(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D9100EC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_1D9101010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

BOOL sub_1D9101070(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    swift_unknownObjectRelease();
  }

  return Strong != 0;
}

uint64_t InterestState.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x4C74736567677573;
  v2 = 0x657469726F766166;
  if (a1 != 2)
  {
    v2 = 0x6E776F6E6B6E75;
  }

  if (a1)
  {
    v1 = 0x6C61727475656ELL;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D910115C(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEB00000000737365;
  v3 = 0x4C74736567677573;
  v4 = *a1;
  v5 = 0x657469726F766166;
  v6 = 0xE900000000000064;
  v7 = 0xE700000000000000;
  if (v4 != 2)
  {
    v5 = 0x6E776F6E6B6E75;
    v6 = 0xE700000000000000;
  }

  v8 = 0x6C61727475656ELL;
  if (!*a1)
  {
    v8 = 0x4C74736567677573;
    v7 = 0xEB00000000737365;
  }

  if (*a1 <= 1u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (v4 <= 1)
  {
    v10 = v7;
  }

  else
  {
    v10 = v6;
  }

  v11 = 0x657469726F766166;
  v12 = 0xE900000000000064;
  if (*a2 != 2)
  {
    v11 = 0x6E776F6E6B6E75;
    v12 = 0xE700000000000000;
  }

  if (*a2)
  {
    v3 = 0x6C61727475656ELL;
    v2 = 0xE700000000000000;
  }

  if (*a2 <= 1u)
  {
    v13 = v3;
  }

  else
  {
    v13 = v11;
  }

  if (*a2 <= 1u)
  {
    v14 = v2;
  }

  else
  {
    v14 = v12;
  }

  if (v9 == v13 && v10 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_1D9179ACC();
  }

  return v15 & 1;
}

unint64_t sub_1D91012A4@<X0>(Swift::String *a1@<X0>, PodcastsFoundation::InterestState_optional *a2@<X8>)
{
  result = _s18PodcastsFoundation13InterestStateO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

void sub_1D91012D4(uint64_t *a1@<X8>)
{
  v2 = 0xEB00000000737365;
  v3 = 0x4C74736567677573;
  v4 = 0xE900000000000064;
  v5 = 0x657469726F766166;
  if (*v1 != 2)
  {
    v5 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 0x6C61727475656ELL;
    v2 = 0xE700000000000000;
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

uint64_t sub_1D910135C()
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

double sub_1D9101428(uint64_t a1)
{
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return result;
}

uint64_t sub_1D91014E0(uint64_t a1)
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

unint64_t _s18PodcastsFoundation13InterestStateO8rawValueACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D917980C();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D91015F8()
{
  result = qword_1ECABA888;
  if (!qword_1ECABA888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA888);
  }

  return result;
}

void *InterestStateController.__allocating_init(dataSource:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = sub_1D8E27A78(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA890, &unk_1D91B8510);
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  *(v6 + 16) = v5;
  v4[4] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECABA7C0, &unk_1D918C0E0);
  v7 = swift_allocObject();
  *(v7 + 20) = 0;
  *(v7 + 16) = 0;
  v4[5] = v7;
  v4[2] = a1;
  v4[3] = a2;
  return v4;
}

void *InterestStateController.init(dataSource:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_1D8E27A78(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA890, &unk_1D91B8510);
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  *(v6 + 16) = v5;
  v2[4] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECABA7C0, &unk_1D918C0E0);
  v7 = swift_allocObject();
  *(v7 + 20) = 0;
  *(v7 + 16) = 0;
  v2[5] = v7;
  v2[2] = a1;
  v2[3] = a2;
  return v2;
}

uint64_t InterestStateController.stateMachine(for:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 40);
  os_unfair_lock_lock((v4 + 20));
  v5 = *(v4 + 16);
  *(v4 + 16) = 1;
  os_unfair_lock_unlock((v4 + 20));
  if ((v5 & 1) == 0)
  {
    v6 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 24);
    v9 = swift_unknownObjectRetain();
    v8(v9, &protocol witness table for InterestStateController, ObjectType, v6);
    (*(v6 + 8))(ObjectType, v6);
  }

  v10 = *(v2 + 32);
  os_unfair_lock_lock((v10 + 24));
  sub_1D910189C((v10 + 16), a1, v2, &v12);
  os_unfair_lock_unlock((v10 + 24));
  return v12;
}

uint64_t sub_1D910189C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *a1;
  if (*(*a1 + 16) && (v9 = sub_1D8D1AC44(a2), (v10 & 1) != 0))
  {
    *a4 = *(*(v8 + 56) + 8 * v9);
  }

  else
  {
    v12 = *(a3 + 24);
    ObjectType = swift_getObjectType();
    v14 = (*(v12 + 40))(a2, ObjectType, v12);
    if (v14 == 4)
    {
      v15 = 3;
    }

    else
    {
      v15 = v14;
    }

    type metadata accessor for InterestStateMachine();
    v16 = swift_allocObject();
    v17 = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
    *(v16 + 40) = MEMORY[0x1E69E7CC0];
    *(v16 + 16) = v17;
    *(v16 + 24) = a2;
    *(v16 + 32) = v15;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *a1;
    result = sub_1D8F512B4(v16, a2, isUniquelyReferenced_nonNull_native);
    *a1 = v19;
    *a4 = v16;
  }

  return result;
}

uint64_t sub_1D91019CC(uint64_t a1)
{
  v2 = v1;
  v4 = v1[3];
  ObjectType = swift_getObjectType();
  result = (*(v4 + 40))(a1, ObjectType, v4);
  if (result != 4)
  {
    v7 = result;
    v8 = v1[5];
    os_unfair_lock_lock((v8 + 20));
    v9 = *(v8 + 16);
    *(v8 + 16) = 1;
    os_unfair_lock_unlock((v8 + 20));
    if ((v9 & 1) == 0)
    {
      v10 = *(v4 + 24);
      v11 = swift_unknownObjectRetain();
      v10(v11, &protocol witness table for InterestStateController, ObjectType, v4);
      (*(v4 + 8))(ObjectType, v4);
    }

    v12 = v1[4];
    os_unfair_lock_lock((v12 + 24));
    sub_1D910189C((v12 + 16), a1, v2, v26);
    os_unfair_lock_unlock((v12 + 24));
    v13 = v26[0];
    swift_beginAccess();
    [*(v13 + 16) lock];
    if ((sub_1D8FDCBC4(*(v13 + 32), v7) & 1) == 0)
    {
      *(v13 + 32) = v7;
      sub_1D91020E8();
    }

    [*(v13 + 16) unlock];
    if (qword_1ECAB0BF0 != -1)
    {
      swift_once();
    }

    v14 = sub_1D917744C();
    __swift_project_value_buffer(v14, qword_1ECAB0BF8);
    v15 = sub_1D917741C();
    v16 = sub_1D9178D1C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v25 = v18;
      *v17 = 136315394;
      sub_1D8E40A10();
      v19 = sub_1D9179A4C();
      v21 = sub_1D8CFA924(v19, v20, &v25);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2080;
      if (v7 > 1u)
      {
        if (v7 == 2)
        {
          v22 = 0xE900000000000064;
          v23 = 0x657469726F766166;
        }

        else
        {
          v22 = 0xE700000000000000;
          v23 = 0x6E776F6E6B6E75;
        }
      }

      else if (v7)
      {
        v22 = 0xE700000000000000;
        v23 = 0x6C61727475656ELL;
      }

      else
      {
        v22 = 0xEB00000000737365;
        v23 = 0x4C74736567677573;
      }

      v24 = sub_1D8CFA924(v23, v22, &v25);

      *(v17 + 14) = v24;
      _os_log_impl(&dword_1D8CEC000, v15, v16, "Successfully transition interest with adamID %s to %s state.", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v18, -1, -1);
      MEMORY[0x1DA72CB90](v17, -1, -1);
    }
  }

  return result;
}

Swift::Void __swiftcall InterestStateController.refreshStates(for:)(Swift::OpaquePointer a1)
{
  v1 = *(a1._rawValue + 2);
  if (v1)
  {
    v2 = (a1._rawValue + 32);
    do
    {
      v3 = *v2++;
      sub_1D91019CC(v3);
      --v1;
    }

    while (v1);
  }
}

uint64_t InterestStateController.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t InterestStateController.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1D9101DD0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 32);
    do
    {
      v3 = *v2++;
      result = sub_1D91019CC(v3);
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t InterestStateMachine.__allocating_init(identifier:initialState:)(uint64_t a1, char a2)
{
  v4 = swift_allocObject();
  v5 = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
  *(v4 + 40) = MEMORY[0x1E69E7CC0];
  *(v4 + 16) = v5;
  *(v4 + 24) = a1;
  *(v4 + 32) = a2;
  return v4;
}

Swift::Bool __swiftcall InterestStateMachine.transition(to:)(PodcastsFoundation::InterestState to)
{
  swift_beginAccess();
  [*(v1 + 16) lock];
  if ((sub_1D8FDCBC4(*(v1 + 32), to) & 1) == 0)
  {
    *(v1 + 32) = to;
    sub_1D91020E8();
  }

  [*(v1 + 16) unlock];
  return 1;
}

uint64_t InterestStateMachine.lock.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
  return swift_unknownObjectRelease();
}

uint64_t InterestStateMachine.currentState.getter()
{
  swift_beginAccess();
  [*(v0 + 16) lock];
  v1 = *(v0 + 32);
  [*(v0 + 16) unlock];
  return v1;
}

uint64_t InterestStateMachine.init(identifier:initialState:)(uint64_t a1, char a2)
{
  v5 = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
  *(v2 + 40) = MEMORY[0x1E69E7CC0];
  *(v2 + 16) = v5;
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return v2;
}

uint64_t sub_1D91020E8()
{
  v1 = sub_1D9177E0C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D9177E9C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8CFD888();
  v9 = sub_1D9178E1C();
  aBlock[4] = sub_1D9102C3C;
  v13 = v0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_88;
  v10 = _Block_copy(aBlock);

  sub_1D9177E4C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D8CFBEC8(&qword_1EDCD7B90, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8D1D5B0();
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v8, v4, v10);
  _Block_release(v10);

  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

id InterestStateMachine.addStateTransitionObserver(_:action:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  [*(v3 + 16) lock];
  swift_unknownObjectWeakInit();
  v13 = a2;
  v14 = a3;
  sub_1D9102AEC(v12, v11);
  swift_beginAccess();
  v6 = *(v3 + 40);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 40) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_1D8ECDDA4(0, v6[2] + 1, 1, v6);
    *(v3 + 40) = v6;
  }

  v9 = v6[2];
  v8 = v6[3];
  if (v9 >= v8 >> 1)
  {
    v6 = sub_1D8ECDDA4((v8 > 1), v9 + 1, 1, v6);
  }

  v6[2] = v9 + 1;
  sub_1D9102B74(v11, &v6[3 * v9 + 4]);
  *(v3 + 40) = v6;
  swift_endAccess();
  sub_1D9102BAC(v12);
  return [*(v3 + 16) unlock];
}

void InterestStateMachine.removeStateTransitionActions(for:)(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  [*(v1 + 16) lock];
  swift_beginAccess();
  v4 = *(v1 + 40);
  v5 = *(v4 + 16);

  if (v5)
  {
    v6 = 0;
    v7 = v4 + 32;
    v8 = MEMORY[0x1E69E7CC0];
    while (v6 < *(v4 + 16))
    {
      sub_1D9102AEC(v7, v15);
      if (!swift_unknownObjectWeakLoadStrong() || (swift_unknownObjectRelease(), (Strong = swift_unknownObjectWeakLoadStrong()) != 0) && (v10 = Strong, swift_unknownObjectRelease(), v10 == a1))
      {
        sub_1D9102BAC(v15);
      }

      else
      {
        sub_1D9102B74(v15, v14);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v16 = v8;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D8E31894(0, *(v8 + 16) + 1, 1);
          v8 = v16;
        }

        v13 = *(v8 + 16);
        v12 = *(v8 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_1D8E31894((v12 > 1), v13 + 1, 1);
          v8 = v16;
        }

        *(v8 + 16) = v13 + 1;
        sub_1D9102B74(v14, v8 + 24 * v13 + 32);
      }

      ++v6;
      v7 += 24;
      if (v5 == v6)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_15:

    *(v2 + 40) = v8;

    [*(v2 + 16) unlock];
  }
}

uint64_t sub_1D9102680(uint64_t *a1)
{
  swift_beginAccess();
  [a1[2] lock];
  sub_1D91027E8(a1, &v7);
  [a1[2] unlock];
  v2 = v7[2];
  if (v2)
  {
    v3 = v7 + 5;
    do
    {
      v4 = *(v3 - 1);
      v7 = a1;

      v4(&v7);

      v3 += 2;
      --v2;
    }

    while (v2);
  }

  sub_1D8CFBEC8(&qword_1ECABA898, v5, type metadata accessor for InterestStateMachine, &protocol conformance descriptor for InterestStateMachine);
  sub_1D917788C();
  sub_1D917798C();
}

void sub_1D91027E8(uint64_t a1@<X0>, void *a2@<X8>)
{
  swift_beginAccess();
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);

  if (v4)
  {
    v5 = 0;
    v6 = v3 + 32;
    v7 = MEMORY[0x1E69E7CC0];
    while (v5 < *(v3 + 16))
    {
      sub_1D9102AEC(v6, v23);
      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        sub_1D9102B74(v23, v22);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v7;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D8E31894(0, *(v7 + 16) + 1, 1);
          v7 = v26;
        }

        v10 = *(v7 + 16);
        v9 = *(v7 + 24);
        if (v10 >= v9 >> 1)
        {
          sub_1D8E31894((v9 > 1), v10 + 1, 1);
          v7 = v26;
        }

        *(v7 + 16) = v10 + 1;
        sub_1D9102B74(v22, v7 + 24 * v10 + 32);
      }

      else
      {
        sub_1D9102BAC(v23);
      }

      ++v5;
      v6 += 24;
      if (v4 == v5)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_13:

    *(a1 + 40) = v7;

    v11 = *(a1 + 40);
    v12 = *(v11 + 16);
    v13 = MEMORY[0x1E69E7CC0];
    if (v12)
    {
      v22[0] = MEMORY[0x1E69E7CC0];

      sub_1D8E318CC(0, v12, 0);
      v13 = v22[0];
      v14 = v11 + 32;
      do
      {
        sub_1D9102AEC(v14, v23);
        v16 = v24;
        v15 = v25;
        v17 = swift_allocObject();
        *(v17 + 16) = v16;
        *(v17 + 24) = v15;

        sub_1D9102BAC(v23);
        v22[0] = v13;
        v19 = *(v13 + 16);
        v18 = *(v13 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_1D8E318CC((v18 > 1), v19 + 1, 1);
          v13 = v22[0];
        }

        *(v13 + 16) = v19 + 1;
        v20 = v13 + 16 * v19;
        *(v20 + 32) = sub_1D9102C44;
        *(v20 + 40) = v17;
        v14 += 24;
        --v12;
      }

      while (v12);
    }

    *a2 = v13;
  }
}

uint64_t InterestStateMachine.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t InterestStateMachine.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1D9102B24@<X0>(uint64_t *a2@<X8>)
{
  result = sub_1D917788C();
  *a2 = result;
  return result;
}

uint64_t PodcastStateController.__allocating_init(dataSources:transitionRules:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  PodcastStateController.init(dataSources:transitionRules:)(a1, a2);
  return v4;
}

uint64_t sub_1D9102CC8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PodcastStateMachine();
  sub_1D9178E2C();
  return v3;
}

uint64_t sub_1D9102D38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for PodcastStateMachine();
  sub_1D9178E2C();
  return v4;
}

id sub_1D9102DA8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v17[1] = *MEMORY[0x1E69E9840];
  if (a3 != 1)
  {
    MEMORY[0x1EEE9AC00](a1);
    type metadata accessor for PodcastStateMachine();
    sub_1D9178E2C();
    return v17[0];
  }

  v5 = [objc_opt_self() sharedInstance];
  v6 = [v5 mainQueueContext];

  v17[0] = 0;
  v7 = [v6 existingObjectWithID:a1 error:v17];

  v8 = v17[0];
  if (v7)
  {
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    v10 = v8;
    if (v9)
    {
      v11 = [v9 uuid];
      if (v11)
      {
        v12 = v11;
        sub_1D917820C();

        MEMORY[0x1EEE9AC00](v13);
        type metadata accessor for PodcastStateMachine();
        sub_1D9178E2C();

        return v17[0];
      }
    }

    return 0;
  }

  else
  {
    v15 = v17[0];
    v16 = sub_1D9176A6C();

    swift_willThrow();
    return 0;
  }
}

uint64_t PodcastStateController.deinit()
{

  return v0;
}

uint64_t PodcastStateController.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t dispatch thunk of PodcastStateController.stateMachine(for:initialState:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *(*v2 + 184);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  v8 = v3;
  return v4(a1, v7);
}

uint64_t dispatch thunk of PodcastStateController.stateMachine(for:initialState:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 32);
  v5 = *(*v3 + 192);
  v6 = *(a3 + 16);
  v8[0] = *a3;
  v8[1] = v6;
  v9 = v4;
  return v5(a1, a2, v8);
}

uint64_t dispatch thunk of PodcastStateController.stateMachine(for:initialState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 32);
  v6 = *(*v4 + 200);
  v7 = *(a4 + 16);
  v9[0] = *a4;
  v9[1] = v7;
  v10 = v5;
  return v6(a1, a2, a3, v9);
}

uint64_t dispatch thunk of PodcastStateController.refreshStates(for:)()
{
  return (*(*v0 + 224))();
}

{
  return (*(*v0 + 232))();
}

uint64_t dispatch thunk of PodcastStateDataSourceDelegate.refreshStates(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 8))(a1, a2);
}

{
  return (*(a3 + 16))(a1, a2);
}

uint64_t PodcastStateMachine.__allocating_init(adamId:initialState:rules:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for PodcastStateMachine();
  v6 = swift_allocObject();
  *(v6 + 88) = MEMORY[0x1E69E7CC0];
  v7 = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
  *(v6 + 16) = a1;
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  *(v6 + 40) = 0;
  v8 = *(a2 + 16);
  *(v6 + 48) = *a2;
  *(v6 + 64) = v8;
  *(v6 + 80) = *(a2 + 32);
  *(v6 + 96) = a3;
  *(v6 + 104) = v7;
  return v6;
}

uint64_t PodcastStateMachine.__allocating_init(uuid:initialState:rules:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PodcastStateMachine();
  v8 = swift_allocObject();
  *(v8 + 88) = MEMORY[0x1E69E7CC0];
  v9 = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
  *(v8 + 24) = 1;
  *(v8 + 16) = 0;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  v10 = *(a3 + 16);
  *(v8 + 48) = *a3;
  *(v8 + 64) = v10;
  *(v8 + 80) = *(a3 + 32);
  *(v8 + 96) = a4;
  *(v8 + 104) = v9;
  return v8;
}

uint64_t PodcastState.dictionaryKey.getter()
{
  v1 = *(v0 + 16);
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x6465646461;
  if (v1 == 1)
  {
    v3 = 0x676E69646461;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0x656C6261646461;
  }
}

uint64_t PodcastState.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  switch(v2)
  {
    case 2:
      v3 = 3;
      return MEMORY[0x1DA72B390](v3);
    case 1:
      v3 = 1;
      return MEMORY[0x1DA72B390](v3);
    case 0:
      v3 = 0;
      return MEMORY[0x1DA72B390](v3);
  }

  v5 = *(v1 + 32);
  MEMORY[0x1DA72B390](2);
  sub_1D9179DDC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  sub_1D9179DDC();
  return MEMORY[0x1DA72B3C0](v5);
}

uint64_t PodcastState.hashValue.getter()
{
  sub_1D9179DBC();
  v1 = *(v0 + 16);
  if (v1 == 2)
  {
    v2 = 3;
  }

  else if (v1 == 1)
  {
    v2 = 1;
  }

  else
  {
    if (v1)
    {
      v3 = *(v0 + 32);
      MEMORY[0x1DA72B390](2);
      sub_1D9179DDC();
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
      sub_1D9179DDC();
      MEMORY[0x1DA72B3C0](v3);
      return sub_1D9179E1C();
    }

    v2 = 0;
  }

  MEMORY[0x1DA72B390](v2);
  return sub_1D9179E1C();
}

uint64_t sub_1D910367C(uint64_t a1)
{
  sub_1D9179DBC();
  PodcastState.hash(into:)(v2);
  return sub_1D9179E1C();
}

BOOL sub_1D91036B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return _s18PodcastsFoundation12PodcastStateO2eeoiySbAC_ACtFZ_0(v5, v7);
}

uint64_t PodcastStateMachine.uuid.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

id sub_1D9103740@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  [*(v1 + 104) lock];
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);
  v8 = *(v1 + 104);
  sub_1D8D1C3BC(v3, v4, v5);
  result = [v8 unlock];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  return result;
}

uint64_t sub_1D91037F0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 104) = v2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_1D9103888(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 104) = a1;
  return swift_unknownObjectRelease();
}

uint64_t PodcastStateMachine.__allocating_init(adamId:uuid:initialState:rules:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + 88) = MEMORY[0x1E69E7CC0];
  *(v12 + 104) = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
  if ((a2 & 1) != 0 && !a4)
  {
    result = sub_1D91796DC();
    __break(1u);
  }

  else
  {
    *(v12 + 16) = a1;
    *(v12 + 24) = a2 & 1;
    *(v12 + 32) = a3;
    *(v12 + 40) = a4;
    v13 = *(a5 + 16);
    *(v12 + 48) = *a5;
    *(v12 + 64) = v13;
    *(v12 + 80) = *(a5 + 32);
    *(v12 + 96) = a6;
    return v12;
  }

  return result;
}

uint64_t PodcastStateMachine.init(adamId:uuid:initialState:rules:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 88) = MEMORY[0x1E69E7CC0];
  *(v6 + 104) = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
  if ((a2 & 1) != 0 && !a4)
  {
    result = sub_1D91796DC();
    __break(1u);
  }

  else
  {
    *(v6 + 16) = a1;
    *(v6 + 24) = a2 & 1;
    *(v6 + 32) = a3;
    *(v6 + 40) = a4;
    v13 = *(a5 + 16);
    *(v6 + 48) = *a5;
    *(v6 + 64) = v13;
    *(v6 + 80) = *(a5 + 32);
    *(v6 + 96) = a6;
    return v6;
  }

  return result;
}

uint64_t sub_1D9103B28(__int128 *a1)
{
  swift_beginAccess();
  [*(v1 + 104) lock];
  sub_1D8D1CB88(v1, a1, &v4);
  [*(v1 + 104) unlock];
  return v4;
}

id sub_1D9103BC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  [*(v3 + 104) lock];
  swift_unknownObjectWeakInit();
  v13 = a2;
  v14 = a3;
  sub_1D91040E0(v12, v11);
  swift_beginAccess();
  v6 = *(v3 + 88);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 88) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_1D8ECDDC0(0, v6[2] + 1, 1, v6);
    *(v3 + 88) = v6;
  }

  v9 = v6[2];
  v8 = v6[3];
  if (v9 >= v8 >> 1)
  {
    v6 = sub_1D8ECDDC0((v8 > 1), v9 + 1, 1, v6);
  }

  v6[2] = v9 + 1;
  sub_1D9104118(v11, &v6[3 * v9 + 4]);
  *(v3 + 88) = v6;
  swift_endAccess();
  sub_1D9104150(v12);
  return [*(v3 + 104) unlock];
}

void sub_1D9103CFC(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  [*(v1 + 104) lock];
  swift_beginAccess();
  v4 = *(v1 + 88);
  v5 = *(v4 + 16);

  if (v5)
  {
    v6 = 0;
    v7 = v4 + 32;
    v8 = MEMORY[0x1E69E7CC0];
    while (v6 < *(v4 + 16))
    {
      sub_1D91040E0(v7, v15);
      if (!swift_unknownObjectWeakLoadStrong() || (swift_unknownObjectRelease(), (Strong = swift_unknownObjectWeakLoadStrong()) != 0) && (v10 = Strong, swift_unknownObjectRelease(), v10 == a1))
      {
        sub_1D9104150(v15);
      }

      else
      {
        sub_1D9104118(v15, v14);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v16 = v8;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D8E318EC(0, *(v8 + 16) + 1, 1);
          v8 = v16;
        }

        v13 = *(v8 + 16);
        v12 = *(v8 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_1D8E318EC((v12 > 1), v13 + 1, 1);
          v8 = v16;
        }

        *(v8 + 16) = v13 + 1;
        sub_1D9104118(v14, v8 + 24 * v13 + 32);
      }

      ++v6;
      v7 += 24;
      if (v5 == v6)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_15:

    *(v2 + 88) = v8;

    [*(v2 + 104) unlock];
  }
}

void *PodcastStateMachine.deinit()
{

  sub_1D8D1D59C(*(v0 + 48), *(v0 + 56), *(v0 + 64));

  swift_unknownObjectRelease();
  return v0;
}

uint64_t PodcastStateMachine.__deallocating_deinit()
{

  sub_1D8D1D59C(*(v0 + 48), *(v0 + 56), *(v0 + 64));

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1D9103FA4@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for PodcastStateMachine();
  result = sub_1D917788C();
  *a2 = result;
  return result;
}

BOOL _s18PodcastsFoundation12PodcastStateO2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v3 = *(a1 + 2);
  switch(v3)
  {
    case 2:
      return *(a2 + 2) == 2;
    case 1:
      return *(a2 + 2) == 1;
    case 0:
      return !*(a2 + 2);
  }

  v5 = *(a2 + 2);
  if (v5 < 3 || ((*a1 ^ *a2) & 1) != 0)
  {
    return 0;
  }

  v6 = a1[24];
  v7 = *(a1 + 4);
  v8 = a2[24];
  v9 = *(a2 + 4);
  if (*(a1 + 1) == *(a2 + 1) && v3 == v5)
  {
    if ((v6 ^ v8))
    {
      return 0;
    }

    return v7 == v9;
  }

  v10 = sub_1D9179ACC();
  result = 0;
  if ((v10 & 1) != 0 && ((v6 ^ v8) & 1) == 0)
  {
    return v7 == v9;
  }

  return result;
}

unint64_t sub_1D9104184()
{
  result = qword_1ECABA8A0;
  if (!qword_1ECABA8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA8A0);
  }

  return result;
}

uint64_t sub_1D91041D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 40))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D9104234(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 2;
    }
  }

  return result;
}

double sub_1D910428C(uint64_t a1, int a2)
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
    *(a1 + 16) = (a2 - 1);
  }

  return result;
}

uint64_t dispatch thunk of PodcastStateMachine.__allocating_init(adamId:uuid:initialState:rules:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(v5 + 216);
  v7 = *(a5 + 32);
  v8 = *(a5 + 16);
  v10[0] = *a5;
  v10[1] = v8;
  v11 = v7;
  return v6(a1, a2 & 1, a3, a4, v10);
}

uint64_t dispatch thunk of PodcastStateMachine.transition(to:)(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*v1 + 224);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  v7 = v2;
  return v3(v6) & 1;
}

uint64_t AllPodcastStateRule.canMove(from:to:)(uint64_t a1, uint64_t a2)
{
  v3 = *(*v2 + 16);
  if (v3)
  {
    v6 = *v2 + 32;
    v7 = 1;
    do
    {
      sub_1D8CFD9D8(v6, v11);
      if (v7)
      {
        v8 = v12;
        v9 = v13;
        __swift_project_boxed_opaque_existential_1(v11, v12);
        v7 = (*(v9 + 8))(a1, a2, v8, v9);
      }

      else
      {
        v7 = 0;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      v6 += 40;
      --v3;
    }

    while (v3);
  }

  else
  {
    v7 = 1;
  }

  return v7 & 1;
}

uint64_t AnyPodcastStateRule.canMove(from:to:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 16);
  if (v4)
  {
    v7 = 0;
    v8 = v3 + 32;
    do
    {
      sub_1D8CFD9D8(v8, v12);
      if (v7)
      {
        v7 = 1;
      }

      else
      {
        v9 = v13;
        v10 = v14;
        __swift_project_boxed_opaque_existential_1(v12, v13);
        v7 = (*(v10 + 8))(a1, a2, v9, v10);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      v8 += 40;
      --v4;
    }

    while (v4);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t dispatch thunk of PodcastStateRule.canMove(from:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 32);
  v5 = *(a2 + 32);
  v6 = *(a4 + 8);
  v7 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v7;
  v13 = v4;
  v8 = *(a2 + 16);
  v10[0] = *a2;
  v10[1] = v8;
  v11 = v5;
  return v6(v12, v10, a3) & 1;
}

BOOL sub_1D9104690(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = v2 == 2 || (v2 & 0xFFFFFFFFFFFFFFFDLL) != 0;
  return !*(a2 + 16) && v3;
}

uint64_t sub_1D910471C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v53 = MEMORY[0x1E69E7CC0];
  sub_1D8E31340(0, v1, 0);
  v2 = v53;
  v4 = v3 + 64;
  result = sub_1D91792DC();
  if (result < 0 || (v6 = result, result >= 1 << *(v3 + 32)))
  {
LABEL_24:
    __break(1u);
  }

  else
  {
    v34 = v3 + 72;
    v35 = v1;
    v7 = *(v3 + 36);
    v8 = 1;
    v36 = v7;
    v37 = v3 + 64;
    while (1)
    {
      v9 = v6 >> 6;
      if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        break;
      }

      if (v7 != *(v3 + 36))
      {
        goto LABEL_26;
      }

      v54 = v8;
      v10 = *(v3 + 56);
      v11 = (*(v3 + 48) + 96 * v6);
      v12 = v11[1];
      v44[0] = *v11;
      v44[1] = v12;
      v14 = v11[3];
      v13 = v11[4];
      v15 = v11[2];
      *(v45 + 11) = *(v11 + 75);
      v44[3] = v14;
      v45[0] = v13;
      v44[2] = v15;
      v16 = v11[1];
      v39 = *v11;
      v40 = v16;
      v17 = v11[2];
      v18 = v11[3];
      v19 = v11[4];
      *&v43[11] = *(v11 + 75);
      v42 = v18;
      *v43 = v19;
      v41 = v17;
      v20 = v3;
      v21 = *(v10 + 8 * v6);
      memmove(__dst, v11, 0x5BuLL);
      v48[2] = v41;
      v48[3] = v42;
      v48[4] = *v43;
      v48[5] = *&v43[16];
      v48[0] = v39;
      v48[1] = v40;
      v49 = v21;
      swift_bridgeObjectRetain_n();
      sub_1D8F0C914(v44, v38);
      sub_1D8F0C914(__dst, v38);
      sub_1D91072E8(v48);
      v50[2] = __dst[2];
      v50[3] = __dst[3];
      v51[0] = v47[0];
      *(v51 + 11) = *(v47 + 11);
      v50[0] = __dst[0];
      v50[1] = __dst[1];
      v52 = v21;
      v22 = *&__dst[0];

      result = sub_1D91072E8(v50);
      v53 = v2;
      v24 = *(v2 + 16);
      v23 = *(v2 + 24);
      if (v24 >= v23 >> 1)
      {
        result = sub_1D8E31340((v23 > 1), v24 + 1, 1);
        v2 = v53;
      }

      *(v2 + 16) = v24 + 1;
      v25 = v2 + 16 * v24;
      *(v25 + 32) = v22;
      *(v25 + 40) = v21;
      v26 = 1 << *(v20 + 32);
      if (v6 >= v26)
      {
        goto LABEL_27;
      }

      v3 = v20;
      v4 = v37;
      v27 = *(v37 + 8 * v9);
      if ((v27 & (1 << v6)) == 0)
      {
        goto LABEL_28;
      }

      v7 = v36;
      if (v36 != *(v3 + 36))
      {
        goto LABEL_29;
      }

      v28 = v27 & (-2 << (v6 & 0x3F));
      if (v28)
      {
        v6 = __clz(__rbit64(v28)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v29 = v9 << 6;
        v30 = v9 + 1;
        v31 = (v34 + 8 * v9);
        while (v30 < (v26 + 63) >> 6)
        {
          v33 = *v31++;
          v32 = v33;
          v29 += 64;
          ++v30;
          if (v33)
          {
            result = sub_1D8D9B144(v6, v36, 0);
            v6 = __clz(__rbit64(v32)) + v29;
            goto LABEL_19;
          }
        }

        result = sub_1D8D9B144(v6, v36, 0);
        v6 = v26;
      }

LABEL_19:
      if (v54 == v35)
      {
        return v2;
      }

      if ((v6 & 0x8000000000000000) == 0)
      {
        v8 = v54 + 1;
        if (v6 < 1 << *(v3 + 32))
        {
          continue;
        }
      }

      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t EpisodeStateDomain.propertiesToTrack.getter()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D60, &qword_1D918A700);
  if (v1)
  {
    if (v1 == 1)
    {
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_1D9197860;
      *(v2 + 32) = sub_1D917820C();
      *(v2 + 40) = v3;
      *(v2 + 48) = sub_1D917820C();
      *(v2 + 56) = v4;
      *(v2 + 64) = sub_1D917820C();
      *(v2 + 72) = v5;
      *(v2 + 80) = sub_1D917820C();
      *(v2 + 88) = v6;
      *(v2 + 96) = sub_1D917820C();
      *(v2 + 104) = v7;
      v8 = sub_1D917820C();
      result = v2;
      *(v2 + 112) = v8;
      *(v2 + 120) = v10;
    }

    else
    {
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_1D9189080;
      v16 = sub_1D917820C();
      result = v15;
      *(v15 + 32) = v16;
      *(v15 + 40) = v17;
    }
  }

  else
  {
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1D918A530;
    *(v11 + 32) = sub_1D917820C();
    *(v11 + 40) = v12;
    v13 = sub_1D917820C();
    result = v11;
    *(v11 + 48) = v13;
    *(v11 + 56) = v14;
  }

  return result;
}

PodcastsFoundation::EpisodeStateDomain_optional __swiftcall EpisodeStateDomain.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D917980C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t EpisodeStateDomain.rawValue.getter()
{
  v1 = 0x7461745379616C70;
  if (*v0 != 1)
  {
    v1 = 0x6B72616D6B6F6F62;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64616F6C6E776F64;
  }
}

uint64_t sub_1D9104C88(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7461745379616C70;
  v4 = 0xE900000000000065;
  if (v2 != 1)
  {
    v3 = 0x6B72616D6B6F6F62;
    v4 = 0xED00006574617453;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x64616F6C6E776F64;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xED00006574617453;
  }

  v7 = 0x7461745379616C70;
  v8 = 0xE900000000000065;
  if (*a2 != 1)
  {
    v7 = 0x6B72616D6B6F6F62;
    v8 = 0xED00006574617453;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x64616F6C6E776F64;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xED00006574617453;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D9179ACC();
  }

  return v11 & 1;
}

uint64_t sub_1D9104D94()
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

double sub_1D9104E44(uint64_t a1)
{
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return result;
}

uint64_t sub_1D9104EE0(uint64_t a1)
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

void sub_1D9104F98(uint64_t *a1@<X8>)
{
  v2 = 0xED00006574617453;
  v3 = *v1;
  v4 = 0xE900000000000065;
  v5 = 0x7461745379616C70;
  if (v3 != 1)
  {
    v5 = 0x6B72616D6B6F6F62;
    v4 = 0xED00006574617453;
  }

  v6 = v3 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x64616F6C6E776F64;
  }

  if (!v6)
  {
    v2 = v4;
  }

  *a1 = v7;
  a1[1] = v2;
}

unint64_t sub_1D910502C()
{
  v0 = MEMORY[0x1E69E7CC0];
  result = sub_1D8E27B80(MEMORY[0x1E69E7CC0]);
  *&xmmword_1EDCD41E8 = v0;
  *(&xmmword_1EDCD41E8 + 1) = result;
  qword_1EDCD41F8 = v0;
  return result;
}

PodcastsFoundation::EpisodeStateChanges __swiftcall EpisodeStateChanges.init(inserted:updated:deleted:)(Swift::OpaquePointer inserted, Swift::OpaquePointer updated, Swift::OpaquePointer deleted)
{
  v3->_rawValue = inserted._rawValue;
  v3[1]._rawValue = updated._rawValue;
  v3[2]._rawValue = deleted._rawValue;
  result.deleted = deleted;
  result.updated = updated;
  result.inserted = inserted;
  return result;
}

double static EpisodeStateChanges.noChanges.getter@<D0>(void *a1@<X8>)
{
  if (qword_1EDCD41E0 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = *(&xmmword_1EDCD41E8 + 1);
  v2 = qword_1EDCD41F8;
  *a1 = xmmword_1EDCD41E8;
  a1[1] = v1;
  a1[2] = v2;

  return result;
}

BOOL EpisodeStateChanges.isEmpty.getter()
{
  if (*(*v0 + 16))
  {
    return 0;
  }

  if (*(v0[1] + 16))
  {
    return 0;
  }

  return *(v0[2] + 16) == 0;
}

PodcastsFoundation::EpisodeStateChanges __swiftcall EpisodeStateChanges.selectingUpdates(from:)(PodcastsFoundation::EpisodeStateDomain from)
{
  v3 = v1;
  v5 = *v2;
  v4 = v2[1];
  v6 = v2[2];
  v10[16] = *from;

  v7 = sub_1D8DA70A8(v4, sub_1D9105224, v10);
  *v3 = v5;
  v3[1] = v7;
  v3[2] = v6;
  result.deleted._rawValue = v9;
  result.updated._rawValue = v8;
  result.inserted._rawValue = v7;
  return result;
}

BOOL sub_1D91051B8(uint64_t a1, uint64_t a2)
{
  v3 = EpisodeStateDomain.propertiesToTrack.getter();

  v4 = sub_1D9106384(v3, a2);

  v5 = *(v4 + 16);

  return v5 != 0;
}

void EpisodeStateChanges.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  sub_1D917946C();

  v4 = MEMORY[0x1E69E7CC0];
  v18 = MEMORY[0x1E69E7CC0];
  v5 = *(v2 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = v2 + 32;
    while (v6 < *(v2 + 16))
    {
      ++v6;
      v7 += 96;

      sub_1D8E2F94C(v8);
      if (v5 == v6)
      {
        v4 = v18;
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
    v9 = MEMORY[0x1DA729BD0](v4, &type metadata for EpisodeStateIdentifier);
    v11 = v10;

    MEMORY[0x1DA7298F0](v9, v11);

    MEMORY[0x1DA7298F0](0x657461647075203BLL, 0xEB00000000203A64);
    v12 = sub_1D910471C(v1);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB45B0, &qword_1D918A020);
    v14 = MEMORY[0x1DA729BD0](v12, v13);
    v16 = v15;

    MEMORY[0x1DA7298F0](v14, v16);

    MEMORY[0x1DA7298F0](0x6574656C6564203BLL, 0xEB00000000203A64);
    v17 = MEMORY[0x1DA729BD0](v3, &type metadata for EpisodeStateIdentifier);
    MEMORY[0x1DA7298F0](v17);
  }
}

double EpisodeStateModel.podcastStateModel.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  v6 = *(v1 + 80);
  v7 = *(v1 + 90);
  v8 = *(v1 + 88);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 42) = v7;
  *(a1 + 40) = v8;
  return sub_1D9106E94(v2, v3, v4, v5, v6);
}

double EpisodeStateModel.init(episode:)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = MTEpisode.allEpisodeStateIdentifiers.getter();
  sub_1D91054D8(v8, a1, v4);
  v5 = v8[3];
  a2[2] = v8[2];
  a2[3] = v5;
  a2[4] = v9[0];
  *(a2 + 75) = *(v9 + 11);
  result = *v8;
  v7 = v8[1];
  *a2 = v8[0];
  a2[1] = v7;
  return result;
}

void sub_1D91054D8(uint64_t *__return_ptr a1@<X8>, id a2@<X1>, uint64_t a3@<X0>)
{
  if (*(a3 + 16))
  {
    v6 = [a2 isDownloaded];
    v7 = [a2 isFromITunesSync];
    v8 = [a2 isBookmarked];
    v9 = [a2 podcast];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 hidden];
    }

    else
    {
      v11 = 0;
    }

    if ([a2 isPartiallyPlayed] & 1) != 0 || (objc_msgSend(a2, sel_isPartiallyPlayedBackCatalogItem))
    {
      v12 = 1;
    }

    else
    {
      v12 = [a2 isPlayheadPartiallyPlayed];
    }

    if ([a2 isPlayed])
    {
      v13 = [a2 isBackCatalogItem] ^ 1;
    }

    else
    {
      v13 = 0;
    }

    [a2 playhead];
    v15 = v14;
    [a2 duration];
    v17 = v16;
    [a2 lastDatePlayed];
    v19 = v18;
    v20 = sub_1D9105704(a2) & 1;
    PodcastStateModel.init(podcast:)([a2 podcast], v26);

    v21 = v27;
    v22 = v28;
    v23 = v29;
    v24 = v26[0];
    v25 = v26[1];
    *a1 = a3;
    *(a1 + 8) = v6;
    *(a1 + 9) = v7;
    *(a1 + 10) = v8;
    *(a1 + 11) = v11;
    *(a1 + 12) = v12;
    *(a1 + 13) = v13;
    *(a1 + 2) = v15;
    a1[3] = v17;
    a1[4] = v19;
    *(a1 + 40) = v20;
    *(a1 + 3) = v24;
    *(a1 + 4) = v25;
    a1[10] = v21;
    *(a1 + 90) = v23;
    *(a1 + 44) = v22;
  }

  else
  {

    *(a1 + 75) = 0u;
    *(a1 + 3) = 0u;
    *(a1 + 4) = 0u;
    *(a1 + 1) = 0u;
    *(a1 + 2) = 0u;
    *a1 = 0u;
  }
}

id sub_1D9105704(void *a1)
{
  v2 = [a1 podcast];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = [v2 uuid];
  if (v4)
  {
    v5 = v4;
    if ([a1 isDownloaded] && objc_msgSend(v3, sel_deletePlayedEpisodesResolvedValue))
    {
      v6 = [objc_opt_self() predicateForRecentlyPlayedEpisodesToBeDeletedOnPodcastUuid:v5 deletePlayedEpisodes:1];

      v7 = [v6 evaluateWithObject_];
      v5 = v6;
    }

    else
    {
      v7 = 0;
    }

    v3 = v5;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

double EpisodeStateModel.hash(into:)(__int128 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v19 = *(v1 + 56);
  v20 = *(v1 + 48);
  v5 = *(v1 + 64);
  v18 = *(v1 + 72);
  v6 = *(v1 + 80);
  sub_1D9106794(a1, *v1);
  sub_1D9179DDC();
  sub_1D9179DDC();
  sub_1D9179DDC();
  sub_1D9179DDC();
  sub_1D9179DDC();
  sub_1D9179DDC();
  if (v2 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v2;
  }

  MEMORY[0x1DA72B3C0](*&v7);
  if (v3 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v3;
  }

  MEMORY[0x1DA72B3C0](*&v8);
  if (v4 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v4;
  }

  MEMORY[0x1DA72B3C0](*&v9);
  sub_1D9179DDC();
  if (v6)
  {
    sub_1D9179DDC();
    v10 = v5;
    v11 = v5;
    if (v5)
    {
      v13 = v19;
      v12 = v20;
      if (v10 == 1)
      {
        MEMORY[0x1DA72B390](1);
        v14 = v20;
        v15 = v19;
        v16 = 1;
      }

      else
      {
        MEMORY[0x1DA72B390](2);
        v14 = v20;
        v15 = v19;
        v16 = 2;
      }

      sub_1D9106ED4(v14, v15, v16);

      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
    }

    else
    {
      MEMORY[0x1DA72B390](0);
      v12 = v20;
      MEMORY[0x1DA72B3C0](v20);
      v13 = v19;
      sub_1D9106ED4(v20, v19, 0);
    }

    _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
    sub_1D9179DDC();
    sub_1D9179DDC();
    sub_1D9179DDC();

    return sub_1D90B1ADC(v12, v13, v11, v18, v6);
  }

  else
  {
    sub_1D9179DDC();
  }

  return result;
}

uint64_t EpisodeStateModel.hashValue.getter()
{
  sub_1D9179DBC();
  EpisodeStateModel.hash(into:)(v1);
  return sub_1D9179E1C();
}

uint64_t sub_1D9105A84()
{
  sub_1D9179DBC();
  EpisodeStateModel.hash(into:)(v1);
  return sub_1D9179E1C();
}

uint64_t sub_1D9105AC8(uint64_t a1)
{
  sub_1D9179DBC();
  EpisodeStateModel.hash(into:)(v2);
  return sub_1D9179E1C();
}

uint64_t PodcastStateModel.id.getter()
{
  v1 = *v0;
  sub_1D9106ED4(*v0, *(v0 + 8), *(v0 + 16));
  return v1;
}

uint64_t PodcastStateModel.uuid.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t PodcastStateModel.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  if (*(v1 + 16))
  {
    if (*(v1 + 16) == 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }

    MEMORY[0x1DA72B390](v3);
    _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    MEMORY[0x1DA72B390](0);
    MEMORY[0x1DA72B3C0](v2);
  }

  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  sub_1D9179DDC();
  sub_1D9179DDC();
  return sub_1D9179DDC();
}

uint64_t PodcastStateModel.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  sub_1D9179DBC();
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }

    MEMORY[0x1DA72B390](v3);
    _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    MEMORY[0x1DA72B390](0);
    MEMORY[0x1DA72B3C0](v1);
  }

  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  sub_1D9179DDC();
  sub_1D9179DDC();
  sub_1D9179DDC();
  return sub_1D9179E1C();
}

uint64_t sub_1D9105D50(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 16);
  sub_1D9179DBC();
  if (v3)
  {
    if (v3 == 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }

    MEMORY[0x1DA72B390](v4);
    _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    MEMORY[0x1DA72B390](0);
    MEMORY[0x1DA72B3C0](v2);
  }

  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  sub_1D9179DDC();
  sub_1D9179DDC();
  sub_1D9179DDC();
  return sub_1D9179E1C();
}

unint64_t PodcastStateModel.SanitizedState.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x6465776F6C6C6F66;
  v2 = 0xD000000000000012;
  if (a1 != 2)
  {
    v2 = 0x65726F7473;
  }

  if (a1)
  {
    v1 = 0x7972617262696CLL;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D9105EBC(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x6465776F6C6C6F66;
  v3 = *a1;
  v4 = 0xE800000000000000;
  v5 = 0xD000000000000012;
  v6 = 0x80000001D91C84B0;
  v7 = 0xE500000000000000;
  if (v3 == 2)
  {
    v7 = 0x80000001D91C84B0;
  }

  else
  {
    v5 = 0x65726F7473;
  }

  v8 = 0x7972617262696CLL;
  if (*a1)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v8 = 0x6465776F6C6C6F66;
  }

  if (*a1 <= 1u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (v3 <= 1)
  {
    v10 = v4;
  }

  else
  {
    v10 = v7;
  }

  v11 = 0xE800000000000000;
  v12 = 0xD000000000000012;
  if (*a2 != 2)
  {
    v12 = 0x65726F7473;
    v6 = 0xE500000000000000;
  }

  if (*a2)
  {
    v2 = 0x7972617262696CLL;
    v11 = 0xE700000000000000;
  }

  if (*a2 <= 1u)
  {
    v13 = v2;
  }

  else
  {
    v13 = v12;
  }

  if (*a2 <= 1u)
  {
    v14 = v11;
  }

  else
  {
    v14 = v6;
  }

  if (v9 == v13 && v10 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_1D9179ACC();
  }

  return v15 & 1;
}

uint64_t sub_1D9105FF0()
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

double sub_1D91060B4(uint64_t a1)
{
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return result;
}

uint64_t sub_1D9106164(uint64_t a1)
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

unint64_t sub_1D9106224@<X0>(Swift::String *a1@<X0>, PodcastsFoundation::PodcastStateModel::SanitizedState_optional *a2@<X8>)
{
  result = _s18PodcastsFoundation17PodcastStateModelV09SanitizedD0O8rawValueAESgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

void sub_1D9106254(unint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x6465776F6C6C6F66;
  v4 = 0x80000001D91C84B0;
  v5 = 0xD000000000000012;
  if (*v1 != 2)
  {
    v5 = 0x65726F7473;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x7972617262696CLL;
    v2 = 0xE700000000000000;
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

uint64_t sub_1D9106384(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v18[6] = *MEMORY[0x1E69E9840];
  v17 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v18[3] = &v17;
  v18[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v13 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v9 = &v16 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    sub_1D9106524(v9, v7, v3, a2);
    v11 = v10;
  }

  else
  {
    v14 = v13;
    v15 = swift_slowAlloc();
    bzero(v15, v14);
    sub_1D9107350(v15, v7, v18);
    v11 = v18[0];

    MEMORY[0x1DA72CB90](v15, -1, -1);
  }

  return v11;
}

void sub_1D9106524(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = *(a3 + 16);
  v27 = a3 + 32;
  v8 = a4 + 56;
  v26 = v7;
  while (2)
  {
    v24 = v5;
    if (v6 != v7)
    {
      while (1)
      {
        while (1)
        {
          if (v6 >= v7)
          {
            __break(1u);
LABEL_26:
            __break(1u);
            return;
          }

          v9 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_26;
          }

          v10 = (v27 + 16 * v6);
          v12 = *v10;
          v11 = v10[1];
          sub_1D9179DBC();

          _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
          v13 = sub_1D9179E1C();
          v14 = -1 << *(a4 + 32);
          v15 = v13 & ~v14;
          v16 = v15 >> 6;
          v17 = 1 << v15;
          if (((1 << v15) & *(v8 + 8 * (v15 >> 6))) != 0)
          {
            break;
          }

LABEL_5:
          v6 = v9;

          if (v9 == v7)
          {
            goto LABEL_24;
          }
        }

        v18 = (*(a4 + 48) + 16 * v15);
        if (*v18 != v12 || v18[1] != v11)
        {
          v20 = ~v14;
          while ((sub_1D9179ACC() & 1) == 0)
          {
            v15 = (v15 + 1) & v20;
            v16 = v15 >> 6;
            v17 = 1 << v15;
            if (((1 << v15) & *(v8 + 8 * (v15 >> 6))) == 0)
            {
              v7 = v26;
              goto LABEL_5;
            }

            v21 = (*(a4 + 48) + 16 * v15);
            if (*v21 == v12 && v21[1] == v11)
            {
              break;
            }
          }
        }

        v22 = a1[v16];
        a1[v16] = v22 | v17;
        if ((v22 & v17) == 0)
        {
          break;
        }

        v7 = v26;
        v6 = v9;
        if (v9 == v26)
        {
          goto LABEL_24;
        }
      }

      v5 = v24 + 1;
      v7 = v26;
      v6 = v9;
      if (!__OFADD__(v24, 1))
      {
        continue;
      }

      __break(1u);
    }

    break;
  }

LABEL_24:

  sub_1D90A7CC4(a1, a2, v24, a4);
}

unint64_t *sub_1D9106704(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(__int128 *, uint64_t))
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

    v8 = sub_1D8DA7228(result, a2, a3, a4);

    return v8;
  }

  return result;
}

void sub_1D9106794(__int128 *a1, uint64_t a2)
{
  sub_1D9179E1C();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = 0;
  while (v5)
  {
LABEL_11:
    v11 = *(a2 + 48) + 24 * (__clz(__rbit64(v5)) | (v8 << 6));
    v12 = *v11;
    v13 = *(v11 + 8);
    v14 = *(v11 + 16);
    sub_1D9179DBC();
    if (v14 == 1)
    {
      MEMORY[0x1DA72B390](1);

      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
    }

    else
    {
      MEMORY[0x1DA72B390](0);
      MEMORY[0x1DA72B3C0](v12);
    }

    v5 &= v5 - 1;
    v9 = sub_1D9179E1C();
    sub_1D8DB5FC8(v12, v13, v14);
    v7 ^= v9;
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      MEMORY[0x1DA72B390](v7);
      return;
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++v8;
    if (v5)
    {
      v8 = v10;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t _s18PodcastsFoundation17PodcastStateModelV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[3];
  v5 = a1[4];
  v6 = *(a1 + 40);
  v7 = *(a1 + 41);
  v8 = *(a1 + 42);
  v9 = *a2;
  v10 = *(a2 + 16);
  v11 = a2[3];
  v12 = a2[4];
  v13 = *(a2 + 40);
  v14 = *(a2 + 41);
  v15 = *(a2 + 42);
  if (!*(a1 + 16))
  {
    if (*(a2 + 16))
    {
      return 0;
    }

    v19 = v3 == v9;
    result = 0;
    if (!v19)
    {
      return result;
    }

    goto LABEL_14;
  }

  v17 = a1[1];
  v18 = a2[1];
  if (*(a1 + 16) != 1)
  {
    if (v10 == 2)
    {
      if (v3 == v9 && v17 == v18)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    return 0;
  }

  if (v10 != 1)
  {
    return 0;
  }

  if (v3 == v9 && v17 == v18)
  {
    goto LABEL_14;
  }

LABEL_13:
  if ((sub_1D9179ACC() & 1) == 0)
  {
    return 0;
  }

LABEL_14:
  if (v4 == v11 && v5 == v12)
  {
    result = 0;
    if (v6 != v13)
    {
      return result;
    }

    goto LABEL_21;
  }

  v21 = sub_1D9179ACC();
  result = 0;
  if ((v21 & 1) != 0 && ((v6 ^ v13) & 1) == 0)
  {
LABEL_21:
    if (((v7 ^ v14) & 1) == 0)
    {
      return v8 ^ v15 ^ 1u;
    }
  }

  return result;
}

uint64_t _s18PodcastsFoundation17EpisodeStateModelV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 9);
  v4 = *(a1 + 10);
  v5 = *(a1 + 11);
  v41 = *(a1 + 13);
  v43 = *(a1 + 12);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = *(a1 + 32);
  v39 = *(a1 + 40);
  v36 = *(a1 + 48);
  v37 = *(a1 + 64);
  v35 = *(a1 + 80);
  v31 = *(a1 + 88);
  v32 = *(a1 + 90);
  v9 = *(a2 + 8);
  v10 = *(a2 + 9);
  v11 = *(a2 + 10);
  v12 = *(a2 + 11);
  v13 = *(a2 + 12);
  v14 = *(a2 + 13);
  v16 = *(a2 + 16);
  v15 = *(a2 + 24);
  v17 = *(a2 + 32);
  v38 = *(a2 + 40);
  v33 = *(a2 + 48);
  v34 = *(a2 + 64);
  v40 = *(a2 + 80);
  v29 = *(a2 + 88);
  v30 = *(a2 + 90);
  v18 = sub_1D8F66438(*a1, *a2);
  v19 = 0;
  if ((v18 & 1) != 0 && ((v2 ^ v9) & 1) == 0 && ((v3 ^ v10) & 1) == 0 && ((v4 ^ v11) & 1) == 0 && ((v5 ^ v12) & 1) == 0 && ((v43 ^ v13) & 1) == 0 && ((v41 ^ v14) & 1) == 0 && v7 == v16 && v6 == v15 && v8 == v17 && ((v39 ^ v38) & 1) == 0)
  {
    if (v35)
    {
      v20 = *(&v36 + 1);
      v21 = v36;
      v50 = v36;
      v22 = *(&v37 + 1);
      v23 = v37;
      *v51 = v37;
      *&v51[16] = v35;
      *&v51[24] = v31;
      v51[26] = (v31 | (v32 << 16)) >> 16;
      v24 = *(&v34 + 1);
      v25 = v34;
      v26 = *(&v33 + 1);
      if (v40)
      {
        v44 = v33;
        *v45 = v34;
        *&v45[16] = v40;
        v45[26] = (v29 | (v30 << 16)) >> 16;
        *&v45[24] = v29;
        v42 = _s18PodcastsFoundation17PodcastStateModelV2eeoiySbAC_ACtFZ_0(&v50, &v44);
        v46 = v44;
        v47[0] = *v45;
        *(v47 + 11) = *&v45[11];
        sub_1D9106E94(v36, *(&v36 + 1), v37, *(&v37 + 1), v35);
        sub_1D9106E94(v33, *(&v33 + 1), v34, *(&v34 + 1), v40);
        sub_1D9106E94(v36, *(&v36 + 1), v37, *(&v37 + 1), v35);
        sub_1D90CDA08(&v46);
        v48 = v50;
        v49[0] = *v51;
        *(v49 + 11) = *&v51[11];
        sub_1D90CDA08(&v48);
        sub_1D90B1ADC(v36, *(&v36 + 1), v37, *(&v37 + 1), v35);
        v19 = v42;
        return v19 & 1;
      }

      v48 = v50;
      v49[0] = *v51;
      *(v49 + 11) = *&v51[11];
      sub_1D9106E94(v36, *(&v36 + 1), v37, *(&v37 + 1), v35);
      v27 = v33;
      sub_1D9106E94(v33, *(&v33 + 1), v34, *(&v34 + 1), 0);
      sub_1D9106E94(v36, *(&v36 + 1), v37, *(&v37 + 1), v35);
      sub_1D90CDA08(&v48);
    }

    else
    {
      v20 = *(&v36 + 1);
      v21 = v36;
      v22 = *(&v37 + 1);
      v23 = v37;
      sub_1D9106E94(v36, *(&v36 + 1), v37, *(&v37 + 1), 0);
      v24 = *(&v34 + 1);
      v25 = v34;
      v26 = *(&v33 + 1);
      if (!v40)
      {
        sub_1D9106E94(v33, *(&v33 + 1), v34, *(&v34 + 1), 0);
        sub_1D90B1ADC(v36, *(&v36 + 1), v37, *(&v37 + 1), 0);
        v19 = 1;
        return v19 & 1;
      }

      v27 = v33;
      sub_1D9106E94(v33, *(&v33 + 1), v34, *(&v34 + 1), v40);
    }

    sub_1D90B1ADC(v21, v20, v23, v22, v35);
    sub_1D90B1ADC(v27, v26, v25, v24, v40);
    v19 = 0;
  }

  return v19 & 1;
}

unint64_t _s18PodcastsFoundation17PodcastStateModelV09SanitizedD0O8rawValueAESgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D917980C();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

double sub_1D9106E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    sub_1D9106ED4(a1, a2, a3);
  }

  return result;
}

double sub_1D9106ED4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 - 1 <= 1)
  {
  }

  return result;
}

unint64_t sub_1D9106EF4()
{
  result = qword_1ECABA8B8;
  if (!qword_1ECABA8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA8B8);
  }

  return result;
}

unint64_t sub_1D9106F4C()
{
  result = qword_1ECABA8C0;
  if (!qword_1ECABA8C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECABA8C8, &qword_1D91B8BC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA8C0);
  }

  return result;
}

unint64_t sub_1D9106FB4()
{
  result = qword_1ECABA8D0;
  if (!qword_1ECABA8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA8D0);
  }

  return result;
}

unint64_t sub_1D910700C()
{
  result = qword_1ECABA8D8;
  if (!qword_1ECABA8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA8D8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18PodcastsFoundation17PodcastStateModelVSg(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy91_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 75) = *(a2 + 75);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1D910709C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 91))
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

uint64_t sub_1D91070E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 90) = 0;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 91) = 1;
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

    *(result + 91) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy43_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 27) = *(a2 + 27);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for PodcastStateModel.StateError(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for PodcastStateModel.StateError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}