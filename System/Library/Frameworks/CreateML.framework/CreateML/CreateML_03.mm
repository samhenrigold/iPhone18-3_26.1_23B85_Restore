uint64_t sub_237A15FBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0C8, &qword_237C15240);
  result = sub_237C05F1C();
  if (result < 0)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  if (result)
  {
    v26 = result;
    v6 = 0;
    while (1)
    {
      sub_237C05F9C();
      v7 = v28;
      if (!v28)
      {
        v7 = MEMORY[0x277D84F90];
      }

      v27 = v7;
      v8 = *(v7 + 16);
      if (v8 != a2)
      {

        v28 = 0;
        v29 = 0xE000000000000000;
        sub_237C08EDC();
        MEMORY[0x2383DC360](0xD000000000000015, 0x8000000237C18140);
        v30 = a2;
        v19 = sub_237C0924C();
        MEMORY[0x2383DC360](v19);

        MEMORY[0x2383DC360](0xD000000000000017, 0x8000000237C18160);
        v20 = sub_237C05F0C();
        MEMORY[0x2383DC360](v20);

        MEMORY[0x2383DC360](0x6720747562202C27, 0xEB0000000020746FLL);
        v30 = v8;
        v21 = sub_237C0924C();
        MEMORY[0x2383DC360](v21);

        MEMORY[0x2383DC360](0xD000000000000011, 0x8000000237C18180);
        v30 = v6;
        v22 = sub_237C0924C();
        MEMORY[0x2383DC360](v22);

        MEMORY[0x2383DC360](46, 0xE100000000000000);
        v23 = v28;
        v24 = v29;
        sub_2379E8AF0();
        swift_allocError();
        *v25 = v23;
        *(v25 + 8) = v24;
        *(v25 + 16) = 0u;
        *(v25 + 32) = 0u;
        *(v25 + 48) = 0;
        return swift_willThrow();
      }

      if (a2)
      {
        break;
      }

LABEL_11:
      ++v6;

      if (v6 == v26)
      {
        return result;
      }
    }

    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B218, &qword_237C0CAF0);
    v9 = 0;
    while (!__OFADD__(a3, v9))
    {
      v10 = v9 + 1;
      _H0 = *(v27 + 32 + 2 * v9);
      __asm { FCVT            D8, H0 }

      v17 = sub_237A1F930(&v28, v6, a3 + v9);
      *v18 = _D8;
      result = v17(&v28, 0);
      v9 = v10;
      if (a2 == v10)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_237A162BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0C0, &qword_237C0E240);
  result = sub_237C05F1C();
  if (result < 0)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  if (result)
  {
    v21 = result;
    v6 = 0;
    while (1)
    {
      sub_237C05F9C();
      v7 = v23;
      if (!v23)
      {
        v7 = MEMORY[0x277D84F90];
      }

      v22 = v7;
      v8 = *(v7 + 16);
      if (v8 != a2)
      {

        v23 = 0;
        v24 = 0xE000000000000000;
        sub_237C08EDC();
        MEMORY[0x2383DC360](0xD000000000000015, 0x8000000237C18140);
        v25 = a2;
        v14 = sub_237C0924C();
        MEMORY[0x2383DC360](v14);

        MEMORY[0x2383DC360](0xD000000000000017, 0x8000000237C18160);
        v15 = sub_237C05F0C();
        MEMORY[0x2383DC360](v15);

        MEMORY[0x2383DC360](0x6720747562202C27, 0xEB0000000020746FLL);
        v25 = v8;
        v16 = sub_237C0924C();
        MEMORY[0x2383DC360](v16);

        MEMORY[0x2383DC360](0xD000000000000011, 0x8000000237C18180);
        v25 = v6;
        v17 = sub_237C0924C();
        MEMORY[0x2383DC360](v17);

        MEMORY[0x2383DC360](46, 0xE100000000000000);
        v18 = v23;
        v19 = v24;
        sub_2379E8AF0();
        swift_allocError();
        *v20 = v18;
        *(v20 + 8) = v19;
        *(v20 + 16) = 0u;
        *(v20 + 32) = 0u;
        *(v20 + 48) = 0;
        return swift_willThrow();
      }

      if (a2)
      {
        break;
      }

LABEL_11:
      ++v6;

      if (v6 == v21)
      {
        return result;
      }
    }

    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B218, &qword_237C0CAF0);
    v9 = 0;
    while (!__OFADD__(a3, v9))
    {
      v10 = v9 + 1;
      v11 = *(v22 + 32 + 4 * v9);
      v12 = sub_237A1F930(&v23, v6, a3 + v9);
      *v13 = v11;
      result = v12(&v23, 0);
      v9 = v10;
      if (a2 == v10)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_237A165BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0B8, &unk_237C14040);
  result = sub_237C05F1C();
  if (result < 0)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  if (result)
  {
    v21 = result;
    v6 = 0;
    while (1)
    {
      sub_237C05F9C();
      v7 = v23;
      if (!v23)
      {
        v7 = MEMORY[0x277D84F90];
      }

      v22 = v7;
      v8 = *(v7 + 16);
      if (v8 != a2)
      {

        v23 = 0;
        v24 = 0xE000000000000000;
        sub_237C08EDC();
        MEMORY[0x2383DC360](0xD000000000000015, 0x8000000237C18140);
        v25 = a2;
        v14 = sub_237C0924C();
        MEMORY[0x2383DC360](v14);

        MEMORY[0x2383DC360](0xD000000000000017, 0x8000000237C18160);
        v15 = sub_237C05F0C();
        MEMORY[0x2383DC360](v15);

        MEMORY[0x2383DC360](0x6720747562202C27, 0xEB0000000020746FLL);
        v25 = v8;
        v16 = sub_237C0924C();
        MEMORY[0x2383DC360](v16);

        MEMORY[0x2383DC360](0xD000000000000011, 0x8000000237C18180);
        v25 = v6;
        v17 = sub_237C0924C();
        MEMORY[0x2383DC360](v17);

        MEMORY[0x2383DC360](46, 0xE100000000000000);
        v18 = v23;
        v19 = v24;
        sub_2379E8AF0();
        swift_allocError();
        *v20 = v18;
        *(v20 + 8) = v19;
        *(v20 + 16) = 0u;
        *(v20 + 32) = 0u;
        *(v20 + 48) = 0;
        return swift_willThrow();
      }

      if (a2)
      {
        break;
      }

LABEL_11:
      ++v6;

      if (v6 == v21)
      {
        return result;
      }
    }

    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B218, &qword_237C0CAF0);
    v9 = 0;
    while (!__OFADD__(a3, v9))
    {
      v10 = v9 + 1;
      v11 = *(v22 + 32 + 8 * v9);
      v12 = sub_237A1F930(&v23, v6, a3 + v9);
      *v13 = v11;
      result = v12(&v23, 0);
      v9 = v10;
      if (a2 == v10)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_237A168B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0F8, &qword_237C0CA08);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v34 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0E0, &unk_237C15290);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v34 - v11;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0B0, &unk_237C15250);
  v40 = a1;
  result = sub_237C05F1C();
  if (result < 0)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  v34[1] = v3;
  if (result)
  {
    v14 = 0;
    v35 = (v10 + 32);
    v38 = (v10 + 8);
    v41 = xmmword_237C0B660;
    v36 = result;
    v37 = v8;
    while (1)
    {
      sub_237C05F9C();
      if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
      {
        sub_2379D9224(&qword_27DE9B100, &qword_27DE9B0E0, &unk_237C15290, MEMORY[0x277CBFD28]);
        sub_237C0832C();
        if (__swift_getEnumTagSinglePayload(v8, 1, v9) != 1)
        {
          sub_2379D9054(v8, &qword_27DE9B0F8, &qword_237C0CA08);
        }
      }

      else
      {
        (*v35)(v12, v8, v9);
      }

      v15 = sub_237C082AC();
      if (*(v15 + 16) != 1)
      {

LABEL_18:
        v43 = 0;
        v44 = 0xE000000000000000;
        sub_237C08EDC();
        MEMORY[0x2383DC360](0xD000000000000023, 0x8000000237C181A0);
        v45 = a2;
        v24 = sub_237C0924C();
        MEMORY[0x2383DC360](v24);

        MEMORY[0x2383DC360](0x656620726F66205DLL, 0xEF27206572757461);
        v25 = sub_237C05F0C();
        MEMORY[0x2383DC360](v25);

        MEMORY[0x2383DC360](0xD000000000000011, 0x8000000237C181D0);
        sub_237C082AC();
        v26 = MEMORY[0x2383DC4F0]();
        v27 = v12;
        v29 = v28;

        MEMORY[0x2383DC360](v26, v29);

        MEMORY[0x2383DC360](0x20776F7220746120, 0xE800000000000000);
        v45 = v14;
        v30 = sub_237C0924C();
        MEMORY[0x2383DC360](v30);

        MEMORY[0x2383DC360](46, 0xE100000000000000);
        v31 = v43;
        v32 = v44;
        sub_2379E8AF0();
        swift_allocError();
        *v33 = v31;
        *(v33 + 8) = v32;
        *(v33 + 16) = 0u;
        *(v33 + 32) = 0u;
        *(v33 + 48) = 0;
        swift_willThrow();
        return (*v38)(v27, v9);
      }

      v16 = *(v15 + 32);

      if (v16 != a2)
      {
        goto LABEL_18;
      }

      if (a2 < 0)
      {
        break;
      }

      v17 = v12;
      if (a2)
      {
        result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B050, &qword_237C0C9C0);
        v18 = 0;
        while (1)
        {
          v19 = v42 + v18;
          if (__OFADD__(v42, v18))
          {
            break;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
          v20 = swift_allocObject();
          *(v20 + 16) = v41;
          *(v20 + 32) = v18;
          sub_2379D9224(&qword_27DE9B100, &qword_27DE9B0E0, &unk_237C15290, MEMORY[0x277CBFD28]);
          sub_237C0835C();

          v21 = v43;
          v22 = sub_237A1F7FC(&v43, v14, v19);
          *v23 = v21;
          result = v22(&v43, 0);
          if (a2 == ++v18)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

LABEL_15:
      ++v14;
      v12 = v17;
      result = (*v38)(v17, v9);
      v8 = v37;
      if (v14 == v36)
      {
        return result;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  return result;
}

uint64_t sub_237A16E30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0F8, &qword_237C0CA08);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v34 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0E0, &unk_237C15290);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v34 - v11;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0B0, &unk_237C15250);
  v40 = a1;
  result = sub_237C05F1C();
  if (result < 0)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  v34[1] = v3;
  if (result)
  {
    v14 = 0;
    v35 = (v10 + 32);
    v38 = (v10 + 8);
    v41 = xmmword_237C0B660;
    v36 = result;
    v37 = v8;
    while (1)
    {
      sub_237C05F9C();
      if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
      {
        sub_2379D9224(&qword_27DE9B100, &qword_27DE9B0E0, &unk_237C15290, MEMORY[0x277CBFD28]);
        sub_237C0832C();
        if (__swift_getEnumTagSinglePayload(v8, 1, v9) != 1)
        {
          sub_2379D9054(v8, &qword_27DE9B0F8, &qword_237C0CA08);
        }
      }

      else
      {
        (*v35)(v12, v8, v9);
      }

      v15 = sub_237C082AC();
      if (*(v15 + 16) != 1)
      {

LABEL_18:
        v43 = 0;
        v44 = 0xE000000000000000;
        sub_237C08EDC();
        MEMORY[0x2383DC360](0xD000000000000023, 0x8000000237C181A0);
        v45 = a2;
        v24 = sub_237C0924C();
        MEMORY[0x2383DC360](v24);

        MEMORY[0x2383DC360](0x656620726F66205DLL, 0xEF27206572757461);
        v25 = sub_237C05F0C();
        MEMORY[0x2383DC360](v25);

        MEMORY[0x2383DC360](0xD000000000000011, 0x8000000237C181D0);
        sub_237C082AC();
        v26 = MEMORY[0x2383DC4F0]();
        v27 = v12;
        v29 = v28;

        MEMORY[0x2383DC360](v26, v29);

        MEMORY[0x2383DC360](0x20776F7220746120, 0xE800000000000000);
        v45 = v14;
        v30 = sub_237C0924C();
        MEMORY[0x2383DC360](v30);

        MEMORY[0x2383DC360](46, 0xE100000000000000);
        v31 = v43;
        v32 = v44;
        sub_2379E8AF0();
        swift_allocError();
        *v33 = v31;
        *(v33 + 8) = v32;
        *(v33 + 16) = 0u;
        *(v33 + 32) = 0u;
        *(v33 + 48) = 0;
        swift_willThrow();
        return (*v38)(v27, v9);
      }

      v16 = *(v15 + 32);

      if (v16 != a2)
      {
        goto LABEL_18;
      }

      if (a2 < 0)
      {
        break;
      }

      v17 = v12;
      if (a2)
      {
        result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B218, &qword_237C0CAF0);
        v18 = 0;
        while (1)
        {
          v19 = v42 + v18;
          if (__OFADD__(v42, v18))
          {
            break;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
          v20 = swift_allocObject();
          *(v20 + 16) = v41;
          *(v20 + 32) = v18;
          sub_2379D9224(&qword_27DE9B100, &qword_27DE9B0E0, &unk_237C15290, MEMORY[0x277CBFD28]);
          sub_237C0835C();

          v21 = v43;
          v22 = sub_237A1F930(&v43, v14, v19);
          *v23 = v21;
          result = v22(&v43, 0);
          if (a2 == ++v18)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

LABEL_15:
      ++v14;
      v12 = v17;
      result = (*v38)(v17, v9);
      v8 = v37;
      if (v14 == v36)
      {
        return result;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  return result;
}

uint64_t sub_237A173A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v47 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B108, &qword_237C0CA10);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v39 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0E8, &unk_237C152A0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v39 - v11;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0A8, &unk_237C15230);
  v45 = a1;
  result = sub_237C05F1C();
  if (result < 0)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  v39[1] = v3;
  if (result)
  {
    v14 = 0;
    v40 = (v10 + 32);
    v43 = (v10 + 8);
    v46 = xmmword_237C0B660;
    v41 = result;
    v42 = v8;
    while (1)
    {
      sub_237C05F9C();
      if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
      {
        sub_2379D9224(&qword_27DE9B110, &qword_27DE9B0E8, &unk_237C152A0, MEMORY[0x277CBFD28]);
        sub_237C0832C();
        if (__swift_getEnumTagSinglePayload(v8, 1, v9) != 1)
        {
          sub_2379D9054(v8, &qword_27DE9B108, &qword_237C0CA10);
        }
      }

      else
      {
        (*v40)(v12, v8, v9);
      }

      v15 = sub_237C082AC();
      if (*(v15 + 16) != 1)
      {

LABEL_18:
        v48 = 0;
        v49 = 0xE000000000000000;
        sub_237C08EDC();
        MEMORY[0x2383DC360](0xD000000000000023, 0x8000000237C181A0);
        v50 = a2;
        v29 = sub_237C0924C();
        MEMORY[0x2383DC360](v29);

        MEMORY[0x2383DC360](0x656620726F66205DLL, 0xEF27206572757461);
        v30 = sub_237C05F0C();
        MEMORY[0x2383DC360](v30);

        MEMORY[0x2383DC360](0xD000000000000011, 0x8000000237C181D0);
        sub_237C082AC();
        v31 = MEMORY[0x2383DC4F0]();
        v32 = v12;
        v34 = v33;

        MEMORY[0x2383DC360](v31, v34);

        MEMORY[0x2383DC360](0x20776F7220746120, 0xE800000000000000);
        v50 = v14;
        v35 = sub_237C0924C();
        MEMORY[0x2383DC360](v35);

        MEMORY[0x2383DC360](46, 0xE100000000000000);
        v36 = v48;
        v37 = v49;
        sub_2379E8AF0();
        swift_allocError();
        *v38 = v36;
        *(v38 + 8) = v37;
        *(v38 + 16) = 0u;
        *(v38 + 32) = 0u;
        *(v38 + 48) = 0;
        swift_willThrow();
        return (*v43)(v32, v9);
      }

      v16 = *(v15 + 32);

      if (v16 != a2)
      {
        goto LABEL_18;
      }

      if (a2 < 0)
      {
        break;
      }

      v17 = v12;
      if (a2)
      {
        result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B050, &qword_237C0C9C0);
        v18 = 0;
        while (1)
        {
          v19 = v47 + v18;
          if (__OFADD__(v47, v18))
          {
            break;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
          v20 = swift_allocObject();
          *(v20 + 16) = v46;
          *(v20 + 32) = v18;
          sub_2379D9224(&qword_27DE9B110, &qword_27DE9B0E8, &unk_237C152A0, MEMORY[0x277CBFD28]);
          sub_237C0835C();

          _H0 = v48;
          __asm { FCVT            S8, H0 }

          v27 = sub_237A1F7FC(&v48, v14, v19);
          *v28 = _S8;
          result = v27(&v48, 0);
          if (a2 == ++v18)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

LABEL_15:
      ++v14;
      v12 = v17;
      result = (*v43)(v17, v9);
      v8 = v42;
      if (v14 == v41)
      {
        return result;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  return result;
}

uint64_t sub_237A17920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B118, &qword_237C0CA18);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v34 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA48, &qword_237C0B7E0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v34 - v11;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0A0, &qword_237C0E2D0);
  v40 = a1;
  result = sub_237C05F1C();
  if (result < 0)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  v34[1] = v3;
  if (result)
  {
    v14 = 0;
    v35 = (v10 + 32);
    v38 = (v10 + 8);
    v41 = xmmword_237C0B660;
    v36 = result;
    v37 = v8;
    while (1)
    {
      sub_237C05F9C();
      if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
      {
        sub_2379D9224(&qword_27DE9ABC0, &qword_27DE9AA48, &qword_237C0B7E0, MEMORY[0x277CBFD28]);
        sub_237C0832C();
        if (__swift_getEnumTagSinglePayload(v8, 1, v9) != 1)
        {
          sub_2379D9054(v8, &qword_27DE9B118, &qword_237C0CA18);
        }
      }

      else
      {
        (*v35)(v12, v8, v9);
      }

      v15 = sub_237C082AC();
      if (*(v15 + 16) != 1)
      {

LABEL_18:
        v43 = 0;
        v44 = 0xE000000000000000;
        sub_237C08EDC();
        MEMORY[0x2383DC360](0xD000000000000023, 0x8000000237C181A0);
        v45 = a2;
        v24 = sub_237C0924C();
        MEMORY[0x2383DC360](v24);

        MEMORY[0x2383DC360](0x656620726F66205DLL, 0xEF27206572757461);
        v25 = sub_237C05F0C();
        MEMORY[0x2383DC360](v25);

        MEMORY[0x2383DC360](0xD000000000000011, 0x8000000237C181D0);
        sub_237C082AC();
        v26 = MEMORY[0x2383DC4F0]();
        v27 = v12;
        v29 = v28;

        MEMORY[0x2383DC360](v26, v29);

        MEMORY[0x2383DC360](0x20776F7220746120, 0xE800000000000000);
        v45 = v14;
        v30 = sub_237C0924C();
        MEMORY[0x2383DC360](v30);

        MEMORY[0x2383DC360](46, 0xE100000000000000);
        v31 = v43;
        v32 = v44;
        sub_2379E8AF0();
        swift_allocError();
        *v33 = v31;
        *(v33 + 8) = v32;
        *(v33 + 16) = 0u;
        *(v33 + 32) = 0u;
        *(v33 + 48) = 0;
        swift_willThrow();
        return (*v38)(v27, v9);
      }

      v16 = *(v15 + 32);

      if (v16 != a2)
      {
        goto LABEL_18;
      }

      if (a2 < 0)
      {
        break;
      }

      v17 = v12;
      if (a2)
      {
        result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B050, &qword_237C0C9C0);
        v18 = 0;
        while (1)
        {
          v19 = v42 + v18;
          if (__OFADD__(v42, v18))
          {
            break;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
          v20 = swift_allocObject();
          *(v20 + 16) = v41;
          *(v20 + 32) = v18;
          sub_2379D9224(&qword_27DE9ABC0, &qword_27DE9AA48, &qword_237C0B7E0, MEMORY[0x277CBFD28]);
          sub_237C0835C();

          v21 = v43;
          v22 = sub_237A1F7FC(&v43, v14, v19);
          *v23 = v21;
          result = v22(&v43, 0);
          if (a2 == ++v18)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

LABEL_15:
      ++v14;
      v12 = v17;
      result = (*v38)(v17, v9);
      v8 = v37;
      if (v14 == v36)
      {
        return result;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  return result;
}

uint64_t sub_237A17E94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B120, &qword_237C0CA20);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v34 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0F0, &qword_237C0DD30);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v34 - v11;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B098, &qword_237C15210);
  v40 = a1;
  result = sub_237C05F1C();
  if (result < 0)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  v34[1] = v3;
  if (result)
  {
    v14 = 0;
    v35 = (v10 + 32);
    v38 = (v10 + 8);
    v41 = xmmword_237C0B660;
    v36 = result;
    v37 = v8;
    while (1)
    {
      sub_237C05F9C();
      if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
      {
        sub_2379D9224(&qword_27DE9B128, &qword_27DE9B0F0, &qword_237C0DD30, MEMORY[0x277CBFD28]);
        sub_237C0832C();
        if (__swift_getEnumTagSinglePayload(v8, 1, v9) != 1)
        {
          sub_2379D9054(v8, &qword_27DE9B120, &qword_237C0CA20);
        }
      }

      else
      {
        (*v35)(v12, v8, v9);
      }

      v15 = sub_237C082AC();
      if (*(v15 + 16) != 1)
      {

LABEL_18:
        v43 = 0.0;
        v44 = 0xE000000000000000;
        sub_237C08EDC();
        MEMORY[0x2383DC360](0xD000000000000023, 0x8000000237C181A0);
        v45 = a2;
        v24 = sub_237C0924C();
        MEMORY[0x2383DC360](v24);

        MEMORY[0x2383DC360](0x656620726F66205DLL, 0xEF27206572757461);
        v25 = sub_237C05F0C();
        MEMORY[0x2383DC360](v25);

        MEMORY[0x2383DC360](0xD000000000000011, 0x8000000237C181D0);
        sub_237C082AC();
        v26 = MEMORY[0x2383DC4F0]();
        v27 = v12;
        v29 = v28;

        MEMORY[0x2383DC360](v26, v29);

        MEMORY[0x2383DC360](0x20776F7220746120, 0xE800000000000000);
        v45 = v14;
        v30 = sub_237C0924C();
        MEMORY[0x2383DC360](v30);

        MEMORY[0x2383DC360](46, 0xE100000000000000);
        v31 = v43;
        v32 = v44;
        sub_2379E8AF0();
        swift_allocError();
        *v33 = v31;
        *(v33 + 8) = v32;
        *(v33 + 16) = 0u;
        *(v33 + 32) = 0u;
        *(v33 + 48) = 0;
        swift_willThrow();
        return (*v38)(v27, v9);
      }

      v16 = *(v15 + 32);

      if (v16 != a2)
      {
        goto LABEL_18;
      }

      if (a2 < 0)
      {
        break;
      }

      v17 = v12;
      if (a2)
      {
        result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B050, &qword_237C0C9C0);
        v18 = 0;
        while (1)
        {
          v19 = v42 + v18;
          if (__OFADD__(v42, v18))
          {
            break;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
          v20 = swift_allocObject();
          *(v20 + 16) = v41;
          *(v20 + 32) = v18;
          sub_2379D9224(&qword_27DE9B128, &qword_27DE9B0F0, &qword_237C0DD30, MEMORY[0x277CBFD28]);
          sub_237C0835C();

          v21 = v43;
          v22 = sub_237A1F7FC(&v43, v14, v19);
          *v23 = v21;
          result = v22(&v43, 0);
          if (a2 == ++v18)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

LABEL_15:
      ++v14;
      v12 = v17;
      result = (*v38)(v17, v9);
      v8 = v37;
      if (v14 == v36)
      {
        return result;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  return result;
}

uint64_t sub_237A1840C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v47 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B108, &qword_237C0CA10);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v39 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0E8, &unk_237C152A0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v39 - v11;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0A8, &unk_237C15230);
  v45 = a1;
  result = sub_237C05F1C();
  if (result < 0)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  v39[1] = v3;
  if (result)
  {
    v14 = 0;
    v40 = (v10 + 32);
    v43 = (v10 + 8);
    v46 = xmmword_237C0B660;
    v41 = result;
    v42 = v8;
    while (1)
    {
      sub_237C05F9C();
      if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
      {
        sub_2379D9224(&qword_27DE9B110, &qword_27DE9B0E8, &unk_237C152A0, MEMORY[0x277CBFD28]);
        sub_237C0832C();
        if (__swift_getEnumTagSinglePayload(v8, 1, v9) != 1)
        {
          sub_2379D9054(v8, &qword_27DE9B108, &qword_237C0CA10);
        }
      }

      else
      {
        (*v40)(v12, v8, v9);
      }

      v15 = sub_237C082AC();
      if (*(v15 + 16) != 1)
      {

LABEL_18:
        v48 = 0;
        v49 = 0xE000000000000000;
        sub_237C08EDC();
        MEMORY[0x2383DC360](0xD000000000000023, 0x8000000237C181A0);
        v50 = a2;
        v29 = sub_237C0924C();
        MEMORY[0x2383DC360](v29);

        MEMORY[0x2383DC360](0x656620726F66205DLL, 0xEF27206572757461);
        v30 = sub_237C05F0C();
        MEMORY[0x2383DC360](v30);

        MEMORY[0x2383DC360](0xD000000000000011, 0x8000000237C181D0);
        sub_237C082AC();
        v31 = MEMORY[0x2383DC4F0]();
        v32 = v12;
        v34 = v33;

        MEMORY[0x2383DC360](v31, v34);

        MEMORY[0x2383DC360](0x20776F7220746120, 0xE800000000000000);
        v50 = v14;
        v35 = sub_237C0924C();
        MEMORY[0x2383DC360](v35);

        MEMORY[0x2383DC360](46, 0xE100000000000000);
        v36 = v48;
        v37 = v49;
        sub_2379E8AF0();
        swift_allocError();
        *v38 = v36;
        *(v38 + 8) = v37;
        *(v38 + 16) = 0u;
        *(v38 + 32) = 0u;
        *(v38 + 48) = 0;
        swift_willThrow();
        return (*v43)(v32, v9);
      }

      v16 = *(v15 + 32);

      if (v16 != a2)
      {
        goto LABEL_18;
      }

      if (a2 < 0)
      {
        break;
      }

      v17 = v12;
      if (a2)
      {
        result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B218, &qword_237C0CAF0);
        v18 = 0;
        while (1)
        {
          v19 = v47 + v18;
          if (__OFADD__(v47, v18))
          {
            break;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
          v20 = swift_allocObject();
          *(v20 + 16) = v46;
          *(v20 + 32) = v18;
          sub_2379D9224(&qword_27DE9B110, &qword_27DE9B0E8, &unk_237C152A0, MEMORY[0x277CBFD28]);
          sub_237C0835C();

          _H0 = v48;
          __asm { FCVT            D8, H0 }

          v27 = sub_237A1F930(&v48, v14, v19);
          *v28 = _D8;
          result = v27(&v48, 0);
          if (a2 == ++v18)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

LABEL_15:
      ++v14;
      v12 = v17;
      result = (*v43)(v17, v9);
      v8 = v42;
      if (v14 == v41)
      {
        return result;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  return result;
}

uint64_t sub_237A18984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B118, &qword_237C0CA18);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v34 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA48, &qword_237C0B7E0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v34 - v11;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0A0, &qword_237C0E2D0);
  v40 = a1;
  result = sub_237C05F1C();
  if (result < 0)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  v34[1] = v3;
  if (result)
  {
    v14 = 0;
    v35 = (v10 + 32);
    v38 = (v10 + 8);
    v41 = xmmword_237C0B660;
    v36 = result;
    v37 = v8;
    while (1)
    {
      sub_237C05F9C();
      if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
      {
        sub_2379D9224(&qword_27DE9ABC0, &qword_27DE9AA48, &qword_237C0B7E0, MEMORY[0x277CBFD28]);
        sub_237C0832C();
        if (__swift_getEnumTagSinglePayload(v8, 1, v9) != 1)
        {
          sub_2379D9054(v8, &qword_27DE9B118, &qword_237C0CA18);
        }
      }

      else
      {
        (*v35)(v12, v8, v9);
      }

      v15 = sub_237C082AC();
      if (*(v15 + 16) != 1)
      {

LABEL_18:
        v43 = 0;
        v44 = 0xE000000000000000;
        sub_237C08EDC();
        MEMORY[0x2383DC360](0xD000000000000023, 0x8000000237C181A0);
        v45 = a2;
        v24 = sub_237C0924C();
        MEMORY[0x2383DC360](v24);

        MEMORY[0x2383DC360](0x656620726F66205DLL, 0xEF27206572757461);
        v25 = sub_237C05F0C();
        MEMORY[0x2383DC360](v25);

        MEMORY[0x2383DC360](0xD000000000000011, 0x8000000237C181D0);
        sub_237C082AC();
        v26 = MEMORY[0x2383DC4F0]();
        v27 = v12;
        v29 = v28;

        MEMORY[0x2383DC360](v26, v29);

        MEMORY[0x2383DC360](0x20776F7220746120, 0xE800000000000000);
        v45 = v14;
        v30 = sub_237C0924C();
        MEMORY[0x2383DC360](v30);

        MEMORY[0x2383DC360](46, 0xE100000000000000);
        v31 = v43;
        v32 = v44;
        sub_2379E8AF0();
        swift_allocError();
        *v33 = v31;
        *(v33 + 8) = v32;
        *(v33 + 16) = 0u;
        *(v33 + 32) = 0u;
        *(v33 + 48) = 0;
        swift_willThrow();
        return (*v38)(v27, v9);
      }

      v16 = *(v15 + 32);

      if (v16 != a2)
      {
        goto LABEL_18;
      }

      if (a2 < 0)
      {
        break;
      }

      v17 = v12;
      if (a2)
      {
        result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B218, &qword_237C0CAF0);
        v18 = 0;
        while (1)
        {
          v19 = v42 + v18;
          if (__OFADD__(v42, v18))
          {
            break;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
          v20 = swift_allocObject();
          *(v20 + 16) = v41;
          *(v20 + 32) = v18;
          sub_2379D9224(&qword_27DE9ABC0, &qword_27DE9AA48, &qword_237C0B7E0, MEMORY[0x277CBFD28]);
          sub_237C0835C();

          v21 = *&v43;
          v22 = sub_237A1F930(&v43, v14, v19);
          *v23 = v21;
          result = v22(&v43, 0);
          if (a2 == ++v18)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

LABEL_15:
      ++v14;
      v12 = v17;
      result = (*v38)(v17, v9);
      v8 = v37;
      if (v14 == v36)
      {
        return result;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  return result;
}

uint64_t sub_237A18EFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B120, &qword_237C0CA20);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v34 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0F0, &qword_237C0DD30);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v34 - v11;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B098, &qword_237C15210);
  v40 = a1;
  result = sub_237C05F1C();
  if (result < 0)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  v34[1] = v3;
  if (result)
  {
    v14 = 0;
    v35 = (v10 + 32);
    v38 = (v10 + 8);
    v41 = xmmword_237C0B660;
    v36 = result;
    v37 = v8;
    while (1)
    {
      sub_237C05F9C();
      if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
      {
        sub_2379D9224(&qword_27DE9B128, &qword_27DE9B0F0, &qword_237C0DD30, MEMORY[0x277CBFD28]);
        sub_237C0832C();
        if (__swift_getEnumTagSinglePayload(v8, 1, v9) != 1)
        {
          sub_2379D9054(v8, &qword_27DE9B120, &qword_237C0CA20);
        }
      }

      else
      {
        (*v35)(v12, v8, v9);
      }

      v15 = sub_237C082AC();
      if (*(v15 + 16) != 1)
      {

LABEL_18:
        v43 = 0;
        v44 = 0xE000000000000000;
        sub_237C08EDC();
        MEMORY[0x2383DC360](0xD000000000000023, 0x8000000237C181A0);
        v45 = a2;
        v24 = sub_237C0924C();
        MEMORY[0x2383DC360](v24);

        MEMORY[0x2383DC360](0x656620726F66205DLL, 0xEF27206572757461);
        v25 = sub_237C05F0C();
        MEMORY[0x2383DC360](v25);

        MEMORY[0x2383DC360](0xD000000000000011, 0x8000000237C181D0);
        sub_237C082AC();
        v26 = MEMORY[0x2383DC4F0]();
        v27 = v12;
        v29 = v28;

        MEMORY[0x2383DC360](v26, v29);

        MEMORY[0x2383DC360](0x20776F7220746120, 0xE800000000000000);
        v45 = v14;
        v30 = sub_237C0924C();
        MEMORY[0x2383DC360](v30);

        MEMORY[0x2383DC360](46, 0xE100000000000000);
        v31 = v43;
        v32 = v44;
        sub_2379E8AF0();
        swift_allocError();
        *v33 = v31;
        *(v33 + 8) = v32;
        *(v33 + 16) = 0u;
        *(v33 + 32) = 0u;
        *(v33 + 48) = 0;
        swift_willThrow();
        return (*v38)(v27, v9);
      }

      v16 = *(v15 + 32);

      if (v16 != a2)
      {
        goto LABEL_18;
      }

      if (a2 < 0)
      {
        break;
      }

      v17 = v12;
      if (a2)
      {
        result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B218, &qword_237C0CAF0);
        v18 = 0;
        while (1)
        {
          v19 = v42 + v18;
          if (__OFADD__(v42, v18))
          {
            break;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
          v20 = swift_allocObject();
          *(v20 + 16) = v41;
          *(v20 + 32) = v18;
          sub_2379D9224(&qword_27DE9B128, &qword_27DE9B0F0, &qword_237C0DD30, MEMORY[0x277CBFD28]);
          sub_237C0835C();

          v21 = v43;
          v22 = sub_237A1F930(&v43, v14, v19);
          *v23 = v21;
          result = v22(&v43, 0);
          if (a2 == ++v18)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

LABEL_15:
      ++v14;
      v12 = v17;
      result = (*v38)(v17, v9);
      v8 = v37;
      if (v14 == v36)
      {
        return result;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  return result;
}

void sub_237A19AEC(uint64_t a1)
{
  OUTLINED_FUNCTION_8_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B168, &unk_237C151E0);
  v3 = sub_237C05F1C();
  if (v3 < 0)
  {
LABEL_20:
    __break(1u);
  }

  else if (v3)
  {
    v4 = 0;
    v30 = *(v2 + 16);
    v23 = (v2 + 56);
    v21 = v3;
    while (2)
    {
      sub_237C05F9C();
      v5 = *&v29[0];
      if (!*&v29[0])
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A998, &unk_237C0C100);
        v5 = sub_237C085AC();
      }

      v6 = 0;
      v25 = v4;
      v22 = v4 + 1;
      for (i = v23; ; i += 32)
      {
        OUTLINED_FUNCTION_62_1();
        if (v8)
        {
          break;
        }

        v10 = *(i - 3);
        v9 = *(i - 2);
        v11 = *(i - 1);
        v12 = *i;
        v13 = *(v5 + 16);

        sub_237A1E09C(v11, v12);
        if (v13 && (v14 = OUTLINED_FUNCTION_55(), v16 = sub_237ACAC78(v14, v15), (v17 & 1) != 0))
        {
          sub_2379D8FF4(*(v5 + 56) + 32 * v16, v26, &qword_27DE9A998, &unk_237C0C100);
          v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A998, &unk_237C0C100);
          v18 = swift_allocObject();
          *&v27 = v18;
          v19 = v26[1];
          *(v18 + 16) = v26[0];
          *(v18 + 32) = v19;
          sub_2379DAD24(&v27, v29);
        }

        else
        {
          memset(v29, 0, 32);
        }

        OUTLINED_FUNCTION_60_2();
        if (v20)
        {
          __break(1u);
          goto LABEL_20;
        }

        v24(v29, v10, v9, v11, v12, v25);
        sub_2379D9054(v29, &qword_27DE9A998, &unk_237C0C100);

        sub_237A1E0B0(v11, v12);
        if (v1)
        {

          return;
        }

        ++v6;
      }

      v4 = v22;
      if (v22 != v21)
      {
        continue;
      }

      break;
    }
  }
}

uint64_t sub_237A19D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v66 = a7;
  v67 = a6;
  sub_2379D8FF4(a1, &v73, &qword_27DE9A998, &unk_237C0C100);
  if (!*(&v74 + 1))
  {
    return sub_2379D9054(&v73, &qword_27DE9A998, &unk_237C0C100);
  }

  sub_2379DAD24(&v73, &v76);
  switch(a5)
  {
    case 4:
      sub_2379FED88(&v76, &v73);
      if ((swift_dynamicCast() & 1) == 0)
      {
        *&v73 = 0;
        *(&v73 + 1) = 0xE000000000000000;
        sub_237C08EDC();
        v34 = "', but got shape ";
        v35 = 0xD000000000000024;
        goto LABEL_36;
      }

      v24 = *(&v68 + 1);
      v25 = *(a4 + 16);
      if (v25)
      {
        v65[0] = v7;
        v26 = v68;
        v27 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B050, &qword_237C0C9C0);
        v28 = (a4 + 40);
        while (1)
        {
          v29 = v66 + v27;
          if (__OFADD__(v66, v27))
          {
            break;
          }

          v30 = 1.0;
          if (*(v28 - 1) != v26 || *v28 != v24)
          {
            if (sub_237C0929C())
            {
              v30 = 1.0;
            }

            else
            {
              v30 = 0.0;
            }
          }

          ++v27;
          v32 = sub_237A1F7FC(&v73, v67, v29);
          *v33 = v30;
          v32(&v73, 0);
          v28 += 2;
          if (v25 == v27)
          {
            goto LABEL_33;
          }
        }

        __break(1u);
LABEL_58:
        __break(1u);
        JUMPOUT(0x237A1A8F0);
      }

LABEL_33:
      __swift_destroy_boxed_opaque_existential_1(&v76);

    case 5:
      sub_2379FED88(&v76, &v73);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE58, &unk_237C0C6F0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        *&v73 = 0;
        *(&v73 + 1) = 0xE000000000000000;
        sub_237C08EDC();
        v34 = "values for feature '";
        v35 = 0xD000000000000028;
LABEL_36:
        v36 = v34 | 0x8000000000000000;
        goto LABEL_37;
      }

      v13 = 0;
      v65[0] = *(a4 + 16);
      for (i = (a4 + 56); ; i += 32)
      {
        if (v65[0] == v13)
        {

          goto LABEL_38;
        }

        v16 = *(i - 3);
        v15 = *(i - 2);
        v17 = *(i - 1);
        v18 = *i;
        if (*(v68 + 16))
        {

          sub_237A1E09C(v17, v18);
          v19 = sub_237ACAC78(v16, v15);
          if (v20)
          {
            sub_2379FED88(*(v68 + 56) + 32 * v19, &v73);
          }

          else
          {
            v73 = 0u;
            v74 = 0u;
          }
        }

        else
        {
          v73 = 0u;
          v74 = 0u;

          sub_237A1E09C(v17, v18);
        }

        if (__OFADD__(v66, v13))
        {
          goto LABEL_58;
        }

        sub_237A19D34(&v73, v16, v15, v17, v18, v67, v66 + v13);

        if (v7)
        {
          break;
        }

        sub_237A1E0B0(v17, v18);
        sub_2379D9054(&v73, &qword_27DE9A998, &unk_237C0C100);
        ++v13;
      }

      sub_237A1E0B0(v17, v18);
      sub_2379D9054(&v73, &qword_27DE9A998, &unk_237C0C100);
      goto LABEL_38;
    case 6:
      if (!a4)
      {
        sub_2379FED88(&v76, v72);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B198, &qword_237C0CA60);
        if (!swift_dynamicCast())
        {
          v70 = 0;
          v68 = 0u;
          v69 = 0u;
          sub_2379D9054(&v68, &qword_27DE9B1A0, &qword_237C0CA68);
          sub_2379FED88(&v76, v72);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B1A8, &qword_237C0CA70);
          if ((swift_dynamicCast() & 1) == 0)
          {
            v70 = 0;
            v68 = 0u;
            v69 = 0u;
            sub_2379D9054(&v68, &qword_27DE9B1B0, qword_237C0CA78);
            sub_2379FED88(&v76, &v73);
            sub_2379E8EE0(0, &qword_27DE9AC40, 0x277CCABB0);
            if (swift_dynamicCast())
            {
              v21 = v68;
              v23 = [v68 integerValue];
              goto LABEL_55;
            }

LABEL_56:
            *&v73 = 0;
            *(&v73 + 1) = 0xE000000000000000;
            sub_237C08EDC();
            v36 = 0x8000000237C180A0;
            v35 = 0xD000000000000025;
LABEL_37:
            MEMORY[0x2383DC360](v35, v36);
            MEMORY[0x2383DC360](a2, a3);
            MEMORY[0x2383DC360](0x6720747562202C27, 0xEB0000000020746FLL);
            __swift_project_boxed_opaque_existential_1(&v76, v77);
            swift_getDynamicType();
            v37 = sub_237C094DC();
            MEMORY[0x2383DC360](v37);

            MEMORY[0x2383DC360](0x20776F7220746120, 0xE800000000000000);
            *&v68 = v67;
            v38 = sub_237C0924C();
            MEMORY[0x2383DC360](v38);

            MEMORY[0x2383DC360](46, 0xE100000000000000);
            v39 = v73;
            sub_2379E8AF0();
            swift_allocError();
            *v40 = v39;
            *(v40 + 16) = 0u;
            *(v40 + 32) = 0u;
            *(v40 + 48) = 0;
            swift_willThrow();
            goto LABEL_38;
          }

          goto LABEL_48;
        }

LABEL_41:
        sub_237A1FCF0(&v68, &v73);
        v42 = *(&v74 + 1);
        v43 = __swift_project_boxed_opaque_existential_1(&v73, *(&v74 + 1));
        v44 = *(v42 - 8);
        v45 = MEMORY[0x28223BE20](v43);
        v47 = v65 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v44 + 16))(v47, v45);
        if (sub_237C08DCC() < 65)
        {
          v49 = sub_237C08DDC();
          v50 = sub_237C08DBC();
          (*(v44 + 8))(v47, v42);
          if (v49)
          {
            v48 = v50;
          }

          else
          {
            v48 = v50;
          }
        }

        else
        {
          sub_237A0C928();
          sub_237A20B14();
          sub_237C0853C();
          (*(v44 + 8))(v47, v42);
          v48 = *&v68;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B050, &qword_237C0C9C0);
        v61 = sub_237A1F7FC(&v68, v67, v66);
        *v62 = v48;
        v61(&v68, 0);
        goto LABEL_52;
      }

      sub_2379FED88(&v76, v72);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B198, &qword_237C0CA60);
      if (swift_dynamicCast())
      {
        goto LABEL_41;
      }

      v70 = 0;
      v68 = 0u;
      v69 = 0u;
      sub_2379D9054(&v68, &qword_27DE9B1A0, &qword_237C0CA68);
      sub_2379FED88(&v76, v72);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B1A8, &qword_237C0CA70);
      if (swift_dynamicCast())
      {
LABEL_48:
        sub_237A1FCF0(&v68, &v73);
        v51 = *(&v74 + 1);
        v52 = v75;
        v53 = __swift_project_boxed_opaque_existential_1(&v73, *(&v74 + 1));
        v54 = MEMORY[0x28223BE20](v53);
        v56 = v65 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v57 + 16))(v56, v54);
        v58 = sub_237A2043C(v56, v51, v52);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B050, &qword_237C0C9C0);
        v59 = sub_237A1F7FC(&v68, v67, v66);
        *v60 = v58;
        v59(&v68, 0);
LABEL_52:
        __swift_destroy_boxed_opaque_existential_1(&v76);
        v41 = &v73;
        return __swift_destroy_boxed_opaque_existential_1(v41);
      }

      v70 = 0;
      v68 = 0u;
      v69 = 0u;
      sub_2379D9054(&v68, &qword_27DE9B1B0, qword_237C0CA78);
      sub_2379FED88(&v76, &v73);
      sub_2379E8EE0(0, &qword_27DE9AC40, 0x277CCABB0);
      if (!swift_dynamicCast())
      {
        goto LABEL_56;
      }

      v21 = v68;
      [v68 floatValue];
      v23 = v22;
LABEL_55:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B050, &qword_237C0C9C0);
      v63 = sub_237A1F7FC(&v73, v67, v66);
      *v64 = v23;
      v63(&v73, 0);

