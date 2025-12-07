void sub_1C99F120C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12)
{
  sub_1C99F1F98();
  sub_1C99F1D90();
  sub_1C97A2CEC(&qword_1EC3CD348, &qword_1C9AB6860);
  sub_1C99F1EAC();
  sub_1C99F1FC0();
  if (!v16)
  {
LABEL_27:

    *v12 = v14;
    sub_1C99F1F7C();
    return;
  }

  v37 = v13;
  v17 = 0;
  sub_1C99F1D00();
  sub_1C99F1E00();
  if (!v15)
  {
LABEL_4:
    v18 = v17;
    while (1)
    {
      v17 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v17 >= v12)
      {
        break;
      }

      sub_1C99F1FE8();
      if (v19)
      {
        sub_1C99F1DD8();
        goto LABEL_9;
      }
    }

    if (a12)
    {
      sub_1C99F1E14();
      if (v35 != v36)
      {
        sub_1C99F1E48(v34);
      }

      else
      {
        sub_1C99F1E6C(v34);
      }

      *(v13 + 16) = 0;
    }

    goto LABEL_27;
  }

  while (1)
  {
    sub_1C99F1DEC();
LABEL_9:
    sub_1C99F1E58();
    v25 = *(v24 + v23);
    if ((a12 & 1) == 0)
    {
    }

    v26 = sub_1C99F207C(v20, v21, v22);
    sub_1C99F1FCC(v26, v27, v28);
    sub_1C9A93D18();
    sub_1C99F1D54();
    if (v29)
    {
      break;
    }

    sub_1C987B428();
LABEL_19:
    sub_1C99F1D24(v30);
    *(v33 + v32) = v25;
    sub_1C99F1E28();
    v13 = v37;
    if (!v15)
    {
      goto LABEL_4;
    }
  }

  sub_1C987B414();
  while (1)
  {
    sub_1C99F1F0C();
    if (v29)
    {
      if (v31)
      {
        break;
      }
    }

    sub_1C99F1ED4();
    if (!v29)
    {
      sub_1C987B400();
      goto LABEL_19;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_1C99F1370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_1C99F1F98();
  sub_1C99F1EE4();
  sub_1C97A2CEC(v35, v36);
  v37 = sub_1C99F2014();
  v60 = v33;
  v39 = sub_1C99F20D0(v37, v38);
  if (!*(v34 + 16))
  {
LABEL_27:

    *v32 = v39;
    sub_1C99F1F7C();
    return;
  }

  v59 = v34;
  v40 = 0;
  v41 = v34;
  sub_1C99F1D00();
  sub_1C99F1F68();
  if (!v33)
  {
LABEL_4:
    v42 = v40;
    while (1)
    {
      v40 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v40 >= v32)
      {
        break;
      }

      ++v42;
      if (*(v41 + 8 * v40))
      {
        sub_1C984ACD8();
        v33 = v44 & v43;
        goto LABEL_9;
      }
    }

    if (v60)
    {
      sub_1C99F1E38();
      if (v57 != v58)
      {
        sub_1C99F1E48(v56);
      }

      else
      {
        sub_1C99F1E6C(v56);
      }

      *(v34 + 16) = 0;
    }

    goto LABEL_27;
  }

  while (1)
  {
    sub_1C99F1F54();
LABEL_9:
    sub_1C99F1F40();
    v50 = *(v49 + 8 * v48);
    if ((v60 & 1) == 0)
    {
    }

    sub_1C99F207C(v45, v46, v47);
    sub_1C9A92528();
    sub_1C9A93D18();
    sub_1C99F1D78();
    sub_1C99F1F00();
    if (v51)
    {
      break;
    }

    sub_1C987B428();
LABEL_19:
    sub_1C99F1DC4();
    sub_1C99F1E8C(v53);
    *(v55 + 8 * v54) = v50;
    sub_1C99F1E28();
    v34 = v59;
    if (!v33)
    {
      goto LABEL_4;
    }
  }

  sub_1C987B414();
  while (1)
  {
    sub_1C99F1F0C();
    if (v51)
    {
      if (v52)
      {
        break;
      }
    }

    sub_1C99F2004();
    if (!v51)
    {
      sub_1C987B400();
      goto LABEL_19;
    }
  }

LABEL_29:
  __break(1u);
}

uint64_t sub_1C99F14F0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1C9A9FB80;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1C99F1594(uint64_t a1)
{
  v2 = sub_1C97A2CEC(&qword_1EC3D13C8, &qword_1C9ACA0F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C99F15FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SNUltronUtils.UltronReportTemplate(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C99F16CC()
{
  result = qword_1EC3D1468;
  if (!qword_1EC3D1468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1468);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SNUltronUtils.DomainError(_BYTE *result, int a2, int a3)
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

uint64_t sub_1C99F1804(uint64_t a1)
{
  result = sub_1C9A91558();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C99F18A0(uint64_t a1)
{
  result = type metadata accessor for SNUltronUtils.UltronReportingPlan(319);
  if (v2 <= 0x3F)
  {
    result = sub_1C9A916E8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C99F1974(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C99F19C0()
{
  result = qword_1EC3D1498;
  if (!qword_1EC3D1498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1498);
  }

  return result;
}

unint64_t sub_1C99F1A14()
{
  result = qword_1EC3D14A8;
  if (!qword_1EC3D14A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D14A8);
  }

  return result;
}

uint64_t sub_1C99F1A68(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C98EE70C();
  v5(v4);
  sub_1C97DA940();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_1C99F1AC4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C97DA940();
  (*(v3 + 8))(a1);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for SNUltronUtils.UltronReportingPlan.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C99F1BFC()
{
  result = qword_1EC3D14B8;
  if (!qword_1EC3D14B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D14B8);
  }

  return result;
}

unint64_t sub_1C99F1C54()
{
  result = qword_1EC3D14C0;
  if (!qword_1EC3D14C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D14C0);
  }

  return result;
}

unint64_t sub_1C99F1CAC()
{
  result = qword_1EC3D14C8[0];
  if (!qword_1EC3D14C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC3D14C8);
  }

  return result;
}

void sub_1C99F1D24(unint64_t a1@<X8>)
{
  *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a1;
  v5 = (*(v1 + 48) + 16 * a1);
  *v5 = v2;
  v5[1] = v3;
}

uint64_t sub_1C99F1E6C@<X0>(uint64_t a1@<X8>)
{

  return sub_1C99F14F0(0, (a1 + 63) >> 6, v1);
}

void sub_1C99F1E8C(uint64_t a1@<X8>)
{
  *(v4 + v1) |= v2;
  v7 = (*(v3 + 48) + 16 * a1);
  *v7 = v5;
  v7[1] = v6;
}

uint64_t sub_1C99F1EAC()
{

  return MEMORY[0x1EEE6AA90](v1, v0, v2);
}

uint64_t sub_1C99F1F18()
{

  return sub_1C99F1AC4(v0, type metadata accessor for SNUltronUtils.UltronReportTemplate);
}

uint64_t sub_1C99F1FCC(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_1C9A92528();
}

uint64_t sub_1C99F2024()
{

  return MEMORY[0x1EEE6AA90](v1, v0, v2);
}

uint64_t sub_1C99F204C@<X0>(uint64_t a1@<X8>)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1C99F207C(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_1C9A93CC8();
}

void sub_1C99F2094(uint64_t a1, uint64_t a2)
{
  *(v2 + 224) = a1;
  *(v2 + 232) = a2;

  JUMPOUT(0x1CCA90230);
}

uint64_t sub_1C99F20D0(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x1EEE6AA90](a1, a2, v2);
}

uint64_t sub_1C99F20E8(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C9A93DA8();
  if (!v3)
  {
    sub_1C97A5A8C(v12, v12[3]);
    v7 = *(a3 + 8);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    type metadata accessor for TypedCodableByNSCoding(0, AssociatedTypeWitness, v9, v10);
    swift_getWitnessTable();
    sub_1C9A93B38();
    (*(v7 + 24))(&v13, a2, v7);
    sub_1C97A592C(v12);
  }

  return sub_1C97A592C(a1);
}

uint64_t sub_1C99F2244(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C9A93DC8();
  (*(*(a3 + 8) + 16))(&v12, a2, *(a3 + 8));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  nullsub_1();
  v7 = v6;
  v12 = v6;
  sub_1C97BDE74(v11, v11[3]);
  type metadata accessor for TypedCodableByNSCoding(0, AssociatedTypeWitness, v8, v9);
  swift_getWitnessTable();
  sub_1C9A93B58();

  return sub_1C97A592C(v11);
}

uint64_t sub_1C99F2384()
{
  v0 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v1 = sub_1C99F3218();
    if (!v1)
    {
      return v0;
    }

    v2 = v1;
    sub_1C97A2CEC(&unk_1EC3C6E20, &qword_1C9A9FF60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C9A9DF30;
    *(inited + 32) = v2;
    v4 = v0 >> 62;
    result = v0 >> 62 ? sub_1C9A934C8() : *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = result + 1;
    if (__OFADD__(result, 1))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!v4)
      {
        v8 = v0 & 0xFFFFFFFFFFFFFF8;
        if (v6 <= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_13;
        }

        goto LABEL_12;
      }

LABEL_11:
      sub_1C9A934C8();
      goto LABEL_12;
    }

    if (v4)
    {
      goto LABEL_11;
    }

LABEL_12:
    result = sub_1C9A93618();
    v0 = result;
    v8 = result & 0xFFFFFFFFFFFFFF8;
LABEL_13:
    if (*(v8 + 16) >= *(v8 + 24) >> 1)
    {
      goto LABEL_18;
    }

    type metadata accessor for IOService(v7);
    swift_arrayInitWithCopy();

    ++*(v8 + 16);
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1C99F24F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1C99F2B78(a2, a3, a4, a5);
  if (!v5)
  {
    v8 = sub_1C99F2AE0(a1, v7);

    a1 = sub_1C985B530(v8);
  }

  return a1;
}

char *sub_1C99F258C(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 16))(a1);
  v3 = IOObjectRelease(v2);
  return sub_1C9A3B42C(v3);
}

uint64_t sub_1C99F25CC()
{
  IONotificationPortDestroy(*(v0 + 16));

  return swift_deallocClassInstance();
}

void sub_1C99F2640()
{
  sub_1C97BE5BC();
  v1 = IOObjectRelease(*(v0 + 16));
  sub_1C9A3B42C(v1);
  sub_1C97BE5A4();
}

uint64_t sub_1C99F272C()
{
  sub_1C99F2640();
  sub_1C99F39F0();

  return swift_deallocClassInstance();
}

uint64_t sub_1C99F277C(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  existing = 0;
  v4 = sub_1C9A922F8();
  MatchingServices = IOServiceGetMatchingServices(a1, v4, &existing);
  sub_1C9A3B42C(MatchingServices);
  if (!v2)
  {
    a1 = sub_1C99F2848(existing, v6);
    MEMORY[0x1CCA91CC0]();
  }

  return a1;
}

uint64_t sub_1C99F2848(uint64_t a1, double a2)
{
  if (!a1)
  {
    type metadata accessor for SNError(a2);
    sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 1, 0, 0xD000000000000018, 0x80000001C9ADE310);
    swift_willThrow();
  }

  return a1;
}

uint64_t sub_1C99F28D0(uint64_t a1, double a2)
{
  if (!a1)
  {
    type metadata accessor for SNError(a2);
    sub_1C99F3A94("iterator is invalid");
    swift_willThrow();
  }

  return a1;
}

void sub_1C99F2930()
{
  sub_1C97BE5BC();
  v1 = IOObjectRelease(*(v0 + 16));
  sub_1C9A3B42C(v1);
  sub_1C97BE5A4();
}

uint64_t sub_1C99F2A1C()
{
  sub_1C99F2930();
  sub_1C99F39F0();

  return swift_deallocClassInstance();
}

uint64_t sub_1C99F2AB4(int a1)
{
  sub_1C99F39F0();
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_1C99F2AE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C99F277C(a1, a2);
  if (!v2)
  {
    v5 = v4;
    sub_1C97A2CEC(&qword_1EC3D15D0, &qword_1C9ACA7C8);
    *(swift_initStackObject() + 16) = v5;
    v3 = sub_1C99F2384();
    swift_setDeallocating();
    sub_1C99F2EF0();
    swift_deallocClassInstance();
  }

  return v3;
}

uint64_t sub_1C99F2B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C97A2CEC(&unk_1EC3C6918, &unk_1C9A9D3D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C9AA3B60;
  sub_1C99F3A18();
  v11 = sub_1C99F2CA0(a1, a2, v10);
  if (v4)
  {
    *(inited + 16) = 0;
    swift_setDeallocating();
    sub_1C985D6C0();
  }

  else
  {
    *(inited + 32) = v11;
    sub_1C99F3A00();
    *(inited + 40) = sub_1C99F2CA0(a3, a4, v12);
    v14 = sub_1C98BC9C0(inited);
    swift_setDeallocating();
    sub_1C985D6C0();
    v15 = sub_1C97E8CE8(v14);

    inited = sub_1C99F4454(v15);
  }

  return inited;
}

uint64_t sub_1C99F2CA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = sub_1C9A92508();
  v6 = a3(v5 + 32);

  if (v6)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v7 = v6;
      sub_1C9A92318();

      v3 = 0;
    }

    sub_1C97A8E8C();
    swift_allocError();
    *v8 = 0;
    swift_willThrow();
  }

  else
  {
    sub_1C97A8E8C();
    swift_allocError();
    *v9 = 0;
    swift_willThrow();
  }

  return v3;
}

uint64_t sub_1C99F2DC8(io_iterator_t a1)
{
  result = IOIteratorIsValid(a1);
  if (!result)
  {
    type metadata accessor for SNError(v2);
    sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 1, 0, 0xD000000000000013, 0x80000001C9ADE2F0);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1C99F2E4C@<X0>(io_iterator_t a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1C99F2DC8(a1);
  if (!v4)
  {
    v10 = IOIteratorNext(a1);
    if (v10)
    {
      (*(a3 + 24))(v10, a2, a3);
      v11 = a4;
      v12 = 0;
    }

    else
    {
      v11 = a4;
      v12 = 1;
    }

    return sub_1C97ACC50(v11, v12, 1, a2);
  }

  return result;
}

uint64_t sub_1C99F2EF0()
{
  v1 = IOObjectRelease(*(v0 + 16));
  sub_1C9A3B42C(v1);
  return v0;
}

void sub_1C99F305C()
{
  sub_1C97BE5BC();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v3 = type metadata accessor for UnsafeIOIterator(0, AssociatedTypeWitness, AssociatedConformanceWitness, v2);
  sub_1C99F258C(v3, &off_1EEBB6258);
  sub_1C97BE5A4();
}

uint64_t sub_1C99F31D4()
{
  sub_1C99F305C();
  sub_1C99F39F0();

  return swift_deallocClassInstance();
}

uint64_t sub_1C99F3218()
{
  v1 = *(v0 + 16);
  if (IOIteratorIsValid(v1))
  {
    v3 = IOIteratorNext(v1);
    if (v3)
    {
      v5 = v3;
      sub_1C99F28D0(v3, v4);
      type metadata accessor for IOService(v7);
      result = swift_allocObject();
      *(result + 16) = v5;
      return result;
    }
  }

  else
  {
    type metadata accessor for SNError(v2);
    v6 = sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 1, 0, 0xD000000000000013, 0x80000001C9ADE2F0);
    swift_willThrow();
  }

  return 0;
}

uint64_t sub_1C99F32F4@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_1C9A93258();
  v23 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - v7;
  v9 = *(AssociatedTypeWitness - 8);
  v10 = MEMORY[0x1EEE9AC00](v6);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v22 - v13;
  v15 = v1[4];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1C99F2E4C(v15, AssociatedTypeWitness, AssociatedConformanceWitness, v8);
  v17 = v23;
  if (sub_1C97ABF20(v8, 1, AssociatedTypeWitness) == 1)
  {
    (*(v17 + 8))(v8, v5);
    v18 = 1;
    v19 = v24;
  }

  else
  {
    v21 = *(v9 + 32);
    v21(v14, v8, AssociatedTypeWitness);
    v21(v12, v14, AssociatedTypeWitness);
    v19 = v24;
    (*(v2 + 32))(v12, v3, v2);
    v18 = 0;
  }

  return sub_1C97ACC50(v19, v18, 1, v3);
}

