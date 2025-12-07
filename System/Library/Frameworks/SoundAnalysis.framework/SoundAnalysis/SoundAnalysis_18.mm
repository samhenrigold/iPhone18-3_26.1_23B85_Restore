void sub_1C99103E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t), uint64_t a5, uint64_t a6, void (*a7)(__int128 *))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    swift_beginAccess();
    v12 = swift_unknownObjectWeakLoadStrong();
    if (v12)
    {
      v13 = v12;
      v14 = a4(v11, v12, a1);
      v19 = v13;
      v15 = 0;
      v16 = *(v14 + 16);
      for (i = 32; ; i += 56)
      {
        if (v16 == v15)
        {

          goto LABEL_8;
        }

        if (v15 >= *(v14 + 16))
        {
          break;
        }

        v18 = *(v14 + i + 16);
        v20 = *(v14 + i);
        v21 = v18;
        *v22 = *(v14 + i + 32);
        *&v22[16] = *(v14 + i + 48);
        ++v15;
        v23 = 0;
        v22[20] = 0;
        a7(&v20);
        v24[0] = v20;
        v24[1] = v21;
        v25[0] = *v22;
        *(v25 + 13) = *&v22[13];
        sub_1C97DA1E0(v24, &qword_1EC3C7680, &qword_1C9AB3590);
      }

      __break(1u);
    }

    else
    {
LABEL_8:
    }
  }
}

void sub_1C99105D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t), uint64_t a5, uint64_t a6, void (*a7)(_BYTE *))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    swift_beginAccess();
    v12 = swift_unknownObjectWeakLoadStrong();
    if (v12)
    {
      v13 = v12;
      v14 = a4(v11, v12, a1);
      v23 = v13;
      v15 = 0;
      v16 = *(v14 + 16);
      for (i = 32; ; i += 64)
      {
        if (v16 == v15)
        {

          goto LABEL_8;
        }

        if (v15 >= *(v14 + 16))
        {
          break;
        }

        v18 = *(v14 + i);
        v19 = *(v14 + i + 16);
        v20 = *(v14 + i + 48);
        v24[2] = *(v14 + i + 32);
        v24[3] = v20;
        v24[0] = v18;
        v24[1] = v19;
        ++v15;
        v21 = *(v14 + i + 16);
        *__src = *(v14 + i);
        *&__src[16] = v21;
        v22 = *(v14 + i + 48);
        *&__src[32] = *(v14 + i + 32);
        *&__src[48] = v22;
        v25 = 0;
        __src[64] = 0;
        sub_1C97A6844(v24, __dst);
        sub_1C97A6844(v24, __dst);
        a7(__src);
        memcpy(__dst, __src, 0x41uLL);
        sub_1C97DA1E0(__dst, &unk_1EC3C7730, &qword_1C9A9FD40);
        sub_1C9841CB4(v24);
      }

      __break(1u);
    }

    else
    {
LABEL_8:
    }
  }
}

void sub_1C99107D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t), uint64_t a5, uint64_t a6, void (*a7)(id *))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    swift_beginAccess();
    v12 = swift_unknownObjectWeakLoadStrong();
    if (v12)
    {
      v13 = v12;
      v14 = a4(v11, v12, a1);
      v15 = sub_1C97BDEE0();
      for (i = 0; ; ++i)
      {
        if (v15 == i)
        {

          goto LABEL_12;
        }

        if ((v14 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x1CCA912B0](i, v14);
        }

        else
        {
          if (i >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_15;
          }

          v17 = *(v14 + 8 * i + 32);
        }

        if (__OFADD__(i, 1))
        {
          break;
        }

        v19 = v17;
        v20 = 0;
        v18 = v17;
        a7(&v19);
      }

      __break(1u);
LABEL_15:
      __break(1u);
    }

    else
    {
LABEL_12:
    }
  }
}

id sub_1C9910A24@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_1C990FCD0(*a1, *(a1 + 8));
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1C9910AC4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C97E84A0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C9910C04(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double sub_1C9910CB4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v2;
  v5[0] = *(a1 + 32);
  *(v5 + 13) = *(a1 + 45);
  *&result = sub_1C990FD3C(v4, a2).n128_u64[0];
  return result;
}

uint64_t sub_1C9910D00(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v2;
  v5[0] = *(a1 + 32);
  *(v5 + 13) = *(a1 + 45);
  return sub_1C990F4FC(v4, a2);
}

void **sub_1C9910E64@<X0>(_OWORD *a1@<X0>, void **a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, void (*a5)(uint64_t, uint64_t, _DWORD *, char *, uint64_t *, uint64_t, void *, void **, uint64_t, uint64_t, int64_t *, int *, uint64_t *)@<X4>, void (*a6)(void *, void **, char *, uint64_t, uint64_t, int64_t *, int *, uint64_t *)@<X5>, void ***a7@<X8>)
{
  v9 = a1[1];
  v12[0] = *a1;
  v12[1] = v9;
  v10 = a1[3];
  v12[2] = a1[2];
  v12[3] = v10;
  result = sub_1C990EA94(v12, a2, a3, a4, a5, a6);
  if (!v7)
  {
    *a7 = result;
  }

  return result;
}

void *sub_1C9910EAC@<X0>(uint64_t (*a1)(id *, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  result = sub_1C990EF14(a1, a2, a3, a4, a5, a6);
  if (!v7)
  {
    *a7 = result;
    a7[1] = v10;
    a7[2] = v11;
    a7[3] = v12;
  }

  return result;
}

uint64_t sub_1C9910F9C()
{

  return swift_deallocObject();
}

uint64_t sub_1C991107C()
{

  return swift_deallocObject();
}

_BYTE *storeEnumTagSinglePayload for ProcessingUtils.DomainError(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C99111A4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7F && *(a1 + 8))
    {
      v2 = *a1 + 126;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7E)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1C99111F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t sub_1C9911280()
{
  result = qword_1EC3CC690;
  if (!qword_1EC3CC690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC690);
  }

  return result;
}

unint64_t sub_1C99112D8()
{
  result = qword_1EC3CC698;
  if (!qword_1EC3CC698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC698);
  }

  return result;
}

uint64_t sub_1C991140C(unint64_t *a1)
{
  v4 = MEMORY[0x1E695BDA0];

  return sub_1C97AE67C(a1, v1, v2, v4);
}

void *sub_1C9911468(void *__src, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va, a9);

  return memcpy(va, __src, 0x41uLL);
}

uint64_t sub_1C9911488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return sub_1C9A92078();
}

void sub_1C99114FC(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 2;
}

uint64_t sub_1C9911534@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v20 = a1;
  v18 = a2;
  v19 = a3;
  v21 = a8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1C9A93D88();
  sub_1C9A91C58();
  sub_1C9A91E98();
  sub_1C9912278();
  swift_getWitnessTable();
  sub_1C9912294();
  sub_1C9A91C68();
  swift_getWitnessTable();
  v22 = sub_1C9A91C18();
  v23 = a4;
  WitnessTable = swift_getWitnessTable();
  v25 = a6;
  v12 = sub_1C9A91CC8();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &AssociatedTypeWitness - v13;
  v15 = swift_allocObject();
  v15[2] = a4;
  v15[3] = a5;
  v15[4] = a6;
  v15[5] = a7;
  v15[6] = v18;
  v15[7] = v19;

  sub_1C9A92078();

  swift_getWitnessTable();
  return sub_1C997529C(v14, v12, v21);
}

uint64_t sub_1C99117B4(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1C9A93D88();
  v4 = sub_1C9A91C58();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - v6;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_1C9A91F68();

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_1C9A91E98();
  sub_1C9912278();
  swift_getWitnessTable();
  sub_1C9912294();
  sub_1C9A91FC8();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1C99119D4@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a4, a1, AssociatedTypeWitness);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1C9A93D88();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1C9911AD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v5 = sub_1C9A93D88();
  MEMORY[0x1EEE9AC00](v5);
  (*(*(AssociatedTypeWitness - 8) + 16))(&v8 - v6, a1, AssociatedTypeWitness);
  swift_storeEnumTagMultiPayload();
  return sub_1C9A91EA8();
}

uint64_t sub_1C9911C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(a5 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13(v10);
  sub_1C99117B4(a5, a7);
  return (*(v9 + 8))(v12, a5);
}

void sub_1C9911D10()
{
  if (qword_1EC3C5520 != -1)
  {
    sub_1C98134D8();
    swift_once();
  }

  v0 = sub_1C9A91B58();
  sub_1C97BFF6C(v0, qword_1EC3D3108);

  oslog = sub_1C9A91B38();
  v1 = sub_1C9A92FC8();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *(v2 + 4) = sub_1C99122E0(4.8751e-34, v11, v3);
    sub_1C99122C0(&dword_1C9788000, v4, v5, "%{public}sreceive subscription", v6, v7, v8, v9, oslog);
    sub_1C97A592C(v11);
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
  }
}

void sub_1C9911E34()
{
  if (qword_1EC3C5520 != -1)
  {
    sub_1C98134D8();
    swift_once();
  }

  v0 = sub_1C9A91B58();
  sub_1C97BFF6C(v0, qword_1EC3D3108);

  oslog = sub_1C9A91B38();
  v1 = sub_1C9A92FC8();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *(v2 + 4) = sub_1C99122E0(4.8751e-34, v11, v3);
    sub_1C99122C0(&dword_1C9788000, v4, v5, "%{public}scancelled", v6, v7, v8, v9, oslog);
    sub_1C97A592C(v11);
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
  }
}

void sub_1C9911F68(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, void *a6@<X8>)
{
  v7 = v6;
  v10 = *a1;
  if ((*(a2 + 8) & 1) == 0)
  {
    v12 = *a2 + a3;
    if ((v10 - v12) >= 0x7FFFFFFF)
    {
      v13 = 0x7FFFFFFFLL;
    }

    else
    {
      v13 = v10 - v12;
    }

    if (v10 != v12 && v13 > a4)
    {
      if (qword_1EC3C5520 == -1)
      {
        goto LABEL_11;
      }

      goto LABEL_29;
    }

    while (1)
    {
      v23 = *(a2 + 24);
      v25 = __CFADD__(v23, 1);
      v24 = v23 + 1;
      if (!v25)
      {
        break;
      }

      __break(1u);
LABEL_29:
      sub_1C98134D8();
      swift_once();
LABEL_11:
      v15 = sub_1C9A91B58();
      sub_1C97BFF6C(v15, qword_1EC3D3108);
      v16 = sub_1C9A91B38();
      v17 = sub_1C9A92F98();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v31 = v7;
        v32 = v30;
        *v18 = 136315394;
        v19 = a6;
        v20 = sub_1C9849140(0x6461656861, 0xE500000000000000, &v32);

        *(v18 + 4) = v20;
        a6 = v19;
        *(v18 + 12) = 1024;
        *(v18 + 14) = v13;
        _os_log_impl(&dword_1C9788000, v16, v17, "Timestamp is %s by %d samples", v18, 0x12u);
        v13 = v30;
        sub_1C97A592C(v30);
        v7 = v31;
        sub_1C98135FC();
        MEMORY[0x1CCA93280]();
        sub_1C98135FC();
        MEMORY[0x1CCA93280]();
      }

      v21 = *(a2 + 16);
      v25 = __CFADD__(v21, 1);
      v22 = v21 + 1;
      if (v25)
      {
        __break(1u);
LABEL_31:
        sub_1C98134D8();
        swift_once();
LABEL_23:
        v26 = sub_1C9A91B58();
        sub_1C97BFF6C(v26, qword_1EC3D3108);
        v27 = sub_1C9A91B38();
        v28 = sub_1C9A92FA8();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          *v29 = 134218240;
          *(v29 + 4) = v13;
          *(v29 + 12) = 2048;
          *(v29 + 14) = a5;
          _os_log_impl(&dword_1C9788000, v27, v28, "Detected %lu timestamp deviations in the last %ld timestamps", v29, 0x16u);
          sub_1C98135FC();
          MEMORY[0x1CCA93280]();
        }

        *(a2 + 16) = 0;
LABEL_26:
        *(a2 + 24) = 0;
        goto LABEL_27;
      }

      *(a2 + 16) = v22;
    }

    *(a2 + 24) = v24;
    v25 = a5 < 1 || v24 >= a5;
    if (v25)
    {
      v13 = *(a2 + 16);
      if (v13)
      {
        if (qword_1EC3C5520 != -1)
        {
          goto LABEL_31;
        }

        goto LABEL_23;
      }

      goto LABEL_26;
    }
  }

LABEL_27:
  *a2 = v10;
  *(a2 + 8) = 0;
  *a6 = v10;
}

uint64_t sub_1C9912294()
{

  return swift_getWitnessTable();
}

void sub_1C99122C0(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, os_log_t log)
{

  _os_log_impl(a1, log, v9, a4, v10, 0xCu);
}

unint64_t sub_1C99122E0(float a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *v5 = a1;

  return sub_1C9849140(v4, v3, va);
}

uint64_t sub_1C9912300()
{
  swift_beginAccess();
  result = *(v0 + 112);
  *(v0 + 112) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1C9912340@<X0>(uint64_t a1@<X8>, const void *a2@<X0>)
{
  swift_beginAccess();
  v5 = *(v2 + 112);
  v6 = *(v5 + 16);

  v8 = 0;
  for (i = 32; ; i += 160)
  {
    if (v6 == v8)
    {

      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      return result;
    }

    if (v8 >= *(v5 + 16))
    {
      __break(1u);
      goto LABEL_11;
    }

    sub_1C97E82EC(v5 + i, __src, &unk_1EC3CBA00, &qword_1C9AB3B50);
    memcpy(v12, __src, 0x78uLL);
    v10 = sub_1C9912508(v12, a2);
    result = sub_1C97DA1E0(__src, &unk_1EC3CBA00, &qword_1C9AB3B50);
    if (v10)
    {
      break;
    }

    ++v8;
  }

  v11 = *(v2 + 112);
  if (v8 < *(v11 + 16))
  {
    sub_1C97E82EC(v11 + i, __src, &unk_1EC3CBA00, &qword_1C9AB3B50);
    swift_beginAccess();
    sub_1C99461C0(v8, v12);
    swift_endAccess();
    memcpy(__dst, v12, sizeof(__dst));
    sub_1C9919410(__dst);
    sub_1C97A592C(&v12[15]);
    memcpy(v12, __src, sizeof(v12));
    memcpy(v14, __src, sizeof(v14));
    sub_1C9919410(v14);
    return sub_1C979B054(&v12[15], a1);
  }

LABEL_11:
  __break(1u);
  return result;
}

BOOL sub_1C9912508(void *__src, const void *a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v188, a2, 0x78uLL);
  memcpy(v189, __src, sizeof(v189));
  v4 = memcpy(v190, a2, sizeof(v190));
  v12 = *__dst;
  v13 = *&__dst[8];
  v14 = *&__dst[32];
  switch(*&__dst[104] >> 61)
  {
    case 1:
      sub_1C991A808();
      if (v80 != 1)
      {
        goto LABEL_35;
      }

      v81 = v188[0].i64[0];
      sub_1C97DA1E0(v189, &qword_1EC3CC8B0, &qword_1C9AB3C98);
      return v12 == v81;
    case 2:
      sub_1C991A808();
      if (v43 != 2)
      {
        goto LABEL_35;
      }

      v44 = v188[3].i64[0];
      v137 = v188[0];
      v150 = v188[2];
      v111 = v41;
      v124 = v188[1];
      v98 = v42;
      sub_1C97DA1E0(v189, &qword_1EC3CC8B0, &qword_1C9AB3C98);
      *v186 = v12;
      *&v186[8] = v13;
      *&v186[16] = v98;
      *&v186[32] = v14;
      *&v186[40] = v111;
      v177 = v137;
      v178 = v124;
      v179 = v150;
      v180.i64[0] = v44;
      return sub_1C99924C4(v186, &v177);
    case 3:
      sub_1C991A808();
      if (v55 == 3)
      {
        v178.i8[0] = v47;
        v179.i8[8] = v53;
        LOBYTE(v163) = v188[1].i8[0];
        LOBYTE(v166) = v188[2].i8[8];
        v56 = sub_1C991A7CC(v45, v46, v47, v48, v49, v50, v51, v52, v96, v103, v109, v116, v122, v129, v135, v142, v148, v155, v188[0].i64[0], v188[0].i64[1], v163, v188[1].i64[1], v188[2].i64[0], v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v12, v13, v178.i64[0], v54, v14, v179.i64[1], v180.i64[0], v180.i64[1], v181.i64[0], v181.i64[1], v182.i64[0], v182.i64[1], v183.i64[0], v183.i64[1], v184, v185, v186[0]);
        v64 = sub_1C991A838(v56, v57, v58, v59, v60, v61, v62, v63, v99, v105, v112, v118, v125, v131, v138, v144, v151, v157, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177.i64[0], v177.i64[1], v178.i64[0], v178.i64[1], v179.i64[0], v179.i64[1], v180.i64[0], v180.i64[1], v181.i64[0], v181.i64[1], v182.i64[0], v182.i64[1], v183.i64[0], v183.i64[1], v184, v185, *v186, *&v186[8], *&v186[16], *&v186[24], *&v186[32], *&v186[40], *&v186[48], *&v186[56], *&v186[64], *&v186[72], *&v186[80], *&v186[88], *&v186[96]);
        v72 = sub_1C991A838(v64, v65, v66, v67, v68, v69, v70, v71, v100, v106, v113, v119, v126, v132, v139, v145, v152, v158, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177.i64[0], v177.i64[1], v178.i64[0], v178.i64[1], v179.i64[0], v179.i64[1], v180.i64[0], v180.i64[1], v181.i64[0], v181.i64[1], v182.i64[0], v182.i64[1], v183.i64[0], v183.i64[1], v184, v185, *v186, *&v186[8], *&v186[16], *&v186[24], *&v186[32], *&v186[40], *&v186[48], *&v186[56], *&v186[64], *&v186[72], *&v186[80], *&v186[88], *&v186[96]);
        sub_1C991A7CC(v72, v73, v74, v75, v76, v77, v78, v79, v101, v107, v114, v120, v127, v133, v140, v146, v153, v159, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177.i64[0], v177.i64[1], v178.i64[0], v178.i64[1], v179.i64[0], v179.i64[1], v180.i64[0], v180.i64[1], v181.i64[0], v181.i64[1], v182.i64[0], v182.i64[1], v183.i64[0], v183.i64[1], v184, v185, v186[0]);
        v15 = sub_1C97F2FF8(&v177, &v161);
        goto LABEL_14;
      }

      sub_1C97F5D50(v12, v13, v47);
      goto LABEL_25;
    case 4:
      sub_1C991A808();
      if (v22 != 4)
      {
LABEL_25:

        goto LABEL_35;
      }

      if (v12 != v188[0].i64[0] || v13 != v188[0].i64[1])
      {
        v24 = sub_1C9A93B18();
        v25 = v24;
        v33 = sub_1C991A838(v24, v26, v27, v28, v29, v30, v31, v32, v96, v103, v109, v116, v122, v129, v135, v142, v148, v155, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177.i64[0], v177.i64[1], v178.i64[0], v178.i64[1], v179.i64[0], v179.i64[1], v180.i64[0], v180.i64[1], v181.i64[0], v181.i64[1], v182.i64[0], v182.i64[1], v183.i64[0], v183.i64[1], v184, v185, *v186, *&v186[8], *&v186[16], *&v186[24], *&v186[32], *&v186[40], *&v186[48], *&v186[56], *&v186[64], *&v186[72], *&v186[80], *&v186[88], *&v186[96]);
        sub_1C991A7CC(v33, v34, v35, v36, v37, v38, v39, v40, v97, v104, v110, v117, v123, v130, v136, v143, v149, v156, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177.i64[0], v177.i64[1], v178.i64[0], v178.i64[1], v179.i64[0], v179.i64[1], v180.i64[0], v180.i64[1], v181.i64[0], v181.i64[1], v182.i64[0], v182.i64[1], v183.i64[0], v183.i64[1], v184, v185, v186[0]);
        sub_1C97DA1E0(v189, &qword_1EC3CC8B0, &qword_1C9AB3C98);
        return v25;
      }

      v88 = sub_1C991A838(v16, v17, v188[0].i64[0], v188[0].i64[1], v18, v19, v20, v21, v96, v103, v109, v116, v122, v129, v135, v142, v148, v155, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177.i64[0], v177.i64[1], v178.i64[0], v178.i64[1], v179.i64[0], v179.i64[1], v180.i64[0], v180.i64[1], v181.i64[0], v181.i64[1], v182.i64[0], v182.i64[1], v183.i64[0], v183.i64[1], v184, v185, *v186, *&v186[8], *&v186[16], *&v186[24], *&v186[32], *&v186[40], *&v186[48], *&v186[56], *&v186[64], *&v186[72], *&v186[80], *&v186[88], *&v186[96]);
      sub_1C991A7CC(v88, v89, v90, v91, v92, v93, v94, v95, v102, v108, v115, v121, v128, v134, v141, v147, v154, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177.i64[0], v177.i64[1], v178.i64[0], v178.i64[1], v179.i64[0], v179.i64[1], v180.i64[0], v180.i64[1], v181.i64[0], v181.i64[1], v182.i64[0], v182.i64[1], v183.i64[0], v183.i64[1], v184, v185, v186[0]);
      goto LABEL_38;
    case 5:
      if (*&__dst[104] != 0xA000000000000000 || (v82 = vorrq_s8(vorrq_s8(*&__dst[88], *&__dst[56]), vorrq_s8(*&__dst[72], *&__dst[40])), *&__dst[32] | *&vorr_s8(*v82.i8, *&vextq_s8(v82, v82, 8uLL)) | *&__dst[112] | *__dst | *&__dst[8] | *&__dst[24] | *&__dst[16]))
      {
        if (v188[6].i64[1] >> 61 != 5 || v188[7].i64[0])
        {
          goto LABEL_35;
        }

        v86 = v188[6].i64[1] == 0xA000000000000000 && v188[0].i64[0] == 1;
        if (!v86 || *&sub_1C991A748(vorrq_s8(vorrq_s8(*(&v188[2] + 8), *(&v188[4] + 8)), vorrq_s8(*(&v188[3] + 8), *(&v188[5] + 8))), vorrq_s8(*(v188 + 8), *(&v188[1] + 8))))
        {
          goto LABEL_35;
        }

LABEL_38:
        sub_1C97DA1E0(v189, &qword_1EC3CC8B0, &qword_1C9AB3C98);
        return 1;
      }

      if (v188[6].i64[1] >> 61 == 5 && v188[6].i64[1] == 0xA000000000000000)
      {
        v83 = sub_1C991A748(vorrq_s8(vorrq_s8(v188[2], v188[4]), vorrq_s8(v188[3], v188[5])), vorrq_s8(v188[0], v188[1]));
        if (!(*&v83 | v84 | v85))
        {
          goto LABEL_38;
        }
      }

LABEL_35:
      sub_1C991A7CC(v4, v5, v6, v7, v8, v9, v10, v11, v96, v103, v109, v116, v122, v129, v135, v142, v148, v155, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177.i64[0], v177.i64[1], v178.i64[0], v178.i64[1], v179.i64[0], v179.i64[1], v180.i64[0], v180.i64[1], v181.i64[0], v181.i64[1], v182.i64[0], v182.i64[1], v183.i64[0], v183.i64[1], v184, v185, v186[0]);
      sub_1C97DA1E0(v189, &qword_1EC3CC8B0, &qword_1C9AB3C98);
      return 0;
    default:
      if (v188[6].i64[1] >> 61)
      {
        memcpy(v186, __src, sizeof(v186));
        *&v186[104] &= 0x1FFFFFFFFFFFFFFFuLL;
        v4 = sub_1C97A639C(v186, &v177);
        goto LABEL_35;
      }

      *v186 = *__dst;
      *&v186[8] = *&__dst[8];
      *&v186[16] = *&__dst[16];
      *&v186[40] = *&__dst[40];
      *&v186[56] = *&__dst[56];
      *&v186[72] = *&__dst[72];
      *&v186[88] = *&__dst[88];
      *&v186[32] = *&__dst[32];
      *&v186[104] = *&__dst[104] & 0x1FFFFFFFFFFFFFFFLL;
      *&v186[112] = *&__dst[112];
      v177 = v188[0];
      v178 = v188[1];
      v179 = v188[2];
      v180 = v188[3];
      v181 = v188[4];
      v182 = v188[5];
      v183 = v188[6];
      v184 = v188[7].i64[0];
      sub_1C9919638(v188, &v161);
      sub_1C9919638(__dst, &v161);
      sub_1C9919638(__dst, &v161);
      sub_1C9919638(v188, &v161);
      v15 = sub_1C992C65C(v186, &v177);
LABEL_14:
      v25 = v15;
      sub_1C97DA1E0(v189, &qword_1EC3CC8B0, &qword_1C9AB3C98);
      sub_1C9919410(v188);
      sub_1C9919410(__dst);
      return v25;
  }
}

