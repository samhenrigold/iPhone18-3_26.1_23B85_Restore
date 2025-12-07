uint64_t sub_1C984A314(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1C97AA4F0(&qword_1EC3C82B8, &qword_1C9AA91F0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C984A384(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AOPClassificationResult(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C984A3E8(uint64_t a1)
{
  v2 = type metadata accessor for AOPClassificationResult(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C984A53C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1C984A5AC(uint64_t a1)
{
  sub_1C9A916E8();
  if (v1 <= 0x3F)
  {
    sub_1C984A630();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C984A630()
{
  if (!qword_1EC3C8F88)
  {
    v0 = sub_1C9A92358();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC3C8F88);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for AOPClassificationResult.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C984A810()
{
  result = qword_1EC3C8FF0;
  if (!qword_1EC3C8FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8FF0);
  }

  return result;
}

unint64_t sub_1C984A868()
{
  result = qword_1EC3C8FF8;
  if (!qword_1EC3C8FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8FF8);
  }

  return result;
}

unint64_t sub_1C984A8C0()
{
  result = qword_1EC3C9000;
  if (!qword_1EC3C9000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9000);
  }

  return result;
}

uint64_t sub_1C984A914(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 64;
  sub_1C984ACA4();
  sub_1C984AD4C();

  v6 = 0;
  v7 = 0;
  if (v3)
  {
    while (1)
    {
LABEL_5:
      sub_1C984ACE8();
      v11 = *(v10 + 8 * v9);
      sub_1C984AE4C(v12, v13, v14, v15, v16, v17, v18, v19, v21);

      sub_1C984ADF4(v20);

      MEMORY[0x1CCA91980](v11);
      v6 ^= sub_1C9A93D18();
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v2)
    {

      return MEMORY[0x1CCA91980](0);
    }

    ++v7;
    if (*(v4 + 8 * v8))
    {
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C984AA08(const void *a1, uint64_t a2)
{
  v2 = a2 + 64;
  sub_1C984ACA4();
  v5 = v4 & v3;
  v7 = (v6 + 63) >> 6;

  v9 = 0;
  v10 = 0;
  if (v5)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return MEMORY[0x1CCA91980](v9);
    }

    v5 = *(v2 + 8 * v11);
    ++v10;
    if (v5)
    {
      v10 = v11;
      do
      {
LABEL_7:
        v5 &= v5 - 1;
        memcpy(__dst, a1, sizeof(__dst));

        sub_1C984ADF4(v12);

        sub_1C9A92528();

        result = sub_1C9A93D18();
        v9 ^= result;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1C984AB48()
{
  result = qword_1EC3C9020;
  if (!qword_1EC3C9020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9020);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for _SNClassificationResult.DomainError(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C984AC4C()
{
  result = qword_1EC3C9030;
  if (!qword_1EC3C9030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9030);
  }

  return result;
}

uint64_t sub_1C984AD5C(uint64_t a2, ...)
{

  return swift_beginAccess();
}

void sub_1C984AD80(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = (v6 + a1);
  *v10 = a6;
  v10[1] = v8;
  v10[2] = a5;
  v10[3] = a4;
  v10[4] = v9;
  v10[5] = a3;
  v10[6] = v7;
}

uint64_t sub_1C984ADF4(uint64_t a1, ...)
{

  return sub_1C9A92528();
}

uint64_t sub_1C984AE10(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t sub_1C984AE28(uint64_t a1, uint64_t a2)
{

  return sub_1C9A93A18();
}

void *sub_1C984AE4C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va, a9);

  return memcpy(va, v9, 0x48uLL);
}

uint64_t sub_1C984AE68()
{
}

uint64_t sub_1C984AEF0()
{
}

uint64_t sub_1C984AF10(uint64_t a1, uint64_t a2)
{

  return sub_1C9A938F8();
}

uint64_t sub_1C984AF30(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t static MediaUtils.extractAudio(mediaAssetURL:outputURL:)()
{
  sub_1C97AA884();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_1C9A91558();
  v0[4] = v3;
  v0[5] = *(v3 - 8);
  v0[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C984B004, 0, 0);
}

uint64_t sub_1C984B004(double a1)
{
  v3 = v1[5];
  v2 = v1[6];
  v4 = v1[4];
  v5 = v1[2];
  sub_1C984B6CC(a1);
  (*(v3 + 16))(v2, v5, v4);
  v6 = sub_1C984B710(v2);
  v1[7] = v6;
  v7 = sub_1C9A924A8();
  v9 = v8;
  objc_allocWithZone(MEMORY[0x1E6987E60]);
  v10 = v6;
  v11 = sub_1C984B7B0(v10, v7, v9);
  v1[8] = v11;
  if (v11)
  {
    v12 = MEMORY[0x1E6960CC0];
    v13 = *MEMORY[0x1E6960CC0];
    v1[25] = *(MEMORY[0x1E6960CC0] + 8);
    v14 = *(v12 + 16);
    v1[9] = v13;
    v1[10] = v14;
    sub_1C97A2CEC(qword_1EC3C9048, &qword_1C9AA61F0);
    v15 = sub_1C9A917B8();
    v1[11] = v15;
    v16 = swift_task_alloc();
    v1[12] = v16;
    *v16 = v1;
    v16[1] = sub_1C984B1F8;

    return MEMORY[0x1EEE68140](v1 + 22, v15, 0, 0);
  }

  else
  {
    sub_1C97A8E8C();
    swift_allocError();
    *v17 = 0;
    swift_willThrow();

    sub_1C97DA91C();

    return v18();
  }
}

uint64_t sub_1C984B1F8()
{
  sub_1C97AA884();
  v2 = *v1;
  sub_1C97AA84C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA84C();
  *v5 = v4;
  *(v2 + 104) = v0;

  if (v0)
  {
    v6 = sub_1C984B568;
  }

  else
  {

    v6 = sub_1C984B308;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1C984B308()
{
  sub_1C97AA884();
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[22];
  v4 = v0[24];
  v5 = v0[23];
  v0[16] = v0[9];
  v0[17] = v0[25];
  v0[18] = v1;
  v0[19] = v3;
  v0[20] = v5;
  v0[21] = v4;
  [v2 setTimeRange_];
  v6 = *MEMORY[0x1E6987488];
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1C984B3F4;
  v8 = v0[3];

  return MEMORY[0x1EEE68110](v8, v6, 0, 0);
}

uint64_t sub_1C984B3F4()
{
  sub_1C97AA884();
  sub_1C97AA84C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA84C();
  *v5 = v4;
  *(v6 + 120) = v0;

  if (v0)
  {
    v7 = sub_1C984B5DC;
  }

  else
  {
    v7 = sub_1C984B4FC;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1C984B4FC()
{
  sub_1C97AA884();
  v1 = *(v0 + 64);

  sub_1C97DA91C();

  return v2();
}

uint64_t sub_1C984B568()
{
  sub_1C97AA884();
  v1 = *(v0 + 64);

  sub_1C97DA91C();

  return v2();
}

uint64_t sub_1C984B5DC(double a1)
{
  v2 = v1[15];
  v4 = v1[7];
  v3 = v1[8];
  type metadata accessor for SNError(a1);
  v5 = sub_1C9A913B8();
  sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 1, v5, 0x662074726F707865, 0xED000064656C6961);

  swift_willThrow();

  sub_1C97DA91C();

  return v6();
}

unint64_t sub_1C984B6CC(double a1)
{
  result = qword_1EC3C9040;
  if (!qword_1EC3C9040)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC3C9040);
  }

  return result;
}

id sub_1C984B710(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1C9A91488();
  v4 = [v2 initWithURL:v3 options:0];

  v5 = sub_1C9A91558();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

id sub_1C984B7B0(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C9A92478();

  v6 = [v3 initWithAsset:a1 presetName:v5];

  return v6;
}

_BYTE *storeEnumTagSinglePayload for MediaUtils(_BYTE *result, int a2, int a3)
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

uint64_t sub_1C984B8C8(uint64_t a1)
{
  v1 = *(a1 + 96);
  v4[0] = *(a1 + 80);
  v4[1] = v1;
  result = _s21ServerEnvironmentImplVMa(319, v4);
  if (v3 <= 0x3F)
  {
    *&v4[0] = *(result - 8) + 64;
    *(&v4[0] + 1) = MEMORY[0x1E69E5D20] + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C984B970(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x444965736163 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C9A93B18();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C984B9F8(void *a1, uint64_t a2)
{
  v3 = sub_1C97A2CEC(&qword_1EC3C9218, &qword_1C9AA65D8);
  sub_1C97AE9C8();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - v7;
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C984CB40();
  sub_1C9A93DD8();
  sub_1C9A93A08();
  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_1C984BB44(uint64_t a1)
{
  sub_1C9A93CC8();
  MEMORY[0x1CCA91980](a1);
  return sub_1C9A93D18();
}

void *sub_1C984BB8C(void *a1)
{
  v3 = sub_1C97A2CEC(&qword_1EC3C9208, &qword_1C9AA65D0);
  sub_1C97AE9C8();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - v7;
  v9 = sub_1C97A5A8C(a1, a1[3]);
  sub_1C984CB40();
  sub_1C9A93DB8();
  if (!v1)
  {
    v9 = sub_1C9A938E8();
    (*(v5 + 8))(v8, v3);
  }

  sub_1C97A592C(a1);
  return v9;
}

uint64_t sub_1C984BCD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C984B970(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C984BD04(uint64_t a1)
{
  v2 = sub_1C984CB40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C984BD40(uint64_t a1)
{
  v2 = sub_1C984CB40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1C984BD7C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1C984BB8C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1C984BDE0()
{
  sub_1C97A2CEC(&qword_1EC3C9220, &qword_1C9AA65E0);
  sub_1C97AE67C(&qword_1EC3C9228, &qword_1EC3C9220, &qword_1C9AA65E0, MEMORY[0x1E695BF80]);
  return sub_1C9A91EE8();
}

uint64_t sub_1C984BE70()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 96);
  v5[0] = *(*v0 + 80);
  v5[1] = v2;
  v3 = _s21ServerEnvironmentImplVMa(0, v5);
  (*(*(v3 - 8) + 8))(v0 + v1, v3);

  return v0;
}

uint64_t sub_1C984BF38()
{
  sub_1C984BE70();

  return swift_deallocClassInstance();
}

void sub_1C984BFC8(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1C984C408(319);
    if (v2 <= 0x3F)
    {
      sub_1C984C4E4(319);
      if (v3 <= 0x3F)
      {
        sub_1C984C5C0(319);
        if (v4 <= 0x3F)
        {
          sub_1C984C69C(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1C984C0B0(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
LABEL_26:
    if ((v6 & 0x80000000) != 0)
    {
      return sub_1C97ABF20((result + v7 + 24) & ~v7, v6, v4);
    }

    else
    {
      v17 = *result;
      if (*result >= 0xFFFFFFFFuLL)
      {
        LODWORD(v17) = -1;
      }

      return (v17 + 1);
    }
  }

  else
  {
    v9 = ((((((((*(*(v4 - 8) + 64) + ((v7 + 24) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
    v10 = a2 - v8;
    v11 = v9 & 0xFFFFFFF8;
    if ((v9 & 0xFFFFFFF8) != 0)
    {
      v12 = 2;
    }

    else
    {
      v12 = v10 + 1;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    switch(v14)
    {
      case 1:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

LABEL_22:
        v16 = v15 - 1;
        if (v11)
        {
          v16 = 0;
          LODWORD(v11) = *result;
        }

        result = v8 + (v11 | v16) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1C984C210(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((((((((*(*(v6 - 8) + 64) + ((v10 + 24) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 >= a3)
  {
    v15 = 0;
  }

  else
  {
    v12 = a3 - v9;
    if (((((((((*(*(v6 - 8) + 64) + ((v10 + 24) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  if (a2 <= v9)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if ((v8 & 0x80000000) != 0)
          {
            v19 = &a1[v10 + 24] & ~v10;

            sub_1C97ACC50(v19, a2, v8, v6);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
              *(a1 + 1) = 0;
              *(a1 + 2) = 0;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *a1 = v18;
          }
        }

        break;
    }
  }

  else
  {
    if (((((((((*(*(v6 - 8) + 64) + ((v10 + 24) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((((((((*(*(v6 - 8) + 64) + ((v10 + 24) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v17 = ~v9 + a2;
      bzero(a1, v11);
      *a1 = v17;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v16;
        break;
      case 2:
        *&a1[v11] = v16;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v11] = v16;
        break;
      default:
        return;
    }
  }
}

void sub_1C984C408(uint64_t a1)
{
  if (!qword_1EC3C9150)
  {
    v2 = sub_1C97AA4F0(&qword_1EC3C9158, &qword_1C9AA6268);
    v3 = sub_1C97AE67C(&qword_1EC3C9160, &qword_1EC3C9158, &qword_1C9AA6268, &unk_1C9AC69B0);
    v4 = sub_1C97AE67C(&qword_1EC3C9168, &qword_1EC3C9170, &qword_1C9AA6270, &unk_1C9AAF808);
    v5 = type metadata accessor for SyncCache(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EC3C9150);
    }
  }
}

void sub_1C984C4E4(uint64_t a1)
{
  if (!qword_1EC3C9178)
  {
    v2 = sub_1C97AA4F0(&qword_1EC3C9180, &qword_1C9AA6278);
    v3 = sub_1C97AE67C(&qword_1EC3C9188, &qword_1EC3C9180, &qword_1C9AA6278, &unk_1C9AC69B0);
    v4 = sub_1C97AE67C(&qword_1EC3C9190, &qword_1EC3C9198, &qword_1C9AA6280, &unk_1C9A9C6B0);
    v5 = type metadata accessor for SyncCache(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EC3C9178);
    }
  }
}

void sub_1C984C5C0(uint64_t a1)
{
  if (!qword_1EC3C91A0)
  {
    v2 = sub_1C97AA4F0(&qword_1EC3C91A8, &qword_1C9AA6288);
    v3 = sub_1C97AE67C(&qword_1EC3C91B0, &qword_1EC3C91A8, &qword_1C9AA6288, &unk_1C9AC69B0);
    v4 = sub_1C97AE67C(&qword_1EC3C91B8, &qword_1EC3C91C0, &qword_1C9AA6290, &unk_1C9AA4ED8);
    v5 = type metadata accessor for SyncCache(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EC3C91A0);
    }
  }
}

void sub_1C984C69C(uint64_t a1)
{
  if (!qword_1EC3C91C8)
  {
    v2 = sub_1C97AA4F0(&qword_1EC3C91D0, &qword_1C9AA6298);
    v3 = sub_1C97AE67C(&qword_1EC3C91D8, &qword_1EC3C91D0, &qword_1C9AA6298, &unk_1C9AC69B0);
    v4 = sub_1C97AE67C(&qword_1EC3C91E0, &qword_1EC3C91E8, qword_1C9AA62A0, &unk_1C9AAEAD8);
    v5 = type metadata accessor for SyncCache(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EC3C91C8);
    }
  }
}

unint64_t sub_1C984C79C()
{
  result = qword_1EC3C91F0;
  if (!qword_1EC3C91F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C91F0);
  }

  return result;
}

uint64_t sub_1C984C7F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(*v4 + 112);
  v6 = *(a1 + 96);
  v9[0] = *(a1 + 80);
  v9[1] = v6;
  v7 = _s21ServerEnvironmentImplVMa(0, v9);
  return (*(*(v7 - 8) + 16))(a2, v4 + v5, v7);
}

uint64_t sub_1C984C8E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C984C880();
  if (!v1)
  {
    *a1 = result;
    a1[1] = v4;
    a1[2] = v5;
  }

  return result;
}

unint64_t sub_1C984C948()
{
  result = qword_1EC3C91F8;
  if (!qword_1EC3C91F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C91F8);
  }

  return result;
}

unint64_t sub_1C984C99C()
{
  result = qword_1EC3CD6D0;
  if (!qword_1EC3CD6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD6D0);
  }

  return result;
}

unint64_t sub_1C984C9F0()
{
  result = qword_1EC3C9200;
  if (!qword_1EC3C9200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9200);
  }

  return result;
}

uint64_t sub_1C984CA50(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C984CA8C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C984CAC8(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C984CB04(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C984CB40()
{
  result = qword_1EC3C9210;
  if (!qword_1EC3C9210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9210);
  }

  return result;
}

_BYTE *_s28ICACAudioDeviceConfigurationV10CodingKeysOwst(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C984CC44()
{
  result = qword_1EC3C9230;
  if (!qword_1EC3C9230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9230);
  }

  return result;
}

unint64_t sub_1C984CC9C()
{
  result = qword_1EC3C9238;
  if (!qword_1EC3C9238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9238);
  }

  return result;
}

unint64_t sub_1C984CCF4()
{
  result = qword_1EC3C9240[0];
  if (!qword_1EC3C9240[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC3C9240);
  }

  return result;
}

void *sub_1C984CDA0()
{

  return v0;
}

uint64_t sub_1C984CDD0()
{
  sub_1C984CDA0();

  return swift_deallocClassInstance();
}

uint64_t sub_1C984CE64()
{
  sub_1C984CE90();

  return v0;
}

uint64_t sub_1C984CF24()
{
  sub_1C984CE64();

  return swift_deallocClassInstance();
}

char *sub_1C984CF84(void *a1)
{
  ObjectType = swift_getObjectType();

  v5 = OBJC_IVAR____SNVGGishFeatureEmbeddingCustomModel_modelDescription;
  *&v1[OBJC_IVAR____SNVGGishFeatureEmbeddingCustomModel_modelDescription] = a1;
  v6 = a1;
  v7 = sub_1C98C89D4(21, 0);
  if (v2)
  {

    swift_deallocPartialClassInstance();
  }

  else
  {
    v9 = v7;
    type metadata accessor for SNMLModelAdapter(v8);
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    v11 = &v1[OBJC_IVAR____SNVGGishFeatureEmbeddingCustomModel_model];
    *v11 = v10;
    v11[1] = &off_1F4937370;
    v13.receiver = v1;
    v13.super_class = ObjectType;
    v1 = objc_msgSendSuper2(&v13, sel_init);
  }

  return v1;
}

uint64_t sub_1C984D134(void *a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____SNVGGishFeatureEmbeddingCustomModel_modelDescription);
  v5 = *(v2 + OBJC_IVAR____SNVGGishFeatureEmbeddingCustomModel_model + 8);
  ObjectType = swift_getObjectType();
  v7 = *(v5 + 16);
  v8 = v7(ObjectType, v5);
  v9 = sub_1C97FD440(v4, v8);

  if (!v9)
  {
    goto LABEL_6;
  }

  v11 = v7(ObjectType, v5);
  v12 = sub_1C97FD44C(v4, v11);

  if (!v12)
  {

LABEL_6:
    type metadata accessor for SNError(v10);
    sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 1, 0, 0xD00000000000002CLL, 0x80000001C9AD6960);
    swift_willThrow();
    return v5;
  }

  sub_1C97FD5DC(a1, v9);
  v14 = v13;

  if (v19)
  {
  }

  else
  {
    v16 = (*(v5 + 24))(v14, a2, ObjectType, v5);
    sub_1C97FD844(v16, v12);
    v5 = v17;

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  return v5;
}

uint64_t sub_1C984D4A4(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1C984D4C0(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C984D4E8(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C984D500(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 48))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t sub_1C984D554(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_1C984D5C4(uint64_t a1)
{
  v3 = v2;
  sub_1C99DC144();
  v4 = *v1;
  v5 = v1[1];

  sub_1C98CA9F8(v4, v5);
  if (!v3)
  {

    v6 = v1[2];
    v7 = v1[3];
    v9 = v1[4];
    v8 = v1[5];

    sub_1C97A8BD4(v6, v7, v9, v8);
  }
}

uint64_t sub_1C984D690(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1C984D724;

  return sub_1C988FB68();
}

uint64_t sub_1C984D724(uint64_t a1)
{
  v4 = *v2;
  sub_1C97AA84C();
  *v5 = v4;
  v6 = *v2;
  sub_1C97AA84C();
  *v7 = v6;

  if (v1)
  {
    v8 = *(v6 + 8);

    return v8();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1C984D868, 0, 0);
  }
}

uint64_t sub_1C984D868()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  sub_1C97DA2E8(v5, v6);
  v7 = v4[2];
  v8 = v4[3];
  v9 = v4[4];
  v10 = v4[5];

  sub_1C97A8F30(v7, v8, v9, v10);

  *&v11 = v5;
  *(&v11 + 1) = v6;
  *&v12 = v7;
  *(&v12 + 1) = v8;
  *v2 = v11;
  *(v2 + 16) = v12;
  *(v2 + 32) = v9;
  *(v2 + 40) = v10;
  v13 = v0[1];

  return v13();
}

uint64_t sub_1C984D94C(uint64_t a1)
{
  *(v1 + 64) = a1;
  v2 = swift_task_alloc();
  *(v1 + 72) = v2;
  *v2 = v1;
  v2[1] = sub_1C984D9EC;

  return sub_1C984D690(v1 + 16);
}

uint64_t sub_1C984D9EC()
{
  v2 = *v1;
  sub_1C97AA84C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA84C();
  *v5 = v4;

  if (!v0)
  {
    v6 = *(v2 + 64);
    v7 = *(v2 + 16);
    v8 = *(v2 + 48);
    v6[1] = *(v2 + 32);
    v6[2] = v8;
    *v6 = v7;
  }

  v9 = *(v4 + 8);

  return v9();
}

uint64_t sub_1C984DAFC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C984DB90(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1C984DBD0(a1);
  return v2;
}

uint64_t sub_1C984DCB4()
{
  sub_1C984DC44();

  return swift_deallocClassInstance();
}

uint64_t sub_1C984DD24(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C984DDB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *(*v5 + 88);
  swift_beginAccess();
  return (*(*(*(a1 + 80) - 8) + 16))(a2, v5 + v6);
}

uint64_t sub_1C984DE4C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C984DB90(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C984DE74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20[1] = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C97AE9DC();
  v10 = v9;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v20 - v15;
  v17 = *(a4 + 16);
  v17(a3, a4);
  v17(a3, a4);
  LOBYTE(v17) = sub_1C9A92438();
  v18 = *(v10 + 8);
  v18(v14, AssociatedTypeWitness);
  v18(v16, AssociatedTypeWitness);
  return v17 & 1;
}

uint64_t sub_1C984DFF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C97AE9DC();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v14 - v11;
  (*(a3 + 16))(a2, a3);
  sub_1C9A92398();
  return (*(v9 + 8))(v12, AssociatedTypeWitness);
}

uint64_t sub_1C984E110()
{
  sub_1C984EEE4();
  v1();
  v2 = *(v0 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = v2(AssociatedTypeWitness, v0);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_1C984E1A8()
{
  v1 = *(*(v0 + 16) + 24);
  ObjectType = swift_getObjectType();
  return (*(v1 + 16))(ObjectType, v1);
}

uint64_t sub_1C984E1EC()
{
  sub_1C984EEE4();
  v1();
  v2 = *(v0 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2(AssociatedTypeWitness, v0);
  sub_1C97FB3E4();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1C984E278(uint64_t a1, uint64_t a2)
{
  v5 = *(*(v2 + 16) + 24);
  ObjectType = swift_getObjectType();
  return (*(v5 + 24))(a1, a2, ObjectType, v5);
}

uint64_t sub_1C984E2E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  (*(a5 + 16))(&v13, a3, a5);
  v9 = *(a6 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = v9(a1, a2, AssociatedTypeWitness, a6);
  swift_unknownObjectRelease();
  return v11;
}

uint64_t sub_1C984E3CC(uint64_t a1)
{
  v3 = *v1;
  v8 = v1;
  sub_1C9A93CC8();
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C984DFF8(v7, v3, WitnessTable, v5, a1);
  return sub_1C9A93D18();
}

uint64_t sub_1C984E500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 - 8);
  WitnessTable = swift_getWitnessTable();
  return sub_1C984DE74(a1, a2, v4, WitnessTable, v9, v7) & 1;
}

uint64_t sub_1C984E590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  WitnessTable = swift_getWitnessTable();

  return sub_1C984DFF8(a1, a2, WitnessTable, v7, v5);
}

uint64_t sub_1C984E5F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_1C9A93CC8();
  WitnessTable = swift_getWitnessTable();
  sub_1C984DFF8(v8, a2, WitnessTable, v6, v4);
  return sub_1C9A93D18();
}

uint64_t sub_1C984E66C()
{
  swift_getWitnessTable();

  return sub_1C984E110();
}

uint64_t sub_1C984E6F4()
{
  swift_getWitnessTable();

  return sub_1C984E1EC();
}

uint64_t sub_1C984E77C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v8 = *(a4 - 8);
  WitnessTable = swift_getWitnessTable();
  return sub_1C984E2E8(a1, a2, v7, v10, WitnessTable, v8);
}

id sub_1C984E848()
{
  sub_1C97FB3E4();
  ObjectType = swift_getObjectType();
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v4 = *(v3 - 8);
  (*(v4 + 16))(&v1[*((*MEMORY[0x1E69E7D40] & *v1) + 0x60)], v0, v3);
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, sel_init);
  (*(v4 + 8))(v0, v3);
  return v5;
}

uint64_t sub_1C984E940()
{
  sub_1C97FB3E4();
  ObjectType = swift_getObjectType();
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v7 = v1;
  return sub_1C98594CC(&v7, v0, sub_1C984EEDC, &v6, ObjectType, *((v4 & v3) + 0x50), *(*((v4 & v3) + 0x58) + 8)) & 1;
}

uint64_t sub_1C984EA3C(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a1;
    swift_unknownObjectRetain();
    sub_1C9A93318();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = a1;
  }

  v6 = sub_1C984E940();

  sub_1C97A59D0(v8);
  return v6 & 1;
}

uint64_t sub_1C984EAB4(void *a1)
{
  v1 = a1;
  v2 = sub_1C984EAE8();

  return v2;
}

uint64_t sub_1C984EAE8()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  sub_1C97AE9DC();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - v7;
  (*(v5 + 16))(&v11 - v7, &v0[*((v2 & v1) + 0x60)], v3);
  v9 = sub_1C9A923A8();
  (*(v5 + 8))(v8, v3);
  return v9;
}

id sub_1C984EC10@<X0>(uint64_t *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  sub_1C97AE9DC();
  MEMORY[0x1EEE9AC00](v4);
  (*(v7 + 16))(&v10 - v8, v1 + *((v6 & v5) + 0x60));
  result = sub_1C984E818();
  a1[3] = ObjectType;
  *a1 = result;
  return result;
}

uint64_t sub_1C984ED0C(void *a1)
{
  v1 = a1;
  sub_1C984EC10(v4);

  sub_1C97A5A8C(v4, v4[3]);
  v2 = sub_1C9A93B08();
  sub_1C97A592C(v4);
  return v2;
}

id sub_1C984EE4C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C984E818();
  *a1 = result;
  return result;
}

uint64_t sub_1C984EF0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[2] = a4;
  v7[3] = a5;
  v7[4] = a6;
  v7[5] = a2;
  v7[6] = a3;
  return sub_1C984F28C(a1, sub_1C9854F58, v7, a4, a5, a6);
}

uint64_t sub_1C984EF50@<X0>(void (*a1)(uint64_t, uint64_t)@<X0>, uint64_t a2@<X4>, uint64_t a3@<X6>, uint64_t a4@<X8>)
{
  sub_1C97AE9DC();
  v28 = v7;
  v29 = v6;
  MEMORY[0x1EEE9AC00](v8);
  sub_1C97AEAD8();
  v11 = v10 - v9;
  v13 = *(v12 + 16);
  sub_1C97AE9DC();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  sub_1C97AEAD8();
  v19 = v18 - v17;
  sub_1C97AE9DC();
  MEMORY[0x1EEE9AC00](v20);
  sub_1C97AEAD8();
  v23 = v22 - v21;
  (*(v24 + 16))(v22 - v21, v25);
  v26 = 1;
  if (sub_1C97ABF20(v23, 1, v13) != 1)
  {
    (*(v15 + 32))(v19, v23, v13);
    a1(v19, v11);
    (*(v15 + 8))(v19, v13);
    if (v4)
    {
      return (*(v28 + 32))(a3, v11, v29);
    }

    v26 = 0;
  }

  return sub_1C97ACC50(a4, v26, 1, a2);
}

uint64_t sub_1C984F194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a6 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v13(v10);
  if (!v6)
  {
    (*(v9 + 8))(a1, a6);
    return (*(v9 + 32))(a1, v12, a6);
  }

  return result;
}

uint64_t sub_1C984F28C(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v50 = a2;
  v51 = a3;
  v54 = a1;
  AssociatedConformanceWitness = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C97AE9C8();
  v42 = v11;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v40 - v13;
  v15 = sub_1C9A93258();
  sub_1C97DACE4(v15);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C97FB2D8();
  sub_1C97AE9DC();
  v41 = v17;
  MEMORY[0x1EEE9AC00](v18);
  sub_1C97AEAD8();
  v40 = v20 - v19;
  sub_1C9855110();
  v57 = swift_getAssociatedTypeWitness();
  sub_1C97AE9C8();
  v44 = v21;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v40 - v23;
  sub_1C97AE9DC();
  v45 = v25;
  MEMORY[0x1EEE9AC00](v26);
  sub_1C97ABF90();
  v55 = v27;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C97ABFC0();
  v30 = v29;
  v58 = sub_1C9A922E8();
  v43 = a4;
  result = sub_1C9A92648();
  if (__OFADD__(result, 1))
  {
    __break(1u);
  }

  else
  {
    sub_1C9855110();
    v53 = sub_1C9A928B8();
    sub_1C9A927E8();
    v56 = v24;
    v33 = v45 + 16;
    v32 = *(v45 + 16);
    v32(v30, v54, a5);
    v49 = v30;
    sub_1C9A92888();
    v34 = v54;
    v54 = a5;
    v47 = v32;
    v48 = v33;
    v32(v55, v34, a5);
    (*(v41 + 16))(v40, v46, v43);
    sub_1C9A92638();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v35 = (v42 + 32);
    v36 = (v42 + 8);
    while (1)
    {
      sub_1C9A93298();
      if (sub_1C97ABF20(v7, 1, AssociatedTypeWitness) == 1)
      {
        (*(v44 + 8))(v56, v57);
        (*(v45 + 8))(v55, v54);
        return v58;
      }

      (*v35)(v14, v7, AssociatedTypeWitness);
      v37 = AssociatedTypeWitness;
      v38 = v55;
      v39 = sub_1C985511C();
      v50(v39);
      if (v6)
      {
        break;
      }

      v47(v49, v38, v54);
      sub_1C9A92888();
      (*v36)(v14, v37);
      AssociatedTypeWitness = v37;
    }

    (*v36)(v14, v37);
    (*(v44 + 8))(v56, v57);
    (*(v45 + 8))(v38, v54);
  }

  return result;
}

void sub_1C984F73C()
{
  sub_1C97BE460();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v14 = type metadata accessor for ExclusiveReductionsSequence.Iterator(0, v12, v0, v13);
  v15 = *(v14 + 44);
  sub_1C9855060();
  sub_1C97ACC50(v16, v17, v18, v1);
  sub_1C9855110();
  swift_getAssociatedTypeWitness();
  sub_1C9855018();
  (*(v19 + 32))(v11, v9);
  sub_1C9A93258();
  sub_1C9855018();
  (*(v20 + 40))(v11 + v15, v7);
  v21 = (v11 + *(v14 + 48));
  *v21 = v5;
  v21[1] = v3;
  sub_1C97BE478();
}

void sub_1C984F838()
{
  sub_1C97BE460();
  v1 = v0;
  v3 = v2;
  v48 = v4;
  v5 = *(v2 + 16);
  v45 = *(v2 + 32);
  v6 = v5;
  swift_getAssociatedTypeWitness();
  sub_1C9855090();
  v46 = sub_1C9A93258();
  sub_1C97AE9C8();
  v44 = v7;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v41 - v9;
  v11 = *(v3 + 24);
  sub_1C9A93258();
  sub_1C97AE9C8();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  sub_1C97ABF90();
  v43 = v15;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v16);
  v18 = v41 - v17;
  sub_1C97AE9DC();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  sub_1C97AEAD8();
  v24 = v23 - v22;
  v25 = *(v3 + 44);
  v26 = *(v13 + 16);
  v27 = v1;
  v47 = v28;
  v26(v18, v1 + v25);
  sub_1C985506C(v18, 1, v11);
  if (v29)
  {
    (*(v13 + 8))(v18, v47);
    sub_1C9855060();
    sub_1C97ACC50(v30, v31, v32, v11);
  }

  else
  {
    (*(v20 + 32))(v24, v18, v11);
    v42 = v25;
    v33 = v45;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    v34 = sub_1C9A93298();
    v41[1] = v41;
    MEMORY[0x1EEE9AC00](v34);
    v41[-6] = v6;
    v41[-5] = v11;
    v41[-4] = v33;
    v41[-3] = v24;
    v41[-2] = v27;
    v35 = v43;
    v36 = v46;
    sub_1C984EF50(sub_1C9852D18, v11, v37, v43);
    (*(v44 + 8))(v10, v36);
    (*(v13 + 40))(v27 + v42, v35, v47);
    (*(v20 + 16))(v48, v24, v11);
    sub_1C9855128();
    sub_1C97ACC50(v38, v39, v40, v11);
    (*(v20 + 8))(v24, v11);
  }

  sub_1C97BE478();
}

uint64_t sub_1C984FBD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a5 - 8) + 16))(a7, a2, a5);
  v13 = *(a3 + *(type metadata accessor for ExclusiveReductionsSequence.Iterator(0, a4, a5, a6) + 48));

  v13(a7, a1);
}

void sub_1C984FCA0()
{
  sub_1C97BE460();
  v2 = v0;
  v4 = v3;
  v5 = *(v3 + 24);
  sub_1C985509C();
  v6 = sub_1C9A93258();
  sub_1C97DACE4(v6);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C97FB2C8();
  v8 = *(v4 + 16);
  sub_1C97AE9DC();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C97AEAD8();
  v14 = v13 - v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C97DACE4(AssociatedTypeWitness);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C97FB2D8();
  (*(v10 + 16))(v14, v2, v8);
  sub_1C985511C();
  sub_1C9A92638();
  sub_1C9855190();
  (*(v17 + 16))(v1, v2 + v18, v5);
  sub_1C9855128();
  sub_1C97ACC50(v19, v20, v21, v5);

  sub_1C984F73C();
  sub_1C97BE478();
}

uint64_t sub_1C984FE78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  _s5IndexV14RepresentationOMa(0, a3, a4, a5);
  sub_1C97AEB3C();
  v9 = *(v8 + 32);

  return v9(a2, a1, v7);
}

void sub_1C984FEE0()
{
  sub_1C97BE460();
  v1 = v0;
  v3 = v2;
  v45 = v4;
  v6 = v5;
  sub_1C9855084();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C97AE9C8();
  v44 = v8;
  MEMORY[0x1EEE9AC00](v9);
  sub_1C97ABF90();
  v42 = v10;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C97ABFC0();
  v13 = sub_1C9855134(v12);
  v15 = _s5IndexV14RepresentationOMa(v13, v14, v3, v1);
  v16 = sub_1C98550F8();
  v18 = sub_1C98550C4(v16, v17, v15);
  sub_1C97DACE4(v18);
  sub_1C97ABFF0();
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v42 - v21;
  v23 = &v42 + *(v20 + 56) - v21;
  sub_1C97AEB3C();
  v25 = *(v24 + 16);
  v25(v22, v6, v15);
  v25(v23, v45, v15);
  v26 = sub_1C9855104();
  v28 = sub_1C98550C4(v26, v27, v3);
  sub_1C985506C(v22, 1, v28);
  if (v32)
  {
    sub_1C985506C(v23, 1, v28);
    if (!v32)
    {
      sub_1C9855190();
      (*(v29 + 8))(&v23[v30], v3);
      (*(v44 + 8))(v23, AssociatedTypeWitness);
    }
  }

  else
  {
    v31 = *(v28 + 48);
    sub_1C985506C(v23, 1, v28);
    if (v32)
    {
      sub_1C97AEB3C();
      (*(v33 + 8))(&v22[v31], v3);
      (*(v44 + 8))(v22, AssociatedTypeWitness);
    }

    else
    {
      v34 = v44;
      v35 = *(v44 + 32);
      v35(v43, v22, AssociatedTypeWitness);
      v45 = v31;
      v36 = v42;
      v35(v42, v23, AssociatedTypeWitness);
      sub_1C984ADE8();
      swift_getAssociatedConformanceWitness();
      v37 = v43;
      sub_1C9A92438();
      v38 = *(v34 + 8);
      v38(v36, AssociatedTypeWitness);
      v38(v37, AssociatedTypeWitness);
      sub_1C97AEB3C();
      v40 = *(v39 + 8);
      v41 = v45;
      v40(&v23[v45], v3);
      v40(&v22[v41], v3);
    }
  }

  sub_1C97BE478();
}

void sub_1C9850220()
{
  sub_1C97BE460();
  v2 = v1;
  v4 = v3;
  v33 = v5;
  v34 = v6;
  sub_1C9855084();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C97AE9C8();
  v31 = v8;
  MEMORY[0x1EEE9AC00](v9);
  sub_1C97ABF90();
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C97ABFC0();
  v12 = sub_1C9855134(v11);
  v14 = _s5IndexV14RepresentationOMa(v12, v13, v4, v2);
  v15 = sub_1C98550C4(0, v14, v14);
  sub_1C97DACE4(v15);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C98021C4();
  v18 = v0 + *(v17 + 56);
  v19 = *(v14 - 8);
  v20 = *(v19 + 16);
  v20(v0, v33, v14);
  v20(v18, v34, v14);
  v21 = v4;
  v22 = sub_1C9855104();
  v24 = sub_1C98550C4(v22, v23, v4);
  sub_1C985506C(v0, 1, v24);
  if (v25)
  {
    (*(v19 + 8))(v18, v14);
  }

  else
  {
    sub_1C985506C(v18, 1, v24);
    if (v25)
    {
      (*(v19 + 8))(v0, v14);
    }

    else
    {
      v35 = *(v24 + 48);
      v26 = *(v31 + 32);
      v26(v32, v0, AssociatedTypeWitness);
      v27 = sub_1C9855170();
      v26(v27, v18, AssociatedTypeWitness);
      sub_1C984ADE8();
      swift_getAssociatedConformanceWitness();
      sub_1C9A923D8();
      v28 = *(v31 + 8);
      v28(v24, AssociatedTypeWitness);
      v28(v32, AssociatedTypeWitness);
      sub_1C97AEB3C();
      v30 = *(v29 + 8);
      v30(v18 + v35, v21);
      v30(v0 + v35, v21);
    }
  }

  sub_1C97BE478();
}

void sub_1C9850528()
{
  sub_1C97BE460();
  v3 = *(v2 + 24);
  sub_1C985502C();
  v8 = _s5IndexV14RepresentationOMa(v4, v5, v6, v7);
  sub_1C97DACE4(v8);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C98021C4();
  swift_getAssociatedTypeWitness();
  v10 = sub_1C9855090();
  v12 = sub_1C98550C4(v10, v11, v3);
  v13 = *(v12 + 48);
  sub_1C98550EC();
  sub_1C9A92BF8();
  sub_1C9855190();
  (*(v14 + 16))(v1 + v13, v0 + v15, v3);
  sub_1C9855128();
  sub_1C97ACC50(v16, v17, v18, v12);
  sub_1C985502C();
  sub_1C984FE78(v19, v23, v20, v21, v22);
  sub_1C97BE478();
}

uint64_t sub_1C9850630(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  sub_1C985502C();
  v7 = _s5IndexV14RepresentationOMa(v3, v4, v5, v6);
  sub_1C97DACE4(v7);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C98550DC();
  swift_getAssociatedTypeWitness();
  v9 = sub_1C9855090();
  sub_1C98550C4(v9, v10, v2);
  sub_1C9855060();
  sub_1C97ACC50(v11, v12, v13, v14);
  sub_1C985502C();
  return sub_1C984FE78(v15, v19, v16, v17, v18);
}

uint64_t sub_1C98506EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 24);
  v8 = sub_1C98550F8();
  _s5IndexV14RepresentationOMa(v8, v9, v7, a3);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - v11;
  (*(v13 + 16))(&v30 - v11, a1);
  swift_getAssociatedTypeWitness();
  v14 = sub_1C9855110();
  v16 = sub_1C98550C4(v14, v15, v7);
  sub_1C985506C(v12, 1, v16);
  if (v17)
  {
    sub_1C985503C();
    v30 = 279;
    sub_1C97FB1C4();
    result = sub_1C98550A8(v23, v24, v25, 32, v26, v27, v28, v29, v30);
    __break(1u);
  }

  else
  {
    sub_1C9855190();
    (*(v18 + 32))(a4, &v12[v19], v7);
    sub_1C97AEB3C();
    v20 = sub_1C984ADE8();
    return v21(v20);
  }

  return result;
}

void sub_1C985088C()
{
  sub_1C97BE460();
  v82 = v1;
  v83 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = *(v4 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C97AE9C8();
  v76 = v9;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v10);
  v77 = &v73 - v11;
  v75 = v5;
  v12 = *(v5 + 24);
  sub_1C97AE9DC();
  v86 = v13;
  MEMORY[0x1EEE9AC00](v14);
  sub_1C97AEAD8();
  v17 = v16 - v15;
  sub_1C985509C();
  v18 = swift_getAssociatedTypeWitness();
  sub_1C97AE9C8();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  sub_1C98435A0();
  v24 = v22 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v73 - v26;
  v28 = v8;
  _s5IndexV14RepresentationOMa(0, v8, v12, v3);
  sub_1C97AE9C8();
  MEMORY[0x1EEE9AC00](v29);
  v81 = &v73 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v73 - v32;
  (*(v34 + 16))(&v73 - v32, v7);
  v84 = v12;
  v35 = sub_1C98550C4(0, v18, v12);
  sub_1C983E180(v33);
  if (v36)
  {
    sub_1C985503C();
    v73 = 291;
    sub_1C97FB1C4();
    sub_1C98550A8(v66, v67, v68, 33, v69, v70, v71, v72, v73);
    __break(1u);
  }

  else
  {
    v79 = *(v35 + 48);
    v80 = v35;
    (*(v20 + 16))(v27, v33, v18);
    sub_1C98550EC();
    sub_1C9A92C58();
    v85 = v3;
    swift_getAssociatedConformanceWitness();
    v37 = sub_1C9A92438();
    v38 = *(v20 + 8);
    v39 = sub_1C985511C();
    v38(v39);
    (v38)(v27, v18);
    if (v37)
    {
      v40 = v81;
      sub_1C9855060();
      sub_1C97ACC50(v41, v42, v43, v44);
      v45 = v40;
      v46 = v84;
      sub_1C984FE78(v45, v82, v28, v84, v85);
      (*(v86 + 8))(&v79[v33], v46);
      (v38)(v33, v18);
    }

    else
    {
      (*(v20 + 32))(v24, v33, v18);
      v74 = *(v86 + 32);
      v86 += 32;
      v47 = v17;
      v74(v17, &v79[v33], v84);
      v48 = (v83 + *(v75 + 12));
      v50 = *v48;
      v49 = v48[1];
      v79 = v50;
      v75 = v49;
      v73 = v28;
      v51 = sub_1C9A92D58();
      v52 = v77;
      (*(v76 + 16))(v77);
      v51(&v87, 0);
      (v79)(v17, v52);
      v53 = sub_1C984ADE8();
      v54(v53);
      v56 = v80;
      v55 = v81;
      v79 = *(v80 + 48);
      v57 = v85;
      sub_1C9A92C18();
      v58 = sub_1C985511C();
      v38(v58);
      v59 = v84;
      v74(&v79[v55], v47, v84);
      sub_1C9855128();
      sub_1C97ACC50(v60, v61, v62, v56);
      v63 = sub_1C984ADE8();
      sub_1C984FE78(v63, v65, v64, v59, v57);
    }

    sub_1C97BE478();
  }
}

void sub_1C9850DE4()
{
  sub_1C97BE460();
  v2 = v1;
  v4 = v3;
  v46 = v5;
  v47 = v6;
  v7 = *(v3 + 16);
  sub_1C9855104();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C97AE9C8();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C98435A0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C97ABFC0();
  v13 = *(v4 + 24);
  v14 = _s5IndexV14RepresentationOMa(255, v7, v13, v2);
  v15 = sub_1C9855104();
  v17 = sub_1C98550C4(v15, v16, v14);
  sub_1C97DACE4(v17);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C97FB2D8();
  v20 = v0 + *(v19 + 56);
  sub_1C97AEB3C();
  v22 = *(v21 + 16);
  v22(v0, v46, v14);
  v22(v20, v47, v14);
  v23 = sub_1C9855084();
  v25 = sub_1C98550C4(v23, v24, v13);
  sub_1C983E180(v0);
  if (v27)
  {
    sub_1C983E180(v20);
    if (v27)
    {
      goto LABEL_12;
    }

    v33 = *(v25 + 48);
    v34 = sub_1C9855170();
    v35(v34, v20, AssociatedTypeWitness);
    sub_1C98551D0();
    sub_1C9A92C48();
    v36 = sub_1C985504C();
    (v22)(v36);
    v37 = sub_1C97FB154();
    (v22)(v37);
    if (!__OFSUB__(v25, 1))
    {
      sub_1C97AEB3C();
      (*(v38 + 8))(v20 + v33, v13);
      goto LABEL_12;
    }
  }

  else
  {
    v26 = *(v25 + 48);
    sub_1C983E180(v20);
    if (!v27)
    {
      v48 = v26;
      v39 = *(v10 + 32);
      v40 = sub_1C9855170();
      v39(v40, v0, AssociatedTypeWitness);
      v41 = sub_1C985511C();
      (v39)(v41);
      sub_1C9A92C48();
      v42 = sub_1C985504C();
      ((v10 + 32))(v42);
      v43 = sub_1C97FB154();
      ((v10 + 32))(v43);
      sub_1C97AEB3C();
      v45 = *(v44 + 8);
      v45(&v48[v20], v13);
      v45(&v48[v0], v13);
LABEL_12:
      sub_1C97BE478();
      return;
    }

    v28 = sub_1C9855170();
    v29(v28, v0, AssociatedTypeWitness);
    sub_1C98551D0();
    sub_1C9A92C48();
    v30 = sub_1C985504C();
    (v26)(v30);
    v31 = sub_1C97FB154();
    (v26)(v31);
    if (!__OFADD__(v25, 1))
    {
      sub_1C97AEB3C();
      (*(v32 + 8))(&v26[v0], v13);
      goto LABEL_12;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t (*sub_1C98511A4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v8 = sub_1C97A2C48(0x28uLL);
  *a1 = v8;
  v8[4] = sub_1C9851224(v8, a2, a3, *(a4 - 8));
  return sub_1C9851220;
}

uint64_t (*sub_1C9851224(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v8 = *(a3 + 24);
  *a1 = v8;
  v9 = *(v8 - 8);
  a1[1] = v9;
  v10 = sub_1C97A2C48(*(v9 + 64));
  a1[2] = v10;
  sub_1C98506EC(a2, a3, a4, v10);
  return sub_1C98512E8;
}

uint64_t sub_1C98512EC(void x0_0, uint64_t a1, uint64_t a2)
{
  _s5IndexVMa(255, *(a1 + 16), *(a1 + 24), *(a2 - 8));
  sub_1C9855090();
  sub_1C9A93258();
  sub_1C9855060();

  return sub_1C97ACC50(v3, v4, v5, v6);
}

uint64_t sub_1C9851354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = _s5IndexVMa(0, *(a2 + 16), *(a2 + 24), *(a3 - 8));
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - v6;
  (*(v5 + 32))(&v9 - v6, a1, v4);
  sub_1C985088C();
  return (*(v5 + 8))(v7, v4);
}

void sub_1C9851464()
{
  sub_1C97BE460();
  v3 = v2;
  v4 = *(v2 + 32);
  v5 = *(v2 + 16);
  sub_1C98550F8();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C97AE9C8();
  v8 = v7;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C98550DC();
  v10 = *(v3 + 24);
  _s5IndexV14RepresentationOMa(0, v5, v10, v4);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C97FB2C8();
  (*(v12 + 16))(v4, v0);
  v13 = sub_1C9855084();
  v15 = sub_1C98550C4(v13, v14, v10);
  sub_1C985506C(v4, 1, v15);
  if (!v16)
  {
    v17 = *(v15 + 48);
    (*(v8 + 32))(v1, v4, AssociatedTypeWitness);
    sub_1C9A92398();
    v18 = sub_1C97FB154();
    v19(v18);
    sub_1C97AEB3C();
    (*(v20 + 8))(v4 + v17, v10);
  }

  sub_1C97BE478();
}

void sub_1C985168C()
{
  sub_1C97BE460();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v10 = type metadata accessor for InclusiveReductionsSequence.Iterator(0, v8, v9, v8);
  sub_1C985509C();
  swift_getAssociatedTypeWitness();
  sub_1C9855060();
  sub_1C97ACC50(v11, v12, v13, v14);
  sub_1C985509C();
  swift_getAssociatedTypeWitness();
  sub_1C9855018();
  (*(v15 + 32))(v7, v5);
  v16 = (v7 + *(v10 + 40));
  *v16 = v3;
  v16[1] = v1;
  sub_1C97BE478();
}

void sub_1C9851764()
{
  sub_1C97BE460();
  v2 = v1;
  v57 = v3;
  v4 = *(v1 + 24);
  v54 = *(v1 + 16);
  v55 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C98550F8();
  v6 = sub_1C9A93258();
  sub_1C97AE9C8();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  sub_1C98435A0();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v52 = &v44 - v14;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v44 - v16;
  sub_1C97AE9DC();
  v53 = v18;
  MEMORY[0x1EEE9AC00](v19);
  sub_1C97ABF90();
  v50 = v20;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v44 - v22;
  v51 = v2;
  v24 = *(v2 + 36);
  v25 = *(v8 + 16);
  v25(v17, v0 + v24, v6);
  sub_1C985506C(v17, 1, AssociatedTypeWitness);
  if (v32)
  {
    v26 = sub_1C97FB154();
    v27(v26);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    sub_1C9A93298();
    (*(v8 + 40))(v0 + v24, v12, v6);
    v25(v57, v0 + v24, v6);
  }

  else
  {
    v45 = v24;
    v46 = v25;
    v47 = v12;
    v48 = v8;
    v49 = v6;
    v28 = v53;
    v29 = *(v53 + 32);
    v29(v23, v17, AssociatedTypeWitness);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    v30 = v52;
    v31 = v56;
    sub_1C9A93298();
    sub_1C985506C(v30, 1, AssociatedTypeWitness);
    if (v32)
    {
      (*(v28 + 8))(v23, AssociatedTypeWitness);
      (*(v48 + 8))(v30, v49);
      sub_1C9855060();
      sub_1C97ACC50(v33, v34, v35, AssociatedTypeWitness);
    }

    else
    {
      v36 = v50;
      v29(v50, v30, AssociatedTypeWitness);
      v37 = v47;
      (*(v31 + *(v51 + 40)))(v23, v36);
      v38 = *(v28 + 8);
      v38(v36, AssociatedTypeWitness);
      v38(v23, AssociatedTypeWitness);
      sub_1C9855128();
      sub_1C97ACC50(v39, v40, v41, AssociatedTypeWitness);
      v42 = v49;
      v43 = v45;
      (*(v48 + 40))(v31 + v45, v37, v49);
      v46(v57, v31 + v43, v42);
    }
  }

  sub_1C97BE478();
}

uint64_t sub_1C9851B84(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  sub_1C97AE9DC();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  sub_1C97AEAD8();
  v9 = v8 - v7;
  sub_1C98550F8();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C97DACE4(AssociatedTypeWitness);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C98021C4();
  (*(v5 + 16))(v9, v2, v3);
  sub_1C9A92638();
  sub_1C985168C();
}

uint64_t sub_1C9851CE0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  a3(a1, a2);
  sub_1C97AEB3C();
  v6 = *(v5 + 8);

  return v6(v3, a1);
}

uint64_t sub_1C9851D40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1C9855084();
  swift_getAssociatedTypeWitness();
  sub_1C9855018();
  (*(v9 + 32))(a5, a1);
  v10 = sub_1C9855110();
  v13 = *(_s5IndexVMa_0(v10, v11, a4, v12) + 36);
  swift_getAssociatedTypeWitness();
  sub_1C9855090();
  sub_1C9A93258();
  sub_1C9855018();
  v15 = *(v14 + 32);

  return v15(a5 + v13, a2);
}

uint64_t sub_1C9851E2C()
{
  sub_1C985517C();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C98551B0(AssociatedTypeWitness, v1, v2, v3, MEMORY[0x1E69E6610]);
  sub_1C985519C();
  return sub_1C9A923D8() & 1;
}

uint64_t sub_1C9851E9C()
{
  sub_1C985517C();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C98551B0(AssociatedTypeWitness, v1, v2, v3, MEMORY[0x1E69E6610]);
  sub_1C985519C();
  return sub_1C9A92438() & 1;
}

uint64_t sub_1C9851F24()
{
  sub_1C9855148();
  swift_getAssociatedTypeWitness();
  sub_1C9855090();
  v4 = sub_1C9A93258();
  sub_1C97DACE4(v4);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C98550DC();
  sub_1C985509C();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C97DACE4(AssociatedTypeWitness);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C97FB2C8();
  sub_1C98550EC();
  sub_1C9A92BF8();
  sub_1C98550EC();
  sub_1C9A92CD8();
  return sub_1C9851D40(v3, v2, v0, v1);
}

uint64_t sub_1C9852018()
{
  sub_1C9855148();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_1C9A93258();
  sub_1C97DACE4(v5);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C97FB2C8();
  sub_1C985509C();
  v7 = swift_getAssociatedTypeWitness();
  sub_1C97DACE4(v7);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C98021C4();
  sub_1C98550EC();
  sub_1C9A92C58();
  sub_1C9855060();
  sub_1C97ACC50(v9, v10, v11, AssociatedTypeWitness);
  return sub_1C9851D40(v3, v2, v0, v1);
}

uint64_t sub_1C9852120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C9855104();
  v9 = sub_1C9A93258();
  sub_1C97AE9C8();
  v11 = v10;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v27 - v13;
  v16 = _s5IndexVMa_0(0, v7, a3, v15);
  (*(v11 + 16))(v14, a1 + *(v16 + 36), v9);
  sub_1C983E180(v14);
  if (v17)
  {
    (*(v11 + 8))(v14, v9);
    sub_1C985503C();
    v27 = 478;
    sub_1C97FB1C4();
    result = sub_1C98550A8(v20, v21, v22, 30, v23, v24, v25, v26, v27);
    __break(1u);
  }

  else
  {
    sub_1C97AEB3C();
    return (*(v18 + 32))(a4, v14, AssociatedTypeWitness);
  }

  return result;
}

void sub_1C98522B4()
{
  sub_1C97BE460();
  v65 = v0;
  v2 = v1;
  v4 = v3;
  v69 = v5;
  v62 = v6;
  v7 = *(v6 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C97AE9C8();
  v71 = v9;
  MEMORY[0x1EEE9AC00](v10);
  sub_1C98435A0();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  sub_1C97ABFC0();
  v63 = v15;
  v16 = swift_getAssociatedTypeWitness();
  v17 = sub_1C9A93258();
  sub_1C97AE9C8();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  sub_1C97ABF90();
  v66 = v21;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v22);
  v64 = &v60 - v23;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v60 - v25;
  sub_1C97AE9DC();
  v28 = v27;
  MEMORY[0x1EEE9AC00](v29);
  sub_1C97ABF90();
  v61 = v30;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C97ABFC0();
  v70 = v32;
  v34 = *(_s5IndexVMa_0(0, v7, v2, v33) + 36);
  v67 = v19;
  v68 = v17;
  (*(v19 + 16))(v26, v4 + v34, v17);
  sub_1C985506C(v26, 1, v16);
  if (v35)
  {
    (*(v67 + 8))(v26, v68);
    sub_1C985503C();
    v60 = 486;
    sub_1C97FB1C4();
    sub_1C98550A8(v53, v54, v55, 27, v56, v57, v58, v59, v60);
    __break(1u);
  }

  else
  {
    (*(v28 + 32))(v70, v26, v16);
    v36 = v63;
    v37 = v65;
    sub_1C9A92C18();
    sub_1C9A92C58();
    swift_getAssociatedConformanceWitness();
    v38 = sub_1C9A92438();
    (*(v71 + 8))(v13, AssociatedTypeWitness);
    if (v38)
    {
      (*(v28 + 8))(v70, v16);
      v39 = 1;
      v40 = v64;
    }

    else
    {
      v41 = (v37 + *(v62 + 36));
      v43 = *v41;
      v42 = v41[1];
      v62 = v43;
      v60 = v42;
      v44 = sub_1C9A92D58();
      v45 = *(v28 + 16);
      v65 = v7;
      v46 = v2;
      v47 = AssociatedTypeWitness;
      v48 = v61;
      v45(v61);
      v44(&v72, 0);
      v40 = v64;
      v49 = v70;
      (v62)(v70, v48);
      v50 = *(v28 + 8);
      v51 = v48;
      AssociatedTypeWitness = v47;
      v2 = v46;
      v50(v51, v16);
      v50(v49, v16);
      v39 = 0;
    }

    sub_1C97ACC50(v40, v39, 1, v16);
    (*(v71 + 32))(v13, v36, AssociatedTypeWitness);
    v52 = v66;
    (*(v67 + 32))(v66, v40, v68);
    sub_1C9851D40(v13, v52, v2, v69);
    sub_1C97BE478();
  }
}

uint64_t (*sub_1C985279C(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v8 = sub_1C97A2C48(0x28uLL);
  *a1 = v8;
  v8[4] = sub_1C9852860(v8, a2, a3, *(a4 - 8));
  return sub_1C9854FD8;
}

void sub_1C9852818(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t (*sub_1C9852860(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *a1 = AssociatedTypeWitness;
  v9 = *(AssociatedTypeWitness - 8);
  a1[1] = v9;
  v10 = sub_1C97A2C48(*(v9 + 64));
  a1[2] = v10;
  sub_1C9852120(a2, a3, a4, v10);
  return sub_1C9854FDC;
}

void sub_1C9852940(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t sub_1C985298C(void x0_0, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _s5IndexVMa_0(255, *(a2 + 16), *(a3 - 8), a4);
  sub_1C9855090();
  sub_1C9A93258();
  sub_1C9855060();

  return sub_1C97ACC50(v4, v5, v6, v7);
}

uint64_t sub_1C98529F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = _s5IndexVMa_0(0, *(a2 + 16), *(a3 - 8), a4);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  (*(v6 + 32))(&v10 - v7, a1, v5);
  sub_1C98522B4();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1C9852AFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();

  return sub_1C9A92398();
}

uint64_t sub_1C9852B64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t, uint64_t))
{
  sub_1C9A93CC8();
  a3(v7, a1, a2);
  return sub_1C9A93D18();
}

uint64_t sub_1C9852C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  v6 = *(a3 - 8);
  sub_1C9A93CC8();
  a4(v8, a2, v6);
  return sub_1C9A93D18();
}

uint64_t sub_1C9852DB8(void *a1)
{
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return TupleTypeMetadata2;
}

unint64_t sub_1C9852E40(void *a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    result = sub_1C9A93258();
    if (v3 <= 0x3F)
    {
      result = sub_1C983DB24();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C9852EF8(_DWORD *a1, unsigned int a2, void *a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 84);
  v8 = *(a3[3] - 8);
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
    v11 = *(*(AssociatedTypeWitness - 8) + 84);
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
  v13 = *(v8 + 64);
  if (!v9)
  {
    ++v13;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = *(*(AssociatedTypeWitness - 8) + 64) + v12;
  v15 = v13 + 7;
  if (v11 >= a2)
  {
LABEL_31:
    if (v7 == v11)
    {

      return sub_1C97ABF20(a1, v7, AssociatedTypeWitness);
    }

    v23 = (a1 + v14) & ~v12;
    if (v10 != v11)
    {
      v24 = *((v15 + v23) & 0xFFFFFFFFFFFFFFF8);
      if (v24 >= 0xFFFFFFFF)
      {
        LODWORD(v24) = -1;
      }

      return (v24 + 1);
    }

    if (v9 >= 2)
    {
      v25 = sub_1C97ABF20(v23, v9, a3[3]);
      if (v25 >= 2)
      {
        return v25 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  result = ((v15 + (v14 & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 16;
  if ((result & 0xFFFFFFF8) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = a2 - v11 + 1;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  switch(v19)
  {
    case 1:
      v20 = *(a1 + result);
      if (!*(a1 + result))
      {
        goto LABEL_31;
      }

      goto LABEL_28;
    case 2:
      v20 = *(a1 + result);
      if (!*(a1 + result))
      {
        goto LABEL_31;
      }

      goto LABEL_28;
    case 3:
      __break(1u);
      return result;
    case 4:
      v20 = *(a1 + result);
      if (!v20)
      {
        goto LABEL_31;
      }

LABEL_28:
      v21 = v20 - 1;
      if ((result & 0xFFFFFFF8) != 0)
      {
        v21 = 0;
        v22 = *a1;
      }

      else
      {
        v22 = 0;
      }

      result = v11 + (v22 | v21) + 1;
      break;
    default:
      goto LABEL_31;
  }

  return result;
}

void sub_1C9853148(_DWORD *a1, uint64_t a2, unsigned int a3, void *a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(*(AssociatedTypeWitness - 8) + 84);
  v10 = a4[3];
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v12)
  {
    v13 = v12 - 1;
  }

  else
  {
    v13 = 0;
  }

  if (v13 <= v9)
  {
    v14 = *(*(AssociatedTypeWitness - 8) + 84);
  }

  else
  {
    v14 = v13;
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  v15 = *(v11 + 80);
  v16 = *(*(AssociatedTypeWitness - 8) + 64) + v15;
  v17 = v16 & ~v15;
  v18 = *(v11 + 64);
  if (!v12)
  {
    ++v18;
  }

  v19 = v18 + 7;
  v20 = ((v19 + v17) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v19 + v17) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v21 = a3 - v14 + 1;
  }

  else
  {
    v21 = 2;
  }

  if (v21 >= 0x10000)
  {
    v22 = 4;
  }

  else
  {
    v22 = 2;
  }

  if (v21 < 0x100)
  {
    v22 = 1;
  }

  if (v21 >= 2)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  if (v14 < a3)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  if (a2 <= v14)
  {
    switch(v24)
    {
      case 1:
        *(a1 + v20) = 0;
        if (a2)
        {
          goto LABEL_40;
        }

        return;
      case 2:
        *(a1 + v20) = 0;
        if (a2)
        {
          goto LABEL_40;
        }

        return;
      case 3:
LABEL_54:
        __break(1u);
        return;
      case 4:
        *(a1 + v20) = 0;
        goto LABEL_39;
      default:
LABEL_39:
        if (!a2)
        {
          return;
        }

LABEL_40:
        if (v9 == v14)
        {
          v27 = a1;
          v28 = a2;
          v10 = AssociatedTypeWitness;
        }

        else
        {
          v27 = ((a1 + v16) & ~v15);
          if (v13 != v14)
          {
            v29 = ((v27 + v19) & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v30 = a2 & 0x7FFFFFFF;
              v29[1] = 0;
            }

            else
            {
              v30 = (a2 - 1);
            }

            *v29 = v30;
            return;
          }

          v28 = (a2 + 1);
          v9 = v12;
        }

        sub_1C97ACC50(v27, v28, v9, v10);
        break;
    }
  }

  else
  {
    if (((v19 + v17) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v25 = a2 - v14;
    }

    else
    {
      v25 = 1;
    }

    if (((v19 + v17) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v26 = ~v14 + a2;
      bzero(a1, ((v19 + v17) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v26;
    }

    switch(v24)
    {
      case 1:
        *(a1 + v20) = v25;
        break;
      case 2:
        *(a1 + v20) = v25;
        break;
      case 3:
        goto LABEL_54;
      case 4:
        *(a1 + v20) = v25;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_1C98533D4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = sub_1C983DB24();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C9853478(uint64_t result, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 84);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9 <= v6)
  {
    v10 = *(*(v5 - 8) + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(v8 + 80);
  if (v10 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = v10;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(*(v5 - 8) + 64) + v11;
  v14 = *(*(v7 - 8) + 64) + 7;
  if (v12 >= a2)
  {
LABEL_28:
    if (v6 != v12)
    {
      result = (v13 + result) & ~v11;
      if (v9 != v12)
      {
        v24 = *((v14 + result) & 0xFFFFFFFFFFFFFFF8);
        if (v24 >= 0xFFFFFFFF)
        {
          LODWORD(v24) = -1;
        }

        return (v24 + 1);
      }

      v6 = v9;
      v5 = v7;
    }

    return sub_1C97ABF20(result, v6, v5);
  }

  v15 = ((v14 + (v13 & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 16;
  v16 = a2 - v12;
  v17 = v15 & 0xFFFFFFF8;
  if ((v15 & 0xFFFFFFF8) != 0)
  {
    v18 = 2;
  }

  else
  {
    v18 = v16 + 1;
  }

  if (v18 >= 0x10000)
  {
    v19 = 4;
  }

  else
  {
    v19 = 2;
  }

  if (v18 < 0x100)
  {
    v19 = 1;
  }

  if (v18 >= 2)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  switch(v20)
  {
    case 1:
      v21 = *(result + v15);
      if (!v21)
      {
        goto LABEL_28;
      }

      goto LABEL_25;
    case 2:
      v21 = *(result + v15);
      if (!v21)
      {
        goto LABEL_28;
      }

      goto LABEL_25;
    case 3:
      __break(1u);
      return result;
    case 4:
      v21 = *(result + v15);
      if (!v21)
      {
        goto LABEL_28;
      }

LABEL_25:
      v22 = v21 - 1;
      if (v17)
      {
        v22 = 0;
        v23 = *result;
      }

      else
      {
        v23 = 0;
      }

      result = v12 + (v23 | v22) + 1;
      break;
    default:
      goto LABEL_28;
  }

  return result;
}

void sub_1C985363C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a4 + 16);
  v8 = *(*(v7 - 8) + 84);
  v9 = *(a4 + 24);
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v8)
  {
    v12 = *(*(v7 - 8) + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  v13 = *(v10 + 80);
  v14 = *(*(v7 - 8) + 64) + v13;
  v15 = v14 & ~v13;
  v16 = *(*(v9 - 8) + 64) + 7;
  v17 = ((v16 + v15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v12 >= a3)
  {
    v21 = 0;
  }

  else
  {
    v18 = a3 - v12;
    if (((v16 + v15) & 0xFFFFFFF8) == 0xFFFFFFF0)
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
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }
  }

  if (a2 <= v12)
  {
    switch(v21)
    {
      case 1:
        a1[v17] = 0;
        if (a2)
        {
          goto LABEL_34;
        }

        return;
      case 2:
        *&a1[v17] = 0;
        if (a2)
        {
          goto LABEL_34;
        }

        return;
      case 3:
LABEL_47:
        __break(1u);
        return;
      case 4:
        *&a1[v17] = 0;
        goto LABEL_33;
      default:
LABEL_33:
        if (!a2)
        {
          return;
        }

LABEL_34:
        if (v8 == v12)
        {
          goto LABEL_37;
        }

        a1 = (&a1[v14] & ~v13);
        if (v11 == v12)
        {
          v8 = v11;
          v7 = v9;
LABEL_37:

          sub_1C97ACC50(a1, a2, v8, v7);
        }

        else
        {
          v24 = (&a1[v16] & 0xFFFFFFFFFFFFFFF8);
          if ((a2 & 0x80000000) != 0)
          {
            v25 = a2 & 0x7FFFFFFF;
            v24[1] = 0;
          }

          else
          {
            v25 = (a2 - 1);
          }

          *v24 = v25;
        }

        break;
    }
  }

  else
  {
    if (((v16 + v15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v22 = a2 - v12;
    }

    else
    {
      v22 = 1;
    }

    if (((v16 + v15) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v23 = ~v12 + a2;
      bzero(a1, ((v16 + v15) & 0xFFFFFFFFFFFFFFF8) + 16);
      *v6 = v23;
    }

    switch(v21)
    {
      case 1:
        *(v6 + v17) = v22;
        break;
      case 2:
        *(v6 + v17) = v22;
        break;
      case 3:
        goto LABEL_47;
      case 4:
        *(v6 + v17) = v22;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C98538AC(uint64_t *a1)
{
  result = _s5IndexV14RepresentationOMa(319, a1[2], a1[3], a1[4]);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C9853920(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  swift_getAssociatedTypeWitness();
  sub_1C985515C();
  v9 = *(v8 + 84);
  v10 = a3[3];
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v12 <= v9)
  {
    v13 = *(v8 + 84);
  }

  else
  {
    v13 = *(v11 + 84);
  }

  v14 = v13 - 1;
  if (!v13)
  {
    v14 = 0;
  }

  v15 = *(v7 + 64);
  v16 = *(v11 + 80);
  v17 = *(v11 + 64);
  if (v13)
  {
    v18 = v17;
  }

  else
  {
    v18 = v17 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v19 = v15 + v16;
  if (a2 > v14)
  {
    v20 = v18 + (v19 & ~v16);
    v21 = 8 * v20;
    if (v20 > 3)
    {
      goto LABEL_12;
    }

    v23 = ((a2 - v14 + ~(-1 << v21)) >> v21) + 1;
    if (HIWORD(v23))
    {
      v22 = *(a1 + v20);
      if (v22)
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v23 <= 0xFF)
      {
        if (v23 < 2)
        {
          goto LABEL_29;
        }

LABEL_12:
        v22 = *(a1 + v20);
        if (!*(a1 + v20))
        {
          goto LABEL_29;
        }

LABEL_19:
        v24 = (v22 - 1) << v21;
        if (v20 > 3)
        {
          v24 = 0;
        }

        if (v20)
        {
          if (v20 <= 3)
          {
            v25 = v20;
          }

          else
          {
            v25 = 4;
          }

          switch(v25)
          {
            case 2:
              v26 = *a1;
              break;
            case 3:
              v26 = *a1 | (*(a1 + 2) << 16);
              break;
            case 4:
              v26 = *a1;
              break;
            default:
              v26 = *a1;
              break;
          }
        }

        else
        {
          v26 = 0;
        }

        return v14 + (v26 | v24) + 1;
      }

      v22 = *(a1 + v20);
      if (*(a1 + v20))
      {
        goto LABEL_19;
      }
    }
  }

LABEL_29:
  if (v13 < 2)
  {
    return 0;
  }

  if (v9 >= v12)
  {
    v28 = a1;
    v10 = v6;
  }

  else
  {
    v28 = ((a1 + v19) & ~v16);
    v9 = v12;
  }

  v29 = sub_1C97ABF20(v28, v9, v10);
  if (v29 >= 2)
  {
    return v29 - 1;
  }

  else
  {
    return 0;
  }
}

void sub_1C9853B4C(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  swift_getAssociatedTypeWitness();
  v8 = 0;
  sub_1C985515C();
  v12 = *(v11 + 84);
  v13 = a4[3];
  v14 = *(v13 - 8);
  v15 = *(v14 + 84);
  if (v15 <= v12)
  {
    v16 = *(v11 + 84);
  }

  else
  {
    v16 = *(v14 + 84);
  }

  v17 = v16 - 1;
  if (!v16)
  {
    v17 = 0;
  }

  v18 = *(v14 + 80);
  v19 = *(v10 + 64) + v18;
  v20 = v19 & ~v18;
  v21 = *(v14 + 64);
  v22 = v20 + v21;
  if (v16)
  {
    v23 = v20 + v21;
  }

  else
  {
    v23 = v22 + 1;
  }

  v24 = 8 * v23;
  if (a3 > v17)
  {
    if (v23 <= 3)
    {
      v25 = ((a3 - v17 + ~(-1 << v24)) >> v24) + 1;
      if (HIWORD(v25))
      {
        v8 = 4;
      }

      else
      {
        if (v25 < 0x100)
        {
          v26 = 1;
        }

        else
        {
          v26 = 2;
        }

        if (v25 >= 2)
        {
          v8 = v26;
        }

        else
        {
          v8 = 0;
        }
      }
    }

    else
    {
      v8 = 1;
    }
  }

  if (v17 >= a2)
  {
    switch(v8)
    {
      case 1:
        a1[v23] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v23] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_61:
        __break(1u);
        break;
      case 4:
        *&a1[v23] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v16 >= 2)
          {
            if (a2 >= v16)
            {
              if (v22 <= 3)
              {
                v32 = ~(-1 << (8 * v22));
              }

              else
              {
                v32 = -1;
              }

              if (v22)
              {
                v33 = v32 & (a2 - v16);
                if (v22 <= 3)
                {
                  v34 = v22;
                }

                else
                {
                  v34 = 4;
                }

                bzero(a1, v22);
                switch(v34)
                {
                  case 2:
                    *a1 = v33;
                    break;
                  case 3:
                    *a1 = v33;
                    a1[2] = BYTE2(v33);
                    break;
                  case 4:
                    *a1 = v33;
                    break;
                  default:
                    *a1 = v33;
                    break;
                }
              }
            }

            else
            {
              if (v12 >= v15)
              {
                v31 = a2 + 1;
                v30 = a1;
                v13 = v9;
              }

              else
              {
                v30 = (&a1[v19] & ~v18);
                v31 = a2 + 1;
                v12 = v15;
              }

              sub_1C97ACC50(v30, v31, v12, v13);
            }
          }
        }

        break;
    }
  }

  else
  {
    v27 = ~v17 + a2;
    if (v23 < 4)
    {
      v28 = (v27 >> v24) + 1;
      if (v23)
      {
        v29 = v27 & ~(-1 << v24);
        bzero(a1, v23);
        if (v23 == 3)
        {
          *a1 = v29;
          a1[2] = BYTE2(v29);
        }

        else if (v23 == 2)
        {
          *a1 = v29;
        }

        else
        {
          *a1 = v27;
        }
      }
    }

    else
    {
      bzero(a1, v23);
      *a1 = v27;
      v28 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v23] = v28;
        break;
      case 2:
        *&a1[v23] = v28;
        break;
      case 3:
        goto LABEL_61;
      case 4:
        *&a1[v23] = v28;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_1C9853E90(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    result = sub_1C9A93258();
    if (v3 <= 0x3F)
    {
      result = sub_1C983DB24();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C9853F74(int *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  result = swift_getAssociatedTypeWitness();
  v9 = *(result - 8);
  v10 = *(v9 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  if (v11 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = v11;
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  v13 = *(v9 + 80);
  v14 = *(*(result - 8) + 64);
  if (!v10)
  {
    ++v14;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = result;
  v16 = *(v6 + 64) + v13;
  v17 = v14 + 7;
  if (v12 >= a2)
  {
LABEL_31:
    if (v7 == v12)
    {

      return sub_1C97ABF20(a1, v7, AssociatedTypeWitness);
    }

    v25 = (a1 + v16) & ~v13;
    if (v11 != v12)
    {
      v26 = *((v17 + v25) & 0xFFFFFFFFFFFFFFF8);
      if (v26 >= 0xFFFFFFFF)
      {
        LODWORD(v26) = -1;
      }

      return (v26 + 1);
    }

    if (v10 >= 2)
    {
      v27 = sub_1C97ABF20(v25, v10, v15);
      if (v27 >= 2)
      {
        return v27 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v18 = ((v17 + (v16 & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 16;
  v19 = v18 & 0xFFFFFFF8;
  if ((v18 & 0xFFFFFFF8) != 0)
  {
    v20 = 2;
  }

  else
  {
    v20 = a2 - v12 + 1;
  }

  if (v20 >= 0x10000)
  {
    LODWORD(v21) = 4;
  }

  else
  {
    LODWORD(v21) = 2;
  }

  if (v20 < 0x100)
  {
    LODWORD(v21) = 1;
  }

  if (v20 >= 2)
  {
    v21 = v21;
  }

  else
  {
    v21 = 0;
  }

  switch(v21)
  {
    case 1:
      v22 = *(a1 + v18);
      if (!v22)
      {
        goto LABEL_31;
      }

      goto LABEL_28;
    case 2:
      v22 = *(a1 + v18);
      if (!v22)
      {
        goto LABEL_31;
      }

      goto LABEL_28;
    case 3:
      __break(1u);
      return result;
    case 4:
      v22 = *(a1 + v18);
      if (!v22)
      {
        goto LABEL_31;
      }

LABEL_28:
      v23 = v22 - 1;
      if (v19)
      {
        v23 = 0;
        v24 = *a1;
      }

      else
      {
        v24 = 0;
      }

      result = v12 + (v24 | v23) + 1;
      break;
    default:
      goto LABEL_31;
  }

  return result;
}

void sub_1C9854208(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 84);
  v10 = swift_getAssociatedTypeWitness();
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v12)
  {
    v13 = v12 - 1;
  }

  else
  {
    v13 = 0;
  }

  if (v13 <= v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = v13;
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  v15 = *(v11 + 80);
  v16 = *(v8 + 64) + v15;
  v17 = *(*(v10 - 8) + 64);
  if (!v12)
  {
    ++v17;
  }

  v18 = v17 + 7;
  v19 = ((v18 + (v16 & ~v15)) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v18 + (v16 & ~v15)) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v20 = a3 - v14 + 1;
  }

  else
  {
    v20 = 2;
  }

  if (v20 >= 0x10000)
  {
    v21 = 4;
  }

  else
  {
    v21 = 2;
  }

  if (v20 < 0x100)
  {
    v21 = 1;
  }

  if (v20 >= 2)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  if (v14 < a3)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  if (a2 <= v14)
  {
    v26 = ~v15;
    v27 = v10;
    switch(v23)
    {
      case 1:
        *(a1 + v19) = 0;
        if (a2)
        {
          goto LABEL_40;
        }

        return;
      case 2:
        *(a1 + v19) = 0;
        if (a2)
        {
          goto LABEL_40;
        }

        return;
      case 3:
LABEL_54:
        __break(1u);
        return;
      case 4:
        *(a1 + v19) = 0;
        goto LABEL_39;
      default:
LABEL_39:
        if (!a2)
        {
          return;
        }

LABEL_40:
        if (v9 == v14)
        {
          v28 = a1;
          v29 = a2;
          v12 = v9;
          v27 = AssociatedTypeWitness;
        }

        else
        {
          v28 = ((a1 + v16) & v26);
          if (v13 != v14)
          {
            v30 = ((v28 + v18) & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v31 = a2 & 0x7FFFFFFF;
              v30[1] = 0;
            }

            else
            {
              v31 = (a2 - 1);
            }

            *v30 = v31;
            return;
          }

          v29 = (a2 + 1);
        }

        sub_1C97ACC50(v28, v29, v12, v27);
        break;
    }
  }

  else
  {
    if (((v18 + (v16 & ~v15)) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v24 = a2 - v14;
    }

    else
    {
      v24 = 1;
    }

    if (((v18 + (v16 & ~v15)) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v25 = ~v14 + a2;
      bzero(a1, v19);
      *a1 = v25;
    }

    switch(v23)
    {
      case 1:
        *(a1 + v19) = v24;
        break;
      case 2:
        *(a1 + v19) = v24;
        break;
      case 3:
        goto LABEL_54;
      case 4:
        *(a1 + v19) = v24;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_1C98544CC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_1C983DB24();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C9854554(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return sub_1C97ABF20(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1C9854690(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
              v17[1] = 0;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            sub_1C97ACC50(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C9854878(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    result = sub_1C9A93258();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C9854944(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  if (v11 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(v9 + 80);
  if (v10)
  {
    v14 = *(*(v8 - 8) + 64);
  }

  else
  {
    v14 = *(*(v8 - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = *(v6 + 64) + v13;
  if (a2 <= v12)
  {
    goto LABEL_31;
  }

  v16 = v14 + (v15 & ~v13);
  v17 = 8 * v16;
  if (v16 <= 3)
  {
    v19 = ((a2 - v12 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v19))
    {
      v18 = *(a1 + v16);
      if (!v18)
      {
        goto LABEL_30;
      }

      goto LABEL_20;
    }

    if (v19 > 0xFF)
    {
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_30;
      }

      goto LABEL_20;
    }

    if (v19 < 2)
    {
LABEL_30:
      if (v12)
      {
LABEL_31:
        if (v7 >= v11)
        {

          return sub_1C97ABF20(a1, v7, AssociatedTypeWitness);
        }

        else
        {
          v23 = sub_1C97ABF20((a1 + v15) & ~v13, v10, v8);
          if (v23 >= 2)
          {
            return v23 - 1;
          }

          else
          {
            return 0;
          }
        }
      }

      return 0;
    }
  }

  v18 = *(a1 + v16);
  if (!*(a1 + v16))
  {
    goto LABEL_30;
  }

LABEL_20:
  v20 = (v18 - 1) << v17;
  if (v16 > 3)
  {
    v20 = 0;
  }

  if (v16)
  {
    if (v16 <= 3)
    {
      v21 = v16;
    }

    else
    {
      v21 = 4;
    }

    switch(v21)
    {
      case 2:
        v22 = *a1;
        break;
      case 3:
        v22 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v22 = *a1;
        break;
      default:
        v22 = *a1;
        break;
    }
  }

  else
  {
    v22 = 0;
  }

  return v12 + (v22 | v20) + 1;
}

void sub_1C9854BCC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 84);
  v10 = swift_getAssociatedTypeWitness();
  v11 = 0;
  v12 = *(v10 - 8);
  v13 = *(v12 + 84);
  v14 = v13 - 1;
  if (!v13)
  {
    v14 = 0;
  }

  if (v14 <= v9)
  {
    v15 = v9;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v12 + 80);
  v17 = *(v8 + 64) + v16;
  v18 = v17 & ~v16;
  if (v13)
  {
    v19 = *(*(v10 - 8) + 64);
  }

  else
  {
    v19 = *(*(v10 - 8) + 64) + 1;
  }

  v20 = v18 + v19;
  v21 = 8 * (v18 + v19);
  if (a3 > v15)
  {
    if (v20 <= 3)
    {
      v22 = ((a3 - v15 + ~(-1 << v21)) >> v21) + 1;
      if (HIWORD(v22))
      {
        v11 = 4;
      }

      else
      {
        if (v22 < 0x100)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v22 >= 2)
        {
          v11 = v23;
        }

        else
        {
          v11 = 0;
        }
      }
    }

    else
    {
      v11 = 1;
    }
  }

  if (v15 >= a2)
  {
    switch(v11)
    {
      case 1:
        a1[v20] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        return;
      case 2:
        *&a1[v20] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        return;
      case 3:
LABEL_60:
        __break(1u);
        return;
      case 4:
        *&a1[v20] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (!a2)
        {
          return;
        }

LABEL_32:
        if (v9 >= v14)
        {
          v31 = a1;
          v32 = a2;
          v13 = v9;
          v10 = AssociatedTypeWitness;
        }

        else
        {
          v27 = (&a1[v17] & ~v16);
          if (v14 < a2)
          {
            if (v19 <= 3)
            {
              v28 = ~(-1 << (8 * v19));
            }

            else
            {
              v28 = -1;
            }

            if (v19)
            {
              v29 = v28 & (~v14 + a2);
              if (v19 <= 3)
              {
                v30 = v19;
              }

              else
              {
                v30 = 4;
              }

              bzero(v27, v19);
              switch(v30)
              {
                case 2:
                  *v27 = v29;
                  break;
                case 3:
                  *v27 = v29;
                  v27[2] = BYTE2(v29);
                  break;
                case 4:
                  *v27 = v29;
                  break;
                default:
                  *v27 = v29;
                  break;
              }
            }

            return;
          }

          v32 = (a2 + 1);
          v31 = v27;
        }

        sub_1C97ACC50(v31, v32, v13, v10);
        break;
    }
  }

  else
  {
    v24 = ~v15 + a2;
    if (v20 < 4)
    {
      v25 = (v24 >> v21) + 1;
      if (v20)
      {
        v26 = v24 & ~(-1 << v21);
        bzero(a1, v20);
        if (v20 == 3)
        {
          *a1 = v26;
          a1[2] = BYTE2(v26);
        }

        else if (v20 == 2)
        {
          *a1 = v26;
        }

        else
        {
          *a1 = v24;
        }
      }
    }

    else
    {
      bzero(a1, v20);
      *a1 = v24;
      v25 = 1;
    }

    switch(v11)
    {
      case 1:
        a1[v20] = v25;
        break;
      case 2:
        *&a1[v20] = v25;
        break;
      case 3:
        goto LABEL_60;
      case 4:
        *&a1[v20] = v25;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C98550A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a4 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;

  return sub_1C9A93778(a1, a2, a3, v10, a5, a6, 30, 2, a9);
}

uint64_t sub_1C98550C4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_getTupleTypeMetadata2();
}

uint64_t sub_1C98551B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1C98551D0()
{

  return sub_1C9A92C58();
}

void sub_1C98552D0(double a1)
{
  v2 = *(v1 + OBJC_IVAR___SNCorrelateAudioRequest_impl + 8);
  if (v2 >= 0.0 && v2 < 1.0)
  {
    *(v1 + OBJC_IVAR___SNCorrelateAudioRequest_impl + 8) = a1;
  }

  else
  {
    sub_1C98566E4();
    sub_1C97A7A80(&unk_1F4934C70);
    swift_willThrow();
  }
}

uint64_t sub_1C985533C(double a1)
{
  if (qword_1EC3C4EC8 != -1)
  {
    swift_once();
  }

  if (byte_1EC3C4ED0)
  {
    v2 = *(v1 + OBJC_IVAR___SNCorrelateAudioRequest_impl);
    v3 = *(v1 + OBJC_IVAR___SNCorrelateAudioRequest_impl + 8);
    type metadata accessor for SNAudioCorrelator(a1);
    v4 = swift_allocObject();
    sub_1C9855674(v2, v3);
  }

  else
  {
    v4 = type metadata accessor for SNError(a1);
    sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 1, 0, 0xD00000000000001ALL, 0x80000001C9AD5760);
    swift_willThrow();
  }

  return v4;
}

id sub_1C9855448(uint64_t a1, double a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR___SNCorrelateAudioRequest_impl];
  *v6 = a1;
  v6[1] = a2;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_1C98554E4(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR___SNCorrelateAudioRequest_impl];
  *v4 = a1;
  *(v4 + 1) = 0x3FE0000000000000;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init);
}

id SNCorrelateAudioRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SNCorrelateAudioRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C9855674(void *a1, double a2)
{
  *(v2 + 16) = 0;
  *(v2 + 24) = a1;
  v4 = a1;
  v5 = [v4 processingFormat];
  [v5 sampleRate];
  v7 = v6;

  *(v2 + 32) = v7;
  *(v2 + 40) = 1;
  *(v2 + 48) = a2;
  return v2;
}

char *sub_1C98556F4(void *a1, uint64_t a2, double a3, float a4)
{
  v5 = a2;
  v9 = [a1 length];
  result = [a1 length];
  v11 = result * a4;
  if (COERCE_INT(fabs(v11)) > 2139095039)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v11 <= -9.2234e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v11 >= 9.2234e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = &v9[-v11];
  if (__OFSUB__(v9, v11))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = sub_1C9856288(a3);
  v14 = sub_1C985645C(v12, v13);
  if (v4)
  {

    return v14;
  }

  sub_1C9855878(v14, a1, v5, a4);
  result = [a1 length];
  if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_16;
  }

  if (a3 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (a3 < 9.22337204e18)
  {
    sub_1C9A695C8(v14, result, a3, 1);
    sub_1C9A69B8C(v14);
    return v14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_1C9855878(void *a1, void *a2, int a3, float a4)
{
  v8 = sub_1C98568A0();
  v9 = sub_1C9A6AEE4(a1, v8);

  sub_1C985608C(v9, a2, a3, a4);
}

uint64_t sub_1C9855908(void *a1, unint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (HIDWORD(a2))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = v4;
  v8 = *(v4 + 44);
  v9 = v8 + a2;
  if (__CFADD__(v8, a2))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v10 = v5;
  *(v7 + 44) = v9;
  if ([*(v7 + 24) length] > v9)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v13 = *(v7 + 40);
  v12 = MEMORY[0x1E69E7CC0];
  if (!v13)
  {
LABEL_11:
    if (!(v12 >> 62))
    {

      sub_1C9A93B78();

      return v12;
    }

LABEL_18:

    sub_1C97A2CEC(&unk_1EC3C8670, &unk_1C9AA0730);
    v17 = sub_1C9A93788();
    swift_bridgeObjectRelease_n();
    return v17;
  }

  v22 = MEMORY[0x1E69E7CC0];
  sub_1C9A93698();
  v15 = 0;
  while (1)
  {
    v20 = v15;
    sub_1C9855ACC(&v20, a1, a2, v7, a3, &v19, &v21, v14);
    if (v10)
    {
      break;
    }

    v10 = 0;
    ++v15;
    v12 = v21;
    sub_1C9A93678();
    sub_1C9A936A8();
    sub_1C9A936B8();
    sub_1C9A93688();
    if (v13 == v15)
    {
      v12 = v22;
      goto LABEL_11;
    }
  }

  return v12;
}

void sub_1C9855ACC(unsigned int *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t *a6@<X6>, void *a7@<X8>, double a8@<D0>)
{
  v10 = v8;
  v48 = *MEMORY[0x1E69E9840];
  v14 = *a1;
  v15 = [objc_allocWithZone(type metadata accessor for SNAudioCorrelationResult(a8)) init];
  v16 = &v15[OBJC_IVAR___SNAudioCorrelationResult_impl];
  *&v15[OBJC_IVAR___SNAudioCorrelationResult_impl + 80] = v14;
  LODWORD(v43.start.value) = 0;
  if (!sub_1C9A64EA4(a2, &v43, 0, 4, v14))
  {
LABEL_10:
    sub_1C97C269C();
    v10 = swift_allocError();
    *v34 = 4;
LABEL_12:
    swift_willThrow();
LABEL_13:

    *a6 = v10;
    return;
  }

  v16[6] = *&v43.start.value;
  v17 = objc_opt_self();
  v43.start.value = 0;
  v18 = sub_1C9A76EE8(v17, a2, &v43);
  if (!v18)
  {
    v35 = v43.start.value;
    v10 = sub_1C9A913C8();

    goto LABEL_12;
  }

  v19 = v18;
  v20 = v43.start.value;
  v21 = sub_1C9A92B78();

  v22 = __OFADD__(v21, a3);
  v23 = v21 + a3;
  if (v22)
  {
    __break(1u);
    goto LABEL_23;
  }

  v24 = *(a4 + 24);
  v25 = [v24 length];
  v22 = __OFSUB__(v23, v25);
  v26 = v23 - v25;
  if (v22)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v27 = sub_1C9A67138(a2);
  if (v27 < 0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v40 = v21;
  CMTimeMake(&v43.start, v26, v27);
  value = v43.start.value;
  v29 = *&v43.start.timescale;
  epoch = v43.start.epoch;
  v31 = [v24 length];
  v32 = sub_1C9A67138(a2);
  if (v32 < 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  CMTimeMake(&v43.start, v31, v32);
  duration = v43.start;
  start.value = value;
  *&start.timescale = v29;
  start.epoch = epoch;
  CMTimeRangeMake(&v43, &start, &duration);
  v47 = v43;
  (a5)();
  if (v8)
  {
    goto LABEL_13;
  }

  v33 = sub_1C9A92F08();
  a5(v33);
  sub_1C9A92F18();
  SNAudioCorrelationResult.timeRange.setter(v46);
  LODWORD(v43.start.value) = 0;
  if ((sub_1C9A64EA4(a2, &v43, 1, 4, v14) & 1) == 0)
  {
    goto LABEL_10;
  }

  if ((v43.start.value & 0x7FFFFFFF) > 0x7F7FFFFF)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (*&v43.start.value <= -9.2234e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (*&v43.start.value >= 9.2234e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (__OFADD__(v40, *&v43.start.value))
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  if ((sub_1C9A67138(a2) & 0x80000000) != 0)
  {
    goto LABEL_30;
  }

  v36 = sub_1C9A93168();
  v37 = (a5)(v36);
  sub_1C9A1C2B4(v37, v38, v39);
  *a7 = v15;
}

id sub_1C9855ED0()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1;
  }

  sub_1C9856674();
  sub_1C97A7A80(&unk_1F4934D00);
  return swift_willThrow();
}

void sub_1C9855F24(int a1)
{
  v3 = *v1;
  *(v1 + 10) = a1;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;

  v5 = sub_1C97C1C8C();

  if (!v2)
  {
    v6 = v1[2];
    v1[2] = v5;
  }
}

char *sub_1C9855FE0@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  v4 = *(a1 + 48);
  result = sub_1C98556F4(*(a1 + 24), *(a1 + 40), *(a1 + 32), v4);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

id sub_1C9856028()
{
  result = sub_1C9855ED0();
  if (!v0)
  {
    v2 = result;
    v3 = sub_1C98568A0();
    v4 = sub_1C9A6AEE4(v2, v3);

    return v4;
  }

  return result;
}

void sub_1C985608C(void *a1, id a2, int a3, float a4)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v7 = [a2 processingFormat];
  v8 = [a2 length];
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
  }

  if (HIDWORD(v8))
  {
    goto LABEL_9;
  }

  v9 = [objc_allocWithZone(MEMORY[0x1E6958440]) initWithPCMFormat:v7 frameCapacity:v8];

  if (v9)
  {
    [a2 setFramePosition_];
    v16[0] = 0;
    v10 = [a2 readIntoBuffer:v9 error:v16];
    v11 = v16[0];
    if (v10)
    {
      v12 = objc_opt_self();
      v16[0] = 0;
      v13 = v11;
      sub_1C9A75830(v12, a1, v9, v16, a4);
    }

    v15 = v16[0];
    sub_1C9A913C8();

    swift_willThrow();
  }

  else
  {
    sub_1C97A8E8C();
    sub_1C97A7A80(&type metadata for OptionalUtils.DomainError);
    *v14 = 0;
    swift_willThrow();
  }
}

uint64_t sub_1C9856288(double a1)
{
  sub_1C9A935B8();
  sub_1C98568D0();
  result = MEMORY[0x1CCA90230]();
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (a1 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (a1 < 9.22337204e18)
  {
    v4 = sub_1C98568DC();
    MEMORY[0x1CCA90230](v4);

    sub_1C98568D0();
    MEMORY[0x1CCA90230]();
    v5 = sub_1C98568DC();
    MEMORY[0x1CCA90230](v5);

    sub_1C98568D0();
    MEMORY[0x1CCA90230]();
    v6 = sub_1C9A93A98();
    MEMORY[0x1CCA90230](v6);

    sub_1C98568D0();
    MEMORY[0x1CCA90230](0xD000000000000010);
    v7 = sub_1C98568DC();
    MEMORY[0x1CCA90230](v7);

    sub_1C98568D0();
    MEMORY[0x1CCA90230]();
    return 0;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1C985645C(uint64_t a1, uint64_t a2)
{
  sub_1C97A2CEC(&qword_1EC3C69E8, &unk_1C9A9D4A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C9A9EDD0;
  *(inited + 32) = 1954047316;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = a1;
  *(inited + 56) = a2;

  v5 = sub_1C9A92348();
  v7 = objc_allocWithZone(type metadata accessor for SNDSPGraphInfo(v6));
  v12 = sub_1C98CCC04(v5, 0, 0xE000000000000000, v7, v8, v9, v10, v11);
  v14 = type metadata accessor for SNDSPGraphLoader(v13);
  v15 = sub_1C98CC714(v12);
  if (v15)
  {
    v14 = v15;
  }

  else
  {
    sub_1C97A8E8C();
    sub_1C97A7A80(&type metadata for OptionalUtils.DomainError);
    *v16 = 0;
    swift_willThrow();
  }

  return v14;
}

uint64_t sub_1C98565B0()
{
  sub_1C9856588();

  return swift_deallocClassInstance();
}

unint64_t sub_1C9856674()
{
  result = qword_1EC3C9768;
  if (!qword_1EC3C9768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9768);
  }

  return result;
}

unint64_t sub_1C98566E4()
{
  result = qword_1EC3C9770;
  if (!qword_1EC3C9770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9770);
  }

  return result;
}

_BYTE *sub_1C9856744(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C98567F0()
{
  result = qword_1EC3C9778;
  if (!qword_1EC3C9778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9778);
  }

  return result;
}

unint64_t sub_1C9856848()
{
  result = qword_1EC3C9780;
  if (!qword_1EC3C9780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9780);
  }

  return result;
}

uint64_t sub_1C98568A0()
{

  return sub_1C9A92478();
}

uint64_t sub_1C98568DC()
{

  return sub_1C9A93A98();
}

uint64_t sub_1C98568F8(double a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC13SoundAnalysis42SNLogMelBasedFeatureExtractorConfiguration_model + 8);
  type metadata accessor for SNUtils(a1);
  ObjectType = swift_getObjectType();
  v4 = (*(v2 + 16))(ObjectType, v2);
  v5 = sub_1C9A16DBC(v4);

  sub_1C9A18C50(v5, 1u);
  v7 = v6;

  return v7;
}

void sub_1C9856998(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v70 = *(a2 + 16);
  v4 = v70(ObjectType, a2);
  v5 = [v4 inputDescriptionsByName];

  sub_1C97BD318(v6, 0, &qword_1EC3C54D0, 0x1E695FE50);
  v7 = sub_1C9A92328();

  if (*(v7 + 16) != 1)
  {

    goto LABEL_6;
  }

  sub_1C98BBD84(v7);
  v9 = v8;
  v11 = v10;

  if (!v9)
  {
LABEL_6:
    type metadata accessor for SNError(v12);
    sub_1C98573F8();
    sub_1C9820900(v20, v19 + 41, v21);
    swift_willThrow();
    return;
  }

  v69 = v11;
  v13 = [v11 multiArrayConstraint];
  if (v13)
  {
    v15 = v13;
    v16 = [v13 shape];

    sub_1C97BD318(v17, 0, &qword_1EC3C54B0, 0x1E696AD98);
    v18 = sub_1C9A92798();
  }

  else
  {
    v18 = 0;
  }

  type metadata accessor for SNUtils(v14);
  v22 = sub_1C9A18184();
  if (!v18)
  {

    goto LABEL_16;
  }

  v24 = sub_1C980937C(v18, v22, v23);

  if ((v24 & 1) == 0)
  {
LABEL_16:
    sub_1C9A935B8();
    MEMORY[0x1CCA90230](0xD00000000000003BLL, 0x80000001C9AD6DD0);
    v28 = v69;
    v39 = [v69 multiArrayConstraint];
    v41 = v39;
    if (v39)
    {
      v42 = [v39 shape];

      sub_1C97BD318(v43, 0, &qword_1EC3C54B0, 0x1E696AD98);
      sub_1C98573EC();
      sub_1C9A92798();
    }

    type metadata accessor for SNError(v40);
    sub_1C97A2CEC(&qword_1EC3C97A0, &qword_1C9AA73A0);
    v44 = sub_1C9A924F8();
    MEMORY[0x1CCA90230](v44);

    MEMORY[0x1CCA90230](0x746365707865202CLL, 0xEB00000000206465);
    sub_1C9A18184();
    sub_1C97BD318(v45, 0, &qword_1EC3C54B0, 0x1E696AD98);
    v46 = sub_1C98573EC();
    v47 = MEMORY[0x1CCA90460](v46);
    v49 = v48;

    MEMORY[0x1CCA90230](v47, v49);

    v50 = sub_1C97FB260();
    sub_1C9929478(v50, v51, v52, v53, v54, 0xE000000000000000);

    goto LABEL_21;
  }

  v25 = v70(ObjectType, a2);
  v26 = [v25 outputDescriptionsByName];

  v27 = sub_1C9A92328();
  v28 = v69;
  if (*(v27 + 16) != 1)
  {

    goto LABEL_20;
  }

  sub_1C98BBD84(v27);
  v30 = v29;
  v32 = v31;

  if (!v30)
  {
LABEL_20:
    type metadata accessor for SNError(v33);
    sub_1C98573F8();
    sub_1C9820900(v56, v55 + 42, v57);
LABEL_21:
    swift_willThrow();

    return;
  }

  v34 = [v32 multiArrayConstraint];
  if (v34 && (v35 = v34, v36 = [v34 shape], v35, sub_1C97BD318(v37, 0, &qword_1EC3C54B0, 0x1E696AD98), sub_1C98573EC(), sub_1C9A92798(), v36, v38 = sub_1C97BDEE0(), , v38 == 1))
  {
  }

  else
  {
    sub_1C9A935B8();
    MEMORY[0x1CCA90230](0xD00000000000003CLL, 0x80000001C9AD6E60);
    v58 = [v32 multiArrayConstraint];
    v60 = v58;
    if (v58)
    {
      v61 = [v58 shape];

      sub_1C97BD318(v62, 0, &qword_1EC3C54B0, 0x1E696AD98);
      sub_1C98573EC();
      sub_1C9A92798();
    }

    type metadata accessor for SNError(v59);
    sub_1C97A2CEC(&qword_1EC3C97A0, &qword_1C9AA73A0);
    v63 = sub_1C9A924F8();
    MEMORY[0x1CCA90230](v63);

    MEMORY[0x1CCA90230](0xD00000000000001CLL, 0x80000001C9AD6EA0);
    v64 = sub_1C97FB260();
    sub_1C9929478(v64, v65, v66, v67, v68, 0xE000000000000000);

    swift_willThrow();
  }
}

id sub_1C9856FE4(uint64_t a1, uint64_t a2, int a3)
{
  ObjectType = swift_getObjectType();
  sub_1C9856998(a1, a2);
  v8 = &v3[OBJC_IVAR____TtC13SoundAnalysis42SNLogMelBasedFeatureExtractorConfiguration_model];
  *v8 = a1;
  *(v8 + 1) = a2;
  *&v3[OBJC_IVAR____TtC13SoundAnalysis42SNLogMelBasedFeatureExtractorConfiguration_stepSizeFrames] = a3;
  v10.receiver = v3;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_init);
}

uint64_t sub_1C98570D4()
{
  v1 = *(v0 + OBJC_IVAR____TtC13SoundAnalysis42SNLogMelBasedFeatureExtractorConfiguration_model + 8);
  ObjectType = swift_getObjectType();
  v3 = (*(v1 + 8))(ObjectType, v1);
  v4 = MEMORY[0x1CCA902B0](v3);

  return sub_1C9A93D98() ^ v4;
}

BOOL sub_1C9857154(uint64_t a1)
{
  sub_1C97A2C7C(a1, v17);
  if (!v18)
  {
    sub_1C97A59D0(v17);
    return 0;
  }

  type metadata accessor for SNSoundPrintFeatureExtractorConfiguration(v2);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v3 = *(v1 + OBJC_IVAR____TtC13SoundAnalysis42SNLogMelBasedFeatureExtractorConfiguration_model + 8);
  ObjectType = swift_getObjectType();
  v5 = (*(v3 + 8))(ObjectType, v3);
  v7 = v6;
  v8 = *&v16[OBJC_IVAR____TtC13SoundAnalysis41SNSoundPrintFeatureExtractorConfiguration_model + 8];
  v9 = swift_getObjectType();
  if (v5 == (*(v8 + 8))(v9, v8) && v7 == v10)
  {
  }

  else
  {
    v12 = sub_1C9A93B18();

    if ((v12 & 1) == 0)
    {

      return 0;
    }
  }

  v14 = *(v1 + OBJC_IVAR____TtC13SoundAnalysis42SNLogMelBasedFeatureExtractorConfiguration_stepSizeFrames);
  v15 = *&v16[OBJC_IVAR____TtC13SoundAnalysis41SNSoundPrintFeatureExtractorConfiguration_stepSizeFrames];

  return v14 == v15;
}

uint64_t sub_1C985740C()
{
  if (qword_1EC3C5D70 != -1)
  {
    sub_1C9859344(&qword_1EC3C5D70);
  }

  v0 = qword_1EC3D3150;
  v1 = byte_1EC3D3158;
  if (byte_1EC3D3158)
  {
    v2 = qword_1EC3D3150;
    sub_1C97A2CEC(&unk_1EC3CA040, &qword_1C9A9C750);
    swift_willThrowTypedImpl();
    v3 = 0;
    result = 0;
    v5 = v0;
    v0 = 0;
  }

  else
  {
    sub_1C97A2CEC(&qword_1EC3C97B8, &unk_1C9ACFA10);
    v6 = swift_allocObject();
    v7 = objc_opt_self();
    sub_1C98591C8(v0, 0);
    *(v6 + 16) = [v7 mapTableWithKeyOptions:0x10000 valueOptions:5];
    sub_1C97A2CEC(&unk_1EC3CBDC0, &qword_1C9AB0EB0);
    sub_1C97AA878();
    swift_allocObject();
    result = sub_1C9A37FC8();
    v5 = sub_1C979B0F4;
    v3 = 1;
  }

  qword_1EC3D3178 = v5;
  qword_1EC3D3180 = 0;
  qword_1EC3D3188 = v3;
  qword_1EC3D3190 = result;
  qword_1EC3D3198 = v0;
  byte_1EC3D31A0 = v1;
  return result;
}

uint64_t sub_1C9857570(uint64_t a1, void *a2)
{
  if (sub_1C9859090())
  {
    if (qword_1EC3C5520 != -1)
    {
      sub_1C98134D8();
      swift_once();
    }

    v4 = sub_1C9A91B58();
    sub_1C97BFF6C(v4, qword_1EC3D3108);
    v5 = sub_1C9A91B38();
    sub_1C9A92FA8();
    v6 = sub_1C9859384();
    if (!os_log_type_enabled(v6, v7))
    {
      v10 = 0;
      goto LABEL_16;
    }

    sub_1C98136E4();
    *swift_slowAlloc() = 0;
    sub_1C9859390(&dword_1C9788000, v8, v9, "SoundAnalysis is defanged; refusing to launch daemon");
    v10 = 0;
LABEL_13:
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
LABEL_16:

    sub_1C9859174();
    swift_allocError();
    *v17 = v10;
    return swift_willThrow();
  }

  result = sub_1C99A7FC0(a2, 0xD000000000000025, 0x80000001C9AD6F60);
  if (!v2 && (result == 2 || (result & 1) == 0))
  {
    if (qword_1EC3C5520 != -1)
    {
      sub_1C98134D8();
      swift_once();
    }

    v12 = sub_1C9A91B58();
    sub_1C97BFF6C(v12, qword_1EC3D3108);
    v5 = sub_1C9A91B38();
    sub_1C9A92FA8();
    v13 = sub_1C9859384();
    if (!os_log_type_enabled(v13, v14))
    {
      v10 = 1;
      goto LABEL_16;
    }

    sub_1C98136E4();
    *swift_slowAlloc() = 0;
    sub_1C9859390(&dword_1C9788000, v15, v16, "inadequate entitlements to host daemon");
    v10 = 1;
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1C9857734(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_1C9859310(sub_1C985774C);
}

uint64_t sub_1C985774C()
{
  sub_1C97AA95C();
  v1 = v0[2];
  v2 = v0[3];
  v4 = objc_allocWithZone(type metadata accessor for SNFileServer(v3));

  v0[4] = sub_1C991DB70(v1, v2);
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  sub_1C97DA950(v5);

  return sub_1C991FEE4();
}

uint64_t sub_1C985780C()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v3 = v2;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;
  *(v3 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C9857AA4, 0, 0);
  }

  else
  {
    v6 = swift_task_alloc();
    *(v3 + 56) = v6;
    *v6 = v4;
    sub_1C97DA950(v6);

    return static AsyncUtils.sleepUntilCancelled()();
  }
}

uint64_t sub_1C9857964()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v1 = *v0;
  sub_1C97AA83C();
  *v2 = v1;

  v3 = sub_1C982F8C0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C9857A48()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v1();
}

uint64_t sub_1C9857AA4()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v1();
}

uint64_t sub_1C9857B00()
{
  sub_1C97AA884();
  *(v0 + 120) = v1;
  *(v0 + 64) = v2;
  *(v0 + 72) = v3;
  sub_1C97A2CEC(&qword_1EC3CA8D0, &qword_1C9AA47B0);
  *(v0 + 80) = swift_task_alloc();
  v4 = sub_1C982F8C0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C9857B94()
{
  v1 = v0[9];
  v2 = *(v0 + 120);
  v3 = v0[8];
  sub_1C9A92988();
  sub_1C9859364();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 32) = v2;
  v5 = sub_1C9859330();
  v0[11] = sub_1C9A1E148(v5, v6, v7, v8, v9);
  sub_1C9859364();
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v3;
  v10[5] = v1;

  v11 = sub_1C9859330();
  v0[12] = sub_1C9A1E148(v11, v12, v13, v14, v10);
  if (qword_1EC3C5DC0 != -1)
  {
    swift_once();
  }

  v15 = qword_1EC3D3240;
  v16 = sub_1C9A92478();
  v0[6] = sub_1C9922C24;
  v0[7] = 0;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1C97C2270;
  v0[5] = &unk_1F4934E28;
  v17 = _Block_copy(v0 + 2);

  v18 = sub_1C9A77A98(v15, v16, v17);
  _Block_release(v18);

  _Block_release(v17);
  sub_1C9859364();
  sub_1C97AA878();
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  sub_1C9859330();
  sub_1C99A9128();
  v0[13] = v20;
  v21 = swift_task_alloc();
  v0[14] = v21;
  *v21 = v0;
  sub_1C97DA950(v21);

  return static AsyncUtils.sleepUntilCancelled()();
}

uint64_t sub_1C9857E08()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v1 = *v0;
  sub_1C97AA83C();
  *v2 = v1;

  v3 = sub_1C982F8C0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C9857EEC()
{
  sub_1C97A2CEC(&unk_1EC3CA040, &qword_1C9A9C750);
  sub_1C9A92A28();
  sub_1C9A92A28();
  sub_1C9A92A28();

  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C9858010()
{
  sub_1C97AA884();
  if (*(v0 + 40) == 1)
  {
    v1 = sub_1C99B4CF8();
    v3 = v2;
    *(v0 + 16) = v2;
    v4 = swift_task_alloc();
    *(v0 + 24) = v4;
    *v4 = v0;
    sub_1C97DA950(v4);

    return sub_1C9857734(v1, v3);
  }

  else
  {
    sub_1C97DA91C();

    return v6();
  }
}

uint64_t sub_1C98580E8()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v3 = v2;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;
  *(v3 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C9858210, 0, 0);
  }

  else
  {

    sub_1C97DA91C();

    return v6();
  }
}

uint64_t sub_1C9858210()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C985826C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1C985828C, 0, 0);
}

uint64_t sub_1C985828C()
{
  sub_1C97AA95C();
  v1 = qword_1EC3C5D70;
  swift_bridgeObjectRetain_n();
  if (v1 != -1)
  {
    sub_1C9859344(&qword_1EC3C5D70);
  }

  v3 = qword_1EC3D3150;
  v0[5] = qword_1EC3D3150;
  v4 = v0[4];
  if (byte_1EC3D3158)
  {
    v5 = v3;

    v0[2] = v3;
    sub_1C97A2CEC(&unk_1EC3CA040, &qword_1C9A9C750);
    swift_willThrowTypedImpl();

    sub_1C97DA91C();

    return v6();
  }

  else
  {
    v8 = v0[3];
    sub_1C9859044(v2);

    v9 = sub_1C9858CF0(v8, v4);
    sub_1C97AA878();
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1C9859028;
    *(v10 + 24) = v3;

    v12 = sub_1C98E5DB4(v9, sub_1C9859088, v10, v11);
    v14 = v13;

    v0[6] = v12;
    v0[7] = v14;
    v15 = swift_task_alloc();
    v0[8] = v15;
    *v15 = v0;
    sub_1C97DA950(v15);

    return static AsyncUtils.sleepUntilCancelled()();
  }
}

uint64_t sub_1C9858470()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v1 = *v0;
  sub_1C97AA83C();
  *v2 = v1;

  v3 = sub_1C982F8C0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C9858554()
{
  sub_1C97AA95C();

  swift_unknownObjectRelease();

  sub_1C97DA91C();

  return v1();
}

uint64_t sub_1C98585D4(uint64_t a1, uint64_t a2, char a3, char a4)
{
  *(v4 + 121) = a4;
  *(v4 + 120) = a3;
  *(v4 + 96) = a1;
  *(v4 + 104) = a2;
  return sub_1C9859310(sub_1C98585F4);
}

uint64_t sub_1C98585F4()
{
  v19 = v0;
  if (qword_1EC3C5520 != -1)
  {
    sub_1C98134D8();
    swift_once();
  }

  v1 = sub_1C9A91B58();
  sub_1C97BFF6C(v1, qword_1EC3D3108);
  v2 = sub_1C9A91B38();
  v3 = sub_1C9A92FC8();
  v4 = sub_1C9859384();
  if (os_log_type_enabled(v4, v5))
  {
    sub_1C98136E4();
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1C9788000, v2, v3, "Checking if it's OK to run...", v6, 2u);
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
  }

  *(v0 + 40) = &type metadata for SystemBootArgsReader;
  *(v0 + 48) = &off_1F49501B8;
  *(v0 + 80) = &unk_1F4937AE0;
  *(v0 + 88) = &off_1F4937AF0;
  sub_1C9857570(v7, (v0 + 56));
  sub_1C97A592C((v0 + 56));
  sub_1C97A592C((v0 + 16));

  v8 = sub_1C9A91B38();
  v9 = sub_1C9A92FC8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 121);
    v11 = *(v0 + 120);
    v13 = *(v0 + 96);
    v12 = *(v0 + 104);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v18 = v15;
    *v14 = 136315650;
    *(v14 + 4) = sub_1C9849140(v13, v12, &v18);
    *(v14 + 12) = 1024;
    *(v14 + 14) = v11;
    *(v14 + 18) = 1024;
    *(v14 + 20) = v10;
    _os_log_impl(&dword_1C9788000, v8, v9, "Running with service name %s; file server? %{BOOL}d; biome donation? %{BOOL}d.", v14, 0x18u);
    sub_1C97A592C(v15);
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
  }

  v16 = swift_task_alloc();
  *(v0 + 112) = v16;
  *v16 = v0;
  v16[1] = sub_1C98588C4;

  return sub_1C9857B00();
}

uint64_t sub_1C98588C4()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v1 = *v0;
  sub_1C97AA83C();
  *v2 = v1;

  sub_1C97DA91C();

  return v3();
}

uint64_t sub_1C98589B8()
{
  sub_1C97AA884();
  if (sub_1C99B4C14())
  {
    if (qword_1EC3C57B8 != -1)
    {
      swift_once();
    }

    v1 = byte_1EC3D3138;
  }

  else
  {
    v1 = 0;
  }

  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_1C97D9C3C;

  return sub_1C98585D4(0xD000000000000018, 0x80000001C9AD6F00, v1, 1);
}

void (*static SNSystemService.audiomxdLaunch()())()
{
  if (qword_1EC3C5520 != -1)
  {
    sub_1C98134D8();
    swift_once();
  }

  v0 = sub_1C9A91B58();
  sub_1C97BFF6C(v0, qword_1EC3D3108);
  v1 = sub_1C9A91B38();
  v2 = sub_1C9A92FC8();
  v3 = sub_1C9859384();
  if (os_log_type_enabled(v3, v4))
  {
    sub_1C98136E4();
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1C9788000, v1, v2, "Not launching SoundAnalysis in audiomxd.", v5, 2u);
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
  }

  return nullsub_1;
}

id SNSystemService.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SNSystemService.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SNSystemService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1C9858CF0(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1C9A92478();

  v4 = [v2 initWithMachServiceName_];

  return v4;
}

_BYTE *storeEnumTagSinglePayload for SNDaemon(_BYTE *result, int a2, int a3)
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

uint64_t sub_1C9858E34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C9858E4C()
{
  sub_1C97AA95C();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  v4 = sub_1C97AA858(v3);
  *v4 = v5;
  v6 = sub_1C985931C(v4);

  return sub_1C9857FF0(v6, v7, v1, v2);
}

uint64_t sub_1C9858EE8()
{
  v1 = v0[3];
  v3 = v0[4];
  v2 = v0[5];
  v4 = swift_task_alloc();
  v5 = sub_1C97AA858(v4);
  *v5 = v6;
  v7 = sub_1C985931C(v5);

  return sub_1C985826C(v7, v8, v1, v3, v2);
}

uint64_t sub_1C9858F94()
{
  sub_1C97AA95C();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  sub_1C985931C(v1);

  return sub_1C982F8AC();
}

unint64_t sub_1C9859044(double a1)
{
  result = qword_1EC3C97A8;
  if (!qword_1EC3C97A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC3C97A8);
  }

  return result;
}

uint64_t sub_1C9859090()
{
  result = sub_1C9A3AD40();
  v1 = result;
  v2 = (result + 40);
  v3 = -*(result + 16);
  v4 = -1;
  while (1)
  {
    v5 = v3 + v4;
    if (v3 + v4 == -1)
    {
LABEL_9:

      return v5 != -1;
    }

    if (++v4 >= *(v1 + 16))
    {
      break;
    }

    if (*(v2 - 1) != 0x6E616665645F6E73 || *v2 != 0xE900000000000067)
    {
      v2 += 4;
      result = sub_1C9A93B18();
      if ((result & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_9;
  }

  __break(1u);
  return result;
}

unint64_t sub_1C9859174()
{
  result = qword_1EC3C97B0;
  if (!qword_1EC3C97B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C97B0);
  }

  return result;
}

id sub_1C98591C8(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

_BYTE *storeEnumTagSinglePayload for SNDaemon.DomainError(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C98592B4()
{
  result = qword_1EC3C97C0;
  if (!qword_1EC3C97C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C97C0);
  }

  return result;
}

uint64_t sub_1C9859344(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1C9859364()
{

  return sub_1C97ACC50(v0, 1, 1, v1);
}

void sub_1C9859390(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 2u);
}

uint64_t sub_1C98593B0()
{
  v2 = sub_1C9A93A98();
  MEMORY[0x1CCA90230](47, 0xE100000000000000);
  v0 = sub_1C9A93A98();
  MEMORY[0x1CCA90230](v0);

  return v2;
}

uint64_t sub_1C985943C()
{
  v0 = sub_1C98593B0();
  sub_1C9A92F08();
  v1 = sub_1C98593B0();
  v3 = v2;
  MEMORY[0x1CCA90230](544175136, 0xE400000000000000);
  MEMORY[0x1CCA90230](v1, v3);

  return v0;
}

uint64_t sub_1C98594CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1C97A2C7C(a2, &v16);
  v13 = v17;
  if (v17)
  {
    sub_1C97A2D34(&v16, v15);
    sub_1C9859DC4(v15, a1, a3, a4, a5, a6, a7, &v18);
    sub_1C97A592C(v15);
    v13 = v18;
  }

  return v13 & 1;
}

uint64_t sub_1C9859574(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, _BYTE *), uint64_t a4, uint64_t a5)
{
  v9 = sub_1C9A93258();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v19[-v12];
  v14 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v16 = &v19[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C97BD360(a2, v19);
  if (swift_dynamicCast())
  {
    sub_1C97ACC50(v13, 0, 1, a5);
    (*(v14 + 32))(v16, v13, a5);
    v17 = a3(a1, v16);
    (*(v14 + 8))(v16, a5);
  }

  else
  {
    sub_1C97ACC50(v13, 1, 1, a5);
    (*(v10 + 8))(v13, v9);
    v17 = 0;
  }

  return v17 & 1;
}

BOOL sub_1C9859778(uint64_t a1, uint64_t a2)
{
  sub_1C985A19C(a1, a2);
  sub_1C985A200();
  if (sub_1C985A1BC() && v26 && (sub_1C985A1EC(), v3 = *(v2 + 48), sub_1C985A1D8(&v26[v4]), v6 = *(v5 + 48), v15 = sub_1C985A21C(v7, v8, v9, v10, v11, v12, v13, v14, v19, v20, v21, v22, v23, v24, v25), v17 = static TimeRange.== infix(_:_:)(v15, v16), v26, v17))
  {
    return v3 == v6;
  }

  else
  {
    return 0;
  }
}

BOOL sub_1C9859820(uint64_t a1, uint64_t a2)
{
  sub_1C985A19C(a1, a2);
  sub_1C97BD360(v3, v14);
  if (sub_1C985A1BC() && v13 && ((v4 = v2 + OBJC_IVAR___SNDetectSignalThresholdRequest_impl, v5 = *(v2 + OBJC_IVAR___SNDetectSignalThresholdRequest_impl), v6 = *(v2 + OBJC_IVAR___SNDetectSignalThresholdRequest_impl + 8), v7 = *(v4 + 16), v8 = *&v13[OBJC_IVAR___SNDetectSignalThresholdRequest_impl], v9 = *&v13[OBJC_IVAR___SNDetectSignalThresholdRequest_impl + 8], v10 = *&v13[OBJC_IVAR___SNDetectSignalThresholdRequest_impl + 16], v13, v5 == v8) ? (v11 = v6 == v9) : (v11 = 0), v11))
  {
    return v7 == v10;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C98598E0(uint64_t a1, uint64_t a2)
{
  sub_1C985A19C(a1, a2);
  sub_1C97BD360(v2, v23);
  if (sub_1C985A1BC() && v22)
  {
    sub_1C985A1EC();
    sub_1C985A1D8(&v22[v3]);
    v12 = sub_1C985A21C(v4, v5, v6, v7, v8, v9, v10, v11, v15, v16, v17, v18, v19, v20, v21);
    static TimeRange.== infix(_:_:)(v12, v13);
  }

  return sub_1C985A23C();
}

uint64_t sub_1C9859978(uint64_t a1, uint64_t a2)
{
  sub_1C985A19C(a1, a2);
  sub_1C97BD360(v3, &v33);
  if (sub_1C985A1BC())
  {
    v4 = v26;
    if (v26)
    {
      v5 = v2 + OBJC_IVAR___SNDetectSoundRequest_impl;
      v6 = *(v2 + OBJC_IVAR___SNDetectSoundRequest_impl);
      v7 = *(v2 + OBJC_IVAR___SNDetectSoundRequest_impl + 8);
      v8 = *(v2 + OBJC_IVAR___SNDetectSoundRequest_impl + 24);
      v9 = *(v2 + OBJC_IVAR___SNDetectSoundRequest_impl + 32);
      v10 = *(v5 + 40);
      v33 = v6;
      v34 = v7;
      v35 = *(v5 + 16);
      v36 = v8;
      v37 = v9;
      v38 = v10;
      v12 = *&v26[OBJC_IVAR___SNDetectSoundRequest_impl + 8];
      v13 = *&v26[OBJC_IVAR___SNDetectSoundRequest_impl + 32];
      v11 = *&v26[OBJC_IVAR___SNDetectSoundRequest_impl];
      v14 = v26[OBJC_IVAR___SNDetectSoundRequest_impl + 16];
      LOBYTE(v29) = v14;
      v31 = *&v26[OBJC_IVAR___SNDetectSoundRequest_impl + 24];
      LOBYTE(v32) = v26[OBJC_IVAR___SNDetectSoundRequest_impl + 40];
      sub_1C97F5D50(v6, v7, v35);

      sub_1C97F5D50(v11, v12, v14);

      v23 = sub_1C985A21C(v15, v16, v17, v18, v19, v20, v21, v22, v11, v12, v29, v31, v13, v32, v33);
      sub_1C97F2FF8(v23, v24);
      sub_1C97A6B9C(v27, v28, v30);

      sub_1C97A6B9C(v33, v34, v35);
    }
  }

  return sub_1C985A23C();
}

uint64_t sub_1C9859AAC(uint64_t a1, uint64_t a2)
{
  sub_1C985A19C(a1, a2);
  sub_1C985A200();
  if (sub_1C985A1BC())
  {
    v3 = v26;
    if (v26)
    {
      v4 = *(v2 + OBJC_IVAR___SNDirectionOfArrivalResult_impl + 16);
      v20[0] = *(v2 + OBJC_IVAR___SNDirectionOfArrivalResult_impl);
      v20[1] = v4;
      v5 = *(v2 + OBJC_IVAR___SNDirectionOfArrivalResult_impl + 48);
      v21 = *(v2 + OBJC_IVAR___SNDirectionOfArrivalResult_impl + 32);
      v22 = v5;
      v16 = v20[0];
      v17 = v4;
      v18 = v21;
      v19 = v5;
      v6 = *&v26[OBJC_IVAR___SNDirectionOfArrivalResult_impl];
      v7 = *&v26[OBJC_IVAR___SNDirectionOfArrivalResult_impl + 16];
      v8 = *&v26[OBJC_IVAR___SNDirectionOfArrivalResult_impl + 48];
      v23[2] = *&v26[OBJC_IVAR___SNDirectionOfArrivalResult_impl + 32];
      v23[3] = v8;
      v23[0] = v6;
      v23[1] = v7;
      v9 = *&v26[OBJC_IVAR___SNDirectionOfArrivalResult_impl + 16];
      v12 = *&v26[OBJC_IVAR___SNDirectionOfArrivalResult_impl];
      v13 = v9;
      v10 = *&v26[OBJC_IVAR___SNDirectionOfArrivalResult_impl + 48];
      v14 = *&v26[OBJC_IVAR___SNDirectionOfArrivalResult_impl + 32];
      v15 = v10;
      sub_1C98049B0(&v16, &v12);
      v24[0] = v12;
      v24[1] = v13;
      v24[2] = v14;
      v24[3] = v15;
      sub_1C97A6844(v20, v25);
      sub_1C97A6844(v23, v25);
      sub_1C9841CB4(v24);
      v25[0] = v16;
      v25[1] = v17;
      v25[2] = v18;
      v25[3] = v19;
      sub_1C9841CB4(v25);
    }
  }

  return sub_1C985A23C();
}

BOOL sub_1C9859BBC(uint64_t a1, uint64_t a2)
{
  sub_1C985A19C(a1, a2);
  sub_1C97BD360(v3, v10);
  if (!sub_1C985A1BC() || !v9)
  {
    return 0;
  }

  v4 = *(v2 + OBJC_IVAR____SNClassification_impl + 16);
  v5 = *&v9[OBJC_IVAR____SNClassification_impl + 16];
  if (*(v2 + OBJC_IVAR____SNClassification_impl) == *&v9[OBJC_IVAR____SNClassification_impl] && *(v2 + OBJC_IVAR____SNClassification_impl + 8) == *&v9[OBJC_IVAR____SNClassification_impl + 8])
  {

    return v4 == v5;
  }

  v7 = sub_1C9A93B18();

  result = 0;
  if (v7)
  {
    return v4 == v5;
  }

  return result;
}

uint64_t sub_1C9859C88(uint64_t a1, uint64_t a2)
{
  sub_1C985A19C(a1, a2);
  sub_1C985A200();
  if (sub_1C985A1BC())
  {
    v3 = v13;
    if (v13)
    {
      v4 = OBJC_IVAR____SNClassificationResult_impl;
      swift_beginAccess();
      memcpy(__dst, (v2 + v4), sizeof(__dst));
      memcpy(v8, (v2 + v4), sizeof(v8));
      v5 = OBJC_IVAR____SNClassificationResult_impl;
      swift_beginAccess();
      memcpy(v10, &v3[v5], sizeof(v10));
      memcpy(__src, &v3[v5], sizeof(__src));
      sub_1C984A444(__dst, v12);
      sub_1C984A444(v10, v12);
      sub_1C992F644(v8, __src);
      memcpy(v11, __src, sizeof(v11));
      sub_1C984A4A0(v11);
      memcpy(v12, v8, sizeof(v12));
      sub_1C984A4A0(v12);
    }
  }

  return sub_1C985A23C();
}

uint64_t sub_1C9859DC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _BYTE *a8@<X8>)
{
  v10[2] = a5;
  v10[3] = a6;
  v10[4] = a7;
  v10[5] = a3;
  v10[6] = a4;
  result = sub_1C9859574(a2, a1, sub_1C985A17C, v10, a5);
  *a8 = result & 1;
  return result;
}

uint64_t sub_1C9859E30(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = a1 + OBJC_IVAR___SNNullRequest_impl;
  v4 = a2 + OBJC_IVAR___SNNullRequest_impl;
  v6 = *(a1 + OBJC_IVAR___SNNullRequest_impl) == *(a2 + OBJC_IVAR___SNNullRequest_impl) && *(a1 + OBJC_IVAR___SNNullRequest_impl + 8) == *(a2 + OBJC_IVAR___SNNullRequest_impl + 8) && *(a1 + OBJC_IVAR___SNNullRequest_impl + 16) == *(a2 + OBJC_IVAR___SNNullRequest_impl + 16);
  if (v6 && ((*(v3 + 24) ^ *(v4 + 24)) & 1) == 0)
  {
    v2 = *(v4 + 25) ^ *(v3 + 25) ^ 1;
  }

  return v2 & 1;
}

BOOL sub_1C9859E98(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR____SNTimeDurationConstraint_impl + 8);
  v3 = *(a1 + OBJC_IVAR____SNTimeDurationConstraint_impl + 16);
  v4 = *(a1 + OBJC_IVAR____SNTimeDurationConstraint_impl + 24);
  v5 = *(a1 + OBJC_IVAR____SNTimeDurationConstraint_impl + 32);
  v6 = *(a1 + OBJC_IVAR____SNTimeDurationConstraint_impl + 40);
  v7 = *(a1 + OBJC_IVAR____SNTimeDurationConstraint_impl + 48);
  v27 = *(a1 + OBJC_IVAR____SNTimeDurationConstraint_impl);
  v28 = v2;
  v29 = v3;
  v30 = v4;
  v31 = v5;
  v32 = v6;
  v33 = v7;
  v8 = *(a2 + OBJC_IVAR____SNTimeDurationConstraint_impl + 8);
  v9 = *(a2 + OBJC_IVAR____SNTimeDurationConstraint_impl + 16);
  v10 = *(a2 + OBJC_IVAR____SNTimeDurationConstraint_impl + 24);
  v11 = *(a2 + OBJC_IVAR____SNTimeDurationConstraint_impl + 32);
  v12 = *(a2 + OBJC_IVAR____SNTimeDurationConstraint_impl + 40);
  v13 = *(a2 + OBJC_IVAR____SNTimeDurationConstraint_impl + 48);
  v20 = *(a2 + OBJC_IVAR____SNTimeDurationConstraint_impl);
  v21 = v8;
  v22 = v9;
  v23 = v10;
  v24 = v11;
  v25 = v12;
  v26 = v13;
  sub_1C97C6634(v27, v2, v3, v4, v5, v6, v7);
  v14 = sub_1C985A228();
  sub_1C97C6634(v14, v15, v16, v17, v11, v12, v13);
  v18 = sub_1C97C4FBC(&v27, &v20);
  sub_1C97A6390(v20, v21, v22, v23, v24, v25, v26);
  sub_1C97A6390(v27, v28, v29, v30, v31, v32, v33);
  return v18;
}

uint64_t sub_1C9859F80()
{
  sub_1C985A1EC();
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  sub_1C985A1D8((v4 + v5));
  v7 = *(v6 + 48);
  v8 = *(v6 + 56);
  v9 = *(v6 + 64);
  v18 = sub_1C985A21C(v10, v11, v12, v13, v14, v15, v16, v17, v23, v24, v25, v26, v27, v28, v29);
  v20 = static TimeRange.== infix(_:_:)(v18, v19);
  result = 0;
  if (v20 && v1 == v7)
  {
    if (v2 == v8 && v3 == v9)
    {
      return 1;
    }

    else
    {
      sub_1C985A228();

      return sub_1C9A93B18();
    }
  }

  return result;
}

uint64_t sub_1C985A03C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(a6 - 8);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v21 - v15;
  v17(v14);
  a3(a2);
  v18 = sub_1C9A92438();
  v19 = *(v10 + 8);
  v19(v13, a6);
  v19(v16, a6);
  return v18 & 1;
}

uint64_t sub_1C985A19C(uint64_t a1, uint64_t a2)
{

  return swift_getObjectType();
}

uint64_t sub_1C985A1BC()
{

  return swift_dynamicCast();
}

uint64_t sub_1C985A200()
{

  return sub_1C97BD360(v0, v1 - 80);
}

uint64_t sub_1C985A248(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001C9AD6FD0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C9A93B18();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C985A2E4(void *a1, uint64_t a2)
{
  v3 = sub_1C97A2CEC(&qword_1EC3C9800, &qword_1C9AA7708);
  sub_1C97AE9C8();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - v7;
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C985B2BC();
  sub_1C9A93DD8();
  sub_1C9A93A08();
  return (*(v5 + 8))(v8, v3);
}

void *sub_1C985A408(void *a1)
{
  v3 = sub_1C97A2CEC(&qword_1EC3C97F0, &qword_1C9AA7700);
  sub_1C97AE9C8();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - v7;
  v9 = sub_1C97A5A8C(a1, a1[3]);
  sub_1C985B2BC();
  sub_1C9A93DB8();
  if (!v1)
  {
    v9 = sub_1C9A938E8();
    (*(v5 + 8))(v8, v3);
  }

  sub_1C97A592C(a1);
  return v9;
}

uint64_t sub_1C985A554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C985A248(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C985A580(uint64_t a1)
{
  v2 = sub_1C985B2BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C985A5BC(uint64_t a1)
{
  v2 = sub_1C985B2BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1C985A5F8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1C985A408(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1C985A6AC(double a1)
{
  v2 = *(v1 + OBJC_IVAR___SNExceptionRequest_impl);
  type metadata accessor for SNExceptionDetector(a1);
  sub_1C97AA878();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = v2;
  return result;
}

id sub_1C985A6F4(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR___SNExceptionRequest_impl] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_1C985A76C()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR___SNExceptionRequest_impl] = 0;
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_init);
}

void *SNExceptionRequest.copy(with:)@<X0>(void *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  v4 = *(v1 + OBJC_IVAR___SNExceptionRequest_impl);
  v5 = objc_allocWithZone(ObjectType);
  *&v5[OBJC_IVAR___SNExceptionRequest_impl] = v4;
  v7.receiver = v5;
  v7.super_class = ObjectType;
  result = objc_msgSendSuper2(&v7, sel_init);
  a1[3] = ObjectType;
  *a1 = result;
  return result;
}

uint64_t SNExceptionRequest.hash.getter()
{
  v1 = *(v0 + OBJC_IVAR___SNExceptionRequest_impl);
  sub_1C9A93CC8();
  MEMORY[0x1CCA91980](v1);
  return sub_1C9A93D18();
}

BOOL SNExceptionRequest.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_1C97A2C7C(a1, &v10);
  if (!v11)
  {
    return 0;
  }

  sub_1C97A2D34(&v10, v9);
  sub_1C97BD360(v9, v8);
  if (swift_dynamicCast())
  {
    v3 = *(v1 + OBJC_IVAR___SNExceptionRequest_impl);
    v4 = *&v7[OBJC_IVAR___SNExceptionRequest_impl];

    v5 = v3 == v4;
  }

  else
  {
    v5 = 0;
  }

  sub_1C97A592C(v9);
  return v5;
}

id SNExceptionRequest.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_1C97A1950(1819307369, 0xE400000000000000);
  v4 = objc_allocWithZone(ObjectType);
  *&v4[OBJC_IVAR___SNExceptionRequest_impl] = v3;
  v8.receiver = v4;
  v8.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v8, sel_init);

  v6 = swift_getObjectType();
  sub_1C9802234(v6);
  return v5;
}

id SNExceptionRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

_UNKNOWN **sub_1C985ACCC(double a1)
{
  result = sub_1C985A6AC(a1);
  if (v1)
  {
    return &off_1F4935040;
  }

  return result;
}

id sub_1C985ACF8(uint64_t a1, double a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_self();
  *&v20 = 0;
  v5 = sub_1C9A761F8(v3, &v20, v4);
  if (!v5)
  {
    v14 = v20;
    sub_1C9A913C8();

    swift_willThrow();
    return v5;
  }

  v6 = v20;
  v7 = sub_1C9A92478();
  *&v20 = 0;
  v8 = sub_1C9A72FAC(v3, v5, v7, &v20);

  if (!v8)
  {
    v15 = v20;
    sub_1C9A913C8();

    swift_willThrow();
LABEL_10:

    return v5;
  }

  v9 = v20;
  v10 = sub_1C9A92478();
  *&v20 = 0;
  v11 = sub_1C9A7374C(v3, v5, v10, a1, &v20);

  if (!v11)
  {
    v16 = v20;
    sub_1C9A913C8();

    swift_willThrow();
    goto LABEL_10;
  }

  v12 = v20;
  sub_1C9A76554(0x3E80u, 512, 1, &v20);
  v19 = 0;
  if ((sub_1C9A762F8(v3, v5, v8, v11, 0, 0, &v20, &v19) & 1) == 0)
  {
    v17 = v19;
    sub_1C9A913C8();

    swift_willThrow();
    goto LABEL_10;
  }

  v13 = v19;
  sub_1C9A695C8(v5, 0x2000, 16000, 1);
  sub_1C9A69B8C(v5);

  return v5;
}

id sub_1C985AF60()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1;
  }

  sub_1C985B24C();
  swift_allocError();
  return swift_willThrow();
}

void sub_1C985AFBC()
{
  v2 = *v0;
  sub_1C97AA878();
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

id sub_1C985B070@<X0>(uint64_t a1@<X0>, void *a2@<X8>, double a3@<D0>)
{
  result = sub_1C985ACF8(*(a1 + 24), a3);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

void sub_1C985B0A0()
{
  v1 = sub_1C985AF60();
  if (!v0)
  {
    v2 = v1;
    v3 = sub_1C9A6BD8C(v1, 0);

    if (!v3)
    {
      __break(1u);
    }
  }
}

uint64_t sub_1C985B0FC()
{
  sub_1C97AA878();

  return swift_deallocClassInstance();
}

unint64_t sub_1C985B1F8()
{
  result = qword_1EC3C97E0;
  if (!qword_1EC3C97E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C97E0);
  }

  return result;
}

unint64_t sub_1C985B24C()
{
  result = qword_1EC3C97E8;
  if (!qword_1EC3C97E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C97E8);
  }

  return result;
}

unint64_t sub_1C985B2BC()
{
  result = qword_1EC3C97F8;
  if (!qword_1EC3C97F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C97F8);
  }

  return result;
}

_BYTE *sub_1C985B320(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C985B3D0()
{
  result = qword_1EC3C9808;
  if (!qword_1EC3C9808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9808);
  }

  return result;
}

unint64_t sub_1C985B428()
{
  result = qword_1EC3C9810;
  if (!qword_1EC3C9810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9810);
  }

  return result;
}

unint64_t sub_1C985B480()
{
  result = qword_1EC3C9818;
  if (!qword_1EC3C9818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9818);
  }

  return result;
}

unint64_t sub_1C985B4D8()
{
  result = qword_1EC3C9820;
  if (!qword_1EC3C9820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9820);
  }

  return result;
}

uint64_t sub_1C985B530(uint64_t a1)
{
  v3 = sub_1C97BDEE0();
  if (v3)
  {
    v4 = v3;
    sub_1C97C4F68();
    if ((a1 & 0xC000000000000001) != 0)
    {
      v1 = MEMORY[0x1CCA912B0](0, a1);
    }

    else
    {
      v1 = *(a1 + 32);
    }

    if (v4 != 1)
    {
      sub_1C97C4F68();
      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1CCA912B0](1, a1);
        swift_unknownObjectRelease();
      }

      sub_1C97E78C8();
      sub_1C97A7A80(&type metadata for CollectionUtils.DomainError);
      sub_1C985DB2C(v5, 2);
      swift_willThrow();
    }
  }

  else
  {
    sub_1C97E78C8();
    sub_1C97A7A80(&type metadata for CollectionUtils.DomainError);
    sub_1C985DB2C(v6, 1);
    swift_willThrow();
  }

  return v1;
}

uint64_t sub_1C985B634(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 == 1)
  {
    return *(a1 + 32);
  }

  sub_1C97E78C8();
  v2 = sub_1C97A7A80(&type metadata for CollectionUtils.DomainError);
  return sub_1C97C2CF8(v2, v3);
}

uint64_t sub_1C985B694@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1C97A2CEC(&qword_1EC3C7FE0, &unk_1C9AA1890);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = sub_1C9A91558();
    v9 = *(v8 - 8);
    v10 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v11 = *(v9 + 16);
    v11(a2, v10, v8);
    if (v7 == 1)
    {
      sub_1C97ACC50(v6, 1, 1, v8);
      return sub_1C985DAA0(v6, &qword_1EC3C7FE0, &unk_1C9AA1890);
    }

    else
    {
      v11(v6, v10 + *(v9 + 72), v8);
      sub_1C97ACC50(v6, 0, 1, v8);
      sub_1C985DAA0(v6, &qword_1EC3C7FE0, &unk_1C9AA1890);
      sub_1C97E78C8();
      swift_allocError();
      *v14 = 2;
      swift_willThrow();
      return (*(v9 + 8))(a2, v8);
    }
  }

  else
  {
    sub_1C97E78C8();
    swift_allocError();
    *v13 = 1;
    return swift_willThrow();
  }
}

uint64_t sub_1C985B8B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) == 1)
  {
    v4 = *(a1 + 56);
    v3 = *(a1 + 64);
    v5 = *(a1 + 48);
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8 = *(a1 + 72);

    result = sub_1C985DA88(v4, v3, v8);
    *a2 = v7;
    *(a2 + 8) = v6;
    *(a2 + 16) = v5;
    *(a2 + 24) = v4;
    *(a2 + 32) = v3;
    *(a2 + 40) = v8;
  }

  else
  {
    sub_1C97E78C8();
    v10 = sub_1C97A7A80(&type metadata for CollectionUtils.DomainError);
    return sub_1C97C2CF8(v10, v11);
  }

  return result;
}

uint64_t sub_1C985B960(uint64_t a1)
{
  v2 = 1 << *(a1 + 32);
  v3 = *(a1 + 56);
  v4 = -1;
  if (v2 < 64)
  {
    v4 = ~(-1 << v2);
  }

  v5 = v4 & v3;
  if ((v4 & v3) == 0)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v6 = v9 + 1;
      if (v9 + 1 >= (v2 + 63) >> 6)
      {
        goto LABEL_13;
      }

      v10 = *(a1 + 64 + 8 * v9);
      v8 += 64;
      ++v9;
      if (v10)
      {
        v7 = __clz(__rbit64(v10)) + v8;
        if (((v10 - 1) & v10) != 0)
        {
          goto LABEL_13;
        }

        goto LABEL_10;
      }
    }
  }

  v6 = 0;
  v7 = __clz(__rbit64(v5));
  if (((v5 - 1) & v5) != 0)
  {
LABEL_13:
    sub_1C97E78C8();
    v15 = sub_1C97A7A80(&type metadata for CollectionUtils.DomainError);
    sub_1C97C2CF8(v15, v16);
    return v1;
  }

LABEL_10:
  v1 = *(*(a1 + 48) + 16 * v7);
  v11 = (v2 + 63) >> 6;
  v12 = v6 + 1;
  v13 = (a1 + 8 * v6 + 64);
  while (v12 < v11)
  {
    v14 = *v13++;
    ++v12;
    if (v14)
    {
      goto LABEL_13;
    }
  }

  return v1;
}

uint64_t sub_1C985BA7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    v2 = 1;
LABEL_6:
    sub_1C97E78C8();
    v3 = sub_1C97A7A80(&type metadata for CollectionUtils.DomainError);
    sub_1C97C2CF8(v3, v4);
    return v2;
  }

  if (v1 != 1)
  {
    v2 = 2;
    goto LABEL_6;
  }

  v2 = *(a1 + 32);

  return v2;
}

uint64_t sub_1C985BAEC(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_1C9A93548();
  sub_1C98784BC(a3, &v8);
  sub_1C97C90D4(v7);
  if (v9)
  {
    sub_1C97A2CEC(&qword_1EC3C7BF8, &unk_1C9AB03A0);
    if (swift_dynamicCast())
    {
      return a1;
    }
  }

  else
  {
    sub_1C985DAA0(&v8, &unk_1EC3C5E60, qword_1C9A9AE10);
  }

  sub_1C985D7BC();
  sub_1C97A7A80(&type metadata for SNACITestAssets.Err);
  *v5 = 0;
  return swift_willThrow();
}

uint64_t sub_1C985BBE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_1C985BAEC(a1, a2, a5);
  if (!v5)
  {
    v9 = result;
    *&v12 = a3;
    *(&v12 + 1) = a4;

    sub_1C9A93548();
    sub_1C98784BC(v9, &v12);

    sub_1C97C90D4(v13);
    sub_1C97A2CEC(&unk_1EC3C5E60, qword_1C9A9AE10);
    if (swift_dynamicCast())
    {
      return v11;
    }

    else
    {
      sub_1C985D7BC();
      swift_allocError();
      *v10 = 1;
      return swift_willThrow();
    }
  }

  return result;
}

void sub_1C985BCE0()
{
  v13 = *MEMORY[0x1E69E9840];
  if (sub_1C9A913E8())
  {
    v12 = 0;
    v0 = objc_opt_self();
    v1 = [v0 defaultManager];
    sub_1C9A91508();
    v2 = sub_1C9A92478();

    v3 = [v1 fileExistsAtPath:v2 isDirectory:&v12];

    if (!v3)
    {
      v6 = [v0 defaultManager];
      v7 = sub_1C9A91488();
      v11 = 0;
      v8 = [v6 createDirectoryAtURL:v7 withIntermediateDirectories:1 attributes:0 error:&v11];

      if (v8)
      {
        v9 = v11;
        return;
      }

      v10 = v11;
      sub_1C9A913C8();

      goto LABEL_7;
    }

    if (v12)
    {
      return;
    }

    sub_1C985D7BC();
    sub_1C97A7A80(&type metadata for SNACITestAssets.Err);
    v5 = 3;
  }

  else
  {
    sub_1C985D7BC();
    sub_1C97A7A80(&type metadata for SNACITestAssets.Err);
    v5 = 2;
  }

  sub_1C985DB2C(v4, v5);
LABEL_7:
  swift_willThrow();
}

uint64_t sub_1C985BE98(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t), char *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v91 = a7;
  v92 = a3;
  v94 = a5;
  v95 = a6;
  v93 = a4;
  v90 = a2;
  v98 = *MEMORY[0x1E69E9840];
  v15 = sub_1C9A91558();
  sub_1C97AE9C8();
  v17 = v16;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v84 - v22;
  sub_1C985DAF4();
  result = sub_1C985BBE0(v24, v25, v26, 0xE600000000000000, a12);
  if (!v12)
  {
    v85 = a1;
    v86 = v21;
    v84 = result;
    v88 = v17;
    v89 = v28;
    v87 = v15;
    type metadata accessor for SNFileUtils(v29);
    sub_1C9A457AC(a10, 0x6966697265766E75, 0xEB000000002D6465);
    sub_1C99A4AF8(v30);
    sub_1C985DAF4();
    v96 = sub_1C985BBE0(v31, v32, v33, 0xE600000000000000, a12);
    v97 = v34;

    sub_1C985DB60();
    MEMORY[0x1CCA90230](a8, a9);

    v35 = v96;
    v36 = v97;
    sub_1C97A2CEC(&qword_1EC3C6CA0, &qword_1C9A9D660);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C9A9EDD0;
    *(inited + 32) = v35;
    *(inited + 40) = v36;
    sub_1C9988C9C(v85, v90, v92, inited, a11, v93, v94, v95, v91, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94);

    v39 = objc_opt_self();
    v40 = [v39 defaultManager];
    v41 = sub_1C9A91488();
    v42 = sub_1C9A91488();
    v96 = 0;
    v43 = [v40 moveItemAtURL:v41 toURL:v42 error:&v96];

    if (v43)
    {
      v95 = a10;
      v44 = v88 + 8;
      v45 = *(v88 + 8);
      v46 = v96;
      v45(v86, v87);
      v47 = objc_autoreleasePoolPush();
      v51 = sub_1C9A915A8();
      v53 = v52;
      v93 = v45;
      v94 = v23;
      v88 = v44;
      sub_1C9987FE4();
      sub_1C97A5978(v51, v53);
      objc_autoreleasePoolPop(v47);
      v54 = sub_1C985511C();
      v56 = sub_1C9987DF0(v54, v55);
      v58 = v57;
      v59 = sub_1C985511C();
      sub_1C97A5978(v59, v60);
      v61 = v84;
      v62 = v89;
      v63 = v56 == v84 && v58 == v89;
      if (v63 || (sub_1C9A93B18() & 1) != 0)
      {

        v65 = [v39 defaultManager];
        v66 = v94;
        v67 = sub_1C9A91488();
        v68 = sub_1C9A91488();
        v96 = 0;
        v69 = [v65 moveItemAtURL:v67 toURL:v68 error:&v96];

        v70 = v87;
        v71 = v93;
        if (v69)
        {
          v72 = v96;
        }

        else
        {
          v74 = v96;
          sub_1C9A913C8();

          swift_willThrow();
        }

        sub_1C985C510(v66, v73);
        return (v71)(v66, v70);
      }

      else
      {
        type metadata accessor for SNError(v64);
        v96 = 0;
        v97 = 0xE000000000000000;
        sub_1C9A935B8();
        MEMORY[0x1CCA90230](0xD00000000000002BLL, 0x80000001C9AD7050);
        MEMORY[0x1CCA90230](v61, v62);

        MEMORY[0x1CCA90230](0x20746F6720, 0xE500000000000000);
        MEMORY[0x1CCA90230](v56, v58);

        v75 = v97;
        v76 = sub_1C97FB260();
        sub_1C9929478(v76, v77, v78, v79, v80, v75);

        swift_willThrow();
        v81 = v94;
        sub_1C985C510(v94, v82);
        return (v93)(v81, v87);
      }
    }

    else
    {
      v48 = v96;

      sub_1C9A913C8();

      swift_willThrow();
      v49 = v87;
      v50 = v88;
      (*(v88 + 8))(v86, v87);
      sub_1C985C510(v23, v38);
      return (*(v50 + 8))(v23, v49);
    }
  }

  return result;
}

void static SNACITestAssets.uploadTestAsset(s3Endpoint:bucket:aciID:aciSecretKey:testAsset:url:timeoutTime:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v16 = objc_autoreleasePoolPush();
  v17 = sub_1C9A915A8();
  if (v11)
  {
    objc_autoreleasePoolPop(v16);
  }

  else
  {
    v19 = v17;
    v20 = v18;
    v29 = a4;
    v30 = a5;
    v21 = sub_1C9987FE4();
    v23 = v22;
    sub_1C97A5978(v19, v20);
    objc_autoreleasePoolPop(v16);
    v24 = sub_1C9987DF0(v21, v23);
    v26 = v25;
    sub_1C97A5978(v21, v23);

    sub_1C985DB60();
    MEMORY[0x1CCA90230](a8, a9);

    sub_1C97A2CEC(&qword_1EC3C6CA0, &qword_1C9A9D660);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C9A9EDD0;
    *(inited + 32) = v24;
    *(inited + 40) = v26;
    sub_1C9984D08(a10, a1, a2, a3, inited, a11, v29, v30, a6, a7, v28, a9, v29, v30, a11, a2, a7, a6, v34, v35, v36, v37);
    swift_setDeallocating();
    sub_1C985D728();
  }
}

uint64_t static SNACITestAssets.url(s3Endpoint:bucket:aciID:aciSecretKey:timeoutSeconds:testAsset:testAssetsDatabase:assetDirectoryURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(char *, uint64_t)@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a11, uint64_t a12)
{
  sub_1C9A91408();
  sub_1C97AE9C8();
  v46 = v15;
  v47 = v14;
  MEMORY[0x1EEE9AC00](v14);
  sub_1C97AEAD8();
  v18 = v17 - v16;
  v19 = sub_1C9A916E8();
  sub_1C97AE9C8();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  sub_1C97AEAD8();
  v25 = v24 - v23;
  sub_1C9A91688();
  sub_1C985DAF4();
  sub_1C985BBE0(a8, a11, v26, 0xE600000000000000, a12);
  if (v12)
  {
    return (*(v21 + 8))(v25, v19);
  }

  v43 = v19;

  sub_1C985DB60();
  v28 = a8;
  MEMORY[0x1CCA90230](a8, a11);

  (*(v46 + 104))(v18, *MEMORY[0x1E6968F70], v47);
  sub_1C98449A8();
  sub_1C9A91548();
  (*(v46 + 8))(v18, v47);

  if (sub_1C9A913E8())
  {
    v30 = [objc_opt_self() defaultManager];
    sub_1C9A91508();
    v31 = sub_1C9A92478();

    v32 = [v30 fileExistsAtPath_];

    if (v32)
    {
      v34 = v21;
      v33 = v43;
    }

    else
    {
      sub_1C985BCE0();
      v34 = v21;
      sub_1C985BE98(a1, a2, a3, a4, a5, a6, a7, v28, a11, a9, v25, a12);
      v33 = v43;
    }

    return (*(v34 + 8))(v25, v33);
  }

  else
  {
    type metadata accessor for SNError(v29);
    sub_1C9A935B8();

    sub_1C985DB14();
    v54 = v35;
    v36 = sub_1C9A91558();
    sub_1C985D764();
    v37 = sub_1C9A93A98();
    MEMORY[0x1CCA90230](v37);

    v38 = sub_1C97FB260();
    sub_1C9929478(v38, v39, v40, v41, v42, v54);

    swift_willThrow();
    (*(*(v36 - 8) + 8))(a9, v36);
    return (*(v21 + 8))(v25, v43);
  }
}

uint64_t static SNACITestAssets.soleItemInTar(s3Endpoint:bucket:aciID:aciSecretKey:timeoutSeconds:assetName:testAssetsDatabase:assetDirectoryURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(char *, uint64_t)@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v120 = a7;
  v118 = a5;
  v119 = a6;
  v116 = a3;
  v117 = a4;
  v114 = a1;
  v115 = a2;
  v106 = a9;
  v125 = *MEMORY[0x1E69E9840];
  sub_1C9A91408();
  sub_1C97AE9C8();
  v109 = v15;
  v110 = v14;
  MEMORY[0x1EEE9AC00](v14);
  sub_1C97AEAD8();
  v108 = v17 - v16;
  v122 = sub_1C9A916E8();
  sub_1C97AE9C8();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  sub_1C97AEAD8();
  v23 = v22 - v21;
  v24 = sub_1C9A91558();
  sub_1C97AE9C8();
  v113 = v25;
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v99 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v27);
  v107 = &v99 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v34 = &v99 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v99 - v35;
  sub_1C9A91688();
  sub_1C985DAF4();
  v111 = a11;
  v112 = a8;
  v37 = v121;
  v39 = sub_1C985BBE0(a8, a11, v38, 0xE600000000000000, a12);
  if (v37)
  {
    return (*(v19 + 8))(v23, v122);
  }

  v121 = a12;
  v103 = v23;
  v104 = v19;
  v100 = v34;
  v101 = 0;
  v102 = v29;
  v99 = v36;
  v105 = v24;
  v123 = v39;
  v124 = v40;

  sub_1C985DB60();
  v42 = v111;
  v43 = v112;
  MEMORY[0x1CCA90230](v112, v111);

  v45 = v108;
  v44 = v109;
  v46 = v110;
  (*(v109 + 104))(v108, *MEMORY[0x1E6968F70], v110);
  sub_1C98449A8();
  v47 = v107;
  sub_1C9A91548();
  (*(v44 + 8))(v45, v46);

  if ((sub_1C9A913E8() & 1) == 0)
  {
    type metadata accessor for SNError(v48);
    v123 = 0;
    v124 = 0xE000000000000000;
    sub_1C9A935B8();

    sub_1C985DB14();
    v123 = v72;
    v124 = v71;
    sub_1C985D764();
    v73 = v105;
    v74 = sub_1C9A93A98();
    MEMORY[0x1CCA90230](v74);

    v75 = v124;
    v76 = sub_1C97FB260();
    sub_1C9929478(v76, v77, v78, v79, v80, v75);

    swift_willThrow();
    (*(v113 + 8))(v47, v73);
    return (*(v104 + 8))(v103, v122);
  }

  v49 = objc_opt_self();
  v50 = [v49 defaultManager];
  sub_1C9A91508();
  v51 = sub_1C9A92478();

  v52 = [v50 fileExistsAtPath_];

  v53 = v122;
  if (v52)
  {
    v110 = v49;
    v54 = v113;
    v55 = v100;
    sub_1C985DB4C();
  }

  else
  {
    v81 = v101;
    sub_1C985BCE0();
    v54 = v113;
    sub_1C985DB4C();
    if (v81)
    {
      (*(v54 + 8))(v47, v105);
      return (*(a13 + 8))(v51, v53);
    }

    v110 = v49;
    sub_1C985BE98(v114, v115, v116, v117, v118, v119, v120, v43, v42, v47, v51, v121);
    v101 = 0;
    v55 = v100;
  }

  (*(a13 + 8))(v51, v53);
  v56 = v105;
  v122 = *(v54 + 32);
  v122(v55, v47, v105);
  v57 = v55;
  sub_1C9A914B8();
  v58 = v110;
  v59 = [v110 defaultManager];
  sub_1C9A91518();
  v60 = sub_1C9A92478();

  v61 = [v59 fileExistsAtPath_];

  if (v61)
  {
    v62 = *(v54 + 8);
    v62(v57, v56);
    v63 = v106;
    goto LABEL_8;
  }

  v82 = [v58 defaultManager];
  v83 = sub_1C9A91488();
  v123 = 0;
  v84 = [v82 createDirectoryAtURL:v83 withIntermediateDirectories:0 attributes:0 error:&v123];

  v63 = v106;
  if (!v84)
  {
    v94 = v123;
    sub_1C9A913C8();

    swift_willThrow();
    goto LABEL_17;
  }

  v85 = v123;
  v86 = v100;
  v87 = sub_1C9A91508();
  v89 = v88;
  v90 = sub_1C9A91518();
  v91 = v101;
  sub_1C9929ED0(v87, v89, v90, v92);
  if (v91)
  {

    v54 = v113;
LABEL_17:
    v95 = v102;
    sub_1C99A4AF8(v93);
    swift_willThrow();
    v98 = *(v54 + 8);
    v98(v95, v56);
    return (v98)(v100, v56);
  }

  v101 = 0;
  v62 = *(v113 + 8);
  v62(v86, v56);

LABEL_8:
  v122(v99, v102, v56);
  v64 = [v110 defaultManager];
  v65 = sub_1C9A91488();
  v123 = 0;
  v66 = [v64 contentsOfDirectoryAtURL:v65 includingPropertiesForKeys:0 options:0 error:&v123];

  v67 = v123;
  if (v66)
  {
    v68 = sub_1C9A92798();
    v69 = v67;

    sub_1C985B694(v68, v63);
    v70 = sub_1C985511C();
    (v62)(v70);
  }

  else
  {
    v96 = v123;
    sub_1C9A913C8();

    swift_willThrow();
    v97 = sub_1C985511C();
    return (v62)(v97);
  }
}

uint64_t sub_1C985D6E8()
{
  swift_arrayDestroy();
  sub_1C985DB04();

  return swift_deallocClassInstance();
}

uint64_t sub_1C985D728()
{
  swift_arrayDestroy();
  sub_1C985DB04();

  return swift_deallocClassInstance();
}

unint64_t sub_1C985D764()
{
  result = qword_1EC3C9830;
  if (!qword_1EC3C9830)
  {
    sub_1C9A91558();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9830);
  }

  return result;
}

unint64_t sub_1C985D7BC()
{
  result = qword_1EC3C9838;
  if (!qword_1EC3C9838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9838);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SNACITestAssets(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for SNACITestAssets.Err(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C985D99C()
{
  result = qword_1EC3C9840;
  if (!qword_1EC3C9840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9840);
  }

  return result;
}

uint64_t sub_1C985DA04(uint64_t *a1, uint64_t *a2)
{
  sub_1C97A2CEC(a1, a2);
  swift_arrayDestroy();
  sub_1C985DB04();

  return swift_deallocClassInstance();
}

uint64_t sub_1C985DA4C()
{
  swift_arrayDestroy();
  sub_1C985DB04();

  return swift_deallocClassInstance();
}

uint64_t sub_1C985DA88(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xFDu)
  {
  }

  return result;
}

uint64_t sub_1C985DAA0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_1C97A2CEC(a2, a3);
  sub_1C985DB38();
  (*(v4 + 8))(a1);
  return a1;
}

void sub_1C985DB60()
{

  JUMPOUT(0x1CCA90230);
}

uint64_t sub_1C985DB78(void (*a1)(uint64_t), uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t a6, uint64_t a7)
{
  if (a1)
  {
    a1(a7);
  }

  result = a5(a7, a2);
  if (a3)
  {
    return a3(a7);
  }

  return result;
}

uint64_t sub_1C985DC14(uint64_t a1)
{
  result = sub_1C9A93258();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C985DC84(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = v6 - 1;
  if (v6)
  {
    v8 = *(v5 + 64);
  }

  else
  {
    v7 = 0;
    v8 = *(v5 + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v7;
  if (a2 > v7)
  {
    v10 = ((v8 + *(v5 + 80)) & ~*(v5 + 80)) + v8;
    v11 = 8 * v10;
    if (v10 > 3)
    {
      goto LABEL_7;
    }

    v13 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v13))
    {
      v12 = *(a1 + v10);
      if (v12)
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v13 <= 0xFF)
      {
        if (v13 < 2)
        {
          goto LABEL_22;
        }

LABEL_7:
        v12 = *(a1 + v10);
        if (!*(a1 + v10))
        {
          goto LABEL_22;
        }

LABEL_14:
        v14 = (v12 - 1) << v11;
        if (v10 > 3)
        {
          v14 = 0;
        }

        if (v10)
        {
          if (v10 > 3)
          {
            LODWORD(v10) = 4;
          }

          switch(v10)
          {
            case 2:
              LODWORD(v10) = *a1;
              break;
            case 3:
              LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
              break;
            case 4:
              LODWORD(v10) = *a1;
              break;
            default:
              LODWORD(v10) = *a1;
              break;
          }
        }

        return v7 + (v10 | v14) + 1;
      }

      v12 = *(a1 + v10);
      if (*(a1 + v10))
      {
        goto LABEL_14;
      }
    }
  }

LABEL_22:
  if (v6 < 2)
  {
    return 0;
  }

  v16 = sub_1C97ABF20(a1, v6, v4);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

void sub_1C985DE0C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = v9 - 1;
  if (!v9)
  {
    v10 = 0;
  }

  v11 = *(*(v7 - 8) + 64);
  if (!v9)
  {
    ++v11;
  }

  v12 = ((v11 + *(v8 + 80)) & ~*(v8 + 80)) + v11;
  v13 = 8 * v12;
  v14 = a3 >= v10;
  v15 = a3 - v10;
  if (v15 != 0 && v14)
  {
    if (v12 <= 3)
    {
      v16 = ((v15 + ~(-1 << v13)) >> v13) + 1;
      if (HIWORD(v16))
      {
        v6 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v6 = v17;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  if (v10 >= a2)
  {
    switch(v6)
    {
      case 1:
        a1[v12] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 2:
        *&a1[v12] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v12] = 0;
        goto LABEL_28;
      default:
LABEL_28:
        if (a2)
        {
LABEL_29:
          if (v9 >= 2)
          {
            v21 = a2 + 1;

            sub_1C97ACC50(a1, v21, v9, v7);
          }
        }

        break;
    }
  }

  else
  {
    v18 = ~v10 + a2;
    if (v12 < 4)
    {
      v19 = (v18 >> v13) + 1;
      if (v12)
      {
        v20 = v18 & ~(-1 << v13);
        bzero(a1, v12);
        if (v12 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v12 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v18;
        }
      }
    }

    else
    {
      bzero(a1, v12);
      *a1 = v18;
      v19 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v12] = v19;
        break;
      case 2:
        *&a1[v12] = v19;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&a1[v12] = v19;
        break;
      default:
        return;
    }
  }
}