char *sub_1C99F35B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, mach_port_t a10)
{
  if ((a7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (HIDWORD(a7))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1C99F3B50(a1, a2, a3, a3, a5, a6, a7);
  if (v17 < 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (HIDWORD(v13))
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }

  v18 = sub_1C99F3ACC(v15, a10, v11, v12, v13, v14, v16, v20, v21, v22);
  result = sub_1C9A3B42C(v18);
  if (v10)
  {
    return result;
  }

  if ((v23 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  if (HIDWORD(v23))
  {
    goto LABEL_15;
  }

  return (v24 | (v23 << 32));
}

void sub_1C99F36B4()
{
  sub_1C97BE5BC();
  v1 = IOServiceClose(*(v0 + 16));
  sub_1C9A3B42C(v1);
  sub_1C97BE5A4();
}

uint64_t sub_1C99F37A0()
{
  sub_1C99F36B4();
  sub_1C99F39F0();

  return swift_deallocClassInstance();
}

uint64_t sub_1C99F37FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

char *sub_1C99F3880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  if ((a7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (HIDWORD(a7))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1C99F3B50(*(v7 + 16), a1, a2, a3, a5, a6, a7);
  if ((v12 & 0x8000000000000000) != 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (HIDWORD(v12))
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }

  v16 = sub_1C99F3ACC(v14, v9, v10, v11, v12, v13, v15, v18, v19, v20);
  result = sub_1C9A3B42C(v16);
  if (v8)
  {
    return result;
  }

  if ((v21 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  if (HIDWORD(v21))
  {
    goto LABEL_15;
  }

  return (v22 | (v21 << 32));
}

void sub_1C99F3A30(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void sub_1C99F3A60()
{
  sub_1C97A592C(v0);

  JUMPOUT(0x1CCA93280);
}

id sub_1C99F3A94@<X0>(uint64_t a1@<X8>)
{

  return sub_1C9929478(0xD000000000000017, (v1 - 32) | 0x8000000000000000, 1, 0, 0xD000000000000018, a1 | 0x8000000000000000);
}

uint64_t sub_1C99F3ACC@<X0>(void *outputStruct@<X7>, mach_port_t a2@<W0>, uint32_t a3@<W1>, const uint64_t *a4@<X2>, uint32_t a5@<W3>, uint64_t a6@<X4>, const void *a7@<X8>, void *outputStructa, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  if (a7)
  {
    v13 = a6 - a7;
  }

  else
  {
    v13 = 0;
  }

  return IOConnectCallMethod(a2, a3, a4, a5, a7, v13, v10, (v11 - 28), outputStruct, va);
}

uint64_t sub_1C99F3AFC()
{

  return swift_slowAlloc();
}

uint64_t sub_1C99F3B18()
{

  return swift_slowAlloc();
}

BOOL sub_1C99F3B34(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_1C99F3B74(uint64_t a1)
{
  v2 = *(a1 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  sub_1C97B7B08(0, v2, 0);
  if (v2)
  {
    v3 = (a1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;

      v7 = *(v10 + 16);
      v6 = *(v10 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1C97B7B08((v6 > 1), v7 + 1, 1);
      }

      *(v10 + 16) = v7 + 1;
      v8 = v10 + 16 * v7;
      *(v8 + 32) = v5;
      *(v8 + 40) = v4;
      v3 += 3;
      --v2;
    }

    while (v2);
  }

  return v10;
}

uint64_t sub_1C99F3C4C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  sub_1C97B7B08(0, v2, 0);
  if (v2)
  {
    v3 = (a1 + 56);
    do
    {
      v5 = *(v3 - 3);
      v4 = *(v3 - 2);
      v6 = *(v3 - 1);
      v7 = *v3;

      sub_1C97CE3DC(v6, v7);
      sub_1C97CE3DC(v6, v7);
      sub_1C97A5978(v6, v7);
      sub_1C97A5978(v6, v7);
      v9 = *(v12 + 16);
      v8 = *(v12 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_1C97B7B08((v8 > 1), v9 + 1, 1);
      }

      v3 += 4;
      *(v12 + 16) = v9 + 1;
      v10 = v12 + 16 * v9;
      *(v10 + 32) = v5;
      *(v10 + 40) = v4;
      --v2;
    }

    while (v2);
  }

  return v12;
}

uint64_t sub_1C99F3D58(uint64_t a1)
{
  v2 = *(a1 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  sub_1C97B7B08(0, v2, 0);
  if (v2)
  {
    v3 = (a1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;
      v7 = *(v10 + 16);
      v6 = *(v10 + 24);

      if (v7 >= v6 >> 1)
      {
        sub_1C97B7B08((v6 > 1), v7 + 1, 1);
      }

      *(v10 + 16) = v7 + 1;
      v8 = v10 + 16 * v7;
      *(v8 + 32) = v5;
      *(v8 + 40) = v4;
      v3 += 3;
      --v2;
    }

    while (v2);
  }

  return v10;
}

uint64_t sub_1C99F3E30(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = *(a2 + 16);
  if (v4 >= v3)
  {
    v5 = *(a1 + 16);
  }

  else
  {
    v5 = *(a2 + 16);
  }

  v25 = MEMORY[0x1E69E7CC0];
  result = sub_1C97B7B08(0, v5, 0);
  v23 = v5;
  v24 = v4;
  v22 = a1;
  if (v5)
  {
    v7 = (a1 + 40);
    v8 = v3;
    v9 = v3;
    while (v8)
    {
      if (!v4)
      {
        goto LABEL_24;
      }

      v11 = *(v7 - 1);
      v10 = *v7;

      v13 = *(v25 + 16);
      v12 = *(v25 + 24);
      if (v13 >= v12 >> 1)
      {
        result = sub_1C97B7B08((v12 > 1), v13 + 1, 1);
      }

      *(v25 + 16) = v13 + 1;
      v14 = v25 + 16 * v13;
      *(v14 + 32) = v11;
      *(v14 + 40) = v10;
      --v4;
      --v8;
      v7 += 2;
      if (!--v5)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  else
  {
    v9 = v3;
LABEL_13:
    v15 = v23;
    for (i = (v22 + 16 * v23 + 40); v9 != v15; i += 2)
    {
      if (v15 >= v9)
      {
        goto LABEL_25;
      }

      if (__OFADD__(v15, 1))
      {
        goto LABEL_26;
      }

      if (v24 == v15)
      {
        break;
      }

      if (v15 >= v24)
      {
        goto LABEL_27;
      }

      v17 = *(i - 1);
      v18 = *i;
      v20 = *(v25 + 16);
      v19 = *(v25 + 24);

      if (v20 >= v19 >> 1)
      {
        result = sub_1C97B7B08((v19 > 1), v20 + 1, 1);
      }

      *(v25 + 16) = v20 + 1;
      v21 = v25 + 16 * v20;
      *(v21 + 32) = v17;
      *(v21 + 40) = v18;
      ++v15;
    }

    return v25;
  }

  return result;
}

uint64_t sub_1C99F3FF4(uint64_t a1, void (*a2)(__int128 *, __int128 *, __int128 *), uint64_t a3)
{
  v4 = v3;
  v5 = a1;
  v6 = *(a1 + 16);
  v51 = MEMORY[0x1E69E7CC0];
  sub_1C97B7B88(0, v6, 0);
  v7 = v5 + 64;
  v8 = v51;
  v9 = -1;
  v10 = -1 << *(v5 + 32);
  if (-v10 < 64)
  {
    v9 = ~(-1 << -v10);
  }

  v11 = v9 & *(v5 + 64);
  v12 = (63 - v10) >> 6;
  v40 = v6;
  if (v6)
  {

    v13 = 0;
    v14 = 0;
    v39 = v5;
    while (1)
    {
      v43 = v8;
      if (!v11)
      {
        break;
      }

      v15 = v4;
LABEL_11:
      v17 = __clz(__rbit64(v11)) | (v14 << 6);
      v18 = (*(v5 + 48) + 16 * v17);
      v20 = *v18;
      v19 = v18[1];
      sub_1C97BD360(*(v5 + 56) + 32 * v17, &v46);
      *&v45 = v20;
      *(&v45 + 1) = v19;

      v8 = a3;
      a2(&v48, &v49, &v45);
      if (v15)
      {

        sub_1C993973C(&v45, &qword_1EC3CBA60);
        return v8;
      }

      sub_1C993973C(&v45, &qword_1EC3CBA60);
      v8 = v43;
      v51 = v43;
      v22 = *(v43 + 16);
      v21 = *(v43 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1C97B7B88((v21 > 1), v22 + 1, 1);
        v8 = v51;
      }

      ++v13;
      v11 &= v11 - 1;
      *(v8 + 16) = v22 + 1;
      v23 = (v8 + 48 * v22);
      v24 = v48;
      v25 = v50;
      v23[3] = v49;
      v23[4] = v25;
      v23[2] = v24;
      v5 = v39;
      v4 = 0;
      if (v13 == v40)
      {
        goto LABEL_17;
      }
    }

    while (1)
    {
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v16 >= v12)
      {
        goto LABEL_34;
      }

      v11 = *(v7 + 8 * v16);
      ++v14;
      if (v11)
      {
        v15 = v4;
        v14 = v16;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {

    v14 = 0;
LABEL_17:
    if (!v11)
    {
      goto LABEL_19;
    }

    do
    {
      v44 = v8;
LABEL_23:
      v27 = __clz(__rbit64(v11)) | (v14 << 6);
      v28 = *(v5 + 56);
      v29 = v5;
      v30 = (*(v5 + 48) + 16 * v27);
      v31 = *v30;
      v32 = v30[1];
      sub_1C97BD360(v28 + 32 * v27, &v46);
      *&v45 = v31;
      *(&v45 + 1) = v32;
      v49 = v46;
      v50 = v47;
      v48 = v45;

      v8 = a3;
      a2(&v45, &v46, &v48);
      if (v4)
      {
        sub_1C993973C(&v48, &qword_1EC3CBA60);

        return v8;
      }

      sub_1C993973C(&v48, &qword_1EC3CBA60);
      v8 = v44;
      v51 = v44;
      v34 = *(v44 + 16);
      v33 = *(v44 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_1C97B7B88((v33 > 1), v34 + 1, 1);
        v8 = v51;
      }

      v11 &= v11 - 1;
      *(v8 + 16) = v34 + 1;
      v35 = (v8 + 48 * v34);
      v36 = v45;
      v37 = v47;
      v35[3] = v46;
      v35[4] = v37;
      v35[2] = v36;
      v5 = v29;
    }

    while (v11);
LABEL_19:
    while (1)
    {
      v26 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v26 >= v12)
      {

        return v8;
      }

      v11 = *(v7 + 8 * v26);
      ++v14;
      if (v11)
      {
        v44 = v8;
        v14 = v26;
        goto LABEL_23;
      }
    }
  }

  __break(1u);
LABEL_34:

  __break(1u);
  return result;
}

uint64_t sub_1C99F437C(uint64_t a1, void *(*a2)(uint64_t *__return_ptr, uint64_t *, uint64_t *), uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = a1;
  v35 = a1;
  v9 = *(a4 + 16);

  v10 = (a4 + 80);
  if (v9)
  {
    while (1)
    {
      v11 = *v10;
      v12 = *(v10 - 2);
      v13 = *(v10 - 1);
      v14 = *(v10 - 4);
      v15 = *(v10 - 3);
      v16 = *(v10 - 5);
      v28 = *(v10 - 6);
      v29 = v16;
      v30 = v14;
      v31 = v15;
      v32 = v12;
      v33 = v13;
      v34 = v11;
      sub_1C98133B4(v28, v16, v14, v15);
      v17 = a2(&v27, &v35, &v28);
      if (v5)
      {
        break;
      }

      sub_1C9A06D78(v17, v18, v19, v20, v21, v22, v23, v24, v26, v27, v28, v29, v30, v31);

      v8 = v27;
      v35 = v27;
      v10 += 14;
      if (!--v9)
      {
        return v8;
      }
    }

    sub_1C9A06D78(v17, v18, v19, v20, v21, v22, v23, v24, v26, v27, v28, v29, v30, v31);
  }

  return v8;
}

uint64_t sub_1C99F4454(uint64_t a1)
{
  v2 = *(a1 + 16);
  v22 = MEMORY[0x1E69E7CC0];
  v3 = sub_1C9A06C10();
  sub_1C97B7B08(v3, v4, v5);
  v6 = v22;
  if (v2)
  {
    v7 = a1 + 32;
    do
    {
      sub_1C97E82EC(v7, v21, &qword_1EC3C69F0, &qword_1C9AA0070);
      v20[0] = v21[1];
      v20[1] = v21[2];
      v8 = v21[0];
      sub_1C97A592C(v20);
      v22 = v6;
      v10 = *(v6 + 16);
      v9 = *(v6 + 24);
      if (v10 >= v9 >> 1)
      {
        v11 = sub_1C97CE0F4(v9);
        sub_1C97B7B08(v11, v10 + 1, 1);
        v6 = v22;
      }

      *(v6 + 16) = v10 + 1;
      *(v6 + 16 * v10 + 32) = v8;
      v7 += 48;
      --v2;
    }

    while (v2);
  }

  v13 = sub_1C9A3C12C(v12);
  v14 = *(v6 + 16);

  v15 = *(v13 + 16);

  if (v14 == v15)
  {

    return sub_1C992C208(v16);
  }

  else
  {
    sub_1C97E78C8();
    v18 = sub_1C97A7A80(&type metadata for CollectionUtils.DomainError);
    return sub_1C9A06D58(v18, v19);
  }
}

uint64_t sub_1C99F46AC(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t))
{
  v4 = a2();

  v6 = sub_1C9A3C12C(v5);
  v7 = *(v4 + 16);

  v8 = *(v6 + 16);

  if (v7 == v8)
  {

    return a3(v9);
  }

  else
  {
    sub_1C97E78C8();
    v11 = sub_1C97A7A80(&type metadata for CollectionUtils.DomainError);
    return sub_1C9A06D58(v11, v12);
  }
}

uint64_t sub_1C99F4750(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C99F3E30(a1, a2);

  v6 = sub_1C9A3C12C(v5);
  v7 = *(v4 + 16);

  v8 = *(v6 + 16);

  if (v7 == v8)
  {

    return sub_1C992C4C4(a1, a2);
  }

  else
  {
    sub_1C97E78C8();
    swift_allocError();
    *v10 = 3;
    return swift_willThrow();
  }
}

uint64_t sub_1C99F4814@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  if (*(a1 + 16))
  {
    v5 = sub_1C9A324EC();
    if (v6)
    {
      return sub_1C97BD360(*(a1 + 56) + 32 * v5, a3);
    }
  }

  sub_1C97E78C8();
  v8 = sub_1C97A7A80(&type metadata for CollectionUtils.DomainError);
  return sub_1C9A06B74(v8, v9);
}

uint64_t sub_1C99F4888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 16))
  {
    v5 = sub_1C993AF6C(a1, a2);
    v7 = sub_1C9A32230(v5, v6);
    if (v8)
    {
      return sub_1C97BD360(*(a1 + 56) + 32 * v7, a3);
    }
  }

  sub_1C97E78C8();
  v10 = sub_1C97A7A80(&type metadata for CollectionUtils.DomainError);
  return sub_1C9A06B74(v10, v11);
}

uint64_t sub_1C99F48FC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    v3 = sub_1C993AF6C(a1, a2);
    v5 = sub_1C9A32230(v3, v4);
    if (v6)
    {
      return *(*(a1 + 56) + 4 * v5);
    }
  }

  sub_1C97E78C8();
  v8 = sub_1C97A7A80(&type metadata for CollectionUtils.DomainError);
  return sub_1C9A06B74(v8, v9);
}

void sub_1C99F495C()
{
  sub_1C97AEB94();
  v25 = v0;
  v2 = v1;
  v3 = sub_1C9A93D68();
  sub_1C97AE9C8();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SNLogMelParameters(0);
  *(&v37 + 1) = v9;
  v10 = swift_allocObject();
  *&v36 = v10;
  v11 = *(v2 + 16);
  *(v10 + 16) = *v2;
  *(v10 + 32) = v11;
  *(v10 + 48) = *(v2 + 32);
  *(v10 + 64) = *(v2 + 48);
  sub_1C9A93D28();
  sub_1C9A93D58();
  (*(v5 + 8))(v8, v3);
  sub_1C9A936F8();
  v12 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_1C9A93818();
    if (!*(&v38 + 1))
    {

      goto LABEL_16;
    }

    v35[0] = v36;
    v35[1] = v37;
    v35[2] = v38;
    sub_1C97E82EC(v35, &v29, &qword_1EC3CC380, &qword_1C9AB28E8);

    if (!swift_dynamicCast())
    {
      break;
    }

    v32 = v26;
    v33 = v27;
    v34 = v28;
    sub_1C993973C(v35, &qword_1EC3CC380);
    if (*(&v33 + 1))
    {
      v29 = v32;
      v30 = v33;
      v31 = v34;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C9A06D08();
        sub_1C97E4DEC();
        v12 = v18;
      }

      v14 = *(v12 + 16);
      v13 = *(v12 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1C97CE0F4(v13);
        sub_1C97E4DEC();
        v12 = v19;
      }

      *(v12 + 16) = v14 + 1;
      v15 = v12 + 40 * v14;
      v16 = v29;
      v17 = v30;
      *(v15 + 64) = v31;
      *(v15 + 32) = v16;
      *(v15 + 48) = v17;
    }

    else
    {
      sub_1C993973C(&v32, &unk_1EC3D1A40);
    }
  }

  v20 = 0xD000000000000026;
  v28 = 0;
  v27 = 0u;
  v26 = 0u;
  sub_1C993973C(&v26, &unk_1EC3D1A40);
  sub_1C97E82EC(v35, &v29, &qword_1EC3CC380, &qword_1C9AB28E8);
  if (*(&v29 + 1))
  {
    sub_1C97A592C(&v30);
    *&v29 = 0;
    *(&v29 + 1) = 0xE000000000000000;
    sub_1C9A935B8();

    *&v29 = 0xD000000000000029;
    *(&v29 + 1) = 0x80000001C9ADE3E0;
    v21 = sub_1C97FB300();
    MEMORY[0x1CCA90230](v21);

    v22 = *(&v29 + 1);
    v20 = v29;
  }

  else
  {
    sub_1C97A592C(&v30);
    v22 = 0x80000001C9ADE3B0;
  }

  sub_1C9A03680();
  sub_1C97A7A80(&type metadata for HashableUtilsError);
  *v23 = v20;
  v23[1] = v22;
  swift_willThrow();

  sub_1C993973C(v35, &qword_1EC3CC380);

LABEL_16:
  sub_1C9971578();
  sub_1C97AEB5C();
}

void sub_1C99F4D74()
{
  sub_1C99F495C();
  if (!v0)
  {
    v2 = v1;
    sub_1C99F495C();
    v4 = v3;
    v5 = 0;
    v6 = *(v2 + 16);
    v7 = 32;
    while (1)
    {
      if (v6 == v5)
      {
LABEL_9:

        return;
      }

      if (v5 >= *(v2 + 16))
      {
        break;
      }

      sub_1C97C9078(v2 + v7, v10);
      v8 = *(v4 + 16);
      if (v5 == v8)
      {

        sub_1C97C90D4(v10);
        return;
      }

      if (v5++ >= v8)
      {
        goto LABEL_13;
      }

      v12[0] = v10[0];
      v12[1] = v10[1];
      v13 = v11;
      sub_1C97C9078(v4 + v7, v14);
      v9 = MEMORY[0x1CCA911D0](v12, v14);
      sub_1C993973C(v12, &unk_1EC3D1A50);
      v7 += 40;
      if ((v9 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
  }
}

void sub_1C99F4EE8(uint64_t a1, uint64_t a2)
{
  sub_1C99F495C();
  if (!v2)
  {
    v4 = *(v3 + 16);
    if (v4)
    {
      v5 = v3 + 32;
      do
      {
        sub_1C97C9078(v5, v6);
        sub_1C9A93538();
        sub_1C97C90D4(v6);
        v5 += 40;
        --v4;
      }

      while (v4);
    }
  }
}

void sub_1C99F4F74()
{
  sub_1C97AEB94();
  v24 = v2;
  v25 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C98021C4();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 8))(0x6A2E657069636572, 0xEB000000006E6F73, AssociatedTypeWitness, AssociatedConformanceWitness);
  v15 = (*(v5 + 16))(v1, v7, v5);
  if (v0)
  {
    v17 = sub_1C9A06A00();
    v18(v17);
  }

  else
  {
    v19 = v15;
    v26 = v9;
    v23 = v16;
    v20 = sub_1C98DB63C(v15, v16);
    sub_1C99FD550(v20, v24, v11, v26, v7, v5, v25);
    v21 = sub_1C9A06A00();
    v22(v21);
    sub_1C97A5978(v19, v23);
  }

  sub_1C97AEB5C();
}

uint64_t sub_1C99F51C8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v13 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v13 < 0xFFFFFFFF80000000)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v6 = v7;
    v5 = a5;
    v8 = a4;
    v9 = a3;
    v10 = a1;
    v14 = sub_1C9A59974(a5, v13);
    v11 = sub_1C97DD928(*(v5 + 28) * v14 / 8, 0, 0);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  __break(1u);
LABEL_13:
  v11 = sub_1C97E7368(v11, v13, a3, a4);
LABEL_5:
  v15 = *(v11 + 16);
  v18[0] = v11 + 32;
  v18[1] = v15;
  result = sub_1C99F56AC(v18, v10, a2, v9, v8, v5);
  if (v6)
  {

    return v5;
  }

  v17 = *(v11 + 16);
  if (!(v17 >> 58))
  {
    v5 = sub_1C97DDAC8((v11 + 32), 8 * v17, *(v5 + 28));

    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C99F530C(float32x4_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else
  {
    v6 = a2;
    if (a2 <= 0x7FFFFFFF)
    {
      v5 = a3;
      v7 = a1;
      v8 = sub_1C9A59974(a3, a2);
      v4 = sub_1C97DD928(*(v5 + 28) * v8 / 8, 0, 0);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_11:
  v4 = sub_1C97E7368(v4, a2, a3, a4);
LABEL_4:
  v12 = 0;
  if (sub_1C9A5999C(v5, v7, v4 + 32, v6, &v12))
  {
    v10 = *(v4 + 16);
    if (v10 >> 58)
    {
      __break(1u);
    }

    v5 = sub_1C97DDAC8((v4 + 32), 8 * v10, *(v5 + 28));
  }

  else
  {
    type metadata accessor for SNError(v9);
    sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 1, 0, 0xD000000000000025, 0x80000001C9AD5AE0);
    swift_willThrow();
  }

  return v5;
}

uint64_t sub_1C99F54A4(void *a1, uint64_t a2)
{
  v5 = a1[3];
  sub_1C97A5A8C(a1, v5);
  v6 = sub_1C9A911D8();
  if (v6 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else
  {
    v7 = v6;
    if (v6 <= 0x7FFFFFFF)
    {
      v10 = sub_1C9A59974(a2, v6);
      v5 = sub_1C97DD928(*(a2 + 28) * v10 / 8, 0, 0);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = v2;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_17:
  isUniquelyReferenced_nonNull_native = sub_1C97E7368(v5, v7, v8, v9);
  v5 = isUniquelyReferenced_nonNull_native;
LABEL_4:
  v12 = *(v5 + 16);
  v13 = v5 + 32;
  v20 = v5 + 32;
  v21 = v12;
  MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
  v19[2] = a2;
  v19[3] = &v20;
  v19[4] = a1;
  v14 = a1[3];
  v15 = a1[4];
  sub_1C97A5A8C(a1, v14);
  v16 = v22;
  result = sub_1C983E270(sub_1C9A02070, v19, v14, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E6448], v15);
  if (v16)
  {
    if (!v20)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    if (v13 == v20)
    {
      if (v21 == v12)
      {

        return a2;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_20;
  }

  if (v20)
  {
    if (v13 == v20)
    {
      if (v21 == v12)
      {
        v18 = *(v5 + 16);
        if (!(v18 >> 58))
        {
          a2 = sub_1C97DDAC8((v5 + 32), 8 * v18, *(a2 + 28));

          return a2;
        }

        goto LABEL_22;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1C99F56AC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = __OFSUB__(a5 >> 1, a4);
  v8 = (a5 >> 1) - a4;
  if (v7)
  {
    __break(1u);
    goto LABEL_8;
  }

  v11 = 0;
  if (v8 < 0xFFFFFFFF80000000)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
  }

  if (v8 > 0x7FFFFFFF)
  {
    goto LABEL_9;
  }

  result = sub_1C9A5999C(a6, (a3 + 4 * a4), *a1, v8, &v11);
  if ((result & 1) == 0)
  {
    type metadata accessor for SNError(v10);
    sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 1, 0, 0xD000000000000025, 0x80000001C9AD5AE0);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1C99F57AC(float32x4_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v7 = *a4;
  sub_1C97A5A8C(a5, a5[3]);
  v8 = sub_1C9A911D8();
  if (v8 < 0xFFFFFFFF80000000)
  {
    __break(1u);
LABEL_7:
    __break(1u);
  }

  if (v8 > 0x7FFFFFFF)
  {
    goto LABEL_7;
  }

  result = sub_1C9A5999C(a3, a1, v7, v8, &v11);
  if ((result & 1) == 0)
  {
    type metadata accessor for SNError(v10);
    sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 1, 0, 0xD000000000000025, 0x80000001C9AD5AE0);
    return swift_willThrow();
  }

  return result;
}

void *sub_1C99F58E0(uint64_t a1, void *a2, void *(*a3)(uint64_t *__return_ptr, uint64_t *), uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t *), uint64_t a6, void (*a7)(void **, uint64_t *, uint64_t *))
{
  v16 = a1;
  result = a3(&v15, &v16);
  if (!v7)
  {
    a5(&v14, &v15);
    a7(&v13, &v12, &v14);

    result = v13;
    *a2 = v12;
  }

  return result;
}

uint64_t sub_1C99F59C8(uint64_t a1, uint64_t a2)
{
  sub_1C97A2CEC(&qword_1EC3D16C8, &unk_1C9ACA8B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C9AA3B60;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  v5 = sub_1C98BC9D8(inited);
  swift_setDeallocating();
  sub_1C985D9F0();
  v6 = sub_1C97E8E28(v5);

  v7 = sub_1C99F46AC(v6, sub_1C99F3C4C, sub_1C992C258);

  return v7;
}

void sub_1C99F5ABC(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *))
{
  v3 = v2;
  v4 = a1;
  v5 = a1 + 64;
  sub_1C984ACA4();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;

  v12 = 0;
  v40 = MEMORY[0x1E69E7CC0];
  v46 = v11;
LABEL_2:
  v13 = v12;
  if (!v8)
  {
    goto LABEL_4;
  }

  do
  {
    v12 = v13;
LABEL_7:
    v14 = (v12 << 10) | (16 * __clz(__rbit64(v8)));
    v15 = *(v4 + 56);
    v16 = (*(v4 + 48) + v14);
    v17 = v16[1];
    v44[0] = *v16;
    v44[1] = v17;
    v45 = *(v15 + v14);

    v18 = sub_1C9A06CA0();
    sub_1C97CE3DC(v18, v19);
    a2(&v42, v44);
    if (v3)
    {

      v37 = sub_1C9A06CA0();
      sub_1C97A5978(v37, v38);
LABEL_17:

      return;
    }

    v8 &= v8 - 1;
    v20 = v43;
    if (v43)
    {
      v39 = v42;
      v23 = v45;

      sub_1C97CE3DC(v23, *(&v23 + 1));

      v24 = sub_1C9A06CA0();
      sub_1C97A5978(v24, v25);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_1C9A06D08();
        sub_1C97E5608(v29, v30, v31, v32);
        v40 = v33;
      }

      v27 = *(v40 + 16);
      v26 = *(v40 + 24);
      if (v27 >= v26 >> 1)
      {
        v34 = sub_1C97CE0F4(v26);
        sub_1C97E5608(v34, v27 + 1, 1, v40);
        v40 = v35;
      }

      *(v40 + 16) = v27 + 1;
      v28 = v40 + 32 * v27;
      *(v28 + 32) = v39;
      *(v28 + 40) = v20;
      *(v28 + 48) = v23;
      v3 = 0;
      v4 = v46;
      goto LABEL_2;
    }

    v21 = sub_1C9A06CA0();
    sub_1C97A5978(v21, v22);
    v13 = v12;
    v3 = 0;
    v4 = v46;
  }

  while (v8);
  while (1)
  {
LABEL_4:
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      return;
    }

    if (v12 >= v10)
    {
      break;
    }

    v8 = *(v5 + 8 * v12);
    ++v13;
    if (v8)
    {
      goto LABEL_7;
    }
  }

  sub_1C9A0699C();
  sub_1C99F46AC(v40, v36, sub_1C992C258);
  if (v3)
  {
    goto LABEL_17;
  }
}

uint64_t sub_1C99F5D58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1C9A32230(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 16 * v4);

  return v6;
}

uint64_t sub_1C99F5DB8(uint64_t a1, void *a2)
{
  v11[5] = *MEMORY[0x1E69E9840];
  sub_1C97A5A8C(a2, a2[3]);
  sub_1C9A93DC8();
  v3 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v3;
  v8[2] = *(a1 + 32);
  v9 = *(a1 + 48);
  v4 = sub_1C98FBA38(v8, &v10);
  v6 = v5;
  *&v8[0] = v4;
  *(&v8[0] + 1) = v5;
  sub_1C97BDE74(v11, v11[3]);
  sub_1C98CB4F8();
  sub_1C9A93B58();
  sub_1C97A5978(v4, v6);
  return sub_1C97A592C(v11);
}

void cdeclSavePipeline(outputPath:ebankInputCount:ebankInputStride:modelPath:feedbackConnectionStarts:feedbackConnectionDestinations:feedbackConnectionsCount:)()
{
  sub_1C97BE460();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v50 = v8;
  v9 = sub_1C9A91558();
  sub_1C97AE9C8();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C9A92598();
  sub_1C9A91468();

  v15 = sub_1C9A92598();
  v17 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v44[1] = v15;
    v45 = v7;
    v46 = v14;
    v47 = v16;
    v48 = v11;
    v49 = v9;
    v18 = v1;
    v51 = MEMORY[0x1E69E7CC0];
    v19 = sub_1C9A06C10();
    sub_1C97B7B08(v19, v20, v21);
    v22 = v51;
    v23 = v18;
    do
    {
      v24 = sub_1C9A92598();
      v26 = v25;
      v51 = v22;
      v28 = *(v22 + 16);
      v27 = *(v22 + 24);
      if (v28 >= v27 >> 1)
      {
        v30 = sub_1C97CE0F4(v27);
        sub_1C97B7B08(v30, v28 + 1, 1);
        v22 = v51;
      }

      *(v22 + 16) = v28 + 1;
      v29 = v22 + 16 * v28;
      *(v29 + 32) = v24;
      *(v29 + 40) = v26;
      v5 += 8;
      --v23;
    }

    while (v23);
    v44[0] = v22;
    v51 = v17;
    v31 = sub_1C9A06C10();
    sub_1C97B7B08(v31, v32, v33);
    v17 = v51;
    do
    {
      v34 = sub_1C9A92598();
      v36 = v35;
      v51 = v17;
      v38 = *(v17 + 16);
      v37 = *(v17 + 24);
      if (v38 >= v37 >> 1)
      {
        v40 = sub_1C97CE0F4(v37);
        sub_1C97B7B08(v40, v38 + 1, 1);
        v17 = v51;
      }

      *(v17 + 16) = v38 + 1;
      v39 = v17 + 16 * v38;
      *(v39 + 32) = v34;
      *(v39 + 40) = v36;
      v3 += 8;
      --v18;
    }

    while (v18);
    v41 = v44[0];
  }

  else
  {
    v41 = MEMORY[0x1E69E7CC0];
  }

  sub_1C99F4750(v41, v17);

  sub_1C99F61A4();
  v42 = sub_1C9A06BF0();
  v43(v42);

  sub_1C97BE478();
}

void sub_1C99F61A4()
{
  sub_1C97AEB94();
  v112 = v3;
  v113 = v0;
  v109 = v4;
  v110 = v5;
  v111 = v6;
  v107 = v7;
  v108 = v8;
  v10 = v9;
  sub_1C97A2CEC(&qword_1EC3C7FE0, &unk_1C9AA1890);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C97AEA4C();
  v12 = sub_1C9A91558();
  sub_1C97AE9C8();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  sub_1C9A06BA0();
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v98 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v98 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v98 - v23;
  sub_1C9A914D8();
  sub_1C97ACC50(v1, 0, 1, v12);
  sub_1C9A91448();
  sub_1C993973C(v1, &qword_1EC3C7FE0);
  v25 = v113;
  v26 = sub_1C9880658();
  if (v25)
  {
    v27 = sub_1C9A06AB0();
    v28(v27);
  }

  else
  {
    v29 = v26;
    v111 = v19;
    v112 = v10;
    v106 = v2;
    type metadata accessor for E5RTExecutionStream(0);
    swift_allocObject();
    v113 = sub_1C9880798(v29);
    type metadata accessor for E5RTExecutionStreamOperation(v30);
    sub_1C9A913F8();
    v31 = sub_1C9A91508();
    v33 = v32;
    v34 = *(v14 + 8);
    v34(v22, v12);
    sub_1C98817E8(1852399981, 0xE400000000000000, v31, v33, 1852399981, 0xE400000000000000, 1, 1);
    v36 = v35;
    v105 = v34;

    sub_1C9882AF4(v36, 1);
    sub_1C9880DE8(v36);
    sub_1C987E9B0();
    v101 = v12;
    v102 = v14 + 8;
    v38 = 0;
    v39 = *(v37 + 16);
    v40 = v37 + 40;
    v103 = MEMORY[0x1E69E7CC0];
    v104 = v24;
    v100 = v37 + 40;
LABEL_5:
    v41 = (v40 + 16 * v38);
    while (v39 != v38)
    {
      if (v38 >= *(v37 + 16))
      {
        __break(1u);
        goto LABEL_32;
      }

      v42 = v37;
      v43 = *(v41 - 1);
      v22 = *v41;
      v114[0] = v43;
      v114[1] = v22;
      MEMORY[0x1EEE9AC00](v37);
      *(&v98 - 2) = v114;

      if ((sub_1C989AB80(sub_1C9A022BC, (&v98 - 4), v110) & 1) == 0)
      {
        v44 = v103;
        v115 = v103;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v45 = sub_1C9A06D08();
          sub_1C97B7B08(v45, v46, v47);
          v44 = v115;
        }

        v49 = *(v44 + 16);
        v48 = *(v44 + 24);
        v50 = v49 + 1;
        if (v49 >= v48 >> 1)
        {
          v52 = sub_1C97CE0F4(v48);
          v103 = v53;
          v99 = v54;
          sub_1C97B7B08(v52, v53, 1);
          v50 = v103;
          v49 = v99;
          v44 = v115;
        }

        ++v38;
        *(v44 + 16) = v50;
        v103 = v44;
        v51 = v44 + 16 * v49;
        *(v51 + 32) = v43;
        *(v51 + 40) = v22;
        v37 = v42;
        v40 = v100;
        goto LABEL_5;
      }

      v41 += 2;
      ++v38;
      v37 = v42;
    }

    v55 = sub_1C985BA7C(v103);
    v57 = v56;

    sub_1C987EA14();
    v59 = v58;
    v98 = v55;
    v99 = 0;
    v100 = v57;
    v60 = 0;
    v61 = *(v58 + 16);
    v62 = v58 + 40;
    v63 = MEMORY[0x1E69E7CC0];
    v64 = v110;
    v103 = v58 + 40;
LABEL_16:
    for (i = (v62 + 16 * v60); ; i += 2)
    {
      v66 = v108;
      v67 = v109;
      if (v61 == v60)
      {
        break;
      }

      if (v60 >= *(v59 + 16))
      {
        __break(1u);
        return;
      }

      v69 = *(i - 1);
      v68 = *i;
      v70 = *(v64 + 16);

      if (!v70 || (v71 = sub_1C97A7890(), sub_1C9A32230(v71, v72), v64 = v110, (v73 & 1) == 0))
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v75 = v63;
        v114[0] = v63;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v76 = sub_1C9A06D08();
          sub_1C97B7B08(v76, v77, v78);
          v64 = v110;
          v75 = v114[0];
        }

        v80 = *(v75 + 16);
        v79 = *(v75 + 24);
        if (v80 >= v79 >> 1)
        {
          v82 = sub_1C97CE0F4(v79);
          sub_1C97B7B08(v82, v80 + 1, 1);
          v64 = v110;
          v75 = v114[0];
        }

        ++v60;
        *(v75 + 16) = v80 + 1;
        v63 = v75;
        v81 = v75 + 16 * v80;
        *(v81 + 32) = v69;
        *(v81 + 40) = v68;
        v62 = v103;
        goto LABEL_16;
      }

      ++v60;
    }

    v83 = v99;
    v84 = sub_1C985BA7C(v63);
    if (v83)
    {
      v105(v104, v101);

      goto LABEL_4;
    }

    v86 = v84;
    v87 = v85;
    v110 = v36;

    sub_1C97A2CEC(&qword_1EC3D1760, qword_1C9ACA940);
    v88 = swift_allocObject();
    *(v88 + 16) = xmmword_1C9AA0140;
    *(v88 + 32) = 0;
    *(v88 + 40) = 0;
    *(v88 + 48) = 0;
    *(v88 + 56) = 0x80000000;
    *(v88 + 64) = 0;
    *(v88 + 72) = 0;
    *(v88 + 80) = 0;
    *(v88 + 88) = 1;
    *(v88 + 96) = 0;
    *(v88 + 104) = 0;
    *(v88 + 112) = 0x80000000;
    *(v88 + 120) = 0;
    *(v88 + 128) = 0;
    *(v88 + 136) = 0;
    *(v88 + 144) = v107;
    *(v88 + 152) = v66;
    *(v88 + 160) = xmmword_1C9ACA7D0;
    *(v88 + 176) = 0;
    *(v88 + 184) = 0;
    *(v88 + 192) = 0;
    *(v88 + 200) = 6;
    *(v88 + 208) = 0;
    *(v88 + 216) = 0;
    *(v88 + 224) = 0x80000000;
    *(v88 + 232) = 0;
    *(v88 + 240) = 0;
    *(v88 + 248) = 0;
    v89 = v100;
    *(v88 + 256) = v98;
    *(v88 + 264) = v89;
    *(v88 + 272) = xmmword_1C9ACA7E0;
    *(v88 + 304) = 0;
    *(v88 + 288) = 0;
    *(v88 + 296) = 0;
    v22 = v104;
    *(v88 + 312) = sub_1C9A91518();
    *(v88 + 320) = v90;
    *(v88 + 328) = v64;
    *(v88 + 336) = v67 & 1 | 0x20000000;
    *(v88 + 344) = 0;
    *(v88 + 352) = 0;
    *(v88 + 360) = 0;
    *(v88 + 368) = v86;
    *(v88 + 376) = v87;
    *(v88 + 384) = xmmword_1C9ACA7F0;
    *(v88 + 400) = 0;
    *(v88 + 408) = 0;
    *(v88 + 416) = 0;

    sub_1C9A914D8();
    v91 = sub_1C99A4D94();
    v38 = v101;
    v36 = v105;
    v92 = v91;
    v93 = sub_1C9A06AB0();
    (v36)(v93);
    if (v92)
    {
      v114[3] = &unk_1F494C110;
      v114[4] = sub_1C9A02330();
      v114[0] = v88;
      v95 = sub_1C9A1DDD0(v114);
      v97 = v96;
      sub_1C97A592C(v114);
      sub_1C99A4EE4(1, v106);
      v105(v106, v101);
      sub_1C9A91648();
      v105(v104, v101);
      sub_1C97A5978(v95, v97);

      goto LABEL_4;
    }

LABEL_32:

    sub_1C9A022DC();
    sub_1C97A7A80(&type metadata for JSONUtils.DomainError);
    *v94 = 2;
    swift_willThrow();

    v36(v22, v38);
  }

LABEL_4:
  sub_1C9971578();
  sub_1C97AEB5C();
}

uint64_t sub_1C99F6B18(uint64_t a1)
{
  v2 = sub_1C9A056E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99F6B54(uint64_t a1)
{
  v2 = sub_1C9A056E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99F6BD4(uint64_t a1)
{
  v2 = sub_1C9A054D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99F6C10(uint64_t a1)
{
  v2 = sub_1C9A054D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99F6C90(uint64_t a1)
{
  v2 = sub_1C9A0568C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99F6CCC(uint64_t a1)
{
  v2 = sub_1C9A0568C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99F6E68(uint64_t a1)
{
  v2 = v1[1];
  v8 = *v1;
  v9 = v2;
  v10 = v1[2];
  v11 = *(v1 + 12);
  sub_1C99F495C();
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + 32;
    do
    {
      sub_1C97C9078(v5, v7);
      sub_1C9A93538();
      sub_1C97C90D4(v7);
      v5 += 40;
      --v4;
    }

    while (v4);
  }
}

void *sub_1C99F6FDC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22[5] = *MEMORY[0x1E69E9840];
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C9A93DA8();
  if (v2)
  {
    return sub_1C97A592C(a1);
  }

  sub_1C97A5A8C(v22, v22[3]);
  sub_1C98DD970();
  sub_1C9A93B38();
  v5 = v20;
  switch(v21 >> 62)
  {
    case 1uLL:
      goto LABEL_12;
    case 2uLL:
      goto LABEL_5;
    case 3uLL:
      goto LABEL_10;
    default:
      v15[0] = v20;
      LODWORD(v15[1]) = v21;
      WORD2(v15[1]) = WORD2(v21);
      result = sub_1C99CCD20(v15, v15 + BYTE6(v21), 52);
      if (result)
      {
        goto LABEL_18;
      }

      __break(1u);
LABEL_5:
      v7 = *(v5 + 16);
      v8 = *(v5 + 24);
      if (sub_1C9A91308() && __OFSUB__(v7, sub_1C9A91338()))
      {
        goto LABEL_21;
      }

      if (__OFSUB__(v8, v7))
      {
        goto LABEL_20;
      }

      v9 = sub_1C9A91328();
      result = sub_1C9A06AC8(v9);
      if (result)
      {
        goto LABEL_18;
      }

      __break(1u);
LABEL_10:
      memset(v15, 0, 14);
      result = sub_1C99CCD20(v15, v15, 52);
      if (result)
      {
        goto LABEL_18;
      }

      __break(1u);
LABEL_12:
      if (v5 >> 32 < v5)
      {
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
      }

      if (sub_1C9A91308() && __OFSUB__(v5, sub_1C9A91338()))
      {
        goto LABEL_22;
      }

      v10 = sub_1C9A91328();
      result = sub_1C9A06AC8(v10);
      if (result)
      {
LABEL_18:
        v11 = *(result + 1);
        v16 = *result;
        v17 = v11;
        v18 = *(result + 2);
        v19 = *(result + 12);
        v12 = sub_1C97A7890();
        sub_1C97A5978(v12, v13);
        sub_1C97A592C(v22);
        result = sub_1C97A592C(a1);
        v14 = v17;
        *a2 = v16;
        *(a2 + 16) = v14;
        *(a2 + 32) = v18;
        *(a2 + 48) = v19;
      }

      else
      {
        __break(1u);
      }

      return result;
  }
}

uint64_t sub_1C99F72C8(void *a1)
{
  v2 = *(v1 + 16);
  v4[0] = *v1;
  v4[1] = v2;
  v4[2] = *(v1 + 32);
  v5 = *(v1 + 48);
  return sub_1C99F5DB8(v4, a1);
}

uint64_t sub_1C99F7308()
{
  sub_1C9A93CC8();
  v1 = *(v0 + 16);
  v4[0] = *v0;
  v4[1] = v1;
  v4[2] = *(v0 + 32);
  v5 = *(v0 + 48);
  sub_1C99F4EE8(v4, v3);
  return sub_1C9A93D18();
}

uint64_t sub_1C99F744C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x73676E697070616DLL && a2 == 0xE800000000000000)
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

void sub_1C99F74DC(uint64_t a1, uint64_t a2)
{
  sub_1C9A06D98();
  sub_1C9A06C20();
  sub_1C97A2CEC(&qword_1EC3D1D48, &qword_1C9ACCE90);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C98550DC();
  sub_1C98CA9DC(v2);
  v4 = sub_1C9A05378();
  sub_1C9A06B14(&type metadata for SNPipelineModelRecipe.Stages.MapKeys.CodingKeys, v5, v4);
  sub_1C97A2CEC(&unk_1EC3C7B20, &unk_1C9A9FF90);
  v6 = sub_1C9A06A60(&unk_1EC3D1D40);
  sub_1C9A06974(v6, v7);
  v8 = sub_1C9A06A84();
  v9(v8);
  sub_1C9A06DAC();
}

void sub_1C99F75E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C9A06D98();
  sub_1C9A06C3C();
  sub_1C97A2CEC(&qword_1EC3D1CD8, &qword_1C9ACCE48);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C97FB2C8();
  sub_1C9A068C0();
  v6 = sub_1C9A05378();
  sub_1C98CA998(&type metadata for SNPipelineModelRecipe.Stages.MapKeys.CodingKeys, v7, v6);
  if (!v4)
  {
    sub_1C97A2CEC(&unk_1EC3C7B20, &unk_1C9A9FF90);
    v8 = sub_1C9A06A2C(&unk_1EC3D1CD0);
    sub_1C9A06900(v8, v9);
    v10 = sub_1C9A0686C();
    v11(v10);
  }

  sub_1C97A592C(v3);
  sub_1C9A06C00();
  sub_1C9A06DAC();
}

uint64_t sub_1C99F7704(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v12 = a1 == a5 && a2 == a6;
  if (v12 || (v13 = sub_1C9A93B18(), v14 = 0, (v13 & 1) != 0))
  {
    sub_1C98453B0(a3, a7);
    v14 = a4 ^ a8 ^ 1;
    if ((v15 & 1) == 0)
    {
      v14 = 0;
    }
  }

  return v14 & 1;
}

uint64_t sub_1C99F777C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1752457584 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000013 && 0x80000001C9ADC0B0 == a2;
    if (v6 || (sub_1C9A93B18() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x796C6E4F757063 && a2 == 0xE700000000000000)
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

uint64_t sub_1C99F7894(char a1)
{
  if (!a1)
  {
    return 1752457584;
  }

  if (a1 == 1)
  {
    return 0xD000000000000013;
  }

  return 0x796C6E4F757063;
}

void sub_1C99F78E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1C97AEB94();
  sub_1C97A2CEC(&qword_1EC3D1D38, &qword_1C9ACCE88);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C98550DC();
  v24 = sub_1C9A06BBC();
  sub_1C97A5A8C(v24, v25);
  sub_1C9A05324();
  sub_1C9A93DD8();
  sub_1C9A939C8();
  if (!v22)
  {
    sub_1C9A06CD8();
    sub_1C97A2CEC(&unk_1EC3C7B20, &unk_1C9A9FF90);
    sub_1C9A06A60(&unk_1EC3D1D40);
    sub_1C9A93A18();
    sub_1C97BE2BC();
    sub_1C9A939D8();
  }

  v26 = sub_1C98B7720();
  v27(v26);
  sub_1C97AEB5C();
}

uint64_t sub_1C99F7A90(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  sub_1C9A92528();
  sub_1C984AA08(a1, a4);
  return sub_1C9A93CE8();
}

uint64_t sub_1C99F7ADC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_1C9A06D2C();
  sub_1C97BE32C(v4);
  v5 = sub_1C9A92528();
  v13 = sub_1C9A06C48(v5, v6, v7, v8, v9, v10, v11, v12, v16, v17);
  sub_1C984AA08(v13, v14);
  sub_1C9A93CE8();
  return sub_1C9A93D18();
}

void sub_1C99F7B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1C97AEB94();
  v26 = v25;
  sub_1C97A2CEC(&qword_1EC3D1CC0, &unk_1C9ACCE38);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v27);
  sub_1C98021C4();
  sub_1C97A5A8C(v26, v26[3]);
  sub_1C9A05324();
  sub_1C9A93DB8();
  if (!v24)
  {
    sub_1C9A938A8();
    sub_1C97A2CEC(&unk_1EC3C7B20, &unk_1C9A9FF90);
    sub_1C9A06CD8();
    sub_1C9A06A2C(&unk_1EC3D1CD0);
    sub_1C9A938F8();
    sub_1C9A938B8();
    v28 = sub_1C97BE31C();
    v29(v28);
  }

  sub_1C97A592C(v26);
  sub_1C9971578();
  sub_1C97AEB5C();
}

uint64_t sub_1C99F7D80(uint64_t a1, uint64_t a2)
{
  if (a1 == 7955819 && a2 == 0xE300000000000000)
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

void sub_1C99F7DF8()
{
  sub_1C97AEB94();
  v2 = v1;
  v4 = v3;
  v7 = sub_1C97A2CEC(v5, v6);
  sub_1C97AE9C8();
  v9 = v8;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C97FB2D8();
  sub_1C97A5A8C(v4, v4[3]);
  v2();
  sub_1C9A93DD8();
  sub_1C9A939C8();
  (*(v9 + 8))(v0, v7);
  sub_1C97AEB5C();
}

uint64_t sub_1C99F7F1C(uint64_t a1)
{
  v1 = sub_1C9A06B54(a1);
  sub_1C9A06C48(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  sub_1C9A92528();
  return sub_1C9A93D18();
}

void sub_1C99F7F58()
{
  sub_1C97AEB94();
  v2 = v1;
  v4 = v3;
  v6 = sub_1C993AF6C(v3, v5);
  sub_1C97A2CEC(v6, v7);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C97FB2C8();
  sub_1C97A5A8C(v4, v4[3]);
  v2();
  sub_1C9A06CFC();
  sub_1C9A93DB8();
  if (!v0)
  {
    sub_1C9A06BE0();
    sub_1C9A938A8();
    sub_1C9A06BD4();
    v9 = sub_1C97FB300();
    v10(v9);
  }

  sub_1C97A592C(v4);
  sub_1C97AEB5C();
}

uint64_t sub_1C99F8094(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E756F63 && a2 == 0xE500000000000000;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656469727473 && a2 == 0xE600000000000000)
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

uint64_t sub_1C99F8154(char a1)
{
  if (a1)
  {
    return 0x656469727473;
  }

  else
  {
    return 0x746E756F63;
  }
}

void sub_1C99F8184()
{
  sub_1C97AEB94();
  sub_1C97A2CEC(&qword_1EC3D1D20, &qword_1C9ACCE70);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C98550DC();
  v2 = sub_1C98B7774();
  sub_1C97A5A8C(v2, v3);
  sub_1C9A05228();
  sub_1C9A06CFC();
  sub_1C9A93DD8();
  sub_1C97BE2BC();
  sub_1C9A93A08();
  if (!v0)
  {
    sub_1C9A06CD8();
    sub_1C97BE2BC();
    sub_1C9A93A08();
  }

  v4 = sub_1C98B7720();
  v5(v4);
  sub_1C97AEB5C();
}

uint64_t sub_1C99F82DC(uint64_t a1, uint64_t a2)
{
  sub_1C97BE32C(a1);
  MEMORY[0x1CCA91980](a1);
  MEMORY[0x1CCA91980](a2);
  return sub_1C9A93D18();
}

void sub_1C99F8334(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C9A06D98();
  sub_1C9A06C3C();
  sub_1C97A2CEC(&qword_1EC3D1C90, &qword_1C9ACCE20);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C97FB2C8();
  sub_1C9A068C0();
  v5 = sub_1C9A05228();
  sub_1C98CA998(&type metadata for SNPipelineModelRecipe.Stages.Slice.CodingKeys, v6, v5);
  sub_1C9A06BE0();
  sub_1C9A938E8();
  sub_1C9A06CD8();
  sub_1C9A06BE0();
  sub_1C9A938E8();
  v7 = sub_1C9A0686C();
  v8(v7);
  sub_1C97A592C(v3);
  sub_1C9A06DAC();
}

void sub_1C99F8470()
{
  sub_1C97AEB94();
  v1 = v0;
  v3 = v2;
  v5 = sub_1C993AF6C(v2, v4);
  sub_1C97A2CEC(v5, v6);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C98021C4();
  sub_1C97A5A8C(v3, v3[3]);
  v1();
  sub_1C9A06CFC();
  sub_1C9A93DD8();
  v8 = sub_1C97A7890();
  v9(v8);
  sub_1C9971578();
  sub_1C97AEB5C();
}

uint64_t sub_1C99F855C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x736C6562616CLL && a2 == 0xE600000000000000)
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

void sub_1C99F85E4(uint64_t a1, uint64_t a2)
{
  sub_1C9A06D98();
  sub_1C9A06C20();
  sub_1C97A2CEC(&qword_1EC3D1CF8, &qword_1C9ACCE58);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C98550DC();
  sub_1C98CA9DC(v2);
  v4 = sub_1C9A051D4();
  sub_1C9A06B14(&type metadata for SNPipelineModelRecipe.Stages.LabelDoubleScores.CodingKeys, v5, v4);
  sub_1C97A2CEC(&qword_1EC3C7BF0, &unk_1C9AA0050);
  v6 = sub_1C9A05420(&unk_1EC3D23D0);
  sub_1C9A06974(v6, v7);
  v8 = sub_1C9A06A84();
  v9(v8);
  sub_1C9A06DAC();
}

uint64_t sub_1C99F8700(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1CCA91980](v3);
  if (v3)
  {
    v5 = a2 + 40;
    do
    {

      sub_1C9971264();
      sub_1C9A92528();

      v5 += 16;
      --v3;
    }

    while (v3);
  }

  return result;
}

void sub_1C99F8774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C9A06D98();
  sub_1C9A06C3C();
  sub_1C97A2CEC(&qword_1EC3D1C80, &unk_1C9ACCE10);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C97FB2C8();
  sub_1C9A068C0();
  v6 = sub_1C9A051D4();
  sub_1C98CA998(&type metadata for SNPipelineModelRecipe.Stages.LabelDoubleScores.CodingKeys, v7, v6);
  if (!v4)
  {
    sub_1C97A2CEC(&qword_1EC3C7BF0, &unk_1C9AA0050);
    v8 = sub_1C9A05420(&qword_1EC3CA010);
    sub_1C9A06900(v8, v9);
    v10 = sub_1C9A0686C();
    v11(v10);
  }

  sub_1C97A592C(v3);
  sub_1C9A06C00();
  sub_1C9A06DAC();
}

uint64_t sub_1C99F88A4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E69727065756C62 && a2 == 0xE900000000000074)
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

void sub_1C99F8940()
{
  sub_1C97AEB94();
  v1 = sub_1C97A2CEC(&qword_1EC3D1CE8, &qword_1C9ACCE50);
  sub_1C97AE9C8();
  v3 = v2;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C98021C4();
  v5 = sub_1C98B7774();
  sub_1C97A5A8C(v5, v6);
  sub_1C9A0512C();
  sub_1C9A06CFC();
  sub_1C9A93DD8();
  sub_1C9A053CC();
  sub_1C9A93A18();
  (*(v3 + 8))(v0, v1);
  sub_1C97AEB5C();
}

uint64_t sub_1C99F8A64(uint64_t a1)
{
  v2 = sub_1C9A06B54(a1);
  sub_1C9A06C48(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12);
  sub_1C97C7F50();
  MEMORY[0x1CCA91980](v1);
  return sub_1C9A93D18();
}

void sub_1C99F8AA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C9A06D98();
  sub_1C9A06C3C();
  sub_1C97A2CEC(&qword_1EC3D1C68, &qword_1C9ACCE08);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C97FB2C8();
  sub_1C9A068C0();
  v6 = sub_1C9A0512C();
  sub_1C98CA998(&type metadata for SNPipelineModelRecipe.Stages.SoundActionsPostProcessing.CodingKeys, v7, v6);
  if (!v4)
  {
    sub_1C9A05180();
    sub_1C9A067A8();
    sub_1C9A938F8();
    v8 = sub_1C9A0686C();
    v9(v8);
  }

  sub_1C97A592C(v3);
  sub_1C9A06DAC();
}

