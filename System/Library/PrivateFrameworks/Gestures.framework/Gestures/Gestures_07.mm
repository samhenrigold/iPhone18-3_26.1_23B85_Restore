uint64_t AnyGestureNode.debugLabel.getter()
{
  v1 = v0;
  v2 = *(v0 + 120);
  if (v2)
  {
    v3 = *(v0 + 128);

    v4 = v2(v0);
    v6 = v5;
    sub_18E6826D0(v2, v3);
  }

  else
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v50 = sub_18E72B9C8();
    v52 = v7;
    MEMORY[0x193AD15C0](8250, 0xE200000000000000);
    sub_18E6A9FC4();
    v8 = sub_18E72B098();
    MEMORY[0x193AD15C0](v8);

    MEMORY[0x193AD15C0](30768, 0xE200000000000000);

    v4 = v50;
    v6 = v52;
  }

  v9 = sub_18E6ED4A8(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v11 = *(v9 + 2);
  v10 = *(v9 + 3);
  if (v11 >= v10 >> 1)
  {
    v9 = sub_18E6ED4A8((v10 > 1), v11 + 1, 1, v9);
  }

  *(v9 + 2) = v11 + 1;
  v12 = &v9[16 * v11];
  *(v12 + 4) = v4;
  *(v12 + 5) = v6;
  v13 = *(v1 + 32);
  if (v13)
  {
    v14 = *(v1 + 24);

    MEMORY[0x193AD15C0](v14, v13);
    MEMORY[0x193AD15C0](34, 0xE100000000000000);

    v16 = *(v9 + 2);
    v15 = *(v9 + 3);
    if (v16 >= v15 >> 1)
    {
      v9 = sub_18E6ED4A8((v15 > 1), v16 + 1, 1, v9);
    }

    *(v9 + 2) = v16 + 1;
    v17 = &v9[16 * v16];
    *(v17 + 4) = 34;
    *(v17 + 5) = 0xE100000000000000;
  }

  v18 = sub_18E72B778();
  v20 = v19;
  v21 = MEMORY[0x1E69E7CC0];
  v22 = sub_18E6ED7EC(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v24 = v22[2];
  v23 = v22[3];
  if (v24 >= v23 >> 1)
  {
    v22 = sub_18E6ED7EC((v23 > 1), v24 + 1, 1, v22);
  }

  v22[2] = v24 + 1;
  v25 = &v22[4 * v24];
  v25[4] = 25705;
  v25[5] = 0xE200000000000000;
  v25[6] = v18;
  v25[7] = v20;
  sub_18E6ECCD8();
  v29 = v22[2];
  v28 = v22[3];
  if (v29 >= v28 >> 1)
  {
    v45 = v26;
    v46 = v27;
    v47 = sub_18E6ED7EC((v28 > 1), v29 + 1, 1, v22);
    v27 = v46;
    v22 = v47;
    v26 = v45;
  }

  v22[2] = v29 + 1;
  v30 = &v22[4 * v29];
  v30[4] = 0x6573616870;
  v30[5] = 0xE500000000000000;
  v30[6] = v26;
  v30[7] = v27;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAC8DCF8, &qword_18E72CEB0);
  sub_18E6A9E68();
  v31 = sub_18E72AF58();
  v33 = v32;

  v34 = v22[2];
  if (v34)
  {
    v48 = v31;
    v49 = v33;
    sub_18E6EE308(0, v34, 0);
    v35 = v22 + 7;
    do
    {
      v37 = *(v35 - 1);
      v36 = *v35;
      v51 = *(v35 - 3);
      v53 = *(v35 - 2);
      swift_bridgeObjectRetain_n();

      MEMORY[0x193AD15C0](2112800, 0xE300000000000000);
      MEMORY[0x193AD15C0](v37, v36);

      v39 = *(v21 + 16);
      v38 = *(v21 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_18E6EE308((v38 > 1), v39 + 1, 1);
      }

      *(v21 + 16) = v39 + 1;
      v40 = v21 + 16 * v39;
      *(v40 + 32) = v51;
      *(v40 + 40) = v53;
      v35 += 4;
      --v34;
    }

    while (v34);

    v33 = v49;
    v31 = v48;
  }

  else
  {
  }

  v41 = sub_18E72AF58();
  v43 = v42;

  MEMORY[0x193AD15C0](v31, v33);

  MEMORY[0x193AD15C0](8251, 0xE200000000000000);

  MEMORY[0x193AD15C0](v41, v43);

  MEMORY[0x193AD15C0](62, 0xE100000000000000);

  return 60;
}

uint64_t GestureNode.latestPhase.getter@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for GesturePhase(255, *(*v3 + 368), a1, a2);
  v6 = sub_18E72B438();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - v8;
  v12 = type metadata accessor for RingBuffer(0, v5, v10, v11);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v23 - v14;
  sub_18E67DBC8(&v23 - v14, v16, v17);
  sub_18E67DE08(v12, v9);
  (*(v13 + 8))(v15, v12);
  v18 = *(v5 - 8);
  v19 = *(v18 + 48);
  if (v19(v9, 1, v5) != 1)
  {
    return (*(v18 + 32))(a3, v9, v5);
  }

  GestureNode.phase.getter(v20, v21, a3);
  result = (v19)(v9, 1, v5);
  if (result != 1)
  {
    return (*(v7 + 8))(v9, v6);
  }

  return result;
}

uint64_t sub_18E6EC688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = type metadata accessor for GesturePhase(255, *(*v4 + 368), a3, a4);
  v9 = type metadata accessor for RingBuffer(255, v6, v7, v8);
  v10 = sub_18E72B438();
  v42 = *(v10 - 8);
  v43 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v41 - v11;
  v13 = sub_18E72B438();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v41 - v15;
  v17 = v4[3];
  v18 = v5[4];

  sub_18E6A7CBC(v17, v18, 6775156, 0xE300000000000000);

  GestureNode.phase.getter(v19, v20, v16);
  (*(*(v6 - 8) + 56))(v16, 0, 1, v6);
  sub_18E6C9080(v16, 0x6573616870, 0xE500000000000000, v6);
  (*(v14 + 8))(v16, v13);
  sub_18E67DBC8(v12, v21, v22);
  (*(*(v9 - 8) + 56))(v12, 0, 1, v9);
  sub_18E6C9080(v12, 0x50676E69646E6570, 0xED00007365736168, v9);
  (*(v42 + 8))(v12, v43);

  sub_18E6A65D8(v23, 0x737469617274, 0xE600000000000000);

  GestureNode.options.getter(&v47);
  if (v47)
  {
    GestureNode.options.getter(&v47);
    sub_18E6A7E18(v47, 0, 0x736E6F6974706FLL, 0xE700000000000000);
  }

  v24 = 7104878;
  v25 = v5[19];
  v26 = v5[20];
  v27 = v5[21];

  sub_18E6A7F8C(v25, v26, v27, 0x6E6F6974616C6572, 0xE900000000000073);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v29 = Strong;
    swift_getObjectType();
    swift_unknownObjectRetain();
    v47 = sub_18E72B9C8();
    v48 = v30;
    MEMORY[0x193AD15C0](8250, 0xE200000000000000);
    v45 = 30768;
    v46 = 0xE200000000000000;
    v44 = v29;
    sub_18E6A9FC4();
    v31 = sub_18E72B098();
    MEMORY[0x193AD15C0](v31);

    MEMORY[0x193AD15C0](v45, v46);
    swift_unknownObjectRelease_n();

    v32 = v47;
    v33 = v48;
  }

  else
  {
    v33 = 0xE300000000000000;
    v32 = 7104878;
  }

  sub_18E6A647C(v32, v33, 0x65746167656C6564, 0xE800000000000000);

  v34 = GestureNode.container.getter();
  if (v34)
  {
    v35 = v34;
    swift_getObjectType();
    swift_unknownObjectRetain();
    v47 = sub_18E72B9C8();
    v48 = v36;
    MEMORY[0x193AD15C0](8250, 0xE200000000000000);
    v45 = 30768;
    v46 = 0xE200000000000000;
    v44 = v35;
    sub_18E6A9FC4();
    v37 = sub_18E72B098();
    MEMORY[0x193AD15C0](v37);

    MEMORY[0x193AD15C0](v45, v46);
    swift_unknownObjectRelease_n();

    v24 = v47;
    v38 = v48;
  }

  else
  {
    v38 = 0xE300000000000000;
  }

  sub_18E6A647C(v24, v38, 0x656E6961746E6F63, 0xE900000000000072);

  sub_18E6A82E8(v39, 0x4564656B63617274, 0xED000073746E6576);
}

uint64_t sub_18E6ECC30(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_18E6C8EBC(a1, WitnessTable);
}

uint64_t sub_18E6ECC84(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_18E6C8EC0(a1, WitnessTable);
}

void sub_18E6ECCD8()
{
  v1 = (*(*v0 + 312))(v44);
  v2 = v44[1];
  v3 = v45;
  v4 = v46;
  if (v44[1])
  {
    v41 = v44[2];
    v39 = v46;
    v40 = v45;
    v5 = v44[0];
    v42 = v47;
    (*(*v0 + 296))(v44, v1);
    v6 = v44[0];
    v7 = v44[1];
    v8 = sub_18E6C5B28(v44[0], v44[1]);
    v10 = v9;
    sub_18E69E818(v6, v7);
    v44[0] = v8;
    v44[1] = v10;

    MEMORY[0x193AD15C0](2128928, 0xE300000000000000);

    v12 = v44[0];
    v11 = v44[1];
    v43 = MEMORY[0x1E69E7CC0];
    sub_18E6EE308(0, v2 & ~(v2 >> 63), 0);
    if (v2 < 0)
    {
      goto LABEL_53;
    }

    if (v5)
    {
      v37 = v12;
      v38 = v11;
      v13 = 0;
      v14 = v41;
      while (1)
      {
        if (v2 == v13)
        {
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
          break;
        }

        v15 = v42 + v13;
        if (__OFADD__(v42, v13))
        {
          goto LABEL_49;
        }

        if (v15 == 0x8000000000000000 && v5 == -1)
        {
          goto LABEL_52;
        }

        v16 = v15 % v5;
        if ((v16 & 0x8000000000000000) != 0)
        {
          goto LABEL_50;
        }

        if (v16 >= *(v14 + 16))
        {
          goto LABEL_51;
        }

        v17 = v41 + 32 + 16 * v16;
        v18 = *v17;
        v19 = *(v17 + 8);
        if (v19 <= 1)
        {
          if (v19)
          {
            sub_18E6AA03C(v18, 1);
            v23 = 0xE600000000000000;
            v24 = 0x657669746361;
          }

          else
          {
            strcpy(v44, "blocked(by: ");
            BYTE5(v44[1]) = 0;
            HIWORD(v44[1]) = -5120;
            sub_18E6AA03C(v18, 0);
            sub_18E6AA03C(v18, 0);
            v22 = sub_18E72B778();
            MEMORY[0x193AD15C0](v22);

            MEMORY[0x193AD15C0](41, 0xE100000000000000);
            v14 = v41;
            sub_18E69E818(v18, 0);
            v24 = v44[0];
            v23 = v44[1];
          }
        }

        else if (v19 == 2)
        {
          sub_18E6AA03C(v18, 2);
          v23 = 0xE500000000000000;
          v24 = 0x6465646E65;
        }

        else
        {
          if (v19 == 3)
          {
            v20 = v18 >> 62;
            if ((v18 >> 62) > 1)
            {
              if (v20 == 2)
              {
                v44[0] = 0;
                v44[1] = 0xE000000000000000;
                swift_getErrorValue();
                sub_18E6AA03C(v18, 3);
                sub_18E6AA03C(v18, 3);
                sub_18E72B798();
                goto LABEL_27;
              }

              if (v18 <= 0xC000000000000001)
              {
                if (v18 == 0xC000000000000000)
                {
                  sub_18E6AA03C(0xC000000000000000, 3);
                  sub_18E6AA03C(0xC000000000000000, 3);
                  v27 = 0xE800000000000000;
                  v26 = 0x64656C6261736964;
                }

                else
                {
                  sub_18E6AA03C(0xC000000000000001, 3);
                  sub_18E6AA03C(0xC000000000000001, 3);
                  v26 = 0xD000000000000014;
                  v27 = 0x800000018E73A870;
                }
              }

              else if (v18 == 0xC000000000000002)
              {
                sub_18E6AA03C(0xC000000000000002, 3);
                sub_18E6AA03C(0xC000000000000002, 3);
                v26 = 0xD000000000000010;
                v27 = 0x800000018E73A850;
              }

              else if (v18 == 0xC000000000000003)
              {
                sub_18E6AA03C(0xC000000000000003, 3);
                sub_18E6AA03C(0xC000000000000003, 3);
                v27 = 0xE700000000000000;
                v26 = 0x646574726F6261;
              }

              else
              {
                sub_18E6AA03C(0xC000000000000004, 3);
                sub_18E6AA03C(0xC000000000000004, 3);
                v26 = 0xD000000000000012;
                v27 = 0x800000018E73A830;
              }
            }

            else
            {
              if (v20)
              {
                v44[0] = 0;
                v44[1] = 0xE000000000000000;
                sub_18E6AA03C(v18, 3);
                sub_18E6AA03C(v18, 3);
                sub_18E72B5C8();

                v44[0] = 0xD000000000000016;
                v44[1] = 0x800000018E73A890;
                v25 = sub_18E72B778();
                MEMORY[0x193AD15C0](v25);

                MEMORY[0x193AD15C0](41, 0xE100000000000000);
              }

              else
              {
                strcpy(v44, "excluded(by: ");
                HIWORD(v44[1]) = -4864;
                sub_18E6AA03C(v18, 3);
                sub_18E6AA03C(v18, 3);
                v21 = sub_18E72B778();
                MEMORY[0x193AD15C0](v21);
              }

LABEL_27:
              v26 = v44[0];
              v27 = v44[1];
            }

            v28 = HIBYTE(v27) & 0xF;
            if ((v27 & 0x2000000000000000) == 0)
            {
              v28 = v26 & 0xFFFFFFFFFFFFLL;
            }

            if (v28)
            {
              strcpy(v44, "failed(");
              v44[1] = 0xE700000000000000;
              MEMORY[0x193AD15C0]();

              MEMORY[0x193AD15C0](41, 0xE100000000000000);
              sub_18E69E818(v18, 3);
              sub_18E69E818(v18, 3);
              v24 = v44[0];
              v23 = v44[1];
            }

            else
            {

              sub_18E69E818(v18, 3);
              sub_18E69E818(v18, 3);
              v23 = 0xE600000000000000;
              v24 = 0x64656C696166;
            }

            v14 = v41;
            goto LABEL_34;
          }

          if (v18)
          {
            sub_18E6AA03C(1uLL, 4);
            v23 = 0xE800000000000000;
            v24 = 0x656C626973736F70;
          }

          else
          {
            sub_18E6AA03C(0, 4);
            v23 = 0xE400000000000000;
            v24 = 1701602409;
          }
        }

LABEL_34:
        v30 = *(v43 + 16);
        v29 = *(v43 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_18E6EE308((v29 > 1), v30 + 1, 1);
          v14 = v41;
        }

        ++v13;
        *(v43 + 16) = v30 + 1;
        v31 = v43 + 16 * v30;
        *(v31 + 32) = v24;
        *(v31 + 40) = v23;
        if (v2 == v13)
        {
          v44[0] = v43;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAC8DCF8, &qword_18E72CEB0);
          sub_18E6A9E68();
          v32 = sub_18E72AF58();
          v34 = v33;

          v44[0] = v37;
          v44[1] = v38;

          MEMORY[0x193AD15C0](v32, v34);

          sub_18E69E818(v40, v39);
          return;
        }
      }
    }

    __break(1u);
  }

  else
  {
    (*(*v0 + 296))(v44, v1);
    v35 = v44[0];
    v36 = v44[1];
    sub_18E6C5B28(v44[0], v44[1]);
    sub_18E69E818(v35, v36);

    sub_18E69E818(v3, v4);
  }
}

char *sub_18E6ED4A8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8EE18, &unk_18E732000);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_18E6ED5B4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8EDA8, &qword_18E72F5D8);
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

