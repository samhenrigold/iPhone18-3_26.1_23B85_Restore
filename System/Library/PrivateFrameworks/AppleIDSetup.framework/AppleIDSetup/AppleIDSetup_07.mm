uint64_t sub_24061EE7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for V1Command(0);
  if (swift_getEnumCaseMultiPayload())
  {
    v6 = type metadata accessor for V1Command;
  }

  else
  {
    type metadata accessor for V1Command.Request(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_24061E30C(a1, a3, type metadata accessor for SignInCommand.Request);
      v7 = 0;
      goto LABEL_7;
    }

    v6 = type metadata accessor for V1Command.Request;
  }

  sub_24061E2AC(a1, v6);
  v7 = 1;
LABEL_7:
  v8 = *(*(a2 - 8) + 56);

  return v8(a3, v7, 1, a2);
}

uint64_t sub_24061EFB8(uint64_t a1, int *a2)
{
  sub_24075AE64();
  IdMSAccount.hash(into:)(v6);
  v4 = *(v2 + a2[5] + 88);
  sub_24075A114();
  sub_24075AE94();
  if (v4 >> 60 != 15)
  {
    sub_2407596D4();
  }

  sub_24075AE94();
  sub_24075AE94();
  return sub_24075AED4();
}

uint64_t SignInCommand.Response.resultsByService.getter()
{
  type metadata accessor for SignInCommand.Response(0);
}

uint64_t SignInCommand.Response.resultsByService.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SignInCommand.Response(0) + 20);

  *(v1 + v3) = a1;
  return result;
}

uint64_t SignInCommand.Response.init(account:resultsByService:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_24061E30C(a1, a3, type metadata accessor for IdMSAccount);
  result = type metadata accessor for SignInCommand.Response(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t SignInCommand.Response.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for V1Command(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for V1Command.Response(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_24061E30C(a1, a2, type metadata accessor for SignInCommand.Response);
      v4 = 0;
      goto LABEL_7;
    }

    v5 = type metadata accessor for V1Command.Response;
  }

  else
  {
    v5 = type metadata accessor for V1Command;
  }

  sub_24061E2AC(a1, v5);
  v4 = 1;
LABEL_7:
  v6 = type metadata accessor for SignInCommand.Response(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v4, 1, v6);
}

uint64_t sub_24061F2D8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a4@<X8>)
{
  sub_24061E30C(v4, a4, a1);
  a2(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for V1Command(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t static SignInCommand.Response.== infix(_:_:)(void *a1, void *a2)
{
  if ((_s12AppleIDSetup11IdMSAccountV2eeoiySbAC_ACtFZ_0(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for SignInCommand.Response(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);

  return sub_24061F3B8(v5, v6);
}

uint64_t sub_24061F3B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9350, &qword_24076B5F8);
  v58 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v57 = &v47 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9448, &qword_24076BAD8);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  result = MEMORY[0x28223BE20](v10);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v52 = (&v47 - v12);
  v53 = v13;
  v51 = v7;
  v14 = 0;
  v49 = a1;
  v15 = *(a1 + 64);
  v48 = a1 + 64;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v54 = v58 + 16;
  v55 = (v58 + 32);
  v50 = (v58 + 8);
  while (1)
  {
    v20 = v53;
    if (!v18)
    {
      break;
    }

    v56 = (v18 - 1) & v18;
    v21 = __clz(__rbit64(v18)) | (v14 << 6);
LABEL_16:
    v26 = *(*(v49 + 48) + 8 * v21);
    v28 = v57;
    v27 = v58;
    (*(v58 + 16))(v57, *(v49 + 56) + *(v58 + 72) * v21, v4);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9450, qword_24076BAE0);
    v30 = *(v29 + 48);
    *v20 = v26;
    (*(v27 + 32))(&v20[v30], v28, v4);
    (*(*(v29 - 8) + 56))(v20, 0, 1, v29);
    v31 = v26;
LABEL_17:
    v32 = v52;
    sub_240621E60(v20, v52);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9450, qword_24076BAE0);
    v34 = (*(*(v33 - 8) + 48))(v32, 1, v33);
    v35 = v34 == 1;
    if (v34 == 1)
    {
      return v35;
    }

    v36 = a2;
    v37 = *v32;
    v38 = v51;
    (*v55)(v51, v32 + *(v33 + 48), v4);
    v39 = sub_2405BB2A4(v37);
    v41 = v40;

    if ((v41 & 1) == 0)
    {
      (*v50)(v38, v4);
      return 0;
    }

    v43 = v57;
    v42 = v58;
    (*(v58 + 16))(v57, *(v36 + 56) + *(v58 + 72) * v39, v4);
    sub_240621ED0(&qword_27E4B9460, sub_2406021BC, MEMORY[0x277D839C8], MEMORY[0x277CE4648]);
    v44 = sub_24075A054();
    v45 = *(v42 + 8);
    v45(v43, v4);
    result = (v45)(v38, v4);
    a2 = v36;
    v18 = v56;
    if ((v44 & 1) == 0)
    {
      return v35;
    }
  }

  if (v19 <= v14 + 1)
  {
    v22 = v14 + 1;
  }

  else
  {
    v22 = v19;
  }

  v23 = v22 - 1;
  while (1)
  {
    v24 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v24 >= v19)
    {
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9450, qword_24076BAE0);
      (*(*(v46 - 8) + 56))(v20, 1, 1, v46);
      v56 = 0;
      v14 = v23;
      goto LABEL_17;
    }

    v25 = *(v48 + 8 * v24);
    ++v14;
    if (v25)
    {
      v56 = (v25 - 1) & v25;
      v21 = __clz(__rbit64(v25)) | (v24 << 6);
      v14 = v24;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24061F8BC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 48) + 8 * v12);
    v14 = (*(v3 + 56) + 80 * v12);
    v16 = v14[3];
    v15 = v14[4];
    v17 = v14[2];
    v33 = v14[1];
    v32 = *v14;
    v34 = v17;
    v35 = v16;
    v36 = v15;
    v29 = v16;
    v30 = v33;
    v27 = v17;
    v28 = v32;
    v19 = *(&v15 + 1);
    v18 = v15;
    v20 = v13;
    sub_2405AF99C(&v32, v31);
    if (!v20)
    {
      return 1;
    }

    v32 = v28;
    v33 = v30;
    v34 = v27;
    v35 = v29;
    v36 = __PAIR128__(v19, v18);
    v21 = sub_2405BB2A4(v20);
    v23 = v22;

    if ((v23 & 1) == 0)
    {
      sub_240618468(&v32);
      return 0;
    }

    v24 = (*(a2 + 56) + 80 * v21);
    if (*v24 == v32 && v24[1] == *(&v32 + 1))
    {
      result = sub_240618468(&v32);
    }

    else
    {
      v26 = sub_24075ACF4();
      result = sub_240618468(&v32);
      if ((v26 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24061FA88(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v25 = (v7 - 1) & v7;
LABEL_14:
    v12 = v9 | (v3 << 6);
    v13 = result;
    v14 = *(*(result + 48) + 8 * v12);
    v15 = (*(result + 56) + 16 * v12);
    v17 = *v15;
    v16 = v15[1];
    v18 = v14;

    v19 = sub_2405BB2A4(v18);
    v21 = v20;

    if ((v21 & 1) == 0)
    {

      return 0;
    }

    v22 = (*(a2 + 56) + 16 * v19);
    if (*v22 == v17 && v22[1] == v16)
    {

      result = v13;
      v7 = v25;
    }

    else
    {
      v24 = sub_24075ACF4();

      result = v13;
      v7 = v25;
      if ((v24 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v25 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24061FC1C()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x746E756F636361;
  }
}

uint64_t sub_24061FC5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E756F636361 && a2 == 0xE700000000000000;
  if (v6 || (sub_24075ACF4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000240787430 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24075ACF4();

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

uint64_t sub_24061FD40(uint64_t a1)
{
  v2 = sub_240621130();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24061FD7C(uint64_t a1)
{
  v2 = sub_240621130();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SignInCommand.Response.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9328, &qword_24076B5E8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_240621130();
  sub_24075AF74();
  v12 = 0;
  type metadata accessor for IdMSAccount(0);
  sub_240621060(&qword_27E4B6438, type metadata accessor for IdMSAccount, &protocol conformance descriptor for IdMSAccount);
  sub_24075ABE4();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for SignInCommand.Response(0) + 20));
    v10[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9338, &qword_24076B5F0);
    sub_240621184();
    sub_24075ABE4();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t SignInCommand.Response.hash(into:)(uint64_t a1)
{
  IdMSAccount.hash(into:)(a1);
  v3 = *(v1 + *(type metadata accessor for SignInCommand.Response(0) + 20));

  return sub_2406206AC(a1, v3);
}

uint64_t SignInCommand.Response.hashValue.getter()
{
  sub_24075AE64();
  IdMSAccount.hash(into:)(v3);
  v1 = type metadata accessor for SignInCommand.Response(0);
  sub_2406206AC(v3, *(v0 + *(v1 + 20)));
  return sub_24075AED4();
}

uint64_t SignInCommand.Response.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = type metadata accessor for IdMSAccount(0);
  MEMORY[0x28223BE20](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9358, &qword_24076B600);
  v18 = *(v6 - 8);
  v19 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for SignInCommand.Response(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_240621130();
  sub_24075AF34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v18;
  v13 = v11;
  v23 = 0;
  sub_240621060(&qword_27E4B6480, type metadata accessor for IdMSAccount, &protocol conformance descriptor for IdMSAccount);
  v14 = v19;
  sub_24075AAF4();
  sub_24061E30C(v20, v13, type metadata accessor for IdMSAccount);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9338, &qword_24076B5F0);
  v22 = 1;
  sub_240621278();
  sub_24075AAF4();
  (*(v12 + 8))(v8, v14);
  *(v13 + *(v9 + 20)) = v21;
  sub_2406210A8(v13, v17, type metadata accessor for SignInCommand.Response);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24061E2AC(v13, type metadata accessor for SignInCommand.Response);
}

uint64_t sub_2406203A4@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a4@<X8>)
{
  sub_24061E30C(v4, a4, a1);
  a2(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for V1Command(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_240620420@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for V1Command(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for V1Command.Response(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_24061E30C(a1, a3, type metadata accessor for SignInCommand.Response);
      v6 = 0;
      goto LABEL_7;
    }

    v7 = type metadata accessor for V1Command.Response;
  }

  else
  {
    v7 = type metadata accessor for V1Command;
  }

  sub_24061E2AC(a1, v7);
  v6 = 1;
LABEL_7:
  v8 = *(*(a2 - 8) + 56);

  return v8(a3, v6, 1, a2);
}

uint64_t sub_240620554(void *a1, void *a2, uint64_t a3)
{
  if ((_s12AppleIDSetup11IdMSAccountV2eeoiySbAC_ACtFZ_0(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_24061F3B8(v7, v8);
}

uint64_t sub_2406205BC(uint64_t a1)
{
  sub_24075AE64();
  IdMSAccount.hash(into:)(v4);
  sub_2406206AC(v4, *(v1 + *(a1 + 20)));
  return sub_24075AED4();
}

uint64_t sub_240620610(uint64_t a1, uint64_t a2)
{
  IdMSAccount.hash(into:)(a1);
  v5 = *(v2 + *(a2 + 20));

  return sub_2406206AC(a1, v5);
}

uint64_t sub_24062065C(uint64_t a1, uint64_t a2)
{
  sub_24075AE64();
  IdMSAccount.hash(into:)(v5);
  sub_2406206AC(v5, *(v2 + *(a2 + 20)));
  return sub_24075AED4();
}

uint64_t sub_2406206AC(uint64_t a1, uint64_t a2)
{
  v45 = a1;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9350, &qword_24076B5F8);
  v3 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v46 = v39 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9448, &qword_24076BAD8);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = (v39 - v9);
  v11 = *(a2 + 64);
  v39[0] = a2 + 64;
  v12 = 1 << *(a2 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v11;
  v15 = (v12 + 63) >> 6;
  v39[1] = v3 + 16;
  v47 = (v3 + 32);
  v42 = v3;
  v43 = a2;
  v44 = (v3 + 8);
  v16 = v10;

  v18 = 0;
  v40 = v16;
  v41 = v8;
  v49 = 0;
  if (v14)
  {
    while (1)
    {
      v19 = v18;
LABEL_12:
      v22 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v23 = v22 | (v19 << 6);
      v24 = v42;
      v25 = *(*(v43 + 48) + 8 * v23);
      v26 = v46;
      v27 = v48;
      (*(v42 + 16))(v46, *(v43 + 56) + *(v42 + 72) * v23, v48);
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9450, qword_24076BAE0);
      v29 = *(v28 + 48);
      v8 = v41;
      *v41 = v25;
      (*(v24 + 32))(&v8[v29], v26, v27);
      (*(*(v28 - 8) + 56))(v8, 0, 1, v28);
      v30 = v25;
      v21 = v19;
      v16 = v40;
LABEL_13:
      sub_240621E60(v8, v16);
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9450, qword_24076BAE0);
      if ((*(*(v31 - 8) + 48))(v16, 1, v31) == 1)
      {
        break;
      }

      v32 = *(v31 + 48);
      v33 = *v16;
      v34 = v46;
      v35 = v48;
      (*v47)(v46, v16 + v32, v48);
      v36 = *(v45 + 48);
      v52 = *(v45 + 32);
      v53 = v36;
      v54 = *(v45 + 64);
      v37 = *(v45 + 16);
      v50 = *v45;
      v51 = v37;
      sub_24075A0B4();
      sub_24075A114();

      sub_240621ED0(&qword_27E4B9458, sub_2406023B4, MEMORY[0x277D839C0], MEMORY[0x277CE4640]);
      sub_24075A004();
      (*v44)(v34, v35);
      result = sub_24075AED4();
      v18 = v21;
      v49 ^= result;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    return MEMORY[0x245CC6BA0](v49);
  }

  else
  {
LABEL_5:
    if (v15 <= v18 + 1)
    {
      v20 = v18 + 1;
    }

    else
    {
      v20 = v15;
    }

    v21 = v20 - 1;
    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v19 >= v15)
      {
        v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9450, qword_24076BAE0);
        (*(*(v38 - 8) + 56))(v8, 1, 1, v38);
        v14 = 0;
        goto LABEL_13;
      }

      v14 = *(v39[0] + 8 * v19);
      ++v18;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_240620B44(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v11 = 0;
  if (v7)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = __clz(__rbit64(v7)) | (v12 << 6);
      v14 = *(*(a2 + 48) + 8 * v13);
      v15 = (*(a2 + 56) + 80 * v13);
      v17 = v15[3];
      v16 = v15[4];
      v18 = v15[2];
      v30 = v15[1];
      v29 = *v15;
      v31 = v18;
      v32 = v17;
      v33 = v16;
      v25 = v17;
      v26 = v30;
      v23 = v18;
      v24 = v29;
      v19 = v16;
      v20 = v14;
      sub_2405AF99C(&v29, v27);
      if (!v20)
      {
        break;
      }

      v7 &= v7 - 1;
      v29 = v24;
      v30 = v26;
      v31 = v23;
      v32 = v25;
      v33 = v19;
      v21 = *(a1 + 48);
      v27[2] = *(a1 + 32);
      v27[3] = v21;
      v28 = *(a1 + 64);
      v22 = *(a1 + 16);
      v27[0] = *a1;
      v27[1] = v22;
      sub_24075A0B4();
      sub_24075A114();

      sub_24075A114();
      sub_240618468(&v29);

      result = sub_24075AED4();
      v10 ^= result;
      v11 = v12;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

LABEL_11:

    return MEMORY[0x245CC6BA0](v10);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v8)
      {
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v12);
      ++v11;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_240620D20(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  for (i = 0; v5; v8 = result ^ v14)
  {
    v14 = v8;
    v10 = i;
LABEL_9:
    v11 = *(*(a2 + 48) + 8 * (__clz(__rbit64(v5)) | (v10 << 6)));
    v5 &= v5 - 1;
    sub_24075A0B4();
    v12 = v11;

    sub_24075A114();

    sub_24075A114();

    result = sub_24075AED4();
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x245CC6BA0](v8);
    }

    v5 = *(v2 + 8 * v10);
    ++i;
    if (v5)
    {
      v14 = v8;
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s12AppleIDSetup13SignInCommandV7RequestV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  if ((_s12AppleIDSetup11IdMSAccountV2eeoiySbAC_ACtFZ_0(a1, a2) & 1) != 0 && (v4 = type metadata accessor for SignInCommand.Request(0), v5 = (a1 + v4[5]), v6 = v5[3], v7 = v5[1], v36 = v5[2], v37 = v6, v8 = v5[3], v9 = v5[5], v38 = v5[4], v39 = v9, v10 = v5[1], v35[0] = *v5, v35[1] = v10, v31 = v36, v32 = v8, v11 = v5[5], v33 = v38, v34 = v11, v29 = v35[0], v30 = v7, v12 = (a2 + v4[5]), v13 = v12[3], v14 = v12[1], v41 = v12[2], v42 = v13, v15 = v12[3], v16 = v12[5], v43 = v12[4], v44 = v16, v17 = v12[1], v40[0] = *v12, v40[1] = v17, v25 = v41, v26 = v15, v18 = v12[5], v27 = v43, v28 = v18, v23 = v40[0], v24 = v14, sub_240618F1C(v35, v22), sub_240618F1C(v40, v22), v19 = _s12AppleIDSetup11IdMSAccountV10SRPResultsV2eeoiySbAE_AEtFZ_0(&v29, &v23), v45[2] = v25, v45[3] = v26, v45[4] = v27, v45[5] = v28, v45[0] = v23, v45[1] = v24, sub_240618F54(v45), v46[2] = v31, v46[3] = v32, v46[4] = v33, v46[5] = v34, v46[0] = v29, v46[1] = v30, sub_240618F54(v46), v19) && *(a1 + v4[6]) == *(a2 + v4[6]))
  {
    v20 = *(a1 + v4[7]) ^ *(a2 + v4[7]) ^ 1;
  }

  else
  {
    v20 = 0;
  }

  return v20 & 1;
}

unint64_t sub_24062100C()
{
  result = qword_27E4B9318;
  if (!qword_27E4B9318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9318);
  }

  return result;
}

uint64_t sub_240621060(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2406210A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_240621130()
{
  result = qword_27E4B9330;
  if (!qword_27E4B9330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9330);
  }

  return result;
}

unint64_t sub_240621184()
{
  result = qword_27E4B9340;
  if (!qword_27E4B9340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E4B9338, &qword_24076B5F0);
    sub_240621060(&qword_27E4B6470, type metadata accessor for AIDAServiceType, &protocol conformance descriptor for AIDAServiceType);
    sub_240621ED0(&qword_27E4B9348, sub_24060230C, MEMORY[0x277D839B8], MEMORY[0x277CE4638]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9340);
  }

  return result;
}

unint64_t sub_240621278()
{
  result = qword_27E4B9360;
  if (!qword_27E4B9360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E4B9338, &qword_24076B5F0);
    sub_240621060(&qword_27E4B64A0, type metadata accessor for AIDAServiceType, &protocol conformance descriptor for AIDAServiceType);
    sub_240621ED0(&qword_27E4B9368, sub_2406024EC, MEMORY[0x277D839D0], MEMORY[0x277CE4650]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9360);
  }

  return result;
}

unint64_t sub_24062136C()
{
  result = qword_27E4B9370;
  if (!qword_27E4B9370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9370);
  }

  return result;
}

uint64_t sub_2406213C0(uint64_t a1)
{
  result = sub_240621060(&qword_27E4B9378, type metadata accessor for SignInCommand.Request, &protocol conformance descriptor for SignInCommand.Request);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_240621418()
{
  result = qword_27E4B9380;
  if (!qword_27E4B9380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9380);
  }

  return result;
}

uint64_t sub_24062146C(uint64_t a1)
{
  result = sub_240621060(&qword_27E4B9388, type metadata accessor for SignInCommand.Request, &protocol conformance descriptor for SignInCommand.Request);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2406214C4(void *a1)
{
  a1[1] = sub_240621060(&qword_27E4B9390, type metadata accessor for SignInCommand.Request, &protocol conformance descriptor for SignInCommand.Request);
  a1[2] = sub_240621060(&qword_27E4B9398, type metadata accessor for SignInCommand.Request, &protocol conformance descriptor for SignInCommand.Request);
  result = sub_240621060(&qword_27E4B93A0, type metadata accessor for SignInCommand.Request, &protocol conformance descriptor for SignInCommand.Request);
  a1[3] = result;
  return result;
}

uint64_t sub_2406215B8(uint64_t a1)
{
  result = sub_240621060(&qword_27E4B93B0, type metadata accessor for SignInCommand.Response, &protocol conformance descriptor for SignInCommand.Response);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_240621610(uint64_t a1)
{
  result = sub_240621060(&qword_27E4B93B8, type metadata accessor for SignInCommand.Response, &protocol conformance descriptor for SignInCommand.Response);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_240621668(void *a1)
{
  a1[1] = sub_240621060(&qword_27E4B93C0, type metadata accessor for SignInCommand.Response, &protocol conformance descriptor for SignInCommand.Response);
  a1[2] = sub_240621060(&qword_27E4B93C8, type metadata accessor for SignInCommand.Response, &protocol conformance descriptor for SignInCommand.Response);
  result = sub_240621060(&qword_27E4B93D0, type metadata accessor for SignInCommand.Response, &protocol conformance descriptor for SignInCommand.Response);
  a1[3] = result;
  return result;
}

unint64_t sub_2406217EC(uint64_t a1)
{
  result = sub_240621418();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2406218DC(uint64_t a1)
{
  result = type metadata accessor for IdMSAccount(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_240621984(uint64_t a1)
{
  type metadata accessor for IdMSAccount(319);
  if (v1 <= 0x3F)
  {
    sub_240621A08(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_240621A08(uint64_t a1)
{
  if (!qword_27E4B9410)
  {
    type metadata accessor for AIDAServiceType(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E4B9350, &qword_24076B5F8);
    sub_240621060(&qword_280FAD720, type metadata accessor for AIDAServiceType, &unk_24075D60C);
    v1 = sub_240759FA4();
    if (!v2)
    {
      atomic_store(v1, &qword_27E4B9410);
    }
  }
}

unint64_t sub_240621AE4()
{
  result = qword_27E4B9418;
  if (!qword_27E4B9418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9418);
  }

  return result;
}

unint64_t sub_240621B3C()
{
  result = qword_27E4B9420;
  if (!qword_27E4B9420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9420);
  }

  return result;
}

unint64_t sub_240621B94()
{
  result = qword_27E4B9428;
  if (!qword_27E4B9428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9428);
  }

  return result;
}

unint64_t sub_240621BEC()
{
  result = qword_27E4B9430;
  if (!qword_27E4B9430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9430);
  }

  return result;
}

unint64_t sub_240621C44()
{
  result = qword_27E4B9438;
  if (!qword_27E4B9438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9438);
  }

  return result;
}

unint64_t sub_240621C9C()
{
  result = qword_27E4B9440;
  if (!qword_27E4B9440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9440);
  }

  return result;
}

uint64_t sub_240621CF0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E756F636361 && a2 == 0xE700000000000000;
  if (v4 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C75736552707273 && a2 == 0xEA00000000007374 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C616E69467369 && a2 == 0xE700000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E696D7265547369 && a2 == 0xEA00000000006C61)
  {

    return 3;
  }

  else
  {
    v6 = sub_24075ACF4();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_240621E60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9448, &qword_24076BAD8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_240621ED0(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E4B9350, &qword_24076B5F8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t Building.then(if:_:)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(uint64_t)@<X2>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if (a1())
  {
    return a2(v4);
  }

  else
  {
    return (*(*(a3 - 8) + 32))(a4, v4, a3);
  }
}

uint64_t Building.then(if:_:or:)(uint64_t (*a1)(void), uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t))
{
  if (a1())
  {
    return a3(v5);
  }

  else
  {
    return a5(v5);
  }
}

uint64_t CryptographicIdentity<>.signature<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a2 + 16);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](a1);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240622658(v15, v14);
  if (!v6)
  {
    v5 = (*(a4 + 16))(a1, a3, a5, v11, a4);
    (*(v12 + 8))(v14, v11);
  }

  return v5;
}

uint64_t CryptographicIdentity<>.isValidSignature<A>(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19[0] = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v17 = v19 - v16;
  sub_240622818(a4, v19 - v16);
  LOBYTE(a8) = (*(a8 + 24))(a1, a2, a3, a5, v19[0], AssociatedTypeWitness, a8);
  (*(v15 + 8))(v17, AssociatedTypeWitness);
  return a8 & 1;
}

uint64_t sub_24062239C@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v25 = a5;
  v26 = a2;
  v28 = a4;
  v27 = a1;
  v24 = *(a3 - 8);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 16);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v10);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v6);
  v22 = 1;
  if ((*(v15 + 48))(v20, 1, v14) != 1)
  {
    (*(v15 + 32))(v18, v20, v14);
    v27(v18, v12);
    (*(v15 + 8))(v18, v14);
    if (v7)
    {
      return (*(v24 + 32))(v25, v12, a3);
    }

    v22 = 0;
  }

  return (*(*(v28 - 8) + 56))(a6, v22, 1);
}

