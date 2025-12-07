uint64_t sub_1C9927790(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C99277D0(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C9927830(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return sub_1C97ABF20(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return sub_1C97ABF20(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_1C992796C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          sub_1C97ACC50(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_1C9927B8C()
{
  result = qword_1EC3CD068;
  if (!qword_1EC3CD068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD068);
  }

  return result;
}

unint64_t sub_1C9927BFC()
{
  result = qword_1EC3CD088;
  if (!qword_1EC3CD088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD088);
  }

  return result;
}

unint64_t sub_1C9927C50()
{
  result = qword_1EC3CD090;
  if (!qword_1EC3CD090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD090);
  }

  return result;
}

unint64_t sub_1C9927CA4()
{
  result = qword_1EC3CD098;
  if (!qword_1EC3CD098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD098);
  }

  return result;
}

_BYTE *_s11FileAddressO10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C9927DE4(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
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
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1C9927E94()
{
  result = qword_1EC3CD0B8;
  if (!qword_1EC3CD0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD0B8);
  }

  return result;
}

unint64_t sub_1C9927EEC()
{
  result = qword_1EC3CD0C0;
  if (!qword_1EC3CD0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD0C0);
  }

  return result;
}

unint64_t sub_1C9927F44()
{
  result = qword_1EC3CD0C8;
  if (!qword_1EC3CD0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD0C8);
  }

  return result;
}

unint64_t sub_1C9927F9C()
{
  result = qword_1EC3CD0D0;
  if (!qword_1EC3CD0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD0D0);
  }

  return result;
}

unint64_t sub_1C9927FF4()
{
  result = qword_1EC3CD0D8;
  if (!qword_1EC3CD0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD0D8);
  }

  return result;
}

unint64_t sub_1C992804C()
{
  result = qword_1EC3CD0E0;
  if (!qword_1EC3CD0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD0E0);
  }

  return result;
}

unint64_t sub_1C99280A4()
{
  result = qword_1EC3CD0E8;
  if (!qword_1EC3CD0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD0E8);
  }

  return result;
}

unint64_t sub_1C99280FC()
{
  result = qword_1EC3CD0F0;
  if (!qword_1EC3CD0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD0F0);
  }

  return result;
}

unint64_t sub_1C9928154()
{
  result = qword_1EC3CD0F8;
  if (!qword_1EC3CD0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD0F8);
  }

  return result;
}

uint64_t sub_1C99281AC(uint64_t a1)
{

  return swift_getWitnessTable();
}

uint64_t sub_1C9928208(uint64_t a1, uint64_t a2)
{

  return sub_1C9A93858();
}

uint64_t sub_1C9928254(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C97A2CEC(&qword_1EC3CD108, &qword_1C9AB5B80);
  sub_1C97AE9C8();
  v6 = v5;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - v8;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v12[0] = &unk_1C9AB5B90;
  v12[1] = v10;

  sub_1C97A2CEC(&qword_1EC3CD110, &unk_1C9AB5B98);
  sub_1C9A929B8();
  return (*(v6 + 8))(v9, v4);
}

uint64_t sub_1C9928384()
{
  sub_1C97A2CEC(&qword_1EC3CA8D0, &qword_1C9AA47B0);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v0);
  v34 = &v31 - v1;
  v32 = sub_1C97A2CEC(&qword_1EC3CD118, &qword_1C9AB5BA8);
  sub_1C97AE9C8();
  v3 = v2;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v31 - v5;
  v33 = sub_1C97A2CEC(&qword_1EC3CD120, &qword_1C9AB5BB0);
  sub_1C97AE9C8();
  v8 = v7;
  v10 = *(v9 + 64);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v31 - v14;
  v16 = sub_1C97A2CEC(&qword_1EC3CD128, &qword_1C9AB5BB8);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v31 - v20;
  v22 = sub_1C97A2CEC(&qword_1EC3CD110, &unk_1C9AB5B98);
  sub_1C97ACC50(v21, 1, 1, v22);
  v35 = v21;
  sub_1C97A2CEC(&qword_1EC3CD100, &qword_1C9AB5B78);
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8650], v32);
  sub_1C9A92A18();
  v23 = sub_1C9A92988();
  sub_1C97ACC50(v34, 1, 1, v23);
  v24 = *(v8 + 16);
  v32 = v15;
  v25 = v15;
  v26 = v33;
  v24(v13, v25, v33);
  v27 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  (*(v8 + 32))(v28 + v27, v13, v26);
  sub_1C99A9128();

  sub_1C992937C(v21, v19);
  result = sub_1C97ABF20(v19, 1, v22);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v8 + 8))(v32, v26);
    v30 = v31;
    (*(*(v22 - 8) + 32))(v31 + OBJC_IVAR____TtC13SoundAnalysis18AsyncDispatchQueue_queueContinuation, v19, v22);
    sub_1C99293EC(v21);
    return v30;
  }

  return result;
}

uint64_t sub_1C9928770(uint64_t a1, uint64_t a2)
{
  sub_1C99293EC(a2);
  v4 = sub_1C97A2CEC(&qword_1EC3CD110, &unk_1C9AB5B98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);

  return sub_1C97ACC50(a2, 0, 1, v4);
}

uint64_t sub_1C9928810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = sub_1C97A2CEC(&unk_1EC3CD130, &qword_1C9AB5BD0);
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C99288DC, 0, 0);
}

uint64_t sub_1C99288DC()
{
  sub_1C97AA884();
  sub_1C97A2CEC(&qword_1EC3CD120, &qword_1C9AB5BB0);
  sub_1C9A929E8();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  sub_1C9929458(v1);
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6D9C8](v0 + 16, 0, 0, v2);
}

uint64_t sub_1C992898C()
{
  sub_1C97AA884();
  v1 = *v0;
  sub_1C97AA83C();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1C9928A7C, 0, 0);
}