void *sub_18E6ED6B8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8EDD0, &qword_18E72F5F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAC8DD60, &unk_18E7318B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_18E6ED7EC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8EE08, &qword_18E72F620);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8EE10, &qword_18E72F628);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_18E6ED920(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8ED90, &unk_18E731FC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_18E6EDA4C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

char *sub_18E6EDB48(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8EDC8, &qword_18E731FD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_18E6EDC4C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8EDF8, &qword_18E72F610);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_18E6EDD58(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8ED98, &qword_18E72F5C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_18E6EDE80(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8EDA0, &qword_18E72F5D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

char *sub_18E6EDF74(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8EE00, &qword_18E72F618);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_18E6EE080(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8EDF0, &qword_18E731FF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_18E6EE18C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8EDE8, &qword_18E72F608);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

void *sub_18E6EE2A8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_18E725BB0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_18E6EE2C8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_18E725BD4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_18E6EE2E8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_18E725CD8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_18E6EE308(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_18E725E30(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_18E6EE328(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

char *sub_18E6EE388(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_18E726174(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_18E6EE3A8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_18E726280(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_18E6EE3C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8EDC0, &unk_18E731720);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18E6EE430(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_18E6F0738(v3);
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
    v7 = v3 + 4 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 36), 4 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_18E6EE4B8(uint64_t a1)
{
  v1 = a1;
  v30 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_18E72B518();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v35 = MEMORY[0x1E69E7CC0];
  sub_18E6EE3A8(0, v2 & ~(v2 >> 63), 0);
  v3 = v35;
  if (v30)
  {
    result = sub_18E72B4C8();
  }

  else
  {
    result = sub_18E72B498();
    v5 = *(v1 + 36);
  }

  v32 = result;
  v33 = v5;
  v34 = v30 != 0;
  if ((v2 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v28 = v1 + 56;
    v27 = v1 + 64;
    v29 = v2;
    while (v6 < v2)
    {
      if (__OFADD__(v6++, 1))
      {
        goto LABEL_36;
      }

      v10 = v32;
      v9 = v33;
      v11 = v34;
      v12 = v1;
      v13 = *(sub_18E6F1E10(v32, v33, v34, v1) + 16);

      v35 = v3;
      v15 = *(v3 + 16);
      v14 = *(v3 + 24);
      if (v15 >= v14 >> 1)
      {
        result = sub_18E6EE3A8((v14 > 1), v15 + 1, 1);
        v3 = v35;
      }

      *(v3 + 16) = v15 + 1;
      *(v3 + 4 * v15 + 32) = v13;
      if (v30)
      {
        if (!v11)
        {
          goto LABEL_41;
        }

        v1 = v12;
        v16 = v3;
        if (sub_18E72B4E8())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        v2 = v29;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8EE20, &unk_18E72F6E0);
        v7 = sub_18E72B2C8();
        sub_18E72B568();
        result = v7(v31, 0);
      }

      else
      {
        if (v11)
        {
          goto LABEL_42;
        }

        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        v16 = v3;
        v1 = v12;
        v17 = 1 << *(v12 + 32);
        if (v10 >= v17)
        {
          goto LABEL_37;
        }

        v18 = v10 >> 6;
        v19 = *(v28 + 8 * (v10 >> 6));
        if (((v19 >> v10) & 1) == 0)
        {
          goto LABEL_38;
        }

        if (*(v12 + 36) != v9)
        {
          goto LABEL_39;
        }

        v20 = v19 & (-2 << (v10 & 0x3F));
        if (v20)
        {
          v17 = __clz(__rbit64(v20)) | v10 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v21 = v18 << 6;
          v22 = v18 + 1;
          v23 = (v27 + 8 * v18);
          while (v22 < (v17 + 63) >> 6)
          {
            v25 = *v23++;
            v24 = v25;
            v21 += 64;
            ++v22;
            if (v25)
            {
              result = sub_18E6C87A0(v10, v9, 0);
              v17 = __clz(__rbit64(v24)) + v21;
              goto LABEL_32;
            }
          }

          result = sub_18E6C87A0(v10, v9, 0);
        }

LABEL_32:
        v26 = *(v12 + 36);
        v32 = v17;
        v33 = v26;
        v34 = 0;
        v2 = v29;
      }

      v3 = v16;
      if (v6 == v2)
      {
        sub_18E6C87A0(v32, v33, v34);
        return v3;
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
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

unint64_t GestureNodeCoordinator.enqueueUpdates(nodes:reason:closure:)(unint64_t result, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v5 = v4;
  v7 = result;
  v27 = MEMORY[0x1E69E7CC0];
  if (result >> 62)
  {
LABEL_17:
    result = sub_18E72B518();
    v8 = result;
    if (result)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
LABEL_3:
      v25 = a4;
      v9 = 0;
      a4 = (v7 & 0xC000000000000001);
      while (1)
      {
        if (a4)
        {
          result = MEMORY[0x193AD1B60](v9, v7, a3);
          v10 = result;
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
LABEL_14:
            __break(1u);
LABEL_15:
            v13 = v27;
            a4 = v25;
            goto LABEL_19;
          }
        }

        else
        {
          if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_17;
          }

          v10 = *(v7 + 8 * v9 + 32);

          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_14;
          }
        }

        v12 = (*(*v10 + 168))(&v26);
        if ((v26 & 1) != 0 || !(*(*v10 + 192))(v12))
        {
        }

        else
        {
          swift_unknownObjectRelease();
          sub_18E72B628();
          sub_18E72B668();
          sub_18E72B678();
          result = sub_18E72B638();
        }

        ++v9;
        if (v11 == v8)
        {
          goto LABEL_15;
        }
      }
    }
  }

  v13 = MEMORY[0x1E69E7CC0];
LABEL_19:
  v14 = v13 < 0 || (v13 & 0x4000000000000000) != 0;
  if (v14)
  {
    result = sub_18E72B518();
    v15 = result;
    if (!result)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v15 = *(v13 + 16);
    if (!v15)
    {
      goto LABEL_35;
    }
  }

  if (v15 < 1)
  {
    __break(1u);
    goto LABEL_52;
  }

  for (i = 0; i != v15; ++i)
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x193AD1B60](i, v13);
    }

    else
    {
      v17 = *(v13 + 8 * i + 32);
    }

    Strong = swift_unknownObjectUnownedLoadStrong();
    if (!Strong || (v19 = Strong, swift_unknownObjectRelease(), v19 != v5))
    {
      sub_18E69F494(v17);
    }
  }

LABEL_35:
  if (v14)
  {
    result = sub_18E72B518();
    v20 = result;
    if (!result)
    {
      goto LABEL_48;
    }

    goto LABEL_39;
  }

  v20 = *(v13 + 16);
  if (v20)
  {
LABEL_39:
    if (v20 >= 1)
    {
      for (j = 0; j != v20; ++j)
      {
        if ((v13 & 0xC000000000000001) != 0)
        {
          v22 = MEMORY[0x193AD1B60](j, v13);
        }

        else
        {
          v22 = *(v13 + 8 * j + 32);
        }

        v23 = swift_unknownObjectUnownedLoadStrong();
        if (v23)
        {
          v24 = v23;
          swift_unknownObjectRelease();
          if (v24 == v5)
          {
            a4(v22);
          }
        }
      }

      goto LABEL_48;
    }

LABEL_52:
    __break(1u);
    return result;
  }

LABEL_48:
}

uint64_t sub_18E6EEB00@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(*a1 + 16);
  v4 = *(*a1 + 24);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_18E6F2368;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_18E68CB70(v3, v4);
}

uint64_t sub_18E6EEB84(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_18E6F2364;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  v8 = *(*a2 + 16);
  v9 = *(v7 + 24);
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  sub_18E68CB70(v3, v4);

  return sub_18E6826D0(v8, v9);
}

uint64_t GestureNodeCoordinator.willUpdate.getter()
{
  v1 = *(v0 + 16);
  sub_18E68CB70(v1, *(v0 + 24));
  return v1;
}

uint64_t GestureNodeCoordinator.willUpdate.setter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_18E6826D0(v3, v4);
}

uint64_t sub_18E6EEC80@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_18E6F2368;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_18E68CB70(v3, v4);
}

uint64_t sub_18E6EED04(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_18E6F2364;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  v8 = *(*a2 + 32);
  v9 = *(v7 + 40);
  *(v7 + 32) = v6;
  *(v7 + 40) = v5;
  sub_18E68CB70(v3, v4);

  return sub_18E6826D0(v8, v9);
}

uint64_t GestureNodeCoordinator.willProcessUpdateQueue.getter()
{
  v1 = *(v0 + 32);
  sub_18E68CB70(v1, *(v0 + 40));
  return v1;
}

uint64_t GestureNodeCoordinator.willProcessUpdateQueue.setter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return sub_18E6826D0(v3, v4);
}

uint64_t sub_18E6EEE00@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_18E6909AC;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_18E68CB70(v3, v4);
}

uint64_t sub_18E6EEE84(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_18E6F22C0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  v8 = *(*a2 + 48);
  v9 = *(v7 + 56);
  *(v7 + 48) = v6;
  *(v7 + 56) = v5;
  sub_18E68CB70(v3, v4);

  return sub_18E6826D0(v8, v9);
}

uint64_t GestureNodeCoordinator.didUpdate.getter()
{
  v1 = *(v0 + 48);
  sub_18E68CB70(v1, *(v0 + 56));
  return v1;
}

uint64_t GestureNodeCoordinator.didUpdate.setter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 48);
  v4 = *(v2 + 56);
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return sub_18E6826D0(v3, v4);
}

