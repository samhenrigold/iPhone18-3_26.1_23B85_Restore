uint64_t sub_23ED59674(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_23ED5E8B4();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

void *sub_23ED59724()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E385838, &qword_23ED60E58);
  v31 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v30 = &v29 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E385858, &qword_23ED60E70);
  v4 = *v0;
  v5 = sub_23ED5ECE4();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_23ED584DC(*(v4 + 56) + v26, v30);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_23ED59BDC(v25, *(v27 + 56) + v26);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

char *sub_23ED5995C()
{
  v1 = v0;
  v35 = sub_23ED5E8B4();
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E385860, &qword_23ED60E78);
  v3 = *v0;
  v4 = sub_23ED5ECE4();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);

        v13 = v38;
      }

      while (v38);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
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

uint64_t sub_23ED59BDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E385838, &qword_23ED60E58);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23ED59C4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E385838, &qword_23ED60E58);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_23ED59CBC()
{
  result = qword_27E3856C0;
  if (!qword_27E3856C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E3856C0);
  }

  return result;
}

uint64_t sub_23ED59D14(uint64_t a1, unsigned int a2)
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

uint64_t sub_23ED59D5C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_23ED59DBC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = "Format";
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0xD000000000000012;
    }

    else
    {
      v5 = 0xD000000000000013;
    }

    if (v3)
    {
      v4 = "pixelBufferCreation";
    }

    else
    {
      v4 = "Format";
    }
  }

  else if (a1 == 2)
  {
    v4 = "colorSpaceCreation";
    v5 = 0xD000000000000010;
  }

  else if (a1 == 3)
  {
    v4 = "invalidParameter";
    v5 = 0xD000000000000017;
  }

  else
  {
    v4 = "unableToLockBaseAddress";
    v5 = 0xD000000000000012;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0xD000000000000012;
    }

    else
    {
      v6 = 0xD000000000000013;
    }

    if (a2)
    {
      v2 = "pixelBufferCreation";
    }
  }

  else if (a2 == 2)
  {
    v2 = "colorSpaceCreation";
    v6 = 0xD000000000000010;
  }

  else
  {
    v2 = "invalidParameter";
    if (a2 == 3)
    {
      v6 = 0xD000000000000017;
    }

    else
    {
      v6 = 0xD000000000000012;
    }

    if (a2 != 3)
    {
      v2 = "unableToLockBaseAddress";
    }
  }

  if (v5 == v6 && (v4 | 0x8000000000000000) == (v2 | 0x8000000000000000))
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_23ED5EE04();
  }

  return v7 & 1;
}

AlchemistBase::MLError_optional __swiftcall MLError.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23ED5ED24();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t MLError.rawValue.getter()
{
  v1 = 0x746F4E6C65646F6DLL;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000001ALL;
  }
}

uint64_t sub_23ED59FF0(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEE00646564616F4CLL;
  v3 = 0xD000000000000016;
  v4 = *a1;
  if (v4 == 1)
  {
    v5 = 0xD000000000000016;
  }

  else
  {
    v5 = 0x746F4E6C65646F6DLL;
  }

  if (v4 == 1)
  {
    v6 = 0x800000023ED61560;
  }

  else
  {
    v6 = 0xEE00646564616F4CLL;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD00000000000001ALL;
  }

  if (v4)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0x800000023ED61540;
  }

  if (*a2 == 1)
  {
    v2 = 0x800000023ED61560;
  }

  else
  {
    v3 = 0x746F4E6C65646F6DLL;
  }

  if (*a2)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0xD00000000000001ALL;
  }

  if (*a2)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0x800000023ED61540;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_23ED5EE04();
  }

  return v11 & 1;
}

uint64_t sub_23ED5A0D8()
{
  sub_23ED5EE74();
  sub_23ED5EA04();

  return sub_23ED5EE94();
}

uint64_t sub_23ED5A194(uint64_t a1)
{
  sub_23ED5EA04();
}

uint64_t sub_23ED5A23C(uint64_t a1)
{
  sub_23ED5EE74();
  sub_23ED5EA04();

  return sub_23ED5EE94();
}

void sub_23ED5A300(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE00646564616F4CLL;
  v4 = 0x746F4E6C65646F6DLL;
  if (v2 == 1)
  {
    v4 = 0xD000000000000016;
    v3 = 0x800000023ED61560;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD00000000000001ALL;
  }

  if (v5)
  {
    v3 = 0x800000023ED61540;
  }

  *a1 = v6;
  a1[1] = v3;
}

