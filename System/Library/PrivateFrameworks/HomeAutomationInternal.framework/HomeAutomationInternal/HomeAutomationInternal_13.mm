uint64_t sub_252A11988(uint64_t a1)
{
  if (StateSemantic.rawValue.getter() == 28271 && v1 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_252E37DB4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_252A11A10(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = a2 & 0xC000000000000001;
  if ((a2 & 0xC000000000000001) != 0)
  {
    if (!sub_252E378C4())
    {
      return 1;
    }
  }

  else if (!*(a2 + 16))
  {
    return 1;
  }

  v5 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (!sub_252E378C4())
    {
      return 1;
    }
  }

  else if (!*(a1 + 16))
  {
    return 1;
  }

  if (!v4)
  {
    v6 = *(v2 + 16);
    if (v5)
    {
      goto LABEL_11;
    }

LABEL_13:
    v7 = *(a1 + 16);
    goto LABEL_14;
  }

  v6 = sub_252E378C4();
  if (!v5)
  {
    goto LABEL_13;
  }

LABEL_11:
  v7 = sub_252E378C4();
LABEL_14:
  if (v6 >= v7)
  {
    v8 = a1;
  }

  else
  {
    v8 = v2;
  }

  if (v6 < v7)
  {
    v2 = a1;
  }

  if ((v8 & 0xC000000000000001) != 0)
  {

    sub_252E37874();
    type metadata accessor for Service(0);
    sub_252A19940(&qword_27F541EB0, type metadata accessor for Service, protocol conformance descriptor for Entity);
    result = sub_252E373E4();
    v8 = v39;
    v10 = v40;
    v11 = v41;
    v12 = v42;
    v13 = v43;
  }

  else
  {
    v14 = -1 << *(v8 + 32);
    v10 = v8 + 56;
    v11 = ~v14;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v13 = v16 & *(v8 + 56);

    v12 = 0;
  }

  v33 = v10;
  v17 = (v11 + 64) >> 6;
  v18 = v2 & 0xC000000000000001;
  v34 = v2;
  v37 = v2 + 56;
  v32 = v2 & 0xC000000000000001;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v20 = v13;
        if ((v8 & 0x8000000000000000) == 0)
        {
          break;
        }

        if (!sub_252E37904())
        {
          goto LABEL_52;
        }

        type metadata accessor for Service(0);
        swift_dynamicCast();
        v23 = v38;
        v36 = v20;
        if (!v18)
        {
          goto LABEL_37;
        }

LABEL_26:
        v19 = sub_252E37914();

        v13 = v36;
        if (v19)
        {
          sub_25291AE30(v8);

          return 0;
        }
      }

      v21 = v13;
      if (!v13)
      {
        v22 = v12;
        while (1)
        {
          v12 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            __break(1u);
            return result;
          }

          if (v12 >= v17)
          {
            break;
          }

          v21 = *(v10 + 8 * v12);
          ++v22;
          if (v21)
          {
            goto LABEL_33;
          }
        }

LABEL_52:
        sub_25291AE30(v8);

        return 1;
      }

LABEL_33:
      v36 = (v21 - 1) & v21;
      v23 = *(*(v8 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v21)))));
      v38 = v23;

      if (v18)
      {
        goto LABEL_26;
      }