uint64_t GestureNodeCoordinator.__allocating_init(timeSource:updateDriver:shouldTrackTransitiveDependencies:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v7 = a1[3];
  v8 = a1[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  v10 = sub_18E6F2190(v9, a2, v4, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v10;
}

uint64_t GestureNodeCoordinator.init(timeSource:updateDriver:shouldTrackTransitiveDependencies:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v7 = a1[3];
  v8 = a1[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);
  v13 = sub_18E6F1FD8(v11, a2, v4, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v13;
}

void *GestureNodeCoordinator.deinit()
{
  v1 = v0;
  v2 = *(v0 + 64);
  if ((v2 & 0xC000000000000001) != 0)
  {

    sub_18E72B4D8();
    type metadata accessor for AnyGestureNode();
    sub_18E6A2ECC();
    result = sub_18E72B2D8();
    v2 = v21;
    v4 = v22;
    v5 = v23;
    v6 = v24;
    v7 = v25;
  }

  else
  {
    v8 = -1 << *(v2 + 32);
    v4 = v2 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v2 + 56);

    v6 = 0;
  }

  if (v2 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v11 = v6;
    v12 = v7;
    v13 = v6;
    if (!v7)
    {
      break;
    }

LABEL_12:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v2 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));

    if (!v15)
    {
LABEL_18:
      sub_18E687EE8(v2);
      if ((*(v1 + 204) & 1) == 0)
      {
        v16 = *(v1 + 200);
        v17 = *(v1 + 184);
        v18 = *(v1 + 192);
        __swift_project_boxed_opaque_existential_1((v1 + 160), v17);
        (*(v18 + 16))(v16, v17, v18);
        *(v1 + 200) = 0;
        *(v1 + 204) = 1;
      }

      sub_18E6826D0(*(v1 + 16), *(v1 + 24));
      sub_18E6826D0(*(v1 + 32), *(v1 + 40));
      sub_18E6826D0(*(v1 + 48), *(v1 + 56));

      __swift_destroy_boxed_opaque_existential_0((v1 + 72));

      __swift_destroy_boxed_opaque_existential_0((v1 + 160));

      return v1;
    }

    while (1)
    {
      v15[18] = 0;
      swift_unknownObjectUnownedAssign();
      v20 = 0;
      memset(v19, 0, sizeof(v19));
      (*(*v15 + 224))(v19);

      v6 = v13;
      v7 = v14;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_18E72B548())
      {
        type metadata accessor for AnyGestureNode();
        swift_dynamicCast();
        v15 = *&v19[0];
        v13 = v6;
        v14 = v7;
        if (*&v19[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((v5 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v12 = *(v4 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t GestureNodeCoordinator.__deallocating_deinit()
{
  GestureNodeCoordinator.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 248, 7);
}

uint64_t sub_18E6EF3F8(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 304))(&v13);
  v5 = v14;
  if (v14 == 255)
  {
    (*(*a1 + 296))(&v15, v4);
    v5 = v16;
    v6 = v15;
    if (!v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v6 = v13;
    if (!v14)
    {
      goto LABEL_15;
    }
  }

  if (v5 == 4)
  {
    v7 = v6;
    sub_18E69E818(v6, 4);
    if (v7 <= 1)
    {
      return 0;
    }
  }

  else
  {
    sub_18E69E818(v6, v5);
  }

  v8 = (*(*a2 + 304))(&v11);
  v5 = v12;
  if (v12 != 255)
  {
    v6 = v11;
    if (v12)
    {
      goto LABEL_11;
    }

LABEL_15:
    sub_18E69E818(v6, v5);
    return 0;
  }

  (*(*a2 + 296))(&v13, v8);
  v5 = v14;
  v6 = v13;
  if (!v14)
  {
    goto LABEL_15;
  }

LABEL_11:
  if (v5 == 4)
  {
    v9 = v6;
    sub_18E69E818(v6, 4);
    if (v9 <= 1)
    {
      return 0;
    }
  }

  else
  {
    sub_18E69E818(v6, v5);
  }

  return _s8Gestures14AnyGestureNodeC1loiySbAC_ACtFZ_0(a1, a2);
}

uint64_t sub_18E6EF5C4(unsigned int *a1)
{

  sub_18E6A2C3C(a1, v1 + 26, v1);
}

void sub_18E6EF610(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_18E72AE18();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v78 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 != 2)
  {
    return;
  }

  v11 = a1[2];
  v76 = a1[1];
  v77 = v11;
  v12 = *a3;
  v13 = *(a3 + 8);
  v14 = *(a3 + 16);
  v15 = &v84;
  sub_18E68737C(v8, v9, &v84);
  v18 = v85;
  if (v85 == 255)
  {
    v15 = &v86;
    sub_18E687170(v16, v17, &v86);
    v18 = v87;
  }

  v19 = *v15;
  v20 = v18 & 0xFE;
  sub_18E69E818(v19, v18);
  if (v20 == 2)
  {
    return;
  }

  v74 = v7;
  v75 = v6;
  v21 = *(v81 + 64);
  v22 = swift_allocObject();
  *(v22 + 16) = v12;
  *(v22 + 24) = v13;
  *(v22 + 32) = v14;
  *(v22 + 40) = a2;

  sub_18E67EEC4(v12, v13, v14);

  sub_18E6F0618(v21, sub_18E6F2360, v22, &v86);
  v23 = v86;
  v24 = v87;
  v25 = v89;
  v26 = v90;
  v79 = v91;
  v80 = v92;
  v73 = v88;
  v27 = (v88 + 64) >> 6;
  if ((v86 & 0x8000000000000000) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  v28 = sub_18E72B548();
  if (v28)
  {
    v82 = v28;
    type metadata accessor for AnyGestureNode();
    swift_dynamicCast();
    v29 = v83;
    v30 = v25;
    v31 = v26;
    if (v83)
    {
      while (1)
      {
        v84 = v29;
        if ((v79(&v84) & 1) == 0 || v29 == a2)
        {
          goto LABEL_26;
        }

        v34 = *(v81 + 112);
        (*(*v29 + 168))(&v84);
        if ((v84 & 4) != 0)
        {
          goto LABEL_23;
        }

        GestureNode.options.getter(&v84);
        if ((v84 & 4) != 0)
        {
          goto LABEL_23;
        }

        v72 = v34;
        v35 = (*(*v29 + 192))();
        if (!v35)
        {
          goto LABEL_26;
        }

        v37 = v35;
        v71 = v36;
        v38 = GestureNode.container.getter();
        if (v38)
        {
          break;
        }

        swift_unknownObjectRelease();
LABEL_27:
        v25 = v30;
        v26 = v31;
        if (v23 < 0)
        {
          goto LABEL_6;
        }

LABEL_9:
        v32 = v25;
        v33 = v26;
        v30 = v25;
        if (!v26)
        {
          while (1)
          {
            v30 = (v32 + 1);
            if (__OFADD__(v32, 1))
            {
              break;
            }

            if (v30 >= v27)
            {
              goto LABEL_45;
            }

            v33 = *(v24 + 8 * v30);
            ++v32;
            if (v33)
            {
              goto LABEL_13;
            }
          }

          __break(1u);
LABEL_56:
          swift_once();
LABEL_47:
          v56 = qword_1EAC8E570;
          goto LABEL_51;
        }

LABEL_13:
        v31 = (v33 - 1) & v33;
        v29 = *(*(v23 + 48) + ((v30 << 9) | (8 * __clz(__rbit64(v33)))));

        if (!v29)
        {
          goto LABEL_45;
        }
      }

      v40 = v38;
      v41 = v39;
      ObjectType = swift_getObjectType();
      if (v37 == v40 || (v69 = ObjectType, v43 = swift_getObjectType(), v44 = *(v71 + 16), v70 = v41, (v44(v40, v41, a2, v43) & 1) != 0))
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v34 = v72;
      }

      else
      {
        v55 = (*(v70 + 16))(v37, v71, v29, v69);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v34 = v72;
        if ((v55 & 1) == 0)
        {
          goto LABEL_26;
        }
      }

LABEL_23:
      LOBYTE(v84) = 2;
      v45 = v76;
      BYTE1(v84) = v76;
      BYTE2(v84) = v77;
      sub_18E69A038(&v84, v29, &v83);
      if (v83 == 2)
      {
        goto LABEL_26;
      }

      if (v83)
      {
        goto LABEL_26;
      }

      LOBYTE(v84) = 2;
      BYTE1(v84) = v45;
      BYTE2(v84) = v77;
      if (sub_18E69C160(&v84, v29))
      {
        goto LABEL_26;
      }

      v46 = v45 == 0;
      if (v45)
      {
        v47 = v29;
      }

      else
      {
        v47 = a2;
      }

      v48 = v34;
      if (v46)
      {
        v49 = v29;
      }

      else
      {
        v49 = a2;
      }

      v50 = *(v48 + 16);
      v72 = v48 + 16;
      v70 = *(v48 + 24);
      v71 = v50;
      v51 = *(v50 + 16);

      if (v51)
      {

        v69 = v47;
        v52 = sub_18E6879CC(v47);
        if (v53)
        {
          v54 = *(*(v71 + 56) + 8 * v52);

          v68 = sub_18E68CE2C(v49, v54);

          v47 = v69;
          if (v68)
          {
            goto LABEL_42;
          }
        }

        else
        {

          v47 = v69;
        }
      }

      sub_18E69C730(v49, v47);
LABEL_42:

LABEL_26:

      goto LABEL_27;
    }
  }

LABEL_45:
  sub_18E687EE8(v23);

  if (sub_18E680FFC())
  {
    v27 = v74;
    a2 = v75;
    v25 = v78;
    v24 = v81;
    if (qword_1EAC8D8F8 != -1)
    {
      goto LABEL_56;
    }

    goto LABEL_47;
  }

  v27 = v74;
  a2 = v75;
  v25 = v78;
  v24 = v81;
  if (qword_1ED6F7F98 != -1)
  {
    swift_once();
  }

  v56 = qword_1ED6F7FA0;
LABEL_51:
  v57 = __swift_project_value_buffer(a2, v56);
  (*(v27 + 16))(v25, v57, a2);

  v58 = sub_18E72ADF8();
  v59 = sub_18E72B3E8();

  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v84 = v61;
    *v60 = 136315138;
    v62 = *(*(v24 + 112) + 16);

    v63 = sub_18E6BF464(0xD000000000000014, 0x800000018E73A1E0, v62);
    v65 = v64;

    v66 = sub_18E6C5E8C(v63, v65, &v84);

    *(v60 + 4) = v66;
    _os_log_impl(&dword_18E67C000, v58, v59, "Updated failure deps:\n%s", v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v61);
    MEMORY[0x193AD25C0](v61, -1, -1);
    MEMORY[0x193AD25C0](v60, -1, -1);

    (*(v27 + 8))(v78, v75);
  }

  else
  {

    (*(v27 + 8))(v25, a2);
  }
}

uint64_t sub_18E6EFDD8(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_18E72AE18();
  v9 = *(v8 - 8);
  result = MEMORY[0x1EEE9AC00](v8);
  if (*a1 != 2)
  {
    return result;
  }

  v56 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = result;
  v58 = a1[1];
  v13 = *a3;
  v12 = *(a3 + 8);
  v14 = *(v4 + 64);
  v15 = *(a3 + 16);
  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  *(v16 + 24) = v12;
  *(v16 + 32) = v15;
  *(v16 + 40) = a2;

  sub_18E67EEC4(v13, v12, v15);
  v60 = a2;

  sub_18E6F0618(v14, sub_18E6AA018, v16, v68);
  v17 = v68[0];
  v18 = v68[1];
  v19 = v70;
  v20 = v71;
  v61 = v72;
  v62 = v73;
  v54 = v69;
  v21 = (v69 + 64) >> 6;
  v53 = xmmword_18E72D720;
  v59 = v4;
  v57 = v68[0];
  while (1)
  {
    if ((v17 & 0x8000000000000000) == 0)
    {
      v22 = v19;
      v23 = v20;
      v24 = v19;
      if (!v20)
      {
        while (1)
        {
          v24 = (v22 + 1);
          if (__OFADD__(v22, 1))
          {
            break;
          }

          if (v24 >= v21)
          {
            goto LABEL_27;
          }

          v23 = *(v18 + 8 * v24);
          ++v22;
          if (v23)
          {
            goto LABEL_8;
          }
        }

        __break(1u);
        goto LABEL_40;
      }

LABEL_8:
      v25 = (v23 - 1) & v23;
      v26 = *(*(v17 + 48) + ((v24 << 9) | (8 * __clz(__rbit64(v23)))));

      if (!v26)
      {
        break;
      }

      goto LABEL_12;
    }

    v27 = sub_18E72B548();
    if (!v27)
    {
      break;
    }

    v64 = v27;
    type metadata accessor for AnyGestureNode();
    swift_dynamicCast();
    v26 = v65;
    v24 = v19;
    v25 = v20;
    if (!v65)
    {
      break;
    }

LABEL_12:
    v63 = v25;
    v66 = v26;
    if ((v61(&v66) & 1) == 0 || v26 == v60)
    {
LABEL_22:

      v19 = v24;
      v20 = v63;
    }

    else
    {
      if (v58)
      {
        v28 = v26;
      }

      else
      {
        v28 = v60;
      }

      if (v58)
      {
        v29 = v60;
      }

      else
      {
        v29 = v26;
      }

      if (sub_18E690224(v30, v28))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAC8EE28, &unk_18E72F6F0);
        inited = swift_initStackObject();
        *(inited + 16) = v53;
        v52 = v9;
        *(inited + 32) = v28;
        *(inited + 40) = v29;

        sub_18E687F10(inited);

        swift_setDeallocating();
        v9 = v52;
        v32 = sub_18E6F22C8(inited + 32);
      }

      else
      {
      }

      (*(*v26 + 296))(&v66, v32);
      v33 = v67 & 0xFE;
      sub_18E69E818(v66, v67);
      v17 = v57;
      if (v33 == 2)
      {
        v4 = v59;
        sub_18E6880B0(&v66, v26);
        goto LABEL_22;
      }

      v19 = v24;
      v20 = v63;
      v4 = v59;
    }
  }

LABEL_27:
  sub_18E687EE8(v17);

  v34 = v60;
  sub_18E687170(v35, v36, &v66);
  v37 = v67 & 0xFE;
  sub_18E69E818(v66, v67);
  if (v37 == 2)
  {

    sub_18E6880B0(&v66, v34);
  }

  v38 = sub_18E680FFC();
  v21 = v55;
  v19 = v56;
  if (v38)
  {
    if (qword_1EAC8D8F8 == -1)
    {
LABEL_31:
      v39 = qword_1EAC8E570;
      goto LABEL_35;
    }

LABEL_40:
    swift_once();
    goto LABEL_31;
  }

  if (qword_1ED6F7F98 != -1)
  {
    swift_once();
  }

  v39 = qword_1ED6F7FA0;
LABEL_35:
  v40 = __swift_project_value_buffer(v21, v39);
  (*(v9 + 16))(v19, v40, v21);

  v41 = sub_18E72ADF8();
  v42 = sub_18E72B3E8();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = v4;
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v66 = v45;
    *v44 = 136315138;
    v46 = *(*(v43 + 112) + 16);

    v47 = sub_18E6BF464(0xD000000000000014, 0x800000018E73A1E0, v46);
    v49 = v48;

    v50 = sub_18E6C5E8C(v47, v49, &v66);

    *(v44 + 4) = v50;
    _os_log_impl(&dword_18E67C000, v41, v42, "Updated failure deps:\n%s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v45);
    MEMORY[0x193AD25C0](v45, -1, -1);
    MEMORY[0x193AD25C0](v44, -1, -1);

    return (*(v9 + 8))(v56, v21);
  }

  else
  {

    return (*(v9 + 8))(v19, v21);
  }
}

uint64_t sub_18E6F045C(uint64_t a1, uint64_t a2, char a3, __n128 a4)
{
  if (a3)
  {
    if (a3 == 1)
    {

      return a1;
    }

    else
    {
      return 0x656C756465686373;
    }
  }

  else
  {
    sub_18E72B5C8();

    v6 = sub_18E72B778();
    MEMORY[0x193AD15C0](v6);

    MEMORY[0x193AD15C0](41, 0xE100000000000000);
    return 0xD000000000000015;
  }
}

uint64_t sub_18E6F0548(uint64_t a1)
{
  v1 = *(sub_18E687600(a1) + 2);
  if (v1)
  {
    v4 = MEMORY[0x1E69E7CC0];
    sub_18E72B658();
    v2 = 32;
    do
    {

      sub_18E72B628();
      sub_18E72B668();
      sub_18E72B678();
      sub_18E72B638();
      v2 += 16;
      --v1;
    }

    while (v1);

    return v4;
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t sub_18E6F0618@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if ((result & 0xC000000000000001) != 0)
  {
    sub_18E72B4D8();
    type metadata accessor for AnyGestureNode();
    sub_18E6A2ECC();
    sub_18E72B2D8();
    result = v14;
    v7 = v15;
    v9 = v16;
    v8 = v17;
    v10 = v18;
  }

  else
  {
    v8 = 0;
    v11 = -1;
    v12 = -1 << *(result + 32);
    v7 = result + 56;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v11 = ~(-1 << v13);
    }

    v10 = v11 & *(result + 56);
  }

  *a4 = result;
  a4[1] = v7;
  a4[2] = v9;
  a4[3] = v8;
  a4[4] = v10;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t sub_18E6F0760(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v5;
  v130 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_151:
    v10 = *v130;
    if (!*v130)
    {
      goto LABEL_190;
    }

    v4 = v9;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v4;
LABEL_154:
      v149 = result;
      v4 = *(result + 16);
      if (v4 >= 2)
      {
        while (*a3)
        {
          v122 = *(result + 16 * v4);
          v123 = result;
          v124 = *(result + 16 * (v4 - 1) + 40);
          sub_18E6F147C((*a3 + 8 * v122), (*a3 + 8 * *(result + 16 * (v4 - 1) + 32)), (*a3 + 8 * v124), v10);
          if (v6)
          {
          }

          if (v124 < v122)
          {
            goto LABEL_177;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v123 = sub_18E7290FC(v123);
          }

          if (v4 - 2 >= *(v123 + 2))
          {
            goto LABEL_178;
          }

          v125 = &v123[16 * v4];
          *v125 = v122;
          *(v125 + 1) = v124;
          v149 = v123;
          sub_18E729070(v4 - 1);
          result = v149;
          v4 = *(v149 + 16);
          if (v4 <= 1)
          {
          }
        }

        goto LABEL_188;
      }
    }

LABEL_184:
    result = sub_18E7290FC(v4);
    goto LABEL_154;
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = (v8 + 1);
    v132 = v8;
    if (v8 + 1 < v7)
    {
      v128 = v9;
      v11 = *a3;
      v4 = *(*a3 + 8 * v10);
      v12 = *(*a3 + 8 * v8);

      v141 = sub_18E6EF3F8(v4, v12);

      v10 = (v8 + 2);
      if (v8 + 2 < v7)
      {
        v13 = v11 + 8 * v8 + 16;
        v139 = v7;
        while (1)
        {
          v14 = *(v13 - 8);
          v15 = *v13;
          v16 = *(**v13 + 304);
          v4 = **v13 + 304;

          v18 = v16(&v145, v17);
          v19 = v146;
          if (v146 == 255)
          {
            (*(*v15 + 296))(&v147, v18);
            v20 = v147;
            v19 = v148;
            if (!v148)
            {
LABEL_16:
              sub_18E69E818(v20, v19);
LABEL_17:

LABEL_18:
              v8 = v132;
              v7 = v139;
              if (v141)
              {
                goto LABEL_48;
              }

              goto LABEL_9;
            }
          }

          else
          {
            v20 = v145;
            v147 = v145;
            if (!v146)
            {
              goto LABEL_16;
            }
          }

          if (v19 == 4)
          {
            v4 = v20;
            sub_18E69E818(v20, 4);
            if (v4 <= 1)
            {
              goto LABEL_17;
            }
          }

          else
          {
            sub_18E69E818(v20, v19);
          }

          v4 = &v143;
          v21 = (*(*v14 + 304))(&v143);
          v22 = v144;
          if (v144 == 255)
          {
            v4 = &v145;
            (*(*v14 + 296))(&v145, v21);
            v22 = v146;
          }

          v23 = *v4;
          if (!v22)
          {
            sub_18E69E818(v23, 0);
LABEL_8:

            v8 = v132;
            if (v141)
            {
              v9 = v128;
              if (v10 < v132)
              {
                goto LABEL_181;
              }

              goto LABEL_51;
            }

            goto LABEL_9;
          }

          if (v22 == 4)
          {
            v4 = *v4;
            sub_18E69E818(v23, 4);
            if (v4 <= 1)
            {
              goto LABEL_8;
            }
          }

          else
          {
            sub_18E69E818(v23, v22);
          }

          v24 = (*(*v15 + 192))();
          if (v24)
          {
            v26 = v24;
            v27 = v25;
            v28 = (*(*v14 + 192))();
            if (v28)
            {
              v4 = v28;
              v30 = v29;
              ObjectType = swift_getObjectType();
              if (v26 != v4)
              {
                v35 = (*(v30 + 24))(v26, v27, v15, ObjectType, v30);

                swift_unknownObjectRelease();
                result = swift_unknownObjectRelease();
                goto LABEL_40;
              }

              v134 = ObjectType;
              v32 = swift_getObjectType();
              v33 = (*(v27 + 8))(v15, v32, v27);
              if (v34)
              {

                swift_unknownObjectRelease();
                result = swift_unknownObjectRelease();
              }

              else
              {
                v36 = v33;
                v136 = (*(v30 + 8))(v14, v134);
                v38 = v37;

                swift_unknownObjectRelease();
                result = swift_unknownObjectRelease();
                if ((v38 & 1) == 0)
                {
                  v35 = v36 < v136;
LABEL_40:
                  v8 = v132;
                  v7 = v139;
                  if ((v141 ^ v35))
                  {
                    break;
                  }

                  goto LABEL_9;
                }
              }

              goto LABEL_18;
            }

            v24 = swift_unknownObjectRelease();
          }

          v4 = (*(*v14 + 192))(v24);

          v7 = v139;
          if (v4)
          {
            result = swift_unknownObjectRelease();
            v8 = v132;
            if ((v141 & 1) == 0)
            {
              v9 = v128;
              goto LABEL_57;
            }
          }

          else
          {
            v8 = v132;
            if (v141)
            {
LABEL_48:
              v9 = v128;
              if (v10 < v8)
              {
                goto LABEL_181;
              }

              goto LABEL_51;
            }
          }

LABEL_9:
          ++v10;
          v13 += 8;
          if (v7 == v10)
          {
            v10 = v7;
            break;
          }
        }
      }

      v9 = v128;
      if (v141)
      {
        if (v10 < v8)
        {
          goto LABEL_181;
        }

LABEL_51:
        if (v8 < v10)
        {
          v39 = 8 * v10 - 8;
          v40 = 8 * v8;
          v41 = v10;
          v42 = v8;
          do
          {
            if (v42 != --v41)
            {
              v43 = *a3;
              if (!*a3)
              {
                goto LABEL_187;
              }

              v44 = *(v43 + v40);
              *(v43 + v40) = *(v43 + v39);
              *(v43 + v39) = v44;
            }

            ++v42;
            v39 -= 8;
            v40 += 8;
          }

          while (v42 < v41);
        }
      }
    }

LABEL_57:
    v45 = a3[1];
    if (v10 < v45)
    {
      if (__OFSUB__(v10, v8))
      {
        goto LABEL_180;
      }

      if (&v10[-v8] < a4)
      {
        break;
      }
    }

LABEL_99:
    if (v10 < v8)
    {
      goto LABEL_179;
    }

    v75 = v9;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v9 = v75;
    }

    else
    {
      result = sub_18E6ED5B4(0, *(v75 + 16) + 1, 1, v75);
      v9 = result;
    }

    v4 = *(v9 + 16);
    v76 = *(v9 + 24);
    v77 = v4 + 1;
    if (v4 >= v76 >> 1)
    {
      result = sub_18E6ED5B4((v76 > 1), v4 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 16) = v77;
    v78 = v9 + 16 * v4;
    *(v78 + 32) = v8;
    *(v78 + 40) = v10;
    v79 = *v130;
    if (!*v130)
    {
      goto LABEL_189;
    }

    v8 = v10;
    if (v4)
    {
      while (1)
      {
        v80 = v77 - 1;
        if (v77 >= 4)
        {
          break;
        }

        if (v77 == 3)
        {
          v81 = *(v9 + 32);
          v82 = *(v9 + 40);
          v91 = __OFSUB__(v82, v81);
          v83 = v82 - v81;
          v84 = v91;
LABEL_119:
          if (v84)
          {
            goto LABEL_168;
          }

          v97 = (v9 + 16 * v77);
          v99 = *v97;
          v98 = v97[1];
          v100 = __OFSUB__(v98, v99);
          v101 = v98 - v99;
          v102 = v100;
          if (v100)
          {
            goto LABEL_171;
          }

          v103 = (v9 + 32 + 16 * v80);
          v105 = *v103;
          v104 = v103[1];
          v91 = __OFSUB__(v104, v105);
          v106 = v104 - v105;
          if (v91)
          {
            goto LABEL_174;
          }

          if (__OFADD__(v101, v106))
          {
            goto LABEL_175;
          }

          if (v101 + v106 >= v83)
          {
            if (v83 < v106)
            {
              v80 = v77 - 2;
            }

            goto LABEL_140;
          }

          goto LABEL_133;
        }

        v107 = (v9 + 16 * v77);
        v109 = *v107;
        v108 = v107[1];
        v91 = __OFSUB__(v108, v109);
        v101 = v108 - v109;
        v102 = v91;
LABEL_133:
        if (v102)
        {
          goto LABEL_170;
        }

        v110 = v9 + 16 * v80;
        v112 = *(v110 + 32);
        v111 = *(v110 + 40);
        v91 = __OFSUB__(v111, v112);
        v113 = v111 - v112;
        if (v91)
        {
          goto LABEL_173;
        }

        if (v113 < v101)
        {
          goto LABEL_3;
        }

LABEL_140:
        v4 = v80 - 1;
        if (v80 - 1 >= v77)
        {
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
          __break(1u);
LABEL_179:
          __break(1u);
LABEL_180:
          __break(1u);
LABEL_181:
          __break(1u);
LABEL_182:
          __break(1u);
          goto LABEL_183;
        }

        if (!*a3)
        {
          goto LABEL_186;
        }

        v118 = v9;
        v119 = *(v9 + 32 + 16 * v4);
        v120 = *(v9 + 32 + 16 * v80 + 8);
        sub_18E6F147C((*a3 + 8 * v119), (*a3 + 8 * *(v9 + 32 + 16 * v80)), (*a3 + 8 * v120), v79);
        if (v6)
        {
        }

        if (v120 < v119)
        {
          goto LABEL_164;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v118 = sub_18E7290FC(v118);
        }

        if (v4 >= *(v118 + 2))
        {
          goto LABEL_165;
        }

        v121 = &v118[16 * v4];
        *(v121 + 4) = v119;
        *(v121 + 5) = v120;
        v149 = v118;
        result = sub_18E729070(v80);
        v9 = v149;
        v77 = *(v149 + 16);
        if (v77 <= 1)
        {
          goto LABEL_3;
        }
      }

      v85 = v9 + 32 + 16 * v77;
      v86 = *(v85 - 64);
      v87 = *(v85 - 56);
      v91 = __OFSUB__(v87, v86);
      v88 = v87 - v86;
      if (v91)
      {
        goto LABEL_166;
      }

      v90 = *(v85 - 48);
      v89 = *(v85 - 40);
      v91 = __OFSUB__(v89, v90);
      v83 = v89 - v90;
      v84 = v91;
      if (v91)
      {
        goto LABEL_167;
      }

      v92 = (v9 + 16 * v77);
      v94 = *v92;
      v93 = v92[1];
      v91 = __OFSUB__(v93, v94);
      v95 = v93 - v94;
      if (v91)
      {
        goto LABEL_169;
      }

      v91 = __OFADD__(v83, v95);
      v96 = v83 + v95;
      if (v91)
      {
        goto LABEL_172;
      }

      if (v96 >= v88)
      {
        v114 = (v9 + 32 + 16 * v80);
        v116 = *v114;
        v115 = v114[1];
        v91 = __OFSUB__(v115, v116);
        v117 = v115 - v116;
        if (v91)
        {
          goto LABEL_176;
        }

        if (v83 < v117)
        {
          v80 = v77 - 2;
        }

        goto LABEL_140;
      }

      goto LABEL_119;
    }

LABEL_3:
    v7 = a3[1];
    if (v10 >= v7)
    {
      goto LABEL_151;
    }
  }

  v46 = v8 + a4;
  if (__OFADD__(v8, a4))
  {
    goto LABEL_182;
  }

  if (v46 >= v45)
  {
    v46 = a3[1];
  }

  if (v46 < v8)
  {
LABEL_183:
    __break(1u);
    goto LABEL_184;
  }

  if (v10 == v46)
  {
    goto LABEL_99;
  }

  v129 = v9;
  v126 = v6;
  v140 = *a3;
  v47 = (*a3 + 8 * v10 - 8);
  v48 = v8 - v10;
  v131 = v46;
LABEL_69:
  v135 = v47;
  v137 = v10;
  v49 = *(v140 + 8 * v10);
  v133 = v48;
  v50 = v48;
  while (1)
  {
    v51 = *v47;
    v52 = *(*v49 + 304);

    v54 = &v145;
    v55 = v52(&v145, v53);
    v56 = v146;
    if (v146 == 255)
    {
      v54 = &v147;
      (*(*v49 + 296))(&v147, v55);
      v56 = v148;
    }

    v4 = *v54;
    if (v56 == 4)
    {
      sub_18E69E818(v4, 4);
      if (v4 <= 1)
      {
        goto LABEL_67;
      }
    }

    else
    {
      if (!v56)
      {
        goto LABEL_66;
      }

      sub_18E69E818(v4, v56);
    }

    v57 = &v143;
    v58 = (*(*v51 + 304))(&v143);
    v56 = v144;
    if (v144 == 255)
    {
      v57 = &v145;
      (*(*v51 + 296))(&v145, v58);
      v56 = v146;
    }

    v4 = *v57;
    if (v56 != 4)
    {
      if (v56)
      {
        sub_18E69E818(v4, v56);
        goto LABEL_82;
      }

LABEL_66:
      sub_18E69E818(v4, v56);
LABEL_67:

LABEL_68:
      v10 = v137 + 1;
      v47 = v135 + 1;
      v48 = v133 - 1;
      if (v137 + 1 == v131)
      {
        v10 = v131;
        v6 = v126;
        v9 = v129;
        v8 = v132;
        goto LABEL_99;
      }

      goto LABEL_69;
    }

    sub_18E69E818(v4, 4);
    if (v4 <= 1)
    {
      goto LABEL_67;
    }

LABEL_82:
    v59 = (*(*v49 + 192))();
    if (!v59)
    {
      goto LABEL_90;
    }

    v61 = v59;
    v62 = v60;
    v142 = v50;
    v63 = (*(*v51 + 192))();
    if (!v63)
    {
      swift_unknownObjectRelease();
LABEL_90:
      v4 = (*(*v51 + 192))();

      if (!v4)
      {
        goto LABEL_68;
      }

      result = swift_unknownObjectRelease();
      goto LABEL_93;
    }

    v65 = v63;
    v66 = v64;
    v4 = swift_getObjectType();
    if (v61 != v65)
    {
      v4 = (*(v66 + 24))(v61, v62, v49, v4, v66);

      swift_unknownObjectRelease();
      result = swift_unknownObjectRelease();
      v50 = v142;
      if ((v4 & 1) == 0)
      {
        goto LABEL_68;
      }

      goto LABEL_93;
    }

    v67 = swift_getObjectType();
    v68 = (*(v62 + 8))(v49, v67, v62);
    if (v69)
    {

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      goto LABEL_68;
    }

    v70 = v68;
    v4 = (*(v66 + 8))(v51, v4, v66);
    v72 = v71;

    swift_unknownObjectRelease();
    result = swift_unknownObjectRelease();
    if (v72)
    {
      goto LABEL_68;
    }

    v50 = v142;
    if (v70 >= v4)
    {
      goto LABEL_68;
    }

LABEL_93:
    if (!v140)
    {
      break;
    }

    v73 = *v47;
    v49 = v47[1];
    *v47 = v49;
    v47[1] = v73;
    --v47;
    if (__CFADD__(v50++, 1))
    {
      goto LABEL_68;
    }
  }

  __break(1u);
LABEL_186:
  __break(1u);
LABEL_187:
  __break(1u);
LABEL_188:
  __break(1u);
LABEL_189:
  __break(1u);
LABEL_190:
  __break(1u);
  return result;
}

uint64_t sub_18E6F147C(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst - __src;
  v8 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v8 = __dst - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - __dst;
  v11 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v11 = a3 - __dst;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v12] <= a4)
    {
      v44 = __dst;
      memmove(a4, __dst, 8 * v12);
      __dst = v44;
    }

    v14 = &v4[8 * v12];
    if (v10 < 8 || __dst <= v6)
    {
      goto LABEL_92;
    }