void sub_1C99F8BC0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v7 = a1[3];
  v6 = a1[4];
  v8 = a1[5];
  v9 = *(a1 + 12);
  switch(v7 >> 28)
  {
    case 1u:
      sub_1C9A06BC8();
      if (v23 == 0x10000000)
      {
        v24 = *v22;

        sub_1C98453B0(v21, v24);
      }

      return;
    case 2u:
      if ((a2[3] & 0xF0000000) == 0x20000000)
      {
        v14 = v3 == *a2 && v4 == a2[1];
        if (v14 || (sub_1C9A93B18() & 1) != 0)
        {
          v15 = sub_1C9971264();
          sub_1C98453B0(v15, v16);
        }
      }

      return;
    case 3u:
      sub_1C9A06BC8();
      v13 = 805306368;
      goto LABEL_13;
    case 4u:
      sub_1C9A06BC8();
      v13 = 0x40000000;
LABEL_13:
      if (v12 == v13 && (v10 != *v11 || v4 != v11[1]))
      {

        sub_1C9A93B18();
      }

      return;
    case 5u:
      sub_1C9A06BC8();
      return;
    case 6u:
      sub_1C9A06BC8();
      if (v27 == 1610612736)
      {
        v28 = *v26;

        sub_1C9808C60(v25, v28);
      }

      return;
    case 7u:
      sub_1C9A06BC8();
      if (v20 == 1879048192)
      {
        sub_1C9808CEC(v18, *v19);
      }

      return;
    case 8u:
      if (v9)
      {
        v29 = 0;
      }

      else
      {
        v29 = v7 == 0x80000000;
      }

      if (v29 && (v5 | v4 | v3 | v6 | v8) == 0)
      {
        sub_1C9A067DC();
        if (!v14)
        {
          return;
        }
      }

      else
      {
        v31 = v5 | v4 | v6 | v8;
        if (!v9 && ((sub_1C9A06CF0(), v14) ? (v32 = v3 == 1) : (v32 = 0), v32 ? (v33 = v31 == 0) : (v33 = 0), v33))
        {
          sub_1C9A067DC();
          if (!v14)
          {
            return;
          }
        }

        else if (!v9 && ((sub_1C9A06CF0(), v14) ? (v34 = v3 == 2) : (v34 = 0), v34 ? (v35 = v31 == 0) : (v35 = 0), v35))
        {
          sub_1C9A067DC();
          if (!v14)
          {
            return;
          }
        }

        else if (v9 || ((sub_1C9A06CF0(), v14) ? (v36 = v3 == 3) : (v36 = 0), !v36 || v31))
        {
          if (v9 || ((sub_1C9A06CF0(), v14) ? (v37 = v3 == 4) : (v37 = 0), !v37 || v31))
          {
            if (v9 || (v7 == 0x80000000 ? (v38 = v3 == 5) : (v38 = 0), !v38 || v31))
            {
              sub_1C9A067DC();
              if (!v14)
              {
                return;
              }
            }

            else
            {
              sub_1C9A067DC();
              if (!v14)
              {
                return;
              }
            }
          }

          else
          {
            sub_1C9A067DC();
            if (!v14)
            {
              return;
            }
          }
        }

        else
        {
          sub_1C9A067DC();
          if (!v14)
          {
            return;
          }
        }
      }

      sub_1C9A067C8();
      return;
    default:
      if ((a2[3] & 0xF0000000) == 0)
      {
        sub_1C99F4D74();
      }

      return;
  }
}