uint64_t sub_1C99129AC()
{

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1C99129E4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x80000001C9AD7160 == a2;
  if (v3 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7455686365657073 && a2 == 0xEF65636E61726574;
    if (v6 || (sub_1C9A93B18() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6D45686365657073 && a2 == 0xED00006E6F69746FLL;
      if (v7 || (sub_1C9A93B18() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x76654C6F69647561 && a2 == 0xEA00000000006C65;
        if (v8 || (sub_1C9A93B18() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x69536D617A616873 && a2 == 0xEF65727574616E67;
          if (v9 || (sub_1C9A93B18() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x746544646E756F73 && a2 == 0xEE006E6F69746365;
            if (v10 || (sub_1C9A93B18() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0xD000000000000012 && 0x80000001C9AD7180 == a2)
            {

              return 6;
            }

            else
            {
              v12 = sub_1C9A93B18();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C9912C4C(char a1)
{
  result = 0x7455686365657073;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6D45686365657073;
      break;
    case 3:
      result = 0x76654C6F69647561;
      break;
    case 4:
      result = 0x69536D617A616873;
      break;
    case 5:
      result = 0x746544646E756F73;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    default:
      result = 0xD000000000000013;
      break;
  }

  return result;
}

void sub_1C9912D58()
{
  sub_1C97AEB94();
  v2 = v1;
  v3 = sub_1C97A2CEC(&qword_1EC3CC868, &qword_1C9AB3C58);
  sub_1C97ABF78(v3, &v105);
  v90 = v4;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C97AC02C();
  sub_1C97ABFB4(v6);
  v7 = sub_1C97A2CEC(&qword_1EC3CC870, &qword_1C9AB3C60);
  sub_1C97ABF78(v7, v104);
  v88[13] = v8;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C97AC02C();
  sub_1C97ABFB4(v10);
  v11 = sub_1C97A2CEC(&qword_1EC3CC878, &qword_1C9AB3C68);
  sub_1C97ABF78(v11, v103 + 8);
  v88[10] = v12;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C97AC02C();
  sub_1C97ABFB4(v14);
  v15 = sub_1C97A2CEC(&qword_1EC3CC880, &qword_1C9AB3C70);
  sub_1C97ABF78(v15, &v101[8]);
  v88[4] = v16;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C97AC02C();
  sub_1C97ABFB4(v18);
  v19 = sub_1C97A2CEC(&qword_1EC3CC888, &qword_1C9AB3C78);
  sub_1C97ABF78(v19, &v100);
  v88[1] = v20;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C97AC02C();
  sub_1C97ABFB4(v22);
  v23 = sub_1C97A2CEC(&qword_1EC3CC890, &qword_1C9AB3C80);
  sub_1C97ABF78(v23, &v102);
  v88[7] = v24;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v25);
  v27 = v88 - v26;
  v28 = sub_1C97A2CEC(&qword_1EC3CC898, &qword_1C9AB3C88);
  sub_1C97AE9C8();
  v88[6] = v29;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v30);
  v32 = v88 - v31;
  sub_1C97A2CEC(&unk_1EC3CC8A0, &qword_1C9AB3C90);
  sub_1C97AE9C8();
  v98 = v33;
  v99 = v34;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C97AC02C();
  v36 = *v0;
  v95 = v0[1];
  v97 = v36;
  v37 = v0[2];
  v94 = v0[3];
  v96 = v37;
  v38 = v0[4];
  v92 = v0[5];
  v91 = v38;
  v39 = v0[6].u64[1];
  v93 = v0[6].i64[0];
  v40 = v0[7].i64[0];
  v42 = v2[3];
  v41 = v2[4];
  v43 = v2;
  v45 = v44;
  sub_1C97A5A8C(v43, v42);
  sub_1C9919728();
  sub_1C9A93DD8();
  switch(v39 >> 61)
  {
    case 1uLL:
      v100.i8[0] = 1;
      sub_1C9919920();
      v40 = v98;
      sub_1C9A93988();
      v100.i64[0] = v97.i64[0];
      sub_1C97A69F8();
      sub_1C991A790();
      sub_1C9A93A18();
      sub_1C97DAA58();
      v72 = v27;
      goto LABEL_12;
    case 2uLL:
      v100.i8[0] = 4;
      v57 = sub_1C9919824();
      sub_1C991A658(&type metadata for SNSystemAudioAnalyzerRemote.Request.ShazamSignatureCodingKeys, &v100, v58, v59, v57);
      v100 = v97;
      *v101 = v95;
      *&v101[16] = v96;
      v102.i64[0] = v94.i64[0];
      sub_1C97A60C0();
      sub_1C991A790();
      sub_1C991A7B4(v60, v61, v62, v63, v64);
      goto LABEL_11;
    case 3uLL:
      v100.i8[0] = 5;
      sub_1C99197D0();
      v65 = v88[12];
      v66 = v98;
      sub_1C9A93988();
      v101[0] = v95.i8[0];
      v100 = v97;
      *&v101[8] = vextq_s8(v95, v96, 8uLL);
      v101[24] = v96.i8[8];
      v67 = sub_1C97A6B48();
      v68 = v89;
      sub_1C991A7B4(&v100, v69, v89, &type metadata for SoundDetection.AudioSourceAgnosticRequest, v67);
      sub_1C97DAA58();
      v70(v65, v68);
      (*(v99 + 8))(v45, v66);
      break;
    case 4uLL:
      v100.i8[0] = 6;
      v49 = sub_1C991977C();
      sub_1C991A658(&type metadata for SNSystemAudioAnalyzerRemote.Request.DirectionOfArrivalCodingKeys, &v100, v50, v51, v49);
      v100 = v97;
      sub_1C97A65F8();
      sub_1C991A790();
      sub_1C991A7B4(v52, v53, v54, v55, v56);
      goto LABEL_11;
    case 5uLL:
      if (v39 != 0xA000000000000000 || (v73 = sub_1C991A748(vorrq_s8(vorrq_s8(v91, v96), vorrq_s8(v92, v94)), vorrq_s8(v97, v95)), *&v73 | v40 | v93))
      {
        v100.i8[0] = 3;
        v81 = sub_1C9919878();
        sub_1C991A658(&type metadata for SNSystemAudioAnalyzerRemote.Request.AudioLevelCodingKeys, &v100, v82, v83, v81);
        sub_1C97A5C74();
        sub_1C991A790();
        sub_1C991A7B4(v84, v85, v86, v87, v84);
      }

      else
      {
        v100.i8[0] = 2;
        v74 = sub_1C99198CC();
        sub_1C991A658(&type metadata for SNSystemAudioAnalyzerRemote.Request.SpeechEmotionCodingKeys, &v100, v75, v76, v74);
        sub_1C97A5B24();
        sub_1C991A790();
        sub_1C991A7B4(v77, v78, v79, v80, v77);
      }

LABEL_11:
      sub_1C97DAA58();
      v72 = v41;
LABEL_12:
      v71(v72, v32);
      (*(v99 + 8))(v45, v40);
      break;
    default:
      v100.i8[0] = 0;
      sub_1C9919974();
      v46 = v45;
      v47 = v98;
      sub_1C9A93988();
      v100 = v97;
      *v101 = v95;
      *&v101[16] = v96;
      v102 = v94;
      v103[0] = v91;
      v103[1] = v92;
      v104[0] = v93;
      v104[1] = v39 & 0x1FFFFFFFFFFFFFFFLL;
      v104[2] = v40;
      sub_1C97A6314();
      sub_1C9A93A18();
      sub_1C97DAA58();
      v48(v32, v28);
      (*(v99 + 8))(v46, v47);
      break;
  }

  sub_1C97AEB5C();
}

void sub_1C99135D0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  v4 = *(v1 + 48);
  switch(*(v1 + 104) >> 61)
  {
    case 1:
      v17 = *v1;
      MEMORY[0x1CCA91980](1, v3, v4, v2);
      v9 = v17;
      goto LABEL_18;
    case 2:
      v13 = *(v1 + 48);
      v14 = *(v1 + 40);
      v15 = *(v1 + 16);
      v16 = *v1;
      MEMORY[0x1CCA91980](4);
      MEMORY[0x1CCA919B0](v16);
      sub_1C9A93CF8();
      sub_1C9A93CF8();
      MEMORY[0x1CCA919B0](v15);
      MEMORY[0x1CCA919B0](*(&v15 + 1));
      sub_1C9A93CF8();
      sub_1C9A93CF8();
      MEMORY[0x1CCA919B0](v14);
      if ((v13 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v8 = v13;
      }

      else
      {
        v8 = 0;
      }

      MEMORY[0x1CCA919B0](v8);
      break;
    case 3:
      MEMORY[0x1CCA91980](5);
      sub_1C97F1884(a1);
      sub_1C991A7FC();
      sub_1C9A92528();
      sub_1C9A92528();

      break;
    case 4:
      MEMORY[0x1CCA91980](6, v3, v4, v2);
      sub_1C991A7FC();

      sub_1C9A92528();
      break;
    case 5:
      v5 = *(v1 + 96);
      v6 = *(v1 + 112);
      v10 = *&sub_1C991A748(vorrq_s8(vorrq_s8(*(v1 + 64), v3), vorrq_s8(*(v1 + 80), v4)), vorrq_s8(*v1, v2)) | v6 | v5;
      if (v11 == 0xA000000000000000 && v10 == 0)
      {
        v9 = 2;
      }

      else
      {
        v9 = 3;
      }

LABEL_18:
      MEMORY[0x1CCA91980](v9);
      break;
    default:
      MEMORY[0x1CCA91980](0);
      sub_1C992DEB4(a1);
      break;
  }
}

uint64_t sub_1C991389C()
{
  sub_1C9A93CC8();
  sub_1C99135D0(v1);
  return sub_1C9A93D18();
}

void sub_1C99138DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C97AEB94();
  a19 = v21;
  a20 = v22;
  a10 = v20;
  v24 = v23;
  v140 = v25;
  v26 = sub_1C97A2CEC(&qword_1EC3CC7A8, &qword_1C9AB3C10);
  sub_1C97ABF78(v26, &a12);
  v139[16] = v27;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C97AC02C();
  v143 = v29;
  v30 = sub_1C97A2CEC(&qword_1EC3CC7B0, &qword_1C9AB3C18);
  sub_1C97ABF78(v30, &a15);
  v139[15] = v31;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C97AC02C();
  v142 = v33;
  v34 = sub_1C97A2CEC(&qword_1EC3CC7B8, &qword_1C9AB3C20);
  sub_1C97ABF78(v34, &a14);
  v139[12] = v35;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C97AC02C();
  v139[18] = v37;
  v38 = sub_1C97A2CEC(&qword_1EC3CC7C0, &qword_1C9AB3C28);
  sub_1C97ABF78(v38, &v156);
  v139[10] = v39;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v40);
  sub_1C97AC02C();
  sub_1C97ABFB4(v41);
  v42 = sub_1C97A2CEC(&qword_1EC3CC7C8, &qword_1C9AB3C30);
  sub_1C97ABF78(v42, &a10);
  v139[8] = v43;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v44);
  sub_1C97AC02C();
  v141 = v45;
  v46 = sub_1C97A2CEC(&qword_1EC3CC7D0, &qword_1C9AB3C38);
  sub_1C97ABF78(v46, &v155);
  v139[5] = v47;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v48);
  v50 = v139 - v49;
  v51 = sub_1C97A2CEC(&qword_1EC3CC7D8, &qword_1C9AB3C40);
  sub_1C97AE9C8();
  v139[4] = v52;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v53);
  v55 = v139 - v54;
  v56 = sub_1C97A2CEC(&qword_1EC3CC7E0, &unk_1C9AB3C48);
  sub_1C97AE9C8();
  v58 = v57;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v59);
  v61 = v139 - v60;
  v62 = v24[3];
  v144 = v24;
  sub_1C97A5A8C(v24, v62);
  sub_1C9919728();
  v63 = a10;
  sub_1C9A93DB8();
  if (v63)
  {
    goto LABEL_10;
  }

  v139[2] = v55;
  v139[1] = v51;
  v139[3] = v50;
  v64 = v141;
  a10 = v58;
  sub_1C9A93958();
  sub_1C98EE524();
  if (v66 == v67 >> 1)
  {
    v68 = a10;
LABEL_9:
    v80 = sub_1C9A93648();
    swift_allocError();
    v82 = v81;
    sub_1C97A2CEC(&qword_1EC3C6F20, &qword_1C9AA0D80);
    *v82 = &type metadata for SNSystemAudioAnalyzerRemote.Request;
    sub_1C9A93868();
    sub_1C9A93638();
    (*(*(v80 - 8) + 104))(v82, *MEMORY[0x1E69E6AF8], v80);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v68 + 8))(v61, v56);
LABEL_10:
    v83 = v144;
LABEL_11:
    sub_1C97A592C(v83);
    sub_1C97AEB5C();
    return;
  }

  v139[0] = 0;
  if (v66 < (v67 >> 1))
  {
    v69 = v61;
    v70 = *(v65 + v66);
    sub_1C98EE520();
    v72 = v71;
    v74 = v73;
    swift_unknownObjectRelease();
    if (v72 == v74 >> 1)
    {
      v75 = v140;
      switch(v70)
      {
        case 1:
          LOBYTE(v145) = 1;
          sub_1C9919920();
          sub_1C991A634(&type metadata for SNSystemAudioAnalyzerRemote.Request.SpeechUtteranceCodingKeys, &v145);
          v89 = sub_1C97A6A4C();
          sub_1C991A610(&unk_1F4930A68, v90, v91, v92, v89);
          sub_1C991A784();
          swift_unknownObjectRelease();
          v127 = sub_1C991A5DC();
          v128(v127);
          v129 = sub_1C991A558();
          v130(v129);
          v117 = v145;
          v125 = 0x2000000000000000;
          break;
        case 2:
          LOBYTE(v145) = 2;
          sub_1C99198CC();
          sub_1C991A6A0(&type metadata for SNSystemAudioAnalyzerRemote.Request.SpeechEmotionCodingKeys, &v145);
          sub_1C97A5B78();
          v88 = v139[9];
          sub_1C9A938F8();
          sub_1C991A784();
          swift_unknownObjectRelease();
          sub_1C97DAA58();
          v105(v64, v88);
          v106 = sub_1C991A558();
          v107(v106);
          *&v121 = sub_1C991A764();
          v123 = 0uLL;
          v125 = 0xA000000000000000;
          goto LABEL_18;
        case 3:
          LOBYTE(v145) = 3;
          sub_1C9919878();
          sub_1C991A634(&type metadata for SNSystemAudioAnalyzerRemote.Request.AudioLevelCodingKeys, &v145);
          sub_1C97A5CC8();
          sub_1C9A938F8();
          sub_1C991A784();
          swift_unknownObjectRelease();
          v108 = sub_1C991A5DC();
          v109(v108);
          v110 = sub_1C991A558();
          v111(v110);
          *&v121 = sub_1C991A764();
          v125 = 0xA000000000000000;
          v123 = 0uLL;
          v117 = 1;
LABEL_18:
          v126 = 0uLL;
          break;
        case 4:
          LOBYTE(v145) = 4;
          sub_1C9919824();
          sub_1C991A634(&type metadata for SNSystemAudioAnalyzerRemote.Request.ShazamSignatureCodingKeys, &v145);
          v84 = sub_1C97A6114();
          sub_1C991A610(&unk_1F4945CC8, v85, v86, v87, v84);
          sub_1C991A784();
          swift_unknownObjectRelease();
          v101 = sub_1C991A5DC();
          v102(v101);
          v103 = sub_1C991A558();
          v104(v103);
          v117 = v145;
          v116 = v146;
          v118 = v147;
          v119 = v148;
          v120 = v149;
          v125 = 0x4000000000000000;
          v121 = v150;
          break;
        case 5:
          LOBYTE(v145) = 5;
          sub_1C99197D0();
          sub_1C991A634(&type metadata for SNSystemAudioAnalyzerRemote.Request.SoundDetectionCodingKeys, &v145);
          v93 = sub_1C97A6C28();
          sub_1C991A610(&type metadata for SoundDetection.AudioSourceAgnosticRequest, v94, v95, v96, v93);
          sub_1C991A784();
          swift_unknownObjectRelease();
          v131 = sub_1C991A5DC();
          v132(v131);
          v133 = sub_1C991A558();
          v134(v133);
          v117 = v145;
          v116 = v146;
          v118 = v147;
          v119 = v148;
          v120 = v149;
          v124 = v150;
          *&v121 = v150;
          v125 = 0x6000000000000000;
          break;
        case 6:
          LOBYTE(v145) = 6;
          sub_1C991977C();
          sub_1C991A6A0(&type metadata for SNSystemAudioAnalyzerRemote.Request.DirectionOfArrivalCodingKeys, &v145);
          v97 = sub_1C97A664C();
          sub_1C991A610(&unk_1F4938D98, v98, v99, v100, v97);
          sub_1C991A784();
          swift_unknownObjectRelease();
          v135 = sub_1C991A5DC();
          v136(v135);
          v137 = sub_1C991A558();
          v138(v137);
          v117 = v145;
          v116 = v146;
          v125 = 0x8000000000000000;
          break;
        default:
          LOBYTE(v145) = 0;
          sub_1C9919974();
          sub_1C991A634(&type metadata for SNSystemAudioAnalyzerRemote.Request.SoundClassificationCodingKeys, &v145);
          v76 = sub_1C97A63F8();
          sub_1C991A610(&type metadata for SoundClassification.AudioSourceAgnosticRequest, v77, v78, v79, v76);
          sub_1C991A784();
          swift_unknownObjectRelease();
          v112 = sub_1C991A5DC();
          v113(v112);
          v114 = sub_1C991A558();
          v115(v114);
          v117 = v145;
          v116 = v146;
          v118 = v147;
          v119 = v148;
          v120 = v149;
          v121 = v150;
          v122 = v151;
          v123 = v152;
          v124 = v155;
          v125 = v154 & 1;
          v126 = v153;
          break;
      }

      v83 = v144;
      *v75 = v117;
      *(v75 + 8) = v116;
      *(v75 + 16) = v118;
      *(v75 + 24) = v119;
      *(v75 + 32) = v120;
      *(v75 + 40) = v121;
      *(v75 + 56) = v122;
      *(v75 + 72) = v123;
      *(v75 + 88) = v126;
      *(v75 + 104) = v125;
      *(v75 + 112) = v124;
      goto LABEL_11;
    }

    v68 = a10;
    v61 = v69;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_1C99143B0(uint64_t a1)
{
  v2 = sub_1C9919878();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99143EC(uint64_t a1)
{
  v2 = sub_1C9919878();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9914430@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C99129E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C9914458(uint64_t a1)
{
  v2 = sub_1C9919728();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9914494(uint64_t a1)
{
  v2 = sub_1C9919728();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99144D0(uint64_t a1)
{
  v2 = sub_1C991977C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C991450C(uint64_t a1)
{
  v2 = sub_1C991977C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9914548(uint64_t a1)
{
  v2 = sub_1C9919824();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9914584(uint64_t a1)
{
  v2 = sub_1C9919824();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99145C0(uint64_t a1)
{
  v2 = sub_1C9919974();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99145FC(uint64_t a1)
{
  v2 = sub_1C9919974();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9914638(uint64_t a1)
{
  v2 = sub_1C99197D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9914674(uint64_t a1)
{
  v2 = sub_1C99197D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99146B0(uint64_t a1)
{
  v2 = sub_1C99198CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99146EC(uint64_t a1)
{
  v2 = sub_1C99198CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9914728(uint64_t a1)
{
  v2 = sub_1C9919920();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9914764(uint64_t a1)
{
  v2 = sub_1C9919920();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99147A8()
{
  sub_1C9A93CC8();
  sub_1C99135D0(v1);
  return sub_1C9A93D18();
}

uint64_t sub_1C9914818(uint64_t a1, uint64_t a2)
{
  v3[95] = v2;
  v3[94] = a2;
  v3[93] = a1;
  v3[96] = *v2;
  return sub_1C991A5D4(sub_1C9914864, 0);
}

uint64_t sub_1C9914864()
{
  sub_1C97DA934();
  sub_1C9914EBC();
  v1 = v0[95];
  memcpy(v0 + 2, v0 + 17, 0x78uLL);
  memcpy(v0 + 32, v0 + 17, 0x78uLL);
  v2 = OBJC_IVAR____TtC13SoundAnalysis27SNSystemAudioAnalyzerRemote_audioConfiguration;
  memcpy(v0 + 47, (v1 + OBJC_IVAR____TtC13SoundAnalysis27SNSystemAudioAnalyzerRemote_audioConfiguration), 0x41uLL);
  memcpy(v0 + 56, (v1 + v2), 0x41uLL);
  sub_1C97A6264((v0 + 47), (v0 + 65));
  v3 = swift_task_alloc();
  v0[97] = v3;
  *v3 = v0;
  v3[1] = sub_1C9914A04;

  return sub_1C99153B0();
}

uint64_t sub_1C9914A04()
{
  sub_1C97AA95C();
  v3 = v2;
  sub_1C97AA890();
  v5 = v4;
  sub_1C97DA70C();
  *v6 = v5;
  v7 = *v1;
  sub_1C97AA83C();
  *v8 = v7;
  v5[98] = v0;

  if (v0)
  {
    memcpy(v5 + 74, v5 + 56, 0x41uLL);
    sub_1C97E8084((v5 + 74));
    v9 = sub_1C9914E04;
  }

  else
  {
    v5[99] = v3;
    memcpy(v5 + 83, v5 + 56, 0x41uLL);
    sub_1C97E8084((v5 + 83));
    v9 = sub_1C9914B40;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1C9914B40()
{
  v1 = v0[95];
  v2 = v0[93];
  v0[92] = v0[99];
  sub_1C97F07FC();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1C97F07FC();
  v4 = swift_allocObject();
  swift_weakInit();
  sub_1C97DAA28();
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = v2;
  v5[4] = v3;
  sub_1C97F07FC();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v2;
  swift_unknownObjectRetain_n();

  sub_1C97A2CEC(&unk_1EC3D0A80, &qword_1C9AB34D8);
  sub_1C97DA9B0();
  sub_1C97AE67C(v8, v9, &qword_1C9AB34D8, v10);
  v0[100] = sub_1C9A91FB8();

  v11 = *(v1 + OBJC_IVAR____TtC13SoundAnalysis27SNSystemAudioAnalyzerRemote_state);
  v0[101] = v11;

  return MEMORY[0x1EEE6DFA0](sub_1C9914D28, v11, 0);
}

uint64_t sub_1C9914D28()
{
  sub_1C97AA884();
  sub_1C9919554(v0 + 2, v0[100], v0[101]);

  v1 = sub_1C982F8C0();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1C9914D98()
{
  sub_1C97AA884();

  sub_1C9919410(v0 + 16);

  sub_1C97DA91C();

  return v1();
}

uint64_t sub_1C9914E04()
{
  sub_1C97DA934();
  sub_1C9919410(v0 + 16);
  v1 = *(v0 + 784);
  if ([*(v0 + 752) respondsToSelector_])
  {
    v2 = sub_1C9A913B8();
    v3 = sub_1C991A7FC();
    [v3 v4];
  }

  sub_1C97DA91C();

  return v5();
}

void sub_1C9914EBC()
{
  sub_1C97AEB94();
  v1 = v0;
  type metadata accessor for _SNClassifySoundRequest(v2);
  sub_1C991A758();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    memcpy(__dst, (v3 + OBJC_IVAR____SNClassifySoundRequest_impl), 0x78uLL);
    v4 = *&__dst[6];
    v5 = *&__dst[7];
    v6 = BYTE8(__dst[6]) & 1;
    v40 = __dst[2];
    v42 = __dst[0];
    v36 = __dst[3];
    v37 = __dst[1];
    v38 = __dst[4];
    v35 = __dst[5];
    sub_1C97A639C(__dst, __src);
    v50[0] = v42;
    v50[1] = v37;
    v50[2] = v40;
    v50[3] = v36;
    v50[4] = v38;
    v50[5] = v35;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    memset(v50, 0, 96);
    v6 = 0x1FFFFFFFELL;
  }

  *&v50[6] = v4;
  *(&v50[6] + 1) = v6;
  *&v50[7] = v5;
  objc_opt_self();
  sub_1C991A758();
  if (swift_dynamicCastObjCClass())
  {
    sub_1C991A7E4();
    v4 = sub_1C992C874();
    sub_1C97DA1E0(v50, &unk_1EC3CC6E0, &qword_1C9AB3B80);
    swift_unknownObjectRelease();
    memcpy(__src, &v4[OBJC_IVAR____SNClassifySoundRequest_impl], 0x78uLL);
    sub_1C97A639C(__src, v47);

    __dst[0] = __src[0];
    __dst[1] = __src[1];
    __dst[2] = __src[2];
    __dst[3] = __src[3];
    v7 = *&__src[4];
    __dst[4] = __src[4];
    __dst[5] = __src[5];
    *&__dst[6] = *&__src[6];
    *(&__dst[6] + 1) = BYTE8(__src[6]) & 1;
    *&__dst[7] = *&__src[7];
  }

  else
  {
    memcpy(__dst, v50, 0x78uLL);
  }

  type metadata accessor for SNDetectSpeechUtteranceRequest(v7);
  sub_1C991A758();
  if (swift_dynamicCastClass())
  {
    sub_1C991A7E4();
    sub_1C97DA1E0(__dst, &unk_1EC3CC6E0, &qword_1C9AB3B80);
    v8 = *&v4[OBJC_IVAR___SNDetectSpeechUtteranceRequest_impl];
    swift_unknownObjectRelease();
    *&__src[0] = v8;
    *(&__src[6] + 1) = 0x2000000000000000;
  }

  else
  {
    memcpy(__src, __dst, 0x78uLL);
  }

  type metadata accessor for SNEstimateSpeechEmotionRequest(v9);
  sub_1C991A758();
  v10 = "SharedAOPDebugStreamProvider";
  if (swift_dynamicCastClass())
  {
    swift_unknownObjectRetain();
    sub_1C97DA1E0(__src, &unk_1EC3CC6E0, &qword_1C9AB3B80);
    swift_unknownObjectRelease();
    memset(v47, 0, 104);
    v11 = -1.49166815e-154;
    *&v47[13] = xmmword_1C9AB37F0;
  }

  else
  {
    memcpy(v47, __src, 0x78uLL);
  }

  type metadata accessor for SNMeasureLKFSRequest(v11);
  sub_1C991A758();
  if (swift_dynamicCastClass())
  {
    swift_unknownObjectRetain();
    sub_1C97DA1E0(v47, &unk_1EC3CC6E0, &qword_1C9AB3B80);
    swift_unknownObjectRelease();
    v46[0] = 1;
    memset(&v46[1], 0, 96);
    v12 = -1.49166815e-154;
    *&v46[13] = xmmword_1C9AB37F0;
  }

  else
  {
    memcpy(v46, v47, sizeof(v46));
  }

  type metadata accessor for SNGenerateShazamSignatureRequest(v12);
  sub_1C991A758();
  if (swift_dynamicCastClass())
  {
    sub_1C991A7E4();
    sub_1C97DA1E0(v46, &unk_1EC3CC6E0, &qword_1C9AB3B80);
    v10 = *&aImplsharedaopd[OBJC_IVAR___SNGenerateShazamSignatureRequest_impl + 16];
    v41 = *&aSharedaopdebug_2[OBJC_IVAR___SNGenerateShazamSignatureRequest_impl];
    v43 = *&aImplsharedaopd[OBJC_IVAR___SNGenerateShazamSignatureRequest_impl];
    v39 = *&aSharedaopdebug_2[OBJC_IVAR___SNGenerateShazamSignatureRequest_impl + 16];
    swift_unknownObjectRelease();
    *v45 = v41;
    v13 = *&v43;
    *&v45[16] = v39;
    *&v45[32] = v43;
    *&v45[48] = v10;
    *&v45[104] = 0x4000000000000000;
  }

  else
  {
    memcpy(v45, v46, sizeof(v45));
  }

  type metadata accessor for SNDetectSoundRequest(v13);
  sub_1C991A758();
  if (swift_dynamicCastClass())
  {
    sub_1C991A7E4();
    sub_1C97DA1E0(v45, &unk_1EC3CC6E0, &qword_1C9AB3B80);
    v14 = &v10[OBJC_IVAR___SNDetectSoundRequest_impl];
    v10 = *&v10[OBJC_IVAR___SNDetectSoundRequest_impl];
    v15 = *(v14 + 1);
    v17 = *(v14 + 3);
    v16 = *(v14 + 4);
    v18 = *(v14 + 40);
    v19 = *(v14 + 16);
    v20 = sub_1C98138D4();
    sub_1C97F5D50(v20, v21, v22);

    swift_unknownObjectRelease();
    v44[0] = v10;
    v44[1] = v15;
    v44[2] = v19;
    v44[3] = v17;
    v44[4] = v16;
    v44[5] = v18;
    v44[13] = 0x6000000000000000;
  }

  else
  {
    memcpy(v44, v45, sizeof(v44));
  }

  type metadata accessor for SNEstimateDirectionOfArrivalRequest(v23);
  sub_1C991A758();
  if (swift_dynamicCastClass())
  {
    sub_1C991A7E4();
    sub_1C97DA1E0(v44, &unk_1EC3CC6E0, &qword_1C9AB3B80);
    v25 = *&v10[OBJC_IVAR___SNEstimateDirectionOfArrivalRequest_impl];
    v24 = *&v10[OBJC_IVAR___SNEstimateDirectionOfArrivalRequest_impl + 8];

    swift_unknownObjectRelease();
    *&v32 = v24;
    v33 = 0x8000000000000000;
LABEL_27:
    *v1 = v25;
    *(v1 + 8) = v32;
    *(v1 + 24) = v31;
    *(v1 + 40) = v30;
    *(v1 + 56) = v29;
    *(v1 + 72) = v28;
    *(v1 + 88) = v27;
    *(v1 + 104) = v33;
    *(v1 + 112) = v26;
    goto LABEL_28;
  }

  v33 = v44[13];
  if (v44[13] >> 1 != 0xFFFFFFFFLL)
  {
    v26 = v44[14];
    v28 = *&v44[9];
    v27 = *&v44[11];
    v30 = *&v44[5];
    v29 = *&v44[7];
    v32 = *&v44[1];
    v31 = *&v44[3];
    v25 = v44[0];
    goto LABEL_27;
  }

  sub_1C9919440();
  swift_allocError();
  *v34 = 1;
  swift_willThrow();
LABEL_28:
  sub_1C97AEB5C();
}

uint64_t sub_1C99153B0()
{
  sub_1C97AA95C();
  v2 = v1;
  v4 = v3;
  v0[339] = v5;
  v0[338] = v1;
  v6 = sub_1C97A2CEC(&unk_1EC3CAE50, &unk_1C9AADF38);
  v0[340] = v6;
  sub_1C97BE2AC(v6);
  v0[341] = v7;
  v0[342] = sub_1C97DAD48();
  v8 = sub_1C97A2CEC(&qword_1EC3C7D88, &unk_1C9AA0720);
  v0[343] = v8;
  sub_1C97BE2AC(v8);
  v0[344] = v9;
  v0[345] = sub_1C97DAD48();
  v10 = sub_1C97A2CEC(&qword_1EC3CC6F0, &qword_1C9AB3BB8);
  v0[346] = v10;
  sub_1C97BE2AC(v10);
  v0[347] = v11;
  v0[348] = sub_1C97DAD48();
  v12 = sub_1C97A2CEC(&qword_1EC3CC6F8, &qword_1C9AB3BC0);
  v0[349] = v12;
  sub_1C97BE2AC(v12);
  v0[350] = v13;
  v0[351] = sub_1C97DAD48();
  v14 = sub_1C97A2CEC(&qword_1EC3CC700, &qword_1C9AB3BC8);
  v0[352] = v14;
  sub_1C97BE2AC(v14);
  v0[353] = v15;
  v0[354] = sub_1C97DAD48();
  v16 = sub_1C97A2CEC(&qword_1EC3CC708, &qword_1C9AB3BD0);
  v0[355] = v16;
  sub_1C97BE2AC(v16);
  v0[356] = v17;
  v0[357] = sub_1C97DAD48();
  v18 = sub_1C97A2CEC(&unk_1EC3CC710, &qword_1C9AB3BD8);
  v0[358] = v18;
  sub_1C97BE2AC(v18);
  v0[359] = v19;
  v0[360] = sub_1C97DAD48();
  v20 = type metadata accessor for RemoteRequest(0);
  v0[361] = v20;
  sub_1C97DACE4(v20);
  v0[362] = swift_task_alloc();
  v0[363] = swift_task_alloc();
  v0[364] = swift_task_alloc();
  v0[365] = swift_task_alloc();
  v0[366] = swift_task_alloc();
  v0[367] = swift_task_alloc();
  v0[368] = swift_task_alloc();
  memcpy(v0 + 82, v4, 0x78uLL);
  memcpy(v0 + 223, v2, 0x41uLL);
  v21 = sub_1C982F8C0();

  return MEMORY[0x1EEE6DFA0](v21, v22, v23);
}

uint64_t sub_1C9915718()
{
  v1 = v0[41].i64[0];
  v2 = v0[41].i64[1];
  v3 = v0[42].i64[0];
  v4 = v0[42].i64[1];
  v5 = v0[43].i64[0];
  v6 = v0[43].i64[1];
  v7 = v0[47].i64[0];
  v8 = v0[47].u64[1];
  v9 = v0[48].i64[0];
  switch(v8 >> 61)
  {
    case 1uLL:
      v22 = v0[183].i64[1];
      sub_1C991A814();
      memcpy(&v0[102].u64[1], v23, 0x41uLL);
      v0[102].i64[0] = v1;
      sub_1C97A6264(&v0[111].i64[1], &v0[147].i64[1]);
      sub_1C991A820();
      memcpy(v22, &v0[102], 0x49uLL);
      swift_storeEnumTagMultiPayload();
      sub_1C9801940(v0[102].i64, v0[97].i64);
      v24 = sub_1C991A6C0();
      v0[187].i64[0] = v24;
      *v24 = v0;
      v24[1] = sub_1C99161C8;
      v11 = v0[183].i64[1];
      break;
    case 2uLL:
      v15 = v0[182].i64[0];
      sub_1C991A814();
      v38.i64[0] = v16;
      memcpy(&v0[36].u64[1], v17, 0x41uLL);
      v0[33].i64[0] = v1;
      v0[33].i64[1] = v2;
      v0[34].i64[0] = v3;
      v0[34].i64[1] = v4;
      v0[35].i64[0] = v5;
      v0[35].i64[1] = v6;
      v0[36].i64[0] = v38.i64[0];
      sub_1C97A6264(&v0[111].i64[1], v0[143].i64);
      sub_1C991A820();
      memcpy(v15, &v0[33], 0x79uLL);
      swift_storeEnumTagMultiPayload();
      sub_1C9919670(v0[33].i64, v0[25].i64);
      v18 = sub_1C991A6C0();
      v0[190].i64[1] = v18;
      *v18 = v0;
      v18[1] = sub_1C9916B2C;
      v11 = v0[182].i64[0];
      break;
    case 3uLL:
      v19 = v0[181].i64[1];
      sub_1C991A814();
      memcpy(&v0[107].u32[1] + 3, v20, 0x41uLL);
      v0[71].i64[0] = v1;
      v0[71].i64[1] = v2;
      v0[72].i8[0] = v3;
      v0[72].i64[1] = v4;
      v0[73].i64[0] = v5;
      v0[73].i8[8] = v6;
      memcpy(&v0[73].u64[1] + 1, &v0[107], 0x48uLL);
      sub_1C9919638(v0[41].i64, &v0[63].i64[1]);
      sub_1C97A6264(&v0[111].i64[1], v0[152].i64);
      sub_1C991A820();
      memcpy(v19, &v0[71], 0x71uLL);
      swift_storeEnumTagMultiPayload();
      sub_1C97F9898(v0[71].i64, &v0[78].i64[1]);
      v21 = sub_1C991A6C0();
      v0[192].i64[0] = v21;
      *v21 = v0;
      v21[1] = sub_1C9916EA4;
      v11 = v0[181].i64[1];
      break;
    case 4uLL:
      v12 = v0[181].i64[0];
      sub_1C991A814();
      memcpy(&v0[87], v13, 0x41uLL);
      v0[86].i64[0] = v1;
      v0[86].i64[1] = v2;
      sub_1C9919638(v0[41].i64, &v0[48].i64[1]);
      sub_1C97A6264(&v0[111].i64[1], v0[161].i64);
      sub_1C991A820();
      memcpy(v12, &v0[86], 0x51uLL);
      swift_storeEnumTagMultiPayload();
      sub_1C98AD578(v0[86].i64, &v0[91].i64[1]);
      v14 = sub_1C991A6C0();
      v0[193].i64[1] = v14;
      *v14 = v0;
      v14[1] = sub_1C991721C;
      v11 = v0[181].i64[0];
      break;
    case 5uLL:
      v38.i64[0] = v0[180].i64[1];
      v25 = v0[169].i64[1];
      v26 = v0[169].i64[0];
      if (v8 != 0xA000000000000000 || (v27 = vorrq_s8(v0[46], v0[45]), v3 | *&vorr_s8(*v27.i8, *&vextq_s8(v27, v27, 8uLL)) | v4 | v5 | v6 | v7 | v9 | v1 | v2 | v0[44].i64[1] | v0[44].i64[0]))
      {
        v30 = v0[182].i64[1];
        memcpy(&v0[116], v26, 0x41uLL);
        sub_1C97A6264(&v0[111].i64[1], &v0[120].i64[1]);
        sub_1C97A5A8C(v25, v25[3]);
        memcpy(v30, &v0[116], 0x41uLL);
        swift_storeEnumTagMultiPayload();
        sub_1C986EA44(v0[116].i64, v0[125].i64);
        v31 = sub_1C991A6C0();
        v0[184].i64[1] = v31;
        *v31 = v0;
        v31[1] = sub_1C9915D4C;
        v11 = v0[182].i64[1];
      }

      else
      {
        v28 = v0[183].i64[0];
        memcpy(&v0[129].u64[1], v26, 0x41uLL);
        sub_1C97A6264(&v0[111].i64[1], v0[134].i64);
        sub_1C97A5A8C(v25, v25[3]);
        memcpy(v28, &v0[129].u64[1], 0x41uLL);
        swift_storeEnumTagMultiPayload();
        sub_1C986F240(&v0[129].i64[1], &v0[138].i64[1]);
        v29 = sub_1C991A6C0();
        v0[188].i64[1] = v29;
        *v29 = v0;
        v29[1] = sub_1C9916540;
        v11 = v0[183].i64[0];
      }

      break;
    default:
      __dst = v0[184].i64[0];
      v35 = v8 & 0x1FFFFFFFFFFFFFFFLL;
      v36 = v0[169].i64[1];
      v38 = v0[44];
      v33 = v0[45];
      v34 = v0[46];
      memcpy(&v0[20].u64[1], v0[169].i64[0], 0x41uLL);
      v0[13].i64[0] = v1;
      v0[13].i64[1] = v2;
      v0[14].i64[0] = v3;
      v0[14].i64[1] = v4;
      v0[15].i64[0] = v5;
      v0[15].i64[1] = v6;
      v0[16] = v38;
      v0[17] = v33;
      v0[18] = v34;
      v0[19].i64[0] = v7;
      v0[19].i64[1] = v35;
      v0[20].i64[0] = v9;
      sub_1C9919638(v0[41].i64, v0[56].i64);
      sub_1C97A6264(&v0[111].i64[1], &v0[156].i64[1]);
      sub_1C97A5A8C(v36, v36[3]);
      memcpy(__dst, &v0[13], 0xB9uLL);
      swift_storeEnumTagMultiPayload();
      sub_1C99196CC(v0[13].i64, v0[1].i64);
      v10 = sub_1C991A6C0();
      v0[185].i64[1] = v10;
      *v10 = v0;
      v10[1] = sub_1C9915E50;
      v11 = v0[184].i64[0];
      break;
  }

  return (v38.i64[0])(v11);
}

uint64_t sub_1C9915D4C()
{
  sub_1C97AA95C();
  sub_1C97DA7CC();
  v4 = v3;
  sub_1C97DA70C();
  *v5 = v4;
  v6 = *v2;
  sub_1C97AA83C();
  *v7 = v6;
  *(v4 + 2960) = v0;

  if (!v0)
  {
    *(v4 + 3040) = v1;
  }

  sub_1C97DA7BC();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C9915E50()
{
  sub_1C97AA95C();
  sub_1C97DA7CC();
  v4 = v3;
  sub_1C97DA70C();
  *v5 = v4;
  v6 = *v2;
  sub_1C97AA83C();
  *v7 = v6;
  *(v4 + 2976) = v0;

  if (!v0)
  {
    *(v4 + 2984) = v1;
  }

  sub_1C97DA7BC();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C99160EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_1C991A6E0();
  sub_1C991A6FC();
  sub_1C97AA724(*(v16 + 2944));
  sub_1C986EB9C(v16 + 208);
  v17 = sub_1C991A52C();
  sub_1C991A56C(v17);

  sub_1C991A5F0();
  sub_1C98B10BC();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1C99161C8()
{
  sub_1C97AA95C();
  sub_1C97DA7CC();
  v4 = v3;
  sub_1C97DA70C();
  *v5 = v4;
  v6 = *v2;
  sub_1C97AA83C();
  *v7 = v6;
  *(v4 + 3000) = v0;

  if (!v0)
  {
    *(v4 + 3008) = v1;
  }

  sub_1C97DA7BC();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C9916464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_1C991A6E0();
  sub_1C991A6FC();
  sub_1C97AA724(*(v16 + 2936));
  sub_1C986EB48(v16 + 1632);
  v17 = sub_1C991A52C();
  sub_1C991A56C(v17);

  sub_1C991A5F0();
  sub_1C98B10BC();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1C9916540()
{
  sub_1C97AA95C();
  sub_1C97DA7CC();
  v4 = v3;
  sub_1C97DA70C();
  *v5 = v4;
  v6 = *v2;
  sub_1C97AA83C();
  *v7 = v6;
  *(v4 + 3024) = v0;

  if (!v0)
  {
    *(v4 + 3032) = v1;
  }

  sub_1C97DA7BC();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C99167DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_1C991A6E0();
  sub_1C991A6FC();
  sub_1C97AA724(*(v16 + 2928));
  sub_1C986EAF4(v16 + 2072);
  v17 = sub_1C991A52C();
  sub_1C991A56C(v17);

  sub_1C991A5F0();
  sub_1C98B10BC();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1C9916A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_1C991A6E0();
  sub_1C991A6FC();
  sub_1C97AA724(*(v16 + 2920));
  sub_1C986EAA0(v16 + 1856);
  v17 = sub_1C991A52C();
  sub_1C991A56C(v17);

  sub_1C991A5F0();
  sub_1C98B10BC();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1C9916B2C()
{
  sub_1C97AA95C();
  sub_1C97DA7CC();
  v4 = v3;
  sub_1C97DA70C();
  *v5 = v4;
  v6 = *v2;
  sub_1C97AA83C();
  *v7 = v6;
  *(v4 + 3056) = v0;

  if (!v0)
  {
    *(v4 + 3064) = v1;
  }

  sub_1C97DA7BC();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C9916DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_1C991A6E0();
  sub_1C991A6FC();
  sub_1C97AA724(*(v16 + 2912));
  sub_1C986E9F0(v16 + 528);
  v17 = sub_1C991A52C();
  sub_1C991A56C(v17);

  sub_1C991A5F0();
  sub_1C98B10BC();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1C9916EA4()
{
  sub_1C97AA95C();
  sub_1C97DA7CC();
  v4 = v3;
  sub_1C97DA70C();
  *v5 = v4;
  v6 = *v2;
  sub_1C97AA83C();
  *v7 = v6;
  *(v4 + 3080) = v0;

  if (!v0)
  {
    *(v4 + 3088) = v1;
  }

  sub_1C97DA7BC();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C9917140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_1C991A6E0();
  sub_1C991A6FC();
  sub_1C97AA724(*(v16 + 2904));
  sub_1C97F9A64(v16 + 1136);
  v17 = sub_1C991A52C();
  sub_1C991A56C(v17);

  sub_1C991A5F0();
  sub_1C98B10BC();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1C991721C()
{
  sub_1C97AA95C();
  sub_1C97DA7CC();
  v4 = v3;
  sub_1C97DA70C();
  *v5 = v4;
  v6 = *v2;
  sub_1C97AA83C();
  *v7 = v6;
  *(v4 + 3104) = v0;

  if (!v0)
  {
    *(v4 + 3112) = v1;
  }

  sub_1C97DA7BC();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C99174B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_1C991A6E0();
  sub_1C991A6FC();
  sub_1C97AA724(*(v16 + 2896));
  sub_1C986E99C(v16 + 1376);
  v17 = sub_1C991A52C();
  sub_1C991A56C(v17);

  sub_1C991A5F0();
  sub_1C98B10BC();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14, a15, a16);
}

void sub_1C9917594(void **a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1C9917AA8(a3);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (v5)
    {
      if (qword_1EC3C5520 != -1)
      {
        swift_once();
      }

      v8 = sub_1C9A91B58();
      sub_1C97BFF6C(v8, qword_1EC3D3108);
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v9 = v5;
      v10 = sub_1C9A91B38();
      v11 = sub_1C9A92FC8();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v46 = v45;
        *v12 = 136315650;
        v13 = [v7 description];
        v14 = sub_1C9A924A8();
        v16 = v15;

        v17 = sub_1C9849140(v14, v16, &v46);

        *(v12 + 4) = v17;
        *(v12 + 12) = 2080;
        v18 = [a3 description];
        v19 = sub_1C9A924A8();
        v21 = v20;

        v22 = sub_1C9849140(v19, v21, &v46);

        *(v12 + 14) = v22;
        *(v12 + 22) = 2080;
        v23 = sub_1C9A913B8();
        v24 = [v23 description];

        v25 = sub_1C9A924A8();
        v27 = v26;

        v28 = sub_1C9849140(v25, v27, &v46);

        *(v12 + 24) = v28;
        _os_log_impl(&dword_1C9788000, v10, v11, "Observer %s for request %s failed with error %s", v12, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1CCA93280](v45, -1, -1);
        MEMORY[0x1CCA93280](v12, -1, -1);
      }

      if ([v7 respondsToSelector_])
      {
        swift_unknownObjectRetain();
        v29 = sub_1C9A913B8();
        [v7 request:a3 didFailWithError:v29];
        swift_unknownObjectRelease_n();

        return;
      }
    }

    else
    {
      if (qword_1EC3C5520 != -1)
      {
        swift_once();
      }

      v30 = sub_1C9A91B58();
      sub_1C97BFF6C(v30, qword_1EC3D3108);
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v31 = sub_1C9A91B38();
      v32 = sub_1C9A92FC8();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v46 = v34;
        *v33 = 136315394;
        v35 = [v7 description];
        v36 = sub_1C9A924A8();
        v38 = v37;

        v39 = sub_1C9849140(v36, v38, &v46);

        *(v33 + 4) = v39;
        *(v33 + 12) = 2080;
        v40 = [a3 description];
        v41 = sub_1C9A924A8();
        v43 = v42;

        v44 = sub_1C9849140(v41, v43, &v46);

        *(v33 + 14) = v44;
        _os_log_impl(&dword_1C9788000, v31, v32, "Observer %s for request %s completed", v33, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1CCA93280](v34, -1, -1);
        MEMORY[0x1CCA93280](v33, -1, -1);
      }

      if ([v7 respondsToSelector_])
      {
        [v7 requestDidComplete_];
      }
    }

    swift_unknownObjectRelease();
  }
}

uint64_t sub_1C9917AA8(void *a1)
{
  v2 = sub_1C97A2CEC(&qword_1EC3CA8D0, &qword_1C9AA47B0);
  sub_1C97DACE4(v2);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v22 - v4;
  if (qword_1EC3C5520 != -1)
  {
    sub_1C98134D8();
    swift_once();
  }

  v6 = sub_1C9A91B58();
  sub_1C97BFF6C(v6, qword_1EC3D3108);

  swift_unknownObjectRetain();
  v7 = sub_1C9A91B38();
  v8 = sub_1C9A92FC8();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v9 = 136315394;
    sub_1C9A91748();
    sub_1C97AE3DC();
    v10 = sub_1C9A93A98();
    v12 = sub_1C9849140(v10, v11, &v23);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    v13 = [a1 description];
    v14 = sub_1C9A924A8();
    v16 = v15;

    v17 = sub_1C9849140(v14, v16, &v23);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_1C9788000, v7, v8, "(SNSystemAudioAnalyzerRemote:%s removeRequest:%s", v9, 0x16u);
    swift_arrayDestroy();
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
  }

  v18 = sub_1C9A92988();
  sub_1C97ACC50(v5, 1, 1, v18);
  sub_1C97F07FC();
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = v19;
  v20[5] = a1;
  swift_unknownObjectRetain();
  sub_1C98B1058();
  sub_1C99A9128();
}

void *sub_1C9917D5C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result request:a3 didProduceResult:v4];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1C9917DD4(uint64_t a1)
{
  v2[42] = a1;
  v2[43] = v1;
  v2[44] = *v1;
  return sub_1C991A5D4(sub_1C9917E18, 0);
}

uint64_t sub_1C9917E18()
{
  sub_1C97AA95C();
  sub_1C9914EBC();
  v1 = v0[43];
  memcpy(v0 + 17, v0 + 2, 0x78uLL);
  v2 = *(v1 + OBJC_IVAR____TtC13SoundAnalysis27SNSystemAudioAnalyzerRemote_state);
  v0[45] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1C9917EE8, v2, 0);
}

uint64_t sub_1C9917EE8()
{
  sub_1C97AA884();
  sub_1C9912340(v0 + 256, (v0 + 16));
  v1 = sub_1C982F8C0();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1C9917F4C()
{
  sub_1C97AA95C();
  sub_1C97E82EC(v0 + 256, v0 + 296, &qword_1EC3CC6D0, &qword_1C9AB9530);
  if (*(v0 + 320))
  {
    sub_1C97A5A8C((v0 + 296), *(v0 + 320));
    sub_1C9A91D38();
    sub_1C9919410(v0 + 136);
    sub_1C97DA1E0(v0 + 256, &qword_1EC3CC6D0, &qword_1C9AB9530);
    sub_1C97A592C((v0 + 296));
  }

  else
  {
    sub_1C97DA1E0(v0 + 256, &qword_1EC3CC6D0, &qword_1C9AB9530);
    sub_1C9919410(v0 + 136);
    sub_1C97DA1E0(v0 + 296, &qword_1EC3CC6D0, &qword_1C9AB9530);
  }

  sub_1C97DA91C();

  return v1();
}

uint64_t sub_1C9918068()
{
  v1 = *(*(v0 + 176) + OBJC_IVAR____TtC13SoundAnalysis27SNSystemAudioAnalyzerRemote_state);
  *(v0 + 184) = v1;
  return sub_1C991A5D4(sub_1C9918090, v1);
}

uint64_t sub_1C9918090()
{
  sub_1C97AA884();
  *(v0 + 192) = sub_1C9912300();
  v1 = sub_1C982F8C0();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1C99180F0()
{
  sub_1C991A6FC();
  v1 = v0[24];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    do
    {
      v4 = sub_1C991A7FC();
      sub_1C97E82EC(v4, v5, v6, &qword_1C9AB3B50);
      sub_1C99192A4(v0[2], v0[3], v0[4], v0[5], v0[6], v0[7], v0[8], v0[9], v0[10], v0[11], v0[12], v0[13], v0[14], v0[15]);
      sub_1C97A5A8C(v0 + 17, v0[20]);
      sub_1C9A91D38();
      sub_1C97A592C(v0 + 17);
      v3 += 160;
      --v2;
    }

    while (v2);
  }

  sub_1C97DA91C();

  return v7();
}

void sub_1C99181F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C97AEB94();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = sub_1C97A2CEC(&qword_1EC3CA8D0, &qword_1C9AA47B0);
  sub_1C97DACE4(v27);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v52 - v29;
  if (qword_1EC3C5520 != -1)
  {
    sub_1C98134D8();
    swift_once();
  }

  v31 = sub_1C9A91B58();
  sub_1C97BFF6C(v31, qword_1EC3D3108);

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v32 = sub_1C9A91B38();
  v33 = sub_1C9A92FC8();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v54 = v30;
    v35 = v34;
    v53 = swift_slowAlloc();
    a10 = v53;
    *v35 = 136315650;
    sub_1C9A91748();
    v55 = v20;
    sub_1C97AE3DC();
    v36 = sub_1C9A93A98();
    v38 = sub_1C9849140(v36, v37, &a10);

    *(v35 + 4) = v38;
    *(v35 + 12) = 2080;
    v39 = [v26 description];
    v40 = sub_1C9A924A8();
    v42 = v41;

    v43 = sub_1C9849140(v40, v42, &a10);

    *(v35 + 14) = v43;
    *(v35 + 22) = 2080;
    v44 = [v24 description];
    sub_1C9A924A8();

    v45 = sub_1C98138D4();
    v48 = sub_1C9849140(v45, v46, v47);

    *(v35 + 24) = v48;
    _os_log_impl(&dword_1C9788000, v32, v33, "(SNSystemAudioAnalyzerRemote:%s addRequest:%s withObserver:%s", v35, 0x20u);
    swift_arrayDestroy();
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
    v30 = v54;
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
  }

  v49 = sub_1C9A92988();
  sub_1C97ACC50(v30, 1, 1, v49);
  sub_1C97F07FC();
  v50 = swift_allocObject();
  swift_weakInit();
  v51 = swift_allocObject();
  v51[2] = 0;
  v51[3] = 0;
  v51[4] = v50;
  v51[5] = v26;
  v51[6] = v24;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_1C98B1058();
  sub_1C99A9128();

  sub_1C97AEB5C();
}

uint64_t sub_1C9918520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1C9918544, 0, 0);
}

uint64_t sub_1C9918544()
{
  sub_1C97AA884();
  sub_1C991A724();
  Strong = swift_weakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[9] = v2;
    *v2 = v0;
    v2[1] = sub_1C9918618;
    v4 = v0[6];
    v3 = v0[7];

    return sub_1C9914818(v4, v3);
  }

  else
  {
    sub_1C97DA91C();

    return v6();
  }
}

uint64_t sub_1C9918618()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v1 = *v0;
  sub_1C97AA83C();
  *v2 = v1;

  v3 = sub_1C982F8C0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C99186FC()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C9918754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1C9918774, 0, 0);
}

uint64_t sub_1C9918774()
{
  sub_1C97AA884();
  sub_1C991A724();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[8] = v2;
    *v2 = v0;
    v2[1] = sub_1C9918848;
    v3 = v0[6];

    return sub_1C9917DD4(v3);
  }

  else
  {
    sub_1C97DA91C();

    return v5();
  }
}

uint64_t sub_1C9918848()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v1 = *v0;
  sub_1C97AA83C();
  *v2 = v1;

  v3 = sub_1C982F8C0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C991892C()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C9918984()
{
  v0 = sub_1C97A2CEC(&qword_1EC3CA8D0, &qword_1C9AA47B0);
  sub_1C97DACE4(v0);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v16 - v2;
  if (qword_1EC3C5520 != -1)
  {
    sub_1C98134D8();
    swift_once();
  }

  v4 = sub_1C9A91B58();
  sub_1C97BFF6C(v4, qword_1EC3D3108);

  v5 = sub_1C9A91B38();
  v6 = sub_1C9A92FC8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    sub_1C9A91748();
    sub_1C97AE3DC();
    v9 = sub_1C9A93A98();
    v11 = sub_1C9849140(v9, v10, &v17);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1C9788000, v5, v6, "(SNSystemAudioAnalyzerRemote:%s removeAllRequests", v7, 0xCu);
    sub_1C97A592C(v8);
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
  }

  v12 = sub_1C9A92988();
  sub_1C97ACC50(v3, 1, 1, v12);
  sub_1C97F07FC();
  v13 = swift_allocObject();
  swift_weakInit();
  sub_1C97DAA28();
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v13;
  sub_1C98B1058();
  sub_1C99A9128();
}

uint64_t sub_1C9918BC8()
{
  sub_1C97AA884();
  sub_1C991A724();
  Strong = swift_weakLoadStrong();
  *(v0 + 48) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 56) = v2;
    *v2 = v0;
    v2[1] = sub_1C9918C94;

    return sub_1C991804C();
  }

  else
  {
    sub_1C97DA91C();

    return v4();
  }
}

uint64_t sub_1C9918C94()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v1 = *v0;
  sub_1C97AA83C();
  *v2 = v1;

  v3 = sub_1C982F8C0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C9918D78()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C9918DD0()
{
  v1 = OBJC_IVAR____TtC13SoundAnalysis27SNSystemAudioAnalyzerRemote_id;
  sub_1C9A91748();
  sub_1C97DA940();
  (*(v2 + 8))(v0 + v1);

  sub_1C97A592C((v0 + OBJC_IVAR____TtC13SoundAnalysis27SNSystemAudioAnalyzerRemote_environment));

  return v0;
}

uint64_t sub_1C9918E7C()
{
  sub_1C9918DD0();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SNSystemAudioAnalyzerRemote(uint64_t a1)
{
  result = qword_1EC3CC6A8;
  if (!qword_1EC3CC6A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C9918F28(uint64_t a1)
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

uint64_t sub_1C9918FFC(uint64_t a1)
{
  v1 = *(a1 + 104) >> 61;
  if (v1 <= 4)
  {
    return v1;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_1C9919020(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 104) >> 1;
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1C9919068(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 120) = 1;
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
      result = 0.0;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 96) = 0;
      *(a1 + 104) = 2 * -a2;
      *(a1 + 112) = 0;
      return result;
    }

    *(a1 + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C99190EC(uint64_t result, uint64_t a2)
{
  if (a2 < 5)
  {
    *(result + 104) = *(result + 104) & 1 | (a2 << 61);
  }

  else
  {
    *result = (a2 - 5);
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 104) = xmmword_1C9AB37F0;
  }

  return result;
}

unint64_t sub_1C991914C()
{
  result = qword_1EC3CC6C0;
  if (!qword_1EC3CC6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC6C0);
  }

  return result;
}

uint64_t sub_1C991920C()
{
  sub_1C97AA95C();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = sub_1C97AA858(v2);
  *v3 = v4;
  v5 = sub_1C98B1040(v3);

  return sub_1C9918BA8(v5, v6, v7, v1);
}

uint64_t sub_1C99192A4(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14)
{
  v14 = a14 >> 61;
  if (a14 >> 61 != 4)
  {
    if (v14 == 3)
    {
      sub_1C97A6B9C(result, a2, a3);
    }

    else
    {
      if (v14)
      {
        return result;
      }

      sub_1C97A6368(result, a2, a3);
      sub_1C97A6390(a8, a9, a10, a11, a12, a13, a14 & 1);
    }
  }
}

uint64_t sub_1C991936C()
{
  sub_1C97DA934();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = sub_1C97AA858(v3);
  *v4 = v5;
  v6 = sub_1C98B1040(v4);

  return sub_1C9918754(v6, v7, v8, v2, v1);
}

unint64_t sub_1C9919440()
{
  result = qword_1EC3CC6D8;
  if (!qword_1EC3CC6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC6D8);
  }

  return result;
}

uint64_t sub_1C9919494()
{
  sub_1C97DA934();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = swift_task_alloc();
  v5 = sub_1C97AA858(v4);
  *v5 = v6;
  v7 = sub_1C98B1040(v5);

  return sub_1C9918520(v7, v8, v9, v1, v2, v3);
}

uint64_t sub_1C9919554(const void *a1, uint64_t a2, uint64_t a3)
{
  v8[3] = sub_1C9A91DE8();
  v8[4] = MEMORY[0x1E695BF08];
  v8[0] = a2;
  sub_1C97A2CEC(&unk_1EC3C7590, &qword_1C9AB3BB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C9A9EDD0;
  memcpy((inited + 32), a1, 0x78uLL);
  sub_1C97D9AF8(v8, inited + 152);
  swift_beginAccess();

  sub_1C9919638(a1, v7);
  sub_1C98D062C(inited);
  swift_endAccess();
  return sub_1C97A592C(v8);
}

unint64_t sub_1C9919728()
{
  result = qword_1EC3CC7E8;
  if (!qword_1EC3CC7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC7E8);
  }

  return result;
}

unint64_t sub_1C991977C()
{
  result = qword_1EC3CC7F8;
  if (!qword_1EC3CC7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC7F8);
  }

  return result;
}

unint64_t sub_1C99197D0()
{
  result = qword_1EC3CC808;
  if (!qword_1EC3CC808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC808);
  }

  return result;
}

unint64_t sub_1C9919824()
{
  result = qword_1EC3CC818;
  if (!qword_1EC3CC818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC818);
  }

  return result;
}

unint64_t sub_1C9919878()
{
  result = qword_1EC3CC828;
  if (!qword_1EC3CC828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC828);
  }

  return result;
}

unint64_t sub_1C99198CC()
{
  result = qword_1EC3CC838;
  if (!qword_1EC3CC838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC838);
  }

  return result;
}

unint64_t sub_1C9919920()
{
  result = qword_1EC3CC848;
  if (!qword_1EC3CC848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC848);
  }

  return result;
}

unint64_t sub_1C9919974()
{
  result = qword_1EC3CC858;
  if (!qword_1EC3CC858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC858);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SNSystemAudioAnalyzerRemote.Request.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C9919B04(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for SNSystemAudioAnalyzerRemote.DomainError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C9919C90()
{
  result = qword_1EC3CC8B8;
  if (!qword_1EC3CC8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC8B8);
  }

  return result;
}

unint64_t sub_1C9919CE8()
{
  result = qword_1EC3CC8C0;
  if (!qword_1EC3CC8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC8C0);
  }

  return result;
}

unint64_t sub_1C9919D40()
{
  result = qword_1EC3CC8C8;
  if (!qword_1EC3CC8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC8C8);
  }

  return result;
}

unint64_t sub_1C9919D98()
{
  result = qword_1EC3CC8D0;
  if (!qword_1EC3CC8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC8D0);
  }

  return result;
}

unint64_t sub_1C9919DF0()
{
  result = qword_1EC3CC8D8;
  if (!qword_1EC3CC8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC8D8);
  }

  return result;
}