LABEL_38:
      v41 = &v76;
      return __swift_destroy_boxed_opaque_existential_1(v41);
    default:
      sub_237A1B4E4(&v76, a2, a3, a4, a5, a4, v67, v66, &qword_27DE9B050, &qword_237C0C9C0, sub_237A1BF64, sub_237A1C6AC, sub_237A1CA4C, sub_237A1CDF0, v65[0], v65[1], v66, v67, v68, *(&v68 + 1), v69, *(&v69 + 1), v70, v71, v72[0], v72[1]);
      goto LABEL_38;
  }
}

uint64_t sub_237A1A90C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v66 = a7;
  v67 = a6;
  sub_2379D8FF4(a1, &v73, &qword_27DE9A998, &unk_237C0C100);
  if (!*(&v74 + 1))
  {
    return sub_2379D9054(&v73, &qword_27DE9A998, &unk_237C0C100);
  }

  sub_2379DAD24(&v73, &v76);
  switch(a5)
  {
    case 4:
      sub_2379FED88(&v76, &v73);
      if ((swift_dynamicCast() & 1) == 0)
      {
        *&v73 = 0;
        *(&v73 + 1) = 0xE000000000000000;
        sub_237C08EDC();
        v34 = "', but got shape ";
        v35 = 0xD000000000000024;
        goto LABEL_36;
      }

      v24 = *(&v68 + 1);
      v25 = *(a4 + 16);
      if (v25)
      {
        v65[0] = v7;
        v26 = v68;
        v27 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B218, &qword_237C0CAF0);
        v28 = (a4 + 40);
        while (1)
        {
          v29 = v66 + v27;
          if (__OFADD__(v66, v27))
          {
            break;
          }

          v30 = 1.0;
          if (*(v28 - 1) != v26 || *v28 != v24)
          {
            if (sub_237C0929C())
            {
              v30 = 1.0;
            }

            else
            {
              v30 = 0.0;
            }
          }

          ++v27;
          v32 = sub_237A1F930(&v73, v67, v29);
          *v33 = v30;
          v32(&v73, 0);
          v28 += 2;
          if (v25 == v27)
          {
            goto LABEL_33;
          }
        }

        __break(1u);
LABEL_58:
        __break(1u);
        JUMPOUT(0x237A1B4C8);
      }

LABEL_33:
      __swift_destroy_boxed_opaque_existential_1(&v76);

    case 5:
      sub_2379FED88(&v76, &v73);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE58, &unk_237C0C6F0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        *&v73 = 0;
        *(&v73 + 1) = 0xE000000000000000;
        sub_237C08EDC();
        v34 = "values for feature '";
        v35 = 0xD000000000000028;
LABEL_36:
        v36 = v34 | 0x8000000000000000;
        goto LABEL_37;
      }

      v13 = 0;
      v65[0] = *(a4 + 16);
      for (i = (a4 + 56); ; i += 32)
      {
        if (v65[0] == v13)
        {

          goto LABEL_38;
        }

        v16 = *(i - 3);
        v15 = *(i - 2);
        v17 = *(i - 1);
        v18 = *i;
        if (*(v68 + 16))
        {

          sub_237A1E09C(v17, v18);
          v19 = sub_237ACAC78(v16, v15);
          if (v20)
          {
            sub_2379FED88(*(v68 + 56) + 32 * v19, &v73);
          }

          else
          {
            v73 = 0u;
            v74 = 0u;
          }
        }

        else
        {
          v73 = 0u;
          v74 = 0u;

          sub_237A1E09C(v17, v18);
        }

        if (__OFADD__(v66, v13))
        {
          goto LABEL_58;
        }

        sub_237A1A90C(&v73, v16, v15, v17, v18, v67, v66 + v13);

        if (v7)
        {
          break;
        }

        sub_237A1E0B0(v17, v18);
        sub_2379D9054(&v73, &qword_27DE9A998, &unk_237C0C100);
        ++v13;
      }

      sub_237A1E0B0(v17, v18);
      sub_2379D9054(&v73, &qword_27DE9A998, &unk_237C0C100);
      goto LABEL_38;
    case 6:
      if (!a4)
      {
        sub_2379FED88(&v76, v72);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B198, &qword_237C0CA60);
        if (!swift_dynamicCast())
        {
          v70 = 0;
          v68 = 0u;
          v69 = 0u;
          sub_2379D9054(&v68, &qword_27DE9B1A0, &qword_237C0CA68);
          sub_2379FED88(&v76, v72);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B1A8, &qword_237C0CA70);
          if ((swift_dynamicCast() & 1) == 0)
          {
            v70 = 0;
            v68 = 0u;
            v69 = 0u;
            sub_2379D9054(&v68, &qword_27DE9B1B0, qword_237C0CA78);
            sub_2379FED88(&v76, &v73);
            sub_2379E8EE0(0, &qword_27DE9AC40, 0x277CCABB0);
            if (swift_dynamicCast())
            {
              v21 = v68;
              v23 = [v68 integerValue];
              goto LABEL_55;
            }

LABEL_56:
            *&v73 = 0;
            *(&v73 + 1) = 0xE000000000000000;
            sub_237C08EDC();
            v36 = 0x8000000237C180A0;
            v35 = 0xD000000000000025;
LABEL_37:
            MEMORY[0x2383DC360](v35, v36);
            MEMORY[0x2383DC360](a2, a3);
            MEMORY[0x2383DC360](0x6720747562202C27, 0xEB0000000020746FLL);
            __swift_project_boxed_opaque_existential_1(&v76, v77);
            swift_getDynamicType();
            v37 = sub_237C094DC();
            MEMORY[0x2383DC360](v37);

            MEMORY[0x2383DC360](0x20776F7220746120, 0xE800000000000000);
            *&v68 = v67;
            v38 = sub_237C0924C();
            MEMORY[0x2383DC360](v38);

            MEMORY[0x2383DC360](46, 0xE100000000000000);
            v39 = v73;
            sub_2379E8AF0();
            swift_allocError();
            *v40 = v39;
            *(v40 + 16) = 0u;
            *(v40 + 32) = 0u;
            *(v40 + 48) = 0;
            swift_willThrow();
            goto LABEL_38;
          }

          goto LABEL_48;
        }

LABEL_41:
        sub_237A1FCF0(&v68, &v73);
        v42 = *(&v74 + 1);
        v43 = __swift_project_boxed_opaque_existential_1(&v73, *(&v74 + 1));
        v44 = *(v42 - 8);
        v45 = MEMORY[0x28223BE20](v43);
        v47 = v65 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v44 + 16))(v47, v45);
        if (sub_237C08DCC() < 65)
        {
          v49 = sub_237C08DDC();
          v50 = sub_237C08DBC();
          (*(v44 + 8))(v47, v42);
          if (v49)
          {
            v48 = v50;
          }

          else
          {
            v48 = v50;
          }
        }

        else
        {
          sub_237A20BBC();
          sub_237A20CA4();
          sub_237C0853C();
          (*(v44 + 8))(v47, v42);
          v48 = *&v68;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B218, &qword_237C0CAF0);
        v61 = sub_237A1F930(&v68, v67, v66);
        *v62 = v48;
        v61(&v68, 0);
        goto LABEL_52;
      }

      sub_2379FED88(&v76, v72);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B198, &qword_237C0CA60);
      if (swift_dynamicCast())
      {
        goto LABEL_41;
      }

      v70 = 0;
      v68 = 0u;
      v69 = 0u;
      sub_2379D9054(&v68, &qword_27DE9B1A0, &qword_237C0CA68);
      sub_2379FED88(&v76, v72);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B1A8, &qword_237C0CA70);
      if (swift_dynamicCast())
      {
LABEL_48:
        sub_237A1FCF0(&v68, &v73);
        v51 = *(&v74 + 1);
        v52 = v75;
        v53 = __swift_project_boxed_opaque_existential_1(&v73, *(&v74 + 1));
        v54 = MEMORY[0x28223BE20](v53);
        v56 = v65 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v57 + 16))(v56, v54);
        v58 = sub_237A1FD64(v56, v51, v52);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B218, &qword_237C0CAF0);
        v59 = sub_237A1F930(&v68, v67, v66);
        *v60 = v58;
        v59(&v68, 0);
LABEL_52:
        __swift_destroy_boxed_opaque_existential_1(&v76);
        v41 = &v73;
        return __swift_destroy_boxed_opaque_existential_1(v41);
      }

      v70 = 0;
      v68 = 0u;
      v69 = 0u;
      sub_2379D9054(&v68, &qword_27DE9B1B0, qword_237C0CA78);
      sub_2379FED88(&v76, &v73);
      sub_2379E8EE0(0, &qword_27DE9AC40, 0x277CCABB0);
      if (!swift_dynamicCast())
      {
        goto LABEL_56;
      }

      v21 = v68;
      [v68 floatValue];
      v23 = v22;