uint64_t CryptographicIdentity.info.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t sub_240622658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = sub_24075A714();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - v8;
  (*(v7 + 16))(&v13 - v8, v2 + *(a1 + 36), v6);
  v10 = *(v5 - 8);
  if ((*(v10 + 48))(v9, 1, v5) != 1)
  {
    return (*(v10 + 32))(a2, v9, v5);
  }

  (*(v7 + 8))(v9, v6);
  type metadata accessor for CryptographicIdentity.MissingPrivateKey(0, v5, *(a1 + 24), v11);
  swift_getWitnessTable();
  swift_allocError();
  return swift_willThrow();
}

uint64_t sub_240622818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_24075A714();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - v9;
  (*(v8 + 16))(&v14 - v9, v2 + *(a1 + 40), v7);
  v11 = *(AssociatedTypeWitness - 8);
  if ((*(v11 + 48))(v10, 1, AssociatedTypeWitness) != 1)
  {
    return (*(v11 + 32))(v15, v10, AssociatedTypeWitness);
  }

  (*(v8 + 8))(v10, v7);
  type metadata accessor for CryptographicIdentity.MissingPublicKey(0, v4, v5, v12);
  swift_getWitnessTable();
  swift_allocError();
  return swift_willThrow();
}

uint64_t sub_240622A04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9468, &qword_24076BB60);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - v6;
  sub_240624EB4(v2 + *(a1 + 44), &v12 - v6);
  v8 = sub_240759E54();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    return (*(v9 + 32))(a2, v7, v8);
  }

  sub_2405B8A50(v7, &qword_27E4B9468, &qword_24076BB60);
  type metadata accessor for CryptographicIdentity.MissingSymmetricKey(0, *(a1 + 16), *(a1 + 24), v10);
  swift_getWitnessTable();
  swift_allocError();
  return swift_willThrow();
}

BOOL CryptographicIdentity.isForSigning.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = sub_24075A714();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  (*(v5 + 16))(&v10 - v6, v1 + *(a1 + 36), v4);
  v8 = (*(*(v3 - 8) + 48))(v7, 1, v3) != 1;
  (*(v5 + 8))(v7, v4);
  return v8;
}

BOOL CryptographicIdentity.isForSignatureValidation.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_24075A714();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  v9 = sub_24075A714();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v15 - v11;
  (*(v10 + 16))(&v15 - v11, v1 + *(a1 + 36), v9);
  LODWORD(v3) = (*(*(v3 - 8) + 48))(v12, 1, v3);
  (*(v10 + 8))(v12, v9);
  if (v3 != 1)
  {
    return 0;
  }

  (*(v6 + 16))(v8, v1 + *(a1 + 40), v5);
  v13 = (*(*(AssociatedTypeWitness - 8) + 48))(v8, 1, AssociatedTypeWitness) != 1;
  (*(v6 + 8))(v8, v5);
  return v13;
}

uint64_t sub_240622F04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  *a7 = *a1;
  *(a7 + 8) = v11;
  *(a7 + 16) = v12;
  v13 = type metadata accessor for CryptographicIdentity(0, a5, a6, a4);
  v14 = v13[9];
  v15 = sub_24075A714();
  (*(*(v15 - 8) + 32))(a7 + v14, a2, v15);
  v16 = v13[10];
  swift_getAssociatedTypeWitness();
  v17 = sub_24075A714();
  (*(*(v17 - 8) + 32))(a7 + v16, a3, v17);
  v18 = a7 + v13[11];

  return sub_240623298(a4, v18);
}

uint64_t CryptographicIdentity.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9468, &qword_24076BB60);
  MEMORY[0x28223BE20](v7 - 8);
  v24 = &v23 - v8;
  swift_getAssociatedTypeWitness();
  v9 = sub_24075A714();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - v11;
  v13 = sub_24075A714();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v23 - v15;
  v17 = *(a1 + 8);
  v18 = *(a1 + 16);
  v26[0] = *a1;
  v26[1] = v17;
  v27 = v18;
  v20 = type metadata accessor for CryptographicIdentity(0, a2, a3, v19);
  (*(v14 + 32))(v16, a1 + v20[9], v13);
  (*(v10 + 32))(v12, a1 + v20[10], v9);
  v21 = v24;
  sub_240623298(a1 + v20[11], v24);
  return sub_240622F04(v26, v16, v12, v21, a2, a3, v25);
}

uint64_t sub_240623298(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9468, &qword_24076BB60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static CryptographicIdentity.newIdentity(ofKind:withID:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v30 = a2;
  v31 = a3;
  v33 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9468, &qword_24076BB60);
  MEMORY[0x28223BE20](v9 - 8);
  v32 = &v29 - v10;
  v11 = *(a5 + 8);
  swift_getAssociatedTypeWitness();
  v12 = sub_24075A714();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v29 - v13;
  v15 = sub_24075A714();
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v29 - v17;
  v19 = *(a4 - 8);
  MEMORY[0x28223BE20](v16);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a1;
  v23 = v36;
  result = (*(a5 + 16))(a4, a5);
  if (!v23)
  {
    v34[0] = v30;
    v34[1] = v31;
    v35 = v22;
    v25 = *(v19 + 16);
    v36 = 0;
    v25(v18, v21, a4);
    (*(v19 + 56))(v18, 0, 1, a4);
    v26 = *(v11 + 32);

    v26(a4, v11);
    (*(v19 + 8))(v21, a4);
    v27 = sub_240759E54();
    v28 = v32;
    (*(*(v27 - 8) + 56))(v32, 1, 1, v27);
    return sub_240622F04(v34, v18, v14, v28, a4, a5, v33);
  }

  return result;
}

uint64_t CryptographicIdentity.Info.init(id:kind:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = v4;
  return result;
}

uint64_t CryptographicIdentity.exportedPublicKeyMaterial()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9468, &qword_24076BB60);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v26 - v5;
  v7 = *(a1 + 16);
  v27 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  v8 = sub_24075A714();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - v10;
  v12 = sub_24075A714();
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v26 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v2 + 8);
  v19 = *(v2 + 16);
  v29[0] = *v2;
  v29[1] = v18;
  v30 = v19;
  (*(*(v7 - 8) + 56))(v15, 1, 1, v7);
  (*(v9 + 16))(v11, v2 + *(a1 + 40), v8);
  v20 = sub_240759E54();
  (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
  v21 = v15;
  v22 = v27;
  sub_240622F04(v29, v21, v11, v6, v7, v27, v17);
  v24 = type metadata accessor for CryptographicIdentity(0, v7, v22, v23);
  (*(*(v24 - 8) + 32))(v28, v17, v24);
}

uint64_t sub_2406238D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = type metadata accessor for CryptographicIdentity(0, a2, a3, a4);
  v8 = *(*(v7 - 8) + 32);

  return v8(a5, a1, v7);
}

uint64_t CryptographicIdentity.exportedFullKeyMaterial()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  MEMORY[0x28223BE20](a1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5);
  v8 = type metadata accessor for CryptographicIdentity(0, *(a1 + 16), *(a1 + 24), v7);
  return (*(*(v8 - 8) + 32))(a2, v5, v8);
}

unint64_t sub_240623A38(uint64_t a1, uint64_t a2)
{
  v2 = sub_24075AA34();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_240623A88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_240623AFC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_240623B68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_240623BD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

unint64_t sub_240623C48@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_240623A38(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_240623C80@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24057DCB8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_240623CBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_240623A84(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_240623CEC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2405D5658();
  *a1 = result;
  return result;
}

uint64_t sub_240623D18(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_240623D6C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t CryptographicIdentity.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v56 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9468, &qword_24076BB60);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v57 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v55 = &v49 - v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_24075A714();
  v59 = *(v11 - 8);
  v60 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v58 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v62 = &v49 - v14;
  v15 = sub_24075A714();
  v63 = *(v15 - 8);
  v64 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v49 - v19;
  v66 = a2;
  v67 = a3;
  type metadata accessor for CryptographicIdentity.CodingKeys(255, a2, a3, v21);
  swift_getWitnessTable();
  v22 = sub_24075AB44();
  v65 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v24 = &v49 - v23;
  v25 = a1[3];
  v69 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  v26 = v68;
  sub_24075AF34();
  if (!v26)
  {
    v54 = v18;
    v68 = v20;
    v28 = v66;
    v29 = v67;
    type metadata accessor for CryptographicIdentity.Info(0, v66, v67, v27);
    LOBYTE(v70) = 0;
    swift_getWitnessTable();
    v30 = v24;
    sub_24075AAF4();
    v31 = v71;
    v32 = v72;
    LOBYTE(v70) = 1;
    sub_240618EC8();
    v33 = sub_24075AAA4();
    v50 = v32;
    v51 = v31;
    v53 = v30;
    v52 = v22;
    v70 = v71;
    MEMORY[0x28223BE20](v33);
    v34 = v28;
    *(&v49 - 2) = v28;
    *(&v49 - 1) = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9470, &qword_24076BB68);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BD0, &qword_24076BB70);
    sub_24062239C(sub_2406246C0, (&v49 - 4), v35, v34, &v73, v68);
    v49 = v35;
    sub_24058C9E4(v70, *(&v70 + 1));
    LOBYTE(v70) = 2;
    v37 = sub_24075AAA4();
    v38 = *(&v51 + 1);
    v70 = v71;
    MEMORY[0x28223BE20](v37);
    *(&v49 - 2) = v34;
    *(&v49 - 1) = v29;
    sub_24062239C(sub_2406247C8, (&v49 - 4), v49, AssociatedTypeWitness, &v73, v62);
    sub_24058C9E4(v70, *(&v70 + 1));
    LOBYTE(v70) = 3;
    v39 = v52;
    sub_24075AAA4();
    v40 = v65;
    if (*(&v71 + 1) >> 60 == 15)
    {
      (*(v65 + 8))(v53, v39);
      v41 = 1;
      v42 = v56;
      v43 = v57;
      v44 = v55;
    }

    else
    {
      v70 = v71;
      v44 = v55;
      sub_240759E44();
      (*(v40 + 8))(v53, v39);
      v41 = 0;
      v42 = v56;
      v43 = v57;
    }

    v45 = v50;
    v46 = sub_240759E54();
    (*(*(v46 - 8) + 56))(v44, v41, 1, v46);
    *&v71 = v51;
    *(&v71 + 1) = v38;
    v72 = v45;
    v47 = v54;
    (*(v63 + 32))(v54, v68, v64);
    v48 = v58;
    (*(v59 + 32))(v58, v62, v60);
    sub_240623298(v44, v43);
    sub_240622F04(&v71, v47, v48, v43, v34, v31, v42);
  }

  return __swift_destroy_boxed_opaque_existential_1(v69);
}

uint64_t sub_240624624(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = *(*(a3 + 8) + 8);
  v10 = *(v9 + 16);
  sub_2405BB9D4(*a1, v8);
  result = v10(v7, v8, a2, v9);
  if (v4)
  {
    *a4 = v4;
  }

  return result;
}

uint64_t sub_2406246E0(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *a1;
  v6 = a1[1];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(swift_getAssociatedConformanceWitness() + 8);
  v9 = *(v8 + 16);
  sub_2405BB9D4(v5, v6);
  result = v9(v5, v6, AssociatedTypeWitness, v8);
  if (v4)
  {
    *a4 = v4;
  }

  return result;
}

uint64_t CryptographicIdentity.encode(to:)(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9468, &qword_24076BB60);
  MEMORY[0x28223BE20](v4 - 8);
  v51 = &v49 - v5;
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v60 = a2;
  v56 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_24075A714();
  v54 = *(v8 - 8);
  v55 = v8;
  MEMORY[0x28223BE20](v8);
  v53 = &v49 - v9;
  v10 = sub_24075A714();
  v57 = *(v10 - 8);
  v58 = v10;
  MEMORY[0x28223BE20](v10);
  v59 = &v49 - v11;
  type metadata accessor for CryptographicIdentity.CodingKeys(255, v6, v7, v12);
  swift_getWitnessTable();
  v13 = sub_24075AC24();
  v62 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v49 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v16 = v63;
  v17 = v13;
  sub_24075AF74();
  v18 = *(v16 + 8);
  v19 = *(v16 + 16);
  v64 = *v16;
  v65 = v18;
  v66 = v19;
  v67 = 0;
  type metadata accessor for CryptographicIdentity.Info(0, v6, v7, v20);

  swift_getWitnessTable();
  v21 = v61;
  sub_24075ABE4();
  if (v21)
  {
  }

  else
  {
    v61 = v15;
    v50 = v7;
    v22 = v13;

    v23 = v59;
    v24 = v57;
    v25 = v58;
    (*(v57 + 16))(v59, v16 + *(v60 + 36));
    v26 = *(v6 - 8);
    v27 = (*(v26 + 48))(v23, 1, v6);
    v49 = v6;
    if (v27 == 1)
    {
      v28 = 0;
      v29 = 0xF000000000000000;
      v30 = v25;
    }

    else
    {
      v28 = (*(*(v56 + 8) + 8))(v6);
      v29 = v31;
      v24 = v26;
      v30 = v6;
    }

    (*(v24 + 8))(v23, v30);
    v64 = v28;
    v65 = v29;
    v67 = 1;
    sub_240618E74();
    v17 = v22;
    v15 = v61;
    sub_24075AB94();
    sub_24058C9E4(v64, v65);
    v32 = v60;
    v33 = v53;
    (*(v54 + 16))(v53, v63 + *(v60 + 40), v55);
    v34 = AssociatedTypeWitness;
    v35 = *(AssociatedTypeWitness - 8);
    if ((*(v35 + 48))(v33, 1, AssociatedTypeWitness) == 1)
    {
      v36 = 0;
      v37 = 0xF000000000000000;
      v38 = v50;
      v40 = v54;
      v39 = v55;
    }

    else
    {
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v36 = (*(*(AssociatedConformanceWitness + 8) + 8))(v34);
      v42 = v34;
      v37 = v43;
      v40 = v35;
      v39 = v42;
      v38 = v50;
    }

    (*(v40 + 8))(v33, v39);
    v64 = v36;
    v65 = v37;
    v67 = 2;
    sub_24075AB94();
    sub_24058C9E4(v64, v65);
    v45 = v51;
    sub_240624EB4(v63 + *(v32 + 44), v51);
    v46 = sub_240759E54();
    v47 = *(v46 - 8);
    v48 = (*(v47 + 48))(v45, 1, v46);
    if (v48 == 1)
    {
      sub_2405B8A50(v45, &qword_27E4B9468, &qword_24076BB60);
    }

    else
    {
      MEMORY[0x28223BE20](v48);
      *(&v49 - 4) = v49;
      *(&v49 - 3) = v38;
      *(&v49 - 2) = v15;
      sub_240759E34();
      (*(v47 + 8))(v45, v46);
    }
  }

  return (*(v62 + 8))(v15, v17);
}

uint64_t sub_240624EB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9468, &qword_24076BB60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_240624F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_24062500C(a1, a2);
  v11 = v7;
  type metadata accessor for CryptographicIdentity.CodingKeys(255, a4, a5, v8);
  swift_getWitnessTable();
  sub_24075AC24();
  sub_240618E74();
  sub_24075ABE4();
  return sub_2405BCD98(v10, v11);
}

uint64_t sub_24062500C(uint64_t a1, uint64_t a2)
{
  v8[3] = MEMORY[0x277D838B0];
  v8[4] = MEMORY[0x277CC9C18];
  v8[0] = a1;
  v8[1] = a2;
  v2 = __swift_project_boxed_opaque_existential_1(v8, MEMORY[0x277D838B0]);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_24062A45C(v3, v4);
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = sub_24062A598(v3, v4);
    }

    else
    {
      v6 = sub_24062A514(v3, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v8);
  return v6;
}

uint64_t sub_2406250C8(uint64_t a1, unint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9920, &qword_24076C7C0);
  if (swift_dynamicCast())
  {
    sub_24058C9C0(__src, &v43);
    __swift_project_boxed_opaque_existential_1(&v43, v44);
    sub_240759554();
    __src[0] = v42;
    __swift_destroy_boxed_opaque_existential_1(&v43);
    goto LABEL_63;
  }

  v41 = 0;
  memset(__src, 0, sizeof(__src));
  sub_2405B8A50(__src, qword_27E4B9928, &qword_24076C7C8);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_24075A8F4();
  }

  sub_240629518(&v43, v4, v5);
  v6 = *(&v43 + 1);
  v7 = v43;
  if (*(&v43 + 1) >> 60 != 15)
  {
    __src[0] = v43;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_24062A614(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x28223BE20](*&__src[0]);
  v34[2] = v39;
  v10 = sub_2406296B8(sub_24062BCF4, v34);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_240759674();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v42 + 7) = 0;
  *&v42 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_240629EB8(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_24075A154();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_24075A184();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v43 = v14;
      *(&v43 + 1) = v38;
      v31 = *(&v43 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_24075A8F4();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_240629EB8(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_24075A164();
LABEL_52:
    *(&v42 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v43 = v42;
      *(&v43 + 6) = *(&v42 + 6);
      sub_240759694();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    sub_240759694();
    sub_24058C9E4(v36, v6);
    goto LABEL_62;
  }

LABEL_57:

  sub_24058C9E4(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_2405BB9D4(*&__src[0], *(&__src[0] + 1));

  sub_2405BCD98(v32, *(&v32 + 1));
  return v32;
}

uint64_t static CryptographicIdentity.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v85 = a2;
  v7 = sub_240759E54();
  v72 = *(v7 - 8);
  v73 = v7;
  MEMORY[0x28223BE20](v7);
  v70 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9468, &qword_24076BB60);
  MEMORY[0x28223BE20](v9 - 8);
  v77 = &v69 - v10;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9478, &unk_24076BB78);
  MEMORY[0x28223BE20](v71);
  v74 = &v69 - v11;
  v84 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v75 = sub_24075A714();
  v83 = *(v75 - 8);
  v12 = MEMORY[0x28223BE20](v75);
  v76 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v78 = &v69 - v14;
  v15 = sub_24075A714();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v69 - v20;
  v86 = type metadata accessor for CryptographicIdentity(0, a3, a4, v22);
  v23 = v86[9];
  v24 = *(v16 + 16);
  v80 = a1;
  v24(v21, a1 + v23, v15);
  v25 = *(a3 - 8);
  v26 = *(v25 + 48);
  if (v26(v21, 1, a3) == 1)
  {
    v81 = 0xF000000000000000;
    v82 = 0;
    v27 = v16;
    v28 = v15;
  }

  else
  {
    v29 = (*(*(v84 + 8) + 8))(a3);
    v81 = v30;
    v82 = v29;
    v27 = v25;
    v28 = a3;
  }

  (*(v27 + 8))(v21, v28);
  v24(v19, v85 + v86[9], v15);
  if (v26(v19, 1, a3) == 1)
  {
    (*(v16 + 8))(v19, v15);
    v31 = v81;
    v32 = v83;
    if (v81 >> 60 != 15)
    {
      goto LABEL_18;
    }

    goto LABEL_9;
  }

  v33 = (*(*(v84 + 8) + 8))(a3);
  v35 = v34;
  (*(v25 + 8))(v19, a3);
  v31 = v81;
  v32 = v83;
  if (v81 >> 60 == 15)
  {
    if (v35 >> 60 == 15)
    {
LABEL_9:
      sub_24058C9E4(v82, v31);
      v36 = v78;
      v37 = AssociatedTypeWitness;
      goto LABEL_10;
    }

LABEL_19:
    sub_24058C9E4(v82, v31);
    sub_24058C9E4(v33, v35);
    goto LABEL_20;
  }

  v36 = v78;
  v37 = AssociatedTypeWitness;
  if (v35 >> 60 == 15)
  {
    goto LABEL_19;
  }

  v45 = v82;
  v46 = v81;
  sub_240618C78(v82, v81);
  sub_240618C78(v33, v35);
  v47 = sub_24062A208(v45, v46, v33, v35);
  sub_24058C9E4(v33, v35);
  sub_24058C9E4(v33, v35);
  sub_24058C9E4(v45, v46);
  sub_24058C9E4(v45, v46);
  if (!v47)
  {
    goto LABEL_20;
  }

LABEL_10:
  v38 = *(v32 + 16);
  v39 = v75;
  v38(v36, v80 + v86[10], v75);
  v40 = *(v37 - 8);
  v41 = *(v40 + 48);
  if (v41(v36, 1, v37) == 1)
  {
    v81 = 0xF000000000000000;
    v82 = 0;
    v42 = v32;
    v43 = v39;
    v44 = v39;
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v44 = v39;
    v49 = (*(*(AssociatedConformanceWitness + 8) + 8))(v37);
    v81 = v50;
    v82 = v49;
    v42 = v40;
    v43 = v37;
  }

  v51 = v76;
  (*(v42 + 8))(v36, v43);
  v38(v51, v85 + v86[10], v44);
  if (v41(v51, 1, v37) == 1)
  {
    (*(v83 + 8))(v51, v44);
    v31 = v81;
    v52 = v77;
    if (v81 >> 60 != 15)
    {
LABEL_18:
      v33 = 0;
      v35 = 0xF000000000000000;
      goto LABEL_19;
    }

    goto LABEL_24;
  }

  v55 = swift_getAssociatedConformanceWitness();
  v56 = v51;
  v33 = (*(*(v55 + 8) + 8))(v37);
  v35 = v57;
  (*(v40 + 8))(v56, v37);
  v31 = v81;
  v52 = v77;
  if (v81 >> 60 == 15)
  {
    if (v35 >> 60 != 15)
    {
      goto LABEL_19;
    }

LABEL_24:
    sub_24058C9E4(v82, v31);
    v58 = v74;
    goto LABEL_25;
  }

  v58 = v74;
  if (v35 >> 60 == 15)
  {
    goto LABEL_19;
  }

  v64 = v82;
  v65 = v81;
  sub_240618C78(v82, v81);
  sub_240618C78(v33, v35);
  v66 = sub_24062A208(v64, v65, v33, v35);
  sub_24058C9E4(v33, v35);
  sub_24058C9E4(v33, v35);
  sub_24058C9E4(v64, v65);
  sub_24058C9E4(v64, v65);
  if (!v66)
  {
    goto LABEL_20;
  }

LABEL_25:
  v59 = v86[11];
  v60 = *(v71 + 48);
  sub_240624EB4(v80 + v59, v58);
  sub_240624EB4(v85 + v59, v58 + v60);
  v62 = v72;
  v61 = v73;
  v63 = *(v72 + 48);
  if (v63(v58, 1, v73) == 1)
  {
    if (v63(v58 + v60, 1, v61) == 1)
    {
      sub_2405B8A50(v58, &qword_27E4B9468, &qword_24076BB60);
      v53 = 1;
      return v53 & 1;
    }
  }

  else
  {
    sub_240624EB4(v58, v52);
    if (v63(v58 + v60, 1, v61) != 1)
    {
      v67 = v70;
      (*(v62 + 32))(v70, v58 + v60, v61);
      sub_24062BC50(&qword_27E4B9480, MEMORY[0x277CC5330], MEMORY[0x277CC5348]);
      v53 = sub_24075A054();
      v68 = *(v62 + 8);
      v68(v67, v61);
      v68(v52, v61);
      sub_2405B8A50(v58, &qword_27E4B9468, &qword_24076BB60);
      return v53 & 1;
    }

    (*(v62 + 8))(v52, v61);
  }

  sub_2405B8A50(v58, &qword_27E4B9478, &unk_24076BB78);
LABEL_20:
  v53 = 0;
  return v53 & 1;
}