LABEL_37:
      if (*(v34 + 16))
      {
        break;
      }

      v13 = v36;
    }

    sub_252E37EC4();
    sub_252E32E84();
    sub_252A19940(&qword_27F540680, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    sub_252E36E94();
    v35 = OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType;
    MEMORY[0x2530AE390](*(v23 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType));
    v24 = (v23 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);

    sub_252E37044();

    v25 = sub_252E37F14();
    v26 = -1 << *(v34 + 32);
    v27 = v25 & ~v26;
    if ((*(v37 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27))
    {
      break;
    }

LABEL_51:

    v10 = v33;
    v18 = v32;
    v13 = v36;
  }

  v28 = ~v26;
  while (1)
  {
    v29 = *(*(v34 + 48) + 8 * v27);

    if ((sub_252E32E54() & 1) == 0 || *(v29 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) != *(v23 + v35))
    {

      goto LABEL_41;
    }

    if (*(v29 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == *v24 && *(v29 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == v24[1])
    {
      break;
    }

    v31 = sub_252E37DB4();

    if (v31)
    {
      goto LABEL_55;
    }

LABEL_41:
    v27 = (v27 + 1) & v28;
    if (((*(v37 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
    {
      goto LABEL_51;
    }
  }

LABEL_55:
  sub_25291AE30(v8);

  return 0;
}

uint64_t sub_252A11F64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 1;
  }

  if (v2 >= v3)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  v5 = v4 + 56;
  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1;
  }

  v7 = 1 << *(v4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v23 = v8 & *(v4 + 56);
  v9 = (v7 + 63) >> 6;

  v11 = 0;
  while (1)
  {
    v12 = v23;
    if (!v23)
    {
      break;
    }

LABEL_18:
    v23 = (v12 - 1) & v12;
    if (*(v6 + 16))
    {
      sub_252E37EC4();
      StateSemantic.rawValue.getter();
      sub_252E37044();

      result = sub_252E37F14();
      v14 = ~(-1 << *(v6 + 32));
      for (i = result & v14; ((*(v6 + 56 + ((i >> 3) & 0xFFFFFFFFFFFFFF8)) >> i) & 1) != 0; i = (i + 1) & v14)
      {
        v16 = StateSemantic.rawValue.getter();
        v18 = v17;
        if (v16 == StateSemantic.rawValue.getter() && v18 == v19)
        {

LABEL_30:

          v22 = 0;
          goto LABEL_31;
        }

        v21 = sub_252E37DB4();

        if (v21)
        {
          goto LABEL_30;
        }
      }
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      return result;
    }

    if (v13 >= v9)
    {
      break;
    }

    v12 = *(v5 + 8 * v13);
    ++v11;
    if (v12)
    {
      v11 = v13;
      goto LABEL_18;
    }
  }

  v22 = 1;
LABEL_31:

  return v22;
}

uint64_t sub_252A1218C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 1;
  }

  if (v2 >= v3)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  v5 = v4 + 56;
  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1;
  }

  v7 = 1 << *(v4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v4 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = v6 + 56;

  v13 = 0;
  v25 = v4;
  while (v9)
  {
    v14 = v9;
LABEL_19:
    v9 = (v14 - 1) & v14;
    if (*(v6 + 16))
    {
      v16 = (*(v4 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v14)))));
      v18 = *v16;
      v17 = v16[1];
      sub_252E37EC4();

      sub_252E37044();
      v19 = sub_252E37F14();
      v20 = -1 << *(v6 + 32);
      v21 = v19 & ~v20;
      if ((*(v11 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
      {
        v22 = ~v20;
        while (1)
        {
          v23 = (*(v6 + 48) + 16 * v21);
          v24 = *v23 == v18 && v23[1] == v17;
          if (v24 || (sub_252E37DB4() & 1) != 0)
          {
            break;
          }

          v21 = (v21 + 1) & v22;
          if (((*(v11 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        return 0;
      }

LABEL_28:

      v4 = v25;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v10)
    {

      return 1;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      v13 = v15;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_252A12374(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(result + 16);
  if (!v3)
  {
    return 1;
  }

  v4 = 0;
  if (v2 >= v3)
  {
    v5 = result;
  }

  else
  {
    v5 = a2;
  }

  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = result;
  }

  v7 = 1 << *(v5 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v5 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = v6 + 56;
LABEL_13:
  while (v9)
  {
    v12 = v9;
LABEL_19:
    v9 = (v12 - 1) & v12;
    if (*(v6 + 16))
    {
      v14 = *(*(v5 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v12)))));
      sub_252E37EC4();
      MEMORY[0x2530AE390](v14);
      result = sub_252E37F14();
      v15 = -1 << *(v6 + 32);
      v16 = result & ~v15;
      if ((*(v11 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
      {
        v17 = ~v15;
        while (*(*(v6 + 48) + 8 * v16) != v14)
        {
          v16 = (v16 + 1) & v17;
          if (((*(v11 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        return 0;
      }
    }
  }

  while (1)
  {
    v13 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      return 1;
    }

    v12 = *(v5 + 56 + 8 * v13);
    ++v4;
    if (v12)
    {
      v4 = v13;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_252A124E4(uint64_t a1)
{
  if (StateSemantic.rawValue.getter() == 6710895 && v1 == 0xE300000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_252E37DB4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_252A12574()
{
  v1 = v0[64];
  if (v1 == 4)
  {
    goto LABEL_2;
  }

  v3 = v0[24];
  if (sub_252A0CE08(v0[64], 2u))
  {
LABEL_4:
    v2 = 1;
    return v2 & 1;
  }

  if ((sub_252A0CE08(v1, 3u) & 1) == 0)
  {
    goto LABEL_2;
  }

  memcpy(v5, v0 + 65, sizeof(v5));
  sub_252A10E18(&v6);
  if (v6 != 77 && sub_2529A78B0(v6, &unk_2864A43B0))
  {
    goto LABEL_4;
  }

  if (v3 == 2)
  {
LABEL_2:
    v2 = 0;
    return v2 & 1;
  }

  if (v3)
  {
    v2 = sub_252E37DB4();
  }

  else
  {
    v2 = 1;
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

BOOL sub_252A12698()
{
  v1 = *(v0 + 25);
  v2 = *(v0 + 64);
  v3 = *(v0 + 192);
  v4 = *(v0 + 256);
  if (sub_252A12574())
  {
    return 1;
  }

  if (v2 == 4 || (v6 = sub_252A0CE08(v2, 1u), result = 1, (v6 & 1) == 0))
  {
    if (sub_2529A78B0(10, v3) || sub_2529A78B0(9, v3))
    {
      return !*(v4 + 16) && v1 == 3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *sub_252A12828()
{
  v35 = *(v0 + 96);
  v34 = *(v35 + 16);
  if (!v34)
  {
    goto LABEL_41;
  }

  v1 = 0;
  v36 = 0;
  while (2)
  {
    if (v1 >= *(v35 + 16))
    {
      __break(1u);
      goto LABEL_49;
    }

    v2 = *(v35 + 32 + 8 * v1++);
    v37[0] = MEMORY[0x277D84FA0];
    v3 = 1 << *(v2 + 32);
    if (v3 < 64)
    {
      v4 = ~(-1 << v3);
    }

    else
    {
      v4 = -1;
    }

    v5 = v4 & *(v2 + 56);
    v6 = (v3 + 63) >> 6;

    v7 = 0;
    while (v5)
    {
LABEL_16:
      v9 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v10 = (*(v2 + 48) + ((v7 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      v13 = sub_252A9B42C(v11, v12);
      if (v13 != 71)
      {
        v14 = v13;
        if (sub_252A9AD58(v13) == 0xD00000000000001CLL && 0x8000000252E64890 == v15)
        {
LABEL_10:
        }

        else
        {
          v17 = sub_252E37DB4();

          if ((v17 & 1) == 0)
          {
            sub_252DA7FE0(&v38, v14);
            if (qword_27F53F310 != -1)
            {
              swift_once();
            }

            v18 = qword_27F5757B8;
            if (*(qword_27F5757B8 + 16))
            {
              v19 = sub_252A45194(v14);
              if (v20)
              {
                v21 = *(*(v18 + 56) + 8 * v19);
                v22 = *(v21 + 16);
                if (v22)
                {

                  v23 = 32;
                  do
                  {
                    sub_252DA7FE0(&v38, *(v21 + v23++));
                    --v22;
                  }

                  while (v22);
                  goto LABEL_10;
                }
              }
            }
          }
        }
      }
    }

    while (1)
    {
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_46:

        return MEMORY[0x277D84F90];
      }

      if (v8 >= v6)
      {
        break;
      }

      v5 = *(v2 + 56 + 8 * v8);
      ++v7;
      if (v5)
      {
        v7 = v8;
        goto LABEL_16;
      }
    }

    if (*(v37[0] + 16))
    {
      if (v36)
      {
        v24 = sub_252DFAF54(v37[0], v36);

        v36 = v24;
        if (!v24[2])
        {
          goto LABEL_46;
        }
      }

      else
      {
        v36 = v37[0];
      }
    }

    else
    {
    }

    if (v1 != v34)
    {
      continue;
    }

    break;
  }

  if (!v36)
  {
LABEL_41:
    if (qword_27F53F4E8 == -1)
    {
LABEL_42:
      v31 = sub_252E36AD4();
      __swift_project_value_buffer(v31, qword_27F544D60);
      sub_252E379F4();

      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540990, &qword_252E3DF50);
      v33 = MEMORY[0x2530AD730](v35, v32);
      MEMORY[0x2530AD570](v33);

      sub_252CC3D90(0xD000000000000027, 0x8000000252E71D50, 0xD000000000000078, 0x8000000252E71D80);
      goto LABEL_43;
    }

LABEL_49:
    swift_once();
    goto LABEL_42;
  }

  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v25 = sub_252E36AD4();
  __swift_project_value_buffer(v25, qword_27F544D60);
  sub_252E379F4();

  v37[0] = 0xD000000000000015;
  v37[1] = 0x8000000252E71E00;
  sub_252A198EC();
  v26 = sub_252E373B4();
  MEMORY[0x2530AD570](v26);

  sub_252CC3D90(0xD000000000000015, 0x8000000252E71E00, 0xD000000000000078, 0x8000000252E71D80);

  v27 = *(v36 + 16);
  if (v27)
  {
    v28 = sub_252DFA48C(*(v36 + 16), 0);
    v29 = sub_252E08698(v37, v28 + 32, v27, v36);
    result = sub_25291AE30(v37[0]);
    if (v29 == v27)
    {
      return v28;
    }

    __break(1u);
    return result;
  }

LABEL_43:

  return MEMORY[0x277D84F90];
}

BOOL sub_252A12D08()
{
  memcpy(__dst, v0, 0x1F8uLL);
  if (qword_27F53F520 != -1)
  {
    goto LABEL_178;
  }

  while (1)
  {
    v1 = sub_252E36AD4();
    __swift_project_value_buffer(v1, qword_27F544E08);
    sub_2529353AC(__dst, v136);
    v2 = sub_252E36AC4();
    v3 = sub_252E374C4();
    sub_252935408(__dst);
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v135 = v5;
      *v4 = 136315138;
      memcpy(__src, __dst, sizeof(__src));
      sub_2529353AC(__dst, v136);
      v6 = HomeAutomationIntent.description.getter();
      v8 = v7;
      memcpy(v136, __src, sizeof(v136));
      sub_252935408(v136);
      v9 = sub_252BE2CE0(v6, v8, &v135);

      *(v4 + 4) = v9;
      _os_log_impl(&dword_252917000, v2, v3, "Checking services: %s", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v5);
      MEMORY[0x2530AED00](v5, -1, -1);
      MEMORY[0x2530AED00](v4, -1, -1);
    }

    v10 = __dst[0];
    v11 = *(__dst[0] + 16);
    if (!v11)
    {
      break;
    }

    v12 = 0;
    v13 = __dst[0] + 168;
    v14 = MEMORY[0x277D84F90];
    while (v12 < v10[2])
    {
      v15 = *v13;
      v16 = *(*v13 + 16);
      v17 = *(v14 + 2);
      v18 = v17 + v16;
      if (__OFADD__(v17, v16))
      {
        goto LABEL_160;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v18 <= *(v14 + 3) >> 1)
      {
        if (*(v15 + 16))
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v17 <= v18)
        {
          v20 = v17 + v16;
        }

        else
        {
          v20 = v17;
        }

        v14 = sub_2529F80DC(isUniquelyReferenced_nonNull_native, v20, 1, v14);
        if (*(v15 + 16))
        {
LABEL_18:
          v21 = *(v14 + 2);
          if ((*(v14 + 3) >> 1) - v21 < v16)
          {
            goto LABEL_168;
          }

          memcpy(&v14[v21 + 32], (v15 + 32), v16);

          if (v16)
          {
            v22 = *(v14 + 2);
            v23 = __OFADD__(v22, v16);
            v24 = v22 + v16;
            if (v23)
            {
              goto LABEL_171;
            }

            *(v14 + 2) = v24;
          }

          goto LABEL_7;
        }
      }

      if (v16)
      {
        goto LABEL_161;
      }

LABEL_7:
      ++v12;
      v13 += 504;
      if (v11 == v12)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_160:
    __break(1u);
LABEL_161:
    __break(1u);
LABEL_162:
    __break(1u);
LABEL_163:
    __break(1u);
LABEL_164:
    __break(1u);
LABEL_165:
    __break(1u);
LABEL_166:
    __break(1u);
LABEL_167:
    __break(1u);
LABEL_168:
    __break(1u);
LABEL_169:
    __break(1u);
LABEL_170:
    __break(1u);
LABEL_171:
    __break(1u);
LABEL_172:
    __break(1u);
LABEL_173:
    __break(1u);
LABEL_174:
    __break(1u);
LABEL_175:
    __break(1u);
LABEL_176:
    __break(1u);
LABEL_177:
    __break(1u);
LABEL_178:
    swift_once();
  }

  v14 = MEMORY[0x277D84F90];
LABEL_23:
  v25 = __dst[17];
  v136[0] = __dst[17];

  sub_25297ADE8(v14);
  v26 = *(v136[0] + 16);
  v133 = v11;
  if (v26)
  {
    v129 = v25;
    v27 = (v136[0] + 32);
    v131 = MEMORY[0x277D84F90];
    v28 = (v136[0] + 32);
    v29 = *(v136[0] + 16);
    while (1)
    {
      v31 = *v28++;
      v30 = v31;
      __src[0] = v31;
      if (AccessoryTypeSemantic.rawValue.getter() != 0xD000000000000012 || 0x8000000252E65350 != v32)
      {
        v34 = sub_252E37DB4();

        if (v34)
        {
          goto LABEL_26;
        }

        __src[0] = v30;
        if (AccessoryTypeSemantic.rawValue.getter() != 0x706F4D746F626F72 || v35 != 0xE800000000000000)
        {
          v36 = sub_252E37DB4();

          if ((v36 & 1) == 0)
          {
            v37 = v131;
            v38 = swift_isUniquelyReferenced_nonNull_native();
            v136[0] = v131;
            if ((v38 & 1) == 0)
            {
              sub_2529AA4C0(0, *(v131 + 16) + 1, 1);
              v37 = v136[0];
            }

            v40 = *(v37 + 16);
            v39 = *(v37 + 24);
            if (v40 >= v39 >> 1)
            {
              sub_2529AA4C0((v39 > 1), v40 + 1, 1);
              v37 = v136[0];
            }

            *(v37 + 16) = v40 + 1;
            v131 = v37;
            *(v37 + v40 + 32) = v30;
            v11 = v133;
          }

          goto LABEL_26;
        }
      }

LABEL_26:
      if (!--v29)
      {
        v41 = MEMORY[0x277D84F90];
        while (1)
        {
          v43 = *v27++;
          v42 = v43;
          __src[0] = v43;
          if (AccessoryTypeSemantic.rawValue.getter() == 0xD000000000000012 && 0x8000000252E65350 == v44)
          {
            break;
          }

          v46 = sub_252E37DB4();

          if (v46)
          {
            goto LABEL_49;
          }

          __src[0] = v42;
          if (AccessoryTypeSemantic.rawValue.getter() == 0x706F4D746F626F72 && v47 == 0xE800000000000000)
          {
            break;
          }

          v51 = sub_252E37DB4();

          if (v51)
          {
            goto LABEL_49;
          }

LABEL_54:
          if (!--v26)
          {
            v25 = v129;
            v52 = v131;
            goto LABEL_59;
          }
        }

LABEL_49:
        v48 = swift_isUniquelyReferenced_nonNull_native();
        v136[0] = v41;
        if ((v48 & 1) == 0)
        {
          sub_2529AA4C0(0, *(v41 + 16) + 1, 1);
          v41 = v136[0];
        }

        v50 = *(v41 + 16);
        v49 = *(v41 + 24);
        if (v50 >= v49 >> 1)
        {
          sub_2529AA4C0((v49 > 1), v50 + 1, 1);
          v41 = v136[0];
        }

        *(v41 + 16) = v50 + 1;
        *(v41 + v50 + 32) = v42;
        goto LABEL_54;
      }
    }
  }

  v52 = MEMORY[0x277D84F90];
  v41 = MEMORY[0x277D84F90];
LABEL_59:

  v53 = *(v52 + 16);

  if (v53)
  {
    v54 = *(v41 + 16);

    if (!v54)
    {
      return 0;
    }
  }

  else
  {
  }

  v56 = 0;
  v57 = 0x8000000252E65350;
  do
  {
    v59 = v56;
    v60 = *(v25 + 16);
    v128 = v60;
    if (v59 == v60)
    {
      break;
    }

    if (v59 >= v60)
    {
      goto LABEL_174;
    }

    v61 = *(v25 + 32 + v59);
    LOBYTE(v136[0]) = v61;
    if (AccessoryTypeSemantic.rawValue.getter() == 0xD000000000000012 && 0x8000000252E65350 == v62)
    {
      goto LABEL_72;
    }

    v63 = sub_252E37DB4();

    if (v63)
    {
      break;
    }

    LOBYTE(v136[0]) = v61;
    if (AccessoryTypeSemantic.rawValue.getter() == 0x706F4D746F626F72 && v64 == 0xE800000000000000)
    {
LABEL_72:

      break;
    }

    v58 = sub_252E37DB4();

    v56 = v59 + 1;
  }

  while ((v58 & 1) == 0);
  v127 = v59;
  if (v11)
  {
    v65 = 0;
    v66 = v10 + 21;
    v67 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v65 >= v10[2])
      {
        goto LABEL_162;
      }

      v68 = *v66;
      v69 = *(*v66 + 16);
      v70 = *(v67 + 2);
      v71 = v70 + v69;
      if (__OFADD__(v70, v69))
      {
        goto LABEL_163;
      }

      v72 = swift_isUniquelyReferenced_nonNull_native();
      if (v72 && v71 <= *(v67 + 3) >> 1)
      {
        if (!*(v68 + 16))
        {
          goto LABEL_75;
        }
      }

      else
      {
        if (v70 <= v71)
        {
          v73 = v70 + v69;
        }

        else
        {
          v73 = v70;
        }

        v67 = sub_2529F80DC(v72, v73, 1, v67);
        if (!*(v68 + 16))
        {
LABEL_75:

          if (v69)
          {
            goto LABEL_164;
          }

          goto LABEL_76;
        }
      }

      v74 = *(v67 + 2);
      if ((*(v67 + 3) >> 1) - v74 < v69)
      {
        goto LABEL_169;
      }

      memcpy(&v67[v74 + 32], (v68 + 32), v69);

      if (v69)
      {
        v75 = *(v67 + 2);
        v23 = __OFADD__(v75, v69);
        v76 = v75 + v69;
        if (v23)
        {
          goto LABEL_172;
        }

        *(v67 + 2) = v76;
      }

LABEL_76:
      ++v65;
      v66 += 63;
      if (v11 == v65)
      {
        goto LABEL_92;
      }
    }
  }

  v67 = MEMORY[0x277D84F90];
LABEL_92:
  v77 = 0;
  v78 = *(v67 + 2);
  v126 = v78;
  do
  {
    v132 = v77;
    if (v78 == v77)
    {
      break;
    }

    if (v77 >= *(v67 + 2))
    {
      goto LABEL_175;
    }

    v80 = v67[v77 + 32];
    LOBYTE(v136[0]) = v80;
    if (AccessoryTypeSemantic.rawValue.getter() == 0xD000000000000012 && 0x8000000252E65350 == v81)
    {
      goto LABEL_101;
    }

    v82 = sub_252E37DB4();

    if (v82)
    {
      break;
    }

    LOBYTE(v136[0]) = v80;
    if (AccessoryTypeSemantic.rawValue.getter() == 0x706F4D746F626F72 && v83 == 0xE800000000000000)
    {
LABEL_101:

      break;
    }

    v79 = sub_252E37DB4();

    v77 = v132 + 1;
  }

  while ((v79 & 1) == 0);

  v84 = 0;
  v85 = __dst[18];
  v130 = *(__dst[18] + 16);
  v86 = __dst[18] + 32;
  do
  {
    v88 = v84;
    if (v130 == v84)
    {
      break;
    }

    if (v84 >= *(v85 + 16))
    {
      goto LABEL_176;
    }

    v89 = *(v86 + v84);
    LOBYTE(v136[0]) = v89;
    if (AccessoryTypeSemantic.rawValue.getter() == 0xD000000000000012 && 0x8000000252E65350 == v90)
    {
      goto LABEL_111;
    }

    v91 = sub_252E37DB4();

    if (v91)
    {
      break;
    }

    LOBYTE(v136[0]) = v89;
    if (AccessoryTypeSemantic.rawValue.getter() == 0x706F4D746F626F72 && v92 == 0xE800000000000000)
    {
LABEL_111:

      break;
    }

    v87 = sub_252E37DB4();

    v84 = v88 + 1;
  }

  while ((v87 & 1) == 0);
  if (v11)
  {
    v93 = 0;
    v94 = v10 + 22;
    v95 = MEMORY[0x277D84F90];
    while (v93 < v10[2])
    {
      v96 = v10;
      v97 = v57;
      v98 = *v94;
      v99 = *(*v94 + 16);
      v100 = *(v95 + 2);
      v101 = v100 + v99;
      if (__OFADD__(v100, v99))
      {
        goto LABEL_166;
      }

      v102 = swift_isUniquelyReferenced_nonNull_native();
      if (!v102 || v101 > *(v95 + 3) >> 1)
      {
        if (v100 <= v101)
        {
          v103 = v100 + v99;
        }

        else
        {
          v103 = v100;
        }

        v95 = sub_2529F80DC(v102, v103, 1, v95);
      }

      if (*(v98 + 16))
      {
        v104 = *(v95 + 2);
        if ((*(v95 + 3) >> 1) - v104 < v99)
        {
          goto LABEL_170;
        }

        memcpy(&v95[v104 + 32], (v98 + 32), v99);

        if (v99)
        {
          v105 = *(v95 + 2);
          v23 = __OFADD__(v105, v99);
          v106 = v105 + v99;
          if (v23)
          {
            goto LABEL_173;
          }

          *(v95 + 2) = v106;
        }
      }

      else
      {

        if (v99)
        {
          goto LABEL_167;
        }
      }

      ++v93;
      v94 += 63;
      v57 = v97;
      v10 = v96;
      if (v133 == v93)
      {
        goto LABEL_130;
      }
    }

    goto LABEL_165;
  }

  v95 = MEMORY[0x277D84F90];
LABEL_130:
  v107 = 0;
  v108 = *(v95 + 2);
  while (v108 != v107)
  {
    if (v107 >= *(v95 + 2))
    {
      goto LABEL_177;
    }

    v110 = v95[v107 + 32];
    LOBYTE(v136[0]) = v110;
    if (AccessoryTypeSemantic.rawValue.getter() == 0xD000000000000012 && v57 == v111)
    {
      goto LABEL_139;
    }

    v112 = sub_252E37DB4();

    if (v112)
    {
      goto LABEL_140;
    }

    LOBYTE(v136[0]) = v110;
    if (AccessoryTypeSemantic.rawValue.getter() == 0x706F4D746F626F72 && v113 == 0xE800000000000000)
    {
LABEL_139:

LABEL_140:

      return 1;
    }

    v109 = sub_252E37DB4();

    ++v107;
    if (v109)
    {
      goto LABEL_140;
    }
  }

  result = 1;
  if (v127 == v128 && v130 == v88 && v126 == v132)
  {
    v114 = 0;
    v115 = __dst[24];
    v116 = *(__dst[24] + 16);
    v117 = __dst[24] + 32;
    do
    {
      result = v116 != v114;
      if (v116 == v114)
      {
        break;
      }

      if (v114 >= *(v115 + 16))
      {
        __break(1u);
        return result;
      }

      v119 = v116 != v114;
      v120 = *(v117 + v114);
      LOBYTE(v136[0]) = v120;
      if (StateSemantic.rawValue.getter() == 0x6E61656C63 && v121 == 0xE500000000000000)
      {
        goto LABEL_140;
      }

      v122 = sub_252E37DB4();

      if (v122)
      {
        return v116 != v114;
      }

      LOBYTE(v136[0]) = v120;
      if (StateSemantic.rawValue.getter() == 0x6D7575636176 && v123 == 0xE600000000000000)
      {
        goto LABEL_140;
      }

      v124 = sub_252E37DB4();

      if (v124)
      {
        return v116 != v114;
      }

      LOBYTE(v136[0]) = v120;
      if (StateSemantic.rawValue.getter() == 7368557 && v125 == 0xE300000000000000)
      {
        goto LABEL_140;
      }

      v118 = sub_252E37DB4();

      ++v114;
      result = v119;
    }

    while ((v118 & 1) == 0);
  }

  return result;
}

void sub_252A13A70()
{
  v1 = v0[12];
  if (!*(v0[18] + 16) && !*(v0[17] + 16))
  {
    return;
  }

  v2 = *(v1 + 16);
  if (!v2)
  {
    return;
  }

  v3 = 0;
  while (1)
  {
    if (v3 >= *(v1 + 16))
    {
      __break(1u);
      return;
    }

    v4 = *(v1 + 32 + 8 * v3);
    if (*(v4 + 16))
    {
      break;
    }

LABEL_6:
    if (++v3 == v2)
    {
      return;
    }
  }

  sub_252E37EC4();

  sub_252E37044();
  v5 = sub_252E37F14();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
LABEL_5:

    goto LABEL_6;
  }

  v8 = ~v6;
  while (1)
  {
    v9 = (*(v4 + 48) + 16 * v7);
    v10 = *v9 == 0xD00000000000001CLL && 0x8000000252E64890 == v9[1];
    if (v10 || (sub_252E37DB4() & 1) != 0)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
    if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      goto LABEL_5;
    }
  }
}

uint64_t sub_252A13BEC()
{
  v43 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 152);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  v4 = v1 + 32;
  v36 = *(v0 + 344);
  v31 = v1;
  v32 = (v36 + 40);
  v29 = v1 + 32;
  v30 = v2;
  do
  {
    if (v3 >= *(v1 + 16))
    {
      goto LABEL_25;
    }

    v33 = v3;
    v5 = (v4 + 16 * v3);
    v6 = v5[1];
    v35 = *v5;
    v7 = *(v36 + 16);
    v37 = v6;

    v34 = v7;
    if (!v7)
    {
LABEL_21:

      return 0;
    }

    v8 = 0;
    v9 = v32;
    ++v33;
    while (1)
    {
      if (v8 >= *(v36 + 16))
      {
        __break(1u);
LABEL_25:
        __break(1u);
      }

      v10 = *v9;
      v41 = sub_252E36FA4();
      v42 = v11;
      v39 = 32;
      v40 = 0xE100000000000000;
      sub_252947DBC();
      v38 = v10;

      v12 = sub_252E37794();

      v13 = sub_252C75848(v12);

      v41 = sub_252E36FA4();
      v42 = v14;
      v39 = 32;
      v40 = 0xE100000000000000;
      v15 = sub_252E37794();

      v16 = sub_252C75848(v15);

      v17 = *(v16 + 32);
      v18 = v17 & 0x3F;
      v19 = ((1 << v17) + 63) >> 6;
      v20 = 8 * v19;
      swift_bridgeObjectRetain_n();

      if (v18 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
      {
        MEMORY[0x28223BE20](isStackAllocationSafe);
        bzero(&v29 - ((v20 + 15) & 0x3FFFFFFFFFFFFFF0), v20);
        v22 = sub_252DFB6DC((&v29 - ((v20 + 15) & 0x3FFFFFFFFFFFFFF0)), v19, v16, v13);

        swift_bridgeObjectRelease_n();
      }

      else
      {
        v27 = swift_slowAlloc();

        v22 = sub_252DFAFD4(v27, v19, v16, v13);

        MEMORY[0x2530AED00](v27, -1, -1);
      }

      v23 = v22[2];
      if (v23)
      {
        break;
      }

LABEL_7:
      ++v8;
      v9 += 2;
      if (v34 == v8)
      {
        goto LABEL_21;
      }
    }

    if (v23 <= *(v16 + 16) >> 3)
    {
      v41 = v16;
      sub_2529AAA28(v22);

      v25 = v41;
    }

    else
    {
      v24 = sub_2529AB8D0(v22, v16);

      v25 = v24;
    }

    v26 = *(v25 + 16);

    if (v26)
    {
      goto LABEL_7;
    }

    result = 1;
    v1 = v31;
    v3 = v33;
    v4 = v29;
  }

  while (v33 != v30);
  return result;
}

uint64_t sub_252A13FE0()
{
  v43 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 168);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  v4 = v1 + 32;
  v36 = *(v0 + 352);
  v31 = v1;
  v32 = (v36 + 40);
  v29 = v1 + 32;
  v30 = v2;
  do
  {
    if (v3 >= *(v1 + 16))
    {
      goto LABEL_25;
    }

    v33 = v3;
    v5 = (v4 + 16 * v3);
    v6 = v5[1];
    v35 = *v5;
    v7 = *(v36 + 16);
    v37 = v6;

    v34 = v7;
    if (!v7)
    {
LABEL_21:

      return 0;
    }

    v8 = 0;
    v9 = v32;
    ++v33;
    while (1)
    {
      if (v8 >= *(v36 + 16))
      {
        __break(1u);
LABEL_25:
        __break(1u);
      }

      v10 = *v9;
      v41 = sub_252E36FA4();
      v42 = v11;
      v39 = 32;
      v40 = 0xE100000000000000;
      sub_252947DBC();
      v38 = v10;

      v12 = sub_252E37794();

      v13 = sub_252C75848(v12);

      v41 = sub_252E36FA4();
      v42 = v14;
      v39 = 32;
      v40 = 0xE100000000000000;
      v15 = sub_252E37794();

      v16 = sub_252C75848(v15);

      v17 = *(v16 + 32);
      v18 = v17 & 0x3F;
      v19 = ((1 << v17) + 63) >> 6;
      v20 = 8 * v19;
      swift_bridgeObjectRetain_n();

      if (v18 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
      {
        MEMORY[0x28223BE20](isStackAllocationSafe);
        bzero(&v29 - ((v20 + 15) & 0x3FFFFFFFFFFFFFF0), v20);
        v22 = sub_252DFB6DC((&v29 - ((v20 + 15) & 0x3FFFFFFFFFFFFFF0)), v19, v16, v13);

        swift_bridgeObjectRelease_n();
      }

      else
      {
        v27 = swift_slowAlloc();

        v22 = sub_252DFAFD4(v27, v19, v16, v13);

        MEMORY[0x2530AED00](v27, -1, -1);
      }

      v23 = v22[2];
      if (v23)
      {
        break;
      }

LABEL_7:
      ++v8;
      v9 += 2;
      if (v34 == v8)
      {
        goto LABEL_21;
      }
    }

    if (v23 <= *(v16 + 16) >> 3)
    {
      v41 = v16;
      sub_2529AAA28(v22);

      v25 = v41;
    }

    else
    {
      v24 = sub_2529AB8D0(v22, v16);

      v25 = v24;
    }

    v26 = *(v25 + 16);

    if (v26)
    {
      goto LABEL_7;
    }

    result = 1;
    v1 = v31;
    v3 = v33;
    v4 = v29;
  }

  while (v33 != v30);
  return result;
}

uint64_t sub_252A143D4()
{
  v44 = *MEMORY[0x277D85DE8];
  v36 = *(v0 + 160);
  v34 = *(v36 + 16);
  if (!v34)
  {
    return 0;
  }

  v1 = *(v0 + 360);
  v30 = *(v1 + 16);
  if (!v30)
  {
    return 0;
  }

  v2 = 0;
  v39 = 0;
  v31 = (v36 + 40);
  v32 = v1 + 32;
  v29 = v1;
  while (2)
  {
    if (v2 >= *(v1 + 16))
    {
LABEL_25:
      __break(1u);
    }

    v4 = (v32 + 16 * v2);
    v5 = v4[1];
    v35 = *v4;
    v33 = v2 + 1;
    v37 = v5;

    v6 = 0;
    v7 = v31;
    do
    {
      if (v6 >= *(v36 + 16))
      {
        __break(1u);
        goto LABEL_25;
      }

      v8 = *v7;
      v42 = sub_252E36FA4();
      v43 = v9;
      v40 = 32;
      v41 = 0xE100000000000000;
      sub_252947DBC();

      v10 = sub_252E37794();

      v11 = sub_252C75848(v10);

      v38 = v8;
      v42 = sub_252E36FA4();
      v43 = v12;
      v40 = 32;
      v41 = 0xE100000000000000;
      v13 = sub_252E37794();

      v14 = sub_252C75848(v13);

      v15 = *(v14 + 32);
      LODWORD(v8) = v15 & 0x3F;
      v16 = ((1 << v15) + 63) >> 6;
      v17 = (8 * v16);
      swift_bridgeObjectRetain_n();

      if (v8 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
      {
        MEMORY[0x28223BE20](isStackAllocationSafe);
        bzero(&v28 - ((v17 + 15) & 0x3FFFFFFFFFFFFFF0), v17);
        v19 = v39;
        v20 = sub_252DFB6DC((&v28 - ((v17 + 15) & 0x3FFFFFFFFFFFFFF0)), v16, v14, v11);
        v39 = v19;
        if (v19)
        {

          v27 = v39;
          swift_willThrow();

          __break(1u);
LABEL_27:

          result = MEMORY[0x2530AED00](v17, -1, -1);
          __break(1u);
          return result;
        }

        v21 = v20;

        swift_bridgeObjectRelease_n();
      }

      else
      {
        v17 = swift_slowAlloc();

        v26 = v39;
        v21 = sub_252DFAFD4(v17, v16, v14, v11);

        v39 = v26;
        if (v26)
        {
          goto LABEL_27;
        }

        MEMORY[0x2530AED00](v17, -1, -1);
      }

      v22 = v21[2];
      if (v22)
      {
        if (v22 <= *(v14 + 16) >> 3)
        {
          v42 = v14;
          sub_2529AAA28(v21);

          v24 = v42;
        }

        else
        {
          v23 = sub_2529AB8D0(v21, v14);

          v24 = v23;
        }

        v25 = *(v24 + 16);

        if (!v25)
        {

          return 1;
        }
      }

      else
      {
      }

      ++v6;
      v7 += 2;
    }

    while (v34 != v6);

    result = 0;
    v1 = v29;
    v2 = v33;
    if (v33 != v30)
    {
      continue;
    }

    return result;
  }
}

uint64_t sub_252A14800()
{
  v1 = *(v0 + 19);
  v2 = *(v0 + 20);
  v3 = *(v0 + 21);
  memcpy(v90, v0 + 11, sizeof(v90));
  v4 = v0[7];
  v97 = v0[6];
  v98 = v4;
  v99 = v0[8];
  v5 = *(v0 + 18);
  v6 = v0[3];
  v93 = v0[2];
  v94 = v6;
  v7 = v0[5];
  v95 = v0[4];
  v96 = v7;
  v8 = v0[1];
  v91 = *v0;
  v92 = v8;
  v100 = v5;
  v101 = v1;
  v102 = v2;
  v103 = v3;
  memcpy(v104, v0 + 11, sizeof(v104));
  v9 = sub_252BAC7E4();
  v10 = sub_252BADB6C();
  KeyPath = swift_getKeyPath();
  LOBYTE(v2) = sub_2529304DC(KeyPath, v9);

  if ((v2 & 1) == 0)
  {
    v12 = swift_getKeyPath();
    v13 = sub_252BAF91C(v12, v9);

    if (!v13)
    {
      if (*(v1 + 16) > 1uLL || *(v3 + 16) >= 2uLL)
      {
        v24 = type metadata accessor for HomeStore(0);
        v25 = static HomeStore.shared.getter(v24);
        v26 = HomeStore.services(matching:supporting:)(v9, 0);
        v28 = v27;

        if (v28)
        {
LABEL_16:
          sub_252929F10(v26, v28 & 1);
          if (qword_27F53F520 != -1)
          {
            swift_once();
          }

          v29 = sub_252E36AD4();
          __swift_project_value_buffer(v29, qword_27F544E08);
          v20 = sub_252E36AC4();
          v21 = sub_252E374C4();
          if (os_log_type_enabled(v20, v21))
          {
            v22 = swift_slowAlloc();
            *v22 = 0;
            v23 = "Couldn't get targetedServices";
LABEL_20:
            _os_log_impl(&dword_252917000, v20, v21, v23, v22, 2u);
            MEMORY[0x2530AED00](v22, -1, -1);
          }

LABEL_21:

          return 0;
        }

        if (v26 >> 62)
        {
          if (!sub_252E378C4())
          {
            goto LABEL_16;
          }
        }

        else if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

LABEL_45:

        if (v26 >> 62)
        {
          v49 = sub_252E378C4();
          v88 = v10;
          if (v49)
          {
LABEL_47:
            v10 = 0;
            v89 = v26 & 0xC000000000000001;
            v50 = MEMORY[0x277D84F90];
            v51 = v26 & 0xFFFFFFFFFFFFFF8;
            do
            {
              if (v89)
              {
                v52 = MEMORY[0x2530ADF00](v10, v26);
                v53 = (v10 + 1);
                if (__OFADD__(v10, 1))
                {
                  goto LABEL_68;
                }
              }

              else
              {
                if (v10 >= *(v51 + 16))
                {
                  goto LABEL_69;
                }

                v52 = *(v26 + 8 * v10 + 32);

                v53 = (v10 + 1);
                if (__OFADD__(v10, 1))
                {
                  goto LABEL_68;
                }
              }

              v54 = v26;
              v55 = [*(v52 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
              v56 = sub_252E36F34();
              v58 = v57;

              if (qword_27F53F8B8 != -1)
              {
                swift_once();
              }

              v59 = off_27F546230;
              if (*(off_27F546230 + 2) && (v60 = sub_252A44A10(v56, v58), (v61 & 1) != 0))
              {
                v62 = *(v59[7] + 8 * v60);
              }

              else
              {
                v62 = 0;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v50 = sub_2529F7B8C(0, *(v50 + 2) + 1, 1, v50);
              }

              v26 = v54;
              v64 = *(v50 + 2);
              v63 = *(v50 + 3);
              if (v64 >= v63 >> 1)
              {
                v50 = sub_2529F7B8C((v63 > 1), v64 + 1, 1, v50);
              }

              *(v50 + 2) = v64 + 1;
              *&v50[8 * v64 + 32] = v62;
              ++v10;
            }

            while (v53 != v49);
LABEL_89:

            v79 = sub_252DF9734(v50);

            if (*(v79 + 16) == 1)
            {
              if (qword_27F53F4E8 != -1)
              {
                swift_once();
              }

              v80 = sub_252E36AD4();
              __swift_project_value_buffer(v80, qword_27F544D60);
              *&v91 = 0;
              *(&v91 + 1) = 0xE000000000000000;
              sub_252E379F4();

              *&v91 = 0xD000000000000013;
              *(&v91 + 1) = 0x8000000252E71ED0;
              v81 = MEMORY[0x2530AD730](v79, &type metadata for HomeDeviceType);
              v83 = v82;

              MEMORY[0x2530AD570](v81, v83);

              MEMORY[0x2530AD570](0xD000000000000018, 0x8000000252E71EF0);
              v84 = type metadata accessor for Service(0);
              v71 = MEMORY[0x2530AD730](v26, v84);
              v73 = v85;
              goto LABEL_93;
            }

LABEL_94:

            return 1;
          }
        }

        else
        {
          v49 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v88 = v10;
          if (v49)
          {
            goto LABEL_47;
          }
        }

        v50 = MEMORY[0x277D84F90];
        goto LABEL_89;
      }

      v44 = type metadata accessor for HomeStore(0);
      v45 = v10;
      v46 = static HomeStore.shared.getter(v44);
      v33 = v45;
      v26 = HomeStore.services(matching:supporting:)(v9, v45);
      v48 = v47;

      if ((v48 & 1) == 0)
      {
        if (v26 >> 62)
        {
          if (sub_252E378C4())
          {
            goto LABEL_44;
          }
        }

        else if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_44:
          v10 = v45;
          goto LABEL_45;
        }
      }

      sub_252929F10(v26, v48 & 1);
      if (qword_27F53F520 != -1)
      {
        swift_once();
      }

      v87 = sub_252E36AD4();
      __swift_project_value_buffer(v87, qword_27F544E08);
      v75 = sub_252E36AC4();
      v76 = sub_252E374C4();
      if (!os_log_type_enabled(v75, v76))
      {
        goto LABEL_101;
      }

      v77 = swift_slowAlloc();
      *v77 = 0;
      v78 = "Couldn't get targetedServices";
      goto LABEL_100;
    }
  }

  if (*(v1 + 16) <= 1uLL && *(v3 + 16) < 2uLL)
  {
    v30 = type metadata accessor for HomeStore(0);
    v31 = v10;
    v32 = static HomeStore.shared.getter(v30);
    v33 = v31;
    v16 = HomeStore.accessories(matching:supporting:)(v9, v31);
    v35 = v34;

    if ((v35 & 1) == 0)
    {
      if (v16 >> 62)
      {
        if (sub_252E378C4())
        {
          goto LABEL_25;
        }
      }

      else if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_25:
        v10 = v31;
        goto LABEL_26;
      }
    }

    sub_252929F10(v16, v35 & 1);
    if (qword_27F53F520 != -1)
    {
      swift_once();
    }

    v74 = sub_252E36AD4();
    __swift_project_value_buffer(v74, qword_27F544E08);
    v75 = sub_252E36AC4();
    v76 = sub_252E374C4();
    if (!os_log_type_enabled(v75, v76))
    {
LABEL_101:

      return 0;
    }

    v77 = swift_slowAlloc();
    *v77 = 0;
    v78 = "Couldn't get targetedAccessories";
LABEL_100:
    _os_log_impl(&dword_252917000, v75, v76, v78, v77, 2u);
    MEMORY[0x2530AED00](v77, -1, -1);
    goto LABEL_101;
  }

  v14 = type metadata accessor for HomeStore(0);
  v15 = static HomeStore.shared.getter(v14);
  v16 = HomeStore.accessories(matching:supporting:)(v9, 0);
  v18 = v17;

  if (v18)
  {
    goto LABEL_8;
  }

  if (v16 >> 62)
  {
    if (!sub_252E378C4())
    {
LABEL_8:
      sub_252929F10(v16, v18 & 1);
      if (qword_27F53F520 != -1)
      {
        goto LABEL_70;
      }

      goto LABEL_9;
    }
  }

  else if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_26:

  if (v16 >> 62)
  {
    v36 = sub_252E378C4();
    v88 = v10;
    if (v36)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v36 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v88 = v10;
    if (v36)
    {
LABEL_28:
      v10 = 0;
      v37 = MEMORY[0x277D84F90];
      while (1)
      {
        if ((v16 & 0xC000000000000001) != 0)
        {
          v39 = MEMORY[0x2530ADF00](v10, v16);
          v38 = v39;
          v40 = (v10 + 1);
          if (__OFADD__(v10, 1))
          {
            goto LABEL_66;
          }
        }

        else
        {
          if (v10 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_67;
          }

          v38 = *(v16 + 8 * v10 + 32);

          v40 = (v10 + 1);
          if (__OFADD__(v10, 1))
          {
LABEL_66:
            __break(1u);
LABEL_67:
            __break(1u);
LABEL_68:
            __break(1u);
LABEL_69:
            __break(1u);
LABEL_70:
            swift_once();
LABEL_9:
            v19 = sub_252E36AD4();
            __swift_project_value_buffer(v19, qword_27F544E08);
            v20 = sub_252E36AC4();
            v21 = sub_252E374C4();
            if (os_log_type_enabled(v20, v21))
            {
              v22 = swift_slowAlloc();
              *v22 = 0;
              v23 = "Couldn't get targetedAccessories";
              goto LABEL_20;
            }

            goto LABEL_21;
          }
        }

        v41 = (*(*v38 + 256))(v39);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v37 = sub_2529F7B8C(0, *(v37 + 2) + 1, 1, v37);
        }

        v43 = *(v37 + 2);
        v42 = *(v37 + 3);
        if (v43 >= v42 >> 1)
        {
          v37 = sub_2529F7B8C((v42 > 1), v43 + 1, 1, v37);
        }

        *(v37 + 2) = v43 + 1;
        *&v37[8 * v43 + 32] = v41;
        ++v10;
        if (v40 == v36)
        {
          goto LABEL_75;
        }
      }
    }
  }

  v37 = MEMORY[0x277D84F90];
LABEL_75:

  v65 = sub_252DF9734(v37);

  if (*(v65 + 16) != 1)
  {
    goto LABEL_94;
  }

  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v66 = sub_252E36AD4();
  __swift_project_value_buffer(v66, qword_27F544D60);
  *&v91 = 0;
  *(&v91 + 1) = 0xE000000000000000;
  sub_252E379F4();

  *&v91 = 0xD000000000000013;
  *(&v91 + 1) = 0x8000000252E71ED0;
  v67 = MEMORY[0x2530AD730](v65, &type metadata for HomeDeviceType);
  v69 = v68;

  MEMORY[0x2530AD570](v67, v69);

  MEMORY[0x2530AD570](0xD000000000000018, 0x8000000252E71EF0);
  v70 = type metadata accessor for Accessory(0);
  v71 = MEMORY[0x2530AD730](v16, v70);
  v73 = v72;
LABEL_93:

  MEMORY[0x2530AD570](v71, v73);

  sub_252CC3D90(v91, *(&v91 + 1), 0xD000000000000078, 0x8000000252E71D80);

  return 0;
}

BOOL sub_252A15404()
{
  if (*(v0[4] + 16))
  {
    return 1;
  }

  if (*(v0[6] + 16))
  {
    return 1;
  }

  if (*(v0[13] + 16))
  {
    return 1;
  }

  if (*(v0[16] + 16))
  {
    return 1;
  }

  if (*(v0[17] + 16))
  {
    return 1;
  }

  if (*(v0[18] + 16))
  {
    return 1;
  }

  if (*(v0[19] + 16))
  {
    return 1;
  }

  if (*(v0[20] + 16))
  {
    return 1;
  }

  if (*(v0[21] + 16))
  {
    return 1;
  }

  return *(v0[28] + 16) != 0;
}

BOOL sub_252A154CC()
{
  result = 0;
  if (*(v0 + 8) == 3 && *(v0 + 9) == 3)
  {
    if (*(v0 + 10))
    {
      if (!*(v0 + 16) && *(v0 + 24) == 2 && *(v0 + 25) == 3 && *(v0 + 26) == 4)
      {
        result = 0;
        if (!*(*(v0 + 32) + 16) && *(v0 + 40) == 4)
        {
          if (*(*(v0 + 48) + 16))
          {
            return 0;
          }

          result = 0;
          if (!*(*(v0 + 56) + 16) && *(v0 + 64) == 4)
          {
            if (*(*(v0 + 72) + 16) || *(*(v0 + 80) + 16) || *(*(v0 + 88) + 16) || *(*(v0 + 96) + 16) || *(*(v0 + 104) + 16) || *(*(v0 + 112) + 16) || *(*(v0 + 120) + 16) || *(*(v0 + 128) + 16) || *(*(v0 + 136) + 16) || *(*(v0 + 144) + 16) || *(*(v0 + 152) + 16) || *(*(v0 + 160) + 16) || *(*(v0 + 168) + 16) || *(*(v0 + 176) + 16) || *(*(v0 + 184) + 16) || *(*(v0 + 192) + 16))
            {
              return 0;
            }

            result = 0;
            if (!*(*(v0 + 200) + 16) && *(v0 + 208) == 9 && *(v0 + 209) == 2)
            {
              if (*(*(v0 + 216) + 16))
              {
                return 0;
              }

              result = 0;
              if (((*(*(v0 + 224) + 16) == 0) & *(v0 + 232)) == 1 && !*(v0 + 248))
              {
                result = 0;
                if (((*(*(v0 + 256) + 16) == 0) & *(v0 + 289)) == 1 && !*(v0 + 296) && !*(v0 + 304))
                {
                  if (*(*(v0 + 328) + 16) || *(*(v0 + 336) + 16) || *(*(v0 + 344) + 16) || *(*(v0 + 352) + 16) || *(*(v0 + 360) + 16) || *(*(v0 + 376) + 16))
                  {
                    return 0;
                  }

                  v2 = *(v0 + 392);
                  if (v2 >> 62)
                  {
                    v3 = sub_252E378C4();
                  }

                  else
                  {
                    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  }

                  return v3 == 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_252A15750()
{
  v1 = *(v0 + 96);
  v2 = MEMORY[0x277D84FA0];
  v27 = MEMORY[0x277D84FA0];
  v25 = *(v1 + 16);
  if (v25)
  {
    v3 = 0;
    v23 = v1;
    v24 = v1 + 32;
    while (2)
    {
      if (v3 >= *(v1 + 16))
      {
LABEL_29:
        __break(1u);
        return;
      }

      v4 = *(v24 + 8 * v3++);
      v5 = 1 << *(v4 + 32);
      if (v5 < 64)
      {
        v6 = ~(-1 << v5);
      }

      else
      {
        v6 = -1;
      }

      v7 = v6 & *(v4 + 56);
      v8 = (v5 + 63) >> 6;

      v9 = 0;
      while (v7)
      {
LABEL_15:
        v11 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
        v12 = (*(v4 + 48) + ((v9 << 10) | (16 * v11)));
        v13 = *v12;
        v14 = v12[1];

        v15 = sub_252A9B42C(v13, v14);
        if (v15 != 71)
        {
          v16 = v15;
          if (sub_252A9AD58(v15) == 0xD00000000000001CLL && 0x8000000252E64890 == v17)
          {
          }

          else
          {
            v19 = sub_252E37DB4();

            if ((v19 & 1) == 0)
            {
              sub_252DA7FE0(&v26, v16);
            }
          }
        }
      }

      while (1)
      {
        v10 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          __break(1u);
          goto LABEL_29;
        }

        if (v10 >= v8)
        {
          break;
        }

        v7 = *(v4 + 56 + 8 * v10);
        ++v9;
        if (v7)
        {
          v9 = v10;
          goto LABEL_15;
        }
      }

      v1 = v23;
      if (v3 != v25)
      {
        continue;
      }

      break;
    }

    v2 = v27;
  }

  v20 = *(v2 + 16);
  if (v20)
  {
    v21 = sub_252DFA48C(*(v2 + 16), 0);
    v22 = sub_252E08698(&v26, v21 + 32, v20, v2);
    sub_25291AE30(v26);
    if (v22 == v20)
    {
      return;
    }

    __break(1u);
  }
}

void *sub_252A15974()
{
  v1 = *v0;
  v2 = sub_252CC6AF4(MEMORY[0x277D84F90]);
  v37 = *(v1 + 16);
  if (!v37)
  {
    return v2;
  }

  v3 = 0;
  v4 = (v1 + 32);
  while (v3 < *(v1 + 16))
  {
    memcpy(__dst, v4, 0x1F8uLL);
    ++v3;
    v5 = 7628147;
    v6 = 0xD000000000000012;
    v7 = 0x656E4F6863696877;
    if (__dst[208] != 8)
    {
      v7 = 0;
    }

    v8 = 0xEF64656C69614673;
    if (__dst[208] != 8)
    {
      v8 = 0xE000000000000000;
    }

    if (__dst[208] != 7)
    {
      v6 = v7;
    }

    v9 = 0x8000000252E678E0;
    if (__dst[208] != 7)
    {
      v9 = v8;
    }

    if (__dst[208] == 5)
    {
      v10 = 0xD000000000000011;
    }

    else
    {
      v10 = 0xD000000000000010;
    }

    v11 = 0x8000000252E678C0;
    if (__dst[208] == 5)
    {
      v11 = 0x8000000252E678A0;
    }

    if (__dst[208] <= 6u)
    {
      v6 = v10;
      v9 = v11;
    }

    v12 = 2003789939;
    if (__dst[208] != 3)
    {
      v12 = 0x746E756F63;
    }

    v13 = 0xE400000000000000;
    if (__dst[208] != 3)
    {
      v13 = 0xE500000000000000;
    }

    if (__dst[208] == 2)
    {
      v12 = 0x656C67676F74;
      v13 = 0xE600000000000000;
    }

    if (__dst[208])
    {
      v5 = 7628135;
    }

    if (__dst[208] <= 1u)
    {
      v14 = 0xE300000000000000;
    }

    else
    {
      v5 = v12;
      v14 = v13;
    }

    if (__dst[208] <= 4u)
    {
      v15 = v5;
    }

    else
    {
      v15 = v6;
    }

    if (__dst[208] <= 4u)
    {
      v16 = v14;
    }

    else
    {
      v16 = v9;
    }

    sub_2529353AC(__dst, v38);
    sub_2529353AC(__dst, v38);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38[0] = v2;
    v19 = sub_252A44A10(v15, v16);
    v20 = v2[2];
    v21 = (v18 & 1) == 0;
    v22 = v20 + v21;
    if (__OFADD__(v20, v21))
    {
      goto LABEL_54;
    }

    v23 = v18;
    if (v2[3] >= v22)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v18)
        {
          goto LABEL_43;
        }
      }

      else
      {
        sub_252E03A60();
        v2 = v38[0];
        if (v23)
        {
          goto LABEL_43;
        }
      }
    }

    else
    {
      sub_252DFFEF4(v22, isUniquelyReferenced_nonNull_native);
      v2 = v38[0];
      v24 = sub_252A44A10(v15, v16);
      if ((v23 & 1) != (v25 & 1))
      {
        goto LABEL_56;
      }

      v19 = v24;
      if (v23)
      {
LABEL_43:

        goto LABEL_47;
      }
    }

    v2[(v19 >> 6) + 8] |= 1 << v19;
    v26 = (v2[6] + 16 * v19);
    *v26 = v15;
    v26[1] = v16;
    *(v2[7] + 8 * v19) = MEMORY[0x277D84F90];
    v27 = v2[2];
    v28 = __OFADD__(v27, 1);
    v29 = v27 + 1;
    if (v28)
    {
      goto LABEL_55;
    }

    v2[2] = v29;
LABEL_47:
    v30 = v2[7];
    v31 = *(v30 + 8 * v19);
    v32 = swift_isUniquelyReferenced_nonNull_native();
    *(v30 + 8 * v19) = v31;
    if ((v32 & 1) == 0)
    {
      v31 = sub_2529F7FB0(0, *(v31 + 2) + 1, 1, v31);
      *(v30 + 8 * v19) = v31;
    }

    v34 = *(v31 + 2);
    v33 = *(v31 + 3);
    if (v34 >= v33 >> 1)
    {
      *(v30 + 8 * v19) = sub_2529F7FB0((v33 > 1), v34 + 1, 1, v31);
    }

    sub_252935408(__dst);
    v35 = *(v30 + 8 * v19);
    *(v35 + 16) = v34 + 1;
    memcpy((v35 + 504 * v34 + 32), __dst, 0x1F8uLL);
    v4 += 504;
    if (v37 == v3)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  result = sub_252E37E24();
  __break(1u);
  return result;
}

uint64_t sub_252A15CE0()
{
  v1 = *(v0 + 17);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    v4 = MEMORY[0x277D84F90];
    do
    {
      v5 = *v3++;
      LOBYTE(v123) = v5;
      v6 = sub_252A47F84(&v123);
      if ((v7 & 1) == 0)
      {
        v8 = v6;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_2529F7B8C(0, *(v4 + 2) + 1, 1, v4);
        }

        v10 = *(v4 + 2);
        v9 = *(v4 + 3);
        if (v10 >= v9 >> 1)
        {
          v4 = sub_2529F7B8C((v9 > 1), v10 + 1, 1, v4);
        }

        *(v4 + 2) = v10 + 1;
        *&v4[8 * v10 + 32] = v8;
      }

      --v2;
    }

    while (v2);
LABEL_19:
    v20 = sub_252C759A0(v4);

    if (qword_27F53F248 != -1)
    {
      swift_once();
    }

    v21 = sub_252A12374(qword_27F575730, v20);

    v22 = v21 ^ 1;
    return v22 & 1;
  }

  v11 = *(v0 + 18);
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = (v11 + 32);
    v4 = MEMORY[0x277D84F90];
    do
    {
      v14 = *v13++;
      LOBYTE(v123) = v14;
      v15 = sub_252A47F84(&v123);
      if ((v16 & 1) == 0)
      {
        v17 = v15;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_2529F7B8C(0, *(v4 + 2) + 1, 1, v4);
        }

        v19 = *(v4 + 2);
        v18 = *(v4 + 3);
        if (v19 >= v18 >> 1)
        {
          v4 = sub_2529F7B8C((v18 > 1), v19 + 1, 1, v4);
        }

        *(v4 + 2) = v19 + 1;
        *&v4[8 * v19 + 32] = v17;
      }

      --v12;
    }

    while (v12);
    goto LABEL_19;
  }

  v24 = *(v0 + 19);
  v25 = *(v0 + 20);
  v26 = *(v0 + 21);
  v27 = v0[7];
  v129 = v0[6];
  v130 = v27;
  v28 = *(v0 + 16);
  v29 = v0[3];
  v125 = v0[2];
  v126 = v29;
  v30 = v0[5];
  v127 = v0[4];
  v128 = v30;
  v31 = v0[1];
  v123 = *v0;
  v124 = v31;
  v131 = v28;
  v132 = v1;
  v133 = v11;
  v134 = v24;
  v135 = v25;
  v136 = v26;
  memcpy(v137, v0 + 11, sizeof(v137));
  v32 = sub_252BAC7E4();
  v33 = v0[7];
  v129 = v0[6];
  v130 = v33;
  v34 = *(v0 + 16);
  v35 = v0[3];
  v125 = v0[2];
  v126 = v35;
  v36 = v0[5];
  v127 = v0[4];
  v128 = v36;
  v37 = v0[1];
  v123 = *v0;
  v124 = v37;
  v131 = v34;
  v132 = v1;
  v133 = v11;
  v134 = v24;
  v135 = v25;
  v136 = v26;
  memcpy(v137, v0 + 11, sizeof(v137));
  v38 = sub_252BADB6C();
  v39 = v38;
  if (*(v26 + 16) || *(v24 + 16) || ![v38 attribute])
  {
    v40 = type metadata accessor for HomeStore(0);
    v41 = static HomeStore.shared.getter(v40);
    v42 = HomeStore.accessories(matching:supporting:)(v32, 0);
    v44 = v43;

    if (v44)
    {
      sub_252929F10(v42, 1);

LABEL_110:
      v22 = 0;
      return v22 & 1;
    }
  }

  else
  {
    v45 = type metadata accessor for HomeStore(0);
    v46 = static HomeStore.shared.getter(v45);
    v47 = v39;
    v42 = HomeStore.accessories(matching:supporting:)(v32, v39);
    v49 = v48;

    if (v49)
    {
      sub_252929F10(v42, 1);

      goto LABEL_110;
    }
  }

  v117 = v42 >> 62;
  if (v42 >> 62)
  {
    goto LABEL_117;
  }

  if (!*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_109:

    goto LABEL_110;
  }

LABEL_32:
  if (qword_27F53F248 != -1)
  {
    swift_once();
  }

  v50 = qword_27F575730;
  v51 = qword_27F575730 + 56;
  v52 = 1 << *(qword_27F575730 + 32);
  if (v52 < 64)
  {
    v53 = ~(-1 << v52);
  }

  else
  {
    v53 = -1;
  }

  v54 = v53 & *(qword_27F575730 + 56);
  v55 = (v52 + 63) >> 6;
  v56 = v42 & 0xFFFFFFFFFFFFFF8;
  v118 = v42 + 32;
  v119 = v42 & 0xC000000000000001;

  v57 = 0;
  do
  {
LABEL_38:
    if (v54)
    {
      goto LABEL_43;
    }

    do
    {
      v58 = v57 + 1;
      if (__OFADD__(v57, 1))
      {
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
        if (!sub_252E378C4())
        {
          goto LABEL_109;
        }

        goto LABEL_32;
      }

      if (v58 >= v55)
      {

        goto LABEL_109;
      }

      v54 = *(v51 + 8 * v58);
      ++v57;
    }

    while (!v54);
    v57 = v58;
LABEL_43:
    v59 = *(*(v50 + 48) + ((v57 << 9) | (8 * __clz(__rbit64(v54)))));
    if (v117)
    {
      v60 = sub_252E378C4();
    }

    else
    {
      v60 = *(v56 + 16);
    }

    v54 &= v54 - 1;
  }

  while (!v60);
  v61 = 0;
  v121 = v59;
  v115 = v55;
  v116 = v51;
  v113 = v60;
  v114 = v56;
  while (1)
  {
    if (v119)
    {
      v62 = v61;
      v63 = MEMORY[0x2530ADF00](v61, v42);
      v122 = v63;
    }

    else
    {
      if (v61 >= *(v56 + 16))
      {
        goto LABEL_116;
      }

      v122 = *(v118 + 8 * v61);
      v62 = v61;
    }

    v120 = v62 + 1;
    if (__OFADD__(v62, 1))
    {
      goto LABEL_115;
    }

    v64 = (*v122 + 256);
    v65 = *v64;
    if ((*v64)(v63) == v59)
    {

      goto LABEL_107;
    }

    v66 = (*(*v122 + 272))();
    if (*(v66 + 16))
    {
      sub_252E37EC4();
      MEMORY[0x2530AE390](v59);
      v67 = sub_252E37F14();
      v68 = -1 << *(v66 + 32);
      v69 = v67 & ~v68;
      if ((*(v66 + 56 + ((v69 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v69))
      {
        v70 = ~v68;
        while (*(*(v66 + 48) + 8 * v69) != v59)
        {
          v69 = (v69 + 1) & v70;
          if (((*(v66 + 56 + ((v69 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v69) & 1) == 0)
          {
            goto LABEL_57;
          }
        }

        goto LABEL_106;
      }
    }

LABEL_57:

    v72 = v65(v71);
    if (v72 == 41)
    {
      break;
    }

    v73 = MEMORY[0x277D84FA0];
    v74 = v122;
    if (v72 == 38)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541750, &qword_252E4A2E0);
      v73 = sub_252E379A4();
      v75 = v73 + 56;
      v76 = qword_2864A5E48;
      sub_252E37EC4();
      MEMORY[0x2530AE390](v76);
      result = sub_252E37F14();
      v77 = ~(-1 << *(v73 + 32));
      v78 = result & v77;
      v79 = (result & v77) >> 6;
      v80 = *(v73 + 56 + 8 * v79);
      v81 = 1 << (result & v77);
      v82 = *(v73 + 48);
      if ((v81 & v80) == 0)
      {
        v74 = v122;
LABEL_70:
        *(v75 + 8 * v79) = v81 | v80;
        *(v82 + 8 * v78) = v76;
        v91 = *(v73 + 16);
        v92 = __OFADD__(v91, 1);
        v93 = v91 + 1;
        if (v92)
        {
          goto LABEL_120;
        }

        goto LABEL_75;
      }

      v74 = v122;
      while (*(v82 + 8 * v78) != v76)
      {
        v78 = (v78 + 1) & v77;
        v79 = v78 >> 6;
        v80 = *(v75 + 8 * (v78 >> 6));
        v81 = 1 << v78;
        if (((1 << v78) & v80) == 0)
        {
          goto LABEL_70;
        }
      }
    }

LABEL_76:
    if (*(v73 + 16))
    {
      sub_252E37EC4();
      MEMORY[0x2530AE390](v59);
      v95 = sub_252E37F14();
      v74 = v122;
      v96 = -1 << *(v73 + 32);
      v97 = v95 & ~v96;
      if ((*(v73 + 56 + ((v97 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v97))
      {
        v98 = ~v96;
        while (*(*(v73 + 48) + 8 * v97) != v59)
        {
          v97 = (v97 + 1) & v98;
          if (((*(v73 + 56 + ((v97 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v97) & 1) == 0)
          {
            goto LABEL_81;
          }
        }

LABEL_106:

LABEL_107:

        v22 = 1;
        return v22 & 1;
      }
    }

LABEL_81:

    if (v59 != 42)
    {

      goto LABEL_102;
    }

    v99 = [*(v74 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) profiles];
    sub_25293F638(0, &qword_27F540170, 0x277CD1760);
    v100 = sub_252E37264();

    v111 = v42;
    v112 = v39;
    if (!(v100 >> 62))
    {
      v101 = *((v100 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v101)
      {
        goto LABEL_84;
      }

      goto LABEL_101;
    }

    v101 = sub_252E378C4();
    if (v101)
    {
LABEL_84:
      v39 = 0;
      v42 = v100 & 0xC000000000000001;
      do
      {
        if (v42)
        {
          v102 = MEMORY[0x2530ADF00](v39, v100);
        }

        else
        {
          if (v39 >= *((v100 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_114;
          }

          v102 = *(v100 + 8 * v39 + 32);
        }

        v103 = v102;
        v104 = (v39 + 1);
        if (__OFADD__(v39, 1))
        {
          goto LABEL_113;
        }

        objc_opt_self();
        v105 = swift_dynamicCastObjCClass();
        if (v105)
        {
          v107 = v105;

          v108 = [v107 userSettings];
          v42 = v111;
          v39 = v112;
          v51 = v116;
          v59 = v121;
          if (!v108)
          {

            goto LABEL_103;
          }

          v109 = v108;
          v110 = [v108 supportedFeatures];

          if ((v110 & 2) == 0)
          {
            goto LABEL_103;
          }

          goto LABEL_107;
        }

        ++v39;
        v106 = v104 == v101;
        v59 = v121;
      }

      while (!v106);
    }

LABEL_101:

    v42 = v111;
    v39 = v112;
LABEL_102:
    v51 = v116;
LABEL_103:
    v56 = v114;
    v61 = v120;
    v55 = v115;
    if (v120 == v113)
    {
      goto LABEL_38;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541750, &qword_252E4A2E0);
  v73 = sub_252E379A4();
  v83 = v73 + 56;
  v84 = qword_2864A5E70;
  sub_252E37EC4();
  MEMORY[0x2530AE390](v84);
  result = sub_252E37F14();
  v85 = ~(-1 << *(v73 + 32));
  v86 = result & v85;
  v87 = (result & v85) >> 6;
  v88 = *(v73 + 56 + 8 * v87);
  v89 = 1 << (result & v85);
  v90 = *(v73 + 48);
  if ((v89 & v88) != 0)
  {
    v74 = v122;
    while (*(v90 + 8 * v86) != v84)
    {
      v86 = (v86 + 1) & v85;
      v87 = v86 >> 6;
      v88 = *(v83 + 8 * (v86 >> 6));
      v89 = 1 << v86;
      if (((1 << v86) & v88) == 0)
      {
        goto LABEL_74;
      }
    }

    goto LABEL_76;
  }

  v74 = v122;
LABEL_74:
  *(v83 + 8 * v87) = v89 | v88;
  *(v90 + 8 * v86) = v84;
  v94 = *(v73 + 16);
  v92 = __OFADD__(v94, 1);
  v93 = v94 + 1;
  if (!v92)
  {
LABEL_75:
    *(v73 + 16) = v93;
    goto LABEL_76;
  }

  __break(1u);
LABEL_120:
  __break(1u);
  return result;
}

void sub_252A1673C()
{
  v1 = *(v0 + 136);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    while (v3 < *(v1 + 16))
    {
      v4 = *(v1 + 32 + v3);
      if ((sub_252A167C4(&v4) & 1) == 0 && v2 != ++v3)
      {
        continue;
      }

      return;
    }

    __break(1u);
  }
}

uint64_t sub_252A167C4(uint64_t a1)
{
  if (AccessoryTypeSemantic.rawValue.getter() == 0x72656B61657073 && v1 == 0xE700000000000000)
  {
LABEL_8:

    goto LABEL_9;
  }

  v3 = sub_252E37DB4();

  if ((v3 & 1) == 0)
  {
    if (AccessoryTypeSemantic.rawValue.getter() != 0x5F79616C70726961 || v4 != 0xEF72656B61657073)
    {
      v7 = sub_252E37DB4();

      if (v7)
      {
        goto LABEL_9;
      }

      if (AccessoryTypeSemantic.rawValue.getter() != 0xD000000000000011 || 0x8000000252E65660 != v8)
      {
        v9 = sub_252E37DB4();

        if (v9)
        {
          goto LABEL_9;
        }

        if (AccessoryTypeSemantic.rawValue.getter() != 0x646F70656D6F68 || v10 != 0xE700000000000000)
        {
          v11 = sub_252E37DB4();

          if (v11)
          {
            goto LABEL_9;
          }

          if (AccessoryTypeSemantic.rawValue.getter() != 0x5F646F70656D6F68 || v12 != 0xEC000000696E696DLL)
          {
            v13 = sub_252E37DB4();

            v5 = v13 ^ 1;
            return v5 & 1;
          }
        }
      }
    }

    goto LABEL_8;
  }

LABEL_9:
  v5 = 0;
  return v5 & 1;
}

uint64_t sub_252A169C8()
{
  if (*(v0[13] + 16) || *(v0[28] + 16) || *(v0[20] + 16))
  {
    return 1;
  }

  v3 = v0[11];
  if (*(v0[6] + 16))
  {
    v4 = v0[47];
    v5 = (v4 + 32);
    v6 = *(v4 + 16);

    while (2)
    {
      if (!v6)
      {
LABEL_21:

        return 1;
      }

      switch(*v5)
      {
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
        case 0xA:
        case 0xB:
        case 0xC:
          v7 = sub_252E37DB4();

          ++v5;
          --v6;
          if ((v7 & 1) == 0)
          {
            continue;
          }

          break;
        default:

          break;
      }

      break;
    }
  }

  v8 = *(v3 + 16);
  v9 = (v3 + 32);
  while (2)
  {
    v11 = v8-- != 0;
    v1 = v11;
    if (v11)
    {
      switch(*v9)
      {
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
        case 0xA:
        case 0xB:
        case 0xC:
        case 0xD:
        case 0xE:
        case 0xF:
        case 0x10:
        case 0x11:
        case 0x12:
        case 0x13:
        case 0x14:
          v10 = sub_252E37DB4();

          ++v9;
          if ((v10 & 1) == 0)
          {
            continue;
          }

          break;
        default:
          goto LABEL_21;
      }
    }

    return v1;
  }
}

uint64_t sub_252A16EC4()
{
  v1 = *v0;
  __dst[0] = *v0;
  memcpy(&__dst[1], v0 + 1, 0x1F0uLL);
  if (sub_252A1715C())
  {
    return 0;
  }

  __dst[0] = v1;
  memcpy(&__dst[1], v0 + 1, 0x1F0uLL);
  v2 = sub_252A10F24();
  v3 = *(v2 + 2);
  if (v3)
  {
    v4 = 32;
    do
    {
      v5 = *&v2[v4];
      v6 = vdupq_n_s64(v5);
      if ((vmaxv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_s64(xmmword_2864A9460, v6), vceqq_s64(unk_2864A9470, v6)), vuzp1q_s32(vceqq_s64(xmmword_2864A9480, v6), vceqq_s64(unk_2864A9490, v6))))) & 1) != 0 || (vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_s64(xmmword_2864A94A0, v6), vceqq_s64(unk_2864A94B0, v6)), xmmword_252E419B0)) & 0xF) != 0 || qword_2864A94C0 == v5 || unk_2864A94C8 == v5 || qword_2864A94D0 == v5)
      {
        goto LABEL_25;
      }

      v4 += 8;
    }

    while (--v3);
  }

  v8 = *(v1 + 16);
  if (!v8)
  {
    return 0;
  }

  v9 = 0;
  v10 = v1 + 32;
  while (1)
  {
    if (v9 >= *(v1 + 16))
    {
      __break(1u);
      return result;
    }

    memcpy(__dst, (v10 + 504 * v9), sizeof(__dst));
    memcpy(v17, (v10 + 504 * v9), sizeof(v17));
    sub_2529353AC(__dst, v16);
    v11 = sub_252A10F24();
    v12 = *(v11 + 2);
    if (v12)
    {
      break;
    }

LABEL_13:
    ++v9;
    sub_252935408(__dst);

    result = 0;
    if (v9 == v8)
    {
      return result;
    }
  }

  v13 = 32;
  while (1)
  {
    v14 = *&v11[v13];
    v15 = vdupq_n_s64(v14);
    if ((vmaxv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_s64(xmmword_2864A9460, v15), vceqq_s64(unk_2864A9470, v15)), vuzp1q_s32(vceqq_s64(xmmword_2864A9480, v15), vceqq_s64(unk_2864A9490, v15))))) & 1) != 0 || (vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_s64(xmmword_2864A94A0, v15), vceqq_s64(unk_2864A94B0, v15)), xmmword_252E419B0)) & 0xF) != 0 || qword_2864A94C0 == v14 || unk_2864A94C8 == v14 || qword_2864A94D0 == v14)
    {
      break;
    }

    v13 += 8;
    if (!--v12)
    {
      goto LABEL_13;
    }
  }

  sub_252935408(__dst);
LABEL_25:

  return 1;
}

uint64_t sub_252A1715C()
{
  v1 = v0[13];
  v2 = v0[17];
  v18 = v0[20];
  v19 = v0[21];
  v20 = v0[19];
  v3 = v0[24];
  v4 = v0[28];
  result = sub_2529FC02C(&unk_2864A9408);
  v6 = result;
  v24 = *(v3 + 16);
  if (v24)
  {
    v21 = v2;
    v22 = v1;
    v7 = 0;
    v23 = v4;
    v8 = result + 56;
    while (1)
    {
      if (v7 >= *(v3 + 16))
      {
        __break(1u);
        return result;
      }

      if (*(v6 + 16))
      {
        sub_252E37EC4();
        StateSemantic.rawValue.getter();
        sub_252E37044();

        result = sub_252E37F14();
        v9 = -1 << *(v6 + 32);
        v10 = result & ~v9;
        if ((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
        {
          break;
        }
      }

LABEL_3:
      if (++v7 == v24)
      {

        return 1;
      }
    }

    v11 = ~v9;
    while (1)
    {
      v12 = StateSemantic.rawValue.getter();
      v14 = v13;
      if (v12 == StateSemantic.rawValue.getter() && v14 == v15)
      {
        break;
      }

      v17 = sub_252E37DB4();

      if (v17)
      {
        goto LABEL_18;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_3;
      }
    }

LABEL_18:

    v1 = v22;
    v4 = v23;
    if (*(v21 + 16))
    {
      return 1;
    }
  }

  else
  {

    if (*(v2 + 16))
    {
      return 1;
    }
  }

  if ((!*(v1 + 16) || sub_252A173B0(v1)) && (!*(v4 + 16) || sub_252A173B0(v4)) && !*(v20 + 16) && !*(v19 + 16))
  {
    return *(v18 + 16) != 0;
  }

  return 1;
}

BOOL sub_252A173B0(uint64_t a1)
{
  v45 = sub_252E32A64();
  v2 = *(v45 - 8);
  v3 = MEMORY[0x28223BE20](v45);
  v39 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v44 = &v38 - v6;
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v48 = MEMORY[0x277D84F90];
    sub_2529AA3A0(0, v7, 0);
    v8 = v48;
    v38 = (v2 + 8);
    v9 = (a1 + 40);
    do
    {
      v42 = v7;
      v43 = v8;
      v10 = *(v9 - 1);
      v11 = *v9;
      v40 = v9;
      v41 = v11;

      sub_252E32A04();
      v46 = v10;
      v47 = v11;
      v12 = v39;
      sub_252E32A44();
      sub_252947DBC();
      v13 = sub_252E37784();
      v14 = *v38;
      v15 = v45;
      (*v38)(v12, v45);
      v46 = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540480, &qword_252E3C910);
      sub_2529508A0();
      v16 = sub_252E36EA4();
      v18 = v17;

      v46 = v16;
      v47 = v18;
      sub_252E32A34();
      v19 = sub_252E37784();
      v14(v12, v15);

      v46 = v19;
      sub_252E36EA4();

      v20 = sub_252E36FA4();
      v22 = v21;

      v46 = v20;
      v47 = v22;
      v23 = v44;
      v24 = sub_252E37784();

      v46 = v24;
      v25 = sub_252E36EA4();
      v27 = v26;

      v5 = (v14)(v23, v45);
      v8 = v43;
      v48 = v43;
      v29 = *(v43 + 16);
      v28 = *(v43 + 24);
      if (v29 >= v28 >> 1)
      {
        v5 = sub_2529AA3A0((v28 > 1), v29 + 1, 1);
        v8 = v48;
      }

      *(v8 + 16) = v29 + 1;
      v30 = v8 + 16 * v29;
      *(v30 + 32) = v25;
      *(v30 + 40) = v27;
      v9 = v40 + 2;
      v7 = v42 - 1;
    }

    while (v42 != 1);
  }

  v31 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v5);
  sub_252929E74((v31 + 16), &v46);

  v32 = sub_252C97064(0xD00000000000001FLL, 0x8000000252E6A290, 0x6E6F6D6D6F43, 0xE600000000000000, &v46);
  v34 = v33;
  __swift_destroy_boxed_opaque_existential_1(&v46);
  if (v34)
  {
    v35 = sub_252AD2A70(v8, v32, v34);

    v36 = v35[2];

    return v36 != 0;
  }

  else
  {

    return 0;
  }
}

id sub_252A1778C(uint64_t a1, int a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541AF8, &qword_252E419F8);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v46 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v46 - v12;
  v48 = *(v2 + 200);
  v14 = *(v2 + 256);
  v15 = *(v14 + 16);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540A28, &qword_252E3DF80);
  v17 = *(v16 - 8);
  v18 = v17;
  if (v15)
  {
    (*(v17 + 16))(v13, v14 + ((*(v17 + 80) + 32) & ~*(v17 + 80)), v16);
    (*(v18 + 56))(v13, 0, 1, v16);
  }

  else
  {
    (*(v17 + 56))(v13, 1, 1, v16);
  }

  sub_252A1987C(v13, v11);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540A28, &qword_252E3DF80);
  v20 = *(v19 - 8);
  v21 = *(v20 + 48);
  if (v21(v11, 1, v19) == 1)
  {
    sub_25293847C(v13, &qword_27F541AF8, &qword_252E419F8);
    v22 = v11;
LABEL_8:
    sub_25293847C(v22, &qword_27F541AF8, &qword_252E419F8);
    return 0;
  }

  v47 = a2;
  v23 = a1;
  sub_252E35834();
  v46 = v50;
  v24 = v51;
  v25 = *(v20 + 8);
  v25(v11, v19);
  if (v24)
  {
    v22 = v13;
    goto LABEL_8;
  }

  sub_252A1987C(v13, v8);
  if (v21(v8, 1, v19) == 1)
  {
    sub_25293847C(v8, &qword_27F541AF8, &qword_252E419F8);
    v27 = v47;
  }

  else
  {
    sub_252E35814();
    v11 = v49;
    v25(v8, v19);
    v27 = v47;
    if (v11 != 4)
    {
      if (qword_27F53F2C0 == -1)
      {
        goto LABEL_13;
      }

      goto LABEL_33;
    }
  }

  if (!*(v48 + 16))
  {
    goto LABEL_22;
  }

LABEL_16:
  v32 = *(v48 + 32);
  if (qword_27F53F2C0 != -1)
  {
    v45 = *(v48 + 32);
    swift_once();
    v32 = v45;
  }

  v33 = off_27F541CF0;
  if (*(off_27F541CF0 + 2) && (v34 = sub_252A45288(v32), (v35 & 1) != 0))
  {
    v31 = *(v33[7] + 8 * v34);
  }

  else
  {
LABEL_22:
    v31 = 0;
  }

  while (1)
  {
    v36 = v46;
    if ((v27 & 1) != 0 || v23 != 9)
    {
      break;
    }

    if ((~*&v46 & 0x7FF0000000000000) == 0)
    {
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    if (v46 <= -9.22337204e18)
    {
      goto LABEL_31;
    }

    if (v46 < 9.22337204e18)
    {
      v37 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
      v38 = sub_252E36F04();
      v39 = [v37 initWithIdentifier:0 displayString:v38];

      v40 = v39;
      [v40 setIntegerValue_];
      [v40 setUnit_];
      [v40 setType_];

      sub_25293847C(v13, &qword_27F541AF8, &qword_252E419F8);
      return v40;
    }

LABEL_32:
    __break(1u);
LABEL_33:
    swift_once();
LABEL_13:
    v28 = off_27F541CF0;
    if (*(off_27F541CF0 + 2))
    {
      v29 = sub_252A45288(v11);
      if (v30)
      {
        v31 = *(v28[7] + 8 * v29);
        if (v31)
        {
          continue;
        }
      }
    }

    goto LABEL_16;
  }

  v41 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
  v42 = sub_252E36F04();
  v43 = [v41 initWithIdentifier:0 displayString:v42];

  v44 = v43;
  [v44 setDoubleValue_];
  [v44 setUnit_];
  [v44 setType_];

  sub_25293847C(v13, &qword_27F541AF8, &qword_252E419F8);
  return v44;
}

id sub_252A17D08()
{
  if (!*(*(v0 + 56) + 16))
  {
    return 0;
  }

  v1 = sub_252C56114();
  if (v2)
  {
    v3 = v2;
    v4 = v1;
    if (sub_252C562FC())
    {
      type metadata accessor for HomeAttributeValue();
      return HomeAttributeValue.__allocating_init(stringValue:unit:)(v4, v3, 0);
    }
  }

  v6 = sub_252C5645C();
  if (!v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = v7;
  type metadata accessor for HomeAttributeValue();
  return HomeAttributeValue.__allocating_init(stringValue:unit:)(v8, v9, 0);
}

uint64_t sub_252A17DD4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541AD8, &unk_252E58BD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E3EF80;
  *(inited + 32) = 15;
  v1 = type metadata accessor for HomeAttributeValue();
  v2 = objc_allocWithZone(v1);
  v3 = sub_252E36F04();
  v4 = [v2 initWithIdentifier:0 displayString:v3];

  v5 = v4;
  [v5 setDoubleValue_];
  [v5 setUnit_];
  [v5 setType_];

  *(inited + 40) = v5;
  *(inited + 48) = 16;
  v6 = objc_allocWithZone(v1);
  v7 = sub_252E36F04();
  v8 = [v6 initWithIdentifier:0 displayString:v7];

  v9 = v8;
  [v9 setDoubleValue_];
  [v9 setUnit_];
  [v9 setType_];

  *(inited + 56) = v9;
  *(inited + 64) = 18;
  v10 = objc_allocWithZone(v1);
  v11 = sub_252E36F04();
  v12 = [v10 initWithIdentifier:0 displayString:v11];

  v13 = v12;
  [v13 setDoubleValue_];
  [v13 setUnit_];
  [v13 setType_];

  *(inited + 72) = v13;
  *(inited + 80) = 17;
  v14 = objc_allocWithZone(v1);
  v15 = sub_252E36F04();
  v16 = [v14 initWithIdentifier:0 displayString:v15];

  v17 = v16;
  [v17 setDoubleValue_];
  [v17 setUnit_];
  [v17 setType_];

  *(inited + 88) = v17;
  v18 = sub_252CC5AB4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541AE0, &qword_252E419E8);
  result = swift_arrayDestroy();
  qword_27F575738 = v18;
  return result;
}

uint64_t sub_252A180A4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541AE8, &qword_252E419F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E419C0;
  *(inited + 32) = 14;
  v1 = type metadata accessor for HomeAttributeValue();
  *(inited + 40) = HomeAttributeValue.__allocating_init(stringValue:unit:)(1330926913, 0xE400000000000000, 0);
  *(inited + 48) = 16;
  v2 = objc_allocWithZone(v1);
  v3 = sub_252E36F04();
  v4 = [v2 initWithIdentifier:0 displayString:v3];

  v5 = v4;
  [v5 setBoolValue_];
  [v5 setType_];

  *(inited + 56) = v5;
  *(inited + 64) = 8;
  v6 = objc_allocWithZone(v1);
  v7 = sub_252E36F04();
  v8 = [v6 initWithIdentifier:0 displayString:v7];

  v9 = v8;
  [v9 setBoolValue_];
  [v9 setType_];

  *(inited + 72) = v9;
  *(inited + 80) = 27;
  v10 = objc_allocWithZone(v1);
  v11 = sub_252E36F04();
  v12 = [v10 initWithIdentifier:0 displayString:v11];

  v13 = v12;
  [v13 setBoolValue_];
  [v13 setType_];

  *(inited + 88) = v13;
  *(inited + 96) = 22;
  v14 = objc_allocWithZone(v1);
  v15 = sub_252E36F04();
  v16 = [v14 initWithIdentifier:0 displayString:v15];

  v17 = v16;
  [v17 setBoolValue_];
  [v17 setType_];

  *(inited + 104) = v17;
  *(inited + 112) = 10;
  v18 = objc_allocWithZone(v1);
  v19 = sub_252E36F04();
  v20 = [v18 initWithIdentifier:0 displayString:v19];

  v21 = v20;
  [v21 setBoolValue_];
  [v21 setType_];

  *(inited + 120) = v21;
  *(inited + 128) = 13;
  *(inited + 136) = HomeAttributeValue.__allocating_init(stringValue:unit:)(0x4D52415F59415741, 0xE800000000000000, 0);
  *(inited + 144) = 28;
  v22 = objc_allocWithZone(v1);
  v23 = sub_252E36F04();
  v24 = [v22 initWithIdentifier:0 displayString:v23];

  v25 = v24;
  [v25 setBoolValue_];
  [v25 setType_];

  *(inited + 152) = v25;
  v26 = sub_252CC6090(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541AF0, "FH\a");
  result = swift_arrayDestroy();
  qword_27F575740 = v26;
  return result;
}

uint64_t sub_252A1841C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541AE8, &qword_252E419F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E419D0;
  *(inited + 32) = 14;
  v1 = type metadata accessor for HomeAttributeValue();
  *(inited + 40) = HomeAttributeValue.__allocating_init(stringValue:unit:)(4605519, 0xE300000000000000, 0);
  *(inited + 48) = 16;
  v2 = objc_allocWithZone(v1);
  v3 = sub_252E36F04();
  v4 = [v2 initWithIdentifier:0 displayString:v3];

  v5 = v4;
  [v5 setBoolValue_];
  [v5 setType_];

  *(inited + 56) = v5;
  *(inited + 64) = 8;
  v6 = objc_allocWithZone(v1);
  v7 = sub_252E36F04();
  v8 = [v6 initWithIdentifier:0 displayString:v7];

  v9 = v8;
  [v9 setBoolValue_];
  [v9 setType_];

  *(inited + 72) = v9;
  *(inited + 80) = 27;
  v10 = objc_allocWithZone(v1);
  v11 = sub_252E36F04();
  v12 = [v10 initWithIdentifier:0 displayString:v11];

  v13 = v12;
  [v13 setBoolValue_];
  [v13 setType_];

  *(inited + 88) = v13;
  *(inited + 96) = 22;
  v14 = objc_allocWithZone(v1);
  v15 = sub_252E36F04();
  v16 = [v14 initWithIdentifier:0 displayString:v15];

  v17 = v16;
  [v17 setBoolValue_];
  [v17 setType_];

  *(inited + 104) = v17;
  *(inited + 112) = 10;
  v18 = objc_allocWithZone(v1);
  v19 = sub_252E36F04();
  v20 = [v18 initWithIdentifier:0 displayString:v19];

  v21 = v20;
  [v21 setBoolValue_];
  [v21 setType_];

  *(inited + 120) = v21;
  *(inited + 128) = 13;
  *(inited + 136) = HomeAttributeValue.__allocating_init(stringValue:unit:)(0x4D5241534944, 0xE600000000000000, 0);
  v22 = sub_252CC6090(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541AF0, "FH\a");
  result = swift_arrayDestroy();
  qword_27F575748 = v22;
  return result;
}

uint64_t sub_252A18728()
{
  result = sub_2529FC02C(&unk_2864A9238);
  qword_27F575750 = result;
  return result;
}

uint64_t sub_252A18750@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);
  v82 = *(a1 + 10);
  v5 = *(a1 + 24);
  v6 = *(a1 + 25);
  v7 = *(a1 + 26);
  v8 = *(a1 + 32);
  v63 = *(a1 + 40);
  v86 = *(a1 + 48);
  v101 = *(a1 + 56);
  v64 = *(a1 + 64);
  v102 = *(a1 + 72);
  v103 = *(a1 + 80);
  v105 = *(a1 + 88);
  v104 = *(a1 + 96);
  v106 = *(a1 + 104);
  v107 = *(a1 + 112);
  v109 = *(a1 + 120);
  v111 = *(a1 + 128);
  v112 = *(a1 + 136);
  v113 = *(a1 + 144);
  v114 = *(a1 + 152);
  v116 = *(a1 + 160);
  v118 = *(a1 + 168);
  v120 = *(a1 + 192);
  v122 = *(a1 + 200);
  if (v3 == 3)
  {
    v3 = *(v2 + 8);
  }

  v80 = v3;
  if (v4 == 3)
  {
    v4 = *(v2 + 9);
  }

  v81 = v4;
  v67 = *(a1 + 208);
  v68 = *(a1 + 209);
  v108 = *(a1 + 216);
  v110 = *(a1 + 224);
  v92 = *(a1 + 232);
  v93 = *(a1 + 240);
  v71 = *(a1 + 248);
  v97 = *(a1 + 280);
  v95 = *(a1 + 288);
  v94 = *(a1 + 289);
  v96 = *(a1 + 312);
  v115 = *(a1 + 328);
  v117 = *(a1 + 336);
  v119 = *(a1 + 344);
  v121 = *(a1 + 352);
  v124 = *(a1 + 360);
  v61 = *(a1 + 368);
  v62 = *(a1 + 256);
  v70 = *(a1 + 376);
  v99 = *(a1 + 384);
  v79 = *(v2 + 10);
  v9 = *(v2 + 24);
  v10 = *(v2 + 25);
  v11 = *(v2 + 26);
  v12 = *(v2 + 32);
  v13 = *(v2 + 40);
  v14 = *(v2 + 48);
  v15 = *(v2 + 56);
  v16 = *(v2 + 64);
  v17 = *(v2 + 72);
  v18 = *(v2 + 80);
  v19 = *(v2 + 96);
  v65 = *(v2 + 208);
  v66 = *(v2 + 209);
  v85 = *(v2 + 232);
  v58 = *(v2 + 240);
  v91 = *(v2 + 280);
  v89 = *(v2 + 288);
  v88 = *(v2 + 289);
  v90 = *(v2 + 312);
  v59 = *(v2 + 256);
  v60 = *(v2 + 368);
  v69 = *(v2 + 376);
  v123 = *(a1 + 16);
  v100 = *(v2 + 384);
  if (!v123)
  {
    v123 = *(v2 + 16);
    v20 = *(a1 + 32);
    v83 = v15;
    v77 = v16;
    v57 = v19;
    v21 = *(a1 + 26);
    v73 = v13;
    v22 = *(a1 + 25);
    v75 = v12;
    v23 = v14;
    v24 = v17;
    v25 = v18;
    v26 = *(a1 + 24);
    v27 = v10;
    v28 = v11;

    v11 = v28;
    v10 = v27;
    v5 = v26;
    v18 = v25;
    v17 = v24;
    v14 = v23;
    v12 = v75;
    v6 = v22;
    v13 = v73;
    v7 = v21;
    v19 = v57;
    v16 = v77;
    v15 = v83;
    v8 = v20;
  }

  if (v5 == 2)
  {
    v29 = v9;
  }

  else
  {
    v29 = v5;
  }

  v74 = v29;
  if (v6 == 3)
  {
    v30 = v10;
  }

  else
  {
    v30 = v6;
  }

  v76 = v30;
  if (v7 == 4)
  {
    v31 = v11;
  }

  else
  {
    v31 = v7;
  }

  v78 = v31;
  if (*(v8 + 16))
  {
    v84 = v8;
  }

  else
  {

    v84 = v12;
  }

  v33 = v61;
  v32 = v62;
  v34 = v86;
  v35 = v63;
  if (v63 == 4)
  {
    v35 = v13;
  }

  v87 = v35;
  if (*(v34 + 16))
  {
  }

  else
  {

    v34 = v14;
  }

  v36 = v71;
  if (*(v101 + 16))
  {
  }

  else
  {

    v101 = v15;
  }

  v37 = v64;
  if (v64 == 4)
  {
    v37 = v16;
  }

  v72 = v37;
  if (*(v102 + 16))
  {
  }

  else
  {

    v102 = v17;
  }

  if (*(v103 + 16))
  {
  }

  else
  {

    v103 = v18;
  }

  if (*(v104 + 16))
  {
  }

  else
  {

    v104 = v19;
  }

  if (*(v105 + 16))
  {
  }

  else
  {
  }

  if (*(v106 + 16))
  {
  }

  else
  {
  }

  if (*(v107 + 16))
  {
  }

  else
  {
  }

  if (*(v109 + 16))
  {
  }

  else
  {
  }

  if (*(v111 + 16))
  {
  }

  else
  {
  }

  if (*(v112 + 16))
  {
  }

  else
  {
  }

  if (*(v113 + 16))
  {
  }

  else
  {
  }

  if (*(v114 + 16))
  {
  }

  else
  {
  }

  if (*(v116 + 16))
  {
  }

  else
  {
  }

  if (*(v118 + 16))
  {
  }

  else
  {
  }

  if (*(v120 + 16))
  {
  }

  else
  {
  }

  if (*(v122 + 16))
  {
  }

  else
  {
  }

  if (v67 == 9)
  {
    v38 = v65;
  }

  else
  {
    v38 = v67;
  }

  if (v68 == 2)
  {
    v39 = v66;
  }

  else
  {
    v39 = v68;
  }

  if (*(v108 + 16))
  {
  }

  else
  {
  }

  if (*(v110 + 16))
  {

    v40 = v36;
    if (v36)
    {
      goto LABEL_86;
    }

    goto LABEL_85;
  }

  v40 = v36;
  if (!v36)
  {
LABEL_85:
    v93 = v58;
  }

LABEL_86:
  if (!*(v62 + 16))
  {
    v32 = v59;
  }

  if (*(v115 + 16))
  {
  }

  else
  {
  }

  if (*(v117 + 16))
  {
  }

  else
  {
  }

  if (*(v119 + 16))
  {
  }

  else
  {
  }

  if (*(v121 + 16))
  {
  }

  else
  {
  }

  v41 = v34;
  if (*(v124 + 16))
  {
  }

  else
  {
  }

  sub_25297B278(v69);
  v42 = v99;
  if (v99 == 22)
  {
LABEL_112:
    v100 = v42;
    if (*(v61 + 16))
    {
      goto LABEL_114;
    }

    goto LABEL_113;
  }

  v43 = HomeAutomationIntent.UsoTaskType.rawValue.getter();
  v45 = v44;
  if (v43 != HomeAutomationIntent.UsoTaskType.rawValue.getter() || v45 != v46)
  {
    v47 = sub_252E37DB4();

    v42 = v100;
    if ((v47 & 1) == 0)
    {
      v42 = v99;
    }

    goto LABEL_112;
  }

  if (*(v61 + 16))
  {
    goto LABEL_114;
  }

LABEL_113:
  v33 = v60;
LABEL_114:

  _s7BuilderCMa_1();
  swift_initStackObject();
  v48 = sub_252E1E238();
  v49 = v48;
  if (v80 != 3)
  {
    *(v48 + 24) = v80;
  }

  if (v81 != 3)
  {
    *(v48 + 25) = v81;
  }

  if (v123)
  {
    *(v48 + 32) = v123;
  }

  if ((v82 & v79 & 1) == 0)
  {
    *(v49 + 40) = 0;
  }

  if (v74 == 2)
  {
    if (v76 == 3)
    {
      goto LABEL_124;
    }
  }

  else
  {
    *(v49 + 41) = v74;
    if (v76 == 3)
    {
LABEL_124:
      if (v78 == 4)
      {
        goto LABEL_126;
      }

      goto LABEL_125;
    }
  }

  *(v49 + 42) = v76;
  if (v78 != 4)
  {
LABEL_125:
    *(v49 + 43) = v78;
  }

LABEL_126:
  *(v49 + 48) = v84;

  if (v87 != 4)
  {
    *(v49 + 56) = v87;
  }

  v50 = sub_252E1F2EC(v41);

  *(v50 + 72) = v101;

  if (v72 != 4)
  {
    *(v50 + 80) = v72;
  }

  *(v50 + 88) = v102;

  *(v50 + 96) = v103;

  *(v50 + 112) = v104;

  *(v50 + 104) = v105;

  *(v50 + 120) = v106;

  *(v50 + 128) = v107;

  *(v50 + 136) = v109;

  *(v50 + 144) = v111;

  *(v50 + 152) = v112;

  *(v50 + 160) = v113;

  *(v50 + 168) = v114;

  v51 = sub_252E1F3E8(v116);

  *(v51 + 184) = v118;

  *(v51 + 208) = v120;

  *(v51 + 216) = v122;

  if (v38 != 9)
  {
    *(v51 + 224) = v38;
  }

  if (v39 != 2)
  {
    *(v51 + 225) = v39;
  }

  *(v51 + 232) = v108;

  *(v51 + 240) = v110;

  if ((v92 & v85 & 1) == 0)
  {
    *(v51 + 248) = 0;
  }

  if (v40)
  {
    *(v51 + 256) = v93;
    *(v51 + 264) = v40;
  }

  if (v94)
  {
    v52 = v89;
  }

  else
  {
    v52 = v95;
  }

  if (v94)
  {
    v53 = v91;
  }

  else
  {
    v53 = v97;
  }

  if (v96 == 2)
  {
    v54 = v90;
  }

  else
  {
    v54 = v96;
  }

  *(v51 + 272) = v32;

  *(v51 + 280) = v54;
  *(v51 + 288) = v53;
  *(v51 + 296) = v52;
  *(v51 + 297) = v94 & v88;
  *(v51 + 304) = v115;

  *(v51 + 312) = v117;

  *(v51 + 320) = v119;

  *(v51 + 328) = v121;

  *(v51 + 336) = v124;

  v55 = sub_252E1F258(v70);

  *(v55 + 376) = v100;
  *(v55 + 392) = v33;

  sub_252E1E4F8(a2);
}

void *sub_252A19280(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
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

    v8 = sub_252A195C4(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_252A19310(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *))
{
  v20 = result;
  v7 = 0;
  v8 = 0;
  v9 = a3 + 56;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 56);
  v13 = (v10 + 63) >> 6;
  while (v12)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_11:
    v17 = v14 | (v8 << 6);
    v21 = *(*(a3 + 48) + 8 * v17);
    result = a4(&v21);
    if (v4)
    {
      return result;
    }

    if (result)
    {
      *(v20 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      if (__OFADD__(v7++, 1))
      {
        __break(1u);
LABEL_16:

        return sub_252C53500(v20, a2, v7, a3);
      }
    }
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
      goto LABEL_16;
    }

    v16 = *(v9 + 8 * v8);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v12 = (v16 - 1) & v16;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void sub_252A19458(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  v20 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v23 = *(*(a3 + 48) + 8 * v14);
    v15 = v23;
    v16 = a4(&v23);

    if (v4)
    {
      return;
    }

    if (v16)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_16:

        sub_252C53CA8(a1, a2, v20, a3);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_252A195C4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v20 = result;
  v7 = 0;
  v8 = 0;
  v9 = a3 + 56;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 56);
  v13 = (v10 + 63) >> 6;
  while (v12)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_11:
    v17 = v14 | (v8 << 6);
    v21 = *(*(a3 + 48) + v17);
    result = a4(&v21);
    if (v4)
    {
      return result;
    }

    if (result)
    {
      *(v20 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      if (__OFADD__(v7++, 1))
      {
        __break(1u);
LABEL_16:

        return sub_252C540C0(v20, a2, v7, a3);
      }
    }
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
      goto LABEL_16;
    }

    v16 = *(v9 + 8 * v8);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v12 = (v16 - 1) & v16;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_252A1970C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *))
{
  v19 = 0;
  v18 = result;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v22 = *(*(a3 + 48) + 8 * v14);

    v15 = a4(&v22);

    if (v4)
    {
      return result;
    }

    if (v15)
    {
      *(v18 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v19++, 1))
      {
        __break(1u);
LABEL_16:

        return sub_252C53048(v18, a2, v19, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_252A1987C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541AF8, &qword_252E419F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_252A198EC()
{
  result = qword_27F541B00;
  if (!qword_27F541B00)
  {
    result = swift_getWitnessTable(byte_252E46EEC, &type metadata for HomeAutomationSemanticTags, v0, v1);
    atomic_store(result, &qword_27F541B00);
  }

  return result;
}

uint64_t sub_252A19940(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_252A199A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v9 + 528) = v8;
  *(v9 + 520) = v19;
  *(v9 + 504) = v15;
  *(v9 + 512) = v18;
  *(v9 + 818) = v17;
  *(v9 + 817) = v16;
  *(v9 + 488) = a6;
  *(v9 + 496) = a8;
  *(v9 + 816) = a7;
  *(v9 + 472) = a4;
  *(v9 + 480) = a5;
  *(v9 + 456) = a2;
  *(v9 + 464) = a3;
  *(v9 + 448) = a1;
  *(v9 + 536) = type metadata accessor for CompletionSnippetModel(0);
  *(v9 + 544) = swift_task_alloc();
  *(v9 + 552) = type metadata accessor for SnippetResponseViewIds(0);
  *(v9 + 560) = swift_task_alloc();
  *(v9 + 568) = swift_task_alloc();
  *(v9 + 576) = swift_task_alloc();
  *(v9 + 584) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540370, &qword_252E3C450);
  *(v9 + 592) = swift_task_alloc();
  *(v9 + 600) = swift_task_alloc();
  v10 = type metadata accessor for HomeAutomationSnippetModels(0);
  *(v9 + 608) = v10;
  *(v9 + 616) = *(v10 - 8);
  *(v9 + 624) = swift_task_alloc();
  *(v9 + 632) = swift_task_alloc();
  *(v9 + 640) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B30, &qword_252E41AB0);
  *(v9 + 648) = swift_task_alloc();
  *(v9 + 656) = swift_task_alloc();
  sub_252E36014();
  *(v9 + 664) = swift_task_alloc();
  v11 = sub_252E36AB4();
  *(v9 + 672) = v11;
  *(v9 + 680) = *(v11 - 8);
  *(v9 + 688) = swift_task_alloc();
  v12 = sub_252E34014();
  *(v9 + 696) = v12;
  *(v9 + 704) = *(v12 - 8);
  *(v9 + 712) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252A19CA8, 0, 0);
}

uint64_t sub_252A19CA8(uint64_t a1)
{
  if (*(v1 + 817))
  {
    v2 = 1;
  }

  else
  {
    v2 = *(sub_252B680FC(a1) + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_supressSnippet);
  }

  *(v1 + 819) = v2;
  (*(*(v1 + 704) + 16))(*(v1 + 712), *(v1 + 488), *(v1 + 696));
  if (qword_27F53F648 != -1)
  {
    swift_once();
  }

  v3 = *(v1 + 456);
  v4 = qword_27F544FD0;
  *(v1 + 720) = qword_27F544FD0;
  v5 = v4;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  v8 = (v3 + *v3);
  v6 = swift_task_alloc();
  *(v1 + 728) = v6;
  *v6 = v1;
  v6[1] = sub_252A19E60;

  return v8();
}

uint64_t sub_252A19E60(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 736) = a1;
  *(v3 + 744) = v1;

  if (v1)
  {
    v4 = sub_252A1C35C;
  }

  else
  {
    v4 = sub_252A19F78;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252A19F78()
{
  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 736);
  v2 = *(v0 + 819);
  v3 = sub_252E36AD4();
  *(v0 + 752) = __swift_project_value_buffer(v3, qword_27F544D18);
  sub_252E379F4();

  v4 = [v1 description];
  v5 = sub_252E36F34();
  v7 = v6;

  MEMORY[0x2530AD570](v5, v7);

  sub_252CC3D90(0xD000000000000019, 0x8000000252E72160, 0xD000000000000075, 0x8000000252E71F50);

  if (v2 & 1) != 0 || (v9 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v8), sub_252929E74((v9 + 16), v0 + 16), , __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40)), v10 = sub_252E338F4(), __swift_destroy_boxed_opaque_existential_1((v0 + 16)), (v10))
  {
    sub_252CC3D90(0xD00000000000001ELL, 0x8000000252E722D0, 0xD000000000000075, 0x8000000252E71F50);
    v12 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v11);
    sub_252929E74((v12 + 16), v0 + 296);

    __swift_project_boxed_opaque_existential_1((v0 + 296), *(v0 + 320));
    v13 = sub_252E338F4();
    __swift_destroy_boxed_opaque_existential_1((v0 + 296));
    if (v13)
    {
      sub_252E36004();
    }

    else
    {
      sub_252E33F64();
    }

    v14 = *(v0 + 656);
    v15 = *(v0 + 616);
    v16 = *(v0 + 608);
    v17 = *(v0 + 520);
    v18 = *(v0 + 512);
    sub_252E33F74();
    (*(v17 + 8))(v18, v17);
    v19 = *(v0 + 360);
    v20 = *(v0 + 368);
    __swift_project_boxed_opaque_existential_1((v0 + 336), v19);
    sub_252BDE100();
    v22 = v21;
    *(v0 + 760) = v21;
    (*(v15 + 56))(v14, 1, 1, v16);
    v23 = v22;
    v24 = swift_task_alloc();
    *(v0 + 768) = v24;
    *v24 = v0;
    v24[1] = sub_252A1A350;
    v25 = *(v0 + 712);
    v26 = *(v0 + 656);
    v27 = *(v0 + 448);
    v28 = *(v0 + 818);

    return sub_252A1C534(v27, v28, v23, v25, v26, v19, v20);
  }

  else
  {
    v30 = swift_task_alloc();
    *(v0 + 776) = v30;
    *v30 = v0;
    v30[1] = sub_252A1A668;
    v31 = *(v0 + 648);
    v32 = *(v0 + 472);

    return sub_252A1D2C0(v31, v32);
  }
}

uint64_t sub_252A1A350()
{
  v1 = *(*v0 + 760);
  v2 = *(*v0 + 656);

  sub_252A1EC2C(v2);

  return MEMORY[0x2822009F8](sub_252A1A480, 0, 0);
}

uint64_t sub_252A1A480()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 336));
  v1 = *(v0 + 720);
  v2 = *(v0 + 712);
  v3 = *(v0 + 704);
  v4 = *(v0 + 696);
  v5 = *(v0 + 688);
  v6 = *(v0 + 680);
  v7 = *(v0 + 672);
  v8 = sub_252E375C4();
  v11 = 2;
  sub_252E36A74(v8, &dword_252917000, v1, "buildSnippetOutput", 18, 2, v5, " enableTelemetry=YES ", 21, v11, MEMORY[0x277D84F90]);
  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_252A1A668()
{

  return MEMORY[0x2822009F8](sub_252A1A764, 0, 0);
}

uint64_t sub_252A1A764()
{
  v1 = *(v0 + 648);
  v2 = *(v0 + 616);
  v3 = *(v0 + 608);
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v114 = *(v0 + 656);
    v4 = *(v0 + 520);
    v5 = *(v0 + 512);
    sub_252A1EC2C(v1);
    sub_252CC3D90(0xD00000000000003BLL, 0x8000000252E72180, 0xD000000000000075, 0x8000000252E71F50);
    (*(v4 + 8))(v5, v4);
    v6 = *(v0 + 80);
    v7 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v6);
    (*(v2 + 56))(v114, 1, 1, v3);
    v8 = swift_task_alloc();
    *(v0 + 808) = v8;
    *v8 = v0;
    v8[1] = sub_252A1C05C;
    v9 = *(v0 + 736);
    v10 = *(v0 + 712);
    v11 = *(v0 + 656);
    v12 = *(v0 + 448);
    v13 = *(v0 + 818);
    v14 = v6;
    v15 = v7;
LABEL_56:

    return sub_252A1C534(v12, v13, v9, v10, v11, v14, v15);
  }

  v16 = *(v0 + 504);
  sub_252A1ECFC(v1, *(v0 + 640), type metadata accessor for HomeAutomationSnippetModels);
  sub_252E379F4();

  v17 = HomeAutomationSnippetModels.description.getter();
  MEMORY[0x2530AD570](v17);

  sub_252CC3D90(0xD00000000000001FLL, 0x8000000252E721C0, 0xD000000000000075, 0x8000000252E71F50);

  if (v16)
  {
    sub_252CC3D90(0xD00000000000003BLL, 0x8000000252E72290, 0xD000000000000075, 0x8000000252E71F50);
    if (sub_252E33FE4())
    {

      v19 = sub_252E33FD4();
      if (*v18)
      {
        v20 = v18;
        v21 = *(v0 + 600);
        v22 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
        sub_252E32CA4();
        v23 = sub_252E32CB4();
        v24 = *(v23 - 8);
        v25 = (*(v24 + 48))(v21, 1, v23);
        v26 = 0;
        if (v25 != 1)
        {
          v27 = *(v0 + 600);
          v26 = sub_252E32C74();
          (*(v24 + 8))(v27, v23);
        }

        [v22 setPunchOutUri_];

        MEMORY[0x2530AD700]();
        if (*((*v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_252E372A4();
        }

        sub_252E372D4();
      }

      v19(v0 + 376, 0);
    }

    else
    {
      v28 = *(v0 + 592);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_252E3C130;
      v30 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
      sub_252E32CA4();
      v31 = sub_252E32CB4();
      v32 = *(v31 - 8);
      v33 = 0;
      if ((*(v32 + 48))(v28, 1, v31) != 1)
      {
        v34 = *(v0 + 592);
        v33 = sub_252E32C74();
        (*(v32 + 8))(v34, v31);
      }

      [v30 setPunchOutUri_];

      *(v29 + 32) = v30;
      sub_252E33FF4();
    }
  }

  v35 = *(v0 + 632);
  v36 = *(v0 + 584);
  v37 = *(v0 + 576);
  sub_252A1EC94(*(v0 + 640), v35, type metadata accessor for HomeAutomationSnippetModels);
  sub_252B1E504(v35, v36);
  sub_252E379F4();

  v38 = sub_252B1E6EC();
  MEMORY[0x2530AD570](v38);

  MEMORY[0x2530AD570](0x56746C7573657220, 0xEF203A6449776569);
  sub_252A1EC94(v36, v37, type metadata accessor for SnippetResponseViewIds);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v40 = "isambiguationResponse";
  v41 = 0xD000000000000025;
  if (EnumCaseMultiPayload == 4)
  {
    v41 = 0xD000000000000023;
  }

  else
  {
    v40 = "HomeAutomation#CallToAction";
  }

  if (EnumCaseMultiPayload == 3)
  {
    v41 = 0xD000000000000022;
    v40 = "onfirmationResponse";
  }

  v42 = "e snippet result: ";
  if (EnumCaseMultiPayload == 1)
  {
    v43 = 0xD00000000000001BLL;
  }

  else
  {
    v43 = 0xD000000000000021;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v42 = "emperatureResponse";
  }

  if (!EnumCaseMultiPayload)
  {
    v43 = 0xD000000000000021;
    v42 = "ompletionResponse";
  }

  if (EnumCaseMultiPayload <= 2)
  {
    v44 = v43;
  }

  else
  {
    v44 = v41;
  }

  if (EnumCaseMultiPayload <= 2)
  {
    v45 = v42;
  }

  else
  {
    v45 = v40;
  }

  v46 = *(v0 + 584);
  v47 = *(v0 + 568);
  sub_252A1ED64(*(v0 + 576), type metadata accessor for SnippetResponseViewIds);
  MEMORY[0x2530AD570](v44, v45 | 0x8000000000000000);

  sub_252CC3D90(0xD000000000000010, 0x8000000252E721E0, 0xD000000000000075, 0x8000000252E71F50);

  sub_252B1E6EC();
  sub_252E33FA4();
  sub_252A1EC94(v46, v47, type metadata accessor for SnippetResponseViewIds);
  swift_getEnumCaseMultiPayload();
  v48 = *(v0 + 816);
  sub_252A1ED64(*(v0 + 568), type metadata accessor for SnippetResponseViewIds);
  v49 = sub_252E33F94();
  if (v48 == 1)
  {
    v50 = *(v0 + 736);
    v51 = *(v0 + 640);
    v52 = *(v0 + 608);
    v53 = *(v0 + 520);
    v54 = *(v0 + 512);
    sub_252CC3D90(0xD00000000000002BLL, 0x8000000252E72260, 0xD000000000000075, 0x8000000252E71F50);
    (*(v53 + 8))(v54, v53);
    v55 = *(v0 + 240);
    v56 = *(v0 + 248);
    __swift_project_boxed_opaque_existential_1((v0 + 216), v55);
    *(v0 + 280) = v52;
    *(v0 + 288) = sub_252A1EDC4(&qword_27F541B38, type metadata accessor for HomeAutomationSnippetModels, protocol conformance descriptor for HomeAutomationSnippetModels);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 256));
    sub_252A1EC94(v51, boxed_opaque_existential_0, type metadata accessor for HomeAutomationSnippetModels);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
    v58 = swift_allocObject();
    *(v0 + 784) = v58;
    *(v58 + 16) = xmmword_252E3C130;
    *(v58 + 32) = v50;
    v59 = v50;
    v60 = swift_task_alloc();
    *(v0 + 792) = v60;
    *v60 = v0;
    v60[1] = sub_252A1B9D4;
    v61 = *(v0 + 712);
    v62 = *(v0 + 448);
    v63 = v0 + 256;
    v64 = v58;
    v65 = v55;
    v66 = v56;

    return MEMORY[0x2821BB478](v62, v63, v64, v61, v65, v66);
  }

  v67 = *(sub_252B680FC(v49) + 161);

  if (v67 != 1)
  {
LABEL_55:
    v93 = *(v0 + 656);
    v94 = *(v0 + 640);
    v95 = *(v0 + 616);
    v96 = *(v0 + 608);
    v97 = *(v0 + 520);
    v98 = *(v0 + 512);
    sub_252CC3D90(0xD000000000000026, 0x8000000252E72200, 0xD000000000000075, 0x8000000252E71F50);
    (*(v97 + 8))(v98, v97);
    v100 = *(v0 + 120);
    v99 = *(v0 + 128);
    __swift_project_boxed_opaque_existential_1((v0 + 96), v100);
    sub_252A1EC94(v94, v93, type metadata accessor for HomeAutomationSnippetModels);
    (*(v95 + 56))(v93, 0, 1, v96);
    v101 = swift_task_alloc();
    *(v0 + 800) = v101;
    *v101 = v0;
    v101[1] = sub_252A1BD1C;
    v9 = *(v0 + 736);
    v10 = *(v0 + 712);
    v11 = *(v0 + 656);
    v12 = *(v0 + 448);
    v13 = *(v0 + 818);
    v14 = v100;
    v15 = v99;
    goto LABEL_56;
  }

  v69 = sub_252B680FC(v68);
  swift_beginAccess();
  v70 = *(v69 + 32);
  if (!(v70 >> 62))
  {
    v62 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v62)
    {
      goto LABEL_40;
    }

LABEL_50:

    goto LABEL_51;
  }

  v62 = sub_252E378C4();
  if (!v62)
  {
    goto LABEL_50;
  }

LABEL_40:
  v71 = v62 - 1;
  if (__OFSUB__(v62, 1))
  {
    __break(1u);
    goto LABEL_64;
  }

  if ((v70 & 0xC000000000000001) != 0)
  {
LABEL_64:

    v71 = MEMORY[0x2530ADF00](v71, v70);

    goto LABEL_45;
  }

  if ((v71 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_66;
  }

  if (v71 >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return MEMORY[0x2821BB478](v62, v63, v64, v61, v65, v66);
  }

  v71 = *(v70 + 8 * v71 + 32);
LABEL_45:

  v72 = sub_252C2A5D8();
  if (!(v72 >> 62))
  {
    v73 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_47;
  }

LABEL_66:
  v73 = sub_252E378C4();
LABEL_47:

  if (v73)
  {
    goto LABEL_55;
  }

LABEL_51:
  sub_252A1EC94(*(v0 + 640), *(v0 + 624), type metadata accessor for HomeAutomationSnippetModels);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_252A1ED64(*(v0 + 624), type metadata accessor for HomeAutomationSnippetModels);
    goto LABEL_55;
  }

  v74 = *(v0 + 584);
  v75 = *(v0 + 560);
  sub_252A1ECFC(*(v0 + 624), *(v0 + 544), type metadata accessor for CompletionSnippetModel);
  sub_252E379F4();
  *(v0 + 432) = 0;
  *(v0 + 440) = 0xE000000000000000;
  MEMORY[0x2530AD570](0xD000000000000024, 0x8000000252E72230);
  sub_252E37AE4();
  sub_252CC3D90(*(v0 + 432), *(v0 + 440), 0xD000000000000075, 0x8000000252E71F50);

  sub_252A1EC94(v74, v75, type metadata accessor for SnippetResponseViewIds);
  swift_getEnumCaseMultiPayload();
  v76 = *(v0 + 744);
  v77 = *(v0 + 544);
  v78 = *(v0 + 536);
  v79 = *(v0 + 520);
  v80 = *(v0 + 512);
  sub_252A1ED64(*(v0 + 560), type metadata accessor for SnippetResponseViewIds);
  (*(v79 + 8))(v80, v79);
  __swift_project_boxed_opaque_existential_1((v0 + 136), *(v0 + 160));
  *(v0 + 200) = v78;
  *(v0 + 208) = sub_252A1EDC4(&qword_27F541B28, type metadata accessor for CompletionSnippetModel, protocol conformance descriptor for CompletionSnippetModel);
  v81 = __swift_allocate_boxed_opaque_existential_0((v0 + 176));
  sub_252A1EC94(v77, v81, type metadata accessor for CompletionSnippetModel);
  sub_252E33CD4();
  v82 = *(v0 + 736);
  if (v76)
  {
    v83 = *(v0 + 720);
    v84 = *(v0 + 688);
    v85 = *(v0 + 640);
    v86 = *(v0 + 584);
    v87 = *(v0 + 544);

    sub_252A1ED64(v87, type metadata accessor for CompletionSnippetModel);
    sub_252A1ED64(v86, type metadata accessor for SnippetResponseViewIds);
    sub_252A1ED64(v85, type metadata accessor for HomeAutomationSnippetModels);
    __swift_destroy_boxed_opaque_existential_1((v0 + 176));
    __swift_destroy_boxed_opaque_existential_1((v0 + 136));
    v88 = sub_252E375C4();
    sub_252E36A74(v88, &dword_252917000, v83, "buildSnippetOutput", 18, 2, v84, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
    v89 = *(v0 + 712);
    v90 = *(v0 + 704);
    v91 = *(v0 + 696);
    (*(*(v0 + 680) + 8))(*(v0 + 688), *(v0 + 672));
    (*(v90 + 8))(v89, v91);
  }

  else
  {
    v103 = *(v0 + 640);
    v104 = *(v0 + 584);
    v105 = *(v0 + 544);

    sub_252A1ED64(v105, type metadata accessor for CompletionSnippetModel);
    sub_252A1ED64(v104, type metadata accessor for SnippetResponseViewIds);
    sub_252A1ED64(v103, type metadata accessor for HomeAutomationSnippetModels);
    __swift_destroy_boxed_opaque_existential_1((v0 + 176));
    __swift_destroy_boxed_opaque_existential_1((v0 + 136));
    v106 = *(v0 + 720);
    v107 = *(v0 + 712);
    v108 = *(v0 + 704);
    v109 = *(v0 + 696);
    v110 = *(v0 + 688);
    v111 = *(v0 + 680);
    v112 = *(v0 + 672);
    v113 = sub_252E375C4();
    sub_252E36A74(v113, &dword_252917000, v106, "buildSnippetOutput", 18, 2, v110, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
    (*(v111 + 8))(v110, v112);
    (*(v108 + 8))(v107, v109);
  }

  v92 = *(v0 + 8);

  return v92();
}

uint64_t sub_252A1B9D4()
{
  v1 = *v0;

  __swift_destroy_boxed_opaque_existential_1((v1 + 256));

  return MEMORY[0x2822009F8](sub_252A1BAF4, 0, 0);
}

uint64_t sub_252A1BAF4()
{
  v1 = *(v0 + 640);
  v2 = *(v0 + 584);

  sub_252A1ED64(v2, type metadata accessor for SnippetResponseViewIds);
  sub_252A1ED64(v1, type metadata accessor for HomeAutomationSnippetModels);
  __swift_destroy_boxed_opaque_existential_1((v0 + 216));
  v3 = *(v0 + 720);
  v4 = *(v0 + 712);
  v5 = *(v0 + 704);
  v6 = *(v0 + 696);
  v7 = *(v0 + 688);
  v8 = *(v0 + 680);
  v9 = *(v0 + 672);
  v10 = sub_252E375C4();
  v13 = 2;
  sub_252E36A74(v10, &dword_252917000, v3, "buildSnippetOutput", 18, 2, v7, " enableTelemetry=YES ", 21, v13, MEMORY[0x277D84F90]);
  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_252A1BD1C()
{
  v1 = *(*v0 + 656);

  sub_252A1EC2C(v1);

  return MEMORY[0x2822009F8](sub_252A1BE34, 0, 0);
}

uint64_t sub_252A1BE34()
{
  v1 = *(v0 + 640);
  v2 = *(v0 + 584);

  sub_252A1ED64(v2, type metadata accessor for SnippetResponseViewIds);
  sub_252A1ED64(v1, type metadata accessor for HomeAutomationSnippetModels);
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  v3 = *(v0 + 720);
  v4 = *(v0 + 712);
  v5 = *(v0 + 704);
  v6 = *(v0 + 696);
  v7 = *(v0 + 688);
  v8 = *(v0 + 680);
  v9 = *(v0 + 672);
  v10 = sub_252E375C4();
  v13 = 2;
  sub_252E36A74(v10, &dword_252917000, v3, "buildSnippetOutput", 18, 2, v7, " enableTelemetry=YES ", 21, v13, MEMORY[0x277D84F90]);
  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_252A1C05C()
{
  v1 = *(*v0 + 656);

  sub_252A1EC2C(v1);

  return MEMORY[0x2822009F8](sub_252A1C174, 0, 0);
}

uint64_t sub_252A1C174()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  v1 = *(v0 + 720);
  v2 = *(v0 + 712);
  v3 = *(v0 + 704);
  v4 = *(v0 + 696);
  v5 = *(v0 + 688);
  v6 = *(v0 + 680);
  v7 = *(v0 + 672);
  v8 = sub_252E375C4();
  v11 = 2;
  sub_252E36A74(v8, &dword_252917000, v1, "buildSnippetOutput", 18, 2, v5, " enableTelemetry=YES ", 21, v11, MEMORY[0x277D84F90]);
  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_252A1C35C(uint64_t a1)
{
  v2 = v1[90];
  v3 = v1[86];
  v4 = sub_252E375C4();
  v10 = 2;
  sub_252E36A74(v4, &dword_252917000, v2, "buildSnippetOutput", 18, 2, v3, " enableTelemetry=YES ", 21, v10, MEMORY[0x277D84F90]);
  v5 = v1[89];
  v6 = v1[88];
  v7 = v1[87];
  (*(v1[85] + 8))(v1[86], v1[84]);
  (*(v6 + 8))(v5, v7);

  v8 = v1[1];

  return v8();
}

uint64_t sub_252A1C534(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 152) = a7;
  *(v8 + 160) = v7;
  *(v8 + 136) = a5;
  *(v8 + 144) = a6;
  *(v8 + 120) = a3;
  *(v8 + 128) = a4;
  *(v8 + 264) = a2;
  *(v8 + 112) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B30, &qword_252E41AB0);
  *(v8 + 168) = swift_task_alloc();
  *(v8 + 176) = swift_task_alloc();
  v9 = type metadata accessor for HomeAutomationSnippetModels(0);
  *(v8 + 184) = v9;
  *(v8 + 192) = *(v9 - 8);
  *(v8 + 200) = swift_task_alloc();
  *(v8 + 208) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252A1C654, 0, 0);
}

uint64_t sub_252A1C654()
{
  LODWORD(v1) = *(v0 + 264);
  if (v1 == 2)
  {
    v2 = [*(v0 + 120) catId];
    v1 = sub_252E36F34();
    v4 = v3;

    *(v0 + 96) = v1;
    *(v0 + 104) = v4;
    v5 = swift_task_alloc();
    *(v5 + 16) = v0 + 96;
    LOBYTE(v1) = sub_2529ED970(sub_25296A69C, v5, &unk_2864A7060);
    swift_arrayDestroy();
  }

  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 192);
  v7 = sub_252E36AD4();
  __swift_project_value_buffer(v7, qword_27F544D18);
  sub_252E379F4();

  if (v1)
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (v1)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v8, v9);

  sub_252CC3D90(0xD000000000000011, 0x8000000252E722F0, 0xD000000000000075, 0x8000000252E71F50);

  v10 = (v6 + 48);
  v11 = *(v0 + 184);
  v12 = *(v0 + 136);
  if (v1)
  {
    v13 = *(v0 + 176);
    sub_252A1EE0C(v12, v13);
    if ((*v10)(v13, 1, v11) == 1)
    {
      sub_252A1EC2C(*(v0 + 176));
      v14 = swift_task_alloc();
      *(v0 + 224) = v14;
      *v14 = v0;
      v14[1] = sub_252A1CE0C;
      v15 = *(v0 + 152);
      v16 = *(v0 + 144);
      v17 = *(v0 + 120);
      v18 = *(v0 + 128);
      v19 = *(v0 + 112);

      return MEMORY[0x2821BB498](v19, v17, v18, v16, v15);
    }

    else
    {
      v29 = *(v0 + 208);
      v30 = *(v0 + 184);
      sub_252A1ECFC(*(v0 + 176), v29, type metadata accessor for HomeAutomationSnippetModels);
      *(v0 + 80) = v30;
      *(v0 + 88) = sub_252A1EDC4(&qword_27F541B38, type metadata accessor for HomeAutomationSnippetModels, protocol conformance descriptor for HomeAutomationSnippetModels);
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 56));
      sub_252A1EC94(v29, boxed_opaque_existential_0, type metadata accessor for HomeAutomationSnippetModels);
      v32 = swift_task_alloc();
      *(v0 + 216) = v32;
      *v32 = v0;
      v32[1] = sub_252A1CC68;
      v33 = *(v0 + 152);
      v34 = *(v0 + 144);
      v35 = *(v0 + 120);
      v36 = *(v0 + 128);
      v37 = *(v0 + 112);

      return MEMORY[0x2821BB490](v37, v0 + 56, v35, v36, v34, v33);
    }
  }

  else
  {
    v20 = *(v0 + 168);
    sub_252A1EE0C(v12, v20);
    if ((*v10)(v20, 1, v11) == 1)
    {
      v21 = *(v0 + 120);
      sub_252A1EC2C(*(v0 + 168));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
      v22 = swift_allocObject();
      *(v0 + 248) = v22;
      *(v22 + 16) = xmmword_252E3C130;
      *(v22 + 32) = v21;
      v23 = v21;
      v24 = swift_task_alloc();
      *(v0 + 256) = v24;
      *v24 = v0;
      v24[1] = sub_252A1D138;
      v25 = *(v0 + 152);
      v26 = *(v0 + 144);
      v27 = *(v0 + 128);
      v28 = *(v0 + 112);

      return MEMORY[0x2821BB488](v28, v22, v27, v26, v25);
    }

    else
    {
      v38 = *(v0 + 200);
      v39 = *(v0 + 184);
      v40 = *(v0 + 120);
      sub_252A1ECFC(*(v0 + 168), v38, type metadata accessor for HomeAutomationSnippetModels);
      *(v0 + 40) = v39;
      *(v0 + 48) = sub_252A1EDC4(&qword_27F541B38, type metadata accessor for HomeAutomationSnippetModels, protocol conformance descriptor for HomeAutomationSnippetModels);
      v41 = __swift_allocate_boxed_opaque_existential_0((v0 + 16));
      sub_252A1EC94(v38, v41, type metadata accessor for HomeAutomationSnippetModels);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
      v42 = swift_allocObject();
      *(v0 + 232) = v42;
      *(v42 + 16) = xmmword_252E3C130;
      *(v42 + 32) = v40;
      v43 = v40;
      v44 = swift_task_alloc();
      *(v0 + 240) = v44;
      *v44 = v0;
      v44[1] = sub_252A1CF78;
      v45 = *(v0 + 152);
      v46 = *(v0 + 144);
      v47 = *(v0 + 128);
      v48 = *(v0 + 112);

      return MEMORY[0x2821BB468](v48, v0 + 16, v42, v47, v46, v45);
    }
  }
}

