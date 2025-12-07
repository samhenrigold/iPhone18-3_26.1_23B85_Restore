uint64_t sub_2612E6690(uint64_t result, uint64_t a2)
{
  if (result < 1)
  {
LABEL_17:
    __break(1u);
  }

  else
  {
    v3 = result;
    v4 = 1;
    result = sub_26124C5D0(0, 1, 1, MEMORY[0x277D84F90]);
    v5 = result;
    while (1)
    {
      v6 = (a2 % 10) | (16 * (a2 / 10 % 10));
      if ((v6 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      if (v6 > 0xFF)
      {
        goto LABEL_15;
      }

      v8 = *(v5 + 16);
      v7 = *(v5 + 24);
      if (v8 >= v7 >> 1)
      {
        result = sub_26124C5D0((v7 > 1), v8 + 1, 1, v5);
        v5 = result;
      }

      *(v5 + 16) = v8 + 1;
      *(v5 + v8 + 32) = v6;
      if (v3 == v4)
      {
        break;
      }

      a2 /= 100;
      if (__OFADD__(v4++, 1))
      {
        goto LABEL_16;
      }
    }

    return sub_2612E6324(v5);
  }

  return result;
}

uint64_t sub_2612E67DC(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{

  sub_2612E71D8(a3, a4, a1, a2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F3E0, "R7");
  sub_261265DF4();
  v8 = sub_2613A184C();

  return v8;
}

uint64_t sub_2612E6894(uint64_t a1, unint64_t a2)
{
  result = sub_2612C94BC(a1, a2);
  if (!v5)
  {
    v9 = a1;
    v10 = a2;
    sub_26124C778(a1, a2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FBB0, &qword_2613A9C18);
    if (swift_dynamicCast())
    {
      sub_26124A200(v7, v11);
      __swift_project_boxed_opaque_existential_1(v11, v12);
      if (sub_2613A226C())
      {
        __swift_project_boxed_opaque_existential_1(v11, v12);
        sub_2613A225C();
        v6 = *&v7[0];
        __swift_destroy_boxed_opaque_existential_0Tm(v11);
        return v6;
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v11);
    }

    else
    {
      v8 = 0;
      memset(v7, 0, sizeof(v7));
      sub_26124C718(v7, &qword_27FE9FBB8, &unk_2613A9C20);
    }

    return sub_2612C8C38(a1, a2);
  }

  return result;
}

void sub_2612E69E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_2613A181C();

  swift_getWitnessTable();
  sub_2613A1AFC();
}

void *sub_2612E6AB8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F280, &unk_2613A42B0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - v6;
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v9 = result;
    v10 = v1;
    v11 = [v9 deviceIdentifierForVendor];
    if (v11)
    {
      v12 = v11;
      sub_26139F11C();

      v13 = sub_26139F13C();
      (*(*(v13 - 8) + 56))(v5, 0, 1, v13);
    }

    else
    {
      v13 = sub_26139F13C();
      (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
    }

    sub_2612E7658(v5, v7);
    sub_26139F13C();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v7, 1, v13) == 1)
    {

      sub_26124C718(v7, &qword_27FE9F280, &unk_2613A42B0);
      return 0;
    }

    else
    {
      v15 = sub_26139F0DC();

      (*(v14 + 8))(v7, v13);
      return v15;
    }
  }

  return result;
}

char *sub_2612E6CE4(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
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
      sub_26124C6C4(v7, v6);
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

    sub_26124C6C4(v7, v6);
    *v4 = xmmword_2613A3C90;
    sub_26124C6C4(0, 0xC000000000000000);
    v13 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v7)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_26139ED1C() && __OFSUB__(v7, sub_26139ED4C()))
      {
LABEL_26:
        __break(1u);
      }

      sub_26139ED5C();
      swift_allocObject();
      v14 = sub_26139ECFC();

      v12 = v14;
    }

    if (v13 >= v7)
    {

      v15 = sub_2612E70E4(v7, v7 >> 32, a1);

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

    sub_26124C6C4(v7, v6);
    v17 = v7;
    v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_2613A3C90;
    sub_26124C6C4(0, 0xC000000000000000);
    sub_26139EF9C();
    result = sub_2612E70E4(*(v17 + 2), *(v17 + 3), a1);
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

void *sub_2612E707C(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
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

char *sub_2612E70E4(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_26139ED1C();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_26139ED4C();
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

  v12 = sub_26139ED3C();
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

int8x16_t *sub_2612E7198@<X0>(int8x16_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, int8x16_t **a4@<X8>)
{
  result = sub_2612E7750(a1, a2, *a3);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_2612E71D8(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = *MEMORY[0x277D85DE8];
  v5 = a2 >> 62;
  v30 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v5)
    {
      v6 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v5 != 2)
  {
    return MEMORY[0x277D84F90];
  }

  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  v6 = v7 - v8;
  if (__OFSUB__(v7, v8))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_49;
    }

    v6 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v9 = MEMORY[0x277D84F90];
  if (v6)
  {
    v47 = MEMORY[0x277D84F90];
    sub_261265DD4(0, v6 & ~(v6 >> 63), 0);
    v10 = a1;
    if (v5)
    {
      if (v5 == 2)
      {
        v11 = *(a1 + 16);
      }

      else
      {
        v11 = a1;
      }
    }

    else
    {
      v11 = 0;
    }

    v34 = v11;
    if (v6 < 0)
    {
      goto LABEL_48;
    }

    v12 = 0;
    v9 = v47;
    v29 = &v35 + v11;
    v32 = v6;
    v33 = v5;
    do
    {
      if (v12 >= v6)
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
      }

      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_41;
      }

      v14 = v34 + v12;
      if (v5 == 2)
      {
        if (v14 < *(v10 + 16))
        {
          goto LABEL_43;
        }

        if (v14 >= *(v10 + 24))
        {
          goto LABEL_45;
        }

        v19 = sub_26139ED1C();
        if (!v19)
        {
          goto LABEL_51;
        }

        v16 = v19;
        v20 = sub_26139ED4C();
        v18 = v14 - v20;
        if (__OFSUB__(v14, v20))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v5 != 1)
        {
          if (v14 >= BYTE6(a2))
          {
            goto LABEL_42;
          }

          v35 = v10;
          v36 = BYTE2(v10);
          v37 = BYTE3(v10);
          v38 = v30;
          v39 = BYTE5(v10);
          v40 = BYTE6(v10);
          v41 = HIBYTE(v10);
          v42 = a2;
          v43 = BYTE2(a2);
          v44 = BYTE3(a2);
          v45 = BYTE4(a2);
          v46 = BYTE5(a2);
          v21 = v29[v12];
          goto LABEL_36;
        }

        if (v14 < a1 || v14 >= a1 >> 32)
        {
          goto LABEL_44;
        }

        v15 = sub_26139ED1C();
        if (!v15)
        {
          goto LABEL_50;
        }

        v16 = v15;
        v17 = sub_26139ED4C();
        v18 = v14 - v17;
        if (__OFSUB__(v14, v17))
        {
          goto LABEL_46;
        }
      }

      v21 = *(v16 + v18);
      v10 = a1;
LABEL_36:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F208, &qword_2613A4370);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_2613A4310;
      *(v22 + 56) = MEMORY[0x277D84B78];
      *(v22 + 64) = MEMORY[0x277D84BC0];
      *(v22 + 32) = v21;
      v23 = sub_2613A18EC();
      v25 = v24;
      v47 = v9;
      v5 = *(v9 + 16);
      v26 = *(v9 + 24);
      if (v5 >= v26 >> 1)
      {
        sub_261265DD4((v26 > 1), v5 + 1, 1);
        v10 = a1;
        v9 = v47;
      }

      *(v9 + 16) = v5 + 1;
      v27 = v9 + 16 * v5;
      *(v27 + 32) = v23;
      *(v27 + 40) = v25;
      ++v12;
      v6 = v32;
      LODWORD(v5) = v33;
    }

    while (v13 != v32);
  }

  return v9;
}

uint64_t sub_2612E7544(uint64_t a1, uint64_t a2)
{
  MEMORY[0x2666FFEA0](10, 0xE100000000000000);
  sub_2613A240C();
  MEMORY[0x2666FFEA0](2112032, 0xE300000000000000);
  sub_2613A240C();
  MEMORY[0x2666FFEA0](0, 0xE000000000000000);
}

uint64_t sub_2612E75F8(uint64_t a1)
{
  v3 = *(v1 + 40);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v3(a1, a1 + *(TupleTypeMetadata2 + 48));
}

uint64_t sub_2612E7658(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F280, &unk_2613A42B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_2612E76C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v9 = **(v3 + 16);
  v8[2] = &v9;
  result = sub_2612E707C(sub_2612E7730, v8, a1, a2);
  *a3 = result;
  a3[1] = v6;
  a3[2] = v7;
  return result;
}

int8x16_t *sub_2612E7750(int8x16_t *result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!result || !a2)
  {
    return a3;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    if (v4)
    {
      v5 = v4 - 1;
      if (v4 - 1 >= (a2 - 1))
      {
        v6 = a2 - 1;
      }

      else
      {
        v6 = v4 - 1;
      }

      v7 = v6 + 1;
      if (v7 <= 0x10)
      {
        goto LABEL_22;
      }

      if (v5 >= a2 - 1)
      {
        v5 = a2 - 1;
      }

      if (a3 + v4 + 32 > result && v4 - v5 + a3 + 31 < result->u64 + v5 + 1)
      {
LABEL_22:
        v10 = 1;
        v11 = result;
        v12 = *(a3 + 16);
      }

      else
      {
        v8 = v7 & 0xF;
        if ((v7 & 0xF) == 0)
        {
          v8 = 16;
        }

        v9 = v7 - v8;
        v10 = v7 - v8 + 1;
        v11 = (result + v7 - v8);
        v12 = v4 - v9;
        v13 = (v4 + a3 + 16);
        do
        {
          v14 = *v13--;
          v15 = vrev64q_s8(v14);
          *result++ = vextq_s8(v15, v15, 8uLL);
          v9 -= 16;
        }

        while (v9);
      }

      v16 = a2 - v10;
      do
      {
        v17 = v12 - 1;
        v11->i8[0] = *(a3 + 31 + v12);
        if (!v16)
        {
          break;
        }

        v11 = (v11 + 1);
        --v16;
        --v12;
      }

      while (v17);
    }

    return a3;
  }

  __break(1u);
  return result;
}

id sub_2612E785C(uint64_t a1)
{
  result = [objc_allocWithZone(type metadata accessor for Daemon()) init];
  qword_281451F60 = result;
  return result;
}

uint64_t *sub_2612E788C()
{
  if (qword_281451F58 != -1)
  {
    swift_once();
  }

  return &qword_281451F60;
}

id static Daemon.shared.getter()
{
  if (qword_281451F58 != -1)
  {
    swift_once();
  }

  v1 = qword_281451F60;

  return v1;
}

uint64_t sub_2612E7938()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v29 - v1;
  type metadata accessor for CardReaderAdapterFactory();
  v3 = sub_2612B4F54();
  (*(*v4 + 112))(v32, v3);

  v5 = v33;
  v6 = v34;
  __swift_project_boxed_opaque_existential_1(v32, v33);
  v7 = (*(v6 + 8))(v5, v6);
  v9 = v8;
  v11 = v10;
  __swift_destroy_boxed_opaque_existential_0Tm(v32);
  v12 = sub_26129B4AC();
  sub_26124AA44(v12, v2);
  v13 = sub_2613A124C();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v2, 1, v13) == 1)
  {
    sub_26124D0CC(v2);
  }

  else
  {

    v15 = sub_2613A122C();
    v16 = sub_2613A1D9C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v30 = v18;
      *v17 = 136315394;
      if (v9)
      {
        v19 = v7;
      }

      else
      {
        v19 = 0x7974706D65;
      }

      v31 = v7;
      v32[0] = v18;
      if (v9)
      {
        v20 = v9;
      }

      else
      {
        v20 = 0xE500000000000000;
      }

      v21 = sub_26124C11C(v19, v20, v32);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2080;
      v22 = sub_2612914C8(v11 & 1, 1);
      v23 = !v22;
      if (v22)
      {
        v24 = 1685025392;
      }

      else
      {
        v24 = 7759204;
      }

      if (v23)
      {
        v25 = 0xE300000000000000;
      }

      else
      {
        v25 = 0xE400000000000000;
      }

      v26 = sub_26124C11C(v24, v25, v32);
      v7 = v31;

      *(v17 + 14) = v26;
      _os_log_impl(&dword_261243000, v15, v16, "Daemon device id: %s, %s", v17, 0x16u);
      v27 = v30;
      swift_arrayDestroy();
      MEMORY[0x266701350](v27, -1, -1);
      MEMORY[0x266701350](v17, -1, -1);
    }

    (*(v14 + 8))(v2, v13);
  }

  return v7;
}

id sub_2612E7C4C()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC21ProximityReaderDaemon6Daemon_sprVersionCache];
  *v2 = 0;
  *(v2 + 1) = 0;
  v3 = &v0[OBJC_IVAR____TtC21ProximityReaderDaemon6Daemon_seInfoCache];
  *v3 = sub_2612E7938();
  *(v3 + 1) = v4;
  v3[16] = v5 & 1;
  *&v0[OBJC_IVAR____TtC21ProximityReaderDaemon6Daemon_temporaryListeners] = MEMORY[0x277D84F90];
  if (_set_user_dir_suffix())
  {

    v7.receiver = v0;
    v7.super_class = ObjectType;
    return objc_msgSendSuper2(&v7, sel_init);
  }

  else
  {
    result = sub_2613A220C();
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall Daemon.registerServiceListeners()()
{
  v0 = sub_26139F78C();
  sub_2612E7DF4(v0, v1);

  v2 = sub_26139F77C();
  sub_2612E7DF4(v2, v3);

  v4 = sub_26139F75C();
  sub_2612E7DF4(v4, v5);

  v6 = sub_26139F76C();
  sub_2612E7DF4(v6, v7);

  v8 = sub_26139F74C();
  sub_2612E7DF4(v8, v9);
}

uint64_t sub_2612E7DF4(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_26139F13C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v28 - v11;
  v13 = sub_26129B4AC();
  sub_26124AA44(v13, v12);
  v14 = sub_2613A124C();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v12, 1, v14) == 1)
  {
    sub_26124D0CC(v12);
  }

  else
  {
    v30 = v3;

    v16 = sub_2613A122C();
    v17 = sub_2613A1D9C();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v28 = v6;
      v19 = v18;
      v20 = swift_slowAlloc();
      v29 = a1;
      v21 = v20;
      v31 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_26124C11C(v29, a2, &v31);
      _os_log_impl(&dword_261243000, v16, v17, "Registering service: [ %s ]", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
      MEMORY[0x266701350](v21, -1, -1);
      v22 = v19;
      v6 = v28;
      MEMORY[0x266701350](v22, -1, -1);
    }

    (*(v15 + 8))(v12, v14);
    v3 = v30;
  }

  v23 = objc_allocWithZone(MEMORY[0x277CCAE98]);
  v24 = sub_2613A189C();
  v25 = [v23 initWithMachServiceName_];

  [v25 setDelegate_];
  [v25 resume];
  sub_2612EEA04();
  *(swift_allocObject() + 16) = v25;

  v26 = v25;
  sub_2612EEA54(v9);

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2612E81B8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  [a1 setDelegate_];
  [a1 resume];
  v8 = OBJC_IVAR____TtC21ProximityReaderDaemon6Daemon_temporaryListeners;
  swift_beginAccess();
  v9 = *(v4 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + v8) = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_2612EACF0(0, *(v9 + 2) + 1, 1, v9);
    *(v4 + v8) = v9;
  }

  v12 = *(v9 + 2);
  v11 = *(v9 + 3);
  if (v12 >= v11 >> 1)
  {
    v9 = sub_2612EACF0((v11 > 1), v12 + 1, 1, v9);
  }

  *(v9 + 2) = v12 + 1;
  v13 = &v9[24 * v12];
  *(v13 + 4) = a1;
  *(v13 + 5) = a2;
  *(v13 + 6) = a3;
  *(v4 + v8) = v9;
  swift_endAccess();
  v14 = a1;
}

Swift::Bool __swiftcall Daemon.listener(_:shouldAcceptNewConnection:)(NSXPCListener _, NSXPCConnection shouldAcceptNewConnection)
{
  v4 = [(objc_class *)shouldAcceptNewConnection.super.isa serviceName];
  if (v4)
  {
    v5 = v4;
    v6 = sub_2613A18CC();
    v8 = v7;

    if (v8)
    {
      v24[0] = v6;
      v24[1] = v8;
      sub_2612E85EC(v24, &v25);
    }
  }

  v9 = [(objc_class *)shouldAcceptNewConnection.super.isa serviceName];
  if (!v9)
  {
    sub_26139F78C();
    goto LABEL_10;
  }

  v10 = v9;
  v11 = sub_2613A18CC();
  v13 = v12;

  v14 = sub_26139F78C();
  if (!v13)
  {
LABEL_10:

    sub_26139F75C();

    sub_26139F76C();

    sub_26139F74C();

    goto LABEL_11;
  }

  if (v14 == v11 && v13 == v15)
  {

LABEL_15:

    return sub_2612E87F0(shouldAcceptNewConnection.super.isa);
  }

  v17 = sub_2613A241C();

  if (v17)
  {
    goto LABEL_15;
  }

  if (sub_26139F75C() == v11 && v13 == v18)
  {

LABEL_22:

    return sub_2612EB678(shouldAcceptNewConnection.super.isa);
  }

  v19 = sub_2613A241C();

  if (v19)
  {
    goto LABEL_22;
  }

  if (sub_26139F76C() == v11 && v13 == v20)
  {

LABEL_29:

    return sub_2612EBB9C(shouldAcceptNewConnection.super.isa);
  }

  v21 = sub_2613A241C();

  if (v21)
  {
    goto LABEL_29;
  }

  if (sub_26139F74C() == v11 && v13 == v22)
  {

LABEL_36:

    return sub_2612E90DC(shouldAcceptNewConnection.super.isa);
  }

  v23 = sub_2613A241C();

  if (v23)
  {
    goto LABEL_36;
  }

LABEL_11:

  sub_2612E981C(_.super.isa, shouldAcceptNewConnection.super.isa);
  return result;
}

uint64_t sub_2612E85EC@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - v5;
  v7 = *a1;
  v8 = a1[1];
  v9 = sub_26129B4AC();
  sub_26124AA44(v9, v6);
  v10 = sub_2613A124C();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v6, 1, v10);
  if (v12 == 1)
  {
    result = sub_26124D0CC(v6);
  }

  else
  {

    v14 = sub_2613A122C();
    v15 = sub_2613A1D7C();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v20 = a2;
      v17 = v16;
      v18 = swift_slowAlloc();
      v21 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_26124C11C(v7, v8, &v21);
      _os_log_impl(&dword_261243000, v14, v15, "Connecting to: [ %s ]", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
      MEMORY[0x266701350](v18, -1, -1);
      v19 = v17;
      a2 = v20;
      MEMORY[0x266701350](v19, -1, -1);
    }

    result = (*(v11 + 8))(v6, v10);
  }

  *a2 = v12 == 1;
  return result;
}

uint64_t sub_2612E87F0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v73 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v73 - v10;
  [a1 auditToken];
  v20 = sub_2612EB254(aBlock, v81, v82, v83);
  v21 = [v20 bundleIdentifier];
  if (!v21)
  {

    v12 = sub_26129B4AC();
    sub_26124AA44(v12, v6);
    v13 = sub_2613A124C();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v6, 1, v13) != 1)
    {
      v16 = sub_2613A122C();
      v17 = sub_2613A1D8C();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_261243000, v16, v17, "Unable to get bundle ID", v18, 2u);
        MEMORY[0x266701350](v18, -1, -1);
      }

      (*(v14 + 8))(v6, v13);
      return 0;
    }

    v15 = v6;
LABEL_4:
    sub_26124D0CC(v15);
    return 0;
  }

  v78 = v1;
  v22 = v21;
  v23 = sub_2613A18CC();
  v25 = v24;

  v26 = sub_2612E6AB8();
  if (!v27)
  {

    v46 = sub_26129B4AC();
    sub_26124AA44(v46, v9);
    v47 = sub_2613A124C();
    v48 = *(v47 - 8);
    if ((*(v48 + 48))(v9, 1, v47) != 1)
    {
      v49 = sub_2613A122C();
      v50 = sub_2613A1D8C();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&dword_261243000, v49, v50, "Unable to get install ID", v51, 2u);
        MEMORY[0x266701350](v51, -1, -1);
      }

      (*(v48 + 8))(v9, v47);
      return 0;
    }

    v15 = v9;
    goto LABEL_4;
  }

  v28 = v26;
  v29 = v27;
  v30 = objc_opt_self();
  v31 = [v30 interfaceWithProtocol_];
  [a1 setRemoteObjectInterface_];

  v84 = sub_2612E9C0C;
  v85 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v81 = 1107296256;
  v82 = sub_261277574;
  v83 = &block_descriptor_5;
  v32 = _Block_copy(&aBlock);
  v33 = [a1 remoteObjectProxyWithErrorHandler_];
  _Block_release(v32);
  sub_2613A202C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FF78, &qword_2613AB1F0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return 0;
  }

  v75 = v28;
  v76 = v30;
  v34 = v79;
  v74 = type metadata accessor for PaymentTerminalService(0);
  v35 = *(v78 + OBJC_IVAR____TtC21ProximityReaderDaemon6Daemon_seInfoCache);
  v36 = *(v78 + OBJC_IVAR____TtC21ProximityReaderDaemon6Daemon_seInfoCache + 8);
  v37 = v25;
  v38 = v23;
  v39 = *(v78 + OBJC_IVAR____TtC21ProximityReaderDaemon6Daemon_seInfoCache + 16);
  v40 = a1;
  swift_unknownObjectRetain();

  v77 = v34;
  v41 = sub_26130CF30(v40, v34, v38, v37, v75, v29, v35, v36, v39);
  v42 = sub_26129B4AC();
  sub_26124AA44(v42, v11);
  v43 = sub_2613A124C();
  v44 = *(v43 - 8);
  if ((*(v44 + 48))(v11, 1, v43) == 1)
  {
    sub_26124D0CC(v11);
    v45 = v76;
  }

  else
  {
    v52 = sub_2613A122C();
    v53 = sub_2613A1D9C();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v74 = v54;
      v75 = swift_slowAlloc();
      aBlock = v75;
      *v54 = 136315138;
      v55 = sub_26139F78C();
      v57 = sub_26124C11C(v55, v56, &aBlock);

      v58 = v74;
      *(v74 + 4) = v57;
      v59 = v58;
      _os_log_impl(&dword_261243000, v52, v53, "Connecting to: [%s]", v58, 0xCu);
      v60 = v75;
      __swift_destroy_boxed_opaque_existential_0Tm(v75);
      MEMORY[0x266701350](v60, -1, -1);
      MEMORY[0x266701350](v59, -1, -1);
    }

    v45 = v76;
    (*(v44 + 8))(v11, v43);
  }

  v61 = [v45 interfaceWithProtocol_];
  [v40 setExportedInterface_];

  [v40 setExportedObject_];
  v62 = swift_allocObject();
  *(v62 + 16) = v41;
  *(v62 + 24) = v40;
  v84 = sub_2612EC024;
  v85 = v62;
  aBlock = MEMORY[0x277D85DD0];
  v81 = 1107296256;
  v82 = sub_261276D54;
  v83 = &block_descriptor_8;
  v63 = _Block_copy(&aBlock);
  v64 = v40;
  v65 = v41;

  [v64 setInvalidationHandler_];
  _Block_release(v63);
  v66 = swift_allocObject();
  *(v66 + 16) = v65;
  v84 = sub_2612EC02C;
  v85 = v66;
  aBlock = MEMORY[0x277D85DD0];
  v81 = 1107296256;
  v82 = sub_261276D54;
  v83 = &block_descriptor_14;
  v67 = _Block_copy(&aBlock);
  v68 = v65;

  [v64 setInterruptionHandler_];
  _Block_release(v67);
  v69 = *sub_2612FFE1C();
  v70 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v71 = *((*MEMORY[0x277D85000] & *v69) + 0xB8);
  v72 = v69;

  v71(sub_2612EC034, v70);

  [v64 resume];

  swift_unknownObjectRelease();
  return 1;
}