unint64_t sub_1C9919E48()
{
  result = qword_1EC3CC8E0;
  if (!qword_1EC3CC8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC8E0);
  }

  return result;
}

unint64_t sub_1C9919EA0()
{
  result = qword_1EC3CC8E8;
  if (!qword_1EC3CC8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC8E8);
  }

  return result;
}

unint64_t sub_1C9919EF8()
{
  result = qword_1EC3CC8F0;
  if (!qword_1EC3CC8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC8F0);
  }

  return result;
}

unint64_t sub_1C9919F50()
{
  result = qword_1EC3CC8F8;
  if (!qword_1EC3CC8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC8F8);
  }

  return result;
}

unint64_t sub_1C9919FA8()
{
  result = qword_1EC3CC900;
  if (!qword_1EC3CC900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC900);
  }

  return result;
}

unint64_t sub_1C991A000()
{
  result = qword_1EC3CC908;
  if (!qword_1EC3CC908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC908);
  }

  return result;
}

unint64_t sub_1C991A058()
{
  result = qword_1EC3CC910;
  if (!qword_1EC3CC910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC910);
  }

  return result;
}

unint64_t sub_1C991A0B0()
{
  result = qword_1EC3CC918;
  if (!qword_1EC3CC918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC918);
  }

  return result;
}