uint64_t CryptographicIdentity.hash(into:)(uint64_t a1, uint64_t a2)
{
  v41 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9468, &qword_24076BB60);
  MEMORY[0x28223BE20](v4 - 8);
  v39 = v36 - v5;
  v6 = *(a2 + 16);
  v7 = *(*(a2 + 24) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_24075A714();
  v37 = *(v9 - 8);
  v38 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = v36 - v10;
  v12 = sub_24075A714();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v36 - v14;
  v16 = *(a2 + 36);
  v17 = *(v13 + 16);
  v40 = v2;
  v17(v15, v2 + v16, v12);
  v18 = *(v6 - 8);
  v19 = (*(v18 + 48))(v15, 1, v6);
  v36[1] = v7;
  if (v19 == 1)
  {
    (*(v13 + 8))(v15, v12);
    sub_24075AE94();
  }

  else
  {
    v20 = (*(*(v7 + 8) + 8))(v6);
    v22 = v21;
    (*(v18 + 8))(v15, v6);
    sub_24075AE94();
    sub_2407596D4();
    sub_2405BCD98(v20, v22);
  }

  v24 = v37;
  v23 = v38;
  (*(v37 + 16))(v11, v40 + *(a2 + 40), v38);
  v25 = *(AssociatedTypeWitness - 8);
  if ((*(v25 + 48))(v11, 1, AssociatedTypeWitness) == 1)
  {
    (*(v24 + 8))(v11, v23);
    v26 = v41;
    sub_24075AE94();
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v28 = (*(*(AssociatedConformanceWitness + 8) + 8))(AssociatedTypeWitness);
    v30 = v29;
    (*(v25 + 8))(v11, AssociatedTypeWitness);
    v26 = v41;
    sub_24075AE94();
    sub_2407596D4();
    sub_2405BCD98(v28, v30);
  }

  v31 = v39;
  sub_240624EB4(v40 + *(a2 + 44), v39);
  v32 = sub_240759E54();
  v33 = *(v32 - 8);
  v34 = (*(v33 + 48))(v31, 1, v32);
  if (v34 == 1)
  {
    return sub_2405B8A50(v31, &qword_27E4B9468, &qword_24076BB60);
  }

  MEMORY[0x28223BE20](v34);
  v36[-2] = v26;
  sub_240759E34();
  return (*(v33 + 8))(v31, v32);
}

uint64_t CryptographicIdentity.hashValue.getter(uint64_t a1)
{
  sub_24075AE64();
  CryptographicIdentity.hash(into:)(v3, a1);
  return sub_24075AED4();
}

uint64_t CryptographicIdentity.Info.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_240626520(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C616E756D6D6F63 && a2 == 0xE800000000000000;
  if (v4 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C616E6F73726570 && a2 == 0xE800000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646E756F42706573 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24075ACF4();

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

uint64_t sub_24062667C(uint64_t a1)
{
  sub_24075AE64();
  sub_24057C4E4(v3, *v1);
  return sub_24075AED4();
}

uint64_t sub_2406266D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_240626520(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_240626700@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2405D5660();
  *a1 = result;
  return result;
}

uint64_t sub_24062672C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_240626780(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_2406267EC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24059C1DC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_24062681C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_240626870(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_2406268C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_240626918(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_24062696C@<X0>(uint64_t a2@<X2>, uint64_t (*a3)(void, void)@<X4>, _BYTE *a4@<X8>)
{
  v5 = a3(*(a2 + 16), *(a2 + 24));

  *a4 = v5 & 1;
  return result;
}

uint64_t sub_2406269B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_240626A0C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t CryptographicIdentity.Info.Kind.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = type metadata accessor for CryptographicIdentity.Info.Kind.SepBoundCodingKeys(255, v7, v8, a4);
  WitnessTable = swift_getWitnessTable();
  v43 = v9;
  v10 = sub_24075AC24();
  v40 = *(v10 - 8);
  v41 = v10;
  MEMORY[0x28223BE20](v10);
  v39 = &v30 - v11;
  v13 = type metadata accessor for CryptographicIdentity.Info.Kind.PersonalCodingKeys(255, v7, v8, v12);
  v14 = swift_getWitnessTable();
  v38 = v13;
  v36 = v14;
  v37 = sub_24075AC24();
  v35 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v34 = &v30 - v15;
  type metadata accessor for CryptographicIdentity.Info.Kind.CommunalCodingKeys(255, v7, v8, v16);
  v32 = swift_getWitnessTable();
  v33 = sub_24075AC24();
  v31 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v30 = &v30 - v17;
  type metadata accessor for CryptographicIdentity.Info.Kind.CodingKeys(255, v7, v8, v18);
  swift_getWitnessTable();
  v44 = sub_24075AC24();
  v19 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v21 = &v30 - v20;
  v22 = *v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24075AF74();
  v23 = (v19 + 8);
  if (v22)
  {
    if (v22 == 1)
    {
      v46 = 1;
      v24 = v34;
      v25 = v44;
      sub_24075AB54();
      (*(v35 + 8))(v24, v37);
      return (*v23)(v21, v25);
    }

    v47 = 2;
    v29 = v39;
    v28 = v44;
    sub_24075AB54();
    (*(v40 + 8))(v29, v41);
  }

  else
  {
    v45 = 0;
    v27 = v30;
    v28 = v44;
    sub_24075AB54();
    (*(v31 + 8))(v27, v33);
  }

  return (*v23)(v21, v28);
}

uint64_t CryptographicIdentity.Info.Kind.hashValue.getter()
{
  v1 = *v0;
  sub_24075AE64();
  MEMORY[0x245CC6BA0](v1);
  return sub_24075AED4();
}

uint64_t CryptographicIdentity.Info.Kind.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>, uint64_t a5@<X3>)
{
  v59 = a4;
  v8 = type metadata accessor for CryptographicIdentity.Info.Kind.SepBoundCodingKeys(255, a2, a3, a5);
  WitnessTable = swift_getWitnessTable();
  v58 = v8;
  v51 = sub_24075AB44();
  v50 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v56 = &v42 - v9;
  v11 = type metadata accessor for CryptographicIdentity.Info.Kind.PersonalCodingKeys(255, a2, a3, v10);
  v54 = swift_getWitnessTable();
  v55 = v11;
  v49 = sub_24075AB44();
  v48 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v53 = &v42 - v12;
  v14 = type metadata accessor for CryptographicIdentity.Info.Kind.CommunalCodingKeys(255, a2, a3, v13);
  v52 = swift_getWitnessTable();
  v47 = sub_24075AB44();
  v46 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v16 = &v42 - v15;
  v61 = a3;
  type metadata accessor for CryptographicIdentity.Info.Kind.CodingKeys(255, a2, a3, v17);
  swift_getWitnessTable();
  v60 = sub_24075AB44();
  v62 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v19 = &v42 - v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v20 = v67;
  sub_24075AF34();
  if (v20)
  {
    goto LABEL_8;
  }

  v43 = v16;
  v44 = v14;
  v45 = a2;
  v67 = a1;
  v21 = v60;
  v22 = v61;
  v23 = v19;
  *&v63 = sub_24075AB34();
  sub_24075A334();
  swift_getWitnessTable();
  *&v65 = sub_24075A774();
  *(&v65 + 1) = v24;
  *&v66 = v25;
  *(&v66 + 1) = v26;
  sub_24075A764();
  swift_getWitnessTable();
  sub_24075A5A4();
  v27 = v63;
  v28 = v21;
  if (v63 == 3 || (v42 = v65, v63 = v65, v64 = v66, (sub_24075A5B4() & 1) == 0))
  {
    v33 = sub_24075A8C4();
    swift_allocError();
    v35 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6620, &qword_24075DA40);
    *v35 = type metadata accessor for CryptographicIdentity.Info.Kind(0, v45, v22, v36);
    sub_24075AA64();
    sub_24075A8A4();
    (*(*(v33 - 8) + 104))(v35, *MEMORY[0x277D84160], v33);
    swift_willThrow();
    (*(v62 + 8))(v23, v28);
    swift_unknownObjectRelease();
    a1 = v67;
LABEL_8:
    v37 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v37);
  }

  if (v27)
  {
    v29 = v27;
    v30 = v62;
    if (v27 == 1)
    {
      LOBYTE(v63) = 1;
      v31 = v53;
      sub_24075AA54();
      v32 = v59;
      (*(v48 + 8))(v31, v49);
    }

    else
    {
      LOBYTE(v63) = 2;
      v41 = v56;
      sub_24075AA54();
      v32 = v59;
      (*(v50 + 8))(v41, v51);
    }

    (*(v30 + 8))(v23, v28);
    swift_unknownObjectRelease();
  }

  else
  {
    v29 = 0;
    LOBYTE(v63) = 0;
    v39 = v43;
    sub_24075AA54();
    v40 = v62;
    (*(v46 + 8))(v39, v47);
    (*(v40 + 8))(v23, v28);
    swift_unknownObjectRelease();
    v32 = v59;
  }

  *v32 = v29;
  v37 = v67;
  return __swift_destroy_boxed_opaque_existential_1(v37);
}

uint64_t sub_240627674(uint64_t a1)
{
  sub_24075AE64();
  CryptographicIdentity.Info.Kind.hash(into:)();
  return sub_24075AED4();
}

uint64_t CryptographicIdentity.Info.intoSalt()()
{
  v1 = *v0;
  v2 = v0[1];

  return sub_2406250C8(v1, v2);
}

BOOL static CryptographicIdentity.Info.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    return v2 == v3;
  }

  v5 = sub_24075ACF4();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t sub_240627788(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_24075ACF4();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_240627884(char a1)
{
  sub_24075AE64();
  MEMORY[0x245CC6BA0](a1 & 1);
  return sub_24075AED4();
}

uint64_t sub_2406278CC(char a1)
{
  if (a1)
  {
    return 1684957547;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_240627924(uint64_t a1)
{
  sub_24075AE64();
  sub_24062785C(v3, *v1);
  return sub_24075AED4();
}

uint64_t sub_24062797C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_240627788(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2406279AC@<X0>(_BYTE *a2@<X8>)
{
  result = sub_24062AC50();
  *a2 = result;
  return result;
}

uint64_t sub_2406279D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_240627A2C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t CryptographicIdentity.Info.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 16);
  v15 = *(a2 + 24);
  v16 = v6;
  type metadata accessor for CryptographicIdentity.Info.CodingKeys(255, v6, v15, a4);
  swift_getWitnessTable();
  v7 = sub_24075AC24();
  v18 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v17 = *(v4 + 8);
  v20 = *(v4 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24075AF74();
  v23 = 0;
  v10 = v19;
  sub_24075ABB4();
  if (v10)
  {
    return (*(v18 + 8))(v9, v7);
  }

  v13 = v18;
  v22 = v20;
  v21 = 1;
  type metadata accessor for CryptographicIdentity.Info.Kind(0, v16, v15, v11);
  swift_getWitnessTable();
  sub_24075ABE4();
  return (*(v13 + 8))(v9, v7);
}

uint64_t CryptographicIdentity.Info.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_24075A114();
  return MEMORY[0x245CC6BA0](v2);
}

uint64_t CryptographicIdentity.Info.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_24075AE64();
  sub_24075A114();
  MEMORY[0x245CC6BA0](v1);
  return sub_24075AED4();
}

uint64_t CryptographicIdentity.Info.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, uint64_t a5@<X3>)
{
  v23 = a4;
  type metadata accessor for CryptographicIdentity.Info.CodingKeys(255, a2, a3, a5);
  swift_getWitnessTable();
  v9 = sub_24075AB44();
  v24 = *(v9 - 8);
  v25 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24075AF34();
  if (v5)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = a2;
  v13 = v24;
  v14 = v25;
  v28 = 0;
  v15 = sub_24075AAC4();
  v17 = v16;
  v22 = v15;
  type metadata accessor for CryptographicIdentity.Info.Kind(0, v12, a3, v18);
  v26 = 1;
  swift_getWitnessTable();
  sub_24075AAF4();
  (*(v13 + 8))(v11, v14);
  v19 = v27;
  v20 = v23;
  *v23 = v22;
  v20[1] = v17;
  *(v20 + 16) = v19;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_240627FBC(uint64_t a1)
{
  sub_24075AE64();
  CryptographicIdentity.Info.hash(into:)(v2);
  return sub_24075AED4();
}

uint64_t sub_240627FFC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x797469746E656469 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_24075ACF4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_24062808C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_240627FFC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2406280C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_240628114(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t CryptographicIdentity.ExportedMaterial.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 + 24);
  v12 = *(a2 + 16);
  type metadata accessor for CryptographicIdentity.ExportedMaterial.CodingKeys(255, v12, v5, a4);
  swift_getWitnessTable();
  v6 = sub_24075AC24();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24075AF74();
  type metadata accessor for CryptographicIdentity(0, v12, v5, v10);
  swift_getWitnessTable();
  sub_24075ABE4();
  return (*(v7 + 8))(v9, v6);
}

uint64_t CryptographicIdentity.ExportedMaterial.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for CryptographicIdentity(0, *(a2 + 16), *(a2 + 24), a4);

  return CryptographicIdentity.hash(into:)(a1, v5);
}

uint64_t CryptographicIdentity.ExportedMaterial.hashValue.getter(uint64_t a1)
{
  sub_24075AE64();
  v3 = type metadata accessor for CryptographicIdentity(0, *(a1 + 16), *(a1 + 24), v2);
  CryptographicIdentity.hash(into:)(v5, v3);
  return sub_24075AED4();
}

uint64_t CryptographicIdentity.ExportedMaterial.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v27 = a5;
  v8 = type metadata accessor for CryptographicIdentity(0, a2, a3, a4);
  v30 = *(v8 - 8);
  v31 = v8;
  MEMORY[0x28223BE20](v8);
  v32 = &v25 - v9;
  type metadata accessor for CryptographicIdentity.ExportedMaterial.CodingKeys(255, a2, a3, v10);
  swift_getWitnessTable();
  v11 = sub_24075AB44();
  v28 = *(v11 - 8);
  v29 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - v12;
  v15 = type metadata accessor for CryptographicIdentity.ExportedMaterial(0, a2, a3, v14);
  v26 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v25 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v18 = v33;
  sub_24075AF34();
  if (!v18)
  {
    v25 = v17;
    v33 = v15;
    v19 = v28;
    v21 = v30;
    v20 = v31;
    swift_getWitnessTable();
    v22 = v29;
    sub_24075AAF4();
    (*(v19 + 8))(v13, v22);
    v23 = v25;
    (*(v21 + 32))(v25, v32, v20);
    (*(v26 + 32))(v27, v23, v33);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_240628710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  sub_24075AE64();
  a4(v7, a2);
  return sub_24075AED4();
}

uint64_t CryptographicIdentity<>.encrypt<A>(_:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v20[3] = a4;
  v20[1] = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9488, &qword_24076BB88);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v20 - v9;
  v11 = sub_240759E54();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_240622A04(a2, v14);
  if (!v5)
  {
    v16 = sub_240759D14();
    (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
    v17 = sub_240759D04();
    v19 = v18;
    sub_2405B8A50(v10, &qword_27E4B9488, &qword_24076BB88);
    result = (*(v12 + 8))(v14, v11);
    *a5 = v17;
    a5[1] = v19;
  }

  return result;
}

uint64_t CryptographicIdentity<>.decrypt<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v23 = a4;
  v10 = sub_240759E54();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_240622A04(a2, v13);
  if (!v5)
  {
    v15 = a5;
    v16 = sub_24062AC58(a1, a3, v23);
    v18 = v17;
    v19 = sub_240759CF4();
    v21 = v20;
    (*(v11 + 8))(v13, v10);
    result = sub_2405BCD98(v16, v18);
    *v15 = v19;
    v15[1] = v21;
  }

  return result;
}