LABEL_53:
    v45 = __dst - 8;
    v5 -= 8;
    v46 = v14;
    v81 = __dst - 8;
    v83 = __dst;
    while (1)
    {
      v90 = v14;
      v48 = *(v46 - 1);
      v46 -= 8;
      v47 = v48;
      v49 = *v45;
      v50 = *(*v48 + 304);

      v52 = &v86;
      v53 = v50(&v86, v51);
      v54 = v87;
      if (v87 == 255)
      {
        v52 = &v88;
        (*(*v47 + 296))(&v88, v53);
        v54 = v89;
      }

      v55 = *v52;
      v14 = v90;
      if (!v54)
      {
        break;
      }

      if (v54 == 4)
      {
        v56 = *v52;
        sub_18E69E818(v55, 4);
        if (v56 <= 1)
        {
          goto LABEL_69;
        }
      }

      else
      {
        sub_18E69E818(v55, v54);
      }

      v57 = (*(*v49 + 304))(&v84);
      v54 = v85;
      if (v85 == 255)
      {
        (*(*v49 + 296))(&v86, v57);
        v54 = v87;
        v55 = v86;
        if (!v87)
        {
          break;
        }
      }

      else
      {
        v55 = v84;
        if (!v85)
        {
          break;
        }
      }

      if (v54 == 4)
      {
        v58 = v55;
        sub_18E69E818(v55, 4);
        if (v58 <= 1)
        {
          goto LABEL_69;
        }
      }

      else
      {
        sub_18E69E818(v55, v54);
      }

      v59 = (*(*v47 + 192))();
      if (!v59)
      {
        goto LABEL_79;
      }

      v61 = v59;
      v78 = v60;
      v62 = (*(*v49 + 192))();
      if (!v62)
      {
        v59 = swift_unknownObjectRelease();
LABEL_79:
        v70 = (*(*v49 + 192))(v59);

        v14 = v90;
        if (v70)
        {
          swift_unknownObjectRelease();
LABEL_85:
          if (v5 + 8 != v83)
          {
            *v5 = *v81;
          }

          if (v14 <= v4 || (__dst = v81, v81 <= v6))
          {
            __dst = v81;
            goto LABEL_92;
          }

          goto LABEL_53;
        }

        goto LABEL_70;
      }

      v64 = v62;
      v65 = v63;
      ObjectType = swift_getObjectType();
      if (v61 == v64)
      {
        v75 = ObjectType;
        v67 = swift_getObjectType();
        v68 = (*(v78 + 8))(v47, v67);
        if (v69)
        {

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          v14 = v90;
        }

        else
        {
          v79 = v68;
          v76 = (*(v65 + 8))(v49, v75);
          v73 = v72;

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          v14 = v90;
          if ((v73 & 1) == 0 && v79 < v76)
          {
            goto LABEL_85;
          }
        }
      }

      else
      {
        v71 = (*(v65 + 24))(v61, v78, v47, ObjectType, v65);

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v14 = v90;
        if (v71)
        {
          goto LABEL_85;
        }
      }

LABEL_70:
      if (v5 + 8 != v14)
      {
        *v5 = *v46;
      }

      v5 -= 8;
      v14 = v46;
      v45 = v81;
      if (v46 <= v4)
      {
        v14 = v46;
        __dst = v83;
        goto LABEL_92;
      }
    }

    sub_18E69E818(v55, v54);
LABEL_69:

    goto LABEL_70;
  }

  if (a4 != __src || &__src[8 * v9] <= a4)
  {
    v13 = __dst;
    memmove(a4, __src, 8 * v9);
    __dst = v13;
  }

  v14 = &v4[8 * v9];
  if (v7 >= 8 && __dst < v5)
  {
    v90 = &v4[8 * v9];
    while (1)
    {
      v82 = __dst;
      v15 = *__dst;
      v16 = *v4;
      v17 = *(**__dst + 304);

      v19 = v17(&v86, v18);
      v20 = v87;
      if (v87 == 255)
      {
        (*(*v15 + 296))(&v88, v19);
        v20 = v89;
        v21 = v88;
        if (!v89)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v21 = v86;
        if (!v87)
        {
          goto LABEL_26;
        }
      }

      if (v20 == 4)
      {
        v22 = v21;
        sub_18E69E818(v21, 4);
        if (v22 <= 1)
        {
          goto LABEL_27;
        }
      }

      else
      {
        sub_18E69E818(v21, v20);
      }

      v23 = (*(*v16 + 304))(&v84);
      v20 = v85;
      if (v85 == 255)
      {
        (*(*v16 + 296))(&v86, v23);
        v20 = v87;
        v21 = v86;
        if (!v87)
        {
LABEL_26:
          sub_18E69E818(v21, v20);
LABEL_27:

          goto LABEL_28;
        }
      }

      else
      {
        v21 = v84;
        if (!v85)
        {
          goto LABEL_26;
        }
      }

      if (v20 == 4)
      {
        v24 = v21;
        sub_18E69E818(v21, 4);
        if (v24 <= 1)
        {
          goto LABEL_27;
        }
      }

      else
      {
        sub_18E69E818(v21, v20);
      }

      v27 = (*(*v15 + 192))();
      if (!v27)
      {
        goto LABEL_40;
      }

      v29 = v27;
      v30 = v28;
      v31 = (*(*v16 + 192))();
      if (!v31)
      {
        break;
      }

      v33 = v31;
      v34 = v32;
      v35 = swift_getObjectType();
      if (v29 == v33)
      {
        v77 = v35;
        v36 = swift_getObjectType();
        v37 = (*(v30 + 8))(v15, v36, v30);
        if (v38)
        {

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          v14 = v90;
LABEL_28:
          v25 = v4;
          v26 = v6 == v4;
          v4 += 8;
          __dst = v82;
          if (v26)
          {
            goto LABEL_30;
          }

LABEL_29:
          *v6 = *v25;
          goto LABEL_30;
        }

        v41 = v37;
        v80 = (*(v34 + 8))(v16, v77);
        v43 = v42;

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v14 = v90;
        if ((v43 & 1) != 0 || v41 >= v80)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v40 = (*(v34 + 24))(v29, v30, v15, v35, v34);

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v14 = v90;
        if ((v40 & 1) == 0)
        {
          goto LABEL_28;
        }
      }

LABEL_46:
      v25 = v82;
      __dst = v82 + 8;
      if (v6 != v82)
      {
        goto LABEL_29;
      }

LABEL_30:
      v6 += 8;
      if (v4 >= v14 || __dst >= v5)
      {
        goto LABEL_90;
      }
    }

    v27 = swift_unknownObjectRelease();
LABEL_40:
    v39 = (*(*v16 + 192))(v27);

    v14 = v90;
    if (!v39)
    {
      goto LABEL_28;
    }

    swift_unknownObjectRelease();
    goto LABEL_46;
  }

LABEL_90:
  __dst = v6;
LABEL_92:
  if (__dst != v4 || __dst >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(__dst, v4, 8 * ((v14 - v4) / 8));
  }

  return 1;
}

uint64_t (*sub_18E6F1D88(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x193AD1B60](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_18E6F1E08;
  }

  __break(1u);
  return result;
}

uint64_t sub_18E6F1E10(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) == 0)
  {
    if (a3)
    {
      result = sub_18E72B4F8();
      if (result != *(a4 + 36))
      {
        __break(1u);
        goto LABEL_23;
      }

      sub_18E72B508();
      type metadata accessor for AnyGestureNode();
      swift_dynamicCast();
      sub_18E72B888();
      v6 = sub_18E72AFA8();
      MEMORY[0x193AD1DF0](v6);
      v7 = sub_18E72B8E8();
      v8 = -1 << *(a4 + 32);
      v9 = v7 & ~v8;
      if ((*(a4 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
      {
        v10 = ~v8;
        while (*(*(a4 + 48) + 8 * v9) != v11)
        {
          v9 = (v9 + 1) & v10;
          if (((*(a4 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        goto LABEL_19;
      }

LABEL_13:

      __break(1u);
    }

    if ((result & 0x8000000000000000) == 0 && 1 << *(a4 + 32) > result)
    {
      if ((*(a4 + 8 * (result >> 6) + 56) >> result))
      {
        if (*(a4 + 36) == a2)
        {
        }

        __break(1u);
LABEL_19:
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if ((a3 & 1) == 0)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  if (a4 < 0)
  {
    v5 = a4;
  }

  else
  {
    v5 = a4 & 0xFFFFFFFFFFFFFF8;
  }

  MEMORY[0x193AD1A90](result, a2, v5);
  type metadata accessor for AnyGestureNode();
  swift_dynamicCast();
  return v11;
}

uint64_t sub_18E6F1FD8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26[3] = a5;
  v26[4] = a6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v26);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_0, a1, a5);
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  v12 = MEMORY[0x1E69E7CD0];
  *(a4 + 48) = 0u;
  *(a4 + 64) = v12;
  *(a4 + 128) = v12;
  *(a4 + 136) = v12;
  v13 = MEMORY[0x1E69E7CC0];
  *(a4 + 144) = 0;
  *(a4 + 152) = v13;
  *(a4 + 200) = 0;
  *(a4 + 204) = 1;
  *(a4 + 216) = 0;
  *(a4 + 224) = 0;
  *(a4 + 208) = v13;
  *(a4 + 232) = 1;
  v14 = MEMORY[0x1E69E7CC8];
  *(a4 + 240) = MEMORY[0x1E69E7CC8];
  sub_18E69379C(v26, a4 + 72);
  sub_18E693800(a2, &v21);
  if (v22)
  {
    sub_18E689D58(&v21, &v23);
  }

  else
  {
    updated = type metadata accessor for RunLoopUpdateDriver();
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    *(v16 + 24) = 1;
    v24 = updated;
    v25 = &off_1F01A61D0;
    *&v23 = v16;
  }

  sub_18E689D58(&v23, a4 + 160);
  type metadata accessor for FailureDependencyGraph();
  v17 = swift_allocObject();
  *(v17 + 16) = v14;
  *(v17 + 24) = v14;
  *(v17 + 32) = a3 & 1;
  *(a4 + 112) = v17;
  type metadata accessor for ExclusionPool();
  swift_allocObject();

  v19 = sub_18E6938DC(v18);
  sub_18E68B548(a2, &qword_1EAC8FA80, &unk_18E731690);
  __swift_destroy_boxed_opaque_existential_0(v26);
  *(a4 + 120) = v19;
  return a4;
}

uint64_t sub_18E6F2190(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  (*(v11 + 16))(v13, a1, a5);
  return sub_18E6F1FD8(v13, a2, a3, v14, a5, a6);
}

uint64_t objectdestroy_34Tm()
{
  sub_18E682A3C(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_18E6F2370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_18E72B318();
  if ((result & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](result);
    type metadata accessor for CGPoint(0);
    sub_18E72B148();
    return sub_18E72B308();
  }

  return result;
}

uint64_t sub_18E6F247C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *sub_18E6F2514(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    *((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  return v3;
}

uint64_t sub_18E6F2608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  *((*(v5 + 48) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 48) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t sub_18E6F2684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v7[1] = v8[1];
  return a1;
}

uint64_t sub_18E6F2708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  *((*(v5 + 32) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 32) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t sub_18E6F2784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v7[1] = v8[1];
  return a1;
}

uint64_t sub_18E6F2808(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))(a1);
  }

  v6 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v7 = a2 - v5;
  v8 = v6 & 0xFFFFFFF8;
  if ((v6 & 0xFFFFFFF8) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7 + 1;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v11 || (v12 = *(a1 + v6)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))(a1);
    }

    return 0;
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return v5 + (v8 | v13) + 1;
}

unsigned int *sub_18E6F290C(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v6 >= a3)
  {
    v11 = 0;
    v12 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = a3 - v6;
    if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v7) = 0;
      }

      else if (v11)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v16 = *(v5 + 56);

      return v16();
    }
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v14 = ~v6 + a2;
    v15 = result;
    bzero(result, v7);
    result = v15;
    *v15 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(result + v7) = v13;
    }

    else
    {
      *(result + v7) = v13;
    }
  }

  else if (v11)
  {
    *(result + v7) = v13;
  }

  return result;
}

uint64_t sub_18E6F2AB8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_18E6C8EBC(a1, WitnessTable);
}

uint64_t sub_18E6F2B0C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_18E6C8EC0(a1, WitnessTable);
}

uint64_t sub_18E6F2B60(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_18E6F2BC4()
{
  result = qword_1EAC8E700;
  if (!qword_1EAC8E700)
  {
    type metadata accessor for CGPoint(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8E700);
  }

  return result;
}

uint64_t sub_18E6F2C1C(uint64_t result, double a2, double a3)
{
  v4 = (v3 + *(result + 36));
  *v4 = a2;
  v4[1] = a3;
  return result;
}

uint64_t (*sub_18E6F2C54(uint64_t a1, uint64_t a2))(uint64_t a1)
{
  *(a1 + 16) = v2;
  *(a1 + 24) = a2;
  *a1 = sub_18E6F2AA8(a2);
  *(a1 + 8) = v4;
  return sub_18E6F2CA0;
}

double sub_18E6F2CCC@<D0>(double *a1@<X0>, double *a2@<X8>)
{
  v4 = *(v2 + 32);
  v5 = *a1;
  v6 = a1[1];
  v7 = *(v4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = v5 + v7(AssociatedTypeWitness, v4);
  *a2 = result;
  a2[1] = v6 + v10;
  return result;
}

uint64_t sub_18E6F2D68(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_18E72B438();
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *sub_18E6F2E38(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = *(v5 + 80);
  v8 = v7;
  v9 = ~v7;
  v10 = v6 + v7;
  if (*(v5 + 84))
  {
    v11 = *(v5 + 64);
  }

  else
  {
    v11 = v6 + 1;
  }

  v12 = ((v11 + v7 + ((v6 + v7) & ~v7)) & ~v7) + v6;
  v13 = v7 & 0x100000;
  if (v8 > 7 || v13 != 0 || v12 > 0x18)
  {
    v16 = *a2;
    *v3 = *a2;
    v3 = (v16 + ((v8 + 16) & v9));
  }

  else
  {
    v21 = *(v5 + 16);
    v21(a1, a2, v4);
    v18 = (v3 + v10) & v9;
    v19 = ((a2 + v10) & v9);
    if ((*(v5 + 48))(v19, 1, v4))
    {
      memcpy(((v3 + v10) & v9), v19, v11);
    }

    else
    {
      v21(((v3 + v10) & v9), v19, v4);
      (*(v5 + 56))(v18, 0, 1, v4);
    }

    v21(((v18 + v8 + v11) & v9), ((v19 + v8 + v11) & v9), v4);
  }

  return v3;
}

uint64_t sub_18E6F3000(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = v4;
  v12 = *(v4 + 8);
  v12(a1, v3);
  v6 = *(v4 + 80);
  v7 = *(v4 + 64) + v6;
  v8 = ~v6;
  v9 = (v7 + a1) & ~v6;
  if (!(*(v5 + 48))(v9, 1, v3))
  {
    v12(v9, v3);
  }

  v10 = v7 + v9;
  if (!*(v5 + 84))
  {
    ++v10;
  }

  return (v12)(v10 & v8, v3);
}

uint64_t sub_18E6F3130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 16);
  v7(a1, a2, v5);
  v8 = *(v6 + 64);
  v9 = *(v6 + 80);
  v10 = ((v8 + v9 + a2) & ~v9);
  if ((*(v6 + 48))(v10, 1, v5))
  {
    v11 = *(v6 + 84);
    if (v11)
    {
      v12 = v8;
    }

    else
    {
      v12 = v8 + 1;
    }

    memcpy(((v8 + v9 + a1) & ~v9), v10, v12);
  }

  else
  {
    v7((v8 + v9 + a1) & ~v9, v10, v5);
    (*(v6 + 56))((v8 + v9 + a1) & ~v9, 0, 1, v5);
    v11 = *(v6 + 84);
  }

  if (v11)
  {
    v13 = v8;
  }

  else
  {
    v13 = v8 + 1;
  }

  v7((((v8 + v9 + a1) & ~v9) + v9 + v13) & ~v9, (v10 + v9 + v13) & ~v9, v5);
  return a1;
}

uint64_t sub_18E6F32B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = v6;
  v20 = *(v6 + 24);
  v20(a1, a2, v5);
  v8 = *(v6 + 64);
  v9 = *(v6 + 80);
  v10 = ((v8 + v9 + a1) & ~v9);
  v11 = ((v8 + v9 + a2) & ~v9);
  v12 = *(v7 + 48);
  v13 = v12(v10, 1, v5);
  v14 = v12(v11, 1, v5);
  if (v13)
  {
    if (!v14)
    {
      (*(v7 + 16))(v10, v11, v5);
      (*(v7 + 56))(v10, 0, 1, v5);
LABEL_11:
      v17 = v20;
      goto LABEL_12;
    }

    v15 = *(v7 + 84);
LABEL_6:
    if (v15)
    {
      v16 = v8;
    }

    else
    {
      v16 = v8 + 1;
    }

    memcpy(v10, v11, v16);
    goto LABEL_11;
  }

  if (v14)
  {
    (*(v7 + 8))(v10, v5);
    v15 = *(v7 + 84);
    goto LABEL_6;
  }

  v17 = v20;
  v20(v10, v11, v5);
LABEL_12:
  if (*(v7 + 84))
  {
    v18 = v8;
  }

  else
  {
    v18 = v8 + 1;
  }

  v17((v10 + v9 + v18) & ~v9, (v11 + v9 + v18) & ~v9, v5);
  return a1;
}