LABEL_55:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B218, &qword_237C0CAF0);
      v63 = sub_237A1F930(&v73, v67, v66);
      *v64 = v23;
      v63(&v73, 0);

LABEL_38:
      v41 = &v76;
      return __swift_destroy_boxed_opaque_existential_1(v41);
    default:
      sub_237A1B4E4(&v76, a2, a3, a4, a5, a4, v67, v66, &qword_27DE9B218, &qword_237C0CAF0, sub_237A1C308, sub_237A1D194, sub_237A1D538, sub_237A1D8D8, v65[0], v65[1], v66, v67, v68, *(&v68 + 1), v69, *(&v69 + 1), v70, v71, v72[0], v72[1]);
      goto LABEL_38;
  }
}

void sub_237A1B4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t *a22, void (*a23)(void), void (*a24)(void), void (*a25)(void), void (*a26)(void))
{
  OUTLINED_FUNCTION_74();
  v180 = v27;
  v185 = v28;
  v186 = v26;
  v191 = v29;
  v182 = v30;
  v181 = v31;
  v179 = v32;
  v183 = v33;
  v184 = v34;
  v36 = v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B108, &qword_237C0CA10);
  OUTLINED_FUNCTION_20(v37);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_77_0(v39);
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0E8, &unk_237C152A0);
  OUTLINED_FUNCTION_0();
  v168 = v40;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_77_0(v42);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B120, &qword_237C0CA20);
  OUTLINED_FUNCTION_20(v43);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_77_0(v45);
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0F0, &qword_237C0DD30);
  OUTLINED_FUNCTION_0();
  v173 = v46;
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_18_0();
  v171 = v48 - v49;
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_77_0(&v166 - v51);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B118, &qword_237C0CA18);
  OUTLINED_FUNCTION_20(v52);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v53);
  v55 = &v166 - v54;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA48, &qword_237C0B7E0);
  OUTLINED_FUNCTION_0();
  v174 = v57;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v58);
  v60 = &v166 - v59;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0F8, &qword_237C0CA08);
  OUTLINED_FUNCTION_20(v61);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v62);
  v64 = &v166 - v63;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0E0, &unk_237C15290);
  OUTLINED_FUNCTION_0();
  v177 = v66;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v67);
  v69 = &v166 - v68;
  v178 = v36;
  sub_2379FED88(v36, &v188);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B1C0, &qword_237C0CAB8);
  if (OUTLINED_FUNCTION_42_0(v70, v71, v72, v70))
  {
    v73 = OUTLINED_FUNCTION_17_5();
    __swift_instantiateConcreteTypeFromMangledNameV2(v73, a22);
    sub_237A20C10();
    OUTLINED_FUNCTION_83_0();
    OUTLINED_FUNCTION_64_1();
    OUTLINED_FUNCTION_47_2();
    sub_237A40AD8(v74, v75, v76, v77, v78, v79, v80, v81, v166, v167);
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(&v189);
    goto LABEL_10;
  }

  v166 = a22;
  v82 = OUTLINED_FUNCTION_38_1();
  sub_2379FED88(v82, v83);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B1C8, &qword_237C0CAC0);
  if (OUTLINED_FUNCTION_42_0(v84, v85, v86, v84))
  {
    v87 = OUTLINED_FUNCTION_17_5();
    __swift_instantiateConcreteTypeFromMangledNameV2(v87, v166);
    sub_237A0C928();
    OUTLINED_FUNCTION_83_0();
LABEL_7:
    OUTLINED_FUNCTION_64_1();
    OUTLINED_FUNCTION_23_5();
LABEL_8:
    OUTLINED_FUNCTION_47_2();
    sub_237A40E80(v94, v95, v96, v97, v98, v99, v100, v101, v166, v167);
    goto LABEL_9;
  }

  v88 = OUTLINED_FUNCTION_38_1();
  sub_2379FED88(v88, v89);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B1D0, &qword_237C0CAC8);
  if (OUTLINED_FUNCTION_42_0(v90, v91, v92, v90))
  {
    v93 = OUTLINED_FUNCTION_17_5();
    __swift_instantiateConcreteTypeFromMangledNameV2(v93, v166);
    sub_237A20BBC();
    OUTLINED_FUNCTION_83_0();
    goto LABEL_7;
  }

  v102 = OUTLINED_FUNCTION_38_1();
  sub_2379FED88(v102, v103);
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_80_0();
    __swift_storeEnumTagSinglePayload(v104, v105, v106, v65);
    v107 = v177;
    (*(v177 + 32))(v69, v64, v65);
    OUTLINED_FUNCTION_23_5();
    OUTLINED_FUNCTION_47_2();
    a23();
    (*(v107 + 8))(v69, v65);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v108, v109, v110, v65);
  sub_2379D9054(v64, &qword_27DE9B0F8, &qword_237C0CA08);
  v111 = OUTLINED_FUNCTION_38_1();
  sub_2379FED88(v111, v112);
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_80_0();
    __swift_storeEnumTagSinglePayload(v113, v114, v115, v56);
    v116 = v174;
    (*(v174 + 32))(v60, v55, v56);
    OUTLINED_FUNCTION_23_5();
    OUTLINED_FUNCTION_47_2();
    a24();
    (*(v116 + 8))(v60, v56);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v117, v118, v119, v56);
  sub_2379D9054(v55, &qword_27DE9B118, &qword_237C0CA18);
  v120 = OUTLINED_FUNCTION_38_1();
  sub_2379FED88(v120, v121);
  v122 = v175;
  v123 = v176;
  v124 = swift_dynamicCast();
  v125 = v183;
  if (v124)
  {
    OUTLINED_FUNCTION_80_0();
    __swift_storeEnumTagSinglePayload(v126, v127, v128, v123);
    v129 = v173;
    v130 = v172;
    (*(v173 + 32))(v172, v122, v123);
    OUTLINED_FUNCTION_23_5();
    a25();
    (*(v129 + 8))(v130, v123);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v131, v132, v133, v123);
  sub_2379D9054(v122, &qword_27DE9B120, &qword_237C0CA20);
  v134 = OUTLINED_FUNCTION_38_1();
  sub_2379FED88(v134, v135);
  sub_2379E8EE0(0, &qword_27DE9ACF8, 0x277CBFF48);
  if (swift_dynamicCast())
  {
    v136 = v187;
    v137 = v171;
    sub_237C082EC();
    OUTLINED_FUNCTION_23_5();
    a25();
    (*(v173 + 8))(v137, v123);

    goto LABEL_10;
  }

  v138 = OUTLINED_FUNCTION_38_1();
  sub_2379FED88(v138, v139);
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B1D8, &qword_237C0CAD0);
  if (OUTLINED_FUNCTION_42_0(v140, v141, v142, v140))
  {
    v143 = OUTLINED_FUNCTION_17_5();
    __swift_instantiateConcreteTypeFromMangledNameV2(v143, v166);
    sub_237A20B68();
    OUTLINED_FUNCTION_83_0();
    OUTLINED_FUNCTION_64_1();
    OUTLINED_FUNCTION_23_5();
    goto LABEL_8;
  }

  v144 = OUTLINED_FUNCTION_38_1();
  sub_2379FED88(v144, v145);
  v146 = v169;
  v147 = v170;
  v148 = swift_dynamicCast();
  v149 = v184;
  if (v148)
  {
    v178 = a26;
    OUTLINED_FUNCTION_80_0();
    __swift_storeEnumTagSinglePayload(v150, v151, v152, v147);
    v153 = v146;
    v154 = v168;
    v155 = v167;
    (*(v168 + 32))(v167, v153, v147);
    OUTLINED_FUNCTION_23_5();
    v178();
    (*(v154 + 8))(v155, v147);
  }

  else
  {
    OUTLINED_FUNCTION_64();
    __swift_storeEnumTagSinglePayload(v156, v157, v158, v147);
    sub_2379D9054(v146, &qword_27DE9B108, &qword_237C0CA10);
    v189 = 0;
    v190 = 0xE000000000000000;
    sub_237C08EDC();
    MEMORY[0x2383DC360](0xD000000000000031, 0x8000000237C18100);
    MEMORY[0x2383DC360](v125, v149);
    OUTLINED_FUNCTION_61_1();
    v159 = OUTLINED_FUNCTION_38_1();
    __swift_project_boxed_opaque_existential_1(v159, v159[3]);
    swift_getDynamicType();
    v160 = sub_237C094DC();
    MEMORY[0x2383DC360](v160);

    MEMORY[0x2383DC360](0x20776F7220746120, 0xE800000000000000);
    v187 = v191;
    v161 = sub_237C0924C();
    MEMORY[0x2383DC360](v161);

    MEMORY[0x2383DC360](46, 0xE100000000000000);
    v162 = v189;
    v163 = v190;
    sub_2379E8AF0();
    v164 = swift_allocError();
    *v165 = v162;
    v165[1] = v163;
    OUTLINED_FUNCTION_52(v164, v165);
  }

LABEL_10:
  OUTLINED_FUNCTION_73();
}

uint64_t sub_237A1BF64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237C0B660;
  *(inited + 32) = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0E0, &unk_237C15290);
  v12 = sub_237C082AC();
  v13 = sub_237AC6FE0(inited, v12);

  result = swift_setDeallocating();
  if (v13)
  {
    if (a6 < 0)
    {
LABEL_11:
      __break(1u);
      return result;
    }

    if (a6)
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B050, &qword_237C0C9C0);
      v15 = 0;
      while (!__OFADD__(a8, v15))
      {
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_237C0B660;
        *(v16 + 32) = v15;
        sub_2379D9224(&qword_27DE9B100, &qword_27DE9B0E0, &unk_237C15290, MEMORY[0x277CBFD28]);
        sub_237C0835C();

        v17 = SLODWORD(v29[0]);
        v18 = sub_237A1F7FC(v29, a7, a8 + v15);
        *v19 = v17;
        result = v18(v29, 0);
        if (a6 == ++v15)
        {
          return result;
        }
      }

      __break(1u);
      goto LABEL_11;
    }
  }

  else
  {
    sub_237C08EDC();
    MEMORY[0x2383DC360](0xD000000000000023, 0x8000000237C181A0);
    v20 = sub_237C0924C();
    MEMORY[0x2383DC360](v20);

    MEMORY[0x2383DC360](0x656620726F66205DLL, 0xEF27206572757461);
    MEMORY[0x2383DC360](a2, a3);
    MEMORY[0x2383DC360](0xD000000000000011, 0x8000000237C181D0);
    sub_237C082AC();
    v21 = MEMORY[0x2383DC4F0]();
    v22 = a7;
    v24 = v23;

    MEMORY[0x2383DC360](v21, v24);

    MEMORY[0x2383DC360](0x20776F7220746120, 0xE800000000000000);
    v29[4] = v22;
    v25 = sub_237C0924C();
    MEMORY[0x2383DC360](v25);

    MEMORY[0x2383DC360](46, 0xE100000000000000);
    sub_2379E8AF0();
    swift_allocError();
    *v26 = 0;
    *(v26 + 8) = 0xE000000000000000;
    *(v26 + 16) = 0u;
    *(v26 + 32) = 0u;
    *(v26 + 48) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_237A1C308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237C0B660;
  *(inited + 32) = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0E0, &unk_237C15290);
  v12 = sub_237C082AC();
  v13 = sub_237AC6FE0(inited, v12);

  result = swift_setDeallocating();
  if (v13)
  {
    if (a6 < 0)
    {
LABEL_11:
      __break(1u);
      return result;
    }

    if (a6)
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B218, &qword_237C0CAF0);
      v15 = 0;
      while (!__OFADD__(a8, v15))
      {
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_237C0B660;
        *(v16 + 32) = v15;
        sub_2379D9224(&qword_27DE9B100, &qword_27DE9B0E0, &unk_237C15290, MEMORY[0x277CBFD28]);
        sub_237C0835C();

        v17 = SLODWORD(v29[0]);
        v18 = sub_237A1F930(v29, a7, a8 + v15);
        *v19 = v17;
        result = v18(v29, 0);
        if (a6 == ++v15)
        {
          return result;
        }
      }

      __break(1u);
      goto LABEL_11;
    }
  }

  else
  {
    sub_237C08EDC();
    MEMORY[0x2383DC360](0xD000000000000023, 0x8000000237C181A0);
    v20 = sub_237C0924C();
    MEMORY[0x2383DC360](v20);

    MEMORY[0x2383DC360](0x656620726F66205DLL, 0xEF27206572757461);
    MEMORY[0x2383DC360](a2, a3);
    MEMORY[0x2383DC360](0xD000000000000011, 0x8000000237C181D0);
    sub_237C082AC();
    v21 = MEMORY[0x2383DC4F0]();
    v22 = a7;
    v24 = v23;

    MEMORY[0x2383DC360](v21, v24);

    MEMORY[0x2383DC360](0x20776F7220746120, 0xE800000000000000);
    v29[4] = v22;
    v25 = sub_237C0924C();
    MEMORY[0x2383DC360](v25);

    MEMORY[0x2383DC360](46, 0xE100000000000000);
    sub_2379E8AF0();
    swift_allocError();
    *v26 = 0;
    *(v26 + 8) = 0xE000000000000000;
    *(v26 + 16) = 0u;
    *(v26 + 32) = 0u;
    *(v26 + 48) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_237A1C6AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237C0B660;
  *(inited + 32) = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA48, &qword_237C0B7E0);
  v12 = sub_237C082AC();
  v13 = sub_237AC6FE0(inited, v12);

  result = swift_setDeallocating();
  if (v13)
  {
    if (a6 < 0)
    {
LABEL_11:
      __break(1u);
      return result;
    }

    if (a6)
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B050, &qword_237C0C9C0);
      v15 = 0;
      while (!__OFADD__(a8, v15))
      {
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_237C0B660;
        *(v16 + 32) = v15;
        sub_2379D9224(&qword_27DE9ABC0, &qword_27DE9AA48, &qword_237C0B7E0, MEMORY[0x277CBFD28]);
        sub_237C0835C();

        v17 = v29[0];
        v18 = sub_237A1F7FC(v29, a7, a8 + v15);
        *v19 = v17;
        result = v18(v29, 0);
        if (a6 == ++v15)
        {
          return result;
        }
      }

      __break(1u);
      goto LABEL_11;
    }
  }

  else
  {
    sub_237C08EDC();
    MEMORY[0x2383DC360](0xD000000000000023, 0x8000000237C181A0);
    v20 = sub_237C0924C();
    MEMORY[0x2383DC360](v20);

    MEMORY[0x2383DC360](0x656620726F66205DLL, 0xEF27206572757461);
    MEMORY[0x2383DC360](a2, a3);
    MEMORY[0x2383DC360](0xD000000000000011, 0x8000000237C181D0);
    sub_237C082AC();
    v21 = MEMORY[0x2383DC4F0]();
    v22 = a7;
    v24 = v23;

    MEMORY[0x2383DC360](v21, v24);

    MEMORY[0x2383DC360](0x20776F7220746120, 0xE800000000000000);
    v29[4] = v22;
    v25 = sub_237C0924C();
    MEMORY[0x2383DC360](v25);

    MEMORY[0x2383DC360](46, 0xE100000000000000);
    sub_2379E8AF0();
    swift_allocError();
    *v26 = 0;
    *(v26 + 8) = 0xE000000000000000;
    *(v26 + 16) = 0u;
    *(v26 + 32) = 0u;
    *(v26 + 48) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_237A1CA4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237C0B660;
  *(inited + 32) = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0F0, &qword_237C0DD30);
  v12 = sub_237C082AC();
  v13 = sub_237AC6FE0(inited, v12);

  result = swift_setDeallocating();
  if (v13)
  {
    if (a6 < 0)
    {
LABEL_11:
      __break(1u);
      return result;
    }

    if (a6)
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B050, &qword_237C0C9C0);
      v15 = 0;
      while (!__OFADD__(a8, v15))
      {
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_237C0B660;
        *(v16 + 32) = v15;
        sub_2379D9224(&qword_27DE9B128, &qword_27DE9B0F0, &qword_237C0DD30, MEMORY[0x277CBFD28]);
        sub_237C0835C();

        v17 = v29[0];
        v18 = sub_237A1F7FC(v29, a7, a8 + v15);
        *v19 = v17;
        result = v18(v29, 0);
        if (a6 == ++v15)
        {
          return result;
        }
      }

      __break(1u);
      goto LABEL_11;
    }
  }

  else
  {
    sub_237C08EDC();
    MEMORY[0x2383DC360](0xD000000000000023, 0x8000000237C181A0);
    v20 = sub_237C0924C();
    MEMORY[0x2383DC360](v20);

    MEMORY[0x2383DC360](0x656620726F66205DLL, 0xEF27206572757461);
    MEMORY[0x2383DC360](a2, a3);
    MEMORY[0x2383DC360](0xD000000000000011, 0x8000000237C181D0);
    sub_237C082AC();
    v21 = MEMORY[0x2383DC4F0]();
    v22 = *&a7;
    v24 = v23;

    MEMORY[0x2383DC360](v21, v24);

    MEMORY[0x2383DC360](0x20776F7220746120, 0xE800000000000000);
    v29[4] = v22;
    v25 = sub_237C0924C();
    MEMORY[0x2383DC360](v25);

    MEMORY[0x2383DC360](46, 0xE100000000000000);
    sub_2379E8AF0();
    swift_allocError();
    *v26 = 0;
    *(v26 + 8) = 0xE000000000000000;
    *(v26 + 16) = 0u;
    *(v26 + 32) = 0u;
    *(v26 + 48) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_237A1CDF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237C0B660;
  *(inited + 32) = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0E8, &unk_237C152A0);
  v12 = sub_237C082AC();
  v13 = sub_237AC6FE0(inited, v12);

  result = swift_setDeallocating();
  if (v13)
  {
    if (a6 < 0)
    {
LABEL_11:
      __break(1u);
      return result;
    }

    if (a6)
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B050, &qword_237C0C9C0);
      v15 = 0;
      while (!__OFADD__(a8, v15))
      {
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_237C0B660;
        *(v16 + 32) = v15;
        sub_2379D9224(&qword_27DE9B110, &qword_27DE9B0E8, &unk_237C152A0, MEMORY[0x277CBFD28]);
        sub_237C0835C();

        _H0 = v34[0];
        __asm { FCVT            S8, H0 }

        v23 = sub_237A1F7FC(v34, a7, a8 + v15);
        *v24 = _S8;
        result = v23(v34, 0);
        if (a6 == ++v15)
        {
          return result;
        }
      }

      __break(1u);
      goto LABEL_11;
    }
  }

  else
  {
    sub_237C08EDC();
    MEMORY[0x2383DC360](0xD000000000000023, 0x8000000237C181A0);
    v25 = sub_237C0924C();
    MEMORY[0x2383DC360](v25);

    MEMORY[0x2383DC360](0x656620726F66205DLL, 0xEF27206572757461);
    MEMORY[0x2383DC360](a2, a3);
    MEMORY[0x2383DC360](0xD000000000000011, 0x8000000237C181D0);
    sub_237C082AC();
    v26 = MEMORY[0x2383DC4F0]();
    v27 = a7;
    v29 = v28;

    MEMORY[0x2383DC360](v26, v29);

    MEMORY[0x2383DC360](0x20776F7220746120, 0xE800000000000000);
    v34[4] = v27;
    v30 = sub_237C0924C();
    MEMORY[0x2383DC360](v30);

    MEMORY[0x2383DC360](46, 0xE100000000000000);
    sub_2379E8AF0();
    swift_allocError();
    *v31 = 0;
    *(v31 + 8) = 0xE000000000000000;
    *(v31 + 16) = 0u;
    *(v31 + 32) = 0u;
    *(v31 + 48) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_237A1D194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237C0B660;
  *(inited + 32) = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA48, &qword_237C0B7E0);
  v12 = sub_237C082AC();
  v13 = sub_237AC6FE0(inited, v12);

  result = swift_setDeallocating();
  if (v13)
  {
    if (a6 < 0)
    {
LABEL_11:
      __break(1u);
      return result;
    }

    if (a6)
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B218, &qword_237C0CAF0);
      v15 = 0;
      while (!__OFADD__(a8, v15))
      {
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_237C0B660;
        *(v16 + 32) = v15;
        sub_2379D9224(&qword_27DE9ABC0, &qword_27DE9AA48, &qword_237C0B7E0, MEMORY[0x277CBFD28]);
        sub_237C0835C();

        v17 = *v29;
        v18 = sub_237A1F930(v29, a7, a8 + v15);
        *v19 = v17;
        result = v18(v29, 0);
        if (a6 == ++v15)
        {
          return result;
        }
      }

      __break(1u);
      goto LABEL_11;
    }
  }

  else
  {
    sub_237C08EDC();
    MEMORY[0x2383DC360](0xD000000000000023, 0x8000000237C181A0);
    v20 = sub_237C0924C();
    MEMORY[0x2383DC360](v20);

    MEMORY[0x2383DC360](0x656620726F66205DLL, 0xEF27206572757461);
    MEMORY[0x2383DC360](a2, a3);
    MEMORY[0x2383DC360](0xD000000000000011, 0x8000000237C181D0);
    sub_237C082AC();
    v21 = MEMORY[0x2383DC4F0]();
    v22 = a7;
    v24 = v23;

    MEMORY[0x2383DC360](v21, v24);

    MEMORY[0x2383DC360](0x20776F7220746120, 0xE800000000000000);
    v29[4] = v22;
    v25 = sub_237C0924C();
    MEMORY[0x2383DC360](v25);

    MEMORY[0x2383DC360](46, 0xE100000000000000);
    sub_2379E8AF0();
    swift_allocError();
    *v26 = 0;
    *(v26 + 8) = 0xE000000000000000;
    *(v26 + 16) = 0u;
    *(v26 + 32) = 0u;
    *(v26 + 48) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_237A1D538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237C0B660;
  *(inited + 32) = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0F0, &qword_237C0DD30);
  v12 = sub_237C082AC();
  v13 = sub_237AC6FE0(inited, v12);

  result = swift_setDeallocating();
  if (v13)
  {
    if (a6 < 0)
    {
LABEL_11:
      __break(1u);
      return result;
    }

    if (a6)
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B218, &qword_237C0CAF0);
      v15 = 0;
      while (!__OFADD__(a8, v15))
      {
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_237C0B660;
        *(v16 + 32) = v15;
        sub_2379D9224(&qword_27DE9B128, &qword_27DE9B0F0, &qword_237C0DD30, MEMORY[0x277CBFD28]);
        sub_237C0835C();

        v17 = v29[0];
        v18 = sub_237A1F930(v29, a7, a8 + v15);
        *v19 = v17;
        result = v18(v29, 0);
        if (a6 == ++v15)
        {
          return result;
        }
      }

      __break(1u);
      goto LABEL_11;
    }
  }

  else
  {
    sub_237C08EDC();
    MEMORY[0x2383DC360](0xD000000000000023, 0x8000000237C181A0);
    v20 = sub_237C0924C();
    MEMORY[0x2383DC360](v20);

    MEMORY[0x2383DC360](0x656620726F66205DLL, 0xEF27206572757461);
    MEMORY[0x2383DC360](a2, a3);
    MEMORY[0x2383DC360](0xD000000000000011, 0x8000000237C181D0);
    sub_237C082AC();
    v21 = MEMORY[0x2383DC4F0]();
    v22 = a7;
    v24 = v23;

    MEMORY[0x2383DC360](v21, v24);

    MEMORY[0x2383DC360](0x20776F7220746120, 0xE800000000000000);
    v29[4] = v22;
    v25 = sub_237C0924C();
    MEMORY[0x2383DC360](v25);

    MEMORY[0x2383DC360](46, 0xE100000000000000);
    sub_2379E8AF0();
    swift_allocError();
    *v26 = 0;
    *(v26 + 8) = 0xE000000000000000;
    *(v26 + 16) = 0u;
    *(v26 + 32) = 0u;
    *(v26 + 48) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_237A1D8D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237C0B660;
  *(inited + 32) = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0E8, &unk_237C152A0);
  v12 = sub_237C082AC();
  v13 = sub_237AC6FE0(inited, v12);

  result = swift_setDeallocating();
  if (v13)
  {
    if (a6 < 0)
    {
LABEL_11:
      __break(1u);
      return result;
    }

    if (a6)
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B218, &qword_237C0CAF0);
      v15 = 0;
      while (!__OFADD__(a8, v15))
      {
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_237C0B660;
        *(v16 + 32) = v15;
        sub_2379D9224(&qword_27DE9B110, &qword_27DE9B0E8, &unk_237C152A0, MEMORY[0x277CBFD28]);
        sub_237C0835C();

        _H0 = v34[0];
        __asm { FCVT            D8, H0 }

        v23 = sub_237A1F930(v34, a7, a8 + v15);
        *v24 = _D8;
        result = v23(v34, 0);
        if (a6 == ++v15)
        {
          return result;
        }
      }

      __break(1u);
      goto LABEL_11;
    }
  }

  else
  {
    sub_237C08EDC();
    MEMORY[0x2383DC360](0xD000000000000023, 0x8000000237C181A0);
    v25 = sub_237C0924C();
    MEMORY[0x2383DC360](v25);

    MEMORY[0x2383DC360](0x656620726F66205DLL, 0xEF27206572757461);
    MEMORY[0x2383DC360](a2, a3);
    MEMORY[0x2383DC360](0xD000000000000011, 0x8000000237C181D0);
    sub_237C082AC();
    v26 = MEMORY[0x2383DC4F0]();
    v27 = a7;
    v29 = v28;

    MEMORY[0x2383DC360](v26, v29);

    MEMORY[0x2383DC360](0x20776F7220746120, 0xE800000000000000);
    v34[4] = v27;
    v30 = sub_237C0924C();
    MEMORY[0x2383DC360](v30);

    MEMORY[0x2383DC360](46, 0xE100000000000000);
    sub_2379E8AF0();
    swift_allocError();
    *v31 = 0;
    *(v31 + 8) = 0xE000000000000000;
    *(v31 + 16) = 0u;
    *(v31 + 32) = 0u;
    *(v31 + 48) = 0;
    return swift_willThrow();
  }

  return result;
}

char *sub_237A1DC9C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_9(a3, result);
  }

  return result;
}

char *sub_237A1DCBC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_9(a3, result);
  }

  return result;
}

char *sub_237A1DCDC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_9(a3, result);
  }

  return result;
}

char *sub_237A1DD00(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[4 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_9(a3, result);
  }

  return result;
}

char *sub_237A1DD50(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_9(a3, result);
  }

  return result;
}

char *sub_237A1DDA4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_9(a3, result);
  }

  return result;
}

char *sub_237A1DE2C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_9(a3, result);
  }

  return result;
}

char *sub_237A1DE4C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[64 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_9(a3, result);
  }

  return result;
}