uint64_t sub_2612E90DC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v60 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v60 - v10;
  [a1 auditToken];
  v20 = sub_2612EB254(aBlock, v64, v65, v66);
  v21 = [v20 bundleIdentifier];
  if (!v21)
  {
    v12 = sub_26129B4AC();
    sub_26124AA44(v12, v6);
    v13 = sub_2613A124C();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v6, 1, v13) != 1)
    {
      v16 = sub_2613A122C();
      v17 = sub_2613A1D8C();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_261243000, v16, v17, "Unable to get bundle ID", v18, 2u);
        MEMORY[0x266701350](v18, -1, -1);
      }

      (*(v14 + 8))(v6, v13);
      return 0;
    }

    v15 = v6;
    goto LABEL_4;
  }

  v62 = v1;
  v22 = v21;
  v23 = sub_2613A18CC();
  v25 = v24;

  v26 = v20;
  v27 = sub_2612E6AB8();
  v29 = v28;

  if (!v29)
  {

    v46 = sub_26129B4AC();
    sub_26124AA44(v46, v9);
    v47 = sub_2613A124C();
    v48 = *(v47 - 8);
    if ((*(v48 + 48))(v9, 1, v47) != 1)
    {
      v54 = sub_2613A122C();
      v55 = sub_2613A1D8C();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        *v56 = 0;
        _os_log_impl(&dword_261243000, v54, v55, "Unable to get installation ID", v56, 2u);
        MEMORY[0x266701350](v56, -1, -1);
      }

      (*(v48 + 8))(v9, v47);
      return 0;
    }

    v15 = v9;
    goto LABEL_4;
  }

  v61 = v26;
  v60 = objc_opt_self();
  v30 = [v60 interfaceWithProtocol_];
  [a1 setRemoteObjectInterface_];

  type metadata accessor for PaymentReadResultStoreService(0);
  v32 = *(v62 + OBJC_IVAR____TtC21ProximityReaderDaemon6Daemon_seInfoCache);
  v31 = *(v62 + OBJC_IVAR____TtC21ProximityReaderDaemon6Daemon_seInfoCache + 8);
  v33 = *(v62 + OBJC_IVAR____TtC21ProximityReaderDaemon6Daemon_seInfoCache + 16);
  v34 = a1;

  v35 = sub_26135FE64(v34, v23, v25, v27, v29, v32, v31, v33);
  if (!v35)
  {
    v49 = sub_26129B5FC();
    sub_26124AA44(v49, v11);
    v50 = sub_2613A124C();
    v51 = *(v50 - 8);
    v52 = (*(v51 + 48))(v11, 1, v50);
    v53 = v61;
    if (v52 != 1)
    {
      v57 = sub_2613A122C();
      v58 = sub_2613A1D8C();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 0;
        _os_log_impl(&dword_261243000, v57, v58, "could not create data store service", v59, 2u);
        MEMORY[0x266701350](v59, -1, -1);
      }

      (*(v51 + 8))(v11, v50);
      return 0;
    }

    v15 = v11;
LABEL_4:
    sub_26124D0CC(v15);
    return 0;
  }

  v36 = v35;
  v37 = [v60 interfaceWithProtocol_];
  [v34 setExportedInterface_];

  [v34 setExportedObject_];
  v38 = swift_allocObject();
  *(v38 + 16) = v34;
  v67 = sub_2612EC04C;
  v68 = v38;
  aBlock = MEMORY[0x277D85DD0];
  v64 = 1107296256;
  v65 = sub_261276D54;
  v66 = &block_descriptor_41;
  v39 = _Block_copy(&aBlock);
  v40 = v34;

  [v40 setInvalidationHandler_];
  _Block_release(v39);
  v67 = sub_2612EAA90;
  v68 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v64 = 1107296256;
  v65 = sub_261276D54;
  v66 = &block_descriptor_44;
  v41 = _Block_copy(&aBlock);
  [v40 setInterruptionHandler_];
  _Block_release(v41);
  v42 = *sub_2612FFE1C();
  v43 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v44 = *((*MEMORY[0x277D85000] & *v42) + 0xB8);
  v45 = v42;

  v44(sub_2612EC074, v43);

  [v40 resume];

  return 1;
}

void sub_2612E981C(void *a1, uint64_t a2)
{
  v26 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v4 - 8);
  v29 = &v26 - v5;
  v6 = OBJC_IVAR____TtC21ProximityReaderDaemon6Daemon_temporaryListeners;
  swift_beginAccess();
  v27 = v6;
  v28 = v2;
  v7 = *(v2 + v6);
  v8 = *(v7 + 16);

  if (v8)
  {
    v9 = 0;
    v10 = 0;
    while (1)
    {
      if (v10 >= *(v7 + 16))
      {
        __break(1u);
        goto LABEL_14;
      }

      v11 = *(v7 + v9 + 32);
      sub_261259BE0(0, &qword_27FE9FF88, 0x277D82BB8);
      v12 = v11;

      v13 = sub_2613A1F3C();

      if (v13)
      {
        break;
      }

      ++v10;
      v9 += 24;
      if (v8 == v10)
      {
        goto LABEL_6;
      }
    }

    v21 = *(v28 + v27);
    if (v10 < *(v21 + 16))
    {
      v22 = v21 + v9;
      v23 = *(v22 + 40);
      v24 = *(v22 + 32);

      v23(v26);
      [a1 suspend];
      [a1 setDelegate_];
      swift_beginAccess();
      v25 = sub_2612EAAA8(v10);
      swift_endAccess();

      return;
    }

LABEL_14:
    __break(1u);
  }

  else
  {
LABEL_6:

    v14 = sub_26129B4AC();
    v15 = v29;
    sub_26124AA44(v14, v29);
    v16 = sub_2613A124C();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v15, 1, v16) == 1)
    {
      sub_26124D0CC(v15);
    }

    else
    {
      v18 = sub_2613A122C();
      v19 = sub_2613A1D8C();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_261243000, v18, v19, "Service not found", v20, 2u);
        MEMORY[0x266701350](v20, -1, -1);
      }

      (*(v17 + 8))(v15, v16);
    }
  }
}

uint64_t sub_2612E9BA4(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_2612EAE24(0xD000000000000017, 0x80000002613BB390);
  }

  return result;
}

uint64_t sub_2612E9C0C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17 - v3;
  v5 = sub_26129B5FC();
  sub_26124AA44(v5, v4);
  v6 = sub_2613A124C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    return sub_26124D0CC(v4);
  }

  v9 = a1;
  v10 = sub_2613A122C();
  v11 = sub_2613A1D7C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v12 = 136446210;
    swift_getErrorValue();
    v14 = sub_2613A24FC();
    v16 = sub_26124C11C(v14, v15, &v18);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_261243000, v10, v11, "client creation error: %{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x266701350](v13, -1, -1);
    MEMORY[0x266701350](v12, -1, -1);
  }

  return (*(v7 + 8))(v4, v6);
}

id sub_2612E9E18(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - v5;
  v7 = sub_26129B4AC();
  sub_26124AA44(v7, v6);
  v8 = sub_2613A124C();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    v10 = sub_26124D0CC(v6);
  }

  else
  {
    v11 = sub_2613A122C();
    v12 = sub_2613A1D9C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v21 = a2;
      v14 = v13;
      v15 = swift_slowAlloc();
      v22 = v15;
      *v14 = 136315138;
      v16 = sub_26139F78C();
      v18 = sub_26124C11C(v16, v17, &v22);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_261243000, v11, v12, "[%s] Connection was invalidated", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v15);
      MEMORY[0x266701350](v15, -1, -1);
      v19 = v14;
      a2 = v21;
      MEMORY[0x266701350](v19, -1, -1);
    }

    v10 = (*(v9 + 8))(v6, v8);
  }

  (*((*MEMORY[0x277D85000] & *a1) + 0x338))(v10);
  return [a2 setExportedObject_];
}

uint64_t sub_2612EA058(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17 - v3;
  v5 = sub_26129B4AC();
  sub_26124AA44(v5, v4);
  v6 = sub_2613A124C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    v8 = sub_26124D0CC(v4);
  }

  else
  {
    v9 = sub_2613A122C();
    v10 = sub_2613A1D9C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v18 = v12;
      *v11 = 136315138;
      v13 = sub_26139F78C();
      v15 = sub_26124C11C(v13, v14, &v18);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_261243000, v9, v10, "[%s] Connection was interrupted", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v12);
      MEMORY[0x266701350](v12, -1, -1);
      MEMORY[0x266701350](v11, -1, -1);
    }

    v8 = (*(v7 + 8))(v4, v6);
  }

  return (*((*MEMORY[0x277D85000] & *a1) + 0x338))(v8);
}

id sub_2612EA278(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19 - v4;
  v6 = sub_26129B4AC();
  sub_26124AA44(v6, v5);
  v7 = sub_2613A124C();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    sub_26124D0CC(v5);
  }

  else
  {
    v9 = sub_2613A122C();
    v10 = sub_2613A1D9C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v19 = a2;
      v12 = v11;
      v13 = swift_slowAlloc();
      v20 = v13;
      *v12 = 136315138;
      v14 = sub_26139F75C();
      v16 = sub_26124C11C(v14, v15, &v20);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_261243000, v9, v10, "[%s] Connection was invalidated", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
      MEMORY[0x266701350](v13, -1, -1);
      v17 = v12;
      a2 = v19;
      MEMORY[0x266701350](v17, -1, -1);
    }

    (*(v8 + 8))(v5, v7);
  }

  sub_2613501F8();
  return [a2 setExportedObject_];
}

id sub_2612EA498(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16 - v3;
  v5 = sub_26129B4AC();
  sub_26124AA44(v5, v4);
  v6 = sub_2613A124C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_26124D0CC(v4);
  }

  else
  {
    v8 = sub_2613A122C();
    v9 = sub_2613A1D9C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v17 = v11;
      *v10 = 136315138;
      v12 = sub_26139F76C();
      v14 = sub_26124C11C(v12, v13, &v17);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_261243000, v8, v9, "[%s] Connection was invalidated", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
      MEMORY[0x266701350](v11, -1, -1);
      MEMORY[0x266701350](v10, -1, -1);
    }

    (*(v7 + 8))(v4, v6);
  }

  return [a1 setExportedObject_];
}

uint64_t sub_2612EA6A4(uint64_t (*a1)(void))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16 - v3;
  v5 = sub_26129B4AC();
  sub_26124AA44(v5, v4);
  v6 = sub_2613A124C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    return sub_26124D0CC(v4);
  }

  v9 = sub_2613A122C();
  v10 = sub_2613A1D9C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136315138;
    v13 = a1();
    v15 = sub_26124C11C(v13, v14, &v17);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_261243000, v9, v10, "[%s] Connection was interrupted", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x266701350](v12, -1, -1);
    MEMORY[0x266701350](v11, -1, -1);
  }

  return (*(v7 + 8))(v4, v6);
}

id sub_2612EA888(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16 - v3;
  v5 = sub_26129B4AC();
  sub_26124AA44(v5, v4);
  v6 = sub_2613A124C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_26124D0CC(v4);
  }

  else
  {
    v8 = sub_2613A122C();
    v9 = sub_2613A1D9C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v17 = v11;
      *v10 = 136315138;
      v12 = sub_26139F74C();
      v14 = sub_26124C11C(v12, v13, &v17);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_261243000, v8, v9, "[%s] Connection was invalidated", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
      MEMORY[0x266701350](v11, -1, -1);
      MEMORY[0x266701350](v10, -1, -1);
    }

    (*(v7 + 8))(v4, v6);
  }

  [a1 setExportedObject_];
  return [a1 setRemoteObjectInterface_];
}

uint64_t sub_2612EAAA8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2612EAE10(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v3 + 24 * a1;
    v7 = *(v6 + 32);
    v8 = v5 - 1;
    memmove((v6 + 32), (v6 + 56), 24 * (v5 - 1 - a1));
    *(v3 + 16) = v8;
    *v1 = v3;
    return v7;
  }

  return result;
}

id sub_2612EAB4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v9[0] = 0;
  v8[0] = a1;
  v8[1] = a2;
  v8[2] = a3;
  v8[3] = a4;
  v4 = [swift_getObjCClassFromMetadata() bundleRecordForAuditToken:v8 error:v9];
  if (v4)
  {
    v5 = v9[0];
  }

  else
  {
    v6 = v9[0];
    sub_26139EE7C();

    swift_willThrow();
  }

  return v4;
}

id Daemon.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_2612EACF0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FF90, &qword_2613AB1F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_2612EAE24(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v35 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v35 - v11;
  v13 = sub_26129B4AC();
  sub_26124AA44(v13, v12);
  v14 = sub_2613A124C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  if (v16(v12, 1, v14) == 1)
  {
    sub_26124D0CC(v12);
  }

  else
  {
    v38 = a1;
    v39 = v16;

    v17 = sub_2613A122C();
    v18 = sub_2613A1D9C();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v37 = v15;
      v20 = v19;
      v21 = swift_slowAlloc();
      v36 = v13;
      v22 = v21;
      v40 = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_26124C11C(v38, a2, &v40);
      _os_log_impl(&dword_261243000, v17, v18, "========[ Merchantd shutdown started: %s ]==========", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v22);
      v23 = v22;
      v13 = v36;
      MEMORY[0x266701350](v23, -1, -1);
      v24 = v20;
      v15 = v37;
      MEMORY[0x266701350](v24, -1, -1);
    }

    (*(v15 + 8))(v12, v14);
    v16 = v39;
  }

  sub_2612EEA04();

  v25 = sub_2612EEDA8();
  sub_2612EEAB0();
  if (v25 >= 1)
  {
    if (v25 * 0.1 <= 0.5)
    {
      v26 = v25 * 0.1;
    }

    else
    {
      v26 = 0.5;
    }

    sub_26124AA44(v13, v10);
    if (v16(v10, 1, v14) == 1)
    {
      sub_26124D0CC(v10);
    }

    else
    {
      v27 = sub_2613A122C();
      v28 = sub_2613A1D9C();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = v13;
        v30 = swift_slowAlloc();
        *v30 = 134217984;
        *(v30 + 4) = v26;
        _os_log_impl(&dword_261243000, v27, v28, "Sleeping for [%f] before shutdown", v30, 0xCu);
        v31 = v30;
        v13 = v29;
        MEMORY[0x266701350](v31, -1, -1);
      }

      (*(v15 + 8))(v10, v14);
    }

    [objc_opt_self() sleepForTimeInterval_];
  }

  sub_26124AA44(v13, v7);
  if (v16(v7, 1, v14) == 1)
  {
    sub_26124D0CC(v7);
    _exit(0);
  }

  v32 = sub_2613A122C();
  v33 = sub_2613A1D9C();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_261243000, v32, v33, "========[ Merchantd is exiting ]==========", v34, 2u);
    MEMORY[0x266701350](v34, -1, -1);
  }

  (*(v15 + 8))(v7, v14);
  _exit(0);
}

id sub_2612EB254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v39 - v14;
  sub_261259BE0(0, &qword_27FE9FF80, 0x277CC1E90);
  v16 = sub_2612EAB4C(a1, a2, a3, a4);
  if (!v4)
  {
    v5 = v16;
    v42 = 0;
    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    if (v17)
    {
      v18 = v17;
      v5 = v5;
      v19 = sub_26129B4AC();
      sub_26124AA44(v19, v15);
      v20 = sub_2613A124C();
      v21 = *(v20 - 8);
      if ((*(v21 + 48))(v15, 1, v20) == 1)
      {
        sub_26124D0CC(v15);
      }

      else
      {
        v25 = v5;
        v26 = sub_2613A122C();
        v27 = sub_2613A1D7C();

        if (os_log_type_enabled(v26, v27))
        {
          v41 = v27;
          v28 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          v43 = v40;
          *v28 = 136315138;
          v29 = [v18 containingBundleRecord];
          if (v29)
          {

            v30 = 0;
            v31 = 0xE000000000000000;
          }

          else
          {
            v31 = 0x80000002613BB3B0;
            v30 = 0xD000000000000028;
          }

          v35 = sub_26124C11C(v30, v31, &v43);

          *(v28 + 4) = v35;
          _os_log_impl(&dword_261243000, v26, v41, "Application Extension Record%s", v28, 0xCu);
          v36 = v40;
          __swift_destroy_boxed_opaque_existential_0Tm(v40);
          MEMORY[0x266701350](v36, -1, -1);
          MEMORY[0x266701350](v28, -1, -1);
        }

        else
        {
        }

        (*(v21 + 8))(v15, v20);
      }

      v37 = [v18 containingBundleRecord];

      if (v37)
      {

        return v37;
      }
    }

    else
    {
      v22 = sub_26129B4AC();
      sub_26124AA44(v22, v13);
      v23 = sub_2613A124C();
      v24 = *(v23 - 8);
      if ((*(v24 + 48))(v13, 1, v23) == 1)
      {
        sub_26124D0CC(v13);
      }

      else
      {
        v32 = sub_2613A122C();
        v33 = sub_2613A1D7C();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          *v34 = 0;
          _os_log_impl(&dword_261243000, v32, v33, "Application Record", v34, 2u);
          MEMORY[0x266701350](v34, -1, -1);
        }

        (*(v24 + 8))(v13, v23);
      }
    }
  }

  return v5;
}

uint64_t sub_2612EB678(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v41 - v6;
  [a1 auditToken];
  v16 = sub_2612EB254(aBlock, v43, v44, v45);
  v17 = [v16 bundleIdentifier];
  if (!v17)
  {

    v8 = sub_26129B4AC();
    sub_26124AA44(v8, v5);
    v9 = sub_2613A124C();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v5, 1, v9) != 1)
    {
      v12 = sub_2613A122C();
      v13 = sub_2613A1D8C();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_261243000, v12, v13, "Unable to get bundle ID", v14, 2u);
        MEMORY[0x266701350](v14, -1, -1);
      }

      (*(v10 + 8))(v5, v9);
      return 0;
    }

    v11 = v5;
    goto LABEL_4;
  }

  v18 = v17;
  v19 = sub_2613A18CC();
  v21 = v20;

  v22 = [v16 teamIdentifier];
  if (!v22)
  {

    v35 = sub_26129B4AC();
    sub_26124AA44(v35, v7);
    v36 = sub_2613A124C();
    v37 = *(v36 - 8);
    if ((*(v37 + 48))(v7, 1, v36) != 1)
    {
      v38 = sub_2613A122C();
      v39 = sub_2613A1D8C();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_261243000, v38, v39, "Unable to read team identifier", v40, 2u);
        MEMORY[0x266701350](v40, -1, -1);
      }

      (*(v37 + 8))(v7, v36);
      return 0;
    }

    v11 = v7;
LABEL_4:
    sub_26124D0CC(v11);
    return 0;
  }

  v23 = v22;
  v24 = sub_2613A18CC();
  v26 = v25;

  type metadata accessor for IdentityReaderService(0);
  v27 = a1;
  v28 = sub_261349FB4(v27, v19, v21, v24, v26);
  v29 = [objc_opt_self() interfaceWithProtocol_];
  [v27 setExportedInterface_];

  [v27 setExportedObject_];
  v30 = swift_allocObject();
  *(v30 + 16) = v28;
  *(v30 + 24) = v27;
  v46 = sub_2612EC03C;
  v47 = v30;
  aBlock = MEMORY[0x277D85DD0];
  v43 = 1107296256;
  v44 = sub_261276D54;
  v45 = &block_descriptor_23;
  v31 = _Block_copy(&aBlock);
  v32 = v27;
  v33 = v28;

  [v32 setInvalidationHandler_];
  _Block_release(v31);
  v46 = sub_2612EA480;
  v47 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v43 = 1107296256;
  v44 = sub_261276D54;
  v45 = &block_descriptor_26;
  v34 = _Block_copy(&aBlock);
  [v32 setInterruptionHandler_];
  _Block_release(v34);
  [v32 resume];

  return 1;
}