unint64_t sub_1C991A108()
{
  result = qword_1EC3CC920;
  if (!qword_1EC3CC920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC920);
  }

  return result;
}

unint64_t sub_1C991A160()
{
  result = qword_1EC3CC928;
  if (!qword_1EC3CC928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC928);
  }

  return result;
}

unint64_t sub_1C991A1B8()
{
  result = qword_1EC3CC930;
  if (!qword_1EC3CC930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC930);
  }

  return result;
}

unint64_t sub_1C991A210()
{
  result = qword_1EC3CC938;
  if (!qword_1EC3CC938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC938);
  }

  return result;
}

unint64_t sub_1C991A268()
{
  result = qword_1EC3CC940;
  if (!qword_1EC3CC940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC940);
  }

  return result;
}

unint64_t sub_1C991A2C0()
{
  result = qword_1EC3CC948;
  if (!qword_1EC3CC948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC948);
  }

  return result;
}

unint64_t sub_1C991A318()
{
  result = qword_1EC3CC950;
  if (!qword_1EC3CC950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC950);
  }

  return result;
}

unint64_t sub_1C991A370()
{
  result = qword_1EC3CC958;
  if (!qword_1EC3CC958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC958);
  }

  return result;
}

unint64_t sub_1C991A3C8()
{
  result = qword_1EC3CC960;
  if (!qword_1EC3CC960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC960);
  }

  return result;
}

unint64_t sub_1C991A420()
{
  result = qword_1EC3CC968;
  if (!qword_1EC3CC968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC968);
  }

  return result;
}

unint64_t sub_1C991A478()
{
  result = qword_1EC3CC970;
  if (!qword_1EC3CC970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC970);
  }

  return result;
}

unint64_t sub_1C991A4D0()
{
  result = qword_1EC3CC978[0];
  if (!qword_1EC3CC978[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC3CC978);
  }

  return result;
}

uint64_t sub_1C991A56C(uint64_t a1)
{
}

uint64_t sub_1C991A598(uint64_t a1)
{
}

uint64_t sub_1C991A610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1C9A938F8();
}

uint64_t sub_1C991A634(uint64_t a1, uint64_t a2)
{

  return sub_1C9A93858();
}

uint64_t sub_1C991A658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1C9A93988();
}

uint64_t sub_1C991A680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1C9A91F68();
}

uint64_t sub_1C991A6A0(uint64_t a1, uint64_t a2)
{

  return sub_1C9A93858();
}

uint64_t sub_1C991A6C0()
{

  return swift_task_alloc();
}

uint64_t sub_1C991A708(uint64_t a1)
{

  return sub_1C9A91F28();
}

uint64_t sub_1C991A724()
{

  return swift_beginAccess();
}

uint64_t sub_1C991A79C()
{
}

uint64_t sub_1C991A7B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1C9A93A18();
}

uint64_t sub_1C991A7CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{

  return sub_1C9919638(&STACK[0x240], &a51);
}

uint64_t sub_1C991A7E4()
{

  return swift_unknownObjectRetain();
}

void *sub_1C991A820()
{
  v2 = v0[3];

  return sub_1C97A5A8C(v0, v2);
}

uint64_t sub_1C991A838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return sub_1C9919638(&a65, &a51);
}

uint64_t sub_1C991A874(uint64_t a1)
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

uint64_t sub_1C991A918(__int128 *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1C979B054(a1, v4 + 16);
  *(v4 + 56) = a2;
  return v4;
}

uint64_t sub_1C991A9B8()
{
  os_unfair_recursive_lock_lock_with_options();
  sub_1C991AA30(v0);

  return os_unfair_recursive_lock_unlock();
}

uint64_t sub_1C991AA7C()
{
  sub_1C97A592C((v0 + 16));

  return v0;
}

uint64_t sub_1C991AAA4()
{
  sub_1C991AA7C();

  return swift_deallocClassInstance();
}

uint64_t sub_1C991AB20(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(*v2 + 104);
  v9 = *(*v2 + 80);
  v10 = *(v4 + 88);
  v11 = v5;
  v6 = type metadata accessor for UpstreamEventSerializer.InnerSubscriber.InnerSubscription(0, &v9);
  sub_1C97D9AF8(a1, &v9);
  v7 = sub_1C991A918(&v9, *(v2 + *(*v2 + 120)));
  v11 = v6;
  WitnessTable = swift_getWitnessTable();
  v9 = v7;

  sub_1C9A91D18();

  return sub_1C97A592C(&v9);
}

uint64_t sub_1C991AD38(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1C991AD88(a1, a2);
  return v4;
}

uint64_t sub_1C991AD88(uint64_t a1, uint64_t a2)
{
  sub_1C991B418();
  (*(*(*(v5 + 88) - 8) + 32))(v2 + *(v4 + 112));
  *(v2 + *(*v2 + 120)) = a2;
  return v2;
}

uint64_t sub_1C991AE18(uint64_t a1, uint64_t a2)
{
  sub_1C991B418();
  (*(*(*(v4 + 88) - 8) + 8))(v2 + *(v3 + 112));

  return v2;
}

uint64_t sub_1C991AF20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  os_unfair_recursive_lock_lock_with_options();
  sub_1C991AFB8(v3, a1, a2);

  return os_unfair_recursive_lock_unlock();
}

uint64_t sub_1C991AFB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 88);
  v14[0] = *(v9 + 80);
  v14[1] = v11;
  v14[2] = v10;
  v14[3] = v12;
  type metadata accessor for UpstreamEventSerializer.InnerSubscriber(0, v14);
  (*(v6 + 16))(v8, a2, a3);
  v14[0] = sub_1C991AD38(v8, *(a1 + 16));

  swift_getWitnessTable();
  sub_1C9A91F08();
}

char *sub_1C991B154()
{
  v1 = *v0;

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 104));
  return v0;
}