uint64_t sub_252A1CC68()
{
  v1 = *v0;

  __swift_destroy_boxed_opaque_existential_1((v1 + 56));

  return MEMORY[0x2822009F8](sub_252A1CD6C, 0, 0);
}

uint64_t sub_252A1CD6C()
{
  sub_252A1ED64(*(v0 + 208), type metadata accessor for HomeAutomationSnippetModels);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252A1CE0C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_252A1CF78()
{
  v1 = *v0;

  __swift_destroy_boxed_opaque_existential_1((v1 + 16));

  return MEMORY[0x2822009F8](sub_252A1D098, 0, 0);
}

uint64_t sub_252A1D098()
{
  sub_252A1ED64(*(v0 + 200), type metadata accessor for HomeAutomationSnippetModels);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252A1D138()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_252A1D2C0(uint64_t a1, int *a2)
{
  v2[5] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B30, &qword_252E41AB0);
  v4 = swift_task_alloc();
  v2[6] = v4;
  v7 = (a2 + *a2);
  v5 = swift_task_alloc();
  v2[7] = v5;
  *v5 = v2;
  v5[1] = sub_252A1D3FC;

  return v7(v4);
}

uint64_t sub_252A1D3FC()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_252A1D578;
  }

  else
  {
    v2 = sub_252A1D510;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_252A1D510()
{
  sub_252A1EE7C(v0[6], v0[5]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_252A1D578()
{
  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = v0[5];
  v3 = sub_252E36AD4();
  __swift_project_value_buffer(v3, qword_27F544D18);
  sub_252E379F4();
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  MEMORY[0x2530AD570](0xD00000000000002FLL, 0x8000000252E72310);
  v0[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
  sub_252E37AE4();
  sub_252CC3D90(v0[2], v0[3], 0xD000000000000075, 0x8000000252E71F50);

  v4 = type metadata accessor for HomeAutomationSnippetModels(0);
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_252A1D73C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[17] = a4;
  v5[18] = v4;
  v5[15] = a2;
  v5[16] = a3;
  v5[14] = a1;
  v5[19] = type metadata accessor for SnippetResponseViewIds(0);
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252A1D7E4, 0, 0);
}

uint64_t sub_252A1D7E4()
{
  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[15];
  v4 = sub_252E36AD4();
  __swift_project_value_buffer(v4, qword_27F544D18);
  sub_252E379F4();
  v0[12] = 0;
  v0[13] = 0xE000000000000000;
  MEMORY[0x2530AD570](0xD000000000000022, 0x8000000252E71FD0);
  v5 = type metadata accessor for CompletionSnippetModel(0);
  sub_252E37AE4();
  sub_252CC3D90(v0[12], v0[13], 0xD000000000000075, 0x8000000252E71F50);

  sub_252A1EC94(v3, v2, type metadata accessor for CompletionSnippetModel);
  (*(*(v5 - 8) + 56))(v2, 0, 1, v5);
  swift_storeEnumTagMultiPayload();
  sub_252A1EC94(v2, v1, type metadata accessor for SnippetResponseViewIds);
  swift_getEnumCaseMultiPayload();
  v6 = v0[20];
  v7 = v0[17];
  v9 = v0[15];
  v8 = v0[16];
  sub_252A1ED64(v0[21], type metadata accessor for SnippetResponseViewIds);
  sub_252A1ED64(v6, type metadata accessor for SnippetResponseViewIds);
  (*(v7 + 8))(v8, v7);
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v0[10] = v5;
  v0[11] = sub_252A1EDC4(&qword_27F541B28, type metadata accessor for CompletionSnippetModel, protocol conformance descriptor for CompletionSnippetModel);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 7);
  sub_252A1EC94(v9, boxed_opaque_existential_0, type metadata accessor for CompletionSnippetModel);
  sub_252E33CD4();

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v11 = v0[1];

  return v11();
}

uint64_t sub_252A1DBA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[9] = a8;
  v9[10] = v8;
  v9[7] = a6;
  v9[8] = a7;
  v9[5] = a4;
  v9[6] = a5;
  v9[3] = a2;
  v9[4] = a3;
  v9[2] = a1;
  sub_252E33944();
  v9[11] = swift_task_alloc();
  v10 = sub_252E34014();
  v9[12] = v10;
  v9[13] = *(v10 - 8);
  v9[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252A1DC9C, 0, 0);
}

uint64_t sub_252A1DC9C()
{
  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 56);
  v2 = sub_252E36AD4();
  v10 = *(v0 + 40);
  __swift_project_value_buffer(v2, qword_27F544D18);
  sub_252CC3D90(0xD000000000000034, 0x8000000252E71F10, 0xD000000000000075, 0x8000000252E71F50);
  sub_252E33934();
  *(swift_task_alloc() + 16) = v1;
  sub_252E33F54();

  v3 = swift_task_alloc();
  *(v0 + 120) = v3;
  *(v3 + 16) = v10;
  v4 = swift_task_alloc();
  *(v0 + 128) = v4;
  *v4 = v0;
  v4[1] = sub_252A1DE80;
  v5 = *(v0 + 112);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  v8 = *(v0 + 16);

  return sub_252A199A8(v8, v6, v7, &unk_252E3D1A0, v3, v5, 0, 0);
}