uint64_t sub_2612EBB9C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v25 - v3;
  [a1 auditToken];
  v12 = sub_2612EB254(aBlock, v27, v28, v29);
  v13 = [v12 bundleIdentifier];
  if (v13)
  {
    v14 = v13;
    v15 = sub_2613A18CC();
    v17 = v16;

    type metadata accessor for DiscoveryService();
    v18 = a1;
    v19 = sub_26125D4D8(v18, v15, v17);
    v20 = [objc_opt_self() interfaceWithProtocol_];
    [v18 setExportedInterface_];

    [v18 setExportedObject_];
    v21 = swift_allocObject();
    *(v21 + 16) = v18;
    v30 = sub_2612EC044;
    v31 = v21;
    aBlock = MEMORY[0x277D85DD0];
    v27 = 1107296256;
    v28 = sub_261276D54;
    v29 = &block_descriptor_32;
    v22 = _Block_copy(&aBlock);
    v23 = v18;

    [v23 setInvalidationHandler_];
    _Block_release(v22);
    v30 = sub_2612EA68C;
    v31 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v27 = 1107296256;
    v28 = sub_261276D54;
    v29 = &block_descriptor_35;
    v24 = _Block_copy(&aBlock);
    [v23 setInterruptionHandler_];
    _Block_release(v24);
    [v23 resume];

    return 1;
  }

  else
  {

    v5 = sub_26129B4AC();
    sub_26124AA44(v5, v4);
    v6 = sub_2613A124C();
    v7 = *(v6 - 8);
    if ((*(v7 + 48))(v4, 1, v6) == 1)
    {
      sub_26124D0CC(v4);
    }

    else
    {
      v8 = sub_2613A122C();
      v9 = sub_2613A1D8C();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_261243000, v8, v9, "Unable to get bundle ID", v10, 2u);
        MEMORY[0x266701350](v10, -1, -1);
      }

      (*(v7 + 8))(v4, v6);
    }

    return 0;
  }
}

uint64_t sub_2612EBF74(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_2612EBFBC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void static ServiceCleanupSystemTask.register(seIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v32 - v10;
  v35 = sub_26129B7C4();
  sub_26125A870(v35, v11, &qword_27FE9F560, &qword_2613A3CB0);
  v12 = sub_2613A124C();
  v13 = *(v12 - 8);
  v34 = *(v13 + 48);
  if (v34(v11, 1, v12) == 1)
  {
    sub_26124C718(v11, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v14 = sub_2613A122C();
    v15 = sub_2613A1D9C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v33 = v9;
      v17 = a1;
      v18 = v3;
      v19 = v13;
      v20 = v16;
      *v16 = 0;
      _os_log_impl(&dword_261243000, v14, v15, "[cleanup] Registering service", v16, 2u);
      v21 = v20;
      v13 = v19;
      v3 = v18;
      a1 = v17;
      v9 = v33;
      MEMORY[0x266701350](v21, -1, -1);
    }

    (*(v13 + 8))(v11, v12);
  }

  v22 = [objc_opt_self() sharedScheduler];
  v23 = sub_2613A189C();
  v24 = *sub_2612A4CCC();
  v25 = swift_allocObject();
  v25[2] = v3;
  v25[3] = a1;
  v25[4] = a2;
  aBlock[4] = sub_2612EC7FC;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2612ECD5C;
  aBlock[3] = &block_descriptor_6;
  v26 = _Block_copy(aBlock);

  v27 = v24;

  v28 = [v22 registerForTaskWithIdentifier:v23 usingQueue:v27 launchHandler:v26];
  _Block_release(v26);

  if (v28)
  {
  }

  else
  {
    sub_26125A870(v35, v9, &qword_27FE9F560, &qword_2613A3CB0);
    if (v34(v9, 1, v12) == 1)
    {

      sub_26124C718(v9, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v29 = sub_2613A122C();
      v30 = sub_2613A1D9C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_261243000, v29, v30, "[cleanup] Cleanup service is already registered", v31, 2u);
        MEMORY[0x266701350](v31, -1, -1);
      }

      (*(v13 + 8))(v9, v12);
    }
  }
}

uint64_t sub_2612EC4AC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v29 - v12;
  v14 = sub_26129B7C4();
  sub_26125A870(v14, v13, &qword_27FE9F560, &qword_2613A3CB0);
  v15 = sub_2613A124C();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v13, 1, v15) == 1)
  {
    sub_26124C718(v13, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v17 = sub_2613A122C();
    v18 = sub_2613A1D9C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v30 = a2;
      v20 = a3;
      v21 = v19;
      *v19 = 0;
      _os_log_impl(&dword_261243000, v17, v18, "[cleanup] Executing cleanup", v19, 2u);
      v22 = v21;
      a3 = v20;
      a2 = v30;
      MEMORY[0x266701350](v22, -1, -1);
    }

    (*(v16 + 8))(v13, v15);
  }

  v23 = sub_2613A1C1C();
  (*(*(v23 - 8) + 56))(v10, 1, 1, v23);
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = a2;
  v24[5] = a3;
  v24[6] = a4;
  v24[7] = a1;

  v25 = a1;
  v26 = sub_261266800(0, 0, v10, &unk_2613AB250, v24);
  aBlock[4] = sub_2612ECED8;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_261276D54;
  aBlock[3] = &block_descriptor_9;
  v27 = _Block_copy(aBlock);

  [v25 setExpirationHandler_];
  _Block_release(v27);
}

uint64_t sub_2612EC808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v7[3] = swift_task_alloc();
  v10 = swift_task_alloc();
  v7[4] = v10;
  *v10 = v7;
  v10[1] = sub_2612EC8E0;

  return sub_2612ECEE0(a5, a6);
}

uint64_t sub_2612EC8E0()
{

  return MEMORY[0x2822009F8](sub_2612EC9DC, 0, 0);
}

uint64_t sub_2612EC9DC()
{
  if (sub_2613A1CDC())
  {
    sub_2612EE508(*(v0 + 16));
  }

  else
  {
    v1 = *(v0 + 24);
    v2 = sub_26129B7C4();
    sub_26125A870(v2, v1, &qword_27FE9F560, &qword_2613A3CB0);
    v3 = sub_2613A124C();
    v4 = *(v3 - 8);
    if ((*(v4 + 48))(v1, 1, v3) == 1)
    {
      sub_26124C718(*(v0 + 24), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v5 = sub_2613A122C();
      v6 = sub_2613A1D9C();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&dword_261243000, v5, v6, "[cleanup] BG task successfully completed", v7, 2u);
        MEMORY[0x266701350](v7, -1, -1);
      }

      v8 = *(v0 + 24);

      (*(v4 + 8))(v8, v3);
    }

    [*(v0 + 16) setTaskCompleted];
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_2612ECB98(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11 - v2;
  v4 = sub_26129B7C4();
  sub_26125A870(v4, v3, &qword_27FE9F560, &qword_2613A3CB0);
  v5 = sub_2613A124C();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v3, 1, v5) == 1)
  {
    sub_26124C718(v3, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v7 = sub_2613A122C();
    v8 = sub_2613A1D9C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_261243000, v7, v8, "[cleanup] Terminating cleanup service on expirationHandler", v9, 2u);
      MEMORY[0x266701350](v9, -1, -1);
    }

    (*(v6 + 8))(v3, v5);
  }

  return sub_2613A1C9C();
}

void sub_2612ECD5C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2612ECE30()
{
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[7];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_261262AA4;

  return sub_2612EC808(v5, v6, v7, v8, v2, v3, v4);
}

uint64_t sub_2612ECEE0(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = sub_2613A1BFC();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2612ED014, 0, 0);
}

uint64_t sub_2612ED014(uint64_t a1)
{
  v51 = v1;
  *(v1 + 152) = sub_2612F9F2C();

  v2 = sub_2612FB320();

  if ((v2 & 1) == 0)
  {
    v15 = *(v1 + 120);
    v16 = sub_26129B7C4();
    sub_26125A870(v16, v15, &qword_27FE9F560, &qword_2613A3CB0);
    v17 = sub_2613A124C();
    v18 = *(v17 - 8);
    v19 = (*(v18 + 48))(v15, 1, v17);
    v20 = *(v1 + 120);
    if (v19 == 1)
    {
LABEL_11:
      sub_26124C718(v20, &qword_27FE9F560, &qword_2613A3CB0);
      goto LABEL_18;
    }

    v21 = sub_2613A122C();
    v22 = sub_2613A1D9C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_261243000, v21, v22, "[cleanup] Not needed", v23, 2u);
      MEMORY[0x266701350](v23, -1, -1);
    }

    v24 = *(v1 + 120);
LABEL_17:

    (*(v18 + 8))(v24, v17);
    goto LABEL_18;
  }

  v4 = *(v1 + 64);
  v3 = *(v1 + 72);
  type metadata accessor for CleanupTaskPTS();

  v5 = sub_261333FF0(v4, v3);
  *(v1 + 160) = v5;
  if (!v5)
  {
    v25 = *(v1 + 128);
    v26 = sub_26129B7C4();
    sub_26125A870(v26, v25, &qword_27FE9F560, &qword_2613A3CB0);
    v17 = sub_2613A124C();
    v18 = *(v17 - 8);
    v27 = (*(v18 + 48))(v25, 1, v17);
    v20 = *(v1 + 128);
    if (v27 == 1)
    {
      goto LABEL_11;
    }

    v21 = sub_2613A122C();
    v29 = sub_2613A1D8C();
    if (os_log_type_enabled(v21, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_261243000, v21, v29, "[cleanup] Could not create cleanup task", v30, 2u);
      MEMORY[0x266701350](v30, -1, -1);
    }

    v24 = *(v1 + 128);
    goto LABEL_17;
  }

  v6 = sub_2612FACA0();
  *(v1 + 168) = v6;

  v8 = *(v6 + 2);
  *(v1 + 176) = v8;
  if (v8)
  {
    *(v1 + 184) = 0;
    v9 = *(v1 + 168);
    if (*(v9 + 16))
    {
      v11 = *(v9 + 32);
      v10 = *(v9 + 40);
      *(v1 + 192) = v10;
      v12 = *(v9 + 48);
      v13 = *(v9 + 56);
      *(v1 + 200) = v13;
      v14 = *(v9 + 64);
      *(v1 + 16) = v11;
      *(v1 + 24) = v10;
      *(v1 + 32) = v12;
      *(v1 + 40) = v13;
      *(v1 + 48) = v14;

      sub_2613A1CEC();
      *(v1 + 208) = 0;
      v32 = *(v1 + 144);
      v33 = sub_26129B7C4();
      sub_26125A870(v33, v32, &qword_27FE9F560, &qword_2613A3CB0);
      v34 = sub_2613A124C();
      v35 = *(v34 - 8);
      if ((*(v35 + 48))(v32, 1, v34) == 1)
      {
        sub_26124C718(*(v1 + 144), &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        v40 = sub_2613A122C();
        v41 = sub_2613A1D9C();

        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          v50 = v49;
          *v42 = 136380931;

          v43 = sub_26124C11C(v11, v10, &v50);

          *(v42 + 4) = v43;
          *(v42 + 12) = 1024;

          *(v42 + 14) = v14;

          _os_log_impl(&dword_261243000, v40, v41, "[cleanup] Performing TTP cleanup for [%{private}s], installed: [ %{BOOL}d ]", v42, 0x12u);
          __swift_destroy_boxed_opaque_existential_0Tm(v49);
          MEMORY[0x266701350](v49, -1, -1);
          MEMORY[0x266701350](v42, -1, -1);
        }

        else
        {
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
        }

        (*(v35 + 8))(*(v1 + 144), v34);
      }

      v48 = swift_task_alloc();
      *(v1 + 216) = v48;
      *v48 = v1;
      v48[1] = sub_2612EDB3C;

      return sub_261334284(v1 + 16);
    }

    else
    {
      __break(1u);
    }

    return result;
  }

  v28 = sub_2612FB320();

  if (v28)
  {
  }

  else
  {
    v36 = *(v1 + 136);
    v37 = sub_26129B7C4();
    sub_26125A870(v37, v36, &qword_27FE9F560, &qword_2613A3CB0);
    v38 = sub_2613A124C();
    v39 = *(v38 - 8);
    if ((*(v39 + 48))(v36, 1, v38) == 1)
    {
      sub_26124C718(*(v1 + 136), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v44 = sub_2613A122C();
      v45 = sub_2613A1D9C();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&dword_261243000, v44, v45, "No more apps detected, cleaning up TTP contents", v46, 2u);
        MEMORY[0x266701350](v46, -1, -1);
      }

      v47 = *(v1 + 136);

      (*(v39 + 8))(v47, v38);
    }

    sub_261334F5C();
  }

LABEL_18:

  v31 = *(v1 + 8);

  return v31();
}

uint64_t sub_2612EDB3C()
{

  return MEMORY[0x2822009F8](sub_2612EDC70, 0, 0);
}

void sub_2612EDC70()
{
  v53 = v0;
  v1 = *(v0 + 184) + 1;
  if (v1 == *(v0 + 176))
  {

    v2 = sub_2612FB320();

    if ((v2 & 1) == 0)
    {
      v17 = *(v0 + 136);
      v18 = sub_26129B7C4();
      sub_26125A870(v18, v17, &qword_27FE9F560, &qword_2613A3CB0);
      v19 = sub_2613A124C();
      v20 = *(v19 - 8);
      if ((*(v20 + 48))(v17, 1, v19) == 1)
      {
        sub_26124C718(*(v0 + 136), &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v30 = sub_2613A122C();
        v31 = sub_2613A1D9C();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          *v32 = 0;
          _os_log_impl(&dword_261243000, v30, v31, "No more apps detected, cleaning up TTP contents", v32, 2u);
          MEMORY[0x266701350](v32, -1, -1);
        }

        v33 = *(v0 + 136);

        (*(v20 + 8))(v33, v19);
      }

      sub_261334F5C();
    }

LABEL_35:

    v50 = *(v0 + 8);

    v50();
    return;
  }

  v3 = *(v0 + 208);
  *(v0 + 184) = v1;
  v4 = *(v0 + 168);
  if (v1 >= *(v4 + 16))
  {
    __break(1u);
    return;
  }

  v5 = v4 + 40 * v1;
  v7 = *(v5 + 32);
  v6 = *(v5 + 40);
  *(v0 + 192) = v6;
  v8 = *(v5 + 48);
  v9 = *(v5 + 56);
  *(v0 + 200) = v9;
  v10 = *(v5 + 64);
  *(v0 + 16) = v7;
  *(v0 + 24) = v6;
  *(v0 + 32) = v8;
  *(v0 + 40) = v9;
  *(v0 + 48) = v10;

  sub_2613A1CEC();
  *(v0 + 208) = v3;
  if (v3)
  {

    *(v0 + 56) = v3;
    v11 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
    if (swift_dynamicCast())
    {
      v12 = *(v0 + 112);

      v13 = sub_26129B7C4();
      sub_26125A870(v13, v12, &qword_27FE9F560, &qword_2613A3CB0);
      v14 = sub_2613A124C();
      v15 = *(v14 - 8);
      if ((*(v15 + 48))(v12, 1, v14) == 1)
      {
        v16 = *(v0 + 112);

        sub_26124C718(v16, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v38 = sub_2613A122C();
        v39 = sub_2613A1D8C();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          *v40 = 0;
          _os_log_impl(&dword_261243000, v38, v39, "[cleanup] Cleanup service task was cancelled!", v40, 2u);
          MEMORY[0x266701350](v40, -1, -1);
        }

        v41 = *(v0 + 112);

        (*(v15 + 8))(v41, v14);
      }

      (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));
    }

    else
    {
      v25 = *(v0 + 104);

      v26 = sub_26129B7C4();
      sub_26125A870(v26, v25, &qword_27FE9F560, &qword_2613A3CB0);
      v27 = sub_2613A124C();
      v28 = *(v27 - 8);
      if ((*(v28 + 48))(v25, 1, v27) == 1)
      {
        v29 = *(v0 + 104);

        sub_26124C718(v29, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v42 = v3;
        v43 = sub_2613A122C();
        v44 = sub_2613A1D8C();

        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          *v45 = 138412290;
          v47 = v3;
          v48 = _swift_stdlib_bridgeErrorToNSError();
          *(v45 + 4) = v48;
          *v46 = v48;
          _os_log_impl(&dword_261243000, v43, v44, "[cleanup] Error while running service cleanup task. Error: [%@]", v45, 0xCu);
          sub_26124C718(v46, &qword_27FEA0410, &qword_2613AA780);
          MEMORY[0x266701350](v46, -1, -1);
          MEMORY[0x266701350](v45, -1, -1);
        }

        else
        {
        }

        (*(v28 + 8))(*(v0 + 104), v27);
      }
    }

    goto LABEL_35;
  }

  v21 = *(v0 + 144);
  v22 = sub_26129B7C4();
  sub_26125A870(v22, v21, &qword_27FE9F560, &qword_2613A3CB0);
  v23 = sub_2613A124C();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v21, 1, v23) == 1)
  {
    sub_26124C718(*(v0 + 144), &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v34 = sub_2613A122C();
    v35 = sub_2613A1D9C();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v52 = v51;
      *v36 = 136380931;

      v37 = sub_26124C11C(v7, v6, &v52);

      *(v36 + 4) = v37;
      *(v36 + 12) = 1024;

      *(v36 + 14) = v10;

      _os_log_impl(&dword_261243000, v34, v35, "[cleanup] Performing TTP cleanup for [%{private}s], installed: [ %{BOOL}d ]", v36, 0x12u);
      __swift_destroy_boxed_opaque_existential_0Tm(v51);
      MEMORY[0x266701350](v51, -1, -1);
      MEMORY[0x266701350](v36, -1, -1);
    }

    else
    {
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
    }

    (*(v24 + 8))(*(v0 + 144), v23);
  }

  v49 = swift_task_alloc();
  *(v0 + 216) = v49;
  *v49 = v0;
  v49[1] = sub_2612EDB3C;

  sub_261334284(v0 + 16);
}

void sub_2612EE508(void *a1)
{
  v30[1] = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v29 - v6;
  v8 = sub_26129B7C4();
  sub_26125A870(v8, v7, &qword_27FE9F560, &qword_2613A3CB0);
  v9 = sub_2613A124C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) == 1)
  {
    sub_26124C718(v7, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v12 = sub_2613A122C();
    v13 = sub_2613A1D9C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v29[0] = v10;
      v15 = a1;
      v16 = v14;
      *v14 = 0;
      _os_log_impl(&dword_261243000, v12, v13, "[cleanup] Re-scheduled task", v14, 2u);
      v17 = v16;
      a1 = v15;
      v10 = v29[0];
      MEMORY[0x266701350](v17, -1, -1);
    }

    (*(v10 + 8))(v7, v9);
  }

  v30[0] = 0;
  if ([a1 setTaskExpiredWithRetryAfter:v30 error:3600.0])
  {

    MEMORY[0x2821F9840]();
  }

  else
  {
    v29[0] = v30[0];
    v18 = v30[0];
    v19 = sub_26139EE7C();

    swift_willThrow();
    sub_26125A870(v8, v5, &qword_27FE9F560, &qword_2613A3CB0);
    if (v11(v5, 1, v9) == 1)
    {
      sub_26124C718(v5, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v20 = v19;
      v21 = sub_2613A122C();
      v22 = sub_2613A1D8C();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = a1;
        v25 = swift_slowAlloc();
        *v23 = 138412290;
        v26 = v19;
        v27 = _swift_stdlib_bridgeErrorToNSError();
        *(v23 + 4) = v27;
        *v25 = v27;
        _os_log_impl(&dword_261243000, v21, v22, "[cleanup] Completing task due to re-schedule error [%@]", v23, 0xCu);
        sub_26124C718(v25, &qword_27FEA0410, &qword_2613AA780);
        v28 = v25;
        a1 = v24;
        MEMORY[0x266701350](v28, -1, -1);
        MEMORY[0x266701350](v23, -1, -1);
      }

      (*(v10 + 8))(v5, v9);
    }

    [a1 setTaskCompleted];
  }
}

uint64_t sub_2612EE928()
{
  type metadata accessor for ShutdownObservable();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FF98, &unk_2613AB270);
  result = swift_allocObject();
  v2 = MEMORY[0x277D84F98];
  *(result + 24) = 0;
  *(result + 16) = v2;
  *(v0 + 16) = result;
  *(v0 + 24) = 0;
  qword_281451ED0 = v0;
  return result;
}

uint64_t sub_2612EE998()
{
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FF98, &unk_2613AB270);
  v1 = swift_allocObject();
  *(v1 + 24) = 0;
  *(v1 + 16) = MEMORY[0x277D84F98];
  *(v0 + 16) = v1;
  *(v0 + 24) = 0;
  return v0;
}

uint64_t *sub_2612EEA04()
{
  if (qword_281451F48 != -1)
  {
    swift_once();
  }

  return &qword_281451ED0;
}

void sub_2612EEA54(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 24));
  sub_2612EF100((v3 + 16), a1);
  os_unfair_lock_unlock((v3 + 24));
}

void sub_2612EEAB0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - v5;
  if (*(v0 + 24))
  {
    v7 = sub_26129B4AC();
    sub_26124AA44(v7, v4);
    v8 = sub_2613A124C();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v4, 1, v8) == 1)
    {
      sub_26124C718(v4, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v14 = sub_2613A122C();
      v15 = sub_2613A1D8C();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_261243000, v14, v15, "Shutdown called multiple times!", v16, 2u);
        MEMORY[0x266701350](v16, -1, -1);
      }

      (*(v9 + 8))(v4, v8);
    }
  }

  else
  {
    *(v0 + 24) = 1;
    v10 = sub_26129B4AC();
    sub_26124AA44(v10, v6);
    v11 = sub_2613A124C();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v6, 1, v11) == 1)
    {
      sub_26124C718(v6, &qword_27FE9F560, &qword_2613A3CB0);
      v13 = *(v0 + 16);
    }

    else
    {
      v17 = v0;
      v18 = sub_2613A122C();
      v19 = sub_2613A1D9C();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_261243000, v18, v19, "Notifying shutdown observers", v20, 2u);
        MEMORY[0x266701350](v20, -1, -1);
      }

      (*(v12 + 8))(v6, v11);
      v13 = *(v17 + 16);
    }

    os_unfair_lock_lock((v13 + 24));
    sub_2612EEE44((v13 + 16));
    os_unfair_lock_unlock((v13 + 24));
  }
}

uint64_t sub_2612EEDA8()
{
  v1 = *(v0 + 16);
  swift_getKeyPath();

  os_unfair_lock_lock((v1 + 24));
  sub_2612EF1FC((v1 + 16), &v3);
  os_unfair_lock_unlock((v1 + 24));

  return v3;
}