uint64_t sub_1C9928A7C()
{
  sub_1C97AA884();
  v1 = v0[2];
  v0[9] = v1;
  if (v1)
  {
    v0[10] = v0[3];
    v5 = (v1 + *v1);
    v2 = swift_task_alloc();
    v0[11] = v2;
    *v2 = v0;
    v2[1] = sub_1C9928BC8;

    return v5();
  }

  else
  {
    (*(v0[6] + 8))(v0[7], v0[5]);

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1C9928BC8()
{
  v1 = *v0;
  v2 = *v0;
  sub_1C97AA83C();
  *v3 = v2;
  v4 = v1[10];
  v5 = v1[9];
  v6 = *v0;
  *v3 = *v0;

  sub_1C979AFD4(v5, v4);
  v7 = swift_task_alloc();
  v2[8] = v7;
  *v7 = v6;
  sub_1C9929458(v7);
  v8 = v1[5];

  return MEMORY[0x1EEE6D9C8](v2 + 2, 0, 0, v8);
}

uint64_t sub_1C9928D4C()
{
  v1 = v0;
  v2 = sub_1C97A2CEC(&qword_1EC3CD110, &unk_1C9AB5B98);
  sub_1C97AE9C8();
  v4 = v3;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - v6;
  v8 = OBJC_IVAR____TtC13SoundAnalysis18AsyncDispatchQueue_queueContinuation;
  (*(v4 + 16))(&v11 - v6, v1 + OBJC_IVAR____TtC13SoundAnalysis18AsyncDispatchQueue_queueContinuation, v2);
  sub_1C9A929C8();
  v9 = *(v4 + 8);
  v9(v7, v2);
  v9((v1 + v8), v2);
  return v1;
}

uint64_t sub_1C9928E50()
{
  sub_1C9928D4C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AsyncDispatchQueue(uint64_t a1)
{
  result = qword_1EC3C4F90;
  if (!qword_1EC3C4F90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C9928EFC(uint64_t a1)
{
  sub_1C9928F8C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1C9928F8C(uint64_t a1)
{
  if (!qword_1EC3C4A30)
  {
    sub_1C97AA4F0(&qword_1EC3CD100, &qword_1C9AB5B78);
    v1 = sub_1C9A929D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC3C4A30);
    }
  }
}

uint64_t sub_1C9928FF0(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_1C99290D8;

  return v5();
}

uint64_t sub_1C99290D8()
{
  sub_1C97AA884();
  v1 = *v0;
  sub_1C97AA83C();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1C99291C0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C9929454;

  return sub_1C9928FF0(a1, v4);
}

uint64_t sub_1C9929280(uint64_t a1)
{
  v4 = *(sub_1C97A2CEC(&qword_1EC3CD120, &qword_1C9AB5BB0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1C99290D8;

  return sub_1C9928810(a1, v6, v7, v1 + v5);
}

uint64_t sub_1C992937C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C97A2CEC(&qword_1EC3CD128, &qword_1C9AB5BB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C99293EC(uint64_t a1)
{
  v2 = sub_1C97A2CEC(&qword_1EC3CD128, &qword_1C9AB5BB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1C9929478(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, unint64_t a6)
{
  if (a4)
  {
    v11 = qword_1EC3C5520;
    v12 = a4;
    if (v11 != -1)
    {
      sub_1C97DAA64(&qword_1EC3C5520);
    }

    v13 = sub_1C9A91B58();
    sub_1C97BFF6C(v13, qword_1EC3D3108);
    v14 = v12;

    v15 = sub_1C9A91B38();
    v16 = sub_1C9A92FA8();

    if (os_log_type_enabled(v15, v16))
    {
      v40 = a1;
      v17 = swift_slowAlloc();
      v41 = a5;
      v42 = swift_slowAlloc();
      *v17 = 136315394;
      *(v17 + 4) = sub_1C9849140(a5, a6, &v42);
      *(v17 + 12) = 2080;
      v18 = v14;
      v19 = [v14 description];
      v20 = sub_1C9A924A8();
      v21 = a2;
      v22 = a3;
      v24 = v23;

      v25 = sub_1C9849140(v20, v24, &v42);
      a3 = v22;
      a2 = v21;

      *(v17 + 14) = v25;
      v14 = v18;
      _os_log_impl(&dword_1C9788000, v15, v16, "error: %s; underlying: %s", v17, 0x16u);
      swift_arrayDestroy();
      a5 = v41;
      sub_1C9840CEC();
      a1 = v40;
      sub_1C9840CEC();
    }

    sub_1C97A2CEC(&qword_1EC3C69E8, &unk_1C9A9D4A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C9AA3B60;
    *(inited + 32) = sub_1C9A924A8();
    *(inited + 40) = v27;
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 48) = a5;
    *(inited + 56) = a6;
    *(inited + 80) = sub_1C9A924A8();
    *(inited + 88) = v28;
    *(inited + 120) = sub_1C9929E8C(v29);
    *(inited + 96) = v14;
  }

  else
  {
    if (qword_1EC3C5520 != -1)
    {
      sub_1C97DAA64(&qword_1EC3C5520);
    }

    v30 = sub_1C9A91B58();
    sub_1C97BFF6C(v30, qword_1EC3D3108);

    v31 = sub_1C9A91B38();
    v32 = sub_1C9A92FA8();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v42 = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_1C9849140(a5, a6, &v42);
      _os_log_impl(&dword_1C9788000, v31, v32, "error: %s", v33, 0xCu);
      sub_1C97A592C(v34);
      sub_1C9840CEC();
      sub_1C9840CEC();
    }

    sub_1C97A2CEC(&qword_1EC3C69E8, &unk_1C9A9D4A0);
    v35 = swift_initStackObject();
    *(v35 + 16) = xmmword_1C9A9EDD0;
    *(v35 + 32) = sub_1C9A924A8();
    *(v35 + 40) = v36;
    *(v35 + 72) = MEMORY[0x1E69E6158];
    *(v35 + 48) = a5;
    *(v35 + 56) = a6;
  }

  v37 = sub_1C9A92348();
  v38 = objc_allocWithZone(MEMORY[0x1E696ABC0]);

  return sub_1C9A3B688(a1, a2, a3, v37);
}

void *sub_1C99299F0(void *result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, unint64_t a7)
{
  if (result)
  {
    v7 = result;
    result = sub_1C9929478(a2, a3, a4, a5, a6, a7);
    *v7 = result;
  }

  return result;
}

void **sub_1C9929AE8(void **result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result)
  {
    v11 = result;
    v12 = *result;
    if (*result)
    {
      swift_unknownObjectRetain();
    }

    sub_1C99299F0(v11, a2, a3, a4, v12, a5, a6);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1C9929CCC(void *a1, uint64_t a2, void (**a3)(void, void))
{
  v8[1] = *MEMORY[0x1E69E9840];
  v5 = objc_autoreleasePoolPush();
  v8[0] = 0;
  (a3)[2](a3, v8);
  v6 = v8[0];
  objc_autoreleasePoolPop(v5);
  if (a1)
  {
    v7 = v6;
    *a1 = v6;
  }

  else
  {
  }

  _Block_release(a3);
}

id sub_1C9929DDC(uint64_t a1, double a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for SNError(a2);
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_1C9929E34(uint64_t a1, double a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for SNError(a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

unint64_t sub_1C9929E8C(double a1)
{
  result = qword_1EC3CBB80;
  if (!qword_1EC3CBB80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC3CBB80);
  }

  return result;
}

uint64_t sub_1C9929ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1EC3C5DC8 != -1)
  {
    swift_once();
  }

  v9 = sub_1C9A91558();
  v10 = sub_1C97BFF6C(v9, qword_1EC3D3248);
  sub_1C97A2CEC(&qword_1EC3C6CA0, &qword_1C9A9D660);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C9A9FB90;
  *(v11 + 32) = 6715437;
  *(v11 + 40) = 0xE300000000000000;
  *(v11 + 48) = a1;
  *(v11 + 56) = a2;
  *(v11 + 64) = 17197;
  *(v11 + 72) = 0xE200000000000000;
  *(v11 + 80) = a3;
  *(v11 + 88) = a4;

  sub_1C99DB764(v10, v11, 0);

  if (!v4)
  {
  }

  return result;
}

uint64_t sub_1C9929FF8()
{
  v0 = sub_1C9A91558();
  sub_1C9922D38(v0, qword_1EC3D3248);
  sub_1C97BFF6C(v0, qword_1EC3D3248);
  return sub_1C9A91468();
}

void sub_1C992A064(uint64_t a1, uint64_t (*a2)(id, uint64_t), uint64_t a3, void (*a4)(uint64_t *__return_ptr), uint64_t a5)
{
  v32 = a5;
  v33 = a4;
  v36 = a3;
  v37 = a2;
  v34 = a1;
  v6 = sub_1C97A2CEC(&qword_1EC3CD160, &qword_1C9AB5BF8);
  sub_1C97AE9C8();
  v8 = v7;
  v10 = *(v9 + 64);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v32 - v14;
  v16 = *(v8 + 16);
  v16(&v32 - v14, a1, v6);
  v17 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v35 = swift_allocObject();
  v18 = *(v8 + 32);
  v19 = v15;
  v20 = v34;
  v18(v35 + v17, v19, v6);
  v16(v13, v20, v6);
  v21 = swift_allocObject();
  v22 = v18(v21 + v17, v13, v6);
  v23 = objc_allocWithZone(type metadata accessor for SNResultsForwarder(v22));
  v24 = sub_1C9904090(sub_1C992AC68, v35, sub_1C992AC80, v21);
  v26 = v37(v24, v25);
  v33(&v38);
  sub_1C97A2CEC(&unk_1EC3CD168, &qword_1C9AB5C00);
  v27 = swift_allocObject();
  v28 = v24;
  swift_defaultActor_initialize();
  *(v27 + 112) = v24;
  v29 = v38;
  v30 = swift_allocObject();
  v30[2] = v29;
  v30[3] = v26;
  v30[4] = v27;

  swift_unknownObjectRetain();

  sub_1C9A92A98();
  v31 = v28;
  sub_1C99466AC(v26, v31);

  swift_unknownObjectRelease();
}

void sub_1C992A388(uint64_t a1, uint64_t (*a2)(id, uint64_t), uint64_t a3, void (*a4)(void **__return_ptr), uint64_t a5)
{
  v30 = a5;
  v31 = a4;
  v34 = a3;
  v35 = a2;
  v32 = a1;
  v6 = sub_1C97A2CEC(&qword_1EC3CD160, &qword_1C9AB5BF8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v30 - v11;
  v13 = *(v7 + 16);
  v13(&v30 - v11, a1, v6);
  v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v33 = swift_allocObject();
  v15 = *(v7 + 32);
  v16 = v12;
  v17 = v32;
  v15(v33 + v14, v16, v6);
  v13(v10, v17, v6);
  v18 = swift_allocObject();
  v19 = v15(v18 + v14, v10, v6);
  v20 = objc_allocWithZone(type metadata accessor for SNResultsForwarder(v19));
  v21 = sub_1C9904090(sub_1C992B280, v33, sub_1C992B27C, v18);
  v23 = v35(v21, v22);
  v31(&v36);
  sub_1C97A2CEC(&unk_1EC3CD168, &qword_1C9AB5C00);
  v24 = swift_allocObject();
  v25 = v21;
  swift_defaultActor_initialize();
  *(v24 + 112) = v21;
  v26 = v36;
  v27 = swift_allocObject();
  v27[2] = v26;
  v27[3] = v23;
  v27[4] = v24;
  v28 = v26;
  swift_unknownObjectRetain();

  sub_1C9A92A98();
  v29 = v25;
  sub_1C98FAA84(v23, v29);

  swift_unknownObjectRelease();
}

uint64_t sub_1C992A6BC(int a1, id a2)
{
  if (a2)
  {
    v2 = a2;
  }

  sub_1C97A2CEC(&qword_1EC3CD160, &qword_1C9AB5BF8);
  return sub_1C9A92AB8();
}

uint64_t sub_1C992A71C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C97A2CEC(&qword_1EC3CD178, &qword_1C9AB5C18);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v8 - v5;
  v8[1] = a2;
  swift_unknownObjectRetain();
  sub_1C97A2CEC(&qword_1EC3CD160, &qword_1C9AB5BF8);
  sub_1C9A92AA8();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1C992A820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6, uint64_t a7)
{
  v10 = sub_1C97A2CEC(&qword_1EC3CA8D0, &qword_1C9AA47B0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v16 - v11;
  a5(a3);
  v13 = sub_1C9A92988();
  sub_1C97ACC50(v12, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a4;

  sub_1C99A9128();
}

uint64_t sub_1C992A948()
{
  *(*(v0 + 16) + 112) = 0;
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t static AnalyzerUtils.systemAudioAnalyzerResultsStream(makeRequest:createAnalyzer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = sub_1C992AAF8;
  v9[5] = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1C992AB2C;
  *(v10 + 24) = v9;

  sub_1C97A2CEC(&unk_1EC3CD140, &qword_1C9AA06B8);
  sub_1C97AE67C(&unk_1EC3C7CB0, &unk_1EC3CD140, &qword_1C9AA06B8, &unk_1C9AAE4C0);
  return sub_1C9A91EF8();
}

uint64_t sub_1C992AAF8@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1C992AB38(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C97A2CEC(&unk_1EC3CD180, &qword_1C9AB5C20);
  sub_1C97AE9C8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v11[-v8];
  v12 = a1;
  v13 = a2;
  sub_1C97A2CEC(&unk_1EC3C8670, &unk_1C9AA0730);
  (*(v6 + 104))(v9, *MEMORY[0x1E69E8790], v4);
  return sub_1C9A92AC8();
}

uint64_t sub_1C992ACF8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  sub_1C97A2CEC(a3, a4);
  sub_1C97AE9C8();
  MEMORY[0x1EEE9AC00](v8);
  v13 = a1;
  v14 = a2;
  (*(v10 + 104))(&v12[-v9], *MEMORY[0x1E69E8790]);
  return sub_1C9A92AC8();
}

uint64_t sub_1C992AE44()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_1C992B288(v1);

  return sub_1C992A928(v2, v3, v4, v5);
}

uint64_t sub_1C992AEE4()
{
  v1 = sub_1C97A2CEC(&qword_1EC3CD160, &qword_1C9AB5BF8);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1C992AF78(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(sub_1C97A2CEC(&qword_1EC3CD160, &qword_1C9AB5BF8) - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

uint64_t sub_1C992B070()
{
  swift_unknownObjectRelease();

  sub_1C992B2A4();

  return swift_deallocObject();
}

uint64_t sub_1C992B0A8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_1C992B288(v1);

  return sub_1C992A928(v2, v3, v4, v5);
}

_BYTE *sub_1C992B170(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
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
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1C992B220()
{
  result = qword_1EC3CD1A0;
  if (!qword_1EC3CD1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD1A0);
  }

  return result;
}

uint64_t sub_1C992B2CC(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (result == 0x8000000000000000 && a2 == -1)
  {
    goto LABEL_12;
  }

  v3 = result / a2;
  v4 = a2 * (result / a2);
  if ((a2 * (result / a2)) >> 64 != v4 >> 63)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 != result)
  {
    sub_1C992BFC8();
    swift_allocError();
    swift_willThrow();
  }

  return v3;
}

uint64_t sub_1C992B358(uint64_t a1)
{
  v3 = sub_1C9A93D68();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[3] = sub_1C97A2CEC(&qword_1EC3CD1B8, qword_1C9AB5D60);
  v7 = swift_allocObject();
  v14[0] = v7;
  v8 = *(a1 + 8);
  *(v7 + 16) = *a1;
  *(v7 + 24) = v8;
  *(v7 + 32) = *(a1 + 16);
  *(v7 + 48) = *(a1 + 32);
  *(v7 + 56) = *(a1 + 40);
  *(v7 + 72) = *(a1 + 56);
  v9 = *(a1 + 80);
  *(v7 + 88) = *(a1 + 72);
  *(v7 + 96) = v9;
  v10 = *(a1 + 96);
  *(v7 + 104) = *(a1 + 88);
  *(v7 + 112) = v10;
  v11 = *(a1 + 112);
  *(v7 + 120) = *(a1 + 104);
  *(v7 + 128) = v11;
  *(v7 + 136) = *(a1 + 120);
  sub_1C9A93D28();
  sub_1C9A93D58();
  (*(v4 + 8))(v6, v3);
  v12 = sub_1C9A93708();
  if (v1)
  {
    v14[0] = v1;
    sub_1C97A2CEC(&unk_1EC3CA040, &qword_1C9A9C750);
    swift_willThrowTypedImpl();
  }

  return v12;
}

uint64_t sub_1C992B524(uint64_t a1)
{
  sub_1C99024E8(a1, v3);

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    sub_1C9886C04();
    swift_allocError();
    *v2 = 1;
    return swift_willThrow();
  }

  return result;
}

void *sub_1C992B5C4@<X0>(uint64_t a1@<X0>, void *a2@<X8>, double a3@<D0>)
{
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  result = sub_1C992BBB4(*(v8 + 16), *(v6 + 16), *(v7 + 16), a3);
  if (!v3)
  {
    v10 = sub_1C992BC24(result);
    v12 = sub_1C992BF30(v8, v11);
    v14 = sub_1C992BF30(v6, v13);
    v16 = sub_1C992BF30(v7, v15);
    sub_1C992BCD4(v12, v14, v16, *a1, v10, v17, *(a1 + 8));

    return memcpy(a2, v17, 0x50uLL);
  }

  return result;
}

uint64_t sub_1C992B708()
{
  v1[0] = xmmword_1C9AD3950;
  v1[1] = unk_1C9AD3960;
  v1[2] = xmmword_1C9AD3970;
  v1[3] = unk_1C9AD3980;
  v1[4] = xmmword_1C9AD3990;
  v1[5] = unk_1C9AD39A0;
  v1[6] = xmmword_1C9AD39B0;
  v1[7] = unk_1C9AD39C0;
  result = sub_1C992B358(v1);
  qword_1EC3D3260 = result;
  byte_1EC3D3268 = 0;
  return result;
}

uint64_t sub_1C992B77C()
{
  v1[0] = xmmword_1C9AD39D0;
  v1[1] = unk_1C9AD39E0;
  v1[2] = xmmword_1C9AD39F0;
  v1[3] = unk_1C9AD3A00;
  v1[4] = xmmword_1C9AD3A10;
  v1[5] = unk_1C9AD3A20;
  v1[6] = xmmword_1C9AD3A30;
  v1[7] = unk_1C9AD3A40;
  result = sub_1C992B358(v1);
  qword_1EC3D3270 = result;
  byte_1EC3D3278 = 0;
  return result;
}

uint64_t sub_1C992B7F0()
{
  v1[0] = xmmword_1C9AD38D0;
  v1[1] = unk_1C9AD38E0;
  v1[2] = xmmword_1C9AD38F0;
  v1[3] = unk_1C9AD3900;
  v1[4] = xmmword_1C9AD3910;
  v1[5] = unk_1C9AD3920;
  v1[6] = xmmword_1C9AD3930;
  v1[7] = unk_1C9AD3940;
  result = sub_1C992B358(v1);
  qword_1EC3D3280 = result;
  byte_1EC3D3288 = 0;
  return result;
}

void *sub_1C992B864()
{
  result = sub_1C992B8D8(&v1, &v2);
  qword_1EC3D3290 = v2;
  *&qword_1EC3D3298 = v3;
  *&qword_1EC3D32A8 = v4;
  byte_1EC3D32B8 = 0;
  return result;
}

uint64_t sub_1C992B8D8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_1EC3C5DD0 != -1)
  {
    swift_once();
  }

  v4 = qword_1EC3D3260;
  if (byte_1EC3D3268)
  {
    v5 = qword_1EC3D3260;
    sub_1C97A2CEC(&unk_1EC3CA040, &qword_1C9A9C750);
    result = swift_willThrowTypedImpl();
LABEL_13:
    *a1 = v4;
    return result;
  }

  v7 = qword_1EC3C5DD8;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = qword_1EC3D3270;
  if (byte_1EC3D3278)
  {
    sub_1C992C01C(qword_1EC3D3270, 1);
    sub_1C982F268(v4, 0);
    sub_1C97A2CEC(&unk_1EC3CA040, &qword_1C9A9C750);
    result = swift_willThrowTypedImpl();
    v4 = v8;
    goto LABEL_13;
  }

  v9 = qword_1EC3C5DE0;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = qword_1EC3D3280;
  if (byte_1EC3D3288)
  {
    sub_1C992C01C(qword_1EC3D3280, 1);
    sub_1C982F268(v8, 0);
    sub_1C982F268(v4, 0);
    sub_1C97A2CEC(&unk_1EC3CA040, &qword_1C9A9C750);
    result = swift_willThrowTypedImpl();
    v4 = v10;
    goto LABEL_13;
  }

  *a2 = 160;
  *(a2 + 8) = 1065101558;
  *(a2 + 16) = v4;
  *(a2 + 24) = v8;
  *(a2 + 32) = v10;
}

uint64_t sub_1C992BB00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *(a1 + 24) - v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_1C992B2CC(v7, 4);
  if (!v3)
  {
    v9 = *(a2 + 16);
    if (v9)
    {
      v10 = *(a2 + 24) - v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = sub_1C992B2CC(v10, 4);
    v12 = *(a3 + 16);
    if (v12)
    {
      v13 = *(a3 + 24) - v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = sub_1C992B2CC(v13, 4);
    sub_1C992BBB4(v8, v11, v14, v15);
  }

  return v8;
}

uint64_t sub_1C992BBB4(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  if (a1 != a2 || a1 != a3)
  {
    type metadata accessor for SNError(a4);
    sub_1C98573F8();
    sub_1C9820900(v7, v6 + 15, v8);
    swift_willThrow();
  }

  return a1;
}

uint64_t sub_1C992BC24(uint64_t result)
{
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = result;
  if (result > 0x7FFFFFFF)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v3 = sub_1C9A5988C(result);
  type metadata accessor for FixedAddressMutableRawBuffer(v4);
  swift_allocObject();
  v5 = sub_1C99CCA8C(v3, 1);
  sub_1C992BE64(*(v5 + 16), *(v5 + 24), v2);
  if (v1)
  {
  }

  return v5;
}

uint64_t sub_1C992BCD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, float a7@<S0>)
{
  v25 = *MEMORY[0x1E69E9840];
  result = sub_1C992BB00(a1, a2, a3);
  if (!v7)
  {
    memset(v24, 0, 44);
    if (result > 0x7FFFFFFF)
    {
      __break(1u);
    }

    else if (a4 >= 0xFFFFFFFF80000000 && result >= 0xFFFFFFFF80000000)
    {
      if (a4 <= 0x7FFFFFFF)
      {
        if (sub_1C9A5991C(v24, *(a1 + 16), *(a2 + 16), *(a3 + 16), result, a4, *(a5 + 16), a7))
        {
          v18 = *&v24[1];
          v19 = DWORD2(v24[1]);
          v20 = *(&v24[2] + 4);
          *a6 = v24[0];
          *(a6 + 16) = v18;
          *(a6 + 24) = v19;
          *(a6 + 28) = *(&v24[1] + 12);
          *(a6 + 36) = v20;
          *(a6 + 48) = a5;
          *(a6 + 56) = a1;
          *(a6 + 64) = a2;
          *(a6 + 72) = a3;
        }

        else
        {
          type metadata accessor for SNError(v17);
          sub_1C98573F8();
          sub_1C9820900(v22, v21 + 14, v23);
          return swift_willThrow();
        }
      }

LABEL_14:
      __break(1u);
    }

    __break(1u);
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_1C992BE64(void *a1, uint64_t a2, uint64_t a3)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = a2 - a1;
  if (!a1)
  {
    v3 = 0;
  }

  v9[0] = v3;
  if (a3 < 0xFFFFFFFF80000000)
  {
    __break(1u);
LABEL_9:
    __break(1u);
  }

  if (a3 > 0x7FFFFFFF)
  {
    goto LABEL_9;
  }

  result = sub_1C9A59898(a1, v9, a3);
  if ((result & 1) == 0)
  {
    type metadata accessor for SNError(v5);
    sub_1C98573F8();
    sub_1C9820900(v7, v6 + 14, v8);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1C992BF30(uint64_t result, double a2)
{
  v3 = *(result + 16);
  if (v3 >> 61)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    type metadata accessor for FixedAddressMutableRawBuffer(a2);
    swift_allocObject();
    v5 = sub_1C99CCA8C(4 * v3, 16);
    sub_1C99CC544((v4 + 32), v4 + 32 + 4 * v3, *(v5 + 16), *(v5 + 24));
    if (v2)
    {
    }

    return v5;
  }

  return result;
}

unint64_t sub_1C992BFC8()
{
  result = qword_1EC3CD1B0;
  if (!qword_1EC3CD1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD1B0);
  }

  return result;
}

id sub_1C992C01C(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t sub_1C992C028@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  result = sub_1C992B524(a1);
  if (v2)
  {
    sub_1C97A2CEC(&unk_1EC3CA040, &qword_1C9A9C750);
    result = swift_allocError();
    *v6 = v2;
  }

  else
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1C992C098(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 48);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C992C0D8(uint64_t result, int a2, int a3)
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
      *(result + 48) = (a2 - 1);
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

uint64_t sub_1C992C138(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C992C178(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C992C370(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t *))
{
  if (*(a1 + 16))
  {
    v6 = sub_1C993AF6C(a1, a2);
    sub_1C97A2CEC(v6, v7);
    sub_1C97FB318();
    v8 = sub_1C9A93808();
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC8];
  }

  v10 = v8;
  a4(a1, 1, &v10);
  return v10;
}

uint64_t sub_1C992C428(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t *))
{
  if (*(a1 + 16))
  {
    v5 = sub_1C993AF6C(a1, a2);
    sub_1C97A2CEC(v5, v6);
    sub_1C97FB318();
    v7 = sub_1C9A93808();
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC8];
  }

  v10 = v7;

  a4(v8, 1, &v10);

  return v10;
}

uint64_t sub_1C992C4EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t))
{
  if (*(a2 + 16) >= *(a1 + 16))
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  if (v6)
  {
    sub_1C97A2CEC(a3, a4);
    sub_1C97FB318();
    v7 = sub_1C9A93808();
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC8];
  }

  v10 = v7;

  v8 = sub_1C98EE6C0();
  a5(v8);

  return v10;
}

uint64_t sub_1C992C5B8(uint64_t a1, uint64_t a2, double a3)
{
  sub_1C97BE32C(a1);
  sub_1C9A92528();
  v4 = 0.0;
  if (a3 != 0.0)
  {
    v4 = a3;
  }

  MEMORY[0x1CCA919B0](*&v4);
  return sub_1C9A93D18();
}

uint64_t sub_1C992C624(uint64_t a1)
{
  sub_1C97BE32C(a1);
  sub_1C992FA74(v2);
  return sub_1C9A93D18();
}

uint64_t sub_1C992C65C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v50 = *(a1 + 24);
  v48 = *(a1 + 36);
  v49 = *(a1 + 32);
  v47 = *(a1 + 40);
  v3 = *(a1 + 48);
  v44 = *(a1 + 64);
  v45 = *(a1 + 56);
  v42 = *(a1 + 80);
  v43 = *(a1 + 72);
  v40 = *(a1 + 96);
  v41 = *(a1 + 88);
  v39 = *(a1 + 104);
  v31 = *(a1 + 112);
  v5 = *a2;
  v4 = *(a2 + 8);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 36);
  v46 = *(a2 + 40);
  v9 = *(a2 + 48);
  v37 = *(a2 + 64);
  v38 = *(a2 + 56);
  v35 = *(a2 + 80);
  v36 = *(a2 + 72);
  v33 = *(a2 + 96);
  v34 = *(a2 + 88);
  v32 = *(a2 + 104);
  v30 = *(a2 + 112);
  v10 = *(a1 + 16);
  v11 = *(a2 + 16);
  v58 = *a1;
  v59 = v2;
  LOBYTE(v60) = v10;
  v51 = v5;
  v52 = v4;
  LOBYTE(v53) = v11;
  v12 = sub_1C985511C();
  sub_1C993946C(v12, v13, v10);
  v14 = sub_1C993AD44();
  sub_1C993946C(v14, v15, v11);
  v17 = sub_1C992C8EC(&v58, &v51, v16);
  v18 = sub_1C993AD44();
  sub_1C97A6368(v18, v19, v11);
  v20 = sub_1C985511C();
  sub_1C97A6368(v20, v21, v10);
  if ((v17 & 1) == 0)
  {
    return 0;
  }

  v22 = v50 == v6 && v49 == v7;
  v23 = v22 && v48 == v8;
  v24 = v23 && v47 == v46;
  if (!v24 || v3 != v9)
  {
    return 0;
  }

  v58 = v45;
  v59 = v44;
  v60 = v43;
  v61 = v42;
  v62 = v41;
  v63 = v40;
  v64 = v39;
  v51 = v38;
  v52 = v37;
  v53 = v36;
  v54 = v35;
  v55 = v34;
  v56 = v33;
  v57 = v32;
  sub_1C97C6634(v45, v44, v43, v42, v41, v40, v39);
  v26 = sub_1C97CB094();
  sub_1C993AEE8(v26, v27);
  v28 = sub_1C97C4FBC(&v58, &v51);
  sub_1C97A6390(v51, v52, v53, v54, v55, v56, v57);
  sub_1C97A6390(v58, v59, v60, v61, v62, v63, v64);
  if (!v28)
  {
    return 0;
  }

  return sub_1C9808C60(v31, v30);
}

uint64_t sub_1C992C874()
{
  v1 = [v0 impl];
  sub_1C9A93318();
  swift_unknownObjectRelease();
  type metadata accessor for _SNClassifySoundRequest(v2);
  swift_dynamicCast();
  return v4;
}

uint64_t sub_1C992C8EC(uint64_t a1, uint64_t a2, double a3)
{
  v3 = *a1;
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      type metadata accessor for SNMLModelHashableUncodableWrapper(a3);
      v20 = sub_1C9871794();
      sub_1C993946C(v20, v21, 0);
      v22 = sub_1C98550EC();
      sub_1C993946C(v22, v23, 0);
      v8 = sub_1C9889C28(v3, v5);
      v24 = sub_1C98550EC();
      sub_1C97A6368(v24, v25, 0);
      v17 = sub_1C9871794();
      v19 = 0;
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if (v4 != 1)
  {
    if (v6 == 2)
    {
      v26 = sub_1C9871794();
      sub_1C993946C(v26, v27, 2);
      v28 = sub_1C98550EC();
      sub_1C993946C(v28, v29, 2);
      LOBYTE(v8) = sub_1C9A91708();
      v30 = sub_1C98550EC();
      sub_1C97A6368(v30, v31, 2);
      v17 = sub_1C9871794();
      v19 = 2;
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if (v6 != 1)
  {
LABEL_14:
    v33 = sub_1C9871794();
    sub_1C993946C(v33, v34, v6);
    v35 = sub_1C98550EC();
    sub_1C993946C(v35, v36, v4);
    v37 = sub_1C98550EC();
    sub_1C97A6368(v37, v38, v4);
    v39 = sub_1C9871794();
    sub_1C97A6368(v39, v40, v6);
    return 0;
  }

  if (v3 != v5 || *(a1 + 8) != *(a2 + 8))
  {
    sub_1C98550EC();
    LOBYTE(v8) = sub_1C9A93B18();
    v9 = sub_1C9871794();
    sub_1C993946C(v9, v10, 1);
    v11 = sub_1C993ACC4();
    sub_1C993946C(v11, v12, v13);
    v14 = sub_1C993ACC4();
    sub_1C97A6368(v14, v15, v16);
    v17 = sub_1C9871794();
    v19 = 1;
LABEL_13:
    sub_1C97A6368(v17, v18, v19);
    return v8 & 1;
  }

  v41 = 1;
  v42 = sub_1C993ACC4();
  sub_1C993946C(v42, v43, v44);
  v45 = sub_1C993ACC4();
  sub_1C993946C(v45, v46, v47);
  v48 = sub_1C993ACC4();
  sub_1C97A6368(v48, v49, v50);
  v51 = sub_1C993ACC4();
  sub_1C97A6368(v51, v52, v53);
  return v41;
}

uint64_t sub_1C992CA90(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C65646F4D6C6DLL && a2 == 0xE700000000000000;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000014 && 0x80000001C9AD6600 == a2;
    if (v6 || (sub_1C9A93B18() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6C65646F4D3565 && a2 == 0xE700000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C9A93B18();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1C992CBA8(char a1)
{
  if (!a1)
  {
    return 0x6C65646F4D6C6DLL;
  }

  if (a1 == 1)
  {
    return 0xD000000000000014;
  }

  return 0x6C65646F4D3565;
}

void sub_1C992CC04()
{
  sub_1C97AEB94();
  v3 = v2;
  sub_1C97A2CEC(&qword_1EC3CD490, &qword_1C9AB7068);
  sub_1C97AE9C8();
  v44 = v5;
  v45 = v4;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v6);
  v43 = &v39 - v7;
  sub_1C97A2CEC(&qword_1EC3CD498, &qword_1C9AB7070);
  sub_1C97AE9C8();
  v41 = v9;
  v42 = v8;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C97FB2D8();
  v11 = sub_1C97A2CEC(&qword_1EC3CD4A0, &qword_1C9AB7078);
  sub_1C97AE9C8();
  v40 = v12;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v39 - v14;
  sub_1C97A2CEC(&qword_1EC3CD4A8, &qword_1C9AB7080);
  sub_1C97AE9C8();
  v47 = v17;
  v48 = v16;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C98550DC();
  v19 = v0[1];
  v46 = *v0;
  v39 = v19;
  v20 = *(v0 + 16);
  sub_1C97BE20C(v3, v3[3]);
  sub_1C993A044();
  sub_1C993AF40();
  sub_1C9A93DD8();
  if (v20)
  {
    if (v20 == 1)
    {
      LOBYTE(v49[0]) = 1;
      v21 = sub_1C993A0EC();
      sub_1C97FB240(&type metadata for ClassifierVariant.ClassifierIdentifierCodingKeys, v49, v22, v23, v21);
      v49[0] = v46;
      v49[1] = v39;
      sub_1C97A2CEC(&qword_1EC3CD470, &qword_1C9AB7060);
      sub_1C993A140(&unk_1EC3CD4B8);
      v24 = v42;
      sub_1C9A93A18();
      v25 = *(v41 + 8);
      v26 = v1;
    }

    else
    {
      LOBYTE(v49[0]) = 2;
      v32 = sub_1C993A098();
      v33 = v43;
      sub_1C97FB240(&type metadata for ClassifierVariant.E5ModelCodingKeys, v49, v34, v35, v32);
      v49[0] = v46;
      type metadata accessor for ClassifierVariant.E5SoundClassifierModelHashableUncodableWrapper(0);
      sub_1C993ACF8();
      sub_1C993A1EC(v36);
      v24 = v45;
      sub_1C9A93A18();
      v25 = *(v44 + 8);
      v26 = v33;
    }

    v25(v26, v24);
  }

  else
  {
    LOBYTE(v49[0]) = 0;
    v27 = sub_1C993A198();
    sub_1C97FB240(&type metadata for ClassifierVariant.MlModelCodingKeys, v49, v28, v29, v27);
    v49[0] = v46;
    type metadata accessor for SNMLModelHashableUncodableWrapper(v30);
    sub_1C993AD10();
    sub_1C993A1EC(v31);
    sub_1C9A93A18();
    (*(v40 + 8))(v15, v11);
  }

  v37 = sub_1C9871794();
  v38(v37);
  sub_1C97AEB5C();
}

uint64_t sub_1C992D020(uint64_t a1)
{
  if (*(v1 + 16))
  {
    if (*(v1 + 16) == 1)
    {
      MEMORY[0x1CCA91980](1);

      return sub_1C9A92528();
    }

    else
    {
      MEMORY[0x1CCA91980](2);
      sub_1C9A91748();
      sub_1C993AC7C();
      sub_1C993A1EC(v5);
      sub_1C98EE6C0();
      return sub_1C9A92398();
    }
  }

  else
  {
    MEMORY[0x1CCA91980](0);
    v3 = sub_1C98884DC();
    sub_1C97FB388(v3, v4);
  }
}

uint64_t sub_1C992D128(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_1C97BE32C(a1);
  if (v2)
  {
    if (v2 == 1)
    {
      MEMORY[0x1CCA91980](1);
      sub_1C9A92528();
    }

    else
    {
      MEMORY[0x1CCA91980](2);
      sub_1C9A91748();
      sub_1C993AC7C();
      sub_1C993A1EC(v3);
      sub_1C9A92398();
    }
  }

  else
  {
    MEMORY[0x1CCA91980](0);
    sub_1C98884DC();
    sub_1C9A92528();
  }

  return sub_1C9A93D18();
}

void sub_1C992D224()
{
  sub_1C97AEB94();
  v4 = v3;
  v67 = v5;
  sub_1C97A2CEC(&qword_1EC3CD428, &qword_1C9AB7038);
  sub_1C97AE9C8();
  v65 = v7;
  v66 = v6;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v8);
  v68 = &v57[-v9];
  sub_1C97A2CEC(&qword_1EC3CD430, &qword_1C9AB7040);
  sub_1C97AE9C8();
  v63 = v10;
  v64 = v11;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v57[-v13];
  sub_1C97A2CEC(&qword_1EC3CD438, &qword_1C9AB7048);
  sub_1C97AE9C8();
  v62 = v15;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C97FB2D8();
  v17 = sub_1C97A2CEC(&qword_1EC3CD440, &unk_1C9AB7050);
  sub_1C97AE9C8();
  v19 = v18;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v20);
  sub_1C98550DC();
  v21 = v4[3];
  v69 = v4;
  sub_1C97BE20C(v4, v21);
  sub_1C993A044();
  sub_1C993AF40();
  sub_1C9A93DB8();
  if (v0)
  {
    goto LABEL_10;
  }

  v60 = v2;
  v61 = v14;
  v71 = v19;
  v22 = v1;
  sub_1C9A93958();
  sub_1C98EE524();
  v26 = v17;
  if (v24 == v25 >> 1)
  {
    goto LABEL_9;
  }

  v59 = 0;
  if (v24 < (v25 >> 1))
  {
    v27 = v17;
    v28 = *(v23 + v24);
    sub_1C98EE520();
    v30 = v29;
    v32 = v31;
    swift_unknownObjectRelease();
    if (v30 == v32 >> 1)
    {
      v58 = v28;
      if (v28)
      {
        if (v28 == 1)
        {
          LOBYTE(v70[0]) = 1;
          sub_1C993A0EC();
          sub_1C993AEC4(&type metadata for ClassifierVariant.ClassifierIdentifierCodingKeys, v70);
          v33 = v67;
          sub_1C97A2CEC(&qword_1EC3CD470, &qword_1C9AB7060);
          sub_1C993A140(&unk_1EC3CD478);
          sub_1C993AE34();
          sub_1C9A938F8();
          swift_unknownObjectRelease();
          v44 = sub_1C988EB2C();
          v45(v44);
          v46 = sub_1C993ACD4();
          v47(v46);
          v49 = v70[0];
          v48 = v70[1];
          v50 = v69;
        }

        else
        {
          LOBYTE(v70[0]) = 2;
          sub_1C993A098();
          sub_1C993AEC4(&type metadata for ClassifierVariant.E5ModelCodingKeys, v70);
          v33 = v67;
          type metadata accessor for ClassifierVariant.E5SoundClassifierModelHashableUncodableWrapper(0);
          sub_1C993ACF8();
          sub_1C993A1EC(v43);
          sub_1C993AE34();
          sub_1C9A938F8();
          swift_unknownObjectRelease();
          v55 = sub_1C993AF18();
          v56(v55);
          (*(v71 + 8))(v1, v27);
          v48 = 0;
          v50 = v69;
          v49 = v70[0];
        }

        goto LABEL_16;
      }

      LOBYTE(v70[0]) = 0;
      sub_1C993A198();
      v38 = v59;
      sub_1C9A93858();
      if (!v38)
      {
        type metadata accessor for SNMLModelHashableUncodableWrapper(v39);
        sub_1C993AD10();
        sub_1C993A1EC(v42);
        sub_1C993AE34();
        sub_1C9A938F8();
        swift_unknownObjectRelease();
        v51 = sub_1C993AF2C();
        v52(v51);
        v53 = sub_1C993AE64();
        v54(v53);
        v48 = 0;
        v50 = v69;
        v49 = v70[0];
        v33 = v67;
LABEL_16:
        *v33 = v49;
        *(v33 + 8) = v48;
        *(v33 + 16) = v58;
        goto LABEL_11;
      }

      v40 = sub_1C993AE64();
      v41(v40);
      swift_unknownObjectRelease();
LABEL_10:
      v50 = v69;
LABEL_11:
      sub_1C97A592C(v50);
      sub_1C97AEB5C();
      return;
    }

    v26 = v27;
LABEL_9:
    v34 = sub_1C9A93648();
    sub_1C97AA928();
    swift_allocError();
    v36 = v35;
    sub_1C97A2CEC(&qword_1EC3C6F20, &qword_1C9AA0D80);
    *v36 = &type metadata for ClassifierVariant;
    v37 = sub_1C9A93868();
    sub_1C98994EC(v37);
    (*(*(v34 - 8) + 104))(v36, *MEMORY[0x1E69E6AF8], v34);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v71 + 8))(v22, v26);
    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_1C992D948(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000001C9AD9E30 == a2;
  if (v3 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7544776F646E6977 && a2 == 0xEE006E6F69746172;
    if (v6 || (sub_1C9A93B18() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x4670616C7265766FLL && a2 == 0xED0000726F746361;
      if (v7 || (sub_1C9A93B18() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000018 && 0x80000001C9AD9990 == a2;
        if (v8 || (sub_1C9A93B18() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000014 && 0x80000001C9AD99E0 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_1C9A93B18();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_1C992DB00(char a1)
{
  result = 0x7544776F646E6977;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x4670616C7265766FLL;
      break;
    case 3:
      result = 0xD000000000000018;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_1C992DBC8(void *a1)
{
  sub_1C97A2CEC(&qword_1EC3CD2E8, &qword_1C9AB6828);
  sub_1C97AE9C8();
  v5 = v4;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C98550DC();
  v7 = *v1;
  v8 = *(v1 + 8);
  v21 = *(v1 + 64);
  v22 = *(v1 + 56);
  v19 = *(v1 + 80);
  v20 = *(v1 + 72);
  v17 = *(v1 + 96);
  v18 = *(v1 + 88);
  v24 = *(v1 + 104);
  v9 = a1[3];
  v10 = *(v1 + 16);
  v11 = a1;
  v13 = v12;
  sub_1C97BE20C(v11, v9);
  v14 = sub_1C985511C();
  sub_1C993946C(v14, v15, v10);
  sub_1C99393C4();
  sub_1C993AF40();
  sub_1C9A93DD8();
  sub_1C9939494();
  sub_1C993AD50();
  sub_1C9A93A18();
  if (v23)
  {
    sub_1C97A6368(v7, v8, v10);
  }

  else
  {
    sub_1C97A6368(v7, v8, v10);
    sub_1C97FB3CC();
    sub_1C97BCB34();
    sub_1C993AD50();
    sub_1C9A93A18();
    sub_1C9A939E8();
    sub_1C97C6634(v22, v21, v20, v19, v18, v17, v24);
    sub_1C97A6D24();
    sub_1C993AD50();
    sub_1C9A93A18();
    sub_1C97A6390(v22, v21, v20, v19, v18, v17, v24);
    sub_1C97A2CEC(&qword_1EC3C7BF0, &unk_1C9AA0050);
    sub_1C99394E8(&unk_1EC3D23D0);
    sub_1C993AD50();
    sub_1C9A93A18();
  }

  return (*(v5 + 8))(v2, v13);
}

void sub_1C992DEB4(uint64_t a1)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v17 = *(v1 + 56);
  v4 = *(v1 + 80);
  v15 = *(v1 + 72);
  v16 = *(v1 + 24);
  v5 = *(v1 + 96);
  v6 = *(v1 + 104);
  if (*(v1 + 16))
  {
    v7 = *(v1 + 40);
    v8 = *(v1 + 104);
    v9 = *(v1 + 80);
    v10 = *(v1 + 96);
    if (*(v1 + 16) == 1)
    {
      MEMORY[0x1CCA91980](1);
      sub_1C9A92528();
    }

    else
    {
      MEMORY[0x1CCA91980](2);
      sub_1C9A91748();
      sub_1C993AC7C();
      sub_1C993A1EC(v13);
      sub_1C97C924C();
      sub_1C9A92398();
    }

    v5 = v10;
    v4 = v9;
    v6 = v8;
    v2 = v7;
  }

  else
  {
    MEMORY[0x1CCA91980](0);
    v11 = sub_1C98884DC();
    sub_1C97FB388(v11, v12);
  }

  MEMORY[0x1CCA919B0](v16);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v2);
  v14 = 0.0;
  if (v3 != 0.0)
  {
    v14 = v3;
  }

  MEMORY[0x1CCA919B0](*&v14);
  if (v6)
  {
    MEMORY[0x1CCA91980](1);
    MEMORY[0x1CCA919B0](v17);
    sub_1C9A93CF8();
    sub_1C9A93CF8();
    MEMORY[0x1CCA919B0](v15);
    MEMORY[0x1CCA919B0](v4);
    sub_1C9A93CF8();
    sub_1C9A93CF8();
    MEMORY[0x1CCA919B0](v5);
  }

  else
  {
    MEMORY[0x1CCA91980](0);
    sub_1C97C8590();
  }

  sub_1C97C924C();

  sub_1C97C7EF4();
}

uint64_t sub_1C992E0E4(uint64_t a1)
{
  sub_1C97BE32C(a1);
  sub_1C992DEB4(v2);
  return sub_1C9A93D18();
}

uint64_t sub_1C992E11C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1C97A2CEC(&qword_1EC3CD2C0, &unk_1C9AB6818);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C97FB2C8();
  sub_1C97BE20C(a1, a1[3]);
  v7 = sub_1C99393C4();
  sub_1C993AEA0(&type metadata for SoundClassification.AudioSourceAgnosticRequest.CodingKeys, v8, v7);
  if (v2)
  {
    return sub_1C97A592C(a1);
  }

  sub_1C9939418();
  sub_1C993ADA4();
  sub_1C9A938F8();
  v26 = v30;
  v27 = v31;
  v28 = v32;
  sub_1C97BCA8C();
  sub_1C993ADA4();
  sub_1C9A938F8();
  v24 = v30;
  v23 = v31;
  LOBYTE(v30) = 2;
  sub_1C993ADA4();
  sub_1C9A938C8();
  v10 = v9;
  v21 = v32;
  v22 = HIDWORD(v31);
  sub_1C97A6DD4();
  sub_1C993ADA4();
  sub_1C9A938F8();
  v11 = v30;
  v25 = v31;
  v17 = v32;
  v18 = v33;
  v19 = v34;
  v20 = v35;
  v47 = v36;
  sub_1C97A2CEC(&qword_1EC3C7BF0, &unk_1C9AA0050);
  v45 = 4;
  sub_1C99394E8(&qword_1EC3CA010);
  sub_1C993ADA4();
  sub_1C9A938F8();
  v12 = sub_1C993AE08();
  v13(v12, v5);
  v16 = v46;
  v29[0] = v26;
  v29[1] = v31;
  LOBYTE(v29[2]) = v32;
  v29[3] = v24;
  v29[4] = v31;
  v29[5] = v32;
  v29[6] = v10;
  v29[7] = v30;
  v29[8] = v31;
  v29[9] = v32;
  v29[10] = v33;
  v29[11] = v34;
  v29[12] = v35;
  v15 = v36;
  LOBYTE(v29[13]) = v36;
  v29[14] = v46;
  memcpy(a2, v29, 0x78uLL);
  sub_1C97A639C(v29, &v30);
  sub_1C97A592C(a1);
  v30 = v26;
  v31 = v27;
  LOBYTE(v32) = v28;
  v33 = v24;
  v34 = __PAIR64__(v22, v23);
  v35 = v21;
  v36 = v10;
  v37 = v11;
  v38 = v25;
  v39 = v17;
  v40 = v18;
  v41 = v19;
  v42 = v20;
  v43 = v15;
  v44 = v16;
  return sub_1C9932420(&v30);
}

uint64_t sub_1C992E530(char *__src, const void *a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(__srca, __src + 120, 0x41uLL);
  memcpy(v18, a2, sizeof(v18));
  sub_1C993AF4C();
  memcpy(v4, v5, v6);
  sub_1C97A639C(__dst, v21);
  sub_1C97A639C(v18, v21);
  v7 = sub_1C97CB094();
  v9 = sub_1C992C65C(v7, v8);
  memcpy(v20, a2, sizeof(v20));
  sub_1C9932420(v20);
  memcpy(v21, __src, sizeof(v21));
  sub_1C9932420(v21);
  if (v9)
  {
    memcpy(v13, __srca, 0x41uLL);
    memcpy(v12, v19, 0x41uLL);
    v10 = static AudioConfiguration.== infix(_:_:)(v13, v12);
    memcpy(v14, v12, 0x41uLL);
    sub_1C97A6264(__srca, v15);
    sub_1C97A6264(v19, v15);
    sub_1C97E8084(v14);
    memcpy(v15, v13, 0x41uLL);
    sub_1C97E8084(v15);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

void sub_1C992E67C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1C97AEB94();
  sub_1C97A2CEC(&qword_1EC3CD330, &unk_1C9AB6850);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v25);
  sub_1C98550DC();
  memcpy(v37, v23, sizeof(v37));
  sub_1C993AF4C();
  memcpy(v26, v27, v28);
  v29 = sub_1C985511C();
  sub_1C97BE20C(v29, v30);
  sub_1C97A639C(v37, v36);
  sub_1C9939600();
  sub_1C993AF40();
  sub_1C9A93DD8();
  memcpy(v36, v37, sizeof(v36));
  sub_1C97A6314();
  sub_1C9A93A18();
  memcpy(v35, v36, sizeof(v35));
  if (v24)
  {
    sub_1C9932420(v35);
  }

  else
  {
    sub_1C9932420(v35);
    memcpy(v34, v38, sizeof(v34));
    sub_1C97A6264(v38, v33);
    sub_1C97A6210();
    sub_1C9A93A18();
    memcpy(v33, v34, 0x41uLL);
    sub_1C97E8084(v33);
  }

  v31 = sub_1C9871794();
  v32(v31);
  sub_1C97AEB5C();
}

uint64_t sub_1C992E87C(uint64_t a1)
{
  sub_1C993AF4C();
  memcpy(v2, v3, v4);
  sub_1C992DEB4(a1);
  return AudioConfiguration.hash(into:)(a1);
}

uint64_t sub_1C992E8C4()
{
  sub_1C993AF4C();
  memcpy(v0, v1, v2);
  sub_1C9A93CC8();
  sub_1C992DEB4(v4);
  AudioConfiguration.hash(into:)(v4);
  return sub_1C9A93D18();
}

void sub_1C992E91C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1C97AEB94();
  a22 = v24;
  a23 = v25;
  v27 = v26;
  v40 = v28;
  sub_1C97A2CEC(&qword_1EC3CD320, &qword_1C9AB6848);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C97BE20C(v27, v27[3]);
  v30 = sub_1C9939600();
  sub_1C97FB364(&type metadata for SoundClassification.Request.CodingKeys, v31, v30);
  if (v23)
  {
    sub_1C97A592C(v27);
  }

  else
  {
    a13 = 0;
    v32 = sub_1C97A63F8();
    sub_1C98AE254(&type metadata for SoundClassification.AudioSourceAgnosticRequest, &a13, v33, v34, v32);
    memcpy(v45, v44, 0x78uLL);
    a12 = 1;
    v35 = sub_1C97A62C0();
    sub_1C98AE254(&type metadata for AudioConfiguration, &a12, v36, v37, v35);
    v38 = sub_1C98780E8();
    v39(v38);
    memcpy(&v45[120], v43, 0x41uLL);
    memcpy(v41, v45, 0xB9uLL);
    memcpy(v40, v45, 0xB9uLL);
    sub_1C99196CC(v41, v42);
    sub_1C97A592C(v27);
    memcpy(v42, v45, 0xB9uLL);
    sub_1C986EB9C(v42);
  }

  sub_1C97AEB5C();
}

BOOL sub_1C992EB2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  if (a1 == a3 && a2 == a4)
  {
    return a5 == a6;
  }

  v9 = sub_1C9A93B18();
  result = 0;
  if (v9)
  {
    return a5 == a6;
  }

  return result;
}

uint64_t sub_1C992EB78(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9A93B18();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C992EC4C(char a1)
{
  if (a1)
  {
    return 0x6E656469666E6F63;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_1C992EC88(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = sub_1C97A2CEC(&qword_1EC3CD2B8, &qword_1C9AB6810);
  sub_1C97AE9C8();
  v7 = v6;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14[-v9];
  v11 = sub_1C98B7774();
  sub_1C97BE20C(v11, v12);
  sub_1C9939370();
  sub_1C9A93DD8();
  v14[15] = 0;
  sub_1C9A939C8();
  if (!v4)
  {
    v14[14] = 1;
    sub_1C9A939E8();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1C992EDF0(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  sub_1C9A92528();
  v5 = 0.0;
  if (a4 != 0.0)
  {
    v5 = a4;
  }

  return MEMORY[0x1CCA919B0](*&v5);
}

double sub_1C992EE34(void *a1)
{
  v4 = sub_1C97A2CEC(&qword_1EC3CD2A8, &qword_1C9AB6808);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C97FB2C8();
  sub_1C97BE20C(a1, a1[3]);
  v6 = sub_1C9939370();
  sub_1C993AEA0(&type metadata for SoundClassification.Classification.CodingKeys, v7, v6);
  if (!v1)
  {
    sub_1C993ADA4();
    sub_1C9A938A8();
    sub_1C993ADA4();
    sub_1C9A938C8();
    v2 = v9;
    v10 = sub_1C993AE08();
    v11(v10, v4);
  }

  sub_1C97A592C(a1);
  sub_1C993AD28();
  return v2;
}

uint64_t sub_1C992EFC8(uint64_t a1)
{
  v2 = sub_1C993A0EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C992F004(uint64_t a1)
{
  v2 = sub_1C993A0EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C992F060@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C992CA90(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C992F088(uint64_t a1)
{
  v2 = sub_1C993A044();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C992F0C4(uint64_t a1)
{
  v2 = sub_1C993A044();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C992F100(uint64_t a1)
{
  v2 = sub_1C993A098();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C992F13C(uint64_t a1)
{
  v2 = sub_1C993A098();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C992F178(uint64_t a1)
{
  v2 = sub_1C993A198();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C992F1B4(uint64_t a1)
{
  v2 = sub_1C993A198();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C992F228()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  sub_1C9A93CC8();
  sub_1C992D020(v3);
  return sub_1C9A93D18();
}

uint64_t sub_1C992F284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C992D948(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C992F2AC(uint64_t a1)
{
  v2 = sub_1C99393C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C992F2E8(uint64_t a1)
{
  v2 = sub_1C99393C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C992F32C()
{
  sub_1C9A93CC8();
  sub_1C992DEB4(v1);
  return sub_1C9A93D18();
}

uint64_t sub_1C992F3B4(uint64_t a1)
{
  v2 = sub_1C9939600();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C992F3F0(uint64_t a1)
{
  v2 = sub_1C9939600();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C992F434()
{
  sub_1C9A93CC8();
  sub_1C992E87C(v1);
  return sub_1C9A93D18();
}

uint64_t sub_1C992F4AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C992EB78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C992F4D4(uint64_t a1)
{
  v2 = sub_1C9939370();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C992F510(uint64_t a1)
{
  v2 = sub_1C9939370();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C992F564()
{
  v1 = *(v0 + 16);
  sub_1C9A93CC8();
  sub_1C9A92528();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x1CCA919B0](*&v2);
  return sub_1C9A93D18();
}

void sub_1C992F5D8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = sub_1C992EE34(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }
}

uint64_t sub_1C992F644(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v14[0] = *a1;
  v14[1] = v2;
  v14[2] = *(a1 + 32);
  v4 = *(a1 + 48);
  v3 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v6;
  v13[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  v7 = *(a2 + 56);
  v9 = *(a2 + 64);
  if (static TimeRange.== infix(_:_:)(v14, v13))
  {
    sub_1C9845534(v4, v8);
    if (v10)
    {
      if (v5)
      {
        if (v9)
        {
          if (v3 == v7 && v5 == v9)
          {
            return 1;
          }

          sub_1C97CB094();
          if (sub_1C9A93B18())
          {
            return 1;
          }
        }
      }

      else if (!v9)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1C992F704(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E6152656D6974 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000018 && 0x80000001C9AD6620 == a2;
    if (v6 || (sub_1C9A93B18() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000014 && 0x80000001C9AD6600 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C9A93B18();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1C992F828(char a1)
{
  if (!a1)
  {
    return 0x676E6152656D6974;
  }

  if (a1 == 1)
  {
    return 0xD000000000000018;
  }

  return 0xD000000000000014;
}

void sub_1C992F890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1C97AEB94();
  v25 = v23;
  v27 = v26;
  v28 = sub_1C97A2CEC(&qword_1EC3CD318, &qword_1C9AB6840);
  sub_1C97AE9C8();
  v30 = v29;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v36 - v32;
  v34 = *(v25 + 6);
  v36 = *(v25 + 7);
  v37 = v34;
  sub_1C97BE20C(v27, v27[3]);
  sub_1C9939540();
  sub_1C9A93DD8();
  v35 = v25[1];
  v38 = *v25;
  v39 = v35;
  v40 = v25[2];
  sub_1C97BD12C();
  sub_1C993AE70();
  sub_1C9A93A18();
  if (!v24)
  {
    *&v38 = v37;
    sub_1C97FB3CC();
    sub_1C97A2CEC(&qword_1EC3C82B8, &qword_1C9AA91F0);
    sub_1C9939594(&qword_1EC3C8EF0);
    sub_1C993AE70();
    sub_1C9A93A18();
    LOBYTE(v38) = 2;
    sub_1C993AE64();
    sub_1C993AE70();
    sub_1C9A93998();
  }

  (*(v30 + 8))(v33, v28);
  sub_1C97AEB5C();
}

uint64_t sub_1C992FA74(uint64_t a1)
{
  v2 = v1;
  v4 = v2[2];
  v5 = v2[3];
  v7 = v2[5];
  v6 = v2[6];
  v8 = v2[8];
  MEMORY[0x1CCA919B0](*v2);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v4);
  MEMORY[0x1CCA919B0](v5);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v7);
  sub_1C984A234(a1, v6);
  if (!v8)
  {
    return sub_1C9A93CE8();
  }

  sub_1C9A93CE8();

  return sub_1C9A92528();
}

void sub_1C992FB74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1C97AEB94();
  a22 = v24;
  a23 = v25;
  v27 = v26;
  v29 = v28;
  v49 = sub_1C97A2CEC(&qword_1EC3CD300, &unk_1C9AB6830);
  sub_1C97AE9C8();
  v31 = v30;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v48 - v33;
  sub_1C97BE20C(v27, v27[3]);
  v35 = sub_1C9939540();
  sub_1C97FB364(&type metadata for SoundClassification.Result.CodingKeys, v36, v35);
  if (v23)
  {
    sub_1C97A592C(v27);
  }

  else
  {
    v37 = v31;
    v38 = v29;
    a13 = 0;
    v39 = sub_1C97BD0D8();
    v40 = v49;
    sub_1C98AE254(&type metadata for TimeRange, &a13, v41, v42, v39);
    v58 = v55;
    v59 = v56;
    v60 = v57;
    sub_1C97A2CEC(&qword_1EC3C82B8, &qword_1C9AA91F0);
    LOBYTE(v50[0]) = 1;
    sub_1C9939594(&qword_1EC3C8F10);
    sub_1C9A938F8();
    v43 = *&v51[0];
    v44 = sub_1C9A93878();
    v45 = v34;
    v47 = v46;
    (*(v37 + 8))(v45, v40);
    v50[0] = v58;
    v50[1] = v59;
    v50[2] = v60;
    *&v50[3] = v43;
    *(&v50[3] + 1) = v44;
    *&v50[4] = v47;
    memcpy(v38, v50, 0x48uLL);
    sub_1C984A444(v50, v51);
    sub_1C97A592C(v27);
    v51[0] = v58;
    v51[1] = v59;
    v51[2] = v60;
    v52 = v43;
    v53 = v44;
    v54 = v47;
    sub_1C984A4A0(v51);
  }

  sub_1C97AEB5C();
}

uint64_t sub_1C992FE18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_1C9A93CC8();
  a4(v8, v6);
  return sub_1C9A93D18();
}

uint64_t sub_1C992FE6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C992F704(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C992FE94(uint64_t a1)
{
  v2 = sub_1C9939540();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C992FED0(uint64_t a1)
{
  v2 = sub_1C9939540();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C992FF14()
{
  sub_1C9A93CC8();
  sub_1C992FA74(v1);
  return sub_1C9A93D18();
}

uint64_t sub_1C992FF84()
{
  sub_1C97AA884();
  *(v0 + 16) = v1;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  sub_1C97DA950(v2);

  return sub_1C988FB68();
}

uint64_t sub_1C9930010(uint64_t a1)
{
  sub_1C97AA890();
  v5 = v4;
  sub_1C97DA70C();
  *v6 = v5;
  v7 = *v2;
  sub_1C97AA83C();
  *v8 = v7;
  v5[4] = a1;
  v5[5] = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C97F489C, 0, 0);
  }

  else
  {
    v9 = swift_task_alloc();
    v5[6] = v9;
    *v9 = v7;
    sub_1C97DA950(v9);

    return sub_1C98A4500();
  }
}

uint64_t sub_1C9930194(uint64_t a1, uint64_t a2)
{
  sub_1C99DC144();
  v5[3] = sub_1C97A2CEC(&unk_1EC3CC790, &qword_1C9AB68A0);
  v5[4] = sub_1C9939FC0();
  v5[0] = a2;

  sub_1C99DC184(v5, v3);

  return sub_1C97A592C(v5);
}

uint64_t sub_1C9930224()
{
  sub_1C97AA884();

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  sub_1C97DA950(v1);

  return sub_1C992FF84();
}

uint64_t sub_1C99302D4()
{
  sub_1C97AA884();
  *(v0 + 16) = v1;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  sub_1C97DA950(v2);

  return sub_1C9930224();
}

void *sub_1C9930364@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v11, __src, sizeof(v11));
  v5 = type metadata accessor for _SNClassificationResult(v4);
  v6 = objc_allocWithZone(v5);
  sub_1C984A444(__dst, v10);
  v7 = sub_1C9847CE8();
  v11[3] = v5;
  v11[0] = v7;
  v8 = objc_allocWithZone(SNClassificationResult);
  result = sub_1C98490D8(v11);
  *a2 = result;
  return result;
}

uint64_t sub_1C9930404()
{
  v1 = *v0;
  sub_1C9A93CC8();
  MEMORY[0x1CCA91980](v1);
  return sub_1C9A93D18();
}

void sub_1C9930448(void *a1, double a2)
{
  type metadata accessor for SNUtils(a2);
  if (*(sub_1C9A18E9C(a1, 0, v3) + 16) != 1)
  {

    type metadata accessor for SNError(v21);
    sub_1C9A935B8();
    MEMORY[0x1CCA90230](0xD000000000000035, 0x80000001C9AD9BB0);
    v22 = sub_1C9A93A98();
    MEMORY[0x1CCA90230](v22);

    v23 = sub_1C993AD84();
    sub_1C9929478(v23, v24, v25, v26, v27, v28);
    sub_1C97FB324();

    swift_willThrow();
    return;
  }

  v4 = [a1 inputDescriptionsByName];
  sub_1C97BD318(v5, 0, &qword_1EC3C54D0, 0x1E695FE50);
  v6 = sub_1C9A92328();

  v7 = sub_1C98EE6C0();
  v9 = sub_1C98782A4(v7, v8, v6);

  if (!v9 || (v11 = [v9 multiArrayConstraint]) == 0)
  {
    type metadata accessor for SNError(v10);
    sub_1C98573F8();
    sub_1C993AD60(v30, v29 + 27, v31);
    swift_willThrow();
    goto LABEL_8;
  }

  v12 = v11;
  v13 = sub_1C9A16FF8(a1);
  sub_1C9A17104(v13);
  v15 = v14;

  if (v15 <= 2)
  {
    v32 = sub_1C9A16FF8(a1);
    sub_1C9A18C50(v32, 1u);
    v34 = v33;

    if (v34 < 2)
    {
      type metadata accessor for SNError(v35);
      sub_1C98573F8();
      v20 = v36 + 23;
      goto LABEL_17;
    }

    sub_1C999C0C8(a1);
    if (!v38)
    {
      type metadata accessor for SNError(v37);
      sub_1C98573F8();
      v20 = v41 + 60;
      goto LABEL_17;
    }

    v39 = [v12 dataType];
    if (v39 == 65552 || v39 == 65568 || v39 == 65600)
    {

      return;
    }

    type metadata accessor for SNError(v40);
    sub_1C98573F8();
    sub_1C993AD60(v43, v42 + 84, v44);
    swift_willThrow();

LABEL_8:
    return;
  }

  type metadata accessor for SNError(v16);
  sub_1C98573F8();
  v20 = v19 + 92;
LABEL_17:
  sub_1C993AD60(v17, v20, v18);
  swift_willThrow();
}

void sub_1C99307DC(uint64_t a1, uint64_t a2)
{
  sub_1C987E9B0();
  if (v2)
  {
    return;
  }

  v5 = *(v4 + 16);

  if (v5 != 1)
  {
    sub_1C986ECA4();
    sub_1C97AA928();
    swift_allocError();
    v9 = 4;
LABEL_6:
    sub_1C9813764(v8, v9);
    return;
  }

  sub_1C987EA14();
  v7 = v6;
  if (*(v6 + 16) != 1)
  {

    sub_1C986ECA4();
    sub_1C97AA928();
    swift_allocError();
    v9 = 5;
    goto LABEL_6;
  }

  sub_1C98813B4();
  sub_1C97FB324();

  type metadata accessor for E5RTIOPort(v10);
  *(swift_initStackObject() + 16) = a2;
  v11 = sub_1C988196C();
  swift_setDeallocating();
  sub_1C98819BC();
  sub_1C97F07FC();
  swift_deallocClassInstance();
  type metadata accessor for E5RTTensorDescriptor(v12);
  *(swift_initStackObject() + 16) = v11;
  v13 = sub_1C9881C2C();
  swift_setDeallocating();
  sub_1C9881C7C();
  sub_1C97F07FC();
  swift_deallocClassInstance();
  type metadata accessor for E5RTTensorDescriptorDataType(v14);
  *(swift_initStackObject() + 16) = v13;
  v15 = sub_1C987EDA8();
  if (v15 != 4)
  {

    sub_1C986ECA4();
    sub_1C97AA928();
    swift_allocError();
    *v16 = 6;
    goto LABEL_13;
  }

  if (*(v7 + 16))
  {

    sub_1C98813B4();

    inited = swift_initStackObject();
    sub_1C993AF58(inited);
    sub_1C988196C();
    swift_setDeallocating();
    sub_1C98819BC();
    sub_1C97F07FC();
    swift_deallocClassInstance();
    v18 = swift_initStackObject();
    v19 = sub_1C993AF58(v18);
    v20 = sub_1C9881B70(v19);
    v22 = sub_1C9A0840C(v20, v21);
    swift_setDeallocating();
    sub_1C9881C7C();
    sub_1C97F07FC();
    swift_deallocClassInstance();
    v23 = v22[2];
    if (v23)
    {
      v30 = MEMORY[0x1E69E7CC0];
      sub_1C9A93698();
      v24 = 4;
      do
      {
        [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
        sub_1C9A93678();
        sub_1C9A936A8();
        sub_1C993AD28();
        sub_1C9A936B8();
        sub_1C9A93688();
        ++v24;
        --v23;
      }

      while (v23);

      v26 = v30;
    }

    else
    {

      v26 = MEMORY[0x1E69E7CC0];
    }

    type metadata accessor for SNUtils(v25);
    sub_1C9A17104(v26);
    v28 = v27;

    if (v28 == 1)
    {
      goto LABEL_14;
    }

    sub_1C986ECA4();
    sub_1C97AA928();
    swift_allocError();
    *v29 = 7;
LABEL_13:
    swift_willThrow();
LABEL_14:
    swift_setDeallocating();
    sub_1C9881DCC();
    sub_1C97F07FC();
    swift_deallocClassInstance();
    return;
  }

  __break(1u);
}

id sub_1C9930CA8()
{
  sub_1C993AF0C();
  type metadata accessor for SNMLModelAdapter(v2);
  sub_1C97F07FC();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  type metadata accessor for AnySNMLModel(v4);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = &off_1F4937370;
  type metadata accessor for SNMLModelHashableUncodableWrapper(v6);
  sub_1C97F07FC();
  *(swift_allocObject() + 16) = v5;
  v7 = objc_allocWithZone(v0);
  return sub_1C9930EA0();
}

id sub_1C9930D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  type metadata accessor for ClassifierVariant.E5SoundClassifierModelHashableUncodableWrapper(0);
  swift_allocObject();

  v8 = sub_1C98EE6C0();
  sub_1C99359CC(v8, v9, a3, a4);
  v10 = objc_allocWithZone(v5);
  v11 = sub_1C9930EA0();

  return v11;
}

uint64_t sub_1C9930E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C993AE24();
  v6 = swift_allocObject();
  v7 = sub_1C9871794();
  sub_1C99359CC(v7, v8, v4, a4);
  return v6;
}

id sub_1C9930EA0()
{
  v2 = v0;
  sub_1C97FB324();
  ObjectType = swift_getObjectType();
  v4 = *v0;
  v5 = *(v0 + 1);
  v6 = v0[16];
  v102[0] = *v0;
  v102[1] = v5;
  v103 = v6;
  v7 = sub_1C99316D0(v102);
  if (!v1)
  {
    v13 = v9;
    v14 = v10;
    v104 = v8;
    if (v8 < 0)
    {
      v94 = v6;
      v21 = v8 & 0x7FFFFFFFFFFFFFFFLL;

      sub_1C99307DC(v22, v21);
      v98 = ObjectType;
      v99 = v13;
      v31 = v2;

      sub_1C987E9B0();
      v62 = v32;
      v97 = v14;

      if (*(v62 + 16))
      {
        v63 = *(v62 + 32);
      }

      else
      {
        v63 = 0;
      }

      sub_1C97CB094();
      sub_1C9881404();
      sub_1C97FB3E4();

      type metadata accessor for E5RTIOPort(v64);
      *(swift_initStackObject() + 16) = v63;
      v65 = sub_1C988196C();
      swift_setDeallocating();
      sub_1C98819BC();
      sub_1C97F07FC();
      swift_deallocClassInstance();
      type metadata accessor for E5RTTensorDescriptor(v66);
      *(swift_initStackObject() + 16) = v65;
      v67 = sub_1C9881B70(v65);
      sub_1C9A0840C(v67, v68);
      sub_1C97FB3E4();
      swift_setDeallocating();
      sub_1C9881C7C();
      sub_1C97F07FC();
      swift_deallocClassInstance();
      v92 = sub_1C9A1692C(v97);
      v70 = v69;

      if (v70)
      {
        v71 = sub_1C98DE2C4();
        sub_1C97A6368(v71, v72, v94);
        sub_1C97A8E8C();
        sub_1C97AA928();
        v73 = swift_allocError();
        sub_1C993AE88(v73, v74);
        sub_1C993AFA4();

        v33 = sub_1C993ACE8();
        sub_1C986EC4C(v33, v34);
        goto LABEL_14;
      }

      v75 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      sub_1C97CDE50(v75);
      v77 = v76;

      sub_1C97A2CEC(&unk_1EC3C6A60, &qword_1C9A9D518);
      v78 = swift_allocObject();
      *(v78 + 16) = xmmword_1C9A9EDD0;
      *(v78 + 32) = v92;
      v90 = v77;
      *(v78 + 40) = v77;
      *(v78 + 44) = 1;
      *(v78 + 48) = 0;

      sub_1C987EA14();
      v80 = v79;
      v81 = sub_1C993ACE8();
      sub_1C986EC4C(v81, v82);

      LOBYTE(v102[0]) = 0;
      v83 = &v31[OBJC_IVAR____SNClassifySoundRequest_impl];
      *v83 = v4;
      *(v83 + 1) = v5;
      v59 = v31;
      v83[16] = v94;
      *(v83 + 3) = v92;
      *(v83 + 8) = v90;
      *(v83 + 9) = 1;
      *(v83 + 5) = 0;
      *(v83 + 6) = 0x3FE0000000000000;
      *(v83 + 7) = v78;
      *(v83 + 4) = 0u;
      *(v83 + 5) = 0u;
      *(v83 + 12) = 0;
      v83[104] = 0;
      *(v83 + 14) = v80;
    }

    else
    {
      v96 = v5;
      v98 = ObjectType;
      v15 = v7;
      v16 = v8;
      v17 = swift_getObjectType();
      v18 = *(v16 + 16);
      swift_unknownObjectRetain();
      v19 = v18(v17, v16);
      sub_1C9930448(v19, v20);
      v91 = v2;
      v93 = v4;

      type metadata accessor for SNModelMetadataUtils(v23);
      v24 = v104;
      v25 = v18(v17, v104);
      v88 = sub_1C9A3C4BC(v25, 16000);

      type metadata accessor for SNUtils(v26);
      v27 = v18(v17, v24);
      v28 = sub_1C9A16FF8(v27);

      sub_1C9A16A00(v28);
      sub_1C97FB3E4();

      if (!v27)
      {
        sub_1C97A6368(v4, v96, v6);
        sub_1C97A8E8C();
        sub_1C97AA928();
        v35 = swift_allocError();
        sub_1C993AE88(v35, v36);
        v37 = v104;
        sub_1C993ADC8(v15, v104);
        sub_1C993AF8C(v15, v37);
        goto LABEL_14;
      }

      [v27 integerValue];

      v29 = v18(v17, v104);
      sub_1C9A17240(v29, v88, v30);
      v87 = v38;

      v39 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInt_];
      sub_1C97CDE50(v39);

      v40 = sub_1C9A93168();
      v43 = sub_1C9A17398(v40, v41, v42, v87);
      v84 = v44;
      v85 = v43;
      v89 = v45;
      v86 = HIDWORD(v44);
      v46 = v15;
      v47 = v104;
      v48 = v18(v17, v104);
      v95 = sub_1C9A17664(v48);

      v49 = sub_1C97C6E9C();
      sub_1C993ADC8(v46, v47);
      sub_1C993AF8C(v46, v47);
      v50 = *&v49[OBJC_IVAR____SNTimeDurationConstraint_impl];
      v51 = *&v49[OBJC_IVAR____SNTimeDurationConstraint_impl + 8];
      v53 = *&v49[OBJC_IVAR____SNTimeDurationConstraint_impl + 16];
      v52 = *&v49[OBJC_IVAR____SNTimeDurationConstraint_impl + 24];
      v54 = *&v49[OBJC_IVAR____SNTimeDurationConstraint_impl + 40];
      v104 = *&v49[OBJC_IVAR____SNTimeDurationConstraint_impl + 32];
      v100 = v54;
      LOBYTE(v48) = v49[OBJC_IVAR____SNTimeDurationConstraint_impl + 48];
      v55 = sub_1C98B7774();
      sub_1C97C6634(v55, v56, v53, v52, v57, v58, v48);

      LOBYTE(v102[0]) = v48;
      v59 = v91;
      v60 = &v91[OBJC_IVAR____SNClassifySoundRequest_impl];
      *v60 = v93;
      *(v60 + 1) = v96;
      v60[16] = v6;
      *(v60 + 3) = v85;
      *(v60 + 8) = v84;
      *(v60 + 9) = v86;
      *(v60 + 5) = v89;
      *(v60 + 6) = 0x3FE0000000000000;
      *(v60 + 7) = v50;
      *(v60 + 8) = v51;
      *(v60 + 9) = v53;
      *(v60 + 10) = v52;
      *(v60 + 11) = v104;
      *(v60 + 12) = v100;
      v60[104] = v48;
      *(v60 + 14) = v95;
    }

    v101.receiver = v59;
    v101.super_class = v98;
    return objc_msgSendSuper2(&v101, sel_init);
  }

  v11 = sub_1C98DE2C4();
  sub_1C97A6368(v11, v12, v6);
LABEL_14:
  sub_1C993AE7C();
  return swift_deallocPartialClassInstance();
}

uint64_t sub_1C99316D0(uint64_t *a1)
{
  if (*(a1 + 16))
  {
    if (*(a1 + 16) == 1)
    {
      v1 = sub_1C9A92478();
      sub_1C99317E4();
    }

    else
    {
    }
  }

  else
  {
  }

  return sub_1C988EB2C();
}

uint64_t sub_1C99317B0(uint64_t a1)
{
  if (*(a1 + 16) == 1)
  {
    return sub_1C9A92478();
  }

  else
  {
    return 0;
  }
}

void *sub_1C99317E4()
{
  sub_1C993AF0C();
  v1 = sub_1C9A924A8();
  v3 = v2;
  if (v1 == sub_1C9A924A8() && v3 == v4)
  {
  }

  else
  {
    v6 = sub_1C9A93B18();

    if ((v6 & 1) == 0)
    {
      v8 = sub_1C9A924A8();
      v10 = sub_1C98C751C(v8, v9);
      if (v0)
      {

        type metadata accessor for SNError(v11);
        sub_1C9A935B8();

        v12 = sub_1C9A924A8();
        MEMORY[0x1CCA90230](v12);

        v13 = sub_1C993AD84();
        sub_1C9929478(v13, v14, v15, v16, v17, v18);
        sub_1C97FB324();

        swift_willThrow();
      }

      else
      {
        v24 = v10;

        v25 = objc_autoreleasePoolPush();
        v26 = objc_autoreleasePoolPush();
        if (qword_1EC3C55D0 != -1)
        {
          swift_once();
        }

        v27 = swift_allocObject();
        *(v27 + 16) = v24;
        MEMORY[0x1EEE9AC00](v27);

        v0 = sub_1C97E2E88();

        objc_autoreleasePoolPop(v26);
        objc_autoreleasePoolPop(v25);
      }

      return v0;
    }
  }

  if (sub_1C989BF88(v7))
  {
    v19 = 2;
  }

  else
  {
    v19 = 0;
  }

  v20 = sub_1C98C89D4(35, v19);
  if (!v0)
  {
    v22 = v20;
    type metadata accessor for SNMLModelAdapter(v21);
    sub_1C97F07FC();
    v0 = swift_allocObject();
    v0[2] = v22;
  }

  return v0;
}

uint64_t (*sub_1C9931AEC(uint64_t a1, uint64_t (*a2)(uint64_t)))(uint64_t)
{
  if (!a1)
  {
    sub_1C986ECA4();
    sub_1C97AA928();
    v6 = swift_allocError();
    sub_1C993AE88(v6, v7);
    goto LABEL_5;
  }

  v3 = a2;
  swift_getObjectType();
  v5 = v3(a1);
  if (v2)
  {
LABEL_5:
    swift_getObjectType();
    sub_1C993AE7C();
    swift_deallocPartialClassInstance();
    return v3;
  }

  v3 = v5;
  sub_1C97C924C();
  sub_1C993AE7C();
  swift_deallocPartialClassInstance();
  return v3;
}

id sub_1C9931BA8()
{
  sub_1C993AF0C();
  sub_1C9A924A8();
  v2 = objc_allocWithZone(v0);
  v3 = sub_1C9930EA0();

  return v3;
}

void sub_1C9931CF4(double a1)
{
  if (a1 >= 0.0 && a1 < 1.0)
  {
    *(v1 + OBJC_IVAR____SNClassifySoundRequest_impl + 48) = a1;
  }

  else
  {
    v3 = sub_1C9A924A8();
    v5 = v4;
    sub_1C9939654();
    sub_1C97AA928();
    swift_allocError();
    *v6 = v3;
    v6[1] = v5;
    v6[2] = 0xD00000000000003ELL;
    v6[3] = 0x80000001C9AD9B70;
    swift_willThrow();
  }
}

void sub_1C9931ECC()
{
  v2 = v0;
  sub_1C993AE24();
  type metadata accessor for SNUtils(v3);
  v5 = sub_1C9931F5C(v4);
  v6 = sub_1C9871794();
  v8 = sub_1C9A17398(v6, v7, v1, v5);
  v10 = v9;
  v12 = v11;

  v13 = (v2 + OBJC_IVAR____SNClassifySoundRequest_impl);
  v13[3] = v8;
  v13[4] = v10;
  v13[5] = v12;
}

id sub_1C9931F5C(double a1)
{
  v2 = v1 + OBJC_IVAR____SNClassifySoundRequest_impl;
  v3 = *(v1 + OBJC_IVAR____SNClassifySoundRequest_impl + 56);
  v4 = *(v1 + OBJC_IVAR____SNClassifySoundRequest_impl + 64);
  v5 = *(v2 + 72);
  v6 = *(v2 + 80);
  v7 = *(v2 + 88);
  v8 = *(v2 + 96);
  v9 = *(v2 + 104);
  v10 = type metadata accessor for _SNTimeDurationConstraint(a1);
  v11 = objc_allocWithZone(v10);
  v12 = &v11[OBJC_IVAR____SNTimeDurationConstraint_impl];
  *v12 = v3;
  *(v12 + 1) = v4;
  *(v12 + 2) = v5;
  *(v12 + 3) = v6;
  *(v12 + 4) = v7;
  *(v12 + 5) = v8;
  v12[48] = v9;
  v13 = sub_1C97CB094();
  sub_1C993AEE8(v13, v14);
  v18.receiver = v11;
  v18.super_class = v10;
  v15 = objc_msgSendSuper2(&v18, sel_init);
  v19[3] = v10;
  v19[0] = v15;
  v16 = objc_allocWithZone(SNTimeDurationConstraint);
  return sub_1C997FCCC(v19);
}

uint64_t sub_1C99320D8()
{
  swift_getObjectType();
  v3 = (v0 + OBJC_IVAR____SNClassifySoundRequest_impl);
  sub_1C993AF78();
  v4 = sub_1C993AD34();
  sub_1C993946C(v4, v5, v6);
  v7 = sub_1C99316D0(v33);
  v9 = v8;
  v10 = sub_1C993AD34();
  sub_1C97A6368(v10, v11, v12);
  if (!v1)
  {
    if (v9 < 0)
    {
      sub_1C986ECA4();
      sub_1C97AA928();
      swift_allocError();
      sub_1C9813764(v30, 3);
      v31 = sub_1C993AE14();
      sub_1C986EC4C(v31, v32);
    }

    else
    {
      sub_1C993AF78();
      v14 = sub_1C993AE14();
      sub_1C99396A8(v14, v15);
      v16 = sub_1C993AD34();
      sub_1C993946C(v16, v17, v18);
      v19 = sub_1C99317B0(v33);
      v20 = sub_1C993AD34();
      sub_1C97A6368(v20, v21, v22);
      if (!v19)
      {
        v19 = sub_1C9A92478();
      }

      v24 = v3[6];
      v25 = *(v3 + 3);
      v26 = *(v3 + 4);
      v27 = *(v3 + 5);
      type metadata accessor for SNSoundClassifier(v23);
      v2 = swift_allocObject();
      sub_1C9933718(v7, v9, v25, v26, v27, v19, v24);
      v28 = sub_1C993AE14();
      sub_1C986EC4C(v28, v29);
    }
  }

  return v2;
}

void *_SNClassifySoundRequest.copy(with:)@<X0>(void *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  memcpy(__dst, (v1 + OBJC_IVAR____SNClassifySoundRequest_impl), sizeof(__dst));
  v4 = objc_allocWithZone(ObjectType);
  memcpy(&v4[OBJC_IVAR____SNClassifySoundRequest_impl], __dst, 0x78uLL);
  sub_1C97A639C(__dst, v7);
  v6.receiver = v4;
  v6.super_class = ObjectType;
  result = objc_msgSendSuper2(&v6, sel_init);
  a1[3] = ObjectType;
  *a1 = result;
  return result;
}

uint64_t _SNClassifySoundRequest.hash.getter()
{
  sub_1C993AFBC(v5);
  sub_1C993AFBC(v4);
  sub_1C9A93CC8();
  sub_1C97A639C(v5, &v2);
  sub_1C992DEB4(v3);
  v0 = sub_1C9A93D18();
  sub_1C9932420(v5);
  return v0;
}

uint64_t _SNClassifySoundRequest.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_1C9812F64(a1, &v15, &unk_1EC3C5E60, qword_1C9A9AE10);
  if (v16)
  {
    sub_1C97A2D34(&v15, v14);
    sub_1C97BD360(v14, v13);
    if (swift_dynamicCast())
    {
      v2 = v12;
      v3 = OBJC_IVAR____SNClassifySoundRequest_impl;
      sub_1C993AFBC(v8);
      sub_1C993AFBC(v7);
      memcpy(__dst, &v2[v3], sizeof(__dst));
      memcpy(__src, &v2[v3], sizeof(__src));
      sub_1C97A639C(v8, v11);
      sub_1C97A639C(__dst, v11);
      v4 = sub_1C992C65C(v7, __src);
      memcpy(v10, __src, sizeof(v10));
      sub_1C9932420(v10);
      memcpy(v11, v7, sizeof(v11));
      sub_1C9932420(v11);
    }

    else
    {
      v4 = 0;
    }

    sub_1C97A592C(v14);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

id _SNClassifySoundRequest.init(coder:)()
{
  sub_1C97FB3E4();
  ObjectType = swift_getObjectType();
  sub_1C97A1E14(1819307369, 0xE400000000000000);
  v2 = objc_allocWithZone(ObjectType);
  memcpy(&v2[OBJC_IVAR____SNClassifySoundRequest_impl], __src, 0x78uLL);
  v5.receiver = v2;
  v5.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v5, sel_init);

  swift_getObjectType();
  sub_1C97FB318();
  sub_1C993AE7C();
  swift_deallocPartialClassInstance();
  return v3;
}

Swift::Void __swiftcall _SNClassifySoundRequest.encode(with:)(NSCoder with)
{
  memcpy(__dst, (v1 + OBJC_IVAR____SNClassifySoundRequest_impl), sizeof(__dst));
  sub_1C97A639C(__dst, v2);
  sub_1C979FCB4(__dst);
  sub_1C9932420(__dst);
}

void sub_1C9932884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C97AEB94();
  a19 = v22;
  a20 = v23;
  v63 = v24;
  ObjectType = swift_getObjectType();
  sub_1C97A2CEC(&unk_1EC3CC710, &qword_1C9AB3BD8);
  sub_1C97AE9C8();
  v60 = v26;
  v61 = v25;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v27);
  v59 = &v52 - v28;
  memcpy(v71, (v20 + OBJC_IVAR____SNClassifySoundRequest_impl), sizeof(v71));
  sub_1C97A639C(v71, v65);
  v29 = MGGetProductType();
  sub_1C989B2F8(v29, v66);
  if (v66[6])
  {
    v30 = v66[0];

    sub_1C989ACF0(v30, v67);
    v31 = v69;
    v70 = v67[1];

    sub_1C993973C(&v70, &qword_1EC3C7DB0);
    a10 = v68;
    sub_1C993973C(&a10, &qword_1EC3C7DB8);

    v31(v65, v32);

    v33 = v65[0];
    v34 = v65[1];
    v36 = v65[2];
    v35 = v65[3];
    v38 = v65[4];
    v37 = v65[5];
    v39 = v65[6];
    v40 = BYTE1(v65[6]);
    v41 = BYTE2(v65[6]);
    v42 = BYTE3(v65[6]);
    v43 = BYTE4(v65[6]);
    v44 = BYTE5(v65[6]);
    v45 = v65[7];
    v46 = v65[8];
  }

  else
  {
    if (qword_1EC3C5E08 != -1)
    {
      swift_once();
    }

    memcpy(v65, &qword_1EC3D33B0, 0x41uLL);
    v58 = v65[7];
    v56 = BYTE5(v65[6]);
    v57 = LOBYTE(v65[8]);
    v54 = BYTE3(v65[6]);
    v55 = BYTE4(v65[6]);
    v53 = BYTE2(v65[6]);
    v40 = BYTE1(v65[6]);
    v39 = v65[6];
    v38 = v65[4];
    v37 = v65[5];
    v36 = v65[2];
    v35 = v65[3];
    v33 = v65[0];
    v34 = v65[1];
    sub_1C97A6264(v65, v64);
    v41 = v53;
    v42 = v54;
    v43 = v55;
    v44 = v56;
    v46 = v57;
    v45 = v58;
  }

  v65[0] = v33;
  v65[1] = v34;
  v65[2] = v36;
  v65[3] = v35;
  v65[4] = v38;
  v65[5] = v37;
  LOBYTE(v65[6]) = v39;
  BYTE1(v65[6]) = v40;
  BYTE2(v65[6]) = v41;
  BYTE3(v65[6]) = v42;
  BYTE4(v65[6]) = v43;
  BYTE5(v65[6]) = v44;
  v65[7] = v45;
  LOBYTE(v65[8]) = v46;
  memcpy(v72, v65, 0x41uLL);
  v47 = sub_1C986A0E4(v71, v72, v63);
  sub_1C9932420(v71);
  sub_1C97E8084(v65);
  if (!v21)
  {
    v64[0] = v47;

    v48 = sub_1C98B7774();
    sub_1C97A2CEC(v48, v49);
    sub_1C97A2CEC(&unk_1EC3C8670, &unk_1C9AA0730);
    sub_1C9939700(&unk_1EC3CD380);
    sub_1C9A91F68();

    sub_1C9939700(&qword_1EC3CC7A0);
    sub_1C9A91F28();

    v50 = sub_1C9871794();
    v51(v50);
  }

  sub_1C97AEB5C();
}

uint64_t sub_1C9932C5C(__int128 *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *(a1 + 6);
  sub_1C9932D9C();
  sub_1C97A2CEC(&qword_1EC3C7C70, &qword_1C9A9D640);
  result = swift_allocObject();
  *(result + 16) = xmmword_1C9A9EE60;
  *(result + 32) = 1;
  if (v3 < *(&v2 + 1))
  {
    __break(1u);
    goto LABEL_7;
  }

  if (__OFSUB__(v3, *(&v2 + 1)))
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  *(result + 40) = v3 - *(&v2 + 1);
  if (v4 < *(&v3 + 1))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (!__OFSUB__(v4, *(&v3 + 1)))
  {
    *(result + 48) = v4 - *(&v3 + 1);
    sub_1C97A2CEC(&qword_1EC3C7C80, &qword_1C9AB6790);
    sub_1C9939700(&qword_1EC3C7C88);
    return sub_1C9A91B88();
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_1C9932D9C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v2 * v1;
  if ((v2 * v1) >> 64 != (v2 * v1) >> 63)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v0[5];
  v5 = v3 + v4;
  if (__OFADD__(v3, v4))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = v0[4];
  v7 = v6 - 1;
  if (__OFSUB__(v6, 1))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v7 * v1;
  if ((v7 * v1) >> 64 != (v7 * v1) >> 63)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = v0[6];
  if (__OFADD__(v8, v9))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v8 + v9 >= v5)
  {
    sub_1C97AE9C4();
    return;
  }

LABEL_13:
  __break(1u);
}

void sub_1C9932E0C(uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a9@<X8>, double a10@<D0>, uint64_t a11)
{
  if ((*&a10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (a10 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (a10 >= 9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a3 & 0x80000000) != 0)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v33 = a11;
  v13 = *a2;
  v14 = *(a2 + 2);
  v15 = *(a2 + 3);
  v16 = a2[2];
  sub_1C9A93168();
  sub_1C993AE54();
  *a2 = sub_1C9A93118();
  *(a2 + 2) = v17;
  *(a2 + 3) = v18;
  a2[2] = v19;
  type metadata accessor for SNSoundClassifier(v20);
  __src[9] = v13;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  v29 = sub_1C9A93168();
  v30 = v21;
  v31 = v22;
  v32 = v23;
  sub_1C9932F64();
  if (!v11)
  {
    memcpy(a9, __src, 0x48uLL);
  }
}

void sub_1C9932F64()
{
  sub_1C97AEB94();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  ObjectType = swift_getObjectType();
  v13 = (*(v9 + 16))(ObjectType, v9);
  sub_1C993923C(v13);
  if (v14)
  {
    v15 = sub_1C9A92478();

    v16 = [v7 featureValueForName_];

    if (v16 && (v17 = [v16 dictionaryValue], v16, sub_1C97BD318(v18, 0, &qword_1EC3C54B0, 0x1E696AD98), v19 = sub_1C9A92328(), v17, v20 = sub_1C9934528(v19), , v20))
    {

      v21 = sub_1C98B7774();
      v23 = sub_1C9938970(v21, v22);

      v24 = *(v5 + 40);
      *v11 = *v5;
      *(v11 + 8) = *(v5 + 8);
      *(v11 + 16) = *(v5 + 16);
      *(v11 + 32) = *(v5 + 32);
      *(v11 + 40) = v24;
      *(v11 + 48) = v23;
      *(v11 + 56) = v3;
      *(v11 + 64) = v1;
    }

    else
    {
      sub_1C97A8E8C();
      sub_1C97AA928();
      v25 = swift_allocError();
      sub_1C993AE88(v25, v26);
    }
  }

  else
  {
    sub_1C97A8E8C();
    sub_1C97AA928();
    v27 = swift_allocError();
    sub_1C993AE88(v27, v28);
  }

  sub_1C97AEB5C();
}

uint64_t sub_1C9933138@<X0>(uint64_t *a1@<X8>)
{
  sub_1C986ECA4();
  sub_1C97AA928();
  result = swift_allocError();
  *a1 = result;
  *v3 = 2;
  return result;
}

void sub_1C993317C(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X5>, uint64_t *a5@<X8>)
{
  sub_1C98858B8(a2, a3, *a1, a4);
  if (!v5)
  {
    *a5 = v7;
    a5[1] = v8;
  }
}

uint64_t sub_1C99331C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  sub_1C97A2CEC(&qword_1EC3C6948, &qword_1C9A9D400);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C9A9EDD0;
  *(inited + 32) = a2;
  *(inited + 40) = a3;
  *(inited + 48) = v7;
  *(inited + 56) = v8;

  sub_1C97CE3DC(v7, v8);
  result = sub_1C9A92348();
  *a4 = result;
  return result;
}

void sub_1C9933270(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X7>, uint64_t a6@<X8>, double a7@<D0>, uint64_t a8, uint64_t a9)
{
  if (a4 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (a4 > 0x7FFFFFFF)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v14 = *result;
  v46 = *(a2 + 2);
  v44 = *a2;
  v45 = *(a2 + 3);
  v43 = a2[2];
  sub_1C9A93168();
  v42 = v15;
  sub_1C993AE44();
  if (!(v19 ^ v20 | v18))
  {
    goto LABEL_21;
  }

  if (a7 <= -9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (a7 >= 9.22337204e18)
  {
LABEL_23:
    __break(1u);
    return;
  }

  v40 = v16;
  v41 = v17;
  sub_1C9A93168();
  sub_1C993AE54();
  *a2 = sub_1C9A93118();
  *(a2 + 2) = v21;
  *(a2 + 3) = v22;
  a2[2] = v23;
  v24 = sub_1C993AD28();
  v26 = sub_1C98850D0(v24, v25, v14, a8, a9);
  if (!v9)
  {
    v27 = v26;
    v28 = *(v26 + 16);
    v29 = a5;
    if (v28 == *(a5 + 16))
    {
      if (v28)
      {
        v47 = MEMORY[0x1E69E7CC0];

        sub_1C97B7EE8(0, v28, 0);
        v30 = v47;
        v31 = *(v47 + 16);
        v32 = 32;
        do
        {
          v33 = *(v27 + v32);
          v34 = *(v47 + 24);
          if (v31 >= v34 >> 1)
          {
            sub_1C97B7EE8(v34 > 1, v31 + 1, 1);
          }

          *(v47 + 16) = v31 + 1;
          *(v47 + 8 * v31 + 32) = v33;
          v32 += 4;
          ++v31;
          --v28;
        }

        while (v28);

        v29 = a5;
      }

      else
      {

        v30 = MEMORY[0x1E69E7CC0];
      }

      sub_1C993ADB0();
      v39 = sub_1C992C4EC(v29, v30, v36, v37, v38);
      *a6 = v44;
      *(a6 + 8) = v46;
      *(a6 + 12) = v45;
      *(a6 + 16) = v43;
      *(a6 + 24) = v40;
      *(a6 + 32) = v42;
      *(a6 + 40) = v41;
      *(a6 + 48) = v39;
      *(a6 + 56) = 0;
      *(a6 + 64) = 0;
    }

    else
    {

      sub_1C986ECA4();
      sub_1C97AA928();
      swift_allocError();
      sub_1C9813764(v35, 3);
    }
  }
}

void sub_1C993351C(uint64_t *a1@<X8>)
{
  v3 = objc_autoreleasePoolPush();
  v4 = sub_1C99320D8();
  if (v1)
  {
    objc_autoreleasePoolPop(v3);
  }

  else
  {
    v5 = v4;
    objc_autoreleasePoolPop(v3);
    a1[3] = swift_getObjectType();
    *a1 = v5;
  }
}

id _SNClassifySoundRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double *sub_1C9933718(uint64_t a1, uint64_t a2, CMTimeValue a3, uint64_t a4, CMTimeEpoch a5, void *a6, double a7)
{
  v9 = v7;
  *&v30.timescale = a4;
  v30.epoch = a5;
  v30.value = a3;
  *(v7 + 16) = 0;
  type metadata accessor for _SNClassifySoundRequest(a7);
  swift_getObjectType();
  v14 = *(a2 + 16);
  v15 = v14();
  sub_1C9930448(v15, v16);
  if (v8)
  {
    swift_unknownObjectRelease();

    swift_deallocPartialClassInstance();
  }

  else
  {

    *(v9 + 64) = a1;
    *(v9 + 72) = a2;
    *(v9 + 24) = a7;
    *(v9 + 32) = v30.value;
    *(v9 + 40) = *&v30.timescale;
    *(v9 + 48) = v30.epoch;
    *(v9 + 56) = a6;
    type metadata accessor for SNModelMetadataUtils(v17);
    swift_unknownObjectRetain();
    v29 = a6;
    v18 = sub_1C98DE2C4();
    v19 = (v14)(v18);
    v20 = sub_1C9A3C55C(v19, MEMORY[0x1E69E7CD0]);

    *(v9 + 88) = 0;
    *(v9 + 96) = v20;
    v21 = sub_1C98DE2C4();
    v22 = (v14)(v21);
    v23 = sub_1C9A3C4BC(v22, 16000);

    v24 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInt_];
    sub_1C97CDE50(v24);
    LODWORD(v22) = v25;

    time = v30;
    CMTimeConvertScale(&v31, &time, v22, kCMTimeRoundingMethod_RoundTowardZero);
    v26 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
    sub_1C9A180B0(v26);
    LODWORD(v22) = v27;

    swift_unknownObjectRelease();
    *(v9 + 80) = v22;
  }

  return v9;
}

id sub_1C9933968(double a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v99[6] = *MEMORY[0x1E69E9840];
  v8 = objc_opt_self();
  v99[0] = 0;
  v10 = sub_1C9A761F8(v8, v99, v9);
  if (!v10)
  {
    v36 = v99[0];
    sub_1C9A913C8();

    swift_willThrow();
    return v10;
  }

  v11 = v99[0];
  v12 = sub_1C9A92478();
  v13 = sub_1C97C924C();
  sub_1C9A6B534(v13, v14);

  v15 = sub_1C9A92478();
  v99[0] = 0;
  v16 = sub_1C993AD44();
  v19 = sub_1C9A72FAC(v16, v17, v15, v18);

  if (!v19)
  {
    v37 = v99[0];
    sub_1C9A913C8();

    swift_willThrow();
    goto LABEL_37;
  }

  v97 = a4;
  v20 = v99[0];
  v21 = sub_1C9A92478();
  v99[0] = 0;
  v22 = sub_1C993AD44();
  v25 = sub_1C9A74DF0(v22, v23, v21, v24);

  if (!v25)
  {
    v38 = v99[0];
    sub_1C9A913C8();

    swift_willThrow();
    goto LABEL_37;
  }

  v26 = v99[0];
  v27 = sub_1C9A92478();
  v99[0] = 0;
  v28 = sub_1C993AD44();
  v31 = sub_1C9A75428(v28, v29, v27, v30);

  if (!v31)
  {
    v39 = v99[0];
    sub_1C97FB324();
    sub_1C9A913C8();

    swift_willThrow();
    goto LABEL_37;
  }

  v32 = v99[0];
  v33 = sub_1C98DE2C4();
  sub_1C9A3B76C(v33, v34, a3, v35);
  if (!v4)
  {
    v96 = v31;
    v40 = sub_1C9A92478();
    v99[0] = 0;
    v41 = sub_1C993AD44();
    v44 = sub_1C9A7347C(v41, v42, v40, 1, v43);

    v46 = v99[0];
    if (!v44)
    {
      v63 = v99[0];
      sub_1C9A913C8();

      swift_willThrow();
      v64 = v96;
LABEL_36:

      goto LABEL_37;
    }

    v94 = v19;
    v95 = v25;
    v91 = v44;
    type metadata accessor for SNModelMetadataUtils(v45);
    ObjectType = swift_getObjectType();
    v47 = *(a3 + 16);
    v48 = v46;
    v49 = v47(ObjectType, a3);
    v93 = sub_1C9A3C4BC(v49, 16000);

    v50 = v47(ObjectType, a3);
    v51 = [v50 inputDescriptionsByName];

    sub_1C97BD318(v52, 0, &qword_1EC3C54D0, 0x1E695FE50);
    v53 = sub_1C9A92328();

    v54 = sub_1C98BBCAC(v53);

    if (v54)
    {
      v56 = [v54 multiArrayConstraint];

      if (v56)
      {
        v57 = [v56 shape];

        sub_1C97BD318(v58, 0, &qword_1EC3C54B0, 0x1E696AD98);
        sub_1C97FB318();
        sub_1C9A92798();
      }
    }

    type metadata accessor for SNUtils(v55);
    v59 = sub_1C9A16DC8();

    v60 = a1 >= 0.0 && a1 < 1.0;
    if (!v60)
    {
      sub_1C99392AC();
      sub_1C97AA928();
      v61 = swift_allocError();
      sub_1C993AE88(v61, v62);

      return v10;
    }

    sub_1C9A76554(v93, 1, v59, v99);
    v65 = sub_1C993AC94();
    if (!sub_1C9A762F8(v65, v66, v94, v95, 0, 0, v67, v68))
    {
      v87 = v98;
      sub_1C9A913C8();

      swift_willThrow();
LABEL_35:
      v64 = v91;
      goto LABEL_36;
    }

    sub_1C993AE44();
    if (v60 ^ v72 | v71)
    {
      v73 = 0;
    }

    else
    {
      v73 = 1;
    }

    if (v69 > v70)
    {
      if (v73)
      {
        __break(1u);
        goto LABEL_41;
      }
    }

    else
    {
      v69 = v70;
    }

    if (v69 > -1.0)
    {
      if (v69 < 4294967300.0)
      {
        v74 = v69;
        v75 = v98;
        sub_1C9A76640(v93, v74, v97, v59, v99);
        v76 = sub_1C993AC94();
        if (sub_1C9A762F8(v76, v77, v95, v96, 0, 0, v78, v79))
        {
          v80 = v98;
          sub_1C9A76554(v93, v74, 1, v99);
          v81 = sub_1C993AC94();
          v85 = sub_1C9A762F8(v81, v82, v96, v91, 0, 0, v83, v84);
          v86 = v98;
          if (v85)
          {
            sub_1C9A695C8(v10, v97, v93, 0);
            sub_1C9A69B8C(v10);

            return v10;
          }

          v90 = v86;
          sub_1C9A913C8();

          swift_willThrow();
LABEL_37:

          return v10;
        }

        v88 = v98;
        sub_1C9A913C8();

        swift_willThrow();
        goto LABEL_35;
      }

LABEL_42:
      __break(1u);
    }

LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  return v10;
}

uint64_t sub_1C9934044(void *a1, double a2, uint64_t a3, void (*a4)(void))
{
  __src[9] = *MEMORY[0x1E69E9840];
  v6 = *(v4 + 88);
  v7 = v6 < 1;
  v8 = v6 - 1;
  if (v7)
  {
    v11 = objc_opt_self();
    __src[0] = 0;
    v12 = sub_1C9A7608C(v11, a1, __src);
    v13 = __src[0];
    if (v12)
    {
      v26 = a4;
      sub_1C9A924A8();
      v14 = v13;
      sub_1C9932F64();
      v15 = v5;
      if (!v5)
      {

        memcpy(__dst, __src, sizeof(__dst));
        v18 = type metadata accessor for _SNClassificationResult(v17);
        v19 = objc_allocWithZone(v18);
        v20 = sub_1C9847CE8();
        __dst[3] = v18;
        __dst[0] = v20;
        v21 = objc_allocWithZone(SNClassificationResult);
        v22 = sub_1C98490D8(__dst);
        sub_1C99343A8(v22, a1, *(v4 + 80));
        [v22 timeRange];
        *&__dst[3] = v28;
        __dst[5] = v29;
        __dst[0] = v27[0];
        __dst[1] = v27[1];
        __dst[2] = v27[2];
        sub_1C993AE70();
        v26();
        sub_1C9A92F08();
        sub_1C993AE70();
        v26();
        sub_1C993AE54();
        sub_1C9A92F18();
        [v22 setTimeRange_];
        sub_1C97A2CEC(&unk_1EC3C6E20, &qword_1C9A9FF60);
        v25 = swift_allocObject();
        *(v25 + 16) = xmmword_1C9A9DF30;
        *(v25 + 32) = v22;
        swift_unknownObjectRelease();
        goto LABEL_10;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      v16 = __src[0];
      v15 = sub_1C9A913C8();

      swift_willThrow();
    }
  }

  else
  {
    *(v4 + 88) = v8;
  }

  v25 = MEMORY[0x1E69E7CC0];
LABEL_10:

  if (v25 >> 62)
  {
    sub_1C97A2CEC(&unk_1EC3C8670, &unk_1C9AA0730);
    v23 = sub_1C9A93788();
  }

  else
  {
    sub_1C9A93B78();
    v23 = v25;
  }

  return v23;
}

void sub_1C99343A8(void *a1, void *a2, unsigned int a3)
{
  sub_1C9A3B888(a2, 0, v27);
  if (!v3)
  {
    sub_1C993AE44();
    if (!(v9 ^ v10 | v8))
    {
      __break(1u);
LABEL_8:
      __break(1u);
      goto LABEL_9;
    }

    if (v7 <= -9.22337204e18)
    {
      goto LABEL_8;
    }

    if (v7 >= 9.22337204e18)
    {
LABEL_9:
      __break(1u);
      return;
    }

    v11 = v7;
    v12 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInt_];
    sub_1C97CDE50(v12);
    v14 = v13;

    CMTimeMake(&v23, v11, v14);
    value = v23.value;
    epoch = v23.epoch;
    v17 = *&v23.timescale;
    v18 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInt_];
    sub_1C97CDE50(v18);
    LODWORD(v11) = v19;

    CMTimeMake(&v23, a3, v11);
    v20 = v23.value;
    v21 = v23.epoch;
    v22 = *&v23.timescale;
    v23.value = value;
    *&v23.timescale = v17;
    v23.epoch = epoch;
    v24 = v20;
    v25 = v22;
    v26 = v21;
    [a1 setTimeRange_];
  }
}

unint64_t sub_1C9934528(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1C97A2CEC(&qword_1EC3C8F40, &unk_1C9ACA170);
    v2 = sub_1C9A93808();
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
  while (1)
  {
    if (!v5)
    {
      while (1)
      {
        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v9 >= v6)
        {

          return v2;
        }

        v5 = *(a1 + 64 + 8 * v9);
        ++v8;
        if (v5)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5)) | (v9 << 6);
    sub_1C97C9078(*(a1 + 48) + 40 * v10, v28);
    v11 = *(*(a1 + 56) + 8 * v10);
    *(&v29 + 1) = v11;
    v26[0] = v28[0];
    v26[1] = v28[1];
    v27 = v29;
    sub_1C97C9078(v26, &v24);
    v12 = v11;
    if (!swift_dynamicCast())
    {
      sub_1C993973C(v26, &unk_1EC3CD210);

      return 0;
    }

    v13 = *(&v27 + 1);
    sub_1C993973C(v26, &unk_1EC3CD210);
    v24 = 0;
    v25 = 1;
    MEMORY[0x1CCA90790](v13, &v24);

    if (v25)
    {
      break;
    }

    v5 &= v5 - 1;
    v14 = v24;
    result = sub_1C9A32230(v22, v23);
    v15 = result;
    if (v16)
    {
      v17 = (v2[6] + 16 * result);
      *v17 = v22;
      v17[1] = v23;

      *(v2[7] + 8 * v15) = v14;
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_25;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v2[6] + 16 * result);
      *v18 = v22;
      v18[1] = v23;
      *(v2[7] + 8 * result) = v14;
      v19 = v2[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_26;
      }

      v2[2] = v21;
      v8 = v9;
    }
  }

  return 0;
}

void sub_1C99347DC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1C97A2CEC(&qword_1EC3CD2A0, &unk_1C9AA5E40);
    sub_1C97FB318();
    v2 = sub_1C9A93808();
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

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_12:
    v9 = __clz(__rbit64(v5)) | (v8 << 6);
    sub_1C97C9078(*(a1 + 48) + 40 * v9, v28);
    v10 = *(*(a1 + 56) + 8 * v9);
    *(&v29 + 1) = v10;
    v26[0] = v28[0];
    v26[1] = v28[1];
    v27 = v29;
    sub_1C97C9078(v26, v25);
    v11 = v10;
    if (!swift_dynamicCast())
    {
      sub_1C993973C(v26, &unk_1EC3CD210);

      return;
    }

    v5 &= v5 - 1;
    v12 = *(&v27 + 1);
    sub_1C993973C(v26, &unk_1EC3CD210);
    v13 = sub_1C9A32230(v23, v24);
    v14 = v13;
    if (v15)
    {
      v16 = (v2[6] + 16 * v13);
      *v16 = v23;
      v16[1] = v24;

      v17 = v2[7];
      v18 = *(v17 + 8 * v14);
      *(v17 + 8 * v14) = v12;

      v7 = v8;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_21;
      }

      *(v2 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v13;
      v19 = (v2[6] + 16 * v13);
      *v19 = v23;
      v19[1] = v24;
      *(v2[7] + 8 * v13) = v12;
      v20 = v2[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_22;
      }

      v2[2] = v22;
      v7 = v8;
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
}

id sub_1C9934A50(uint64_t a1)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    return v2;
  }

  sub_1C99392AC();
  sub_1C97AA928();
  swift_allocError();
  return sub_1C9813764(v4, 1);
}

void sub_1C9934AA8()
{
  v2 = *v0;
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  *(v3 + 24) = v2;

  v4 = sub_1C97C1C8C();

  if (!v1)
  {
    v5 = v0[2];
    v0[2] = v4;
  }
}

id sub_1C9934B60@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_1C9933968(*(a1 + 24), *(a1 + 64), *(a1 + 72), *(a1 + 80));
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

id sub_1C9934B9C(uint64_t a1)
{
  result = sub_1C9934A50(a1);
  if (!v1)
  {
    v3 = result;
    v4 = sub_1C9A92478();
    v5 = sub_1C988EB2C();
    v7 = sub_1C9A6AEE4(v5, v6);

    return v7;
  }

  return result;
}

void sub_1C9934C14(uint64_t a1)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v3 = *(v1 + 80);
  v4 = *(v1 + 24) * v3;
  if (COERCE__INT64(fabs(v4)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v4 >= 9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v5 = v3 - v4;
  if (__OFSUB__(v3, v4))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v6 = ceil(v3 / v5);
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v7 = *(v1 + 88);
  if (__OFADD__(v7, v6))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  *(v1 + 88) = v7 + v6;
  if (!v5)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v8 = v3 % v5;
  v9 = __OFSUB__(v5, v8);
  v10 = v5 - v8;
  if (v9)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v5 == -1 && v10 == 0x8000000000000000)
  {
LABEL_32:
    __break(1u);
  }

  v12 = v10 % v5;
  v13 = v12 + 1;
  if (__OFADD__(v12, 1))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v14 = sub_1C9934B9C(a1);
  if (!v2)
  {
    v15 = v14;
    sub_1C9A674AC(v14, 1);

    v17 = sub_1C9934A50(v16);
    v18 = objc_opt_self();
    v22[0] = 0;
    v19 = sub_1C9A767E4(v18, v17, v13, v22);

    if (v19)
    {
      v20 = sub_1C9934B9C(v22[0]);
      sub_1C9A674AC(v20, 0);
    }

    else
    {
      v21 = v22[0];
      sub_1C97FB324();
      sub_1C9A913C8();

      swift_willThrow();
    }
  }
}

uint64_t sub_1C9934E1C()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_1C9934E54()
{
  sub_1C9934E1C();

  return swift_deallocClassInstance();
}

uint64_t sub_1C9934F00()
{
  v0 = sub_1C992C874();
  sub_1C99320D8();

  return sub_1C98EE6C0();
}

uint64_t sub_1C9934F50()
{
  v1 = [v0 impl];
  sub_1C9A93318();
  swift_unknownObjectRelease();
  sub_1C97A2CEC(&qword_1EC3CD378, &unk_1C9AB6890);
  swift_dynamicCast();
  return v3;
}

void sub_1C9934FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C97FB3E4();
  v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  type metadata accessor for _SNClassifySoundRequest(v8);

  v9 = sub_1C98EE6C0();
  v11 = sub_1C9930D60(v9, v10, a3, a4);
  if (v4)
  {
  }

  else
  {
    v12 = v11;
    [v7 initWithImpl_];
  }
}

void sub_1C99350C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1C97AEB94();
  v45 = v26;
  v28 = v27;
  sub_1C97A2CEC(&qword_1EC3CD4F8, &qword_1C9AB70A0);
  sub_1C97AE9C8();
  v43 = v30;
  v44 = v29;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C97FB2C8();
  v42 = sub_1C97A2CEC(&qword_1EC3CD500, &qword_1C9AB70A8);
  sub_1C97AE9C8();
  v33 = v32;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v42 - v35;
  v37 = sub_1C97A2CEC(&qword_1EC3CD508, &unk_1C9AB70B0);
  sub_1C97AE9C8();
  v39 = v38;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v40);
  sub_1C97FB2D8();
  sub_1C97BE20C(v28, v28[3]);
  sub_1C993A22C();
  sub_1C9A93DD8();
  v41 = (v39 + 8);
  if (v45)
  {
    sub_1C97FB3CC();
    sub_1C993A280();
    sub_1C9A93988();
    (*(v43 + 8))(v24, v44);
  }

  else
  {
    sub_1C993A2D4();
    sub_1C9A93988();
    (*(v33 + 8))(v36, v42);
  }

  (*v41)(v25, v37);
  sub_1C97AEB5C();
}

void sub_1C993532C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1C97AEB94();
  a22 = v25;
  a23 = v26;
  v64 = v23;
  v28 = v27;
  v63 = sub_1C97A2CEC(&qword_1EC3CD4C8, &qword_1C9AB7088);
  sub_1C97AE9C8();
  v61 = v29;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v30);
  v31 = sub_1C97A2CEC(&qword_1EC3CD4D0, &qword_1C9AB7090);
  sub_1C97AE9C8();
  v60 = v32;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v57 - v34;
  v36 = sub_1C97A2CEC(&qword_1EC3CD4D8, &qword_1C9AB7098);
  sub_1C97AE9C8();
  v62 = v37;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v38);
  sub_1C97FB2C8();
  sub_1C97BE20C(v28, v28[3]);
  sub_1C993A22C();
  v39 = v64;
  sub_1C9A93DB8();
  if (v39)
  {
    goto LABEL_8;
  }

  v58 = v31;
  v59 = v35;
  v64 = v28;
  sub_1C9A93958();
  sub_1C98EE524();
  if (v41 == v42 >> 1)
  {
LABEL_7:
    v48 = sub_1C9A93648();
    sub_1C97AA928();
    swift_allocError();
    v50 = v49;
    sub_1C97A2CEC(&qword_1EC3C6F20, &qword_1C9AA0D80);
    *v50 = &type metadata for ClassifierVariant.E5SoundClassifierModelHashableUncodableWrapper.DomainError;
    v51 = sub_1C9A93868();
    sub_1C98994EC(v51);
    (*(*(v48 - 8) + 104))(v50, *MEMORY[0x1E69E6AF8], v48);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v62 + 8))(v24, v36);
    v28 = v64;
LABEL_8:
    sub_1C97A592C(v28);
LABEL_9:
    sub_1C97AEB5C();
    return;
  }

  v57 = 0;
  if (v41 < (v42 >> 1))
  {
    v43 = *(v40 + v41);
    sub_1C98EE520();
    v45 = v44;
    v47 = v46;
    swift_unknownObjectRelease();
    if (v45 == v47 >> 1)
    {
      if (v43)
      {
        LODWORD(v60) = v43;
        sub_1C97FB3CC();
        sub_1C993A280();
        sub_1C988A520(&type metadata for ClassifierVariant.E5SoundClassifierModelHashableUncodableWrapper.DomainError.CannotEncodeCodingKeys, &a13);
        swift_unknownObjectRelease();
        v53 = sub_1C993AD28();
        v54(v53);
      }

      else
      {
        a12 = 0;
        sub_1C993A2D4();
        v52 = v59;
        sub_1C988A520(&type metadata for ClassifierVariant.E5SoundClassifierModelHashableUncodableWrapper.DomainError.CannotDecodeCodingKeys, &a12);
        swift_unknownObjectRelease();
        (*(v60 + 8))(v52, v58);
      }

      v55 = sub_1C988A4F0();
      v56(v55);
      sub_1C97A592C(v64);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1C99357B4(uint64_t a1)
{
  v2 = sub_1C993A2D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99357F0(uint64_t a1)
{
  v2 = sub_1C993A2D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C993582C(uint64_t a1)
{
  v2 = sub_1C993A280();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9935868(uint64_t a1)
{
  v2 = sub_1C993A280();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99358A4(uint64_t a1)
{
  v2 = sub_1C993A22C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99358E0(uint64_t a1)
{
  v2 = sub_1C993A22C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9935980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_1C9A93CC8();
  a4(v8, v6);
  return sub_1C9A93D18();
}

uint64_t sub_1C99359CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C993AE24();
  v9 = sub_1C9A91748();
  sub_1C97AE9C8();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = (v4 + OBJC_IVAR____TtCO13SoundAnalysis17ClassifierVariant46E5SoundClassifierModelHashableUncodableWrapper_wrapped);
  *v15 = v7;
  v15[1] = v6;
  v15[2] = v5;
  v15[3] = a4;
  sub_1C9A91738();
  (*(v11 + 32))(v4 + OBJC_IVAR____TtCO13SoundAnalysis17ClassifierVariant46E5SoundClassifierModelHashableUncodableWrapper_id, v14, v9);
  return v4;
}

uint64_t sub_1C9935ABC()
{
  sub_1C993AF0C();
  swift_allocObject();
  v0 = sub_1C97FB324();
  return sub_1C9935B00(v0);
}

uint64_t sub_1C9935B00(void *a1)
{
  sub_1C993931C();
  sub_1C97AA928();
  v2 = swift_allocError();
  sub_1C993AE88(v2, v3);
  sub_1C97A592C(a1);
  sub_1C988EB2C();
  return swift_deallocPartialClassInstance();
}

uint64_t sub_1C9935BB0()
{
  sub_1C993931C();
  sub_1C97AA928();
  swift_allocError();
  return sub_1C9813764(v0, 1);
}

uint64_t sub_1C9935C08(uint64_t a1)
{
  sub_1C9A91748();
  sub_1C993AC7C();
  sub_1C993A1EC(v1);
  return sub_1C9A92398();
}

uint64_t sub_1C9935C7C()
{
  v1 = OBJC_IVAR____TtCO13SoundAnalysis17ClassifierVariant46E5SoundClassifierModelHashableUncodableWrapper_id;
  sub_1C9A91748();
  sub_1C97DA940();
  (*(v2 + 8))(v0 + v1);

  return swift_deallocClassInstance();
}

uint64_t sub_1C9935D40(uint64_t a1)
{
  sub_1C97BE32C(a1);
  sub_1C9A91748();
  sub_1C993AC7C();
  sub_1C993A1EC(v1);
  sub_1C9A92398();
  return sub_1C9A93D18();
}

uint64_t sub_1C9935E0C()
{
  sub_1C9A93CC8();
  sub_1C9A91748();
  sub_1C993A1EC(&qword_1EC3CD290);
  sub_1C9A92398();
  return sub_1C9A93D18();
}

uint64_t sub_1C9935ED8@<X0>(uint64_t *a1@<X8>)
{
  v2 = (*v1 + OBJC_IVAR____TtCO13SoundAnalysis17ClassifierVariant46E5SoundClassifierModelHashableUncodableWrapper_wrapped);
  v3 = v2[1];
  v4 = v2[2];
  v5 = v2[3];
  *a1 = *v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
}

uint64_t sub_1C9935F34@<X0>(uint64_t *a1@<X8>, uint64_t *a2@<X0>)
{
  result = sub_1C9930E44(*a2, a2[1], a2[2], a2[3]);
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for ClassifierVariant.E5SoundClassifierModelHashableUncodableWrapper(uint64_t a1)
{
  result = qword_1EC3CD1C8;
  if (!qword_1EC3CD1C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C9936040(uint64_t a1)
{
  result = sub_1C9A91748();
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

uint64_t sub_1C99360F8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C9936138(uint64_t result, int a2, int a3)
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

uint64_t sub_1C9936188(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 112);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C99361C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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
      *(result + 112) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C9936234(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 48);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C9936274(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C99362DC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 185))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 112);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C993631C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 184) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 185) = 1;
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
      *(result + 112) = (a2 - 1);
      return result;
    }

    *(result + 185) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C99363A0()
{
  result = qword_1EC3CD1E0;
  if (!qword_1EC3CD1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD1E0);
  }

  return result;
}

unint64_t sub_1C99363F4(uint64_t a1)
{
  result = sub_1C98DC750();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C993641C(uint64_t a1)
{
  result = sub_1C98DDD1C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C9936448()
{
  result = qword_1EC3CD1E8;
  if (!qword_1EC3CD1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD1E8);
  }

  return result;
}

unint64_t sub_1C99364A0()
{
  result = qword_1EC3CD1F0;
  if (!qword_1EC3CD1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD1F0);
  }

  return result;
}

unint64_t sub_1C99364F8()
{
  result = qword_1EC3CD1F8;
  if (!qword_1EC3CD1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD1F8);
  }

  return result;
}

void sub_1C9936594(uint64_t a1, char a2, void *a3)
{
  v29 = a1;
  v4 = 0;
  v5 = 0;
  v30 = *(a1 + 16);
  while (1)
  {
    if (v30 == v5)
    {

      return;
    }

    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      sub_1C9A93BF8();
      __break(1u);
      goto LABEL_20;
    }

    v31 = v5;
    v32 = v4;
    v6 = *(a1 + v4 + 32);
    v7 = *(a1 + v4 + 64);
    v35 = *(a1 + v4 + 56);
    v8 = *(a1 + v4 + 72);
    v33 = *(a1 + v4 + 40);
    v34 = *(a1 + v4 + 80);
    v9 = *(a1 + v4 + 88);
    v10 = *(a1 + v4 + 48);
    v11 = *a3;
    v12 = sub_1C9A37FD8();
    v14 = v11[2];
    v15 = (v13 & 1) == 0;
    v16 = v14 + v15;
    if (__OFADD__(v14, v15))
    {
      goto LABEL_17;
    }

    v17 = v12;
    v18 = v13;
    v19 = v11[3];

    if (v19 >= v16)
    {
      if ((a2 & 1) == 0)
      {
        sub_1C97A2CEC(&qword_1EC3CD398, &qword_1C9AB68B0);
        sub_1C9A93758();
      }
    }

    else
    {
      sub_1C99F0518(v16, a2 & 1);
      v20 = sub_1C9A37FD8();
      if ((v18 & 1) != (v21 & 1))
      {
        goto LABEL_19;
      }

      v17 = v20;
    }

    if (v18)
    {
      break;
    }

    v22 = *a3;
    *(*a3 + 8 * (v17 >> 6) + 64) |= 1 << v17;
    *(v22[6] + v17) = v6;
    v23 = v22[7] + 56 * v17;
    *v23 = v33;
    *(v23 + 8) = v10 & 1;
    *(v23 + 16) = v35;
    *(v23 + 24) = v7;
    *(v23 + 32) = v8;
    *(v23 + 40) = v34;
    *(v23 + 48) = v9;
    v24 = v22[2];
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (v25)
    {
      goto LABEL_18;
    }

    v22[2] = v26;
    v4 = v32 + 64;
    v5 = v31 + 1;
    a2 = 1;
    a1 = v29;
  }

  v27 = swift_allocError();
  swift_willThrow();

  v28 = v27;
  sub_1C97A2CEC(&unk_1EC3CA040, &qword_1C9A9C750);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_20:
  sub_1C9A935B8();
  MEMORY[0x1CCA90230](0xD00000000000001BLL, 0x80000001C9AD9B20);
  sub_1C9A93728();
  MEMORY[0x1CCA90230](39, 0xE100000000000000);
  sub_1C9A93778("Fatal error", 11, 2, 0, 0xE000000000000000, "Swift/NativeDictionary.swift", 28, 2, 792);
  __break(1u);
}

void sub_1C99368D4(uint64_t a1, char a2, void *a3)
{
  v24 = *(a1 + 16);
  if (!v24)
  {

    return;
  }

  v5 = 0;
  for (i = a1 + 32; ; i += 48)
  {
    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1C9A93BF8();
      __break(1u);
      goto LABEL_22;
    }

    sub_1C9812F64(i, &v29, &qword_1EC3C69F0, &qword_1C9AA0070);
    v8 = v29;
    v7 = v30;
    v27 = v29;
    v28 = v30;
    sub_1C97A2D34(&v31, v26);
    v9 = *a3;
    v11 = sub_1C9A32230(v8, v7);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v14 = v10;
    if (v9[3] < v12 + v13)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1C97A2CEC(&qword_1EC3CD268, &qword_1C9AB67D8);
      sub_1C9A93758();
      if (v14)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v17 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v18 = (v17[6] + 16 * v11);
    *v18 = v8;
    v18[1] = v7;
    sub_1C97A2D34(v26, (v17[7] + 32 * v11));
    v19 = v17[2];
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      goto LABEL_20;
    }

    ++v5;
    v17[2] = v21;
    a2 = 1;
    if (v24 == v5)
    {

      return;
    }
  }

  sub_1C99F0778();
  v15 = sub_1C9A32230(v8, v7);
  if ((v14 & 1) != (v16 & 1))
  {
    goto LABEL_21;
  }

  v11 = v15;
  if ((v14 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v22 = swift_allocError();
  swift_willThrow();
  v32 = v22;
  v23 = v22;
  sub_1C97A2CEC(&unk_1EC3CA040, &qword_1C9A9C750);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_1C97A592C(v26);

    return;
  }

LABEL_22:
  sub_1C9A935B8();
  MEMORY[0x1CCA90230](0xD00000000000001BLL, 0x80000001C9AD9B20);
  sub_1C9A93728();
  MEMORY[0x1CCA90230](39, 0xE100000000000000);
  sub_1C9A93778("Fatal error", 11, 2, 0, 0xE000000000000000, "Swift/NativeDictionary.swift", 28, 2, 792);
  __break(1u);
}

void sub_1C9936ED0(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v26 = *(a1 + 16);
  for (i = (a1 + 56); ; i += 4)
  {
    if (v26 == v4)
    {
LABEL_17:

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      sub_1C9A93BF8();
      __break(1u);
      goto LABEL_23;
    }

    v7 = *(i - 1);
    v6 = *i;
    v9 = *(i - 3);
    v8 = *(i - 2);

    sub_1C97CE3DC(v7, v6);
    if (!v8)
    {
      goto LABEL_17;
    }

    v28 = v6;
    v10 = *a3;
    v12 = sub_1C9A32230(v9, v8);
    v13 = v10[2];
    v14 = (v11 & 1) == 0;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_20;
    }

    v15 = v11;
    if (v10[3] < v13 + v14)
    {
      break;
    }

    if (a2)
    {
      if (v11)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1C97A2CEC(&qword_1EC3CD230, &unk_1C9AB67A0);
      sub_1C9A93758();
      if (v15)
      {
        goto LABEL_15;
      }
    }

LABEL_12:
    v18 = *a3;
    *(*a3 + 8 * (v12 >> 6) + 64) |= 1 << v12;
    v19 = (v18[6] + 16 * v12);
    *v19 = v9;
    v19[1] = v8;
    v20 = (v18[7] + 16 * v12);
    *v20 = v7;
    v20[1] = v28;
    v21 = v18[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_21;
    }

    v18[2] = v23;
    ++v4;
    a2 = 1;
  }

  sub_1C99F0A80();
  v16 = sub_1C9A32230(v9, v8);
  if ((v15 & 1) != (v17 & 1))
  {
    goto LABEL_22;
  }

  v12 = v16;
  if ((v15 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_15:
  v24 = swift_allocError();
  swift_willThrow();
  v25 = v24;
  sub_1C97A2CEC(&unk_1EC3CA040, &qword_1C9A9C750);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_1C97A5978(v7, v28);

    return;
  }

LABEL_23:
  sub_1C9A935B8();
  MEMORY[0x1CCA90230](0xD00000000000001BLL, 0x80000001C9AD9B20);
  sub_1C9A93728();
  MEMORY[0x1CCA90230](39, 0xE100000000000000);
  sub_1C9A93778("Fatal error", 11, 2, 0, 0xE000000000000000, "Swift/NativeDictionary.swift", 28, 2, 792);
  __break(1u);
}

void sub_1C99371D0(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v27 = *(a1 + 16);
  for (i = (a1 + 56); ; i += 4)
  {
    if (v27 == v4)
    {

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1C9A93BF8();
      __break(1u);
      goto LABEL_22;
    }

    v29 = v4;
    v7 = *(i - 3);
    v6 = *(i - 2);
    v9 = *(i - 1);
    v8 = *i;
    v10 = *a3;

    v12 = sub_1C9A32230(v7, v6);
    v13 = v10[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_19;
    }

    v16 = v11;
    if (v10[3] < v15)
    {
      break;
    }

    if (a2)
    {
      if (v11)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_1C97A2CEC(&qword_1EC3C7BB0, &qword_1C9AA0018);
      sub_1C9A93758();
      if (v16)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v19 = *a3;
    *(*a3 + 8 * (v12 >> 6) + 64) |= 1 << v12;
    v20 = (v19[6] + 16 * v12);
    *v20 = v7;
    v20[1] = v6;
    v21 = (v19[7] + 16 * v12);
    *v21 = v9;
    v21[1] = v8;
    v22 = v19[2];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      goto LABEL_20;
    }

    v19[2] = v24;
    v4 = v29 + 1;
    a2 = 1;
  }

  sub_1C99F0C10(v15);
  v17 = sub_1C9A32230(v7, v6);
  if ((v16 & 1) != (v18 & 1))
  {
    goto LABEL_21;
  }

  v12 = v17;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v25 = swift_allocError();
  swift_willThrow();
  v26 = v25;
  sub_1C97A2CEC(&unk_1EC3CA040, &qword_1C9A9C750);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_1C9A935B8();
  MEMORY[0x1CCA90230](0xD00000000000001BLL, 0x80000001C9AD9B20);
  sub_1C9A93728();
  MEMORY[0x1CCA90230](39, 0xE100000000000000);
  sub_1C9A93778("Fatal error", 11, 2, 0, 0xE000000000000000, "Swift/NativeDictionary.swift", 28, 2, 792);
  __break(1u);
}

void sub_1C99374C4(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v35 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v35 == v4)
    {

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1C9A93BF8();
      __break(1u);
      goto LABEL_22;
    }

    v6 = *(i - 16);
    v7 = *(i - 1);
    v8 = *i;
    v9 = *a3;
    v10 = sub_1C9A37FD8();
    v12 = v9[2];
    v13 = (v11 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    v16 = v11;
    v17 = v9[3];

    if (v17 < v14)
    {
      break;
    }

    if (a2)
    {
      if (v16)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_1C97A2CEC(&qword_1EC3CD258, &qword_1C9AB67C8);
      sub_1C9A93758();
      if (v16)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v26 = *a3;
    *(*a3 + 8 * (v15 >> 6) + 64) |= 1 << v15;
    *(v26[6] + v15) = v6;
    v27 = (v26[7] + 16 * v15);
    *v27 = v7;
    v27[1] = v8;
    v28 = v26[2];
    v29 = __OFADD__(v28, 1);
    v30 = v28 + 1;
    if (v29)
    {
      goto LABEL_20;
    }

    v26[2] = v30;
    ++v4;
    a2 = 1;
  }

  sub_1C99F0DC8(v14, a2 & 1, v18, v19, v20, v21, v22, v23, v33, *v34, v34[4]);
  v24 = sub_1C9A37FD8();
  if ((v16 & 1) != (v25 & 1))
  {
    goto LABEL_21;
  }

  v15 = v24;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v31 = swift_allocError();
  swift_willThrow();

  v32 = v31;
  sub_1C97A2CEC(&unk_1EC3CA040, &qword_1C9A9C750);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_1C9A935B8();
  MEMORY[0x1CCA90230](0xD00000000000001BLL, 0x80000001C9AD9B20);
  sub_1C9A93728();
  MEMORY[0x1CCA90230](39, 0xE100000000000000);
  sub_1C9A93778("Fatal error", 11, 2, 0, 0xE000000000000000, "Swift/NativeDictionary.swift", 28, 2, 792);
  __break(1u);
}

void sub_1C9937794(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v35 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v35 == v4)
    {

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1C9A93BF8();
      __break(1u);
      goto LABEL_22;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;

    v10 = v8;
    v18 = sub_1C9A32230(v7, v6);
    v19 = v9[2];
    v20 = (v11 & 1) == 0;
    v21 = v19 + v20;
    if (__OFADD__(v19, v20))
    {
      goto LABEL_19;
    }

    v22 = v11;
    if (v9[3] < v21)
    {
      break;
    }

    if (a2)
    {
      if (v11)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_1C97A2CEC(&qword_1EC3CD360, &qword_1C9AB6878);
      sub_1C9A93758();
      if (v22)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v25 = *a3;
    *(*a3 + 8 * (v18 >> 6) + 64) |= 1 << v18;
    v26 = (v25[6] + 16 * v18);
    *v26 = v7;
    v26[1] = v6;
    *(v25[7] + 8 * v18) = v10;
    v27 = v25[2];
    v28 = __OFADD__(v27, 1);
    v29 = v27 + 1;
    if (v28)
    {
      goto LABEL_20;
    }

    v25[2] = v29;
    ++v4;
    a2 = 1;
  }

  sub_1C99F0F4C(v21, a2 & 1, v12, v13, v14, v15, v16, v17, v32, v33, *v34, v34[4]);
  v23 = sub_1C9A32230(v7, v6);
  if ((v22 & 1) != (v24 & 1))
  {
    goto LABEL_21;
  }

  v18 = v23;
  if ((v22 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v30 = swift_allocError();
  swift_willThrow();
  v31 = v30;
  sub_1C97A2CEC(&unk_1EC3CA040, &qword_1C9A9C750);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_1C9A935B8();
  MEMORY[0x1CCA90230](0xD00000000000001BLL, 0x80000001C9AD9B20);
  sub_1C9A93728();
  MEMORY[0x1CCA90230](39, 0xE100000000000000);
  sub_1C9A93778("Fatal error", 11, 2, 0, 0xE000000000000000, "Swift/NativeDictionary.swift", 28, 2, 792);
  __break(1u);
}

void sub_1C9937A74(uint64_t a1, uint64_t a2, char a3, void *a4)
{

  v7 = 0;
  v8 = (a1 + 40);
  while (1)
  {
    v9 = *(a1 + 16);
    if (v7 == v9)
    {
LABEL_18:

      swift_bridgeObjectRelease_n();
      return;
    }

    if (v7 >= v9)
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      sub_1C9A93BF8();
      __break(1u);
      goto LABEL_24;
    }

    v10 = *(a2 + 16);
    if (v7 == v10)
    {
      goto LABEL_18;
    }

    if (v7 >= v10)
    {
      goto LABEL_20;
    }

    v12 = *(v8 - 1);
    v11 = *v8;
    v13 = a2;
    v14 = *(a2 + 8 * v7 + 32);
    v15 = *a4;

    v17 = sub_1C9A32230(v12, v11);
    v18 = v15[2];
    v19 = (v16 & 1) == 0;
    v20 = v18 + v19;
    if (__OFADD__(v18, v19))
    {
      goto LABEL_21;
    }

    v21 = v16;
    if (v15[3] < v20)
    {
      break;
    }

    if (a3)
    {
      if (v16)
      {
        goto LABEL_16;
      }
    }

    else
    {
      sub_1C97A2CEC(&qword_1EC3C7C08, &qword_1C9AA0078);
      sub_1C9A93758();
      if (v21)
      {
        goto LABEL_16;
      }
    }

LABEL_13:
    v24 = *a4;
    *(*a4 + 8 * (v17 >> 6) + 64) |= 1 << v17;
    v25 = (v24[6] + 16 * v17);
    *v25 = v12;
    v25[1] = v11;
    *(v24[7] + 8 * v17) = v14;
    v26 = v24[2];
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      goto LABEL_22;
    }

    v24[2] = v28;
    v8 += 2;
    ++v7;
    a3 = 1;
    a2 = v13;
  }

  sub_1C99F10A0(v20);
  v22 = sub_1C9A32230(v12, v11);
  if ((v21 & 1) != (v23 & 1))
  {
    goto LABEL_23;
  }

  v17 = v22;
  if ((v21 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_16:
  v29 = swift_allocError();
  swift_willThrow();
  v30 = v29;
  sub_1C97A2CEC(&unk_1EC3CA040, &qword_1C9A9C750);
  if ((swift_dynamicCast() & 1) == 0)
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    return;
  }

LABEL_24:
  sub_1C9A935B8();
  MEMORY[0x1CCA90230](0xD00000000000001BLL, 0x80000001C9AD9B20);
  sub_1C9A93728();
  MEMORY[0x1CCA90230](39, 0xE100000000000000);
  sub_1C9A93778("Fatal error", 11, 2, 0, 0xE000000000000000, "Swift/NativeDictionary.swift", 28, 2, 792);
  __break(1u);
}

void sub_1C9937DA0(uint64_t a1, char a2, void *a3)
{
  v5 = 0;
  v26 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v26 == v5)
    {

      return;
    }

    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      sub_1C9A93BF8();
      __break(1u);
      goto LABEL_21;
    }

    v8 = *(i - 2);
    v7 = *(i - 1);
    v9 = *i;
    v10 = *a3;

    v12 = sub_1C9A32230(v8, v7);
    v13 = v10[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_18;
    }

    v16 = v11;
    if (v10[3] < v15)
    {
      break;
    }

    if (a2)
    {
      if (v11)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_1C97A2CEC(&qword_1EC3C7C08, &qword_1C9AA0078);
      sub_1C9A93758();
      if (v16)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v19 = *a3;
    *(*a3 + 8 * (v12 >> 6) + 64) |= 1 << v12;
    v20 = (v19[6] + 16 * v12);
    *v20 = v8;
    v20[1] = v7;
    *(v19[7] + 8 * v12) = v9;
    v21 = v19[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_19;
    }

    v19[2] = v23;
    ++v5;
    a2 = 1;
  }

  sub_1C99F10A0(v15);
  v17 = sub_1C9A32230(v8, v7);
  if ((v16 & 1) != (v18 & 1))
  {
    goto LABEL_20;
  }

  v12 = v17;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v24 = swift_allocError();
  swift_willThrow();
  v25 = v24;
  sub_1C97A2CEC(&unk_1EC3CA040, &qword_1C9A9C750);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_21:
  sub_1C9A935B8();
  MEMORY[0x1CCA90230](0xD00000000000001BLL, 0x80000001C9AD9B20);
  sub_1C9A93728();
  MEMORY[0x1CCA90230](39, 0xE100000000000000);
  sub_1C9A93778("Fatal error", 11, 2, 0, 0xE000000000000000, "Swift/NativeDictionary.swift", 28, 2, 792);
  __break(1u);
}

void sub_1C9938078(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v34 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 24)
  {
    if (v34 == v4)
    {

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1C9A93BF8();
      __break(1u);
      goto LABEL_22;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;

    v17 = sub_1C9A32230(v7, v6);
    v18 = v9[2];
    v19 = (v10 & 1) == 0;
    v20 = v18 + v19;
    if (__OFADD__(v18, v19))
    {
      goto LABEL_19;
    }

    v21 = v10;
    if (v9[3] < v20)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_1C97A2CEC(&qword_1EC3CD350, &qword_1C9AB6868);
      sub_1C9A93758();
      if (v21)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v24 = *a3;
    *(*a3 + 8 * (v17 >> 6) + 64) |= 1 << v17;
    v25 = (v24[6] + 16 * v17);
    *v25 = v7;
    v25[1] = v6;
    *(v24[7] + v17) = v8;
    v26 = v24[2];
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      goto LABEL_20;
    }

    v24[2] = v28;
    ++v4;
    a2 = 1;
  }

  sub_1C99F120C(v20, a2 & 1, v11, v12, v13, v14, v15, v16, v31, v32, *v33, v33[4]);
  v22 = sub_1C9A32230(v7, v6);
  if ((v21 & 1) != (v23 & 1))
  {
    goto LABEL_21;
  }

  v17 = v22;
  if ((v21 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v29 = swift_allocError();
  swift_willThrow();

  v30 = v29;
  sub_1C97A2CEC(&unk_1EC3CA040, &qword_1C9A9C750);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_1C9A935B8();
  MEMORY[0x1CCA90230](0xD00000000000001BLL, 0x80000001C9AD9B20);
  sub_1C9A93728();
  MEMORY[0x1CCA90230](39, 0xE100000000000000);
  sub_1C9A93778("Fatal error", 11, 2, 0, 0xE000000000000000, "Swift/NativeDictionary.swift", 28, 2, 792);
  __break(1u);
}

void sub_1C9938630(uint64_t a1, uint64_t a2, char a3, void *a4)
{

  v7 = 0;
  v8 = 0;
  v33 = a2;
  for (i = a1; ; a1 = i)
  {
    v9 = *(a1 + 16);
    if (v8 == v9)
    {
LABEL_18:

      swift_bridgeObjectRelease_n();
      return;
    }

    if (v8 >= v9)
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      sub_1C9A93BF8();
      __break(1u);
      goto LABEL_25;
    }

    v10 = *(a2 + 16);
    if (v8 == v10)
    {
      goto LABEL_18;
    }

    if (v8 >= v10)
    {
      goto LABEL_21;
    }

    v11 = *(a1 + v7 + 32);
    v12 = *(a1 + v7 + 40);
    v13 = v7;
    v15 = *(a2 + v7 + 32);
    v14 = *(a2 + v7 + 40);
    v16 = *a4;

    v18 = sub_1C9A32230(v11, v12);
    v19 = v16[2];
    v20 = (v17 & 1) == 0;
    v21 = v19 + v20;
    if (__OFADD__(v19, v20))
    {
      goto LABEL_22;
    }

    v22 = v17;
    if (v16[3] < v21)
    {
      break;
    }

    if (a3)
    {
      if (v17)
      {
        goto LABEL_16;
      }
    }

    else
    {
      sub_1C97A2CEC(&qword_1EC3C7BB0, &qword_1C9AA0018);
      sub_1C9A93758();
      if (v22)
      {
        goto LABEL_16;
      }
    }

LABEL_13:
    v25 = *a4;
    *(*a4 + 8 * (v18 >> 6) + 64) |= 1 << v18;
    v26 = (v25[6] + 16 * v18);
    *v26 = v11;
    v26[1] = v12;
    v27 = (v25[7] + 16 * v18);
    *v27 = v15;
    v27[1] = v14;
    v28 = v25[2];
    v29 = __OFADD__(v28, 1);
    v30 = v28 + 1;
    if (v29)
    {
      goto LABEL_23;
    }

    v25[2] = v30;
    v7 = v13 + 16;
    ++v8;
    a3 = 1;
    a2 = v33;
  }

  sub_1C99F0C10(v21);
  v23 = sub_1C9A32230(v11, v12);
  if ((v22 & 1) != (v24 & 1))
  {
    goto LABEL_24;
  }

  v18 = v23;
  if ((v22 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_16:
  v31 = swift_allocError();
  swift_willThrow();
  v32 = v31;
  sub_1C97A2CEC(&unk_1EC3CA040, &qword_1C9A9C750);
  if ((swift_dynamicCast() & 1) == 0)
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    return;
  }

LABEL_25:
  sub_1C9A935B8();
  MEMORY[0x1CCA90230](0xD00000000000001BLL, 0x80000001C9AD9B20);
  sub_1C9A93728();
  MEMORY[0x1CCA90230](39, 0xE100000000000000);
  sub_1C9A93778("Fatal error", 11, 2, 0, 0xE000000000000000, "Swift/NativeDictionary.swift", 28, 2, 792);
  __break(1u);
}

unint64_t *sub_1C9938970(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();

      v4 = sub_1C9938D30(v12, v7, v4, a2);
      MEMORY[0x1CCA93280](v12, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v8);
  v9 = (v13 - ((8 * v7 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_1C99F14F0(0, v7, v9);

  v10 = sub_1C9938B34(v9, v7, v4, a2);
  if (v2)
  {
    swift_willThrow();
  }

  else
  {
    v4 = v10;
  }

  swift_bridgeObjectRelease_n();
LABEL_6:

  return v4;
}

unint64_t *sub_1C9938B34(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = result;
  v29 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  v11 = a4 + 56;
LABEL_5:
  while (v9)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = v12 | (v5 << 6);
    if (*(a4 + 16))
    {
      v32 = v9;
      v30 = v12 | (v5 << 6);
      v16 = (*(a3 + 48) + 16 * v15);
      v18 = *v16;
      v17 = v16[1];
      sub_1C9A93CC8();

      sub_1C9A92528();
      v19 = sub_1C9A93D18();
      v20 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v21 = v19 & v20;
        if (((*(v11 + (((v19 & v20) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v19 & v20)) & 1) == 0)
        {
          break;
        }

        v22 = (*(a4 + 48) + 16 * v21);
        if (*v22 != v18 || v22[1] != v17)
        {
          v24 = sub_1C9A93B18();
          v19 = v21 + 1;
          if ((v24 & 1) == 0)
          {
            continue;
          }
        }

        v9 = v32;
        goto LABEL_5;
      }

      v9 = v32;
      v15 = v30;
    }

    *(v28 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
    if (__OFADD__(v29++, 1))
    {
      __break(1u);
LABEL_25:
      v26 = sub_1C9939008(v28, a2, v29, a3);

      return v26;
    }
  }

  v13 = v5;
  while (1)
  {
    v5 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_25;
    }

    v14 = *(v6 + 8 * v5);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v9 = (v14 - 1) & v14;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1C9938D30(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_bridgeObjectRetain_n();
    v8 = sub_1C9938B34(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t sub_1C9938DD0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_1C97A2CEC(&qword_1EC3CD260, &qword_1C9AB67D0);
  result = sub_1C9A93808();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    sub_1C9A93CC8();

    v33 = v21;
    sub_1C9A92528();
    result = sub_1C9A93D18();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    *(*(v9 + 56) + 8 * v25) = v33;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1C9939008(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_1C97A2CEC(&qword_1EC3C8F40, &unk_1C9ACA170);
  result = sub_1C9A93808();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    sub_1C9A93CC8();

    sub_1C9A92528();
    result = sub_1C9A93D18();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    *(*(v9 + 56) + 8 * v25) = v21;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1C993923C(void *a1)
{
  v2 = [a1 predictedProbabilitiesName];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1C9A924A8();

  return v3;
}

unint64_t sub_1C99392AC()
{
  result = qword_1EC3CD280;
  if (!qword_1EC3CD280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD280);
  }

  return result;
}

unint64_t sub_1C993931C()
{
  result = qword_1EC3CD298;
  if (!qword_1EC3CD298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD298);
  }

  return result;
}

unint64_t sub_1C9939370()
{
  result = qword_1EC3CD2B0;
  if (!qword_1EC3CD2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD2B0);
  }

  return result;
}

unint64_t sub_1C99393C4()
{
  result = qword_1EC3CD2C8;
  if (!qword_1EC3CD2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD2C8);
  }

  return result;
}

unint64_t sub_1C9939418()
{
  result = qword_1EC3CD2D0;
  if (!qword_1EC3CD2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD2D0);
  }

  return result;
}

uint64_t sub_1C993946C(uint64_t result, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  if (a3 != 1)
  {
    if (a3)
    {
      return v3;
    }
  }
}

unint64_t sub_1C9939494()
{
  result = qword_1EC3CD2F0;
  if (!qword_1EC3CD2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD2F0);
  }

  return result;
}

unint64_t sub_1C99394E8(uint64_t a1)
{
  result = sub_1C97BE38C(a1);
  if (!result)
  {
    v3 = sub_1C97AA4F0(&qword_1EC3C7BF0, &unk_1C9AA0050);
    result = sub_1C97FB3F0(v3);
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C9939540()
{
  result = qword_1EC3CD308;
  if (!qword_1EC3CD308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD308);
  }

  return result;
}

unint64_t sub_1C9939594(uint64_t a1)
{
  result = sub_1C97BE38C(a1);
  if (!result)
  {
    sub_1C97AA4F0(&qword_1EC3C82B8, &qword_1C9AA91F0);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C9939600()
{
  result = qword_1EC3CD328;
  if (!qword_1EC3CD328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD328);
  }

  return result;
}

unint64_t sub_1C9939654()
{
  result = qword_1EC3CD338;
  if (!qword_1EC3CD338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD338);
  }

  return result;
}

uint64_t sub_1C99396A8(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
  }

  else
  {

    return swift_unknownObjectRetain();
  }
}

unint64_t sub_1C9939700(uint64_t a1)
{
  result = sub_1C97BE38C(a1);
  if (!result)
  {
    v4 = sub_1C993AF6C(0, v3);
    sub_1C97AA4F0(v4, v5);
    sub_1C97FB318();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1C993973C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C993AF6C(a1, a2);
  sub_1C97A2CEC(v3, v4);
  sub_1C97DA940();
  (*(v5 + 8))(a1);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for SoundClassification.AudioSourceAgnosticRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _SNClassifySoundRequest.DomainError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for _SNClassifySoundRequest.DomainError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C9939A44()
{
  result = qword_1EC3CD3A0;
  if (!qword_1EC3CD3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD3A0);
  }

  return result;
}

unint64_t sub_1C9939A9C()
{
  result = qword_1EC3CD3A8;
  if (!qword_1EC3CD3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD3A8);
  }

  return result;
}

unint64_t sub_1C9939AF4()
{
  result = qword_1EC3CD3B0;
  if (!qword_1EC3CD3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD3B0);
  }

  return result;
}

unint64_t sub_1C9939B4C()
{
  result = qword_1EC3CD3B8;
  if (!qword_1EC3CD3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD3B8);
  }

  return result;
}

unint64_t sub_1C9939BA4()
{
  result = qword_1EC3CD3C0;
  if (!qword_1EC3CD3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD3C0);
  }

  return result;
}

unint64_t sub_1C9939BFC()
{
  result = qword_1EC3CD3C8;
  if (!qword_1EC3CD3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD3C8);
  }

  return result;
}

unint64_t sub_1C9939C54()
{
  result = qword_1EC3CD3D0;
  if (!qword_1EC3CD3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD3D0);
  }

  return result;
}

unint64_t sub_1C9939CAC()
{
  result = qword_1EC3CD3D8;
  if (!qword_1EC3CD3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD3D8);
  }

  return result;
}

unint64_t sub_1C9939D04()
{
  result = qword_1EC3CD3E0;
  if (!qword_1EC3CD3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD3E0);
  }

  return result;
}

unint64_t sub_1C9939D5C()
{
  result = qword_1EC3CD3E8;
  if (!qword_1EC3CD3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD3E8);
  }

  return result;
}

unint64_t sub_1C9939DB4()
{
  result = qword_1EC3CD3F0;
  if (!qword_1EC3CD3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD3F0);
  }

  return result;
}

unint64_t sub_1C9939E0C()
{
  result = qword_1EC3CD3F8;
  if (!qword_1EC3CD3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD3F8);
  }

  return result;
}

unint64_t sub_1C9939E64()
{
  result = qword_1EC3CD400;
  if (!qword_1EC3CD400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD400);
  }

  return result;
}

unint64_t sub_1C9939EBC()
{
  result = qword_1EC3CD408;
  if (!qword_1EC3CD408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD408);
  }

  return result;
}

unint64_t sub_1C9939F14()
{
  result = qword_1EC3CD410;
  if (!qword_1EC3CD410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD410);
  }

  return result;
}

unint64_t sub_1C9939F6C()
{
  result = qword_1EC3CD418;
  if (!qword_1EC3CD418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD418);
  }

  return result;
}

unint64_t sub_1C9939FC0()
{
  result = qword_1EC3CD420;
  if (!qword_1EC3CD420)
  {
    sub_1C97AA4F0(&unk_1EC3CC790, &qword_1C9AB68A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD420);
  }

  return result;
}

unint64_t sub_1C993A044()
{
  result = qword_1EC3CD448;
  if (!qword_1EC3CD448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD448);
  }

  return result;
}

unint64_t sub_1C993A098()
{
  result = qword_1EC3CD458;
  if (!qword_1EC3CD458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD458);
  }

  return result;
}

unint64_t sub_1C993A0EC()
{
  result = qword_1EC3CD468;
  if (!qword_1EC3CD468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD468);
  }

  return result;
}

unint64_t sub_1C993A140(uint64_t a1)
{
  result = sub_1C97BE38C(a1);
  if (!result)
  {
    v3 = sub_1C97AA4F0(&qword_1EC3CD470, &qword_1C9AB7060);
    result = sub_1C97FB3F0(v3);
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C993A198()
{
  result = qword_1EC3CD480;
  if (!qword_1EC3CD480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD480);
  }

  return result;
}

unint64_t sub_1C993A1EC(uint64_t a1)
{
  result = sub_1C97BE38C(a1);
  if (!result)
  {
    v3(255);
    sub_1C97FB318();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C993A22C()
{
  result = qword_1EC3CD4E0;
  if (!qword_1EC3CD4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD4E0);
  }

  return result;
}

unint64_t sub_1C993A280()
{
  result = qword_1EC3CD4E8;
  if (!qword_1EC3CD4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD4E8);
  }

  return result;
}

unint64_t sub_1C993A2D4()
{
  result = qword_1EC3CD4F0;
  if (!qword_1EC3CD4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD4F0);
  }

  return result;
}

_BYTE *sub_1C993A328(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = sub_1C97BE280(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C993A420(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = sub_1C97BE280(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C993A518(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
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
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1C993A5C8()
{
  result = qword_1EC3CD510;
  if (!qword_1EC3CD510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD510);
  }

  return result;
}

unint64_t sub_1C993A620()
{
  result = qword_1EC3CD518;
  if (!qword_1EC3CD518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD518);
  }

  return result;
}

unint64_t sub_1C993A678()
{
  result = qword_1EC3CD520;
  if (!qword_1EC3CD520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD520);
  }

  return result;
}

unint64_t sub_1C993A6D0()
{
  result = qword_1EC3CD528;
  if (!qword_1EC3CD528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD528);
  }

  return result;
}

unint64_t sub_1C993A728()
{
  result = qword_1EC3CD530;
  if (!qword_1EC3CD530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD530);
  }

  return result;
}

unint64_t sub_1C993A780()
{
  result = qword_1EC3CD538;
  if (!qword_1EC3CD538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD538);
  }

  return result;
}