uint64_t sub_18E6F34BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 32);
  v7(a1, a2, v5);
  v8 = *(v6 + 64);
  v9 = *(v6 + 80);
  v10 = ((v8 + v9 + a2) & ~v9);
  if ((*(v6 + 48))(v10, 1, v5))
  {
    v11 = *(v6 + 84);
    if (v11)
    {
      v12 = v8;
    }

    else
    {
      v12 = v8 + 1;
    }

    memcpy(((v8 + v9 + a1) & ~v9), v10, v12);
  }

  else
  {
    v7((v8 + v9 + a1) & ~v9, v10, v5);
    (*(v6 + 56))((v8 + v9 + a1) & ~v9, 0, 1, v5);
    v11 = *(v6 + 84);
  }

  if (v11)
  {
    v13 = v8;
  }

  else
  {
    v13 = v8 + 1;
  }

  v7((((v8 + v9 + a1) & ~v9) + v9 + v13) & ~v9, (v10 + v9 + v13) & ~v9, v5);
  return a1;
}

uint64_t sub_18E6F363C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = v6;
  v20 = *(v6 + 40);
  v20(a1, a2, v5);
  v8 = *(v6 + 64);
  v9 = *(v6 + 80);
  v10 = ((v8 + v9 + a1) & ~v9);
  v11 = ((v8 + v9 + a2) & ~v9);
  v12 = *(v7 + 48);
  v13 = v12(v10, 1, v5);
  v14 = v12(v11, 1, v5);
  if (v13)
  {
    if (!v14)
    {
      (*(v7 + 32))(v10, v11, v5);
      (*(v7 + 56))(v10, 0, 1, v5);
LABEL_11:
      v17 = v20;
      goto LABEL_12;
    }

    v15 = *(v7 + 84);
LABEL_6:
    if (v15)
    {
      v16 = v8;
    }

    else
    {
      v16 = v8 + 1;
    }

    memcpy(v10, v11, v16);
    goto LABEL_11;
  }

  if (v14)
  {
    (*(v7 + 8))(v10, v5);
    v15 = *(v7 + 84);
    goto LABEL_6;
  }

  v17 = v20;
  v20(v10, v11, v5);
LABEL_12:
  if (*(v7 + 84))
  {
    v18 = v8;
  }

  else
  {
    v18 = v8 + 1;
  }

  v17((v10 + v9 + v18) & ~v9, (v11 + v9 + v18) & ~v9, v5);
  return a1;
}

uint64_t sub_18E6F3848(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  v7 = *(v4 + 80);
  v8 = v6 + v7;
  if (v5)
  {
    v9 = v6 + v7;
  }

  else
  {
    v9 = v8 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v11 = ((v9 + (v8 & ~v7)) & ~v7) + v6;
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v14 = ((v10 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v14))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v14 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v14 < 2)
    {
LABEL_25:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_25;
  }

LABEL_14:
  v15 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v15 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return v5 + (v11 | v15) + 1;
}

char *sub_18E6F39A8(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = *(v5 + 80);
  v9 = v7 + v8;
  if (!v6)
  {
    ++v9;
  }

  v10 = ((v9 + ((v7 + v8) & ~v8)) & ~v8) + v7;
  v11 = a3 >= v6;
  v12 = a3 - v6;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v17 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v17))
      {
        v13 = 4;
      }

      else
      {
        if (v17 < 0x100)
        {
          v18 = 1;
        }

        else
        {
          v18 = 2;
        }

        if (v17 >= 2)
        {
          v13 = v18;
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

  if (v6 < a2)
  {
    v14 = ~v6 + a2;
    if (v10 < 4)
    {
      v16 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v19 = v14 & ~(-1 << (8 * v10));
        v20 = result;
        bzero(result, v10);
        result = v20;
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *v20 = v19;
            if (v13 > 1)
            {
LABEL_41:
              if (v13 == 2)
              {
                *&result[v10] = v16;
              }

              else
              {
                *&result[v10] = v16;
              }

              return result;
            }
          }

          else
          {
            *v20 = v14;
            if (v13 > 1)
            {
              goto LABEL_41;
            }
          }

          goto LABEL_38;
        }

        *v20 = v19;
        v20[2] = BYTE2(v19);
      }

      if (v13 > 1)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v10);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v13 > 1)
      {
        goto LABEL_41;
      }
    }

LABEL_38:
    if (v13)
    {
      result[v10] = v16;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&result[v10] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_30;
    }

    *&result[v10] = 0;
  }

  else if (v13)
  {
    result[v10] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_30;
  }

  if (!a2)
  {
    return result;
  }

LABEL_30:
  v21 = *(v5 + 56);

  return v21();
}

uint64_t sub_18E6F3BE8(void *a1)
{
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = type metadata accessor for ValueTracker.State(319, result, a1[3], a1[4]);
    if (v4 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *sub_18E6F3CC8(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = v5 + v8;
  v10 = (v5 + v8) & ~v8;
  if (*(v7 + 84))
  {
    v11 = *(v7 + 64);
  }

  else
  {
    v11 = *(v7 + 64) + 1;
  }

  v12 = ((((v11 + v8) & ~v8) + v11 + v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v13 = v8 | *(v4 + 80) & 0xF8;
  if (v13 > 7 || ((*(v4 + 80) | *(v7 + 80)) & 0x100000) != 0 || v12 > 0x18)
  {
    v16 = *a2;
    *a1 = *a2;
    v17 = (v16 + (((v13 | 7) + 16) & ~(v13 | 7)));
  }

  else
  {
    v29 = ((v11 + v8) & ~v8) + v11;
    v18 = ~v8;
    (*(v4 + 16))(a1);
    v20 = ((a1 + v9) & ~v8);
    v21 = ((a2 + v9) & ~v8);
    v22 = *(v7 + 48);
    v30 = a1;
    if (v22(v21, 1, v6))
    {
      memcpy(v20, v21, v11);
    }

    else
    {
      (*(v7 + 16))(v20, v21, v6);
      (*(v7 + 56))(v20, 0, 1, v6);
    }

    v23 = &v20[v8 + v11];
    v24 = &v21[v8 + v11];
    if (v22((v24 & v18), 1, v6))
    {
      memcpy((v23 & v18), (v24 & v18), v11);
    }

    else
    {
      (*(v7 + 16))(v23 & v18, v24 & v18, v6);
      (*(v7 + 56))(v23 & v18, 0, 1, v6);
    }

    v17 = v30;
    v25 = (&v21[v29 + 7] & 0xFFFFFFFFFFFFFFF8);
    v26 = v25[1];
    v27 = (&v20[v29 + 7] & 0xFFFFFFFFFFFFFFF8);
    *v27 = *v25;
    v27[1] = v26;
  }

  return v17;
}

uint64_t sub_18E6F3F74(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 16) - 8) + 8;
  (*v4)();
  v5 = *(v4 + 56);
  v6 = *(a2 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = ~v8;
  v10 = (v5 + a1 + v8) & ~v8;
  v11 = *(v7 + 48);
  if (!v11(v10, 1, v6))
  {
    (*(v7 + 8))(v10, v6);
  }

  if (*(v7 + 84))
  {
    v12 = *(v7 + 64);
  }

  else
  {
    v12 = *(v7 + 64) + 1;
  }

  v13 = v10 + v8 + v12;
  if (!v11(v13 & v9, 1, v6))
  {
    (*(v7 + 8))(v13 & v9, v6);
  }
}

uint64_t sub_18E6F40E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 16;
  (*v6)();
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = *(v6 + 48) + v9;
  v11 = ~v9;
  v12 = ((v10 + a1) & ~v9);
  v13 = ((v10 + a2) & ~v9);
  v26 = *(v8 + 48);
  v27 = a1;
  if (v26(v13, 1, v7))
  {
    v14 = *(v8 + 84);
    v15 = *(v8 + 64);
    if (v14)
    {
      v16 = *(v8 + 64);
    }

    else
    {
      v16 = v15 + 1;
    }

    memcpy(v12, v13, v16);
  }

  else
  {
    (*(v8 + 16))(v12, v13, v7);
    (*(v8 + 56))(v12, 0, 1, v7);
    v14 = *(v8 + 84);
    v15 = *(v8 + 64);
  }

  if (!v14)
  {
    ++v15;
  }

  v17 = &v12[v9 + v15];
  v18 = &v13[v9 + v15];
  if (v26((v18 & v11), 1, v7))
  {
    memcpy((v17 & v11), (v18 & v11), v15);
  }

  else
  {
    (*(v8 + 16))(v17 & v11, v18 & v11, v7);
    (*(v8 + 56))(v17 & v11, 0, 1, v7);
  }

  v19 = ((v15 + v9) & v11) + v15;
  v20 = &v12[v19 + 7];
  v21 = (&v13[v19 + 7] & 0xFFFFFFFFFFFFFFF8);
  v23 = *v21;
  v22 = v21[1];
  v24 = (v20 & 0xFFFFFFFFFFFFFFF8);
  *v24 = v23;
  v24[1] = v22;

  return v27;
}

uint64_t sub_18E6F42FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 24;
  (*v6)();
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = *(v6 + 40) + v9;
  v30 = a1;
  v11 = ~v9;
  v12 = ((v10 + a1) & ~v9);
  v13 = ((v10 + a2) & ~v9);
  v14 = *(v8 + 48);
  LODWORD(a1) = v14(v12, 1, v7);
  v15 = v14(v13, 1, v7);
  v31 = v13;
  if (a1)
  {
    if (!v15)
    {
      (*(v8 + 16))(v12, v13, v7);
      (*(v8 + 56))(v12, 0, 1, v7);
      goto LABEL_12;
    }

    v16 = *(v8 + 84);
    v17 = *(v8 + 64);
  }

  else
  {
    if (!v15)
    {
      (*(v8 + 24))(v12, v13, v7);
      goto LABEL_12;
    }

    (*(v8 + 8))(v12, v7);
    v16 = *(v8 + 84);
    v17 = *(v8 + 64);
  }

  if (v16)
  {
    v18 = v17;
  }

  else
  {
    v18 = v17 + 1;
  }

  memcpy(v12, v13, v18);
LABEL_12:
  if (*(v8 + 84))
  {
    v19 = *(v8 + 64);
  }

  else
  {
    v19 = *(v8 + 64) + 1;
  }

  v29 = v12;
  v20 = &v12[v9 + v19];
  v21 = &v13[v9 + v19];
  v22 = v14((v20 & v11), 1, v7);
  v23 = v14((v21 & v11), 1, v7);
  if (!v22)
  {
    if (!v23)
    {
      (*(v8 + 24))(v20 & v11, v21 & v11, v7);
      goto LABEL_21;
    }

    (*(v8 + 8))(v20 & v11, v7);
    goto LABEL_20;
  }

  if (v23)
  {
LABEL_20:
    memcpy((v20 & v11), (v21 & v11), v19);
    goto LABEL_21;
  }

  (*(v8 + 16))(v20 & v11, v21 & v11, v7);
  (*(v8 + 56))(v20 & v11, 0, 1, v7);
LABEL_21:
  v24 = ((v19 + v9) & v11) + v19;
  v25 = (&v29[v24 + 7] & 0xFFFFFFFFFFFFFFF8);
  v26 = (&v31[v24 + 7] & 0xFFFFFFFFFFFFFFF8);
  v27 = v26[1];
  *v25 = *v26;
  v25[1] = v27;

  return v30;
}

uint64_t sub_18E6F4600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 32;
  (*v6)();
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = *(v6 + 32) + v9;
  v11 = ~v9;
  v12 = ((v10 + a1) & ~v9);
  v13 = ((v10 + a2) & ~v9);
  v20 = *(v8 + 48);
  v21 = a1;
  if (v20(v13, 1, v7))
  {
    v14 = *(v8 + 84);
    v15 = *(v8 + 64);
    if (v14)
    {
      v16 = *(v8 + 64);
    }

    else
    {
      v16 = v15 + 1;
    }

    memcpy(v12, v13, v16);
  }

  else
  {
    (*(v8 + 32))(v12, v13, v7);
    (*(v8 + 56))(v12, 0, 1, v7);
    v14 = *(v8 + 84);
    v15 = *(v8 + 64);
  }

  if (!v14)
  {
    ++v15;
  }

  v17 = &v12[v9 + v15];
  v18 = &v13[v9 + v15];
  if (v20((v18 & v11), 1, v7))
  {
    memcpy((v17 & v11), (v18 & v11), v15);
  }

  else
  {
    (*(v8 + 32))(v17 & v11, v18 & v11, v7);
    (*(v8 + 56))(v17 & v11, 0, 1, v7);
  }

  *(&v12[((v15 + v9) & v11) + 7 + v15] & 0xFFFFFFFFFFFFFFF8) = *(&v13[((v15 + v9) & v11) + 7 + v15] & 0xFFFFFFFFFFFFFFF8);
  return v21;
}

uint64_t sub_18E6F4818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 40;
  (*v6)();
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = *(v6 + 24) + v9;
  v26 = a1;
  v11 = ~v9;
  v12 = ((v10 + a1) & ~v9);
  v13 = ((v10 + a2) & ~v9);
  v14 = *(v8 + 48);
  LODWORD(a1) = v14(v12, 1, v7);
  v15 = v14(v13, 1, v7);
  v27 = v13;
  if (a1)
  {
    if (!v15)
    {
      (*(v8 + 32))(v12, v13, v7);
      (*(v8 + 56))(v12, 0, 1, v7);
      goto LABEL_12;
    }

    v16 = *(v8 + 84);
    v17 = *(v8 + 64);
  }

  else
  {
    if (!v15)
    {
      (*(v8 + 40))(v12, v13, v7);
      goto LABEL_12;
    }

    (*(v8 + 8))(v12, v7);
    v16 = *(v8 + 84);
    v17 = *(v8 + 64);
  }

  if (v16)
  {
    v18 = v17;
  }

  else
  {
    v18 = v17 + 1;
  }

  memcpy(v12, v13, v18);
LABEL_12:
  if (*(v8 + 84))
  {
    v19 = *(v8 + 64);
  }

  else
  {
    v19 = *(v8 + 64) + 1;
  }

  v25 = v12;
  v20 = &v12[v9 + v19];
  v21 = &v13[v9 + v19];
  v22 = v14((v20 & v11), 1, v7);
  v23 = v14((v21 & v11), 1, v7);
  if (!v22)
  {
    if (!v23)
    {
      (*(v8 + 40))(v20 & v11, v21 & v11, v7);
      goto LABEL_21;
    }

    (*(v8 + 8))(v20 & v11, v7);
    goto LABEL_20;
  }

  if (v23)
  {
LABEL_20:
    memcpy((v20 & v11), (v21 & v11), v19);
    goto LABEL_21;
  }

  (*(v8 + 32))(v20 & v11, v21 & v11, v7);
  (*(v8 + 56))(v20 & v11, 0, 1, v7);
LABEL_21:
  *(&v25[((v19 + v9) & v11) + 7 + v19] & 0xFFFFFFFFFFFFFFF8) = *(&v27[((v19 + v9) & v11) + 7 + v19] & 0xFFFFFFFFFFFFFFF8);

  return v26;
}