uint64_t sub_2612EEE44(uint64_t *a1)
{
  v29 = a1;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FFA0, &qword_2613AB2E8);
  MEMORY[0x28223BE20](v30);
  v34 = &v29 - v2;
  v3 = *a1;
  v4 = *a1 + 64;
  v5 = 1 << *(*a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(*a1 + 64);
  v8 = (v5 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v10 = 0;
  v31 = v3;
  v32 = v3;
  while (v7)
  {
LABEL_11:
    v12 = __clz(__rbit64(v7)) | (v10 << 6);
    v13 = v31;
    v14 = *(v31 + 48);
    v15 = sub_26139F13C();
    v16 = *(v15 - 8);
    v17 = v16;
    v18 = *(v16 + 72);
    v19 = v14 + v18 * v12;
    v20 = v34;
    (*(v16 + 16))(v34, v19, v15);
    v21 = *(v30 + 48);
    v33 = *(*(v13 + 56) + 16 * v12);
    *(v20 + v21) = v33;
    v22 = swift_retain_n();
    (v33)(v22);
    v23 = sub_26128A6E4(v20);
    if (v24)
    {
      v25 = v23;
      *&v33 = v17;
      v26 = v29;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = *v26;
      v35 = *v26;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2612EFBCC();
        v26 = v29;
        v28 = v35;
      }

      (*(v33 + 8))(*(v28 + 48) + v25 * v18, v15);

      sub_2612EF628(v25, v28);

      v32 = v28;
      *v26 = v28;
    }

    else
    {
    }

    v7 &= v7 - 1;
    result = sub_26124C718(v34, &qword_27FE9FFA0, &qword_2613AB2E8);
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {
    }

    v7 = *(v4 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2612EF100@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  sub_26139F12C();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *a1;
  result = sub_2612EF930(sub_2612B45A0, v7, a2, isUniquelyReferenced_nonNull_native);
  *a1 = v10;
  return result;
}

uint64_t sub_2612EF1B0(uint64_t a1)
{

  swift_getAtKeyPath();

  return v2;
}

uint64_t sub_2612EF1FC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_2612EF264(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_26139F13C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FFA8, qword_2613AB2F0);
  v38 = v4;
  result = sub_2613A223C();
  v11 = result;
  if (*(v9 + 16))
  {
    v42 = v8;
    v43 = v5;
    v34 = v2;
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
    v35 = (v6 + 16);
    v36 = v6;
    v39 = (v6 + 32);
    v18 = result + 64;
    v37 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v41 = *(v6 + 72);
      v25 = v24 + v41 * v23;
      if (v38)
      {
        (*v39)(v42, v25, v43);
        v40 = *(*(v9 + 56) + 16 * v23);
      }

      else
      {
        (*v35)(v42, v25, v43);
        v40 = *(*(v9 + 56) + 16 * v23);
      }

      sub_2612EFE4C(&qword_281451E80, MEMORY[0x277CC9600]);
      result = sub_2613A182C();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v6 = v36;
        v9 = v37;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v6 = v36;
      v9 = v37;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v39)(*(v11 + 48) + v41 * v19, v42, v43);
      *(*(v11 + 56) + 16 * v19) = v40;
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

unint64_t sub_2612EF628(int64_t a1, uint64_t a2)
{
  v40 = sub_26139F13C();
  v4 = *(v40 - 8);
  result = MEMORY[0x28223BE20](v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = sub_2613A205C();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_2612EFE4C(&qword_281451E80, MEMORY[0x277CC9600]);
      v23 = sub_2613A182C();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 16 * a1);
          v30 = (v28 + 16 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

uint64_t sub_2612EF930(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v28 = a1;
  v9 = sub_26139F13C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  v15 = sub_26128A6E4(a3);
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
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      sub_2612EFBCC();
      goto LABEL_9;
    }

    sub_2612EF264(v18, a4 & 1);
    v21 = sub_26128A6E4(a3);
    if ((v19 & 1) == (v22 & 1))
    {
      v15 = v21;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_2613A249C();
    __break(1u);
    return result;
  }

LABEL_9:
  v23 = v28;
  v24 = *v5;
  if (v19)
  {
    v25 = (v24[7] + 16 * v15);
    *v25 = v28;
    v25[1] = a2;
  }

  else
  {
    (*(v10 + 16))(v12, a3, v9);
    return sub_2612EFB0C(v15, v12, v23, a2, v24);
  }
}

uint64_t sub_2612EFB0C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = sub_26139F13C();
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

void *sub_2612EFBCC()
{
  v1 = v0;
  v30 = sub_26139F13C();
  v32 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v29 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FFA8, qword_2613AB2F0);
  v3 = *v0;
  v4 = sub_2613A222C();
  v5 = v4;
  if (*(v3 + 16))
  {
    v25 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v31 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v28 = v32 + 16;
    v26 = v3 + 64;
    for (i = v32 + 32; v12; result = )
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = v32;
      v19 = *(v32 + 72) * v17;
      v20 = v29;
      v21 = v30;
      (*(v32 + 16))(v29, *(v3 + 48) + v19, v30);
      v17 *= 16;
      v22 = v31;
      v23 = *(v31 + 48);
      v24 = *(v18 + 32);
      v33 = *(*(v3 + 56) + v17);
      v24(v23 + v19, v20, v21);
      *(*(v22 + 56) + v17) = v33;
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

        v1 = v25;
        v5 = v31;
        goto LABEL_18;
      }

      v16 = *(v26 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

uint64_t sub_2612EFE4C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_26139F13C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2612EFE90(uint64_t a1, char a2)
{
  *(v3 + 57) = a2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v2;
  v4 = sub_26139EC4C();
  *(v3 + 80) = v4;
  *(v3 + 88) = *(v4 - 8);
  *(v3 + 96) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F220, qword_2613A5530);
  *(v3 + 104) = swift_task_alloc();
  v5 = sub_26139EF7C();
  *(v3 + 112) = v5;
  *(v3 + 120) = *(v5 - 8);
  *(v3 + 128) = swift_task_alloc();
  *(v3 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2612EFFF4, 0, 0);
}

uint64_t sub_2612EFFF4()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v3 = *(v0 + 104);
  v4 = *(v0 + 57);
  v5 = swift_allocBox();
  v7 = v6;
  sub_261290E6C(v4);
  sub_26128FAFC(51, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_26124C718(*(v0 + 104), &qword_27FE9F220, qword_2613A5530);
  }

  else
  {
    v8 = *(v0 + 136);
    v9 = *(v0 + 112);
    v10 = *(v0 + 120);
    (*(v10 + 32))(v8, *(v0 + 104), v9);
    (*(v10 + 40))(v7, v8, v9);
  }

  v11 = *(v0 + 120);
  v12 = *(v0 + 128);
  v13 = *(v0 + 112);
  v14 = *(v0 + 96);
  v15 = *(v0 + 72);
  *(v0 + 144) = v5;
  (*(v11 + 16))(v12, v7, v13);
  sub_26139EBFC();
  sub_26139EBBC();
  v16 = swift_task_alloc();
  *(v0 + 152) = v16;
  v16[2] = v15;
  v16[3] = v14;
  v16[4] = v5;
  v17 = swift_task_alloc();
  *(v0 + 160) = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F3C8, &unk_2613A4850);
  *v17 = v0;
  v17[1] = sub_2612F0214;

  return MEMORY[0x2822007B8](v0 + 16, 0, 0, 0xD00000000000001FLL, 0x80000002613BBD20, sub_2612F0664, v16, v18);
}

uint64_t sub_2612F0214()
{

  return MEMORY[0x2822009F8](sub_2612F032C, 0, 0);
}

uint64_t sub_2612F032C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v6 = *(v0 + 32);
  v7 = *(v0 + 16);
  (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));

  *v1 = v7;
  *(v1 + 16) = v6;
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2612F0414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[1] = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FFD0, "<F");
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v19 - v10;
  v12 = sub_26139EC4C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v15, a3, v12);
  (*(v8 + 16))(v11, a1, v7);
  v16 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v17 = swift_allocObject();
  (*(v8 + 32))(v17 + v16, v11, v7);
  *(v17 + ((v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = a4;

  sub_2612F1A60(v15, v17, &unk_2873BB868, sub_2612F3B70, sub_2612F3CE4, &block_descriptor_22);

  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_2612F0670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_26139EF7C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v40 - v13;
  v15 = *a1;
  v16 = *(a1 + 8);
  v18 = *(a1 + 16);
  v17 = *(a1 + 24);
  v19 = *(a1 + 32);
  if (*(a1 + 40) == 1)
  {
    v50 = *(a1 + 8);
    v51 = v17;
    v49 = v15;

    v46 = sub_26129B97C();
    sub_26124AA44(v46, v14);
    v20 = sub_2613A124C();
    v47 = *(v20 - 8);
    v48 = v20;
    v45 = *(v47 + 48);
    if (v45(v14, 1) == 1)
    {
      sub_26124C718(v14, &qword_27FE9F560, &qword_2613A3CB0);
      v21 = v48;
    }

    else
    {
      v43 = v19;
      v44 = a2;

      v22 = sub_2613A122C();
      v23 = sub_2613A1D8C();

      v42 = v23;
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v52 = v41;
        *v24 = 136315138;
        v25 = swift_projectBox();
        v40 = v22;
        v26 = v25;
        swift_beginAccess();
        (*(v6 + 16))(v8, v26, v5);
        v27 = sub_26139EEAC();
        v29 = v28;
        (*(v6 + 8))(v8, v5);
        v30 = sub_26124C11C(v27, v29, &v52);

        *(v24 + 4) = v30;
        v22 = v40;
        _os_log_impl(&dword_261243000, v40, v42, "Issue with request: %s", v24, 0xCu);
        v31 = v41;
        __swift_destroy_boxed_opaque_existential_0Tm(v41);
        MEMORY[0x266701350](v31, -1, -1);
        MEMORY[0x266701350](v24, -1, -1);
      }

      v32 = v14;
      v21 = v48;
      (*(v47 + 8))(v32, v48);
      v19 = v43;
    }

    sub_26124AA44(v46, v12);
    if ((v45)(v12, 1, v21) == 1)
    {
      sub_26124C718(v12, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {

      v33 = sub_2613A122C();
      v34 = sub_2613A1D8C();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v52 = v36;
        *v35 = 136315394;

        v37 = sub_26124C11C(v50, v18, &v52);

        *(v35 + 4) = v37;
        *(v35 + 12) = 2080;

        v38 = sub_26124C11C(v51, v19, &v52);

        *(v35 + 14) = v38;
        _os_log_impl(&dword_261243000, v33, v34, "Error downloading configuration: %s - %s", v35, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266701350](v36, -1, -1);
        MEMORY[0x266701350](v35, -1, -1);
      }

      (*(v47 + 8))(v12, v21);
    }

    v52 = v49;
    v53 = v50;
    v54 = v18;
    v55 = v51;
    v56 = v19;
    v57 = 1;
  }

  else
  {
    v52 = *a1;
    v53 = v16;
    v54 = v18;
    v55 = v17;
    v56 = v19;
    v57 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FFD0, "<F");
  return sub_2613A1BDC();
}

uint64_t sub_2612F0BCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  v5 = sub_26139EC4C();
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F220, qword_2613A5530);
  v4[15] = swift_task_alloc();
  v6 = sub_26139EF7C();
  v4[16] = v6;
  v4[17] = *(v6 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2612F0D30, 0, 0);
}

uint64_t sub_2612F0D30()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  sub_26139EF5C();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_26124C718(v0[15], &qword_27FE9F220, qword_2613A5530);
    v4 = sub_26129425C();
    v21 = *v4;
    v6 = v4[1];
    v5 = v4[2];
    v8 = v4[3];
    v7 = v4[4];
    v9 = v0[8];

    *v9 = v21;
    *(v9 + 8) = v6;
    *(v9 + 16) = v5;
    *(v9 + 24) = v8;
    *(v9 + 32) = v7;
    *(v9 + 40) = 1;
    v10 = v0[1];

    return v10();
  }

  else
  {
    v13 = v0[18];
    v12 = v0[19];
    v14 = v0[16];
    v15 = v0[17];
    v16 = v0[14];
    v17 = v0[11];
    (*(v15 + 32))(v12, v0[15], v14);
    (*(v15 + 16))(v13, v12, v14);
    sub_26139EBFC();
    sub_26139EBBC();
    v18 = swift_task_alloc();
    v0[20] = v18;
    v18[2] = v17;
    v18[3] = v16;
    v18[4] = v12;
    v19 = swift_task_alloc();
    v0[21] = v19;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F3C0, &unk_2613A4840);
    *v19 = v0;
    v19[1] = sub_2612F0FBC;

    return MEMORY[0x2822007B8](v0 + 2, 0, 0, 0xD000000000000012, 0x80000002613BBD40, sub_2612F14D0, v18, v20);
  }
}

uint64_t sub_2612F0FBC()
{

  return MEMORY[0x2822009F8](sub_2612F10D4, 0, 0);
}

uint64_t sub_2612F10D4()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v9 = *(v0 + 32);
  v10 = *(v0 + 16);
  (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
  (*(v3 + 8))(v1, v2);
  v6 = *(v0 + 64);

  *v6 = v10;
  *(v6 + 16) = v9;
  *(v6 + 32) = v4;
  *(v6 + 40) = v5;
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_2612F11C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a3;
  v26 = a1;
  v28 = a2;
  v5 = sub_26139EF7C();
  v6 = *(v5 - 8);
  v27 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FFB0, "\bF");
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v23 - v12;
  v24 = sub_26139EC4C();
  v14 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v16, v25);
  (*(v10 + 16))(v13, v26, v9);
  v17 = a4;
  v18 = v5;
  (*(v6 + 16))(v8, v17, v5);
  v19 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v20 = (v11 + *(v6 + 80) + v19) & ~*(v6 + 80);
  v21 = swift_allocObject();
  (*(v10 + 32))(v21 + v19, v13, v9);
  (*(v6 + 32))(v21 + v20, v23, v18);
  sub_2612F1A60(v16, v21, &unk_2873BB7F0, sub_2612F39D4, sub_2612F3AB4, &block_descriptor_7);

  return (*(v14 + 8))(v16, v24);
}

uint64_t sub_2612F14DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26139EF7C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v41 - v14;
  v16 = *(a1 + 8);
  v18 = *(a1 + 16);
  v17 = *(a1 + 24);
  v19 = *(a1 + 32);
  if (*(a1 + 40) == 1)
  {
    v48 = *a1;
    v49 = a2;
    v51 = v17;
    v52 = v16;

    v46 = sub_26129B97C();
    sub_26124AA44(v46, v15);
    v20 = sub_2613A124C();
    v47 = *(v20 - 8);
    v21 = *(v47 + 48);
    v50 = v20;
    if (v21(v15, 1) == 1)
    {
      sub_26124C718(v15, &qword_27FE9F560, &qword_2613A3CB0);
      v22 = v50;
    }

    else
    {
      (*(v7 + 16))(v9, a3, v6);
      v23 = sub_2613A122C();
      v45 = sub_2613A1D8C();
      if (os_log_type_enabled(v23, v45))
      {
        v24 = swift_slowAlloc();
        v43 = v21;
        v25 = v24;
        v44 = swift_slowAlloc();
        v53 = v44;
        *v25 = 136315138;
        v42 = v23;
        v41 = sub_26139EEAC();
        v27 = v26;
        (*(v7 + 8))(v9, v6);
        v28 = sub_26124C11C(v41, v27, &v53);

        v29 = v25;
        v30 = v42;
        v21 = v43;
        *(v29 + 1) = v28;
        v31 = v29;
        _os_log_impl(&dword_261243000, v30, v45, "Issue with request: %s", v29, 0xCu);
        v32 = v44;
        __swift_destroy_boxed_opaque_existential_0Tm(v44);
        MEMORY[0x266701350](v32, -1, -1);
        MEMORY[0x266701350](v31, -1, -1);
      }

      else
      {

        (*(v7 + 8))(v9, v6);
      }

      v22 = v50;
      (*(v47 + 8))(v15, v50);
    }

    sub_26124AA44(v46, v13);
    if ((v21)(v13, 1, v22) == 1)
    {
      sub_26124C718(v13, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {

      v33 = sub_2613A122C();
      v34 = sub_2613A1D8C();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v53 = v36;
        *v35 = 136315394;

        v37 = sub_26124C11C(v52, v18, &v53);

        *(v35 + 4) = v37;
        *(v35 + 12) = 2080;

        v38 = sub_26124C11C(v51, v19, &v53);

        *(v35 + 14) = v38;
        _os_log_impl(&dword_261243000, v33, v34, "Error downloading manifest: %s - %s", v35, 0x16u);
        swift_arrayDestroy();
        v39 = v36;
        v22 = v50;
        MEMORY[0x266701350](v39, -1, -1);
        MEMORY[0x266701350](v35, -1, -1);
      }

      (*(v47 + 8))(v13, v22);
    }

    v53 = v48;
    v54 = v52;
    v55 = v18;
    v56 = v51;
    v57 = v19;
    v58 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FFB0, "\bF");
  }

  else
  {
    v53 = *a1;
    v54 = v16;
    v55 = v18;
    v56 = v17;
    v57 = v19;
    v58 = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FFB0, "\bF");
  }

  return sub_2613A1BDC();
}

id sub_2612F1A48()
{
  result = *(v0 + 16);
  if (result)
  {
    return [result cancel];
  }

  return result;
}

void sub_2612F1A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a5;
  v27 = a6;
  v24 = a3;
  v25 = a4;
  v7 = v6;
  v10 = sub_26139EC4C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_opt_self() sharedSession];
  v15 = sub_26139EBCC();
  v16 = swift_allocObject();
  swift_weakInit();
  (*(v11 + 16))(v13, a1, v10);
  v17 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v18 = swift_allocObject();
  v19 = v25;
  *(v18 + 2) = v16;
  *(v18 + 3) = v19;
  *(v18 + 4) = a2;
  (*(v11 + 32))(&v18[v17], v13, v10);
  aBlock[4] = v26;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2612A3BEC;
  aBlock[3] = v27;
  v20 = _Block_copy(aBlock);

  v21 = [v14 dataTaskWithRequest:v15 completionHandler:v20];
  _Block_release(v20);

  v22 = *(v7 + 16);
  *(v7 + 16) = v21;
  v23 = v21;

  [v23 resume];
}