uint64_t sub_1C99F8FF4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B6E616265 && a2 == 0xE500000000000000;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x80000001C9ADE410 == a2;
    if (v6 || (sub_1C9A93B18() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x80000001C9ADB3D0 == a2;
      if (v7 || (sub_1C9A93B18() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000011 && 0x80000001C9ADE430 == a2;
        if (v8 || (sub_1C9A93B18() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000013 && 0x80000001C9ADE450 == a2;
          if (v9 || (sub_1C9A93B18() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000017 && 0x80000001C9ADE470 == a2;
            if (v10 || (sub_1C9A93B18() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x7379654B70616DLL && a2 == 0xE700000000000000;
              if (v11 || (sub_1C9A93B18() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x65646F4D74723565 && a2 == 0xE90000000000006CLL;
                if (v12 || (sub_1C9A93B18() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x654B7463656C6573 && a2 == 0xE900000000000079;
                  if (v13 || (sub_1C9A93B18() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x654B6E6769737361 && a2 == 0xE900000000000079;
                    if (v14 || (sub_1C9A93B18() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x6563696C73 && a2 == 0xE500000000000000;
                      if (v15 || (sub_1C9A93B18() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x6E657474616C66 && a2 == 0xE700000000000000;
                        if (v16 || (sub_1C9A93B18() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x667542656772656DLL && a2 == 0xEC00000073726566;
                          if (v17 || (sub_1C9A93B18() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000011 && 0x80000001C9ADE490 == a2;
                            if (v18 || (sub_1C9A93B18() & 1) != 0)
                            {

                              return 13;
                            }

                            else if (a1 == 0xD00000000000001ALL && 0x80000001C9ADE4B0 == a2)
                            {

                              return 14;
                            }

                            else
                            {
                              v20 = sub_1C9A93B18();

                              if (v20)
                              {
                                return 14;
                              }

                              else
                              {
                                return 15;
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C99F946C(char a1)
{
  result = 0x6B6E616265;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0xD000000000000017;
      break;
    case 6:
      result = 0x7379654B70616DLL;
      break;
    case 7:
      result = 0x65646F4D74723565;
      break;
    case 8:
      v3 = 0x7463656C6573;
      goto LABEL_17;
    case 9:
      v3 = 0x6E6769737361;
LABEL_17:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x654B000000000000;
      break;
    case 10:
      result = 0x6563696C73;
      break;
    case 11:
      result = 0x6E657474616C66;
      break;
    case 12:
      result = 0x667542656772656DLL;
      break;
    case 13:
      result = 0xD000000000000011;
      break;
    case 14:
      result = 0xD00000000000001ALL;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C99F9614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C97AEB94();
  a19 = v23;
  a20 = v24;
  v25 = v20;
  v27 = v26;
  v173 = sub_1C97A2CEC(&qword_1EC3D1948, &qword_1C9ACADD8);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C97AC02C();
  v172 = v29;
  v171 = sub_1C97A2CEC(&qword_1EC3D1950, &qword_1C9ACADE0);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v30);
  sub_1C97AC02C();
  v170 = v31;
  v32 = sub_1C97A2CEC(&qword_1EC3D1958, &qword_1C9ACADE8);
  sub_1C97ABF78(v32, &v169);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C97AC02C();
  sub_1C97ABFB4(v34);
  v35 = sub_1C97A2CEC(&qword_1EC3D1960, &qword_1C9ACADF0);
  sub_1C97ABF78(v35, &v167);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C97AC02C();
  sub_1C97ABFB4(v37);
  v169 = sub_1C97A2CEC(&qword_1EC3D1968, &qword_1C9ACADF8);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v38);
  sub_1C97AC02C();
  v168 = v39;
  v167 = sub_1C97A2CEC(&qword_1EC3D1970, &qword_1C9ACAE00);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v40);
  sub_1C97AC02C();
  v166 = v41;
  v165 = sub_1C97A2CEC(&qword_1EC3D1978, &qword_1C9ACAE08);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v42);
  sub_1C97AC02C();
  v164 = v43;
  v163 = sub_1C97A2CEC(&qword_1EC3D1980, &qword_1C9ACAE10);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v44);
  sub_1C97AC02C();
  sub_1C97ABFB4(v45);
  v46 = sub_1C97A2CEC(&qword_1EC3D1988, &qword_1C9ACAE18);
  sub_1C97ABF78(v46, &a16);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v47);
  sub_1C97AC02C();
  sub_1C97ABFB4(v48);
  v49 = sub_1C97A2CEC(&qword_1EC3D1990, &qword_1C9ACAE20);
  sub_1C97ABF78(v49, &v172);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v50);
  sub_1C97AC02C();
  sub_1C97ABFB4(v51);
  v52 = sub_1C97A2CEC(&qword_1EC3D1998, &qword_1C9ACAE28);
  sub_1C97ABF78(v52, v175);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v53);
  sub_1C97AC02C();
  sub_1C97ABFB4(v54);
  v55 = sub_1C97A2CEC(&qword_1EC3D19A0, &qword_1C9ACAE30);
  sub_1C97ABF78(v55, &v176);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v56);
  sub_1C97AC02C();
  sub_1C97ABFB4(v57);
  v58 = sub_1C97A2CEC(&qword_1EC3D19A8, &qword_1C9ACAE38);
  sub_1C97ABF78(v58, &a13);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v59);
  sub_1C98550DC();
  v60 = sub_1C97A2CEC(&qword_1EC3D19B0, &qword_1C9ACAE40);
  sub_1C97ABF78(v60, v180);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v61);
  sub_1C97AC02C();
  sub_1C97ABFB4(v62);
  v63 = sub_1C97A2CEC(&qword_1EC3D19B8, &qword_1C9ACAE48);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v64);
  sub_1C97AEA4C();
  v175[1] = sub_1C97A2CEC(&qword_1EC3D19C0, &unk_1C9ACAE50);
  sub_1C97AE9C8();
  v174 = v65;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v66);
  sub_1C97E86E4();
  sub_1C98CA9DC(v27);
  sub_1C9A02768();
  v175[0] = v22;
  sub_1C9A93DD8();
  v68 = *v25;
  v67 = v25[1];
  v70 = v25[2];
  v69 = v25[3];
  v71 = v25[4];
  v72 = v25[5];
  v73 = *(v25 + 12);
  switch(v69 >> 28)
  {
    case 1u:
      sub_1C9A06ABC(6);
      v101 = sub_1C9A02CFC();
      v81 = v160;
      sub_1C9A06760(&type metadata for SNPipelineModelRecipe.Stage.MapKeysCodingKeys, &v176, v102, v103, v101);
      v176 = v73;
      sub_1C9A03434();
      v63 = v161;
      sub_1C9A06A10(&v176, v104, v105, &unk_1F494CF10);
      goto LABEL_10;
    case 2u:
      v86 = v67;
      sub_1C9A06ABC(7);
      sub_1C9A02C54();
      sub_1C9A93988();
      v176 = v73;
      v177 = v86;
      v178 = v70;
      LOBYTE(v179) = v69;
      sub_1C9A033E0();
      v63 = v163;
      sub_1C9A93A18();
      sub_1C97DAA58();
      v88 = v162;
      goto LABEL_11;
    case 3u:
      v89 = v67;
      sub_1C9A06ABC(8);
      v90 = sub_1C9A02BAC();
      v81 = v164;
      sub_1C9A06760(&type metadata for SNPipelineModelRecipe.Stage.SelectKeyCodingKeys, &v176, v91, v92, v90);
      v176 = v73;
      v177 = v89;
      sub_1C9A0338C();
      v63 = v165;
      sub_1C9A06A10(&v176, v93, v94, &unk_1F494CE60);
      goto LABEL_10;
    case 4u:
      v79 = v67;
      sub_1C9A06ABC(9);
      v80 = sub_1C9A02B04();
      v81 = v166;
      sub_1C9A06760(&type metadata for SNPipelineModelRecipe.Stage.AssignKeyCodingKeys, &v176, v82, v83, v80);
      v176 = v73;
      v177 = v79;
      sub_1C9A03338();
      v63 = v167;
      sub_1C9A06A10(&v176, v84, v85, &unk_1F494CDE0);
      goto LABEL_10;
    case 5u:
      v106 = v67;
      sub_1C9A06ABC(10);
      v107 = sub_1C9A02A5C();
      v81 = v168;
      sub_1C9A06760(&type metadata for SNPipelineModelRecipe.Stage.SliceCodingKeys, &v176, v108, v109, v107);
      v176 = v73;
      v177 = v106;
      sub_1C9A032E4();
      v63 = v169;
      sub_1C9A06A10(&v176, v110, v111, &unk_1F494CD60);
      goto LABEL_10;
    case 6u:
      sub_1C9A06ABC(13);
      v112 = sub_1C9A02864();
      v81 = v170;
      sub_1C9A06760(&type metadata for SNPipelineModelRecipe.Stage.LabelDoubleScoresCodingKeys, &v176, v113, v114, v112);
      v176 = v73;
      sub_1C9A031E8();
      v63 = v171;
      sub_1C9A06A10(&v176, v115, v116, &unk_1F494CCE0);
      goto LABEL_10;
    case 7u:
      v95 = v67;
      sub_1C9A06ABC(14);
      v96 = sub_1C9A027BC();
      v81 = v172;
      sub_1C9A06760(&type metadata for SNPipelineModelRecipe.Stage.SoundActionsPostProcessingCodingKeys, &v176, v97, v98, v96);
      v176 = v73;
      v177 = v95;
      sub_1C9A03194();
      v63 = v173;
      sub_1C9A06A10(&v176, v99, v100, &unk_1F494CCB8);
      goto LABEL_10;
    case 8u:
      if (v73 || (sub_1C9A06B94(), !v123) || v117 | v118 | v71 | v72)
      {
        if (v73 || ((sub_1C9A06B94(), v123) ? (v123 = v122 == 1) : (v123 = 0), !v123 || v121))
        {
          if (v73 || ((sub_1C9A06B94(), v123) ? (v129 = v128 == 2) : (v129 = 0), !v129 || v127))
          {
            if (v73 || ((sub_1C9A06B94(), v123) ? (v135 = v134 == 3) : (v135 = 0), !v135 || v133))
            {
              if (v73 || ((sub_1C9A06B94(), v123) ? (v141 = v140 == 4) : (v141 = 0), !v141 || v139))
              {
                if (v73 || ((sub_1C9A06B94(), v123) ? (v147 = v146 == 5) : (v147 = 0), !v147 || v145))
                {
                  LOBYTE(v176) = 12;
                  v151 = sub_1C9A0290C();
                  v81 = v155;
                  sub_1C9A06760(&type metadata for SNPipelineModelRecipe.Stage.MergeBuffersCodingKeys, &v176, v152, v153, v151);
                  sub_1C9A0323C();
                  sub_1C9A06880();
                }

                else
                {
                  LOBYTE(v176) = 11;
                  v148 = sub_1C9A029B4();
                  v81 = v154;
                  sub_1C9A06760(&type metadata for SNPipelineModelRecipe.Stage.FlattenCodingKeys, &v176, v149, v150, v148);
                  sub_1C9A03290();
                  sub_1C9A06880();
                }
              }

              else
              {
                LOBYTE(v176) = 5;
                v142 = sub_1C9A02DA4();
                v81 = v156;
                sub_1C9A06760(&type metadata for SNPipelineModelRecipe.Stage.FloatArrayToDoubleArrayCodingKeys, &v176, v143, v144, v142);
                sub_1C9A03488();
                sub_1C9A06880();
              }
            }

            else
            {
              LOBYTE(v176) = 4;
              v136 = sub_1C9A02E4C();
              v81 = v157;
              sub_1C9A06760(&type metadata for SNPipelineModelRecipe.Stage.FloatArrayFromBytesCodingKeys, &v176, v137, v138, v136);
              sub_1C9A034DC();
              sub_1C9A06880();
            }
          }

          else
          {
            LOBYTE(v176) = 3;
            v130 = sub_1C9A02EF4();
            v81 = v158;
            sub_1C9A06760(&type metadata for SNPipelineModelRecipe.Stage.FloatArrayToBytesCodingKeys, &v176, v131, v132, v130);
            sub_1C9A03530();
            sub_1C9A06880();
          }
        }

        else
        {
          LOBYTE(v176) = 1;
          v124 = sub_1C9A03044();
          v81 = v159;
          sub_1C9A06760(&type metadata for SNPipelineModelRecipe.Stage.FloatArrayToDataCodingKeys, &v176, v125, v126, v124);
          sub_1C9A035D8();
          sub_1C9A06880();
        }

LABEL_10:
        sub_1C97DAA58();
        v88 = v81;
LABEL_11:
        v87(v88, v63);
        v77 = sub_1C9871794();
LABEL_12:
        v78(v77);
      }

      else
      {
        LOBYTE(v176) = 0;
        sub_1C9A030EC();
        v119 = v175[0];
        sub_1C9A93988();
        sub_1C9A0362C();
        sub_1C9A93A18();
        sub_1C97DAA58();
        v120(v21, v63);
        (*(v174 + 8))(v119);
      }

      sub_1C97AEB5C();
      return;
    default:
      v172 = v67;
      v173 = v69 & 0xFFFFFFFF0FFFFFFFLL;
      LOBYTE(v176) = 2;
      v74 = v68;
      sub_1C9A02F9C();
      sub_1C9A93988();
      v176 = v74;
      v177 = v172;
      v178 = v70;
      v179 = v173;
      v180[0] = v71;
      v180[1] = v72;
      v181 = v73;
      sub_1C9A03584();
      sub_1C9A93A18();
      sub_1C97DAA58();
      v75 = sub_1C9871794();
      v76(v75);
      v77 = sub_1C97A7890();
      goto LABEL_12;
  }
}

void sub_1C99FA3FC(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = *(v1 + 12);
  switch(v5 >> 28)
  {
    case 1u:
      MEMORY[0x1CCA91980](6);
      sub_1C98B7720();
      sub_1C9A06AF8();

      sub_1C984AA08(v14, v15);
      return;
    case 2u:
      MEMORY[0x1CCA91980](7);
      sub_1C98B7720();
      sub_1C9A92528();
      v11 = sub_1C9871794();
      sub_1C984AA08(v11, v12);
      sub_1C9A93CE8();
      break;
    case 3u:
      v10 = 8;
      goto LABEL_6;
    case 4u:
      v10 = 9;
LABEL_6:
      MEMORY[0x1CCA91980](v10);
      sub_1C98B7720();
      sub_1C9A06AF8();

      sub_1C9A92528();
      return;
    case 5u:
      MEMORY[0x1CCA91980](10);
      MEMORY[0x1CCA91980](v2);
      goto LABEL_14;
    case 6u:
      MEMORY[0x1CCA91980](13);
      sub_1C98B7720();
      sub_1C9A06AF8();

      sub_1C97C7EF4();
      return;
    case 7u:
      MEMORY[0x1CCA91980](14);
      sub_1C98B7720();
      sub_1C97C7F50();
LABEL_14:
      v17 = v3;
      goto LABEL_36;
    case 8u:
      if (v8)
      {
        v19 = 0;
      }

      else
      {
        v19 = v5 == 0x80000000;
      }

      if (v19 && (v4 | v3 | v2 | v6 | v7) == 0)
      {
        v17 = 0;
      }

      else if (!v8 && ((sub_1C9A06C30(), v19) ? (v22 = v2 == 1) : (v22 = 0), v22 ? (v23 = v21 == 0) : (v23 = 0), v23))
      {
        v17 = 1;
      }

      else if (!v8 && ((sub_1C9A06C30(), v19) ? (v25 = v2 == 2) : (v25 = 0), v25 ? (v26 = v24 == 0) : (v26 = 0), v26))
      {
        v17 = 3;
      }

      else if (v8 || ((sub_1C9A06C30(), v19) ? (v28 = v2 == 3) : (v28 = 0), !v28 || v27))
      {
        if (v8 || ((sub_1C9A06C30(), v19) ? (v30 = v2 == 4) : (v30 = 0), !v30 || v29))
        {
          if (v8 || ((sub_1C9A06C30(), v19) ? (v32 = v2 == 5) : (v32 = 0), !v32 || v31))
          {
            v17 = 12;
          }

          else
          {
            v17 = 11;
          }
        }

        else
        {
          v17 = 5;
        }
      }

      else
      {
        v17 = 4;
      }

LABEL_36:
      MEMORY[0x1CCA91980](v17);
      break;
    default:
      MEMORY[0x1CCA91980](2);
      v33[0] = v2;
      v33[1] = v3;
      v33[2] = v4;
      v33[3] = v5 & 0xFFFFFFFF0FFFFFFFLL;
      v33[4] = v6;
      v33[5] = v7;
      v34 = v8;
      sub_1C99F4EE8(v33, a1);
      break;
  }

  sub_1C9A06AF8();
}

uint64_t sub_1C99FA740(uint64_t a1)
{
  sub_1C97BE32C(a1);
  sub_1C99FA3FC(v2);
  return sub_1C9A93D18();
}

void sub_1C99FA778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C97AEB94();
  a19 = v24;
  a20 = v25;
  a10 = v21;
  v27 = v26;
  v186 = v28;
  v29 = sub_1C97A2CEC(&qword_1EC3D17D0, &qword_1C9ACAD50);
  sub_1C97ABF78(v29, &a17);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v30);
  sub_1C97AC02C();
  v185 = v31;
  v32 = sub_1C97A2CEC(&qword_1EC3D17D8, &qword_1C9ACAD58);
  sub_1C97ABF78(v32, &a15);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C97AC02C();
  v184 = v34;
  v35 = sub_1C97A2CEC(&qword_1EC3D17E0, &qword_1C9ACAD60);
  sub_1C97ABF78(v35, &a13);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C97AC02C();
  v183 = v37;
  v38 = sub_1C97A2CEC(&qword_1EC3D17E8, &qword_1C9ACAD68);
  sub_1C97ABF78(v38, &a11);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v39);
  sub_1C97AC02C();
  v182 = v40;
  v41 = sub_1C97A2CEC(&qword_1EC3D17F0, &qword_1C9ACAD70);
  sub_1C97ABF78(v41, &a9);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v42);
  sub_1C97AC02C();
  v181 = v43;
  v44 = sub_1C97A2CEC(&qword_1EC3D17F8, &qword_1C9ACAD78);
  sub_1C97ABF78(v44, &v195);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v45);
  sub_1C97AC02C();
  v189 = v46;
  v47 = sub_1C97A2CEC(&qword_1EC3D1800, &qword_1C9ACAD80);
  sub_1C97ABF78(v47, v194);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v48);
  sub_1C97AC02C();
  v188 = v49;
  v50 = sub_1C97A2CEC(&qword_1EC3D1808, &qword_1C9ACAD88);
  sub_1C97ABF78(v50, &v193);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v51);
  sub_1C97AC02C();
  v187 = v52;
  v53 = sub_1C97A2CEC(&qword_1EC3D1810, &qword_1C9ACAD90);
  sub_1C97ABF78(v53, &v191);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v54);
  sub_1C97AC02C();
  v180 = v55;
  v56 = sub_1C97A2CEC(&qword_1EC3D1818, &qword_1C9ACAD98);
  sub_1C97ABF78(v56, &v189);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v57);
  sub_1C97AC02C();
  v179 = v58;
  v59 = sub_1C97A2CEC(&qword_1EC3D1820, &qword_1C9ACADA0);
  sub_1C97ABF78(v59, &v187);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v60);
  sub_1C97AC02C();
  v178 = v61;
  v62 = sub_1C97A2CEC(&qword_1EC3D1828, &qword_1C9ACADA8);
  sub_1C97ABF78(v62, &v185);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v63);
  sub_1C97AC02C();
  v177 = v64;
  v65 = sub_1C97A2CEC(&qword_1EC3D1830, &qword_1C9ACADB0);
  sub_1C97ABF78(v65, &v183);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v66);
  sub_1C97AC02C();
  sub_1C97ABFB4(v67);
  v68 = sub_1C97A2CEC(&qword_1EC3D1838, &qword_1C9ACADB8);
  sub_1C97ABF78(v68, &v181);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v69);
  sub_1C97AEA4C();
  v70 = sub_1C97A2CEC(&qword_1EC3D1840, &qword_1C9ACADC0);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v71);
  sub_1C9945F4C();
  v72 = sub_1C97A2CEC(&qword_1EC3D1848, &unk_1C9ACADC8);
  sub_1C97AE9C8();
  v74 = v73;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v75);
  sub_1C97E86E4();
  v190 = v27;
  sub_1C98CA9DC(v27);
  sub_1C9A02768();
  v76 = a10;
  sub_1C9A93DB8();
  if (v76)
  {
    goto LABEL_9;
  }

  v167 = v20;
  v166 = v70;
  v168 = v22;
  v78 = v187;
  v77 = v188;
  v79 = v189;
  a10 = v74;
  v80 = v23;
  sub_1C9A93958();
  sub_1C98EE524();
  if (v82 == v83 >> 1)
  {
LABEL_8:
    v97 = sub_1C9A93648();
    sub_1C97A7A80(v97);
    v99 = v98;
    sub_1C97A2CEC(&qword_1EC3C6F20, &qword_1C9AA0D80);
    *v99 = &unk_1F494C0F0;
    sub_1C9A93868();
    sub_1C9A93638();
    (*(*(v97 - 8) + 104))(v99, *MEMORY[0x1E69E6AF8], v97);
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_1C9A06BD4();
    v100(v80, v72);
LABEL_9:
    sub_1C97A592C(v190);
LABEL_10:
    sub_1C97AEB5C();
    return;
  }

  if (v82 < (v83 >> 1))
  {
    v84 = v23;
    v165 = *(v81 + v82);
    sub_1C98EE520();
    v86 = v85;
    v88 = v87;
    swift_unknownObjectRelease();
    if (v86 == v88 >> 1)
    {
      v89 = v23;
      switch(v165)
      {
        case 1:
          LOBYTE(v191) = 1;
          sub_1C9A03044();
          v78 = v168;
          sub_1C9A06784(&type metadata for SNPipelineModelRecipe.Stage.FloatArrayToDataCodingKeys, &v191);
          sub_1C9A067F0();
          sub_1C9A03098();
          v90 = v169;
          sub_1C9A067A8();
          sub_1C9A938F8();
          sub_1C9A06968();
          sub_1C9A068E4();
          v140 = sub_1C9A06738();
          v141(v140);
          v142 = sub_1C9A067B8();
          v143(v142);
          sub_1C9A06720();
          v139 = 0x80000000;
          v95 = 1;
          break;
        case 2:
          LOBYTE(v191) = 2;
          sub_1C9A02F9C();
          sub_1C9A0684C(&type metadata for SNPipelineModelRecipe.Stage.LogMelSpectrogramCodingKeys, &v191);
          v101 = sub_1C9A02FF0();
          sub_1C9A06D38(&unk_1F494CFB0, v102, v103, v104, v101);
          sub_1C9A068E4();
          v125 = sub_1C991A5DC();
          v126(v125);
          sub_1C9A06BD4();
          v127(v23, v72);
          v95 = v191;
          v90 = v192;
          v77 = v193;
          v88 = v194[1];
          v84 = v194[2];
          v78 = v195;
          v139 = v194[0] & 0xFFFFFFFF00000001;
          v89 = v190;
          break;
        case 3:
          LOBYTE(v191) = 3;
          sub_1C9A02EF4();
          v78 = v177;
          sub_1C9A06784(&type metadata for SNPipelineModelRecipe.Stage.FloatArrayToBytesCodingKeys, &v191);
          sub_1C9A067F0();
          sub_1C9A02F48();
          v90 = v170;
          sub_1C9A067A8();
          sub_1C9A938F8();
          sub_1C9A06968();
          sub_1C9A068E4();
          v128 = sub_1C9A06738();
          v129(v128);
          v130 = sub_1C9A067B8();
          v131(v130);
          sub_1C9A06720();
          v139 = 0x80000000;
          v95 = 2;
          break;
        case 4:
          LOBYTE(v191) = 4;
          sub_1C9A02E4C();
          v78 = v178;
          sub_1C9A06784(&type metadata for SNPipelineModelRecipe.Stage.FloatArrayFromBytesCodingKeys, &v191);
          sub_1C9A067F0();
          sub_1C9A02EA0();
          v90 = v171;
          sub_1C9A067A8();
          sub_1C9A938F8();
          sub_1C9A06968();
          sub_1C9A068E4();
          v113 = sub_1C9A06738();
          v114(v113);
          v115 = sub_1C9A067B8();
          v116(v115);
          sub_1C9A06720();
          v139 = 0x80000000;
          v95 = 3;
          break;
        case 5:
          LOBYTE(v191) = 5;
          sub_1C9A02DA4();
          v78 = v179;
          sub_1C9A06784(&type metadata for SNPipelineModelRecipe.Stage.FloatArrayToDoubleArrayCodingKeys, &v191);
          sub_1C9A067F0();
          sub_1C9A02DF8();
          v90 = v172;
          sub_1C9A067A8();
          sub_1C9A938F8();
          sub_1C9A06968();
          sub_1C9A068E4();
          v144 = sub_1C9A06738();
          v145(v144);
          v146 = sub_1C9A067B8();
          v147(v146);
          sub_1C9A06720();
          v139 = 0x80000000;
          v95 = 4;
          break;
        case 6:
          LOBYTE(v191) = 6;
          sub_1C9A02CFC();
          v78 = v180;
          sub_1C9A06784(&type metadata for SNPipelineModelRecipe.Stage.MapKeysCodingKeys, &v191);
          sub_1C9A067F0();
          sub_1C9A02D50();
          v90 = v173;
          sub_1C9A067A8();
          sub_1C9A938F8();
          sub_1C9A06968();
          sub_1C9A068E4();
          v152 = sub_1C9A06738();
          v153(v152);
          v154 = sub_1C9A067B8();
          v155(v154);
          sub_1C9A06720();
          v95 = v191;
          v139 = 0x10000000;
          break;
        case 7:
          LOBYTE(v191) = 7;
          sub_1C9A02C54();
          sub_1C9A06784(&type metadata for SNPipelineModelRecipe.Stage.E5rtModelCodingKeys, &v191);
          sub_1C9A067F0();
          sub_1C9A02CA8();
          sub_1C9A067A8();
          sub_1C9A938F8();
          sub_1C9A06968();
          sub_1C9A068E4();
          v132 = sub_1C9A06738();
          v133(v132);
          v134 = sub_1C9A067B8();
          v135(v134);
          v88 = 0;
          v84 = 0;
          v78 = 0;
          v95 = v191;
          v90 = v192;
          v77 = v193;
          v139 = LOBYTE(v194[0]) | 0x20000000;
          break;
        case 8:
          LOBYTE(v191) = 8;
          sub_1C9A02BAC();
          v78 = v77;
          sub_1C9A0684C(&type metadata for SNPipelineModelRecipe.Stage.SelectKeyCodingKeys, &v191);
          sub_1C9A067F0();
          sub_1C9A02C00();
          sub_1C9A067A8();
          sub_1C9A938F8();
          sub_1C9A06968();
          sub_1C9A068E4();
          v160 = sub_1C9A06738();
          v161(v160);
          v162 = sub_1C9A067B8();
          v163(v162);
          sub_1C9A0674C();
          v95 = v191;
          v90 = v192;
          v139 = 805306368;
          break;
        case 9:
          LOBYTE(v191) = 9;
          sub_1C9A02B04();
          v78 = v79;
          sub_1C9A0684C(&type metadata for SNPipelineModelRecipe.Stage.AssignKeyCodingKeys, &v191);
          sub_1C9A067F0();
          sub_1C9A02B58();
          sub_1C9A067A8();
          sub_1C9A938F8();
          sub_1C9A06968();
          sub_1C9A068E4();
          v121 = sub_1C9A06738();
          v122(v121);
          v123 = sub_1C9A067B8();
          v124(v123);
          sub_1C9A0674C();
          v95 = v191;
          v90 = v192;
          v139 = 0x40000000;
          break;
        case 10:
          LOBYTE(v191) = 10;
          sub_1C9A02A5C();
          v78 = v181;
          sub_1C9A06784(&type metadata for SNPipelineModelRecipe.Stage.SliceCodingKeys, &v191);
          sub_1C9A067F0();
          sub_1C9A02AB0();
          sub_1C9A067A8();
          sub_1C9A938F8();
          sub_1C9A06968();
          sub_1C9A068E4();
          v156 = sub_1C9A06738();
          v157(v156);
          v158 = sub_1C9A067B8();
          v159(v158);
          sub_1C9A0674C();
          v95 = v191;
          v90 = v192;
          v139 = 1342177280;
          break;
        case 11:
          LOBYTE(v191) = 11;
          sub_1C9A029B4();
          v78 = v182;
          sub_1C9A06784(&type metadata for SNPipelineModelRecipe.Stage.FlattenCodingKeys, &v191);
          sub_1C9A067F0();
          sub_1C9A02A08();
          v90 = v174;
          sub_1C9A067A8();
          sub_1C9A938F8();
          sub_1C9A06968();
          sub_1C9A068E4();
          v109 = sub_1C9A06738();
          v110(v109);
          v111 = sub_1C9A067B8();
          v112(v111);
          sub_1C9A06720();
          v139 = 0x80000000;
          v95 = 5;
          break;
        case 12:
          LOBYTE(v191) = 12;
          sub_1C9A0290C();
          v78 = v183;
          sub_1C9A06784(&type metadata for SNPipelineModelRecipe.Stage.MergeBuffersCodingKeys, &v191);
          sub_1C9A067F0();
          sub_1C9A02960();
          v90 = v175;
          sub_1C9A067A8();
          sub_1C9A938F8();
          sub_1C9A06968();
          sub_1C9A068E4();
          v117 = sub_1C9A06738();
          v118(v117);
          v119 = sub_1C9A067B8();
          v120(v119);
          sub_1C9A06720();
          v139 = 0x80000000;
          v95 = 6;
          break;
        case 13:
          LOBYTE(v191) = 13;
          sub_1C9A02864();
          v78 = v184;
          sub_1C9A06784(&type metadata for SNPipelineModelRecipe.Stage.LabelDoubleScoresCodingKeys, &v191);
          sub_1C9A067F0();
          sub_1C9A028B8();
          v90 = v176;
          sub_1C9A067A8();
          sub_1C9A938F8();
          sub_1C9A06968();
          sub_1C9A068E4();
          v148 = sub_1C9A06738();
          v149(v148);
          v150 = sub_1C9A067B8();
          v151(v150);
          sub_1C9A06720();
          v95 = v191;
          v139 = 1610612736;
          break;
        case 14:
          LOBYTE(v191) = 14;
          sub_1C9A027BC();
          v78 = v185;
          sub_1C9A06784(&type metadata for SNPipelineModelRecipe.Stage.SoundActionsPostProcessingCodingKeys, &v191);
          sub_1C9A067F0();
          sub_1C9A02810();
          sub_1C9A067A8();
          sub_1C9A938F8();
          sub_1C9A06968();
          sub_1C9A068E4();
          v105 = sub_1C9A06738();
          v106(v105);
          v107 = sub_1C9A067B8();
          v108(v107);
          sub_1C9A0674C();
          v95 = v191;
          v90 = v192;
          v139 = 1879048192;
          break;
        default:
          LOBYTE(v191) = 0;
          sub_1C9A030EC();
          v90 = v167;
          sub_1C9A0684C(&type metadata for SNPipelineModelRecipe.Stage.EbankCodingKeys, &v191);
          sub_1C9A067F0();
          v91 = sub_1C9A03140();
          v77 = v166;
          sub_1C9A06D38(&unk_1F494CC40, v92, v93, v94, v91);
          v95 = 0;
          v96 = a10;
          sub_1C9A068E4();
          v136 = sub_1C991A5DC();
          v137(v136);
          v138 = *(v96 + 8);
          v88 = v96 + 8;
          v138(v23, v72);
          sub_1C9A06720();
          v139 = 0x80000000;
          break;
      }

      sub_1C97A592C(v89);
      v164 = v186;
      *v186 = v95;
      v164[1] = v90;
      v164[2] = v77;
      v164[3] = v139;
      v164[4] = v88;
      v164[5] = v84;
      *(v164 + 12) = v78;
      goto LABEL_10;
    }

    v80 = v23;
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_1C99FBB5C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x736567617473 && a2 == 0xE600000000000000)
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