uint64_t sub_18E6F4B14(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a3 + 24) - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v10 <= v7)
  {
    v11 = *(v6 + 84);
  }

  else
  {
    v11 = v10;
  }

  if (v11 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  v12 = *(v8 + 80);
  v13 = *(*(*(a3 + 24) - 8) + 64);
  if (!v9)
  {
    ++v13;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = *(*(v5 - 8) + 64) + v12;
  v15 = ((v13 + v12) & ~v12) + v13;
  if (v11 < a2)
  {
    v16 = ((v15 + (v14 & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
    v17 = a2 - v11;
    v18 = v16 & 0xFFFFFFF8;
    if ((v16 & 0xFFFFFFF8) != 0)
    {
      v19 = 2;
    }

    else
    {
      v19 = v17 + 1;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    if (v19 >= 2)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    if (v21 > 1)
    {
      if (v21 == 2)
      {
        v22 = *(a1 + v16);
        if (v22)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v22 = *(a1 + v16);
        if (v22)
        {
          goto LABEL_27;
        }
      }
    }

    else if (v21)
    {
      v22 = *(a1 + v16);
      if (v22)
      {
LABEL_27:
        v23 = v22 - 1;
        if (v18)
        {
          v23 = 0;
          v24 = *a1;
        }

        else
        {
          v24 = 0;
        }

        return v11 + (v24 | v23) + 1;
      }
    }
  }

  if (v7 == v11)
  {
    v25 = *(v6 + 48);

    return v25(a1, v7, v5);
  }

  v27 = (a1 + v14) & ~v12;
  if (v10 == v11)
  {
    if (v9 >= 2)
    {
      v29 = (*(v8 + 48))(v27);
      if (v29 >= 2)
      {
        return v29 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v28 = *((v27 + v15 + 7) & 0xFFFFFFFFFFFFFFF8);
  if (v28 >= 0xFFFFFFFF)
  {
    LODWORD(v28) = -1;
  }

  return (v28 + 1);
}

_DWORD *sub_18E6F4D34(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a4 + 24) - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  v12 = *(v9 + 64);
  if (v10)
  {
    v13 = v10 - 1;
  }

  else
  {
    v13 = 0;
  }

  if (v13 <= v8)
  {
    v14 = *(v7 + 84);
  }

  else
  {
    v14 = v13;
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  v15 = *(*(v6 - 8) + 64) + v11;
  if (!v10)
  {
    ++v12;
  }

  v16 = ((v12 + v11) & ~v11) + v12;
  v17 = ((v16 + (v15 & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v14 < a3)
  {
    v18 = a3 - v14;
    if (((v16 + (v15 & ~v11) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v19 = v18 + 1;
    }

    else
    {
      v19 = 2;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    if (v19 >= 2)
    {
      v5 = v20;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v14)
  {
    if (((v16 + (v15 & ~v11) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v21 = a2 - v14;
    }

    else
    {
      v21 = 1;
    }

    if (((v16 + (v15 & ~v11) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v22 = ~v14 + a2;
      v23 = result;
      bzero(result, ((v16 + (v15 & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v23;
      *v23 = v22;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + v17) = v21;
      }

      else
      {
        *(result + v17) = v21;
      }
    }

    else if (v5)
    {
      *(result + v17) = v21;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + v17) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_41;
    }

    *(result + v17) = 0;
  }

  else if (v5)
  {
    *(result + v17) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_41;
  }

  if (!a2)
  {
    return result;
  }

LABEL_41:
  if (v8 == v14)
  {
    v24 = *(v7 + 56);

    return v24();
  }

  else
  {
    result = ((result + v15) & ~v11);
    if (v13 == v14)
    {
      v25 = *(v9 + 56);
      v26 = a2 + 1;

      return v25(result, v26);
    }

    else
    {
      v27 = ((result + v16 + 7) & 0xFFFFFFFFFFFFFFF8);
      if ((a2 & 0x80000000) != 0)
      {
        *v27 = a2 & 0x7FFFFFFF;
        v27[1] = 0;
      }

      else
      {
        *v27 = a2 - 1;
      }
    }
  }

  return result;
}

uint64_t sub_18E6F4FE8(uint64_t a1)
{
  result = sub_18E72B438();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *sub_18E6F5078(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  if (*(v6 + 84))
  {
    v7 = *(v6 + 64);
  }

  else
  {
    v7 = *(v6 + 64) + 1;
  }

  v8 = *(v6 + 80);
  v9 = ~v8;
  v10 = v7 + v8;
  if (v8 > 7 || (*(v6 + 80) & 0x100000) != 0 || ((v7 + v8) & ~v8) + v7 > 0x18)
  {
    v13 = *a2;
    *a1 = *a2;
    a1 = (v13 + ((v8 + 16) & v9));
  }

  else
  {
    v14 = *(v6 + 48);
    if (v14(a2, 1, v5))
    {
      memcpy(a1, a2, v7);
    }

    else
    {
      (*(v6 + 16))(a1, a2, v5);
      (*(v6 + 56))(a1, 0, 1, v5);
    }

    v15 = a1 + v10;
    v16 = a2 + v10;
    if (v14((v16 & v9), 1, v5))
    {
      memcpy((v15 & v9), (v16 & v9), v7);
    }

    else
    {
      (*(v6 + 16))(v15 & v9, v16 & v9, v5);
      (*(v6 + 56))(v15 & v9, 0, 1, v5);
    }
  }

  return a1;
}

uint64_t sub_18E6F5250(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v10 = *(v3 - 8);
  v4 = *(v10 + 48);
  if (!v4(a1, 1, v3))
  {
    (*(v10 + 8))(a1, v3);
  }

  v5 = *(v10 + 80);
  v6 = *(v10 + 64) + a1;
  if (!*(v10 + 84))
  {
    ++v6;
  }

  v7 = v6 + v5;
  result = (v4)((v6 + v5) & ~v5, 1, v3);
  if (!result)
  {
    v9 = *(v10 + 8);

    return v9(v7 & ~v5, v3);
  }

  return result;
}

char *sub_18E6F5384(char *a1, char *a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  if (v7(a2, 1, v5))
  {
    v8 = *(v6 + 84);
    v9 = *(v6 + 64);
    if (v8)
    {
      v10 = *(v6 + 64);
    }

    else
    {
      v10 = v9 + 1;
    }

    memcpy(a1, a2, v10);
  }

  else
  {
    (*(v6 + 16))(a1, a2, v5);
    (*(v6 + 56))(a1, 0, 1, v5);
    v8 = *(v6 + 84);
    v9 = *(v6 + 64);
  }

  if (v8)
  {
    v11 = v9;
  }

  else
  {
    v11 = v9 + 1;
  }

  v12 = *(v6 + 80);
  v13 = &a1[v11 + v12];
  v14 = &a2[v11 + v12];
  if (v7((v14 & ~v12), 1, v5))
  {
    memcpy((v13 & ~v12), (v14 & ~v12), v11);
  }

  else
  {
    (*(v6 + 16))(v13 & ~v12, v14 & ~v12, v5);
    (*(v6 + 56))(v13 & ~v12, 0, 1, v5);
  }

  return a1;
}

char *sub_18E6F5528(char *a1, char *a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  v8 = v7(a1, 1, v5);
  v9 = v7(a2, 1, v5);
  if (v8)
  {
    if (!v9)
    {
      (*(v6 + 16))(a1, a2, v5);
      (*(v6 + 56))(a1, 0, 1, v5);
      goto LABEL_12;
    }

    v10 = *(v6 + 84);
    v11 = *(v6 + 64);
  }

  else
  {
    if (!v9)
    {
      (*(v6 + 24))(a1, a2, v5);
      goto LABEL_12;
    }

    (*(v6 + 8))(a1, v5);
    v10 = *(v6 + 84);
    v11 = *(v6 + 64);
  }

  if (v10)
  {
    v12 = v11;
  }

  else
  {
    v12 = v11 + 1;
  }

  memcpy(a1, a2, v12);
LABEL_12:
  if (*(v6 + 84))
  {
    v13 = *(v6 + 64);
  }

  else
  {
    v13 = *(v6 + 64) + 1;
  }

  v14 = *(v6 + 80);
  v15 = &a1[v13 + v14];
  v16 = &a2[v13 + v14];
  v17 = v7((v15 & ~v14), 1, v5);
  v18 = v7((v16 & ~v14), 1, v5);
  if (!v17)
  {
    if (!v18)
    {
      (*(v6 + 24))(v15 & ~v14, v16 & ~v14, v5);
      return a1;
    }

    (*(v6 + 8))(v15 & ~v14, v5);
    goto LABEL_20;
  }

  if (v18)
  {
LABEL_20:
    memcpy((v15 & ~v14), (v16 & ~v14), v13);
    return a1;
  }

  (*(v6 + 16))(v15 & ~v14, v16 & ~v14, v5);
  (*(v6 + 56))(v15 & ~v14, 0, 1, v5);
  return a1;
}

char *sub_18E6F5794(char *a1, char *a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  if (v7(a2, 1, v5))
  {
    v8 = *(v6 + 84);
    v9 = *(v6 + 64);
    if (v8)
    {
      v10 = *(v6 + 64);
    }

    else
    {
      v10 = v9 + 1;
    }

    memcpy(a1, a2, v10);
  }

  else
  {
    (*(v6 + 32))(a1, a2, v5);
    (*(v6 + 56))(a1, 0, 1, v5);
    v8 = *(v6 + 84);
    v9 = *(v6 + 64);
  }

  if (v8)
  {
    v11 = v9;
  }

  else
  {
    v11 = v9 + 1;
  }

  v12 = *(v6 + 80);
  v13 = &a1[v11 + v12];
  v14 = &a2[v11 + v12];
  if (v7((v14 & ~v12), 1, v5))
  {
    memcpy((v13 & ~v12), (v14 & ~v12), v11);
  }

  else
  {
    (*(v6 + 32))(v13 & ~v12, v14 & ~v12, v5);
    (*(v6 + 56))(v13 & ~v12, 0, 1, v5);
  }

  return a1;
}

char *sub_18E6F5938(char *a1, char *a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  v8 = v7(a1, 1, v5);
  v9 = v7(a2, 1, v5);
  if (v8)
  {
    if (!v9)
    {
      (*(v6 + 32))(a1, a2, v5);
      (*(v6 + 56))(a1, 0, 1, v5);
      goto LABEL_12;
    }

    v10 = *(v6 + 84);
    v11 = *(v6 + 64);
  }

  else
  {
    if (!v9)
    {
      (*(v6 + 40))(a1, a2, v5);
      goto LABEL_12;
    }

    (*(v6 + 8))(a1, v5);
    v10 = *(v6 + 84);
    v11 = *(v6 + 64);
  }

  if (v10)
  {
    v12 = v11;
  }

  else
  {
    v12 = v11 + 1;
  }

  memcpy(a1, a2, v12);
LABEL_12:
  if (*(v6 + 84))
  {
    v13 = *(v6 + 64);
  }

  else
  {
    v13 = *(v6 + 64) + 1;
  }

  v14 = *(v6 + 80);
  v15 = &a1[v13 + v14];
  v16 = &a2[v13 + v14];
  v17 = v7((v15 & ~v14), 1, v5);
  v18 = v7((v16 & ~v14), 1, v5);
  if (!v17)
  {
    if (!v18)
    {
      (*(v6 + 40))(v15 & ~v14, v16 & ~v14, v5);
      return a1;
    }

    (*(v6 + 8))(v15 & ~v14, v5);
    goto LABEL_20;
  }

  if (v18)
  {
LABEL_20:
    memcpy((v15 & ~v14), (v16 & ~v14), v13);
    return a1;
  }

  (*(v6 + 32))(v15 & ~v14, v16 & ~v14, v5);
  (*(v6 + 56))(v15 & ~v14, 0, 1, v5);
  return a1;
}

uint64_t sub_18E6F5BA4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 24) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = ((v7 + *(v4 + 80)) & ~*(v4 + 80)) + v7;
    v10 = 8 * v9;
    if (v9 > 3)
    {
      goto LABEL_8;
    }

    v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v12))
    {
      v11 = *(a1 + v9);
      if (v11)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v12 <= 0xFF)
      {
        if (v12 < 2)
        {
          goto LABEL_26;
        }

LABEL_8:
        v11 = *(a1 + v9);
        if (!*(a1 + v9))
        {
          goto LABEL_26;
        }

LABEL_15:
        v13 = (v11 - 1) << v10;
        if (v9 > 3)
        {
          v13 = 0;
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

        return v6 + (v9 | v13) + 1;
      }

      v11 = *(a1 + v9);
      if (*(a1 + v9))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_26:
  if (v5 < 2)
  {
    return 0;
  }

  v15 = (*(v4 + 48))(a1, v5);
  if (v15 >= 2)
  {
    return v15 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_18E6F5D2C(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  v9 = v7 - 1;
  if (!v7)
  {
    v9 = 0;
    ++v8;
  }

  v10 = ((v8 + *(v6 + 80)) & ~*(v6 + 80)) + v8;
  v11 = a3 >= v9;
  v12 = a3 - v9;
  if (v12 == 0 || !v11)
  {
LABEL_15:
    if (v9 < a2)
    {
      goto LABEL_16;
    }

    goto LABEL_25;
  }

  if (v10 > 3)
  {
    v5 = 1;
    if (v9 < a2)
    {
      goto LABEL_16;
    }

    goto LABEL_25;
  }

  v13 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
  if (!HIWORD(v13))
  {
    if (v13 < 0x100)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    if (v13 >= 2)
    {
      v5 = v14;
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_15;
  }

  v5 = 4;
  if (v9 < a2)
  {
LABEL_16:
    v15 = ~v9 + a2;
    if (v10 < 4)
    {
      v17 = (v15 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v15 & ~(-1 << (8 * v10));
        v19 = result;
        bzero(result, v10);
        result = v19;
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *v19 = v18;
            if (v5 > 1)
            {
LABEL_43:
              if (v5 == 2)
              {
                *&result[v10] = v17;
              }

              else
              {
                *&result[v10] = v17;
              }

              return result;
            }
          }

          else
          {
            *v19 = v15;
            if (v5 > 1)
            {
              goto LABEL_43;
            }
          }

          goto LABEL_40;
        }

        *v19 = v18;
        v19[2] = BYTE2(v18);
      }

      if (v5 > 1)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v16 = result;
      bzero(result, v10);
      result = v16;
      *v16 = v15;
      v17 = 1;
      if (v5 > 1)
      {
        goto LABEL_43;
      }
    }

LABEL_40:
    if (v5)
    {
      result[v10] = v17;
    }

    return result;
  }

LABEL_25:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v10] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_32;
    }

    *&result[v10] = 0;
  }

  else if (v5)
  {
    result[v10] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_32;
  }

  if (!a2)
  {
    return result;
  }

LABEL_32:
  if (v7 >= 2)
  {
    v20 = *(v6 + 56);

    return v20();
  }

  return result;
}

uint64_t sub_18E6F5F68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = type metadata accessor for ValueTracker(0, a4, a5, a6);
  sub_18E6F615C(a4, a5, a6, a7 + *(v14 + 44));
  result = (*(*(a4 - 8) + 32))(a7, a1, a4);
  v16 = (a7 + *(v14 + 48));
  *v16 = a2;
  v16[1] = a3;
  return result;
}

uint64_t sub_18E6F6028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, v9, a1);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return sub_18E6F5F68(v7, sub_18E6F7130, v10, a1, AssociatedTypeWitness, a2, a3);
}

uint64_t sub_18E6F615C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v10 = *(*(a2 - 8) + 56);
  (v10)((a2 - 8), a4, 1, 1, a2);
  v8 = a4 + *(type metadata accessor for ValueTracker.State(0, a1, a2, a3) + 44);

  return v10(v8, 1, 1, a2);
}

uint64_t sub_18E6F622C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_18E6C8EBC(a1, WitnessTable);
}

uint64_t sub_18E6F6280(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_18E6C8EC0(a1, WitnessTable);
}

uint64_t sub_18E6F6300@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = a4;
  v60 = a2;
  v73 = a1;
  v61 = a5;
  v7 = *(a4 + 24);
  v62 = type metadata accessor for TrackedValue(0, v7, a3, a4);
  v59 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v58 = &v53 - v8;
  v9 = sub_18E72B438();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v63 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v55 = &v53 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v67 = &v53 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v71 = &v53 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v53 - v20;
  v75 = *(v7 - 8);
  v22 = v75;
  v23 = MEMORY[0x1EEE9AC00](v19);
  v70 = &v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v53 - v25;
  (*(v5 + *(v6 + 48)))(v73);
  v66 = v6;
  v27 = (v5 + *(v6 + 44));
  v72 = *(v10 + 16);
  v73 = v10 + 16;
  v72(v21, v27, v9);
  v57 = v22;
  v65 = *(v22 + 48);
  LODWORD(v6) = v65(v21, 1, v7);
  v28 = v21;
  v29 = *(v10 + 8);
  v29(v28, v9);
  v68 = v29;
  v69 = v10 + 8;
  v64 = v22 + 48;
  if (v6 == 1)
  {
    v29(v27, v9);
    v30 = v75;
    v31 = *(v75 + 16);
    v31(v27, v26, v7);
    (*(v30 + 56))(v27, 0, 1, v7);
  }

  else
  {
    v31 = *(v75 + 16);
  }

  v56 = v26;
  v31(v70, v26, v7);
  v66 = *(type metadata accessor for ValueTracker.State(0, *(v66 + 16), v7, *(v66 + 32)) + 44);
  v32 = &v27[v66];
  v33 = v67;
  v34 = v9;
  v35 = v9;
  v36 = v27;
  v37 = v72;
  v72(v67, v32, v34);
  v38 = v65;
  v39 = v65(v33, 1, v7);
  v40 = v71;
  if (v39 == 1)
  {
    v41 = v55;
    v53 = v36;
    v54 = v35;
    v37(v55, v36, v35);
    result = v38(v41, 1, v7);
    if (result == 1)
    {
      goto LABEL_14;
    }

    v43 = v75;
    v55 = *(v75 + 32);
    (v55)(v71, v41, v7);
    if (v38(v33, 1, v7) == 1)
    {
      v35 = v54;
    }

    else
    {
      v46 = v54;
      v68(v33, v54);
      v35 = v46;
    }

    v44 = v53;
    v45 = v71;
  }

  else
  {
    v43 = v75;
    v55 = *(v75 + 32);
    (v55)(v71, v33, v7);
    v44 = v36;
    v45 = v40;
  }

  v47 = *(v43 + 56);
  v47(v45, 0, 1, v7);
  v48 = v63;
  v72(v63, v44, v35);
  result = v38(v48, 1, v7);
  if (result != 1)
  {
    v49 = v35;
    v50 = v58;
    sub_18E6F6974(v70, v45, v48, v7, v58);
    v51 = v66;
    v68(&v44[v66], v49);
    (v55)(&v44[v51], v56, v7);
    v47(&v44[v51], 0, 1, v7);
    memset(v74, 0, 32);
    v52 = v62;
    sub_18E6FEC1C(v50, v74, v62, v61);
    return (*(v59 + 8))(v50, v52);
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_18E6F6974@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v16 = *(*(a4 - 8) + 32);
  v16(a5, a1, a4);
  v11 = type metadata accessor for TrackedValue(0, a4, v9, v10);
  v12 = *(v11 + 28);
  v13 = sub_18E72B438();
  (*(*(v13 - 8) + 32))(a5 + v12, a2, v13);
  v14 = a5 + *(v11 + 32);

  return (v16)(v14, a3, a4);
}

uint64_t sub_18E6F6A8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  v5 = type metadata accessor for ValueTracker.State(0, *(a1 + 16), *(a1 + 24), *(a1 + 32));
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_18E6F6B08(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 44);
  v5 = type metadata accessor for ValueTracker.State(0, *(a2 + 16), *(a2 + 24), *(a2 + 32));
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_18E6F6B94(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18E6F6BD0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_18E6C8EBC(a1, WitnessTable);
}

uint64_t sub_18E6F6C24(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_18E6C8EC0(a1, WitnessTable);
}

uint64_t sub_18E6F6CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_18E72B438();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v42 = &v33 - v13;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v41 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v16 = &v33 - v15;
  if ((sub_18E72AFB8() & 1) == 0)
  {
    goto LABEL_8;
  }

  v34 = v10;
  v40 = a4;
  v19 = type metadata accessor for TrackedValue(0, a3, v17, v18);
  v20 = a1;
  v35 = v19;
  v36 = a1;
  v21 = *(v19 + 28);
  v22 = *(TupleTypeMetadata2 + 48);
  v38 = v12;
  v23 = *(v12 + 16);
  v23(v16, v20 + v21, v11);
  v37 = a2;
  v23(&v16[v22], a2 + v21, v11);
  v39 = v8;
  v24 = *(v8 + 48);
  if (v24(v16, 1, a3) == 1)
  {
    if (v24(&v16[v22], 1, a3) == 1)
    {
      (*(v38 + 8))(v16, v11);
LABEL_11:
      v26 = sub_18E72AFB8();
      return v26 & 1;
    }

    goto LABEL_7;
  }

  v25 = v42;
  v23(v42, v16, v11);
  if (v24(&v16[v22], 1, a3) == 1)
  {
    (*(v39 + 8))(v25, a3);
LABEL_7:
    (*(v41 + 8))(v16, TupleTypeMetadata2);
    goto LABEL_8;
  }

  v28 = v39;
  v29 = &v16[v22];
  v30 = v34;
  (*(v39 + 32))(v34, v29, a3);
  v31 = sub_18E72AFB8();
  v32 = *(v28 + 8);
  v32(v30, a3);
  v32(v25, a3);
  (*(v38 + 8))(v16, v11);
  if (v31)
  {
    goto LABEL_11;
  }

LABEL_8:
  v26 = 0;
  return v26 & 1;
}

double sub_18E6F70A4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *(a1 + 16);
  v5 = v3(v4);
  return v5 - (v3)(v4, a2);
}

uint64_t sub_18E6F7130@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 16);

  return v5(a2, a1, AssociatedTypeWitness);
}

void sub_18E6F71BC()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 56);
    v3 = *(v0 + 24);

    v4 = sub_18E6F9190(v3, v1, v2, 0, 0xE000000000000000, 0, 0xE000000000000000);
    v6 = v5;

    if (qword_1EAC8D8F0 != -1)
    {
      swift_once();
    }

    v7 = sub_18E72AE18();
    __swift_project_value_buffer(v7, qword_1EAC99288);

    oslog = sub_18E72ADF8();
    v8 = sub_18E72B3D8();

    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v13 = v10;
      *v9 = 136315138;
      v11 = sub_18E6C5E8C(v4, v6, &v13);

      *(v9 + 4) = v11;
      _os_log_impl(&dword_18E67C000, oslog, v8, "%s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x193AD25C0](v10, -1, -1);
      MEMORY[0x193AD25C0](v9, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_18E6F7398()
{
  if (*(v0 + 16))
  {
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
    *(v0 + 32) = 0;

    *(v0 + 40) = MEMORY[0x1E69E7CC0];

    v1 = MEMORY[0x1E69E7CC8];
    *(v0 + 48) = MEMORY[0x1E69E7CC8];

    *(v0 + 56) = v1;
  }

  return result;
}

uint64_t GestureComponent.tracingUpdate(context:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v34 = a2;
  v35 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for GestureOutput(255, AssociatedTypeWitness, v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EAC8E2E8, &qword_18E72DA00);
  v29 = v9;
  v10 = sub_18E72B928();
  v32 = *(v10 - 8);
  v33 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v31 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v30 = &v28 - v13;
  v15 = *a1;
  v14 = a1[1];
  v17 = a1[2];
  v16 = a1[3];
  v19 = a1[4];
  v18 = a1[5];
  v20 = a1[6];
  if (v18)
  {
    v28 = a4;

    sub_18E6F77F0();
    v36 = v15;
    v37 = v14;
    v38 = v17;
    v39 = v16;
    v40 = v19;
    v41 = v18;
    v42 = v20;
    v21 = v30;
    v23 = v34;
    v22 = v35;
    sub_18E72246C(&v36, v34, v35);
    sub_18E6F7A98(v21, v23, v22, &v43);
    sub_18E6F7F88(&v43);

    v24 = v31;
    v25 = v32;
    v26 = v33;
    (*(v32 + 16))(v31, v21, v33);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      swift_willThrow();

      return (*(v25 + 8))(v21, v26);
    }

    else
    {
      (*(v25 + 8))(v21, v26);

      return (*(*(v29 - 8) + 32))(v28, v24);
    }
  }

  else
  {
    v36 = *a1;
    v37 = v14;
    v38 = v17;
    v39 = v16;
    v40 = v19;
    v41 = 0;
    v42 = v20;
    return (*(v35 + 16))(&v36, v34);
  }
}

void sub_18E6F76F8()
{
  if (qword_1ED6F7FC8 != -1)
  {
    swift_once();
  }

  if (byte_1ED6F9348 == 1)
  {
    v0 = getenv("GESTURES_UPDATE_TRACING_ENABLED");
    if (v0 && atoi(v0))
    {
      v1 = 1;
    }

    else
    {
      v2 = [objc_opt_self() standardUserDefaults];
      v3 = sub_18E72AFC8();
      v1 = [v2 BOOLForKey_];
    }
  }

  else
  {
    v1 = 0;
  }

  byte_1EAC8F030 = v1;
}

uint64_t sub_18E6F77F0()
{
  v2 = v0;
  v3 = *(v0 + 16) + 1;
  *(v0 + 16) = v3;
  v4 = *(v0 + 32);
  if (v4)
  {
    v5 = *(v0 + 40);
    v8 = *(v5 + 16);
    v6 = v5 + 16;
    v7 = v8;
    if (v8)
    {
      v9 = *(v0 + 24);
      v10 = *(v6 + 16 * v7);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = *(v0 + 48);
      v35 = *(v2 + 48);
      *(v2 + 48) = 0x8000000000000000;
      v14 = sub_18E6EB564(v10);
      v15 = *(v12 + 2);
      v16 = (v13 & 1) == 0;
      v17 = v15 + v16;
      if (__OFADD__(v15, v16))
      {
        __break(1u);
      }

      else
      {
        v18 = v13;
        if (*(v12 + 3) >= v17)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_18E70CE7C();
            v12 = v35;
          }
        }

        else
        {
          sub_18E70B4EC(v17, isUniquelyReferenced_nonNull_native);
          v12 = v35;
          v19 = sub_18E6EB564(v10);
          if ((v18 & 1) != (v20 & 1))
          {
            result = sub_18E72B818();
            __break(1u);
            return result;
          }

          v14 = v19;
        }

        *(v2 + 48) = v12;

        v22 = *(v2 + 48);
        if ((v18 & 1) == 0)
        {
          sub_18E6B77F0(v14, v10, MEMORY[0x1E69E7CC0], *(v2 + 48));
        }

        v1 = *(v22 + 56);
        v12 = *(v1 + 8 * v14);
        v23 = swift_isUniquelyReferenced_nonNull_native();
        *(v1 + 8 * v14) = v12;
        if (v23)
        {
          goto LABEL_13;
        }
      }

      v12 = sub_18E6EDC4C(0, *(v12 + 2) + 1, 1, v12);
      *(v1 + 8 * v14) = v12;
LABEL_13:
      v25 = *(v12 + 2);
      v24 = *(v12 + 3);
      if (v25 >= v24 >> 1)
      {
        *(v1 + 8 * v14) = sub_18E6EDC4C((v24 > 1), v25 + 1, 1, v12);
      }

      v26 = *(v1 + 8 * v14);
      *(v26 + 16) = v25 + 1;
      v27 = v26 + 16 * v25;
      *(v27 + 32) = v9;
      *(v27 + 40) = v4;
      *(v2 + 24) = 0;
      *(v2 + 32) = 0;

      v3 = *(v2 + 16);
      v21 = sub_18E6F8C80;
      goto LABEL_16;
    }
  }

  v21 = 0;
LABEL_16:
  v28 = *(v2 + 40);
  v29 = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 40) = v28;
  if ((v29 & 1) == 0)
  {
    v28 = sub_18E6EDC4C(0, *(v28 + 2) + 1, 1, v28);
    *(v2 + 40) = v28;
  }

  v30 = MEMORY[0x1E69E7CC0];
  v32 = *(v28 + 2);
  v31 = *(v28 + 3);
  if (v32 >= v31 >> 1)
  {
    v28 = sub_18E6EDC4C((v31 > 1), v32 + 1, 1, v28);
  }

  *(v28 + 2) = v32 + 1;
  v33 = &v28[16 * v32];
  *(v33 + 16) = v3;
  *(v33 + 5) = v30;
  *(v2 + 40) = v28;

  return sub_18E6826D0(v21, 0);
}

uint64_t sub_18E6F7A98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v42 = a1;
  v39 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for GestureOutput(255, AssociatedTypeWitness, v8, v9);
  v41 = sub_18E72B438();
  v38 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v37 = v33 - v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EAC8E2E8, &qword_18E72DA00);
  v40 = v10;
  v12 = sub_18E72B928();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v36 = v33 - v15;
  v16 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_18E72B9C8();
  v21 = v20;
  (*(v16 + 16))(v18, v4, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8F040, &qword_18E72FB78);
  if (swift_dynamicCast())
  {
    sub_18E689D58(&v44, v47);
    v22 = v48;
    v23 = v49;
    v33[1] = __swift_project_boxed_opaque_existential_1(v47, v48);
    v34 = v21;
    v35 = *(v23 + 32);
    *(&v45 + 1) = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_0(&v44);
    (v35)(v22, v23);
    v21 = v34;
    sub_18E69379C(&v44, v43);
    v24 = swift_allocObject();
    sub_18E689D58(v43, v24 + 16);
    __swift_destroy_boxed_opaque_existential_0(&v44);
    __swift_destroy_boxed_opaque_existential_0(v47);
    v25 = sub_18E6F9C00;
  }

  else
  {
    AssociatedConformanceWitness = 0;
    v44 = 0u;
    v45 = 0u;
    sub_18E6F9A98(&v44);
    v24 = 0;
    v25 = sub_18E6F8134;
  }

  v35 = v25;
  v26 = swift_allocObject();
  *(v26 + 16) = v19;
  *(v26 + 24) = v21;
  v27 = v36;
  (*(v13 + 16))(v36, v42, v12);
  v28 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v29 = swift_allocObject();
  v30 = v39;
  *(v29 + 16) = a2;
  *(v29 + 24) = v30;
  (*(v13 + 32))(v29 + v28, v27, v12);
  v31 = v37;
  sub_18E6FBFA4(v12, v37);
  LOBYTE(v28) = (*(*(v40 - 8) + 48))(v31, 1) != 1;
  result = (*(v38 + 8))(v31, v41);
  *a4 = sub_18E6F9B00;
  *(a4 + 8) = v26;
  *(a4 + 16) = sub_18E6F9B30;
  *(a4 + 24) = v29;
  *(a4 + 32) = v35;
  *(a4 + 40) = v24;
  *(a4 + 48) = v28;
  return result;
}

uint64_t sub_18E6F7F88(void *a1)
{
  v6 = v1;
  v7 = *(v1 + 40);
  if (*(v7 + 2))
  {
    v4 = a1;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v8 = *(v7 + 2);
      if (v8)
      {
        goto LABEL_4;
      }

LABEL_16:
      __break(1u);
LABEL_17:
      v3 = sub_18E6EDC4C(0, *(v3 + 2) + 1, 1, v3);
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  v7 = sub_18E6F074C(v7);
  v8 = *(v7 + 2);
  if (!v8)
  {
    goto LABEL_16;
  }

LABEL_4:
  v9 = v8 - 1;
  v10 = &v7[16 * v9];
  v11 = *(v10 + 16);
  v2 = v11;
  v3 = *(v10 + 5);
  *(v7 + 2) = v9;
  *(v6 + 40) = v7;
  v19 = v3;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(v6 + 56);
  *(v6 + 56) = 0x8000000000000000;
  sub_18E6B1C98(v4, v11, isUniquelyReferenced_nonNull_native);
  *(v6 + 56) = v18;
  v7 = *(v6 + 32);
  if (!v7)
  {
    goto LABEL_9;
  }

  v5 = *(v6 + 24);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_6:
  v14 = *(v3 + 2);
  v13 = *(v3 + 3);
  if (v14 >= v13 >> 1)
  {
    v3 = sub_18E6EDC4C((v13 > 1), v14 + 1, 1, v3);
  }

  *(v3 + 2) = v14 + 1;
  v15 = &v3[16 * v14];
  *(v15 + 16) = v5;
  *(v15 + 5) = v7;
  v19 = v3;
LABEL_9:
  v16 = sub_18E6F999C(v2);
  if (v16)
  {
    sub_18E701264(v16);
    v3 = v19;
  }

  *(v6 + 24) = v2;
  *(v6 + 32) = v3;
}

uint64_t sub_18E6F8140(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_18E72B798();
  return 0;
}

uint64_t sub_18E6F8188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for GestureOutput(255, AssociatedTypeWitness, v4, v5);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EAC8E2E8, &qword_18E72DA00);
  v6 = sub_18E72B928();
  return sub_18E6F820C(v6);
}