uint64_t CryptographicIdentity<>.derived(with:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v78 = a1;
  v74 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9468, &qword_24076BB60);
  MEMORY[0x28223BE20](v8 - 8);
  v73 = &v58 - v9;
  v77 = a3;
  v72 = *(a3 + 8);
  v10 = *(a2 + 16);
  v75 = *(v72 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = sub_24075A714();
  v68 = *(v12 - 8);
  v69 = v12;
  MEMORY[0x28223BE20](v12);
  v71 = &v58 - v13;
  v14 = sub_24075A714();
  MEMORY[0x28223BE20](v14 - 8);
  v70 = &v58 - v15;
  v16 = sub_240759E54();
  v17 = *(v16 - 8);
  v66 = v16;
  v67 = v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_240759E24();
  v65 = *(v20 - 8);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = AssociatedTypeWitness;
  v76 = *(AssociatedTypeWitness - 8);
  v24 = MEMORY[0x28223BE20](v21);
  v87 = &v58 - v25;
  v26 = *(v10 - 8);
  MEMORY[0x28223BE20](v24);
  v28 = &v58 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240622658(a2, v28);
  if (v5)
  {
    return (*(*(a2 - 8) + 8))(v4, a2);
  }

  v61 = v23;
  v59 = v20;
  v64 = v28;
  v62 = v26;
  v60 = v19;
  v29 = v79;
  v63 = v4;
  sub_240622818(a2, v87);
  v31 = (*(*(v75 + 8) + 8))(v10);
  v33 = v32;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v35 = (*(*(*(AssociatedConformanceWitness + 8) + 8) + 8))(v29);
  v37 = v36;
  v85 = v31;
  v86 = v33;
  v83 = MEMORY[0x277CC9318];
  v84 = MEMORY[0x277CC9300];
  v80 = v35;
  v81 = v36;
  v38 = __swift_project_boxed_opaque_existential_1(&v80, MEMORY[0x277CC9318]);
  v39 = v38[1];
  v78 = *v38;
  v75 = v39;
  sub_2405BB9D4(v31, v33);
  sub_2405BB9D4(v35, v37);
  sub_240629F84(v78, v75, &v85);
  sub_2405BCD98(v35, v37);
  sub_2405BCD98(v31, v33);
  __swift_destroy_boxed_opaque_existential_1(&v80);
  v75 = v85;
  v78 = v86;
  v40 = *v63;
  v41 = *(v63 + 8);
  swift_bridgeObjectRetain_n();
  v42 = sub_2406250C8(v40, v41);
  v44 = v43;

  v45 = v61;
  v46 = v10;
  sub_240759EB4();
  v77 = 0;
  v47 = v62;
  sub_240759F44();
  v80 = v75;
  v81 = v78;
  v85 = v42;
  v86 = v44;
  sub_24062BC50(qword_27E4B9490, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  sub_2405BE3F8();
  v48 = v60;
  sub_240759E14();
  (*(v65 + 8))(v45, v59);
  (*(v76 + 8))(v87, v79);
  sub_2405BCD98(v42, v44);
  sub_2405BCD98(v75, v78);
  v49 = v63;
  v50 = *(v63 + 8);
  v51 = *(v63 + 16);
  v80 = *v63;
  v81 = v50;
  v82 = v51;
  v52 = v70;
  (*(v47 + 32))(v70, v64, v46);
  (*(v47 + 56))(v52, 0, 1, v46);
  v53 = v71;
  (*(v68 + 16))(v71, v49 + *(a2 + 40), v69);
  v54 = *(*(a2 - 8) + 8);

  v54(v49, a2);
  v55 = v66;
  v56 = v67;
  v57 = v73;
  (*(v67 + 32))(v73, v48, v66);
  (*(v56 + 56))(v57, 0, 1, v55);
  return sub_240622F04(&v80, v52, v53, v57, v46, v72, v74);
}

uint64_t sub_240629388(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
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
    v10 = sub_24062A150(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_2405BCD98(a3, a4);
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
  sub_2406E6E6C(v13, a3, a4, &v12);
  v10 = v4;
  sub_2405BCD98(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t *sub_240629518@<X0>(uint64_t *__return_ptr a1@<X8>, _BYTE *__src@<X0>, unint64_t a3@<X1>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a3)
  {
    if (a3 <= 14)
    {
      result = sub_24062A45C(__src, &__src[a3]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_240759544();
      swift_allocObject();
      v8 = sub_2407594F4();
      if (a3 >= 0x7FFFFFFF)
      {
        sub_240759664();
        result = swift_allocObject();
        result[2] = 0;
        result[3] = a3;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = (a3 << 32);
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a1 = result;
  a1[1] = v6;
  return result;
}

uint64_t sub_2406295E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a4;
  v12 = a5;
  v13 = a3;
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return sub_240629CA4(MEMORY[0x277D84B78], sub_24062BCB8, v10, a1, a2, MEMORY[0x277D84B78], MEMORY[0x277D84A98], TupleTypeMetadata2, MEMORY[0x277D84AC0], v9);
}

char *sub_2406296B8(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v19[2] = *MEMORY[0x277D85DE8];
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v8)
    {
      sub_2405BCD98(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      result = a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        result = v17;
      }

      v10 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v4 = v19[0];
      v4[1] = v10;
      return result;
    }

    v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

    sub_2405BCD98(v7, v6);
    *v4 = xmmword_24076BB50;
    sub_2405BCD98(0, 0xC000000000000000);
    v13 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v7)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_240759504() && __OFSUB__(v7, sub_240759534()))
      {
LABEL_26:
        __break(1u);
      }

      sub_240759544();
      swift_allocObject();
      v14 = sub_2407594E4();

      v12 = v14;
    }

    if (v13 >= v7)
    {

      v15 = sub_240629E04(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (!v3)
      {
        *v4 = v7;
        v4[1] = v11;
        return v15;
      }

      *v4 = v7;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v8 == 2)
  {

    sub_2405BCD98(v7, v6);
    v17 = v7;
    v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_24076BB50;
    sub_2405BCD98(0, 0xC000000000000000);
    sub_240759644();
    result = sub_240629E04(*(v17 + 2), *(v17 + 3), a1);
    v11 = v18 | 0x8000000000000000;
    if (!v3)
    {
      *v4 = v17;
      v4[1] = v11;
      return result;
    }

    *v4 = v17;
LABEL_21:
    v4[1] = v11;
    return result;
  }

  memset(v19, 0, 15);
  result = a1(&v17, v19, v19);
  if (!v3)
  {
    return v17;
  }

  return result;
}

_BYTE *sub_240629A5C@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_24062A45C(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_24062A598(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_24062A514(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_240629AF0@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X8>)
{
  v9 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v12 = *(swift_getTupleTypeMetadata2() + 48);
  (*(v9 + 16))(v11, a3, a4);
  result = sub_24075A1D4();
  *(a6 + v12) = result;
  return result;
}

void *sub_240629C38(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = (a1)(&v6, 0, 0, 0, a4);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_240629CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *(a7 - 8);
  v13 = MEMORY[0x28223BE20](a1);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v13);
  v22 = v24 - v21;
  if (v17)
  {
    v23 = *(*(v19 - 8) + 72);
    if (v23)
    {
      if (v18 - v17 != 0x8000000000000000 || v23 != -1)
      {
        result = v20(v17, (v18 - v17) / v23, v15);
        if (!v10)
        {
          return result;
        }

        return (*(v12 + 32))(a10, v15, a7);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  result = v20(0, 0, v24 - v21);
  v15 = v22;
  if (v10)
  {
    return (*(v12 + 32))(a10, v15, a7);
  }

  return result;
}

char *sub_240629E04(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_240759504();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_240759534();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_240759524();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

unint64_t sub_240629EB8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_24075A194();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x245CC5E90](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_240629F34@<X0>(uint64_t result@<X0>, void *a4@<X8>)
{
  if (result)
  {
    result = sub_24075A874();
    if ((v5 & 1) == 0)
    {
      *a4 = 0;
      a4[1] = 0xE000000000000000;
      a4[2] = 15;
      a4[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_240629F84(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      return sub_240759694();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_24062A0BC(v4, v5);
  }

  if (v3 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return sub_24062A0BC(v4, v5);
  }

  return sub_240759694();
}

uint64_t sub_24062A0BC(uint64_t a1, uint64_t a2)
{
  result = sub_240759504();
  if (!result || (result = sub_240759534(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_240759524();
      return sub_240759694();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24062A150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_240759504();
  v11 = result;
  if (result)
  {
    result = sub_240759534();
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

  sub_240759524();
  sub_2406E6E6C(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_24062A208(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
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
          sub_2405BB9D4(a3, a4);
          return sub_240629388(v13, a2, a3, a4) & 1;
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

uint64_t sub_24062A45C(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_24062A514(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_240759544();
  swift_allocObject();
  result = sub_2407594F4();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_24062A598(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_240759544();
  swift_allocObject();
  result = sub_2407594F4();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_240759664();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_24062A614(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_240759544();
      swift_allocObject();
      sub_240759514();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_240759664();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_24062A6B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = *MEMORY[0x277D85DE8];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v10 = &v29 - v9;
  v11 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](v8);
  v14 = &v29 - v13;
  MEMORY[0x28223BE20](v12);
  (*(v16 + 16))(&v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9920, &qword_24076C7C0);
  if (swift_dynamicCast())
  {
    sub_24058C9C0(v32, &v34);
    __swift_project_boxed_opaque_existential_1(&v34, v35);
    sub_240759554();
    v32[0] = v31;
    __swift_destroy_boxed_opaque_existential_1(&v34);
    goto LABEL_34;
  }

  v33 = 0;
  memset(v32, 0, sizeof(v32));
  sub_2405B8A50(v32, qword_27E4B9928, &qword_24076C7C8);
  sub_24075A1F4();
  if (*(&v34 + 1) >> 60 != 15)
  {
    v32[0] = v34;
    goto LABEL_34;
  }

  v30 = v34;
  v17 = sub_24075A1E4();
  *&v32[0] = sub_24062A614(v17);
  *(&v32[0] + 1) = v18;
  MEMORY[0x28223BE20](*&v32[0]);
  *(&v29 - 4) = a2;
  *(&v29 - 3) = a3;
  *(&v29 - 2) = a1;
  sub_240759684();
  v19 = *&v10[*(TupleTypeMetadata2 + 48)];
  (*(v11 + 32))(v14, v10, AssociatedTypeWitness);
  v20 = *(&v32[0] + 1) >> 62;
  if ((*(&v32[0] + 1) >> 62) <= 1)
  {
    if (v20)
    {
      if (__OFSUB__(DWORD1(v32[0]), v32[0]))
      {
        goto LABEL_38;
      }

      if (v19 == DWORD1(v32[0]) - LODWORD(v32[0]))
      {
        goto LABEL_20;
      }
    }

    else if (v19 == BYTE14(v32[0]))
    {
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  if (v20 == 2)
  {
    v22 = *(*&v32[0] + 16);
    v21 = *(*&v32[0] + 24);
    v23 = __OFSUB__(v21, v22);
    v24 = v21 - v22;
    if (v23)
    {
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    if (v19 == v24)
    {
      goto LABEL_20;
    }

LABEL_15:
    if (v20 == 2)
    {
      v25 = *(*&v32[0] + 24);
    }

    else if (v20 == 1)
    {
      v25 = *&v32[0] >> 32;
    }

    else
    {
      v25 = BYTE14(v32[0]);
    }

LABEL_31:
    if (v25 >= v19)
    {
      sub_240759674();
LABEL_33:
      (*(v11 + 8))(v14, AssociatedTypeWitness);
      goto LABEL_34;
    }

    goto LABEL_36;
  }

  if (v19)
  {
    v25 = 0;
    goto LABEL_31;
  }

LABEL_20:
  swift_getAssociatedConformanceWitness();
  *&v34 = 0;
  *(&v34 + 7) = 0;
  sub_24075A734();
  if (BYTE1(v31) == 1)
  {
    goto LABEL_28;
  }

  LOBYTE(v26) = 0;
  do
  {
    *(&v34 + v26) = v31;
    v26 = v26 + 1;
    if ((v26 >> 8))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    if (v26 == 14)
    {
      *&v31 = v34;
      *(&v31 + 6) = *(&v34 + 6);
      sub_240759694();
      LOBYTE(v26) = 0;
    }

    sub_24075A734();
  }

  while ((BYTE1(v31) & 1) == 0);
  if (v26)
  {
    *&v31 = v34;
    *(&v31 + 6) = *(&v34 + 6);
    sub_240759694();
    sub_24058C9E4(v30, *(&v30 + 1));
    goto LABEL_33;
  }

LABEL_28:
  (*(v11 + 8))(v14, AssociatedTypeWitness);
  sub_24058C9E4(v30, *(&v30 + 1));
LABEL_34:
  v27 = v32[0];
  sub_2405BB9D4(*&v32[0], *(&v32[0] + 1));
  sub_2405BCD98(v27, *(&v27 + 1));
  return v27;
}

uint64_t sub_24062AC58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(*(a3 + 8) + 8) + 8);
  if (sub_24075A594() >= 28)
  {
    return sub_24062A6B4(a1, a2, *(v5 + 8));
  }

  v6 = sub_240759D24();
  sub_24062BC50(&qword_27E4B9918, MEMORY[0x277CC51E8], MEMORY[0x277CC51F0]);
  swift_allocError();
  (*(*(v6 - 8) + 104))(v7, *MEMORY[0x277CC51E0], v6);
  return swift_willThrow();
}

uint64_t sub_24062AEB4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

void sub_24062AF30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CryptographicIdentity.Info(319, *(a1 + 16), *(a1 + 24), a4);
  if (v4 <= 0x3F)
  {
    sub_24075A714();
    if (v5 <= 0x3F)
    {
      swift_getAssociatedTypeWitness();
      sub_24075A714();
      if (v6 <= 0x3F)
      {
        sub_24062B818(319);
        if (v7 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_24062B01C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  v37 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  v38 = v9;
  v39 = v6;
  if (v6 <= v9)
  {
    v6 = v9;
  }

  v10 = *(sub_240759E54() - 8);
  v11 = v10;
  v12 = *(v10 + 84);
  v13 = v12 - 1;
  if (!v12)
  {
    v13 = 0;
  }

  if (v6 <= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = v6;
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = v14;
  }

  if (v5)
  {
    v16 = *(v4 + 64);
  }

  else
  {
    v16 = *(v4 + 64) + 1;
  }

  if (v8)
  {
    v17 = *(v7 + 64);
  }

  else
  {
    v17 = *(v7 + 64) + 1;
  }

  v18 = *(v4 + 80);
  v19 = *(v7 + 80);
  v20 = *(v10 + 80);
  v21 = *(v10 + 64);
  if (v12)
  {
    v22 = v21;
  }

  else
  {
    v22 = v21 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v23 = v17 + v20;
  if (a2 <= v15)
  {
    goto LABEL_48;
  }

  v24 = v22 + ((v23 + ((v16 + ((v18 + 17) & ~v18) + v19) & ~v19)) & ~v20);
  v25 = 8 * v24;
  if (v24 <= 3)
  {
    v27 = ((a2 - v15 + ~(-1 << v25)) >> v25) + 1;
    if (HIWORD(v27))
    {
      v26 = *(a1 + v24);
      if (!v26)
      {
        goto LABEL_48;
      }

      goto LABEL_35;
    }

    if (v27 > 0xFF)
    {
      v26 = *(a1 + v24);
      if (!*(a1 + v24))
      {
        goto LABEL_48;
      }

      goto LABEL_35;
    }

    if (v27 < 2)
    {
LABEL_48:
      if ((v14 & 0x80000000) == 0)
      {
        v31 = *(a1 + 1);
        if (v31 >= 0xFFFFFFFF)
        {
          LODWORD(v31) = -1;
        }

        return (v31 + 1);
      }

      v33 = (a1 + v18 + 17) & ~v18;
      if (v39 == v15)
      {
        if (v5 >= 2)
        {
          v34 = (*(v4 + 48))(v33, v5, v37);
          goto LABEL_63;
        }

        return 0;
      }

      v35 = (v33 + v16 + v19) & ~v19;
      if (v38 == v15)
      {
        if (v8 < 2)
        {
          return 0;
        }

        v34 = (*(v7 + 48))(v35, v8, AssociatedTypeWitness);
      }

      else
      {
        v34 = (*(v11 + 48))((v23 + v35) & ~v20);
      }

LABEL_63:
      if (v34 >= 2)
      {
        return v34 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v26 = *(a1 + v24);
  if (!*(a1 + v24))
  {
    goto LABEL_48;
  }

LABEL_35:
  v28 = (v26 - 1) << v25;
  if (v24 > 3)
  {
    v28 = 0;
  }

  if (v24)
  {
    if (v24 <= 3)
    {
      v29 = v24;
    }

    else
    {
      v29 = 4;
    }

    if (v29 > 2)
    {
      if (v29 == 3)
      {
        v30 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v30 = *a1;
      }
    }

    else if (v29 == 1)
    {
      v30 = *a1;
    }

    else
    {
      v30 = *a1;
    }
  }

  else
  {
    v30 = 0;
  }

  return v15 + (v30 | v28) + 1;
}

void sub_24062B3A4(_WORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v44 = v5;
  v6 = *(v5 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  v43 = *(a4 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v7 <= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = v7;
  }

  v12 = sub_240759E54();
  v13 = v6;
  v14 = 0;
  v15 = *(v12 - 8);
  v16 = *(v15 + 84);
  if (v16)
  {
    v17 = v16 - 1;
  }

  else
  {
    v17 = 0;
  }

  v18 = *(v5 + 80);
  v19 = *(v8 + 80);
  v20 = *(v15 + 80);
  if (v11 <= v17)
  {
    v21 = v17;
  }

  else
  {
    v21 = v11;
  }

  if (v21 <= 0x7FFFFFFF)
  {
    v22 = 0x7FFFFFFF;
  }

  else
  {
    v22 = v21;
  }

  if (v13)
  {
    v23 = *(v5 + 64);
  }

  else
  {
    v23 = *(v5 + 64) + 1;
  }

  if (v9)
  {
    v24 = *(v8 + 64);
  }

  else
  {
    v24 = *(v8 + 64) + 1;
  }

  v25 = v24 + v20;
  if (v16)
  {
    v26 = *(v15 + 64);
  }

  else
  {
    v26 = *(v15 + 64) + 1;
  }

  v27 = ((v25 + ((v23 + ((v18 + 17) & ~v18) + v19) & ~v19)) & ~v20) + v26;
  if (a3 > v22)
  {
    v14 = 1;
    if (v27 <= 3)
    {
      v28 = ((a3 - v22 + ~(-1 << (8 * v27))) >> (8 * v27)) + 1;
      v29 = HIWORD(v28);
      if (v28 < 0x100)
      {
        v30 = 1;
      }

      else
      {
        v30 = 2;
      }

      if (v28 >= 2)
      {
        v31 = v30;
      }

      else
      {
        v31 = 0;
      }

      if (v29)
      {
        v14 = 4;
      }

      else
      {
        v14 = v31;
      }
    }
  }

  if (v22 < a2)
  {
    v32 = ~v22 + a2;
    if (v27 < 4)
    {
      v33 = (v32 >> (8 * v27)) + 1;
      if (v27)
      {
        v34 = v32 & ~(-1 << (8 * v27));
        bzero(a1, v27);
        if (v27 != 3)
        {
          if (v27 == 2)
          {
            *a1 = v34;
            if (v14 > 1)
            {
LABEL_76:
              if (v14 == 2)
              {
                *(a1 + v27) = v33;
              }

              else
              {
                *(a1 + v27) = v33;
              }

              return;
            }
          }

          else
          {
            *a1 = v32;
            if (v14 > 1)
            {
              goto LABEL_76;
            }
          }

          goto LABEL_73;
        }

        *a1 = v34;
        *(a1 + 2) = BYTE2(v34);
      }

      if (v14 > 1)
      {
        goto LABEL_76;
      }
    }

    else
    {
      bzero(a1, v27);
      *a1 = v32;
      v33 = 1;
      if (v14 > 1)
      {
        goto LABEL_76;
      }
    }

LABEL_73:
    if (v14)
    {
      *(a1 + v27) = v33;
    }

    return;
  }

  if (v14 > 1)
  {
    if (v14 != 2)
    {
      *(a1 + v27) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_55;
    }

    *(a1 + v27) = 0;
  }

  else if (v14)
  {
    *(a1 + v27) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_55;
  }

  if (!a2)
  {
    return;
  }

LABEL_55:
  if ((v21 & 0x80000000) == 0)
  {
    if ((a2 & 0x80000000) != 0)
    {
      *(a1 + 16) = 0;
      *a1 = a2 & 0x7FFFFFFF;
      *(a1 + 1) = 0;
    }

    else
    {
      *(a1 + 1) = a2 - 1;
    }

    return;
  }

  v35 = (a1 + v18 + 17) & ~v18;
  if (v7 == v22)
  {
    if (v13 < 2)
    {
      return;
    }

    v36 = *(v44 + 56);
    v37 = a2 + 1;
    v38 = v13;
    v39 = v43;

    goto LABEL_64;
  }

  v35 = (v35 + v23 + v19) & ~v19;
  if (v10 == v22)
  {
    if (v9 < 2)
    {
      return;
    }

    v36 = *(v8 + 56);
    v37 = a2 + 1;
    v38 = v9;
    v39 = AssociatedTypeWitness;

LABEL_64:
    v36(v35, v37, v38, v39);
    return;
  }

  v40 = *(v15 + 56);
  v41 = (v25 + v35) & ~v20;

  v40(v41, a2 + 1);
}

void sub_24062B818(uint64_t a1)
{
  if (!qword_280FAD758)
  {
    sub_240759E54();
    v1 = sub_24075A714();
    if (!v2)
    {
      atomic_store(v1, &qword_280FAD758);
    }
  }
}

uint64_t sub_24062B870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24062B8AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_24062B8F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24062B934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CryptographicIdentity(319, *(a1 + 16), *(a1 + 24), a4);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24062BC50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_24062BCF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_240629C38(sub_24062BD5C, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

void sub_24062BDD0(const char *a1, ...)
{
  if (qword_280FAD9F0 != -1)
  {
    swift_once();
  }

  v2 = sub_240759AE4();
  __swift_project_value_buffer(v2, qword_280FADA00);
  oslog = sub_240759AC4();
  v3 = sub_24075A5E4();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v7 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_2405BBA7C(0xD00000000000001ALL, 0x80000002407874C0, &v7);
    _os_log_impl(&dword_240579000, oslog, v3, a1, v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x245CC76B0](v5, -1, -1);
    MEMORY[0x245CC76B0](v4, -1, -1);
  }
}

uint64_t sub_24062BF18()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    [v1 invalidate];
  }

  return swift_deallocClassInstance();
}

uint64_t sub_24062BFB0()
{
  v0[2] = 0;
  v1 = sub_24062C3D8();
  v0[4] = v1;
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v0 + 2;
  *(v2 + 24) = v1;
  v3 = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_24062C0C0;
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD000000000000013, 0x80000002407874A0, sub_24062C5C8, v2, v5);
}

uint64_t sub_24062C0C0()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_24062C244;
  }

  else
  {

    v2 = sub_24062C1DC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24062C1DC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_24062C244()
{

  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24062C2B8(int a1, uint64_t *a2, id a3)
{
  if (a3)
  {
    v4 = [a3 remoteObjectProxy];
    sub_24075A754();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9AB8, &unk_24076C990);
    v5 = swift_dynamicCast();
    v6 = v8;
    if (!v5)
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
  swift_unknownObjectRelease();
  if (*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7448, &qword_240762720);
    return sub_24075A364();
  }

  else
  {
    sub_24062C5D0();
    swift_allocError();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7448, &qword_240762720);
    return sub_24075A354();
  }
}

uint64_t sub_24062C3D8()
{
  result = *(v0 + 24);
  if (!result)
  {
    v2 = *(v0 + 16);
    if (v2)
    {
      v3 = [objc_allocWithZone(MEMORY[0x277CCAE80]) initWithListenerEndpoint_];
    }

    else
    {
      v4 = objc_allocWithZone(MEMORY[0x277CCAE80]);
      v5 = sub_24075A084();
      v3 = [v4 initWithMachServiceName:v5 options:4096];
    }

    v6 = _s12AppleIDSetup18AISDaemonInterfaceC03xpcD0So14NSXPCInterfaceCyFZ_0();
    [v3 setRemoteObjectInterface_];

    v14 = sub_24062BDB8;
    v15 = 0;
    v10 = MEMORY[0x277D85DD0];
    v11 = 1107296256;
    v12 = sub_240644810;
    v13 = &block_descriptor_2;
    v7 = _Block_copy(&v10);
    [v3 setInterruptionHandler_];
    _Block_release(v7);
    v14 = sub_24062BDC4;
    v15 = 0;
    v10 = MEMORY[0x277D85DD0];
    v11 = 1107296256;
    v12 = sub_240644810;
    v13 = &block_descriptor_14;
    v8 = _Block_copy(&v10);
    [v3 setInvalidationHandler_];
    _Block_release(v8);
    [v3 resume];
    v9 = *(v0 + 24);
    *(v0 + 24) = v3;

    return *(v0 + 24);
  }

  return result;
}

unint64_t sub_24062C5D0()
{
  result = qword_27E4B9AB0;
  if (!qword_27E4B9AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9AB0);
  }

  return result;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24062C650()
{
  result = qword_27E4B9AC0;
  if (!qword_27E4B9AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9AC0);
  }

  return result;
}

id SimpleSetupModelExchange.queue.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t SimpleSetupModelExchange.init(queue:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

id sub_24062C708()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t sub_24062C780(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_24062C7C8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

id AISShieldAppleIDSignInResult.init(authResults:)(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B8A30, &unk_240767EF0);
  v2 = sub_240759F54();

  v3 = [v1 initWithAuthResults_];

  return v3;
}

{
  *(v1 + OBJC_IVAR___AISShieldAppleIDSignInResult_authResults) = a1;
  v3.super_class = AISShieldAppleIDSignInResult;
  return objc_msgSendSuper2(&v3, sel_init);
}

id AISShieldAppleIDSignInResult.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for AISShieldAppleIDSignInResult()
{
  result = qword_27E4B9AD8;
  if (!qword_27E4B9AD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E4B9AD8);
  }

  return result;
}

uint64_t sub_24062CAF8()
{
  v0 = sub_240759AE4();
  __swift_allocate_value_buffer(v0, qword_27E4B9AE0);
  v1 = __swift_project_value_buffer(v0, qword_27E4B9AE0);
  if (qword_27E4B5EE0 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27E4B8590);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_24062CC74(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12AppleIDSetup22AgeMigrationController_anisetteClient;
  swift_beginAccess();
  *(v3 + v4) = v2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_24062CD24(uint64_t a1)
{
  v2 = v1;
  sub_2405B044C(a1, &v21, &qword_27E4B9B20, &qword_24076CB38);
  if (!v22)
  {
    return sub_2405B8A50(&v21, &qword_27E4B9B20, &qword_24076CB38);
  }

  sub_24058C9C0(&v21, v23);
  if (qword_27E4B5F18 != -1)
  {
    swift_once();
  }

  v3 = sub_240759AE4();
  __swift_project_value_buffer(v3, qword_27E4B9AE0);
  sub_2405F7830(v23, &v21);

  v4 = sub_240759AC4();
  v5 = sub_24075A5D4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = v7;
    *v6 = 136315394;
    sub_2405F7830(&v21, v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B40, &qword_24076CCC8);
    v8 = sub_24075A0E4();
    v10 = v9;
    __swift_destroy_boxed_opaque_existential_1(&v21);
    v11 = sub_2405BBA7C(v8, v10, &v20);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2080;
    v12 = OBJC_IVAR____TtC12AppleIDSetup22AgeMigrationController_activeSession;
    swift_beginAccess();
    sub_2405B044C(v2 + v12, v19, &qword_27E4B9B20, &qword_24076CB38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B20, &qword_24076CB38);
    v13 = sub_24075A0E4();
    v15 = sub_2405BBA7C(v13, v14, &v20);

    *(v6 + 14) = v15;
    _os_log_impl(&dword_240579000, v4, v5, "AgeMigrationController session changed from %s to %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CC76B0](v7, -1, -1);
    MEMORY[0x245CC76B0](v6, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(&v21);
  }

  v17 = v24;
  v18 = v25;
  __swift_project_boxed_opaque_existential_1(v23, v24);
  (*(v18 + 8))(0xD000000000000028, 0x8000000240787690, v17, v18);
  return __swift_destroy_boxed_opaque_existential_1(v23);
}

char *AgeMigrationController.init(queue:endpoint:inactiveSession:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v48 = a3;
  v49 = a2;
  v6 = sub_24075A634();
  v46 = *(v6 - 8);
  v47 = v6;
  MEMORY[0x28223BE20](v6);
  v45 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24075A624();
  MEMORY[0x28223BE20](v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9AF8, &qword_24076CB20);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v41 - v12;
  v14 = sub_240759CB4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_240759CE4();
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  *(v4 + OBJC_IVAR____TtC12AppleIDSetup22AgeMigrationController_anisetteClient) = 0;
  v21 = v4 + OBJC_IVAR____TtC12AppleIDSetup22AgeMigrationController_inactiveSession;
  *v21 = 0u;
  *(v21 + 16) = 0u;
  *(v21 + 32) = 0;
  v22 = v4 + OBJC_IVAR____TtC12AppleIDSetup22AgeMigrationController_activeSession;
  *(v22 + 4) = 0;
  *v22 = 0u;
  *(v22 + 1) = 0u;
  if (a1)
  {
    v23 = a1;
    v24 = a1;
    v25 = v48;
    v26 = v49;
  }

  else
  {
    v42 = v20;
    v43 = v10;
    v44 = 0;
    qos_class_self();
    sub_240759CA4();
    v27 = *(v15 + 48);
    if (v27(v13, 1, v14) == 1)
    {
      (*(v15 + 104))(v17, *MEMORY[0x277D851B0], v14);
      if (v27(v13, 1, v14) != 1)
      {
        sub_2405B8A50(v13, &qword_27E4B9AF8, &qword_24076CB20);
      }
    }

    else
    {
      (*(v15 + 32))(v17, v13, v14);
    }

    v28 = sub_2406082EC();
    v42 = "T@NSDictionary,N,R";
    v43 = v28;
    sub_240759CD4();
    v52 = MEMORY[0x277D84F90];
    sub_2406362FC(&qword_280FAD6F8, MEMORY[0x277D85230], MEMORY[0x277D85238]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B08, &qword_24076CB28);
    sub_240635FA0(&qword_280FAD728, &qword_27E4B9B08, &qword_24076CB28);
    sub_24075A794();
    (*(v46 + 104))(v45, *MEMORY[0x277D85260], v47);
    v23 = sub_24075A664();
    v25 = v48;
    v26 = v49;
    v24 = v44;
  }

  v4[14] = v23;
  sub_2405B044C(v26, v4 + OBJC_IVAR____TtC12AppleIDSetup22AgeMigrationController_endpoint, &qword_27E4B9B18, &qword_24076CB30);
  swift_beginAccess();
  v29 = v24;
  sub_24062D600(v25, v21);
  swift_endAccess();
  v30 = type metadata accessor for AgeMigrationController(0);
  v51.receiver = v4;
  v51.super_class = v30;
  v31 = v25;
  v32 = objc_msgSendSuper2(&v51, sel_init);
  v33 = swift_allocObject();
  swift_weakInit();
  v34 = type metadata accessor for AnisetteClient();
  v35 = objc_allocWithZone(v34);
  v36 = &v35[OBJC_IVAR____TtC12AppleIDSetup14AnisetteClient_send];
  *v36 = &unk_24076CB48;
  *(v36 + 1) = v33;
  v50.receiver = v35;
  v50.super_class = v34;
  v37 = v32;

  v38 = objc_msgSendSuper2(&v50, sel_init);

  sub_2405B8A50(v31, &qword_27E4B9B20, &qword_24076CB38);
  sub_2405B8A50(v26, &qword_27E4B9B18, &qword_24076CB30);

  v39 = OBJC_IVAR____TtC12AppleIDSetup22AgeMigrationController_anisetteClient;
  swift_beginAccess();
  *&v37[v39] = v38;

  swift_unknownObjectRelease();
  return v37;
}

uint64_t sub_24062D600(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B20, &qword_24076CB38);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for AgeMigrationController(uint64_t a1)
{
  result = qword_27E4B9B28;
  if (!qword_27E4B9B28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24062D6BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 80) = a1;
  *(v3 + 88) = a3;
  v4 = *(a2 + 16);
  *(v3 + 96) = *a2;
  *(v3 + 112) = v4;
  *(v3 + 49) = *(a2 + 32);
  return MEMORY[0x2822009F8](sub_24062D6EC, 0, 0);
}

uint64_t sub_24062D6EC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 128) = Strong;
  if (Strong)
  {
    v2 = *(v0 + 49);
    v3 = *(v0 + 112);
    *(v0 + 16) = *(v0 + 96);
    *(v0 + 32) = v3;
    *(v0 + 48) = v2;
    v4 = swift_task_alloc();
    *(v0 + 136) = v4;
    *v4 = v0;
    v4[1] = sub_24062D8EC;
    v5 = *(v0 + 80);

    return sub_240633F40(v5, v0 + 16);
  }

  else
  {
    if (qword_27E4B5F18 != -1)
    {
      swift_once();
    }

    v7 = sub_240759AE4();
    __swift_project_value_buffer(v7, qword_27E4B9AE0);
    v8 = sub_240759AC4();
    v9 = sub_24075A5E4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_240579000, v8, v9, "AgeMigrationController was deallocated before AnisetteClient could handle the request.", v10, 2u);
      MEMORY[0x245CC76B0](v10, -1, -1);
    }

    sub_2405DAFE4();
    swift_allocError();
    *v11 = 0u;
    *(v11 + 16) = 0u;
    *(v11 + 32) = 0;
    swift_willThrow();
    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_24062D8EC()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_24062DA64;
  }

  else
  {
    v2 = sub_24062DA00;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24062DA00()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24062DA64()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24062DAC8(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2405DA4B0;

  return sub_24062D6BC(a1, a2, v2);
}

uint64_t sub_24062DB74()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  if (qword_27E4B5F18 != -1)
  {
    swift_once();
  }

  v5 = sub_240759AE4();
  __swift_project_value_buffer(v5, qword_27E4B9AE0);
  v6 = sub_240759AC4();
  v7 = sub_24075A5D4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_240579000, v6, v7, "Invalidating age migration controller", v8, 2u);
    MEMORY[0x245CC76B0](v8, -1, -1);
  }

  v9 = sub_24075A3D4();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v1;

  sub_24060351C(0, 0, v4, &unk_24076CB60, v10);
}

uint64_t sub_24062DD3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 120) = a1;
  *(v4 + 128) = a4;
  return MEMORY[0x2822009F8](sub_24062DD5C, a4, 0);
}

uint64_t sub_24062DD5C()
{
  v1 = *(v0 + 128);
  v2 = OBJC_IVAR____TtC12AppleIDSetup22AgeMigrationController_activeSession;
  swift_beginAccess();
  sub_2405B044C(v1 + v2, v0 + 16, &qword_27E4B9B20, &qword_24076CB38);

  return MEMORY[0x2822009F8](sub_24062DDF8, 0, 0);
}

uint64_t sub_24062DDF8()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    sub_2405F7830(v0 + 16, v0 + 56);
    sub_2405B8A50(v0 + 16, &qword_27E4B9B20, &qword_24076CB38);
    v2 = *(v0 + 80);
    v3 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v2);
    (*(v3 + 8))(0xD000000000000014, 0x80000002407876C0, v2, v3);
    __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  }

  else
  {
    sub_2405B8A50(v0 + 16, &qword_27E4B9B20, &qword_24076CB38);
  }

  **(v0 + 120) = v1 == 0;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t AgeMigrationController.deinit()
{
  v1 = v0;
  if (qword_27E4B5F18 != -1)
  {
    swift_once();
  }

  v2 = sub_240759AE4();
  __swift_project_value_buffer(v2, qword_27E4B9AE0);

  v3 = sub_240759AC4();
  v4 = sub_24075A5D4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16[0] = v6;
    *v5 = 136315138;
    v7 = [ description];
    v8 = sub_24075A0B4();
    v10 = v9;

    v11 = sub_2405BBA7C(v8, v10, v16);

    *(v5 + 4) = v11;
    _os_log_impl(&dword_240579000, v3, v4, "AgeMigrationController deinitialized: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x245CC76B0](v6, -1, -1);
    MEMORY[0x245CC76B0](v5, -1, -1);
  }

  v12 = v1 + OBJC_IVAR____TtC12AppleIDSetup22AgeMigrationController_activeSession;
  swift_beginAccess();
  if (*(v12 + 24))
  {
    sub_2405F7830(v12, v16);
    v13 = v17;
    v14 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    (*(v14 + 8))(0xD000000000000026, 0x80000002407875C0, v13, v14);
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  sub_2405B8A50(v1 + OBJC_IVAR____TtC12AppleIDSetup22AgeMigrationController_endpoint, &qword_27E4B9B18, &qword_24076CB30);
  swift_unknownObjectRelease();
  sub_2405B8A50(v1 + OBJC_IVAR____TtC12AppleIDSetup22AgeMigrationController_inactiveSession, &qword_27E4B9B20, &qword_24076CB38);
  sub_2405B8A50(v12, &qword_27E4B9B20, &qword_24076CB38);
  swift_defaultActor_destroy();
  return v1;
}

uint64_t AgeMigrationController.__deallocating_deinit()
{
  AgeMigrationController.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_24062E1BC(uint64_t a1, uint64_t a2)
{
  v3[34] = a2;
  v3[35] = v2;
  v3[33] = a1;
  v3[36] = type metadata accessor for MachAgeMigrationMessage(0);
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  type metadata accessor for AgeMigrationContext(0);
  v3[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24062E2A4, v2, 0);
}

uint64_t sub_24062E2A4()
{
  v25 = v0;
  if (qword_27E4B5F18 != -1)
  {
    swift_once();
  }

  v1 = v0[41];
  v2 = v0[34];
  v3 = sub_240759AE4();
  v0[42] = __swift_project_value_buffer(v3, qword_27E4B9AE0);
  sub_240635B84(v2, v1, type metadata accessor for AgeMigrationContext);
  v4 = sub_240759AC4();
  v5 = sub_24075A5C4();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[41];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v24 = v9;
    *v8 = 136315138;
    v10 = AgeMigrationContext.description.getter();
    v12 = v11;
    sub_240635BEC(v7, type metadata accessor for AgeMigrationContext);
    v13 = sub_2405BBA7C(v10, v12, &v24);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_240579000, v4, v5, "Beginning age migration with context: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x245CC76B0](v9, -1, -1);
    MEMORY[0x245CC76B0](v8, -1, -1);
  }

  else
  {

    sub_240635BEC(v7, type metadata accessor for AgeMigrationContext);
  }

  sub_240630E50(v0[34], (v0 + 7));
  v14 = v0[39];
  v15 = v0[35];
  v16 = v0[34];
  sub_2405F7830((v0 + 7), (v0 + 12));
  v17 = OBJC_IVAR____TtC12AppleIDSetup22AgeMigrationController_activeSession;
  swift_beginAccess();
  sub_2405B044C(v15 + v17, (v0 + 17), &qword_27E4B9B20, &qword_24076CB38);
  swift_beginAccess();
  sub_24062D600((v0 + 12), v15 + v17);
  swift_endAccess();
  sub_24062CD24((v0 + 17));
  sub_2405B8A50((v0 + 17), &qword_27E4B9B20, &qword_24076CB38);
  sub_2405B8A50((v0 + 12), &qword_27E4B9B20, &qword_24076CB38);
  v18 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  sub_240635B84(v16, v14, type metadata accessor for AgeMigrationModel);
  swift_storeEnumTagMultiPayload();
  v23 = (*(v18 + 48) + **(v18 + 48));
  v19 = swift_task_alloc();
  v0[43] = v19;
  sub_2406362FC(&qword_27E4B7D78, type metadata accessor for MachAgeMigrationMessage, &protocol conformance descriptor for MachAgeMigrationMessage);
  sub_2406362FC(&qword_27E4B7D70, type metadata accessor for MachAgeMigrationMessage, &protocol conformance descriptor for MachAgeMigrationMessage);
  *v19 = v0;
  v19[1] = sub_24062E730;
  v21 = v0[39];
  v20 = v0[40];

  return v23(v20, v21);
}

uint64_t sub_24062E730()
{
  v2 = *v1;
  *(*v1 + 352) = v0;

  v3 = *(v2 + 312);
  v4 = *(v2 + 280);
  sub_240635BEC(v3, type metadata accessor for MachAgeMigrationMessage);
  if (v0)
  {
    v5 = sub_24062EEF8;
  }

  else
  {
    v5 = sub_24062E88C;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_24062E88C()
{
  v55 = v0;
  sub_240635B84(v0[40], v0[38], type metadata accessor for MachAgeMigrationMessage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 6)
  {
    v13 = v0[38];
    v14 = *v13;
    v15 = v13[1];
    v16 = v13[2];
    v17 = v13[3];
    v18 = v13[4];
    sub_240635224(*v13, v15);
    v19 = sub_240759AC4();
    v20 = sub_24075A5E4();
    sub_2405DB038(v14, v15, v16, v17, v18);
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v54[0] = v52;
      *v21 = 136315138;
      v0[22] = v14;
      v0[23] = v15;
      v0[24] = v16;
      v0[25] = v17;
      v0[26] = v18;
      sub_2405DAFE4();
      v22 = sub_24075AE04();
      v24 = sub_2405BBA7C(v22, v23, v54);

      *(v21 + 4) = v24;
      _os_log_impl(&dword_240579000, v19, v20, "Failed age migration due to error: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v52);
      MEMORY[0x245CC76B0](v52, -1, -1);
      MEMORY[0x245CC76B0](v21, -1, -1);
    }

    v25 = v0[40];
    v26 = v0[35];
    sub_2405DAFE4();
    swift_allocError();
    *v27 = v14;
    v27[1] = v15;
    v27[2] = v16;
    v27[3] = v17;
    v27[4] = v18;
    swift_willThrow();
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload != 3)
  {
    sub_240635B84(v0[40], v0[37], type metadata accessor for MachAgeMigrationMessage);
    v28 = sub_240759AC4();
    v29 = sub_24075A5E4();
    v30 = os_log_type_enabled(v28, v29);
    v31 = v0[37];
    if (v30)
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v54[0] = v33;
      *v32 = 136315138;
      v34 = MachAgeMigrationMessage.description.getter();
      v36 = v35;
      sub_240635BEC(v31, type metadata accessor for MachAgeMigrationMessage);
      v37 = sub_2405BBA7C(v34, v36, v54);

      *(v32 + 4) = v37;
      _os_log_impl(&dword_240579000, v28, v29, "Received unexpected mach age migration message: %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x245CC76B0](v33, -1, -1);
      MEMORY[0x245CC76B0](v32, -1, -1);
    }

    else
    {

      sub_240635BEC(v31, type metadata accessor for MachAgeMigrationMessage);
    }

    v40 = v0[40];
    v25 = v0[38];
    v26 = v0[35];
    sub_2405DAFE4();
    swift_allocError();
    *v41 = xmmword_24076CB10;
    *(v41 + 24) = 0;
    *(v41 + 32) = 0;
    *(v41 + 16) = 0;
    swift_willThrow();
    sub_240635BEC(v40, type metadata accessor for MachAgeMigrationMessage);
LABEL_14:
    sub_240635BEC(v25, type metadata accessor for MachAgeMigrationMessage);
    sub_24062EFA4(v26);
    __swift_destroy_boxed_opaque_existential_1(v0 + 7);

    v42 = v0[1];
    goto LABEL_18;
  }

  v2 = v0[38];
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  sub_24063526C(*v2, v4);
  v8 = sub_240759AC4();
  v9 = sub_24075A5C4();
  sub_2405E170C(v3, v4, v5, v6, v7);
  v50 = v5;
  v51 = v3;
  if (os_log_type_enabled(v8, v9))
  {
    v49 = v9;
    v10 = 0xD00000000000001ALL;
    v11 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v53 = v48;
    *v11 = 136315138;
    if (v4 == 20)
    {
      v12 = 0x8000000240787110;
    }

    else
    {
      v0[2] = v3;
      v0[3] = v4;
      v0[4] = v5;
      v0[5] = v6;
      v0[6] = v7;
      sub_24075A864();

      v54[0] = 0xD00000000000001BLL;
      v54[1] = 0x80000002407870F0;
      v43 = _AgeMigrationError.description.getter();
      MEMORY[0x245CC5E60](v43);

      MEMORY[0x245CC5E60](41, 0xE100000000000000);
      v10 = 0xD00000000000001BLL;
      v12 = 0x80000002407870F0;
    }

    v44 = v0[40];
    v45 = sub_2405BBA7C(v10, v12, &v53);

    *(v11 + 4) = v45;
    _os_log_impl(&dword_240579000, v8, v49, "Finished age migration with report: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v48);
    MEMORY[0x245CC76B0](v48, -1, -1);
    MEMORY[0x245CC76B0](v11, -1, -1);

    v39 = v44;
  }

  else
  {
    v38 = v0[40];

    v39 = v38;
  }

  sub_240635BEC(v39, type metadata accessor for MachAgeMigrationMessage);
  v46 = v0[33];
  sub_24062EFA4(v0[35]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);

  *v46 = v51;
  v46[1] = v4;
  v46[2] = v50;
  v46[3] = v6;
  v46[4] = v7;
  v42 = v0[1];
LABEL_18:

  return v42();
}

uint64_t sub_24062EEF8()
{
  sub_24062EFA4(v0[35]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24062EFA4(uint64_t a1)
{
  if (qword_27E4B5F18 != -1)
  {
    swift_once();
  }

  v2 = sub_240759AE4();
  __swift_project_value_buffer(v2, qword_27E4B9AE0);
  v3 = sub_240759AC4();
  v4 = sub_24075A5C4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_240579000, v3, v4, "Done with migration. Invalidating active session.", v5, 2u);
    MEMORY[0x245CC76B0](v5, -1, -1);
  }

  v10 = 0;
  memset(v9, 0, sizeof(v9));
  v6 = OBJC_IVAR____TtC12AppleIDSetup22AgeMigrationController_activeSession;
  swift_beginAccess();
  sub_2405B044C(a1 + v6, v8, &qword_27E4B9B20, &qword_24076CB38);
  swift_beginAccess();
  sub_24062D600(v9, a1 + v6);
  swift_endAccess();
  sub_24062CD24(v8);
  sub_2405B8A50(v8, &qword_27E4B9B20, &qword_24076CB38);
  return sub_2405B8A50(v9, &qword_27E4B9B20, &qword_24076CB38);
}

uint64_t sub_24062F128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v101 = a3;
  v108 = a2;
  v107 = type metadata accessor for AgeMigrationContext(0);
  MEMORY[0x28223BE20](v107);
  v95 = v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B48, &unk_24076CCD0);
  v102 = *(v103 - 8);
  v99 = *(v102 + 64);
  MEMORY[0x28223BE20](v103);
  v100 = v94 - v5;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7AE0, &qword_2407634B8);
  v97 = *(v96 - 8);
  v6 = MEMORY[0x28223BE20](v96);
  v109 = v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v106 = v94 - v9;
  v98 = v10;
  MEMORY[0x28223BE20](v8);
  v12 = v94 - v11;
  v115 = type metadata accessor for MachAgeMigrationMessage(0);
  v13 = MEMORY[0x28223BE20](v115);
  v105 = v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v113 = v94 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v110 = v94 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v114 = (v94 - v20);
  MEMORY[0x28223BE20](v19);
  v22 = v94 - v21;
  v23 = sub_240759C44();
  v24 = *(v23 - 8);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = v94 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = v94 - v28;
  if (qword_27E4B5EB0 != -1)
  {
    swift_once();
  }

  v104 = sub_240759AE4();
  v30 = __swift_project_value_buffer(v104, qword_27E4B8500);
  v31 = *(v24 + 16);
  v116 = a1;
  v31(v29, a1, v23);
  v112 = v30;
  v32 = sub_240759AC4();
  v33 = sub_24075A5D4();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v111 = v12;
    v35 = v34;
    v36 = swift_slowAlloc();
    v94[0] = v22;
    v37 = v36;
    *&aBlock = v36;
    *v35 = 136315138;
    v31(v27, v29, v23);
    v38 = sub_24075A0E4();
    v40 = v39;
    (*(v24 + 8))(v29, v23);
    v41 = sub_2405BBA7C(v38, v40, &aBlock);

    *(v35 + 4) = v41;
    _os_log_impl(&dword_240579000, v32, v33, "Received XPC message: %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v37);
    v42 = v37;
    v22 = v94[0];
    MEMORY[0x245CC76B0](v42, -1, -1);
    v43 = v35;
    v12 = v111;
    MEMORY[0x245CC76B0](v43, -1, -1);
  }

  else
  {

    (*(v24 + 8))(v29, v23);
  }

  sub_2406362FC(&qword_27E4B7D70, type metadata accessor for MachAgeMigrationMessage, &protocol conformance descriptor for MachAgeMigrationMessage);
  v44 = v114;
  sub_240759C34();
  sub_240635FFC(v44, v22, type metadata accessor for MachAgeMigrationMessage);
  v45 = v110;
  sub_240635B84(v22, v110, type metadata accessor for MachAgeMigrationMessage);
  if (swift_getEnumCaseMultiPayload() != 4)
  {
    sub_240635BEC(v45, type metadata accessor for MachAgeMigrationMessage);
    v57 = v105;
    sub_240635B84(v22, v105, type metadata accessor for MachAgeMigrationMessage);
    v58 = sub_240759AC4();
    v59 = sub_24075A5E4();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      *&aBlock = v61;
      *v60 = 136315138;
      v62 = MachAgeMigrationMessage.description.getter();
      v64 = v63;
      sub_240635BEC(v57, type metadata accessor for MachAgeMigrationMessage);
      v65 = sub_2405BBA7C(v62, v64, &aBlock);

      *(v60 + 4) = v65;
      _os_log_impl(&dword_240579000, v58, v59, "Received unexpected mach age migration message: %s", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v61);
      MEMORY[0x245CC76B0](v61, -1, -1);
      MEMORY[0x245CC76B0](v60, -1, -1);
    }

    else
    {

      sub_240635BEC(v57, type metadata accessor for MachAgeMigrationMessage);
    }

    v83 = v113;
    *(v113 + 4) = 0;
    *v83 = 0u;
    v83[1] = 0u;
    swift_storeEnumTagMultiPayload();
    sub_2406362FC(&qword_27E4B7D78, type metadata accessor for MachAgeMigrationMessage, &protocol conformance descriptor for MachAgeMigrationMessage);
    sub_240759C24();
    sub_240635BEC(v83, type metadata accessor for MachAgeMigrationMessage);
    v84 = v22;
    return sub_240635BEC(v84, type metadata accessor for MachAgeMigrationMessage);
  }

  sub_2405E150C(v45, v12, &qword_27E4B7AE0, &qword_2407634B8);
  if (qword_27E4B5EA0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v104, qword_27E506810);
  v46 = v106;
  sub_2405B044C(v12, v106, &qword_27E4B7AE0, &qword_2407634B8);
  v47 = sub_240759AC4();
  v48 = sub_24075A5D4();
  v49 = os_log_type_enabled(v47, v48);
  v111 = v12;
  if (v49)
  {
    v50 = swift_slowAlloc();
    v114 = swift_slowAlloc();
    *&aBlock = v114;
    *v50 = 136315138;
    sub_2405B044C(v46, v109, &qword_27E4B7AE0, &qword_2407634B8);
    v51 = sub_24075A0E4();
    v52 = v22;
    v54 = v53;
    sub_2405B8A50(v46, &qword_27E4B7AE0, &qword_2407634B8);
    v55 = sub_2405BBA7C(v51, v54, &aBlock);
    v22 = v52;

    *(v50 + 4) = v55;
    _os_log_impl(&dword_240579000, v47, v48, "Received coordinated model update: %s", v50, 0xCu);
    v56 = v114;
    __swift_destroy_boxed_opaque_existential_1(v114);
    MEMORY[0x245CC76B0](v56, -1, -1);
    MEMORY[0x245CC76B0](v50, -1, -1);
  }

  else
  {

    sub_2405B8A50(v46, &qword_27E4B7AE0, &qword_2407634B8);
  }

  v66 = v108;
  sub_2405B044C(v108 + *(v107 + 20), &aBlock, &qword_27E4B9B50, &qword_24076D670);
  if (!v119)
  {
    sub_2405B8A50(&aBlock, &qword_27E4B9B50, &qword_24076D670);
    v85 = v95;
    sub_240635B84(v66, v95, type metadata accessor for AgeMigrationContext);
    v86 = sub_240759AC4();
    v87 = sub_24075A5E4();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      *&aBlock = v89;
      *v88 = 136315138;
      v90 = AgeMigrationContext.description.getter();
      v92 = v91;
      sub_240635BEC(v85, type metadata accessor for AgeMigrationContext);
      v93 = sub_2405BBA7C(v90, v92, &aBlock);

      *(v88 + 4) = v93;
      _os_log_impl(&dword_240579000, v86, v87, "Unable to use exchange from context: %s", v88, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v89);
      MEMORY[0x245CC76B0](v89, -1, -1);
      MEMORY[0x245CC76B0](v88, -1, -1);
    }

    else
    {

      sub_240635BEC(v85, type metadata accessor for AgeMigrationContext);
    }

    sub_2405B8A50(v111, &qword_27E4B7AE0, &qword_2407634B8);
    v84 = v22;
    return sub_240635BEC(v84, type metadata accessor for MachAgeMigrationMessage);
  }

  sub_24058C9C0(&aBlock, &v123);
  v67 = v124;
  v68 = v125;
  __swift_project_boxed_opaque_existential_1(&v123, v124);
  v114 = (*(v68 + 8))(v67, v68);
  if (!v114)
  {
    v114 = *(v94[1] + 112);
  }

  sub_2405F7830(&v123, &v122);
  v69 = v109;
  sub_2405B044C(v111, v109, &qword_27E4B7AE0, &qword_2407634B8);
  v70 = v102;
  v71 = v100;
  v72 = v103;
  (*(v102 + 16))(v100, v101, v103);
  v73 = (*(v97 + 80) + 56) & ~*(v97 + 80);
  v74 = (v98 + v73 + 7) & 0xFFFFFFFFFFFFFFF8;
  v75 = (*(v70 + 80) + v74 + 8) & ~*(v70 + 80);
  v76 = swift_allocObject();
  sub_24058C9C0(&v122, v76 + 16);
  sub_2405E150C(v69, v76 + v73, &qword_27E4B7AE0, &qword_2407634B8);
  v77 = v114;
  *(v76 + v74) = v114;
  (*(v70 + 32))(v76 + v75, v71, v72);
  v78 = swift_allocObject();
  *(v78 + 16) = sub_240635C4C;
  *(v78 + 24) = v76;
  v120 = sub_240635D44;
  v121 = v78;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v118 = sub_2406C0E30;
  v119 = &block_descriptor_3;
  v79 = _Block_copy(&aBlock);
  v80 = v77;

  dispatch_async_and_wait(v80, v79);
  _Block_release(v79);
  LOBYTE(v71) = swift_isEscapingClosureAtFileLocation();

  if (v71)
  {
    __break(1u);
  }

  else
  {
    v82 = v113;
    swift_storeEnumTagMultiPayload();
    sub_2406362FC(&qword_27E4B7D78, type metadata accessor for MachAgeMigrationMessage, &protocol conformance descriptor for MachAgeMigrationMessage);
    sub_240759C24();

    sub_240635BEC(v82, type metadata accessor for MachAgeMigrationMessage);
    sub_2405B8A50(v111, &qword_27E4B7AE0, &qword_2407634B8);
    sub_240635BEC(v22, type metadata accessor for MachAgeMigrationMessage);
    __swift_destroy_boxed_opaque_existential_1(&v123);
  }

  return result;
}

uint64_t sub_2406301DC(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v25 = a4;
  v26 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B48, &unk_24076CCD0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7AE0, &qword_2407634B8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v14 = &v23 - v13;
  v15 = a1[4];
  v24 = a1[3];
  v23 = __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_2405B044C(a2, v14, &qword_27E4B7AE0, &qword_2407634B8);
  (*(v7 + 16))(v9, v25, v6);
  v16 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v17 = (v12 + *(v7 + 80) + v16) & ~*(v7 + 80);
  v18 = swift_allocObject();
  v19 = v26;
  *(v18 + 16) = v26;
  sub_2405E150C(v14, v18 + v16, &qword_27E4B7AE0, &qword_2407634B8);
  (*(v7 + 32))(v18 + v17, v9, v6);
  v20 = *(v15 + 16);
  v21 = v19;
  v20(a2, sub_240635D64, v18, v24, v15);
}

uint64_t sub_240630438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a1;
  v32 = a4;
  v30 = a3;
  v39 = a2;
  v36 = sub_240759C94();
  v38 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v34 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_240759CE4();
  v35 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v33 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B48, &unk_24076CCD0);
  v6 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v8 = &v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7AD0, &unk_24076CCE0);
  v28 = *(v9 - 8);
  v10 = *(v28 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7AE0, &qword_2407634B8);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v17 = &v28 - v16;
  sub_2405B044C(v30, &v28 - v16, &qword_27E4B7AE0, &qword_2407634B8);
  sub_2405B044C(v31, v12, &qword_27E4B7AD0, &unk_24076CCE0);
  v18 = v29;
  (*(v6 + 16))(v8, v32, v29);
  v19 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v20 = (v15 + *(v28 + 80) + v19) & ~*(v28 + 80);
  v21 = (v10 + *(v6 + 80) + v20) & ~*(v6 + 80);
  v22 = swift_allocObject();
  sub_2405E150C(v17, v22 + v19, &qword_27E4B7AE0, &qword_2407634B8);
  sub_2405E150C(v12, v22 + v20, &qword_27E4B7AD0, &unk_24076CCE0);
  (*(v6 + 32))(v22 + v21, v8, v18);
  aBlock[4] = sub_240635E54;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_240644810;
  aBlock[3] = &block_descriptor_39;
  v23 = _Block_copy(aBlock);
  v24 = v33;
  sub_240759CC4();
  v40 = MEMORY[0x277D84F90];
  sub_2406362FC(&qword_27E4B9B58, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B60, &unk_240770600);
  sub_240635FA0(&qword_27E4B9B68, &qword_27E4B9B60, &unk_240770600);
  v25 = v34;
  v26 = v36;
  sub_24075A794();
  MEMORY[0x245CC6370](0, v24, v25, v23);
  _Block_release(v23);
  (*(v38 + 8))(v25, v26);
  (*(v35 + 8))(v24, v37);
}

uint64_t sub_24063096C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = type metadata accessor for MachAgeMigrationMessage(0);
  MEMORY[0x28223BE20](v43);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B70, &qword_24076CCF0);
  v41 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v40 = &v35 - v9;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7AD0, &unk_24076CCE0);
  v10 = MEMORY[0x28223BE20](v39);
  v38 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v35 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7AE0, &qword_2407634B8);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v35 - v18;
  if (qword_27E4B5EA0 != -1)
  {
    swift_once();
  }

  v20 = sub_240759AE4();
  __swift_project_value_buffer(v20, qword_27E506810);
  sub_2405B044C(a1, v19, &qword_27E4B7AE0, &qword_2407634B8);
  v42 = a2;
  sub_2405B044C(a2, v13, &qword_27E4B7AD0, &unk_24076CCE0);
  v21 = sub_240759AC4();
  v22 = sub_24075A5D4();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v36 = v7;
    v44 = v35;
    *v23 = 136315394;
    v37 = a3;
    sub_2405B044C(v19, v17, &qword_27E4B7AE0, &qword_2407634B8);
    v24 = sub_24075A0E4();
    v26 = v25;
    sub_2405B8A50(v19, &qword_27E4B7AE0, &qword_2407634B8);
    v27 = sub_2405BBA7C(v24, v26, &v44);

    *(v23 + 4) = v27;
    *(v23 + 12) = 2080;
    sub_2405B044C(v13, v38, &qword_27E4B7AD0, &unk_24076CCE0);
    v28 = sub_24075A0E4();
    v30 = v29;
    sub_2405B8A50(v13, &qword_27E4B7AD0, &unk_24076CCE0);
    v31 = sub_2405BBA7C(v28, v30, &v44);

    *(v23 + 14) = v31;
    _os_log_impl(&dword_240579000, v21, v22, "Responding to model update (%s) with response: %s", v23, 0x16u);
    v32 = v35;
    swift_arrayDestroy();
    v7 = v36;
    MEMORY[0x245CC76B0](v32, -1, -1);
    MEMORY[0x245CC76B0](v23, -1, -1);
  }

  else
  {

    sub_2405B8A50(v13, &qword_27E4B7AD0, &unk_24076CCE0);
    sub_2405B8A50(v19, &qword_27E4B7AE0, &qword_2407634B8);
  }

  sub_2405B044C(v42, v7, &qword_27E4B7AD0, &unk_24076CCE0);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B48, &unk_24076CCD0);
  v33 = v40;
  sub_24075A414();
  return (*(v41 + 8))(v33, v8);
}

uint64_t sub_240630E50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  MEMORY[0x28223BE20](v3 - 8);
  v65 = &v61 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B78, &qword_24076CCF8);
  v76 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v70 = &v61 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B80, &qword_24076CD00);
  v74 = *(v7 - 8);
  v75 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v63 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v61 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B88, &qword_24076CD08);
  v69 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v71 = v14;
  v72 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v79 = &v61 - v15;
  v16 = type metadata accessor for AgeMigrationContext(0);
  v66 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v67 = v18;
  v68 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v61 - v19;
  if (qword_27E4B5F18 != -1)
  {
    swift_once();
  }

  v21 = sub_240759AE4();
  __swift_project_value_buffer(v21, qword_27E4B9AE0);
  sub_240635B84(a1, v20, type metadata accessor for AgeMigrationContext);
  v22 = sub_240759AC4();
  v23 = sub_24075A5D4();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v61 = a1;
    v25 = v24;
    v26 = v5;
    v27 = swift_slowAlloc();
    *&v78[0] = v27;
    *v25 = 136315138;
    v28 = AgeMigrationContext.description.getter();
    v30 = v29;
    sub_240635BEC(v20, type metadata accessor for AgeMigrationContext);
    v31 = sub_2405BBA7C(v28, v30, v78);

    *(v25 + 4) = v31;
    _os_log_impl(&dword_240579000, v22, v23, "Creating new XPC session for context: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    v32 = v27;
    v5 = v26;
    MEMORY[0x245CC76B0](v32, -1, -1);
    v33 = v25;
    a1 = v61;
    MEMORY[0x245CC76B0](v33, -1, -1);
  }

  else
  {

    sub_240635BEC(v20, type metadata accessor for AgeMigrationContext);
  }

  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B48, &unk_24076CCD0);
  v35 = v79;
  v36 = (*(*(v34 - 8) + 56))(v79, 1, 1, v34);
  MEMORY[0x28223BE20](v36);
  *(&v61 - 2) = v35;
  type metadata accessor for MachAgeMigrationMessage(0);
  (*(v76 + 13))(v70, *MEMORY[0x277D85778], v5);
  sub_24075A484();
  v37 = swift_allocObject();
  swift_weakInit();
  v38 = v35;
  v39 = v72;
  sub_2405B044C(v38, v72, &qword_27E4B9B88, &qword_24076CD08);
  v40 = a1;
  v41 = v68;
  sub_240635B84(v40, v68, type metadata accessor for AgeMigrationContext);
  v42 = *(v69 + 80);
  v43 = (v42 + 24) & ~v42;
  v44 = *(v66 + 80);
  v76 = v11;
  v45 = (v71 + v44 + v43) & ~v44;
  v46 = swift_allocObject();
  *(v46 + 16) = v37;
  sub_2405E150C(v39, v46 + v43, &qword_27E4B9B88, &qword_24076CD08);
  v47 = v46 + v45;
  v48 = v79;
  sub_240635FFC(v41, v47, type metadata accessor for AgeMigrationContext);
  sub_2405B044C(v48, v39, &qword_27E4B9B88, &qword_24076CD08);
  v49 = swift_allocObject();
  sub_2405E150C(v39, v49 + ((v42 + 16) & ~v42), &qword_27E4B9B88, &qword_24076CD08);
  v50 = v73;
  sub_240633554(sub_240636064, v46, sub_240636158, v49, v78);
  if (v50)
  {
    (*(v74 + 8))(v76, v75);

    v51 = v48;
  }

  else
  {
    v52 = sub_24075A3D4();
    (*(*(v52 - 8) + 56))(v65, 1, 1, v52);
    v54 = v74;
    v53 = v75;
    v55 = v63;
    (*(v74 + 16))(v63, v76, v75);
    sub_2405F7830(v78, v77);
    v56 = (*(v54 + 80) + 32) & ~*(v54 + 80);
    v57 = (v62 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
    v58 = swift_allocObject();
    *(v58 + 16) = 0;
    *(v58 + 24) = 0;
    (*(v54 + 32))(v58 + v56, v55, v53);
    sub_24058C9C0(v77, v58 + v57);
    v59 = v65;
    sub_240656510(0, 0, v65, &unk_24076CD18, v58);

    sub_2405B8A50(v59, &unk_27E4B9BF0, &qword_240762710);
    (*(v54 + 8))(v76, v53);
    sub_24058C9C0(v78, v64);
    v51 = v79;
  }

  return sub_2405B8A50(v51, &qword_27E4B9B88, &qword_24076CD08);
}

uint64_t sub_240631744(uint64_t a1, uint64_t a2)
{
  sub_2405B8A50(a2, &qword_27E4B9B88, &qword_24076CD08);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B48, &unk_24076CCD0);
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, a1, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, v4);
}

double sub_240631820@<D0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v50 = a4;
  v53 = a3;
  v57 = a1;
  v59 = a5;
  v5 = type metadata accessor for AgeMigrationContext(0);
  v51 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v52 = v6;
  v55 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_240759C44();
  v7 = *(v58 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v58);
  v10 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v56 = &v48 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  MEMORY[0x28223BE20](v12 - 8);
  v54 = &v48 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B88, &qword_24076CD08);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v48 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B48, &unk_24076CCD0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v21 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v48 - v22;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v25 = Strong;
    sub_2405B044C(v53, v16, &qword_27E4B9B88, &qword_24076CD08);
    if ((*(v18 + 48))(v16, 1, v17) != 1)
    {
      v37 = v23;
      v49 = v23;
      v38 = v7;
      v48 = *(v18 + 32);
      v53 = v18 + 32;
      v48(v37, v16, v17);
      v39 = sub_24075A3D4();
      (*(*(v39 - 8) + 56))(v54, 1, 1, v39);
      v40 = *(v7 + 16);
      v41 = v58;
      v40(v56, v57, v58);
      sub_240635B84(v50, v55, type metadata accessor for AgeMigrationContext);
      (*(v18 + 16))(v21, v49, v17);
      v42 = (*(v38 + 80) + 40) & ~*(v38 + 80);
      v43 = (v8 + *(v51 + 80) + v42) & ~*(v51 + 80);
      v44 = (v52 + *(v18 + 80) + v43) & ~*(v18 + 80);
      v45 = swift_allocObject();
      *(v45 + 2) = 0;
      *(v45 + 3) = 0;
      *(v45 + 4) = v25;
      (*(v38 + 32))(&v45[v42], v56, v41);
      sub_240635FFC(v55, &v45[v43], type metadata accessor for AgeMigrationContext);
      v48(&v45[v44], v21, v17);

      sub_240602F08(0, 0, v54, &unk_24076CD38, v45);

      (*(v18 + 8))(v49, v17);
      goto LABEL_10;
    }

    sub_2405B8A50(v16, &qword_27E4B9B88, &qword_24076CD08);
  }

  if (qword_27E4B5F18 != -1)
  {
    swift_once();
  }

  v26 = sub_240759AE4();
  __swift_project_value_buffer(v26, qword_27E4B9AE0);
  v27 = *(v7 + 16);
  v28 = v58;
  v27(v10, v57, v58);
  v29 = sub_240759AC4();
  v30 = sub_24075A5E4();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v60 = v32;
    *v31 = 136315138;
    v27(v56, v10, v28);
    v33 = sub_24075A0E4();
    v35 = v34;
    (*(v7 + 8))(v10, v28);
    v36 = sub_2405BBA7C(v33, v35, &v60);

    *(v31 + 4) = v36;
    _os_log_impl(&dword_240579000, v29, v30, "Received a new XPC message but lost self: %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v32);
    MEMORY[0x245CC76B0](v32, -1, -1);
    MEMORY[0x245CC76B0](v31, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v10, v28);
  }