AlchemistBase::PixelBufferError_optional __swiftcall PixelBufferError.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23ED5ED24();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t PixelBufferError.rawValue.getter()
{
  v1 = 0xD000000000000012;
  v2 = *v0;
  v3 = 0xD000000000000010;
  v4 = 0xD000000000000017;
  if (v2 != 3)
  {
    v4 = 0xD000000000000012;
  }

  if (v2 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_23ED5A46C()
{
  sub_23ED5EE74();
  sub_23ED5EA04();

  return sub_23ED5EE94();
}

uint64_t sub_23ED5A53C(uint64_t a1)
{
  sub_23ED5EA04();
}

uint64_t sub_23ED5A5F8(uint64_t a1)
{
  sub_23ED5EE74();
  sub_23ED5EA04();

  return sub_23ED5EE94();
}

void sub_23ED5A6D0(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000012;
  v3 = *v1;
  v4 = "colorSpaceCreation";
  v5 = 0xD000000000000010;
  v6 = "invalidParameter";
  v7 = 0xD000000000000017;
  if (v3 != 3)
  {
    v7 = 0xD000000000000012;
    v6 = "unableToLockBaseAddress";
  }

  if (v3 != 2)
  {
    v5 = v7;
    v4 = v6;
  }

  if (*v1)
  {
    v8 = "pixelBufferCreation";
  }

  else
  {
    v2 = 0xD000000000000013;
    v8 = "Format";
  }

  if (*v1 <= 1u)
  {
    v9 = v8;
  }

  else
  {
    v2 = v5;
    v9 = v4;
  }

  *a1 = v2;
  a1[1] = v9 | 0x8000000000000000;
}

AlchemistBase::ColorSpaceError_optional __swiftcall ColorSpaceError.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23ED5ED24();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t ColorSpaceError.rawValue.getter()
{
  if (*v0)
  {
    return 0x726F707075736E75;
  }

  else
  {
    return 0x6E6F697461657263;
  }
}

unint64_t sub_23ED5A818()
{
  result = qword_27E385868;
  if (!qword_27E385868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E385868);
  }

  return result;
}

unint64_t sub_23ED5A870()
{
  result = qword_27E385870;
  if (!qword_27E385870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E385870);
  }

  return result;
}

uint64_t sub_23ED5A8C4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x726F707075736E75;
  }

  else
  {
    v3 = 0x6E6F697461657263;
  }

  if (v2)
  {
    v4 = 0xEE0064656C696146;
  }

  else
  {
    v4 = 0xEB00000000646574;
  }

  if (*a2)
  {
    v5 = 0x726F707075736E75;
  }

  else
  {
    v5 = 0x6E6F697461657263;
  }

  if (*a2)
  {
    v6 = 0xEB00000000646574;
  }

  else
  {
    v6 = 0xEE0064656C696146;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_23ED5EE04();
  }

  return v8 & 1;
}

unint64_t sub_23ED5A984()
{
  result = qword_27E385878;
  if (!qword_27E385878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E385878);
  }

  return result;
}

uint64_t sub_23ED5A9D8()
{
  sub_23ED5EE74();
  sub_23ED5EA04();

  return sub_23ED5EE94();
}

uint64_t sub_23ED5AA70(uint64_t a1)
{
  sub_23ED5EA04();
}

uint64_t sub_23ED5AAF4(uint64_t a1)
{
  sub_23ED5EE74();
  sub_23ED5EA04();

  return sub_23ED5EE94();
}