uint64_t sub_252A1DE80()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_252A1E038;
  }

  else
  {
    v2 = sub_252A1DFB0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_252A1DFB0()
{
  (*(v0[13] + 8))(v0[14], v0[12]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_252A1E038()
{
  (*(v0[13] + 8))(v0[14], v0[12]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_252A1E0C0(uint64_t a1, uint64_t a2)
{
  v3 = sub_252E339D4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540390, &qword_252E3C448);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v13 - v8;
  sub_252E33FB4();
  sub_252E34004();
  v10 = sub_252E33C44();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a2, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  sub_252E33FC4();
  (*(v4 + 104))(v6, *MEMORY[0x277D5BC50], v3);
  return sub_252E33F84();
}

uint64_t sub_252A1E27C(uint64_t a1, int *a2)
{
  v2[2] = a1;
  v4 = type metadata accessor for HomeAutomationSnippetModels(0);
  v2[3] = v4;
  v2[4] = *(v4 - 8);
  v5 = swift_task_alloc();
  v2[5] = v5;
  v8 = (a2 + *a2);
  v6 = swift_task_alloc();
  v2[6] = v6;
  *v6 = v2;
  v6[1] = sub_252A1E3DC;

  return v8(v5);
}

uint64_t sub_252A1E3DC()
{
  v2 = *v1;
  v3 = *v1;

  if (!v0)
  {
    v6 = v2[4];
    v5 = v2[5];
    v9 = v2 + 2;
    v7 = v2[2];
    v8 = v9[1];
    sub_252A1ECFC(v5, v7, type metadata accessor for HomeAutomationSnippetModels);
    (*(v6 + 56))(v7, 0, 1, v8);
  }

  v4 = v3[1];

  return v4();
}

uint64_t sub_252A1E544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v9 + 72) = v14;
  *(v9 + 80) = v8;
  *(v9 + 56) = a6;
  *(v9 + 64) = a8;
  *(v9 + 160) = a7;
  *(v9 + 40) = a4;
  *(v9 + 48) = a5;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v9 + 16) = a1;
  sub_252E33944();
  *(v9 + 88) = swift_task_alloc();
  v10 = sub_252E34014();
  *(v9 + 96) = v10;
  *(v9 + 104) = *(v10 - 8);
  *(v9 + 112) = swift_task_alloc();
  v11 = sub_252E33C44();
  *(v9 + 120) = v11;
  *(v9 + 128) = *(v11 - 8);
  *(v9 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252A1E6A8, 0, 0);
}

uint64_t sub_252A1E6A8()
{
  if (qword_27F53F490 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 136);
  v2 = *(v0 + 56);
  v3 = sub_252E36AD4();
  __swift_project_value_buffer(v3, qword_27F544C58);
  sub_252CC3D90(0xD000000000000032, 0x8000000252E6A480, 0xD000000000000075, 0x8000000252E71F50);
  sub_252A6097C(v2, v1);
  sub_252E33934();
  *(swift_task_alloc() + 16) = v1;
  sub_252E33F54();

  v4 = swift_task_alloc();
  *(v0 + 144) = v4;
  *v4 = v0;
  v4[1] = sub_252A1E85C;
  v5 = *(v0 + 112);
  v6 = *(v0 + 160);
  v7 = *(v0 + 40);
  v8 = *(v0 + 48);
  v9 = *(v0 + 24);
  v10 = *(v0 + 32);
  v11 = *(v0 + 16);

  return sub_252A199A8(v11, v9, v10, v7, v8, v5, v6, 0);
}

uint64_t sub_252A1E85C()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_252A1EA30;
  }

  else
  {
    v2 = sub_252A1E970;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_252A1E970()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  (*(v0[13] + 8))(v0[14], v0[12]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_252A1EA30()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  (*(v0[13] + 8))(v0[14], v0[12]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_252A1EAF0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540390, &qword_252E3C448);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  sub_252E33FB4();
  sub_252E34004();
  v6 = sub_252E33C44();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v5, a2, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  sub_252E33FC4();
  return sub_252E33FA4();
}

uint64_t sub_252A1EC2C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B30, &qword_252E41AB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_252A1EC94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_252A1ECFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_252A1ED64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_252A1EDC4(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_252A1EE0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B30, &qword_252E41AB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_252A1EE7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B30, &qword_252E41AB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_252A1EEEC()
{
  v1 = [v0 userTask];
  if (!v1)
  {
    if (qword_27F53F4B8 != -1)
    {
      swift_once();
    }

    v11 = sub_252E36AD4();
    __swift_project_value_buffer(v11, qword_27F544CD0);
    sub_252E379F4();

    v12 = v0;
    v13 = [v12 description];
    v14 = sub_252E36F34();
    v16 = v15;

    MEMORY[0x2530AD570](v14, v16);

    sub_252CC4050(0xD000000000000012, 0x8000000252E72480, 0xD000000000000089, 0x8000000252E72370, 0xD00000000000001ALL, 0x8000000252E724A0, 14);
    goto LABEL_21;
  }

  v2 = v1;
  v3 = [v1 value];
  if (!v3)
  {
    if (qword_27F53F4B8 != -1)
    {
      swift_once();
    }

    v17 = sub_252E36AD4();
    __swift_project_value_buffer(v17, qword_27F544CD0);
    sub_252E379F4();

    v18 = v2;
    v19 = [v18 description];
    v20 = sub_252E36F34();
    v22 = v21;

    MEMORY[0x2530AD570](v20, v22);

    sub_252CC4050(0xD000000000000026, 0x8000000252E724C0, 0xD000000000000089, 0x8000000252E72370, 0xD00000000000001ALL, 0x8000000252E724A0, 19);

    goto LABEL_21;
  }

  v4 = v3;
  v5 = [v2 attribute];
  v6 = [v2 taskType];
  if ([v2 attribute] == 27)
  {
    if (*(ControlHomeIntent.getTargetDeviceTypes()() + 2) == 1)
    {
      v7 = sub_252DB4F48();
      v9 = v8;

      v10 = v7;
      goto LABEL_14;
    }
  }

  v10 = 0;
  v9 = 1;
LABEL_14:
  sub_252BFA88C(v5, v4, v6, v10, v9 & 1, 0);
  if (!v23)
  {
    if (qword_27F53F4B8 != -1)
    {
      swift_once();
    }

    v30 = sub_252E36AD4();
    __swift_project_value_buffer(v30, qword_27F544CD0);
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD00000000000002ALL, 0x8000000252E724F0);
    v31 = HomeAttributeType.description.getter([v2 attribute]);
    MEMORY[0x2530AD570](v31);

    MEMORY[0x2530AD570](0x6C617620646E6120, 0xEC000000203A6575);
    v32 = [v4 description];
    v33 = sub_252E36F34();
    v35 = v34;

    MEMORY[0x2530AD570](v33, v35);

    sub_252CC4050(0, 0xE000000000000000, 0xD000000000000089, 0x8000000252E72370, 0xD00000000000001ALL, 0x8000000252E724A0, 28);

LABEL_21:
    v24 = 0;
    goto LABEL_22;
  }

  v24 = v23;
  v25 = qword_27F53F4B8;

  if (v25 != -1)
  {
    swift_once();
  }

  v26 = sub_252E36AD4();
  __swift_project_value_buffer(v26, qword_27F544CD0);
  sub_252E379F4();

  v27 = MEMORY[0x2530AD730](v24, &type metadata for Attribute);
  v29 = v28;

  MEMORY[0x2530AD570](v27, v29);

  sub_252CC3D90(0xD000000000000027, 0x8000000252E72520, 0xD000000000000089, 0x8000000252E72370);

LABEL_22:

  return v24;
}

char *sub_252A1F47C()
{
  v1 = v0;
  v2 = [v0 userTask];
  if (!v2 || (v3 = v2, v4 = [v2 attribute], v3, (v5 = objc_msgSend(v1, sel_userTask)) == 0))
  {
    if (qword_27F53F4B8 != -1)
    {
      swift_once();
    }

    v16 = sub_252E36AD4();
    __swift_project_value_buffer(v16, qword_27F544CD0);
    sub_252E379F4();

    [v1 userTask];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540420, &unk_252E3C800);
    v17 = sub_252E36F94();
    MEMORY[0x2530AD570](v17);

    sub_252CC4050(0xD000000000000021, 0x8000000252E72430, 0xD000000000000089, 0x8000000252E72370, 0xD00000000000001ELL, 0x8000000252E72460, 49);
    goto LABEL_10;
  }

  v6 = v5;
  v7 = [v5 taskType];

  v8 = sub_252BFA2C0(v4, v7, 0);
  if (!v8)
  {
    if (qword_27F53F4B8 != -1)
    {
      swift_once();
    }

    v18 = sub_252E36AD4();
    __swift_project_value_buffer(v18, qword_27F544CD0);
    sub_252E379F4();

    v19 = HomeAttributeType.description.getter(v4);
    MEMORY[0x2530AD570](v19);

    sub_252CC3D90(0xD000000000000029, 0x8000000252E72340, 0xD000000000000089, 0x8000000252E72370);
LABEL_10:

    return 0;
  }

  v9 = qword_27F53F4B8;
  v10 = v8;

  if (v9 != -1)
  {
    swift_once();
  }

  v11 = sub_252E36AD4();
  __swift_project_value_buffer(v11, qword_27F544CD0);
  sub_252E379F4();

  v12 = MEMORY[0x2530AD730](v10, &type metadata for AttributeKind);
  v14 = v13;

  MEMORY[0x2530AD570](v12, v14);

  sub_252CC3D90(0xD000000000000028, 0x8000000252E72400, 0xD000000000000089, 0x8000000252E72370);

  return v10;
}