uint64_t sub_1C991B1EC(void (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

uint64_t sub_1C991B260(uint64_t a1)
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

void *sub_1C991B428@<X0>(void *a1@<X8>)
{
  if (qword_1EC3C5DE8 != -1)
  {
    swift_once();
  }

  if (byte_1EC3D32B8)
  {
    v3 = qword_1EC3D3290;
    sub_1C97A2CEC(&unk_1EC3CA040, &qword_1C9A9C750);
    return swift_willThrowTypedImpl();
  }

  else
  {
    v7 = qword_1EC3D3290;
    v8 = qword_1EC3D3298;
    v9 = qword_1EC3D32A0;
    v10 = qword_1EC3D32A8;
    v11 = qword_1EC3D32B0;

    sub_1C992B5C4(&v7, __src, v5);

    if (!v1)
    {
      return memcpy(a1, __src, 0x50uLL);
    }
  }

  return result;
}

id sub_1C991B554()
{
  sub_1C9A91778();
  sub_1C982F984();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C991B938();
  v4 = sub_1C97A2CEC(qword_1EC3CCB00, qword_1C9AB4910);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  v7 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1C991B8A4(0xD000000000000014, 0x80000001C9AD9570, v7);
  sub_1C991B978();
  v8 = sub_1C9A917A8();
  sub_1C991B998(v8);
  if (!v9)
  {
    sub_1C9A91798();
    sub_1C991B950();
    (*(v10 + 8))(v6, v1);
  }

  [v7 setTimeZone_];

  sub_1C991B908();
  sub_1C9A91768();
  v11 = sub_1C991B964();
  v12(v11);
  [v7 setLocale_];

  return v7;
}

id sub_1C991B6FC()
{
  sub_1C9A91778();
  sub_1C982F984();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C991B938();
  v4 = sub_1C97A2CEC(qword_1EC3CCB00, qword_1C9AB4910);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  v7 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1C991B8A4(0xD000000000000018, 0x80000001C9AD9550, v7);
  sub_1C991B978();
  v8 = sub_1C9A917A8();
  sub_1C991B998(v8);
  if (!v9)
  {
    sub_1C9A91798();
    sub_1C991B950();
    (*(v10 + 8))(v6, v1);
  }

  [v7 setTimeZone_];

  sub_1C991B908();
  sub_1C9A91768();
  v11 = sub_1C991B964();
  v12(v11);
  [v7 setLocale_];

  return v7;
}

void sub_1C991B8A4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1C9A92478();

  [a3 setDateFormat_];
}

uint64_t sub_1C991B908()
{

  return sub_1C9A91758();
}

uint64_t sub_1C991B978()
{

  return sub_1C9A91788();
}

char *sub_1C991BA0C()
{
  v1 = *v0;
  v2 = sub_1C9A91748();
  sub_1C97AE9C8();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + 2);
  v9 = *(v1 + 96);
  (*(v4 + 16))(v7, &v0[v9], v2);

  sub_1C991BB9C(v8, v7, v10, v11);

  (*(v4 + 8))(v7, v2);
  v14 = type metadata accessor for ContextDictionary.Record(0, *(v1 + 80), v12, v13);
  (*(*(v14 - 8) + 8))(&v0[v9], v14);

  return v0;
}

uint64_t sub_1C991BB9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(*v4 + 80);
  v8 = type metadata accessor for ContextDictionary.Record(255, v7, a3, a4);
  type metadata accessor for ReservableSlot(255, v8, v9, v10);
  v11 = sub_1C9A93258();
  sub_1C97AE9C8();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v19[-v15];
  v22 = a1;
  v20 = v7;
  v21 = a2;
  sub_1C99D6BC0(&v19[-v15], v17);
  return (*(v13 + 8))(v16, v11);
}

uint64_t sub_1C991BCC4()
{
  sub_1C991BA0C();

  return swift_deallocClassInstance();
}

uint64_t sub_1C991BD1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v21[1] = a2;
  v23 = a4;
  v6 = type metadata accessor for ContextDictionary.Record(255, a3, a3, a5);
  v9 = type metadata accessor for ReservableSlot(255, v6, v7, v8);
  v10 = sub_1C9A93258();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v21 - v13;
  v21[0] = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v21 - v15;
  v17 = *(v11 + 16);
  v22 = a1;
  v17(v14, a1, v10);
  if (sub_1C97ABF20(v14, 1, v9) == 1)
  {
    (*(v11 + 8))(v14, v10);
  }

  else if (sub_1C97ABF20(v14, 1, v6) == 1)
  {
    (*(*(v9 - 8) + 8))(v14, v9);
  }

  else
  {
    v18 = v21[0];
    (*(v21[0] + 32))(v16, v14, v6);
    v19 = sub_1C9A91708();
    (*(v18 + 8))(v16, v6);
    if (v19)
    {
      return sub_1C97ACC50(v23, 1, 1, v9);
    }
  }

  return (v17)(v23, v22, v10);
}

uint64_t sub_1C991BF94()
{
  sub_1C9890968();

  return swift_deallocClassInstance();
}

uint64_t sub_1C991BFE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ContextDictionary.Record(319, *(a1 + 80), a3, a4);
  if (v5 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C991C0C0(uint64_t a1)
{
  result = sub_1C9A91748();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C991C148(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_1C9A91748();
  v7 = *(*(v6 - 8) + 84);
  v8 = *(a3 + 16);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v7)
  {
    v11 = *(*(v6 - 8) + 84);
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(v9 + 80);
  v13 = *(v9 + 64);
  if (!a2)
  {
    return 0;
  }

  v14 = v6;
  v15 = *(*(v6 - 8) + 64) + v12;
  if (a2 <= v11)
  {
LABEL_25:
    if (v7 >= v10)
    {
      v23 = a1;
      v8 = v14;
    }

    else
    {
      v23 = ((a1 + v15) & ~v12);
      v7 = v10;
    }

    return sub_1C97ABF20(v23, v7, v8);
  }

  v16 = (v15 & ~v12) + v13;
  v17 = 8 * v16;
  if (v16 <= 3)
  {
    v19 = ((a2 - v11 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v19))
    {
      v18 = *(a1 + v16);
      if (!v18)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v19 > 0xFF)
    {
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v19 < 2)
    {
LABEL_24:
      if (v11)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v18 = *(a1 + v16);
  if (!*(a1 + v16))
  {
    goto LABEL_24;
  }

LABEL_14:
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

  return v11 + (v22 | v20) + 1;
}

void sub_1C991C360(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_1C9A91748();
  v9 = *(a4 + 16);
  v10 = *(v9 - 8);
  v11 = *(*(v8 - 8) + 84);
  v12 = *(v10 + 84);
  if (v12 <= v11)
  {
    v13 = *(*(v8 - 8) + 84);
  }

  else
  {
    v13 = *(v10 + 84);
  }

  v14 = *(v10 + 80);
  v15 = *(*(v8 - 8) + 64) + v14;
  v16 = (v15 & ~v14) + *(v10 + 64);
  v17 = 8 * v16;
  if (a3 <= v13)
  {
    v18 = 0;
  }

  else if (v16 <= 3)
  {
    v21 = ((a3 - v13 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v21))
    {
      v18 = 4;
    }

    else
    {
      if (v21 < 0x100)
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      if (v21 >= 2)
      {
        v18 = v22;
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v18 = 1;
  }

  if (v13 >= a2)
  {
    switch(v18)
    {
      case 1:
        a1[v16] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v16] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v16] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v11 >= v12)
          {
            v24 = a1;
            v25 = a2;
            v9 = v8;
          }

          else
          {
            v24 = (&a1[v15] & ~v14);
            v25 = a2;
            v11 = v12;
          }

          sub_1C97ACC50(v24, v25, v11, v9);
        }

        break;
    }
  }

  else
  {
    v19 = ~v13 + a2;
    if (v16 < 4)
    {
      v20 = (v19 >> v17) + 1;
      if (v16)
      {
        v23 = v19 & ~(-1 << v17);
        bzero(a1, v16);
        if (v16 == 3)
        {
          *a1 = v23;
          a1[2] = BYTE2(v23);
        }

        else if (v16 == 2)
        {
          *a1 = v23;
        }

        else
        {
          *a1 = v19;
        }
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v19;
      v20 = 1;
    }

    switch(v18)
    {
      case 1:
        a1[v16] = v20;
        break;
      case 2:
        *&a1[v16] = v20;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v16] = v20;
        break;
      default:
        return;
    }
  }
}

_BYTE *storeEnumTagSinglePayload for CoerceUtils.DomainError(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C991C6CC()
{
  result = qword_1EC3CCC88[0];
  if (!qword_1EC3CCC88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC3CCC88);
  }

  return result;
}

uint64_t sub_1C991C720@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = sub_1C9A93258();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v16 - v11;
  MEMORY[0x1EEE9AC00](v10);
  (*(v14 + 16))(v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  if (swift_dynamicCast())
  {
    sub_1C97ACC50(v12, 0, 1, a3);
    return (*(*(a3 - 8) + 32))(a4, v12, a3);
  }

  else
  {
    sub_1C97ACC50(v12, 1, 1, a3);
    (*(v9 + 8))(v12, v8);
    sub_1C98066EC();
    swift_allocError();
    return swift_willThrow();
  }
}

void SNClassifySoundRequest.windowDurationConstraint.getter(uint64_t a1@<X8>)
{
  v3 = [v1 windowDurationConstraint];
  v4 = [v3 type];
  if (v4 == 2)
  {
    [v3 durationRange];

    *a1 = v19;
    *(a1 + 16) = v20;
    *(a1 + 32) = v21;
    *(a1 + 48) = 1;
    return;
  }

  if (v4 == 1)
  {
    v5 = [v3 enumeratedDurations];
    sub_1C97C8930(v6);
    v7 = sub_1C9A92798();

    v8 = sub_1C97BDEE0();
    if (!v8)
    {

      v11 = MEMORY[0x1E69E7CC0];
LABEL_15:
      *a1 = v11;
      *(a1 + 8) = 0u;
      *(a1 + 24) = 0u;
      *(a1 + 33) = 0u;
      return;
    }

    v9 = v8;
    v18 = MEMORY[0x1E69E7CC0];
    sub_1C97B7A1C(0, v8 & ~(v8 >> 63), 0);
    if ((v9 & 0x8000000000000000) == 0)
    {
      v17 = v3;
      v10 = 0;
      v11 = v18;
      do
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x1CCA912B0](v10, v7);
        }

        else
        {
          v12 = *(v7 + 8 * v10 + 32);
        }

        v13 = v12;
        [v12 CMTimeValue];

        v15 = *(v18 + 16);
        v14 = *(v18 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_1C97B7A1C(v14 > 1, v15 + 1, 1);
        }

        *(v18 + 16) = v15 + 1;
        v16 = v18 + 24 * v15;
        *(v16 + 32) = v19;
        ++v10;
        *(v16 + 48) = v20;
      }

      while (v9 != v10);

      goto LABEL_15;
    }

    __break(1u);
  }

  sub_1C9A93778("Fatal error", 11, 2, 0xD000000000000034, 0x80000001C9AD95E0, "SoundAnalysis/SoundAnalysisPublicOverlay.swift", 46, 2, 40);
  __break(1u);
}

uint64_t sub_1C991CBCC(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1C991CC0C(a1, v3);
  return v2;
}

char *sub_1C991CC0C(uint64_t a1, double a2)
{
  v4 = *v2;
  type metadata accessor for SafeRecursiveLock(a2);
  v5 = swift_allocObject();
  v6 = swift_slowAlloc();
  *v6 = 0;
  *(v5 + 16) = v6;
  *(v2 + 2) = v5;
  (*(*(*(v4 + 80) - 8) + 32))(&v2[*(*v2 + 104)], a1);
  return v2;
}

uint64_t sub_1C991CCC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  os_unfair_recursive_lock_lock_with_options();
  sub_1C991CD5C(v3, a1, a2, a3);

  return os_unfair_recursive_lock_unlock();
}

uint64_t sub_1C991CDD8()
{
  sub_1C991B154();

  return swift_deallocClassInstance();
}

uint64_t sub_1C991CE6C(uint64_t a1)
{
  v3 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SubscriptionSerializer(0, a1, v6, v7);
  (*(v3 + 16))(v5, v1, a1);
  return sub_1C991CBCC(v5);
}

uint64_t sub_1C991CF48(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_1C9A93258();
    if (v3 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C991D028(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *(v3 + 88);
  v5 = sub_1C9A93258();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  (*&v2[*(v3 + 136)])(v7);
  sub_1C97ACC50(v9, 0, 1, v4);
  v10 = *(*v2 + 128);
  swift_beginAccess();
  (*(v6 + 40))(&v2[v10], v9, v5);
  swift_endAccess();
  return sub_1C9A91D18();
}

uint64_t sub_1C991D240()
{
  sub_1C9828C08();
  sub_1C9828C08();
  return sub_1C9A91D28();
}

uint64_t sub_1C991D29C()
{
  sub_1C9828C08();
  sub_1C9828C08();
  sub_1C9828C08();
  return sub_1C9A91D08();
}

uint64_t sub_1C991D304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_1C991D35C(a1, a2, a3);
  return v6;
}

uint64_t *sub_1C991D35C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1C97ACC50(v3 + *(*v3 + 128), 1, 1, *(*v3 + 88));
  sub_1C9831528();
  (*(*(*(v7 + 96) - 8) + 32))(v3 + *(v8 + 120), a1);
  sub_1C9831528();
  v10 = (v3 + *(v9 + 136));
  *v10 = a2;
  v10[1] = a3;
  return v3;
}

uint64_t *sub_1C991D440()
{
  (*(*(*(*v0 + 96) - 8) + 8))(v0 + *(*v0 + 120));
  sub_1C9831528();
  v2 = *(v1 + 128);
  v3 = sub_1C9A93258();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  sub_1C9831528();

  return v0;
}

uint64_t sub_1C991D538()
{
  sub_1C991D440();

  return swift_deallocClassInstance();
}

unint64_t sub_1C991D634(uint64_t a1)
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

uint64_t sub_1C991D6BC(uint64_t result, unsigned int a2, uint64_t a3)
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

void sub_1C991D7F8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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

uint64_t sub_1C991D9E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 32);
  v16 = *(v11 + 16);
  v17 = v16;
  v18 = v13;
  v19 = v12;
  v20 = v14;
  type metadata accessor for KeepAliveDuringSubscriptionPublisher.Middle(0, &v17);
  (*(v8 + 16))(v10, a1, a3);
  *&v17 = sub_1C991D304(v10, *(v4 + *(a2 + 44)), *(v4 + *(a2 + 44) + 8));

  swift_getWitnessTable();
  sub_1C9A91F08();
}

id sub_1C991DB70(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v39 = *MEMORY[0x1E69E9840];
  v6 = sub_1C9A93008();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C97AEAD8();
  v7 = sub_1C9A92158();
  MEMORY[0x1EEE9AC00](v7 - 8);
  sub_1C97AEAD8();
  v8 = sub_1C9A93018();
  sub_1C97AE9C8();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C97AEAD8();
  v14 = v13 - v12;
  *&v2[OBJC_IVAR___SNFileServer_link] = 0;
  sub_1C9921A0C(v15);
  (*(v10 + 104))(v14, *MEMORY[0x1E69E8098], v8);
  sub_1C9A92148();
  sub_1C9921A50();
  sub_1C97A2CEC(&unk_1EC3CDC60, &unk_1C9AA0040);
  sub_1C9921AA8();
  sub_1C9A93428();
  v16 = sub_1C9A93048();
  *&v3[OBJC_IVAR___SNFileServer_queue] = v16;
  v18 = type metadata accessor for SNFileServer(v17);
  v19 = v16;
  v20 = sub_1C991DFF4(a1, a2, v19);

  *&v3[OBJC_IVAR___SNFileServer_server] = v20;
  v21 = &v3[OBJC_IVAR___SNFileServer_rootDirectory];
  *v21 = a1;
  *(v21 + 1) = a2;
  v22 = objc_opt_self();

  v23 = [v22 defaultManager];
  v24 = sub_1C9A92478();
  v37 = 0;
  LODWORD(v14) = [v23 createDirectoryAtPath:v24 withIntermediateDirectories:1 attributes:0 error:&v37];

  if (v14)
  {
    v25 = v37;
  }

  else
  {
    v26 = v37;
    v27 = sub_1C9A913C8();

    swift_willThrow();
    v37 = 0;
    v38 = 0xE000000000000000;
    sub_1C9A935B8();

    v37 = 0xD000000000000020;
    v38 = 0x80000001C9AD9790;
    MEMORY[0x1CCA90230](a1, a2);

    v29 = v37;
    v28 = v38;
    if (qword_1EC3C5520 != -1)
    {
      sub_1C98134D8();
      swift_once();
    }

    v30 = sub_1C9A91B58();
    sub_1C97BFF6C(v30, qword_1EC3D3108);

    v31 = sub_1C9A91B38();
    v32 = sub_1C9A92FB8();

    if (os_log_type_enabled(v31, v32))
    {
      sub_1C9921C98();
      v33 = swift_slowAlloc();
      sub_1C98FBA2C();
      v34 = swift_slowAlloc();
      v37 = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_1C9849140(v29, v28, &v37);
      _os_log_impl(&dword_1C9788000, v31, v32, "Would-be Fatal Error! %s", v33, 0xCu);
      sub_1C97A592C(v34);
      sub_1C98135FC();
      MEMORY[0x1CCA93280]();
      sub_1C98135FC();
      MEMORY[0x1CCA93280]();
    }
  }

  v36.receiver = v3;
  v36.super_class = v18;
  return objc_msgSendSuper2(&v36, sel_init);
}

id sub_1C991DFF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9A91558();
  sub_1C97AE9C8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C97AEAD8();
  v10 = v9 - v8;
  v11 = [objc_allocWithZone(MEMORY[0x1E69994A0]) init];
  v12 = sub_1C9A92478();
  [v11 setServiceType_];

  sub_1C9A91468();
  v13 = sub_1C9A91488();
  (*(v6 + 8))(v10, v4);
  [v11 setRootDirectoryURL_];

  [v11 setDispatchQueue_];
  return v11;
}

uint64_t sub_1C991E180(uint64_t a1, void (*a2)(void))
{
  if (qword_1EC3C5520 != -1)
  {
    sub_1C98134D8();
    swift_once();
  }

  v3 = sub_1C9A91B58();
  sub_1C97BFF6C(v3, qword_1EC3D3108);
  v4 = sub_1C9A91B38();
  v5 = sub_1C9A92FC8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1C9788000, v4, v5, "Received version request", v6, 2u);
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
  }

  sub_1C97A2CEC(&qword_1EC3D23E0, &qword_1C9ACF7F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C9A9EDD0;
  v8 = MEMORY[0x1E69E6158];
  sub_1C9A93548();
  *(inited + 96) = v8;
  *(inited + 72) = 3157553;
  *(inited + 80) = 0xE300000000000000;
  sub_1C9A92348();
  sub_1C97AA8AC();
  a2();
}