void sub_2612F1CB0(uint64_t a1, unint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(id *), uint64_t a7, uint64_t a8)
{
  v119 = a8;
  v120 = a1;
  v126 = a7;
  v127 = a6;
  v128 = a4;
  v122 = a3;
  v123 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v116 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v117 = &v116 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v118 = &v116 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v124 = &v116 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v116 - v19;
  MEMORY[0x28223BE20](v18);
  v121 = &v116 - v21;
  v22 = sub_26139F24C();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v116 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v116 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FFB8, "DF");
  MEMORY[0x28223BE20](v29 - 8);
  v31 = &v116 - v30;
  v32 = sub_26139F26C();
  v125 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v34 = &v116 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v36 = *(Strong + 16);
    *(Strong + 16) = 0;
  }

  v37 = v128;
  if (!v128)
  {
    v48 = v122;
    v49 = v123;
    if (!v122 || (objc_opt_self(), (v50 = swift_dynamicCastObjCClass()) == 0) || v49 >> 60 == 15)
    {
      v58 = sub_26129B97C();
      sub_26124AA44(v58, v11);
      v59 = sub_2613A124C();
      v60 = *(v59 - 8);
      if ((*(v60 + 48))(v11, 1, v59) == 1)
      {
        sub_26124C718(v11, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v82 = sub_2613A122C();
        v83 = sub_2613A1D8C();
        if (os_log_type_enabled(v82, v83))
        {
          v84 = swift_slowAlloc();
          *v84 = 0;
          _os_log_impl(&dword_261243000, v82, v83, "Execute download file - internalError - Channel failure, nil api service", v84, 2u);
          MEMORY[0x266701350](v84, -1, -1);
        }

        (*(v60 + 8))(v11, v59);
      }

      v85 = sub_261294250();
      v87 = v85[1];
      v86 = v85[2];
      v88 = v85[3];
      v89 = v85[4];
      LOBYTE(v130) = *v85;
      *&v131 = v87;
      *(&v131 + 1) = v86;
      *&v132 = v88;
      *(&v132 + 1) = v89;
      v133 = 1;

      v127(&v130);
      goto LABEL_52;
    }

    v51 = v50;
    type metadata accessor for APIServiceHelper();
    v52 = v48;
    v53 = v120;
    sub_26125C348(v120, v49);
    sub_2612947FC(v119, v53, v49, v51);
    if ([v51 statusCode] - 300 >= 0xFFFFFFFFFFFFFF9CLL)
    {
      sub_2612F3DF0();
      sub_26124B218(&type metadata for ProximityReaderConfiguration, &type metadata for ProximityReaderConfiguration, &v130);
      if (v130)
      {
        v131 = 0u;
        v132 = 0u;
        v133 = 0;

        v127(&v130);
        sub_26124A168(v53, v49);
        swift_bridgeObjectRelease_n();

        return;
      }

      v104 = sub_26129B97C();
      v105 = v117;
      sub_26124AA44(v104, v117);
      v106 = sub_2613A124C();
      v107 = *(v106 - 8);
      if ((*(v107 + 48))(v105, 1, v106) == 1)
      {
        sub_26124C718(v105, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v108 = sub_2613A122C();
        v109 = sub_2613A1D8C();
        if (os_log_type_enabled(v108, v109))
        {
          v110 = swift_slowAlloc();
          *v110 = 0;
          _os_log_impl(&dword_261243000, v108, v109, "Execute download file - internalError - no available content", v110, 2u);
          MEMORY[0x266701350](v110, -1, -1);
        }

        (*(v107 + 8))(v105, v106);
      }
    }

    else
    {
      v54 = sub_26129B97C();
      v55 = v118;
      sub_26124AA44(v54, v118);
      v56 = sub_2613A124C();
      v57 = *(v56 - 8);
      if ((*(v57 + 48))(v55, 1, v56) == 1)
      {
        sub_26124C718(v55, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v99 = v52;
        v100 = sub_2613A122C();
        v101 = sub_2613A1D8C();
        if (os_log_type_enabled(v100, v101))
        {
          v102 = swift_slowAlloc();
          *v102 = 134217984;
          *(v102 + 4) = [v51 statusCode];

          _os_log_impl(&dword_261243000, v100, v101, "Execute download file - serverError - Invalid status from server: %ld", v102, 0xCu);
          v103 = v102;
          v53 = v120;
          MEMORY[0x266701350](v103, -1, -1);
        }

        else
        {

          v100 = v99;
        }

        (*(v57 + 8))(v118, v56);
      }

      sub_2612A43C8();
      sub_26124B218(&type metadata for APIErrorResponse, &type metadata for APIErrorResponse, &v130);
      if (v131)
      {
        sub_261294240(4, v130, v131, *(&v131 + 1), v132, &v130);
        v133 = 1;
LABEL_51:
        v127(&v130);
        sub_26124A168(v53, v49);

LABEL_52:
        sub_2612F3DB0(v130, v131, *(&v131 + 1), v132, *(&v132 + 1), v133);
        return;
      }
    }

    v111 = sub_26129425C();
    v113 = v111[1];
    v112 = v111[2];
    v114 = v111[3];
    v115 = v111[4];
    LOBYTE(v130) = *v111;
    *&v131 = v113;
    *(&v131 + 1) = v112;
    *&v132 = v114;
    *(&v132 + 1) = v115;
    v133 = 1;

    goto LABEL_51;
  }

  v130 = v128;
  v38 = v128;
  v39 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
  v40 = swift_dynamicCast();
  v41 = v125;
  v42 = *(v125 + 56);
  if ((v40 & 1) == 0)
  {
    v42(v31, 1, 1, v32);
    sub_26124C718(v31, &qword_27FE9FFB8, "DF");
LABEL_18:
    v61 = sub_26129B97C();
    sub_26124AA44(v61, v20);
    v62 = sub_2613A124C();
    v63 = *(v62 - 8);
    v64 = *(v63 + 48);
    if (v64(v20, 1, v62) == 1)
    {
      sub_26124C718(v20, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v65 = sub_2613A122C();
      v66 = sub_2613A1D8C();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        *v67 = 0;
        _os_log_impl(&dword_261243000, v65, v66, "Execute download file - networkError - Server not reachable", v67, 2u);
        MEMORY[0x266701350](v67, -1, -1);
      }

      (*(v63 + 8))(v20, v62);
      v37 = v128;
    }

    v68 = v124;
    sub_26124AA44(v61, v124);
    if (v64(v68, 1, v62) == 1)
    {
      sub_26124C718(v68, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v69 = v37;
      v70 = sub_2613A122C();
      v71 = sub_2613A1D8C();

      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        *v72 = 138412290;
        v74 = v128;
        v75 = _swift_stdlib_bridgeErrorToNSError();
        *(v72 + 4) = v75;
        *v73 = v75;
        _os_log_impl(&dword_261243000, v70, v71, "Error processing request: %@", v72, 0xCu);
        sub_26124C718(v73, &qword_27FEA0410, &qword_2613AA780);
        MEMORY[0x266701350](v73, -1, -1);
        v76 = v72;
        v37 = v128;
        MEMORY[0x266701350](v76, -1, -1);
      }

      (*(v63 + 8))(v68, v62);
    }

    v77 = sub_261294274();
    v79 = v77[1];
    v78 = v77[2];
    v80 = v77[3];
    v81 = v77[4];
    LOBYTE(v130) = *v77;
    *&v131 = v79;
    *(&v131 + 1) = v78;
    *&v132 = v80;
    *(&v132 + 1) = v81;
    v133 = 1;

    v127(&v130);

    goto LABEL_52;
  }

  v42(v31, 0, 1, v32);
  (*(v41 + 32))(v34, v31, v32);
  sub_2612F3B28(&qword_27FE9FFC0, MEMORY[0x277CC9AE8], MEMORY[0x277CC9AE0]);
  sub_26139EE1C();
  sub_26139F25C();
  sub_2612F3B28(&qword_27FE9FFC8, MEMORY[0x277CC9AC8], MEMORY[0x277CC9AD8]);
  sub_2613A1B1C();
  sub_2613A1B1C();
  v43 = *(v23 + 8);
  v43(v26, v22);
  v43(v28, v22);
  if (v130 != v129)
  {
    (*(v41 + 8))(v34, v32);
    v37 = v128;
    goto LABEL_18;
  }

  v44 = sub_26129B97C();
  v45 = v121;
  sub_26124AA44(v44, v121);
  v46 = sub_2613A124C();
  v47 = *(v46 - 8);
  if ((*(v47 + 48))(v45, 1, v46) == 1)
  {
    sub_26124C718(v45, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v90 = sub_2613A122C();
    v91 = sub_2613A1D8C();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      *v92 = 0;
      _os_log_impl(&dword_261243000, v90, v91, "Execute download file - request cancelled", v92, 2u);
      MEMORY[0x266701350](v92, -1, -1);
    }

    (*(v47 + 8))(v45, v46);
  }

  v93 = v128;
  v94 = sub_261294280();
  v96 = v94[1];
  v95 = v94[2];
  v97 = v94[3];
  v98 = v94[4];
  LOBYTE(v130) = *v94;
  *&v131 = v96;
  *(&v131 + 1) = v95;
  *&v132 = v97;
  *(&v132 + 1) = v98;
  v133 = 1;

  v127(&v130);

  sub_2612F3DB0(v130, v131, *(&v131 + 1), v132, *(&v132 + 1), v133);
  (*(v125 + 8))(v34, v32);
}

void sub_2612F2B00(uint64_t a1, unint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(id *), uint64_t a7, uint64_t a8)
{
  v119 = a8;
  v120 = a1;
  v126 = a7;
  v127 = a6;
  v128 = a4;
  v122 = a3;
  v123 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v116 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v117 = &v116 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v118 = &v116 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v124 = &v116 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v116 - v19;
  MEMORY[0x28223BE20](v18);
  v121 = &v116 - v21;
  v22 = sub_26139F24C();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v116 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v116 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FFB8, "DF");
  MEMORY[0x28223BE20](v29 - 8);
  v31 = &v116 - v30;
  v32 = sub_26139F26C();
  v125 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v34 = &v116 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v36 = *(Strong + 16);
    *(Strong + 16) = 0;
  }

  v37 = v128;
  if (!v128)
  {
    v48 = v122;
    v49 = v123;
    if (!v122 || (objc_opt_self(), (v50 = swift_dynamicCastObjCClass()) == 0) || v49 >> 60 == 15)
    {
      v58 = sub_26129B97C();
      sub_26124AA44(v58, v11);
      v59 = sub_2613A124C();
      v60 = *(v59 - 8);
      if ((*(v60 + 48))(v11, 1, v59) == 1)
      {
        sub_26124C718(v11, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v82 = sub_2613A122C();
        v83 = sub_2613A1D8C();
        if (os_log_type_enabled(v82, v83))
        {
          v84 = swift_slowAlloc();
          *v84 = 0;
          _os_log_impl(&dword_261243000, v82, v83, "Execute download file - internalError - Channel failure, nil api service", v84, 2u);
          MEMORY[0x266701350](v84, -1, -1);
        }

        (*(v60 + 8))(v11, v59);
      }

      v85 = sub_261294250();
      v87 = v85[1];
      v86 = v85[2];
      v88 = v85[3];
      v89 = v85[4];
      LOBYTE(v130) = *v85;
      v131 = v87;
      v132 = v86;
      v133 = v88;
      v134 = v89;
      v135 = 1;

      v127(&v130);
      goto LABEL_52;
    }

    v51 = v50;
    type metadata accessor for APIServiceHelper();
    v52 = v48;
    v53 = v120;
    sub_26125C348(v120, v49);
    sub_2612947FC(v119, v53, v49, v51);
    if ([v51 statusCode] - 300 >= 0xFFFFFFFFFFFFFF9CLL)
    {
      sub_2612A5708();
      sub_26124B218(&type metadata for DiscoveryManifest, &type metadata for DiscoveryManifest, &v130);
      if (v131)
      {
        v133 = 0;
        v134 = 0;
        v132 = 0;
        v135 = 0;

        v127(&v130);
        sub_26124A168(v53, v49);
        swift_bridgeObjectRelease_n();

        return;
      }

      v104 = sub_26129B97C();
      v105 = v117;
      sub_26124AA44(v104, v117);
      v106 = sub_2613A124C();
      v107 = *(v106 - 8);
      if ((*(v107 + 48))(v105, 1, v106) == 1)
      {
        sub_26124C718(v105, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v108 = sub_2613A122C();
        v109 = sub_2613A1D8C();
        if (os_log_type_enabled(v108, v109))
        {
          v110 = swift_slowAlloc();
          *v110 = 0;
          _os_log_impl(&dword_261243000, v108, v109, "Execute download file - internalError - no available content", v110, 2u);
          MEMORY[0x266701350](v110, -1, -1);
        }

        (*(v107 + 8))(v105, v106);
      }
    }

    else
    {
      v54 = sub_26129B97C();
      v55 = v118;
      sub_26124AA44(v54, v118);
      v56 = sub_2613A124C();
      v57 = *(v56 - 8);
      if ((*(v57 + 48))(v55, 1, v56) == 1)
      {
        sub_26124C718(v55, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v99 = v52;
        v100 = sub_2613A122C();
        v101 = sub_2613A1D8C();
        if (os_log_type_enabled(v100, v101))
        {
          v102 = swift_slowAlloc();
          *v102 = 134217984;
          *(v102 + 4) = [v51 statusCode];

          _os_log_impl(&dword_261243000, v100, v101, "Execute download file - serverError - Invalid status from server: %ld", v102, 0xCu);
          v103 = v102;
          v53 = v120;
          MEMORY[0x266701350](v103, -1, -1);
        }

        else
        {

          v100 = v99;
        }

        (*(v57 + 8))(v118, v56);
      }

      sub_2612A43C8();
      sub_26124B218(&type metadata for APIErrorResponse, &type metadata for APIErrorResponse, &v130);
      if (v131)
      {
        sub_261294240(4, v130, v131, v132, v133, &v130);
        v135 = 1;
LABEL_51:
        v127(&v130);
        sub_26124A168(v53, v49);

LABEL_52:
        sub_2612F3AE4(v130, v131, v132, v133, v134, v135);
        return;
      }
    }

    v111 = sub_26129425C();
    v113 = v111[1];
    v112 = v111[2];
    v114 = v111[3];
    v115 = v111[4];
    LOBYTE(v130) = *v111;
    v131 = v113;
    v132 = v112;
    v133 = v114;
    v134 = v115;
    v135 = 1;

    goto LABEL_51;
  }

  v130 = v128;
  v38 = v128;
  v39 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
  v40 = swift_dynamicCast();
  v41 = v125;
  v42 = *(v125 + 56);
  if ((v40 & 1) == 0)
  {
    v42(v31, 1, 1, v32);
    sub_26124C718(v31, &qword_27FE9FFB8, "DF");
LABEL_18:
    v61 = sub_26129B97C();
    sub_26124AA44(v61, v20);
    v62 = sub_2613A124C();
    v63 = *(v62 - 8);
    v64 = *(v63 + 48);
    if (v64(v20, 1, v62) == 1)
    {
      sub_26124C718(v20, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v65 = sub_2613A122C();
      v66 = sub_2613A1D8C();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        *v67 = 0;
        _os_log_impl(&dword_261243000, v65, v66, "Execute download file - networkError - Server not reachable", v67, 2u);
        MEMORY[0x266701350](v67, -1, -1);
      }

      (*(v63 + 8))(v20, v62);
      v37 = v128;
    }

    v68 = v124;
    sub_26124AA44(v61, v124);
    if (v64(v68, 1, v62) == 1)
    {
      sub_26124C718(v68, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v69 = v37;
      v70 = sub_2613A122C();
      v71 = sub_2613A1D8C();

      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        *v72 = 138412290;
        v74 = v128;
        v75 = _swift_stdlib_bridgeErrorToNSError();
        *(v72 + 4) = v75;
        *v73 = v75;
        _os_log_impl(&dword_261243000, v70, v71, "Error processing request: %@", v72, 0xCu);
        sub_26124C718(v73, &qword_27FEA0410, &qword_2613AA780);
        MEMORY[0x266701350](v73, -1, -1);
        v76 = v72;
        v37 = v128;
        MEMORY[0x266701350](v76, -1, -1);
      }

      (*(v63 + 8))(v68, v62);
    }

    v77 = sub_261294274();
    v79 = v77[1];
    v78 = v77[2];
    v80 = v77[3];
    v81 = v77[4];
    LOBYTE(v130) = *v77;
    v131 = v79;
    v132 = v78;
    v133 = v80;
    v134 = v81;
    v135 = 1;

    v127(&v130);

    goto LABEL_52;
  }

  v42(v31, 0, 1, v32);
  (*(v41 + 32))(v34, v31, v32);
  sub_2612F3B28(&qword_27FE9FFC0, MEMORY[0x277CC9AE8], MEMORY[0x277CC9AE0]);
  sub_26139EE1C();
  sub_26139F25C();
  sub_2612F3B28(&qword_27FE9FFC8, MEMORY[0x277CC9AC8], MEMORY[0x277CC9AD8]);
  sub_2613A1B1C();
  sub_2613A1B1C();
  v43 = *(v23 + 8);
  v43(v26, v22);
  v43(v28, v22);
  if (v130 != v129)
  {
    (*(v41 + 8))(v34, v32);
    v37 = v128;
    goto LABEL_18;
  }

  v44 = sub_26129B97C();
  v45 = v121;
  sub_26124AA44(v44, v121);
  v46 = sub_2613A124C();
  v47 = *(v46 - 8);
  if ((*(v47 + 48))(v45, 1, v46) == 1)
  {
    sub_26124C718(v45, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v90 = sub_2613A122C();
    v91 = sub_2613A1D8C();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      *v92 = 0;
      _os_log_impl(&dword_261243000, v90, v91, "Execute download file - request cancelled", v92, 2u);
      MEMORY[0x266701350](v92, -1, -1);
    }

    (*(v47 + 8))(v45, v46);
  }

  v93 = v128;
  v94 = sub_261294280();
  v96 = v94[1];
  v95 = v94[2];
  v97 = v94[3];
  v98 = v94[4];
  LOBYTE(v130) = *v94;
  v131 = v96;
  v132 = v95;
  v133 = v97;
  v134 = v98;
  v135 = 1;

  v127(&v130);

  sub_2612F3AE4(v130, v131, v132, v133, v134, v135);
  (*(v125 + 8))(v34, v32);
}

uint64_t sub_2612F3950()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2612F3988()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t sub_2612F39D4(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FFB0, "\bF") - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_26139EF7C() - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_2612F14DC(a1, v1 + v4, v7);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2612F3AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {

    v6 = vars8;
  }
}

uint64_t sub_2612F3B28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2612F3B70(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FFD0, "<F") - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_2612F0670(a1, v1 + v4, v5);
}

uint64_t objectdestroy_11Tm()
{
  v1 = sub_26139EC4C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2612F3CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, char *))
{
  v10 = *(sub_26139EC4C() - 8);
  v11 = v5[2];
  v12 = v5[3];
  v13 = v5[4];
  v14 = v5 + ((*(v10 + 80) + 40) & ~*(v10 + 80));

  return a5(a1, a2, a3, a4, v11, v12, v13, v14);
}

uint64_t sub_2612F3DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {

    v6 = vars8;
  }
}

unint64_t sub_2612F3DF0()
{
  result = qword_27FE9FFD8;
  if (!qword_27FE9FFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9FFD8);
  }

  return result;
}

void *sub_2612F3EA0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v74 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v72 = &v68 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v69 = &v68 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v71 = &v68 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v68 - v17;
  v4[2] = 0;
  v4[3] = 0;
  v19 = (v4 + 2);
  v4[4] = 0;
  v76 = sub_26129B89C();
  sub_26124AA44(v76, v18);
  v20 = sub_2613A124C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 6);
  v73 = v21 + 48;
  v75 = v22;
  if (v22(v18, 1, v20) == 1)
  {
    sub_26124C718(v18, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v70 = v10;

    v23 = sub_26125A798();
    v24 = sub_261291AA8();
    v10 = v70;
    sub_26129BC3C(v23 & 1, v4, 0xD000000000000020, 0x80000002613BBDD0, v24, v25);

    v19 = (v4 + 2);

    (*(v21 + 1))(v18, v20);
  }

  v26 = v4[3];
  v27 = v4[4];
  v4[3] = a2;
  v4[4] = a3;

  sub_26124A228(v26, v27);
  sub_2612C1188();

  sub_2612C117C();

  v28 = sub_2613A189C();

  v29 = sub_2613A189C();

  v30 = [objc_opt_self() endpointForMachName:v28 service:v29 instance:0];

  if (v30)
  {
    v70 = v21;
    v31 = [objc_opt_self() connectionWithEndpoint_];
    if (v31)
    {
      v32 = v31;
      v71 = v20;
      v33 = swift_allocObject();
      v34 = v74;
      *(v33 + 16) = v4;
      *(v33 + 24) = v34;
      v35 = swift_allocObject();
      *(v35 + 16) = sub_2612F5C4C;
      *(v35 + 24) = v33;
      v69 = v33;
      aBlock[4] = sub_2612F5F60;
      aBlock[5] = v35;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2612F4BD8;
      aBlock[3] = &block_descriptor_8;
      v36 = _Block_copy(aBlock);

      v37 = v34;

      [v32 configureConnection_];
      _Block_release(v36);
      LOBYTE(v36) = swift_isEscapingClosureAtFileLocation();

      if ((v36 & 1) == 0)
      {
        v74 = v37;
        v77 = &unk_2873C9530;
        v39 = swift_dynamicCastObjCProtocolConditional();
        if (v39)
        {
          v40 = v32;
        }

        v41 = v75;
        v42 = *v19;
        *v19 = v39;

        v43 = v72;
        sub_26124AA44(v76, v72);
        if (v41(v43, 1, v71) == 1)
        {
          sub_26124C718(v43, &qword_27FE9F560, &qword_2613A3CB0);
          v44 = *v19;
          if (!*v19)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v49 = sub_2613A122C();
          v50 = sub_2613A1D9C();
          if (os_log_type_enabled(v49, v50))
          {
            v51 = swift_slowAlloc();
            *v51 = 0;
            _os_log_impl(&dword_261243000, v49, v50, "Connection created, activate now", v51, 2u);
            v52 = v51;
            v41 = v75;
            MEMORY[0x266701350](v52, -1, -1);
          }

          (*(v70 + 1))(v72, v71);
          v44 = *v19;
          if (!*v19)
          {
            goto LABEL_20;
          }
        }

        [v44 activate];
LABEL_20:
        sub_26124AA44(v76, v10);
        if (v41(v10, 1, v71) == 1)
        {

          sub_26124C718(v10, &qword_27FE9F560, &qword_2613A3CB0);
        }

        else
        {
          v53 = sub_2613A122C();
          v54 = sub_2613A1D9C();
          v55 = os_log_type_enabled(v53, v54);
          v56 = v74;
          if (v55)
          {
            v57 = swift_slowAlloc();
            *v57 = 0;
            _os_log_impl(&dword_261243000, v53, v54, "Connection created, activated", v57, 2u);
            MEMORY[0x266701350](v57, -1, -1);
          }

          (*(v70 + 1))(v10, v71);
        }

        return v4;
      }

      __break(1u);
      goto LABEL_39;
    }

    v46 = v69;
    sub_26124AA44(v76, v69);
    v47 = v75(v46, 1, v20);
    v48 = v70;
    if (v47 == 1)
    {
      result = sub_26124C718(v46, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v63 = sub_2613A122C();
      v64 = sub_2613A1D8C();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        *v65 = 0;
        _os_log_impl(&dword_261243000, v63, v64, "Failed to create connection", v65, 2u);
        MEMORY[0x266701350](v65, -1, -1);
      }

      result = (*(v48 + 1))(v46, v20);
    }

    v66 = v4[3];
    if (!v66)
    {
      goto LABEL_40;
    }

    v67 = v4[4];

    v66(1);

    sub_26124A228(v66, v67);

LABEL_36:

    return 0;
  }

  v45 = v71;
  sub_26124AA44(v76, v71);
  if (v75(v45, 1, v20) == 1)
  {
    result = sub_26124C718(v45, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v58 = sub_2613A122C();
    v59 = sub_2613A1D8C();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_261243000, v58, v59, "Failed to create end point", v60, 2u);
      MEMORY[0x266701350](v60, -1, -1);
    }

    result = (*(v21 + 1))(v45, v20);
  }

  v61 = v4[3];
  if (v61)
  {
    v62 = v4[4];

    v61(1);

    sub_26124A228(v61, v62);
    goto LABEL_36;
  }

LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

id sub_2612F47C0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15 - v3;
  v5 = sub_26129B89C();
  sub_26124AA44(v5, v4);
  v6 = sub_2613A124C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_26124C718(v4, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v8 = a1;
    v9 = sub_2613A122C();
    v10 = sub_2613A1D8C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      *(v11 + 4) = v8;
      *v12 = v8;
      v13 = v8;
      _os_log_impl(&dword_261243000, v9, v10, "UIScene connection interrupted %@", v11, 0xCu);
      sub_26124C718(v12, &qword_27FEA0410, &qword_2613AA780);
      MEMORY[0x266701350](v12, -1, -1);
      MEMORY[0x266701350](v11, -1, -1);
    }

    (*(v7 + 8))(v4, v6);
  }

  return [a1 invalidate];
}

uint64_t sub_2612F49E0(void *a1, uint64_t (*a2)(void), const char *a3, ...)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v19 - v7;
  v9 = sub_26129B89C();
  sub_26124AA44(v9, v8);
  v10 = sub_2613A124C();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
    return sub_26124C718(v8, &qword_27FE9F560, &qword_2613A3CB0);
  }

  v13 = a1;
  v14 = sub_2613A122C();
  v15 = a2();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    *(v16 + 4) = v13;
    *v17 = v13;
    v18 = v13;
    _os_log_impl(&dword_261243000, v14, v15, a3, v16, 0xCu);
    sub_26124C718(v17, &qword_27FEA0410, &qword_2613AA780);
    MEMORY[0x266701350](v17, -1, -1);
    MEMORY[0x266701350](v16, -1, -1);
  }

  return (*(v11 + 8))(v8, v10);
}

uint64_t sub_2612F4BD8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

void sub_2612F4C2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  v10 = sub_26129B89C();
  sub_26124AA44(v10, v9);
  v11 = sub_2613A124C();
  v12 = *(v11 - 8);
  v29 = *(v12 + 48);
  if (v29(v9, 1, v11) != 1)
  {
    v28 = v12;
    v15 = sub_26125A798();
    v16 = sub_261291AA8();
    v26 = v7;
    v27 = v11;
    v12 = v28;
    sub_26129BC3C(v15 & 1, v2, 0xD00000000000001CLL, 0x80000002613BBE00, v16, v17);
    v7 = v26;
    v11 = v27;

    (*(v12 + 8))(v9, v11);
    v13 = sub_2612F56C4();
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_6:
    (*(*v2 + 160))();
    return;
  }

  sub_26124C718(v9, &qword_27FE9F560, &qword_2613A3CB0);
  v13 = sub_2612F56C4();
  if (!v13)
  {
    goto LABEL_6;
  }