id AutomateHomeIntent.userTask.getter()
{
  result = [v0 automatableTask];
  if (result)
  {
    v2 = result;
    type metadata accessor for ControlAutomateHomeIntent();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask);

      return v4;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

void *AutomateHomeIntent.withUpdated(task:)(void *a1)
{
  v3 = [v1 automatableTask];
  if (!v3)
  {
    goto LABEL_5;
  }

  v4 = v3;
  type metadata accessor for ControlAutomateHomeIntent();
  v5 = swift_dynamicCastClass();
  if (!v5)
  {

LABEL_5:
    v9 = v1;
    return v1;
  }

  v6 = *(v5 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask);
  *(v5 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask) = a1;
  v7 = a1;

  v8 = v1;
  return v1;
}

void *AutomateHomeIntent.withUpdated(trigger:)(void *a1)
{
  if (a1)
  {
    v2 = a1;
    [v1 setTrigger_];
    v3 = v1;
  }

  else
  {
    v4 = v1;
  }

  return v1;
}

id ControlHomeIntent.withUpdated(task:)(uint64_t a1)
{
  swift_getObjectType();
  v13 = v1;
  v3 = [v13 userTask];
  v4 = [v13 filters];
  if (v4)
  {
    v5 = v4;
    type metadata accessor for HomeFilter();
    v6 = sub_252E37264();
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  type metadata accessor for ControlHomeIntent.Builder();
  v7 = [v13 time];
  v8 = sub_252D47574(v3, v6, v7);

  v9 = (*(*v8 + 184))(a1);

  v11 = (*(*v9 + 224))(v10);

  result = swift_dynamicCastClass();
  if (!result)
  {

    return v13;
  }

  return result;
}

id sub_252A1FB0C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = ControlHomeIntent.withUpdated(task:)(a1);
  *a2 = result;
  return result;
}

id sub_252A1FB38@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return v2;
}