unint64_t sub_1C993A7D8()
{
  result = qword_1EC3CD540;
  if (!qword_1EC3CD540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD540);
  }

  return result;
}

unint64_t sub_1C993A830()
{
  result = qword_1EC3CD548;
  if (!qword_1EC3CD548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD548);
  }

  return result;
}

unint64_t sub_1C993A888()
{
  result = qword_1EC3CD550;
  if (!qword_1EC3CD550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD550);
  }

  return result;
}

unint64_t sub_1C993A8E0()
{
  result = qword_1EC3CD558;
  if (!qword_1EC3CD558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD558);
  }

  return result;
}

unint64_t sub_1C993A938()
{
  result = qword_1EC3CD560;
  if (!qword_1EC3CD560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD560);
  }

  return result;
}

unint64_t sub_1C993A990()
{
  result = qword_1EC3CD568;
  if (!qword_1EC3CD568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD568);
  }

  return result;
}

unint64_t sub_1C993A9E8()
{
  result = qword_1EC3CD570;
  if (!qword_1EC3CD570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD570);
  }

  return result;
}

unint64_t sub_1C993AA40()
{
  result = qword_1EC3CD578;
  if (!qword_1EC3CD578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD578);
  }

  return result;
}

unint64_t sub_1C993AA98()
{
  result = qword_1EC3CD580;
  if (!qword_1EC3CD580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD580);
  }

  return result;
}