LABEL_10:
  v46 = v59;
  *(v59 + 32) = 0;
  result = 0.0;
  *v46 = 0u;
  v46[1] = 0u;
  return result;
}

uint64_t sub_240631ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x2822009F8](sub_240631EFC, a4, 0);
}

uint64_t sub_240631EFC()
{
  sub_24062F128(v0[3], v0[4], v0[5]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_240631F60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B88, &qword_24076CD08);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23 - v5;
  v7 = sub_240759BF4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E4B5EB0 != -1)
  {
    swift_once();
  }

  v11 = sub_240759AE4();
  __swift_project_value_buffer(v11, qword_27E4B8500);
  v12 = *(v8 + 16);
  v12(v10, a1, v7);
  v13 = sub_240759AC4();
  v14 = sub_24075A5E4();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = v6;
    *v15 = 138412290;
    sub_2406362FC(&qword_27E4B9BA0, MEMORY[0x277D855E8], MEMORY[0x277D855F0]);
    swift_allocError();
    v16 = a2;
    v12(v17, v10, v7);
    v18 = _swift_stdlib_bridgeErrorToNSError();
    (*(v8 + 8))(v10, v7);
    *(v15 + 4) = v18;
    v19 = v23;
    *v23 = v18;
    a2 = v16;
    _os_log_impl(&dword_240579000, v13, v14, "XPC session cancelled: %@", v15, 0xCu);
    sub_2405B8A50(v19, &qword_27E4B92A0, &qword_240762400);
    v6 = v24;
    MEMORY[0x245CC76B0](v19, -1, -1);
    MEMORY[0x245CC76B0](v15, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  sub_2405B044C(a2, v6, &qword_27E4B9B88, &qword_24076CD08);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B48, &unk_24076CCD0);
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v6, 1, v20) == 1)
  {
    return sub_2405B8A50(v6, &qword_27E4B9B88, &qword_24076CD08);
  }

  sub_24075A424();
  return (*(v21 + 8))(v6, v20);
}