uint64_t sub_18E6F820C(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](a1);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v3 + 16);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v3);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v2 + 32))(v5, v12, v1);
    v16[0] = 0;
    v16[1] = 0xE000000000000000;
    sub_18E72B798();
    v14 = v16[0];
    (*(v2 + 8))(v5, v1);
  }

  else
  {
    (*(v7 + 32))(v10, v12, v6);
    v14 = sub_18E6F8474(v6);
    (*(v7 + 8))(v10, v6);
  }

  return v14;
}

uint64_t sub_18E6F8474(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = v51 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v2, a1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v51[1] = v2;
    if (EnumCaseMultiPayload == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAC8DDE8, &unk_18E72CEA0);
      v16 = &v13[*(swift_getTupleTypeMetadata2() + 48)];
      v17 = *v16;
      v18 = *(v16 + 1);
      v19 = *(v16 + 2);
      v20 = *(v16 + 3);
      (*(v5 + 32))(v11, v13, v4);
      v21 = 0xE000000000000000;
      v55 = 0;
      v56 = 0xE000000000000000;
      sub_18E72B798();
      if (v17)
      {
        *&v52 = v17;
        *(&v52 + 1) = v18;
        v53 = v19;
        v54 = v20;
        v23 = sub_18E6F893C(v22);
        v21 = v24;
      }

      else
      {
        v23 = 0;
      }

      MEMORY[0x193AD15C0](v23, v21);

      v43 = v55;
      v42 = v56;
      (*(v5 + 8))(v11, v4);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAC8DDE8, &unk_18E72CEA0);
      v34 = &v13[*(swift_getTupleTypeMetadata2() + 48)];
      v35 = *v34;
      v36 = v34[1];
      v38 = v34[2];
      v37 = v34[3];
      (*(v5 + 32))(v8, v13, v4);
      v39 = 0xE000000000000000;
      v55 = 0;
      v56 = 0xE000000000000000;
      sub_18E72B798();
      if (v35)
      {
        *&v52 = v35;
        *(&v52 + 1) = v36;
        v53 = v38;
        v54 = v37;
        v35 = sub_18E6F893C(v40);
        v39 = v41;
      }

      MEMORY[0x193AD15C0](v35, v39);

      MEMORY[0x193AD15C0](0x296C616E69662820, 0xE800000000000000);
      v43 = v55;
      v42 = v56;
      (*(v5 + 8))(v8, v4);
    }
  }

  else
  {
    v25 = *v13;
    v26 = *(v13 + 1);
    v27 = *(v13 + 2);
    v29 = *(v13 + 3);
    v28 = *(v13 + 4);
    v30 = 0xE000000000000000;
    v55 = 0;
    v56 = 0xE000000000000000;
    LOBYTE(v52) = v25;
    sub_18E72B6C8();
    if (v26)
    {
      *&v52 = v26;
      *(&v52 + 1) = v27;
      v53 = v29;
      v54 = v28;
      v32 = sub_18E6F893C(v31);
      v30 = v33;
    }

    else
    {
      v32 = 0;
    }

    MEMORY[0x193AD15C0](v32, v30);

    v43 = v55;
    v42 = v56;
  }

  sub_18E6FED28(a1, &v52);
  v44 = v52;
  if (v52)
  {
    v46 = v53;
    v45 = v54;
    v47 = *(&v52 + 1);

    sub_18E6AF804(v44, v47, v46, v45);
    if (v45)
    {
      v48 = HIBYTE(v45) & 0xF;
      if ((v45 & 0x2000000000000000) == 0)
      {
        v48 = v46 & 0xFFFFFFFFFFFFLL;
      }

      if (v48)
      {
        *&v52 = 10272;
        *(&v52 + 1) = 0xE200000000000000;
        MEMORY[0x193AD15C0](v46, v45);

        MEMORY[0x193AD15C0](41, 0xE100000000000000);
        v49 = v52;
        *&v52 = v43;
        *(&v52 + 1) = v42;

        MEMORY[0x193AD15C0](v49, *(&v49 + 1));

        return v52;
      }

      else
      {
      }
    }
  }

  return v43;
}

uint64_t sub_18E6F893C(__n128 a1)
{
  v2 = v1[1];
  if (*(*v1 + 16))
  {
    sub_18E72B5C8();
    v3 = sub_18E72B778();
    v5 = v4;

    MEMORY[0x193AD15C0](0xD000000000000016, 0x800000018E73AAB0);
    v6 = sub_18E6ED4A8(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v8 = *(v6 + 2);
    v7 = *(v6 + 3);
    if (v8 >= v7 >> 1)
    {
      v6 = sub_18E6ED4A8((v7 > 1), v8 + 1, 1, v6);
    }

    *(v6 + 2) = v8 + 1;
    v9 = &v6[16 * v8];
    *(v9 + 4) = v3;
    *(v9 + 5) = v5;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  v10 = 0x7461646174654D0ALL;
  if (*(v2 + 16))
  {
    sub_18E72B5C8();
    v11 = sub_18E72B778();
    v13 = v12;

    MEMORY[0x193AD15C0](0xD000000000000014, 0x800000018E73AAD0);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_18E6ED4A8(0, *(v6 + 2) + 1, 1, v6);
    }

    v15 = *(v6 + 2);
    v14 = *(v6 + 3);
    if (v15 >= v14 >> 1)
    {
      v6 = sub_18E6ED4A8((v14 > 1), v15 + 1, 1, v6);
    }

    *(v6 + 2) = v15 + 1;
    v16 = &v6[16 * v15];
    *(v16 + 4) = v11;
    *(v16 + 5) = v13;
  }

  else if (!*(v6 + 2))
  {
    v10 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAC8DCF8, &qword_18E72CEB0);
  sub_18E6A9E68();
  v17 = sub_18E72AF58();
  v19 = v18;

  MEMORY[0x193AD15C0](v17, v19);

  return v10;
}

uint64_t sub_18E6F8BE8()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 40) = MEMORY[0x1E69E7CC0];
  *(v0 + 48) = sub_18E6D4A40(v1);
  *(v0 + 56) = sub_18E6D4B50(v1);
  if (qword_1EAC8D958 != -1)
  {
    swift_once();
  }

  if (byte_1EAC8F030 != 1)
  {

    return 0;
  }

  return v0;
}

uint64_t sub_18E6F8C90()
{

  return MEMORY[0x1EEE6BDC0](v0, 64, 7);
}

uint64_t destroy for TraceDataSnapshot(void *a1)
{
}