void sub_1C99FBBE4(uint64_t a1, uint64_t a2)
{
  sub_1C9A06D98();
  sub_1C9A06C20();
  sub_1C97A2CEC(&qword_1EC3D17B8, &qword_1C9ACAD48);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C98550DC();
  sub_1C98CA9DC(v2);
  v4 = sub_1C9A025FC();
  sub_1C9A06B14(&type metadata for SNPipelineModelRecipe.CodingKeys, v5, v4);
  sub_1C97A2CEC(&qword_1EC3D17A0, &qword_1C9ACAD40);
  v6 = sub_1C9A026A4(&unk_1EC3D17C0);
  sub_1C9A06974(v6, v7);
  v8 = sub_1C9A06A84();
  v9(v8);
  sub_1C9A06DAC();
}

uint64_t sub_1C99FBD10(uint64_t a1)
{
  v2 = sub_1C9A06B54(a1);
  v10 = sub_1C9A06C48(v2, v3, v4, v5, v6, v7, v8, v9, v12, v13);
  v1(v10);
  return sub_1C9A93D18();
}

void sub_1C99FBD4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C9A06D98();
  sub_1C9A06C3C();
  sub_1C97A2CEC(&qword_1EC3D1790, &qword_1C9ACAD38);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C97FB2C8();
  sub_1C9A068C0();
  v6 = sub_1C9A025FC();
  sub_1C98CA998(&type metadata for SNPipelineModelRecipe.CodingKeys, v7, v6);
  if (!v4)
  {
    sub_1C97A2CEC(&qword_1EC3D17A0, &qword_1C9ACAD40);
    v8 = sub_1C9A026A4(&unk_1EC3D17A8);
    sub_1C9A06900(v8, v9);
    v10 = sub_1C9A0686C();
    v11(v10);
  }

  sub_1C97A592C(v3);
  sub_1C9A06C00();
  sub_1C9A06DAC();
}