id sub_252A1FB44()
{
  result = [*v0 automatableTask];
  if (result)
  {
    v2 = result;
    type metadata accessor for ControlAutomateHomeIntent();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask);

      return v4;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

void sub_252A1FBC4(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *v2;
  v6 = [v5 automatableTask];
  if (!v6)
  {
    goto LABEL_5;
  }

  v7 = v6;
  type metadata accessor for ControlAutomateHomeIntent();
  v8 = swift_dynamicCastClass();
  if (!v8)
  {

LABEL_5:
    v12 = v5;
    goto LABEL_6;
  }

  v9 = *(v8 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask);
  *(v8 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask) = a1;

  v10 = a1;
  v11 = v5;

LABEL_6:
  *a2 = v5;
}

void sub_252A1FC60(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  if (a1)
  {
    v5 = a1;
    [v4 setTrigger_];
    v6 = v4;
  }

  else
  {
    v7 = v4;
  }

  *a2 = v4;
}

uint64_t sub_252A1FCFC(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (a2)
  {
    v4 = v2;
    v6 = [v4 homeName];
    if (v6)
    {
      v7 = v6;
      v8 = sub_252E36F34();
      v10 = v9;

      if (v8 == a1 && v10 == v3)
      {
        goto LABEL_38;
      }

      v12 = sub_252E37DB4();

      if (v12)
      {
        goto LABEL_34;
      }
    }

    v13 = [v4 roomName];
    if (v13)
    {
      v14 = v13;
      v15 = sub_252E36F34();
      v17 = v16;

      if (v15 == a1 && v17 == v3)
      {
        goto LABEL_38;
      }

      v19 = sub_252E37DB4();

      if (v19)
      {
        goto LABEL_34;
      }
    }

    v20 = [v4 groupName];
    if (v20)
    {
      v21 = v20;
      v22 = sub_252E36F34();
      v24 = v23;

      if (v22 == a1 && v24 == v3)
      {
        goto LABEL_38;
      }

      v25 = sub_252E37DB4();

      if (v25)
      {
        goto LABEL_34;
      }
    }

    v26 = [v4 zoneName];
    if (v26)
    {
      v27 = v26;
      v28 = sub_252E36F34();
      v30 = v29;

      if (v28 == a1 && v30 == v3)
      {
        goto LABEL_38;
      }

      v31 = sub_252E37DB4();

      if (v31)
      {
        goto LABEL_34;
      }
    }

    v32 = [v4 homeEntityName];
    if (v32)
    {
      v33 = v32;
      v34 = sub_252E36F34();
      v36 = v35;

      if (v34 == a1 && v36 == v3)
      {
        goto LABEL_38;
      }

      v37 = sub_252E37DB4();

      if (v37)
      {
        goto LABEL_34;
      }
    }

    v38 = [v4 outerDeviceName];
    if (v38)
    {
      v39 = v38;
      v40 = sub_252E36F34();
      v42 = v41;

      if (v40 == a1 && v42 == v3)
      {
        goto LABEL_38;
      }

      v43 = sub_252E37DB4();

      if (v43)
      {
LABEL_34:
        LOBYTE(v3) = 1;
        return v3 & 1;
      }
    }

    v44 = [v4 targetArea];
    if (v44)
    {
      v45 = v44;
      v46 = sub_252E36F34();
      v48 = v47;

      if (v46 == a1 && v48 == v3)
      {
        goto LABEL_38;
      }

      v49 = sub_252E37DB4();

      if (v49)
      {
        goto LABEL_34;
      }
    }

    v50 = [v4 targetMap];
    if (!v50)
    {
      LOBYTE(v3) = 0;
      return v3 & 1;
    }

    v51 = v50;
    v52 = sub_252E36F34();
    v54 = v53;

    if (v52 != a1 || v54 != v3)
    {
      LOBYTE(v3) = sub_252E37DB4();
      goto LABEL_39;
    }

LABEL_38:
    LOBYTE(v3) = 1;
LABEL_39:
  }

  return v3 & 1;
}

uint64_t sub_252A20088()
{
  v1 = [v0 entityIdentifiers];
  if (!v1)
  {
    goto LABEL_4;
  }

  result = [v0 entityIdentifiers];
  if (!result)
  {
    return result;
  }

  v3 = result;
  v4 = sub_252E37264();

  v5 = *(v4 + 16);

  if (!v5)
  {
LABEL_4:
    v6 = v0;
    v7 = [v6 homeName];

    if (!v7)
    {
      v8 = v6;
      v7 = [v8 roomName];

      if (!v7)
      {
        v9 = v8;
        v7 = [v9 groupName];

        if (!v7)
        {
          v10 = [v9 zoneName];
          if (v10)
          {
            v7 = v10;
          }

          else
          {
            v11 = v9;
            v7 = [v11 homeEntityName];

            if (!v7)
            {
              v12 = v11;
              v7 = [v12 outerDeviceName];

              if (!v7)
              {
                if ([v12 deviceType] || objc_msgSend(v12, sel_outerDeviceType))
                {
                  return 0;
                }

                v13 = v12;
                v7 = [v13 targetArea];

                if (!v7)
                {
                  v14 = v13;
                  v7 = [v14 targetMap];

                  if (!v7)
                  {
                    return 1;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return 0;
}

uint64_t sub_252A20280(void *a1)
{
  v2 = v1;
  v4 = [a1 homeEntityName];
  if (v4 || (v4 = [v1 homeEntityName]) != 0)
  {
    v5 = v4;
    v82 = sub_252E36F34();
    v83 = v6;
  }

  else
  {
    v82 = 0;
    v83 = 0;
  }

  if ([a1 entityType])
  {
    v7 = a1;
  }

  else
  {
    v7 = v1;
  }

  v80 = [v7 entityType];
  if ([a1 outerDeviceType])
  {
    v8 = a1;
  }

  else
  {
    v8 = v1;
  }

  v81 = [v8 outerDeviceType];
  v9 = [a1 outerDeviceName];
  if (v9 || (v9 = [v1 outerDeviceName]) != 0)
  {
    v10 = v9;
    v78 = sub_252E36F34();
    v79 = v11;
  }

  else
  {
    v78 = 0;
    v79 = 0;
  }

  if ([a1 deviceType])
  {
    v12 = a1;
  }

  else
  {
    v12 = v1;
  }

  v77 = [v12 deviceType];
  v13 = [a1 homeName];
  if (v13 || (v13 = [v1 homeName]) != 0)
  {
    v14 = v13;
    v75 = sub_252E36F34();
    v76 = v15;
  }

  else
  {
    v75 = 0;
    v76 = 0;
  }

  v16 = [a1 zoneName];
  if (v16 || (v16 = [v1 zoneName]) != 0)
  {
    v17 = v16;
    v73 = sub_252E36F34();
    v74 = v18;
  }

  else
  {
    v73 = 0;
    v74 = 0;
  }

  v19 = [a1 groupName];
  if (v19 || (v19 = [v1 groupName]) != 0)
  {
    v20 = v19;
    v71 = sub_252E36F34();
    v72 = v21;
  }

  else
  {
    v71 = 0;
    v72 = 0;
  }

  v22 = [a1 roomName];
  if (v22 || (v22 = [v1 roomName]) != 0)
  {
    v23 = v22;
    v70 = sub_252E36F34();
    v25 = v24;
  }

  else
  {
    v70 = 0;
    v25 = 0;
  }

  v26 = [a1 targetArea];
  if (v26 || (v26 = [v1 targetArea]) != 0)
  {
    v27 = v26;
    v69 = sub_252E36F34();
    v29 = v28;
  }

  else
  {
    v69 = 0;
    v29 = 0;
  }

  v30 = [a1 targetMap];
  if (v30 || (v30 = [v1 targetMap]) != 0)
  {
    v31 = v30;
    v67 = sub_252E36F34();
    v33 = v32;

    v34 = [a1 hasAllQuantifier];
  }

  else
  {
    v33 = 0;
    v34 = [a1 hasAllQuantifier];
  }

  v35 = v34;
  sub_252956D08();
  v36 = sub_252E37674();
  v37 = v36;
  if (v35)
  {
    v38 = sub_252E37694();

    if (v38)
    {
      v39 = 1;
      goto LABEL_42;
    }
  }

  else
  {
  }

  v40 = [v2 hasAllQuantifier];
  v41 = sub_252E37674();
  if (v40)
  {
    v39 = sub_252E37694();

    v41 = v40;
  }

  else
  {
    v39 = 0;
  }

LABEL_42:
  v42 = [a1 referencesFavorites];
  v43 = sub_252E37674();
  v44 = v43;
  if (v42)
  {
    v45 = sub_252E37694();

    if (v45)
    {
      v46 = 1;
      goto LABEL_50;
    }
  }

  else
  {
  }

  v47 = [v2 referencesFavorites];
  v48 = sub_252E37674();
  if (v47)
  {
    v46 = sub_252E37694();

    v48 = v47;
  }

  else
  {
    v46 = 0;
  }

LABEL_50:
  type metadata accessor for HomeFilter.Builder();
  swift_allocObject();
  v49.n128_f64[0] = HomeFilter.Builder.init()();
  v51 = (*(*v50 + 576))(v82, v83, v49);

  v52 = (*(*v51 + 592))(v80);

  v53 = (*(*v52 + 600))(v81);

  v54 = (*(*v53 + 608))(v78, v79);

  v55 = (*(*v54 + 624))(v77);

  v56 = (*(*v55 + 632))(v75, v76);

  v57 = (*(*v56 + 648))(v73, v74);

  v58 = (*(*v57 + 664))(v71, v72);

  v59 = (*(*v58 + 680))(v70, v25);

  v60 = (*(*v59 + 696))(v69, v29);

  v61 = (*(*v60 + 712))(v68, v33);

  v62 = (*(*v61 + 736))(v39 & 1);

  v63 = (*(*v62 + 744))(v46 & 1);

  v65 = (*(*v63 + 760))(v64);

  return v65;
}

uint64_t sub_252A20B84()
{
  v1 = [v0 entityIdentifiers];
  if (v1)
  {
    goto LABEL_3;
  }

  v1 = [v0 homeEntityName];
  if (v1)
  {
    goto LABEL_3;
  }

  if ([v0 entityType] || objc_msgSend(v0, sel_outerDeviceType))
  {
    goto LABEL_4;
  }

  v1 = [v0 outerDeviceName];
  if (v1)
  {
    goto LABEL_3;
  }

  if ([v0 deviceType])
  {
    goto LABEL_4;
  }

  v1 = [v0 homeName];
  if (v1 || (v1 = [v0 zoneName]) != 0 || (v1 = objc_msgSend(v0, sel_groupName)) != 0 || (v1 = objc_msgSend(v0, sel_roomName)) != 0 || (v1 = objc_msgSend(v0, sel_targetArea)) != 0 || (v1 = objc_msgSend(v0, sel_targetMap)) != 0)
  {
LABEL_3:

    goto LABEL_4;
  }

  v4 = [v0 isExcludeFilter];
  sub_252956D08();
  v5 = sub_252E37674();
  v6 = v5;
  if (v4)
  {
    v7 = sub_252E37694();

    if (v7)
    {
      goto LABEL_4;
    }
  }

  else
  {
  }

  v8 = [v0 hasAllQuantifier];
  v9 = sub_252E37674();
  v10 = v9;
  if (!v8)
  {

    goto LABEL_24;
  }

  v11 = sub_252E37694();

  if (v11)
  {
LABEL_4:
    v2 = 0;
    return v2 & 1;
  }

LABEL_24:
  v12 = [v0 referencesFavorites];
  v13 = sub_252E37674();
  v14 = v13;
  if (v12)
  {
    v15 = sub_252E37694();

    v2 = v15 ^ 1;
  }

  else
  {

    v2 = 1;
  }

  return v2 & 1;
}

id sub_252A20DFC(void *a1)
{
  if (a1)
  {
    v94 = v1;
    v2 = a1;
    v3 = [v2 isExcludeFilter];
    sub_252956D08();
    v4 = sub_252E37674();
    v5 = v4;
    if (v3)
    {
      v6 = sub_252E37694();

      if (v6)
      {
        v7 = v94;

        return v7;
      }
    }

    else
    {
    }

    v9 = [v94 homeEntityName];
    if (v9 || (v9 = [v94 outerDeviceName]) != 0)
    {

      v10 = [v2 outerDeviceName];
      if (!v10)
      {
        v10 = [v2 homeEntityName];
        if (!v10)
        {
          v75 = [v94 homeEntityName];
          if (v75)
          {
            v76 = v75;
            v92 = sub_252E36F34();
            v93 = v77;
          }

          else
          {
            v92 = 0;
            v93 = 0;
          }

          v14 = [v94 outerDeviceName];
LABEL_17:
          v15 = v14;
          if (v15)
          {
            v16 = v15;
            v90 = sub_252E36F34();
            v91 = v17;
          }

          else
          {
            v90 = 0;
            v91 = 0;
          }

          if ([v94 entityType])
          {
            v18 = v94;
          }

          else
          {
            v18 = v2;
          }

          v89 = [v18 entityType];
          if ([v2 outerDeviceType])
          {
            v19 = v2;
          }

          else
          {
            v19 = v94;
          }

          v87 = [v19 outerDeviceType];
          if ([v2 deviceType])
          {
            v20 = v2;
          }

          else
          {
            v20 = v94;
          }

          v88 = [v20 deviceType];
          v21 = [v2 homeName];
          if (v21 || (v21 = [v94 homeName]) != 0)
          {
            v22 = v21;
            v85 = sub_252E36F34();
            v86 = v23;
          }

          else
          {
            v85 = 0;
            v86 = 0;
          }

          v24 = [v2 zoneName];
          if (v24 || (v24 = [v94 zoneName]) != 0)
          {
            v25 = v24;
            v83 = sub_252E36F34();
            v84 = v26;
          }

          else
          {
            v83 = 0;
            v84 = 0;
          }

          v27 = [v2 groupName];
          if (v27 || (v27 = [v94 groupName]) != 0)
          {
            v28 = v27;
            v81 = sub_252E36F34();
            v82 = v29;
          }

          else
          {
            v81 = 0;
            v82 = 0;
          }

          v30 = [v2 roomName];
          if (v30 || (v30 = [v94 roomName]) != 0)
          {
            v31 = v30;
            v80 = sub_252E36F34();
            v33 = v32;
          }

          else
          {
            v80 = 0;
            v33 = 0;
          }

          v34 = [v2 targetArea];
          if (v34 || (v34 = [v94 targetArea]) != 0)
          {
            v35 = v34;
            v79 = sub_252E36F34();
            v37 = v36;
          }

          else
          {
            v79 = 0;
            v37 = 0;
          }

          v38 = [v2 targetMap];
          if (v38 || (v38 = [v94 targetMap]) != 0)
          {
            v39 = v38;
            v78 = sub_252E36F34();
            v41 = v40;
          }

          else
          {
            v78 = 0;
            v41 = 0;
          }

          v42 = [v2 hasAllQuantifier];
          v43 = sub_252E37674();
          v44 = v43;
          if (v42)
          {
            v45 = sub_252E37694();

            if (v45)
            {
              v46 = 1;
              goto LABEL_55;
            }
          }

          else
          {
          }

          v47 = [v94 hasAllQuantifier];
          v48 = sub_252E37674();
          if (v47)
          {
            v46 = sub_252E37694();

            v48 = v47;
          }

          else
          {
            v46 = 0;
          }

LABEL_55:
          v49 = [v2 referencesFavorites];
          v50 = sub_252E37674();
          v51 = v50;
          if (v49)
          {
            v52 = sub_252E37694();

            if (v52)
            {
LABEL_62:
              type metadata accessor for HomeFilter.Builder();
              swift_allocObject();
              v55.n128_f64[0] = HomeFilter.Builder.init()();
              v57 = (*(*v56 + 576))(v92, v93, v55);

              v58 = (*(*v57 + 592))(v89);

              v59 = (*(*v58 + 600))(v87);

              v60 = (*(*v59 + 608))(v90, v91);

              v61 = (*(*v60 + 624))(v88);

              v62 = (*(*v61 + 632))(v85, v86);

              v63 = (*(*v62 + 648))(v83, v84);

              v64 = (*(*v63 + 664))(v81, v82);

              v65 = (*(*v64 + 680))(v80, v33);

              v66 = (*(*v65 + 696))(v79, v37);

              v67 = (*(*v66 + 712))(v78, v41);

              v68 = (*(*v67 + 736))(v46 & 1);

              v69 = [v94 isExcludeFilter];
              v70 = sub_252E37674();
              if (v69)
              {
                v71 = sub_252E37694();

                v70 = v69;
              }

              else
              {
                v71 = 0;
              }

              v72 = (*(*v68 + 728))(v71 & 1);

              v74 = (*(*v72 + 760))(v73);

              return v74;
            }
          }

          else
          {
          }

          v53 = [v94 referencesFavorites];
          v54 = sub_252E37674();
          if (v53)
          {
            sub_252E37694();

            v54 = v53;
          }

          goto LABEL_62;
        }
      }

      v11 = [v2 homeEntityName];
      if (!v11)
      {
        v92 = 0;
        v93 = 0;
        goto LABEL_16;
      }
    }

    else
    {
      v11 = [v2 homeEntityName];
      if (!v11)
      {
        v92 = 0;
        v93 = 0;
        goto LABEL_16;
      }
    }

    v12 = v11;
    v92 = sub_252E36F34();
    v93 = v13;

LABEL_16:
    v14 = [v2 outerDeviceName];
    goto LABEL_17;
  }

  return v1;
}

uint64_t sub_252A218E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v78 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v78 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v78 = &v78 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v79 = &v78 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v78 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v78 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v78 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v78 - v27;
  v29 = sub_252E36324();
  v30 = *(v29 - 8);
  v31 = *(v30 + 56);
  v81 = a2;
  v82 = v31;
  v32 = a2;
  v33 = v29;
  v83 = v30 + 56;
  v31(v32, 1, 1, v29);
  if (a1 > 4)
  {
    if (a1 > 10)
    {
      if (a1 == 11)
      {
        v65 = [v80 targetArea];
        if (v65)
        {
          v66 = v65;
          sub_252E36F34();

          sub_252E37024();

          v67 = v81;
          sub_252938BBC(v81);
          v68 = 0;
        }

        else
        {
          v67 = v81;
          sub_252938BBC(v81);
          v68 = 1;
        }

        v82(v10, v68, 1, v33);
        v72 = v10;
        v73 = v67;
        return sub_2529439A0(v72, v73);
      }

      if (a1 == 12)
      {
        v49 = v33;
        v50 = [v80 targetMap];
        v36 = v81;
        if (v50)
        {
          v51 = v50;
          sub_252E36F34();

          sub_252E37024();

          sub_252938BBC(v36);
          v52 = 0;
        }

        else
        {
          sub_252938BBC(v81);
          v52 = 1;
        }

        v82(v7, v52, 1, v49);
        v72 = v7;
        goto LABEL_49;
      }
    }

    else
    {
      if (a1 == 5)
      {
        v57 = [v80 homeName];
        if (v57)
        {
          v58 = v57;
          sub_252E36F34();

          sub_252E37024();

          v59 = v81;
          sub_252938BBC(v81);
          v60 = 0;
        }

        else
        {
          v59 = v81;
          sub_252938BBC(v81);
          v60 = 1;
        }

        v82(v13, v60, 1, v33);
        v72 = v13;
        v73 = v59;
        return sub_2529439A0(v72, v73);
      }

      if (a1 == 7)
      {
        v39 = v80;
        v40 = [v80 homeEntityName];
        v41 = v81;
        if (v40)
        {
          v42 = v40;
          sub_252E36F34();

          v43 = v78;
          sub_252E37024();

          v82(v43, 0, 1, v33);
          sub_252938BBC(v41);
          v44 = v79;
          (*(v30 + 32))(v79, v43, v33);
          v82(v44, 0, 1, v33);
        }

        else
        {
          v74 = 1;
          v75 = v78;
          v82(v78, 1, 1, v33);
          v76 = [v39 outerDeviceName];
          v44 = v79;
          if (v76)
          {
            v77 = v76;
            sub_252E36F34();

            sub_252E37024();

            v74 = 0;
          }

          sub_252938BBC(v41);
          v82(v44, v74, 1, v33);
          if ((*(v30 + 48))(v75, 1, v33) != 1)
          {
            sub_252938BBC(v75);
          }
        }

        v72 = v44;
        v73 = v41;
        return sub_2529439A0(v72, v73);
      }
    }
  }

  else
  {
    if (a1 > 2)
    {
      if (a1 == 3)
      {
        v61 = [v80 roomName];
        if (v61)
        {
          v62 = v61;
          sub_252E36F34();

          sub_252E37024();

          v63 = v81;
          sub_252938BBC(v81);
          v64 = 0;
        }

        else
        {
          v63 = v81;
          sub_252938BBC(v81);
          v64 = 1;
        }

        v82(v26, v64, 1, v33);
        v72 = v26;
        v73 = v63;
      }

      else
      {
        v45 = [v80 groupName];
        v46 = v81;
        if (v45)
        {
          v47 = v45;
          sub_252E36F34();

          sub_252E37024();

          sub_252938BBC(v46);
          v48 = 0;
        }

        else
        {
          sub_252938BBC(v81);
          v48 = 1;
        }

        v82(v23, v48, 1, v33);
        v72 = v23;
        v73 = v46;
      }

      return sub_2529439A0(v72, v73);
    }

    if (a1 == 1)
    {
      v53 = [v80 homeName];
      if (v53)
      {
        v54 = v53;
        sub_252E36F34();

        sub_252E37024();

        v55 = v81;
        sub_252938BBC(v81);
        v56 = 0;
      }

      else
      {
        v55 = v81;
        sub_252938BBC(v81);
        v56 = 1;
      }

      v82(v28, v56, 1, v33);
      v72 = v28;
      v73 = v55;
      return sub_2529439A0(v72, v73);
    }

    if (a1 == 2)
    {
      v34 = v33;
      v35 = [v80 zoneName];
      v36 = v81;
      if (v35)
      {
        v37 = v35;
        sub_252E36F34();

        sub_252E37024();

        sub_252938BBC(v36);
        v38 = 0;
      }

      else
      {
        sub_252938BBC(v81);
        v38 = 1;
      }

      v82(v20, v38, 1, v34);
      v72 = v20;
LABEL_49:
      v73 = v36;
      return sub_2529439A0(v72, v73);
    }
  }

  v69 = v81;
  sub_252938BBC(v81);
  v70 = v82;

  return v70(v69, 1, 1, v33);
}

uint64_t HomeFilter.hash.getter()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401B0, &qword_252E41DB0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_252E41B60;
  sub_252E379F4();

  v3 = [v0 entityIdentifiers];
  if (v3)
  {
    v4 = v3;
    v5 = sub_252E37264();
  }

  else
  {
    v5 = 0;
  }

  v55[0] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540378, &unk_252E43ED0);
  sub_252A22AFC();
  v6 = sub_252E37744();

  v56 = v6;
  v7 = sub_252E37D94();
  MEMORY[0x2530AD570](v7);

  *(v2 + 32) = 0xD000000000000013;
  *(v2 + 40) = 0x8000000252E72550;
  sub_252E379F4();

  v8 = [v1 homeEntityName];
  if (v8)
  {
    v9 = v8;
    sub_252E36F34();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
  v10 = sub_252E37744();

  v56 = v10;
  v11 = sub_252E37D94();
  MEMORY[0x2530AD570](v11);

  *(v2 + 48) = 0x69746E45656D6F68;
  *(v2 + 56) = 0xEF20656D614E7974;
  strcpy(v55, "entityType: ");
  BYTE5(v55[1]) = 0;
  HIWORD(v55[1]) = -5120;
  v12 = [v1 entityType];
  sub_252E37EC4();
  MEMORY[0x2530AE390](v12);
  sub_252E37F14();
  v13 = sub_252E37D94();
  MEMORY[0x2530AD570](v13);

  v14 = v55[1];
  *(v2 + 64) = v55[0];
  *(v2 + 72) = v14;
  sub_252E379F4();

  v15 = [v1 outerDeviceType];
  sub_252E37EC4();
  MEMORY[0x2530AE390](v15);
  sub_252E37F14();
  v16 = sub_252E37D94();
  MEMORY[0x2530AD570](v16);

  *(v2 + 80) = 0xD000000000000011;
  *(v2 + 88) = 0x8000000252E72570;
  sub_252E379F4();

  v17 = [v1 outerDeviceName];
  if (v17)
  {
    v18 = v17;
    sub_252E36F34();
  }

  v19 = sub_252E37744();

  v56 = v19;
  v20 = sub_252E37D94();
  MEMORY[0x2530AD570](v20);

  *(v2 + 96) = 0xD000000000000011;
  *(v2 + 104) = 0x8000000252E72590;
  strcpy(v55, "deviceType: ");
  BYTE5(v55[1]) = 0;
  HIWORD(v55[1]) = -5120;
  v21 = [v1 deviceType];
  sub_252E37EC4();
  MEMORY[0x2530AE390](v21);
  sub_252E37F14();
  v22 = sub_252E37D94();
  MEMORY[0x2530AD570](v22);

  v23 = v55[1];
  *(v2 + 112) = v55[0];
  *(v2 + 120) = v23;
  v24 = [v1 homeName];
  if (v24)
  {
    v25 = v24;
    v26 = sub_252E36F34();
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0;
  }

  v55[0] = v26;
  v55[1] = v28;
  v29 = sub_252E37744();

  v56 = v29;
  v30 = sub_252E37D94();
  MEMORY[0x2530AD570](v30);

  *(v2 + 128) = 0x203A656D6F68;
  *(v2 + 136) = 0xE600000000000000;
  v31 = [v1 zoneName];
  if (v31)
  {
    v32 = v31;
    v33 = sub_252E36F34();
    v35 = v34;
  }

  else
  {
    v33 = 0;
    v35 = 0;
  }

  v55[0] = v33;
  v55[1] = v35;
  v36 = sub_252E37744();

  v56 = v36;
  v37 = sub_252E37D94();
  MEMORY[0x2530AD570](v37);

  *(v2 + 144) = 0x203A656E6F7ALL;
  *(v2 + 152) = 0xE600000000000000;
  v38 = [v1 groupName];
  if (v38)
  {
    v39 = v38;
    v40 = sub_252E36F34();
    v42 = v41;
  }

  else
  {
    v40 = 0;
    v42 = 0;
  }

  v55[0] = v40;
  v55[1] = v42;
  v43 = sub_252E37744();

  v56 = v43;
  v44 = sub_252E37D94();
  MEMORY[0x2530AD570](v44);

  *(v2 + 160) = 0x203A70756F7267;
  *(v2 + 168) = 0xE700000000000000;
  v45 = [v1 roomName];
  if (v45)
  {
    v46 = v45;
    sub_252E36F34();
  }

  sub_252E37744();

  v47 = sub_252E37D94();
  MEMORY[0x2530AD570](v47);

  *(v2 + 176) = 0x203A6D6F6F72;
  *(v2 + 184) = 0xE600000000000000;
  sub_252E379F4();

  v48 = [v1 isExcludeFilter];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540348, &qword_252E3C348);
  sub_252A22B78();
  sub_252E37744();

  v49 = sub_252E37D94();
  MEMORY[0x2530AD570](v49);

  *(v2 + 192) = 0xD000000000000011;
  *(v2 + 200) = 0x8000000252E725B0;
  sub_252E379F4();

  v50 = [v1 hasAllQuantifier];
  sub_252E37744();

  v51 = sub_252E37D94();
  MEMORY[0x2530AD570](v51);

  *(v2 + 208) = 0xD000000000000012;
  *(v2 + 216) = 0x8000000252E725D0;
  sub_252E379F4();

  v55[0] = [v1 referencesFavorites];
  sub_252E37744();

  v52 = sub_252E37D94();
  MEMORY[0x2530AD570](v52);

  *(v2 + 224) = 0xD000000000000015;
  *(v2 + 232) = 0x8000000252E725F0;
  v53 = sub_252E37314();

  return v53;
}

unint64_t sub_252A22AFC()
{
  result = qword_27F541B40;
  if (!qword_27F541B40)
  {
    v4[1] = v0;
    v4[2] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F540480, &qword_252E3C910);
    v4[0] = MEMORY[0x277D837E0];
    result = swift_getWitnessTable(MEMORY[0x277D83950], v3, v4);
    atomic_store(result, &qword_27F541B40);
  }

  return result;
}

unint64_t sub_252A22B78()
{
  result = qword_27F541B48;
  if (!qword_27F541B48)
  {
    v3 = sub_252956D08();
    result = swift_getWitnessTable(MEMORY[0x277D85378], v3, v0, v1);
    atomic_store(result, &qword_27F541B48);
  }

  return result;
}

uint64_t HomeAttributeModeType.description.getter(uint64_t a1)
{
  result = 1869903201;
  switch(a1)
  {
    case 0:
      result = 0x6E776F6E6B6E75;
      break;
    case 1:
      result = 0x6D7575636176;
      break;
    case 2:
      result = 7368557;
      break;
    case 3:
      result = 0x6E6F697461636176;
      break;
    case 4:
      result = 0x61656C4370656564;
      break;
    case 5:
      return result;
    case 6:
      result = 0x6B63697571;
      break;
    case 7:
      result = 0x7465697571;
      break;
    case 8:
      result = 7889261;
      break;
    case 9:
      result = 1701736302;
      break;
    case 10:
      result = 0x6772656E45776F6CLL;
      break;
    case 11:
      result = 0x746867696ELL;
      break;
    case 12:
      result = 7954788;
      break;
    case 13:
      result = 7235949;
      break;
    case 14:
      result = 0x7465736E75;
      break;
    case 15:
      result = 0x6573696F4E776F6CLL;
      break;
    default:
      result = sub_252E37DF4();
      __break(1u);
      break;
  }

  return result;
}

uint64_t sub_252A22D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a3;
  v4[21] = a4;
  v4[18] = a1;
  v4[19] = a2;
  v4[22] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540370, &qword_252E3C450);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B50, &unk_252E47970);
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = type metadata accessor for CompletionSnippetModel(0);
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B58, &qword_252E41BE8);
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v5 = sub_252E36324();
  v4[35] = v5;
  v4[36] = *(v5 - 8);
  v4[37] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v4[38] = swift_task_alloc();
  v6 = sub_252E36AB4();
  v4[39] = v6;
  v4[40] = *(v6 - 8);
  v4[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252A22FE8, 0, 0);
}

uint64_t sub_252A22FE8()
{
  if (qword_27F53F648 != -1)
  {
    swift_once();
  }

  v1 = qword_27F544FD0;
  v0[42] = qword_27F544FD0;
  v2 = v1;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  if (qword_27F53F558 != -1)
  {
    swift_once();
  }

  v3 = v0[38];
  v4 = v0[36];
  v5 = v0[20];
  v18 = v0[35];
  v19 = v0[21];
  v6 = v0[19];
  v7 = sub_252E36AD4();
  v0[43] = __swift_project_value_buffer(v7, qword_27F544EB0);
  sub_252E379F4();
  v0[9] = 0;
  v0[10] = 0xE000000000000000;
  MEMORY[0x2530AD570](0xD00000000000002ALL, 0x8000000252E729F0);
  v8 = [v6 description];
  v9 = sub_252E36F34();
  v11 = v10;

  MEMORY[0x2530AD570](v9, v11);

  MEMORY[0x2530AD570](0x6E6F707365522020, 0xEC000000203A6573);
  v0[17] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B90, &qword_252E41C08);
  sub_252E37AE4();
  sub_252CC3D90(v0[9], v0[10], 0xD000000000000072, 0x8000000252E72680);

  v13 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v12);
  swift_beginAccess();
  v0[44] = *(v13 + 23);

  type metadata accessor for ServiceCollectionDecorator();
  v0[45] = swift_initStackObject();
  v0[46] = sub_252B7DA9C(v6);
  (*(v4 + 56))(v3, 1, 1, v18);
  v14 = swift_task_alloc();
  v0[47] = v14;
  *v14 = v0;
  v14[1] = sub_252A2330C;
  v15 = v0[38];
  v16 = v0[20];

  return sub_252D2715C(v16, v19, v15);
}