uint64_t sub_23ED5AB88@<X0>(char *a2@<X8>)
{
  v3 = sub_23ED5ED24();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_23ED5ABE8(uint64_t *a1@<X8>)
{
  v2 = 0x6E6F697461657263;
  if (*v1)
  {
    v2 = 0x726F707075736E75;
  }

  v3 = 0xEE0064656C696146;
  if (*v1)
  {
    v3 = 0xEB00000000646574;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t getEnumTagSinglePayload for PixelBufferError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PixelBufferError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_23ED5AE30(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_23ED5E964();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_23ED5E954();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void sub_23ED5AF6C(int a1, uint64_t a2, uint64_t a3, Swift::UInt32 format)
{
  v4 = a2 * a3;
  if ((a2 * a3) >> 64 == (a2 * a3) >> 63)
  {
    if ((v4 & 0x3F) != 0)
    {
      sub_23ED4807C();
      swift_allocError();
      *v5 = 0;
      swift_willThrow();
      return;
    }

    v6 = createIOSurfaceBackedPixelBuffer(width:height:format:)(64, v4 >> 6, format);
    if (!v7)
    {
      v8 = v6;
      if (CVPixelBufferLockBaseAddress(v6, 0))
      {
        sub_23ED4811C();
        swift_allocError();
        *v9 = 3;
        swift_willThrow();
      }

      else
      {
        BaseAddress = CVPixelBufferGetBaseAddress(v8);
        if (BaseAddress)
        {
          MEMORY[0x28223BE20](BaseAddress);
          sub_23ED5EAD4();
          CVPixelBufferUnlockBaseAddress(v8, 0);
          return;
        }

        sub_23ED4811C();
        swift_allocError();
        *v11 = 4;
        swift_willThrow();
        CVPixelBufferUnlockBaseAddress(v8, 0);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_23ED5B120(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 < 0)
  {
    goto LABEL_19;
  }

  if (a3)
  {
    if (a4 < 0)
    {
LABEL_20:
      __break(1u);
      return result;
    }

    v5 = 0;
    while (!a4)
    {
LABEL_5:
      if (++v5 == a3)
      {
        return result;
      }
    }

    v6 = v5 * a4;
    if ((v5 * a4) >> 64 == (v5 * a4) >> 63)
    {
      v7 = 0;
      while (1)
      {
        v8 = v6 + v7;
        if (__OFADD__(v6, v7))
        {
          break;
        }

        v9 = v7 * a3;
        if ((v7 * a3) >> 64 != (v7 * a3) >> 63)
        {
          goto LABEL_16;
        }

        v10 = __OFADD__(v9, v5);
        v11 = v9 + v5;
        if (v10)
        {
          goto LABEL_17;
        }

        ++v7;
        *(a5 + 2 * v8) = *(result + 2 * v11);
        if (a4 == v7)
        {
          goto LABEL_5;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_23ED5B1AC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 < 0)
  {
    goto LABEL_19;
  }

  if (a3)
  {
    if (a4 < 0)
    {
LABEL_20:
      __break(1u);
      return result;
    }

    v5 = 0;
    while (!a4)
    {
LABEL_5:
      if (++v5 == a3)
      {
        return result;
      }
    }

    v6 = v5 * a4;
    if ((v5 * a4) >> 64 == (v5 * a4) >> 63)
    {
      v7 = 0;
      while (1)
      {
        v8 = v6 + v7;
        if (__OFADD__(v6, v7))
        {
          break;
        }

        v9 = v7 * a3;
        if ((v7 * a3) >> 64 != (v7 * a3) >> 63)
        {
          goto LABEL_16;
        }

        _VF = __OFADD__(v9, v5);
        v11 = v9 + v5;
        if (_VF)
        {
          goto LABEL_17;
        }

        ++v7;
        _H0 = *(result + 2 * v11);
        __asm { FCVT            S0, H0 }

        *(a5 + 4 * v8) = _S0;
        if (a4 == v7)
        {
          goto LABEL_5;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  return result;
}

void sub_23ED5B23C(__CVBuffer *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>, float a5@<S0>, float a6@<S1>)
{
  v9 = a1;
  v78 = a4;
  if (qword_27E385390 != -1)
  {
    a1 = swift_once();
  }

  v10 = &v68;
  MEMORY[0x28223BE20](a1);
  sub_23ED5EB44();
  if (!v6)
  {
    v11 = sub_23ED5C344(v9, a5, a6);
    MEMORY[0x28223BE20](v11);
    v12 = sub_23ED5EB44();
    MEMORY[0x28223BE20](v12);
    sub_23ED5EB44();
    v77 = 0;
    v13 = 0xEB00000000736E6FLL;
    v14 = *(v11 + 16);
    v15 = sub_23ED5E9B4();
    v16 = &off_278C70000;
    v17 = [v14 featureValueForName_];

    if (v17)
    {
      v14 = &off_278C70000;
      v10 = [v17 multiArrayValue];

      if (v10)
      {
        v18 = *(v11 + 16);
        v15 = sub_23ED5E9B4();
        v17 = [v18 featureValueForName_];

        if (v17)
        {
          v15 = [v17 multiArrayValue];

          v75 = v15;
          if (v15)
          {
            v17 = *(v11 + 16);
            v15 = sub_23ED5E9B4();
            v13 = [v17 featureValueForName_];

            if (v13)
            {
              v17 = [v13 multiArrayValue];

              v74 = v17;
              if (v17)
              {
                v19 = *(v11 + 16);
                v15 = sub_23ED5E9B4();
                v13 = [v19 featureValueForName_];

                if (v13)
                {
                  v17 = [v13 multiArrayValue];

                  v76 = v17;
                  if (v17)
                  {
                    v20 = *(v11 + 16);
                    v15 = sub_23ED5E9B4();
                    v13 = [v20 featureValueForName_];

                    if (v13)
                    {
                      v17 = [v13 multiArrayValue];

                      if (v17)
                      {
                        v21 = *(v11 + 16);
                        v15 = sub_23ED5E9B4();
                        v13 = [v21 featureValueForName_];

                        if (v13)
                        {
                          v16 = [v13 multiArrayValue];

                          v73 = v16;
                          if (v16)
                          {
                            v72 = MEMORY[0x23EF224F0]();
                            v22 = [v10 shape];
                            sub_23ED47FF8();
                            v23 = sub_23ED5EA54();

                            v24 = v74;
                            if (v23 >> 62)
                            {
                              v25 = sub_23ED5ECD4();
                            }

                            else
                            {
                              v25 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
                            }

                            if (v25 != 5)
                            {
                              if (qword_27E385398 != -1)
                              {
                                swift_once();
                              }

                              v30 = sub_23ED5E964();
                              __swift_project_value_buffer(v30, qword_27E3880E0);
                              v31 = sub_23ED5E944();
                              v32 = sub_23ED5EB04();
                              v33 = os_log_type_enabled(v31, v32);
                              v34 = v72;
                              if (v33)
                              {
                                v35 = swift_slowAlloc();
                                *v35 = 0;
                                _os_log_impl(&dword_23ED44000, v31, v32, "Incorrect gaussian shape. Did you export the model to produce unflattened [B, C, N, H, W] Gaussians?", v35, 2u);
                                MEMORY[0x23EF229A0](v35, -1, -1);
                              }

                              sub_23ED4807C();
                              swift_allocError();
                              *v36 = 0;
                              swift_willThrow();
                              v29 = v75;
                              goto LABEL_30;
                            }

                            v26 = [v17 count];
                            v27 = v77;
                            sub_23ED5AF6C(v10, v26, 3, 0x4C303066u);
                            if (v27)
                            {
                              v29 = v75;
LABEL_29:
                              v34 = v72;
LABEL_30:
                              objc_autoreleasePoolPop(v34);

                              return;
                            }

                            v37 = v28;
                            sub_23ED5AF6C(v24, v26, 4, 0x4C303068u);
                            v16 = v75;
                            v77 = v38;
                            sub_23ED5AF6C(v75, v26, 3, 0x4C303068u);
                            v71 = v39;
                            sub_23ED5AF6C(v76, v26, 3, 0x4C303068u);
                            v69 = v37;
                            v70 = v40;
                            sub_23ED5AF6C(v17, v26, 1, 0x4C303068u);
                            v14 = v41;
                            v68 = sub_23ED47AF4(v73);
                            v13 = 0;
                            if (CVPixelBufferLockBaseAddress(v70, 0))
                            {
                              sub_23ED4811C();
                              swift_allocError();
                              *v42 = 3;
                              swift_willThrow();

LABEL_28:
                              v24 = v74;
                              v29 = v75;
                              goto LABEL_29;
                            }

                            BaseAddress = CVPixelBufferGetBaseAddress(v70);
                            if (!BaseAddress)
                            {
                              sub_23ED4811C();
                              swift_allocError();
                              *v52 = 4;
                              swift_willThrow();
                              v53 = v70;
                              CVPixelBufferUnlockBaseAddress(v70, 0);

                              goto LABEL_28;
                            }

                            v44 = (v26 * 3) >> 64;
                            v15 = 3 * v26;
                            if (v44 == v15 >> 63)
                            {
                              if (!v15)
                              {
LABEL_53:
                                CVPixelBufferUnlockBaseAddress(v70, 0);
                                objc_autoreleasePoolPop(v72);

                                MEMORY[0x28223BE20](v63);
                                sub_23ED5EB44();

                                if (v13)
                                {
                                }

                                else
                                {
                                  v64 = v78;
                                  v65 = v77;
                                  *v78 = v69;
                                  v64[1] = v65;
                                  v66 = v70;
                                  v64[2] = v71;
                                  v64[3] = v66;
                                  v67 = v68;
                                  v64[4] = v14;
                                  v64[5] = v67;
                                }

                                return;
                              }

                              v16 = BaseAddress;
                              if (qword_27E3853B8 == -1)
                              {
                                if (v15 >= 1)
                                {
                                  goto LABEL_37;
                                }

                                goto LABEL_70;
                              }

LABEL_69:
                              swift_once();
                              if (v15 >= 1)
                              {
LABEL_37:
                                _S0 = dword_27E385880;
                                __asm { FCVT            H0, S0 }

                                if (v15 < 4)
                                {
                                  v51 = 0;
LABEL_50:
                                  v61 = v51 - v15;
                                  v62 = &v16->i16[v51];
                                  do
                                  {
                                    *v62 = (*v62 + COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(-0.5))) * _H0;
                                    ++v62;
                                  }

                                  while (!__CFADD__(v61++, 1));
                                  goto LABEL_53;
                                }

                                if (v15 >= 0x10)
                                {
                                  v51 = v15 & 0x7FFFFFFFFFFFFFF0;
                                  v54 = v16 + 1;
                                  v55.i64[0] = 0xB800B800B800B800;
                                  v55.i64[1] = 0xB800B800B800B800;
                                  v56 = v15 & 0x7FFFFFFFFFFFFFF0;
                                  do
                                  {
                                    v57 = vmulq_n_f16(vaddq_f16(*v54, v55), _H0);
                                    v54[-1] = vmulq_n_f16(vaddq_f16(v54[-1], v55), _H0);
                                    *v54 = v57;
                                    v54 += 2;
                                    v56 -= 16;
                                  }

                                  while (v56);
                                  if (v15 == v51)
                                  {
                                    goto LABEL_53;
                                  }

                                  if ((v15 & 0xC) == 0)
                                  {
                                    goto LABEL_50;
                                  }
                                }

                                else
                                {
                                  v51 = 0;
                                }

                                v58 = v51;
                                v51 = v15 & 0x7FFFFFFFFFFFFFFCLL;
                                v59 = (v16 + 2 * v58);
                                v60 = v58 - (v15 & 0x7FFFFFFFFFFFFFFCLL);
                                do
                                {
                                  *v59 = vmul_n_f16(vadd_f16(*v59, 0xB800B800B800B800), _H0);
                                  ++v59;
                                  v60 += 4;
                                }

                                while (v60);
                                if (v15 == v51)
                                {
                                  goto LABEL_53;
                                }

                                goto LABEL_50;
                              }

LABEL_70:
                              __break(1u);
                              return;
                            }

LABEL_68:
                            __break(1u);
                            goto LABEL_69;
                          }

LABEL_67:
                          __break(1u);
                          goto LABEL_68;
                        }

LABEL_66:
                        __break(1u);
                        goto LABEL_67;
                      }

LABEL_65:
                      __break(1u);
                      goto LABEL_66;
                    }

LABEL_64:
                    __break(1u);
                    goto LABEL_65;
                  }

LABEL_63:
                  __break(1u);
                  goto LABEL_64;
                }

LABEL_62:
                __break(1u);
                goto LABEL_63;
              }

LABEL_61:
              __break(1u);
              goto LABEL_62;
            }

LABEL_60:
            __break(1u);
            goto LABEL_61;
          }

LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

LABEL_58:
        __break(1u);
        goto LABEL_59;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_58;
  }
}

id sub_23ED5BEA8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6567616D69 && a2 == 0xE500000000000000 || (sub_23ED5EE04() & 1) != 0)
  {
    v5 = 16;
    return [objc_opt_self() featureValueWithMultiArray_];
  }

  if (a1 == 0x6E654C6C61636F66 && a2 == 0xED00007850687467 || (sub_23ED5EE04() & 1) != 0)
  {
    v5 = 24;
    return [objc_opt_self() featureValueWithMultiArray_];
  }

  return 0;
}

uint64_t sub_23ED5BFF8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_23ED5C148()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_23ED5C1AC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_23ED5E804();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = [objc_allocWithZone(MEMORY[0x277CBFF38]) initWithComputeUnits_];
  v9 = sub_23ED5E9B4();
  [v8 setE5rtCustomANECompilerOptions_];

  type metadata accessor for ManagedMLModel(0);
  swift_allocObject();
  v10 = sub_23ED4F488(v7, v8, "Joint Predictor", 15, 2);
  (*(v5 + 8))(a1, v4);
  *(v2 + 16) = v10;
  return v2;
}

uint64_t sub_23ED5C344(__CVBuffer *a1, float a2, float a3)
{
  v7 = sub_23ED52CE0(a1, 0x600, 1536);
  if (!v4)
  {
    v9 = v7;
    v8.i32[0] = 1.0;
    v10 = sub_23ED4ED64(0, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E385698, &unk_23ED61520);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_23ED612A0;
    sub_23ED47FF8();
    *(v11 + 32) = sub_23ED5EB84();
    *(v11 + 40) = sub_23ED5EB84();
    objc_allocWithZone(MEMORY[0x277CBFF48]);
    v13 = sub_23ED4F300(v11, 65568);
    v14 = objc_allocWithZone(MEMORY[0x277CCABB0]);
    *&v15 = a2;
    v16 = [v14 initWithFloat_];
    [v13 setObject:v16 atIndexedSubscript:0];

    v17 = objc_allocWithZone(MEMORY[0x277CCABB0]);
    *&v18 = a3;
    v19 = [v17 initWithFloat_];
    [v13 setObject:v19 atIndexedSubscript:1];

    sub_23ED5C500(v10, v13);
    v3 = v20;
  }

  return v3;
}

void sub_23ED5C500(void *a1, void *a2)
{
  v4 = a1;
  if (qword_27E385390 != -1)
  {
    a1 = swift_once();
  }

  MEMORY[0x28223BE20](a1);
  sub_23ED5EB44();
  if (!v2)
  {
    v5 = [v4 shape];
    sub_23ED47FF8();
    v6 = sub_23ED5EA54();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E385698, &unk_23ED61520);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_23ED607A0;
    *(v7 + 32) = sub_23ED5EAB4();
    *(v7 + 40) = sub_23ED5EAB4();
    *(v7 + 48) = sub_23ED5EAB4();
    *(v7 + 56) = sub_23ED5EAB4();
    v8 = sub_23ED5E3DC(v6, v7);

    if (v8)
    {
      v9 = [a2 shape];
      v10 = sub_23ED5EA54();

      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_23ED612A0;
      *(v11 + 32) = sub_23ED5EB84();
      *(v11 + 40) = sub_23ED5EB84();
      v12 = sub_23ED5E3DC(v10, v11);

      if (v12)
      {
        v14 = MEMORY[0x23EF224F0](v13);
        sub_23ED51DBC(v4, &v43);
        objc_autoreleasePoolPop(v14);
        v15 = v43;
        if (v43)
        {
          v16 = MEMORY[0x23EF224F0]();
          sub_23ED51DBC(a2, &v43);
          objc_autoreleasePoolPop(v16);
          v17 = v43;
          if (v43)
          {
            type metadata accessor for JointPredictorInput();
            v18 = swift_allocObject();
            *(v18 + 16) = v15;
            *(v18 + 24) = v17;
            v19 = v15;
            v20 = v17;
            sub_23ED5CE58(v18);

            MEMORY[0x28223BE20](v42);
            sub_23ED5EB44();
            return;
          }

          if (qword_27E385398 != -1)
          {
            swift_once();
          }

          v36 = sub_23ED5E964();
          __swift_project_value_buffer(v36, qword_27E3880E0);
          v37 = sub_23ED5E944();
          v38 = sub_23ED5EB04();
          if (os_log_type_enabled(v37, v38))
          {
            v39 = swift_slowAlloc();
            *v39 = 0;
            _os_log_impl(&dword_23ED44000, v37, v38, "Unable to cast focal length to fp16.", v39, 2u);
            MEMORY[0x23EF229A0](v39, -1, -1);
          }

          sub_23ED5D1A4();
          swift_allocError();
          *v40 = 1;
          swift_willThrow();

          MEMORY[0x28223BE20](v41);
        }

        else
        {
          if (qword_27E385398 != -1)
          {
            swift_once();
          }

          v30 = sub_23ED5E964();
          __swift_project_value_buffer(v30, qword_27E3880E0);
          v31 = sub_23ED5E944();
          v32 = sub_23ED5EB04();
          if (os_log_type_enabled(v31, v32))
          {
            v33 = swift_slowAlloc();
            *v33 = 0;
            _os_log_impl(&dword_23ED44000, v31, v32, "Unable to cast image to fp16.", v33, 2u);
            MEMORY[0x23EF229A0](v33, -1, -1);
          }

          sub_23ED5D1A4();
          swift_allocError();
          *v34 = 1;
          v35 = swift_willThrow();
          MEMORY[0x28223BE20](v35);
        }

        goto LABEL_29;
      }

      if (qword_27E385398 != -1)
      {
        swift_once();
      }

      v27 = sub_23ED5E964();
      __swift_project_value_buffer(v27, qword_27E3880E0);
      v22 = sub_23ED5E944();
      v28 = sub_23ED5EB04();
      if (os_log_type_enabled(v22, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_23ED44000, v22, v28, "Incompatible focal length shape.", v29, 2u);
        MEMORY[0x23EF229A0](v29, -1, -1);
      }
    }

    else
    {
      if (qword_27E385398 != -1)
      {
        swift_once();
      }

      v21 = sub_23ED5E964();
      __swift_project_value_buffer(v21, qword_27E3880E0);
      v22 = sub_23ED5E944();
      v23 = sub_23ED5EB04();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_23ED44000, v22, v23, "Incompatible image shape.", v24, 2u);
        MEMORY[0x23EF229A0](v24, -1, -1);
      }
    }

    sub_23ED5D1A4();
    swift_allocError();
    *v25 = 0;
    v26 = swift_willThrow();
    MEMORY[0x28223BE20](v26);
LABEL_29:
    sub_23ED5EB44();
  }
}

uint64_t sub_23ED5CE58(uint64_t a1)
{
  v8 = [objc_allocWithZone(MEMORY[0x277CBFF68]) init];
  v4 = *(*(v1 + 16) + OBJC_IVAR____TtC13AlchemistBase14ManagedMLModel_queue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E385888, &unk_23ED61380);
  sub_23ED5EB44();

  if (!v2)
  {
    v5 = *(a1 + 16);
    type metadata accessor for JointPredictorOutput();
    a1 = swift_allocObject();
    *(a1 + 16) = v9;
    *(a1 + 24) = v5;
    v6 = v5;
  }

  return a1;
}

id sub_23ED5CF6C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v9[0] = 0;
  v5 = [a1 predictionFromFeatures:a2 options:a3 error:v9];
  v6 = v9[0];
  if (v5)
  {
    *a4 = v5;
    return v6;
  }

  else
  {
    v8 = v9[0];
    sub_23ED5E754();

    return swift_willThrow();
  }
}

uint64_t sub_23ED5D028()
{

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy124_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_23ED5D0B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 124))
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

uint64_t sub_23ED5D0F8(uint64_t result, int a2, int a3)
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
    *(result + 120) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 124) = 1;
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

    *(result + 124) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_23ED5D1A4()
{
  result = qword_27E385890;
  if (!qword_27E385890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E385890);
  }

  return result;
}

__n128 __swift_memcpy16_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy20_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for InitializerParams(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for InitializerParams(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 20) = v3;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t _s13AlchemistBase22NetworkInputDimensionsVwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s13AlchemistBase22NetworkInputDimensionsVwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for FoVUtilities(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for FoVUtilities(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_23ED5D5A0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_23ED5D6E8()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_23ED5D744(char *a1)
{
  v2 = v1;
  v4 = sub_23ED5E804();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = [objc_allocWithZone(MEMORY[0x277CBFF38]) initWithComputeUnits_];
  type metadata accessor for ManagedMLModel(0);
  swift_allocObject();
  *(v2 + 16) = sub_23ED4F488(v7, v8, "FoV Predictor", 13, 2);
  sub_23ED5E7B4();
  v9 = sub_23ED5E794();
  v11 = v10;
  v12 = *(v5 + 8);
  v12(v7, v4);

  if (v9 == 0xD00000000000002FLL && 0x800000023ED62050 == v11)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_23ED5EE04();
  }

  *(v2 + 24) = v14 & 1;
  if (qword_27E385398 != -1)
  {
    swift_once();
  }

  v15 = sub_23ED5E964();
  __swift_project_value_buffer(v15, qword_27E3880E0);

  v16 = sub_23ED5E944();
  v17 = sub_23ED5EAE4();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v28 = v19;
    *v18 = 136315138;
    v20 = *(v2 + 24) == 0;
    if (*(v2 + 24))
    {
      v21 = 0x7461636572706544;
    }

    else
    {
      v21 = 7824718;
    }

    v27 = v12;
    v22 = a1;
    if (v20)
    {
      v23 = 0xE300000000000000;
    }

    else
    {
      v23 = 0xEA00000000006465;
    }

    v24 = sub_23ED4A8F8(v21, v23, &v28);

    *(v18 + 4) = v24;
    _os_log_impl(&dword_23ED44000, v16, v17, "Model to be loaded has been identified as %s version.\n  ", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x23EF229A0](v19, -1, -1);
    MEMORY[0x23EF229A0](v18, -1, -1);

    v27(v22, v4);
  }

  else
  {

    v12(a1, v4);
  }

  return v2;
}

__CVBuffer *sub_23ED5DAB8(__CVBuffer *a1)
{
  if (*(v1 + 24))
  {
    v3 = 256;
  }

  else
  {
    v3 = 1536;
  }

  v4 = sub_23ED52CE0(a1, v3, v3);
  if (!v2)
  {
    v5 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E385698, &unk_23ED61520);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_23ED612A0;
    sub_23ED47FF8();
    *(v6 + 32) = sub_23ED5EB84();
    *(v6 + 40) = sub_23ED5EB84();
    v7 = objc_allocWithZone(MEMORY[0x277CBFF48]);
    v8 = sub_23ED4F300(v6, 65552);
    v1 = sub_23ED5DBCC(v5, v8);
  }

  return v1;
}

__CVBuffer *sub_23ED5DBCC(__CVBuffer *a1, void *a2)
{
  v5 = a1;
  if (qword_27E385390 != -1)
  {
    a1 = swift_once();
  }

  MEMORY[0x28223BE20](a1);
  sub_23ED5EB44();
  if (!v3)
  {
    if (*(v2 + 24))
    {
      v6 = 256;
    }

    else
    {
      v6 = 1536;
    }

    Width = CVPixelBufferGetWidth(v5);
    Height = CVPixelBufferGetHeight(v5);
    PixelFormatType = CVPixelBufferGetPixelFormatType(v5);
    if (Width == v6 && Height == v6 && PixelFormatType == 1111970369)
    {
      v10 = [a2 shape];
      sub_23ED47FF8();
      v11 = sub_23ED5EA54();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E385698, &unk_23ED61520);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_23ED612A0;
      *(v12 + 32) = sub_23ED5EB84();
      *(v12 + 40) = sub_23ED5EB84();
      v13 = sub_23ED5E3DC(v11, v12);

      if (v13)
      {
        v14.i32[0] = 1.0;
        v23 = sub_23ED4ED64(0, v14);
        type metadata accessor for FoVPredictorInput();
        *(swift_allocObject() + 16) = v23;
        v24 = objc_allocWithZone(MEMORY[0x277CBFF68]);
        v25 = v23;
        v26 = [v24 init];
        v31[1] = v31;
        v30 = MEMORY[0x28223BE20](v26);
        MEMORY[0x28223BE20](v30);
        v28 = v27;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E385888, &unk_23ED61380);
        sub_23ED5EB44();

        v29 = v31[3];
        type metadata accessor for FoVPredictorOutput();
        v5 = swift_allocObject();
        *(v5 + 2) = v29;
        MEMORY[0x28223BE20](v5);
        sub_23ED5EB44();
        return v5;
      }

      if (qword_27E385398 != -1)
      {
        swift_once();
      }

      v18 = sub_23ED5E964();
      __swift_project_value_buffer(v18, qword_27E3880E0);
      v16 = sub_23ED5E944();
      v19 = sub_23ED5EB04();
      if (os_log_type_enabled(v16, v19))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        _os_log_impl(&dword_23ED44000, v16, v19, "Incompatible principal shape.", v5, 2u);
        MEMORY[0x23EF229A0](v5, -1, -1);
      }
    }

    else
    {
      if (qword_27E385398 != -1)
      {
        swift_once();
      }

      v15 = sub_23ED5E964();
      __swift_project_value_buffer(v15, qword_27E3880E0);
      v16 = sub_23ED5E944();
      v17 = sub_23ED5EB04();
      if (os_log_type_enabled(v16, v17))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        _os_log_impl(&dword_23ED44000, v16, v17, "Incompatible image shape.", v5, 2u);
        MEMORY[0x23EF229A0](v5, -1, -1);
      }
    }

    sub_23ED5D1A4();
    swift_allocError();
    *v20 = 0;
    v21 = swift_willThrow();
    MEMORY[0x28223BE20](v21);
    sub_23ED5EB44();
  }

  return v5;
}

uint64_t sub_23ED5E380()
{

  return swift_deallocClassInstance();
}

uint64_t sub_23ED5E3DC(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_23ED47FF8();
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x23EF21FF0](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x23EF21FF0](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_23ED5EB94();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_23ED5EB94();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_23ED5ECD4();
  }

  result = sub_23ED5ECD4();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

void sub_23ED5E61C(uint64_t a1@<X0>, void (*a2)(uint64_t *__return_ptr)@<X1>, void *a3@<X8>)
{
  v7 = MEMORY[0x23EF224F0]();
  sub_23ED4FFC8();
  if (v3)
  {
    objc_autoreleasePoolPop(v7);
  }

  else
  {
    v8 = *(a1 + OBJC_IVAR____TtC13AlchemistBase14ManagedMLModel_loadedModel);
    if (v8)
    {
      v9 = v8;
      a2(&v11);

      v10 = v11;
      objc_autoreleasePoolPop(v7);
      *a3 = v10;
    }

    else
    {
      __break(1u);
    }
  }
}