double sub_1C99FBE88@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C99F6FDC(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t sub_1C99FBF14(uint64_t a1)
{
  v2 = sub_1C9A05638();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99FBF50(uint64_t a1)
{
  v2 = sub_1C9A05638();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99FBFD0(uint64_t a1)
{
  v2 = sub_1C9A055E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99FC00C(uint64_t a1)
{
  v2 = sub_1C9A055E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99FC08C(uint64_t a1)
{
  v2 = sub_1C9A05590();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99FC0C8(uint64_t a1)
{
  v2 = sub_1C9A05590();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99FC14C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C99F744C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C99FC178(uint64_t a1)
{
  v2 = sub_1C9A05378();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99FC1B4(uint64_t a1)
{
  v2 = sub_1C9A05378();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C99FC1F0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_1C99F75E8(a1, a2, a3);
  if (!v4)
  {
    *a4 = v6;
  }
}

uint64_t sub_1C99FC2B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C99F777C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C99FC2DC(uint64_t a1)
{
  v2 = sub_1C9A05324();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99FC318(uint64_t a1)
{
  v2 = sub_1C9A05324();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99FC3D0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  sub_1C9A93CC8();
  sub_1C99F7A90(v6, v1, v2, v3, v4);
  return sub_1C9A93D18();
}

uint64_t sub_1C99FC458(uint64_t a1)
{
  v2 = sub_1C9A052D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99FC494(uint64_t a1)
{
  v2 = sub_1C9A052D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99FC55C(uint64_t a1)
{
  v2 = sub_1C9A0527C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99FC598(uint64_t a1)
{
  v2 = sub_1C9A0527C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C99FC618(void *a1@<X8>)
{
  sub_1C99F7F58();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
  }
}

uint64_t sub_1C99FC6A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C99F8094(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C99FC6CC(uint64_t a1)
{
  v2 = sub_1C9A05228();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99FC708(uint64_t a1)
{
  v2 = sub_1C9A05228();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C99FC744(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_1C99F8334(a1, a2, a3);
  if (!v4)
  {
    *a4 = v6;
    a4[1] = v7;
  }
}

uint64_t sub_1C99FC7B0(uint64_t a1)
{
  v2 = sub_1C9A05484();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99FC7EC(uint64_t a1)
{
  v2 = sub_1C9A05484();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99FC870@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C99F855C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C99FC89C(uint64_t a1)
{
  v2 = sub_1C9A051D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99FC8D8(uint64_t a1)
{
  v2 = sub_1C9A051D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C99FC914(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_1C99F8774(a1, a2, a3);
  if (!v4)
  {
    *a4 = v6;
  }
}

uint64_t sub_1C99FC9BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C99F88A4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C99FC9E8(uint64_t a1)
{
  v2 = sub_1C9A0512C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99FCA24(uint64_t a1)
{
  v2 = sub_1C9A0512C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C99FCA60(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_1C99F8AA8(a1, a2, a3);
  if (!v4)
  {
    *a4 = v6;
    a4[1] = v7;
  }
}

uint64_t sub_1C99FCAB0(uint64_t a1)
{
  v2 = sub_1C9A02B04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99FCAEC(uint64_t a1)
{
  v2 = sub_1C9A02B04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99FCB30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C99F8FF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C99FCB58@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C99F9464();
  *a1 = result;
  return result;
}

uint64_t sub_1C99FCB80(uint64_t a1)
{
  v2 = sub_1C9A02768();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99FCBBC(uint64_t a1)
{
  v2 = sub_1C9A02768();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99FCBF8(uint64_t a1)
{
  v2 = sub_1C9A02C54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99FCC34(uint64_t a1)
{
  v2 = sub_1C9A02C54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99FCC70(uint64_t a1)
{
  v2 = sub_1C9A030EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99FCCAC(uint64_t a1)
{
  v2 = sub_1C9A030EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99FCCE8(uint64_t a1)
{
  v2 = sub_1C9A029B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99FCD24(uint64_t a1)
{
  v2 = sub_1C9A029B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99FCD60(uint64_t a1)
{
  v2 = sub_1C9A02E4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99FCD9C(uint64_t a1)
{
  v2 = sub_1C9A02E4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99FCDD8(uint64_t a1)
{
  v2 = sub_1C9A02EF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99FCE14(uint64_t a1)
{
  v2 = sub_1C9A02EF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99FCE50(uint64_t a1)
{
  v2 = sub_1C9A03044();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99FCE8C(uint64_t a1)
{
  v2 = sub_1C9A03044();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99FCEC8(uint64_t a1)
{
  v2 = sub_1C9A02DA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99FCF04(uint64_t a1)
{
  v2 = sub_1C9A02DA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99FCF40(uint64_t a1)
{
  v2 = sub_1C9A02864();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99FCF7C(uint64_t a1)
{
  v2 = sub_1C9A02864();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99FCFB8(uint64_t a1)
{
  v2 = sub_1C9A02F9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99FCFF4(uint64_t a1)
{
  v2 = sub_1C9A02F9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99FD030(uint64_t a1)
{
  v2 = sub_1C9A02CFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99FD06C(uint64_t a1)
{
  v2 = sub_1C9A02CFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99FD0A8(uint64_t a1)
{
  v2 = sub_1C9A0290C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99FD0E4(uint64_t a1)
{
  v2 = sub_1C9A0290C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99FD120(uint64_t a1)
{
  v2 = sub_1C9A02BAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99FD15C(uint64_t a1)
{
  v2 = sub_1C9A02BAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99FD198(uint64_t a1)
{
  v2 = sub_1C9A02A5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99FD1D4(uint64_t a1)
{
  v2 = sub_1C9A02A5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99FD210(uint64_t a1)
{
  v2 = sub_1C9A027BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99FD24C(uint64_t a1)
{
  v2 = sub_1C9A027BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1C99FD288@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  sub_1C99FA778(a1, a2, a3, a4, a5, a6, a7, a8, v12, v13, v15, v16, v18, v19, v21, v22, v24, v25, vars0, vars8);
  if (!v9)
  {
    *a9 = v14;
    *(a9 + 16) = v17;
    result = *&v20;
    *(a9 + 32) = v20;
    *(a9 + 48) = v23;
  }

  return result;
}

uint64_t sub_1C99FD310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_1C9A93CC8();
  a4(v6);
  return sub_1C9A93D18();
}

uint64_t sub_1C99FD35C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C99FBB5C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C99FD388(uint64_t a1)
{
  v2 = sub_1C9A025FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99FD3C4(uint64_t a1)
{
  v2 = sub_1C9A025FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C99FD400(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_1C99FBD4C(a1, a2, a3);
  if (!v4)
  {
    *a4 = v6;
  }
}

uint64_t sub_1C99FD498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = sub_1C9A93CC8();
  v13 = sub_1C9A06C48(v5, v6, v7, v8, v9, v10, v11, v12, v15, v16);
  a4(v13);
  return sub_1C9A93D18();
}

uint64_t sub_1C99FD504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_1C9A93CC8();
  a4(v8, v6);
  return sub_1C9A93D18();
}

uint64_t sub_1C99FD550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[2] = a5;
  v8[3] = a6;
  v8[4] = a7;
  v8[5] = a3;
  v8[6] = a4;
  return sub_1C99F437C(a2, sub_1C9A01ED8, v8, a1);
}

void sub_1C99FD5A0(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>, uint64_t a7@<X5>, uint64_t a8@<X6>)
{
  sub_1C99FD5D8(a2, *a1, a4, a5, a6, a7, a8);
  if (!v8)
  {
    *a3 = v10;
  }
}

void sub_1C99FD5D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = *a1;
  v12 = *(a1 + 8);
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  v15 = *(a1 + 25);
  v16 = v15 | ((*(a1 + 29) | (*(a1 + 31) << 16)) << 32);
  v17 = *(a1 + 32);
  v18 = *(a1 + 40);
  v19 = *(a1 + 48);
  switch((v15 >> 20) & 0xF)
  {
    case 1uLL:
      sub_1C99FEAF0();
      break;
    case 2uLL:
      sub_1C99FED5C(v11, v12, v13, v14 & 1, a2, a3, a4, a5, a6, a7, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, vars0);
      break;
    case 3uLL:
      sub_1C99FF4B4();
      break;
    case 4uLL:
      sub_1C99FF6F4();
      break;
    case 5uLL:
      sub_1C99FF910();
      break;
    case 6uLL:
      sub_1C99FFF9C();
      break;
    case 7uLL:
      sub_1C9A00214();
      break;
    case 8uLL:
      v20 = v14 | (v16 << 8);
      v21 = v13 | v12;
      if (!v19 && (v20 == 0x80000000 ? (v22 = (v21 | v11 | v17 | v18) == 0) : (v22 = 0), v22))
      {
        sub_1C99FD7F4();
      }

      else
      {
        v23 = v21 | v17 | v18;
        if (!v19 && ((sub_1C9A06D14(), v22) ? (v24 = v11 == 1) : (v24 = 0), v24 ? (v25 = v23 == 0) : (v25 = 0), v25))
        {
          sub_1C99FDB44();
        }

        else if (!v19 && ((sub_1C9A06D14(), v22) ? (v26 = v11 == 2) : (v26 = 0), v26 ? (v27 = v23 == 0) : (v27 = 0), v27))
        {
          sub_1C99FE3BC();
        }

        else if (!v19 && ((sub_1C9A06D14(), v22) ? (v28 = v11 == 3) : (v28 = 0), v28 ? (v29 = v23 == 0) : (v29 = 0), v29))
        {
          sub_1C99FE5E8();
        }

        else if (!v19 && ((sub_1C9A06D14(), v22) ? (v30 = v11 == 4) : (v30 = 0), v30 ? (v31 = v23 == 0) : (v31 = 0), v31))
        {
          sub_1C99FE824();
        }

        else if (!v19 && (v20 == 0x80000000 ? (v32 = v11 == 5) : (v32 = 0), v32 ? (v33 = v23 == 0) : (v33 = 0), v33))
        {
          sub_1C99FDD80();
        }

        else
        {
          sub_1C99FFB50();
        }
      }

      break;
    default:
      sub_1C99FDFE4();
      break;
  }
}

void sub_1C99FD7F4()
{
  sub_1C97BE460();
  v1 = sub_1C97A2CEC(&qword_1EC3D15D8, &qword_1C9ACA800);
  sub_1C97DA940();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C97FB2C8();
  sub_1C97A2CEC(&qword_1EC3D15E0, &qword_1C9ACA808);
  sub_1C97DA940();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C98550DC();
  v25 = sub_1C97A2CEC(&qword_1EC3D15E8, &unk_1C9ACA810);
  sub_1C97AE9C8();
  v24 = v4;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C97AC02C();
  v23 = v6;
  v7 = sub_1C9971264();
  sub_1C97A2CEC(v7, v8);
  sub_1C97A2CEC(&qword_1EC3D15F0, &unk_1C9ACA820);
  sub_1C97DA9B0();
  sub_1C9A0227C(v9);
  sub_1C9A0695C();
  sub_1C9A06A98();
  sub_1C9A92048();
  v10 = (v0 + *(v1 + 52));
  *v10 = sub_1C991B428;
  v10[1] = 0;
  v11 = (v0 + *(v1 + 56));
  *v11 = sub_1C9A02044;
  v11[1] = 0;
  sub_1C97AA878();
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1C9A066E4;
  *(v12 + 24) = 0;
  v13 = sub_1C98B7774();
  sub_1C97A2CEC(v13, v14);
  sub_1C99113F4();
  sub_1C9A0227C(v15);
  sub_1C9A06800();
  sub_1C9A0227C(v16);
  sub_1C9A06CC4();
  sub_1C9A92078();

  v17 = sub_1C97FB300();
  sub_1C993973C(v17, v18);
  sub_1C99113DC();
  sub_1C9A0227C(v19);
  sub_1C9A069B4();
  sub_1C9A91F68();
  v20 = sub_1C98B7720();
  sub_1C993973C(v20, v21);
  sub_1C97E8518();
  sub_1C9A0227C(v22);
  sub_1C9A91F28();
  (*(v24 + 8))(v23, v25);
  sub_1C9A069C0();
  sub_1C97BE478();
}

void sub_1C99FDB44()
{
  sub_1C97BE460();
  v14 = sub_1C97A2CEC(&unk_1EC3CE340, &qword_1C9AB79E0);
  sub_1C97AE9C8();
  v2 = v1;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C98021C4();
  sub_1C97A2CEC(&qword_1EC3D1618, &qword_1C9ACA840);
  sub_1C97AE9C8();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  sub_1C9A0681C();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C9A0694C();
  sub_1C9A06DC0();
  sub_1C97A2CEC(&qword_1EC3C9AA0, &qword_1C9AA0690);
  sub_1C97DA9B0();
  sub_1C9A0227C(v8);
  sub_1C9A06838();
  sub_1C9A92048();
  sub_1C9A06D20();
  sub_1C9A06AA4();
  sub_1C9A91CA8();
  (*(v2 + 8))(v0, v14);
  sub_1C9A06D20();
  sub_1C9A069CC();
  sub_1C9A91CA8();
  v9 = *(v5 + 8);
  v10 = sub_1C98BBB68();
  v9(v10);
  sub_1C99710C8();
  v12 = sub_1C9A0227C(v11);
  sub_1C9A06C78(v12);
  v13 = sub_1C9971360();
  v9(v13);
  sub_1C9A06CE4();
  sub_1C97BE478();
}

void sub_1C99FDD80()
{
  sub_1C97BE460();
  sub_1C97A2CEC(&qword_1EC3D1630, &qword_1C9ACA848);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C98021C4();
  sub_1C97A2CEC(&qword_1EC3D1638, &unk_1C9ACA850);
  sub_1C97DA940();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C97FB2C8();
  v3 = sub_1C9A06BBC();
  sub_1C97A2CEC(v3, v4);
  sub_1C97A2CEC(&unk_1EC3C8690, &qword_1C9AA3B70);
  sub_1C97DA9B0();
  sub_1C9A0227C(v5);
  sub_1C9A06838();
  sub_1C9A92048();
  sub_1C97AA878();
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1C9A00D60;
  *(v6 + 24) = 0;
  sub_1C9A06DC0();
  sub_1C99710C8();
  sub_1C9A0227C(v7);
  sub_1C9A06800();
  sub_1C9A0227C(v8);
  sub_1C9A92078();

  v9 = sub_1C9A06A50();
  v10(v9);
  sub_1C99113DC();
  sub_1C9A0227C(v11);
  sub_1C9A91F28();
  sub_1C993973C(v0, &qword_1EC3D1638);
  sub_1C9A069C0();
  sub_1C97BE478();
}

void sub_1C99FDFE4()
{
  sub_1C97BE460();
  v2 = v1;
  v3 = sub_1C97A2CEC(&qword_1EC3D1670, &qword_1C9ACA870);
  sub_1C97DA940();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C97FB2C8();
  sub_1C97A2CEC(&qword_1EC3D1678, &qword_1C9ACA878);
  sub_1C97DA940();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C98550DC();
  v6 = sub_1C97A2CEC(&qword_1EC3D1680, &qword_1C9ACA880);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C97AC02C();
  v31 = v8;
  v9 = sub_1C9A06BBC();
  sub_1C97A2CEC(v9, v10);
  v11 = sub_1C97A2CEC(&qword_1EC3C9AA0, &qword_1C9AA0690);
  sub_1C97DA9B0();
  sub_1C9A0227C(v12);
  sub_1C9A0695C();
  sub_1C9A06A98();
  sub_1C9A92048();
  v13 = *(v2 + 32);
  v14 = *(v2 + 36);
  if (__CFADD__(v14, v13))
  {
    __break(1u);
  }

  else
  {
    v30 = v6;
    v15 = *(v2 + 28);
    v16 = sub_1C97A2CEC(&qword_1EC3D1688, &qword_1C9ACA888);
    *(v0 + v16[15]) = (v14 + v13);
    *(v0 + v16[16]) = v15;
    *(v0 + v16[17]) = v11;
    v17 = swift_allocObject();
    *(v17 + 16) = *v2;
    *(v17 + 28) = *(v2 + 12);
    *(v17 + 44) = v15;
    *(v17 + 48) = v13;
    *(v17 + 52) = v14;
    *(v17 + 56) = *(v2 + 40);
    *(v17 + 64) = *(v2 + 48);
    v18 = (v0 + *(v3 + 52));
    *v18 = sub_1C97AE3B8;
    v18[1] = v17;
    v19 = (v0 + *(v3 + 56));
    *v19 = sub_1C9A020F4;
    v19[1] = 0;
    sub_1C97AA878();
    v20 = swift_allocObject();
    *(v20 + 16) = sub_1C9A066E4;
    *(v20 + 24) = 0;
    v21 = sub_1C98B7774();
    sub_1C97A2CEC(v21, v22);
    sub_1C99113F4();
    sub_1C9A0227C(v23);
    sub_1C9A06800();
    sub_1C9A0227C(v24);
    sub_1C9A06CC4();
    sub_1C9A92078();

    sub_1C993973C(v0, &qword_1EC3D1670);
    sub_1C99113DC();
    sub_1C9A0227C(v25);
    sub_1C9A069B4();
    sub_1C9A91F68();
    v26 = sub_1C98B7720();
    sub_1C993973C(v26, v27);
    sub_1C97E8518();
    sub_1C9A0227C(v28);
    sub_1C9A91F28();
    sub_1C9A06CB8();
    v29(v31, v30);
    sub_1C9A069C0();
    sub_1C97BE478();
  }
}

void sub_1C99FE3BC()
{
  sub_1C97BE460();
  sub_1C97A2CEC(&qword_1EC3D16A8, &qword_1C9ACA890);
  sub_1C97AE9C8();
  v1 = v0;
  MEMORY[0x1EEE9AC00](v2);
  sub_1C9A0681C();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C9A0694C();
  sub_1C97A2CEC(&qword_1EC3D1618, &qword_1C9ACA840);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C98021C4();
  sub_1C9A06DC0();
  sub_1C97A2CEC(&qword_1EC3D16B0, &qword_1C9ACA898);
  sub_1C97DA9B0();
  sub_1C9A0227C(v5);
  sub_1C9A0695C();
  sub_1C9A06AA4();
  sub_1C9A92048();
  sub_1C9A069CC();
  sub_1C9A91CA8();
  v6 = *(v1 + 8);
  v7 = sub_1C98BBB68();
  v6(v7);
  sub_1C9A068A4();
  sub_1C9A91CA8();
  v8 = sub_1C9971360();
  v6(v8);
  sub_1C99710C8();
  v10 = sub_1C9A0227C(v9);
  sub_1C9A06B34(v10);
  v11 = sub_1C9A06A50();
  v12(v11);
  sub_1C9A069C0();
  sub_1C97BE478();
}

void sub_1C99FE5E8()
{
  sub_1C97BE460();
  v14 = sub_1C97A2CEC(&qword_1EC3D16A8, &qword_1C9ACA890);
  sub_1C97AE9C8();
  v2 = v1;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C98021C4();
  sub_1C97A2CEC(&qword_1EC3D1618, &qword_1C9ACA840);
  sub_1C97AE9C8();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  sub_1C9A0681C();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C9A0694C();
  sub_1C9A06DC0();
  sub_1C97A2CEC(&qword_1EC3D16B0, &qword_1C9ACA898);
  sub_1C97DA9B0();
  sub_1C9A0227C(v8);
  sub_1C9A06838();
  sub_1C9A92048();
  sub_1C9A06D20();
  sub_1C9A06AA4();
  sub_1C9A91CA8();
  (*(v2 + 8))(v0, v14);
  sub_1C9A06D20();
  sub_1C9A069CC();
  sub_1C9A91CA8();
  v9 = *(v5 + 8);
  v10 = sub_1C98BBB68();
  v9(v10);
  sub_1C99710C8();
  v12 = sub_1C9A0227C(v11);
  sub_1C9A06C78(v12);
  v13 = sub_1C9971360();
  v9(v13);
  sub_1C9A06CE4();
  sub_1C97BE478();
}

void sub_1C99FE824()
{
  sub_1C97BE460();
  v16 = sub_1C97A2CEC(&unk_1EC3CE340, &qword_1C9AB79E0);
  sub_1C97AE9C8();
  v3 = v2;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C98021C4();
  sub_1C97A2CEC(&qword_1EC3D16C0, &qword_1C9ACA8A8);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C97E86E4();
  v15 = sub_1C97A2CEC(&qword_1EC3D1618, &qword_1C9ACA840);
  sub_1C97AE9C8();
  v7 = v6;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C97FB2D8();
  v9 = sub_1C9A06BBC();
  sub_1C97A2CEC(v9, v10);
  sub_1C97A2CEC(&qword_1EC3C9AA0, &qword_1C9AA0690);
  sub_1C97DA9B0();
  sub_1C9A0227C(v11);
  sub_1C9A06838();
  sub_1C9A92048();
  sub_1C97A2CEC(&qword_1EC3C8290, &qword_1C9AA2920);
  sub_1C9A06AA4();
  sub_1C9A91CA8();
  (*(v3 + 8))(v0, v16);
  sub_1C9A069B4();
  sub_1C9A06C94();
  sub_1C9A91CA8();
  v12 = sub_1C98BBB68();
  v13(v12);
  sub_1C99710C8();
  sub_1C9A0227C(v14);
  sub_1C9A91F28();
  (*(v7 + 8))(v1, v15);
  sub_1C9A069C0();
  sub_1C97BE478();
}

void sub_1C99FEAF0()
{
  sub_1C97BE460();
  v15 = v1;
  v2 = sub_1C97A2CEC(&qword_1EC3CE380, &qword_1C9ABC1D0);
  sub_1C97AE9C8();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  sub_1C9A06BA0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C9A0694C();
  sub_1C97A2CEC(&qword_1EC3D1618, &qword_1C9ACA840);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C98021C4();
  sub_1C97A2CEC(&unk_1EC3CC2B0, &unk_1C9ABC1C0);
  sub_1C97A2CEC(&qword_1EC3C6330, qword_1C9A9BBC0);
  sub_1C97DA9B0();
  sub_1C9A0227C(v8);
  sub_1C9A0695C();
  sub_1C9A06C94();
  sub_1C9A92048();
  sub_1C97F07FC();
  *(swift_allocObject() + 16) = v15;

  sub_1C9A91C98();

  v9 = *(v4 + 8);
  v9(v0, v2);
  sub_1C9A068A4();
  sub_1C9A91CA8();
  v10 = sub_1C9971360();
  (v9)(v10);
  sub_1C99710C8();
  v12 = sub_1C9A0227C(v11);
  sub_1C9A06B34(v12);
  v13 = sub_1C9A06A50();
  v14(v13);
  sub_1C9A069C0();
  sub_1C97BE478();
}

void sub_1C99FED5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  sub_1C97AEB94();
  v70 = v24;
  v60 = sub_1C97A2CEC(&qword_1EC3CE380, &qword_1C9ABC1D0);
  sub_1C97AE9C8();
  v58 = v25;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v26);
  sub_1C9945F6C();
  v61 = sub_1C97A2CEC(&qword_1EC3CE388, &qword_1C9ABC1D8);
  sub_1C97AE9C8();
  v59 = v27;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C97E86E4();
  v64 = sub_1C97A2CEC(&qword_1EC3CE390, &qword_1C9ABC1E0);
  sub_1C97DA940();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C97AC02C();
  v63 = v30;
  sub_1C97A2CEC(&qword_1EC3CE398, &qword_1C9ABC1E8);
  sub_1C97AE9C8();
  v66 = v32;
  v67 = v31;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C97AC02C();
  v62 = v34;
  sub_1C97A2CEC(&unk_1EC3CE3A0, &unk_1C9ABC1F0);
  sub_1C97AE9C8();
  v68 = v36;
  v69 = v35;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v37);
  sub_1C97AC02C();
  v65 = v38;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v40);
  sub_1C9945F4C();
  swift_getAssociatedConformanceWitness();
  v41 = sub_1C97FB300();
  v42(v41);
  sub_1C987EBFC();
  v71 = v44;
  if (!v21)
  {
    v72 = v43;
    sub_1C97A2CEC(&unk_1EC3CC2B0, &unk_1C9ABC1C0);
    sub_1C97A2CEC(&qword_1EC3C6330, qword_1C9A9BBC0);
    sub_1C97DA9B0();
    sub_1C9A0227C(v46);
    sub_1C9A06CAC();
    sub_1C9A92048();
    sub_1C97A2CEC(&unk_1EC3CE3B0, &unk_1C9ABC200);
    sub_1C9A06AA4();
    sub_1C9A91C98();
    (*(v58 + 8))(v23, v60);
    sub_1C97A2CEC(qword_1EC3C9850, &unk_1C9AA7D00);
    sub_1C9A06CAC();
    sub_1C9A91C98();
    (*(v59 + 8))(v22, v61);
    sub_1C97AA878();
    v47 = swift_allocObject();
    *(v47 + 16) = v71;
    *(v47 + 24) = v72;
    sub_1C97F07FC();
    v48 = swift_allocObject();
    *(v48 + 16) = v70;
    sub_1C97AA878();
    v49 = swift_allocObject();
    *(v49 + 16) = sub_1C9875D04;
    *(v49 + 24) = v48;
    sub_1C97AA878();
    v50 = swift_allocObject();
    *(v50 + 16) = sub_1C9875D20;
    *(v50 + 24) = v49;
    sub_1C97AA878();
    v51 = swift_allocObject();
    *(v51 + 16) = sub_1C9875CE8;
    *(v51 + 24) = v47;
    v52 = swift_allocObject();
    v52[2] = sub_1C9A01F34;
    v52[3] = 0;
    v52[4] = sub_1C9A021A4;
    v52[5] = v51;
    v52[6] = sub_1C9A0215C;
    v52[7] = v50;
    v53 = swift_allocObject();
    *(v53 + 2) = v71;
    *(v53 + 3) = v72;
    *(v53 + 4) = v70;
    v54 = (v63 + *(v64 + 52));
    *v54 = sub_1C9875D98;
    v54[1] = v53;
    v55 = (v63 + *(v64 + 56));
    *v55 = sub_1C9875D74;
    v55[1] = v52;
    sub_1C99113F4();
    sub_1C9A0227C(v56);
    swift_retain_n();
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    sub_1C9A06AA4();
    sub_1C9A91F68();
    sub_1C993973C(v63, &qword_1EC3CE390);
    sub_1C9A069B4();
    sub_1C9A06A98();
    sub_1C9A91C48();
    (*(v66 + 8))(v62, v67);
    sub_1C97E8518();
    sub_1C9A0227C(v57);
    sub_1C9A91F28();

    (*(v68 + 8))(v65, v69);
  }

  sub_1C9A06CB8();
  v45(a21, AssociatedTypeWitness);
  sub_1C9971578();
  sub_1C97AEB5C();
}

void sub_1C99FF4B4()
{
  sub_1C97BE460();
  v15 = v1;
  v16 = v2;
  sub_1C97A2CEC(&qword_1EC3CE380, &qword_1C9ABC1D0);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C97FB2C8();
  v4 = sub_1C97A2CEC(&qword_1EC3D1618, &qword_1C9ACA840);
  sub_1C97AE9C8();
  v6 = v5;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C98021C4();
  v8 = sub_1C9A06BBC();
  sub_1C97A2CEC(v8, v9);
  sub_1C97A2CEC(&qword_1EC3C6330, qword_1C9A9BBC0);
  sub_1C97DA9B0();
  sub_1C9A0227C(v10);
  sub_1C9A0695C();
  sub_1C9A06A98();
  sub_1C9A92048();
  sub_1C97AA878();
  v11 = swift_allocObject();
  *(v11 + 16) = v15;
  *(v11 + 24) = v16;

  sub_1C9A069B4();
  sub_1C9A91C98();

  v12 = sub_1C9971360();
  v13(v12);
  sub_1C99710C8();
  sub_1C9A0227C(v14);
  sub_1C9A91F28();
  (*(v6 + 8))(v0, v4);
  sub_1C9A069C0();
  sub_1C97BE478();
}

void sub_1C99FF6F4()
{
  sub_1C97BE460();
  v1 = v0;
  v3 = v2;
  sub_1C97A2CEC(&qword_1EC3D16D8, &qword_1C9ACA8C8);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C97FB2C8();
  sub_1C97A2CEC(&qword_1EC3D16E0, &unk_1C9ACA8D0);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C98021C4();
  sub_1C97AA878();
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = v1;

  v7 = sub_1C98B7774();
  sub_1C97A2CEC(v7, v8);
  sub_1C97A2CEC(&qword_1EC3C6330, qword_1C9A9BBC0);
  sub_1C97DA9B0();
  sub_1C9A0227C(v9);
  sub_1C9A0695C();
  sub_1C9A91F68();

  sub_1C9A068A4();
  sub_1C9A91C48();
  v10 = sub_1C9971360();
  v11(v10);
  sub_1C97E8518();
  v13 = sub_1C9A0227C(v12);
  sub_1C9A06B34(v13);
  v14 = sub_1C9A06A50();
  v15(v14);
  sub_1C9A069C0();
  sub_1C97BE478();
}

void sub_1C99FF910()
{
  sub_1C97BE460();
  v14 = v2;
  v4 = v3;
  v5 = sub_1C97A2CEC(&qword_1EC3D16F0, &qword_1C9ACA8E0);
  sub_1C97DA940();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C97FB2D8();
  v7 = sub_1C97A2CEC(&qword_1EC3D16F8, &qword_1C9ACA8E8);
  sub_1C97AE9C8();
  v9 = v8;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C97E86E4();
  sub_1C97A2CEC(&unk_1EC3CC2B0, &unk_1C9ABC1C0);
  v11 = sub_1C97A2CEC(&unk_1EC3C8690, &qword_1C9AA3B70);
  sub_1C97DA9B0();
  sub_1C9A0227C(v12);
  sub_1C9A0695C();
  sub_1C9A06C94();
  sub_1C9A91F68();
  *(v1 + v5[15]) = v4;
  *(v1 + v5[16]) = v14;
  *(v1 + v5[17]) = v11;
  sub_1C9A0227C(&unk_1EC3D1700);
  sub_1C9A069B4();
  sub_1C9A06AA4();
  sub_1C9A91F68();
  sub_1C993973C(v1, &qword_1EC3D16F0);
  sub_1C97E8518();
  sub_1C9A0227C(v13);
  sub_1C9A91F28();
  (*(v9 + 8))(v0, v7);
  sub_1C9A069C0();
  sub_1C97BE478();
}

void sub_1C99FFB50()
{
  sub_1C97BE460();
  sub_1C97A2CEC(&qword_1EC3D1630, &qword_1C9ACA848);
  sub_1C97AE9C8();
  v28 = v5;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C98021C4();
  v22 = sub_1C97A2CEC(&qword_1EC3D1710, &qword_1C9ACA8F0);
  sub_1C97AE9C8();
  v8 = v7;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C97E86E4();
  v24 = sub_1C97A2CEC(&qword_1EC3D1718, &qword_1C9ACA8F8);
  sub_1C97AE9C8();
  v27 = v10;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C9945F6C();
  v23 = sub_1C97A2CEC(&unk_1EC3CD650, &qword_1C9ACA900);
  sub_1C97AE9C8();
  v26 = v12;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C97FB2D8();
  v21 = sub_1C97A2CEC(&qword_1EC3D1618, &qword_1C9ACA840);
  sub_1C97AE9C8();
  v25 = v14;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C9945F4C();
  v16 = sub_1C9971264();
  sub_1C97A2CEC(v16, v17);
  sub_1C97A2CEC(&unk_1EC3C8690, &qword_1C9AA3B70);
  sub_1C97DA9B0();
  sub_1C9A0227C(v18);
  sub_1C9A06838();
  sub_1C9A92048();
  sub_1C97A2CEC(&qword_1EC3D1720, &unk_1C9ACA908);
  sub_1C9A06AA4();
  sub_1C9A91C98();
  sub_1C9A06CB8();
  v19(v1, v28);
  sub_1C9A06CAC();
  sub_1C9A91CA8();
  (*(v8 + 8))(v2, v22);
  sub_1C97A2CEC(&qword_1EC3CD680, &qword_1C9A9D4D0);
  sub_1C9A06C94();
  sub_1C9A91CA8();
  (*(v27 + 8))(v4, v24);
  sub_1C9A069B4();
  sub_1C9A91CA8();
  (*(v26 + 8))(v3, v23);
  sub_1C99710C8();
  sub_1C9A0227C(v20);
  sub_1C9A91F28();
  (*(v25 + 8))(v0, v21);
  sub_1C9A06CE4();
  sub_1C97BE478();
}

void sub_1C99FFF9C()
{
  sub_1C97BE460();
  v17 = v1;
  v18 = sub_1C97A2CEC(&qword_1EC3D16C0, &qword_1C9ACA8A8);
  sub_1C97AE9C8();
  v3 = v2;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C98021C4();
  sub_1C97A2CEC(&qword_1EC3D1618, &qword_1C9ACA840);
  sub_1C97AE9C8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C9A0681C();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C9A0694C();
  v9 = sub_1C9A06BBC();
  sub_1C97A2CEC(v9, v10);
  sub_1C97A2CEC(&qword_1EC3C8290, &qword_1C9AA2920);
  sub_1C97DA9B0();
  sub_1C9A0227C(v11);
  sub_1C9A06838();
  sub_1C9A92048();
  sub_1C97F07FC();
  *(swift_allocObject() + 16) = v17;

  sub_1C9A91C98();

  (*(v3 + 8))(v0, v18);
  sub_1C9A069CC();
  sub_1C9A91CA8();
  v12 = *(v6 + 8);
  v13 = sub_1C98BBB68();
  v12(v13);
  sub_1C99710C8();
  v15 = sub_1C9A0227C(v14);
  sub_1C9A06C78(v15);
  v16 = sub_1C9971360();
  v12(v16);
  sub_1C9A06CE4();
  sub_1C97BE478();
}

void sub_1C9A00214()
{
  sub_1C97BE460();
  v20 = v3;
  v17 = v4;
  v16 = sub_1C97A2CEC(&qword_1EC3D1728, &qword_1C9ACA918);
  sub_1C97AE9C8();
  v6 = v5;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C98550DC();
  v19 = sub_1C97A2CEC(&qword_1EC3D1730, &qword_1C9ACA920);
  sub_1C97AE9C8();
  v9 = v8;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C97FB2D8();
  v18 = sub_1C97A2CEC(&qword_1EC3D1738, &qword_1C9ACA928);
  sub_1C97AE9C8();
  v12 = v11;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C9945F6C();
  sub_1C97A2CEC(&unk_1EC3CC2B0, &unk_1C9ABC1C0);
  sub_1C97A2CEC(&qword_1EC3C82B8, &qword_1C9AA91F0);
  sub_1C97DA9B0();
  sub_1C9A0227C(v14);
  sub_1C9A0695C();
  sub_1C9A92048();
  sub_1C9A01CE0(v17, v20);
  (*(v6 + 8))(v0, v16);
  sub_1C9A0227C(&unk_1EC3D1740);
  sub_1C9A069B4();
  sub_1C9A06CAC();
  sub_1C9A91F68();
  (*(v9 + 8))(v1, v19);
  sub_1C97E8518();
  sub_1C9A0227C(v15);
  sub_1C9A91F28();
  (*(v12 + 8))(v2, v18);
  sub_1C9A069C0();
  sub_1C97BE478();
}

uint64_t sub_1C9A00500@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C97BD360(a1, v8);
  sub_1C97A2CEC(&qword_1EC3D15F0, &unk_1C9ACA820);
  result = swift_dynamicCast();
  if (result)
  {
    v4 = v6;
    *a2 = v5;
    *(a2 + 16) = v4;
    *(a2 + 32) = v7;
  }

  else
  {
    v7 = 0;
    v5 = 0u;
    v6 = 0u;
    sub_1C993973C(&v5, &unk_1EC3D1610);
    sub_1C98066EC();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1C9A005D0@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(*result + 16);
  if (v3 >> 61)
  {
    __break(1u);
  }

  else
  {
    result = sub_1C98FBA38(*result + 32, *result + 32 + 4 * v3);
    a2[3] = MEMORY[0x1E6969080];
    *a2 = result;
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_1C9A00620@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1C97BD360(a1, v5);
  sub_1C97A2CEC(&qword_1EC3C9AA0, &qword_1C9AA0690);
  result = swift_dynamicCast();
  if (result)
  {
    *a2 = v4;
  }

  else
  {
    sub_1C98066EC();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1C9A006C4()
{
  v1 = sub_1C97A2CEC(&qword_1EC3C6750, &unk_1C9A9C740);
  sub_1C97AE9C8();
  v3 = v2;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C97AEA4C();
  sub_1C97A2CEC(&unk_1EC3CC290, &unk_1C9AB2630);
  sub_1C9A0227C(&qword_1EC3C4A50);
  sub_1C9A92658();
  sub_1C97A2CEC(&unk_1EC3CA040, &qword_1C9A9C750);
  sub_1C9A91CE8();
  return (*(v3 + 8))(v0, v1);
}

uint64_t sub_1C9A0081C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v8[2] = a2;
  result = sub_1C99F3FF4(v5, sub_1C9A02140, v8);
  if (!v3)
  {
    v7 = sub_1C99F4454(result);

    *a3 = v7;
  }

  return result;
}

_OWORD *sub_1C9A008A0(_OWORD *a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  sub_1C97E82EC(a3, &v14, &qword_1EC3CBA60, &qword_1C9AB0440);
  v8 = sub_1C98781BC(v14, *(&v14 + 1), a4);
  v10 = v9;

  if (!v10)
  {
    sub_1C97E82EC(a3, &v12, &qword_1EC3CBA60, &qword_1C9AB0440);
    v10 = *(&v12 + 1);
    v8 = v12;
    sub_1C97A592C(v13);
  }

  sub_1C97A592C(v15);
  *&v14 = v8;
  *(&v14 + 1) = v10;
  sub_1C97E82EC(a3, &v12, &qword_1EC3CBA60, &qword_1C9AB0440);

  sub_1C97A2D34(v13, v15);
  v12 = v14;
  v13[0] = v15[0];
  v13[1] = v15[1];
  *a1 = v14;
  return sub_1C97A2D34(v13, a2);
}

uint64_t sub_1C9A009C8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1C97BD360(a1, v7);
  v3 = sub_1C97A2CEC(&qword_1EC3C9AA0, &qword_1C9AA0690);
  result = swift_dynamicCast();
  if (result)
  {
    v5 = v7[5];
    a2[3] = v3;
    a2[4] = &off_1F4948EB8;
    *a2 = v5;
  }

  else
  {
    sub_1C9A02090();
    swift_allocError();
    *v6 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1C9A00AA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C97BD360(a1, v7);
  sub_1C97A2CEC(&qword_1EC3D16B0, &qword_1C9ACA898);
  if (swift_dynamicCast())
  {
    return sub_1C979B054(v5, a2);
  }

  v6 = 0;
  memset(v5, 0, sizeof(v5));
  sub_1C993973C(v5, &unk_1EC3D16B8);
  sub_1C9A02090();
  swift_allocError();
  *v4 = 0;
  return swift_willThrow();
}

uint64_t sub_1C9A00B74(void *a1)
{
  v2 = a1[3];
  v1 = a1[4];
  sub_1C97A5A8C(a1, v2);
  return (*(*(v1 + 8) + 8))(sub_1C9A00BFC, 0, MEMORY[0x1E69E7CA0] + 8, v2);
}

void *sub_1C9A00BFC@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  a3[3] = sub_1C97A2CEC(&qword_1EC3C9AA0, &qword_1C9AA0690);
  if (a1)
  {
    result = sub_1C9A08564(a1, (a2 - a1) / 4);
  }

  else
  {
    result = MEMORY[0x1E69E7CC0];
  }

  *a3 = result;
  return result;
}

void sub_1C9A00C74(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  v4 = *(*result + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v10 = MEMORY[0x1E69E7CC0];
    sub_1C97B7EE8(0, v4, 0);
    v5 = v10;
    v6 = (v3 + 32);
    v7 = *(v10 + 16);
    do
    {
      v8 = *v6;
      v11 = v5;
      v9 = *(v5 + 24);
      if (v7 >= v9 >> 1)
      {
        sub_1C97B7EE8(v9 > 1, v7 + 1, 1);
        v5 = v11;
      }

      *(v5 + 16) = v7 + 1;
      *(v5 + 8 * v7 + 32) = v8;
      ++v6;
      ++v7;
      --v4;
    }

    while (v4);
  }

  *a2 = v5;
}

uint64_t sub_1C9A00D60(void *a1)
{
  v2 = sub_1C97A2CEC(&qword_1EC3D1660, &qword_1C9ACA868);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v7 - v4;
  v7[1] = *a1;
  sub_1C97A2CEC(&unk_1EC3C8690, &qword_1C9AA3B70);
  sub_1C9A0227C(&unk_1EC3D1668);
  sub_1C9A92658();
  sub_1C97A2CEC(&unk_1EC3CA040, &qword_1C9A9C750);
  sub_1C9A91CE8();
  return (*(v3 + 8))(v5, v2);
}

void sub_1C9A00ED0(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  sub_1C97A2CEC(&qword_1EC3D16D0, &qword_1C9ACA8C0);
  v3 = sub_1C9A937E8();
  v4 = 0;
  sub_1C984ACA4();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;
  v30 = v10 + 64;
  if ((v6 & v5) != 0)
  {
    while (1)
    {
      v11 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_8:
      v15 = v11 | (v4 << 6);
      v16 = (*(v2 + 48) + 16 * v15);
      v17 = *v16;
      v18 = v16[1];
      sub_1C97BD360(*(v2 + 56) + 32 * v15, v29);
      sub_1C97BD360(v29, v27);

      sub_1C97A2CEC(&qword_1EC3D16B0, &qword_1C9ACA898);
      if (!swift_dynamicCast())
      {
        break;
      }

      sub_1C97A592C(v29);
      sub_1C979B054(v25, v28);
      *(v30 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v19 = (v3[6] + 16 * v15);
      *v19 = v17;
      v19[1] = v18;
      sub_1C979B054(v28, v3[7] + 40 * v15);
      v20 = v3[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_15;
      }

      v3[2] = v22;
      if (!v7)
      {
        goto LABEL_3;
      }
    }

    v26 = 0;
    memset(v25, 0, sizeof(v25));
    sub_1C993973C(v25, &unk_1EC3D16B8);
    sub_1C9A02090();
    sub_1C97A7A80(&unk_1F494C1A8);
    *v23 = 0;
    swift_willThrow();
    sub_1C97A592C(v29);
  }

  else
  {
LABEL_3:
    v12 = v4;
    while (1)
    {
      v4 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v4 >= v9)
      {
        *a2 = v3;
        return;
      }

      ++v12;
      if (*(v2 + 64 + 8 * v4))
      {
        sub_1C984ACD8();
        v7 = v14 & v13;
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }
}

void sub_1C9A010F4(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v4 = *a1;
  sub_1C97A2CEC(&qword_1EC3CD228, &qword_1C9AB6798);
  v5 = 0;
  v29 = v4 + 64;
  v31 = sub_1C9A937E8();
  v32 = v4;
  sub_1C984ACA4();
  v9 = v8 & v7;
  v11 = (v10 + 63) >> 6;
  v30 = v6 + 8;
  if (v9)
  {
    while (1)
    {
      v39 = v3;
      v12 = __clz(__rbit64(v9));
      v33 = (v9 - 1) & v9;
LABEL_8:
      v16 = v12 | (v5 << 6);
      v17 = (*(v32 + 48) + 16 * v16);
      v18 = v17[1];
      v34 = *v17;
      sub_1C97D9AF8(*(v32 + 56) + 40 * v16, v36);
      v19 = v37;
      v20 = v38;
      sub_1C97A5A8C(v36, v37);
      v21 = *(v20 + 8);
      v22 = *(v21 + 8);

      v23 = v39;
      v22(&v35, sub_1C9A066C4, 0, MEMORY[0x1E6969080], v19, v21);
      v3 = v23;
      sub_1C97A592C(v36);
      v6 = v31;
      *(v30 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v24 = (v31[6] + 16 * v16);
      *v24 = v34;
      v24[1] = v18;
      *(v31[7] + 16 * v16) = v35;
      v25 = v31[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        break;
      }

      v31[2] = v27;
      v9 = v33;
      if (!v33)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v11)
      {
        *a2 = v6;
        return;
      }

      ++v13;
      if (*(v29 + 8 * v5))
      {
        v39 = v3;
        sub_1C984ACD8();
        v33 = v15 & v14;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void *sub_1C9A012EC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  sub_1C97A2CEC(&qword_1EC3CA090, &unk_1C9ACA190);
  result = sub_1C9A937E8();
  v4 = result;
  v5 = 0;
  v6 = 1 << *(v2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v2 + 64);
  v9 = (v6 + 63) >> 6;
  v10 = result + 8;
  v11 = MEMORY[0x1E6969080];
  if (v8)
  {
    while (1)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_10:
      v16 = v12 | (v5 << 6);
      v17 = (*(v2 + 48) + 16 * v16);
      v18 = *v17;
      v19 = v17[1];
      v20 = *(*(v2 + 56) + 16 * v16);
      v28 = v11;
      v26 = v20;
      v27 = v20;
      *(v10 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v21 = (v4[6] + 16 * v16);
      *v21 = v18;
      v21[1] = v19;
      result = sub_1C97A2D34(&v27, (v4[7] + 32 * v16));
      v22 = v4[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        break;
      }

      v4[2] = v24;

      result = sub_1C97CE3DC(v26, *(&v26 + 1));
      if (!v8)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        *a2 = v4;
        return result;
      }

      ++v13;
      if (*(v2 + 64 + 8 * v5))
      {
        sub_1C984ACD8();
        v8 = v15 & v14;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C9A01488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_1C97A2CEC(&qword_1EC3C69E8, &unk_1C9A9D4A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C9A9EDD0;
  *(inited + 32) = a2;
  *(inited + 40) = a3;
  sub_1C97BD360(a1, inited + 48);

  result = sub_1C9A92348();
  *a4 = result;
  return result;
}

uint64_t sub_1C9A0154C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = sub_1C993AF6C(a1, a2);
  a3[3] = sub_1C97A2CEC(v5, v6);
  *a3 = v4;
}

uint64_t *sub_1C9A01594@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v2 = *result;
  v3 = *(*result + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v10 = a2;
    v16 = MEMORY[0x1E69E7CC0];
    result = sub_1C97B8400(0, v3, 0);
    v5 = 0;
    v4 = v16;
    v6 = v2 + 32;
    while (v5 < *(v2 + 16))
    {
      sub_1C97BD360(v6, v14);
      sub_1C97BD360(v14, v13);
      sub_1C97A2CEC(&qword_1EC3CD680, &qword_1C9A9D4D0);
      if (!swift_dynamicCast())
      {
        v12 = 0;
        memset(v11, 0, sizeof(v11));
        sub_1C993973C(v11, &unk_1EC3CD690);
        sub_1C9A02090();
        swift_allocError();
        *v9 = 0;
        swift_willThrow();
        sub_1C97A592C(v14);
      }

      sub_1C97A592C(v14);
      sub_1C979B054(v11, v15);
      v16 = v4;
      v8 = *(v4 + 16);
      v7 = *(v4 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_1C97B8400((v7 > 1), v8 + 1, 1);
        v4 = v16;
      }

      ++v5;
      *(v4 + 16) = v8 + 1;
      result = sub_1C979B054(v15, v4 + 40 * v8 + 32);
      v6 += 32;
      if (v3 == v5)
      {
        a2 = v10;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    *a2 = v4;
  }

  return result;
}

uint64_t *sub_1C9A01760@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X8>)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = *result;
  v3 = *(*result + 16);
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = v2 + 32;
    v8 = 0xC000000000000000;
    v20 = *(*result + 16);
    v21 = *result;
    while (2)
    {
      if (v4 < *(v2 + 16))
      {
        sub_1C97D9AF8(v7, v29);
        v23 = v4 + 1;
        v9 = v30;
        v10 = v31;
        sub_1C97A5A8C(v29, v30);
        v11 = MEMORY[0x1E6969080];
        (*(v10 + 8))(&v25, sub_1C9A066C4, 0, MEMORY[0x1E6969080], v9, v10);
        v12 = v25;
        v13 = v26;
        v27 = v5;
        v28 = v8;
        v24[3] = v11;
        v24[4] = MEMORY[0x1E6969078];
        v24[0] = v25;
        v24[1] = v26;
        v14 = sub_1C97A5A8C(v24, v11);
        v15 = *v14;
        switch(v14[1] >> 62)
        {
          case 1uLL:
            if (v15 >> 32 < v15)
            {
              goto LABEL_20;
            }

            v22 = v6;
            v18 = v15;
            sub_1C97CE3DC(v5, v8);
            sub_1C97CE3DC(v12, v13);
            if (!sub_1C9A91308() || !__OFSUB__(v18, sub_1C9A91338()))
            {
              goto LABEL_14;
            }

            goto LABEL_23;
          case 2uLL:
            v22 = v6;
            v16 = *(v15 + 16);
            v17 = *(v15 + 24);
            sub_1C97CE3DC(v5, v8);
            sub_1C97CE3DC(v12, v13);
            if (sub_1C9A91308() && __OFSUB__(v16, sub_1C9A91338()))
            {
              goto LABEL_22;
            }

            if (__OFSUB__(v17, v16))
            {
              goto LABEL_21;
            }

LABEL_14:
            sub_1C9A91328();
            sub_1C9A915C8();
            sub_1C97A5978(v12, v13);
            sub_1C97A5978(v5, v8);
            v3 = v20;
            v2 = v21;
            v6 = v22;
LABEL_15:
            sub_1C97A592C(v24);
            result = sub_1C97A592C(v29);
            v5 = v27;
            v8 = v28;
            v7 += 40;
            ++v4;
            if (v3 == v23)
            {
              goto LABEL_18;
            }

            continue;
          default:
            sub_1C9A915C8();
            goto LABEL_15;
        }
      }

      break;
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  v5 = 0;
  v8 = 0xC000000000000000;
LABEL_18:
  *a2 = v5;
  a2[1] = v8;
  return result;
}

uint64_t sub_1C9A01A90@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  a2[3] = MEMORY[0x1E6969080];
  a2[4] = &off_1F4948F20;
  *a2 = v3;
  a2[1] = v2;
  return sub_1C97CE3DC(v3, v2);
}

uint64_t sub_1C9A01AB4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = sub_1C97A5A8C(a1, v3);
  a2[3] = v3;
  v5 = sub_1C981CDF0(a2);
  v6 = *(*(v3 - 8) + 16);

  return v6(v5, v4, v3);
}

uint64_t sub_1C9A01B5C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  if (*(*a1 + 16) == *(a2 + 16))
  {

    v9 = sub_1C992C2F8(a2, v4, v6, v7, v8);
    result = sub_1C97A2CEC(&qword_1EC3C82B8, &qword_1C9AA91F0);
    a3[3] = result;
    *a3 = v9;
  }

  else
  {
    sub_1C9A02090();
    swift_allocError();
    *v11 = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1C9A01C3C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1C97BD360(a1, v8);
  v3 = sub_1C9871794();
  sub_1C97A2CEC(v3, v4);
  result = swift_dynamicCast();
  if (result)
  {
    *a2 = v7;
  }

  else
  {
    sub_1C9A02090();
    sub_1C97A7A80(&unk_1F494C1A8);
    *v6 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1C9A01CE0(uint64_t a1, uint64_t a2)
{
  v5 = sub_1C97A2CEC(&qword_1EC3D1750, &unk_1C9ACA930);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v14 - v6;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = sub_1C97A2CEC(&qword_1EC3D1728, &qword_1C9ACA918);
  (*(*(v10 - 8) + 16))(v7, v2, v10);
  v11 = &v7[*(v5 + 52)];
  *v11 = sub_1C9A02260;
  *(v11 + 1) = v9;
  v12 = &v7[*(v5 + 56)];
  *v12 = sub_1C9A02244;
  *(v12 + 1) = v8;
  sub_1C9A0227C(&unk_1EC3D1758);
  swift_bridgeObjectRetain_n();
  sub_1C9A91F38();
  return sub_1C993973C(v7, &qword_1EC3D1750);
}

uint64_t sub_1C9A01EC0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  a2[3] = MEMORY[0x1E69E6158];
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1C9A01EFC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1C99F5D58(*a1, a1[1], a2);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v6;
  }

  return result;
}

uint64_t sub_1C9A01F34@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1C99F59C8(*a1, *a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1C9A01F68(uint64_t *a1, void *a2, void *a3, uint64_t (*a4)(void))
{
  result = a4(*a3);
  if (!v4)
  {
    *a2 = v8;
    *a1 = result;
  }

  return result;
}

uint64_t sub_1C9A01FB0@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(*a1);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

void *sub_1C9A01FE8@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *(*a3)(uint64_t *__return_ptr, uint64_t *)@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t *__return_ptr, uint64_t *)@<X4>, uint64_t a6@<X5>, void (*a7)(void **, uint64_t *, uint64_t *)@<X6>, void *a8@<X8>)
{
  result = sub_1C99F58E0(*a1, a2, a3, a4, a5, a6, a7);
  if (!v8)
  {
    *a8 = result;
  }

  return result;
}

uint64_t sub_1C9A02044@<X0>(uint64_t *a1@<X8>, void *a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C99F51B0(a2, a3);
  if (!v3)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_1C9A02090()
{
  result = qword_1EC3D1628;
  if (!qword_1EC3D1628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1628);
  }

  return result;
}

unsigned int *sub_1C9A020F4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, unsigned int **a3@<X8>)
{
  result = sub_1C97E37B8(*a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1C9A0215C(uint64_t *a1, void *a2, void *a3)
{
  result = (*(v3 + 16))(*a3);
  if (!v4)
  {
    *a2 = v8;
    *a1 = result;
  }

  return result;
}

uint64_t sub_1C9A021A4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1C9A02200@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C986802C(a1);
  *a2 = result;
  return result;
}

unint64_t sub_1C9A0227C(uint64_t a1)
{
  result = sub_1C97BE38C(a1);
  if (!result)
  {
    v4 = sub_1C993AF6C(0, v3);
    sub_1C97AA4F0(v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C9A022DC()
{
  result = qword_1EC3D1768;
  if (!qword_1EC3D1768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1768);
  }

  return result;
}

unint64_t sub_1C9A02330()
{
  result = qword_1EC3D1770;
  if (!qword_1EC3D1770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1770);
  }

  return result;
}

uint64_t sub_1C9A02384(_DWORD *a1)
{
  v1 = a1[6];
  if (v1 >= 0)
  {
    return v1 >> 28;
  }

  else
  {
    return (*a1 + 8);
  }
}

__n128 sub_1C9A023A0(uint64_t a1, uint64_t a2)
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

uint64_t sub_1C9A023BC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFF7 && *(a1 + 52))
    {
      v2 = *a1 + 2147483639;
    }

    else if ((((*(a1 + 24) >> 28) & 0x8000000F | (16 * ((*(a1 + 24) >> 1) & 0x7FFFFFF))) ^ 0x7FFFFFFF) >= 0x7FFFFFF7)
    {
      v2 = -1;
    }

    else
    {
      v2 = ((*(a1 + 24) >> 28) & 0x8000000F | (16 * ((*(a1 + 24) >> 1) & 0x7FFFFFF))) ^ 0x7FFFFFFF;
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1C9A02410(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFF7)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 2147483640;
    if (a3 > 0x7FFFFFF7)
    {
      *(result + 52) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFF7)
    {
      *(result + 52) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 2 * ((-a2 >> 4) & 0x7FFFFFF) - (a2 << 28);
      *(result + 32) = 0;
      *(result + 40) = 0;
      *(result + 48) = 0;
    }
  }

  return result;
}

uint64_t sub_1C9A02498(uint64_t result, unsigned int a2)
{
  if (a2 < 8)
  {
    *(result + 24) = *(result + 24) & 0xFFFFFFFF00000001 | (a2 << 28);
  }

  else
  {
    *result = a2 - 8;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0x80000000;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
  }

  return result;
}

unint64_t sub_1C9A024F8()
{
  result = qword_1EC3D1778;
  if (!qword_1EC3D1778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1778);
  }

  return result;
}

unint64_t sub_1C9A02550()
{
  result = qword_1EC3D1780;
  if (!qword_1EC3D1780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1780);
  }

  return result;
}

unint64_t sub_1C9A025A8()
{
  result = qword_1EC3D1788;
  if (!qword_1EC3D1788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1788);
  }

  return result;
}

unint64_t sub_1C9A025FC()
{
  result = qword_1EC3D1798;
  if (!qword_1EC3D1798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1798);
  }

  return result;
}

unint64_t sub_1C9A02650()
{
  result = qword_1EC3D17B0;
  if (!qword_1EC3D17B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D17B0);
  }

  return result;
}

unint64_t sub_1C9A026A4(uint64_t a1)
{
  result = sub_1C97BE38C(a1);
  if (!result)
  {
    sub_1C9A06D2C();
    sub_1C97AA4F0(&qword_1EC3D17A0, &qword_1C9ACAD40);
    v2();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C9A02714()
{
  result = qword_1EC3D17C8;
  if (!qword_1EC3D17C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D17C8);
  }

  return result;
}

unint64_t sub_1C9A02768()
{
  result = qword_1EC3D1850;
  if (!qword_1EC3D1850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1850);
  }

  return result;
}

unint64_t sub_1C9A027BC()
{
  result = qword_1EC3D1858;
  if (!qword_1EC3D1858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1858);
  }

  return result;
}

unint64_t sub_1C9A02810()
{
  result = qword_1EC3D1860;
  if (!qword_1EC3D1860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1860);
  }

  return result;
}

unint64_t sub_1C9A02864()
{
  result = qword_1EC3D1868;
  if (!qword_1EC3D1868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1868);
  }

  return result;
}

unint64_t sub_1C9A028B8()
{
  result = qword_1EC3D1870;
  if (!qword_1EC3D1870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1870);
  }

  return result;
}

unint64_t sub_1C9A0290C()
{
  result = qword_1EC3D1878;
  if (!qword_1EC3D1878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1878);
  }

  return result;
}

unint64_t sub_1C9A02960()
{
  result = qword_1EC3D1880;
  if (!qword_1EC3D1880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1880);
  }

  return result;
}

unint64_t sub_1C9A029B4()
{
  result = qword_1EC3D1888;
  if (!qword_1EC3D1888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1888);
  }

  return result;
}

unint64_t sub_1C9A02A08()
{
  result = qword_1EC3D1890;
  if (!qword_1EC3D1890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1890);
  }

  return result;
}

unint64_t sub_1C9A02A5C()
{
  result = qword_1EC3D1898;
  if (!qword_1EC3D1898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1898);
  }

  return result;
}

unint64_t sub_1C9A02AB0()
{
  result = qword_1EC3D18A0;
  if (!qword_1EC3D18A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D18A0);
  }

  return result;
}

unint64_t sub_1C9A02B04()
{
  result = qword_1EC3D18A8;
  if (!qword_1EC3D18A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D18A8);
  }

  return result;
}

unint64_t sub_1C9A02B58()
{
  result = qword_1EC3D18B0;
  if (!qword_1EC3D18B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D18B0);
  }

  return result;
}

unint64_t sub_1C9A02BAC()
{
  result = qword_1EC3D18B8;
  if (!qword_1EC3D18B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D18B8);
  }

  return result;
}

unint64_t sub_1C9A02C00()
{
  result = qword_1EC3D18C0;
  if (!qword_1EC3D18C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D18C0);
  }

  return result;
}

unint64_t sub_1C9A02C54()
{
  result = qword_1EC3D18C8;
  if (!qword_1EC3D18C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D18C8);
  }

  return result;
}

unint64_t sub_1C9A02CA8()
{
  result = qword_1EC3D18D0;
  if (!qword_1EC3D18D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D18D0);
  }

  return result;
}

unint64_t sub_1C9A02CFC()
{
  result = qword_1EC3D18D8;
  if (!qword_1EC3D18D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D18D8);
  }

  return result;
}

unint64_t sub_1C9A02D50()
{
  result = qword_1EC3D18E0;
  if (!qword_1EC3D18E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D18E0);
  }

  return result;
}

unint64_t sub_1C9A02DA4()
{
  result = qword_1EC3D18E8;
  if (!qword_1EC3D18E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D18E8);
  }

  return result;
}

unint64_t sub_1C9A02DF8()
{
  result = qword_1EC3D18F0;
  if (!qword_1EC3D18F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D18F0);
  }

  return result;
}

unint64_t sub_1C9A02E4C()
{
  result = qword_1EC3D18F8;
  if (!qword_1EC3D18F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D18F8);
  }

  return result;
}

unint64_t sub_1C9A02EA0()
{
  result = qword_1EC3D1900;
  if (!qword_1EC3D1900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1900);
  }

  return result;
}

unint64_t sub_1C9A02EF4()
{
  result = qword_1EC3D1908;
  if (!qword_1EC3D1908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1908);
  }

  return result;
}

unint64_t sub_1C9A02F48()
{
  result = qword_1EC3D1910;
  if (!qword_1EC3D1910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1910);
  }

  return result;
}

unint64_t sub_1C9A02F9C()
{
  result = qword_1EC3D1918;
  if (!qword_1EC3D1918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1918);
  }

  return result;
}

unint64_t sub_1C9A02FF0()
{
  result = qword_1EC3D1920;
  if (!qword_1EC3D1920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1920);
  }

  return result;
}

unint64_t sub_1C9A03044()
{
  result = qword_1EC3D1928;
  if (!qword_1EC3D1928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1928);
  }

  return result;
}

unint64_t sub_1C9A03098()
{
  result = qword_1EC3D1930;
  if (!qword_1EC3D1930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1930);
  }

  return result;
}

unint64_t sub_1C9A030EC()
{
  result = qword_1EC3D1938;
  if (!qword_1EC3D1938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1938);
  }

  return result;
}

unint64_t sub_1C9A03140()
{
  result = qword_1EC3D1940;
  if (!qword_1EC3D1940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1940);
  }

  return result;
}

unint64_t sub_1C9A03194()
{
  result = qword_1EC3D19C8;
  if (!qword_1EC3D19C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D19C8);
  }

  return result;
}

unint64_t sub_1C9A031E8()
{
  result = qword_1EC3D19D0;
  if (!qword_1EC3D19D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D19D0);
  }

  return result;
}

unint64_t sub_1C9A0323C()
{
  result = qword_1EC3D19D8;
  if (!qword_1EC3D19D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D19D8);
  }

  return result;
}

unint64_t sub_1C9A03290()
{
  result = qword_1EC3D19E0;
  if (!qword_1EC3D19E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D19E0);
  }

  return result;
}

unint64_t sub_1C9A032E4()
{
  result = qword_1EC3D19E8;
  if (!qword_1EC3D19E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D19E8);
  }

  return result;
}

unint64_t sub_1C9A03338()
{
  result = qword_1EC3D19F0;
  if (!qword_1EC3D19F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D19F0);
  }

  return result;
}

unint64_t sub_1C9A0338C()
{
  result = qword_1EC3D19F8;
  if (!qword_1EC3D19F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D19F8);
  }

  return result;
}

unint64_t sub_1C9A033E0()
{
  result = qword_1EC3D1A00;
  if (!qword_1EC3D1A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1A00);
  }

  return result;
}

unint64_t sub_1C9A03434()
{
  result = qword_1EC3D1A08;
  if (!qword_1EC3D1A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1A08);
  }

  return result;
}

unint64_t sub_1C9A03488()
{
  result = qword_1EC3D1A10;
  if (!qword_1EC3D1A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1A10);
  }

  return result;
}

unint64_t sub_1C9A034DC()
{
  result = qword_1EC3D1A18;
  if (!qword_1EC3D1A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1A18);
  }

  return result;
}

unint64_t sub_1C9A03530()
{
  result = qword_1EC3D1A20;
  if (!qword_1EC3D1A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1A20);
  }

  return result;
}

unint64_t sub_1C9A03584()
{
  result = qword_1EC3D1A28;
  if (!qword_1EC3D1A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1A28);
  }

  return result;
}