LABEL_3:
  v14 = v13;
  sub_26124AA44(v10, v7);
  if (v29(v7, 1, v11) == 1)
  {
    sub_26124C718(v7, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v18 = sub_2613A122C();
    v19 = sub_2613A1D9C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = v11;
      v21 = v12;
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_261243000, v18, v19, "Sending activateRemoteUI message", v22, 2u);
      v23 = v22;
      v12 = v21;
      v11 = v20;
      MEMORY[0x266701350](v23, -1, -1);
    }

    (*(v12 + 8))(v7, v11);
  }

  v24 = sub_2613A17EC();
  aBlock[4] = sub_2612F4FD8;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2612F4FE4;
  aBlock[3] = &block_descriptor_6;
  v25 = _Block_copy(aBlock);
  [v14 activateRemoteUI:v24 internalEndpoint:a2 reply:v25];
  _Block_release(v25);
  swift_unknownObjectRelease();
}

void sub_2612F4FE4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_2612F5050()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v30 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - v9;
  v11 = sub_26129B89C();
  sub_26124AA44(v11, v10);
  v12 = sub_2613A124C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  if (v14(v10, 1, v12) == 1)
  {
    sub_26124C718(v10, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v15 = sub_26125A798();
    v16 = sub_261291AA8();
    v31 = v8;
    sub_26129BC3C(v15 & 1, v1, 0x6164696C61766E69, 0xEC00000029286574, v16, v17);
    v8 = v31;

    (*(v13 + 8))(v10, v12);
  }

  v18 = sub_2612F56C4();
  if (v18)
  {
    v19 = v18;
    sub_26124AA44(v11, v8);
    if (v14(v8, 1, v12) == 1)
    {
      sub_26124C718(v8, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v20 = sub_2613A122C();
      v21 = sub_2613A1D9C();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_261243000, v20, v21, "Sending invalidateRemoteUI message", v22, 2u);
        MEMORY[0x266701350](v22, -1, -1);
      }

      (*(v13 + 8))(v8, v12);
    }

    aBlock[4] = sub_2612F54A4;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2612F4FE4;
    aBlock[3] = &block_descriptor_9_0;
    v23 = _Block_copy(aBlock);
    [v19 invalidateRemoteUI_];
    _Block_release(v23);
    v24 = *(v1 + 16);
    if (v24)
    {
      v25 = v24;
      [v25 invalidate];
    }

    swift_unknownObjectRelease();
    v26 = *(v1 + 16);
    *(v1 + 16) = 0;
  }

  else
  {
    sub_26124AA44(v11, v5);
    if (v14(v5, 1, v12) == 1)
    {
      sub_26124C718(v5, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v27 = sub_2613A122C();
      v28 = sub_2613A1D9C();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_261243000, v27, v28, "invalidate but remoteTarget is already nil", v29, 2u);
        MEMORY[0x266701350](v29, -1, -1);
      }

      (*(v13 + 8))(v5, v12);
    }
  }
}

uint64_t sub_2612F54B0(void *a1, const char *a2, ...)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_26129B89C();
  sub_26124AA44(v7, v6);
  v8 = sub_2613A124C();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    return sub_26124C718(v6, &qword_27FE9F560, &qword_2613A3CB0);
  }

  v11 = a1;
  v12 = sub_2613A122C();
  v13 = sub_2613A1D8C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    if (a1)
    {
      v16 = a1;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      v18 = v17;
    }

    else
    {
      v17 = 0;
      v18 = 0;
    }

    *(v14 + 4) = v17;
    *v15 = v18;
    _os_log_impl(&dword_261243000, v12, v13, a2, v14, 0xCu);
    sub_26124C718(v15, &qword_27FEA0410, &qword_2613AA780);
    MEMORY[0x266701350](v15, -1, -1);
    MEMORY[0x266701350](v14, -1, -1);
  }

  return (*(v9 + 8))(v6, v8);
}

uint64_t sub_2612F56C4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v37 = &v37 - v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v37 - v8;
  v10 = sub_26129B89C();
  sub_26124AA44(v10, v9);
  v11 = sub_2613A124C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  v14 = v13(v9, 1, v11);
  v38 = v12;
  if (v14 == 1)
  {
    sub_26124C718(v9, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v15 = sub_26125A798();
    v16 = sub_261291AA8();
    sub_26129BC3C(v15 & 1, v1, 0x615465746F6D6572, 0xEC00000074656772, v16, v17);

    (*(v12 + 8))(v9, v11);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA00B0, "r0");
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_2613A4340;
  v19 = sub_2613A189C();
  v20 = sub_2613A189C();
  v21 = [objc_opt_self() attributeWithDomain:v19 name:v20];

  *(v18 + 32) = v21;
  v22 = *(v1 + 16);
  if (v22)
  {
    sub_2612F5FC4();
    v23 = v22;
    v24 = sub_2613A1B6C();

    v25 = [v23 remoteTargetWithLaunchingAssertionAttributes_];

    if (v25)
    {
      sub_2613A202C();
      swift_unknownObjectRelease();
    }

    else
    {
      v39 = 0u;
      v40 = 0u;
    }

    v26 = v38;
    v41 = v39;
    v42 = v40;
    if (*(&v40 + 1))
    {
      sub_26125A7B0(&v41, v43);
      v27 = v10;
      v28 = v37;
      sub_26124AA44(v27, v37);
      if (v13(v28, 1, v11) == 1)
      {
        sub_26124C718(v28, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v33 = sub_2613A122C();
        v34 = sub_2613A1D9C();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          *v35 = 0;
          _os_log_impl(&dword_261243000, v33, v34, "Got remote server target", v35, 2u);
          v36 = v35;
          v28 = v37;
          MEMORY[0x266701350](v36, -1, -1);
        }

        (*(v26 + 8))(v28, v11);
      }

      sub_26125A7B0(v43, &v41);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0128, &unk_2613AB3B0);
      if (swift_dynamicCast())
      {
        return v39;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {

    v41 = 0u;
    v42 = 0u;
    v26 = v38;
  }

  sub_26124C718(&v41, &qword_27FEA00C0, &unk_2613A44B0);
  sub_26124AA44(v10, v5);
  if (v13(v5, 1, v11) == 1)
  {
    sub_26124C718(v5, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v29 = sub_2613A122C();
    v30 = sub_2613A1D8C();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_261243000, v29, v30, "No remote server target", v31, 2u);
      MEMORY[0x266701350](v31, -1, -1);
    }

    (*(v26 + 8))(v5, v11);
  }

  return 0;
}

uint64_t sub_2612F5C0C()
{
  sub_26124A228(*(v0 + 24), *(v0 + 32));

  return swift_deallocClassInstance();
}

void sub_2612F5C4C(void *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_2612C117C();

  v5 = sub_2613A189C();

  v6 = [objc_opt_self() interfaceWithIdentifier_];

  v7 = objc_opt_self();
  v8 = [v7 protocolForProtocol_];
  [v6 setServer_];

  v9 = [v7 protocolForProtocol_];
  [v6 setClient_];

  [v6 setClientMessagingExpectation_];
  v10 = [objc_opt_self() userInitiated];
  [a1 setServiceQuality_];

  [a1 setInterface_];
  [a1 setInterfaceTarget_];
  [a1 setTargetQueue_];
  v18 = sub_2612F47A0;
  v19 = 0;
  v14 = MEMORY[0x277D85DD0];
  v15 = 1107296256;
  v16 = sub_2612ECD5C;
  v17 = &block_descriptor_18;
  v11 = _Block_copy(&v14);
  [a1 setActivationHandler_];
  _Block_release(v11);
  v18 = sub_2612F47C0;
  v19 = 0;
  v14 = MEMORY[0x277D85DD0];
  v15 = 1107296256;
  v16 = sub_2612ECD5C;
  v17 = &block_descriptor_21;
  v12 = _Block_copy(&v14);
  [a1 setInterruptionHandler_];
  _Block_release(v12);
  v18 = sub_2612F49C0;
  v19 = 0;
  v14 = MEMORY[0x277D85DD0];
  v15 = 1107296256;
  v16 = sub_2612ECD5C;
  v17 = &block_descriptor_24;
  v13 = _Block_copy(&v14);
  [a1 setInvalidationHandler_];
  _Block_release(v13);
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2612F5FC4()
{
  result = qword_27FEA00B8;
  if (!qword_27FEA00B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FEA00B8);
  }

  return result;
}

id sub_2612F6038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = &v9[OBJC_IVAR____TtC21ProximityReaderDaemon30RemoteAlertInvalidationHandler_handleName];
  *v10 = a1;
  *(v10 + 1) = a2;
  v11 = &v9[OBJC_IVAR____TtC21ProximityReaderDaemon30RemoteAlertInvalidationHandler_completion];
  *v11 = a3;
  *(v11 + 1) = a4;
  v13.receiver = v9;
  v13.super_class = v4;
  return objc_msgSendSuper2(&v13, sel_init);
}

uint64_t sub_2612F60DC(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  v7 = sub_26129B810();
  sub_26124AA44(v7, v6);
  v8 = sub_2613A124C();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    sub_26124D0CC(v6);
  }

  else
  {
    v10 = v2;
    v11 = sub_2613A122C();
    v12 = sub_2613A1D9C();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v17 = v14;
      *v13 = 136446210;
      *(v13 + 4) = sub_26124C11C(*&v10[OBJC_IVAR____TtC21ProximityReaderDaemon30RemoteAlertInvalidationHandler_handleName], *&v10[OBJC_IVAR____TtC21ProximityReaderDaemon30RemoteAlertInvalidationHandler_handleName + 8], &v17);
      _os_log_impl(&dword_261243000, v11, v12, "%{public}s remote alert did deactivate", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v14);
      MEMORY[0x266701350](v14, -1, -1);
      MEMORY[0x266701350](v13, -1, -1);
    }

    (*(v9 + 8))(v6, v8);
  }

  [a1 unregisterObserver_];
  return (*&v2[OBJC_IVAR____TtC21ProximityReaderDaemon30RemoteAlertInvalidationHandler_completion])(0);
}

void sub_2612F6360(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v26 - v6;
  if (a2)
  {
    v8 = sub_26139EE6C();
    [a1 unregisterObserver_];
    v9 = sub_26129B810();
    sub_26124AA44(v9, v7);
    v10 = sub_2613A124C();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v7, 1, v10) == 1)
    {
      sub_26124D0CC(v7);
    }

    else
    {
      v28 = v2;
      v12 = v2;
      v13 = v8;
      v14 = sub_2613A122C();
      v15 = sub_2613A1D9C();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v29 = v27;
        *v16 = 136446466;
        *(v16 + 4) = sub_26124C11C(*&v12[OBJC_IVAR____TtC21ProximityReaderDaemon30RemoteAlertInvalidationHandler_handleName], *&v12[OBJC_IVAR____TtC21ProximityReaderDaemon30RemoteAlertInvalidationHandler_handleName + 8], &v29);
        *(v16 + 12) = 2082;
        v17 = [v13 localizedDescription];
        v18 = sub_2613A18CC();
        v20 = v19;

        v21 = sub_26124C11C(v18, v20, &v29);

        *(v16 + 14) = v21;
        _os_log_impl(&dword_261243000, v14, v15, "%{public}s remote handle invalidated with error: %{public}s", v16, 0x16u);
        v22 = v27;
        swift_arrayDestroy();
        MEMORY[0x266701350](v22, -1, -1);
        MEMORY[0x266701350](v16, -1, -1);
      }

      (*(v11 + 8))(v7, v10);
      v2 = v28;
    }

    v23 = [v8 code];
    if (v23 == 6)
    {
      v24 = 1;
    }

    else
    {
      v24 = 2;
    }

    if (v23 == 4)
    {
      v25 = 0;
    }

    else
    {
      v25 = v24;
    }

    (*&v2[OBJC_IVAR____TtC21ProximityReaderDaemon30RemoteAlertInvalidationHandler_completion])(v25);
  }
}

id sub_2612F66D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RemoteAlertInvalidationHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2612F675C(uint64_t a1, uint64_t a2)
{
  result = sub_2613A0FCC();
  if (result == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F2E8, &unk_2613A43A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2613A4310;
    v4 = sub_26139F2CC();
    *(inited + 32) = sub_26139F27C();
    *(inited + 40) = v5;
    v6 = sub_2613A0F6C();
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 48) = v6;
    *(inited + 56) = v7;
    sub_261259E78(inited);
    swift_setDeallocating();
    sub_26124C718(inited + 32, &qword_27FE9F2F0, &qword_2613A4BD0);
    v8 = objc_allocWithZone(v4);
  }

  else
  {
    if ((result & 1) == 0)
    {
      return result;
    }

    v9 = objc_allocWithZone(sub_26139F2CC());
  }

  v10 = sub_26139F2DC();
  sub_2612C5960();
  swift_allocError();
  *v11 = v10;
  return swift_willThrow();
}

BOOL sub_2612F68E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  sub_2612F6BF8(a1, a2, 0x64697074666173, 0xE700000000000000, "Could not retrieve SAF tpid from token: [ %s ]", v26);
  v11 = v10;
  if (v10)
  {

    v12 = sub_26129B8EC();
    sub_26125A870(v12, v9, &qword_27FE9F560, &qword_2613A3CB0);
    v13 = sub_2613A124C();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v9, 1, v13) == 1)
    {
      v15 = v9;
LABEL_6:
      sub_26124C718(v15, &qword_27FE9F560, &qword_2613A3CB0);
      return v11 != 0;
    }

    v19 = sub_2613A122C();
    v20 = sub_2613A1D9C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_261243000, v19, v20, "Store and Forward is supported", v21, 2u);
      MEMORY[0x266701350](v21, -1, -1);
    }

    (*(v14 + 8))(v9, v13);
  }

  else
  {
    v16 = sub_26129B8EC();
    sub_26125A870(v16, v7, &qword_27FE9F560, &qword_2613A3CB0);
    v17 = sub_2613A124C();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v7, 1, v17) == 1)
    {
      v15 = v7;
      goto LABEL_6;
    }

    v22 = sub_2613A122C();
    v23 = sub_2613A1D8C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_261243000, v22, v23, "Store and Forward is not supported in the provided token", v24, 2u);
      MEMORY[0x266701350](v24, -1, -1);
    }

    (*(v18 + 8))(v7, v17);
  }

  return v11 != 0;
}

uint64_t sub_2612F6BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, ...)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21 - v7;
  sub_2613A0F9C();
  if (!v22)
  {
    goto LABEL_6;
  }

  result = v21;
  v10 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v10 = v21 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {

LABEL_6:
    v11 = sub_26129B8EC();
    sub_26125A870(v11, v8, &qword_27FE9F560, &qword_2613A3CB0);
    v12 = sub_2613A124C();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v8, 1, v12) == 1)
    {
      sub_26124C718(v8, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {

      v14 = sub_2613A122C();
      v15 = sub_2613A1D8C();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v21 = v17;
        *v16 = 136315138;
        v18 = sub_2613A0F7C();
        v20 = sub_26124C11C(v18, v19, &v21);

        *(v16 + 4) = v20;
        _os_log_impl(&dword_261243000, v14, v15, a5, v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v17);
        MEMORY[0x266701350](v17, -1, -1);
        MEMORY[0x266701350](v16, -1, -1);
      }

      (*(v13 + 8))(v8, v12);
    }

    return 0;
  }

  return result;
}

uint64_t sub_2612F6E80()
{
  qword_27FEAC0A8 = sub_26139F87C();
  unk_27FEAC0B0 = MEMORY[0x277D43718];
  __swift_allocate_boxed_opaque_existential_0(qword_27FEAC090);
  return sub_26139F86C();
}

uint64_t sub_2612F6ED4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F8E8, &qword_2613A7310);
  result = swift_allocObject();
  *(result + 16) = 0;
  qword_27FEAC0D0 = result;
  return result;
}

void sub_2612F6F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v51 = a5;
  v59 = a1;
  v60 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v52 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v56 = &v46 - v12;
  v54 = sub_26139EE8C();
  v53 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_26139EF7C();
  v15 = *(v55 - 8);
  v16 = MEMORY[0x28223BE20](v55);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v46 - v19;
  v21 = sub_26139F64C();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FEAC0C8 != -1)
  {
    swift_once();
  }

  v63 = qword_27FEAC0D0;
  os_unfair_lock_lock((qword_27FEAC0D0 + 16));
  sub_26139F3FC();
  sub_26139F5DC();
  v25 = *(v22 + 8);
  v61 = v24;
  v62 = v25;
  v64 = v22 + 8;
  v25(v24, v21);
  v26 = sub_26124A620(a4, a6);
  v57 = v27;
  v58 = v26;
  if (v27 >> 60 == 15)
  {
    v28 = sub_26129B64C();
    v29 = v56;
    sub_26124AA44(v28, v56);
    v30 = sub_2613A124C();
    v31 = *(v30 - 8);
    if ((*(v31 + 48))(v29, 1, v30) == 1)
    {
      sub_26124C718(v29, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v39 = sub_2613A122C();
      v40 = sub_2613A1D8C();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_261243000, v39, v40, "Could not persist session", v41, 2u);
        MEMORY[0x266701350](v41, -1, -1);
      }

      (*(v31 + 8))(v29, v30);
    }
  }

  else
  {
    v49 = a6;
    v48 = a3;
    v47 = a4;
    v56 = v21;
    if (qword_27FEAC088 != -1)
    {
      swift_once();
    }

    v50 = unk_27FEAC0B0;
    __swift_project_boxed_opaque_existential_1(qword_27FEAC090, qword_27FEAC0A8);
    v32 = sub_26124BDB0();
    v33 = v55;
    (*(v15 + 16))(v18, v32, v55);
    v65[0] = v59;
    v65[1] = v60;
    v34 = v53;
    v35 = v54;
    (*(v53 + 104))(v14, *MEMORY[0x277CC91D8], v54);
    sub_26124C7CC();
    sub_26139EF6C();
    (*(v34 + 8))(v14, v35);
    v36 = *(v15 + 8);
    v36(v18, v33);
    v37 = v57;
    v38 = v58;
    sub_2613A030C();
    v36(v20, v33);
    v21 = v56;
    if (qword_27FEAC0B8 != -1)
    {
      swift_once();
    }

    v42 = v47;
    v65[3] = v47;
    v65[4] = v51;
    v65[5] = v49;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v65);
    (*(*(v42 - 8) + 16))(boxed_opaque_existential_0, v48, v42);
    swift_beginAccess();
    v44 = v60;

    sub_2612F7798(v65, v59, v44);
    swift_endAccess();
    sub_26124A168(v38, v37);
  }

  v45 = v61;
  sub_26139F3FC();
  sub_26139F5BC();
  v62(v45, v21);
  os_unfair_lock_unlock(v63 + 4);
}

uint64_t sub_2612F7798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_2612F9E24(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_2612F9AB8(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_26124C718(a1, &qword_27FEA0270, &unk_2613AB400);
    sub_2612F9528(a2, a3, v9);

    return sub_26124C718(v9, &qword_27FEA0270, &unk_2613AB400);
  }

  return result;
}

void sub_2612F7868(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v85 = a5;
  v86 = a4;
  v95 = a6;
  v96 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v87 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v88 = &v80 - v12;
  MEMORY[0x28223BE20](v11);
  v83 = &v80 - v13;
  v14 = sub_26139EE8C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_26139EF7C();
  v97 = *(v93 - 8);
  v18 = MEMORY[0x28223BE20](v93);
  v20 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v92 = &v80 - v21;
  v90 = sub_2613A1F8C();
  v22 = *(v90 - 8);
  v23 = MEMORY[0x28223BE20](v90);
  v89 = &v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v80 - v26;
  v28 = *(a3 - 8);
  v29 = MEMORY[0x28223BE20](v25);
  v84 = &v80 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v32 = &v80 - v31;
  if (qword_27FEAC0C8 != -1)
  {
    swift_once();
  }

  v98 = a3;
  v94 = qword_27FEAC0D0;
  os_unfair_lock_lock((qword_27FEAC0D0 + 16));
  if (qword_27FEAC0B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v33 = qword_27FEAC0C0;
  v34 = *(qword_27FEAC0C0 + 16);
  v91 = a2;
  if (v34 && (v35 = sub_26124E5EC(v96, a2), (v36 & 1) != 0))
  {
    sub_2612F95D4(*(v33 + 56) + 48 * v35, &v99);
  }

  else
  {
    v100 = 0u;
    v101 = 0u;
    v99 = 0u;
  }

  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0270, &unk_2613AB400);
  v37 = v98;
  v38 = swift_dynamicCast();
  v39 = *(v28 + 56);
  if ((v38 & 1) == 0)
  {
    v82 = v28 + 56;
    v81 = v39;
    v39(v27, 1, 1, v37);
    v80 = *(v22 + 8);
    v80(v27, v90);
    v44 = sub_26124BDB0();
    v45 = v97;
    v46 = v93;
    (*(v97 + 16))(v20, v44, v93);
    *&v99 = v96;
    *(&v99 + 1) = v91;
    (*(v15 + 104))(v17, *MEMORY[0x277CC91D8], v14);
    sub_26124C7CC();
    v47 = v92;
    sub_26139EF6C();
    (*(v15 + 8))(v17, v14);
    v48 = *(v45 + 8);
    v97 = v45 + 8;
    v48(v20, v46);
    if (qword_27FEAC088 != -1)
    {
      swift_once();
    }

    __swift_project_boxed_opaque_existential_1(qword_27FEAC090, qword_27FEAC0A8);
    v49 = sub_2613A032C();
    v50 = v89;
    if (v49)
    {
      __swift_project_boxed_opaque_existential_1(qword_27FEAC090, qword_27FEAC0A8);
      v59 = sub_2613A02FC();
      v61 = v60;
      v62 = v98;
      v63 = v86;
      sub_26124B218(v98, v98, v50);
      v64 = (*(v28 + 48))(v50, 1, v62);
      if (v64 != 1)
      {
        v65 = *(v28 + 32);
        v66 = v50;
        v67 = v84;
        v65(v84, v66, v62);
        *(&v100 + 1) = v62;
        *&v101 = v63;
        *(&v101 + 1) = v85;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v99);
        (*(v28 + 16))(boxed_opaque_existential_0, v67, v62);
        swift_beginAccess();
        v69 = v91;

        sub_2612F7798(&v99, v96, v69);
        v37 = v98;
        swift_endAccess();
        sub_26124C6C4(v59, v61);
        v48(v92, v93);
        v42 = v95;
        v65(v95, v67, v37);
        v43 = 0;
LABEL_25:
        v40 = v81;
        goto LABEL_26;
      }

      v80(v50, v90);
      __swift_project_boxed_opaque_existential_1(qword_27FEAC090, qword_27FEAC0A8);
      v70 = sub_2613A031C();
      v71 = sub_26129B64C();
      v72 = v83;
      sub_26124AA44(v71, v83);
      v73 = sub_2613A124C();
      v74 = *(v73 - 8);
      v75 = (*(v74 + 48))(v72, 1, v73);
      if (v75 != 1)
      {
        v76 = sub_2613A122C();
        v77 = sub_2613A1D9C();
        if (os_log_type_enabled(v76, v77))
        {
          v78 = swift_slowAlloc();
          *v78 = 67109120;
          *(v78 + 4) = v70 & 1;
          _os_log_impl(&dword_261243000, v76, v77, "Session was deleted [ %{BOOL}d ]", v78, 8u);
          v79 = v78;
          v72 = v83;
          MEMORY[0x266701350](v79, -1, -1);
        }

        sub_26124C6C4(v59, v61);

        v48(v92, v93);
        (*(v74 + 8))(v72, v73);
        goto LABEL_24;
      }

      v48(v92, v93);
      sub_26124C6C4(v59, v61);
      v55 = v72;
    }

    else
    {
      v51 = sub_26129B64C();
      v52 = v88;
      sub_26124AA44(v51, v88);
      v53 = sub_2613A124C();
      v54 = *(v53 - 8);
      if ((*(v54 + 48))(v52, 1, v53) != 1)
      {
        v56 = sub_2613A122C();
        v57 = sub_2613A1D9C();
        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          *v58 = 0;
          _os_log_impl(&dword_261243000, v56, v57, "Could not find session", v58, 2u);
          MEMORY[0x266701350](v58, -1, -1);
        }

        v48(v47, v93);
        (*(v54 + 8))(v52, v53);
        goto LABEL_24;
      }

      v48(v47, v93);
      v55 = v52;
    }

    sub_26124C718(v55, &qword_27FE9F560, &qword_2613A3CB0);