void sub_237A1DED0()
{
  OUTLINED_FUNCTION_82_0();
  if (v3 && (v4 = OUTLINED_FUNCTION_55(), __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5), OUTLINED_FUNCTION_4(), v1 + *(v6 + 72) * v0 > v2))
  {
    if (v2 != v1)
    {
      OUTLINED_FUNCTION_28_1();

      swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    v7 = OUTLINED_FUNCTION_55();
    __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
    OUTLINED_FUNCTION_28_1();

    swift_arrayInitWithTakeFrontToBack();
  }
}

char *sub_237A1DF90(char *__src, size_t __len, char *__dst)
{
  if (__dst != __src || &__src[__len] <= __dst)
  {
    return memmove(__dst, __src, __len);
  }

  return __src;
}

void sub_237A1DFE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_82_0();
  if (v8 && (a4(0), OUTLINED_FUNCTION_4(), v5 + *(v9 + 72) * v4 > v6))
  {
    if (v6 != v5)
    {
      OUTLINED_FUNCTION_28_1();

      swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    a4(0);
    OUTLINED_FUNCTION_28_1();

    swift_arrayInitWithTakeFrontToBack();
  }
}

uint64_t sub_237A1E09C(uint64_t result, char a2)
{
  if ((a2 & 0xFE) == 4)
  {
  }

  return v2;
}

uint64_t sub_237A1E0B0(uint64_t a1, char a2)
{
  if ((a2 & 0xFE) == 4)
  {
  }

  return result;
}

void sub_237A1E0D8()
{
  OUTLINED_FUNCTION_31_3();
  if (v4)
  {
    OUTLINED_FUNCTION_6_8();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_30_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_7();
    }
  }

  OUTLINED_FUNCTION_16_4();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
    v8 = OUTLINED_FUNCTION_57_1(v7);
    OUTLINED_FUNCTION_32_2(v8);
    OUTLINED_FUNCTION_27_3(v9);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v10 = OUTLINED_FUNCTION_81_0();
  if (v1)
  {
    if (v3 != v0 || &v11[16 * v2] <= v10)
    {
      memmove(v10, v11, 16 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_237A1E1A4()
{
  OUTLINED_FUNCTION_31_3();
  if (v6)
  {
    OUTLINED_FUNCTION_6_8();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_30_4();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_7();
    }
  }

  OUTLINED_FUNCTION_16_4();
  if (v3)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B208, &qword_237C0CAE8);
    v10 = OUTLINED_FUNCTION_57_1(v9);
    OUTLINED_FUNCTION_32_2(v10);
    OUTLINED_FUNCTION_27_3(v11);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_59_0();
  if (v1)
  {
    if (v3 != v0 || v5 + 16 * v2 <= v4)
    {
      v13 = OUTLINED_FUNCTION_34_1();
      memmove(v13, v14, v15);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B210, &unk_237C11B00);
    OUTLINED_FUNCTION_25_5();
    swift_arrayInitWithCopy();
  }
}

void sub_237A1E28C()
{
  OUTLINED_FUNCTION_31_3();
  if (v4)
  {
    OUTLINED_FUNCTION_6_8();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_30_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_7();
    }
  }

  OUTLINED_FUNCTION_24_5();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B2A8, &qword_237C0CB58);
    v7 = swift_allocObject();
    OUTLINED_FUNCTION_44_2(v7);
    OUTLINED_FUNCTION_52_2(v8 / 24);
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_58_1();
  if (v1)
  {
    if (v2 != v0 || &v10[24 * v3] <= v9)
    {
      memmove(v9, v10, 24 * v3);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_237A1E370()
{
  OUTLINED_FUNCTION_31_3();
  if (v4)
  {
    OUTLINED_FUNCTION_6_8();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_30_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_7();
    }
  }

  OUTLINED_FUNCTION_24_5();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B340, &qword_237C0CBE8);
    v7 = swift_allocObject();
    OUTLINED_FUNCTION_44_2(v7);
    OUTLINED_FUNCTION_52_2(v8 / 48);
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v2 != v0 || v0 + 32 + 48 * v3 <= (v2 + 32))
    {
      v10 = OUTLINED_FUNCTION_34_1();
      memmove(v10, v11, v12);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B348, &qword_237C0CBF0);
    OUTLINED_FUNCTION_25_5();
    swift_arrayInitWithCopy();
  }
}

void sub_237A1E46C()
{
  OUTLINED_FUNCTION_31_3();
  if (v4)
  {
    OUTLINED_FUNCTION_6_8();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_30_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_7();
    }
  }

  OUTLINED_FUNCTION_24_5();
  if (v2)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B338, &qword_237C0CBE0);
    v8 = OUTLINED_FUNCTION_57_1(v7);
    OUTLINED_FUNCTION_44_2(v8);
    OUTLINED_FUNCTION_52_2(v9 / 4);
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  v10 = OUTLINED_FUNCTION_58_1();
  if (v1)
  {
    if (v2 != v0 || &v11[4 * v3] <= v10)
    {
      memmove(v10, v11, 4 * v3);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    memcpy(v10, v11, 4 * v3);
  }
}

void sub_237A1E598()
{
  OUTLINED_FUNCTION_31_3();
  if (v4)
  {
    OUTLINED_FUNCTION_6_8();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_30_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_7();
    }
  }

  OUTLINED_FUNCTION_24_5();
  if (v2)
  {
    v13 = OUTLINED_FUNCTION_67_0(v7, v8, v9, v10, v11, v12);
    v14 = OUTLINED_FUNCTION_57_1(v13);
    _swift_stdlib_malloc_size(v14);
    OUTLINED_FUNCTION_29_1();
    v14[2] = v3;
    v14[3] = v15;
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  v16 = OUTLINED_FUNCTION_58_1();
  if (v1)
  {
    if (v14 != v0 || &v17[8 * v3] <= v16)
    {
      memmove(v16, v17, 8 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v16, v17, 8 * v3);
  }
}

void sub_237A1E650()
{
  OUTLINED_FUNCTION_31_3();
  if (v4)
  {
    OUTLINED_FUNCTION_6_8();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_30_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_7();
    }
  }

  OUTLINED_FUNCTION_24_5();
  if (v2)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA50, &qword_237C0B7E8);
    v8 = OUTLINED_FUNCTION_57_1(v7);
    _swift_stdlib_malloc_size(v8);
    OUTLINED_FUNCTION_29_1();
    v8[2] = v3;
    v8[3] = v9;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v10 = OUTLINED_FUNCTION_58_1();
  if (v1)
  {
    if (v8 != v0 || &v11[8 * v3] <= v10)
    {
      memmove(v10, v11, 8 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v10, v11, 8 * v3);
  }
}

void sub_237A1E718()
{
  OUTLINED_FUNCTION_31_3();
  if (v6)
  {
    OUTLINED_FUNCTION_6_8();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_30_4();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_7();
    }
  }

  OUTLINED_FUNCTION_16_4();
  if (v3)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B2B8, &qword_237C0CB68);
    v10 = OUTLINED_FUNCTION_57_1(v9);
    OUTLINED_FUNCTION_32_2(v10);
    OUTLINED_FUNCTION_27_3(v11);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_59_0();
  if (v1)
  {
    if (v3 != v0 || v5 + 32 * v2 <= v4)
    {
      v13 = OUTLINED_FUNCTION_34_1();
      memmove(v13, v14, v15);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B2C0, &qword_237C0CB70);
    OUTLINED_FUNCTION_25_5();
    swift_arrayInitWithCopy();
  }
}

void sub_237A1E890()
{
  OUTLINED_FUNCTION_19_6();
  if (v6)
  {
    OUTLINED_FUNCTION_6_8();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_30_4();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_7();
    }
  }

  OUTLINED_FUNCTION_43_2();
  if (v3)
  {
    v15 = OUTLINED_FUNCTION_67_0(v9, v10, v11, v12, v13, v14);
    v16 = OUTLINED_FUNCTION_57_1(v15);
    _swift_stdlib_malloc_size(v16);
    OUTLINED_FUNCTION_29_1();
    v16[2] = v2;
    v16[3] = v17;
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_79_0();
  if (v1)
  {
    if (v16 != v0 || v5 + 8 * v2 <= v4)
    {
      v19 = OUTLINED_FUNCTION_48_3();
      memmove(v19, v20, v21);
    }

    v0[2] = 0;
  }

  else
  {
    v22 = OUTLINED_FUNCTION_37_2();
    __swift_instantiateConcreteTypeFromMangledNameV2(v22, v23);
    OUTLINED_FUNCTION_40_4();
  }
}

void sub_237A1E988()
{
  OUTLINED_FUNCTION_31_3();
  if (v4)
  {
    OUTLINED_FUNCTION_6_8();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_30_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_7();
    }
  }

  OUTLINED_FUNCTION_24_5();
  if (v2)
  {
    v13 = OUTLINED_FUNCTION_67_0(v7, v8, v9, v10, v11, v12);
    v14 = OUTLINED_FUNCTION_57_1(v13);
    _swift_stdlib_malloc_size(v14);
    OUTLINED_FUNCTION_29_3();
    v14[2] = v3;
    v14[3] = v15;
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  v16 = OUTLINED_FUNCTION_58_1();
  v18 = 16 * v3;
  if (v1)
  {
    if (v14 != v0 || &v17[v18] <= v16)
    {
      memmove(v16, v17, v18);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v16, v17, v18);
  }
}

void sub_237A1EA3C()
{
  OUTLINED_FUNCTION_31_3();
  if (v6)
  {
    OUTLINED_FUNCTION_6_8();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_30_4();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_7();
    }
  }

  OUTLINED_FUNCTION_16_4();
  if (v3)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B3A0, &qword_237C0CC40);
    v4 = 40;
    v10 = OUTLINED_FUNCTION_75_0(v9);
    OUTLINED_FUNCTION_32_2(v10);
    OUTLINED_FUNCTION_63_0(v11);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_59_0();
  if (v1)
  {
    if (v3 != v0 || v5 + 40 * v2 <= v4)
    {
      v13 = OUTLINED_FUNCTION_34_1();
      memmove(v13, v14, v15);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B3A8, &unk_237C0EF10);
    OUTLINED_FUNCTION_25_5();
    swift_arrayInitWithCopy();
  }
}

void sub_237A1EB4C()
{
  OUTLINED_FUNCTION_31_3();
  if (v6)
  {
    OUTLINED_FUNCTION_6_8();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_30_4();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_7();
    }
  }

  OUTLINED_FUNCTION_16_4();
  if (v3)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B2F0, &qword_237C0CBA0);
    v4 = 24;
    v10 = OUTLINED_FUNCTION_75_0(v9);
    OUTLINED_FUNCTION_32_2(v10);
    OUTLINED_FUNCTION_63_0(v11);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_59_0();
  if (v1)
  {
    if (v3 != v0 || v5 + 24 * v2 <= v4)
    {
      v13 = OUTLINED_FUNCTION_34_1();
      memmove(v13, v14, v15);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B2F8, &qword_237C0CBA8);
    OUTLINED_FUNCTION_25_5();
    swift_arrayInitWithCopy();
  }
}

void sub_237A1EC98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), uint64_t (*a8)(void))
{
  v12 = a1;
  if (a3)
  {
    OUTLINED_FUNCTION_6_8();
    if (v14 != v15)
    {
      OUTLINED_FUNCTION_30_4();
      if (v14)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_7();
    }
  }

  else
  {
    v13 = a2;
  }

  v16 = *(a4 + 16);
  if (v13 <= v16)
  {
    v17 = *(a4 + 16);
  }

  else
  {
    v17 = v13;
  }

  if (!v17)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_67_0(a1, a2, a3, a4, a5, a6);
  v18 = *(*(a7(0) - 8) + 72);
  v19 = OUTLINED_FUNCTION_66_0();
  v20 = _swift_stdlib_malloc_size(v19);
  if (!v18)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v20 - v8 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_23;
  }

  v19[2] = v16;
  v19[3] = 2 * ((v20 - v8) / v18);
LABEL_18:
  v22 = *(a7(0) - 8);
  if (v12)
  {
    v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    sub_237A1DFE8(a4 + v23, v16, v19 + v23, a8);
    *(a4 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_84_0();
  }
}

void sub_237A1EE1C()
{
  OUTLINED_FUNCTION_31_3();
  if (v4)
  {
    OUTLINED_FUNCTION_6_8();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_30_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_7();
    }
  }

  OUTLINED_FUNCTION_24_5();
  if (v2)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABE8, &qword_237C0B950);
    v8 = OUTLINED_FUNCTION_57_1(v7);
    OUTLINED_FUNCTION_44_2(v8);
    OUTLINED_FUNCTION_52_2(v9 / 4);
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  v10 = OUTLINED_FUNCTION_58_1();
  if (v1)
  {
    if (v2 != v0 || &v11[4 * v3] <= v10)
    {
      memmove(v10, v11, 4 * v3);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    memcpy(v10, v11, 4 * v3);
  }
}

void sub_237A1EF20()
{
  OUTLINED_FUNCTION_31_3();
  if (v4)
  {
    OUTLINED_FUNCTION_6_8();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_30_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_7();
    }
  }

  OUTLINED_FUNCTION_16_4();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B1F8, &qword_237C0CAD8);
    v8 = OUTLINED_FUNCTION_57_1(v7);
    OUTLINED_FUNCTION_32_2(v8);
    OUTLINED_FUNCTION_27_3(v9);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v10 = OUTLINED_FUNCTION_81_0();
  if (v1)
  {
    if (v3 != v0 || &v11[32 * v2] <= v10)
    {
      memmove(v10, v11, 32 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_237A1EFEC()
{
  OUTLINED_FUNCTION_31_3();
  if (v4)
  {
    OUTLINED_FUNCTION_6_8();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_30_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_7();
    }
  }

  OUTLINED_FUNCTION_16_4();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B250, &qword_237C0CB10);
    v8 = OUTLINED_FUNCTION_75_0(v7);
    OUTLINED_FUNCTION_32_2(v8);
    OUTLINED_FUNCTION_63_0(v9);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v10 = OUTLINED_FUNCTION_81_0();
  if (v1)
  {
    if (v3 != v0 || &v11[24 * v2] <= v10)
    {
      memmove(v10, v11, 24 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_237A1F124()
{
  OUTLINED_FUNCTION_19_6();
  if (v6)
  {
    OUTLINED_FUNCTION_6_8();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_30_4();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_7();
    }
  }

  OUTLINED_FUNCTION_43_2();
  if (v3)
  {
    v15 = OUTLINED_FUNCTION_67_0(v9, v10, v11, v12, v13, v14);
    v16 = OUTLINED_FUNCTION_57_1(v15);
    _swift_stdlib_malloc_size(v16);
    OUTLINED_FUNCTION_29_3();
    v16[2] = v2;
    v16[3] = v17;
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_79_0();
  if (v1)
  {
    if (v16 != v0 || v5 + 16 * v2 <= v4)
    {
      v19 = OUTLINED_FUNCTION_48_3();
      memmove(v19, v20, v21);
    }

    v0[2] = 0;
  }

  else
  {
    v22 = OUTLINED_FUNCTION_37_2();
    __swift_instantiateConcreteTypeFromMangledNameV2(v22, v23);
    OUTLINED_FUNCTION_40_4();
  }
}

void sub_237A1F1F4()
{
  OUTLINED_FUNCTION_31_3();
  if (v6)
  {
    OUTLINED_FUNCTION_6_8();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_30_4();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_7();
    }
  }

  OUTLINED_FUNCTION_16_4();
  if (v3)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B2A0, &qword_237C0CB50);
    v10 = OUTLINED_FUNCTION_57_1(v9);
    _swift_stdlib_malloc_size(v10);
    OUTLINED_FUNCTION_29_1();
    v10[2] = v2;
    v10[3] = v11;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_59_0();
  if (v1)
  {
    if (v10 != v0 || v5 + 8 * v2 <= v4)
    {
      v13 = OUTLINED_FUNCTION_34_1();
      memmove(v13, v14, v15);
    }

    v0[2] = 0;
  }

  else
  {
    type metadata accessor for NLLanguage(0);
    OUTLINED_FUNCTION_25_5();
    swift_arrayInitWithCopy();
  }
}

void sub_237A1F2F8()
{
  OUTLINED_FUNCTION_19_6();
  if (v5)
  {
    OUTLINED_FUNCTION_6_8();
    if (v10 != v11)
    {
      OUTLINED_FUNCTION_30_4();
      if (v10)
      {
LABEL_23:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_7();
    }
  }

  else
  {
    v9 = v4;
  }

  v12 = *(v0 + 16);
  if (v9 <= v12)
  {
    v13 = *(v0 + 16);
  }

  else
  {
    v13 = v9;
  }

  if (!v13)
  {
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_67_0(v3, v4, v5, v6, v7, v8);
  v14 = OUTLINED_FUNCTION_37_2();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(v14, v15) - 8) + 72);
  v17 = OUTLINED_FUNCTION_66_0();
  v18 = _swift_stdlib_malloc_size(v17);
  if (!v16)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v18 - v2 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_22;
  }

  v17[2] = v12;
  v17[3] = 2 * ((v18 - v2) / v16);
LABEL_17:
  v20 = OUTLINED_FUNCTION_37_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(v20, v21);
  if (v1)
  {
    sub_237A1DED0();
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_84_0();
  }
}

void sub_237A1F4D8()
{
  OUTLINED_FUNCTION_31_3();
  if (v4)
  {
    OUTLINED_FUNCTION_6_8();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_30_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_7();
    }
  }

  OUTLINED_FUNCTION_16_4();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B280, &qword_237C0CB38);
    v7 = swift_allocObject();
    v8 = _swift_stdlib_malloc_size(v7);
    v7[2] = v2;
    v7[3] = 2 * v8 - 64;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_81_0();
  if (v1)
  {
    if (v7 != v0 || &v10[v2] <= v9)
    {
      memmove(v9, v10, v2);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v9, v10, v2);
  }
}

void sub_237A1F614()
{
  OUTLINED_FUNCTION_19_6();
  if (v6)
  {
    OUTLINED_FUNCTION_6_8();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_30_4();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_7();
    }
  }

  OUTLINED_FUNCTION_43_2();
  if (v3)
  {
    v15 = OUTLINED_FUNCTION_67_0(v9, v10, v11, v12, v13, v14);
    v16 = OUTLINED_FUNCTION_57_1(v15);
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v2;
    v16[3] = 2 * ((v17 - 32) / 32);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_79_0();
  if (v1)
  {
    if (v16 != v0 || v5 + 32 * v2 <= v4)
    {
      v19 = OUTLINED_FUNCTION_48_3();
      memmove(v19, v20, v21);
    }

    v0[2] = 0;
  }

  else
  {
    v22 = OUTLINED_FUNCTION_37_2();
    __swift_instantiateConcreteTypeFromMangledNameV2(v22, v23);
    OUTLINED_FUNCTION_40_4();
  }
}

void sub_237A1F6F0()
{
  OUTLINED_FUNCTION_31_3();
  if (v6)
  {
    OUTLINED_FUNCTION_6_8();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_30_4();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_7();
    }
  }

  OUTLINED_FUNCTION_16_4();
  if (v3)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B200, &qword_237C0CAE0);
    v10 = OUTLINED_FUNCTION_57_1(v9);
    OUTLINED_FUNCTION_32_2(v10);
    OUTLINED_FUNCTION_27_3(v11);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_59_0();
  if (v1)
  {
    if (v3 != v0 || v5 + 32 * v2 <= v4)
    {
      v13 = OUTLINED_FUNCTION_34_1();
      memmove(v13, v14, v15);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A998, &unk_237C0C100);
    OUTLINED_FUNCTION_25_5();
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_237A1F7FC(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B040, &unk_237C0DFD0);
  if (sub_237C06A6C())
  {
    result = sub_237C06A9C();
    v8 = a3 * result;
    if ((a3 * result) >> 64 == (a3 * result) >> 63)
    {
      v9 = v8 + a2;
      if (!__OFADD__(v8, a2))
      {
        *(v6 + 10) = sub_237C06A7C();
        sub_237A1FB2C(v6 + 4, v9);
        *(v6 + 11) = v10;
        return sub_237A20D1C;
      }

      goto LABEL_11;
    }

    __break(1u);
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  result = sub_237C06A5C();
  v12 = a2 * result;
  if ((a2 * result) >> 64 != (a2 * result) >> 63)
  {
    goto LABEL_10;
  }

  v13 = __OFADD__(v12, a3);
  v14 = v12 + a3;
  if (!v13)
  {
    *(v6 + 8) = sub_237C06A7C();
    sub_237A1FB2C(v6 + 4, v14);
    *(v6 + 9) = v15;
    return sub_237A20D18;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_237A1F930(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B220, &qword_237C0CAF8);
  if (sub_237C06A6C())
  {
    result = sub_237C06A9C();
    v8 = a3 * result;
    if ((a3 * result) >> 64 == (a3 * result) >> 63)
    {
      v9 = v8 + a2;
      if (!__OFADD__(v8, a2))
      {
        *(v6 + 10) = sub_237C06A7C();
        sub_237A1FBB4(v6 + 4, v9);
        *(v6 + 11) = v10;
        return sub_237A1FAC8;
      }

      goto LABEL_11;
    }

    __break(1u);
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  result = sub_237C06A5C();
  v12 = a2 * result;
  if ((a2 * result) >> 64 != (a2 * result) >> 63)
  {
    goto LABEL_10;
  }

  v13 = __OFADD__(v12, a3);
  v14 = v12 + a3;
  if (!v13)
  {
    *(v6 + 8) = sub_237C06A7C();
    sub_237A1FBB4(v6 + 4, v14);
    *(v6 + 9) = v15;
    return sub_237A1FA64;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_237A1FA68(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void sub_237A1FACC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  (*(*a1 + 88))();
  v2(v1, 0);

  free(v1);
}

void sub_237A1FB2C(uint64_t **a1, unint64_t a2)
{
  *a1 = v2;
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_237A1FCDC();
    v5 = v6;
  }

  a1[1] = v5;
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v5[2] <= a2)
  {
LABEL_7:
    __break(1u);
  }
}

void sub_237A1FBB4(uint64_t **a1, unint64_t a2)
{
  *a1 = v2;
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_237A1FD08();
    v5 = v6;
  }

  a1[1] = v5;
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v5[2] <= a2)
  {
LABEL_7:
    __break(1u);
  }
}

uint64_t sub_237A1FCF0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

double sub_237A1FD64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v41 = *(AssociatedTypeWitness - 8);
  v42 = AssociatedTypeWitness;
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v40 = &v38 - v6;
  v7 = swift_getAssociatedTypeWitness();
  v38 = *(v7 - 8);
  v39 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v38 - v8;
  v10 = *(a2 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v38 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v38 - v18;
  v20 = sub_237C084EC();
  v21 = sub_237C0850C();
  if (v20 == 11)
  {
    if (v21 == 52)
    {
      (*(v10 + 16))(v19, a1, a2);
      if ((swift_dynamicCast() & 1) == 0)
      {
        sub_237C085FC();
        sub_237C084FC();
        v25 = v39;
        swift_getAssociatedConformanceWitness();
        sub_237C08DBC();
        (*(v38 + 8))(v9, v25);
        v26 = v40;
        sub_237C0851C();
        (*(v10 + 8))(a1, a2);
        v27 = v42;
        swift_getAssociatedConformanceWitness();
        sub_237C08DBC();
        (*(v41 + 8))(v26, v27);
        sub_237C08A7C();
        return result;
      }

      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (v20 == 8)
  {
    if (v21 == 23)
    {
      (*(v10 + 16))(v16, a1, a2);
      if (swift_dynamicCast())
      {
        (*(v10 + 8))(a1, a2);
        return *&v43;
      }

      else
      {
        sub_237C085FC();
        sub_237C084FC();
        v29 = v39;
        swift_getAssociatedConformanceWitness();
        sub_237C08DBC();
        (*(v38 + 8))(v9, v29);
        v30 = v40;
        sub_237C0851C();
        (*(v10 + 8))(a1, a2);
        v31 = v42;
        swift_getAssociatedConformanceWitness();
        sub_237C08DBC();
        (*(v41 + 8))(v30, v31);
        sub_237C08ABC();
      }

      return v24;
    }

LABEL_16:
    sub_237A20BBC();
    sub_237C0852C();
LABEL_17:
    (*(v10 + 8))(a1, a2);
    return v43;
  }

  if (v20 != 5 || v21 != 10)
  {
    goto LABEL_16;
  }

  (*(v10 + 16))(v13, a1, a2);
  if (swift_dynamicCast())
  {
    (*(v10 + 8))(a1, a2);
    _H0 = LOWORD(v43);
  }

  else
  {
    sub_237C085FC();
    sub_237C084FC();
    v32 = v39;
    swift_getAssociatedConformanceWitness();
    sub_237C08DBC();
    (*(v38 + 8))(v9, v32);
    v33 = v40;
    sub_237C0851C();
    (*(v10 + 8))(a1, a2);
    v34 = v42;
    swift_getAssociatedConformanceWitness();
    sub_237C08DBC();
    (*(v41 + 8))(v33, v34);
    sub_237C094AC();
  }

  __asm { FCVT            D0, H0 }

  return result;
}

float sub_237A2043C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v41 = *(AssociatedTypeWitness - 8);
  v42 = AssociatedTypeWitness;
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v40 = &v38 - v6;
  v7 = swift_getAssociatedTypeWitness();
  v38 = *(v7 - 8);
  v39 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v38 - v8;
  v10 = *(a2 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v38 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v38 - v18;
  v20 = sub_237C084EC();
  v21 = sub_237C0850C();
  if (v20 == 11)
  {
    if (v21 == 52)
    {
      (*(v10 + 16))(v19, a1, a2);
      if (swift_dynamicCast())
      {
        (*(v10 + 8))(a1, a2);
        return v43;
      }

      else
      {
        sub_237C085FC();
        sub_237C084FC();
        v29 = v39;
        swift_getAssociatedConformanceWitness();
        sub_237C08DBC();
        (*(v38 + 8))(v9, v29);
        v30 = v40;
        sub_237C0851C();
        (*(v10 + 8))(a1, a2);
        v31 = v42;
        swift_getAssociatedConformanceWitness();
        sub_237C08DBC();
        (*(v41 + 8))(v30, v31);
        sub_237C08A7C();
      }

      return v28;
    }

LABEL_16:
    sub_237A0C928();
    sub_237C0852C();
LABEL_17:
    (*(v10 + 8))(a1, a2);
    return *&v43;
  }

  if (v20 == 8)
  {
    if (v21 == 23)
    {
      (*(v10 + 16))(v16, a1, a2);
      if ((swift_dynamicCast() & 1) == 0)
      {
        sub_237C085FC();
        sub_237C084FC();
        v24 = v39;
        swift_getAssociatedConformanceWitness();
        sub_237C08DBC();
        (*(v38 + 8))(v9, v24);
        v25 = v40;
        sub_237C0851C();
        (*(v10 + 8))(a1, a2);
        v26 = v42;
        swift_getAssociatedConformanceWitness();
        sub_237C08DBC();
        (*(v41 + 8))(v25, v26);
        sub_237C08ABC();
        return result;
      }

      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (v20 != 5 || v21 != 10)
  {
    goto LABEL_16;
  }

  (*(v10 + 16))(v13, a1, a2);
  if (swift_dynamicCast())
  {
    (*(v10 + 8))(a1, a2);
    _H0 = LOWORD(v43);
  }

  else
  {
    sub_237C085FC();
    sub_237C084FC();
    v32 = v39;
    swift_getAssociatedConformanceWitness();
    sub_237C08DBC();
    (*(v38 + 8))(v9, v32);
    v33 = v40;
    sub_237C0851C();
    (*(v10 + 8))(a1, a2);
    v34 = v42;
    swift_getAssociatedConformanceWitness();
    sub_237C08DBC();
    (*(v41 + 8))(v33, v34);
    sub_237C094AC();
  }

  __asm { FCVT            S0, H0 }

  return result;
}

unint64_t sub_237A20B14()
{
  result = qword_27DE9B1B8;
  if (!qword_27DE9B1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9B1B8);
  }

  return result;
}

unint64_t sub_237A20B68()
{
  result = qword_27DE9B1E0;
  if (!qword_27DE9B1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9B1E0);
  }

  return result;
}

unint64_t sub_237A20BBC()
{
  result = qword_27DE9B1E8;
  if (!qword_27DE9B1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9B1E8);
  }

  return result;
}

unint64_t sub_237A20C10()
{
  result = qword_27DE9B1F0;
  if (!qword_27DE9B1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9B1F0);
  }

  return result;
}

uint64_t sub_237A20C64()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  return MEMORY[0x2821FE8E8](v0);
}