unint64_t sub_1C9A035D8()
{
  result = qword_1EC3D1A30;
  if (!qword_1EC3D1A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1A30);
  }

  return result;
}

unint64_t sub_1C9A0362C()
{
  result = qword_1EC3D1A38;
  if (!qword_1EC3D1A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1A38);
  }

  return result;
}

unint64_t sub_1C9A03680()
{
  result = qword_1EC3D1A48;
  if (!qword_1EC3D1A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1A48);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SNPipelineModelRecipe.Stage.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF2)
  {
    if (a2 + 14 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 14) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 15;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v5 = v6 - 15;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SNPipelineModelRecipe.Stage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C9A039C8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1C9A03A08(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C9A03A80()
{
  result = qword_1EC3D1A58;
  if (!qword_1EC3D1A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1A58);
  }

  return result;
}

unint64_t sub_1C9A03AD8()
{
  result = qword_1EC3D1A60;
  if (!qword_1EC3D1A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1A60);
  }

  return result;
}

unint64_t sub_1C9A03B30()
{
  result = qword_1EC3D1A68;
  if (!qword_1EC3D1A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1A68);
  }

  return result;
}

unint64_t sub_1C9A03B88()
{
  result = qword_1EC3D1A70;
  if (!qword_1EC3D1A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1A70);
  }

  return result;
}