void sub_1C991E318(uint64_t a1, void (*a2)(void), void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v102 = *MEMORY[0x1E69E9840];
  v89 = sub_1C9A91558();
  sub_1C97AE9C8();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  sub_1C97AEAD8();
  v88 = v16 - v15;
  if (qword_1EC3C5520 != -1)
  {
    sub_1C98134D8();
    swift_once();
  }

  v17 = sub_1C9A91B58();
  sub_1C97BFF6C(v17, qword_1EC3D3108);
  v18 = sub_1C9A91B38();
  v19 = sub_1C9A92FC8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_1C9788000, v18, v19, "Received file transfer request", v20, 2u);
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
  }

  sub_1C9A92348();
  sub_1C97AA8AC();
  v21 = a3;
  a2();

  v22 = [objc_allocWithZone(MEMORY[0x1E69C6B90]) init];
  [v22 setDispatchQueue_];
  aBlock = 0;
  if (![v22 prepareTemplateAndReturnError_])
  {
    v40 = aBlock;
    sub_1C97C926C();
    v41 = sub_1C9A913C8();

    swift_willThrow();
    return;
  }

  v23 = aBlock;
  v24 = NSTemporaryDirectory();
  sub_1C9A924A8();

  v85 = v22;
  sub_1C9A91468();

  v25 = sub_1C9A91488();
  v82 = *(v13 + 8);
  v26 = v82(v88, v89);
  sub_1C9921D04(v26, sel_setTemporaryDirectoryURL_);

  v100 = sub_1C991ED0C;
  v101 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v97 = 1107296256;
  v98 = sub_1C991EE58;
  v99 = &unk_1F493FE58;
  v27 = _Block_copy(&aBlock);
  sub_1C9921D04(v27, sel_setProgressHandler_);
  _Block_release(v27);
  v28 = swift_allocObject();
  *(v28 + 16) = a1;
  *(v28 + 24) = a6;
  v100 = sub_1C99214A8;
  v101 = v28;
  aBlock = MEMORY[0x1E69E9820];
  v97 = 1107296256;
  v98 = sub_1C991F7BC;
  v99 = &unk_1F493FEA8;
  v29 = _Block_copy(&aBlock);
  v30 = v101;

  v31 = a6;

  sub_1C9921D04(v32, sel_setCompletionHandler_);
  _Block_release(v29);
  sub_1C9921CDC();
  v90 = v33 & 0xFFFFFFFFFFFFLL | 0x7550000000000000;
  sub_1C9921D64(v34, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  sub_1C9921CC0();
  v35 = sub_1C97C90D4(&aBlock);
  if (v95)
  {
    v38 = sub_1C9921C68(v35, v36, v37, MEMORY[0x1E6969080]);
    if (v38)
    {
      v30 = v90;
      v39 = sub_1C9A915F8();
      v38 = sub_1C97A5978(v90, 0xEF79654B63696C62);
      goto LABEL_12;
    }
  }

  else
  {
    v38 = sub_1C97F9D3C(v94, &unk_1EC3C5E60, qword_1C9A9AE10);
  }

  v39 = 0;
LABEL_12:
  sub_1C9921D04(v38, sel_setPeerPublicKey_);

  sub_1C9921CDC();
  sub_1C9921D64(v42, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  sub_1C9921CC0();
  v43 = sub_1C97C90D4(&aBlock);
  if (v95)
  {
    v46 = sub_1C9921C68(v43, v44, v45, MEMORY[0x1E69E6158]);
    if (v46)
    {
      v30 = 0xE800000000000000;
      v47 = sub_1C9A92478();

      goto LABEL_17;
    }
  }

  else
  {
    v46 = sub_1C97F9D3C(v94, &unk_1EC3C5E60, qword_1C9A9AE10);
  }

  v47 = 0;
LABEL_17:
  sub_1C9921D04(v46, sel_setTargetID_);

  sub_1C9921CA4();
  v91 = v48;
  sub_1C9921D64(v49, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  sub_1C9921CC0();
  sub_1C97C90D4(&aBlock);
  if (!v95)
  {
LABEL_34:
    sub_1C97F9D3C(v94, &unk_1EC3C5E60, qword_1C9A9AE10);
    goto LABEL_35;
  }

  v50 = sub_1C97A2CEC(&qword_1EC3C7BF0, &unk_1C9AA0050);
  if ((sub_1C9921C68(v50, v51, v52, v50) & 1) == 0)
  {
LABEL_35:
    sub_1C9920DDC();
    swift_allocError();
    *v80 = 1;
    swift_willThrow();

    return;
  }

  v53 = v91;
  sub_1C9921CEC();
  v92 = v54;
  v93 = v55;
  sub_1C9921D64(v56, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  sub_1C9921CC0();
  v57 = sub_1C97C90D4(&aBlock);
  if (!v95)
  {

    goto LABEL_34;
  }

  if ((sub_1C9921C68(v57, v58, v59, MEMORY[0x1E69E6158]) & 1) == 0)
  {

    goto LABEL_35;
  }

  v60 = v93;
  v81 = v53;
  v61 = *(v53 + 16);
  v62 = a5;
  if (v61)
  {
    v83 = objc_opt_self();
    v63 = (v81 + 40);
    do
    {
      v86 = v61;
      v64 = *(v63 - 1);
      v65 = *v63;
      sub_1C97A2CEC(&qword_1EC3C6CA0, &qword_1C9A9D660);
      v66 = swift_allocObject();
      *(v66 + 16) = xmmword_1C9A9EE60;
      *(v66 + 32) = a4;
      *(v66 + 40) = v62;
      *(v66 + 48) = v92;
      *(v66 + 56) = v60;
      *(v66 + 64) = v64;
      *(v66 + 72) = v65;
      swift_bridgeObjectRetain_n();

      sub_1C9A92768();
      sub_1C97C926C();

      v67 = [v83 pathWithComponents_];

      v68 = sub_1C9A924A8();
      v70 = v69;

      if (sub_1C991F828(v68, v70))
      {

        v71 = sub_1C9A91B38();
        v72 = sub_1C9A92FC8();

        if (os_log_type_enabled(v71, v72))
        {
          sub_1C9921C98();
          v73 = swift_slowAlloc();
          sub_1C98FBA2C();
          v74 = swift_slowAlloc();
          *v73 = sub_1C9921D1C(v74).n128_u32[0];
          *(v73 + 4) = sub_1C9849140(v64, v65, &aBlock);
          _os_log_impl(&dword_1C9788000, v71, v72, "Requested file path %s", v73, 0xCu);
          sub_1C97A592C(v60);
          v60 = v93;
          sub_1C98135FC();
          MEMORY[0x1CCA93280]();
          v62 = a5;
          sub_1C98135FC();
          MEMORY[0x1CCA93280]();
        }

        v75 = [objc_allocWithZone(MEMORY[0x1E69C6B88]) init];
        sub_1C99214B0(v64, v65, v75);
        sub_1C9A91468();

        v30 = sub_1C9A91488();
        v82(v88, v89);
        [v75 setItemURL_];

        [v85 addItem_];
      }

      else
      {

        v30 = sub_1C9A91B38();
        v76 = sub_1C9A92FC8();

        if (os_log_type_enabled(v30, v76))
        {
          sub_1C9921C98();
          v77 = swift_slowAlloc();
          sub_1C98FBA2C();
          v78 = swift_slowAlloc();
          *v77 = sub_1C9921D1C(v78).n128_u32[0];
          v79 = sub_1C9849140(v64, v65, &aBlock);

          *(v77 + 4) = v79;
          _os_log_impl(&dword_1C9788000, v30, v76, "Skipping transferring of file %s", v77, 0xCu);
          sub_1C97A592C(v60);
          v60 = v93;
          sub_1C98135FC();
          MEMORY[0x1CCA93280]();
          sub_1C98135FC();
          MEMORY[0x1CCA93280]();
        }

        else
        {
        }
      }

      v63 += 2;
      v61 = v86 - 1;
    }

    while (v86 != 1);
  }

  [v85 activate];
  [v85 finish];
}

void sub_1C991ED0C(void *a1)
{
  if (qword_1EC3C5520 != -1)
  {
    swift_once();
  }

  v2 = sub_1C9A91B58();
  sub_1C97BFF6C(v2, qword_1EC3D3108);
  v3 = a1;
  oslog = sub_1C9A91B38();
  v4 = sub_1C9A92FC8();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v3;
    *v6 = v3;
    v7 = v3;
    _os_log_impl(&dword_1C9788000, oslog, v4, "Progressing %@", v5, 0xCu);
    sub_1C97F9D3C(v6, &unk_1EC3C86A0, &qword_1C9A9F830);
    MEMORY[0x1CCA93280](v6, -1, -1);
    MEMORY[0x1CCA93280](v5, -1, -1);
  }
}

void sub_1C991EE58(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1C991EEC0(void *a1, uint64_t a2, void *a3)
{
  v6 = sub_1C97A2CEC(&qword_1EC3CA8D0, &qword_1C9AA47B0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22 - v7;
  if (qword_1EC3C5520 != -1)
  {
    swift_once();
  }

  v9 = sub_1C9A91B58();
  sub_1C97BFF6C(v9, qword_1EC3D3108);
  v10 = a1;
  v11 = sub_1C9A91B38();
  v12 = sub_1C9A92FC8();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    if (a1)
    {
      v15 = a1;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      v17 = v16;
    }

    else
    {
      v16 = 0;
      v17 = 0;
    }

    *(v13 + 4) = v16;
    *v14 = v17;
    _os_log_impl(&dword_1C9788000, v11, v12, "Finished transferring files with error %@", v13, 0xCu);
    sub_1C97F9D3C(v14, &unk_1EC3C86A0, &qword_1C9A9F830);
    MEMORY[0x1CCA93280](v14, -1, -1);
    MEMORY[0x1CCA93280](v13, -1, -1);
  }

  v18 = sub_1C9A92988();
  sub_1C97ACC50(v8, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = a2;
  v19[5] = a3;

  v20 = a3;
  sub_1C99A9128();
}

uint64_t sub_1C991F0F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 120) = a4;
  *(v5 + 128) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1C991F114, 0, 0);
}

uint64_t sub_1C991F114()
{
  sub_1C97DA934();
  sub_1C9921CDC();
  *(v0 + 88) = v1 & 0xFFFFFFFFFFFFLL | 0x4449000000000000;
  v2 = *(v0 + 120);
  *(v0 + 96) = 0xE800000000000000;
  sub_1C9A93548();
  sub_1C98784BC(v2, (v0 + 56));
  sub_1C97C90D4(v0 + 16);
  if (!*(v0 + 80))
  {
    sub_1C97F9D3C(v0 + 56, &unk_1EC3C5E60, qword_1C9A9AE10);
LABEL_7:
    sub_1C9920DDC();
    v13 = swift_allocError();
    *v14 = 0;
    swift_willThrow();
    if (qword_1EC3C5520 != -1)
    {
      sub_1C98134D8();
      swift_once();
    }

    v15 = sub_1C9A91B58();
    sub_1C97BFF6C(v15, qword_1EC3D3108);
    v16 = sub_1C97C926C();
    v17 = sub_1C9A91B38();
    v18 = sub_1C9A92FC8();

    if (os_log_type_enabled(v17, v18))
    {
      sub_1C9921C98();
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      v21 = v13;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v22;
      *v20 = v22;
      sub_1C9840CCC(&dword_1C9788000, v23, v24, "Message transmitted with error: %@");
      sub_1C97F9D3C(v20, &unk_1EC3C86A0, &qword_1C9A9F830);
      sub_1C98135FC();
      MEMORY[0x1CCA93280]();
      sub_1C98135FC();
      MEMORY[0x1CCA93280]();
    }

    else
    {
    }

    sub_1C97DA91C();
    sub_1C97DABB0();

    __asm { BRAA            X1, X16 }
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_7;
  }

  *(v0 + 136) = *(v0 + 112);
  type metadata accessor for SNFileSharingUtils(v3);
  *(v0 + 144) = sub_1C9A92348();
  v4 = swift_task_alloc();
  *(v0 + 152) = v4;
  *v4 = v0;
  v4[1] = sub_1C991F414;
  sub_1C97DABB0();

  return sub_1C983F420(v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1C991F414()
{
  sub_1C97AA95C();
  sub_1C97AA890();
  v3 = v2;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;
  *(v3 + 160) = v0;

  if (!v0)
  {
  }

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C991F548()
{
  sub_1C97AA95C();
  if (qword_1EC3C5520 != -1)
  {
    sub_1C98134D8();
    swift_once();
  }

  v0 = sub_1C9A91B58();
  sub_1C97BFF6C(v0, qword_1EC3D3108);
  v1 = sub_1C9A91B38();
  v2 = sub_1C9A92FC8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1C9788000, v1, v2, "Message transmitted successfully!", v3, 2u);
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
  }

  sub_1C97DA91C();

  return v4();
}

void sub_1C991F644()
{
  sub_1C97DA934();

  v1 = *(v0 + 160);
  if (qword_1EC3C5520 != -1)
  {
    sub_1C98134D8();
    swift_once();
  }

  v2 = sub_1C9A91B58();
  sub_1C97BFF6C(v2, qword_1EC3D3108);
  v3 = sub_1C97C926C();
  v4 = sub_1C9A91B38();
  v5 = sub_1C9A92FC8();

  if (os_log_type_enabled(v4, v5))
  {
    sub_1C9921C98();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    sub_1C9840CCC(&dword_1C9788000, v10, v11, "Message transmitted with error: %@");
    sub_1C97F9D3C(v7, &unk_1EC3C86A0, &qword_1C9A9F830);
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
  }

  else
  {
  }

  sub_1C97DA91C();
  sub_1C97DABB0();

  __asm { BRAA            X1, X16 }
}

void sub_1C991F7BC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

BOOL sub_1C991F828(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C9A91558();
  sub_1C97AE9C8();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  sub_1C97AEAD8();
  v8 = v7 - v6;
  sub_1C9A91468();
  if (sub_1C9A91418() == 7758199 && v9 == 0xE300000000000000)
  {

    goto LABEL_8;
  }

  v11 = sub_1C9A93B18();

  if (v11)
  {
LABEL_8:
    type metadata accessor for SNAudioFileUtils(v12);
    v13 = sub_1C99C7598(v8) > 0;
    goto LABEL_9;
  }

  v13 = 1;
LABEL_9:
  (*(v4 + 8))(v8, v2);
  return v13;
}

void sub_1C991F968(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v67 = *MEMORY[0x1E69E9840];
  sub_1C9921CEC();
  v60 = v9;
  v62 = v10;
  sub_1C9A93548();
  sub_1C98784BC(a1, &v65);
  v11 = sub_1C97C90D4(v64);
  if (!v66)
  {
    goto LABEL_12;
  }

  if ((sub_1C9921D44(v11, v12, v13, MEMORY[0x1E69E6158], v14, v15, v16, v17) & 1) == 0)
  {
LABEL_13:
    sub_1C9920DDC();
    swift_allocError();
    *v44 = 1;
    swift_willThrow();
    return;
  }

  v18 = v60;
  v19 = v62;
  sub_1C9921CA4();
  v61 = v20;
  v63 = v21;
  sub_1C9A93548();
  sub_1C98784BC(a1, &v65);
  v22 = sub_1C97C90D4(v64);
  if (!v66)
  {

LABEL_12:
    sub_1C97F9D3C(&v65, &unk_1EC3C5E60, qword_1C9A9AE10);
    goto LABEL_13;
  }

  if ((sub_1C9921D44(v22, v23, v24, MEMORY[0x1E69E6158], v25, v26, v27, v28) & 1) == 0)
  {

    goto LABEL_13;
  }

  v59 = a2;
  v29 = objc_opt_self();
  sub_1C97A2CEC(&qword_1EC3C6CA0, &qword_1C9A9D660);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1C9A9EE60;
  *(v30 + 32) = a4;
  *(v30 + 40) = a5;
  *(v30 + 48) = v18;
  *(v30 + 56) = v19;
  *(v30 + 64) = v61;
  *(v30 + 72) = v63;

  v31 = sub_1C9A92768();

  v32 = [v29 pathWithComponents_];

  v33 = v32;
  if (!v32)
  {
    sub_1C9A924A8();
    v33 = sub_1C9A92478();
  }

  v34 = sub_1C9A924A8();
  v36 = v35;
  if (qword_1EC3C5520 != -1)
  {
    sub_1C98134D8();
    swift_once();
  }

  v37 = sub_1C9A91B58();
  sub_1C97BFF6C(v37, qword_1EC3D3108);

  v38 = sub_1C9A91B38();
  v39 = sub_1C9A92FC8();

  if (os_log_type_enabled(v38, v39))
  {
    sub_1C9921C98();
    v40 = swift_slowAlloc();
    sub_1C98FBA2C();
    v41 = v33;
    v42 = swift_slowAlloc();
    v64[0] = v42;
    *v40 = 136315138;
    v43 = sub_1C9849140(v34, v36, v64);

    *(v40 + 4) = v43;
    _os_log_impl(&dword_1C9788000, v38, v39, "Received file deletion request on server for file path: %s", v40, 0xCu);
    sub_1C97A592C(v42);
    v33 = v41;
    a2 = v59;
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
  }

  else
  {
  }

  v45 = [objc_opt_self() defaultManager];
  v64[0] = 0;
  v46 = [v45 removeItemAtPath:v33 error:v64];

  if (v46)
  {
    v47 = v64[0];
    sub_1C9A92348();
    sub_1C97AA8AC();
    a2();
  }

  else
  {
    v48 = v64[0];
    v49 = sub_1C9A913C8();

    swift_willThrow();
    v50 = v49;
    v51 = sub_1C9A91B38();
    v52 = sub_1C9A92FA8();

    if (os_log_type_enabled(v51, v52))
    {
      sub_1C9921C98();
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v53 = 138412290;
      v55 = v49;
      v56 = _swift_stdlib_bridgeErrorToNSError();
      *(v53 + 4) = v56;
      *v54 = v56;
      _os_log_impl(&dword_1C9788000, v51, v52, "File deletion request failed on the server: %@", v53, 0xCu);
      sub_1C97F9D3C(v54, &unk_1EC3C86A0, &qword_1C9A9F830);
      sub_1C98135FC();
      MEMORY[0x1CCA93280]();
      sub_1C98135FC();
      MEMORY[0x1CCA93280]();
    }

    v57 = sub_1C9A92348();
    v58 = v49;
    (a2)(v57, 0, v49);
  }
}

uint64_t sub_1C991FEE4()
{
  *(v1 + 208) = v0;
  sub_1C97AA8AC();
  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1C991FF10()
{
  v1 = v0;
  v29 = v0 + 2;
  v2 = v0 + 18;
  v3 = v1[26];
  v4 = [objc_allocWithZone(MEMORY[0x1E69C6B70]) init];
  v1[27] = v4;
  v5 = *&v3[OBJC_IVAR___SNFileServer_link];
  *&v3[OBJC_IVAR___SNFileServer_link] = v4;
  v6 = v4;

  [v6 setDispatchQueue_];
  v7 = sub_1C9A92478();
  [v6 deregisterRequestID_];

  v8 = sub_1C9A92478();
  v1[22] = sub_1C9920738;
  v1[23] = 0;
  v9 = MEMORY[0x1E69E9820];
  v1[18] = MEMORY[0x1E69E9820];
  v1[19] = 1107296256;
  v1[20] = sub_1C9A1E454;
  v1[21] = &unk_1F493FD40;
  v10 = _Block_copy(v2);
  [v6 registerRequestID:v8 options:0 handler:v10];
  _Block_release(v10);

  v11 = sub_1C9A92478();
  [v6 &selRef_isInternalBuild + 4];

  v12 = sub_1C9A92478();
  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  *(v13 + 24) = v6;
  v1[22] = sub_1C9920DB4;
  v1[23] = v13;
  v1[18] = v9;
  v1[19] = 1107296256;
  v1[20] = sub_1C9A1E454;
  v1[21] = &unk_1F493FD90;
  v14 = _Block_copy(v2);
  v15 = v6;
  v16 = v3;

  v17 = sub_1C9921D30();
  [v17 v18];
  _Block_release(v14);

  v19 = sub_1C9A92478();
  [v15 deregisterRequestID_];

  v20 = sub_1C9A92478();
  v21 = swift_allocObject();
  *(v21 + 16) = v16;
  v1[22] = sub_1C9920DBC;
  v1[23] = v21;
  v1[18] = v9;
  v1[19] = 1107296256;
  v1[20] = sub_1C9A1E454;
  v1[21] = &unk_1F493FDE0;
  v22 = _Block_copy(v2);
  v23 = v16;

  v24 = sub_1C9921D30();
  [v24 v25];
  _Block_release(v22);

  v1[2] = v1;
  v1[3] = sub_1C99202F8;
  v26 = swift_continuation_init();
  v27 = sub_1C97A2CEC(&qword_1EC3CA050, &qword_1C9AA94A0);
  v1[28] = v27;
  v1[25] = v27;
  v1[18] = v9;
  v1[19] = 1107296256;
  v1[20] = sub_1C9A1E374;
  v1[21] = &unk_1F493FE08;
  v1[22] = v26;
  [v15 activateWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v29);
}

uint64_t sub_1C99202F8()
{
  sub_1C97AA884();
  sub_1C97AA890();
  *(v0 + 232) = *(v0 + 48);
  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1C99203FC()
{
  sub_1C97AA95C();
  v1 = v0[28];
  v2 = *(v0[26] + OBJC_IVAR___SNFileServer_server);
  v0[10] = v0;
  v0[11] = sub_1C9920500;
  v3 = swift_continuation_init();
  v0[25] = v1;
  v0[18] = MEMORY[0x1E69E9820];
  v0[19] = 1107296256;
  v0[20] = sub_1C9A1E374;
  v0[21] = &unk_1F493FE30;
  v0[22] = v3;
  [v2 activateWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 10);
}

uint64_t sub_1C9920500()
{
  sub_1C97AA884();
  sub_1C97AA890();
  *(v0 + 240) = *(v0 + 112);
  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1C9920604()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v1();
}

uint64_t sub_1C9920660()
{
  sub_1C97AA95C();
  swift_willThrow();

  sub_1C97DA91C();

  return v1();
}

uint64_t sub_1C99206CC()
{
  sub_1C97AA95C();
  swift_willThrow();

  sub_1C97DA91C();

  return v1();
}

uint64_t sub_1C992091C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1C99209C4;

  return sub_1C991FEE4();
}

void sub_1C99209C4()
{
  sub_1C97DA934();
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;
  v6 = *(v3 + 16);
  *v5 = *v1;

  v7 = *(v3 + 24);
  if (v2)
  {
    v8 = sub_1C9A913B8();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(v7, 0);
  }

  _Block_release(*(v4 + 24));
  sub_1C97DABB0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1C9920B38(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C97A2CEC(&qword_1EC3CA8D0, &qword_1C9AA47B0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_1C9A92988();
  sub_1C97ACC50(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = &unk_1C9AB4D38;
  v9[5] = v8;
  sub_1C9921000(0, 0, v6, &unk_1C9AB4D48, v9);
}

id SNFileServer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SNFileServer.__deallocating_deinit(uint64_t a1, double a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for SNFileServer(a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1C9920D9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1C9920DDC()
{
  result = qword_1EC3CCDB0;
  if (!qword_1EC3CCDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CCDB0);
  }

  return result;
}

uint64_t sub_1C9920E30(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1C97DA5D0;

  return v6();
}

uint64_t sub_1C9920F18(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1C97D9C3C;

  return v7();
}

uint64_t sub_1C9921000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1C97A2CEC(&qword_1EC3CA8D0, &qword_1C9AA47B0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v22 - v10;
  sub_1C9921854(a3, v22 - v10);
  v12 = sub_1C9A92988();
  if (sub_1C97ABF20(v11, 1, v12) == 1)
  {
    sub_1C97F9D3C(v11, &qword_1EC3CA8D0, &qword_1C9AA47B0);
  }

  else
  {
    sub_1C9A92978();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a5 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v13 = sub_1C9A92928();
    v15 = v14;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v16 = sub_1C9A92508() + 32;
      v17 = swift_allocObject();
      *(v17 + 16) = a4;
      *(v17 + 24) = a5;

      if (v15 | v13)
      {
        v23[0] = 0;
        v23[1] = 0;
        v18 = v23;
        v23[2] = v13;
        v23[3] = v15;
      }

      else
      {
        v18 = 0;
      }

      v22[1] = 7;
      v22[2] = v18;
      v22[3] = v16;
      v20 = swift_task_create();

      sub_1C97F9D3C(a3, &qword_1EC3CA8D0, &qword_1C9AA47B0);

      return v20;
    }
  }

  else
  {
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1C97F9D3C(a3, &qword_1EC3CA8D0, &qword_1C9AA47B0);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

uint64_t sub_1C99212CC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1C99213C4;

  return v6(a1);
}

uint64_t sub_1C99213C4()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v1 = *v0;
  sub_1C97AA83C();
  *v2 = v1;

  sub_1C97DA91C();

  return v3();
}

void sub_1C99214B0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1C9A92478();

  [a3 setFilename_];
}

uint64_t sub_1C9921514()
{
  sub_1C97DA934();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v1[1] = sub_1C97D9C3C;
  sub_1C9921C88();
  sub_1C97DABB0();

  return sub_1C991F0F4(v3, v4, v5, v6, v7);
}

uint64_t sub_1C99215BC(void (*a1)(void))
{
  a1(*(v1 + 16));

  sub_1C985DB04();

  return swift_deallocObject();
}

uint64_t sub_1C99215FC()
{
  sub_1C97AA95C();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1C97DA5D0;

  return sub_1C992091C(v2, v3);
}

void sub_1C99216A4()
{
  sub_1C97DA934();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C97DA5D0;
  sub_1C97DABB0();

  __asm { BR              X4 }
}

uint64_t sub_1C992175C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1C992179C()
{
  sub_1C97DA934();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v1[1] = sub_1C97DA5D0;
  v3 = sub_1C9921C88();

  return v4(v3);
}

uint64_t sub_1C9921854(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C97A2CEC(&qword_1EC3CA8D0, &qword_1C9AA47B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C99218C4()
{
  sub_1C97AA95C();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v1[1] = sub_1C97DA5D0;
  v3 = sub_1C9921C88();

  return v4(v3);
}

uint64_t sub_1C9921968()
{
  sub_1C97AA95C();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v1[1] = sub_1C97D9C3C;
  v3 = sub_1C9921C88();

  return v4(v3);
}

unint64_t sub_1C9921A0C(double a1)
{
  result = qword_1EC3C56B0;
  if (!qword_1EC3C56B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC3C56B0);
  }

  return result;
}

unint64_t sub_1C9921A50()
{
  result = qword_1EC3C56C0;
  if (!qword_1EC3C56C0)
  {
    sub_1C9A93008();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C56C0);
  }

  return result;
}

unint64_t sub_1C9921AA8()
{
  result = qword_1EC3C56E0;
  if (!qword_1EC3C56E0)
  {
    sub_1C97AA4F0(&unk_1EC3CDC60, &unk_1C9AA0040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C56E0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SNFileServer.DomainError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C9921BEC()
{
  result = qword_1EC3CCDB8;
  if (!qword_1EC3CCDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CCDB8);
  }

  return result;
}

uint64_t sub_1C9921C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

double sub_1C9921CC0()
{

  return sub_1C98784BC(v0, (v1 - 176));
}

id sub_1C9921D04(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t sub_1C9921D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{

  return swift_dynamicCast();
}

uint64_t sub_1C9921D64(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1C9A93548();
}

uint64_t sub_1C9921D90()
{
  v0 = sub_1C9A91AD8();
  sub_1C9922D38(v0, qword_1EC3D3120);
  sub_1C97BFF6C(v0, qword_1EC3D3120);
  return sub_1C9A91AC8();
}

uint64_t sub_1C9921DFC()
{
  v0 = sub_1C9A93008();
  MEMORY[0x1EEE9AC00](v0);
  sub_1C97AEAD8();
  v1 = sub_1C9A92158();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1C97AEAD8();
  v2 = sub_1C9A93018();
  sub_1C97AE9C8();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  sub_1C97AEAD8();
  v8 = v7 - v6;
  sub_1C9921A0C(v9);
  (*(v4 + 104))(v8, *MEMORY[0x1E69E8098], v2);
  sub_1C9A92148();
  sub_1C9921A50();
  sub_1C97A2CEC(&unk_1EC3CDC60, &unk_1C9AA0040);
  sub_1C9921AA8();
  sub_1C9A93428();
  result = sub_1C9A93048();
  qword_1EC3D3240 = result;
  return result;
}

uint64_t LogUtils.AudioBufferProcessedSignpostPayload.audioStreamID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static LogUtils.AudioBufferProcessedSignpostPayload.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1C9A93B18();
  }
}

uint64_t sub_1C9922038(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7274536F69647561 && a2 == 0xED000044496D6165)
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

uint64_t sub_1C99220E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C9922038(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C992210C(uint64_t a1)
{
  v2 = sub_1C99222B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9922148(uint64_t a1)
{
  v2 = sub_1C99222B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LogUtils.AudioBufferProcessedSignpostPayload.encode(to:)(void *a1)
{
  sub_1C97A2CEC(&qword_1EC3CCDC0, &qword_1C9AB4E20);
  sub_1C97AE9C8();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C99222B0();
  sub_1C9A93DD8();
  sub_1C9A939C8();
  v3 = sub_1C97E89F0();
  return v4(v3);
}

unint64_t sub_1C99222B0()
{
  result = qword_1EC3CCDC8;
  if (!qword_1EC3CCDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CCDC8);
  }

  return result;
}

uint64_t LogUtils.AudioBufferProcessedSignpostPayload.hashValue.getter()
{
  sub_1C9A93CC8();
  sub_1C9A92528();
  return sub_1C9A93D18();
}

uint64_t LogUtils.AudioBufferProcessedSignpostPayload.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1C97A2CEC(&qword_1EC3CCDD0, &qword_1C9AB4E28);
  sub_1C97AE9C8();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C99222B0();
  sub_1C9A93DB8();
  if (!v2)
  {
    v6 = sub_1C9A938A8();
    v8 = v7;
    v9 = sub_1C97E89F0();
    v10(v9);
    *a2 = v6;
    a2[1] = v8;
  }

  return sub_1C97A592C(a1);
}

unint64_t sub_1C99224F4()
{
  result = qword_1EC3CCDD8;
  if (!qword_1EC3CCDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CCDD8);
  }

  return result;
}

_BYTE *sub_1C992256C(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C992261C()
{
  result = qword_1EC3CCDE0;
  if (!qword_1EC3CCDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CCDE0);
  }

  return result;
}

unint64_t sub_1C9922674()
{
  result = qword_1EC3CCDE8;
  if (!qword_1EC3CCDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CCDE8);
  }

  return result;
}

unint64_t sub_1C99226CC()
{
  result = qword_1EC3CCDF0;
  if (!qword_1EC3CCDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CCDF0);
  }

  return result;
}

uint64_t sub_1C9922720(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_1C9A91AE8();
  sub_1C97AE9C8();
  v25 = v5;
  v26 = v4;
  MEMORY[0x1EEE9AC00](v4);
  sub_1C97AEAD8();
  v8 = v7 - v6;
  v9 = sub_1C9A91AA8();
  sub_1C97AE9C8();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  sub_1C97AEAD8();
  v15 = v14 - v13;
  v16 = *a2;
  v17 = *(a2 + 16);
  v18 = sub_1C9A91AB8();
  sub_1C9A91AF8();
  v19 = sub_1C9A93068();
  result = sub_1C9A93238();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v11 + 8))(v15, v9);
  }

  v24 = v9;
  if ((v17 & 1) == 0)
  {
    if (v16)
    {
LABEL_9:

      sub_1C9A91B28();

      if ((*(v25 + 88))(v8, v26) == *MEMORY[0x1E69E93E8])
      {
        v21 = "[Error] Interval already ended";
      }

      else
      {
        (*(v25 + 8))(v8, v26);
        v21 = "";
      }

      v22 = swift_slowAlloc();
      *v22 = 0;
      v23 = sub_1C9A91A88();
      _os_signpost_emit_with_name_impl(&dword_1C9788000, v18, v19, v23, v16, v21, v22, 2u);
      MEMORY[0x1CCA93280](v22, -1, -1);
      v9 = v24;
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v16 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v16 & 0xFFFFF800) != 0xD800)
  {
    if (v16 >> 16 <= 0x10)
    {
      v16 = &v27;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1C992299C(uint64_t a1, const char *a2, uint64_t a3, char a4, uint64_t *a5)
{
  v27 = sub_1C9A91AA8();
  sub_1C97AE9C8();
  v9 = v8;
  v11 = MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - v12;
  v14 = a5[1];
  v26 = *a5;

  sub_1C9A91A98();
  v15 = sub_1C9A91AB8();
  v16 = sub_1C9A93078();
  result = sub_1C9A93238();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  HIDWORD(v25) = v16;
  if ((a4 & 1) == 0)
  {

    if (!a2)
    {
      __break(1u);
LABEL_5:

LABEL_11:

      v21 = sub_1C97E89F0();
      v22 = v27;
      v23(v21);
      sub_1C9A91B18();
      swift_allocObject();
      v24 = sub_1C9A91B08();
      (*(v9 + 8))(v13, v22);
      return v24;
    }

LABEL_10:
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v28 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_1C9849140(v26, v14, &v28);
    v20 = sub_1C9A91A88();
    _os_signpost_emit_with_name_impl(&dword_1C9788000, v15, BYTE4(v25), v20, a2, "{\n  audioStreamID: %s\n}", v18, 0xCu);
    sub_1C97A592C(v19);
    MEMORY[0x1CCA93280](v19, -1, -1);
    MEMORY[0x1CCA93280](v18, -1, -1);
    goto LABEL_11;
  }

  if (a2 >> 32)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((a2 & 0xFFFFF800) != 0xD800)
  {
    if (a2 >> 16 <= 0x10)
    {

      a2 = &v28;
      goto LABEL_10;
    }

    goto LABEL_13;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_1C9922C24@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1C9A92348();
  result = sub_1C97A2CEC(&qword_1EC3C7BF8, &unk_1C9AB03A0);
  a1[3] = result;
  *a1 = v2;
  return result;
}

uint64_t sub_1C9922C8C@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t *a2@<X8>)
{
  v3 = a1();
  result = sub_1C97A2CEC(&qword_1EC3C7BF8, &unk_1C9AB03A0);
  *a2 = v3;
  a2[3] = result;
  return result;
}

uint64_t *sub_1C9922D38(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void sub_1C9922DA0(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  sub_1C9A91E08();
}

void sub_1C9922DF8(double a1)
{
  type metadata accessor for SNError(a1);
  v1 = sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 2, 0, 0xD000000000000016, 0x80000001C9AD9810);
  sub_1C9A91DF8();
}

unint64_t sub_1C9922EFC()
{
  result = qword_1EC3CCDF8;
  if (!qword_1EC3CCDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CCDF8);
  }

  return result;
}

unint64_t sub_1C9922F84()
{
  result = qword_1EC3CCE08;
  if (!qword_1EC3CCE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CCE08);
  }

  return result;
}

unint64_t sub_1C9923020()
{
  result = qword_1EC3CCE20;
  if (!qword_1EC3CCE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CCE20);
  }

  return result;
}

uint64_t sub_1C992307C(uint64_t result, uint64_t a2, unsigned int *a3)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (*a3 < a2)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1C99230A8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result >= a2)
  {
    v4 = __OFSUB__(result, a3);
    v3 = result - a3 < 0;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  if (v3 == v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C99230BC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < a2 || a3 < result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C99230D0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result < a3 || a4 < a2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C99230F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C9A6941C(*v1);
  *a1 = result;
  return result;
}

void (*sub_1C992311C(void (*result)(), unint64_t *a2))()
{
  v3 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < **v2)
  {
    v4 = *v2 + 16 * v3;
    v5 = *(v4 + 16);
    *result = *(v4 + 8);
    *(result + 1) = v5;
    return nullsub_1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C9923174@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C992307C(*a1, a1[1], *v2);
  *a2 = result;
  a2[1] = v5;
  a2[2] = v6;
  return result;
}

uint64_t sub_1C99231AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C99230E4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1C99231E8(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v3 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v3)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (result > *a3)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

unint64_t sub_1C9923208(unint64_t result, unint64_t a2, unint64_t a3, unsigned int *a4)
{
  v4 = *a4;
  if (v4 < result || v4 < a3)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v6 = a3 - result;
  if (a2 < 1)
  {
    if (v6 <= 0)
    {
      v9 = __OFSUB__(v6, a2);
      v7 = v6 == a2;
      v8 = (v6 - a2) < 0;
    }

    else
    {
      v9 = 0;
      v7 = 1;
      v8 = 0;
    }

    if (!(v8 ^ v9 | v7))
    {
      return 0;
    }
  }

  else if ((v6 & 0x8000000000000000) == 0 && v6 < a2)
  {
    return 0;
  }

  v9 = __OFADD__(result, a2);
  result += a2;
  if (v9)
  {
    goto LABEL_18;
  }

  if (result > v4)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_1C992326C(unint64_t result, unint64_t a2, unsigned int *a3)
{
  v3 = *a3;
  if (v3 >= result && v3 >= a2)
  {
    return a2 - result;
  }

  __break(1u);
  return result;
}

unint64_t sub_1C99232C8@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  result = sub_1C99232F8(*a1, *v2);
  *a2 = result;
  return result;
}

unint64_t sub_1C99232F8(unint64_t result, unsigned int *a2)
{
  if (*a2 <= result)
  {
    __break(1u);
  }

  else
  {
    ++result;
  }

  return result;
}

void *sub_1C9923310(void *result)
{
  if (*result >= **v1)
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

uint64_t sub_1C9923348(unsigned int *a1)
{
  v1 = *a1;
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_1C9A32C20(*a1, 0);
  if (sub_1C9A3329C(&v5, (v3 + 32), v1, a1) != v1)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

unint64_t sub_1C99233C4@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  result = sub_1C99233F4(*a1, *v2);
  *a2 = result;
  return result;
}

unint64_t sub_1C99233F4(uint64_t a1, unsigned int *a2)
{
  v2 = __OFSUB__(a1, 1);
  result = a1 - 1;
  if (v2)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (result >= *a2)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

unint64_t *sub_1C9923414(unint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if (v2 < **v1)
  {
    *result = v2;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_1C9923440@<X0>(unint64_t *a1@<X0>, unint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1C9923208(*a1, a2, *a3, *v4);
  *a4 = result;
  *(a4 + 8) = v7 & 1;
  return result;
}

uint64_t sub_1C9923540(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1C97AA4F0(&qword_1EC3CCE18, &qword_1C9AB5068);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C99235B8()
{
  result = qword_1EC3CCE48;
  if (!qword_1EC3CCE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CCE48);
  }

  return result;
}

unint64_t sub_1C9923610()
{
  result = qword_1EC3CCE50;
  if (!qword_1EC3CCE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CCE50);
  }

  return result;
}

uint64_t sub_1C99236A4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1C97AA4F0(&qword_1EC3CAB28, &qword_1C9AAC8B0);
    sub_1C9922F84();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C992377C()
{
  v1 = MEMORY[0x1E69E7CC0] + 32;
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  *(v0 + 24) = v1;
  *(v0 + 32) = xmmword_1C9A9FB80;
  type metadata accessor for SafeLock(0.0);
  v2 = swift_allocObject();
  v3 = swift_slowAlloc();
  *v3 = 0;
  *(v2 + 16) = v3;
  *(v0 + 48) = v2;
  return v0;
}

void sub_1C99237E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, void), uint64_t (*a4)(void), void (*a5)(uint64_t *, uint64_t, void, uint64_t, uint64_t), void (*a6)(uint64_t, uint64_t))
{
  v13 = *(v6[6] + 16);
  os_unfair_lock_lock(v13);
  swift_beginAccess();
  v25 = a3;
  v26 = a4;
  v27 = a5;
  sub_1C9924668(a3, a4, a5);
  v15 = v6[4];
  v14 = v6[5];
  v16 = (v14 >> 1) - v15;
  if (__OFSUB__(v14 >> 1, v15))
  {
    __break(1u);
    goto LABEL_12;
  }

  v17 = (v14 >> 1) - v15;
  if ((v14 & 1) == 0)
  {
LABEL_9:
    if (v17 >= v16 + 1)
    {
LABEL_10:
      a6(a1, a2);
      sub_1C99246E0(v16, a1, a2);
      swift_endAccess();
      os_unfair_lock_unlock(v13);
      return;
    }

LABEL_12:
    sub_1C99247CC(v16, v25, v26, v27);
    goto LABEL_10;
  }

  v18 = a6;
  v19 = v6[3];
  sub_1C9A93B88();
  swift_unknownObjectRetain();
  v20 = swift_dynamicCastClass();
  if (!v20)
  {
    swift_unknownObjectRelease();
    v20 = MEMORY[0x1E69E7CC0];
  }

  v21 = *(v20 + 16);
  if (v19 + 16 * v15 + 16 * v16 != v20 + 16 * v21 + 32)
  {

    v17 = v16;
LABEL_8:
    a6 = v18;
    goto LABEL_9;
  }

  v22 = *(v20 + 24);

  v23 = (v22 >> 1) - v21;
  v24 = __OFADD__(v16, v23);
  v17 = v16 + v23;
  if (!v24)
  {
    goto LABEL_8;
  }

  __break(1u);
}

void *sub_1C9923A9C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, uint64_t a6)
{
  v6[2] = a1;
  v6[4] = a2;
  swift_retain_n();

  sub_1C97A2CEC(a3, a4);
  sub_1C97AE9EC();
  sub_1C97AE67C(a5, a3, a4, v10);
  v11 = sub_1C9A920F8();

  v6[3] = v11;
  return v6;
}

void *sub_1C9923B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v51 = a5;
  v50 = a3;
  sub_1C97A2CEC(&qword_1EC3CCEB8, &qword_1C9AB52D8);
  sub_1C97AE9C8();
  v44 = v7;
  v45 = v6;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v44 - v9;
  v48 = sub_1C97A2CEC(&qword_1EC3CCEC0, &qword_1C9AB52E0);
  sub_1C97AE9C8();
  v46 = v11;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v44 - v13;
  v49 = sub_1C97A2CEC(&qword_1EC3CCEC8, &qword_1C9AB52E8);
  sub_1C97AE9C8();
  v47 = v15;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v44 - v17;
  sub_1C97A2CEC(&unk_1EC3CE300, &qword_1C9AB52F0);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v44 - v20;
  v22 = type metadata accessor for SoundRecognition.Session(0);
  sub_1C97DA940();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v44 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C97A2CEC(&qword_1EC3CC140, &qword_1C9AB1F98);
  swift_allocObject();
  v53 = sub_1C992377C();
  nullsub_1();
  v27 = v26;
  v28 = type metadata accessor for SNUltronUtils.UltronReportingPlan(0);
  sub_1C97ACC50(v21, 1, 1, v28);
  v29 = v52;
  sub_1C993C0E0(v27, a2, v21, v50, v51, v30, v31, v32, v44, v45, SWORD2(v45), SBYTE6(v45), SHIBYTE(v45), v46, v47, v48, v49, v50, v51, v52, v53, v54, v55);
  sub_1C99250F0(v21);
  if (v29)
  {
  }

  else
  {
    v55 = *&v25[*(v22 + 20)];

    sub_1C97A2CEC(&unk_1EC3C9AC0, &unk_1C9AA7DB0);
    sub_1C97AE9EC();
    sub_1C97AE67C(v33, &unk_1EC3C9AC0, &unk_1C9AA7DB0, v34);
    sub_1C9A92048();

    sub_1C97A2CEC(&qword_1EC3C7B90, &qword_1C9ABC240);
    v35 = v45;
    sub_1C9A91CA8();
    (*(v44 + 8))(v10, v35);
    sub_1C97A2CEC(&qword_1EC3CCE88, &qword_1C9AB52C8);
    sub_1C98352F0(&qword_1EC3CCED0, &qword_1EC3CCEC0, &qword_1C9AB52E0);
    sub_1C97E8530();
    sub_1C97AE67C(v36, v37, &qword_1C9AB52C8, v38);
    v39 = v48;
    sub_1C9A91FC8();
    (*(v46 + 8))(v14, v39);
    sub_1C99251D4(&qword_1EC3CCED8, &qword_1EC3CCEC8, &qword_1C9AB52E8);
    v40 = v49;
    v41 = sub_1C9A92008();
    (*(v47 + 8))(v18, v40);
    v55 = v41;
    sub_1C97A2CEC(&qword_1EC3CCEE0, &qword_1C9AB52F8);
    sub_1C97AE67C(&qword_1EC3CCEE8, &qword_1EC3CCEE0, &qword_1C9AB52F8, MEMORY[0x1E695BDD0]);
    v42 = sub_1C9A91F28();

    sub_1C97A2CEC(&qword_1EC3C7B88, &unk_1C9A9FFF0);
    swift_allocObject();
    v27 = sub_1C9923A9C(v53, v42, &qword_1EC3CC148, &qword_1C9AB1FA0, &qword_1EC3CC150, sub_1C98F12A0);
    sub_1C9925158(v25, type metadata accessor for SoundRecognition.Session);
  }

  return v27;
}