uint64_t sub_24063230C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_240759C44();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();
  v7 = type metadata accessor for MachAgeMigrationMessage(0);
  v5[9] = v7;
  v5[10] = *(v7 - 8);
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B90, &qword_24076CD20);
  v5[16] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B98, &qword_24076CD28);
  v5[17] = v8;
  v5[18] = *(v8 - 8);
  v5[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240632510, 0, 0);
}

uint64_t sub_240632510()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B80, &qword_24076CD00);
  sub_24075A444();
  v1 = swift_task_alloc();
  v0[20] = v1;
  *v1 = v0;
  v1[1] = sub_2406325D8;
  v2 = v0[16];
  v3 = v0[17];

  return MEMORY[0x2822003E8](v2, 0, 0, v3);
}

uint64_t sub_2406325D8()
{

  return MEMORY[0x2822009F8](sub_2406326D4, 0, 0);
}

uint64_t sub_2406326D4()
{
  v31 = v0;
  v1 = v0[16];
  if ((*(v0[10] + 48))(v1, 1, v0[9]) == 1)
  {
    (*(v0[18] + 8))(v0[19], v0[17]);
    if (qword_27E4B5EB0 != -1)
    {
      swift_once();
    }

    v2 = sub_240759AE4();
    __swift_project_value_buffer(v2, qword_27E4B8500);
    v3 = sub_240759AC4();
    v4 = sub_24075A5C4();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_240579000, v3, v4, "End of outgoing messages to daemon", v5, 2u);
      MEMORY[0x245CC76B0](v5, -1, -1);
    }

    v6 = v0[1];

    return v6();
  }

  else
  {
    sub_240635FFC(v1, v0[15], type metadata accessor for MachAgeMigrationMessage);
    if (qword_27E4B5EB0 != -1)
    {
      swift_once();
    }

    v8 = v0[14];
    v9 = v0[15];
    v10 = sub_240759AE4();
    v0[21] = __swift_project_value_buffer(v10, qword_27E4B8500);
    sub_240635B84(v9, v8, type metadata accessor for MachAgeMigrationMessage);
    v11 = sub_240759AC4();
    v12 = sub_24075A5D4();
    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[14];
    if (v13)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v30 = v16;
      *v15 = 136315138;
      v17 = MachAgeMigrationMessage.description.getter();
      v19 = v18;
      sub_240635BEC(v14, type metadata accessor for MachAgeMigrationMessage);
      v20 = sub_2405BBA7C(v17, v19, &v30);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_240579000, v11, v12, "Sending message: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x245CC76B0](v16, -1, -1);
      MEMORY[0x245CC76B0](v15, -1, -1);
    }

    else
    {

      sub_240635BEC(v14, type metadata accessor for MachAgeMigrationMessage);
    }

    v21 = v0[3];
    v22 = v21[3];
    v23 = v21[4];
    __swift_project_boxed_opaque_existential_1(v21, v22);
    v29 = (*(v23 + 56) + **(v23 + 56));
    v24 = swift_task_alloc();
    v0[22] = v24;
    v25 = sub_2406362FC(&qword_27E4B7D78, type metadata accessor for MachAgeMigrationMessage, &protocol conformance descriptor for MachAgeMigrationMessage);
    *v24 = v0;
    v24[1] = sub_240632B98;
    v26 = v0[15];
    v27 = v0[8];
    v28 = v0[9];

    return v29(v27, v26, v28, v25, v22, v23);
  }
}

uint64_t sub_240632B98()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_2406332B8;
  }

  else
  {
    v2 = sub_240632CAC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_240632CAC()
{
  v59 = v0;
  v1 = *(v0[5] + 16);
  v1(v0[7], v0[8], v0[4]);
  v2 = sub_240759AC4();
  v3 = sub_24075A5D4();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[7];
  if (v4)
  {
    v6 = v0[5];
    v7 = v0[6];
    v8 = v0[4];
    v9 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v58[0] = v55;
    *v9 = 136315138;
    v1(v7, v5, v8);
    v10 = sub_24075A0E4();
    v12 = v11;
    v13 = *(v6 + 8);
    v13(v5, v8);
    v14 = sub_2405BBA7C(v10, v12, v58);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_240579000, v2, v3, "Sent message and received reply: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v55);
    MEMORY[0x245CC76B0](v55, -1, -1);
    MEMORY[0x245CC76B0](v9, -1, -1);
  }

  else
  {
    v15 = v0[4];
    v16 = v0[5];

    v13 = *(v16 + 8);
    v13(v5, v15);
  }

  v17 = v0[23];
  sub_2406362FC(&qword_27E4B7D70, type metadata accessor for MachAgeMigrationMessage, &protocol conformance descriptor for MachAgeMigrationMessage);
  sub_240759C34();
  if (v17)
  {
    v13(v0[8], v0[4]);
    sub_240635B84(v0[15], v0[11], type metadata accessor for MachAgeMigrationMessage);
    v18 = v17;
    v19 = sub_240759AC4();
    v20 = sub_24075A5E4();

    v21 = os_log_type_enabled(v19, v20);
    v22 = v0[15];
    v23 = v0[11];
    if (v21)
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v58[0] = v26;
      *v24 = 136315394;
      v56 = v22;
      v27 = MachAgeMigrationMessage.description.getter();
      v29 = v28;
      sub_240635BEC(v23, type metadata accessor for MachAgeMigrationMessage);
      v30 = sub_2405BBA7C(v27, v29, v58);

      *(v24 + 4) = v30;
      *(v24 + 12) = 2112;
      v31 = v17;
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 14) = v32;
      *v25 = v32;
      _os_log_impl(&dword_240579000, v19, v20, "Failed to send message (%s) with error: %@", v24, 0x16u);
      sub_2405B8A50(v25, &qword_27E4B92A0, &qword_240762400);
      MEMORY[0x245CC76B0](v25, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x245CC76B0](v26, -1, -1);
      MEMORY[0x245CC76B0](v24, -1, -1);

      v33 = v56;
    }

    else
    {

      sub_240635BEC(v23, type metadata accessor for MachAgeMigrationMessage);
      v33 = v22;
    }
  }

  else
  {
    v57 = v13;
    sub_240635B84(v0[13], v0[12], type metadata accessor for MachAgeMigrationMessage);
    v34 = sub_240759AC4();
    v35 = sub_24075A5D4();
    v36 = os_log_type_enabled(v34, v35);
    v37 = v0[15];
    v39 = v0[12];
    v38 = v0[13];
    v40 = v0[8];
    v41 = v0[4];
    if (v36)
    {
      v54 = v0[4];
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v58[0] = v43;
      *v42 = 136315138;
      v52 = v40;
      v53 = v37;
      v44 = MachAgeMigrationMessage.description.getter();
      v46 = v45;
      sub_240635BEC(v39, type metadata accessor for MachAgeMigrationMessage);
      v47 = sub_2405BBA7C(v44, v46, v58);

      *(v42 + 4) = v47;
      _os_log_impl(&dword_240579000, v34, v35, "Decoded response: %s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v43);
      MEMORY[0x245CC76B0](v43, -1, -1);
      MEMORY[0x245CC76B0](v42, -1, -1);

      sub_240635BEC(v38, type metadata accessor for MachAgeMigrationMessage);
      v57(v52, v54);
      v33 = v53;
    }

    else
    {

      sub_240635BEC(v39, type metadata accessor for MachAgeMigrationMessage);
      sub_240635BEC(v38, type metadata accessor for MachAgeMigrationMessage);
      v57(v40, v41);
      v33 = v37;
    }
  }

  sub_240635BEC(v33, type metadata accessor for MachAgeMigrationMessage);
  v48 = swift_task_alloc();
  v0[20] = v48;
  *v48 = v0;
  v48[1] = sub_2406325D8;
  v49 = v0[16];
  v50 = v0[17];

  return MEMORY[0x2822003E8](v49, 0, 0, v50);
}

uint64_t sub_2406332B8()
{
  v24 = v0;
  v1 = v0[23];
  sub_240635B84(v0[15], v0[11], type metadata accessor for MachAgeMigrationMessage);
  v2 = v1;
  v3 = sub_240759AC4();
  v4 = sub_24075A5E4();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[15];
  v7 = v0[11];
  if (v5)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = v10;
    *v8 = 136315394;
    v22 = v6;
    v11 = MachAgeMigrationMessage.description.getter();
    v13 = v12;
    sub_240635BEC(v7, type metadata accessor for MachAgeMigrationMessage);
    v14 = sub_2405BBA7C(v11, v13, &v23);

    *(v8 + 4) = v14;
    *(v8 + 12) = 2112;
    v15 = v1;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v16;
    *v9 = v16;
    _os_log_impl(&dword_240579000, v3, v4, "Failed to send message (%s) with error: %@", v8, 0x16u);
    sub_2405B8A50(v9, &qword_27E4B92A0, &qword_240762400);
    MEMORY[0x245CC76B0](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x245CC76B0](v10, -1, -1);
    MEMORY[0x245CC76B0](v8, -1, -1);

    v17 = v22;
  }

  else
  {

    sub_240635BEC(v7, type metadata accessor for MachAgeMigrationMessage);
    v17 = v6;
  }

  sub_240635BEC(v17, type metadata accessor for MachAgeMigrationMessage);
  v18 = swift_task_alloc();
  v0[20] = v18;
  *v18 = v0;
  v18[1] = sub_2406325D8;
  v19 = v0[16];
  v20 = v0[17];

  return MEMORY[0x2822003E8](v19, 0, 0, v20);
}