uint64_t sub_252A2330C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 304);
  *(v3 + 384) = a1;
  *(v3 + 392) = v1;

  sub_25293847C(v4, &qword_27F540298, &unk_252E3C270);
  if (v1)
  {
    v5 = sub_252A3320C;
  }

  else
  {
    v5 = sub_252A23450;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252A23450()
{
  v64 = v0;
  v54 = *(v0 + 368);
  v1 = *(v0 + 288);
  v2 = *(v0 + 296);
  v3 = *(v0 + 272);
  v4 = *(v0 + 280);
  v61 = *(v0 + 264);
  v60 = *(v0 + 256);
  v5 = *(v0 + 240);
  v6 = *(v0 + 248);
  v56 = *(v0 + 232);
  v57 = *(v0 + 224);
  v46 = *(v0 + 216);
  v58 = *(v0 + 208);
  v49 = *(v0 + 192);
  v59 = *(v0 + 184);
  v52 = *(v0 + 160);
  v45 = *(v0 + 152);
  *(v0 + 400) = 0;
  sub_252E36374();
  sub_252E37024();

  v7 = sub_252E36304();
  v50 = v8;
  v51 = v7;
  v9 = *(v1 + 8);
  v9(v2, v4);
  *(v0 + 401) = 3;
  sub_252E36374();
  sub_252E37024();

  v10 = sub_252E36304();
  v47 = v11;
  v48 = v10;
  v9(v2, v4);
  v12 = *(v6 + 48);
  type metadata accessor for AccessoriesCollectionDecorator();
  swift_allocObject();
  v13 = v45;
  v14 = sub_252C2436C(v13);
  sub_252A2E2C8(v13, 1, v54, v14, v52, v3);

  sub_252A2F9E8(v54, v14, v3 + v12);

  sub_252938414(v3, v61, &qword_27F541B58, &qword_252E41BE8);
  v55 = *(v6 + 48);
  sub_252938414(v3, v60, &qword_27F541B58, &qword_252E41BE8);
  v53 = *(v6 + 48);
  v15 = v57[5];
  *(v0 + 96) = 0;
  *(v0 + 88) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
  sub_252E330C4();
  v44 = v57[6];
  *(v0 + 402) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5410E8, &qword_252E403C0);
  sub_252E330C4();
  v42 = v57[9];
  v16 = type metadata accessor for IconConfiguration(0);
  (*(*(v16 - 8) + 56))(v46, 1, 1, v16);
  sub_252938414(v46, v58, &qword_27F541B50, &unk_252E47970);
  sub_252E330C4();
  sub_25293847C(v46, &qword_27F541B50, &unk_252E47970);
  v43 = v57[10];
  v17 = sub_252E32CB4();
  (*(*(v17 - 8) + 56))(v49, 1, 1, v17);
  sub_252938414(v49, v59, &qword_27F540370, &qword_252E3C450);
  sub_252E330C4();
  sub_25293847C(v49, &qword_27F540370, &qword_252E3C450);
  *(v0 + 104) = v51;
  *(v0 + 112) = v50;
  sub_252E330C4();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  (*(*(v18 - 8) + 8))(v5 + v15, v18);
  *(v0 + 120) = v48;
  *(v0 + 128) = v47;
  sub_252E330C4();
  sub_252938414(v61, v46, &qword_27F541B50, &unk_252E47970);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B60, &qword_252E41BF0);
  (*(*(v19 - 8) + 8))(v5 + v42, v19);
  sub_252938414(v46, v58, &qword_27F541B50, &unk_252E47970);
  sub_252E330C4();
  sub_25293847C(v46, &qword_27F541B50, &unk_252E47970);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B68, &qword_252E49240);
  (*(*(v20 - 8) + 8))(v5 + v44, v20);
  *(v0 + 403) = 1;
  sub_252E330C4();
  *(v0 + 404) = 1;
  sub_252E330C4();
  sub_252938414(v60 + v53, v49, &qword_27F540370, &qword_252E3C450);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B70, &qword_252E41BF8);
  (*(*(v21 - 8) + 8))(v5 + v43, v21);
  sub_252938414(v49, v59, &qword_27F540370, &qword_252E3C450);
  sub_252E330C4();
  sub_25293847C(v49, &qword_27F540370, &qword_252E3C450);
  *(v0 + 405) = 0;
  sub_252E330C4();
  *(v0 + 406) = 1;
  sub_252E330C4();
  sub_25293847C(v60 + v53, &qword_27F540370, &qword_252E3C450);
  sub_25293847C(v61, &qword_27F541B50, &unk_252E47970);
  sub_25293847C(v60, &qword_27F541B50, &unk_252E47970);
  sub_25293847C(v61 + v55, &qword_27F540370, &qword_252E3C450);
  sub_252A31B70(v5, v56);
  v22 = sub_252E36AC4();
  v23 = sub_252E374C4();
  v24 = os_log_type_enabled(v22, v23);
  v25 = *(v0 + 272);
  v26 = *(v0 + 232);
  if (v24)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v63 = v28;
    *v27 = 136315138;
    v62 = v25;
    v29 = CompletionSnippetModel.description.getter();
    v31 = v30;
    sub_252A31BD4(v26);
    v32 = sub_252BE2CE0(v29, v31, &v63);

    *(v27 + 4) = v32;
    _os_log_impl(&dword_252917000, v22, v23, "Created Completion Failure snippet model : %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    MEMORY[0x2530AED00](v28, -1, -1);
    MEMORY[0x2530AED00](v27, -1, -1);

    v33 = v62;
  }

  else
  {

    sub_252A31BD4(v26);
    v33 = v25;
  }

  sub_25293847C(v33, &qword_27F541B58, &qword_252E41BE8);
  v34 = *(v0 + 328);
  v35 = *(v0 + 336);
  v36 = *(v0 + 312);
  v37 = *(v0 + 320);
  sub_252A3314C(*(v0 + 240), *(v0 + 144), type metadata accessor for CompletionSnippetModel);
  v38 = sub_252E375C4();
  v41 = 2;
  sub_252E36A74(v38, &dword_252917000, v35, "buildSnippetModel", 17, 2, v34, " enableTelemetry=YES ", 21, v41, MEMORY[0x277D84F90]);
  (*(v37 + 8))(v34, v36);

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_252A23D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a3;
  v4[21] = a4;
  v4[18] = a1;
  v4[19] = a2;
  v4[22] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540370, &qword_252E3C450);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B50, &unk_252E47970);
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = type metadata accessor for CompletionSnippetModel(0);
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B58, &qword_252E41BE8);
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v5 = sub_252E36324();
  v4[35] = v5;
  v4[36] = *(v5 - 8);
  v4[37] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v4[38] = swift_task_alloc();
  v6 = sub_252E36AB4();
  v4[39] = v6;
  v4[40] = *(v6 - 8);
  v4[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252A23FF8, 0, 0);
}