unint64_t sub_237A20CA4()
{
  result = qword_27DE9B228;
  if (!qword_27DE9B228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9B228);
  }

  return result;
}

void *OUTLINED_FUNCTION_9_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_237C05F9C();
}

void *OUTLINED_FUNCTION_15_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_237C05F9C();
}

uint64_t OUTLINED_FUNCTION_17_5()
{
  sub_237A1FCF0((v1 - 200), v1 - 128);
  __swift_project_boxed_opaque_existential_1((v1 - 128), *(v1 - 104));
  return v0;
}

uint64_t OUTLINED_FUNCTION_26_4()
{
}

uint64_t OUTLINED_FUNCTION_40_4()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_42_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

void *OUTLINED_FUNCTION_50_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{

  return sub_237C05F9C();
}

uint64_t OUTLINED_FUNCTION_51_2(uint64_t a1)
{

  return swift_dynamicCastMetatype();
}

uint64_t OUTLINED_FUNCTION_54_1(uint64_t a1)
{

  return sub_237C05F1C();
}

uint64_t OUTLINED_FUNCTION_57_1(uint64_t a1)
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_61_1()
{

  JUMPOUT(0x2383DC360);
}

uint64_t OUTLINED_FUNCTION_66_0()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_67_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
}

uint64_t OUTLINED_FUNCTION_75_0(uint64_t a1)
{

  return swift_allocObject();
}

_OWORD *OUTLINED_FUNCTION_76_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 a19, uint64_t a20, uint64_t a21, __int128 a22)
{

  return sub_2379DAD24(&a19, &a22);
}

uint64_t OUTLINED_FUNCTION_84_0()
{

  return swift_arrayInitWithCopy();
}

void MLDataTable.write(to:)(uint64_t a1)
{
  sub_237C05ADC();
  OUTLINED_FUNCTION_1_7();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v31[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v31[-v12];
  v14 = *v2;
  v15 = *(v2 + 8);
  (*(v6 + 16))(&v31[-v12], a1, v1, v11);
  if ((sub_237C0594C() & 1) == 0)
  {
    v32 = v15;
    v35 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B3B0, &unk_237C0E1D0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_237C0B660;
    v33 = 0;
    v34 = 0xE000000000000000;
    sub_237C08EDC();
    MEMORY[0x2383DC360](0x27204C5255, 0xE500000000000000);
    sub_237A21670();
    v17 = sub_237C0924C();
    MEMORY[0x2383DC360](v17);

    MEMORY[0x2383DC360](0xD000000000000030, 0x8000000237C18250);
    if (qword_27DE9A6A8 != -1)
    {
      swift_once();
    }

    MEMORY[0x2383DC360](qword_27DEACE98, unk_27DEACEA0);
    MEMORY[0x2383DC360](10030, 0xE200000000000000);
    v18 = v33;
    v19 = v34;
    *(v16 + 56) = MEMORY[0x277D837D0];
    *(v16 + 32) = v18;
    *(v16 + 40) = v19;
    sub_237C0939C();

    sub_237C059BC();
    (*(v6 + 8))(v13, v1);
    (*(v6 + 32))(v13, v9, v1);
    v14 = v35;
    LOBYTE(v15) = v32;
  }

  sub_237C059FC();
  sub_237A5BED8(v13, 1);
  if (v3)
  {
    v20 = OUTLINED_FUNCTION_0_10();
    v21(v20);
  }

  else if (v15)
  {
    swift_willThrow();
    v22 = v14;
    v23 = OUTLINED_FUNCTION_0_10();
    v24(v23);
  }

  else
  {
    v25 = v14[2];

    v26 = sub_237C05A9C();
    v28 = v27;

    sub_237A219CC(v26, v28, 1, v25);
    v29 = OUTLINED_FUNCTION_0_10();
    v30(v29);

    sub_2379DBC9C(v14, 0);
  }
}

unint64_t sub_237A21670()
{
  result = qword_27DE9B3B8;
  if (!qword_27DE9B3B8)
  {
    sub_237C05ADC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9B3B8);
  }

  return result;
}

void MLDataTable.writeCSV(to:)(uint64_t a1)
{
  v4 = *v1;
  v5 = *(v1 + 8);
  if (sub_237C0594C())
  {
    sub_237A5BED8(a1, 0);
    if (!v2)
    {
      if (v5)
      {
        swift_willThrow();
        v6 = v4;
      }

      else
      {
        v8 = v4[2];
        sub_2379DBCF4(v4, 0);

        v9 = sub_237C05A9C();
        v11 = v10;

        sub_237A219CC(v9, v11, 0, v8);

        sub_2379DBC9C(v4, 0);
      }
    }
  }

  else
  {
    sub_2379E8AF0();
    swift_allocError();
    *v7 = 0xD00000000000002CLL;
    *(v7 + 8) = 0x8000000237C18290;
    *(v7 + 16) = 0u;
    *(v7 + 32) = 0u;
    *(v7 + 48) = 0;
    swift_willThrow();
  }
}

uint64_t sub_237A2185C(uint64_t a1, uint64_t a2, void (*a3)(char *))
{
  v19 = a3;
  sub_237C05ADC();
  OUTLINED_FUNCTION_1_7();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v4;
  v13 = *(v4 + 8);
  sub_2379F33C4();

  v14 = sub_2379E3E14(a1, a2);
  v15 = [v14 stringByExpandingTildeInPath];

  sub_237C086EC();
  sub_237C059BC();

  v17 = v12;
  v18 = v13;
  v19(v11);
  return (*(v8 + 8))(v11, v3);
}

uint64_t sub_237A219CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v6[0] = a1;
    v6[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = v6;
    goto LABEL_6;
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
LABEL_8:
    sub_237C08ECC();
  }

  v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
LABEL_6:
  sub_237A3074C(v4, a3, a4);
}

void sub_237A21AB4(unint64_t a1, unint64_t a2)
{
  v5 = a1;
  v6 = sub_237A254D8(a1);
  v7 = sub_237A254D8(a2);
  if (v7 >= v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  v43 = MEMORY[0x277D84F90];
  sub_237AC8D74(0, v8 & ~(v8 >> 63), 0);
  if (v8 < 0)
  {
LABEL_57:
    __break(1u);
LABEL_58:

    __break(1u);
    return;
  }

  v34 = v2;
  v35 = v8;
  v42 = v5 >> 62;
  v40 = a2 >> 62;
  if (v8)
  {
    v41 = v5 & 0xC000000000000001;
    v36 = v5;
    v37 = v5 & 0xFFFFFFFFFFFFFF8;
    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v39 = a2 & 0xC000000000000001;
    v10 = 4;
    while (1)
    {
      v11 = v42 ? sub_237C090EC() : *(v37 + 16);
      v12 = v10 - 4;
      if (v10 - 4 == v11)
      {
        break;
      }

      if (v41)
      {
        v13 = MEMORY[0x2383DCAF0](v10 - 4, v5);
      }

      else
      {
        if (v12 >= *(v37 + 16))
        {
          goto LABEL_56;
        }

        v13 = *(v5 + 8 * v10);
      }

      v3 = v13;
      if (v40)
      {
        v14 = sub_237C090EC();
      }

      else
      {
        v14 = *(v9 + 16);
      }

      if (v12 == v14)
      {
        goto LABEL_58;
      }

      if (v39)
      {
        v15 = a2;
        v16 = MEMORY[0x2383DCAF0](v10 - 4, a2);
      }

      else
      {
        if (v12 >= *(v9 + 16))
        {
          goto LABEL_52;
        }

        v15 = a2;
        v16 = *(a2 + 8 * v10);
      }

      v17 = v16;
      v18 = [v3 integerValue];

      v20 = *(v43 + 16);
      v19 = *(v43 + 24);
      v3 = (v20 + 1);
      if (v20 >= v19 >> 1)
      {
        sub_237AC8D74(v19 > 1, v20 + 1, 1);
      }

      *(v43 + 16) = v3;
      v21 = v43 + 16 * v20;
      *(v21 + 32) = v18;
      *(v21 + 40) = v17;
      ++v10;
      --v8;
      a2 = v15;
      v5 = v36;
      if (!v8)
      {
        v22 = v37;
        goto LABEL_28;
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
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v22 = v5 & 0xFFFFFFFFFFFFFF8;
  v41 = v5 & 0xC000000000000001;
  v9 = a2 & 0xFFFFFFFFFFFFFF8;
  v39 = a2 & 0xC000000000000001;
LABEL_28:
  v23 = v35 + 4;
  for (i = v22; ; v22 = i)
  {
    v24 = v42 ? sub_237C090EC() : *(v22 + 16);
    v25 = v23 - 4;
    if (v23 - 4 == v24)
    {
      break;
    }

    if (v41)
    {
      v26 = MEMORY[0x2383DCAF0](v23 - 4, v5);
    }

    else
    {
      if (v25 >= *(v22 + 16))
      {
        goto LABEL_54;
      }

      v26 = *(v5 + 8 * v23);
    }

    v3 = v26;
    if (__OFADD__(v25, 1))
    {
      goto LABEL_53;
    }

    if (v40)
    {
      v27 = sub_237C090EC();
    }

    else
    {
      v27 = *(v9 + 16);
    }

    if (v25 == v27)
    {

      return;
    }

    if (v39)
    {
      v28 = MEMORY[0x2383DCAF0](v23 - 4, a2);
    }

    else
    {
      if (v25 >= *(v9 + 16))
      {
        goto LABEL_55;
      }

      v28 = *(a2 + 8 * v23);
    }

    v29 = v28;
    v30 = [v3 integerValue];

    v32 = *(v43 + 16);
    v31 = *(v43 + 24);
    v3 = (v32 + 1);
    if (v32 >= v31 >> 1)
    {
      sub_237AC8D74(v31 > 1, v32 + 1, 1);
    }

    *(v43 + 16) = v3;
    v33 = v43 + 16 * v32;
    *(v33 + 32) = v30;
    *(v33 + 40) = v29;
    ++v23;
  }
}

uint64_t type metadata accessor for MLFewShotSoundClassifier(uint64_t a1)
{
  result = qword_27DE9B3E0;
  if (!qword_27DE9B3E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MLFewShotSoundClassifier.trainingMetrics.setter()
{
  v0 = OUTLINED_FUNCTION_46();
  v1 = type metadata accessor for MLFewShotSoundClassifier(v0);
  return OUTLINED_FUNCTION_6_9(*(v1 + 20));
}

void (*MLFewShotSoundClassifier.trainingMetrics.modify())()
{
  v0 = OUTLINED_FUNCTION_46();
  type metadata accessor for MLFewShotSoundClassifier(v0);
  return nullsub_1;
}

uint64_t MLFewShotSoundClassifier.validationMetrics.setter()
{
  v0 = OUTLINED_FUNCTION_46();
  v1 = type metadata accessor for MLFewShotSoundClassifier(v0);
  return OUTLINED_FUNCTION_6_9(*(v1 + 24));
}

void (*MLFewShotSoundClassifier.validationMetrics.modify())()
{
  v0 = OUTLINED_FUNCTION_46();
  type metadata accessor for MLFewShotSoundClassifier(v0);
  return nullsub_1;
}

uint64_t MLFewShotSoundClassifier.validationLoss.setter(double a1)
{
  result = type metadata accessor for MLFewShotSoundClassifier(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

void (*MLFewShotSoundClassifier.validationLoss.modify())()
{
  v0 = OUTLINED_FUNCTION_46();
  type metadata accessor for MLFewShotSoundClassifier(v0);
  return nullsub_1;
}

void MLFewShotSoundClassifier.init(trainingData:modelParameters:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v98 = a2;
  v97 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B3C0, &unk_237C0CC60);
  OUTLINED_FUNCTION_20(v4);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_77_0(v80 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B3C8, &unk_237C12150);
  OUTLINED_FUNCTION_20(v7);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_77_0(v80 - v9);
  v84 = sub_237C0616C();
  OUTLINED_FUNCTION_0();
  v83 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_77_0(v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v92 = _s18TemporalClassifierVMa(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_77_0(v80 - v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA18, &qword_237C0B710);
  OUTLINED_FUNCTION_20(v18);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v19);
  v91 = (v80 - v20);
  v94 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v90 = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v23);
  v93 = v80 - v24;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_77_0(v80 - v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9C8, &qword_237C0B6A0);
  OUTLINED_FUNCTION_0();
  v29 = v28;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v30);
  v32 = v80 - v31;
  v33 = type metadata accessor for MLFewShotSoundClassifier(0);
  v34 = (a3 + *(v33 + 20));
  sub_237C06FAC();
  type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v35 = OUTLINED_FUNCTION_17_6();
  sub_2379E51D0(v35);
  v36 = OUTLINED_FUNCTION_17_6();
  sub_2379E5C70(v36);
  v37 = *(v29 + 8);
  v37(v32, v27);
  *v34 = 0;
  type metadata accessor for MLClassifierMetrics.Contents(0);
  v96 = v34;
  swift_storeEnumTagMultiPayload();
  v38 = a3;
  v39 = (a3 + *(v33 + 24));
  v40 = v33;
  v41 = v38;
  sub_237C06FAC();
  v42 = OUTLINED_FUNCTION_17_6();
  sub_2379E51D0(v42);
  v43 = OUTLINED_FUNCTION_17_6();
  sub_2379E5C70(v43);
  v37(v32, v27);
  v44 = v98;
  *v39 = 0;
  v95 = v39;
  swift_storeEnumTagMultiPayload();
  *(v41 + v40[7]) = 0;
  OUTLINED_FUNCTION_4_10();
  sub_237A2540C(v44, v41);
  v45 = type metadata accessor for MLFewShotSoundClassifier.ModelParameters(0);
  v46 = v99;
  v47 = sub_237A61964((v44 + *(v45 + 32)));
  if (v46)
  {
    OUTLINED_FUNCTION_0_11();
    sub_237A24C24();
    OUTLINED_FUNCTION_1_8();
    goto LABEL_16;
  }

  *(v41 + v40[12]) = v47;
  *(v41 + v40[8]) = &unk_284AC04D8;
  v48 = v47;
  v49 = sub_237B6AC04(&unk_284AC04D8, 0, 2);
  v99 = v40;
  v50 = v40[9];
  v80[0] = v41;
  *(v41 + v50) = v49;
  v51 = [v48 trainingDataEmbeddings];

  sub_2379E8EE0(0, &qword_27DE9ACF8, 0x277CBFF48);
  v52 = sub_237C0893C();

  if (sub_237A24B6C(v52))
  {
    if ((v52 & 0xC000000000000001) != 0)
    {
      v53 = MEMORY[0x2383DCAF0](0, v52);
    }

    else
    {
      if (!*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_25;
      }

      v53 = *(v52 + 32);
    }

    v54 = v53;

    v55 = [v54 shape];

    sub_2379E8EE0(0, &qword_27DE9AC40, 0x277CCABB0);
    v52 = sub_237C0893C();

    if (sub_237A254D8(v52) == 3)
    {
      v56 = v91;
      sub_2379D8FF4(v44 + *(v45 + 36), v91, &qword_27DE9AA18, &qword_237C0B710);
      v57 = v94;
      if (__swift_getEnumTagSinglePayload(v56, 1, v94) != 1)
      {
        v67 = v56;
        v68 = v90;
        v69 = v89;
        (*(v90 + 32))(v89, v67, v57);
        v70 = *(v68 + 16);
        v70(v93, v69, v57);
        if ((v52 & 0xC000000000000001) != 0)
        {
          v71 = MEMORY[0x2383DCAF0](1, v52);
        }

        else
        {
          if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 1uLL)
          {
            goto LABEL_27;
          }

          v71 = *(v52 + 40);
        }

        v72 = v71;

        v73 = [v72 integerValue];

        v74 = v94;
        v70(v88, v93, v94);
        v75 = sub_237C05B1C();
        sub_237A2BF3C(v75, v76, v100);
        v51 = v99;
        v91 = *(v90 + 8);
        v91(v88, v74);
        v77 = v81;
        sub_237AAF028(v73, v100, v81);
        v91(v93, v74);
        sub_237A24CD0(v77, v80[1]);
        v78 = v87;
        sub_237C0614C();
        sub_237A24C78();
        sub_237C0643C();
        (*(v83 + 8))(v78, v84);
        OUTLINED_FUNCTION_2_13();
        sub_237A24C24();
        v79 = OUTLINED_FUNCTION_11_7();
        (v91)(v79);
        sub_237A24CD0(v80[2], v80[0] + v51[10]);
LABEL_14:
        v98 = v51[10];
        v61 = v85;
        *v85 = 1065353216;
        v62 = *MEMORY[0x277D2CDA0];
        v63 = sub_237C061EC();
        OUTLINED_FUNCTION_4();
        (*(v64 + 104))(v61, v62, v63);
        __swift_storeEnumTagSinglePayload(v61, 0, 1, v63);
        v65 = sub_237C061BC();
        __swift_storeEnumTagSinglePayload(v86, 1, 1, v65);
        sub_237A24C78();
        sub_237C062BC();
        sub_237A22C98();
        OUTLINED_FUNCTION_0_11();
        sub_237A24C24();
        OUTLINED_FUNCTION_1_8();
        return;
      }

      sub_2379D9054(v56, &qword_27DE9AA18, &qword_237C0B710);
      v51 = v99;
      if ((v52 & 0xC000000000000001) == 0)
      {
        v58 = v87;
        if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 1uLL)
        {
          __break(1u);
LABEL_27:
          __break(1u);
          return;
        }

        v59 = *(v52 + 40);
        goto LABEL_13;
      }

LABEL_25:
      v59 = MEMORY[0x2383DCAF0](1, v52);
      v58 = v87;
LABEL_13:

      v60 = [v59 integerValue];

      sub_237AAD7A8(2, v60, v82);
      sub_237C0614C();
      sub_237A24C78();
      sub_237C0643C();
      (*(v83 + 8))(v58, v84);
      OUTLINED_FUNCTION_2_13();
      sub_237A24C24();
      goto LABEL_14;
    }
  }

  v40 = v99;

  sub_2379E8AF0();
  swift_allocError();
  *v66 = 0xD000000000000038;
  *(v66 + 8) = 0x8000000237C182C0;
  *(v66 + 16) = 0u;
  *(v66 + 32) = 0u;
  *(v66 + 48) = 2;
  swift_willThrow();
  OUTLINED_FUNCTION_0_11();
  sub_237A24C24();
  OUTLINED_FUNCTION_1_8();
  v41 = v80[0];
LABEL_16:
  OUTLINED_FUNCTION_0_11();
  sub_237A24C24();
  sub_237A24C24();
  sub_237A24C24();
  if (!v46)
  {
  }
}

uint64_t sub_237A22C98()
{
  v225 = _s18TemporalClassifierVMa(0);
  MEMORY[0x28223BE20](v225);
  v167 = &v166 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B408, &qword_237C0CCC0);
  MEMORY[0x28223BE20](v2 - 8);
  v182 = &v166 - v3;
  v193 = sub_237C05DBC();
  v223 = *(v193 - 8);
  MEMORY[0x28223BE20](v193);
  v192 = &v166 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v191 = &v166 - v6;
  v7 = type metadata accessor for MLClassifierMetrics(0);
  MEMORY[0x28223BE20](v7 - 8);
  v169 = (&v166 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v181 = (&v166 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B410, &qword_237C0CCC8);
  MEMORY[0x28223BE20](v11 - 8);
  v219 = &v166 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v234 = &v166 - v14;
  v240 = sub_237C0683C();
  v222 = *(v240 - 8);
  MEMORY[0x28223BE20](v240);
  v170 = &v166 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v180 = &v166 - v17;
  MEMORY[0x28223BE20](v18);
  v184 = &v166 - v19;
  MEMORY[0x28223BE20](v20);
  v220 = &v166 - v21;
  MEMORY[0x28223BE20](v22);
  v214 = &v166 - v23;
  MEMORY[0x28223BE20](v24);
  v212 = &v166 - v25;
  MEMORY[0x28223BE20](v26);
  v213 = &v166 - v27;
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B418, &qword_237C0CCD0);
  MEMORY[0x28223BE20](v217);
  v200 = &v166 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v211 = &v166 - v30;
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B420, &qword_237C0CCD8);
  v216 = *(v221 - 8);
  MEMORY[0x28223BE20](v221);
  v199 = &v166 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v215 = &v166 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B428, &qword_237C0CCE0);
  MEMORY[0x28223BE20](v34 - 8);
  v218 = &v166 - v35;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B430, &qword_237C0CCE8);
  MEMORY[0x28223BE20](v185);
  v228 = &v166 - v36;
  v204 = sub_237C0617C();
  v210 = *(v204 - 8);
  MEMORY[0x28223BE20](v204);
  v203 = &v166 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA18, &qword_237C0B710);
  MEMORY[0x28223BE20](v38 - 8);
  v233 = (&v166 - v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B438, &qword_237C0CCF0);
  MEMORY[0x28223BE20](v40 - 8);
  v166 = &v166 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v171 = &v166 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B440, &qword_237C0CCF8);
  v231 = *(v44 - 8);
  v232 = v44;
  MEMORY[0x28223BE20](v44);
  v226 = &v166 - v45;
  v46 = sub_237C0616C();
  v47 = *(v46 - 8);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v46);
  v224 = &v166 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v51 = &v166 - v50;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B448, &qword_237C0CD00);
  v168 = *(v188 - 8);
  MEMORY[0x28223BE20](v188);
  v189 = &v166 - v52;
  v230 = v0[2];
  v187 = *v0;
  v53 = type metadata accessor for MLFewShotSoundClassifier(0);
  v54 = *(v0 + *(v53 + 48));
  v229 = v0;
  v55 = [v54 trainingDataLabels];
  v175 = sub_2379E8EE0(0, &qword_27DE9AC40, 0x277CCABB0);
  v56 = sub_237C0893C();

  v176 = v54;
  v57 = [v54 trainingDataEmbeddings];
  v174 = sub_2379E8EE0(0, &qword_27DE9ACF8, 0x277CBFF48);
  v58 = sub_237C0893C();

  v59 = v235;
  sub_237A21AB4(v56, v58);
  v61 = v60;
  v205 = v59;

  sub_237C0614C();
  v227 = v53;
  v195 = *(v0 + *(v53 + 32));
  v62 = *(v195 + 16);
  v236 = v61;
  v239 = 0;
  memset(v238, 0, sizeof(v238));
  v63 = v224;
  (*(v47 + 16))(v224, v51, v46);
  v64 = (*(v47 + 80) + 24) & ~*(v47 + 80);
  v65 = swift_allocObject();
  *(v65 + 16) = v62;
  v66 = v221;
  (*(v47 + 32))(v65 + v64, v63, v46);
  (v231[13])(v226, *MEMORY[0x277D2CEC0], v232);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B450, &qword_237C0CD08);
  v67 = sub_2379D9224(&qword_27DE9B458, &qword_27DE9B450, &qword_237C0CD08, MEMORY[0x277D83970]);
  *(&v164 + 1) = sub_237A252E0();
  v165 = sub_2379D9224(&qword_27DE9B468, &qword_27DE9B420, &qword_237C0CCD8, MEMORY[0x277D2CC60]);
  v163 = v66;
  *&v164 = v67;
  v68 = 1;
  sub_237C0686C();
  v69 = *(v47 + 8);
  v177 = v51;
  v179 = v46;
  v178 = v47 + 8;
  v173 = v69;
  v69(v51, v46);
  v70 = type metadata accessor for MLFewShotSoundClassifier.ModelParameters(0);
  v71 = v233;
  sub_2379D8FF4(v229 + *(v70 + 36), v233, &qword_27DE9AA18, &qword_237C0B710);
  v72 = sub_237C05ADC();
  LODWORD(v63) = __swift_getEnumTagSinglePayload(v71, 1, v72);
  sub_2379D9054(v71, &qword_27DE9AA18, &qword_237C0B710);
  v73 = v63 == 1;
  v74 = v171;
  if (!v73)
  {
    sub_237A2540C(v229 + v227[10], v171);
    v68 = 0;
  }

  result = __swift_storeEnumTagSinglePayload(v74, v68, 1, v225);
  if (v187 < 1)
  {
    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {
    v186 = *(v195 + 16);
    v194 = type metadata accessor for _MetricUtilities.ConfusionMatrixMeter(0);
    v202 = v210 + 13;
    v201 = (v210 + 1);
    v183 = *MEMORY[0x277D2CD40];
    v210 = (v216 + 4);
    v224 = (v222 + 8);
    v208 = (v222 + 32);
    ++v216;
    v190 = (v223 + 32);
    v172 = *MEMORY[0x277D2CD48];
    v76 = 1;
    v77 = 1.79769313e308;
    v78 = v215;
    v79 = v205;
    v209 = (v222 + 16);
    while (1)
    {
      swift_allocObject();
      v226 = sub_237A3367C(v186);
      if (v79)
      {
        goto LABEL_23;
      }

      v196 = v76;
      v205 = 0;
      v80 = v203;
      v81 = v204;
      v198 = *v202;
      v198(v203, v183, v204);
      v82 = v227[10];
      v83 = sub_237A24C78();
      v235 = v82;
      v222 = v83;
      sub_237C0644C();
      v197 = *v201;
      v197(v80, v81);
      v84 = v228;
      sub_237C0685C();
      v85 = (v84 + *(v185 + 44));
      v87 = *v85;
      v86 = v85[1];
      v207 = v87;
      v206 = v86;
      v223 = sub_2379D9224(&qword_27DE9B478, &qword_27DE9B470, &qword_237C0CD10, MEMORY[0x277D2CEB8]);
      v88 = v240;
      while (1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B470, &qword_237C0CD10);
        sub_237C08D7C();
        v89 = v218;
        if (*&v238[0])
        {
          v236 = *&v238[0];
          v207(&v236);

          v90 = v89;
          v91 = 0;
        }

        else
        {
          v90 = v218;
          v91 = 1;
        }

        __swift_storeEnumTagSinglePayload(v90, v91, 1, v66);
        v92 = v219;
        v93 = v234;
        if (__swift_getEnumTagSinglePayload(v89, 1, v66) == 1)
        {
          break;
        }

        (*v210)(v78, v89, v66);
        v94 = __swift_storeEnumTagSinglePayload(v93, 1, 1, v88);
        v95 = MEMORY[0x28223BE20](v94).n128_u32[0];
        v163 = v78;
        LODWORD(v164) = v95;
        *(&v164 + 4) = vrev64_s32(v96);
        v165 = v93;
        v97 = v214;
        v232 = sub_237C061AC();
        v98 = v213;
        v233 = *v209;
        (v233)(v213, v97, v88);
        sub_2379D8FF4(v93, v92, &qword_27DE9B410, &qword_237C0CCC8);
        result = __swift_getEnumTagSinglePayload(v92, 1, v88);
        if (result == 1)
        {
          goto LABEL_31;
        }

        v230 = *(v217 + 48);
        v231 = *v224;
        (v231)(v97, v240);
        v99 = v212;
        (*v208)(v212, v92, v240);
        sub_2379D9054(v234, &qword_27DE9B410, &qword_237C0CCC8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B3D0, &qword_237C0CC70);
        sub_237C062CC();

        v100 = v211;
        (v233)(v211, v98, v240);
        sub_237C0689C();
        v101 = v231;
        (v231)(v99, v240);
        (v101)(v98, v240);
        v102 = v101;
        v103 = v220;
        v104 = v221;
        v78 = v215;
        sub_237C0606C();
        v88 = v240;
        sub_237A32EE0();
        (v102)(v103, v88);
        sub_2379D9054(v100, &qword_27DE9B418, &qword_237C0CCD0);
        (*v216)(v78, v104);
        v66 = v104;
      }

      sub_2379D9054(v228, &qword_27DE9B430, &qword_237C0CCE8);
      v105 = v184;
      sub_237A347A4();
      v106 = v195;
      sub_237A34D48(v105, *(v195 + 16));
      v108 = v107;
      v109 = v205;
      sub_237A33B40(v106, v238);
      if (v109)
      {
        goto LABEL_22;
      }

      sub_237A34FA0(v105, v106, 0, &v236);
      v110 = v236;
      v111 = v237;
      v236 = *&v238[0];
      v237 = BYTE8(v238[0]);
      sub_2379DBCF4(*&v238[0], SBYTE8(v238[0]));
      v112 = v105;
      v113 = v191;
      sub_237A70ED4(&v236, v191);
      v236 = v110;
      v237 = v111;
      v114 = v192;
      sub_237A70ED4(&v236, v192);
      v233 = *v224;
      (v233)(v112, v88);
      sub_2379DBC9C(*&v238[0], SBYTE8(v238[0]));
      v115 = v181;
      *v181 = 1.0 - v108;
      v116 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v117 = *(v116 + 20);
      v205 = 0;
      v118 = *v190;
      v119 = v193;
      (*v190)(v115 + v117, v113, v193);
      v231 = v116;
      v232 = v118;
      v118(v115 + *(v116 + 24), v114, v119);
      v230 = type metadata accessor for MLClassifierMetrics.Contents(0);
      swift_storeEnumTagMultiPayload();
      v120 = v229;
      sub_237A25468(v115, v229 + v227[5]);
      v121 = v203;
      v122 = v204;
      v198(v203, v172, v204);
      sub_237C0644C();
      v197(v121, v122);
      v123 = v176;
      v124 = [v176 validationDataEmbeddings];
      v125 = sub_237C0893C();

      v126 = [v123 validationDataLabels];
      v127 = sub_237C0893C();

      v128 = v177;
      v129 = sub_237C0614C();
      MEMORY[0x28223BE20](v129);
      v165 = v128;
      v130 = v205;
      sub_2379E9480(sub_237A2535C, &v163, v127);

      MEMORY[0x28223BE20](v131);
      *(&v164 + 1) = v128;
      sub_2379E9480(sub_237A2537C, &v163, v125);
      v205 = v130;

      v132 = sub_237C060DC();
      v133 = v182;
      __swift_storeEnumTagSinglePayload(v182, 1, 1, v132);
      sub_237C0662C();
      __swift_storeEnumTagSinglePayload(v133, 1, 1, v132);
      sub_237C0682C();
      v134 = v199;
      sub_237C0607C();
      v173(v128, v179);
      v135 = v200;
      sub_237B2FE34(v200, &v200[*(v217 + 48)], v134);
      sub_237C067DC();
      v136 = *v238;
      if (v77 >= *v238)
      {
        v137 = v171;
        sub_2379D9054(v171, &qword_27DE9B438, &qword_237C0CCF0);
        sub_237A2540C(v120 + v235, v137);
        __swift_storeEnumTagSinglePayload(v137, 0, 1, v225);
        v138 = v195;
        v139 = *(v195 + 16);
        swift_allocObject();
        v140 = v205;
        sub_237A3367C(v139);
        v141 = v221;
        if (v140)
        {

          sub_2379D9054(v200, &qword_27DE9B418, &qword_237C0CCD0);
          (*v216)(v199, v141);
          sub_2379D9054(v171, &qword_27DE9B438, &qword_237C0CCF0);
          return (*(v168 + 8))(v189, v188);
        }

        v142 = v220;
        sub_237C0606C();
        sub_237A32EE0();
        v143 = v233;
        (v233)(v142, v240);
        v144 = v170;
        sub_237A347A4();
        sub_237A34D48(v144, *(v138 + 16));
        v146 = v145;
        sub_237A33B40(v138, v238);
        sub_237A34FA0(v144, v138, 0, &v236);
        v205 = 0;
        v147 = v236;
        v148 = v237;
        v236 = *&v238[0];
        v237 = BYTE8(v238[0]);
        sub_2379DBCF4(*&v238[0], SBYTE8(v238[0]));
        v149 = v144;
        v150 = v191;
        sub_237A70ED4(&v236, v191);
        v236 = v147;
        v237 = v148;
        sub_2379DBCF4(v147, v148);
        v151 = v192;
        sub_237A70ED4(&v236, v192);

        sub_2379DBC9C(v147, v148);
        v152 = v149;
        v78 = v215;
        v143(v152, v240);
        sub_2379D9054(v200, &qword_27DE9B418, &qword_237C0CCD0);
        v153 = v221;
        (*v216)(v199, v221);
        sub_2379DBC9C(*&v238[0], SBYTE8(v238[0]));
        v154 = v169;
        *v169 = 1.0 - v146;
        v88 = v231;
        v155 = v232;
        v156 = v150;
        v157 = v193;
        v232(v154 + *(v231 + 5), v156, v193);
        v158 = v157;
        v66 = v153;
        v155(v154 + *(v88 + 24), v151, v158);
        swift_storeEnumTagMultiPayload();
        v105 = v227;
        v120 = v229;
        sub_237A25468(v154, v229 + v227[6]);
        v77 = v136;
      }

      else
      {

        sub_2379D9054(v135, &qword_27DE9B418, &qword_237C0CCD0);
        v66 = v221;
        (*v216)(v134, v221);
        v105 = v227;
      }

      *(v120 + *(v105 + 28)) = v136;
      v79 = v205;
      if (v196 == v187)
      {
        break;
      }

      v76 = v196 + 1;
      if (__OFADD__(v196, 1))
      {
        __break(1u);
LABEL_22:

        (*v224)(v105, v88);
LABEL_23:
        sub_2379D9054(v171, &qword_27DE9B438, &qword_237C0CCF0);
        return (*(v168 + 8))(v189, v188);
      }
    }

    (*(v168 + 8))(v189, v188);
    v159 = v166;
    sub_237A2539C(v171, v166);
    if (__swift_getEnumTagSinglePayload(v159, 1, v225) == 1)
    {
      v160 = v235;
      v161 = v229;
      v162 = v167;
      sub_237A2540C(v229 + v235, v167);
      if (__swift_getEnumTagSinglePayload(v159, 1, v225) != 1)
      {
        sub_2379D9054(v159, &qword_27DE9B438, &qword_237C0CCF0);
      }
    }

    else
    {
      v162 = v167;
      sub_237A24CD0(v159, v167);
      v160 = v235;
      v161 = v229;
    }

    return sub_237A25468(v162, v161 + v160);
  }

  return result;
}