void *sub_1C99240FC(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a4;
  sub_1C97A2CEC(&qword_1EC3CCE68, &qword_1C9AB52B0);
  sub_1C97AE9C8();
  v35 = v6;
  v36 = v5;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  v40 = sub_1C97A2CEC(&qword_1EC3CCE70, &qword_1C9AB52B8);
  sub_1C97AE9C8();
  v38 = v10;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v34 - v12;
  v41 = sub_1C97A2CEC(&qword_1EC3CCE78, &qword_1C9AB52C0);
  sub_1C97AE9C8();
  v39 = v14;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v15);
  v37 = &v34 - v16;
  v17 = type metadata accessor for AccessibilitySoundRecognition.Session(0);
  sub_1C97DA940();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C97A2CEC(&qword_1EC3CC140, &qword_1C9AB1F98);
  swift_allocObject();
  v44 = sub_1C992377C();
  memcpy(v45, a1, sizeof(v45));
  v21 = v45;
  sub_1C9958AC4(&v47[2]);
  v47[0] = 0x6E776F6E6B6E753CLL;
  v47[1] = 0xE90000000000003ELL;
  memcpy(v46, v47, sizeof(v46));
  v22 = v43;
  sub_1C99561D4();
  if (v22)
  {

    sub_1C986F044(v47);
  }

  else
  {
    sub_1C986F044(v47);
    v47[28] = *&v20[*(v17 + 20)];

    sub_1C97A2CEC(&unk_1EC3CE050, &qword_1C9ABA0F0);
    sub_1C97AE9EC();
    sub_1C97AE67C(v23, &unk_1EC3CE050, &qword_1C9ABA0F0, v24);
    sub_1C9A92048();

    sub_1C97A2CEC(&qword_1EC3C7B90, &qword_1C9ABC240);
    v25 = v36;
    sub_1C9A91CA8();
    (*(v35 + 8))(v9, v25);
    sub_1C97A2CEC(&qword_1EC3CCE88, &qword_1C9AB52C8);
    sub_1C98352F0(&qword_1EC3CCE90, &qword_1EC3CCE70, &qword_1C9AB52B8);
    sub_1C97E8530();
    sub_1C97AE67C(v26, v27, &qword_1C9AB52C8, v28);
    v29 = v37;
    v30 = v40;
    sub_1C9A91FC8();
    (*(v38 + 8))(v13, v30);
    sub_1C99251D4(&qword_1EC3CCEA0, &qword_1EC3CCE78, &qword_1C9AB52C0);
    v31 = v41;
    v32 = sub_1C9A91F28();
    (*(v39 + 8))(v29, v31);
    sub_1C97A2CEC(&qword_1EC3C7B88, &unk_1C9A9FFF0);
    swift_allocObject();
    v21 = sub_1C9923A9C(v44, v32, &qword_1EC3CC148, &qword_1C9AB1FA0, &qword_1EC3CC150, sub_1C98F12A0);
    sub_1C9925158(v20, type metadata accessor for AccessibilitySoundRecognition.Session);
  }

  return v21;
}

uint64_t sub_1C9924608(id *a1)
{
  v1 = *a1;
  sub_1C97A2CEC(&qword_1EC3C7B90, &qword_1C9ABC240);
  return sub_1C9A91EA8();
}