uint64_t sub_240633554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v6 = v5;
  v88 = a4;
  v87 = a3;
  v86 = a2;
  v85 = a1;
  v84 = a5;
  v7 = sub_240759B44();
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v82 = (&v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v11 = &v76 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B18, &qword_24076CB30);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v76 - v13;
  v15 = sub_240759BE4();
  v83 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v76 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v76 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v76 - v25;
  v27 = OBJC_IVAR____TtC12AppleIDSetup22AgeMigrationController_inactiveSession;
  swift_beginAccess();
  sub_2405B044C(v6 + v27, &v92, &qword_27E4B9B20, &qword_24076CB38);
  if (v93)
  {
    sub_24058C9C0(&v92, &v94);
    if (qword_27E4B5F18 != -1)
    {
      swift_once();
    }

    v28 = sub_240759AE4();
    __swift_project_value_buffer(v28, qword_27E4B9AE0);
    sub_2405F7830(&v94, &v92);
    v29 = sub_240759AC4();
    v30 = sub_24075A5D4();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v97 = v32;
      *v31 = 136315138;
      sub_2405F7830(&v92, v91);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B40, &qword_24076CCC8);
      v33 = sub_24075A0E4();
      v35 = v34;
      __swift_destroy_boxed_opaque_existential_1(&v92);
      v36 = sub_2405BBA7C(v33, v35, &v97);

      *(v31 + 4) = v36;
      _os_log_impl(&dword_240579000, v29, v30, "Activating inactive session: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x245CC76B0](v32, -1, -1);
      MEMORY[0x245CC76B0](v31, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(&v92);
    }

    v48 = v95;
    v49 = v96;
    __swift_project_boxed_opaque_existential_1(&v94, v95);
    (*(v49 + 16))(*(v90 + 112), v48, v49);
    v50 = v95;
    v51 = v96;
    __swift_project_boxed_opaque_existential_1(&v94, v95);
    (*(v51 + 24))(v85, v86, v50, v51);
    v52 = v95;
    v53 = v96;
    __swift_project_boxed_opaque_existential_1(&v94, v95);
    (*(v53 + 32))(v87, v88, v52, v53);
    v54 = v95;
    v55 = v96;
    __swift_project_boxed_opaque_existential_1(&v94, v95);
    v56 = v89;
    (*(v55 + 40))(v54, v55);
    if (v56)
    {
      return __swift_destroy_boxed_opaque_existential_1(&v94);
    }

    else
    {
      return sub_24058C9C0(&v94, v84);
    }
  }

  else
  {
    v80 = v21;
    v81 = v18;
    sub_2405B8A50(&v92, &qword_27E4B9B20, &qword_24076CB38);
    sub_2405B044C(v90 + OBJC_IVAR____TtC12AppleIDSetup22AgeMigrationController_endpoint, v14, &qword_27E4B9B18, &qword_24076CB30);
    v37 = v83;
    if ((*(v83 + 48))(v14, 1, v15) == 1)
    {
      sub_2405B8A50(v14, &qword_27E4B9B18, &qword_24076CB30);
      if (qword_27E4B5F18 != -1)
      {
        swift_once();
      }

      v38 = sub_240759AE4();
      __swift_project_value_buffer(v38, qword_27E4B9AE0);
      v39 = sub_240759AC4();
      v40 = sub_24075A5D4();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        *&v94 = v42;
        *v41 = 136315138;
        *(v41 + 4) = sub_2405BBA7C(0xD000000000000028, 0x8000000240786850, &v94);
        _os_log_impl(&dword_240579000, v39, v40, "Creating new session for mach service: %s", v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v42);
        MEMORY[0x245CC76B0](v42, -1, -1);
        MEMORY[0x245CC76B0](v41, -1, -1);
      }

      v43 = sub_240759BD4();
      v44 = *(v90 + 112);
      sub_240759B34();

      v45 = v89;
      result = sub_240759B14();
      if (!v45)
      {
        v47 = v84;
        v84[3] = v43;
        v47[4] = &protocol witness table for XPCSession;
        *v47 = result;
      }
    }

    else
    {
      v57 = v15;
      v58 = v26;
      (*(v37 + 32))(v26, v14, v57);
      if (qword_27E4B5F18 != -1)
      {
        swift_once();
      }

      v59 = sub_240759AE4();
      __swift_project_value_buffer(v59, qword_27E4B9AE0);
      v60 = *(v37 + 16);
      v60(v24, v26, v57);
      v61 = sub_240759AC4();
      v79 = sub_24075A5D4();
      if (os_log_type_enabled(v61, v79))
      {
        v62 = swift_slowAlloc();
        v78 = v11;
        v63 = v62;
        v77 = swift_slowAlloc();
        *&v94 = v77;
        *v63 = 136315138;
        v60(v80, v24, v57);
        v80 = sub_24075A0E4();
        v64 = v58;
        v66 = v65;
        v82 = *(v37 + 8);
        v82(v24, v57);
        v67 = sub_2405BBA7C(v80, v66, &v94);
        v58 = v64;

        *(v63 + 4) = v67;
        _os_log_impl(&dword_240579000, v61, v79, "Creating new session with xpc endpoint: %s", v63, 0xCu);
        v68 = v77;
        __swift_destroy_boxed_opaque_existential_1(v77);
        MEMORY[0x245CC76B0](v68, -1, -1);
        MEMORY[0x245CC76B0](v63, -1, -1);
      }

      else
      {

        v82 = *(v37 + 8);
        v82(v24, v57);
      }

      v69 = v60;
      v70 = v81;
      v71 = sub_240759BD4();
      v69(v70, v58, v57);
      v72 = *(v90 + 112);
      sub_240759B34();

      v73 = v89;
      v74 = sub_240759BC4();
      if (!v73)
      {
        v75 = v84;
        v84[3] = v71;
        v75[4] = &protocol witness table for XPCSession;
        *v75 = v74;
      }

      return (v82)(v58, v57);
    }
  }

  return result;
}

uint64_t sub_240633F40(uint64_t a1, uint64_t a2)
{
  *(v3 + 240) = a1;
  *(v3 + 248) = v2;
  *(v3 + 256) = type metadata accessor for AnisetteCommand.Response(0);
  *(v3 + 264) = swift_task_alloc();
  *(v3 + 272) = swift_task_alloc();
  *(v3 + 280) = swift_task_alloc();
  *(v3 + 288) = type metadata accessor for MachAgeMigrationMessage(0);
  *(v3 + 296) = swift_task_alloc();
  *(v3 + 304) = swift_task_alloc();
  *(v3 + 312) = swift_task_alloc();
  *(v3 + 320) = swift_task_alloc();
  v5 = *(a2 + 16);
  *(v3 + 328) = *a2;
  *(v3 + 344) = v5;
  *(v3 + 129) = *(a2 + 32);

  return MEMORY[0x2822009F8](sub_240634060, v2, 0);
}

uint64_t sub_240634060()
{
  v55 = v0;
  v1 = *(v0 + 248);
  v2 = OBJC_IVAR____TtC12AppleIDSetup22AgeMigrationController_activeSession;
  swift_beginAccess();
  sub_2405B044C(v1 + v2, v0 + 56, &qword_27E4B9B20, &qword_24076CB38);
  if (*(v0 + 80))
  {
    sub_24058C9C0((v0 + 56), v0 + 16);
    if (qword_27E4B5F18 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 129);
    v5 = *(v0 + 344);
    v4 = *(v0 + 352);
    v7 = *(v0 + 328);
    v6 = *(v0 + 336);
    v8 = sub_240759AE4();
    *(v0 + 360) = __swift_project_value_buffer(v8, qword_27E4B9AE0);
    sub_240635AF0(v7, v6, v5, v4, v3);
    v9 = sub_240759AC4();
    v10 = sub_24075A5D4();
    sub_2405E1818(v7, v6, v5, v4, v3);
    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(v0 + 129);
      v13 = *(v0 + 344);
      v12 = *(v0 + 352);
      v15 = *(v0 + 328);
      v14 = *(v0 + 336);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v54[0] = v17;
      *v16 = 136315138;
      *(v0 + 176) = v15;
      *(v0 + 184) = v14;
      *(v0 + 192) = v13;
      *(v0 + 200) = v12;
      *(v0 + 208) = v11;
      sub_240635AF0(v15, v14, v13, v12, v11);
      v18 = sub_24075A0E4();
      v20 = sub_2405BBA7C(v18, v19, v54);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_240579000, v9, v10, "AgeMigrationController - Sending anisette request %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x245CC76B0](v17, -1, -1);
      MEMORY[0x245CC76B0](v16, -1, -1);
    }

    v21 = *(v0 + 129);
    v23 = *(v0 + 344);
    v22 = *(v0 + 352);
    v25 = *(v0 + 328);
    v24 = *(v0 + 336);
    v26 = *(v0 + 312);
    v27 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    *v26 = v25;
    *(v26 + 8) = v24;
    *(v26 + 16) = v23;
    *(v26 + 24) = v22;
    *(v26 + 32) = v21;
    swift_storeEnumTagMultiPayload();
    v28 = *(v27 + 48);
    sub_240635AF0(v25, v24, v23, v22, v21);
    v53 = (v28 + *v28);
    v29 = swift_task_alloc();
    *(v0 + 368) = v29;
    sub_2406362FC(&qword_27E4B7D78, type metadata accessor for MachAgeMigrationMessage, &protocol conformance descriptor for MachAgeMigrationMessage);
    sub_2406362FC(&qword_27E4B7D70, type metadata accessor for MachAgeMigrationMessage, &protocol conformance descriptor for MachAgeMigrationMessage);
    *v29 = v0;
    v29[1] = sub_240634688;
    v31 = *(v0 + 312);
    v30 = *(v0 + 320);

    return v53(v30, v31);
  }

  else
  {
    sub_2405B8A50(v0 + 56, &qword_27E4B9B20, &qword_24076CB38);
    if (qword_27E4B5F18 != -1)
    {
      swift_once();
    }

    v33 = *(v0 + 129);
    v35 = *(v0 + 344);
    v34 = *(v0 + 352);
    v37 = *(v0 + 328);
    v36 = *(v0 + 336);
    v38 = sub_240759AE4();
    __swift_project_value_buffer(v38, qword_27E4B9AE0);
    sub_240635AF0(v37, v36, v35, v34, v33);
    v39 = sub_240759AC4();
    v40 = sub_24075A5E4();
    sub_2405E1818(v37, v36, v35, v34, v33);
    if (os_log_type_enabled(v39, v40))
    {
      v41 = *(v0 + 129);
      v43 = *(v0 + 344);
      v42 = *(v0 + 352);
      v45 = *(v0 + 328);
      v44 = *(v0 + 336);
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v54[0] = v47;
      *v46 = 136315138;
      *(v0 + 96) = v45;
      *(v0 + 104) = v44;
      *(v0 + 112) = v43;
      *(v0 + 120) = v42;
      *(v0 + 128) = v41;
      sub_240635AF0(v45, v44, v43, v42, v41);
      v48 = sub_24075A0E4();
      v50 = sub_2405BBA7C(v48, v49, v54);

      *(v46 + 4) = v50;
      _os_log_impl(&dword_240579000, v39, v40, "No active session to forward anisette request %s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v47);
      MEMORY[0x245CC76B0](v47, -1, -1);
      MEMORY[0x245CC76B0](v46, -1, -1);
    }

    sub_2405DAFE4();
    swift_allocError();
    *v51 = 0u;
    *(v51 + 16) = 0u;
    *(v51 + 32) = 0;
    swift_willThrow();

    v52 = *(v0 + 8);

    return v52();
  }
}

uint64_t sub_240634688()
{
  v2 = *v1;
  *(*v1 + 376) = v0;

  v3 = *(v2 + 312);
  v4 = *(v2 + 248);
  sub_240635BEC(v3, type metadata accessor for MachAgeMigrationMessage);
  if (v0)
  {
    v5 = sub_240634D80;
  }

  else
  {
    v5 = sub_2406347E4;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2406347E4()
{
  v46 = v0;
  sub_240635B84(*(v0 + 320), *(v0 + 304), type metadata accessor for MachAgeMigrationMessage);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v1 = *(v0 + 129);
    v3 = *(v0 + 344);
    v2 = *(v0 + 352);
    v5 = *(v0 + 328);
    v4 = *(v0 + 336);
    v7 = *(v0 + 272);
    v6 = *(v0 + 280);
    sub_240635FFC(*(v0 + 304), v6, type metadata accessor for AnisetteCommand.Response);
    sub_240635B84(v6, v7, type metadata accessor for AnisetteCommand.Response);
    sub_240635AF0(v5, v4, v3, v2, v1);
    v8 = sub_240759AC4();
    v9 = sub_24075A5D4();
    sub_2405E1818(v5, v4, v3, v2, v1);
    if (os_log_type_enabled(v8, v9))
    {
      v43 = *(v0 + 129);
      v41 = *(v0 + 344);
      v42 = *(v0 + 352);
      v10 = *(v0 + 328);
      v11 = *(v0 + 336);
      v44 = *(v0 + 320);
      v13 = *(v0 + 264);
      v12 = *(v0 + 272);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v45[0] = v15;
      *v14 = 136315394;
      sub_240635B84(v12, v13, type metadata accessor for AnisetteCommand.Response);
      v16 = sub_24075A0E4();
      v18 = v17;
      sub_240635BEC(v12, type metadata accessor for AnisetteCommand.Response);
      v19 = sub_2405BBA7C(v16, v18, v45);

      *(v14 + 4) = v19;
      *(v14 + 12) = 2080;
      *(v0 + 136) = v10;
      *(v0 + 144) = v11;
      *(v0 + 152) = v41;
      *(v0 + 160) = v42;
      *(v0 + 168) = v43;
      sub_240635AF0(v10, v11, v41, v42, v43);
      v20 = sub_24075A0E4();
      v22 = sub_2405BBA7C(v20, v21, v45);

      *(v14 + 14) = v22;
      _os_log_impl(&dword_240579000, v8, v9, "AgeMigrationController - Received anisette response %s for request %s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245CC76B0](v15, -1, -1);
      MEMORY[0x245CC76B0](v14, -1, -1);

      v23 = v44;
    }

    else
    {
      v34 = *(v0 + 320);
      v35 = *(v0 + 272);

      sub_240635BEC(v35, type metadata accessor for AnisetteCommand.Response);
      v23 = v34;
    }

    sub_240635BEC(v23, type metadata accessor for MachAgeMigrationMessage);
    sub_240635FFC(*(v0 + 280), *(v0 + 240), type metadata accessor for AnisetteCommand.Response);
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));

    v36 = *(v0 + 8);
  }

  else
  {
    sub_240635B84(*(v0 + 320), *(v0 + 296), type metadata accessor for MachAgeMigrationMessage);
    v24 = sub_240759AC4();
    v25 = sub_24075A5E4();
    v26 = os_log_type_enabled(v24, v25);
    v27 = *(v0 + 296);
    if (v26)
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v45[0] = v29;
      *v28 = 136315138;
      v30 = MachAgeMigrationMessage.description.getter();
      v32 = v31;
      sub_240635BEC(v27, type metadata accessor for MachAgeMigrationMessage);
      v33 = sub_2405BBA7C(v30, v32, v45);

      *(v28 + 4) = v33;
      _os_log_impl(&dword_240579000, v24, v25, "Received unexpected mach age migration message when forwarding anisette request: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x245CC76B0](v29, -1, -1);
      MEMORY[0x245CC76B0](v28, -1, -1);
    }

    else
    {

      sub_240635BEC(v27, type metadata accessor for MachAgeMigrationMessage);
    }

    v37 = *(v0 + 320);
    v38 = *(v0 + 304);
    sub_2405DAFE4();
    swift_allocError();
    *v39 = xmmword_24076CB10;
    *(v39 + 24) = 0;
    *(v39 + 32) = 0;
    *(v39 + 16) = 0;
    swift_willThrow();
    sub_240635BEC(v37, type metadata accessor for MachAgeMigrationMessage);
    sub_240635BEC(v38, type metadata accessor for MachAgeMigrationMessage);
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));

    v36 = *(v0 + 8);
  }

  return v36();
}

uint64_t sub_240634D80()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

void AgeMigrationController.__allocating_init()()
{
  swift_allocObject();
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

void AgeMigrationController.init()()
{
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t sub_240634F28()
{
  swift_beginAccess();
  v3 = *(v0 + 8);
  v1 = swift_unknownObjectRetain();

  return v3(v1);
}

uint64_t sub_240634FB8(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  v4 = swift_task_alloc();
  *(v2 + 64) = v4;
  *v4 = v2;
  v4[1] = sub_240635058;

  return sub_24062E1BC(v2 + 16, a2);
}

uint64_t sub_240635058()
{
  v2 = *v1;
  v3 = *v1;

  if (!v0)
  {
    v4 = *(v2 + 16);
    v5 = *(v2 + 32);
    v6 = *(v2 + 56);
    *(v6 + 32) = *(v2 + 48);
    *v6 = v4;
    *(v6 + 16) = v5;
  }

  v7 = *(v3 + 8);

  return v7();
}

uint64_t sub_240635170(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2405CE450;

  return sub_24062DD3C(a1, v4, v5, v6);
}

uint64_t sub_240635224(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x14)
  {
  }

  return result;
}

uint64_t sub_24063526C(uint64_t a1, unint64_t a2)
{
  if (a2 != 20)
  {
    return sub_240635224(a1, a2);
  }

  return a1;
}

uint64_t dispatch thunk of AgeMigrationControllerProtocol.anisetteClient.getter(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2405CE5D8;

  return v7(a1, a2);
}

uint64_t dispatch thunk of AgeMigrationControllerProtocol.beginMigration(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2405DA4B0;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of AgeMigrationSession.send<A, B>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = (*(a8 + 48) + **(a8 + 48));
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_2405DA4B0;

  return v19(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t dispatch thunk of AgeMigrationSession.send<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 56) + **(a6 + 56));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_2405CE450;

  return v15(a1, a2, a3, a4, a5, a6);
}

void sub_24063580C(uint64_t a1)
{
  sub_240635A98(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of AgeMigrationController.beginMigration(with:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0xD8);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2405DA4B0;

  return v9(a1, a2);
}

void sub_240635A98(uint64_t a1)
{
  if (!qword_27E4B9B38)
  {
    sub_240759BE4();
    v1 = sub_24075A714();
    if (!v2)
    {
      atomic_store(v1, &qword_27E4B9B38);
    }
  }
}

uint64_t sub_240635AF0(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  if (a5)
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  v7 = (a4 >> 60) & 3 | v6;
  if (v7 == 3)
  {

    a2 = a4 & 0xCFFFFFFFFFFFFFFFLL;
    result = a3;

    return sub_2405BB9D4(result, a2);
  }

  if (v7 != 2)
  {
    if (v7)
    {
      return result;
    }

    return sub_2405BB9D4(result, a2);
  }
}

uint64_t sub_240635B84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_240635BEC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_240635C4C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7AE0, &qword_2407634B8) - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B48, &unk_24076CCD0) - 8);
  v5 = *(v0 + v3);
  v6 = v0 + ((v3 + *(v4 + 80) + 8) & ~*(v4 + 80));

  return sub_2406301DC((v0 + 16), v0 + v2, v5, v6);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_240635D64(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7AE0, &qword_2407634B8) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B48, &unk_24076CCD0) - 8);
  v7 = *(v1 + 16);
  v8 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_240630438(a1, v7, v1 + v4, v8);
}

uint64_t sub_240635E54()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7AE0, &qword_2407634B8) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7AD0, &unk_24076CCE0) - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B48, &unk_24076CCD0) - 8);
  v8 = v0 + ((v5 + v6 + *(v7 + 80)) & ~*(v7 + 80));

  return sub_24063096C(v0 + v2, v0 + v5, v8);
}

uint64_t sub_240635FA0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_240635FFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_240636064@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B88, &qword_24076CD08) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for AgeMigrationContext(0) - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_240631820(a1, v2 + v6, v9, a2);
}

uint64_t sub_240636158(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B88, &qword_24076CD08) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_240631F60(a1, v4);
}

uint64_t sub_2406361D4(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B80, &qword_24076CD00) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2405DA4B0;

  return sub_24063230C(a1, v7, v8, v1 + v5, v1 + v6);
}

uint64_t sub_2406362FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_240636344(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_240759C44() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for AgeMigrationContext(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B48, &unk_24076CCD0) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = v1[2];
  v14 = v1[3];
  v15 = v1[4];
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_2405DA4B0;

  return sub_240631ED8(a1, v13, v14, v15, v1 + v6, v1 + v9, v1 + v12);
}

id AnisetteClient.__allocating_init(send:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR____TtC12AppleIDSetup14AnisetteClient_send];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t AnisetteClient.send.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12AppleIDSetup14AnisetteClient_send);

  return v1;
}

id AnisetteClient.init(send:)(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR____TtC12AppleIDSetup14AnisetteClient_send];
  *v3 = a1;
  *(v3 + 1) = a2;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for AnisetteClient();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_24063661C()
{
  v1[14] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9350, &qword_24076B5F8);
  v1[15] = v2;
  v1[16] = *(v2 - 8);
  v1[17] = swift_task_alloc();
  v1[18] = type metadata accessor for AnisetteCommand.Response(0);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240636724, 0, 0);
}

uint64_t sub_240636724()
{
  v1 = *(*(v0 + 112) + OBJC_IVAR____TtC12AppleIDSetup14AnisetteClient_send);
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 48) = 1;
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 168) = v2;
  *v2 = v0;
  v2[1] = sub_240636844;
  v3 = *(v0 + 160);

  return v5(v3, v0 + 16);
}

uint64_t sub_240636844()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_24063DDEC;
  }

  else
  {
    v2 = sub_240636958;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_240636958()
{
  sub_240636B38(*(v0 + 160), *(v0 + 152));
  if (swift_getEnumCaseMultiPayload())
  {
    v1 = *(v0 + 152);
    sub_240636B9C(*(v0 + 160));
    sub_240636B9C(v1);
    LOBYTE(v2) = 0;
  }

  else
  {
    (*(*(v0 + 128) + 32))(*(v0 + 136), *(v0 + 152), *(v0 + 120));
    sub_240759954();
    v2 = *(v0 + 56);
    v3 = *(v0 + 160);
    v5 = *(v0 + 128);
    v4 = *(v0 + 136);
    v6 = *(v0 + 120);
    if (*(v0 + 80))
    {
      v7 = *(v0 + 64);
      v8 = *(v0 + 72);
      *(v0 + 88) = v2;
      *(v0 + 96) = v7;
      *(v0 + 104) = v8;
      sub_240602210();
      swift_willThrowTypedImpl();
      v14 = *(v0 + 88);
      v9 = *(v0 + 104);
      swift_allocError();
      *v10 = v14;
      *(v10 + 16) = v9;
      (*(v5 + 8))(v4, v6);
      sub_240636B9C(v3);

      v11 = *(v0 + 8);
      v12 = 0;
      goto LABEL_7;
    }

    (*(v5 + 8))(*(v0 + 136), *(v0 + 120));
    sub_240636B9C(v3);
  }

  v11 = *(v0 + 8);
  v12 = v2 & 1;
LABEL_7:

  return v11(v12);
}

uint64_t sub_240636B38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnisetteCommand.Response(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_240636B9C(uint64_t a1)
{
  v2 = type metadata accessor for AnisetteCommand.Response(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_240636D6C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_24063DDE4;

  return sub_24063661C();
}

uint64_t sub_240636E14(uint64_t a1, uint64_t a2)
{
  v3[15] = a2;
  v3[16] = v2;
  v3[14] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9350, &qword_24076B5F8);
  v3[17] = v4;
  v3[18] = *(v4 - 8);
  v3[19] = swift_task_alloc();
  v3[20] = type metadata accessor for AnisetteCommand.Response(0);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240636F20, 0, 0);
}

uint64_t sub_240636F20()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 112);
  v3 = *(*(v0 + 128) + OBJC_IVAR____TtC12AppleIDSetup14AnisetteClient_send);
  *(v0 + 16) = v2;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 24) = v1;
  *(v0 + 48) = 0;
  sub_2405BB9D4(v2, v1);
  v7 = (v3 + *v3);
  v4 = swift_task_alloc();
  *(v0 + 184) = v4;
  *v4 = v0;
  v4[1] = sub_240637048;
  v5 = *(v0 + 176);

  return v7(v5, v0 + 16);
}

uint64_t sub_240637048()
{
  v2 = *v1;
  *(v2 + 192) = v0;

  sub_2405E1818(*(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48));
  if (v0)
  {
    v3 = sub_240637350;
  }

  else
  {
    v3 = sub_24063716C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24063716C()
{
  sub_240636B38(*(v0 + 176), *(v0 + 168));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*(v0 + 144) + 32))(*(v0 + 152), *(v0 + 168), *(v0 + 136));
    sub_240759954();
    v1 = *(v0 + 56);
    v2 = *(v0 + 176);
    v4 = *(v0 + 144);
    v3 = *(v0 + 152);
    v5 = *(v0 + 136);
    if (*(v0 + 80))
    {
      v6 = *(v0 + 64);
      v7 = *(v0 + 72);
      *(v0 + 88) = v1;
      *(v0 + 96) = v6;
      *(v0 + 104) = v7;
      sub_240602210();
      swift_willThrowTypedImpl();
      v14 = *(v0 + 88);
      v8 = *(v0 + 104);
      swift_allocError();
      *v9 = v14;
      *(v9 + 16) = v8;
      (*(v4 + 8))(v3, v5);
      sub_240636B9C(v2);

      v10 = *(v0 + 8);
      v11 = 0;
      goto LABEL_7;
    }

    (*(v4 + 8))(*(v0 + 152), *(v0 + 136));
    sub_240636B9C(v2);
  }

  else
  {
    v12 = *(v0 + 168);
    sub_240636B9C(*(v0 + 176));
    sub_240636B9C(v12);
    LOBYTE(v1) = 0;
  }

  v10 = *(v0 + 8);
  v11 = v1 & 1;
LABEL_7:

  return v10(v11);
}

uint64_t sub_240637350()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_24063755C(void *a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = sub_2407596C4();
  v9 = v8;

  v3[4] = v7;
  v3[5] = v9;
  v10 = swift_task_alloc();
  v3[6] = v10;
  *v10 = v3;
  v10[1] = sub_240637638;

  return sub_240636E14(v7, v9);
}