unint64_t sub_1C993AAF0()
{
  result = qword_1EC3CD588;
  if (!qword_1EC3CD588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD588);
  }

  return result;
}

unint64_t sub_1C993AB48()
{
  result = qword_1EC3CD590;
  if (!qword_1EC3CD590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD590);
  }

  return result;
}

unint64_t sub_1C993ABA0()
{
  result = qword_1EC3CD598;
  if (!qword_1EC3CD598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD598);
  }

  return result;
}

unint64_t sub_1C993ABF8()
{
  result = qword_1EC3CD5A0;
  if (!qword_1EC3CD5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD5A0);
  }

  return result;
}

id sub_1C993AD60@<X0>(uint64_t a1@<X1>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{

  return sub_1C9929478(0xD000000000000017, a1, 4, 0, a2, a3 | 0x8000000000000000);
}

uint64_t sub_1C993ADC8(uint64_t a1, uint64_t a2)
{

  return sub_1C986EC4C(a1, a2);
}

uint64_t sub_1C993ADE8(uint64_t a1, uint64_t a2)
{

  return swift_unexpectedError();
}

uint64_t sub_1C993AE88(uint64_t a1, _BYTE *a2)
{
  *a2 = 0;

  return swift_willThrow();
}

uint64_t sub_1C993AEA0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1C9A93DB8();
}

uint64_t sub_1C993AEC4(uint64_t a1, uint64_t a2)
{

  return sub_1C9A93858();
}

uint64_t sub_1C993AEE8(uint64_t a1, uint64_t a2)
{

  return sub_1C97C6634(a1, a2, v2, v3, v4, v5, v6);
}

uint64_t sub_1C993AF8C(uint64_t a1, uint64_t a2)
{

  return sub_1C986EC4C(a1, a2);
}

uint64_t sub_1C993AFA4()
{
}

void *sub_1C993AFBC(void *a1)
{

  return memcpy(a1, (v2 + v1), 0x78uLL);
}

void sub_1C993AFD4()
{
  sub_1C97BE460();
  sub_1C9945EF4();
  sub_1C994603C();
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v0);
  v1 = sub_1C9945E20();
  sub_1C97DC8D0(v1, v2);
  sub_1C97AA878();
  v3 = swift_allocObject();
  sub_1C9945FD8(v3);
  sub_1C9945DD0();
  sub_1C9946024(v4, v5, v6, v7);
  sub_1C994600C();
  sub_1C9945FCC();
  sub_1C9945DE8();
  sub_1C9945FF4();
  v8 = sub_1C97BE0EC();
  v9(v8);
  sub_1C97BE478();
}