unint64_t sub_237A24B44(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_237A24B6C(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_237C090EC();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

void (*sub_237A24B90(void *a1, unint64_t a2, uint64_t a3))(id *a1)
{
  v6 = sub_237A24B34(a3);
  sub_237A24B44(a2, v6, a3);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v7 = MEMORY[0x2383DCAF0](a2, a3);
  }

  *a1 = v7;
  return sub_237A24C1C;
}

uint64_t sub_237A24C24()
{
  v1 = OUTLINED_FUNCTION_46();
  v2(v1);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(v0);
  return v0;
}

unint64_t sub_237A24C78()
{
  result = qword_27DE9B3D8;
  if (!qword_27DE9B3D8)
  {
    _s18TemporalClassifierVMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9B3D8);
  }

  return result;
}

uint64_t sub_237A24CD0(uint64_t a1, uint64_t a2)
{
  v4 = _s18TemporalClassifierVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_237A24D48(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = OUTLINED_FUNCTION_87();
  type metadata accessor for MLFewShotSoundClassifier.ModelParameters(v6);
  OUTLINED_FUNCTION_135();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
LABEL_6:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  type metadata accessor for MLClassifierMetrics(0);
  OUTLINED_FUNCTION_135();
  if (*(v12 + 84) == a2)
  {
    v9 = v11;
    v13 = a3[5];
LABEL_5:
    v10 = v3 + v13;
    goto LABEL_6;
  }

  if (a2 != 0x7FFFFFFF)
  {
    _s18TemporalClassifierVMa(0);
    OUTLINED_FUNCTION_135();
    if (*(v17 + 84) == a2)
    {
      v9 = v16;
      v13 = a3[10];
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B3D0, &qword_237C0CC70);
      v13 = a3[11];
    }

    goto LABEL_5;
  }

  v15 = *(v3 + a3[8]);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

void sub_237A24EB0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = OUTLINED_FUNCTION_87();
  type metadata accessor for MLFewShotSoundClassifier.ModelParameters(v8);
  OUTLINED_FUNCTION_135();
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    type metadata accessor for MLClassifierMetrics(0);
    OUTLINED_FUNCTION_135();
    if (*(v14 + 84) == a3)
    {
      v11 = v13;
      v15 = a4[5];
    }

    else
    {
      if (a3 == 0x7FFFFFFF)
      {
        *(v4 + a4[8]) = (a2 - 1);
        return;
      }

      _s18TemporalClassifierVMa(0);
      OUTLINED_FUNCTION_135();
      if (*(v17 + 84) == a3)
      {
        v11 = v16;
        v15 = a4[10];
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B3D0, &qword_237C0CC70);
        v15 = a4[11];
      }
    }

    v12 = v4 + v15;
  }

  __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