uint64_t sub_240637638(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = v5[3];
  sub_2405BCD98(v5[4], v5[5]);
  if (v3)
  {
    v10 = sub_2407595C4();

    (*(v9 + 16))(v9, 0, v10);
  }

  else
  {
    (*(v9 + 16))(v9, a1 & 1, 0);
  }

  _Block_release(v6[3]);
  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_2406377F4()
{
  v1[14] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9350, &qword_24076B5F8);
  v1[15] = v2;
  v1[16] = *(v2 - 8);
  v1[17] = swift_task_alloc();
  v1[18] = type metadata accessor for AnisetteCommand.Response(0);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2406378FC, 0, 0);
}

uint64_t sub_2406378FC()
{
  v1 = *(*(v0 + 112) + OBJC_IVAR____TtC12AppleIDSetup14AnisetteClient_send);
  *(v0 + 16) = 1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 24) = 0;
  *(v0 + 48) = 1;
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 168) = v2;
  *v2 = v0;
  v2[1] = sub_240637A1C;
  v3 = *(v0 + 160);

  return v5(v3, v0 + 16);
}

uint64_t sub_240637A1C()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_240637D14;
  }

  else
  {
    v2 = sub_240637B30;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_240637B30()
{
  sub_240636B38(*(v0 + 160), *(v0 + 152));
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    (*(*(v0 + 128) + 32))(*(v0 + 136), *(v0 + 152), *(v0 + 120));
    sub_240759954();
    v1 = *(v0 + 56);
    v2 = *(v0 + 160);
    v4 = *(v0 + 128);
    v3 = *(v0 + 136);
    v5 = *(v0 + 120);
    if (*(v0 + 80))
    {
      v6 = *(v0 + 64);
      v7 = *(v0 + 72);
      *(v0 + 88) = v1;
      *(v0 + 96) = v6;
      *(v0 + 104) = v7;
      sub_240602210();
      swift_willThrowTypedImpl();
      v14 = *(v0 + 88);
      v8 = *(v0 + 104);
      swift_allocError();
      *v9 = v14;
      *(v9 + 16) = v8;
      (*(v4 + 8))(v3, v5);
      sub_240636B9C(v2);

      v10 = *(v0 + 8);
      v11 = 0;
      goto LABEL_7;
    }

    (*(v4 + 8))(*(v0 + 136), *(v0 + 120));
    sub_240636B9C(v2);
  }

  else
  {
    v12 = *(v0 + 152);
    sub_240636B9C(*(v0 + 160));
    sub_240636B9C(v12);
    LOBYTE(v1) = 0;
  }

  v10 = *(v0 + 8);
  v11 = v1 & 1;
LABEL_7:

  return v10(v11);
}

uint64_t sub_240637D14()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_240637F0C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_240637FB4;

  return sub_2406377F4();
}

uint64_t sub_240637FB4(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 24);
  if (v3)
  {
    v10 = sub_2407595C4();

    (*(v9 + 16))(v9, 0, v10);
  }

  else
  {
    (*(v9 + 16))(v9, a1 & 1, 0);
  }

  _Block_release(*(v6 + 24));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_240638144(char a1)
{
  *(v2 + 128) = v1;
  *(v2 + 57) = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9BB8, &qword_24076CD70);
  *(v2 + 136) = v3;
  *(v2 + 144) = *(v3 - 8);
  *(v2 + 152) = swift_task_alloc();
  *(v2 + 160) = type metadata accessor for AnisetteCommand.Response(0);
  *(v2 + 168) = swift_task_alloc();
  *(v2 + 176) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240638250, 0, 0);
}

uint64_t sub_240638250()
{
  v1 = *(*(v0 + 128) + OBJC_IVAR____TtC12AppleIDSetup14AnisetteClient_send);
  *(v0 + 64) = *(v0 + 57);
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0x1000000000000000;
  *(v0 + 96) = 0;
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 184) = v2;
  *v2 = v0;
  v2[1] = sub_240638374;
  v3 = *(v0 + 176);

  return v5(v3, v0 + 64);
}

uint64_t sub_240638374()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_24063874C;
  }

  else
  {
    v2 = sub_240638488;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_240638488()
{
  sub_240636B38(*(v0 + 176), *(v0 + 168));
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    (*(*(v0 + 144) + 32))(*(v0 + 152), *(v0 + 168), *(v0 + 136));
    sub_240759954();
    v2 = *(v0 + 16);
    v1 = *(v0 + 24);
    v3 = *(v0 + 32);
    v4 = *(v0 + 176);
    v6 = *(v0 + 144);
    v5 = *(v0 + 152);
    v7 = *(v0 + 136);
    if (*(v0 + 56))
    {
      *(v0 + 104) = v2;
      *(v0 + 112) = v1;
      *(v0 + 120) = v3;
      sub_240602210();
      swift_willThrowTypedImpl();
      v19 = *(v0 + 104);
      v8 = *(v0 + 120);
      swift_allocError();
      *v9 = v19;
      *(v9 + 16) = v8;
      (*(v6 + 8))(v5, v7);
      sub_240636B9C(v4);

      v10 = *(v0 + 8);

      return v10();
    }

    v14 = *(v0 + 40);
    v20 = *(v0 + 48);
    v18 = *(v0 + 176);
    v13 = [objc_allocWithZone(MEMORY[0x277CF0160]) init];
    v15 = sub_24075A084();
    [v13 setMachineID_];

    v16 = sub_24075A084();
    [v13 setOneTimePassword_];

    [v13 setRoutingInfo_];
    (*(v6 + 8))(v5, v7);
    sub_240636B9C(v18);
    sub_2406387CC(v2, v1, v3, v14, v20, 0);
  }

  else
  {
    v12 = *(v0 + 168);
    sub_240636B9C(*(v0 + 176));
    sub_240636B9C(v12);
    v13 = 0;
  }

  v17 = *(v0 + 8);

  return v17(v13);
}

uint64_t sub_24063874C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2406387CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{

  if ((a6 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_2406389A0(char a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  a3;
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_240638A5C;

  return sub_240638144(a1);
}

uint64_t sub_240638A5C(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 16);
  v7 = *v2;

  v8 = *(v5 + 24);
  if (v3)
  {
    v9 = sub_2407595C4();

    (v8)[2](v8, 0, v9);
    _Block_release(v8);
  }

  else
  {
    (v8)[2](v8, a1, 0);
    _Block_release(v8);
  }

  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_240638BFC(uint64_t a1, uint64_t a2)
{
  v3[17] = a2;
  v3[18] = v2;
  v3[16] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9BB8, &qword_24076CD70);
  v3[19] = v4;
  v3[20] = *(v4 - 8);
  v3[21] = swift_task_alloc();
  v3[22] = type metadata accessor for AnisetteCommand.Response(0);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240638D08, 0, 0);
}

uint64_t sub_240638D08()
{
  v1 = *(v0 + 136);
  v2 = *(*(v0 + 144) + OBJC_IVAR____TtC12AppleIDSetup14AnisetteClient_send);
  *(v0 + 64) = *(v0 + 128);
  *(v0 + 72) = v1;
  *(v0 + 80) = xmmword_24076CD40;
  *(v0 + 96) = 0;

  v6 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v0 + 200) = v3;
  *v3 = v0;
  v3[1] = sub_240638E38;
  v4 = *(v0 + 192);

  return v6(v4, v0 + 64);
}

uint64_t sub_240638E38()
{
  v2 = *v1;
  *(v2 + 208) = v0;

  sub_2405E1818(*(v2 + 64), *(v2 + 72), *(v2 + 80), *(v2 + 88), *(v2 + 96));
  if (v0)
  {
    v3 = sub_240639220;
  }

  else
  {
    v3 = sub_240638F5C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_240638F5C()
{
  sub_240636B38(*(v0 + 192), *(v0 + 184));
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    (*(*(v0 + 160) + 32))(*(v0 + 168), *(v0 + 184), *(v0 + 152));
    sub_240759954();
    v2 = *(v0 + 16);
    v1 = *(v0 + 24);
    v3 = *(v0 + 32);
    v4 = *(v0 + 192);
    v6 = *(v0 + 160);
    v5 = *(v0 + 168);
    v7 = *(v0 + 152);
    if (*(v0 + 56))
    {
      *(v0 + 104) = v2;
      *(v0 + 112) = v1;
      *(v0 + 120) = v3;
      sub_240602210();
      swift_willThrowTypedImpl();
      v19 = *(v0 + 104);
      v8 = *(v0 + 120);
      swift_allocError();
      *v9 = v19;
      *(v9 + 16) = v8;
      (*(v6 + 8))(v5, v7);
      sub_240636B9C(v4);

      v10 = *(v0 + 8);

      return v10();
    }

    v14 = *(v0 + 40);
    v20 = *(v0 + 48);
    v18 = *(v0 + 192);
    v13 = [objc_allocWithZone(MEMORY[0x277CF0160]) init];
    v15 = sub_24075A084();
    [v13 setMachineID_];

    v16 = sub_24075A084();
    [v13 setOneTimePassword_];

    [v13 setRoutingInfo_];
    (*(v6 + 8))(v5, v7);
    sub_240636B9C(v18);
    sub_2406387CC(v2, v1, v3, v14, v20, 0);
  }

  else
  {
    v12 = *(v0 + 184);
    sub_240636B9C(*(v0 + 192));
    sub_240636B9C(v12);
    v13 = 0;
  }

  v17 = *(v0 + 8);

  return v17(v13);
}

uint64_t sub_240639220()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_240639428(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_24075A0B4();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_2406394FC;

  return sub_240638BFC(v5, v7);
}

uint64_t sub_2406394FC(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 16);
  v7 = *v2;

  v8 = *(v5 + 24);
  if (v3)
  {
    v9 = sub_2407595C4();

    (v8)[2](v8, 0, v9);
    _Block_release(v8);
  }

  else
  {
    (v8)[2](*(v5 + 24), a1, 0);
    _Block_release(v8);
  }

  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_2406396B8(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BC0, &qword_24077F1B0);
  v2[16] = v3;
  v2[17] = *(v3 - 8);
  v2[18] = swift_task_alloc();
  v2[19] = type metadata accessor for AnisetteCommand.Response(0);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6690, &qword_24076CFD0);
  v2[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2406397F8, 0, 0);
}

uint64_t sub_2406397F8()
{
  v1 = *(v0 + 176);
  sub_240759424();
  v2 = sub_240759634();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = *(v0 + 176);
  if (v4 == 1)
  {
    sub_240639EB4(*(v0 + 176));
    v6 = 0x80000002407876E0;
    v7 = 0xD000000000000011;
  }

  else
  {
    v7 = sub_2407595F4();
    v6 = v8;
    (*(v3 + 8))(v5, v2);
  }

  v9 = *(v0 + 120);
  v10 = sub_240759434();
  *(v0 + 184) = v10;
  *(v0 + 192) = v11;
  if (v11 >> 60 == 15)
  {
    v10 = 0;
  }

  v12 = *(v9 + OBJC_IVAR____TtC12AppleIDSetup14AnisetteClient_send);
  *(v0 + 16) = v7;
  if (v11 >> 60 == 15)
  {
    v11 = 0xC000000000000000;
  }

  *(v0 + 24) = v6;
  *(v0 + 32) = v10;
  *(v0 + 40) = v11 | 0x3000000000000000;
  *(v0 + 48) = 0;
  sub_2405BB9D4(v10, v11);
  v16 = (v12 + *v12);
  v13 = swift_task_alloc();
  *(v0 + 200) = v13;
  *v13 = v0;
  v13[1] = sub_2406399FC;
  v14 = *(v0 + 168);

  return v16(v14, v0 + 16);
}

uint64_t sub_2406399FC()
{
  v2 = *v1;
  *(v2 + 208) = v0;

  sub_2405E1818(*(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48));
  if (v0)
  {
    v3 = sub_240639E0C;
  }

  else
  {
    v3 = sub_240639B20;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_240639B20()
{
  sub_240636B38(*(v0 + 168), *(v0 + 160));
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    (*(*(v0 + 136) + 32))(*(v0 + 144), *(v0 + 160), *(v0 + 128));
    sub_240759954();
    v2 = *(v0 + 56);
    v1 = *(v0 + 64);
    v3 = *(v0 + 72);
    v4 = *(v0 + 192);
    v5 = *(v0 + 168);
    v6 = *(v0 + 136);
    v24 = *(v0 + 144);
    v7 = *(v0 + 128);
    if (v4 >> 60 == 15)
    {
      v8 = 0;
    }

    else
    {
      v8 = *(v0 + 184);
    }

    if (v4 >> 60 == 15)
    {
      v9 = 0xC000000000000000;
    }

    else
    {
      v9 = *(v0 + 192);
    }

    if (*(v0 + 80))
    {
      *(v0 + 88) = v2;
      *(v0 + 96) = v1;
      *(v0 + 104) = v3;
      sub_240602210();
      swift_willThrowTypedImpl();
      v22 = *(v0 + 88);
      v10 = *(v0 + 104);
      swift_allocError();
      *v11 = v22;
      *(v11 + 16) = v10;
      sub_2405BCD98(v8, v9);
      (*(v6 + 8))(v24, v7);
      sub_240636B9C(v5);

      v12 = *(v0 + 8);

      return v12();
    }

    v23 = *(v0 + 168);
    v19 = objc_allocWithZone(MEMORY[0x277CF0190]);
    v20 = sub_240759F54();
    sub_240639F1C(v2, v1, v3, 0);
    v18 = [v19 initWithDictionary_];

    sub_2405BCD98(v8, v9);
    (*(v6 + 8))(v24, v7);
    sub_240636B9C(v23);
  }

  else
  {
    v14 = *(v0 + 192);
    v15 = *(v0 + 160);
    if (v14 >> 60 == 15)
    {
      v16 = 0;
    }

    else
    {
      v16 = *(v0 + 184);
    }

    if (v14 >> 60 == 15)
    {
      v17 = 0xC000000000000000;
    }

    else
    {
      v17 = *(v0 + 192);
    }

    sub_240636B9C(*(v0 + 168));
    sub_2405BCD98(v16, v17);
    sub_240636B9C(v15);
    v18 = 0;
  }

  v21 = *(v0 + 8);

  return v21(v18);
}

uint64_t sub_240639E0C()
{
  v1 = v0[24];
  if (v1 >> 60 == 15)
  {
    v2 = 0;
  }

  else
  {
    v2 = v0[23];
  }

  if (v1 >> 60 == 15)
  {
    v3 = 0xC000000000000000;
  }

  else
  {
    v3 = v0[24];
  }

  sub_2405BCD98(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_240639EB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6690, &qword_24076CFD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24063A0B0(uint64_t a1, const void *a2, void *a3)
{
  v3[2] = a3;
  v6 = sub_240759454();
  v3[3] = v6;
  v3[4] = *(v6 - 8);
  v7 = swift_task_alloc();
  v3[5] = v7;
  v3[6] = _Block_copy(a2);
  sub_240759404();
  a3;
  v8 = swift_task_alloc();
  v3[7] = v8;
  *v8 = v3;
  v8[1] = sub_24063A1DC;

  return sub_2406396B8(v7);
}

uint64_t sub_24063A1DC(void *a1)
{
  v4 = *v2;
  v5 = *v2;

  v6 = v4[6];
  v7 = v4[2];
  (*(v4[4] + 8))(v4[5], v4[3]);

  if (v1)
  {
    v8 = sub_2407595C4();

    (v6)[2](v6, 0, v8);
    _Block_release(v6);
  }

  else
  {
    (v6)[2](v6, a1, 0);
    _Block_release(v6);
  }

  v9 = v5[1];

  return v9();
}

uint64_t static AnisetteClient.receive(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 680) = a3;
  *(v3 + 672) = a1;
  v4 = *(a2 + 16);
  *(v3 + 688) = *a2;
  *(v3 + 704) = v4;
  *(v3 + 315) = *(a2 + 32);
  return MEMORY[0x2822009F8](sub_24063A400, 0, 0);
}

uint64_t sub_24063A400()
{
  v1 = *(v0 + 712);
  if (*(v0 + 315))
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  v3 = (v1 >> 60) & 3 | v2;
  if (v3 <= 1)
  {
    if (v3)
    {
      v21 = *(v0 + 688);
      v22 = swift_task_alloc();
      *(v0 + 728) = v22;
      *v22 = v0;
      v22[1] = sub_24063A930;
      v23 = *(v0 + 680);

      return sub_24063BE94(v0 + 368, v23, v21 & 1);
    }

    else
    {
      v10 = swift_task_alloc();
      *(v0 + 784) = v10;
      *v10 = v0;
      v10[1] = sub_24063AF58;
      v11 = *(v0 + 696);
      v12 = *(v0 + 688);
      v13 = *(v0 + 680);

      return sub_24063BB48(v0 + 608, v13, v12, v11);
    }
  }

  else if (v3 == 2)
  {
    v14 = *(v0 + 696);
    v15 = swift_task_alloc();
    *(v0 + 744) = v15;
    *v15 = v0;
    v15[1] = sub_24063AA44;
    v16 = *(v0 + 688);
    v17 = *(v0 + 680);

    return sub_24063C2A8(v0 + 272, v17, v16, v14);
  }

  else if (v3 == 3)
  {
    v4 = *(v0 + 696);
    v5 = swift_task_alloc();
    *(v0 + 760) = v5;
    *v5 = v0;
    v5[1] = sub_24063AB58;
    v6 = *(v0 + 704);
    v7 = *(v0 + 688);
    v8 = *(v0 + 680);

    return sub_24063C6D4(v0 + 592, v7, v4, v6, v1 & 0xCFFFFFFFFFFFFFFFLL, v8);
  }

  else
  {
    v18 = *(v0 + 680);
    if (*(v0 + 696) | *(v0 + 704) | v1 | *(v0 + 688))
    {
      v19 = v0 + 16;
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 313;
      *(v0 + 24) = sub_24063A820;
      v20 = swift_continuation_init();
      *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BE0, &unk_24077D170);
      *(v0 + 144) = MEMORY[0x277D85DD0];
      *(v0 + 152) = 1107296256;
      *(v0 + 160) = sub_24063BA7C;
      *(v0 + 168) = &block_descriptor_4;
      *(v0 + 176) = v20;
      [v18 eraseWithCompletion_];
    }

    else
    {
      v19 = v0 + 80;
      *(v0 + 80) = v0;
      *(v0 + 120) = v0 + 314;
      *(v0 + 88) = sub_24063AC6C;
      v24 = swift_continuation_init();
      *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BE0, &unk_24077D170);
      *(v0 + 208) = MEMORY[0x277D85DD0];
      *(v0 + 216) = 1107296256;
      *(v0 + 224) = sub_24063BA7C;
      *(v0 + 232) = &block_descriptor_19;
      *(v0 + 240) = v24;
      [v18 provisionWithCompletion_];
    }

    return MEMORY[0x282200938](v19);
  }
}

uint64_t sub_24063A820()
{
  v1 = *(*v0 + 48);
  *(*v0 + 720) = v1;
  if (v1)
  {
    v2 = sub_24063B314;
  }

  else
  {
    v2 = sub_24063B244;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24063A930()
{
  *(*v1 + 736) = v0;

  if (v0)
  {
    v2 = sub_24063B528;
  }

  else
  {
    v2 = sub_24063B414;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24063AA44()
{
  *(*v1 + 752) = v0;

  if (v0)
  {
    v2 = sub_24063B760;
  }

  else
  {
    v2 = sub_24063B64C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24063AB58()
{
  *(*v1 + 768) = v0;

  if (v0)
  {
    v2 = sub_24063B970;
  }

  else
  {
    v2 = sub_24063B884;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24063AC6C()
{
  v1 = *(*v0 + 112);
  *(*v0 + 776) = v1;
  if (v1)
  {
    v2 = sub_24063AE54;
  }

  else
  {
    v2 = sub_24063AD7C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24063AD7C()
{
  v1 = *(v0 + 314);
  v2 = *(v0 + 776) != 0;
  *(v0 + 560) = v1;
  *(v0 + 568) = 0u;
  *(v0 + 584) = v2;
  sub_240602210();
  sub_240759944();
  sub_24063D00C(v1, v2);
  type metadata accessor for AnisetteCommand.Response(0);
  swift_storeEnumTagMultiPayload();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24063AE54(uint64_t a1)
{
  v2 = *(v1 + 776);
  swift_willThrow();
  *(v1 + 664) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BD0, &qword_24076BB70);
  v3 = sub_24075AE14();
  v4 = *(v1 + 776) != 0;
  *(v1 + 560) = v3;
  *(v1 + 568) = v5;
  *(v1 + 576) = 0;
  *(v1 + 584) = v4;
  sub_240602210();
  sub_240759944();
  sub_24063D00C(v2, v4);
  type metadata accessor for AnisetteCommand.Response(0);
  swift_storeEnumTagMultiPayload();
  v6 = *(v1 + 8);

  return v6();
}

uint64_t sub_24063AF58()
{
  *(*v1 + 792) = v0;

  if (v0)
  {
    v2 = sub_24063B148;
  }

  else
  {
    v2 = sub_24063B06C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24063B06C()
{
  v1 = *(v0 + 608);
  v2 = *(v0 + 792) != 0;
  *(v0 + 528) = v1 & 1;
  *(v0 + 536) = 0u;
  *(v0 + 552) = v2;
  sub_240602210();
  sub_240759944();
  sub_24063D00C(v1, v2);
  type metadata accessor for AnisetteCommand.Response(0);
  swift_storeEnumTagMultiPayload();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24063B148()
{
  v1 = *(v0 + 792);
  *(v0 + 656) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BD0, &qword_24076BB70);
  v2 = sub_24075AE14();
  v3 = *(v0 + 792) != 0;
  *(v0 + 528) = v2;
  *(v0 + 536) = v4;
  *(v0 + 544) = 0;
  *(v0 + 552) = v3;
  sub_240602210();
  sub_240759944();
  sub_24063D00C(v1, v3);
  type metadata accessor for AnisetteCommand.Response(0);
  swift_storeEnumTagMultiPayload();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_24063B244()
{
  v1 = *(v0 + 313);
  v2 = *(v0 + 720) != 0;
  *(v0 + 504) = 0;
  *(v0 + 512) = 0;
  *(v0 + 496) = v1;
  *(v0 + 520) = v2;
  sub_240602210();
  sub_240759944();
  sub_24063D00C(v1, v2);
  type metadata accessor for AnisetteCommand.Response(0);
  swift_storeEnumTagMultiPayload();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24063B314(uint64_t a1)
{
  v2 = *(v1 + 720);
  swift_willThrow();
  *(v1 + 648) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BD0, &qword_24076BB70);
  v3 = sub_24075AE14();
  v4 = *(v1 + 720) != 0;
  *(v1 + 496) = v3;
  *(v1 + 504) = v5;
  *(v1 + 512) = 0;
  *(v1 + 520) = v4;
  sub_240602210();
  sub_240759944();
  sub_24063D00C(v2, v4);
  type metadata accessor for AnisetteCommand.Response(0);
  swift_storeEnumTagMultiPayload();
  v6 = *(v1 + 8);

  return v6();
}

uint64_t sub_24063B414()
{
  v2 = *(v0 + 368);
  v1 = *(v0 + 376);
  v3 = *(v0 + 384);
  v4 = *(v0 + 392);
  v5 = *(v0 + 400);
  *(v0 + 408) = 0;
  *(v0 + 440) = v4;
  *(v0 + 448) = v5;
  v6 = *(v0 + 736) != 0;
  *(v0 + 416) = v2;
  *(v0 + 424) = v1;
  *(v0 + 432) = v3;
  *(v0 + 456) = v6;
  sub_240602210();

  sub_240759944();
  sub_24063CFA4(v2, v1, v3, v4, v5, v6);
  type metadata accessor for AnisetteCommand.Response(0);
  swift_storeEnumTagMultiPayload();
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_24063B528()
{
  v1 = *(v0 + 736);
  *(v0 + 368) = v1;
  *(v0 + 376) = 0u;
  *(v0 + 392) = 0u;
  *(v0 + 408) = v1 != 0;
  *(v0 + 640) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BD0, &qword_24076BB70);
  v2 = sub_24075AE14();
  v3 = *(v0 + 736) != 0;
  *(v0 + 416) = v2;
  *(v0 + 424) = v4;
  *(v0 + 432) = 0;
  *(v0 + 456) = v3;
  sub_240602210();
  sub_240759944();
  sub_24063CFA4(v1, 0, 0, 0, 0, v3);
  type metadata accessor for AnisetteCommand.Response(0);
  swift_storeEnumTagMultiPayload();
  v5 = *(v0 + 8);

  return v5();
}