uint64_t sub_1C9924668(uint64_t (*a1)(void, void), uint64_t (*a2)(void), void (*a3)(uint64_t *, uint64_t, void, uint64_t, uint64_t))
{
  v7 = v3[3];
  if ((v7 & 1) == 0 || (v8 = *v3, result = swift_isUniquelyReferenced_nonNull(), *v3 = v8, (result & 1) == 0))
  {
    v10 = v3[2];
    result = (v7 >> 1) - v10;
    if (__OFSUB__(v7 >> 1, v10))
    {
      __break(1u);
    }

    else
    {
      return sub_1C99247CC(result, a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1C99246E0(uint64_t result, uint64_t a2, char a3)
{
  v4 = v3[2];
  v5 = v3[3];
  v6 = v5 >> 1;
  v7 = (v5 >> 1) - v4;
  if (__OFSUB__(v5 >> 1, v4))
  {
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  v9 = result + 1 - v7;
  if (__OFSUB__(result + 1, v7))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!v9)
  {
LABEL_10:
    v16 = v3[1] + 16 * v4 + 16 * v8;
    *v16 = a2;
    *(v16 + 8) = a3;
    return result;
  }

  sub_1C9A93B88();
  swift_unknownObjectRetain();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    result = MEMORY[0x1E69E7CC0];
  }

  v12 = *(result + 16);
  v13 = __OFADD__(v12, v9);
  v14 = v12 + v9;
  if (v13)
  {
    goto LABEL_13;
  }

  *(result + 16) = v14;

  v15 = v6 + v9;
  if (__OFADD__(v6, v9))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if ((v15 & 0x8000000000000000) == 0)
  {
    v3[3] = v5 & 1 | (2 * v15);
    goto LABEL_10;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1C99247CC(uint64_t a1, uint64_t (*a2)(void, void), uint64_t (*a3)(void), void (*a4)(uint64_t *, uint64_t, void, uint64_t, uint64_t))
{
  v11 = sub_1C992486C(a1, a1 + 1, *v4, *(v4 + 8), *(v4 + 16), *(v4 + 24), a2);
  v8 = a3();
  a4(&v11, a1, 0, v8, v9);
}

uint64_t sub_1C992486C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t (*a7)(void, void))
{
  v9 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
    __break(1u);
LABEL_30:
    if (v9 >= v8)
    {
      goto LABEL_23;
    }

    goto LABEL_19;
  }

  v8 = a2;
  v7 = result;
  if ((a6 & 1) == 0)
  {
    goto LABEL_30;
  }

  v28 = a7;
  sub_1C9A93B88();
  swift_unknownObjectRetain();
  v13 = swift_dynamicCastClass();
  if (!v13)
  {
    swift_unknownObjectRelease();
    v13 = MEMORY[0x1E69E7CC0];
  }

  v14 = *(v13 + 16);
  if (a4 + 16 * a5 + 16 * v9 == v13 + 16 * v14 + 32)
  {
    v16 = *(v13 + 24);

    v17 = (v16 >> 1) - v14;
    v15 = v9 + v17;
    if (__OFADD__(v9, v17))
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }
  }

  else
  {

    v15 = v9;
  }

  swift_unknownObjectRetain();
  v18 = swift_dynamicCastClass();
  if (v15 >= v8)
  {
    if (!v18)
    {
      swift_unknownObjectRelease();
    }

    sub_1C99251F8();
    if (v20)
    {
      v25 = *(v21 + 24);

      v26 = (v25 >> 1) - a3;
      v24 = __OFADD__(v9, v26);
      v9 += v26;
      if (v24)
      {
LABEL_35:
        __break(1u);
        return result;
      }
    }

    else
    {
    }

    a7 = v28;
    goto LABEL_23;
  }

  if (!v18)
  {
    swift_unknownObjectRelease();
  }

  sub_1C99251F8();
  if (v20)
  {
    v22 = *(v19 + 24);

    v23 = (v22 >> 1) - a3;
    v24 = __OFADD__(v9, v23);
    v9 += v23;
    if (v24)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }
  }

  else
  {
  }

  a7 = v28;
LABEL_19:
  if (v9 + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_33;
  }

  v9 *= 2;
LABEL_23:
  if (v9 <= v8)
  {
    v27 = v8;
  }

  else
  {
    v27 = v9;
  }

  return a7(v7, v27);
}

uint64_t *sub_1C9924A48(uint64_t *result, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v5 = v4[2];
  v6 = v4[3] >> 1;
  v7 = v6 - v5;
  if (__OFSUB__(v6, v5))
  {
    __break(1u);
    goto LABEL_17;
  }

  v9 = *result;
  v10 = *(*result + 16);
  v11 = __OFSUB__(v10, a2);
  v12 = v10 - a2;
  if (v11)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v13 = v12 - a3;
  if (__OFSUB__(v12, a3))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v14 = v7 - a2;
  if (__OFSUB__(v7, a2))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v11 = __OFSUB__(v14, v13);
  v15 = v14 - v13;
  if (v11)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v31 = v15;
  v17 = (v9 + 32);
  v18 = v9 + 32 + 16 * a2;
  v29 = v13;
  v30 = (v18 + 16 * a3);
  result = sub_1C9924F6C(v7, sub_1C97EFDF4);
  if (result)
  {
    v19 = result;
    v28 = a4;
    v20 = v4[1] + 16 * v4[2];
    sub_1C97A2CEC(&qword_1EC3C7B90, &qword_1C9ABC240);
    swift_arrayDestroy();
    sub_1C97E8434(v20, a2, v17);
    swift_arrayDestroy();
    v28(v18, a3);
    sub_1C97E8434(v20 + 16 * a2 + 16 * v31, v29, v30);
    swift_arrayDestroy();
    *(v19 + 16) = 0;

LABEL_15:

    swift_unknownObjectRelease();
    result = sub_1C98EE528();
    *v4 = result;
    v4[1] = v25;
    v4[2] = v26;
    v4[3] = v27;
    return result;
  }

  v21 = v4[2];
  v22 = v21 + a2;
  if (__OFADD__(v21, a2))
  {
    goto LABEL_21;
  }

  if (v22 < v21)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (__OFSUB__(v22, v21))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  sub_1C97A2CEC(&qword_1EC3C7B90, &qword_1C9ABC240);
  swift_arrayInitWithCopy();
  result = (a4)(&v17[16 * a2], a3);
  v23 = v22 + v31;
  if (__OFADD__(v22, v31))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v24 = v4[3] >> 1;
  if (v24 < v23)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (!__OFSUB__(v24, v23))
  {
    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t *sub_1C9924CD0(uint64_t *result, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v5 = v4[2];
  v6 = v4[3] >> 1;
  v7 = v6 - v5;
  if (__OFSUB__(v6, v5))
  {
    __break(1u);
    goto LABEL_17;
  }

  v9 = *result;
  v10 = *(*result + 16);
  v11 = __OFSUB__(v10, a2);
  v12 = v10 - a2;
  if (v11)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v13 = v12 - a3;
  if (__OFSUB__(v12, a3))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v14 = v7 - a2;
  if (__OFSUB__(v7, a2))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v11 = __OFSUB__(v14, v13);
  v15 = v14 - v13;
  if (v11)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v31 = v15;
  v17 = (v9 + 32);
  v18 = v9 + 32 + 16 * a2;
  v29 = v13;
  v30 = (v18 + 16 * a3);
  result = sub_1C9924F6C(v7, sub_1C97EFE1C);
  if (result)
  {
    v19 = result;
    v28 = a4;
    v20 = v4[1] + 16 * v4[2];
    sub_1C97A2CEC(&unk_1EC3CC260, &qword_1C9AA0010);
    swift_arrayDestroy();
    sub_1C97E8434(v20, a2, v17);
    swift_arrayDestroy();
    v28(v18, a3);
    sub_1C97E8434(v20 + 16 * a2 + 16 * v31, v29, v30);
    swift_arrayDestroy();
    *(v19 + 16) = 0;

LABEL_15:

    swift_unknownObjectRelease();
    result = sub_1C98EE528();
    *v4 = result;
    v4[1] = v25;
    v4[2] = v26;
    v4[3] = v27;
    return result;
  }

  v21 = v4[2];
  v22 = v21 + a2;
  if (__OFADD__(v21, a2))
  {
    goto LABEL_21;
  }

  if (v22 < v21)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (__OFSUB__(v22, v21))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  sub_1C97A2CEC(&unk_1EC3CC260, &qword_1C9AA0010);
  swift_arrayInitWithCopy();
  result = (a4)(&v17[16 * a2], a3);
  v23 = v22 + v31;
  if (__OFADD__(v22, v31))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v24 = v4[3] >> 1;
  if (v24 < v23)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (!__OFSUB__(v24, v23))
  {
    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1C9924F6C(uint64_t a1, void (*a2)(uint64_t))
{
  isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
  if (!isUniquelyReferenced_nonNull)
  {
    return 0;
  }

  v7 = v2[2];
  v6 = v2[3];
  v8 = (v6 >> 1) - v7;
  if (__OFSUB__(v6 >> 1, v7))
  {
    __break(1u);
    goto LABEL_18;
  }

  v9 = v2[1] + 16 * v7;
  if ((v6 & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_1C9A93B88();
  swift_unknownObjectRetain();
  v10 = swift_dynamicCastClass();
  if (!v10)
  {
    swift_unknownObjectRelease();
    v10 = MEMORY[0x1E69E7CC0];
  }

  v11 = *(v10 + 16);
  if (v9 + 16 * v8 != v10 + 16 * v11 + 32)
  {

LABEL_8:
    v12 = v8;
    goto LABEL_10;
  }

  v13 = *(v10 + 24);

  v15 = (v13 >> 1) - v11;
  v16 = __OFADD__(v8, v15);
  v12 = v8 + v15;
  if (!v16)
  {
LABEL_10:
    if (v12 < a1)
    {
      return 0;
    }

    sub_1C9A93B88();
    swift_unknownObjectRetain();
    a1 = swift_dynamicCastClass();
    if (!a1)
    {
      swift_unknownObjectRelease();
      a1 = MEMORY[0x1E69E7CC0];
    }

    v17 = (v9 - a1 - 32) / 16;
    isUniquelyReferenced_nonNull = v8 + v17;
    if (!__OFADD__(v8, v17))
    {
      if (isUniquelyReferenced_nonNull >= *(a1 + 16))
      {
        return a1;
      }

LABEL_19:
      a2(isUniquelyReferenced_nonNull);
      return a1;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C99250F0(uint64_t a1)
{
  v2 = sub_1C97A2CEC(&unk_1EC3CE300, &qword_1C9AB52F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C9925158(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C97DA940();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C99251D4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = MEMORY[0x1E695BDA0];

  return sub_1C97AE67C(a1, a2, a3, v4);
}

uint64_t sub_1C992522C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6152656C706D6173 && a2 == 0xEA00000000006574;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x436C656E6E616863 && a2 == 0xEC000000746E756FLL)
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

uint64_t sub_1C9925300(char a1)
{
  if (a1)
  {
    return 0x436C656E6E616863;
  }

  else
  {
    return 0x6152656C706D6173;
  }
}

uint64_t sub_1C9925344(void *a1, uint64_t a2, double a3)
{
  v5 = sub_1C97A2CEC(&qword_1EC3CCF08, &qword_1C9AB53F8);
  sub_1C97AE9C8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v12 - v9;
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C99258D4();
  sub_1C9A93DD8();
  v14 = 0;
  sub_1C9A939E8();
  if (!v3)
  {
    v13 = 1;
    sub_1C9A93A58();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1C99254A4(double a1, uint64_t a2, uint64_t a3)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x1CCA919B0](*&a1, a3);
  return sub_1C9A93CF8();
}

uint64_t sub_1C99254E4(uint64_t a1, double a2)
{
  sub_1C9A93CC8();
  v3 = 0.0;
  if (a2 != 0.0)
  {
    v3 = a2;
  }

  MEMORY[0x1CCA919B0](*&v3);
  sub_1C9A93CF8();
  return sub_1C9A93D18();
}

void *sub_1C9925550(void *a1)
{
  v3 = sub_1C97A2CEC(&qword_1EC3CCEF8, &qword_1C9AB53F0);
  sub_1C97AE9C8();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - v7;
  v9 = sub_1C97A5A8C(a1, a1[3]);
  sub_1C99258D4();
  sub_1C9A93DB8();
  if (!v1)
  {
    v13 = 0;
    sub_1C9A938C8();
    v12 = 1;
    v9 = sub_1C9A93938();
    (*(v5 + 8))(v8, v3);
  }

  sub_1C97A592C(a1);
  return v9;
}

uint64_t sub_1C99256F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C992522C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C9925720(uint64_t a1)
{
  v2 = sub_1C99258D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C992575C(uint64_t a1)
{
  v2 = sub_1C99258D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99257B0()
{
  v1 = *v0;
  sub_1C9A93CC8();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x1CCA919B0](*&v2);
  sub_1C9A93CF8();
  return sub_1C9A93D18();
}

void *sub_1C9925818@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C9925550(a1);
  if (!v2)
  {
    *a2 = v5;
    *(a2 + 8) = result;
  }

  return result;
}

unint64_t sub_1C9925880()
{
  result = qword_1EC3CCEF0;
  if (!qword_1EC3CCEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CCEF0);
  }

  return result;
}

unint64_t sub_1C99258D4()
{
  result = qword_1EC3CCF00;
  if (!qword_1EC3CCF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CCF00);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SNSystemConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C9925A08()
{
  result = qword_1EC3CCF10;
  if (!qword_1EC3CCF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CCF10);
  }

  return result;
}

unint64_t sub_1C9925A60()
{
  result = qword_1EC3CCF18;
  if (!qword_1EC3CCF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CCF18);
  }

  return result;
}

unint64_t sub_1C9925AB8()
{
  result = qword_1EC3CCF20;
  if (!qword_1EC3CCF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CCF20);
  }

  return result;
}

void *sub_1C9925B0C(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1C97A2CEC(&qword_1EC3CCF28, &qword_1C9AB5518);
  sub_1C97AE9C8();
  v27 = v6;
  v28 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - v7;
  v32 = sub_1C97A2CEC(&qword_1EC3CCF30, &qword_1C9AB5520);
  sub_1C97AE9C8();
  v30 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - v11;
  v33 = sub_1C97A2CEC(&qword_1EC3CCF38, &qword_1C9AB5528);
  sub_1C97AE9C8();
  v31 = v13;
  MEMORY[0x1EEE9AC00](v14);
  v29 = &v26 - v15;
  v16 = type metadata accessor for AccessibilitySoundActions.Session(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C97A2CEC(&qword_1EC3CCF40, &qword_1C9AB5530);
  swift_allocObject();
  v19 = sub_1C99251C8();
  sub_1C98F54A8();
  if (v3)
  {
  }

  else
  {
    v34 = *&v18[*(v16 + 20)];

    v26 = v19;
    sub_1C97A2CEC(&qword_1EC3C9B18, &qword_1C9AB20E0);
    sub_1C97AE67C(&unk_1EC3C9B20, &qword_1EC3C9B18, &qword_1C9AB20E0, MEMORY[0x1E695BED8]);
    sub_1C9A92048();

    sub_1C97A2CEC(&unk_1EC3CC260, &qword_1C9AA0010);
    v20 = v28;
    sub_1C9A91CA8();
    (*(v27 + 8))(v8, v20);
    sub_1C97A2CEC(&qword_1EC3CCF48, &qword_1C9AB5538);
    sub_1C97AE67C(&qword_1EC3CCF50, &qword_1EC3CCF30, &qword_1C9AB5520, MEMORY[0x1E695BE28]);
    sub_1C97AE67C(&qword_1EC3CCF58, &qword_1EC3CCF48, &qword_1C9AB5538, MEMORY[0x1E695C008]);
    v21 = v29;
    v22 = v32;
    sub_1C9A91FC8();
    (*(v30 + 8))(v12, v22);
    sub_1C97AE67C(qword_1EC3CCF60, &qword_1EC3CCF38, &qword_1C9AB5528, MEMORY[0x1E695BDA0]);
    v23 = v33;
    v24 = sub_1C9A91F28();
    (*(v31 + 8))(v21, v23);
    sub_1C97A2CEC(&unk_1EC3C7BA0, &qword_1C9AA0008);
    swift_allocObject();
    a3 = sub_1C9923A6C(v26, v24);
    sub_1C9926104(v18);
  }

  return a3;
}

unint64_t sub_1C9925FD8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  if (qword_1EC3C5E50 != -1)
  {
    swift_once();
  }

  v5 = qword_1EC3D34E0;
  if (*(qword_1EC3D34E0 + 16) && (result = sub_1C9A32230(v4, v3), (v7 & 1) != 0))
  {
    *a2 = *(*(v5 + 56) + result);
  }

  else
  {
    sub_1C986F098();
    swift_allocError();
    *v8 = 2;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1C99260A4(id *a1)
{
  v1 = *a1;
  sub_1C97A2CEC(&unk_1EC3CC260, &qword_1C9AA0010);
  return sub_1C9A91EA8();
}

uint64_t sub_1C9926104(uint64_t a1)
{
  v2 = type metadata accessor for AccessibilitySoundActions.Session(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

atomic_ullong *sub_1C9926160(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, unint64_t a5)
{
  v8 = (*(*a1 + 136))();
  if ((*v8 & 1) == 0)
  {
    v8 = a2();
  }

  result = (*(*a4 + 136))(v8);
  atomic_fetch_add_explicit(result, a5, memory_order_relaxed);
  return result;
}

uint64_t sub_1C9926204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    v6 = 47;
  }

  else
  {
    v6 = 124;
  }

  v8 = v6;
  MEMORY[0x1CCA90230](a1, a2);

  MEMORY[0x1CCA90230](v8, 0xE100000000000000);

  return a3;
}

uint64_t sub_1C9926294(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a3 & 1) == 0)
  {
    if ((a6 & 1) == 0)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if ((a6 & 1) == 0)
  {
    return 0;
  }

LABEL_3:
  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  else
  {
    return sub_1C9A93B18();
  }
}

uint64_t sub_1C99262CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6761726F74537772 && a2 == 0xED00006874615065;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6150656C646E7562 && a2 == 0xEA00000000006874)
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

uint64_t sub_1C99263A4(char a1)
{
  if (a1)
  {
    return 0x6150656C646E7562;
  }

  else
  {
    return 0x6761726F74537772;
  }
}

uint64_t sub_1C99263EC(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v28 = a3;
  v29 = a4;
  v27 = a2;
  sub_1C97A2CEC(&qword_1EC3CD0A0, &qword_1C9AB57E8);
  sub_1C97AE9C8();
  v25 = v6;
  v26 = v5;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  v10 = sub_1C97A2CEC(&qword_1EC3CD0A8, &qword_1C9AB57F0);
  sub_1C97AE9C8();
  v24 = v11;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v24 - v13;
  v15 = sub_1C97A2CEC(&qword_1EC3CD0B0, &qword_1C9AB57F8);
  sub_1C97AE9C8();
  v17 = v16;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v24 - v19;
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C9927BFC();
  sub_1C9A93DD8();
  v21 = (v17 + 8);
  if (v29)
  {
    v31 = 1;
    sub_1C9927C50();
    sub_1C9A93988();
    v22 = v26;
    sub_1C9A939C8();
    (*(v25 + 8))(v9, v22);
  }

  else
  {
    v30 = 0;
    sub_1C9927CA4();
    sub_1C9A93988();
    sub_1C9A939C8();
    (*(v24 + 8))(v14, v10);
  }

  return (*v21)(v20, v15);
}

uint64_t sub_1C99266AC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  MEMORY[0x1CCA91980](a4 & 1);

  return sub_1C9A92528();
}

uint64_t sub_1C9926700(uint64_t a1, uint64_t a2, char a3)
{
  sub_1C9A93CC8();
  MEMORY[0x1CCA91980](a3 & 1);
  sub_1C9A92528();
  return sub_1C9A93D18();
}

uint64_t sub_1C9926768(void *a1)
{
  v38 = sub_1C97A2CEC(&qword_1EC3CD070, &qword_1C9AB57C8);
  sub_1C97AE9C8();
  v36[4] = v2;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1C97A2CEC(&qword_1EC3CD078, &qword_1C9AB57D0);
  sub_1C97AE9C8();
  v36[3] = v5;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v36 - v7;
  v9 = sub_1C97A2CEC(&qword_1EC3CD080, &unk_1C9AB57D8);
  sub_1C97AE9C8();
  v37 = v10;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v36 - v12;
  v14 = sub_1C97A5A8C(a1, a1[3]);
  sub_1C9927BFC();
  v15 = v39;
  sub_1C9A93DB8();
  if (v15)
  {
    goto LABEL_8;
  }

  v36[1] = v4;
  v36[2] = v8;
  v39 = a1;
  sub_1C9A93958();
  result = sub_1C98EE524();
  if (v18 == v19 >> 1)
  {
LABEL_7:
    v25 = sub_1C9A93648();
    swift_allocError();
    v27 = v26;
    sub_1C97A2CEC(&qword_1EC3C6F20, &qword_1C9AA0D80);
    *v27 = &_s11FileAddressON;
    v14 = v13;
    sub_1C9A93868();
    sub_1C9A93638();
    (*(*(v25 - 8) + 104))(v27, *MEMORY[0x1E69E6AF8], v25);
    swift_willThrow();
    swift_unknownObjectRelease();
    v28 = sub_1C99281D8();
    v29(v28, v9);
    a1 = v39;
LABEL_8:
    sub_1C97A592C(a1);
    return v14;
  }

  v36[0] = 0;
  if (v18 < (v19 >> 1))
  {
    v20 = *(v17 + v18);
    sub_1C98EE520();
    v22 = v21;
    v24 = v23;
    swift_unknownObjectRelease();
    if (v22 == v24 >> 1)
    {
      v40 = v20;
      if (v20)
      {
        v42 = 1;
        sub_1C9927C50();
        sub_1C9928208(&_s11FileAddressO20BundlePathCodingKeysON, &v42);
        v30 = sub_1C9A938A8();
        v31 = v37;
        v14 = v30;
        swift_unknownObjectRelease();
        v32 = sub_1C9928240();
        v33(v32);
      }

      else
      {
        v41 = 0;
        sub_1C9927CA4();
        sub_1C9928208(&_s11FileAddressO23RwStoragePathCodingKeysON, &v41);
        v14 = sub_1C9A938A8();
        swift_unknownObjectRelease();
        v34 = sub_1C992822C();
        v35(v34);
        v31 = v37;
      }

      (*(v31 + 8))(v13, v24);
      sub_1C97A592C(v39);
      return v14;
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C9926C8C(uint64_t a1)
{
  v2 = sub_1C9927C50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9926CC8(uint64_t a1)
{
  v2 = sub_1C9927C50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9926D0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C99262CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C9926D34(uint64_t a1)
{
  v2 = sub_1C9927BFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9926D70(uint64_t a1)
{
  v2 = sub_1C9927BFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9926DAC(uint64_t a1)
{
  v2 = sub_1C9927CA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9926DE8(uint64_t a1)
{
  v2 = sub_1C9927CA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9926E24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1C9926204(a1, a2, *v3, *(v3 + 8), *(v3 + 16));
  *a3 = result;
  *(a3 + 8) = v6;
  *(a3 + 16) = v7 & 1;
  return result;
}

uint64_t sub_1C9926E5C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C9926768(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
  }

  return result;
}

uint64_t sub_1C9926EC8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1C9A93CC8();
  sub_1C99266AC(v5, v1, v2, v3);
  return sub_1C9A93D18();
}

void sub_1C9926F3C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    v5 = objc_autoreleasePoolPush();
    sub_1C99281E8();
    sub_1C9926FE4(v6, v7, v8, v9);
    objc_autoreleasePoolPop(v4);
  }

  else
  {
    v10 = _s13FileInterfaceV11DomainErrorOMa(0, *(a4 + 16), *(a4 + 24), a4);
    sub_1C99281AC(v10);
    sub_1C98BBB74();
    *v11 = 3;
    swift_willThrow();
  }
}

uint64_t sub_1C9926FE4@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X8>)
{
  v39 = a5;
  v37 = a4;
  v35 = a6;
  v36 = a3;
  v6 = sub_1C9A91558();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C97A2CEC(&qword_1EC3C7FE0, &unk_1C9AA1890);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v35 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v35 - v17;
  type metadata accessor for SoundAnalysisBundleMarker(v19);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21 = [objc_opt_self() bundleForClass_];
  v22 = sub_1C9A92478();
  v23 = [v21 URLForResource:v22 withExtension:0];

  if (v23)
  {
    sub_1C9A914F8();

    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  sub_1C97ACC50(v16, v24, 1, v6);
  sub_1C9835A8C(v16, v18);
  sub_1C9835DE0(v18, v13);
  if (sub_1C97ABF20(v13, 1, v6) == 1)
  {
    sub_1C9927650(v13);
    _s13FileInterfaceV11DomainErrorOMa(0, v36, v37, v25);
    swift_getWitnessTable();
    v26 = swift_allocError();
    *v27 = 0;
    swift_willThrow();
  }

  else
  {
    (*(v7 + 32))(v9, v13, v6);
    v28 = v38;
    v29 = sub_1C9A915A8();
    v26 = v28;
    if (!v28)
    {
      v32 = v29;
      v33 = v30;

      (*(v7 + 8))(v9, v6);
      result = sub_1C9927650(v18);
      v34 = v35;
      *v35 = v32;
      v34[1] = v33;
      return result;
    }

    (*(v7 + 8))(v9, v6);
  }

  result = sub_1C9927650(v18);
  *v39 = v26;
  return result;
}

uint64_t sub_1C9927340(uint64_t a1)
{
  v1 = a1;
  v2 = objc_autoreleasePoolPush();
  v3 = sub_1C99BF4B4(v1);
  v5 = v4;
  objc_autoreleasePoolPop(v2);
  if (v5)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C99273A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C9927340(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

void sub_1C99273D4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = sub_1C99281E8();
    sub_1C992747C(v6, v7, v8, v9, v10, v11, v12);
    objc_autoreleasePoolPop(v4);
  }

  else
  {
    v13 = _s13FileInterfaceV11DomainErrorOMa(0, *(a4 + 16), *(a4 + 24), a4);
    sub_1C99281AC(v13);
    sub_1C98BBB74();
    *v14 = 1;
    swift_willThrow();
  }
}

uint64_t sub_1C992747C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X8>, double a7@<D0>)
{
  type metadata accessor for SoundAnalysisBundleMarker(a7);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = [objc_opt_self() bundleForClass_];
  v15 = [v14 resourcePath];

  if (v15)
  {
    v17 = sub_1C9A924A8();
    v19 = v18;

    MEMORY[0x1CCA90230](47, 0xE100000000000000);

    MEMORY[0x1CCA90230](a1, a2);

    *a6 = v17;
    a6[1] = v19;
  }

  else
  {
    _s13FileInterfaceV11DomainErrorOMa(0, a3, a4, v16);
    swift_getWitnessTable();
    v21 = swift_allocError();
    *v22 = 2;
    result = swift_willThrow();
    *a5 = v21;
  }

  return result;
}

uint64_t sub_1C9927650(uint64_t a1)
{
  v2 = sub_1C97A2CEC(&qword_1EC3C7FE0, &unk_1C9AA1890);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *sub_1C99276B8(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}