LABEL_24:
    v43 = 1;
    v37 = v98;
    v42 = v95;
    goto LABEL_25;
  }

  v40 = *(v28 + 56);
  v39(v27, 0, 1, v37);
  v41 = *(v28 + 32);
  v41(v32, v27, v37);
  v42 = v95;
  v41(v95, v32, v37);
  v43 = 0;
LABEL_26:
  v40(v42, v43, 1, v37);
  os_unfair_lock_unlock(v94 + 4);
}

uint64_t sub_2612F8524(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v4 - 8);
  v21[1] = v21 - v5;
  v6 = sub_26139EE8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26139EF7C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v21 - v15;
  if (qword_27FEAC0C8 != -1)
  {
    swift_once();
  }

  v22 = qword_27FEAC0D0;
  os_unfair_lock_lock((qword_27FEAC0D0 + 16));
  v17 = sub_26124BDB0();
  (*(v11 + 16))(v14, v17, v10);
  *&v23[0] = a1;
  *(&v23[0] + 1) = a2;
  (*(v7 + 104))(v9, *MEMORY[0x277CC91D8], v6);
  sub_26124C7CC();
  sub_26139EF6C();
  (*(v7 + 8))(v9, v6);
  v18 = *(v11 + 8);
  v18(v14, v10);
  if (qword_27FEAC088 != -1)
  {
    swift_once();
  }

  __swift_project_boxed_opaque_existential_1(qword_27FEAC090, qword_27FEAC0A8);
  if (sub_2613A032C())
  {
    __swift_project_boxed_opaque_existential_1(qword_27FEAC090, qword_27FEAC0A8);
    v19 = sub_2613A031C();
    if (qword_27FEAC0B8 != -1)
    {
      swift_once();
    }

    memset(v23, 0, 48);
    swift_beginAccess();

    sub_2612F7798(v23, a1, a2);
    swift_endAccess();
    v18(v16, v10);
  }

  else
  {
    v18(v16, v10);
    v19 = 0;
  }

  os_unfair_lock_unlock(v22 + 4);
  return v19 & 1;
}

void sub_2612F8AD0(uint64_t (*a1)(void), uint64_t a2)
{
  v49 = a2;
  v46 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v47 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v45 = &v45 - v5;
  v6 = sub_26139EF7C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v45 - v12;
  if (qword_27FEAC0C8 != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v53 = v11;
    v48 = qword_27FEAC0D0;
    os_unfair_lock_lock((qword_27FEAC0D0 + 16));
    if (qword_27FEAC088 != -1)
    {
      swift_once();
    }

    __swift_project_boxed_opaque_existential_1(qword_27FEAC090, qword_27FEAC0A8);
    v14 = sub_26124BDB0();
    v15 = *(v7 + 16);
    v16 = v53;
    v15(v13, v14, v53);
    v17 = sub_2613A02EC();
    v52 = v7;
    v18 = v17;
    v50 = *(v7 + 8);
    v51 = v7 + 8;
    v50(v13, v16);
    v11 = sub_2612F9258(v46, v49, v18);
    v19 = v11;
    v20 = qword_27FEAC090;
    v49 = *(v11 + 16);
    if (!v49)
    {
      break;
    }

    v21 = v7 + 16;
    v22 = v16;
    v23 = v15;
    v7 = 0;
    while (v7 < *(v19 + 16))
    {
      v24 = v21;
      v25 = v23;
      v23(v10, v19 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v7, v22);
      v13 = v20[4];
      v26 = v20;
      __swift_project_boxed_opaque_existential_1(v20, v20[3]);
      v27 = sub_2613A031C();
      v22 = v53;
      if (v27)
      {
        if (qword_27FEAC0B8 != -1)
        {
          swift_once();
        }

        v28 = sub_26139EEDC();
        v30 = v29;
        swift_beginAccess();
        v13 = sub_26124E5EC(v28, v30);
        v32 = v31;

        if (v32)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v34 = qword_27FEAC0C0;
          v54 = qword_27FEAC0C0;
          qword_27FEAC0C0 = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_2612F9C7C();
            v34 = v54;
          }

          sub_2612F9E24((*(v34 + 56) + 48 * v13), v55);
          sub_2612F98FC(v13, v34);
          qword_27FEAC0C0 = v34;
        }

        else
        {
          memset(v55, 0, sizeof(v55));
        }

        v22 = v53;
        sub_26124C718(v55, &qword_27FEA0270, &unk_2613AB400);
        swift_endAccess();
      }

      ++v7;
      v11 = (v50)(v10, v22);
      v20 = v26;
      v21 = v24;
      v23 = v25;
      if (v49 == v7)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_24:
    v44 = v11;
    swift_once();
    v11 = v44;
  }

LABEL_17:

  v35 = sub_26129B64C();
  v36 = v45;
  sub_26124AA44(v35, v45);
  v37 = sub_2613A124C();
  v38 = *(v37 - 8);
  if ((*(v38 + 48))(v36, 1, v37) == 1)
  {
    sub_26124C718(v36, &qword_27FE9F560, &qword_2613A3CB0);
    v39 = v48;
  }

  else
  {
    v40 = sub_2613A122C();
    v41 = sub_2613A1D9C();
    v42 = os_log_type_enabled(v40, v41);
    v39 = v48;
    if (v42)
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_261243000, v40, v41, "All sessions were deleted", v43, 2u);
      MEMORY[0x266701350](v43, -1, -1);
    }

    (*(v38 + 8))(v36, v37);
  }

  os_unfair_lock_unlock(v39 + 4);
}

uint64_t sub_2612F9258(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v39 = sub_26139EF7C();
  v7 = MEMORY[0x28223BE20](v39);
  v36 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v7);
  v38 = &v28 - v11;
  v35 = *(a3 + 16);
  if (v35)
  {
    v12 = 0;
    v32 = (v10 + 8);
    v33 = (v10 + 32);
    v34 = v10 + 16;
    v37 = MEMORY[0x277D84F90];
    v30 = a2;
    v31 = a3;
    v29 = a1;
    while (v12 < *(a3 + 16))
    {
      v13 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v14 = *(v10 + 72);
      v15 = a3;
      v16 = a3 + v13 + v14 * v12;
      v17 = v10;
      v18 = a1;
      v19 = v38;
      (*(v10 + 16))(v38, v16, v39);
      v20 = v19;
      a1 = v18;
      v21 = v18(v20);
      if (v3)
      {
        (*v32)(v38, v39);
        v27 = v37;

        return v27;
      }

      if (v21)
      {
        v22 = *v33;
        (*v33)(v36, v38, v39);
        v23 = v37;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_26128C338(0, *(v23 + 16) + 1, 1);
          v23 = v40;
        }

        v26 = *(v23 + 16);
        v25 = *(v23 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_26128C338((v25 > 1), v26 + 1, 1);
          v23 = v40;
        }

        *(v23 + 16) = v26 + 1;
        v37 = v23;
        result = (v22)(v23 + v13 + v26 * v14, v36, v39);
        a3 = v31;
        a1 = v29;
      }

      else
      {
        result = (*v32)(v38, v39);
        a3 = v15;
      }

      ++v12;
      v10 = v17;
      if (v35 == v12)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v37 = MEMORY[0x277D84F90];
LABEL_14:

    return v37;
  }

  return result;
}

double sub_2612F9528@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_26124E5EC(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2612F9C7C();
      v10 = v12;
    }

    sub_2612F9E24((*(v10 + 56) + 48 * v8), a3);
    sub_2612F98FC(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    a3[1] = 0u;
    a3[2] = 0u;
    *a3 = 0u;
  }

  return result;
}

uint64_t sub_2612F95D4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2612F9638(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0278, &qword_2613AB428);
  v33 = v4;
  result = sub_2613A223C();
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
      v24 = (*(v5 + 56) + 48 * v20);
      if (v33)
      {
        sub_2612F9E24(v24, v34);
      }

      else
      {
        sub_2612F95D4(v24, v34);
      }

      sub_2613A256C();
      sub_2613A19DC();
      result = sub_2613A25CC();
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
      result = sub_2612F9E24(v34, (*(v7 + 56) + 48 * v15));
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

uint64_t sub_2612F98FC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2613A205C() + 1) & ~v5;
    do
    {
      sub_2613A256C();

      sub_2613A19DC();
      v11 = sub_2613A25CC();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 48 * v3);
        v18 = (v16 + 48 * v6);
        if (v3 != v6 || v17 >= v18 + 3)
        {
          v9 = *v18;
          v10 = v18[2];
          v17[1] = v18[1];
          v17[2] = v10;
          *v17 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_2612F9AB8(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_26124E5EC(a2, a3);
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
      sub_2612F9C7C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_2612F9638(v16, a4 & 1);
    v11 = sub_26124E5EC(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_2613A249C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 48 * v11);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);

    return sub_2612F9E24(a1, v22);
  }

  else
  {
    sub_2612F9C0C(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_2612F9C0C(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_2612F9E24(a4, (a5[7] + 48 * a1));
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

void *sub_2612F9C7C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0278, &qword_2613AB428);
  v2 = *v0;
  v3 = sub_2613A222C();
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
        v22 = 48 * v17;
        sub_2612F95D4(*(v2 + 56) + 48 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_2612F9E24(v25, (*(v4 + 56) + v22));
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

_OWORD *sub_2612F9E24(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_2612F9E60()
{
  type metadata accessor for GlobalState();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F8E8, &qword_2613A7310);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  v0[2] = v1;
  result = sub_2612FA02C();
  v0[3] = result;
  v0[4] = v3;
  qword_281451ED8 = v0;
  return result;
}

void *sub_2612F9EC8()
{
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F8E8, &qword_2613A7310);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  v0[2] = v1;
  v0[3] = sub_2612FA02C();
  v0[4] = v2;
  return v0;
}

uint64_t *sub_2612F9F2C()
{
  if (qword_281451F50 != -1)
  {
    swift_once();
  }

  return &qword_281451ED8;
}

void sub_2612F9F80(uint64_t a1)
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = sub_2613A25EC();
  v3 = sub_2613A189C();
  [v1 setValue:v2 forKey:v3];
}

uint64_t sub_2612FA02C()
{
  v24[1] = *MEMORY[0x277D85DE8];
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v1 = MEMORY[0x28223BE20](v0 - 8);
  v3 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v5 = v24 - v4;
  v6 = sub_2613A194C();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[0] = 37;
  v9 = sub_2613A1BAC();
  *(v9 + 16) = 37;
  *(v9 + 48) = 0u;
  *(v9 + 61) = 0;
  *(v9 + 32) = 0u;
  if (sysctlbyname("kern.bootsessionuuid", (v9 + 32), v24, 0, 0))
  {

    v10 = sub_26129B7C4();
    sub_26124AA44(v10, v3);
    v11 = sub_2613A124C();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v3, 1, v11) == 1)
    {
      sub_26124C718(v3, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v18 = sub_2613A122C();
      v19 = sub_2613A1D8C();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_261243000, v18, v19, "Could not retrieve boot session UUID", v20, 2u);
        MEMORY[0x266701350](v20, -1, -1);
      }

      (*(v12 + 8))(v3, v11);
    }
  }

  else
  {
    sub_2613A192C();
    result = sub_2612FA3C4(v9, v8);
    if (v14)
    {
      return result;
    }

    v15 = sub_26129B7C4();
    sub_26124AA44(v15, v5);
    v16 = sub_2613A124C();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v5, 1, v16) == 1)
    {
      sub_26124C718(v5, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v21 = sub_2613A122C();
      v22 = sub_2613A1D8C();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_261243000, v21, v22, "Could not create string from boot session UUID", v23, 2u);
        MEMORY[0x266701350](v23, -1, -1);
      }

      (*(v17 + 8))(v5, v16);
    }
  }

  return 0;
}

uint64_t sub_2612FA3C4(uint64_t a1, char *a2)
{
  v4 = sub_2613A194C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2613A191C();
  v8 = sub_2613A190C();
  v9 = *(v5 + 8);
  v9(v7, v4);
  if ((v8 & 1) == 0)
  {
    sub_2613A192C();
    v10 = sub_2613A190C();
    v9(v7, v4);
    if ((v10 & 1) == 0)
    {
      sub_2613A18FC();
      v11 = sub_2613A190C();
      v9(v7, v4);
      if ((v11 & 1) == 0)
      {
        goto LABEL_10;
      }
    }
  }

  v13 = sub_2612FB3C8(v12);
  if (!v14)
  {
    goto LABEL_10;
  }

  v15 = v13;
  sub_2613A191C();
  v16 = sub_2613A190C();
  v9(v7, v4);
  if (v16)
  {

LABEL_17:
    v9(a2, v4);
    return v15;
  }

  if ((sub_2613A210C() & 1) == 0)
  {

LABEL_10:
    v17 = *(a1 + 16);
    if (v17)
    {
      v7 = 0;
      while (v7[a1 + 32])
      {
        if (v17 == ++v7)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
LABEL_14:
      sub_2613A220C();
      __break(1u);
    }

    v18 = [objc_allocWithZone(MEMORY[0x277CCACA8]) initWithBytes:a1 + 32 length:v7 encoding:sub_2613A193C()];

    if (!v18)
    {
      v9(a2, v4);
      return 0;
    }

    v15 = sub_2613A18CC();

    goto LABEL_17;
  }

  v9(a2, v4);

  return v15;
}

id sub_2612FA6A8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v20 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0280, &qword_2613AB430);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - v7;
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v10 = result;
    v11 = [result passcodeCreationDate];

    if (v11)
    {
      sub_26139F08C();

      v12 = sub_26139F0BC();
      (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
    }

    else
    {
      v12 = sub_26139F0BC();
      (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
    }

    sub_2612FB830(v6, v8);
    sub_26139F0BC();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v8, 1, v12) == 1)
    {
      sub_26124C718(v8, &qword_27FEA0280, &qword_2613AB430);
      v14 = sub_26129B7C4();
      sub_26124AA44(v14, v2);
      v15 = sub_2613A124C();
      v16 = *(v15 - 8);
      if ((*(v16 + 48))(v2, 1, v15) == 1)
      {
        return sub_26124C718(v2, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v17 = sub_2613A122C();
        v18 = sub_2613A1D8C();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          *v19 = 0;
          _os_log_impl(&dword_261243000, v17, v18, "Could not fetch passcode last creation date", v19, 2u);
          MEMORY[0x266701350](v19, -1, -1);
        }

        return (*(v16 + 8))(v2, v15);
      }
    }

    else
    {
      sub_26139F07C();
      return (*(v13 + 8))(v8, v12);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2612FAA28(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FB88, &qword_2613A9B00);
    v2 = sub_2613A224C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  if (v6)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v13 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v13);
    ++v9;
    if (v6)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v6)) | (v13 << 6);
        v15 = (*(v1 + 48) + 16 * v14);
        v16 = *v15;
        v17 = v15[1];
        sub_26124C994(*(v1 + 56) + 32 * v14, v29);
        *&v28 = v16;
        *(&v28 + 1) = v17;
        v26[2] = v28;
        v27[0] = v29[0];
        v27[1] = v29[1];
        v18 = v28;
        sub_26125A7B0(v27, v26);

        if (!swift_dynamicCast())
        {
          break;
        }

        v6 &= v6 - 1;
        result = sub_26124E5EC(v18, *(&v18 + 1));
        if (v19)
        {
          v10 = v1;
          v11 = 16 * result;
          *(v2[6] + 16 * result) = v18;

          v12 = (v2[7] + v11);
          v1 = v10;
          *v12 = v24;
          v12[1] = v25;

          v9 = v13;
          if (!v6)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v18;
          v20 = (v2[7] + 16 * result);
          *v20 = v24;
          v20[1] = v25;
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_24;
          }

          v2[2] = v23;
          v9 = v13;
          if (!v6)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v9;
      }

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

char *sub_2612FACA0()
{
  v1 = v0;
  v50 = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v43 - v3;
  v5 = sub_26129B7C4();
  sub_26124AA44(v5, v4);
  v6 = sub_2613A124C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    v8 = sub_26124C718(v4, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v9 = sub_2613A122C();
    v10 = sub_2613A1D9C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_261243000, v9, v10, "[cleanup] Loading partner apps", v11, 2u);
      MEMORY[0x266701350](v11, -1, -1);
    }

    v8 = (*(v7 + 8))(v4, v6);
  }

  v12 = *(v1 + 16);
  MEMORY[0x28223BE20](v8);
  *(&v43 - 2) = sub_2612FB8A0;
  *(&v43 - 1) = v1;
  os_unfair_lock_lock(v12 + 4);
  sub_2612FB8D0(v48);
  v43 = 0;
  os_unfair_lock_unlock(v12 + 4);
  v13 = *&v48[0] + 64;
  v14 = 1 << *(*&v48[0] + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(*&v48[0] + 64);
  v17 = (v14 + 63) >> 6;
  v45 = *&v48[0];

  v18 = 0;
  v44 = MEMORY[0x277D84F90];
  while (1)
  {
    v19 = v18;
    if (!v16)
    {
      break;
    }

LABEL_13:
    v20 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v21 = (v18 << 10) | (16 * v20);
    v22 = (*(v45 + 48) + v21);
    v24 = *v22;
    v23 = v22[1];
    v25 = (*(v45 + 56) + v21);
    v26 = *v25;
    v27 = v25[1];
    v28 = objc_allocWithZone(MEMORY[0x277CC1E70]);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v29 = sub_2613A189C();
    v47[0] = 0;
    v30 = [v28 initWithBundleIdentifier:v29 allowPlaceholder:0 error:v47];

    if (!v30)
    {
      v33 = v47[0];
      v46 = v26;
      v34 = v33;
      v35 = sub_26139EE7C();

      swift_willThrow();
      v26 = v46;

      v32 = 0;
      v43 = 0;
      goto LABEL_19;
    }

    v31 = v47[0];
    if ([v30 isDeletable])
    {

      v32 = 1;
LABEL_19:
      sub_2612FF018(v24, v23, v26, v27, v32 & 1, v48);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v44 = sub_2612FB44C(0, *(v44 + 2) + 1, 1, v44);
      }

      v37 = *(v44 + 2);
      v36 = *(v44 + 3);
      if (v37 >= v36 >> 1)
      {
        v44 = sub_2612FB44C((v36 > 1), v37 + 1, 1, v44);
      }

      v38 = v44;
      *(v44 + 2) = v37 + 1;
      v39 = &v38[40 * v37];
      v40 = v48[0];
      v41 = v48[1];
      v39[64] = v49;
      *(v39 + 2) = v40;
      *(v39 + 3) = v41;
    }

    else
    {
      v32 = sub_2612FB9D8();
      LODWORD(v46) = v32;

      if (v46 != 2)
      {
        goto LABEL_19;
      }

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
    }
  }

  while (1)
  {
    v18 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
    }

    if (v18 >= v17)
    {
      break;
    }

    v16 = *(v13 + 8 * v18);
    ++v19;
    if (v16)
    {
      goto LABEL_13;
    }
  }

  return v44;
}

void sub_2612FB13C()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 4);
  sub_2612FBDE4();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_2612FB1AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_2612BC328(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v17;
  }

  else
  {
    v12 = sub_26124E5EC(a3, a4);
    v14 = v13;

    if (v14)
    {
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v5;
      v18 = *v5;
      if (!v15)
      {
        sub_2612BC4B0();
        v16 = v18;
      }

      result = sub_2612FB568(v12, v16);
      *v5 = v16;
    }
  }

  return result;
}

void sub_2612FB2B4()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 4);
  sub_2612FBFAC();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_2612FB320()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 4);
  sub_2612FBF44(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

uint64_t sub_2612FB388()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2612FB3C8(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result;
    v3 = *(result + 32);
    result += 32;
    if (!v3)
    {
LABEL_6:
      v7 = sub_2613A199C();
      swift_unknownObjectRelease();
      return v7;
    }

    v4 = 0;
    v5 = v1 - 1;
    while (v5 != v4)
    {
      if (!*(v2 + 33 + v4++))
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_2612FB44C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0288, "^F");
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2612FB568(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2613A205C() + 1) & ~v5;
    do
    {
      sub_2613A256C();

      sub_2613A19DC();
      v9 = sub_2613A25CC();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2612FB718()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_2613A189C();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_2613A202C();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    result = swift_dynamicCast();
    if (result)
    {
      return v4;
    }
  }

  else
  {
    sub_26124C718(v7, &qword_27FEA00C0, &unk_2613A44B0);
    return 0;
  }

  return result;
}

uint64_t sub_2612FB830(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0280, &qword_2613AB430);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2612FB8A0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2612FB8E8();
  *a1 = result;
  return result;
}

unint64_t sub_2612FB8E8()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_2613A189C();
  v2 = [v0 dictionaryForKey_];

  if (!v2 || (v3 = sub_2613A17FC(), v2, v4 = sub_2612FAA28(v3), , !v4))
  {
    v4 = sub_2612BEECC(MEMORY[0x277D84F90]);
  }

  return v4;
}