void sub_237A25000(uint64_t a1)
{
  type metadata accessor for MLFewShotSoundClassifier.ModelParameters(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for MLClassifierMetrics(319);
    if (v2 <= 0x3F)
    {
      sub_2379FC328();
      if (v3 <= 0x3F)
      {
        sub_237A2511C();
        if (v4 <= 0x3F)
        {
          _s18TemporalClassifierVMa(319);
          if (v5 <= 0x3F)
          {
            sub_237A2517C(319);
            if (v6 <= 0x3F)
            {
              sub_2379E8EE0(319, &qword_27DE9B400, 0x277CDC940);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_237A2511C()
{
  if (!qword_27DE9B3F0)
  {
    v0 = sub_237C085DC();
    if (!v1)
    {
      atomic_store(v0, &qword_27DE9B3F0);
    }
  }
}

void sub_237A2517C(uint64_t a1)
{
  if (!qword_27DE9B3F8)
  {
    _s18TemporalClassifierVMa(255);
    sub_237A24C78();
    v1 = sub_237C062DC();
    if (!v2)
    {
      atomic_store(v1, &qword_27DE9B3F8);
    }
  }
}

uint64_t sub_237A251E0()
{
  sub_237C0616C();
  OUTLINED_FUNCTION_4();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80)));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_237A25260@<X0>(uint64_t x8_0@<X8>)
{
  v4 = sub_237C0616C();
  OUTLINED_FUNCTION_20(v4);
  v5 = *(v2 + 16);

  return sub_237AB6BD4(v5, x8_0);
}

unint64_t sub_237A252E0()
{
  result = qword_27DE9B460;
  if (!qword_27DE9B460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9B420, &qword_237C0CCD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9B460);
  }

  return result;
}

uint64_t sub_237A2539C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B438, &qword_237C0CCF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_237A2540C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_87();
  v5(v4);
  OUTLINED_FUNCTION_4();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_237A25468(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_87();
  v5(v4);
  OUTLINED_FUNCTION_4();
  (*(v6 + 40))(a2, v2);
  return a2;
}

uint64_t OUTLINED_FUNCTION_1_8()
{

  return sub_237A24C24();
}

uint64_t OUTLINED_FUNCTION_5_8@<X0>(uint64_t a1@<X8>)
{

  return sub_237A2540C(v2 + a1, v1);
}

uint64_t OUTLINED_FUNCTION_6_9@<X0>(uint64_t a1@<X8>)
{

  return sub_237A25468(v1, v2 + a1);
}

uint64_t MLImageClassifier.ModelParameters.algorithm.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B480, &qword_237C0CD18);
  v4 = OUTLINED_FUNCTION_20(v3);
  MEMORY[0x28223BE20](v4);
  v6 = &v11[-v5];
  sub_2379F6D68(v1 + 48, v11);
  if (v12)
  {
    v7 = type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType(0);
    v8 = swift_dynamicCast();
    __swift_storeEnumTagSinglePayload(v6, v8 ^ 1u, 1, v7);
    if (__swift_getEnumTagSinglePayload(v6, 1, v7) != 1)
    {
      OUTLINED_FUNCTION_0_12();
      return sub_237A26C24(v6, a1, v9);
    }
  }

  else
  {
    sub_2379D9054(v11, &qword_27DE9A998, &unk_237C0C100);
    v7 = type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType(0);
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  }

  *a1 = 1;
  *(a1 + 8) = 0;
  type metadata accessor for MLImageClassifier.FeatureExtractorType(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType(0);
  result = __swift_getEnumTagSinglePayload(v6, 1, v7);
  if (result != 1)
  {
    return sub_2379D9054(v6, &qword_27DE9B480, &qword_237C0CD18);
  }

  return result;
}

uint64_t MLImageClassifier.ModelParameters.algorithm.setter()
{
  v2 = OUTLINED_FUNCTION_46();
  v6[3] = type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType(v2);
  __swift_allocate_boxed_opaque_existential_0(v6);
  OUTLINED_FUNCTION_0_12();
  sub_237A26C24(v0, v3, v4);
  return sub_2379DAE54(v6, v1 + 48);
}

void (*MLImageClassifier.ModelParameters.algorithm.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[8] = v1;
  v4 = type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType(0);
  v3[9] = v4;
  OUTLINED_FUNCTION_20(v4);
  v6 = *(v5 + 64);
  v3[10] = __swift_coroFrameAllocStub(v6);
  v7 = __swift_coroFrameAllocStub(v6);
  v3[11] = v7;
  MLImageClassifier.ModelParameters.algorithm.getter(v7);
  return sub_237A258B0;
}

void sub_237A258B0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[10];
  v3 = (*a1)[11];
  if (a2)
  {
    v6 = v2[8];
    v5 = v2[9];
    v7 = OUTLINED_FUNCTION_10_6();
    sub_237A26C84(v7, v4, v8);
    v2[3] = v5;
    __swift_allocate_boxed_opaque_existential_0(v2);
    OUTLINED_FUNCTION_0_12();
    sub_237A26C24(v4, v9, v10);
    sub_2379DAE54(v2, v6 + 48);
    OUTLINED_FUNCTION_8_7();
    sub_237A26CE4();
  }

  else
  {
    v11 = v2[8];
    v2[7] = v2[9];
    __swift_allocate_boxed_opaque_existential_0(v2 + 4);
    OUTLINED_FUNCTION_0_12();
    sub_237A26C24(v3, v12, v13);
    sub_2379DAE54((v2 + 4), v11 + 48);
  }

  free(v3);
  free(v4);

  free(v2);
}

uint64_t MLImageClassifier.ModelParameters.validationData.getter()
{
  v1 = type metadata accessor for MLImageClassifier.DataSource(0);
  v2 = OUTLINED_FUNCTION_20(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_0();
  v5 = v4 - v3;
  type metadata accessor for MLImageClassifier.ModelParameters.ValidationData(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v17[-v10];
  sub_2379F6D68(v0 + 16, &v18);
  if (!v19)
  {
    __break(1u);
    JUMPOUT(0x237A25B80);
  }

  sub_2379DAD24(&v18, &v20);
  swift_dynamicCast();
  OUTLINED_FUNCTION_6_10();
  sub_237A26C84(v11, v8, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v14 = EnumCaseMultiPayload;
  switch(EnumCaseMultiPayload)
  {
    case 1u:
      sub_237A26C24(v8, v5, type metadata accessor for MLImageClassifier.DataSource);
      sub_237B82504();
      v14 = v15;
      OUTLINED_FUNCTION_11_8();
      sub_237A26CE4();
      break;
    case 2u:
      v14 = *v8;
      break;
    case 3u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE38, &unk_237C12D50);
      v14 = sub_237C085AC();
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_4_11();
  sub_237A26CE4();
  return v14;
}

uint64_t MLImageClassifier.ModelParameters.validationData.setter(uint64_t a1)
{
  v4 = type metadata accessor for MLImageClassifier.ModelParameters.ValidationData(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_24();
  MEMORY[0x28223BE20](v6);
  v8 = v11 - v7;
  if (a1)
  {
    if (*(a1 + 16))
    {
      *v2 = a1;
      type metadata accessor for MLImageClassifier.DataSource(0);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
    }
  }

  else
  {
    *v2 = 0;
    *(v2 + 8) = 0;
    *(v2 + 16) = 256;
  }

  swift_storeEnumTagMultiPayload();
  sub_237A26C24(v2, v8, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
  v11[3] = v4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v11);
  sub_237A26C24(v8, boxed_opaque_existential_0, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
  return sub_2379DAE54(v11, v1 + 16);
}

uint64_t MLImageClassifier.ModelParameters.validation.getter()
{
  result = sub_2379F6D68(v1 + 16, &v3);
  if (v4)
  {
    sub_2379DAD24(&v3, &v5);
    type metadata accessor for MLImageClassifier.ModelParameters.ValidationData(0);
    return swift_dynamicCast();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t MLImageClassifier.ModelParameters.validation.setter()
{
  v2 = OUTLINED_FUNCTION_46();
  v6[3] = type metadata accessor for MLImageClassifier.ModelParameters.ValidationData(v2);
  __swift_allocate_boxed_opaque_existential_0(v6);
  OUTLINED_FUNCTION_1_9();
  sub_237A26C24(v0, v3, v4);
  return sub_2379DAE54(v6, v1 + 16);
}

uint64_t (*MLImageClassifier.ModelParameters.validationData.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = MLImageClassifier.ModelParameters.validationData.getter();
  return sub_237A25DF8;
}

uint64_t sub_237A25DF8(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return MLImageClassifier.ModelParameters.validationData.setter(*a1);
  }

  MLImageClassifier.ModelParameters.validationData.setter(v2);
}

uint64_t sub_237A25E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(void), uint64_t (*a7)(char *))
{
  v10 = (a5)(0, a2, a3, a4);
  v11 = OUTLINED_FUNCTION_20(v10);
  MEMORY[0x28223BE20](v11);
  v13 = &v15 - v12;
  sub_237A26C84(a1, &v15 - v12, a6);
  return a7(v13);
}

void (*MLImageClassifier.ModelParameters.validation.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0xA0uLL);
  *a1 = v3;
  v3[16] = v1;
  v3[17] = type metadata accessor for MLImageClassifier.ModelParameters.ValidationData(0);
  OUTLINED_FUNCTION_4();
  v5 = *(v4 + 64);
  v3[18] = __swift_coroFrameAllocStub(v5);
  v3[19] = __swift_coroFrameAllocStub(v5);
  result = sub_2379F6D68(v1 + 16, (v3 + 4));
  if (v3[7])
  {
    sub_2379DAD24(v3 + 2, v3);
    swift_dynamicCast();
    return sub_237A25FDC;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_237A25FDC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[18];
  v4 = (*a1)[19];
  v5 = (*a1)[16];
  v6 = (*a1)[17];
  if (a2)
  {
    sub_237A26C84((*a1)[19], v3, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
    v2[11] = v6;
    __swift_allocate_boxed_opaque_existential_0(v2 + 8);
    OUTLINED_FUNCTION_1_9();
    sub_237A26C24(v3, v7, v8);
    sub_2379DAE54((v2 + 8), v5 + 16);
    OUTLINED_FUNCTION_4_11();
    sub_237A26CE4();
  }

  else
  {
    v2[15] = v6;
    __swift_allocate_boxed_opaque_existential_0(v2 + 12);
    OUTLINED_FUNCTION_1_9();
    sub_237A26C24(v4, v9, v10);
    sub_2379DAE54((v2 + 12), v5 + 16);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t MLImageClassifier.ModelParameters.featureExtractor.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType(0);
  v3 = OUTLINED_FUNCTION_20(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  v6 = v5 - v4;
  MLImageClassifier.ModelParameters.algorithm.getter(v5 - v4);
  OUTLINED_FUNCTION_9_6();
  return sub_237A26C24(v6, a1, v7);
}

uint64_t MLImageClassifier.ModelParameters.featureExtractor.setter()
{
  v2 = OUTLINED_FUNCTION_46();
  v3 = type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType(v2);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_24();
  MEMORY[0x28223BE20](v5);
  MLImageClassifier.ModelParameters.algorithm.getter(v12 - v6);
  v7 = OUTLINED_FUNCTION_3_12();
  sub_237A26C84(v7, v1, v8);
  v12[3] = v3;
  __swift_allocate_boxed_opaque_existential_0(v12);
  OUTLINED_FUNCTION_0_12();
  sub_237A26C24(v1, v9, v10);
  sub_237A26CE4();
  sub_2379DAE54(v12, v0 + 48);
  return sub_237A26CE4();
}

uint64_t (*MLImageClassifier.ModelParameters.featureExtractor.modify(void *a1))()
{
  *a1 = v1;
  v3 = type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType(0);
  OUTLINED_FUNCTION_20(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  a1[1] = v5;
  v6 = type metadata accessor for MLImageClassifier.FeatureExtractorType(0);
  OUTLINED_FUNCTION_20(v6);
  v8 = *(v7 + 64);
  a1[2] = __swift_coroFrameAllocStub(v8);
  v9 = __swift_coroFrameAllocStub(v8);
  a1[3] = v9;
  MLImageClassifier.ModelParameters.algorithm.getter(v5);
  OUTLINED_FUNCTION_9_6();
  sub_237A26C24(v5, v9, v10);
  return sub_237A262E0;
}

void sub_237A262E0(void *a1, char a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[1];
  if (a2)
  {
    sub_237A26C84(a1[3], v2, type metadata accessor for MLImageClassifier.FeatureExtractorType);
    MLImageClassifier.ModelParameters.featureExtractor.setter();
    OUTLINED_FUNCTION_2_14();
    sub_237A26CE4();
  }

  else
  {
    MLImageClassifier.ModelParameters.featureExtractor.setter();
  }

  free(v3);
  free(v2);

  free(v4);
}

uint64_t MLImageClassifier.ModelParameters.init(validation:maxIterations:augmentation:algorithm:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a5@<X8>)
{
  v9 = type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_0();
  v13 = v12 - v11;
  v14 = type metadata accessor for MLImageClassifier.ModelParameters.ValidationData(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_0();
  v18 = v17 - v16;
  v19 = *a3;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 16) = 0u;
  *a5 = a2;
  *(a5 + 8) = v19;
  OUTLINED_FUNCTION_6_10();
  sub_237A26C84(a1, v18, v20);
  v29 = v14;
  __swift_allocate_boxed_opaque_existential_0(v28);
  OUTLINED_FUNCTION_1_9();
  sub_237A26C24(v18, v21, v22);
  sub_2379DAE54(v28, a5 + 16);
  v23 = OUTLINED_FUNCTION_10_6();
  sub_237A26C84(v23, v13, v24);
  v29 = v9;
  __swift_allocate_boxed_opaque_existential_0(v28);
  OUTLINED_FUNCTION_0_12();
  sub_237A26C24(v13, v25, v26);
  OUTLINED_FUNCTION_8_7();
  sub_237A26CE4();
  OUTLINED_FUNCTION_4_11();
  sub_237A26CE4();
  return sub_2379DAE54(v28, a5 + 48);
}

uint64_t MLImageClassifier.ModelParameters.init(featureExtractor:validation:maxIterations:augmentationOptions:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_0();
  v13 = v12 - v11;
  v14 = type metadata accessor for MLImageClassifier.ModelParameters.ValidationData(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_0();
  v18 = v17 - v16;
  v19 = *a4;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 16) = 0u;
  *a5 = a3;
  *(a5 + 8) = v19;
  OUTLINED_FUNCTION_6_10();
  sub_237A26C84(a2, v18, v20);
  v29 = v14;
  __swift_allocate_boxed_opaque_existential_0(v28);
  OUTLINED_FUNCTION_1_9();
  sub_237A26C24(v18, v21, v22);
  sub_2379DAE54(v28, a5 + 16);
  v23 = OUTLINED_FUNCTION_3_12();
  sub_237A26C84(v23, v13, v24);
  v29 = v9;
  __swift_allocate_boxed_opaque_existential_0(v28);
  OUTLINED_FUNCTION_0_12();
  sub_237A26C24(v13, v25, v26);
  OUTLINED_FUNCTION_4_11();
  sub_237A26CE4();
  OUTLINED_FUNCTION_2_14();
  sub_237A26CE4();
  return sub_2379DAE54(v28, a5 + 48);
}

uint64_t MLImageClassifier.ModelParameters.init(featureExtractor:validationData:maxIterations:augmentationOptions:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_0();
  v13 = v12 - v11;
  v14 = *a4;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 48) = 0u;
  *a5 = a3;
  *(a5 + 8) = v14;
  MLImageClassifier.ModelParameters.validationData.setter(a2);
  v15 = OUTLINED_FUNCTION_3_12();
  sub_237A26C84(v15, v13, v16);
  v20[3] = v9;
  __swift_allocate_boxed_opaque_existential_0(v20);
  OUTLINED_FUNCTION_0_12();
  sub_237A26C24(v13, v17, v18);
  OUTLINED_FUNCTION_2_14();
  sub_237A26CE4();
  return sub_2379DAE54(v20, a5 + 48);
}

uint64_t MLImageClassifier.ModelParameters.init(featureExtractor:validationData:maxIterations:augmentationOptions:)@<X0>(uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v8 = type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_0();
  v12 = v11 - v10;
  v13 = *a4;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *(a5 + 64) = 0u;
  *a5 = a3;
  *(a5 + 8) = v13;
  sub_237B82504();
  MLImageClassifier.ModelParameters.validationData.setter(v14);
  v15 = OUTLINED_FUNCTION_3_12();
  sub_237A26C84(v15, v12, v16);
  v20[3] = v8;
  __swift_allocate_boxed_opaque_existential_0(v20);
  OUTLINED_FUNCTION_0_12();
  sub_237A26C24(v12, v17, v18);
  OUTLINED_FUNCTION_11_8();
  sub_237A26CE4();
  OUTLINED_FUNCTION_2_14();
  sub_237A26CE4();
  return sub_2379DAE54(v20, a5 + 48);
}

unint64_t MLImageClassifier.ModelParameters.description.getter()
{
  v0 = type metadata accessor for MLImageClassifier.FeatureExtractorType(0);
  v1 = OUTLINED_FUNCTION_20(v0);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_0();
  v4 = v3 - v2;
  v5 = type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType(0);
  v6 = OUTLINED_FUNCTION_20(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_0();
  v9 = v8 - v7;
  MLImageClassifier.ModelParameters.algorithm.getter(v8 - v7);
  OUTLINED_FUNCTION_9_6();
  sub_237A26C24(v9, v4, v10);
  sub_237C08EDC();

  v11 = MLImageClassifier.FeatureExtractorType.description.getter();
  MEMORY[0x2383DC360](v11);

  MEMORY[0x2383DC360](10, 0xE100000000000000);
  MEMORY[0x2383DC360](0xD00000000000001FLL, 0x8000000237C18320);
  OUTLINED_FUNCTION_2_14();
  sub_237A26CE4();
  sub_237C08EDC();

  v12 = sub_237C0924C();
  MEMORY[0x2383DC360](v12);

  MEMORY[0x2383DC360](10, 0xE100000000000000);
  MEMORY[0x2383DC360](0xD000000000000010, 0x8000000237C16E00);

  return 0xD000000000000013;
}

unint64_t MLImageClassifier.ModelParameters.playgroundDescription.getter@<X0>(unint64_t *a1@<X8>)
{
  result = MLImageClassifier.ModelParameters.description.getter();
  a1[3] = MEMORY[0x277D837D0];
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_237A26A78()
{
  v2 = type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType(0);
  v3 = OUTLINED_FUNCTION_20(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  MLImageClassifier.ModelParameters.algorithm.getter(v5 - v4);
  sub_237BF01F8();
  OUTLINED_FUNCTION_8_7();
  result = sub_237A26CE4();
  if (!v1 && (*v0 - 1) >= 0x7FFFFFFE)
  {
    sub_237C08EDC();
    MEMORY[0x2383DC360](0xD000000000000048, 0x8000000237C18340);
    v7 = sub_237C0924C();
    MEMORY[0x2383DC360](v7);

    MEMORY[0x2383DC360](0x6F6720747562202CLL, 0xEA00000000002074);
    v8 = sub_237C0924C();
    MEMORY[0x2383DC360](v8);

    MEMORY[0x2383DC360](46, 0xE100000000000000);
    sub_2379E8AF0();
    swift_allocError();
    *v9 = 0;
    *(v9 + 8) = 0xE000000000000000;
    *(v9 + 16) = 0u;
    *(v9 + 32) = 0u;
    *(v9 + 48) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_237A26C24(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_237A26C84(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_237A26CE4()
{
  v1 = OUTLINED_FUNCTION_46();
  v2(v1);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_237A26DB0@<X0>(uint64_t *a1@<X8>)
{
  result = MLImageClassifier.ModelParameters.validationData.getter();
  *a1 = result;
  return result;
}

uint64_t sub_237A26ED8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 80))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 40);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_237A26F2C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

int *MLHandActionClassifier.ModelParameters.init(validation:batchSize:maximumIterations:predictionWindowSize:augmentationOptions:algorithm:targetFrameRate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v12 = *a5;
  sub_237A280D4(a1, a6);
  result = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  *(a6 + result[5]) = a2;
  *(a6 + result[6]) = a3;
  *(a6 + result[7]) = a4;
  *(a6 + result[8]) = v12;
  *(a6 + result[10]) = a7;
  return result;
}

uint64_t sub_237A27184(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237A271F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t MLHandActionClassifier.ModelParameters.batchSize.setter()
{
  result = OUTLINED_FUNCTION_2_15();
  *(v1 + *(result + 20)) = v0;
  return result;
}

uint64_t MLHandActionClassifier.ModelParameters.maximumIterations.setter()
{
  result = OUTLINED_FUNCTION_2_15();
  *(v1 + *(result + 24)) = v0;
  return result;
}

uint64_t MLHandActionClassifier.ModelParameters.predictionWindowSize.setter()
{
  result = OUTLINED_FUNCTION_2_15();
  *(v1 + *(result + 28)) = v0;
  return result;
}

uint64_t MLHandActionClassifier.ModelParameters.augmentationOptions.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t MLHandActionClassifier.ModelParameters.augmentationOptions.setter(uint64_t *a1)
{
  v2 = *a1;
  result = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  *(v1 + *(result + 32)) = v2;
  return result;
}

uint64_t MLHandActionClassifier.ModelParameters.targetFrameRate.setter(double a1)
{
  result = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t MLHandActionClassifier.ModelParameters.ModelAlgorithmType.hashValue.getter()
{
  sub_237C093CC();
  MEMORY[0x2383DCF70](0);
  return sub_237C0940C();
}

uint64_t sub_237A27604(uint64_t a1)
{
  sub_237C093CC();
  MEMORY[0x2383DCF70](0);
  return sub_237C0940C();
}

void sub_237A2764C(uint64_t a1, void *a2)
{
  v4 = v2;
  type metadata accessor for MLHandActionClassifier.DataSource(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MLHandActionClassifier.DataSource.videosWithAnnotations()(&v41);
  if (!v3)
  {
    v34 = a2;
    v14 = v41;
    v15 = v42;
    sub_237A27184(v4, v13);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v18 = swift_getEnumCaseMultiPayload();
        if (v18 == 5)
        {
          sub_2379DBC9C(v14, v15);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9D8, &unk_237C0C710);

          sub_237C05DBC();
          OUTLINED_FUNCTION_4();
          (*(v28 + 8))(v13);
          goto LABEL_15;
        }

        if (v18 == 3)
        {
          sub_2379DBC9C(v14, v15);
          sub_237A28130(v13);
LABEL_15:
          *a1 = 0;
          *(a1 + 8) = -1;
          v27 = v34;
          *v34 = 0;
          goto LABEL_16;
        }

        sub_237A280D4(v13, v9);
        MLHandActionClassifier.DataSource.videosWithAnnotations()(&v41);
        sub_237A28130(v9);
        v31 = v41;
        v32 = v42;
        *a1 = v14;
        *(a1 + 8) = v15;
        goto LABEL_27;
      }

      OUTLINED_FUNCTION_8_8(EnumCaseMultiPayload, v17);
      if (v26)
      {
        *a1 = v14;
        *(a1 + 8) = v10;
        v27 = v34;
        *v34 = 0;
LABEL_16:
        *(v27 + 8) = -1;
        return;
      }

LABEL_13:
      sub_2379DBC9C(v14, v10);
      goto LABEL_15;
    }

    v19 = *v13;
    v20 = *(v13 + 1);
    v21 = v13[16];
    v22 = v13[17];
    if (OUTLINED_FUNCTION_8_8(EnumCaseMultiPayload, v17) < 1)
    {
      goto LABEL_13;
    }

    v39 = v14;
    v23 = v10;
    v40 = v10;
    MLDataTable.subscript.getter();
    v35 = v37;
    v36 = v38;
    MLUntypedColumn.dropDuplicates()(&v41, v24);
    sub_2379DBC9C(v35, v36);
    v25 = v41;
    if (v42)
    {
      sub_2379DBC9C(v41, 1);
      if (v22)
      {
        goto LABEL_24;
      }
    }

    else
    {

      v29 = sub_237A2F128();
      sub_2379DBC9C(v25, 0);
      sub_2379DBC9C(v25, 0);
      if (v22)
      {
        if (v29 < 50)
        {
LABEL_24:
          v31 = 0;
          v32 = -1;
LABEL_26:
          *a1 = v14;
          *(a1 + 8) = v23;
LABEL_27:
          v30 = v34;
          *v34 = v31;
          *(v30 + 8) = v32;
          return;
        }

        v19 = dbl_237C0CE20[v29 < 0xC8];
        v20 = 1;
LABEL_25:
        v37 = v14;
        v38 = v23;
        MLDataTable.randomSplitBySequence(proportion:by:on:seed:)(&v41, &v39, 0x7461506F65646976, 0xE900000000000068, 0x6C6562616CuLL, 0xE500000000000000, v20, v19);
        sub_2379DBC9C(v14, v23);
        v31 = v41;
        v32 = v42;
        v14 = v39;
        v23 = v40;
        goto LABEL_26;
      }
    }

    if (v21)
    {
      v41 = 0;
      MEMORY[0x2383DD970](&v41, 8);
      v20 = v41;
    }

    if (v19 == 0.0)
    {
      goto LABEL_24;
    }

    goto LABEL_25;
  }
}

unint64_t MLHandActionClassifier.ModelParameters.description.getter()
{
  sub_237C08EDC();

  OUTLINED_FUNCTION_80();
  v16 = 0xD000000000000014;
  v17 = v1;
  v2 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  v3 = sub_237C0924C();
  MEMORY[0x2383DC360](v3);

  MEMORY[0x2383DC360](10, 0xE100000000000000);
  strcpy(v15, "Batch Size: ");
  BYTE5(v15[1]) = 0;
  HIWORD(v15[1]) = -5120;
  v4 = OUTLINED_FUNCTION_5_9();
  MEMORY[0x2383DC360](v4);

  OUTLINED_FUNCTION_2_1();
  MEMORY[0x2383DC360](v15[0], v15[1]);

  OUTLINED_FUNCTION_7_8();
  sub_237C08EDC();

  OUTLINED_FUNCTION_80();
  v15[1] = v5;
  v6 = OUTLINED_FUNCTION_5_9();
  MEMORY[0x2383DC360](v6);

  OUTLINED_FUNCTION_2_1();
  MEMORY[0x2383DC360](0xD000000000000018, v15[1]);

  OUTLINED_FUNCTION_7_8();
  sub_237C08EDC();

  OUTLINED_FUNCTION_80();
  v15[0] = 0xD000000000000013;
  v15[1] = v7;
  v8 = sub_237C08A6C();
  MEMORY[0x2383DC360](v8);

  OUTLINED_FUNCTION_2_1();
  MEMORY[0x2383DC360](0xD000000000000013, v15[1]);

  OUTLINED_FUNCTION_7_8();
  sub_237C08EDC();

  OUTLINED_FUNCTION_80();
  v9 = *(v0 + *(v2 + 32));
  v15[0] = 0xD000000000000016;
  v15[1] = v10;
  if (v9 == 1)
  {
    v11 = 0xD000000000000011;
  }

  else
  {
    v11 = 0;
  }

  if (v9 == 1)
  {
    v12 = 0x8000000237C18430;
  }

  else
  {
    v12 = 0xE000000000000000;
  }

  MEMORY[0x2383DC360](v11, v12);

  OUTLINED_FUNCTION_2_1();
  MEMORY[0x2383DC360](v15[0], v15[1]);

  OUTLINED_FUNCTION_7_8();
  sub_237C08EDC();

  OUTLINED_FUNCTION_80();
  v15[1] = v13;
  MEMORY[0x2383DC360](5129031, 0xE300000000000000);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x2383DC360](0xD000000000000011, v15[1]);

  return v16;
}

unint64_t MLHandActionClassifier.ModelParameters.playgroundDescription.getter@<X0>(unint64_t *a1@<X8>)
{
  result = MLHandActionClassifier.ModelParameters.description.getter();
  a1[3] = MEMORY[0x277D837D0];
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_237A27D7C()
{
  result = qword_27DE9B488;
  if (!qword_27DE9B488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9B488);
  }

  return result;
}

uint64_t sub_237A27DF0(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_87();
  v5 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(v4);

  return __swift_getEnumTagSinglePayload(v2, a2, v5);
}

uint64_t sub_237A27E48(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_87();
  v5 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(v4);

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v5);
}

uint64_t sub_237A27E90(uint64_t a1)
{
  result = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t _s15ModelParametersV18ModelAlgorithmTypeOwet(unsigned int *a1, int a2)
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

_BYTE *_s15ModelParametersV18ModelAlgorithmTypeOwst(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x237A28020);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

ValueMetadata *sub_237A28060(uint64_t a1)
{
  result = sub_2379EA11C();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for MLHandActionClassifier.DataSource(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_237A280D4(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_87();
  v5(v4);
  OUTLINED_FUNCTION_4();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_237A28130(uint64_t a1)
{
  v2 = type metadata accessor for MLHandActionClassifier.DataSource(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_2_15()
{

  return type metadata accessor for MLHandActionClassifier.ModelParameters(0);
}

uint64_t OUTLINED_FUNCTION_5_9()
{

  return sub_237C0924C();
}

uint64_t OUTLINED_FUNCTION_8_8(uint64_t a1, uint64_t a2)
{
  *(v4 - 96) = v3;
  *(v4 - 88) = v2;

  return MLDataTable.size.getter();
}

uint64_t sub_237A28200()
{
  if (*(v0 + 17))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC48, &qword_237C0C120);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_237C0B660;
    v2 = MEMORY[0x277D837D0];
    *(inited + 32) = 1684957547;
    *(inited + 40) = 0xE400000000000000;
    *(inited + 72) = v2;
    *(inited + 48) = 0x6974616D6F747561;
    *(inited + 56) = 0xE900000000000063;
    return sub_237C085AC();
  }

  else
  {
    v4 = v0[1];
    v5 = *(v0 + 16);
    v6 = *v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC48, &qword_237C0C120);
    v7 = swift_initStackObject();
    *(v7 + 16) = xmmword_237C0B670;
    *(v7 + 32) = 1684957547;
    *(v7 + 40) = 0xE400000000000000;
    v8 = MEMORY[0x277D837D0];
    *(v7 + 48) = 0x6465786966;
    *(v7 + 56) = 0xE500000000000000;
    *(v7 + 72) = v8;
    *(v7 + 80) = 0x6F69746172;
    *(v7 + 88) = 0xE500000000000000;
    *(v7 + 120) = MEMORY[0x277D839F8];
    *(v7 + 96) = v6;
    v3 = sub_237C085AC();
    if ((v5 & 1) == 0)
    {
      v12 = MEMORY[0x277D83B88];
      *&v11 = v4;
      sub_2379DAD24(&v11, v10);
      swift_isUniquelyReferenced_nonNull_native();
      sub_237B40B6C(v10, 1684366707, 0xE400000000000000);
    }
  }

  return v3;
}

uint64_t sub_237A283AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(a1 + 16))
  {
    goto LABEL_24;
  }

  v4 = sub_237ACAC78(1684957547, 0xE400000000000000);
  if ((v5 & 1) == 0)
  {
    goto LABEL_24;
  }

  v6 = sub_2379FED88(*(a1 + 56) + 32 * v4, v41);
  if ((OUTLINED_FUNCTION_0_13(v6, v7, v8, MEMORY[0x277D837D0], v9, v10, v11, v12, v34, v38, v41[0]) & 1) == 0)
  {
    goto LABEL_24;
  }

  v13 = v35 == 0x6974616D6F747561 && v39 == 0xE900000000000063;
  if (v13 || (sub_237C0929C() & 1) != 0)
  {

    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 256;
LABEL_10:
    *(a2 + 18) = 0;
    return result;
  }

  if (v35 == 0x6465786966 && v39 == 0xE500000000000000)
  {
  }

  else
  {
    v16 = sub_237C0929C();

    if ((v16 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  sub_237AC9A74(a1, v41, 0x6F69746172, 0xE500000000000000);
  if (!v42)
  {

    result = sub_237A286E0(v41);
    goto LABEL_25;
  }

  if (OUTLINED_FUNCTION_0_13(v17, v18, v19, MEMORY[0x277D839F8], v20, v21, v22, v23, v35, v39, v41[0]))
  {
    v24 = v36;
    sub_237AC9A74(a1, v41, 1684366707, 0xE400000000000000);

    if (v42)
    {
      result = OUTLINED_FUNCTION_0_13(v25, v26, v27, MEMORY[0x277D83B88], v28, v29, v30, v31, v36, v40, v41[0]);
      v32 = v37;
      if (!result)
      {
        v32 = 0;
      }

      v33 = result ^ 1;
    }

    else
    {
      result = sub_237A286E0(v41);
      v32 = 0;
      v33 = 1;
    }

    *a2 = v24;
    *(a2 + 8) = v32;
    *(a2 + 16) = v33;
    goto LABEL_10;
  }

LABEL_24:

LABEL_25:
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 18) = 1;
  return result;
}

Swift::tuple_ratio_Double_seed_Int __swiftcall MLSplitStrategy.resolve(count:)(Swift::Int count)
{
  if (*(v1 + 17))
  {
    if (count >= 50)
    {
      v2 = dbl_237C0CE20[count < 0xC8];
    }

    else
    {
      v2 = 0.0;
    }

    v3 = 1;
  }

  else
  {
    v2 = *v1;
    if (*(v1 + 16))
    {
      v6 = 0;
      MEMORY[0x2383DD970](&v6, 8);
      v3 = v6;
    }

    else
    {
      v3 = *(v1 + 8);
    }
  }

  v4 = v2;
  result.ratio = v4;
  result.seed = v3;
  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MLSplitStrategy(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 18))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MLSplitStrategy(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 18) = v3;
  return result;
}

uint64_t sub_237A28690(uint64_t a1)
{
  if (*(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_237A286AC(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 17) = v2;
  return result;
}

uint64_t sub_237A286E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A998, &unk_237C0C100);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_0_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{

  return swift_dynamicCast();
}

uint64_t sub_237A28768@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v40 = sub_237C075FC();
  MEMORY[0x28223BE20](v40);
  v47 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B4B0, &qword_237C0CFB8);
  MEMORY[0x28223BE20](v4 - 8);
  v39 = &v39 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B410, &qword_237C0CCC8);
  MEMORY[0x28223BE20](v6 - 8);
  v45 = &v39 - v7;
  v43 = sub_237C0610C();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v39 - v14;
  v16 = sub_237C0683C();
  OUTLINED_FUNCTION_0();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v39 - v23;
  sub_237C0634C();
  sub_237C0679C();
  v25 = *(v18 + 8);
  v25(v24, v16);
  v26 = sub_237C0612C();
  v27 = v9 + 8;
  v28 = *(v9 + 8);
  v41 = v27;
  v42 = v26;
  v29 = v15;
  v30 = v16;
  v31 = v43;
  v28(v29, v43);
  sub_237C0634C();
  sub_237C0679C();
  v44 = v25;
  v48 = v18 + 8;
  v25(v21, v30);
  sub_237C0612C();
  v28(v12, v31);
  v32 = v45;
  sub_237C078AC();
  sub_237C0631C();
  if (__swift_getEnumTagSinglePayload(v32, 1, v30) == 1)
  {
    sub_237A28BFC(v32);
    sub_237C078EC();
    v33 = v44;
  }

  else
  {
    sub_237C067EC();
    v34 = v32;
    v35 = v44;
    v44(v34, v30);
    sub_237C078EC();
    v36 = v39;
    sub_237C0760C();
    __swift_storeEnumTagSinglePayload(v36, 0, 1, v40);
    sub_237C078DC();
    v33 = v35;
  }

  sub_237C0634C();
  sub_237C067EC();
  v33(v24, v30);
  sub_237C0760C();
  sub_237C078FC();
  v37 = sub_237C0638C();
  return (*(*(v37 - 8) + 8))(a1, v37);
}

uint64_t sub_237A28BFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B410, &qword_237C0CCC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_237A28C78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_237C05DBC();
  OUTLINED_FUNCTION_135();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9A0, &qword_237C0BF60);
  OUTLINED_FUNCTION_135();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 24) + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_237A28D88(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_237C05DBC();
  OUTLINED_FUNCTION_135();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9A0, &qword_237C0BF60);
    OUTLINED_FUNCTION_135();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t _s20PersistentParametersVMa_1(uint64_t a1)
{
  result = qword_27DE9B4B8;
  if (!qword_27DE9B4B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_237A28ECC(uint64_t a1)
{
  sub_237C05DBC();
  if (v1 <= 0x3F)
  {
    sub_2379FD4E8(319);
    if (v2 <= 0x3F)
    {
      sub_2379FC328();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_237A28F78@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v187 = a1;
  v192[4] = *MEMORY[0x277D85DE8];
  v170 = sub_237C05FAC();
  OUTLINED_FUNCTION_0();
  v178 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_21_3(&v151 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_237C05E5C();
  v7 = OUTLINED_FUNCTION_20(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_58();
  v165 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B4C8, &qword_237C0CFF8);
  v11 = OUTLINED_FUNCTION_20(v10);
  MEMORY[0x28223BE20](v11);
  v180 = (&v151 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9A0, &qword_237C0BF60);
  v14 = OUTLINED_FUNCTION_20(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_21_3(v17);
  v18 = sub_237C05DBC();
  OUTLINED_FUNCTION_0();
  v173 = v19;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_58();
  v24 = OUTLINED_FUNCTION_21_3(v23);
  v182 = type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData(v24);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_21_3(v28);
  sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v185 = v30;
  v186 = v29;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v32);
  v34 = &v151 - v33;
  MEMORY[0x28223BE20](v35);
  v37 = (&v151 - v36);
  MEMORY[0x28223BE20](v38);
  v40 = &v151 - v39;
  MEMORY[0x28223BE20](v41);
  v43 = &v151 - v42;
  MEMORY[0x28223BE20](v44);
  v46 = &v151 - v45;
  v47 = _s20PersistentParametersVMa_1(0);
  v48 = *(v47 + 20);
  v184 = a2;
  v181 = v18;
  __swift_storeEnumTagSinglePayload(a2 + v48, 1, 1, v18);
  v49 = v187;
  sub_237C05A2C();
  v50 = v183;
  v51 = sub_237C05B1C();
  v183 = v50;
  if (v50)
  {
    v53 = v186;
    v54 = *(v185 + 8);
    v54(v49, v186);
    v54(v46, v53);
    v55 = v184;
    return sub_2379D9054(v55 + v48, &qword_27DE9A9A0, &qword_237C0BF60);
  }

  v156 = v37;
  v155 = v34;
  v157 = v40;
  v158 = v43;
  v163 = v47;
  v162 = v48;
  v56 = v185;
  v57 = v186;
  v58 = *(v185 + 8);
  v59 = v51;
  v60 = v52;
  v58(v46, v186);
  v61 = objc_opt_self();
  v62 = sub_237C05B6C();
  *&v190 = 0;
  v63 = [v61 propertyListWithData:v62 options:0 format:0 error:&v190];

  v64 = v190;
  if (!v63)
  {
    v122 = v64;
    sub_237C0593C();

    swift_willThrow();
    sub_2379E86D4(v59, v60);
    v58(v187, v57);
LABEL_25:
    v55 = v184;
    v48 = v162;
    return sub_2379D9054(v55 + v48, &qword_27DE9A9A0, &qword_237C0BF60);
  }

  v159 = v59;
  v160 = v60;
  v161 = v58;
  sub_237C08DFC();
  swift_unknownObjectRelease();
  sub_2379FED88(v192, &v190);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE58, &unk_237C0C6F0);
  if ((OUTLINED_FUNCTION_3_13(v65, v66, v67, v65) & 1) == 0)
  {
    sub_2379E8AF0();
    swift_allocError();
    OUTLINED_FUNCTION_18_4(v123, 0xD000000000000037);
    OUTLINED_FUNCTION_5_10();
    v124 = OUTLINED_FUNCTION_19_7();
    v125(v124);
    __swift_destroy_boxed_opaque_existential_1(v192);
    goto LABEL_25;
  }

  v68 = v188;
  sub_237AC9A74(v188, &v190, 0x746567726174, 0xE600000000000000);
  if (!v191)
  {

    sub_2379D9054(&v190, &qword_27DE9A998, &unk_237C0C100);
    v55 = v184;
LABEL_33:
    sub_2379E8AF0();
    swift_allocError();
    OUTLINED_FUNCTION_18_4(v126, 0xD000000000000034);
    OUTLINED_FUNCTION_5_10();
    v127 = OUTLINED_FUNCTION_19_7();
    v128(v127);
    __swift_destroy_boxed_opaque_existential_1(v192);
    v48 = v162;
    return sub_2379D9054(v55 + v48, &qword_27DE9A9A0, &qword_237C0BF60);
  }

  if ((OUTLINED_FUNCTION_3_13(v69, v70, v71, MEMORY[0x277D837D0]) & 1) == 0)
  {

LABEL_32:
    v55 = v184;
    goto LABEL_33;
  }

  v73 = v188;
  v72 = v189;
  v74 = OUTLINED_FUNCTION_12_8();
  sub_237AC9A74(v68, v76, v74, v75);
  if (!v191)
  {
LABEL_29:

    sub_2379D9054(&v190, &qword_27DE9A998, &unk_237C0C100);
    goto LABEL_32;
  }

  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE60, &qword_237C0D000);
  if ((OUTLINED_FUNCTION_3_13(v77, v78, v79, v77) & 1) == 0)
  {
LABEL_31:

    goto LABEL_32;
  }

  v153 = v73;
  v80 = v188;
  sub_237AC9A74(v68, &v190, 0x617265744978616DLL, 0xED0000736E6F6974);
  if (!v191)
  {
LABEL_28:

    goto LABEL_29;
  }

  v154 = v80;
  if ((OUTLINED_FUNCTION_3_13(v81, v82, v83, MEMORY[0x277D83B88]) & 1) == 0)
  {
    goto LABEL_30;
  }

  v152 = v72;
  v151 = v188;
  sub_237AC9A74(v68, &v190, 0x746C616E6550316CLL, 0xE900000000000079);
  if (!v191)
  {
    goto LABEL_35;
  }

  if ((OUTLINED_FUNCTION_3_13(v84, v85, v86, MEMORY[0x277D839F8]) & 1) == 0)
  {
    OUTLINED_FUNCTION_9_7();

    OUTLINED_FUNCTION_15_6();
    goto LABEL_31;
  }

  v87 = v188;
  sub_237AC9A74(v68, &v190, 0x746C616E6550326CLL, 0xE900000000000079);
  if (!v191)
  {
LABEL_35:
    OUTLINED_FUNCTION_9_7();

    OUTLINED_FUNCTION_15_6();
    goto LABEL_29;
  }

  if ((OUTLINED_FUNCTION_3_13(v88, v89, v90, MEMORY[0x277D839F8]) & 1) == 0)
  {
LABEL_30:
    OUTLINED_FUNCTION_9_7();

    goto LABEL_31;
  }

  v91 = v188;
  sub_237AC9A74(v68, &v190, 0x657A695370657473, 0xE800000000000000);
  if (!v191)
  {
    OUTLINED_FUNCTION_9_7();
    goto LABEL_28;
  }

  if ((OUTLINED_FUNCTION_3_13(v92, v93, v94, MEMORY[0x277D839F8]) & 1) == 0)
  {
    goto LABEL_30;
  }

  v95 = v56;
  v96 = v188;
  sub_237AC9A74(v68, &v190, 0xD000000000000014, 0x8000000237C18450);
  if (!v191)
  {
    OUTLINED_FUNCTION_9_7();

    sub_2379D9054(&v190, &qword_27DE9A998, &unk_237C0C100);
    v55 = v184;
    goto LABEL_33;
  }

  if ((OUTLINED_FUNCTION_3_13(v97, v98, v99, MEMORY[0x277D839F8]) & 1) == 0)
  {
    OUTLINED_FUNCTION_9_7();

    OUTLINED_FUNCTION_15_6();

LABEL_42:

    goto LABEL_43;
  }

  v100 = v188;
  v101 = OUTLINED_FUNCTION_12_8();
  sub_237AC9A74(v68, v103, v101, v102);

  if (!v191)
  {
    OUTLINED_FUNCTION_9_7();

    OUTLINED_FUNCTION_15_6();

    sub_2379D9054(&v190, &qword_27DE9A998, &unk_237C0C100);
LABEL_43:
    v55 = v184;
    goto LABEL_33;
  }

  if ((OUTLINED_FUNCTION_3_13(v104, v105, v106, MEMORY[0x277D839B0]) & 1) == 0)
  {
    OUTLINED_FUNCTION_9_7();

    OUTLINED_FUNCTION_15_6();
    goto LABEL_42;
  }

  v107 = v188;
  v108 = v163;
  v109 = v184;
  v110 = (v184 + *(v163 + 24));
  v111 = v152;
  *v110 = v153;
  v110[1] = v111;
  *(v109 + *(v108 + 28)) = v154;
  v112 = v174;
  *v174 = 0;
  *(v112 + 8) = 0;
  *(v112 + 16) = 256;
  v113 = v182;
  swift_storeEnumTagMultiPayload();
  v114 = v109 + *(v108 + 32);
  *(v114 + 8) = 0u;
  *(v114 + 24) = 0u;
  *v114 = 10;
  *(v114 + 40) = xmmword_237C0CFC0;
  *(v114 + 56) = xmmword_237C0CFD0;
  *(v114 + 72) = 1;
  v115 = v175;
  sub_237A2A8D8(v112, v175);
  v191 = v113;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v190);
  sub_237A2A93C(v115, boxed_opaque_existential_0);
  sub_237A2A9A0(v112);
  v175 = v114 + 8;
  sub_237A2A9FC(&v190, v114 + 8, &qword_27DE9A998, &unk_237C0C100);
  *v114 = v151;
  *(v114 + 40) = v87;
  *(v114 + 48) = v91;
  *(v114 + 56) = v96;
  *(v114 + 64) = v100;
  *(v114 + 72) = v107;
  v117 = v158;
  sub_237C05A2C();
  OUTLINED_FUNCTION_9_3();
  sub_237C05A2C();
  v118 = *(v95 + 16);
  v119 = v156;
  v185 = v95 + 16;
  v118(v156, v117, v186);
  OUTLINED_FUNCTION_4_6();
  v120 = v183;
  sub_237C05CDC();
  v183 = v120;
  if (v120)
  {
    v118(v168, v158, v186);
    sub_2379FEDE4(MEMORY[0x277D84F90]);
    v119 = sub_237B9068C(&unk_284ABFD58);
    sub_237B9068C(&unk_284ABFE18);
    sub_237B9068C(&unk_284ABFE78);
    v121 = *(v178 + 104);
    LODWORD(v179) = *MEMORY[0x277CE1918];
    v178 += 104;
    v177 = v121;
    v121(v171);
    sub_237C05E4C();
    OUTLINED_FUNCTION_4_6();
    sub_237C05CAC();
    v133 = OUTLINED_FUNCTION_21_7();
    v119(v133, v169, v181);
    v118(v164, v157, v186);
    v185 = sub_2379FEDE4(MEMORY[0x277D84F90]);
    sub_237B9068C(&unk_284ABFD58);
    sub_237B9068C(&unk_284ABFE18);
    sub_237B9068C(&unk_284ABFE78);
    v177(v171, v179, v170);
    sub_237C05E4C();
    OUTLINED_FUNCTION_4_6();
    sub_237C05CAC();

    v134 = v167;
    __swift_storeEnumTagSinglePayload(v167, 0, 1, v181);
    v179 = v134;
  }

  else
  {
    v130 = OUTLINED_FUNCTION_21_7();
    v119(v130, v177, v181);
    v118(v155, v157, v186);
    OUTLINED_FUNCTION_4_6();
    v131 = v183;
    sub_237C05CDC();
    if (v131)
    {

      v132 = 1;
    }

    else
    {
      v132 = 0;
    }

    __swift_storeEnumTagSinglePayload(v179, v132, 1, v181);
  }

  v135 = v184;
  v136 = v162;
  sub_237A2A9FC(v179, v184 + v162, &qword_27DE9A9A0, &qword_237C0BF60);
  v137 = v135 + v136;
  v138 = v172;
  sub_237A2AA5C(v137, v172);
  v139 = 1;
  if (__swift_getEnumTagSinglePayload(v138, 1, v181) != 1)
  {
    v140 = v173;
    v141 = v166;
    v142 = v181;
    v119(v166, v172, v181);
    (*(v140 + 16))(v180, v141, v142);
    swift_storeEnumTagMultiPayload();
    (*(v140 + 8))(v141, v142);
    v139 = 0;
  }

  v143 = v180;
  v144 = v139;
  v145 = v182;
  __swift_storeEnumTagSinglePayload(v180, v144, 1, v182);
  if (__swift_getEnumTagSinglePayload(v143, 1, v145) == 1)
  {
    v146 = v182;
    swift_storeEnumTagMultiPayload();
    if (__swift_getEnumTagSinglePayload(v180, 1, v146) != 1)
    {
      sub_2379D9054(v180, &qword_27DE9B4C8, &qword_237C0CFF8);
    }
  }

  else
  {
    sub_237A2A93C(v180, v176);
  }

  v191 = v182;
  v147 = __swift_allocate_boxed_opaque_existential_0(&v190);
  sub_237A2A93C(v176, v147);
  OUTLINED_FUNCTION_5_10();
  v148 = OUTLINED_FUNCTION_17_7();
  v143(v148);
  v149 = OUTLINED_FUNCTION_18_7(&v188);
  v143(v149);
  v150 = OUTLINED_FUNCTION_18_7(&v189);
  v143(v150);
  __swift_destroy_boxed_opaque_existential_1(v192);
  return sub_237A2A9FC(&v190, v175, &qword_27DE9A998, &unk_237C0C100);
}

uint64_t sub_237A2A204(uint64_t a1)
{
  v2 = v1;
  v67 = a1;
  v69[53] = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9A0, &qword_237C0BF60);
  v4 = OUTLINED_FUNCTION_20(v3);
  MEMORY[0x28223BE20](v4);
  v60 = &v56 - v5;
  sub_237C05E7C();
  OUTLINED_FUNCTION_0();
  v63 = v6;
  v64 = v7;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14_0();
  v59 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_58();
  v62 = v10;
  v68 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v66 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_14_0();
  v58 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_138();
  v61 = v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v56 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC48, &qword_237C0C120);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237C0C6B0;
  *(inited + 32) = 0x746567726174;
  *(inited + 40) = 0xE600000000000000;
  v20 = _s20PersistentParametersVMa_1(0);
  v21 = (v2 + v20[6]);
  v22 = v21[1];
  v23 = MEMORY[0x277D837D0];
  *(inited + 48) = *v21;
  *(inited + 56) = v22;
  *(inited + 72) = v23;
  *(inited + 80) = 0xD000000000000010;
  *(inited + 88) = 0x8000000237C17DC0;
  v24 = *(v2 + v20[7]);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE60, &qword_237C0D000);
  *(inited + 96) = v24;
  *(inited + 120) = v25;
  strcpy((inited + 128), "maxIterations");
  *(inited + 142) = -4864;
  v26 = v2 + v20[8];
  v27 = MEMORY[0x277D83B88];
  *(inited + 144) = *v26;
  *(inited + 168) = v27;
  *(inited + 176) = 0x746C616E6550316CLL;
  *(inited + 184) = 0xE900000000000079;
  v28 = MEMORY[0x277D839F8];
  *(inited + 192) = *(v26 + 40);
  *(inited + 216) = v28;
  *(inited + 224) = 0x746C616E6550326CLL;
  *(inited + 232) = 0xE900000000000079;
  *(inited + 240) = *(v26 + 48);
  *(inited + 264) = v28;
  *(inited + 272) = 0x657A695370657473;
  *(inited + 280) = 0xE800000000000000;
  *(inited + 288) = *(v26 + 56);
  *(inited + 312) = v28;
  *(inited + 320) = 0xD000000000000014;
  *(inited + 328) = 0x8000000237C18450;
  *(inited + 336) = *(v26 + 64);
  *(inited + 360) = v28;
  *(inited + 368) = 0xD000000000000010;
  *(inited + 376) = 0x8000000237C18470;
  LOBYTE(v26) = *(v26 + 72);
  *(inited + 408) = MEMORY[0x277D839B0];
  *(inited + 384) = v26;

  OUTLINED_FUNCTION_23_6();
  sub_237C085AC();
  v29 = objc_opt_self();
  OUTLINED_FUNCTION_23_6();
  v30 = sub_237C0855C();

  v69[0] = 0;
  v31 = [v29 dataWithPropertyList:v30 format:200 options:0 error:v69];

  v32 = v69[0];
  if (v31)
  {
    v33 = sub_237C05B7C();
    v35 = v34;

    sub_237C05A2C();
    v36 = v65;
    sub_237C05B9C();
    if (v36)
    {
      (*(v66 + 8))(v18, v68);
      return sub_2379E86D4(v33, v35);
    }

    else
    {
      v65 = v35;
      v66 = *(v66 + 8);
      (v66)(v18, v68);
      v39 = v61;
      sub_237C05A2C();
      OUTLINED_FUNCTION_10_3();
      v40 = v62;
      OUTLINED_FUNCTION_4_6();
      OUTLINED_FUNCTION_12_4(v41, v42, v43, v44);
      v57 = sub_237C05DBC();
      sub_237C05C6C();
      v45 = v64 + 8;
      v62 = *(v64 + 8);
      v62(v40, v63);
      v46 = v39;
      v47 = v66;
      (v66)(v46, v68);
      v48 = v2 + v20[5];
      v49 = v60;
      sub_237A2AA5C(v48, v60);
      if (__swift_getEnumTagSinglePayload(v49, 1, v57) == 1)
      {
        sub_2379E86D4(v33, v65);
        return sub_2379D9054(v49, &qword_27DE9A9A0, &qword_237C0BF60);
      }

      else
      {
        v64 = v45;
        OUTLINED_FUNCTION_9_3();
        v50 = v58;
        sub_237C05A2C();
        OUTLINED_FUNCTION_10_3();
        v51 = v59;
        OUTLINED_FUNCTION_4_6();
        OUTLINED_FUNCTION_12_4(v52, v53, v54, v55);
        sub_237C05C6C();
        sub_2379E86D4(v33, v65);
        v62(v51, v63);
        v47(v50, v68);
        return (*(*(v57 - 8) + 8))(v49);
      }
    }
  }

  else
  {
    v38 = v32;
    sub_237C0593C();

    return swift_willThrow();
  }
}

uint64_t sub_237A2A8D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237A2A93C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_237A2A9A0(uint64_t a1)
{
  v2 = type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_237A2A9FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_4();
  (*(v6 + 40))(a2, a1);
  return a2;
}

uint64_t sub_237A2AA5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9A0, &qword_237C0BF60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_3_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_5_10()
{
  v2 = *(v0 - 448);
  v3 = *(v0 - 440);

  return sub_2379E86D4(v2, v3);
}

id sub_237A2AB98(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  v3 = MEMORY[0x277CD8858];
  if (v1)
  {
    v20 = MEMORY[0x277D84F90];
    sub_237AC8D94();
    v2 = v20;
    v5 = objc_opt_self();
    v6 = *v3;
    v7 = a1 + 40;
    do
    {

      v8 = sub_237C086BC();
      v9 = [v5 dominantLanguageForString_];

      if (!v9)
      {
        v9 = v6;
      }

      v10 = *(v20 + 16);
      if (v10 >= *(v20 + 24) >> 1)
      {
        sub_237AC8D94();
      }

      *(v20 + 16) = v10 + 1;
      *(v20 + 8 * v10 + 32) = v9;
      v7 += 16;
      --v1;
    }

    while (v1);
  }

  v11 = sub_237A2ADB0(v2);

  if (v11)
  {
    v12 = sub_237C086EC();
    v14 = v13;
    if (v12 == sub_237C086EC() && v14 == v15)
    {
    }

    else
    {
      v17 = sub_237C0929C();

      if ((v17 & 1) == 0)
      {
        return v11;
      }
    }
  }

  sub_2379E8AF0();
  swift_allocError();
  OUTLINED_FUNCTION_0_14(v18, 30);

  return v11;
}

id sub_237A2ADB0(uint64_t a1)
{
  type metadata accessor for NLLanguage(0);
  sub_237A2B238();
  v2 = sub_237C085AC();
  v3 = *(a1 + 16);
  v4 = (a1 + 32);
  if (v3)
  {
    while (1)
    {
      v5 = *v4;
      swift_isUniquelyReferenced_nonNull_native();
      v6 = sub_237ACDA84();
      if (__OFADD__(*(v2 + 16), (v7 & 1) == 0))
      {
        break;
      }

      v8 = v6;
      v9 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B4D0, &qword_237C0D008);
      if (sub_237C090AC())
      {
        v10 = sub_237ACDA84();
        if ((v9 & 1) != (v11 & 1))
        {
          goto LABEL_34;
        }

        v8 = v10;
      }

      if ((v9 & 1) == 0)
      {
        *(v2 + 8 * (v8 >> 6) + 64) |= 1 << v8;
        *(*(v2 + 48) + 8 * v8) = v5;
        *(*(v2 + 56) + 8 * v8) = 0;
        v12 = *(v2 + 16);
        v13 = __OFADD__(v12, 1);
        v14 = v12 + 1;
        if (v13)
        {
          goto LABEL_33;
        }

        *(v2 + 16) = v14;
        v15 = v5;
      }

      v16 = *(v2 + 56);
      v17 = *(v16 + 8 * v8);
      v13 = __OFADD__(v17, 1);
      v18 = v17 + 1;
      if (v13)
      {
        goto LABEL_31;
      }

      *(v16 + 8 * v8) = v18;

      ++v4;
      if (!--v3)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {
LABEL_11:
    v19 = 1 << *(v2 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v2 + 64);
    if (!v21)
    {
      v26 = 0;
      v25 = (v19 + 63) >> 6;
      while (1)
      {
        v22 = v21 + 1;
        if (v21 + 1 >= v25)
        {
          break;
        }

        v27 = *(v2 + 8 * v21 + 72);
        v26 += 64;
        ++v21;
        if (v27)
        {
          v24 = (v27 - 1) & v27;
          v23 = __clz(__rbit64(v27)) + v26;
          goto LABEL_19;
        }
      }

      return 0;
    }

    v22 = 0;
    v23 = __clz(__rbit64(v21));
    v24 = (v21 - 1) & v21;
    v25 = (v19 + 63) >> 6;
LABEL_19:
    v28 = *(*(v2 + 56) + 8 * v23);
    v29 = *(*(v2 + 48) + 8 * v23);

    while (v24)
    {
LABEL_25:
      v31 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
      v32 = v31 | (v22 << 6);
      v33 = *(*(v2 + 56) + 8 * v32);
      if (v28 < v33)
      {
        v34 = *(*(v2 + 48) + 8 * v32);

        v29 = v34;
        v28 = v33;
      }
    }

    while (1)
    {
      v30 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v30 >= v25)
      {

        return v29;
      }

      v24 = *(v2 + 64 + 8 * v30);
      ++v22;
      if (v24)
      {
        v22 = v30;
        goto LABEL_25;
      }
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_237C0932C();
  __break(1u);
  return result;
}

id sub_237A2B084(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();
  result = [v4 assetsAvailableForEmbeddingType:a1 language:a2];
  if (!result)
  {
    v8[4] = nullsub_1;
    v8[5] = 0;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 1107296256;
    v8[2] = sub_237A2B1A8;
    v8[3] = &block_descriptor_0;
    v6 = _Block_copy(v8);
    [v4 requestAssetsForEmbeddingType:a1 language:a2 withCompletionHandler:v6];
    _Block_release(v6);
    sub_2379E8AF0();
    swift_allocError();
    return OUTLINED_FUNCTION_0_14(v7, 128);
  }

  return result;
}

void sub_237A2B1A8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_237A2B238()
{
  result = qword_27DE9A7B0;
  if (!qword_27DE9A7B0)
  {
    type metadata accessor for NLLanguage(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9A7B0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_14@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a1 = a2 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
  *(a1 + 8) = v2;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;

  return swift_willThrow();
}

void sub_237A2B2B8(int a1@<W0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 4) = a2;
  *(a3 + 8) = 0u;
  OUTLINED_FUNCTION_0_15(a3, 0);
}

uint64_t sub_237A2B2C8()
{
  v1 = *(v0 + 4);
  if (v1 >= 4)
  {
    return 3;
  }

  else
  {
    return 0x2010003u >> (8 * v1);
  }
}

void sub_237A2B2EC(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    *a4 = -559038737;
    *(a4 + 4) = result + 1;
    *(a4 + 8) = a3;
    *(a4 + 16) = a2;
    OUTLINED_FUNCTION_0_15(a4, 0);
  }
}

uint64_t sub_237A2B314(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_237A2B334(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 64) = v3;
  return result;
}

void OUTLINED_FUNCTION_0_15(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  *(a1 + 24) = a2;
  *(a1 + 40) = a2;
  *(a1 + 56) = 0;
}

void *sub_237A2B3A8@<X0>(void *a1@<X8>)
{
  __src[0] = xmmword_237C0D040;
  *&__src[1] = 0x200000000;
  *(&__src[1] + 8) = 0u;
  *(&__src[2] + 8) = 0u;
  *(&__src[3] + 8) = 0u;
  *(&__src[4] + 1) = 0;
  *&__src[5] = MEMORY[0x277D84F90];
  v4[0] = __src[1];
  v4[1] = __src[2];
  v4[2] = __src[3];
  v4[3] = 0uLL;
  sub_237BF51B4(64, 0);
  sub_237BFF5DC(__src, v4);
  return memcpy(a1, __src, 0x58uLL);
}

uint64_t sub_237A2B450(uint64_t a1)
{
  v2 = v1;
  result = MEMORY[0x2383D9720](*v1, v1[1]);
  v5 = *(a1 + 16);
  if (v5 >> 61)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = result;
  v7 = 4 * v5;
  v8 = sub_237A2B950(4 * v5, 64);
  result = MEMORY[0x2383D9720](*v2, v2[1]);
  v9 = result + 64;
  if (__OFADD__(result, 64))
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v9 < 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_237A2B2EC(1, v9, v7, v19);
  sub_237A9D164();
  v10 = *(v2[10] + 16);
  result = sub_237A9D2F8(v10);
  v11 = v2[10];
  *(v11 + 16) = v10 + 1;
  v12 = (v11 + (v10 << 6));
  v13 = v19[1];
  v12[2] = v19[0];
  v12[3] = v13;
  v14 = v19[3];
  v12[4] = v19[2];
  v12[5] = v14;
  v2[10] = v11;
  LODWORD(v11) = *(v2 + 4);
  v15 = __CFADD__(v11, 1);
  v16 = v11 + 1;
  if (!v15)
  {
    *(v2 + 4) = v16;
    v17 = *(v2 + 2);
    v20[0] = *(v2 + 1);
    v20[1] = v17;
    v18 = *(v2 + 4);
    v20[2] = *(v2 + 3);
    v20[3] = v18;
    sub_237A2B648(v20, v2);
    sub_237BF55A4(v19);
    sub_237BF564C(a1, v2, v8);
    return v6;
  }

LABEL_9:
  __break(1u);
  return result;
}

unint64_t sub_237A2B584(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = v1[10];
  if (*(v2 + 16) <= result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v3 = (v2 + (result << 6));
  v4 = v3[3];
  v7[0] = v3[2];
  v7[1] = v4;
  v5 = v3[5];
  v7[2] = v3[4];
  v7[3] = v5;
  if (sub_237A2B2C8() == 1)
  {
    return sub_237A2B7A0(*v1, v1[1], v7);
  }

  sub_237A01064();
  swift_allocError();
  *v6 = 2;
  return swift_willThrow();
}

uint64_t *sub_237A2B648(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  switch(v3 >> 62)
  {
    case 1uLL:
      v6 = __OFSUB__(HIDWORD(v2), v2);
      LODWORD(v2) = HIDWORD(v2) - v2;
      if (v6)
      {
        __break(1u);
LABEL_10:
        __break(1u);
        JUMPOUT(0x237A2B6F8);
      }

      v2 = v2;
LABEL_6:
      if (v2 <= 63)
      {
LABEL_7:
        sub_237BF51B4(64, 0);
      }

      return sub_237BFF5DC(a2, a1);
    case 2uLL:
      v9 = v2 + 16;
      v7 = *(v2 + 16);
      v8 = *(v9 + 8);
      v6 = __OFSUB__(v8, v7);
      v2 = v8 - v7;
      if (!v6)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    case 3uLL:
      goto LABEL_7;
    default:
      v2 = BYTE6(v3);
      goto LABEL_6;
  }
}

char *sub_237A2B708@<X0>(char *result@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  if (result)
  {
    v4 = *(a2 + 16);
    if (v4 < 0)
    {
LABEL_11:
      __break(1u);
      return result;
    }

    v5 = &result[v4];
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a2 + 8);
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v6 >= 4)
  {
    v7 = sub_237BC2754();
    result = memcpy(v7 + 4, v5, v6 & 0x7FFFFFFFFFFFFFFCLL);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  *a3 = v7;
  return result;
}

void *sub_237A2B7A0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  switch(a2 >> 62)
  {
    case 1uLL:
      v12 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        goto LABEL_15;
      }

      a1 = a1;
      v9 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v10 = v12;
LABEL_9:
      v11 = sub_237A00E90(a1, v10, v9, a3);
LABEL_10:
      if (!v4)
      {
        v3 = v11;
      }

      break;
    case 2uLL:
      v8 = *(a1 + 24);
      v9 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      a1 = *(a1 + 16);
      v10 = v8;
      goto LABEL_9;
    case 3uLL:
      v11 = sub_237A2BB04(0, 0, a3);
      goto LABEL_10;
    default:
      v14 = a1;
      v15 = a2;
      v16 = BYTE2(a2);
      v17 = BYTE3(a2);
      v18 = BYTE4(a2);
      v7 = *(a3 + 8);
      v6 = *(a3 + 16);
      v19 = BYTE5(a2);
      if (((v7 | v6) & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_15:
        __break(1u);
      }

      if (v7 >= 4)
      {
        v3 = sub_237BC2754();
        memcpy(v3 + 4, &v14 + v6, v7 & 0xFFFFFFFFFFFFFFFCLL);
      }

      else
      {
        v3 = MEMORY[0x277D84F90];
      }

      break;
  }

  return v3;
}

uint64_t sub_237A2B950(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (!a2)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (result == 0x8000000000000001 && a2 == -1)
  {
    goto LABEL_14;
  }

  v3 = (result - 1) / a2;
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    goto LABEL_12;
  }

  result = a2 * v5;
  if ((a2 * v5) >> 64 != (a2 * v5) >> 63)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
  }

  return result;
}

uint64_t sub_237A2B9A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[0] = a1;
  v9[3] = MEMORY[0x277D838B0];
  v9[4] = MEMORY[0x277CC9C18];
  v9[1] = a2;
  __swift_project_boxed_opaque_existential_1(v9, MEMORY[0x277D838B0]);
  sub_237C05B5C();
  result = __swift_destroy_boxed_opaque_existential_1(v9);
  if (a1)
  {
    v8 = a2 - a1;
    if (a2 - a1 >= a4)
    {
      return result;
    }
  }

  else
  {
    if (a4 < 1)
    {
      return result;
    }

    v8 = 0;
  }

  result = a4 - v8;
  if (__OFSUB__(a4, v8))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (result < 0)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  return sub_237BF51B4(result, 0);
}

uint64_t sub_237A2BA98(unsigned __int8 a1)
{
  sub_237C093CC();
  MEMORY[0x2383DCF70](a1);
  return sub_237C0940C();
}

void *sub_237A2BB04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v9 = WORD2(a2);
  v8 = a2;
  v4 = *(a3 + 8);
  v3 = *(a3 + 16);
  if (((v4 | v3) & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  if (v4 < 4)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = sub_237BC2754();
  memcpy(v5 + 4, &v7 + v3, v4 & 0xFFFFFFFFFFFFFFFCLL);
  return v5;
}

uint64_t getEnumTagSinglePayload for BlobsFileError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}