uint64_t initializeWithCopy for TraceDataSnapshot(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 40);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = v3;
  *(a1 + 48) = *(a2 + 48);

  return a1;
}

uint64_t assignWithCopy for TraceDataSnapshot(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;

  v6 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v6;

  *(a1 + 48) = *(a2 + 48);
  return a1;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t assignWithTake for TraceDataSnapshot(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t getEnumTagSinglePayload for TraceDataSnapshot(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t storeEnumTagSinglePayload for TraceDataSnapshot(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t assignWithCopy for Trace(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t assignWithTake for Trace(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t sub_18E6F8FFC()
{
  v1 = *(v0 + 8);
  sub_18E72B888();
  sub_18E72B8B8();
  sub_18E6F9A24(v3, v1);
  return sub_18E72B8E8();
}

uint64_t sub_18E6F905C(uint64_t a1)
{
  v3 = *(v1 + 8);
  sub_18E72B8B8();

  return sub_18E6F9A24(a1, v3);
}

uint64_t sub_18E6F90AC(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_18E72B888();
  sub_18E72B8B8();
  sub_18E6F9A24(v4, v2);
  return sub_18E72B8E8();
}

uint64_t sub_18E6F9108(unsigned __int16 *a1, unsigned __int16 *a2)
{
  if (*a1 == *a2)
  {
    return sub_18E6F951C(*(a1 + 1), *(a2 + 1));
  }

  else
  {
    return 0;
  }
}

unint64_t sub_18E6F9130()
{
  result = qword_1EAC8F038;
  if (!qword_1EAC8F038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8F038);
  }

  return result;
}

uint64_t sub_18E6F9190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (*(a3 + 16) && (v10 = sub_18E6EB564(a1), (v11 & 1) != 0))
  {
    v12 = *(a3 + 56) + 56 * v10;
    v13 = *v12;
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);
    v16 = *(v12 + 24);
    v18 = *(v12 + 32);
    v17 = *(v12 + 40);
    v19 = *(v12 + 48);
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v18 = 0;
    v17 = 0;
    v19 = 0;
  }

  v54[0] = v13;
  v54[1] = v14;
  v54[2] = v15;
  v54[3] = v16;
  v54[4] = v18;
  v54[5] = v17;
  v55 = v19;
  v20 = sub_18E6F9CB8(v54);
  v21 = v13;
  v22 = v20;
  v23 = v18;
  v25 = v24;
  v26 = v14;
  v28 = v27;
  v29 = v15;
  v31 = v30;
  sub_18E6F9F4C(v21, v26, v29, v16, v23, v17);
  v32 = sub_18E6F9F9C(v22, v25, a6, a7, 1);
  v34 = v33;

  v35 = sub_18E6F9F9C(v28, v31, a6, a7, 0);
  v37 = v36;

  v53 = a4;

  MEMORY[0x193AD15C0](v32, v34);

  MEMORY[0x193AD15C0](10, 0xE100000000000000);
  MEMORY[0x193AD15C0](v35, v37);

  MEMORY[0x193AD15C0](10, 0xE100000000000000);
  result = a4;
  v39 = *(a2 + 16);
  if (v39)
  {

    MEMORY[0x193AD15C0](177309410, 0xA400000000000000);
    v50 = a6;
    MEMORY[0x193AD15C0](a6, a7);
    MEMORY[0x193AD15C0](176329954, 0xA400000000000000);
    MEMORY[0x193AD15C0](a6, a7);

    v40 = (a2 + 40);
    do
    {
      v41 = *v40;
      v52 = *(v40 - 4);

      if (v39 == 1)
      {
        v42 = 0x94E28094E29494E2;
      }

      else
      {
        v42 = 0x94E28094E29C94E2;
      }

      if (v39 == 1)
      {
        v43 = 538976288;
      }

      else
      {
        v43 = 0x2020208294E2;
      }

      if (v39 == 1)
      {
        v44 = 0xE400000000000000;
      }

      else
      {
        v44 = 0xA600000000000000;
      }

      MEMORY[0x193AD15C0](v42, 0xAA00000000002080);

      MEMORY[0x193AD15C0](v43, v44);

      v45 = sub_18E6F9190(v52, v41, a3, v50, a7, v50, a7);
      v47 = v46;

      MEMORY[0x193AD15C0](v45, v47);

      if (v39 != 1)
      {

        MEMORY[0x193AD15C0](176329954, 0xA400000000000000);
        MEMORY[0x193AD15C0](v50, a7);
      }

      v40 += 2;
      --v39;
    }

    while (v39);
    return v53;
  }

  return result;
}

uint64_t sub_18E6F951C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); *(v3 - 4) == *(i - 4); i += 2)
    {
      v5 = *v3;
      v6 = *i;

      v7 = sub_18E6F951C(v5, v6);

      if ((v7 & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

unint64_t sub_18E6F95DC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v7 = sub_18E72B0B8();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_18E6EDF74(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_18E6EDF74((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x1E69E7CC0];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_18E72B0A8();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_18E72B038();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_18E72B038();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_18E72B0B8();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_18E6EDF74(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_18E72B0B8();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_18E6EDF74(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_18E6EDF74((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_18E72B038();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18E6F999C(uint64_t a1)
{
  v2 = v1;
  v3 = sub_18E6EB564(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v11 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_18E70CE7C();
    v7 = v11;
  }

  v8 = v5;
  v9 = *(*(v7 + 56) + 8 * v5);
  sub_18E6BC884(v8, v7);
  *v2 = v7;
  return v9;
}

uint64_t sub_18E6F9A24(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x193AD1DF0](v4);
  if (v4)
  {
    v6 = (a2 + 40);
    do
    {
      v7 = *v6;
      sub_18E72B8B8();

      sub_18E6F9A24(a1, v7);

      v6 += 2;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_18E6F9A98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8F048, &qword_18E72FB80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18E6F9B00()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_18E6F9B30()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for GestureOutput(255, AssociatedTypeWitness, v4, v5);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EAC8E2E8, &qword_18E72DA00);
  v6 = *(sub_18E72B928() - 8);
  v7 = v0 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

  return sub_18E6F8188(v7, v1, v2);
}

unint64_t sub_18E6F9C08(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_18E72B048();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_18E72B0B8();
}

uint64_t sub_18E6F9CB8(uint64_t (**a1)(uint64_t))
{
  v1 = *a1;
  if (!*a1)
  {
    return 0xD000000000000010;
  }

  v38 = a1[2];
  v2 = a1[4];

  v4 = v1(v3);
  v6 = v5;
  v39 = v4;

  sub_18E723058(60, 0xE100000000000000, v4, v6);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
    v10 = sub_18E72B0B8();
    v12 = v11;
    v14 = v13;
    v16 = v15;

    v17 = MEMORY[0x193AD1560](v10, v12, v14, v16);

    v39 = v17;
  }

  v18 = v2(v9);
  v20 = sub_18E6F9C08(5uLL, v18, v19);
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v27 = MEMORY[0x193AD1560](v20, v22, v24, v26);
  v29 = v28;

  MEMORY[0x193AD15C0](v27, v29);

  v31 = v38(v30);
  v33 = v32;
  v34 = v39;
  v35 = HIBYTE(v32) & 0xF;
  if ((v32 & 0x2000000000000000) == 0)
  {
    v35 = v31 & 0xFFFFFFFFFFFFLL;
  }

  if (v35)
  {
    v36 = v31;
    MEMORY[0x193AD15C0](8250, 0xE200000000000000);
    MEMORY[0x193AD15C0](v36, v33);
  }

  else
  {
  }

  return v34;
}

uint64_t sub_18E6F9F4C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_18E6F9F9C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v51 = a3;
  v5 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return 0;
  }

  *&v52 = 10;
  *(&v52 + 1) = 0xE100000000000000;
  MEMORY[0x1EEE9AC00](a1);
  v45[2] = &v52;
  v10 = v9;

  v12 = sub_18E6F95DC(0x7FFFFFFFFFFFFFFFLL, 1, sub_18E6FA39C, v45, a1, v10, v11);
  v13 = v12;
  v14 = v12[2];
  if (a5)
  {
    if (v14)
    {
      v15 = v12[4];
      v16 = v12[5];
      v18 = v12[6];
      v17 = v12[7];
      v19 = v14 - 1;
      if (v14 == 1)
      {

        v20 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v46 = v12[6];
        v47 = v16;
        v48 = v15;
        v57 = MEMORY[0x1E69E7CC0];
        v49 = v17;

        sub_18E6EE308(0, v14 - 1, 0);
        v20 = v57;
        sub_18E6FA3F4();
        v50 = v13;
        v21 = v13 + 11;
        do
        {
          v22 = *(v21 - 1);
          v23 = *v21;
          v55 = v51;
          v56 = a4;
          v52 = *(v21 - 3);
          v53 = v22;
          v54 = v23;

          sub_18E72B058();
          v24 = v55;
          v25 = v56;
          v57 = v20;
          v27 = *(v20 + 16);
          v26 = *(v20 + 24);
          if (v27 >= v26 >> 1)
          {
            sub_18E6EE308((v26 > 1), v27 + 1, 1);
            v20 = v57;
          }

          *(v20 + 16) = v27 + 1;
          v28 = v20 + 16 * v27;
          *(v28 + 32) = v24;
          *(v28 + 40) = v25;
          v21 += 4;
          --v19;
        }

        while (v19);

        v15 = v48;
        v17 = v49;
        v18 = v46;
        v16 = v47;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8EE18, &unk_18E732000);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_18E72D720;
      v41 = MEMORY[0x193AD1560](v15, v16, v18, v17);
      v43 = v42;

      *(v40 + 32) = v41;
      *(v40 + 40) = v43;
      *&v52 = v40;
      sub_18E701358(v20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAC8DCF8, &qword_18E72CEB0);
      sub_18E6A9E68();
      v44 = sub_18E72AF58();

      return v44;
    }

    return 0;
  }

  if (v14)
  {
    v57 = MEMORY[0x1E69E7CC0];
    sub_18E6EE308(0, v14, 0);
    v29 = v57;
    sub_18E6FA3F4();
    v50 = v13;
    v30 = v13 + 7;
    do
    {
      v31 = *(v30 - 1);
      v32 = *v30;
      v55 = v51;
      v56 = a4;
      v52 = *(v30 - 3);
      v53 = v31;
      v54 = v32;

      sub_18E72B058();
      v33 = v55;
      v34 = v56;
      v57 = v29;
      v36 = *(v29 + 16);
      v35 = *(v29 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_18E6EE308((v35 > 1), v36 + 1, 1);
        v29 = v57;
      }

      *(v29 + 16) = v36 + 1;
      v37 = v29 + 16 * v36;
      *(v37 + 32) = v33;
      *(v37 + 40) = v34;
      v30 += 4;
      --v14;
    }

    while (v14);
  }

  else
  {

    v29 = MEMORY[0x1E69E7CC0];
  }

  *&v52 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAC8DCF8, &qword_18E72CEB0);
  sub_18E6A9E68();
  v39 = sub_18E72AF58();

  return v39;
}

uint64_t sub_18E6FA39C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_18E72B7C8() & 1;
  }
}

unint64_t sub_18E6FA3F4()
{
  result = qword_1EAC8F050;
  if (!qword_1EAC8F050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8F050);
  }

  return result;
}

uint64_t TouchEvent.timestamp.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2;
  return result;
}

void *TouchEvent.init(id:phase:timestamp:location:)@<X0>(void *result@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v7 = *a2;
  *a5 = *result;
  *(a5 + 8) = v7;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = a6;
  *(a5 + 40) = a7;
  return result;
}

unint64_t sub_18E6FA538(uint64_t a1)
{
  result = sub_18E6FA560();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E6FA560()
{
  result = qword_1EAC8F058;
  if (!qword_1EAC8F058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8F058);
  }

  return result;
}

unint64_t sub_18E6FA5B4(uint64_t a1)
{
  result = sub_18E6FA5DC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E6FA5DC()
{
  result = qword_1EAC8F060;
  if (!qword_1EAC8F060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8F060);
  }

  return result;
}

unint64_t sub_18E6FA630(uint64_t a1)
{
  *(a1 + 8) = sub_18E6FA660();
  result = sub_18E6FA6B4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_18E6FA660()
{
  result = qword_1EAC8F068;
  if (!qword_1EAC8F068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8F068);
  }

  return result;
}

unint64_t sub_18E6FA6B4()
{
  result = qword_1EAC8F070[0];
  if (!qword_1EAC8F070[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EAC8F070);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TouchEvent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 48))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for TouchEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

uint64_t GFGesturePhase.description.getter(uint64_t a1, __n128 a2)
{
  if (a1 <= 2)
  {
    switch(a1)
    {
      case 0:
        return 1701602409;
      case 1:
        return 0x656C626973736F70;
      case 2:
        return 0x6E61676562;
    }

LABEL_16:
    sub_18E72B5C8();

    v5 = GFGesturePhase.description.getter(a1, v4);
    MEMORY[0x193AD15C0](v5);

    result = sub_18E72B6E8();
    __break(1u);
    return result;
  }

  if (a1 > 4)
  {
    if (a1 == 5)
    {
      return 0x656C6C65636E6163;
    }

    if (a1 == 6)
    {
      return 0x64656C696166;
    }

    goto LABEL_16;
  }

  if (a1 == 3)
  {
    return 0x6465676E616863;
  }

  else
  {
    return 0x6465646E65;
  }
}

uint64_t sub_18E6FA978(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *sub_18E6FAA28(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((((v5 + 63) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v11 = (a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v13 = *(v11 + 16);
    v12 = *(v11 + 32);
    v14 = *v11;
    *(v10 + 48) = *(v11 + 48);
    *(v10 + 16) = v13;
    *(v10 + 32) = v12;
    *v10 = v14;
    v15 = ((v3 + v5 + 63) & 0xFFFFFFFFFFFFFFF8);
    v16 = ((a2 + v5 + 63) & 0xFFFFFFFFFFFFFFF8);
    *v15 = *v16;
    *((v15 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v16 + 15) & 0xFFFFFFFFFFFFFFF8);
  }

  return v3;
}

uint64_t sub_18E6FAB5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48);
  v7 = v6 + a1;
  v8 = v6 + a2;
  v9 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v10 + 16);
  v11 = *(v10 + 32);
  v13 = *v10;
  *(v9 + 48) = *(v10 + 48);
  *(v9 + 16) = v12;
  *(v9 + 32) = v11;
  *v9 = v13;
  v14 = ((v7 + 63) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v8 + 63) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v15;
  *((v14 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v15 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t sub_18E6FAC14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40);
  v7 = v6 + a1;
  v8 = v6 + a2;
  v9 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v9 = *v10;
  v11 = *(v10 + 24);
  *(v9 + 8) = *(v10 + 8);
  *(v9 + 24) = v11;
  v12 = *(v10 + 48);
  *(v9 + 32) = *(v10 + 32);
  *(v9 + 48) = v12;
  v13 = ((v7 + 63) & 0xFFFFFFFFFFFFFFF8);
  v14 = ((v8 + 63) & 0xFFFFFFFFFFFFFFF8);
  *v13 = *v14;
  v15 = ((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
  v16 = ((v14 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v15 = *v16;
  v15[1] = v16[1];
  return a1;
}

uint64_t sub_18E6FACE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32);
  v7 = v6 + a1;
  v8 = v6 + a2;
  v9 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v10 + 16);
  v11 = *(v10 + 32);
  v13 = *v10;
  *(v9 + 48) = *(v10 + 48);
  *(v9 + 16) = v12;
  *(v9 + 32) = v11;
  *v9 = v13;
  v14 = ((v7 + 63) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v8 + 63) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v15;
  *((v14 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v15 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t sub_18E6FAD9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24);
  v7 = v6 + a1;
  v8 = v6 + a2;
  v9 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v9 = *v10;
  v11 = *(v10 + 24);
  *(v9 + 8) = *(v10 + 8);
  *(v9 + 24) = v11;
  v12 = *(v10 + 48);
  *(v9 + 32) = *(v10 + 32);
  *(v9 + 48) = v12;
  v13 = ((v7 + 63) & 0xFFFFFFFFFFFFFFF8);
  v14 = ((v8 + 63) & 0xFFFFFFFFFFFFFFF8);
  *v13 = *v14;
  v15 = ((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
  v16 = ((v14 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v15 = *v16;
  v15[1] = v16[1];
  return a1;
}

uint64_t sub_18E6FAE6C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))(a1);
  }

  v6 = ((((*(*(*(a3 + 16) - 8) + 64) + 63) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v7 = a2 - v5;
  v8 = v6 & 0xFFFFFFF8;
  if ((v6 & 0xFFFFFFF8) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7 + 1;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v11 || (v12 = *(a1 + v6)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))(a1);
    }

    return 0;
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return v5 + (v8 | v13) + 1;
}

unsigned int *sub_18E6FAF78(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((((*(v5 + 64) + 63) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v6 >= a3)
  {
    v11 = 0;
    v12 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = a3 - v6;
    if (((((*(v5 + 64) + 63) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v7) = 0;
      }

      else if (v11)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v16 = *(v5 + 56);

      return v16();
    }
  }

  if (((((*(v5 + 64) + 63) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((((*(v5 + 64) + 63) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v14 = ~v6 + a2;
    v15 = result;
    bzero(result, v7);
    result = v15;
    *v15 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(result + v7) = v13;
    }

    else
    {
      *(result + v7) = v13;
    }
  }

  else if (v11)
  {
    *(result + v7) = v13;
  }

  return result;
}

double sub_18E6FB128@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v27 = a6;
  v13 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v28[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v18 = type metadata accessor for RepeatComponent(0, v16, v17, v16);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v28[-v19 - 8];
  (*(v13 + 16))(v15, v7, a4);
  sub_18E6FB31C(v15, a1, a2, a3, a4, a5, v20);
  WitnessTable = swift_getWitnessTable();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for ExpirationRecord(255, AssociatedTypeWitness, v23, v24);
  v25 = swift_getWitnessTable();
  sub_18E6AE000(v28);
  *&result = sub_18E6AE018(v20, v28, v18, WitnessTable, v25, v27).n128_u64[0];
  return result;
}

uint64_t sub_18E6FB31C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = type metadata accessor for RepeatComponent(0, a5, a6, a4);
  v14 = a7 + v13[9];
  HIBYTE(v17) = 0;
  *(v14 + 8) = 0;
  *(v14 + 16) = 0;
  *v14 = 0;
  *(v14 + 24) = 1;
  *(v14 + 25) = v17;
  *(v14 + 40) = 0;
  *(v14 + 48) = 1;
  result = (*(*(a5 - 8) + 32))(a7, a1, a5);
  *(a7 + v13[10]) = a2;
  v16 = (a7 + v13[11]);
  *v16 = a3;
  v16[1] = a4;
  return result;
}