uint64_t sub_252A23FF8()
{
  if (qword_27F53F648 != -1)
  {
    swift_once();
  }

  v1 = qword_27F544FD0;
  v0[42] = qword_27F544FD0;
  v2 = v1;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  if (qword_27F53F558 != -1)
  {
    swift_once();
  }

  v3 = v0[38];
  v4 = v0[36];
  v5 = v0[20];
  v18 = v0[35];
  v19 = v0[21];
  v6 = v0[19];
  v7 = sub_252E36AD4();
  v0[43] = __swift_project_value_buffer(v7, qword_27F544EB0);
  sub_252E379F4();
  v0[9] = 0;
  v0[10] = 0xE000000000000000;
  MEMORY[0x2530AD570](0xD00000000000002CLL, 0x8000000252E729C0);
  v8 = [v6 description];
  v9 = sub_252E36F34();
  v11 = v10;

  MEMORY[0x2530AD570](v9, v11);

  MEMORY[0x2530AD570](0x6E6F707365522020, 0xEC000000203A6573);
  v0[17] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B90, &qword_252E41C08);
  sub_252E37AE4();
  sub_252CC3D90(v0[9], v0[10], 0xD000000000000072, 0x8000000252E72680);

  v13 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v12);
  swift_beginAccess();
  v0[44] = *(v13 + 23);

  type metadata accessor for ServiceCollectionDecorator();
  v0[45] = swift_initStackObject();
  v0[46] = sub_252B7DA9C(v6);
  (*(v4 + 56))(v3, 1, 1, v18);
  v14 = swift_task_alloc();
  v0[47] = v14;
  *v14 = v0;
  v14[1] = sub_252A2431C;
  v15 = v0[38];
  v16 = v0[20];

  return sub_252D2715C(v16, v19, v15);
}

uint64_t sub_252A2431C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 304);
  *(v3 + 384) = a1;
  *(v3 + 392) = v1;

  sub_25293847C(v4, &qword_27F540298, &unk_252E3C270);
  if (v1)
  {
    v5 = sub_252A3320C;
  }

  else
  {
    v5 = sub_252A33208;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252A24460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a3;
  v4[21] = a4;
  v4[18] = a1;
  v4[19] = a2;
  v4[22] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540370, &qword_252E3C450);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B50, &unk_252E47970);
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = type metadata accessor for CompletionSnippetModel(0);
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B58, &qword_252E41BE8);
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v5 = sub_252E36324();
  v4[35] = v5;
  v4[36] = *(v5 - 8);
  v4[37] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v4[38] = swift_task_alloc();
  v6 = sub_252E36AB4();
  v4[39] = v6;
  v4[40] = *(v6 - 8);
  v4[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252A246D8, 0, 0);
}

uint64_t sub_252A246D8()
{
  if (qword_27F53F648 != -1)
  {
    swift_once();
  }

  v1 = qword_27F544FD0;
  v0[42] = qword_27F544FD0;
  v2 = v1;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  if (qword_27F53F558 != -1)
  {
    swift_once();
  }

  v3 = v0[38];
  v4 = v0[36];
  v5 = v0[20];
  v18 = v0[35];
  v19 = v0[21];
  v6 = v0[19];
  v7 = sub_252E36AD4();
  v0[43] = __swift_project_value_buffer(v7, qword_27F544EB0);
  sub_252E379F4();
  v0[9] = 0;
  v0[10] = 0xE000000000000000;
  MEMORY[0x2530AD570](0xD000000000000024, 0x8000000252E72840);
  v8 = [v6 description];
  v9 = sub_252E36F34();
  v11 = v10;

  MEMORY[0x2530AD570](v9, v11);

  MEMORY[0x2530AD570](0x6E6F707365522020, 0xEC000000203A6573);
  v0[17] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B90, &qword_252E41C08);
  sub_252E37AE4();
  sub_252CC3D90(v0[9], v0[10], 0xD000000000000072, 0x8000000252E72680);

  v13 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v12);
  swift_beginAccess();
  v0[44] = *(v13 + 23);

  type metadata accessor for ServiceCollectionDecorator();
  v0[45] = swift_initStackObject();
  v0[46] = sub_252B7DA9C(v6);
  (*(v4 + 56))(v3, 1, 1, v18);
  v14 = swift_task_alloc();
  v0[47] = v14;
  *v14 = v0;
  v14[1] = sub_252A249FC;
  v15 = v0[38];
  v16 = v0[20];

  return sub_252D2715C(v16, v19, v15);
}

uint64_t sub_252A249FC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 304);
  *(v3 + 384) = a1;
  *(v3 + 392) = v1;

  sub_25293847C(v4, &qword_27F540298, &unk_252E3C270);
  if (v1)
  {
    v5 = sub_252A2548C;
  }

  else
  {
    v5 = sub_252A24B40;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252A24B40()
{
  v65 = v0;
  v1 = [*(v0 + 152) userTask];
  if (v1)
  {
    v2 = v1;
    v56 = sub_252A32CA4(v1);
  }

  else
  {
    v56 = 1;
  }

  v54 = *(v0 + 368);
  v3 = *(v0 + 288);
  v4 = *(v0 + 296);
  v6 = *(v0 + 272);
  v5 = *(v0 + 280);
  v62 = *(v0 + 264);
  v61 = *(v0 + 256);
  v7 = *(v0 + 240);
  v8 = *(v0 + 248);
  v58 = *(v0 + 232);
  v43 = *(v0 + 224);
  v48 = *(v0 + 216);
  v59 = *(v0 + 208);
  v53 = *(v0 + 192);
  v60 = *(v0 + 184);
  v45 = *(v0 + 152);
  v47 = *(v0 + 160);
  *(v0 + 400) = 0;
  sub_252E36374();
  sub_252E37024();

  v9 = sub_252E36304();
  v51 = v10;
  v52 = v9;
  v11 = *(v3 + 8);
  v11(v4, v5);
  *(v0 + 401) = 1;
  sub_252E36374();
  sub_252E37024();

  v49 = sub_252E36304();
  v50 = v12;
  v11(v4, v5);
  v13 = *(v8 + 48);
  type metadata accessor for AccessoriesCollectionDecorator();
  swift_allocObject();
  v14 = v45;
  v15 = sub_252C2436C(v14);
  sub_252A2E2C8(v14, v56 & 1, v54, v15, v47, v6);

  sub_252A2F9E8(v54, v15, v6 + v13);

  sub_252938414(v6, v62, &qword_27F541B58, &qword_252E41BE8);
  v57 = *(v8 + 48);
  sub_252938414(v6, v61, &qword_27F541B58, &qword_252E41BE8);
  v55 = *(v8 + 48);
  v16 = v43[5];
  *(v0 + 88) = 0;
  *(v0 + 96) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
  sub_252E330C4();
  v46 = v43[6];
  *(v0 + 402) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5410E8, &qword_252E403C0);
  sub_252E330C4();
  v42 = v43[9];
  v17 = type metadata accessor for IconConfiguration(0);
  (*(*(v17 - 8) + 56))(v48, 1, 1, v17);
  sub_252938414(v48, v59, &qword_27F541B50, &unk_252E47970);
  sub_252E330C4();
  sub_25293847C(v48, &qword_27F541B50, &unk_252E47970);
  v44 = v43[10];
  v18 = sub_252E32CB4();
  (*(*(v18 - 8) + 56))(v53, 1, 1, v18);
  sub_252938414(v53, v60, &qword_27F540370, &qword_252E3C450);
  sub_252E330C4();
  sub_25293847C(v53, &qword_27F540370, &qword_252E3C450);
  *(v0 + 104) = v52;
  *(v0 + 112) = v51;
  sub_252E330C4();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  (*(*(v19 - 8) + 8))(v7 + v16, v19);
  *(v0 + 120) = v49;
  *(v0 + 128) = v50;
  sub_252E330C4();
  sub_252938414(v62, v48, &qword_27F541B50, &unk_252E47970);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B60, &qword_252E41BF0);
  (*(*(v20 - 8) + 8))(v7 + v42, v20);
  sub_252938414(v48, v59, &qword_27F541B50, &unk_252E47970);
  sub_252E330C4();
  sub_25293847C(v48, &qword_27F541B50, &unk_252E47970);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B68, &qword_252E49240);
  (*(*(v21 - 8) + 8))(v7 + v46, v21);
  *(v0 + 403) = 0;
  sub_252E330C4();
  *(v0 + 404) = 0;
  sub_252E330C4();
  sub_252938414(v61 + v55, v53, &qword_27F540370, &qword_252E3C450);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B70, &qword_252E41BF8);
  (*(*(v22 - 8) + 8))(v7 + v44, v22);
  sub_252938414(v53, v60, &qword_27F540370, &qword_252E3C450);
  sub_252E330C4();
  sub_25293847C(v53, &qword_27F540370, &qword_252E3C450);
  *(v0 + 405) = 0;
  sub_252E330C4();
  *(v0 + 406) = 1;
  sub_252E330C4();
  sub_25293847C(v61 + v55, &qword_27F540370, &qword_252E3C450);
  sub_25293847C(v62, &qword_27F541B50, &unk_252E47970);
  sub_25293847C(v61, &qword_27F541B50, &unk_252E47970);
  sub_25293847C(v62 + v57, &qword_27F540370, &qword_252E3C450);
  sub_252A31B70(v7, v58);
  v23 = sub_252E36AC4();
  v24 = sub_252E374C4();
  v25 = os_log_type_enabled(v23, v24);
  v26 = *(v0 + 272);
  v27 = *(v0 + 232);
  if (v25)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v64 = v29;
    *v28 = 136315138;
    v63 = v26;
    v30 = CompletionSnippetModel.description.getter();
    v32 = v31;
    sub_252A31BD4(v27);
    v33 = sub_252BE2CE0(v30, v32, &v64);

    *(v28 + 4) = v33;
    _os_log_impl(&dword_252917000, v23, v24, "Created Completion Failure snippet model : %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x2530AED00](v29, -1, -1);
    MEMORY[0x2530AED00](v28, -1, -1);

    v34 = v63;
  }

  else
  {

    sub_252A31BD4(v27);
    v34 = v26;
  }

  sub_25293847C(v34, &qword_27F541B58, &qword_252E41BE8);
  v35 = *(v0 + 328);
  v36 = *(v0 + 336);
  v37 = *(v0 + 312);
  v38 = *(v0 + 320);
  sub_252A3314C(*(v0 + 240), *(v0 + 144), type metadata accessor for CompletionSnippetModel);
  v39 = sub_252E375C4();
  sub_252E36A74(v39, &dword_252917000, v36, "buildSnippetModel", 17, 2, v35, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  (*(v38 + 8))(v35, v37);

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_252A2548C()
{
  v2 = v0[41];
  v1 = v0[42];
  v3 = v0[39];
  v4 = v0[40];

  v5 = sub_252E375C4();
  v8 = 2;
  sub_252E36A74(v5, &dword_252917000, v1, "buildSnippetModel", 17, 2, v2, " enableTelemetry=YES ", 21, v8, MEMORY[0x277D84F90]);
  (*(v4 + 8))(v2, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_252A25610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a3;
  v4[21] = a4;
  v4[18] = a1;
  v4[19] = a2;
  v4[22] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540370, &qword_252E3C450);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B50, &unk_252E47970);
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = type metadata accessor for CompletionSnippetModel(0);
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B58, &qword_252E41BE8);
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v5 = sub_252E36324();
  v4[35] = v5;
  v4[36] = *(v5 - 8);
  v4[37] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v4[38] = swift_task_alloc();
  v6 = sub_252E36AB4();
  v4[39] = v6;
  v4[40] = *(v6 - 8);
  v4[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252A25888, 0, 0);
}

uint64_t sub_252A25888()
{
  if (qword_27F53F648 != -1)
  {
    swift_once();
  }

  v1 = qword_27F544FD0;
  v0[42] = qword_27F544FD0;
  v2 = v1;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  if (qword_27F53F558 != -1)
  {
    swift_once();
  }

  v3 = v0[38];
  v4 = v0[36];
  v5 = v0[20];
  v18 = v0[35];
  v19 = v0[21];
  v6 = v0[19];
  v7 = sub_252E36AD4();
  v0[43] = __swift_project_value_buffer(v7, qword_27F544EB0);
  sub_252E379F4();
  v0[9] = 0;
  v0[10] = 0xE000000000000000;
  MEMORY[0x2530AD570](0xD000000000000024, 0x8000000252E72990);
  v8 = [v6 description];
  v9 = sub_252E36F34();
  v11 = v10;

  MEMORY[0x2530AD570](v9, v11);

  MEMORY[0x2530AD570](0x6E6F707365522020, 0xEC000000203A6573);
  v0[17] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B90, &qword_252E41C08);
  sub_252E37AE4();
  sub_252CC3D90(v0[9], v0[10], 0xD000000000000072, 0x8000000252E72680);

  v13 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v12);
  swift_beginAccess();
  v0[44] = *(v13 + 23);

  type metadata accessor for ServiceCollectionDecorator();
  v0[45] = swift_initStackObject();
  v0[46] = sub_252B7DA9C(v6);
  (*(v4 + 56))(v3, 1, 1, v18);
  v14 = swift_task_alloc();
  v0[47] = v14;
  *v14 = v0;
  v14[1] = sub_252A25BAC;
  v15 = v0[38];
  v16 = v0[20];

  return sub_252D2715C(v16, v19, v15);
}

uint64_t sub_252A25BAC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 304);
  *(v3 + 384) = a1;
  *(v3 + 392) = v1;

  sub_25293847C(v4, &qword_27F540298, &unk_252E3C270);
  if (v1)
  {
    v5 = sub_252A3320C;
  }

  else
  {
    v5 = sub_252A25CF0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252A25CF0()
{
  v67 = v0;
  v1 = [*(v0 + 152) userTask];
  if (v1)
  {
    v2 = v1;
    v3 = sub_252A32CA4(v1);

    v57 = v3 ^ 1;
  }

  else
  {
    v57 = 0;
  }

  v55 = *(v0 + 368);
  v4 = *(v0 + 288);
  v5 = *(v0 + 296);
  v7 = *(v0 + 272);
  v6 = *(v0 + 280);
  v64 = *(v0 + 264);
  v63 = *(v0 + 256);
  v8 = *(v0 + 240);
  v9 = *(v0 + 248);
  v59 = *(v0 + 232);
  v60 = *(v0 + 224);
  v49 = *(v0 + 216);
  v61 = *(v0 + 208);
  v54 = *(v0 + 192);
  v62 = *(v0 + 184);
  v46 = *(v0 + 152);
  v48 = *(v0 + 160);
  *(v0 + 400) = 0;
  sub_252E36374();
  sub_252E37024();

  v10 = sub_252E36304();
  v52 = v11;
  v53 = v10;
  v12 = *(v4 + 8);
  v12(v5, v6);
  *(v0 + 401) = 2;
  sub_252E36374();
  sub_252E37024();

  v13 = sub_252E36304();
  v50 = v14;
  v51 = v13;
  v12(v5, v6);
  v15 = *(v9 + 48);
  type metadata accessor for AccessoriesCollectionDecorator();
  swift_allocObject();
  v16 = v46;
  v17 = sub_252C2436C(v16);
  sub_252A2E2C8(v16, v57 & 1, v55, v17, v48, v7);

  sub_252A2F9E8(v55, v17, v7 + v15);

  sub_252938414(v7, v64, &qword_27F541B58, &qword_252E41BE8);
  v58 = *(v9 + 48);
  sub_252938414(v7, v63, &qword_27F541B58, &qword_252E41BE8);
  v56 = *(v9 + 48);
  v18 = v60[5];
  *(v0 + 88) = 0;
  *(v0 + 96) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
  sub_252E330C4();
  v47 = v60[6];
  *(v0 + 402) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5410E8, &qword_252E403C0);
  sub_252E330C4();
  v19 = v60[9];
  v20 = type metadata accessor for IconConfiguration(0);
  (*(*(v20 - 8) + 56))(v49, 1, 1, v20);
  sub_252938414(v49, v61, &qword_27F541B50, &unk_252E47970);
  sub_252E330C4();
  sub_25293847C(v49, &qword_27F541B50, &unk_252E47970);
  v45 = v60[10];
  v21 = sub_252E32CB4();
  (*(*(v21 - 8) + 56))(v54, 1, 1, v21);
  sub_252938414(v54, v62, &qword_27F540370, &qword_252E3C450);
  sub_252E330C4();
  sub_25293847C(v54, &qword_27F540370, &qword_252E3C450);
  *(v0 + 104) = v53;
  *(v0 + 112) = v52;
  sub_252E330C4();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  (*(*(v22 - 8) + 8))(v8 + v18, v22);
  *(v0 + 120) = v51;
  *(v0 + 128) = v50;
  sub_252E330C4();
  sub_252938414(v64, v49, &qword_27F541B50, &unk_252E47970);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B60, &qword_252E41BF0);
  (*(*(v23 - 8) + 8))(v8 + v19, v23);
  sub_252938414(v49, v61, &qword_27F541B50, &unk_252E47970);
  sub_252E330C4();
  sub_25293847C(v49, &qword_27F541B50, &unk_252E47970);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B68, &qword_252E49240);
  (*(*(v24 - 8) + 8))(v8 + v47, v24);
  *(v0 + 403) = 0;
  sub_252E330C4();
  *(v0 + 404) = 0;
  sub_252E330C4();
  sub_252938414(v63 + v56, v54, &qword_27F540370, &qword_252E3C450);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B70, &qword_252E41BF8);
  (*(*(v25 - 8) + 8))(v8 + v45, v25);
  sub_252938414(v54, v62, &qword_27F540370, &qword_252E3C450);
  sub_252E330C4();
  sub_25293847C(v54, &qword_27F540370, &qword_252E3C450);
  *(v0 + 405) = 0;
  sub_252E330C4();
  *(v0 + 406) = 1;
  sub_252E330C4();
  sub_25293847C(v63 + v56, &qword_27F540370, &qword_252E3C450);
  sub_25293847C(v64, &qword_27F541B50, &unk_252E47970);
  sub_25293847C(v63, &qword_27F541B50, &unk_252E47970);
  sub_25293847C(v64 + v58, &qword_27F540370, &qword_252E3C450);
  sub_252A31B70(v8, v59);
  v26 = sub_252E36AC4();
  v27 = sub_252E374C4();
  v28 = os_log_type_enabled(v26, v27);
  v29 = *(v0 + 272);
  v30 = *(v0 + 232);
  if (v28)
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v66 = v32;
    *v31 = 136315138;
    v65 = v29;
    v33 = CompletionSnippetModel.description.getter();
    v35 = v34;
    sub_252A31BD4(v30);
    v36 = sub_252BE2CE0(v33, v35, &v66);

    *(v31 + 4) = v36;
    _os_log_impl(&dword_252917000, v26, v27, "Created Completion Inprogress snippet model : %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v32);
    MEMORY[0x2530AED00](v32, -1, -1);
    MEMORY[0x2530AED00](v31, -1, -1);

    v37 = v65;
  }

  else
  {

    sub_252A31BD4(v30);
    v37 = v29;
  }

  sub_25293847C(v37, &qword_27F541B58, &qword_252E41BE8);
  v38 = *(v0 + 328);
  v39 = *(v0 + 336);
  v40 = *(v0 + 312);
  v41 = *(v0 + 320);
  sub_252A3314C(*(v0 + 240), *(v0 + 144), type metadata accessor for CompletionSnippetModel);
  v42 = sub_252E375C4();
  sub_252E36A74(v42, &dword_252917000, v39, "buildSnippetModel", 17, 2, v38, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  (*(v41 + 8))(v38, v40);

  v43 = *(v0 + 8);

  return v43();
}