unint64_t sub_1C9A03BE0()
{
  result = qword_1EC3D1A78;
  if (!qword_1EC3D1A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1A78);
  }

  return result;
}

unint64_t sub_1C9A03C38()
{
  result = qword_1EC3D1A80;
  if (!qword_1EC3D1A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1A80);
  }

  return result;
}

unint64_t sub_1C9A03C90()
{
  result = qword_1EC3D1A88;
  if (!qword_1EC3D1A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1A88);
  }

  return result;
}

unint64_t sub_1C9A03CE8()
{
  result = qword_1EC3D1A90;
  if (!qword_1EC3D1A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1A90);
  }

  return result;
}

unint64_t sub_1C9A03D40()
{
  result = qword_1EC3D1A98;
  if (!qword_1EC3D1A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1A98);
  }

  return result;
}

unint64_t sub_1C9A03D98()
{
  result = qword_1EC3D1AA0;
  if (!qword_1EC3D1AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1AA0);
  }

  return result;
}

unint64_t sub_1C9A03DF0()
{
  result = qword_1EC3D1AA8;
  if (!qword_1EC3D1AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1AA8);
  }

  return result;
}

unint64_t sub_1C9A03E48()
{
  result = qword_1EC3D1AB0;
  if (!qword_1EC3D1AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1AB0);
  }

  return result;
}

unint64_t sub_1C9A03EA0()
{
  result = qword_1EC3D1AB8;
  if (!qword_1EC3D1AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1AB8);
  }

  return result;
}

unint64_t sub_1C9A03EF8()
{
  result = qword_1EC3D1AC0;
  if (!qword_1EC3D1AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1AC0);
  }

  return result;
}

unint64_t sub_1C9A03F50()
{
  result = qword_1EC3D1AC8;
  if (!qword_1EC3D1AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1AC8);
  }

  return result;
}

unint64_t sub_1C9A03FA8()
{
  result = qword_1EC3D1AD0;
  if (!qword_1EC3D1AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1AD0);
  }

  return result;
}

unint64_t sub_1C9A04000()
{
  result = qword_1EC3D1AD8;
  if (!qword_1EC3D1AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1AD8);
  }

  return result;
}

unint64_t sub_1C9A04058()
{
  result = qword_1EC3D1AE0;
  if (!qword_1EC3D1AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1AE0);
  }

  return result;
}

unint64_t sub_1C9A040B0()
{
  result = qword_1EC3D1AE8;
  if (!qword_1EC3D1AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1AE8);
  }

  return result;
}

unint64_t sub_1C9A04108()
{
  result = qword_1EC3D1AF0;
  if (!qword_1EC3D1AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1AF0);
  }

  return result;
}

unint64_t sub_1C9A04160()
{
  result = qword_1EC3D1AF8;
  if (!qword_1EC3D1AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1AF8);
  }

  return result;
}

unint64_t sub_1C9A041B8()
{
  result = qword_1EC3D1B00;
  if (!qword_1EC3D1B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1B00);
  }

  return result;
}

unint64_t sub_1C9A04210()
{
  result = qword_1EC3D1B08;
  if (!qword_1EC3D1B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1B08);
  }

  return result;
}

unint64_t sub_1C9A04268()
{
  result = qword_1EC3D1B10;
  if (!qword_1EC3D1B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1B10);
  }

  return result;
}

unint64_t sub_1C9A042C0()
{
  result = qword_1EC3D1B18;
  if (!qword_1EC3D1B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1B18);
  }

  return result;
}

unint64_t sub_1C9A04318()
{
  result = qword_1EC3D1B20;
  if (!qword_1EC3D1B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1B20);
  }

  return result;
}

unint64_t sub_1C9A04370()
{
  result = qword_1EC3D1B28;
  if (!qword_1EC3D1B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1B28);
  }

  return result;
}

unint64_t sub_1C9A043C8()
{
  result = qword_1EC3D1B30;
  if (!qword_1EC3D1B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1B30);
  }

  return result;
}

unint64_t sub_1C9A04420()
{
  result = qword_1EC3D1B38;
  if (!qword_1EC3D1B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1B38);
  }

  return result;
}

unint64_t sub_1C9A04478()
{
  result = qword_1EC3D1B40;
  if (!qword_1EC3D1B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1B40);
  }

  return result;
}

unint64_t sub_1C9A044D0()
{
  result = qword_1EC3D1B48;
  if (!qword_1EC3D1B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1B48);
  }

  return result;
}

unint64_t sub_1C9A04528()
{
  result = qword_1EC3D1B50;
  if (!qword_1EC3D1B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1B50);
  }

  return result;
}

unint64_t sub_1C9A04580()
{
  result = qword_1EC3D1B58;
  if (!qword_1EC3D1B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1B58);
  }

  return result;
}

unint64_t sub_1C9A045D8()
{
  result = qword_1EC3D1B60;
  if (!qword_1EC3D1B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1B60);
  }

  return result;
}

unint64_t sub_1C9A04630()
{
  result = qword_1EC3D1B68;
  if (!qword_1EC3D1B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1B68);
  }

  return result;
}

unint64_t sub_1C9A04688()
{
  result = qword_1EC3D1B70;
  if (!qword_1EC3D1B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1B70);
  }

  return result;
}

unint64_t sub_1C9A046E0()
{
  result = qword_1EC3D1B78;
  if (!qword_1EC3D1B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1B78);
  }

  return result;
}

unint64_t sub_1C9A04738()
{
  result = qword_1EC3D1B80;
  if (!qword_1EC3D1B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1B80);
  }

  return result;
}

unint64_t sub_1C9A04790()
{
  result = qword_1EC3D1B88;
  if (!qword_1EC3D1B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1B88);
  }

  return result;
}

unint64_t sub_1C9A047E8()
{
  result = qword_1EC3D1B90;
  if (!qword_1EC3D1B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1B90);
  }

  return result;
}

unint64_t sub_1C9A04840()
{
  result = qword_1EC3D1B98;
  if (!qword_1EC3D1B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1B98);
  }

  return result;
}

unint64_t sub_1C9A04898()
{
  result = qword_1EC3D1BA0;
  if (!qword_1EC3D1BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1BA0);
  }

  return result;
}

unint64_t sub_1C9A048F0()
{
  result = qword_1EC3D1BA8;
  if (!qword_1EC3D1BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1BA8);
  }

  return result;
}

unint64_t sub_1C9A04948()
{
  result = qword_1EC3D1BB0;
  if (!qword_1EC3D1BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1BB0);
  }

  return result;
}

unint64_t sub_1C9A049A0()
{
  result = qword_1EC3D1BB8;
  if (!qword_1EC3D1BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1BB8);
  }

  return result;
}

unint64_t sub_1C9A049F8()
{
  result = qword_1EC3D1BC0;
  if (!qword_1EC3D1BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1BC0);
  }

  return result;
}

unint64_t sub_1C9A04A50()
{
  result = qword_1EC3D1BC8;
  if (!qword_1EC3D1BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1BC8);
  }

  return result;
}

unint64_t sub_1C9A04AA8()
{
  result = qword_1EC3D1BD0;
  if (!qword_1EC3D1BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1BD0);
  }

  return result;
}

unint64_t sub_1C9A04B00()
{
  result = qword_1EC3D1BD8;
  if (!qword_1EC3D1BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1BD8);
  }

  return result;
}

unint64_t sub_1C9A04B58()
{
  result = qword_1EC3D1BE0;
  if (!qword_1EC3D1BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1BE0);
  }

  return result;
}

unint64_t sub_1C9A04BB0()
{
  result = qword_1EC3D1BE8;
  if (!qword_1EC3D1BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1BE8);
  }

  return result;
}

unint64_t sub_1C9A04C08()
{
  result = qword_1EC3D1BF0;
  if (!qword_1EC3D1BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1BF0);
  }

  return result;
}

unint64_t sub_1C9A04C60()
{
  result = qword_1EC3D1BF8;
  if (!qword_1EC3D1BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1BF8);
  }

  return result;
}

unint64_t sub_1C9A04CB8()
{
  result = qword_1EC3D1C00;
  if (!qword_1EC3D1C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1C00);
  }

  return result;
}

unint64_t sub_1C9A04D10()
{
  result = qword_1EC3D1C08;
  if (!qword_1EC3D1C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1C08);
  }

  return result;
}

unint64_t sub_1C9A04D68()
{
  result = qword_1EC3D1C10;
  if (!qword_1EC3D1C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1C10);
  }

  return result;
}

unint64_t sub_1C9A04DC0()
{
  result = qword_1EC3D1C18;
  if (!qword_1EC3D1C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1C18);
  }

  return result;
}

unint64_t sub_1C9A04E18()
{
  result = qword_1EC3D1C20;
  if (!qword_1EC3D1C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1C20);
  }

  return result;
}

unint64_t sub_1C9A04E70()
{
  result = qword_1EC3D1C28;
  if (!qword_1EC3D1C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1C28);
  }

  return result;
}

unint64_t sub_1C9A04EC8()
{
  result = qword_1EC3D1C30;
  if (!qword_1EC3D1C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1C30);
  }

  return result;
}

unint64_t sub_1C9A04F20()
{
  result = qword_1EC3D1C38;
  if (!qword_1EC3D1C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1C38);
  }

  return result;
}

unint64_t sub_1C9A04F78()
{
  result = qword_1EC3D1C40;
  if (!qword_1EC3D1C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1C40);
  }

  return result;
}

unint64_t sub_1C9A04FD0()
{
  result = qword_1EC3D1C48;
  if (!qword_1EC3D1C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1C48);
  }

  return result;
}

unint64_t sub_1C9A05028()
{
  result = qword_1EC3D1C50;
  if (!qword_1EC3D1C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1C50);
  }

  return result;
}

unint64_t sub_1C9A05080()
{
  result = qword_1EC3D1C58;
  if (!qword_1EC3D1C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1C58);
  }

  return result;
}

unint64_t sub_1C9A050D8()
{
  result = qword_1EC3D1C60;
  if (!qword_1EC3D1C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1C60);
  }

  return result;
}

unint64_t sub_1C9A0512C()
{
  result = qword_1EC3D1C70;
  if (!qword_1EC3D1C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1C70);
  }

  return result;
}

unint64_t sub_1C9A05180()
{
  result = qword_1EC3D1C78;
  if (!qword_1EC3D1C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1C78);
  }

  return result;
}

unint64_t sub_1C9A051D4()
{
  result = qword_1EC3D1C88;
  if (!qword_1EC3D1C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1C88);
  }

  return result;
}

unint64_t sub_1C9A05228()
{
  result = qword_1EC3D1C98;
  if (!qword_1EC3D1C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1C98);
  }

  return result;
}

unint64_t sub_1C9A0527C()
{
  result = qword_1EC3D1CA8;
  if (!qword_1EC3D1CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1CA8);
  }

  return result;
}

unint64_t sub_1C9A052D0()
{
  result = qword_1EC3D1CB8;
  if (!qword_1EC3D1CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1CB8);
  }

  return result;
}

unint64_t sub_1C9A05324()
{
  result = qword_1EC3D1CC8;
  if (!qword_1EC3D1CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1CC8);
  }

  return result;
}

unint64_t sub_1C9A05378()
{
  result = qword_1EC3D1CE0;
  if (!qword_1EC3D1CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1CE0);
  }

  return result;
}

unint64_t sub_1C9A053CC()
{
  result = qword_1EC3D1CF0;
  if (!qword_1EC3D1CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1CF0);
  }

  return result;
}

unint64_t sub_1C9A05420(uint64_t a1)
{
  result = sub_1C97BE38C(a1);
  if (!result)
  {
    sub_1C9A06D2C();
    sub_1C97AA4F0(&qword_1EC3C7BF0, &unk_1C9AA0050);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C9A05484()
{
  result = qword_1EC3D1D08;
  if (!qword_1EC3D1D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1D08);
  }

  return result;
}

unint64_t sub_1C9A054D8()
{
  result = qword_1EC3D1D18;
  if (!qword_1EC3D1D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1D18);
  }

  return result;
}

unint64_t sub_1C9A0552C(uint64_t a1)
{
  result = sub_1C97BE38C(a1);
  if (!result)
  {
    sub_1C9A06D2C();
    sub_1C97AA4F0(&unk_1EC3C7B20, &unk_1C9A9FF90);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C9A05590()
{
  result = qword_1EC3D1D58;
  if (!qword_1EC3D1D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1D58);
  }

  return result;
}

unint64_t sub_1C9A055E4()
{
  result = qword_1EC3D1D68;
  if (!qword_1EC3D1D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1D68);
  }

  return result;
}

unint64_t sub_1C9A05638()
{
  result = qword_1EC3D1D78;
  if (!qword_1EC3D1D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1D78);
  }

  return result;
}

unint64_t sub_1C9A0568C()
{
  result = qword_1EC3D1D88;
  if (!qword_1EC3D1D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1D88);
  }

  return result;
}

unint64_t sub_1C9A056E0()
{
  result = qword_1EC3D1D98;
  if (!qword_1EC3D1D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1D98);
  }

  return result;
}

_BYTE *sub_1C9A057B4(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for SNPipelineModelRecipe.Stages.Slice.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1C9A0599C(_BYTE *result, int a2, int a3)
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