uint64_t sub_2612FB9D8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v1 = MEMORY[0x28223BE20](v0 - 8);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v5 = &v20 - v4;
  type metadata accessor for Mock();
  v6 = sub_26129B284(34);
  if (v6 == 2)
  {
    v11 = sub_26129B7C4();
    sub_26124AA44(v11, v3);
    v12 = sub_2613A124C();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v3, 1, v12) == 1)
    {
      sub_26124C718(v3, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v17 = sub_2613A122C();
      v18 = sub_2613A1D7C();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_261243000, v17, v18, "[cleanup] Mocking internal app install state to uninstalled", v19, 2u);
        MEMORY[0x266701350](v19, -1, -1);
      }

      (*(v13 + 8))(v3, v12);
    }

    return 0;
  }

  else if (v6 == 1)
  {
    v7 = sub_26129B7C4();
    sub_26124AA44(v7, v5);
    v8 = sub_2613A124C();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v5, 1, v8) == 1)
    {
      sub_26124C718(v5, &qword_27FE9F560, &qword_2613A3CB0);
      return 1;
    }

    else
    {
      v14 = sub_2613A122C();
      v15 = sub_2613A1D7C();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_261243000, v14, v15, "[cleanup] Mocking internal app install state to installed", v16, 2u);
        MEMORY[0x266701350](v16, -1, -1);
      }

      (*(v9 + 8))(v5, v8);
      return 1;
    }
  }

  else
  {
    return 2;
  }
}

void sub_2612FBCCC()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];

  sub_2612FB8E8();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2612BC328(v3, v4, v1, v2, isUniquelyReferenced_nonNull_native);

  v6 = [objc_opt_self() standardUserDefaults];
  v7 = sub_2613A17EC();

  v8 = sub_2613A189C();
  [v6 setObject:v7 forKey:v8];
}

void sub_2612FBE0C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  sub_2612FB8E8();
  sub_2612FB1AC(0, 0, v1, v2);
  v3 = [objc_opt_self() standardUserDefaults];
  v4 = sub_2613A17EC();

  v5 = sub_2613A189C();
  [v3 setObject:v4 forKey:v5];
}

uint64_t sub_2612FBEFC@<X0>(BOOL *a1@<X8>)
{
  v2 = *(sub_2612FB8E8() + 16);

  *a1 = v2 != 0;
  return result;
}

void *sub_2612FBF44@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t sub_2612FBFC4()
{
  sub_2612FC04C(&unk_2873BBA08);
  sub_2612FC148(&unk_2873BBA28);
  v0 = sub_2613A17EC();

  v1 = MKBGetDeviceLockState();

  return (v1 < 7) & (0x46u >> v1);
}

unint64_t sub_2612FC04C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0298, "BF");
    v3 = sub_2613A224C();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_26124E5EC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

uint64_t sub_2612FC148(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0290, &unk_2613AB480);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_2612FC1C0()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = [*(v1 + 16) currentLayout];
  v3 = v2;
  if (v2)
  {
  }

  os_unfair_lock_unlock((v1 + 24));
  return v3 != 0;
}

uint64_t sub_2612FC220()
{
  v0 = swift_allocObject();
  sub_2612FC258();
  return v0;
}

uint64_t sub_2612FC258()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15 - v3;
  v5 = [objc_opt_self() configurationForContinuityDisplay];
  [v5 setNeedsUserInteractivePriority_];
  v6 = [objc_opt_self() monitorWithConfiguration_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA02A0, ">F");
  v7 = swift_allocObject();
  *(v7 + 24) = 0;
  *(v7 + 16) = v6;
  *(v1 + 16) = v7;
  v8 = sub_26129B4FC();
  sub_26124AA44(v8, v4);
  v9 = sub_2613A124C();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v4, 1, v9) == 1)
  {

    sub_26124D0CC(v4);
  }

  else
  {
    v11 = sub_2613A122C();
    v12 = sub_2613A1D7C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_261243000, v11, v12, "ContinuityDisplayMonitor started monitoring", v13, 2u);
      MEMORY[0x266701350](v13, -1, -1);
    }

    (*(v10 + 8))(v4, v9);
  }

  return v1;
}

uint64_t sub_2612FC46C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  v5 = *(v1 + 16);

  os_unfair_lock_lock((v5 + 24));
  [*(v5 + 16) invalidate];
  os_unfair_lock_unlock((v5 + 24));

  v6 = sub_26129B4FC();
  sub_26124AA44(v6, v4);
  v7 = sub_2613A124C();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v4, 1, v7) == 1)
  {
    sub_26124D0CC(v4);
  }

  else
  {
    v9 = sub_2613A122C();
    v10 = sub_2613A1D7C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_261243000, v9, v10, "ContinuityDisplayMonitor finished monitoring", v11, 2u);
      MEMORY[0x266701350](v11, -1, -1);
    }

    (*(v8 + 8))(v4, v7);
  }

  return v1;
}

uint64_t sub_2612FC62C()
{
  sub_2612FC46C();

  return swift_deallocClassInstance();
}

uint64_t sub_2612FC684()
{
  sub_2613A256C();
  sub_2613A19DC();
  return sub_2613A25CC();
}

uint64_t sub_2612FC6F8(uint64_t a1)
{
  sub_2613A256C();
  sub_2613A19DC();
  return sub_2613A25CC();
}

uint64_t sub_2612FC794@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_2613A228C();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_2612FC7EC(uint64_t a1)
{
  v2 = sub_2612FC9F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2612FC828(uint64_t a1)
{
  v2 = sub_2612FC9F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2612FC864(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA02A8, "ZF");
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2612FC9F8();
  sub_2613A262C();
  v9[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA02B8, &qword_2613AB4F8);
  sub_2612FD430(&qword_27FEA02C0, sub_2612FCA4C, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
  sub_2613A23CC();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_2612FC9F8()
{
  result = qword_27FEA02B0;
  if (!qword_27FEA02B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA02B0);
  }

  return result;
}

unint64_t sub_2612FCA4C()
{
  result = qword_27FEA02C8;
  if (!qword_27FEA02C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA02C8);
  }

  return result;
}

void *sub_2612FCAA0@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_2612FCFD0(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_2612FCAE8()
{
  sub_2613A256C();
  sub_2613A19DC();
  return sub_2613A25CC();
}

uint64_t sub_2612FCB5C(uint64_t a1)
{
  sub_2613A256C();
  sub_2613A19DC();
  return sub_2613A25CC();
}

uint64_t sub_2612FCBBC@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_2613A228C();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_2612FCC48@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_2613A228C();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_2612FCCA0(uint64_t a1)
{
  v2 = sub_2612FD18C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2612FCCDC(uint64_t a1)
{
  v2 = sub_2612FD18C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2612FCD18@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA02E0, &qword_2613AB508);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2612FD18C();
  sub_2613A260C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v9 = sub_2613A22DC();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  *a2 = v9;
  a2[1] = v11;
  return result;
}

uint64_t sub_2612FCE94(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA02D0, &qword_2613AB500);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2612FD18C();
  sub_2613A262C();
  sub_2613A238C();
  return (*(v3 + 8))(v5, v2);
}

void *sub_2612FCFD0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0318, &qword_2613AB8B8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2612FC9F8();
  sub_2613A260C();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA02B8, &qword_2613AB4F8);
    sub_2612FD430(&qword_27FEA0320, sub_2612FD4B4, MEMORY[0x277D83808], MEMORY[0x277D83528]);
    sub_2613A231C();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v7;
}

unint64_t sub_2612FD18C()
{
  result = qword_27FEA02D8;
  if (!qword_27FEA02D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA02D8);
  }

  return result;
}

unint64_t sub_2612FD1E4()
{
  result = qword_27FEA02E8;
  if (!qword_27FEA02E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA02E8);
  }

  return result;
}

unint64_t sub_2612FD23C()
{
  result = qword_27FEA02F0;
  if (!qword_27FEA02F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA02F0);
  }

  return result;
}

unint64_t sub_2612FD294()
{
  result = qword_27FEA02F8;
  if (!qword_27FEA02F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA02F8);
  }

  return result;
}

unint64_t sub_2612FD2EC()
{
  result = qword_27FEA0300;
  if (!qword_27FEA0300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA0300);
  }

  return result;
}

unint64_t sub_2612FD344()
{
  result = qword_27FEA0308;
  if (!qword_27FEA0308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA0308);
  }

  return result;
}

unint64_t sub_2612FD39C()
{
  result = qword_27FEA0310;
  if (!qword_27FEA0310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA0310);
  }

  return result;
}

uint64_t sub_2612FD430(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEA02B8, &qword_2613AB4F8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2612FD4B4()
{
  result = qword_27FEA0328;
  if (!qword_27FEA0328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA0328);
  }

  return result;
}

unint64_t sub_2612FD524(char a1)
{
  result = 0x6863746142666173;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000018;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      result = 0xD00000000000001BLL;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    case 5:
    case 9:
      return result;
    case 6:
    case 10:
      result = 0xD000000000000013;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0xD000000000000015;
      break;
    case 11:
      result = 0x6973736553666173;
      break;
    case 12:
      result = 0xD000000000000015;
      break;
    case 13:
      result = 0xD000000000000015;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

unint64_t sub_2612FD734@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2612FEC0C(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_2612FD764@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2612FD524(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_2612FD790(char a1)
{
  result = 0x496E6F6973736573;
  switch(a1)
  {
    case 1:
      result = 0x746E61686372656DLL;
      break;
    case 2:
      result = 0x4972656E74726170;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x6973736553666173;
      break;
    case 5:
      result = 0x6449656C646E7562;
      break;
    case 6:
      result = 0x64697074666173;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 9:
      result = 0x797269707865;
      break;
    case 10:
      result = 0x6E6F73616572;
      break;
    case 11:
      result = 0x746361736E617274;
      break;
    case 12:
      result = 0x64496863746162;
      break;
    case 13:
      result = 0x7A69536863746162;
      break;
    case 14:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2612FD960(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a2;
  v7 = a5(*a1);
  v9 = v8;
  if (v7 == a5(v6) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_2613A241C();
  }

  return v12 & 1;
}

uint64_t sub_2612FDA0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *v3;
  sub_2613A256C();
  a3(v5);
  sub_2613A19DC();

  return sub_2613A25CC();
}

uint64_t sub_2612FDA90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  (a4)(*v4, a2, a3);
  sub_2613A19DC();
}

uint64_t sub_2612FDB00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = *v4;
  sub_2613A256C();
  a4(v6);
  sub_2613A19DC();

  return sub_2613A25CC();
}

unint64_t sub_2612FDB68@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2612FEC58(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_2612FDB98@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2612FD790(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2612FDBC4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v32 = MEMORY[0x277D84F90];
  v31 = *(a1 + 16);
  sub_261265DD4(0, v1, 0);
  v2 = v32;
  v4 = a1 + 56;
  result = sub_2613A204C();
  v6 = v31;
  v7 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v9 = result >> 6;
    v10 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_36;
    }

    v11 = *(a1 + 36);
    ++v7;
    v12 = result & 0x3F;
    v13 = 0xE900000000000064;
    v14 = 0x496E6F6973736573;
    switch(*(*(a1 + 48) + result))
    {
      case 1:
        v13 = 0xEA00000000006449;
        v14 = 0x746E61686372656DLL;
        break;
      case 2:
        v14 = 0x4972656E74726170;
        break;
      case 3:
        v14 = 0xD000000000000011;
        v13 = 0x80000002613B7F90;
        break;
      case 4:
        v14 = 0x6973736553666173;
        v13 = 0xEC00000064496E6FLL;
        break;
      case 5:
        v13 = 0xE800000000000000;
        v14 = 0x6449656C646E7562;
        break;
      case 6:
        v13 = 0xE700000000000000;
        v14 = 0x64697074666173;
        break;
      case 7:
        v14 = 0xD000000000000012;
        v13 = 0x80000002613BC310;
        break;
      case 8:
        v14 = 0xD000000000000013;
        v13 = 0x80000002613BC330;
        break;
      case 9:
        v13 = 0xE600000000000000;
        v14 = 0x797269707865;
        break;
      case 0xA:
        v13 = 0xE600000000000000;
        v14 = 0x6E6F73616572;
        break;
      case 0xB:
        v14 = 0x746361736E617274;
        v13 = 0xED000064496E6F69;
        break;
      case 0xC:
        v13 = 0xE700000000000000;
        v14 = 0x64496863746162;
        break;
      case 0xD:
        v13 = 0xE900000000000065;
        v14 = 0x7A69536863746162;
        break;
      case 0xE:
        v14 = 0xD000000000000014;
        v13 = 0x80000002613BC380;
        break;
      default:
        break;
    }

    v16 = *(v32 + 16);
    v15 = *(v32 + 24);
    if (v16 >= v15 >> 1)
    {
      v29 = *(a1 + 36);
      v30 = result;
      v27 = result & 0x3F;
      v28 = v7;
      sub_261265DD4((v15 > 1), v16 + 1, 1);
      v12 = v27;
      v7 = v28;
      v6 = v31;
      v11 = v29;
      result = v30;
    }

    *(v32 + 16) = v16 + 1;
    v17 = v32 + 16 * v16;
    *(v17 + 32) = v14;
    *(v17 + 40) = v13;
    v8 = 1 << *(a1 + 32);
    if (result >= v8)
    {
      goto LABEL_37;
    }

    v18 = *(v4 + 8 * v9);
    if ((v18 & v10) == 0)
    {
      goto LABEL_38;
    }

    if (v11 != *(a1 + 36))
    {
      goto LABEL_39;
    }

    v19 = v18 & (-2 << v12);
    if (v19)
    {
      v8 = __clz(__rbit64(v19)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v9 << 6;
      v21 = v9 + 1;
      v22 = (a1 + 64 + 8 * v9);
      while (v21 < (v8 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          v25 = v7;
          sub_26124A218(result, v11, 0);
          v7 = v25;
          v6 = v31;
          v8 = __clz(__rbit64(v23)) + v20;
          goto LABEL_4;
        }
      }

      v26 = v7;
      sub_26124A218(result, v11, 0);
      v7 = v26;
      v6 = v31;
    }

LABEL_4:
    result = v8;
    if (v7 == v6)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_2612FDFF8(char a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2612FD790(a1);
  v8 = v7;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v3 + 24);
  *(v3 + 24) = 0x8000000000000000;
  sub_2612BC328(a2, a3, v6, v8, isUniquelyReferenced_nonNull_native);

  *(v3 + 24) = v11;
  swift_endAccess();
}

uint64_t sub_2612FE0B4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v31 - v5;
  v7 = *(v1 + 16);
  v8 = sub_2612FD510(*(v1 + 16));
  v9 = sub_2612FDBC4(v8);

  v10 = sub_2612BEFE0(v9);

  swift_beginAccess();
  v11 = *(v1 + 24);
  v12 = *(v11 + 16);
  if (v12)
  {
    v32 = v1;
    v33 = v7;
    v34 = v6;
    v35 = a1;
    v13 = sub_2612BB720(v12, 0);
    v14 = sub_2612BC628(&v36, v13 + 4, v12, v11);
    v15 = v36;

    result = sub_2612BF078(v15);
    if (v14 != v12)
    {
      __break(1u);
      return result;
    }

    v6 = v34;
    a1 = v35;
    v7 = v33;
    v2 = v32;
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v17 = sub_2612BEFE0(v13);

  v18 = sub_2612BAA68(v10, v17);

  if (v18)
  {
    v19 = sub_2612FD508(v7);
    v20 = *(v2 + 24);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FB50, &qword_2613ABE40);
    v38 = sub_2612BF080();
    *&v36 = v20;

    return sub_2612B64A4(v19, &v36, a1);
  }

  else
  {
    v21 = sub_26129B7C4();
    sub_26124AA44(v21, v6);
    v22 = sub_2613A124C();
    v23 = *(v22 - 8);
    if ((*(v23 + 48))(v6, 1, v22) == 1)
    {
      result = sub_26124D0CC(v6);
    }

    else
    {

      v24 = sub_2613A122C();
      v25 = sub_2613A1D8C();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        *&v36 = v27;
        *v26 = 136315138;
        v28 = sub_2612FD524(v7);
        v30 = sub_26124C11C(v28, v29, &v36);

        *(v26 + 4) = v30;
        _os_log_impl(&dword_261243000, v24, v25, "The event %s is missing required fields", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v27);
        MEMORY[0x266701350](v27, -1, -1);
        MEMORY[0x266701350](v26, -1, -1);
      }

      result = (*(v23 + 8))(v6, v22);
    }

    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
  }

  return result;
}

uint64_t sub_2612FE420()
{
  sub_2613A211C();

  v1 = sub_2612FD524(*(v0 + 16));
  MEMORY[0x2666FFEA0](v1);

  MEMORY[0x2666FFEA0](0x3D3D3D3D3D3D3D20, 0xEA00000000000A3DLL);
  swift_beginAccess();

  v2 = sub_2613A180C();
  v4 = v3;

  MEMORY[0x2666FFEA0](v2, v4);

  return 0x3D3D3D3D3D3D3D3DLL;
}

uint64_t sub_2612FE548(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0340, qword_2613ABA80);
    v3 = sub_2613A20DC();
    v4 = 0;
    v5 = v3 + 56;
    v23 = a1 + 32;
    v22 = v1;
    while (1)
    {
      v6 = *(v23 + v4++);
      sub_2613A256C();
      sub_2613A19DC();

      result = sub_2613A25CC();
      v8 = ~(-1 << *(v3 + 32));
      v9 = result & v8;
      v10 = (result & v8) >> 6;
      v11 = *(v5 + 8 * v10);
      v12 = 1 << (result & v8);
      if ((v12 & v11) != 0)
      {
        while (1)
        {
          v13 = 0xE900000000000064;
          v14 = 0x496E6F6973736573;
          switch(*(*(v3 + 48) + v9))
          {
            case 1:
              v14 = 0x746E61686372656DLL;
              v13 = 0xEA00000000006449;
              break;
            case 2:
              v14 = 0x4972656E74726170;
              break;
            case 3:
              v14 = 0xD000000000000011;
              v13 = 0x80000002613B7F90;
              break;
            case 4:
              v14 = 0x6973736553666173;
              v13 = 0xEC00000064496E6FLL;
              break;
            case 5:
              v13 = 0xE800000000000000;
              v14 = 0x6449656C646E7562;
              break;
            case 6:
              v13 = 0xE700000000000000;
              v14 = 0x64697074666173;
              break;
            case 7:
              v14 = 0xD000000000000012;
              v13 = 0x80000002613BC310;
              break;
            case 8:
              v14 = 0xD000000000000013;
              v13 = 0x80000002613BC330;
              break;
            case 9:
              v13 = 0xE600000000000000;
              v14 = 0x797269707865;
              break;
            case 0xA:
              v13 = 0xE600000000000000;
              v14 = 0x6E6F73616572;
              break;
            case 0xB:
              v14 = 0x746361736E617274;
              v13 = 0xED000064496E6F69;
              break;
            case 0xC:
              v13 = 0xE700000000000000;
              v14 = 0x64496863746162;
              break;
            case 0xD:
              v13 = 0xE900000000000065;
              v14 = 0x7A69536863746162;
              break;
            case 0xE:
              v14 = 0xD000000000000014;
              v13 = 0x80000002613BC380;
              break;
            default:
              break;
          }

          v15 = 0x496E6F6973736573;
          v16 = 0xE900000000000064;
          switch(v6)
          {
            case 1:
              v16 = 0xEA00000000006449;
              if (v14 == 0x746E61686372656DLL)
              {
                goto LABEL_48;
              }

              goto LABEL_49;
            case 2:
              if (v14 != 0x4972656E74726170)
              {
                goto LABEL_49;
              }

              goto LABEL_48;
            case 3:
              v16 = 0x80000002613B7F90;
              if (v14 != 0xD000000000000011)
              {
                goto LABEL_49;
              }

              goto LABEL_48;
            case 4:
              v16 = 0xEC00000064496E6FLL;
              if (v14 != 0x6973736553666173)
              {
                goto LABEL_49;
              }

              goto LABEL_48;
            case 5:
              v16 = 0xE800000000000000;
              if (v14 != 0x6449656C646E7562)
              {
                goto LABEL_49;
              }

              goto LABEL_48;
            case 6:
              v16 = 0xE700000000000000;
              v17 = 0x697074666173;
              goto LABEL_44;
            case 7:
              v16 = 0x80000002613BC310;
              if (v14 != 0xD000000000000012)
              {
                goto LABEL_49;
              }

              goto LABEL_48;
            case 8:
              v16 = 0x80000002613BC330;
              if (v14 != 0xD000000000000013)
              {
                goto LABEL_49;
              }

              goto LABEL_48;
            case 9:
              v16 = 0xE600000000000000;
              if (v14 != 0x797269707865)
              {
                goto LABEL_49;
              }

              goto LABEL_48;
            case 10:
              v16 = 0xE600000000000000;
              v15 = 0x6E6F73616572;
              goto LABEL_47;
            case 11:
              v16 = 0xED000064496E6F69;
              if (v14 != 0x746361736E617274)
              {
                goto LABEL_49;
              }

              goto LABEL_48;
            case 12:
              v16 = 0xE700000000000000;
              v17 = 0x496863746162;
LABEL_44:
              if (v14 != (v17 & 0xFFFFFFFFFFFFLL | 0x64000000000000))
              {
                goto LABEL_49;
              }

              goto LABEL_48;
            case 13:
              v16 = 0xE900000000000065;
              if (v14 != 0x7A69536863746162)
              {
                goto LABEL_49;
              }

              goto LABEL_48;
            case 14:
              v16 = 0x80000002613BC380;
              if (v14 != 0xD000000000000014)
              {
                goto LABEL_49;
              }

              goto LABEL_48;
            default:
LABEL_47:
              if (v14 != v15)
              {
                goto LABEL_49;
              }

LABEL_48:
              if (v13 == v16)
              {

                goto LABEL_4;
              }

LABEL_49:
              v18 = sub_2613A241C();

              if (v18)
              {
                goto LABEL_4;
              }

              v9 = (v9 + 1) & v8;
              v10 = v9 >> 6;
              v11 = *(v5 + 8 * (v9 >> 6));
              v12 = 1 << v9;
              if ((v11 & (1 << v9)) == 0)
              {
                goto LABEL_54;
              }

              break;
          }
        }
      }

LABEL_54:
      *(v5 + 8 * v10) = v11 | v12;
      *(*(v3 + 48) + v9) = v6;
      v19 = *(v3 + 16);
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        break;
      }

      *(v3 + 16) = v21;
LABEL_4:
      if (v4 == v22)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}