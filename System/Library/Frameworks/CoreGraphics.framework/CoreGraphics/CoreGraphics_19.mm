unint64_t sub_183F73434()
{
  result = qword_1EA853F18;
  if (!qword_1EA853F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA853F18);
  }

  return result;
}

uint64_t sub_183F73488(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA854818, &qword_18439A690);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for Direction(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Direction(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_183F73668()
{
  if (*v0)
  {
    return 121;
  }

  else
  {
    return 120;
  }
}

uint64_t Region.init(from:)@<X0>(void *a1@<X0>, int64x2_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA854820, &qword_18439A698);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19.i8[-v7];
  v9 = MEMORY[0x1E69E7CC0];
  v33 = vdupq_n_s64(0x7FF8000000000000uLL);
  v34 = v33;
  v22 = v33;
  v35.i64[0] = MEMORY[0x1E69E7CC0];
  v35.i64[1] = MEMORY[0x1E69E7CC0];
  v36 = MEMORY[0x1E69E7CC0];
  v10 = a1[3];
  v23 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v10);
  sub_1843903A8();
  if (v2)
  {
  }

  else
  {
    v21 = a2;
    __swift_project_boxed_opaque_existential_0(v31, v32);
    if (sub_1843901E8())
    {
      v20 = vdupq_n_s64(v9);
      v19 = v22;
LABEL_5:
      __swift_destroy_boxed_opaque_existential_0(v31);
      v11 = v21;
      v12 = v19;
      *v21 = v22;
      v11[1] = v12;
      v11[2] = v20;
      v11[3].i64[0] = v9;
    }

    else
    {
      v13 = (v6 + 8);
      while (1)
      {
        __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
        sub_183F73B2C();
        sub_1843901C8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA854818, &qword_18439A690);
        v37 = 0;
        sub_183F73488(&qword_1EA853EA0, sub_183F3FEF4, MEMORY[0x1E69E66E0]);
        sub_184390188();
        v14 = v24;
        v15 = v25;
        if (v24 >= v25)
        {

          LOBYTE(v24) = 0;
          goto LABEL_13;
        }

        v37 = 1;
        sub_184390188();
        v16 = v24;
        v17 = v25;
        if (v24 >= v25)
        {
          break;
        }

        v24 = v14;
        v25 = v15;
        v26 = v16;
        v27 = v17;
        v28 = v9;
        v29 = v9;
        v30 = v9;
        Region.formUnion(_:)(&v24);

        (*v13)(v8, v5);
        __swift_project_boxed_opaque_existential_0(v31, v32);
        if (sub_1843901E8())
        {
          v19 = v34;
          v22 = v33;
          v20 = v35;
          v9 = v36;
          goto LABEL_5;
        }
      }

      LOBYTE(v24) = 1;
LABEL_13:
      sub_1843900C8();
      swift_allocError();
      sub_183FAFFE0();
      sub_1843900B8();
      swift_willThrow();
      (*v13)(v8, v5);
      __swift_destroy_boxed_opaque_existential_0(v31);
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v23);
}

unint64_t sub_183F73B2C()
{
  result = qword_1EA853ED8;
  if (!qword_1EA853ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA853ED8);
  }

  return result;
}

uint64_t _s12CoreGraphics6RegionV2eeoiySbAC_ACtFZ_0(float64x2_t *a1, uint64_t a2)
{
  v4 = *&a1[2].f64[0];
  v6 = *&a1[2].f64[1];
  v5 = *&a1[3].f64[0];
  v7 = *(a2 + 32);
  v9 = *(a2 + 40);
  v8 = *(a2 + 48);
  v10 = *a2;
  v11 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(a1[1], *(a2 + 16)))));
  v12 = a1->f64[0];
  v13 = *&v12 & 0x7FF0000000000000;
  if ((v11 & 1) == 0)
  {
    if (v13 != 0x7FF0000000000000 || (*&v12 & 0xFFFFFFFFFFFFFLL) == 0)
    {
      return 0;
    }

    if ((~*&v10.f64[0] & 0x7FF0000000000000) != 0 || (*&v10.f64[0] & 0xFFFFFFFFFFFFFLL) == 0)
    {
      return 0;
    }

    goto LABEL_21;
  }

  v16 = *&v12 & 0xFFFFFFFFFFFFFLL;
  if (v13 == 0x7FF0000000000000 && v16 != 0)
  {
LABEL_21:
    if ((~*&v10.f64[0] & 0x7FF0000000000000) == 0 && (*&v10.f64[0] & 0xFFFFFFFFFFFFFLL) != 0)
    {
      goto LABEL_29;
    }

    v19 = 0;
    goto LABEL_27;
  }

  v18 = *(v4 + 16);
  v19 = v18 == 0;
  if ((~*&v10.f64[0] & 0x7FF0000000000000) != 0 || (*&v10.f64[0] & 0xFFFFFFFFFFFFFLL) == 0)
  {
LABEL_27:
    v21 = *(v7 + 16);
    v18 = v19 ^ (v21 == 0) ^ 1u;
    if (v19 || !v21)
    {
      return v18;
    }

    goto LABEL_29;
  }

  if (!v18)
  {
    return v18;
  }

LABEL_29:
  if ((sub_183F93AF4(v4, v7) & 1) == 0 || (sub_183F93B50(v6, v9) & 1) == 0)
  {
    return 0;
  }

  return sub_183F93AF4(v5, v8);
}

_DWORD *sub_183F73CF8@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_183F73DF4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_183F73E4C()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

void sub_183F73FF0(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 256;
}

uint64_t sub_183F74050()
{
  result = *(v0 + 8);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_183F7412C()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 64) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_183F742A0(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_183F742B0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

id sub_183F74374@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(*a1 + 48);
  *a2 = v2;
  return v2;
}

uint64_t sub_183F77380(uint64_t a1)
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

uint64_t sub_183F7741C()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));
  v1 = *(*v0 + 96);
  v2 = *(v0 + v1);
  *(v0 + v1) = 0;

  if (v2)
  {
    do
    {

      if (!swift_isUniquelyReferenced_native())
      {
        break;
      }

      v3 = *(v2 + *(*v2 + 96));
      swift_retain_n();

      v2 = v3;
    }

    while (v3);
  }

  return v0;
}

uint64_t sub_183F77514()
{
  sub_183F7741C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_183F7767C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_183F776C4(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy16_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_183F7774C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 16))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_183F777A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy20_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_183F77830(uint64_t a1, int a2)
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

uint64_t sub_183F77850(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_183F778C4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_183F778E4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
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

  *(result + 48) = v3;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_183F7793C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_183F7795C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for CGBitmapParameters(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 8))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for CGBitmapParameters(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t sub_183F77B10(uint64_t a1, uint64_t a2)
{
  sub_1843902E8();
  swift_getWitnessTable();
  sub_18438FBC8();
  return sub_184390348();
}

uint64_t sub_183F77B78()
{
  sub_1843902E8();
  sub_184390318();
  return sub_184390348();
}

uint64_t sub_183F77BC0()
{
  sub_1843902E8();
  sub_184390318();
  return sub_184390348();
}

uint64_t sub_183F77C04(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_18438FBB8();
}

uint64_t sub_183F77D00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_183F77E08(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 16))
  {
    return (*a1 + 2);
  }

  if (*(a1 + 8))
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_183F77E4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
    }
  }

  return result;
}

uint64_t sub_183F77F0C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 < a3 || (a3 | result) < 0 || a5 < result)
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - result;
  if (a2 >= 1)
  {
    if (v5 < 0 || v5 >= a2)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (v5 <= 0 && v5 > a2)
  {
    return 0;
  }

LABEL_11:
  v6 = __OFADD__(result, a2);
  result += a2;
  if (v6)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (result < 0 || result > a5)
  {
    goto LABEL_17;
  }

  return result;
}

uint64_t sub_183F77F84(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 24);
  v5 = __OFSUB__(v4, 1);
  v6 = v4 - 1;
  if (v5)
  {
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (result < 0 || v6 < result)
  {
    goto LABEL_18;
  }

  if (a3 < 0 || v6 < a3)
  {
    goto LABEL_19;
  }

  v7 = a3 - result;
  if (a2 >= 1)
  {
    if (v7 < 0 || v7 >= a2)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (v7 <= 0 && v7 > a2)
  {
    return 0;
  }

LABEL_13:
  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return result;
  }

  if (result < 0 || v6 < result)
  {
    goto LABEL_21;
  }

  return result;
}

uint64_t sub_183F78010(uint64_t a1, uint64_t a2, uint64_t a3, CGPDFArrayRef array)
{
  result = CGPDFArrayGetCount(array);
  if (a1 < 0 || result < a1)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  result = CGPDFArrayGetCount(array);
  if (a3 < 0 || result < a3)
  {
    goto LABEL_17;
  }

  v9 = a3 - a1;
  if (a2 >= 1)
  {
    if (v9 < 0 || v9 >= a2)
    {
      goto LABEL_12;
    }

    return 0;
  }

  if (v9 <= 0 && v9 > a2)
  {
    return 0;
  }

LABEL_12:
  v11 = __OFADD__(a1, a2);
  v10 = a1 + a2;
  if (v11)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = CGPDFArrayGetCount(array);
  if ((v10 & 0x8000000000000000) == 0 && result >= v10)
  {
    return v10;
  }

LABEL_19:
  __break(1u);
  return result;
}

void *sub_183F780D8(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (!a2)
  {
    v7 = 0;
    goto LABEL_16;
  }

  if (!a3)
  {
LABEL_15:
    v7 = a3;
    goto LABEL_16;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    if (a6 <= 0x100000000)
    {
      v6 = 0x100000000 - a6;
    }

    else
    {
      v6 = 0;
    }

    v7 = a5;
    if (a5)
    {
      v8 = 0;
      while ((a6 & 0x8000000000000000) == 0)
      {
        if (v6 == v8)
        {
          goto LABEL_18;
        }

        *a2 = *(a4 + 8 * v8);
        *(a2 + 8) = a6 + v8;
        if (a3 - 1 == v8)
        {
          goto LABEL_15;
        }

        a2 += 16;
        if (a5 == ++v8)
        {
          v7 = a5;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

LABEL_16:
    *result = a4;
    result[1] = a5;
    result[2] = a6;
    result[3] = v7;
    return v7;
  }

LABEL_19:
  __break(1u);
  return result;
}

double Region.init<A, B>(filling:rule:)@<D0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int64x2_t *a7@<X8>)
{
  v30 = a4;
  v31 = a6;
  v32 = a7;
  v11 = sub_1843900A8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v27[-v13];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA854228, &qword_184398300);
  sub_1843900E8();
  v29 = MEMORY[0x1E69E6CC8];
  swift_getWitnessTable();
  sub_184390128();
  swift_getWitnessTable();
  v15 = sub_1843900E8();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v27[-v16];
  v28 = *a2;
  MEMORY[0x1865EC6A0](a3, a5);
  v18 = swift_allocObject();
  v20 = v30;
  v19 = v31;
  v18[2] = a3;
  v18[3] = v20;
  v18[4] = a5;
  v18[5] = v19;
  swift_getWitnessTable();
  sub_184390168();

  (*(v12 + 8))(v14, v11);
  swift_getWitnessTable();
  if (v28)
  {
    v21 = 2;
  }

  else
  {
    v21 = 0;
  }

  sub_183F7B3E4(v17, v21, v15, v33);
  (*(*(a3 - 8) + 8))(a1, a3);
  v22 = v34;
  result = *v33[0].i64;
  v24 = v33[1];
  v25 = v33[2];
  v26 = v32;
  *v32 = v33[0];
  v26[1] = v24;
  v26[2] = v25;
  v26[3].i64[0] = v22;
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_183F78484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  result = sub_183F905AC(v8, a2, a3);
  *a4 = result;
  *(a4 + 8) = v11;
  return result;
}

uint64_t sub_183F78560@<X0>(char *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int64x2_t *a4@<X8>)
{
  v5 = a2;
  v176 = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E69E7CC0];
  v148[0] = MEMORY[0x1E69E7CC0];
  v9 = swift_allocObject();
  v9[2] = v8;
  v10 = swift_retain_n();
  sub_183F7C470(v10, v5, sub_183F7C464, 0);
  v87[3] = a1;
  sub_183F7C75C(a1);
  v11 = 0;
  sub_183F7EDB0(v148);
  sub_183F7CAB4();
  sub_183F7EC4C(v9 + 2);
  v12 = vdupq_n_s64(0x7FF8000000000000uLL);
  *a4 = v12;
  a4[1] = v12;
  a4[2].i64[0] = v8;
  v95 = a4 + 2;
  a4[2].i64[1] = v8;
  v96 = &a4[2].i8[8];
  a4[3].i64[0] = v8;
  v94 = a4 + 3;
  v105 = v148[0];
  v106 = (v9 + 2);
  v13 = *(v148[0] + 2);
  v14 = *(v9[2] + 2);
  v149[2] = v148;
  v15 = v9;
  v149[3] = v9;
  v104 = a3;
  v150 = a3;
  v92 = a4;
  v16 = sub_183FA5A00();
  v17 = v13 * v14;
  if ((v13 * v14) >> 64 != (v13 * v14) >> 63)
  {
    goto LABEL_93;
  }

  if (v13 >> 60)
  {
    goto LABEL_107;
  }

  a4 = &v156;
  v9 = &v140;
  v14 = *v96;
  v93 = *(*v96 + 16);
  if ((8 * v13) >= 1025)
  {
    goto LABEL_94;
  }

  do
  {
    v87[2] = v87;
    isStackAllocationSafe = MEMORY[0x1EEE9AC00](v16);
    v99 = v87 - v19;
    if (v13 >= 0x101)
    {
      isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
      if ((isStackAllocationSafe & 1) == 0)
      {
        v80 = v93 == 0;
        v81 = swift_slowAlloc();
        HIBYTE(v86) = v80;
        LOBYTE(v86) = 1;
        sub_183FA7660(v81, v13, v17, v99, v13, v92, 0, 0, v149, sub_183F8158C, v149, v17, v86, 0, 0, 0, 0);
        MEMORY[0x1865EFCB0](v81, -1, -1);
        if (!v11)
        {
          goto LABEL_79;
        }

        v82 = v11;
        goto LABEL_103;
      }
    }

    v87[1] = v87;
    v20 = MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v98 = (v87 - v21);
    if ((v17 & 0x8000000000000000) != 0)
    {
      goto LABEL_108;
    }

    if (v17 >> 60)
    {
LABEL_109:
      __break(1u);
      goto LABEL_110;
    }

    if ((8 * v17) >= 1025)
    {
      v20 = swift_stdlib_isStackAllocationSafe();
      if ((v20 & 1) == 0)
      {
        v83 = v93 == 0;
        v84 = swift_slowAlloc();
        HIBYTE(v85) = v83;
        LOBYTE(v85) = 1;
        sub_183FA88BC(v84, v17, v99, v13, v98, v13, v92, 0, 0, sub_183F8158C, v149, v17, v85, 0, 0, 0, 0);
        MEMORY[0x1865EFCB0](v84, -1, -1);
        if (!v11)
        {
          goto LABEL_79;
        }

        v82 = v11;
        swift_willThrow();
LABEL_103:
        swift_willThrow();

        __break(1u);
        goto LABEL_104;
      }
    }

    v87[0] = v87;
    MEMORY[0x1EEE9AC00](v20);
    v100 = v87 - v22;
    v87[4] = v87;
    v23 = v94->i64[0];
    v24 = v95->i64[0];
    v25 = v105;
    v13 = *(v105 + 2);
    swift_retain_n();
    v90 = v24;

    v89 = v14;

    v91 = v15;

    swift_beginAccess();
    v103 = v13;
    v88 = v23;
    if (!v13)
    {
      v14 = 0;
      goto LABEL_42;
    }

    v13 = 0;
    v14 = 0;
    v11 = 0;
    v15 = (v23 + 32);
    v26 = 0;
    v101 = v17;
    v102 = v25 + 32;
    v97 = v17 - 1;
    while (1)
    {
      v107 = v15;
      v108 = v11;
      v15 = &v100[8 * v14];
      v114 = v17 - v14;
      v117 = (v97 - v14);
      v109 = v14;
      v110 = v13;
      while (1)
      {
        if (v26 >= *(v25 + 2))
        {
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
          goto LABEL_89;
        }

        v27 = *&v102[8 * v26];
        v28 = *v106;
        v29 = swift_allocObject();
        *(v29 + 16) = v27;
        v30 = swift_allocObject();
        *(v30 + 16) = v104;
        *&v120 = v28;
        *(&v120 + 1) = sub_183F81590;
        *&v121 = v29;
        *(&v121 + 1) = sub_183F7C464;
        *&v122 = 0;
        *(&v122 + 1) = 0x7FF8000000000000;
        v123 = 0u;
        v124 = 0u;
        *&v125 = sub_183F81594;
        *(&v125 + 1) = v30;
        *(v9 + 23) = v122;
        *(v9 + 24) = 0u;
        v31 = v125;
        *(v9 + 25) = v124;
        *(v9 + 26) = v31;
        v32 = v121;
        *(v9 + 21) = v120;
        *(v9 + 22) = v32;
        v126[0] = v28;
        v126[1] = sub_183F81590;
        v126[2] = v29;
        v126[3] = sub_183F7C464;
        v126[4] = 0;
        v126[5] = 0x7FF8000000000000;
        v127 = 0u;
        v128 = 0u;
        v129 = sub_183F81594;
        v130 = v30;

        v11 = &qword_1843984F8;
        sub_183F81520(&v120, v151, &qword_1EA854270, &qword_1843984F8);
        sub_183F814B4(v126, &qword_1EA854270, &qword_1843984F8);
        v131 = v27;
        v33 = *(v9 + 24);
        v134 = *(v9 + 23);
        v135 = v33;
        v34 = *(v9 + 26);
        v136 = *(v9 + 25);
        v137 = v34;
        v35 = *(v9 + 22);
        v132 = *(v9 + 21);
        v133 = v35;
        v138 = sub_183FB65DC;
        v139 = 0;
        if (v17 < v14)
        {
          goto LABEL_86;
        }

        v113 = v26;
        v115 = *(&v137 + 1);
        v116 = v137;
        v36 = v133;
        *v9 = v132;
        *(v9 + 1) = v36;
        v37 = v135;
        *(v9 + 2) = v134;
        *(v9 + 3) = v37;
        *(v9 + 4) = v136;
        v38 = v140;
        v39 = v141;
        v40 = v142;
        v41 = v144;
        v148[1] = v140;
        v148[2] = v141;
        v148[3] = v142;
        v112 = v143;
        v148[4] = v143;
        v148[5] = v144;
        sub_183F81520(&v131, v151, &qword_1EA854278, &qword_184398500);
        v42 = *(v38 + 2);

        v111 = v41;

        v44 = 0;
        if (v42)
        {
          v45 = v38 + 48;
          while (1)
          {
            v46 = *v45;
            v151[0] = *(v45 - 1);
            *&v151[1] = v46;
            if ((v39)(v151))
            {
              break;
            }

            ++v44;
            v45 += 3;
            if (v42 == v44)
            {
              v44 = v42;
              break;
            }
          }
        }

        v47 = sub_183F7DDD8(v44, v43);
        v49 = v48;
        v51 = v50;
        v53 = v52;
        sub_183F814B4(&v140, &qword_1EA854280, &qword_184399E60);
        v118 = v49 & 1;
        *&v156 = v38;
        *(&v156 + 1) = v39;
        *&v157 = v40;
        *(&v157 + 1) = v112;
        *&v158 = v111;
        *(&v158 + 1) = v47;
        LOBYTE(v159) = v49 & 1;
        *(&v159 + 1) = v51;
        *&v160 = v53;
        *(&v160 + 1) = v145;
        v9 = &v140;
        v161 = v146;
        v162 = v147;
        v54 = v113;
        v11 = v114;
        v163 = v116;
        v164 = v115;
        v14 = v109;
        v13 = v110;
        v17 = v101;
        a4 = &v172;
        if (v114)
        {
          if (v114 < 1)
          {
            __break(1u);
            goto LABEL_54;
          }

          sub_183F80564(&v172);
          if (v175)
          {
            v11 = 0;
          }

          else
          {
            v11 = 0;
            while (1)
            {
              *&v151[0] = v172;
              *(v151 + 8) = v173;
              *(&v151[1] + 8) = v174;
              sub_183FB65DC(v151, &v119);
              v15[v11] = v119;
              if (v117 == v11)
              {
                break;
              }

              sub_183F80564(&v172);
              ++v11;
              if (v175)
              {
                goto LABEL_28;
              }
            }

            v11 = v114;
          }
        }

LABEL_28:
        v26 = v54 + 1;
        v169 = v160;
        v170 = v161;
        v171 = v162;
        v165 = v156;
        v166 = v157;
        v167 = v158;
        v168 = v159;
        a4 = &v156;
        v151[4] = v160;
        v151[5] = v161;
        v151[6] = v162;
        v151[0] = v156;
        v151[1] = v157;
        v151[2] = v158;
        v151[3] = v159;
        v152 = v116;
        v153 = v115;
        v154 = sub_183FB65DC;
        v155 = 0;
        sub_183F814B4(v151, &qword_1EA854288, &qword_184398508);
        v25 = v105;
        if (v108 != v11)
        {
          goto LABEL_35;
        }

        if (v108)
        {
          break;
        }

LABEL_11:
        sub_183F814B4(&v131, &qword_1EA854278, &qword_184398500);
        if (v26 == v103)
        {
          goto LABEL_42;
        }
      }

      v55 = 0;
      while (*&v107[v55] == *&v15[v55])
      {
        if (v108 == ++v55)
        {
          goto LABEL_11;
        }
      }

      v11 = v108;
LABEL_35:
      v56 = __OFADD__(v14, v11);
      v14 += v11;
      if (v56)
      {
        break;
      }

      *&v99[8 * v13] = v131;
      if (v14 < 0)
      {
        goto LABEL_90;
      }

      if (HIDWORD(v14))
      {
        goto LABEL_91;
      }

      v98[v13] = v14;
      sub_183F814B4(&v131, &qword_1EA854278, &qword_184398500);
      v56 = __OFADD__(v13++, 1);
      if (v56)
      {
        goto LABEL_92;
      }

      if (v26 == v103)
      {
LABEL_42:
        v17 = v88;

        v11 = v90;

        v15 = v91;

        if (v93)
        {
          sub_183F7DCD4(0, 0, v100, v14, sub_183F7FF74, sub_183F800B4);
          if ((v13 & 0x8000000000000000) == 0)
          {
            sub_183F7DCD4(0, 0, v99, v13, sub_183F7FF74, sub_183F800B4);
            goto LABEL_45;
          }

LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
          goto LABEL_109;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          if (v14 <= *(v17 + 24) >> 1)
          {
            sub_183F7DCD4(0, 0, v100, v14, sub_183F7FF74, sub_183F800B4);
            if ((v13 & 0x8000000000000000) != 0)
            {
              goto LABEL_104;
            }

            v11 = v95->i64[0];
            goto LABEL_56;
          }

LABEL_52:
          v57 = sub_183EA76E4(v14, 0);
          memcpy(v57 + 4, v100, 8 * v14);
LABEL_55:

          v94->i64[0] = v57;
          if ((v13 & 0x8000000000000000) != 0)
          {
            goto LABEL_104;
          }

LABEL_56:
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            if (v13 <= *(v11 + 24) >> 1)
            {
              sub_183F7DCD4(0, 0, v99, v13, sub_183F7FF74, sub_183F800B4);
              goto LABEL_63;
            }

LABEL_60:
            v58 = sub_183EA76E4(v13, 0);
            memcpy(v58 + 4, v99, 8 * v13);
          }

          else
          {
            if (v13)
            {
              goto LABEL_60;
            }

            v58 = MEMORY[0x1E69E7CC0];
          }

          v95->i64[0] = v58;
LABEL_63:
          v59 = *v96;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            if (v13 > *(v59 + 24) >> 1)
            {
LABEL_67:
              v60 = sub_183F9BAB8(v13, 0);
              memcpy(v60 + 4, v98, 4 * v13);
              goto LABEL_69;
            }

LABEL_45:
            sub_183F7DCD4(0, 0, v98, v13, sub_183F7FF54, sub_183F7FFB4);
            if (!v14)
            {
LABEL_79:
              v64 = v95->i64[0];
              if (*(v95->i64[0] + 16))
              {
                v65 = v92;
                v66 = v92[2];
                v67 = v92[3];
                *(v9 + 21) = *v92;
                *&v157 = v66;
                *(&v157 + 1) = v67;
                *&v158 = v64;
                *(a4 + 40) = *(v65 + 5);
                sub_183FA5744();
                v70 = *(v64 + 16);
                if (!v70)
                {
                  goto LABEL_106;
                }

                v71 = v68;
                v72 = v69;
                v74 = *(v64 + 32);
                v73 = v64 + 32;
                v75 = v74;
                if (!v93)
                {
                  v67 = *(v73 + 8 * v70 - 8);
                }
              }

              else
              {
                v71 = 0x7FF8000000000000;
                v72 = 0x7FF8000000000000;
                v75 = 0x7FF8000000000000;
                v67 = 0x7FF8000000000000;
              }

              v76 = v92;
              *v92 = v71;
              v76[1] = v72;
              v76[2] = v75;
              v76[3] = v67;
              sub_183FA5EA0();
            }
          }

          else
          {
            if (v13)
            {
              goto LABEL_67;
            }

            v60 = MEMORY[0x1E69E7CC0];
LABEL_69:

            *v96 = v60;
            if (!v14)
            {
              goto LABEL_79;
            }
          }

          v61 = *v96;
          v11 = *(*v96 + 16);
          if (v11 < v13)
          {
            goto LABEL_105;
          }

          if (v13 == v11)
          {
            goto LABEL_79;
          }

          if (v13 < v11)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v61 = sub_183F9C14C(v61);
            }

            do
            {
              if (v13 >= *(v61 + 2))
              {
                goto LABEL_87;
              }

              v62 = &v61[4 * v13];
              v63 = v14 + *(v62 + 8);
              if (HIDWORD(v63))
              {
                goto LABEL_88;
              }

              ++v13;
              *(v62 + 8) = v63;
            }

            while (v11 != v13);
            *v96 = v61;
            goto LABEL_79;
          }

LABEL_110:
          __break(1u);
        }

        if (v14)
        {
          goto LABEL_52;
        }

LABEL_54:
        v57 = MEMORY[0x1E69E7CC0];
        goto LABEL_55;
      }
    }

LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    v16 = swift_stdlib_isStackAllocationSafe();
  }

  while ((v16 & 1) != 0);
  v78 = v93 == 0;
  v79 = swift_slowAlloc();
  sub_183FA60D0(v79, v13, v13, v17, v92, 0, 0, sub_183F8158C, v149, v149, v17, 1u, v78, 0, 0, 0, 0);
  if (!v11)
  {
    MEMORY[0x1865EFCB0](v79, -1, -1);
    goto LABEL_79;
  }

  result = MEMORY[0x1865EFCB0](v79, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_183F793C8@<X0>(uint64_t a1@<X0>, int a2@<W1>, int64x2_t *a3@<X8>)
{
  v120 = a2;
  v107 = a3;
  v188 = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E69E7CC0];
  v162[0] = MEMORY[0x1E69E7CC0];
  v7 = swift_allocObject();
  v110 = v7;
  *(v7 + 16) = v6;
  v8 = (v7 + 16);
  v9 = *(a1 + 16);
  v105 = a1;
  if (v9)
  {

    v10 = (a1 + 40);
    do
    {
      v11 = *(v10 - 1);
      v12 = *v10;
      v10 += 16;
      v13 = swift_retain_n();
      sub_183F7C470(v13, v12, sub_183F7C464, 0);
      sub_183F7C75C(v11);
      --v9;
    }

    while (v9);
  }

  v14 = v162;
  v15 = 0;
  sub_183F7EDB0(v162);
  sub_183F7CAB4();
  v16 = sub_183F7EC4C(v8);
  v100[4] = v100;
  v17 = vdupq_n_s64(0x7FF8000000000000uLL);
  v18 = v107;
  *v107 = v17;
  *(v18 + 1) = v17;
  v18[4] = v6;
  v108 = v18 + 4;
  v18[5] = v6;
  v109 = (v18 + 5);
  v18[6] = v6;
  v106 = (v18 + 6);
  v119 = v162[0];
  v19 = *(v162[0] + 2);
  v20 = *(*(v110 + 16) + 16);
  MEMORY[0x1EEE9AC00](v16);
  v21 = v98;
  v98[2] = v162;
  v98[3] = v22;
  v99 = v120;
  v23 = sub_183FA5A00();
  if ((v19 * v20) >> 64 != (v19 * v20) >> 63)
  {
    goto LABEL_97;
  }

  if (v19 >> 60)
  {
    goto LABEL_111;
  }

  v20 *= v19;
  v3 = &v168;
  v4 = &v154;
  v14 = *v109;
  v104 = *(*v109 + 16);
  if ((8 * v19) >= 1025)
  {
    goto LABEL_98;
  }

  do
  {
    v100[3] = v98;
    isStackAllocationSafe = MEMORY[0x1EEE9AC00](v23);
    v113 = v98 - v25;
    if (v19 >= 0x101)
    {
      isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
      if ((isStackAllocationSafe & 1) == 0)
      {
        v85 = v20;
        v86 = v104;
        v87 = v104 == 0;
        v88 = swift_slowAlloc();
        HIBYTE(v97) = v87;
        LOBYTE(v97) = 1;
        v95 = v21;
        v21 = v86;
        sub_183FA7660(v88, v19, v85, v113, v19, v107, 0, 0, 1uLL, sub_183F8158C, v95, v85, v97, 0, 0, 0, 0);
        MEMORY[0x1865EFCB0](v88, -1, -1);
        if (!v15)
        {
          goto LABEL_83;
        }

        v89 = v15;
        goto LABEL_107;
      }
    }

    v100[2] = v98;
    v26 = MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v112 = (v98 - v27);
    if (v20 < 0)
    {
      goto LABEL_112;
    }

    if (v20 >> 60)
    {
LABEL_113:
      __break(1u);
      goto LABEL_114;
    }

    if (8 * v20 >= 1025)
    {
      v26 = swift_stdlib_isStackAllocationSafe();
      if ((v26 & 1) == 0)
      {
        v90 = v20;
        v91 = v104;
        v92 = v104 == 0;
        v93 = swift_slowAlloc();
        HIBYTE(v96) = v92;
        LOBYTE(v96) = 1;
        v94 = v21;
        v21 = v91;
        sub_183FA88BC(v93, v90, v113, v19, v112, v19, v107, 0, 0, sub_183F8158C, v94, v90, v96, 0, 0, 0, 0);
        MEMORY[0x1865EFCB0](v93, -1, -1);
        if (!v15)
        {
          goto LABEL_83;
        }

        v89 = v15;
        swift_willThrow();
LABEL_107:
        swift_willThrow();

        __break(1u);
        goto LABEL_108;
      }
    }

    v100[1] = v98;
    MEMORY[0x1EEE9AC00](v26);
    v114 = v98 - v28;
    v100[5] = v98;
    v29 = *v106;
    v30 = *v108;
    v31 = v119;
    v19 = *(v119 + 2);
    swift_retain_n();
    v103 = v30;

    v102 = v14;

    swift_beginAccess();
    v118 = v19;
    v101 = v29;
    if (!v19)
    {
      v14 = 0;
      goto LABEL_46;
    }

    v19 = 0;
    v14 = 0;
    v15 = 0;
    v32 = 0;
    v21 = (v29 + 32);
    v116 = v8;
    v117 = v31 + 32;
    v111 = v20 - 1;
    v115 = v20;
    while (1)
    {
      v121 = v21;
      v122 = v15;
      v21 = &v114[8 * v14];
      v127 = v20 - v14;
      v131 = (v111 - v14);
      v123 = v14;
      v124 = v19;
      while (1)
      {
        if (v32 >= *(v31 + 2))
        {
          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
LABEL_92:
          __break(1u);
          goto LABEL_93;
        }

        v130 = v32;
        v33 = *&v117[8 * v32];
        v34 = *v8;
        v35 = swift_allocObject();
        *(v35 + 16) = v33;
        v36 = swift_allocObject();
        *(v36 + 16) = v120;
        *&v134 = v34;
        *(&v134 + 1) = sub_183F81590;
        *&v135 = v35;
        *(&v135 + 1) = sub_183F7C464;
        *&v136 = 0;
        *(&v136 + 1) = 0x7FF8000000000000;
        v137 = 0u;
        v138 = 0u;
        *&v139 = sub_183F81594;
        *(&v139 + 1) = v36;
        *(v4 + 20) = v136;
        *(v4 + 21) = 0u;
        v37 = v139;
        *(v4 + 22) = v138;
        *(v4 + 23) = v37;
        v38 = v135;
        *(v4 + 18) = v134;
        *(v4 + 19) = v38;
        v140[0] = v34;
        v140[1] = sub_183F81590;
        v140[2] = v35;
        v140[3] = sub_183F7C464;
        v140[4] = 0;
        v140[5] = 0x7FF8000000000000;
        v141 = 0u;
        v142 = 0u;
        v143 = sub_183F81594;
        v144 = v36;

        v15 = &qword_1843984F8;
        sub_183F81520(&v134, v163, &qword_1EA854270, &qword_1843984F8);
        sub_183F814B4(v140, &qword_1EA854270, &qword_1843984F8);
        v145 = v33;
        v39 = *(v4 + 21);
        v148 = *(v4 + 20);
        v149 = v39;
        v40 = *(v4 + 23);
        v150 = *(v4 + 22);
        v151 = v40;
        v41 = *(v4 + 19);
        v146 = *(v4 + 18);
        v147 = v41;
        v152 = sub_183FB65DC;
        v153 = 0;
        if (v20 < v14)
        {
          goto LABEL_90;
        }

        v128 = *(&v151 + 1);
        v129 = v151;
        v42 = v147;
        *v4 = v146;
        *(v4 + 1) = v42;
        v43 = v149;
        *(v4 + 2) = v148;
        *(v4 + 3) = v43;
        *(v4 + 4) = v150;
        v44 = v154;
        v45 = v155;
        v46 = v156;
        v47 = v158;
        v162[1] = v154;
        v162[2] = v155;
        v162[3] = v156;
        v126 = v157;
        v162[4] = v157;
        v162[5] = v158;
        sub_183F81520(&v145, v163, &qword_1EA854278, &qword_184398500);
        v48 = *(v44 + 2);

        v125 = v47;

        v50 = 0;
        if (v48)
        {
          v51 = v44 + 48;
          while (1)
          {
            v52 = *v51;
            v163[0] = *(v51 - 1);
            *&v163[1] = v52;
            if ((v45)(v163))
            {
              break;
            }

            ++v50;
            v51 += 3;
            if (v48 == v50)
            {
              v50 = v48;
              break;
            }
          }
        }

        v53 = sub_183F7DDD8(v50, v49);
        v55 = v54;
        v57 = v56;
        v59 = v58;
        sub_183F814B4(&v154, &qword_1EA854280, &qword_184399E60);
        v132 = v55 & 1;
        *&v168 = v44;
        *(&v168 + 1) = v45;
        *&v169 = v46;
        *(&v169 + 1) = v126;
        *&v170 = v125;
        *(&v170 + 1) = v53;
        LOBYTE(v171) = v55 & 1;
        *(&v171 + 1) = v57;
        *&v172 = v59;
        *(&v172 + 1) = v159;
        v4 = &v154;
        v173 = v160;
        v174 = v161;
        v15 = v127;
        v175 = v129;
        v176 = v128;
        v14 = v123;
        v19 = v124;
        v20 = v115;
        v8 = v116;
        v3 = &v184;
        if (v127)
        {
          if (v127 < 1)
          {
            __break(1u);
            goto LABEL_58;
          }

          sub_183F80564(&v184);
          if (v187)
          {
            v15 = 0;
          }

          else
          {
            v15 = 0;
            while (1)
            {
              *&v163[0] = v184;
              *(v163 + 8) = v185;
              *(&v163[1] + 8) = v186;
              sub_183FB65DC(v163, &v133);
              *&v21[8 * v15] = v133;
              if (v131 == v15)
              {
                break;
              }

              sub_183F80564(&v184);
              ++v15;
              if (v187)
              {
                goto LABEL_32;
              }
            }

            v15 = v127;
          }
        }

LABEL_32:
        ++v130;
        v181 = v172;
        v182 = v173;
        v183 = v174;
        v177 = v168;
        v178 = v169;
        v179 = v170;
        v180 = v171;
        v3 = &v168;
        v163[4] = v172;
        v163[5] = v173;
        v163[6] = v174;
        v163[0] = v168;
        v163[1] = v169;
        v163[2] = v170;
        v163[3] = v171;
        v164 = v129;
        v165 = v128;
        v166 = sub_183FB65DC;
        v167 = 0;
        sub_183F814B4(v163, &qword_1EA854288, &qword_184398508);
        v31 = v119;
        if (v122 != v15)
        {
          goto LABEL_39;
        }

        if (v122)
        {
          break;
        }

LABEL_15:
        sub_183F814B4(&v145, &qword_1EA854278, &qword_184398500);
        v32 = v130;
        if (v130 == v118)
        {
          goto LABEL_46;
        }
      }

      v60 = 0;
      while (*&v121[8 * v60] == *&v21[8 * v60])
      {
        if (v122 == ++v60)
        {
          goto LABEL_15;
        }
      }

      v15 = v122;
LABEL_39:
      v61 = __OFADD__(v14, v15);
      v14 += v15;
      if (v61)
      {
        break;
      }

      *&v113[8 * v19] = v145;
      if ((v14 & 0x8000000000000000) != 0)
      {
        goto LABEL_94;
      }

      if (HIDWORD(v14))
      {
        goto LABEL_95;
      }

      v112[v19] = v14;
      sub_183F814B4(&v145, &qword_1EA854278, &qword_184398500);
      v61 = __OFADD__(v19++, 1);
      if (v61)
      {
        goto LABEL_96;
      }

      v32 = v130;
      if (v130 == v118)
      {
LABEL_46:
        v20 = v101;

        v15 = v103;

        v21 = v104;
        if (v104)
        {
          sub_183F7DCD4(0, 0, v114, v14, sub_183F7FF74, sub_183F800B4);
          if ((v19 & 0x8000000000000000) == 0)
          {
            sub_183F7DCD4(0, 0, v113, v19, sub_183F7FF74, sub_183F800B4);
            goto LABEL_49;
          }

LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
          goto LABEL_113;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          if (v14 <= *(v20 + 24) >> 1)
          {
            sub_183F7DCD4(0, 0, v114, v14, sub_183F7FF74, sub_183F800B4);
            if ((v19 & 0x8000000000000000) != 0)
            {
              goto LABEL_108;
            }

            v15 = *v108;
            goto LABEL_60;
          }

LABEL_56:
          v62 = sub_183EA76E4(v14, 0);
          memcpy(v62 + 4, v114, 8 * v14);
LABEL_59:

          *v106 = v62;
          if ((v19 & 0x8000000000000000) != 0)
          {
            goto LABEL_108;
          }

LABEL_60:
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            if (v19 <= *(v15 + 24) >> 1)
            {
              sub_183F7DCD4(0, 0, v113, v19, sub_183F7FF74, sub_183F800B4);
              goto LABEL_67;
            }

LABEL_64:
            v63 = sub_183EA76E4(v19, 0);
            memcpy(v63 + 32, v113, 8 * v19);
          }

          else
          {
            if (v19)
            {
              goto LABEL_64;
            }

            v63 = MEMORY[0x1E69E7CC0];
          }

          *v108 = v63;
LABEL_67:
          v64 = *v109;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            if (v19 > *(v64 + 24) >> 1)
            {
LABEL_71:
              v65 = sub_183F9BAB8(v19, 0);
              memcpy(v65 + 4, v112, 4 * v19);
              goto LABEL_73;
            }

LABEL_49:
            sub_183F7DCD4(0, 0, v112, v19, sub_183F7FF54, sub_183F7FFB4);
            if (!v14)
            {
LABEL_83:
              v69 = *v108;
              if (*(*v108 + 2))
              {
                v70 = v107;
                v71 = v107[2];
                v72 = v107[3];
                *(v4 + 18) = *v107;
                *&v169 = v71;
                *(&v169 + 1) = v72;
                *&v170 = v69;
                *(v3 + 5) = *(v70 + 5);
                sub_183FA5744();
                v75 = *(v69 + 2);
                if (!v75)
                {
                  goto LABEL_110;
                }

                v76 = v73;
                v77 = v74;
                v79 = *(v69 + 4);
                v78 = v69 + 32;
                v80 = v79;
                if (!v21)
                {
                  v72 = *&v78[8 * v75 - 8];
                }
              }

              else
              {
                v76 = 0x7FF8000000000000;
                v77 = 0x7FF8000000000000;
                v80 = 0x7FF8000000000000;
                v72 = 0x7FF8000000000000;
              }

              v81 = v107;
              *v107 = v76;
              v81[1] = v77;
              v81[2] = v80;
              v81[3] = v72;
              sub_183FA5EA0();
            }
          }

          else
          {
            if (v19)
            {
              goto LABEL_71;
            }

            v65 = MEMORY[0x1E69E7CC0];
LABEL_73:

            *v109 = v65;
            if (!v14)
            {
              goto LABEL_83;
            }
          }

          v66 = *v109;
          v15 = *(*v109 + 16);
          if (v15 < v19)
          {
            goto LABEL_109;
          }

          if (v19 == v15)
          {
            goto LABEL_83;
          }

          if (v19 < v15)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v66 = sub_183F9C14C(v66);
            }

            do
            {
              if (v19 >= *(v66 + 2))
              {
                goto LABEL_91;
              }

              v67 = &v66[4 * v19];
              v68 = v14 + *(v67 + 8);
              if (HIDWORD(v68))
              {
                goto LABEL_92;
              }

              ++v19;
              *(v67 + 8) = v68;
            }

            while (v15 != v19);
            *v109 = v66;
            goto LABEL_83;
          }

LABEL_114:
          __break(1u);
        }

        if (v14)
        {
          goto LABEL_56;
        }

LABEL_58:
        v62 = MEMORY[0x1E69E7CC0];
        goto LABEL_59;
      }
    }

LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    v23 = swift_stdlib_isStackAllocationSafe();
  }

  while ((v23 & 1) != 0);
  v83 = v104 == 0;
  v84 = swift_slowAlloc();
  sub_183FA60D0(v84, v19, v19, v20, v107, 0, 0, sub_183F8158C, 1uLL, v21, v20, 1u, v83, 0, 0, 0, 0);
  if (!v15)
  {
    MEMORY[0x1865EFCB0](v84, -1, -1);
    v21 = v104;
    goto LABEL_83;
  }

  result = MEMORY[0x1865EFCB0](v84, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_183F7A27C@<X0>(uint64_t a1@<X0>, int a2@<W1>, __int128 *a3@<X8>)
{
  v122 = a2;
  v110 = a3;
  v203 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69E7CC0];
  v161 = MEMORY[0x1E69E7CC0];
  v5 = swift_allocObject();
  v113 = v5;
  *(v5 + 16) = v4;
  v123 = (v5 + 16);
  v7 = *(a1 + 56);
  v6 = *(a1 + 64);
  v9 = *(a1 + 72);
  v8 = *(a1 + 80);
  v10 = *(a1 + 88);
  v11 = *(a1 + 96);
  v12 = *(a1 + 16);
  v201[0] = *a1;
  v201[1] = v12;
  v201[2] = *(a1 + 32);
  v202 = *(a1 + 48);
  v103 = a1;
  sub_183F81520(a1, v192, &qword_1EA854260, &qword_1843984E8);
  sub_183F7D978(v192);
  sub_183F814B4(v201, &qword_1EA854238, &qword_184398310);
  v133 = v9;
  v134 = v7;
  *&v194 = v7;
  *(&v194 + 1) = v6;
  *&v195 = v9;
  *(&v195 + 1) = v8;
  v131 = v11;
  v132 = v10;
  *&v196 = v10;
  *(&v196 + 1) = v11;
  v13 = BYTE8(v193);
  while (1)
  {
    v14 = *&v192[0];
    v15 = BYTE8(v192[0]);
    if (v13)
    {
      break;
    }

    *&v192[0] = 0;
    BYTE8(v192[0]) = 0;
    if (!v14)
    {
      goto LABEL_70;
    }

LABEL_15:
    *&v185[0] = v14;
    BYTE8(v185[0]) = v15 & 1;
    v134(&v170, v185);

    v23 = v170;
    v24 = BYTE8(v170);
    v190 = v170;
    v191 = BYTE8(v170);
    if (v133(&v190))
    {
      *&v185[0] = v23;
      BYTE8(v185[0]) = v24;
      v132(&v170, v185);

      v25 = v170;
      v26 = BYTE8(v170);

      sub_183F7C470(v27, v26, sub_183F7C464, 0);
      sub_183F7C75C(v25);
    }

    else
    {
    }
  }

  if (v13 == 1)
  {
    v16 = *(&v192[4] + 1);
    *(v185 + 9) = *(v192 + 9);
    *(&v185[1] + 9) = *(&v192[1] + 9);
    *(&v185[2] + 9) = *(&v192[2] + 9);
    *(&v185[3] + 8) = *(&v192[3] + 8);
    *&v185[0] = *&v192[0];
    BYTE8(v185[0]) = BYTE8(v192[0]);
    *(&v185[4] + 1) = *(&v192[4] + 1);
    *&v186 = v193;
    sub_183F7E0C0();
    if (!v17)
    {
LABEL_17:
      v192[2] = v185[2];
      v192[3] = v185[3];
      v192[4] = v185[4];
      *&v193 = v186;
      v192[0] = v185[0];
      v192[1] = v185[1];
      BYTE8(v193) = 1;
      goto LABEL_18;
    }

    v14 = v17;
    v15 = v18;
    while (1)
    {
      *&v170 = v14;
      BYTE8(v170) = v15 & 1;
      if (v16(&v170))
      {
        break;
      }

      sub_183F7E0C0();
      v14 = v19;
      v15 = v20;
      if (!v19)
      {
        goto LABEL_17;
      }
    }

    v192[2] = v185[2];
    v192[3] = v185[3];
    v192[4] = v185[4];
    *&v193 = v186;
    v13 = 1;
    v192[0] = v185[0];
    v192[1] = v185[1];
    goto LABEL_15;
  }

  *(v185 + 9) = *(v192 + 9);
  *(&v185[1] + 9) = *(&v192[1] + 9);
  *(&v185[2] + 9) = *(&v192[2] + 9);
  *(&v185[3] + 8) = *(&v192[3] + 8);
  *&v185[0] = *&v192[0];
  BYTE8(v185[0]) = BYTE8(v192[0]);
  sub_183F7E0C0();
  v14 = v21;
  v15 = v22;
  v192[2] = v185[2];
  v192[3] = v185[3];
  *&v192[4] = *&v185[4];
  v192[0] = v185[0];
  v192[1] = v185[1];
  if (v21)
  {
    goto LABEL_15;
  }

LABEL_70:
  BYTE8(v193) = v13;
LABEL_18:
  v187 = v194;
  v188 = v195;
  v189 = v196;
  v185[2] = v192[2];
  v185[3] = v192[3];
  v185[4] = v192[4];
  v186 = v193;
  v185[0] = v192[0];
  v185[1] = v192[1];
  sub_183F814B4(v185, &qword_1EA854268, &qword_1843984F0);
  v28 = &v161;
  v29 = 0;
  sub_183F7EDB0(&v161);
  sub_183F7CAB4();
  v30 = sub_183F7EC4C(v123);
  v102[4] = v102;
  v31 = vdupq_n_s64(0x7FF8000000000000uLL);
  v32 = v110;
  *v110 = v31;
  v32[1] = v31;
  v33 = MEMORY[0x1E69E7CC0];
  *(v32 + 4) = MEMORY[0x1E69E7CC0];
  v111 = v32 + 2;
  *(v32 + 5) = v33;
  v112 = v32 + 5;
  *(v32 + 6) = v33;
  v109 = (v32 + 3);
  v34 = v161;
  v35 = *(v161 + 2);
  v36 = *(*(v113 + 16) + 16);
  MEMORY[0x1EEE9AC00](v30);
  v37 = v100;
  v100[2] = &v161;
  v100[3] = v38;
  v101 = v122;
  v39 = sub_183FA5A00();
  v40 = v35 * v36;
  if ((v35 * v36) >> 64 != (v35 * v36) >> 63)
  {
    goto LABEL_111;
  }

  if (v35 >> 60)
  {
    goto LABEL_125;
  }

  v28 = *v112;
  v108 = *(*v112 + 16);
  if ((8 * v35) >= 1025)
  {
    goto LABEL_112;
  }

  while (2)
  {
    v102[3] = v100;
    isStackAllocationSafe = MEMORY[0x1EEE9AC00](v39);
    v116 = v100 - v42;
    if (v35 >= 0x101)
    {
      isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
      if ((isStackAllocationSafe & 1) == 0)
      {
        v93 = v108 == 0;
        v94 = swift_slowAlloc();
        HIBYTE(v99) = v93;
        LOBYTE(v99) = 1;
        sub_183FA7660(v94, v35, v40, v116, v35, v110, 0, 0, 1uLL, sub_183F81384, v37, v40, v99, 0, 0, 0, 0);
        MEMORY[0x1865EFCB0](v94, -1, -1);
        if (!v29)
        {
          goto LABEL_97;
        }

        v95 = v29;
        goto LABEL_121;
      }
    }

    v102[2] = v100;
    v43 = MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v115 = (v100 - v44);
    if ((v40 & 0x8000000000000000) != 0)
    {
      goto LABEL_126;
    }

    if (v40 >> 60)
    {
LABEL_127:
      __break(1u);
      goto LABEL_128;
    }

    if ((8 * v40) >= 1025)
    {
      v43 = swift_stdlib_isStackAllocationSafe();
      if ((v43 & 1) == 0)
      {
        v96 = v108 == 0;
        v97 = swift_slowAlloc();
        HIBYTE(v98) = v96;
        LOBYTE(v98) = 1;
        sub_183FA88BC(v97, v40, v116, v35, v115, v35, v110, 0, 0, sub_183F81384, v37, v40, v98, 0, 0, 0, 0);
        MEMORY[0x1865EFCB0](v97, -1, -1);
        if (!v29)
        {
          goto LABEL_97;
        }

        v95 = v29;
        swift_willThrow();
LABEL_121:
        swift_willThrow();

        __break(1u);
        goto LABEL_122;
      }
    }

    v102[1] = v100;
    MEMORY[0x1EEE9AC00](v43);
    v117 = v100 - v45;
    v104 = v100;
    v46 = *v109;
    v47 = *v111;
    v48 = *(v34 + 2);
    swift_retain_n();
    v107 = v47;

    v106 = v28;

    swift_beginAccess();
    v121 = v48;
    v105 = v46;
    if (!v48)
    {
      v49 = 0;
      v28 = 0;
      v37 = v157;
      goto LABEL_59;
    }

    v28 = 0;
    v49 = 0;
    v35 = 0;
    v50 = 0;
    v29 = (v46 + 32);
    v119 = v40;
    v120 = v34 + 32;
    v114 = v40 - 1;
    v37 = v157;
    v118 = v34;
    while (1)
    {
      v124 = v29;
      v125 = v35;
      v29 = &v117[8 * v49];
      v131 = v40 - v49;
      v134 = (v114 - v49);
      v126 = v28;
      v127 = v49;
      while (1)
      {
        if (v50 >= *(v34 + 2))
        {
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
          goto LABEL_107;
        }

        v128 = v50;
        v51 = *&v120[8 * v50];
        v52 = *v123;
        v53 = swift_allocObject();
        *(v53 + 16) = v51;
        v54 = swift_allocObject();
        *(v54 + 16) = v122;
        *&v137 = v52;
        *(&v137 + 1) = sub_183F81390;
        *&v138 = v53;
        *(&v138 + 1) = sub_183F7C464;
        *&v139 = 0;
        *(&v139 + 1) = 0x7FF8000000000000;
        v140 = 0u;
        v141 = 0u;
        *&v142 = sub_183F81398;
        *(&v142 + 1) = v54;
        v172[0] = v139;
        v172[1] = 0u;
        v173 = 0u;
        v174 = v142;
        v170 = v137;
        v171 = v138;
        v143[0] = v52;
        v143[1] = sub_183F81390;
        v143[2] = v53;
        v143[3] = sub_183F7C464;
        v143[4] = 0;
        v143[5] = 0x7FF8000000000000;
        v144 = 0u;
        v145 = 0u;
        v146 = sub_183F81398;
        v147 = v54;

        v35 = &qword_1843984F8;
        sub_183F81520(&v137, v165, &qword_1EA854270, &qword_1843984F8);
        sub_183F814B4(v143, &qword_1EA854270, &qword_1843984F8);
        v148 = v51;
        v151 = v172[0];
        v152 = v172[1];
        v153 = v173;
        v154 = v174;
        v149 = v170;
        v150 = v171;
        v155 = sub_183FB65DC;
        v156 = 0;
        if (v40 < v49)
        {
          goto LABEL_104;
        }

        v132 = *(&v154 + 1);
        v133 = v154;
        v157[0] = v149;
        v157[1] = v150;
        v158 = v151;
        v159 = v152;
        v160 = v153;
        v55 = v149;
        v56 = v150;
        v57 = v151;
        v162 = v149;
        v130 = *(&v150 + 1);
        v163 = v150;
        v164 = v151;
        sub_183F81520(&v148, v165, &qword_1EA854278, &qword_184398500);
        v58 = *(v55 + 16);

        v129 = v57;

        v60 = 0;
        if (v58)
        {
          v61 = (v55 + 48);
          while (1)
          {
            v62 = *v61;
            v165[0] = *(v61 - 1);
            *&v165[1] = v62;
            if ((*(&v55 + 1))(v165))
            {
              break;
            }

            ++v60;
            v61 += 3;
            if (v58 == v60)
            {
              v60 = v58;
              break;
            }
          }
        }

        v63 = sub_183F7DDD8(v60, v59);
        v65 = v64;
        v67 = v66;
        v69 = v68;
        sub_183F814B4(v157, &qword_1EA854280, &qword_184399E60);
        v135 = v65 & 1;
        v170 = v55;
        *&v171 = v56;
        *(&v171 + 1) = v130;
        *&v172[0] = v129;
        *(&v172[0] + 1) = v63;
        LOBYTE(v172[1]) = v65 & 1;
        *(&v172[1] + 1) = v67;
        *&v173 = v69;
        *(&v173 + 1) = *(&v158 + 1);
        v37 = v157;
        v174 = v159;
        v175 = v160;
        v35 = v131;
        v176 = v133;
        v177 = v132;
        v28 = &v197;
        v49 = v127;
        v34 = v118;
        v40 = v119;
        if (v131)
        {
          if (v131 < 1)
          {
            __break(1u);
            goto LABEL_72;
          }

          sub_183F80564(&v197);
          if (v200)
          {
            v35 = 0;
          }

          else
          {
            v35 = 0;
            while (1)
            {
              *&v165[0] = v197;
              *(v165 + 8) = v198;
              *(&v165[1] + 8) = v199;
              sub_183FB65DC(v165, &v136);
              *&v29[8 * v35] = v136;
              if (v134 == v35)
              {
                break;
              }

              sub_183F80564(&v197);
              ++v35;
              if (v200)
              {
                goto LABEL_45;
              }
            }

            v35 = v131;
          }
        }

LABEL_45:
        v50 = v128 + 1;
        v182 = v173;
        v183 = v174;
        v184 = v175;
        v178 = v170;
        v179 = v171;
        v180 = v172[0];
        v181 = v172[1];
        v165[4] = v173;
        v165[5] = v174;
        v165[6] = v175;
        v165[0] = v170;
        v165[1] = v171;
        v165[2] = v172[0];
        v165[3] = v172[1];
        v166 = v133;
        v167 = v132;
        v168 = sub_183FB65DC;
        v169 = 0;
        sub_183F814B4(v165, &qword_1EA854288, &qword_184398508);
        v28 = v126;
        if (v125 != v35)
        {
          goto LABEL_52;
        }

        if (v125)
        {
          break;
        }

LABEL_28:
        sub_183F814B4(&v148, &qword_1EA854278, &qword_184398500);
        if (v50 == v121)
        {
          goto LABEL_59;
        }
      }

      v70 = 0;
      while (*&v124[8 * v70] == *&v29[8 * v70])
      {
        if (v125 == ++v70)
        {
          goto LABEL_28;
        }
      }

      v35 = v125;
LABEL_52:
      v71 = __OFADD__(v49, v35);
      v49 += v35;
      if (v71)
      {
        break;
      }

      *&v116[8 * v126] = v148;
      if ((v49 & 0x8000000000000000) != 0)
      {
        goto LABEL_108;
      }

      if (HIDWORD(v49))
      {
        goto LABEL_109;
      }

      v115[v28] = v49;
      sub_183F814B4(&v148, &qword_1EA854278, &qword_184398500);
      v71 = __OFADD__(v28++, 1);
      if (v71)
      {
        goto LABEL_110;
      }

      if (v50 == v121)
      {
LABEL_59:
        v35 = v105;

        v29 = v107;

        if (v108)
        {
          sub_183F7DCD4(0, 0, v117, v49, sub_183F7FF74, sub_183F800B4);
          if ((v28 & 0x8000000000000000) == 0)
          {
            sub_183F7DCD4(0, 0, v116, v28, sub_183F7FF74, sub_183F800B4);
            goto LABEL_62;
          }

LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          if (v49 <= *(v35 + 24) >> 1)
          {
            sub_183F7DCD4(0, 0, v117, v49, sub_183F7FF74, sub_183F800B4);
            if ((v28 & 0x8000000000000000) != 0)
            {
              goto LABEL_122;
            }

            v29 = *v111;
            goto LABEL_74;
          }

LABEL_69:
          v72 = sub_183EA76E4(v49, 0);
          memcpy(v72 + 4, v117, 8 * v49);
LABEL_73:

          *v109 = v72;
          if ((v28 & 0x8000000000000000) != 0)
          {
            goto LABEL_122;
          }

LABEL_74:
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            if (v28 <= *(v29 + 3) >> 1)
            {
              sub_183F7DCD4(0, 0, v116, v28, sub_183F7FF74, sub_183F800B4);
              goto LABEL_81;
            }

LABEL_78:
            v73 = sub_183EA76E4(v28, 0);
            memcpy(v73 + 4, v116, 8 * v28);
          }

          else
          {
            if (v28)
            {
              goto LABEL_78;
            }

            v73 = MEMORY[0x1E69E7CC0];
          }

          *v111 = v73;
LABEL_81:
          v74 = *v112;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            if (v28 > *(v74 + 24) >> 1)
            {
LABEL_85:
              v35 = sub_183F9BAB8(v28, 0);
              memcpy((v35 + 32), v115, 4 * v28);
              goto LABEL_87;
            }

LABEL_62:
            sub_183F7DCD4(0, 0, v115, v28, sub_183F7FF54, sub_183F7FFB4);
            if (!v49)
            {
LABEL_97:
              v78 = *v111;
              if (*(*v111 + 16))
              {
                v79 = *(v110 + 2);
                v80 = *(v110 + 3);
                v170 = *v110;
                *&v171 = v79;
                *(&v171 + 1) = v80;
                *&v172[0] = v78;
                *(v172 + 8) = *(v110 + 40);
                sub_183FA5744();
                v82 = v81;
                v84 = v83;
                sub_183F814B4(v103, &qword_1EA854260, &qword_1843984E8);
                v85 = *(v78 + 2);
                if (!v85)
                {
                  goto LABEL_124;
                }

                v87 = *(v78 + 4);
                v86 = v78 + 32;
                v88 = v87;
                if (!v108)
                {
                  v80 = *&v86[8 * v85 - 8];
                }
              }

              else
              {
                sub_183F814B4(v103, &qword_1EA854260, &qword_1843984E8);
                v82 = 0x7FF8000000000000;
                v84 = 0x7FF8000000000000;
                v88 = 0x7FF8000000000000;
                v80 = 0x7FF8000000000000;
              }

              v89 = v110;
              *v110 = v82;
              *(v89 + 1) = v84;
              *(v89 + 2) = v88;
              *(v89 + 3) = v80;
              sub_183FA5EA0();
            }
          }

          else
          {
            if (v28)
            {
              goto LABEL_85;
            }

            v35 = MEMORY[0x1E69E7CC0];
LABEL_87:

            *v112 = v35;
            if (!v49)
            {
              goto LABEL_97;
            }
          }

          v75 = *v112;
          v29 = *(*v112 + 16);
          if (v29 < v28)
          {
            goto LABEL_123;
          }

          if (v28 == v29)
          {
            goto LABEL_97;
          }

          if (v28 < v29)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v75 = sub_183F9C14C(v75);
            }

            do
            {
              if (v28 >= *(v75 + 2))
              {
                goto LABEL_105;
              }

              v76 = &v75[4 * v28];
              v77 = v49 + *(v76 + 8);
              if (HIDWORD(v77))
              {
                goto LABEL_106;
              }

              ++v28;
              *(v76 + 8) = v77;
            }

            while (v29 != v28);
            *v112 = v75;
            goto LABEL_97;
          }

LABEL_128:
          __break(1u);
        }

        if (v49)
        {
          goto LABEL_69;
        }

LABEL_72:
        v72 = MEMORY[0x1E69E7CC0];
        goto LABEL_73;
      }
    }

LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:
    v39 = swift_stdlib_isStackAllocationSafe();
    if (v39)
    {
      continue;
    }

    break;
  }

  v91 = v108 == 0;
  v92 = swift_slowAlloc();
  sub_183FA60D0(v92, v35, v35, v40, v110, 0, 0, sub_183F81384, 1uLL, v37, v40, 1u, v91, 0, 0, 0, 0);
  if (!v29)
  {
    MEMORY[0x1865EFCB0](v92, -1, -1);
    goto LABEL_97;
  }

  result = MEMORY[0x1865EFCB0](v92, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_183F7B3E4@<X0>(uint64_t a1@<X0>, int a2@<W1>, char **a3@<X2>, int64x2_t *a5@<X8>)
{
  v5 = a3;
  v123 = a2;
  v110 = a5;
  v191 = *MEMORY[0x1E69E9840];
  v7 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = v100 - v12;
  v14 = MEMORY[0x1E69E7CC0];
  v165[0] = MEMORY[0x1E69E7CC0];
  v15 = swift_allocObject();
  v113 = v15;
  *(v15 + 16) = v14;
  v101 = v7;
  v102 = a1;
  v16 = a1;
  v17 = (v15 + 16);
  (*(v7 + 16))(v9, v16, v5);
  sub_18438FD38();
  v103 = v5;
  swift_getAssociatedConformanceWitness();
  sub_18438FF58();
  v18 = v171;
  if (v171)
  {
    v19 = BYTE8(v171);
    do
    {

      sub_183F7C470(v20, v19 & 1, sub_183F7C464, 0);
      sub_183F7C75C(v18);
      sub_18438FF58();
      v18 = v171;
      v19 = BYTE8(v171);
    }

    while (v171);
  }

  v22 = *(v11 + 8);
  v21 = (v11 + 8);
  v22(v13, AssociatedTypeWitness);
  v23 = 0;
  sub_183F7EDB0(v165);
  sub_183F7CAB4();
  v24 = sub_183F7EC4C(v17);
  v100[4] = v100;
  v25 = vdupq_n_s64(0x7FF8000000000000uLL);
  v26 = v110;
  *v110 = v25;
  *(v26 + 1) = v25;
  v26[4] = v14;
  v111 = v26 + 4;
  v26[5] = v14;
  v112 = v26 + 5;
  v26[6] = v14;
  v109 = (v26 + 6);
  v121 = v165[0];
  v27 = *(v165[0] + 2);
  v28 = *(*(v113 + 16) + 16);
  MEMORY[0x1EEE9AC00](v24);
  v29 = &v95;
  v97 = v165;
  v98 = v30;
  v99 = v123;
  v31 = sub_183FA5A00();
  if ((v27 * v28) >> 64 != (v27 * v28) >> 63)
  {
    goto LABEL_96;
  }

  if (v27 >> 60)
  {
    goto LABEL_110;
  }

  v122 = v27 * v28;
  v21 = &v171;
  v5 = &v157;
  v108 = *v112;
  v28 = *(v108 + 2);
  if ((8 * v27) >= 1025)
  {
    goto LABEL_97;
  }

  do
  {
    v100[3] = v100;
    isStackAllocationSafe = MEMORY[0x1EEE9AC00](v31);
    v116 = v100 - v33;
    if (v27 >= 0x101)
    {
      isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
      if ((isStackAllocationSafe & 1) == 0)
      {
        v92 = swift_slowAlloc();
        HIBYTE(v96) = v28 == 0;
        LOBYTE(v96) = 1;
        sub_183FA7660(v92, v27, v122, v116, v27, v110, 0, 0, 1uLL, sub_183F8158C, v29, v122, v96, 0, 0, 0, 0);
        MEMORY[0x1865EFCB0](v92, -1, -1);
        if (!v23)
        {
          goto LABEL_82;
        }

        v93 = v23;
        goto LABEL_106;
      }
    }

    v100[2] = v100;
    v34 = MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v115 = (v100 - v35);
    v36 = v122;
    if ((v122 & 0x8000000000000000) != 0)
    {
      goto LABEL_111;
    }

    if (v122 >> 60)
    {
LABEL_112:
      __break(1u);
      goto LABEL_113;
    }

    if ((8 * v122) >= 1025)
    {
      v34 = swift_stdlib_isStackAllocationSafe();
      if ((v34 & 1) == 0)
      {
        v94 = swift_slowAlloc();
        BYTE1(v95) = v28 == 0;
        LOBYTE(v95) = 1;
        sub_183FA88BC(v94, v36, v116, v27, v115, v27, v110, 0, 0, sub_183F8158C, v29, v36, v95, 0, 0, 0, 0);
        MEMORY[0x1865EFCB0](v94, -1, -1);
        if (!v23)
        {
          goto LABEL_82;
        }

        v93 = v23;
        swift_willThrow();
LABEL_106:
        swift_willThrow();

        __break(1u);
        goto LABEL_107;
      }
    }

    v107 = v28;
    v100[1] = v100;
    MEMORY[0x1EEE9AC00](v34);
    v117 = v100 - v37;
    v104 = v100;
    v38 = *v109;
    v39 = *v111;
    v40 = v121;
    v27 = *(v121 + 2);
    swift_retain_n();
    v106 = v39;

    swift_beginAccess();
    v120 = v27;
    v105 = v38;
    if (!v27)
    {
      v29 = 0;
      goto LABEL_45;
    }

    v27 = 0;
    v29 = 0;
    v23 = 0;
    v41 = 0;
    v28 = v38 + 32;
    v118 = v17;
    v119 = v40 + 32;
    v114 = v36 - 1;
    while (1)
    {
      v124 = v28;
      v125 = v23;
      v28 = &v117[8 * v29];
      v130 = v36 - v29;
      v134 = (v114 - v29);
      v126 = v29;
      v127 = v27;
      while (1)
      {
        if (v41 >= *(v40 + 2))
        {
          __break(1u);
LABEL_89:
          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
          goto LABEL_92;
        }

        v133 = v41;
        v42 = *&v119[8 * v41];
        v43 = *v17;
        v44 = swift_allocObject();
        *(v44 + 16) = v42;
        v45 = swift_allocObject();
        *(v45 + 16) = v123;
        *&v137 = v43;
        *(&v137 + 1) = sub_183F81590;
        *&v138 = v44;
        *(&v138 + 1) = sub_183F7C464;
        *&v139 = 0;
        *(&v139 + 1) = 0x7FF8000000000000;
        v140 = 0u;
        v141 = 0u;
        *&v142 = sub_183F81594;
        *(&v142 + 1) = v45;
        *(v5 + 20) = v139;
        *(v5 + 21) = 0u;
        v46 = v142;
        *(v5 + 22) = v141;
        *(v5 + 23) = v46;
        v47 = v138;
        *(v5 + 18) = v137;
        *(v5 + 19) = v47;
        v143[0] = v43;
        v143[1] = sub_183F81590;
        v143[2] = v44;
        v143[3] = sub_183F7C464;
        v143[4] = 0;
        v143[5] = 0x7FF8000000000000;
        v144 = 0u;
        v145 = 0u;
        v146 = sub_183F81594;
        v147 = v45;

        v23 = &qword_1843984F8;
        sub_183F81520(&v137, v166, &qword_1EA854270, &qword_1843984F8);
        sub_183F814B4(v143, &qword_1EA854270, &qword_1843984F8);
        v148 = v42;
        v48 = *(v5 + 21);
        v151 = *(v5 + 20);
        v152 = v48;
        v49 = *(v5 + 23);
        v153 = *(v5 + 22);
        v154 = v49;
        v50 = *(v5 + 19);
        v149 = *(v5 + 18);
        v150 = v50;
        v155 = sub_183FB65DC;
        v156 = 0;
        if (v36 < v29)
        {
          goto LABEL_89;
        }

        v131 = *(&v154 + 1);
        v132 = v154;
        v51 = v150;
        *v5 = v149;
        *(v5 + 1) = v51;
        v52 = v152;
        *(v5 + 2) = v151;
        *(v5 + 3) = v52;
        *(v5 + 4) = v153;
        v53 = v157;
        v54 = v158;
        v55 = v159;
        v56 = v161;
        v165[1] = v157;
        v165[2] = v158;
        v165[3] = v159;
        v129 = v160;
        v165[4] = v160;
        v165[5] = v161;
        sub_183F81520(&v148, v166, &qword_1EA854278, &qword_184398500);
        v57 = *(v53 + 2);

        v128 = v56;

        v59 = 0;
        if (v57)
        {
          v60 = v53 + 48;
          while (1)
          {
            v61 = *v60;
            v166[0] = *(v60 - 1);
            *&v166[1] = v61;
            if ((v54)(v166))
            {
              break;
            }

            ++v59;
            v60 += 3;
            if (v57 == v59)
            {
              v59 = v57;
              break;
            }
          }
        }

        v62 = sub_183F7DDD8(v59, v58);
        v64 = v63;
        v66 = v65;
        v68 = v67;
        sub_183F814B4(&v157, &qword_1EA854280, &qword_184399E60);
        v135 = v64 & 1;
        *&v171 = v53;
        *(&v171 + 1) = v54;
        *&v172 = v55;
        *(&v172 + 1) = v129;
        *&v173 = v128;
        *(&v173 + 1) = v62;
        LOBYTE(v174) = v64 & 1;
        *(&v174 + 1) = v66;
        *&v175 = v68;
        *(&v175 + 1) = v162;
        v5 = &v157;
        v176 = v163;
        v177 = v164;
        v23 = v130;
        v178 = v132;
        v179 = v131;
        v29 = v126;
        v27 = v127;
        v17 = v118;
        v36 = v122;
        v21 = &v187;
        if (v130)
        {
          if (v130 < 1)
          {
            __break(1u);
            goto LABEL_57;
          }

          sub_183F80564(&v187);
          if (v190)
          {
            v23 = 0;
          }

          else
          {
            v23 = 0;
            while (1)
            {
              *&v166[0] = v187;
              *(v166 + 8) = v188;
              *(&v166[1] + 8) = v189;
              sub_183FB65DC(v166, &v136);
              *(v28 + 8 * v23) = v136;
              if (v134 == v23)
              {
                break;
              }

              sub_183F80564(&v187);
              ++v23;
              if (v190)
              {
                goto LABEL_31;
              }
            }

            v23 = v130;
          }
        }

LABEL_31:
        ++v133;
        v184 = v175;
        v185 = v176;
        v186 = v177;
        v180 = v171;
        v181 = v172;
        v182 = v173;
        v183 = v174;
        v21 = &v171;
        v166[4] = v175;
        v166[5] = v176;
        v166[6] = v177;
        v166[0] = v171;
        v166[1] = v172;
        v166[2] = v173;
        v166[3] = v174;
        v167 = v132;
        v168 = v131;
        v169 = sub_183FB65DC;
        v170 = 0;
        sub_183F814B4(v166, &qword_1EA854288, &qword_184398508);
        v40 = v121;
        if (v125 != v23)
        {
          goto LABEL_38;
        }

        if (v125)
        {
          break;
        }

LABEL_14:
        sub_183F814B4(&v148, &qword_1EA854278, &qword_184398500);
        v41 = v133;
        if (v133 == v120)
        {
          goto LABEL_45;
        }
      }

      v69 = 0;
      while (*(v124 + 8 * v69) == *(v28 + 8 * v69))
      {
        if (v125 == ++v69)
        {
          goto LABEL_14;
        }
      }

      v23 = v125;
LABEL_38:
      v70 = __OFADD__(v29, v23);
      v29 += v23;
      if (v70)
      {
        break;
      }

      *&v116[8 * v27] = v148;
      if ((v29 & 0x8000000000000000) != 0)
      {
        goto LABEL_93;
      }

      if (HIDWORD(v29))
      {
        goto LABEL_94;
      }

      v115[v27] = v29;
      sub_183F814B4(&v148, &qword_1EA854278, &qword_184398500);
      v70 = __OFADD__(v27++, 1);
      if (v70)
      {
        goto LABEL_95;
      }

      v41 = v133;
      if (v133 == v120)
      {
LABEL_45:
        v71 = v105;

        v23 = v106;

        v28 = v107;
        if (v107)
        {
          sub_183F7DCD4(0, 0, v117, v29, sub_183F7FF74, sub_183F800B4);
          if ((v27 & 0x8000000000000000) == 0)
          {
            sub_183F7DCD4(0, 0, v116, v27, sub_183F7FF74, sub_183F800B4);
            goto LABEL_48;
          }

LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
          goto LABEL_112;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          if (v29 <= *(v71 + 24) >> 1)
          {
            sub_183F7DCD4(0, 0, v117, v29, sub_183F7FF74, sub_183F800B4);
            if ((v27 & 0x8000000000000000) != 0)
            {
              goto LABEL_107;
            }

            v23 = *v111;
            goto LABEL_59;
          }

LABEL_55:
          v72 = sub_183EA76E4(v29, 0);
          memcpy(v72 + 4, v117, 8 * v29);
LABEL_58:

          *v109 = v72;
          if ((v27 & 0x8000000000000000) != 0)
          {
            goto LABEL_107;
          }

LABEL_59:
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            if (v27 <= *(v23 + 24) >> 1)
            {
              sub_183F7DCD4(0, 0, v116, v27, sub_183F7FF74, sub_183F800B4);
              goto LABEL_66;
            }

LABEL_63:
            v73 = sub_183EA76E4(v27, 0);
            memcpy(v73 + 32, v116, 8 * v27);
          }

          else
          {
            if (v27)
            {
              goto LABEL_63;
            }

            v73 = MEMORY[0x1E69E7CC0];
          }

          *v111 = v73;
LABEL_66:
          v74 = *v112;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            if (v27 > *(v74 + 3) >> 1)
            {
LABEL_70:
              v75 = sub_183F9BAB8(v27, 0);
              memcpy(v75 + 32, v115, 4 * v27);
              goto LABEL_72;
            }

LABEL_48:
            sub_183F7DCD4(0, 0, v115, v27, sub_183F7FF54, sub_183F7FFB4);
            if (!v29)
            {
LABEL_82:
              v79 = *v111;
              if (*(*v111 + 2))
              {
                v80 = v110;
                v81 = v110[2];
                v82 = v110[3];
                *(v5 + 18) = *v110;
                *&v172 = v81;
                *(&v172 + 1) = v82;
                *&v173 = v79;
                *(v21 + 5) = *(v80 + 5);
                sub_183FA5744();
                v85 = *(v79 + 2);
                if (!v85)
                {
                  goto LABEL_109;
                }

                v87 = *(v79 + 4);
                v86 = v79 + 32;
                v88 = v87;
                if (!v28)
                {
                  v82 = *&v86[8 * v85 - 8];
                }
              }

              else
              {
                v83 = 0x7FF8000000000000;
                v84 = 0x7FF8000000000000;
                v88 = 0x7FF8000000000000;
                v82 = 0x7FF8000000000000;
              }

              v89 = v110;
              *v110 = v83;
              v89[1] = v84;
              v89[2] = v88;
              v89[3] = v82;
              sub_183FA5EA0();
              (*(v101 + 8))(v102, v103);
            }
          }

          else
          {
            if (v27)
            {
              goto LABEL_70;
            }

            v75 = MEMORY[0x1E69E7CC0];
LABEL_72:

            *v112 = v75;
            if (!v29)
            {
              goto LABEL_82;
            }
          }

          v76 = *v112;
          v23 = *(*v112 + 2);
          if (v23 < v27)
          {
            goto LABEL_108;
          }

          if (v27 == v23)
          {
            goto LABEL_82;
          }

          if (v27 < v23)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v76 = sub_183F9C14C(v76);
            }

            do
            {
              if (v27 >= *(v76 + 2))
              {
                goto LABEL_90;
              }

              v77 = &v76[4 * v27];
              v78 = v29 + *(v77 + 8);
              if (HIDWORD(v78))
              {
                goto LABEL_91;
              }

              ++v27;
              *(v77 + 8) = v78;
            }

            while (v23 != v27);
            *v112 = v76;
            goto LABEL_82;
          }

LABEL_113:
          __break(1u);
        }

        if (v29)
        {
          goto LABEL_55;
        }

LABEL_57:
        v72 = MEMORY[0x1E69E7CC0];
        goto LABEL_58;
      }
    }

LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    v31 = swift_stdlib_isStackAllocationSafe();
  }

  while ((v31 & 1) != 0);
  v91 = swift_slowAlloc();
  sub_183FA60D0(v91, v27, v27, v122, v110, 0, 0, sub_183F8158C, 1uLL, v29, v122, 1u, v28 == 0, 0, 0, 0, 0);
  if (!v23)
  {
    MEMORY[0x1865EFCB0](v91, -1, -1);
    goto LABEL_82;
  }

  result = MEMORY[0x1865EFCB0](v91, -1, -1);
  __break(1u);
  return result;
}

double Region.init(filling:rule:)@<D0>(void *a1@<X0>, unsigned __int8 *a2@<X1>, int64x2_t *a3@<X8>)
{
  v5 = *a2;
  v6 = sub_183F90DB8();
  if (v5)
  {
    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  sub_183F793C8(v6, v7, v12);

  v8 = v13;
  result = *v12[0].i64;
  v10 = v12[1];
  v11 = v12[2];
  *a3 = v12[0];
  a3[1] = v10;
  a3[2] = v11;
  a3[3].i64[0] = v8;
  return result;
}

double sub_183F7C464@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 8);
  *a2 = result;
  return result;
}

uint64_t sub_183F7C470(void *a1, unsigned __int8 a2, void *(*a3)(uint64_t *__return_ptr, void **), uint64_t a4)
{
  v7 = a1[3];
  v8 = v7 - 1;
  if (__OFSUB__(v7, 1))
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (v8 < 0)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v6 = v4;
  v5 = *v4;
  v9 = *(*v4 + 2);
  v10 = v9 + v8;
  if (__OFADD__(v9, v8))
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v16 = *(v5 + 3) >> 1, v16 < v10))
  {
    if (v9 <= v10)
    {
      v17 = v9 + v8;
    }

    else
    {
      v17 = v9;
    }

    isUniquelyReferenced_nonNull_native = sub_183F81C20(isUniquelyReferenced_nonNull_native, v17, 1, v5);
    v5 = isUniquelyReferenced_nonNull_native;
    v16 = *(isUniquelyReferenced_nonNull_native + 3) >> 1;
  }

  v18 = *(v5 + 2);
  v19 = a2 & 1;
  v43 = a2 & 1;
  v20 = v16 - v18;
  v41 = v8;
  if (v16 == v18)
  {
LABEL_35:
    v44 = a1;
    LOBYTE(v45) = v19;
    v8 = v20;
    goto LABEL_36;
  }

  if (v20 < 1)
  {
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v40 = v6;
  v21 = a1[3];
  v22 = v21 - 1;
  if (__OFSUB__(v21, 1))
  {
LABEL_32:
    __break(1u);
  }

  else
  {
    v8 = 0;
    v6 = (a1 + 5);
    v9 = &v5[8 * v18 + 32];
    v23 = ~v18 + v16;
    while (v8 != v22)
    {
      if (v8 >= v21)
      {
        goto LABEL_44;
      }

      v24 = a1[4];
      v25 = a1[2];
      if (v8 + v24 >= v25)
      {
        v26 = a1[2];
      }

      else
      {
        v26 = 0;
      }

      if (v8 + 1 >= v21)
      {
        goto LABEL_45;
      }

      if (v8 >= v22)
      {
        goto LABEL_46;
      }

      v27 = (&v6[v8])[v24 - v26];
      if (v8 + v24 + 1 >= v25)
      {
        v28 = a1[2];
      }

      else
      {
        v28 = 0;
      }

      if ((v8 ^ a2))
      {
        v29 = v6[v8 + v24 - v28 + 1];
      }

      else
      {
        v29 = (&v6[v8])[v24 - v26];
      }

      if (((v8 ^ a2) & 1) == 0)
      {
        v27 = v6[v8 + v24 - v28 + 1];
      }

      v44 = v27;
      v45 = v29;
      isUniquelyReferenced_nonNull_native = a3(&v42, &v44);
      *(v9 + 8 * v8) = v42;
      if (v23 == v8)
      {
        v19 = v43;
        v6 = v40;
        goto LABEL_35;
      }

      v21 = a1[3];
      ++v8;
      v22 = v21 - 1;
      if (__OFSUB__(v21, 1))
      {
        goto LABEL_32;
      }
    }
  }

  v44 = a1;
  LOBYTE(v45) = v43;
  v6 = v40;
LABEL_36:
  v46 = v8;
  v47 = a3;
  v48 = a4;
  if (v8 < v41)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (v8)
  {
    v30 = *(v5 + 2);
    v31 = __OFADD__(v30, v8);
    v32 = v30 + v8;
    if (v31)
    {
      __break(1u);
LABEL_54:
      *(v5 + 2) = v9;
      v34 = v9;
      goto LABEL_55;
    }

    *(v5 + 2) = v32;
  }

  if (v8 != v20)
  {
LABEL_41:

    goto LABEL_42;
  }

LABEL_51:
  v34 = *(v5 + 2);
  isUniquelyReferenced_nonNull_native = sub_183F80470();
  if (v35)
  {
    goto LABEL_41;
  }

LABEL_55:
  v36 = *(v5 + 3);
  v37 = v36 >> 1;
  if ((v36 >> 1) < v34 + 1)
  {
    v39 = isUniquelyReferenced_nonNull_native;
    v5 = sub_183F81C20((v36 > 1), v34 + 1, 1, v5);
    isUniquelyReferenced_nonNull_native = v39;
    v37 = *(v5 + 3) >> 1;
  }

  if (v34 <= v37)
  {
    v9 = v37;
  }

  else
  {
    v9 = v34;
  }

  do
  {
    if (v9 == v34)
    {
      goto LABEL_54;
    }

    *&v5[8 * v34++ + 32] = isUniquelyReferenced_nonNull_native;
    isUniquelyReferenced_nonNull_native = sub_183F80470();
  }

  while ((v38 & 1) == 0);

  *(v5 + 2) = v34;
LABEL_42:
  *v6 = v5;
  return result;
}

char *sub_183F7C75C(char *result)
{
  v6 = *(result + 3);
  v7 = v6 - 1;
  if (__OFSUB__(v6, 1))
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v7 < -1)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v1 = *v2;
  v4 = *(*v2 + 16);
  v5 = v4 + v7 / 2;
  if (__OFADD__(v4, v7 / 2))
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v3 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || (v8 = *(v1 + 24) >> 1, v8 < v5))
  {
    if (v4 <= v5)
    {
      v9 = v4 + v7 / 2;
    }

    else
    {
      v9 = v4;
    }

    result = sub_183F81B04(result, v9, 1, v1);
    v1 = result;
    v8 = *(result + 3) >> 1;
  }

  v5 = *(v1 + 16);
  v4 = v8 - v5;
  if (v8 != v5)
  {
    v10 = *(v3 + 3);
    if (__OFSUB__(v10, 1))
    {
      __break(1u);
LABEL_66:

      *(v1 + 16) = -v5;
      goto LABEL_39;
    }

    if (v4 >= 1)
    {
      v11 = (v10 - 1) / 2;
      if (v10 >= 3)
      {
        v12 = 0;
        v13 = v3 + 40;
        v14 = (v1 + 24 * v5 + 32);
        v15 = ~v5 + v8;
        v16 = (v10 - 1) / 2;
        while (1)
        {
          if (v12 >= v10)
          {
            goto LABEL_41;
          }

          v17 = *(v3 + 4);
          v18 = *(v3 + 2);
          if (v12 + v17 >= v18)
          {
            result = *(v3 + 2);
          }

          else
          {
            result = 0;
          }

          if (v12 + 1 >= v10)
          {
            goto LABEL_42;
          }

          if (v12 + v17 + 1 >= v18)
          {
            v19 = *(v3 + 2);
          }

          else
          {
            v19 = 0;
          }

          if (v12 + 2 >= v10)
          {
            goto LABEL_43;
          }

          if (2 * (v11 & ~(v11 >> 63)) == v12)
          {
            goto LABEL_44;
          }

          v20 = v13[v12 + v17 - result];
          v21 = v13[v12 + 1 + v17 - v19];
          result = (v12 + v17 + 2);
          if (result < v18)
          {
            v18 = 0;
          }

          v22 = v13[v12 + 2 + v17 - v18];
          *v14 = v20;
          v14[1] = v21;
          v14[2] = v22;
          if (!v15)
          {
            break;
          }

          v14 += 3;
          v12 += 2;
          --v15;
          if (!--v16)
          {
            goto LABEL_33;
          }
        }

        v11 = v4;
      }

LABEL_33:
      if (v11 >= v7 / 2)
      {
        if (v11 > 0)
        {
          v23 = __OFADD__(v5, v11);
          v5 += v11;
          if (v23)
          {
            __break(1u);
            goto LABEL_68;
          }

          *(v1 + 16) = v5;
        }

LABEL_37:
        if (v11 != v4)
        {
LABEL_38:

LABEL_39:
          *v2 = v1;
          return result;
        }

        goto LABEL_49;
      }

      goto LABEL_48;
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (v7 <= 1)
  {
    v11 = 0;
    goto LABEL_37;
  }

LABEL_48:
  __break(1u);
LABEL_49:
  v24 = *(v3 + 3);
  v23 = __OFSUB__(v24, 1);
  v25 = v24 - 1;
  if (v23)
  {
    goto LABEL_70;
  }

  v26 = v25 / 2;
  if (v4 == v25 / 2)
  {
    goto LABEL_38;
  }

  result = sub_183F91F18(v4, v3);
  if (v4 >= v26)
  {
    goto LABEL_71;
  }

  v30 = v4 + 1;
  *(&v27 + 1) = v28;
  while (1)
  {
    v31 = *(v1 + 24);
    v32 = v31 >> 1;
    if ((v31 >> 1) < v5 + 1)
    {
      break;
    }

    v33 = v32 - v5;
    if (v32 > v5)
    {
      goto LABEL_56;
    }

LABEL_53:
    *(v1 + 16) = v5;
  }

  v41 = v29;
  v40 = v27;
  result = sub_183F81B04((v31 > 1), v5 + 1, 1, v1);
  v27 = v40;
  v29 = v41;
  v1 = result;
  v32 = *(result + 3) >> 1;
  v33 = v32 - v5;
  if (v32 <= v5)
  {
    goto LABEL_53;
  }

LABEL_56:
  v34 = (v1 + 24 * v5 + 48);
  v5 = ~v5;
  v35 = v30;
  while (1)
  {
    *(v34 - 1) = v27;
    *v34 = v29;
    v36 = *(v3 + 3);
    v23 = __OFSUB__(v36, 1);
    v37 = v36 - 1;
    if (v23)
    {
      break;
    }

    v38 = v37 / 2;
    if (v35 == v37 / 2)
    {
      goto LABEL_66;
    }

    result = sub_183F91F18(v35, v3);
    if (v30 < 0 || v35 >= v38)
    {
      goto LABEL_69;
    }

    ++v35;
    *(&v27 + 1) = v39;
    v34 += 3;
    --v5;
    if (!--v33)
    {
      v5 = v32;
      v30 = v35;
      goto LABEL_53;
    }
  }

LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
  return result;
}

unint64_t sub_183F7CAB4()
{
  v1 = *v0;
  v2 = *(*v0 + 2);
  if (v2 < 2)
  {
    return 1;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_20:
    v1 = sub_183F80868(v1);
  }

  v3 = 0;
  v4 = v1 + 32;
  v5 = 5;
  do
  {
    v6 = *(v1 + 2);
    if (v3 >= v6)
    {
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    if (v5 - 4 >= v6)
    {
      goto LABEL_18;
    }

    v7 = *&v1[8 * v5];
    if (*&v4[8 * v3] != v7)
    {
      v8 = v3 + 1;
      v3 = v5 - 4;
      if (v5 - 4 != v8)
      {
        if (v8 >= v6)
        {
          goto LABEL_19;
        }

        *&v4[8 * v8] = v7;
        v3 = v8;
      }
    }

    ++v5;
  }

  while (1 - v2 + v5 != 5);
  *v0 = v1;
  result = v3 + 1;
  if (v3 + 1 < v2)
  {

    return sub_183F808E8(result, v2);
  }

  return result;
}

uint64_t sub_183F7CBC4(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t *a4, uint64_t a5, char a6)
{
  v9 = *a4;
  v10 = swift_allocObject();
  *(v10 + 16) = a5;
  *(v10 + 24) = a6;
  v12[0] = v9;
  v12[1] = sub_183F81514;
  v12[2] = v10;

  a2(v12);
}

double sub_183F7CC80@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  swift_beginAccess();
  v8 = *(a2 + 16);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *&v16 = v8;
  *(&v16 + 1) = sub_183F81590;
  *&v17 = v9;
  *(&v17 + 1) = sub_183F7C464;
  *&v18 = 0;
  *(&v18 + 1) = 0x7FF8000000000000;
  v19 = 0u;
  v20 = 0u;
  *&v21 = sub_183F81594;
  *(&v21 + 1) = v10;
  v29 = v18;
  v30 = 0u;
  v31 = 0u;
  v32 = v21;
  v27 = v16;
  v28 = v17;
  v22[0] = v8;
  v22[1] = sub_183F81590;
  v22[2] = v9;
  v22[3] = sub_183F7C464;
  v22[4] = 0;
  v22[5] = 0x7FF8000000000000;
  v23 = 0u;
  v24 = 0u;
  v25 = sub_183F81594;
  v26 = v10;

  sub_183F81520(&v16, v15, &qword_1EA854270, &qword_1843984F8);
  sub_183F814B4(v22, &qword_1EA854270, &qword_1843984F8);
  v11 = v30;
  *(a4 + 40) = v29;
  *(a4 + 56) = v11;
  v12 = v32;
  *(a4 + 72) = v31;
  *(a4 + 88) = v12;
  result = *&v27;
  v14 = v28;
  *(a4 + 8) = v27;
  *(a4 + 24) = v14;
  *(a4 + 104) = sub_183FB65DC;
  *(a4 + 112) = 0;
  *a4 = v7;
  return result;
}

BOOL sub_183F7CE88(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_183F7CEB8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_183F7CEE4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_183F7CFBC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_183F7CFF0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

double Region.contour(options:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(v2 + 6);
  v6 = v2[1];
  v11 = *v2;
  v12 = v6;
  v13 = v2[2];
  v14 = v5;
  v10 = v4;
  sub_183F7D0CC(&v10, v15);
  v7 = v17;
  v8 = v15[1];
  *a2 = v15[0];
  *(a2 + 16) = v8;
  result = *&v16;
  *(a2 + 32) = v16;
  *(a2 + 48) = v7;
  *(a2 + 56) = sub_183F7D3D0;
  *(a2 + 64) = 0;
  return result;
}

uint64_t sub_183F7D0CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  v7 = *(v2 + 4);
  v6 = *(v2 + 5);
  v8 = *(v2 + 6);
  v9 = (~*v2 & 0x7FF0000000000000) != 0 || (*v2 & 0xFFFFFFFFFFFFFLL) == 0;
  if (v9 && !v7[2])
  {
    v14 = v2[1];
    v15 = v2[2];
    v16 = v2[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8542A8, &qword_184398528);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1843982F0;
    *(inited + 32) = v16;
    *(inited + 40) = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8542B0, &unk_184398530);
    v18 = swift_allocObject();
    v19 = _swift_stdlib_malloc_size(v18);
    v20 = v19 - 40;
    if (v19 < 40)
    {
      v20 = v19 - 33;
    }

    v18[2] = v20 >> 3;
    v18[3] = 0;
    v18[4] = 0;
    sub_183FBA808(v18 + 2, v18 + 5, 2uLL, inited);
    swift_setDeallocating();
    sub_183F911D4(v15);
    sub_183F912E8(v14);
    sub_183F911D4(v16);
    result = sub_183F912E8(v5);
    v7 = v18;
    v6 = 0;
    v8 = 0;
    v10 = 0;
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v10 = (v4 & 1) == 0;

    v12 = sub_183F7DC08 & (v4 << 62 >> 63);
    if ((v4 & 2) != 0)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }
  }

  *a2 = v7;
  *(a2 + 8) = v6;
  *(a2 + 16) = v8;
  *(a2 + 24) = v10;
  *(a2 + 32) = v12;
  *(a2 + 40) = 0;
  *(a2 + 48) = v13;
  return result;
}

uint64_t sub_183F7D3D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  *a2 = *a1;
  *(a2 + 8) = v2;
}

void Region.contourPath(options:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 6);
  v4 = v1[1];
  v38 = *v1;
  v39 = v4;
  v40 = v1[2];
  *&v41 = v3;
  *&v36[0] = v2;
  sub_183F7D0CC(v36, v43);
  Mutable = CGPathCreateMutable();
  v6 = sub_183F7D978(&v38);
  v7 = sub_183F7DA88(v6);
  if (v7)
  {
    v9 = v7;
    v10 = v8;
    while (1)
    {
      v13 = v9[3];
      if (v13 < 1)
      {
        break;
      }

      if (v13 == 1)
      {
        goto LABEL_41;
      }

      v14 = v9 + 5;
      v15 = v9[4];
      v16 = v9[2];
      if (v15 >= v16)
      {
        v17 = v9[2];
      }

      else
      {
        v17 = 0;
      }

      v18 = v15 - v17;
      v19 = *&v14[v18];
      v20 = v15 + 1;
      if (v20 < v16)
      {
        v16 = 0;
      }

      v21 = v20 - v16;
      if (v10)
      {
        v22 = *&v14[v18];
      }

      else
      {
        v22 = *&v14[v21];
      }

      if (v10)
      {
        v19 = *&v14[v21];
      }

      CGPathMoveToPoint(Mutable, &stru_1EF232540, v22, v19);
      v23 = v9[3];
      v24 = v23 - 1;
      if (__OFSUB__(v23, 1))
      {
        goto LABEL_42;
      }

      if ((v24 & 0x8000000000000000) != 0)
      {
        goto LABEL_43;
      }

      if (v24 >= 2)
      {
        v25 = 2;
        while (v23 != v25)
        {
          v26 = v9[3];
          if (v25 - 1 >= v26)
          {
            goto LABEL_38;
          }

          if (v25 >= v26)
          {
            goto LABEL_39;
          }

          v27 = v9[4];
          v28 = v25 + v27;
          v29 = v9[2];
          if (v25 + v27 >= v29)
          {
            v30 = v9[2];
          }

          else
          {
            v30 = 0;
          }

          v31 = v28 - v30;
          v32 = *&v14[v31];
          if (v28 - 1 >= v29)
          {
            v33 = v9[2];
          }

          else
          {
            v33 = 0;
          }

          v34 = &v14[v25 + v27 - v33];
          if (((v25 - 1) ^ v10))
          {
            v35 = *&v14[v31];
          }

          else
          {
            v35 = *(v34 - 1);
          }

          if (((v25 - 1) ^ v10))
          {
            v32 = *(v34 - 1);
          }

          CGPathAddLineToPoint(Mutable, &stru_1EF232590, v32, v35);
          if (v23 == ++v25)
          {
            goto LABEL_3;
          }
        }

        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        break;
      }

LABEL_3:

      CGPathCloseSubpath(Mutable);

      v9 = sub_183F7DA88(v11);
      v10 = v12;
      if (!v9)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  else
  {
LABEL_36:
    v36[2] = v40;
    v36[3] = v41;
    v37[0] = v42[0];
    *(v37 + 9) = *(v42 + 9);
    v36[0] = v38;
    v36[1] = v39;
    sub_183F814B4(v36, &qword_1EA854230, &qword_184398308);
    sub_183F814B4(v43, &qword_1EA854238, &qword_184398310);
  }
}

uint64_t Region.subregions(options:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v6 = *v2;
  v5 = v2[1];
  v8 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v10 = v2[5];
  v11 = v2[6];
  v12 = (~v6 & 0x7FF0000000000000) != 0 || (v6 & 0xFFFFFFFFFFFFFLL) == 0;
  if (!v12 || *(v9 + 16))
  {
    if ((v4 & 2) != 0)
    {
      v17 = MEMORY[0x1E69E7CC0];
      v45 = MEMORY[0x1E69E7CC0];
      v40.i64[0] = v6;
      v40.i64[1] = v5;
      *&v41 = v8;
      *(&v41 + 1) = v7;
      *&v42 = v9;
      *(&v42 + 1) = v10;
      *&v43 = v11;
      v35.i64[0] = v4 & 0xFFFFFFFFFFFFFFFDLL;
      sub_183F7D0CC(v35.i64, v46);
      sub_183F7D978(&v40);
      v18 = sub_183F814B4(v46, &qword_1EA854238, &qword_184398310);
      v19 = sub_183F7DA88(v18);
      if (v19)
      {
        v21 = v19;
        v22 = v20;
        while (1)
        {

          sub_183F78560(v31, v22 & 1, 0, &v35);
          v47 = v35;
          v48 = v36;
          v49 = v37;
          v50 = v38;
          if (sub_183F90F40(v21, v22 & 1))
          {
            sub_183F70628(&v47, &v35);
            v32 = sub_183F80ED0(&v45, &v47);
            result = sub_183F81130(&v47);
            v33 = *(v45 + 16);
            if (v33 < v32)
            {
              __break(1u);
              return result;
            }

            sub_183F80BE0(v32, v33, sub_183F7FF94, sub_183F80CCC);

            v25 = sub_183F81130(&v47);
          }

          else
          {
            v34 = v45;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_183F7FF94(0, *(v34 + 16) + 1, 1);
              v34 = v45;
            }

            v24 = *(v34 + 16);
            v23 = *(v34 + 24);
            if (v24 >= v23 >> 1)
            {
              sub_183F7FF94((v23 > 1), v24 + 1, 1);

              v34 = v45;
            }

            else
            {
            }

            *(v34 + 16) = v24 + 1;
            v26 = v34 + 56 * v24;
            v27 = v47;
            v28 = v48;
            v29 = v49;
            *(v26 + 80) = v50;
            *(v26 + 48) = v28;
            *(v26 + 64) = v29;
            *(v26 + 32) = v27;
          }

          v21 = sub_183F7DA88(v25);
          v22 = v30;
          if (!v21)
          {
            v17 = v45;
            break;
          }
        }
      }

      v37 = v42;
      v38 = v43;
      v39[0] = v44[0];
      *(v39 + 9) = *(v44 + 9);
      v35 = v40;
      v36 = v41;
      result = sub_183F814B4(&v35, &qword_1EA854230, &qword_184398308);
      *a2 = v17;
      v16 = 1;
    }

    else
    {
      v40.i64[0] = v6;
      v40.i64[1] = v5;
      *&v41 = v8;
      *(&v41 + 1) = v7;
      *&v42 = v9;
      *(&v42 + 1) = v10;
      *&v43 = v11;
      v47.i64[0] = v4;
      result = sub_183F7D0CC(v47.i64, &v35);
      v14 = v38;
      v15 = v36;
      *a2 = v35;
      *(a2 + 16) = v15;
      *(a2 + 32) = v37;
      *(a2 + 48) = v14;
      v16 = 2;
    }

    *(a2 + 56) = v16;
    return result;
  }

  *a2 = v6;
  *(a2 + 8) = v5;
  *(a2 + 16) = v8;
  *(a2 + 24) = v7;
  *(a2 + 32) = v9;
  *(a2 + 40) = v10;
  *(a2 + 48) = v11;
  *(a2 + 56) = 0;
}

uint64_t sub_183F7D978@<X0>(uint64_t a1@<X8>)
{
  v8 = *v1;
  v7 = v1[1];
  v9 = *(v1 + 48);
  if (*(v1 + 48))
  {
    v2 = v1[2];
    v10 = v1[3];
    if (v9 == 1)
    {
      v4 = v1[4];
      v3 = v1[5];
    }

    sub_18438FBE8();
    v11 = 0;
    v12 = 0;
    v14 = 1;
    v5 = v10 & 1;
  }

  else
  {
    v12 = v1[1] & 1;
    v11 = v8;
  }

  *a1 = v11;
  *(a1 + 8) = v12;
  *(a1 + 16) = v14;
  *(a1 + 24) = v8;
  *(a1 + 32) = v7;
  *(a1 + 40) = v2;
  *(a1 + 48) = 0;
  *(a1 + 56) = v5;
  *(a1 + 64) = result;
  *(a1 + 72) = v4;
  *(a1 + 80) = v3;
  *(a1 + 88) = v9;
  return result;
}

uint64_t sub_183F7DA88(uint64_t a1)
{
  v2 = *v1;
  if (*(v1 + 88))
  {
    if (*(v1 + 88) == 1)
    {
      v3 = v1[9];
      *&v9[9] = *(v1 + 9);
      *&v9[25] = *(v1 + 25);
      *&v9[41] = *(v1 + 41);
      *&v9[56] = *(v1 + 7);
      *v9 = *v1;
      v9[8] = *(v1 + 8);
      *&v9[72] = v3;
      v10 = v1[10];
      while (1)
      {
        sub_183F7E0C0();
        v2 = v4;
        if (!v4)
        {
          break;
        }

        *&v12[0] = v4;
        BYTE8(v12[0]) = v5 & 1;
        if (v3(v12))
        {
          break;
        }
      }

      *(v1 + 2) = *&v9[32];
      *(v1 + 3) = *&v9[48];
      *(v1 + 4) = *&v9[64];
      v1[10] = v10;
      *v1 = *v9;
      *(v1 + 1) = *&v9[16];
      v7 = 1;
    }

    else
    {
      *&v11[9] = *(v1 + 9);
      *&v11[25] = *(v1 + 25);
      *&v11[41] = *(v1 + 41);
      *&v11[56] = *(v1 + 7);
      *v11 = *v1;
      v11[8] = *(v1 + 8);
      sub_183F7E0C0();
      v2 = v6;
      *&v13 = *&v11[64];
      v12[2] = *&v11[32];
      v12[3] = *&v11[48];
      v12[0] = *v11;
      v12[1] = *&v11[16];
      *(v1 + 2) = *&v11[32];
      *(v1 + 3) = *&v11[48];
      v1[10] = v14;
      *v1 = *v11;
      *(v1 + 1) = *&v11[16];
      *(v1 + 4) = v13;
      v7 = 2;
    }

    *(v1 + 88) = v7;
  }

  else
  {
    *v1 = 0;
    *(v1 + 8) = 0;
    *(v1 + 88) = 0;
  }

  return v2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_183F7DCD4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = *v6;
  v9 = *(*v6 + 16);
  if (v9 < a2)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = result;
  v11 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = __OFSUB__(a4, v11);
  v14 = a4 - v11;
  if (v13)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v9 + v14;
  if (__OFADD__(v9, v14))
  {
LABEL_16:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if (!isUniquelyReferenced_nonNull_native || v15 > *(v8 + 24) >> 1)
  {
    a5();
  }

  return a6(v10, a2, a4, a3, a4);
}

unint64_t sub_183F7DDD8(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(*v2 + 16);
  if (v4 == result)
  {
    v5 = 0.0;
    return *&v5;
  }

  if (v4 <= result)
  {
    goto LABEL_18;
  }

  v17 = result;
  v18 = 0.0;
  v6 = v2[1];
  v7 = *v2 + 32;
  v8 = 1;
  v9 = result;
  v10 = v2[3];
  v16 = v10;
LABEL_5:
  v11 = v7 + 24 * v9;
  v12 = *(v11 + 16);
  v19 = *v11;
  v20 = v12;
  result = v10(&v21, &v19, a2, v3);
  if (v8)
  {
    v5 = v21;
    goto LABEL_8;
  }

  v5 = v18;
  if (v21 == v18)
  {
LABEL_8:
    while (1)
    {
      v13 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v13 == v4)
      {
        v9 = v4;
        goto LABEL_14;
      }

      if (v13 >= v4)
      {
        goto LABEL_17;
      }

      v14 = v7 + 24 * v13;
      v15 = *(v14 + 16);
      v19 = *v14;
      v20 = v15;
      result = v6(&v19);
      ++v9;
      if (result)
      {
        v18 = v5;
        v8 = 0;
        v9 = v13;
        v10 = v16;
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_14:
  if (v9 >= v17)
  {
    return *&v5;
  }

LABEL_19:
  __break(1u);
  return result;
}

void *sub_183F7DF30(void *result)
{
  v2 = result;
  v3 = v1[1];
  if (v3 == result)
  {
    return 0;
  }

  v4 = v1[2];
  v5 = result + v4;
  if (__OFADD__(result, v4))
  {
    goto LABEL_18;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (HIDWORD(v5))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return result;
  }

  v6 = v1[3];
  v7 = v1[5];
  v8 = *v1;
  v13 = *(*v1 + 8 * result);
  v14 = result + v4;
  v6(&v15, &v13);
  v13 = v15;
  v14 = v16;
  v7(&v17, &v13);
  result = v17;
  v9 = v2 + 1;
  if ((v2 + 1) != v3)
  {
    v12 = v17;
    v10 = *&v17;
    while (1)
    {
      v11 = v9 + v4;
      if (__OFADD__(v9, v4))
      {
        break;
      }

      if ((v11 & 0x8000000000000000) != 0)
      {
        goto LABEL_19;
      }

      if (HIDWORD(v11))
      {
        goto LABEL_20;
      }

      v13 = *(v8 + 8 * v9);
      v14 = v9 + v4;
      v6(&v15, &v13);
      v13 = v15;
      v14 = v16;
      result = (v7)(&v17, &v13);
      if (*&v17 != v10)
      {
        goto LABEL_15;
      }

      if (v3 == ++v9)
      {
        v9 = v3;
LABEL_15:
        result = v12;
        goto LABEL_16;
      }
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v9 = v3;
LABEL_16:
  if (v9 < v2)
  {
    goto LABEL_21;
  }

  return result;
}

void sub_183F7E0C0()
{
  while (1)
  {
    while (1)
    {
      v140 = *(v0 + 16);
      v1 = v0;
      if (v140 != 1)
      {
        break;
      }

      v2 = v0[3];
      v3 = v0;
      v4 = *(v2 + 16);
      v5 = v0[6];
      if (v5 == v4)
      {
        return;
      }

      sub_183FAAC50(v3[6], v2, v3[4], v3[5], v160);
      if (v5 >= v4)
      {
        goto LABEL_247;
      }

      v7 = v160[4];
      v6 = v160[5];
      v8 = v160[3];
      v3[6] = v5 + 1;
      v147 = v160[1];
      v149 = v160[0];
      v9 = v6 >> 1;
      sub_183F81520(v160, &v155, &qword_1EA854298, &qword_184398518);
      v10 = v3;
      if (v7 != v9)
      {
        v73 = -1;
        do
        {
          if (v7 >= v9)
          {
            goto LABEL_222;
          }

          if (v7 + 1 == v9)
          {
            break;
          }

          if (v7 + 1 >= v9)
          {
            goto LABEL_223;
          }

          v74 = *(v8 + 8 * v7);
          v75 = *(v8 + 8 * (v7 + 1));
          *&v166 = v147;
          *(&v166 + 1) = v74;
          *&v167 = v149;
          BYTE8(v167) = 0;
          v168 = v74;
          v76 = v10[8];
          v77 = v76[3];
          if (v73 == -1)
          {
            if (v77 >= 2)
            {
              v79 = 0;
              v86 = v76[3];
              while (1)
              {
                v87 = v79 + (v86 >> 1);
                if (__OFADD__(v79, v86 >> 1))
                {
                  goto LABEL_215;
                }

                if (v87 < 0)
                {
                  goto LABEL_216;
                }

                if (v87 >= v77)
                {
                  goto LABEL_217;
                }

                v88 = v76[4] + v87;
                v89 = v76[2];
                if (v88 < v89)
                {
                  v89 = 0;
                }

                if (*&v76[5 * (v88 - v89) + 9] < v74)
                {
                  v79 += v86 >> 1;
                }

                v86 -= v86 >> 1;
                if (v86 <= 1)
                {
                  if (v79 >= v77)
                  {
                    goto LABEL_117;
                  }

                  if ((v79 & 0x8000000000000000) == 0)
                  {
                    goto LABEL_113;
                  }

                  goto LABEL_248;
                }
              }
            }

            v79 = 0;
            if (v77 != 1)
            {
              goto LABEL_136;
            }

LABEL_113:
            v90 = v76[4] + v79;
            v91 = v76[2];
            if (v90 < v91)
            {
              v91 = 0;
            }

            if (*&v76[5 * (v90 - v91) + 9] < v74)
            {
              ++v79;
            }
          }

          else
          {
            v78 = v77 - v73;
            if (v77 < v73)
            {
              goto LABEL_230;
            }

            if (v73 < 0)
            {
              goto LABEL_231;
            }

            v79 = v73;
            if (v78 >= 2)
            {
              v79 = v73;
              while (1)
              {
                v80 = v79 + (v78 >> 1);
                if (__OFADD__(v79, v78 >> 1))
                {
                  break;
                }

                if (v80 < v73 || v80 >= v77)
                {
                  goto LABEL_214;
                }

                v82 = v76[4] + v80;
                v83 = v76[2];
                if (v82 < v83)
                {
                  v83 = 0;
                }

                if (*&v76[5 * (v82 - v83) + 9] < v74)
                {
                  v79 += v78 >> 1;
                }

                v78 -= v78 >> 1;
                if (v78 <= 1)
                {
                  goto LABEL_93;
                }
              }

              __break(1u);
LABEL_214:
              __break(1u);
LABEL_215:
              __break(1u);
LABEL_216:
              __break(1u);
LABEL_217:
              __break(1u);
              goto LABEL_218;
            }

LABEL_93:
            if (v79 < v77)
            {
              if (v79 < v73)
              {
                goto LABEL_244;
              }

              v84 = v76[4] + v79;
              v85 = v76[2];
              if (v84 < v85)
              {
                v85 = 0;
              }

              if (*&v76[5 * (v84 - v85) + 9] < v74)
              {
                ++v79;
              }
            }
          }

LABEL_117:
          if ((v79 & 0x8000000000000001) == 1 && v79 < v77)
          {
            v93 = v76[4];
            v94 = v76[2];
            if (v93 + v79 >= v94)
            {
              v95 = v76[2];
            }

            else
            {
              v95 = 0;
            }

            if (*&v76[5 * (v93 + v79 - v95) + 9] == v74)
            {
              v96 = v79 + v93 - 1;
              if (v96 < v94)
              {
                v94 = 0;
              }

              v97 = &v76[5 * (v96 - v94) + 5];
              if (*(v97 + 24))
              {
                v98 = *v97 ^ *(v10 + 56);
LABEL_134:
                if ((v98 & 1) == 0)
                {
                  goto LABEL_136;
                }

LABEL_135:
                ++v79;
                goto LABEL_136;
              }

              v98 = *(v10 + 56);
              if (*(v97 + 16) >= *v97)
              {
                goto LABEL_134;
              }

              if ((v10[7] & 1) == 0)
              {
                goto LABEL_135;
              }
            }
          }

          else if (v79 < 0)
          {
            goto LABEL_221;
          }

LABEL_136:
          if (v77 < v79)
          {
            goto LABEL_224;
          }

          v99 = v77 + 1;
          if (__OFADD__(v77, 1))
          {
            goto LABEL_225;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v101 = v10[8];
          if (v101[2] >= v99 && (isUniquelyReferenced_nonNull_native & 1) != 0)
          {
            v102 = v101 + 5;
            if (!v79)
            {
              goto LABEL_144;
            }
          }

          else
          {
            sub_183FCAAA0(isUniquelyReferenced_nonNull_native, v99, 0);
            v101 = v10[8];
            v102 = v101 + 5;
            if (!v79)
            {
LABEL_144:
              v103 = v101[4];
              if (v103)
              {
                v43 = __OFSUB__(v103, 1);
                v104 = v103 - 1;
                if (v43)
                {
                  goto LABEL_245;
                }
              }

              else
              {
                v107 = v101[2];
                v43 = __OFSUB__(v107, 1);
                v104 = v107 - 1;
                if (v43)
                {
                  goto LABEL_254;
                }
              }

              v108 = &v102[5 * v104];
              *(v108 + 4) = v168;
              v109 = v167;
              *v108 = v166;
              *(v108 + 1) = v109;
              v101[4] = v104;
              v110 = v101[3];
              v43 = __OFADD__(v110, 1);
              v111 = v110 + 1;
              if (v43)
              {
                goto LABEL_242;
              }

              v101[3] = v111;
              goto LABEL_153;
            }
          }

          if (v79 == v101[3])
          {
            sub_183FCAF70(&v166, v101 + 2, v102);
LABEL_153:

            goto LABEL_154;
          }

          sub_183FCBACC(&v161, v102, 1uLL, v79, v101 + 2);
          v105 = v161;
          if (!v161)
          {
            goto LABEL_259;
          }

          v106 = v167;
          *v161 = v166;
          *(v105 + 1) = v106;
          v105[4] = v168;
LABEL_154:

          *&v163 = v149;
          *(&v163 + 1) = v75;
          *&v164 = v147;
          BYTE8(v164) = 0;
          v165 = v75;
          v112 = v101[3];
          v113 = v112 - v79;
          if (v112 < v79)
          {
            goto LABEL_226;
          }

          v73 = v79;
          if (v113 >= 2)
          {
            v73 = v79;
            while (1)
            {
              v114 = v73 + (v113 >> 1);
              if (__OFADD__(v73, v113 >> 1))
              {
                break;
              }

              if (v114 < v79 || v114 >= v112)
              {
                goto LABEL_211;
              }

              v116 = v101[4] + v114;
              v117 = v101[2];
              if (v116 < v117)
              {
                v117 = 0;
              }

              if (*&v102[5 * (v116 - v117) + 4] < v75)
              {
                v73 += v113 >> 1;
              }

              v113 -= v113 >> 1;
              if (v113 <= 1)
              {
                goto LABEL_168;
              }
            }

            __break(1u);
LABEL_211:
            __break(1u);
            return;
          }

LABEL_168:
          if (v73 < v112)
          {
            if (v73 < v79)
            {
              goto LABEL_241;
            }

            v118 = v101[4] + v73;
            v119 = v101[2];
            if (v118 < v119)
            {
              v119 = 0;
            }

            if (*&v102[5 * (v118 - v119) + 4] < v75)
            {
              ++v73;
            }
          }

          if (v73 < v112 && (v73 & 0x8000000000000001) == 1)
          {
            v121 = v101[4];
            v122 = v101[2];
            if (v121 + v73 >= v122)
            {
              v123 = v101[2];
            }

            else
            {
              v123 = 0;
            }

            if (*&v102[5 * (v121 + v73 - v123) + 4] == v75)
            {
              v124 = v73 + v121 - 1;
              if (v124 < v122)
              {
                v122 = 0;
              }

              v125 = &v102[5 * (v124 - v122)];
              if (v125[3])
              {
                v126 = *v125 ^ *(v10 + 56);
LABEL_191:
                if ((v126 & 1) == 0)
                {
                  goto LABEL_193;
                }

LABEL_192:
                ++v73;
                goto LABEL_193;
              }

              v126 = *(v10 + 56);
              if (*(v125 + 2) >= *v125)
              {
                goto LABEL_191;
              }

              if ((v10[7] & 1) == 0)
              {
                goto LABEL_192;
              }
            }
          }

          else if (v73 < 0)
          {
            goto LABEL_227;
          }

LABEL_193:
          if (v112 < v73)
          {
            goto LABEL_228;
          }

          v127 = v112 + 1;
          if (__OFADD__(v112, 1))
          {
            goto LABEL_229;
          }

          v128 = swift_isUniquelyReferenced_nonNull_native();
          v129 = v10[8];
          if (v129[2] >= v127 && (v128 & 1) != 0)
          {
            v130 = v129 + 5;
            if (!v73)
            {
              goto LABEL_202;
            }
          }

          else
          {
            sub_183FCAAA0(v128, v127, 0);
            v129 = v10[8];
            v130 = v129 + 5;
            if (!v73)
            {
LABEL_202:
              v133 = v129[4];
              if (v133)
              {
                v43 = __OFSUB__(v133, 1);
                v134 = v133 - 1;
                if (v43)
                {
                  goto LABEL_246;
                }
              }

              else
              {
                v135 = v129[2];
                v43 = __OFSUB__(v135, 1);
                v134 = v135 - 1;
                if (v43)
                {
                  goto LABEL_255;
                }
              }

              v136 = &v130[5 * v134];
              *(v136 + 4) = v165;
              v137 = v164;
              *v136 = v163;
              *(v136 + 1) = v137;
              v129[4] = v134;
              v138 = v129[3];
              v43 = __OFADD__(v138, 1);
              v139 = v138 + 1;
              if (v43)
              {
                goto LABEL_243;
              }

              v129[3] = v139;
              goto LABEL_72;
            }
          }

          if (v73 == v129[3])
          {
            sub_183FCAF70(&v163, v129 + 2, v130);
LABEL_72:

            goto LABEL_73;
          }

          sub_183FCBACC(&v162, v130, 1uLL, v73, v129 + 2);
          v131 = v162;
          if (!v162)
          {
            goto LABEL_260;
          }

          v132 = v164;
          *v162 = v163;
          *(v131 + 1) = v132;
          v131[4] = v165;
LABEL_73:
          v7 += 2;
        }

        while (v7 != v9);
      }

      v0 = v10;
      v11 = *(v10[8] + 24);
      sub_183F814B4(v160, &qword_1EA854298, &qword_184398518);
      if (v11 >= 1)
      {
        *v0 = 0;
        v0[1] = v11;
        v1 = v0;
        goto LABEL_3;
      }
    }

    v12 = *v0;
    v13 = v0[1];
    v14 = *v0;
    v141 = v13;
    v142 = *v0;
    if (*v0 < v13)
    {
      do
      {
        if (v12 < 0)
        {
LABEL_218:
          __break(1u);
LABEL_219:
          __break(1u);
LABEL_220:
          __break(1u);
LABEL_221:
          __break(1u);
LABEL_222:
          __break(1u);
LABEL_223:
          __break(1u);
LABEL_224:
          __break(1u);
LABEL_225:
          __break(1u);
LABEL_226:
          __break(1u);
LABEL_227:
          __break(1u);
LABEL_228:
          __break(1u);
LABEL_229:
          __break(1u);
LABEL_230:
          __break(1u);
LABEL_231:
          __break(1u);
LABEL_232:
          __break(1u);
LABEL_233:
          __break(1u);
LABEL_234:
          __break(1u);
LABEL_235:
          __break(1u);
LABEL_236:
          __break(1u);
LABEL_237:
          __break(1u);
LABEL_238:
          __break(1u);
LABEL_239:
          __break(1u);
LABEL_240:
          __break(1u);
LABEL_241:
          __break(1u);
LABEL_242:
          __break(1u);
LABEL_243:
          __break(1u);
LABEL_244:
          __break(1u);
LABEL_245:
          __break(1u);
LABEL_246:
          __break(1u);
LABEL_247:
          __break(1u);
LABEL_248:
          __break(1u);
LABEL_249:
          __break(1u);
LABEL_250:
          __break(1u);
LABEL_251:
          __break(1u);
LABEL_252:
          __break(1u);
          goto LABEL_253;
        }

        v15 = v1[8];
        v16 = v15[3];
        if (v14 >= v16)
        {
          goto LABEL_219;
        }

        v17 = v15[4];
        v18 = v14 + v17;
        v19 = v15[2];
        if (v14 + v17 >= v19)
        {
          v20 = v15[2];
        }

        else
        {
          v20 = 0;
        }

        v21 = &v15[5 * v14 + 5 + 5 * (v17 - v20)];
        v22 = *(v21 + 32);
        v23 = *(v21 + 16);
        v169[0] = *v21;
        v169[1] = v23;
        v170 = v22;
        v24 = v14 + 1;
        if (v14 + 1 >= v16)
        {
          goto LABEL_220;
        }

        if (v18 + 1 >= v19)
        {
          v25 = v19;
        }

        else
        {
          v25 = 0;
        }

        v26 = &v15[5 * (v18 - v25) + 5];
        v27 = *(v26 + 40);
        v28 = *(v26 + 56);
        v172 = *(v26 + 72);
        v171[0] = v27;
        v171[1] = v28;
        sub_183F813A0(v169, v153);
        sub_183F813A0(v171, v153);
        sub_183FB9B44(v169, v171, v153);
        v157 = v153[2];
        v158 = v153[3];
        *v159 = v154[0];
        *&v159[9] = *(v154 + 9);
        v155 = v153[0];
        v156 = v153[1];
        sub_183F813FC(v169);
        sub_183F813FC(v171);
        v29 = *&v159[16];
        v30 = v155;
        v31 = v156;
        v32 = BYTE8(v156);
        v33 = v159[7] >> 6;
        if (v33)
        {
          if (v33 != 1)
          {
            goto LABEL_64;
          }

          v34 = v15[3];
          v35 = v34 + 1;
          if (__OFADD__(v34, 1))
          {
            goto LABEL_232;
          }

          v148 = *&v159[16];
          v150 = v157;
          v145 = v158;
          v146 = *(&v157 + 1);
          v144 = *(&v158 + 1);
          v143 = v159[0];
          v36 = *&v159[8];
          v37 = swift_isUniquelyReferenced_nonNull_native();
          v38 = v152[8];
          if (v38[2] < v35 || (v37 & 1) == 0)
          {
            sub_183FCAAA0(v37, v35, 0);
            v38 = v152[8];
            v12 = v142;
          }

          v39 = v38[3];
          v40 = v38[4];
          v43 = __OFADD__(v40, v39);
          v41 = v40 + v39;
          if (v43)
          {
            goto LABEL_235;
          }

          if (v39 < 0)
          {
            if (v41 < 0)
            {
              v55 = v38[2];
              v43 = __OFADD__(v41, v55);
              v41 += v55;
              if (v43)
              {
                goto LABEL_256;
              }
            }
          }

          else
          {
            v42 = v38[2];
            v43 = __OFSUB__(v41, v42);
            v44 = v41 - v42;
            if (v44 < 0 == v43)
            {
              v41 = v44;
              if (v43)
              {
                goto LABEL_249;
              }
            }
          }

          v56 = &v38[5 * v41];
          *(v56 + 5) = v30;
          v56[7] = v31;
          *(v56 + 64) = v32 & 1;
          v56[9] = v150;
          v43 = __OFADD__(v39, 1);
          v57 = v39 + 1;
          if (v43)
          {
            goto LABEL_237;
          }

          v38[3] = v57;
          v58 = v57 + 1;
          if (__OFADD__(v57, 1))
          {
            goto LABEL_238;
          }

          sub_183F81450(v30, *(&v30 + 1), v31, v32 & 1);
          v59 = swift_isUniquelyReferenced_nonNull_native();
          v60 = v152[8];
          if (v60[2] < v58 || (v59 & 1) == 0)
          {
            sub_183FCAAA0(v59, v58, 0);
            v60 = v152[8];
          }

          v61 = v60[3];
          v62 = v60[4];
          v43 = __OFADD__(v62, v61);
          v63 = v62 + v61;
          if (v43)
          {
            goto LABEL_239;
          }

          if (v61 < 0)
          {
            v13 = v141;
            if (v63 < 0)
            {
              v70 = v60[2];
              v43 = __OFADD__(v63, v70);
              v63 += v70;
              if (v43)
              {
                goto LABEL_258;
              }
            }
          }

          else
          {
            v64 = v60[2];
            v65 = __OFSUB__(v63, v64);
            v66 = v63 - v64;
            v13 = v141;
            if (v66 < 0 == v65)
            {
              v63 = v66;
              if (v65)
              {
                goto LABEL_251;
              }
            }
          }

          v71 = &v60[5 * v63];
          v71[5] = v146;
          v71[6] = v145;
          v71[7] = v144;
          *(v71 + 64) = v143 & 1;
          v71[9] = v36;
          v43 = __OFADD__(v61, 1);
          v72 = v61 + 1;
          if (v43)
          {
            goto LABEL_240;
          }

          v60[3] = v72;
          sub_183F81450(v146, v145, v144, v143 & 1);
        }

        else
        {
          v45 = v15[3];
          v46 = v45 + 1;
          if (__OFADD__(v45, 1))
          {
            goto LABEL_233;
          }

          v148 = *&v159[16];
          v151 = v157;
          sub_183F81450(v155, *(&v155 + 1), v156, BYTE8(v156) & 1);
          v47 = swift_isUniquelyReferenced_nonNull_native();
          v48 = v152[8];
          if (v48[2] < v46 || (v47 & 1) == 0)
          {
            sub_183FCAAA0(v47, v46, 0);
            v48 = v152[8];
            v13 = v141;
          }

          v49 = v48[3];
          v50 = v48[4];
          v43 = __OFADD__(v50, v49);
          v51 = v50 + v49;
          if (v43)
          {
            goto LABEL_234;
          }

          if (v49 < 0)
          {
            v12 = v142;
            if (v51 < 0)
            {
              v67 = v48[2];
              v43 = __OFADD__(v51, v67);
              v51 += v67;
              if (v43)
              {
                goto LABEL_257;
              }
            }
          }

          else
          {
            v52 = v48[2];
            v53 = __OFSUB__(v51, v52);
            v54 = v51 - v52;
            v12 = v142;
            if (v54 < 0 == v53)
            {
              v51 = v54;
              if (v53)
              {
                goto LABEL_250;
              }
            }
          }

          v68 = &v48[5 * v51];
          *(v68 + 5) = v30;
          v68[7] = v31;
          *(v68 + 64) = v32 & 1;
          v68[9] = v151;
          v43 = __OFADD__(v49, 1);
          v69 = v49 + 1;
          if (v43)
          {
            goto LABEL_236;
          }

          v48[3] = v69;
        }

        sub_183F81460(&v155);
        v29 = v148;
LABEL_64:
        if (v29)
        {
          *v152 = v14 + 2;
          v152[1] = v13;
          *(v152 + 16) = 0;
          return;
        }

        v14 += 2;
        v1 = v152;
      }

      while (v24 + 1 < v13);
    }

    if (v13 < 0)
    {
      goto LABEL_252;
    }

    if (*(v1[8] + 24) < v13)
    {
      break;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_183FCAD08();
    }

    sub_183FCB45C(0, v13, (v1[8] + 16), (v1[8] + 40));
    *v1 = 0;
    v1[1] = 0;
LABEL_3:
    *(v1 + 16) = v140 ^ 1;
    v0 = v1;
  }

LABEL_253:
  __break(1u);
LABEL_254:
  __break(1u);
LABEL_255:
  __break(1u);
LABEL_256:
  __break(1u);
LABEL_257:
  __break(1u);
LABEL_258:
  __break(1u);
LABEL_259:
  __break(1u);
LABEL_260:
  __break(1u);
}

uint64_t sub_183F7EC4C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_183F80854(v2);
  }

  v3 = *(v2 + 2);
  v19[0] = (v2 + 32);
  v19[1] = v3;
  result = sub_1843901A8();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 40;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[24 * i + 40];
        v12 = v9;
        v13 = v8;
        do
        {
          if (v11 >= *v13)
          {
            break;
          }

          v14 = *(v13 + 2);
          v15 = *(v13 + 4);
          *(v13 + 1) = *(v13 - 8);
          *(v13 + 4) = *(v13 + 1);
          *(v13 - 1) = v14;
          *v13 = v11;
          *(v13 + 1) = v15;
          v13 -= 24;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 24;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_18438FDC8();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v17[0] = v7 + 32;
    v17[1] = v6;
    sub_183F7EEE8(v17, v18, v19, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_183F7EDB0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_183F80868(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1843901A8();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          v13[1] = v14;
          --v13;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_18438FDC8();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_183F7F4B0(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_183F7EEE8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v92 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v93 = *v92;
    if (!*v92)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_183F7FE3C(v7);
      v7 = result;
    }

    v84 = (v7 + 16);
    v85 = *(v7 + 16);
    if (v85 >= 2)
    {
      while (*a3)
      {
        v86 = (v7 + 16 * v85);
        v87 = *v86;
        v88 = &v84[2 * v85];
        v89 = v88[1];
        sub_183F7FA0C((*a3 + 24 * *v86), (*a3 + 24 * *v88), *a3 + 24 * v89, v93);
        if (v4)
        {
        }

        if (v89 < v87)
        {
          goto LABEL_114;
        }

        if (v85 - 2 >= *v84)
        {
          goto LABEL_115;
        }

        *v86 = v87;
        v86[1] = v89;
        v90 = *v84 - v85;
        if (*v84 < v85)
        {
          goto LABEL_116;
        }

        v85 = *v84 - 1;
        result = memmove(v88, v88 + 2, 16 * v90);
        *v84 = v85;
        if (v85 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  v91 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 24 * v6 + 8);
      v10 = 24 * v8;
      v11 = *a3 + 24 * v8;
      v12 = *(v11 + 8);
      v13 = v8 + 2;
      v14 = (v11 + 56);
      v15 = v9;
      while (v5 != v13)
      {
        v16 = *v14;
        v14 += 3;
        v17 = v16 >= v15;
        ++v13;
        v15 = v16;
        if ((((v9 < v12) ^ v17) & 1) == 0)
        {
          v6 = v13 - 1;
          if (v9 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v18 = 0;
        v19 = 24 * v6;
        v20 = v8;
        do
        {
          if (v20 != v6 + v18 - 1)
          {
            v26 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v21 = (v26 + v10);
            v22 = v26 + v19;
            v23 = *(v21 + 2);
            v24 = *v21;
            v25 = *(v22 - 8);
            *v21 = *(v22 - 24);
            *(v21 + 2) = v25;
            *(v22 - 24) = v24;
            *(v22 - 8) = v23;
          }

          ++v20;
          --v18;
          v19 -= 24;
          v10 += 24;
        }

        while (v20 < v6 + v18);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_183F7FE50(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v37 = *(v7 + 16);
    v36 = *(v7 + 24);
    v38 = v37 + 1;
    if (v37 >= v36 >> 1)
    {
      result = sub_183F7FE50((v36 > 1), v37 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v38;
    v39 = v7 + 32;
    v40 = (v7 + 32 + 16 * v37);
    *v40 = v8;
    v40[1] = v6;
    v93 = *v92;
    if (!*v92)
    {
      goto LABEL_127;
    }

    if (v37)
    {
      while (1)
      {
        v41 = v38 - 1;
        if (v38 >= 4)
        {
          break;
        }

        if (v38 == 3)
        {
          v42 = *(v7 + 32);
          v43 = *(v7 + 40);
          v52 = __OFSUB__(v43, v42);
          v44 = v43 - v42;
          v45 = v52;
LABEL_57:
          if (v45)
          {
            goto LABEL_104;
          }

          v58 = (v7 + 16 * v38);
          v60 = *v58;
          v59 = v58[1];
          v61 = __OFSUB__(v59, v60);
          v62 = v59 - v60;
          v63 = v61;
          if (v61)
          {
            goto LABEL_106;
          }

          v64 = (v39 + 16 * v41);
          v66 = *v64;
          v65 = v64[1];
          v52 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v52)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v62, v67))
          {
            goto LABEL_111;
          }

          if (v62 + v67 >= v44)
          {
            if (v44 < v67)
            {
              v41 = v38 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v38 < 2)
        {
          goto LABEL_112;
        }

        v68 = (v7 + 16 * v38);
        v70 = *v68;
        v69 = v68[1];
        v52 = __OFSUB__(v69, v70);
        v62 = v69 - v70;
        v63 = v52;
LABEL_72:
        if (v63)
        {
          goto LABEL_108;
        }

        v71 = (v39 + 16 * v41);
        v73 = *v71;
        v72 = v71[1];
        v52 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v52)
        {
          goto LABEL_110;
        }

        if (v74 < v62)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v41 - 1 >= v38)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
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
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v79 = (v39 + 16 * (v41 - 1));
        v80 = *v79;
        v81 = (v39 + 16 * v41);
        v82 = v81[1];
        sub_183F7FA0C((*a3 + 24 * *v79), (*a3 + 24 * *v81), *a3 + 24 * v82, v93);
        if (v4)
        {
        }

        if (v82 < v80)
        {
          goto LABEL_99;
        }

        if (v41 > *(v7 + 16))
        {
          goto LABEL_100;
        }

        *v79 = v80;
        v79[1] = v82;
        v83 = *(v7 + 16);
        if (v41 >= v83)
        {
          goto LABEL_101;
        }

        v38 = v83 - 1;
        result = memmove((v39 + 16 * v41), v81 + 2, 16 * (v83 - 1 - v41));
        *(v7 + 16) = v83 - 1;
        if (v83 <= 2)
        {
          goto LABEL_3;
        }
      }

      v46 = v39 + 16 * v38;
      v47 = *(v46 - 64);
      v48 = *(v46 - 56);
      v52 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      if (v52)
      {
        goto LABEL_102;
      }

      v51 = *(v46 - 48);
      v50 = *(v46 - 40);
      v52 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      v45 = v52;
      if (v52)
      {
        goto LABEL_103;
      }

      v53 = (v7 + 16 * v38);
      v55 = *v53;
      v54 = v53[1];
      v52 = __OFSUB__(v54, v55);
      v56 = v54 - v55;
      if (v52)
      {
        goto LABEL_105;
      }

      v52 = __OFADD__(v44, v56);
      v57 = v44 + v56;
      if (v52)
      {
        goto LABEL_107;
      }

      if (v57 >= v49)
      {
        v75 = (v39 + 16 * v41);
        v77 = *v75;
        v76 = v75[1];
        v52 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v52)
        {
          goto LABEL_113;
        }

        if (v44 < v78)
        {
          v41 = v38 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v91;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v27 = *a3;
  v28 = *a3 + 24 * v6;
  v29 = v8 - v6;
LABEL_30:
  v30 = *(v27 + 24 * v6 + 8);
  v31 = v29;
  v32 = v28;
  while (1)
  {
    if (v30 >= *(v32 - 2))
    {
LABEL_29:
      ++v6;
      v28 += 24;
      --v29;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v27)
    {
      break;
    }

    v33 = *v32;
    v34 = *(v32 + 2);
    *v32 = *(v32 - 3);
    v32[2] = *(v32 - 1);
    *(v32 - 2) = v30;
    *(v32 - 1) = v34;
    *(v32 - 3) = v33;
    v32 -= 3;
    if (__CFADD__(v31++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_183F7F4B0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v84 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v84;
    if (!*v84)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_183F7FE3C(v8);
      v8 = result;
    }

    v76 = (v8 + 16);
    v77 = *(v8 + 16);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = (v8 + 16 * v77);
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        sub_183F7FC48((*a3 + 8 * *v78), (*a3 + 8 * *v80), (*a3 + 8 * v81), v5);
        if (v4)
        {
        }

        if (v81 < v79)
        {
          goto LABEL_114;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_115;
        }

        *v78 = v79;
        v78[1] = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_116;
        }

        v77 = *v76 - 1;
        result = memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v83 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = v14 >= v13;
        ++v12;
        v13 = v14;
        if ((((v10 < v11) ^ v15) & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = 8 * v7 - 8;
        v17 = 8 * v9;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = *(v21 + v17);
            *(v21 + v17) = *(v21 + v16);
            *(v21 + v16) = v20;
          }

          ++v19;
          v16 -= 8;
          v17 += 8;
        }

        while (v19 < v18);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_183F7FE50(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v30 = *(v8 + 24);
    v31 = v5 + 1;
    if (v5 >= v30 >> 1)
    {
      result = sub_183F7FE50((v30 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v31;
    v32 = v8 + 32;
    v33 = (v8 + 32 + 16 * v5);
    *v33 = v9;
    v33[1] = v7;
    v85 = *v84;
    if (!*v84)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v31 - 1;
        if (v31 >= 4)
        {
          break;
        }

        if (v31 == 3)
        {
          v34 = *(v8 + 32);
          v35 = *(v8 + 40);
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_57:
          if (v37)
          {
            goto LABEL_104;
          }

          v50 = (v8 + 16 * v31);
          v52 = *v50;
          v51 = v50[1];
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_106;
          }

          v56 = (v32 + 16 * v5);
          v58 = *v56;
          v57 = v56[1];
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_111;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v5 = v31 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v31 < 2)
        {
          goto LABEL_112;
        }

        v60 = (v8 + 16 * v31);
        v62 = *v60;
        v61 = v60[1];
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_72:
        if (v55)
        {
          goto LABEL_108;
        }

        v63 = (v32 + 16 * v5);
        v65 = *v63;
        v64 = v63[1];
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_110;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v31)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
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
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v71 = (v32 + 16 * (v5 - 1));
        v72 = *v71;
        v73 = (v32 + 16 * v5);
        v74 = v73[1];
        sub_183F7FC48((*a3 + 8 * *v71), (*a3 + 8 * *v73), (*a3 + 8 * v74), v85);
        if (v4)
        {
        }

        if (v74 < v72)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v71 = v72;
        v71[1] = v74;
        v75 = *(v8 + 16);
        if (v5 >= v75)
        {
          goto LABEL_101;
        }

        v31 = v75 - 1;
        result = memmove((v32 + 16 * v5), v73 + 2, 16 * (v75 - 1 - v5));
        *(v8 + 16) = v75 - 1;
        if (v75 <= 2)
        {
          goto LABEL_3;
        }
      }

      v38 = v32 + 16 * v31;
      v39 = *(v38 - 64);
      v40 = *(v38 - 56);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_102;
      }

      v43 = *(v38 - 48);
      v42 = *(v38 - 40);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_103;
      }

      v45 = (v8 + 16 * v31);
      v47 = *v45;
      v46 = v45[1];
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_105;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_107;
      }

      if (v49 >= v41)
      {
        v67 = (v32 + 16 * v5);
        v69 = *v67;
        v68 = v67[1];
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_113;
        }

        if (v36 < v70)
        {
          v5 = v31 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v83;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 8 * v7 - 8;
  v24 = v9 - v7;
LABEL_30:
  v25 = *(v22 + 8 * v7);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *v27;
    if (v25 >= *v27)
    {
LABEL_29:
      ++v7;
      v23 += 8;
      --v24;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v25;
    v27[1] = v28;
    --v27;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_183F7FA0C(double *__dst, double *__src, unint64_t a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[3 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[3 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (v6[1] < v4[1])
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 3;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 3;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 3;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    v7[2] = v13[2];
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[3 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[3 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_20:
    v5 -= 24;
    do
    {
      v16 = (v5 + 24);
      if (*(v12 - 2) < *(v6 - 2))
      {
        v19 = v6 - 3;
        if (v16 != v6)
        {
          v20 = *v19;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v20;
        }

        if (v12 <= v4 || (v6 -= 3, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v17 = v12 - 3;
      if (v16 != v12)
      {
        v18 = *v17;
        *(v5 + 16) = *(v12 - 1);
        *v5 = v18;
      }

      v5 -= 24;
      v12 -= 3;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_31:
  v21 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v22 = (v21 >> 2) + (v21 >> 63);
  if (v6 != v4 || v6 >= &v4[3 * v22])
  {
    memmove(v6, v4, 24 * v22);
  }

  return 1;
}

uint64_t sub_183F7FC48(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4++;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6++;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 1;
    --v5;
    v18 = v14;
    do
    {
      v19 = v5 + 1;
      v20 = *(v18 - 8);
      v18 -= 8;
      v21 = v20;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (--v6, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v21;
      }

      --v5;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v22 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

char *sub_183F7FE50(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA854290, &qword_184398510);
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

char *sub_183F7FF54(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_183F9BD98(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_183F7FF74(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_183F9BE9C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_183F7FF94(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_183F9BFA0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_183F7FFB4(unint64_t result, uint64_t a2, uint64_t a3, void *__src, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_21;
  }

  v7 = a3 - v6;
  if (__OFSUB__(a3, v6))
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v8 = *v5;
  v9 = (v8 + 32 + 4 * result);
  if (!v7)
  {
    goto LABEL_13;
  }

  v10 = *(v8 + 16);
  v11 = __OFSUB__(v10, a2);
  v12 = v10 - a2;
  if (v11)
  {
    goto LABEL_22;
  }

  result = v9 + 4 * a3;
  v13 = (v8 + 32 + 4 * a2);
  if (result != v13 || result >= v13 + 4 * v12)
  {
    v15 = a3;
    v16 = __src;
    v17 = a5;
    result = memmove(result, v13, 4 * v12);
    a5 = v17;
    a3 = v15;
    __src = v16;
  }

  v18 = *(v8 + 16);
  v11 = __OFADD__(v18, v7);
  v19 = v18 + v7;
  if (v11)
  {
    goto LABEL_23;
  }

  *(v8 + 16) = v19;
LABEL_13:
  if (a3 < 1)
  {
    return result;
  }

  if (a5 != a3)
  {
    goto LABEL_24;
  }

  if (!__src)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  v20 = 4 * a3;

  return memcpy(v9, __src, v20);
}

unint64_t sub_183F800B4(unint64_t result, uint64_t a2, uint64_t a3, void *__src, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_21;
  }

  v7 = a3 - v6;
  if (__OFSUB__(a3, v6))
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v8 = *v5;
  v9 = (v8 + 32 + 8 * result);
  if (!v7)
  {
    goto LABEL_13;
  }

  v10 = *(v8 + 16);
  v11 = __OFSUB__(v10, a2);
  v12 = v10 - a2;
  if (v11)
  {
    goto LABEL_22;
  }

  result = v9 + 8 * a3;
  v13 = (v8 + 32 + 8 * a2);
  if (result != v13 || result >= v13 + 8 * v12)
  {
    v15 = a3;
    v16 = __src;
    v17 = a5;
    result = memmove(result, v13, 8 * v12);
    a5 = v17;
    a3 = v15;
    __src = v16;
  }

  v18 = *(v8 + 16);
  v11 = __OFADD__(v18, v7);
  v19 = v18 + v7;
  if (v11)
  {
    goto LABEL_23;
  }

  *(v8 + 16) = v19;
LABEL_13:
  if (a3 < 1)
  {
    return result;
  }

  if (a5 != a3)
  {
    goto LABEL_24;
  }

  if (!__src)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  v20 = 8 * a3;

  return memcpy(v9, __src, v20);
}

void *sub_183F801B4(void *result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v30 = *result;
  v27 = *(*result + 16);
  if (!v27)
  {
    return result;
  }

  v16 = 0;
  v26 = result[1];
  while (v16 < *(v30 + 16))
  {
    *&v31[0] = *(v30 + 32 + 8 * v16);
    result = v26(&v32, v31, a2, a3);
    *&v41[64] = v36;
    *&v41[80] = v37;
    *&v41[96] = v38;
    *&v41[112] = v39;
    *v41 = v32;
    *&v41[16] = v33;
    *&v41[32] = v34;
    *&v41[48] = v35;
    v17 = a5 - *a4;
    if (a5 < *a4)
    {
      goto LABEL_27;
    }

    if (a2)
    {
      v18 = a2 + 8 * *a4;
    }

    else
    {
      v18 = 0;
    }

    v46 = *&v41[72];
    v47 = *&v41[88];
    v48 = *&v41[104];
    v42 = *&v41[8];
    v43 = *&v41[24];
    v44 = *&v41[40];
    v45 = *&v41[56];
    sub_183F81520(&v41[8], v31, &qword_1EA8542A0, &qword_184398520);
    v19 = sub_183FAA154(v31, v18, v17);
    v38 = v31[6];
    v39 = v31[7];
    v40 = v31[8];
    v34 = v31[2];
    v35 = v31[3];
    v36 = v31[4];
    v37 = v31[5];
    v32 = v31[0];
    v33 = v31[1];
    result = sub_183F814B4(&v32, &qword_1EA854288, &qword_184398508);
    if (a6)
    {
      if (v19 < 0)
      {
        goto LABEL_33;
      }

      if (*(a7 + 8) == v19)
      {
        if (!v19)
        {
LABEL_3:
          result = sub_183F814B4(v41, &qword_1EA854278, &qword_184398500);
          goto LABEL_4;
        }

        v20 = *a7;
        v21 = v19;
        v22 = v18;
        while (*v20 == *v22)
        {
          ++v22;
          ++v20;
          if (!--v21)
          {
            goto LABEL_3;
          }
        }
      }

      *a7 = v18;
      *(a7 + 8) = v19;
    }

    if (__OFADD__(*a4, v19))
    {
      goto LABEL_28;
    }

    v23 = *v41;
    *a4 += v19;
    *(a8 + 8 * *a10) = v23;
    v24 = a13 + *a4;
    if (__OFADD__(a13, *a4))
    {
      goto LABEL_29;
    }

    if ((v24 & 0x8000000000000000) != 0)
    {
      goto LABEL_30;
    }

    if (HIDWORD(v24))
    {
      goto LABEL_31;
    }

    *(a11 + 4 * *a10) = v24;
    result = sub_183F814B4(v41, &qword_1EA854278, &qword_184398500);
    if (__OFADD__(*a10, 1))
    {
      goto LABEL_32;
    }

    ++*a10;
LABEL_4:
    if (++v16 == v27)
    {
      return result;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_183F80470()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = v2 - 1;
  if (__OFSUB__(v2, 1))
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v4 = *(v0 + 2);
  if (v4 == v3)
  {
    return 0;
  }

  if (v4 < 0)
  {
    goto LABEL_20;
  }

  if (v4 >= v2)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v6 = *(v1 + 32);
  v7 = *(v1 + 16);
  if (v6 + v4 >= v7)
  {
    v8 = *(v1 + 16);
  }

  else
  {
    v8 = 0;
  }

  v9 = v4 + 1;
  if (v4 + 1 >= v2)
  {
    goto LABEL_22;
  }

  if (v4 >= v3)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v10 = v0[8];
  v11 = v1 + 40;
  v12 = *(v11 + 8 * (v6 + v4 - v8));
  v13 = v6 + v9;
  if (v13 < v7)
  {
    v7 = 0;
  }

  v14 = *(v11 + 8 * (v13 - v7));
  if ((v4 ^ v10))
  {
    v15 = *(v11 + 8 * (v13 - v7));
  }

  else
  {
    v15 = v12;
  }

  *(v0 + 2) = v9;
  v16 = *(v0 + 3);
  if (((v4 ^ v10) & 1) == 0)
  {
    v12 = v14;
  }

  *v18 = v12;
  *&v18[1] = v15;
  v16(&v17, v18);
  return v17;
}

void sub_183F80564(uint64_t a1@<X8>)
{
  v2 = *(*v1 + 16);
  v4 = v1[7];
  v3 = v1[8];
  v29 = v2;
  if (v4 == v2 && v3 == v2)
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v27 = 1;
LABEL_34:
    *a1 = v21;
    *(a1 + 8) = v22;
    *(a1 + 16) = v23;
    *(a1 + 24) = v24;
    *(a1 + 32) = v25;
    *(a1 + 40) = v27 & 1;
  }

  else
  {
    v28 = a1;
    while ((v1[6] & 1) == 0)
    {
      if ((v4 & 0x8000000000000000) != 0)
      {
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        break;
      }

      v6 = *v1;
      v7 = *(*v1 + 16);
      if (v7 < v4 || v7 < v3)
      {
        goto LABEL_37;
      }

      if (v3 < 0)
      {
        goto LABEL_38;
      }

      v32 = v1[5];
      v10 = v1[1];
      v9 = v1[2];
      v39[5] = *v1;
      v39[6] = v10;
      v39[7] = v9;
      v40 = *(v1 + 3);

      v1[5] = sub_183F7DDD8(v3, v11);
      *(v1 + 48) = v12 & 1;
      v1[7] = v13;
      v1[8] = v14;
      v30 = v1[13];
      v33 = v30;
      v34 = v6 + 48;
      v15 = v4;
      v31 = v1[12];
      v35 = v31;
      while (v15 != v3)
      {
        v16 = (v34 + 24 * v15);
        v17 = v15;
        while (1)
        {
          if (v15 < v4 || v17 >= v3)
          {
            __break(1u);
            goto LABEL_36;
          }

          v18 = *v16;
          v19 = v17 + 1;
          v36 = *(v16 - 1);
          v37 = v36;
          v38 = v18;
          if (v10(&v37))
          {
            break;
          }

          v16 += 3;
          ++v17;
          if (v3 == v19)
          {
            goto LABEL_28;
          }
        }

        if (v18 < *&v36)
        {
          v15 = v17 + 1;
          v20 = __OFADD__(v33++, 1);
          if (v20)
          {
            goto LABEL_40;
          }
        }

        else
        {
          v15 = v17 + 1;
          v20 = __OFADD__(v35++, 1);
          if (v20)
          {
            goto LABEL_39;
          }
        }
      }

LABEL_28:

      v22 = v31;
      v21 = v32;
      v1[9] = v32;
      v1[10] = v31;
      v23 = v30;
      v24 = v35;
      v1[11] = v30;
      v1[12] = v35;
      v25 = v33;
      v1[13] = v33;
      v39[0] = v32;
      v39[1] = v31;
      v39[2] = v30;
      v39[3] = v35;
      v39[4] = v33;
      v26 = (v1[14])(v39);
      if (v26)
      {
        goto LABEL_32;
      }

      v4 = v1[7];
      v3 = v1[8];
      if (v4 == v29 && v3 == v29)
      {
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v24 = 0;
        v25 = 0;
LABEL_32:
        v27 = v26 ^ 1;
        a1 = v28;
        goto LABEL_34;
      }
    }

    __break(1u);
  }
}

uint64_t sub_183F807CC(uint64_t a1, uint64_t (*a2)(__int128 *))
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = 0;
    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *i;
      v8 = *(i - 1);
      v9 = v6;
      if (a2(&v8))
      {
        break;
      }

      if (v2 == ++v4)
      {
        return v2;
      }
    }

    return v4;
  }

  return v2;
}

unint64_t sub_183F8087C(unint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  if (v4 < result || v4 < a3)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3 - result;
  if (a2 >= 1)
  {
    if (v6 < 0 || v6 >= a2)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (v6 <= 0 && v6 > a2)
  {
    return 0;
  }

LABEL_13:
  v7 = __OFADD__(result, a2);
  result += a2;
  if (v7)
  {
    goto LABEL_16;
  }

  if (result > v4)
  {
LABEL_17:
    __break(1u);
  }

  return result;
}

unint64_t sub_183F808E8(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_183F81C20(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_183F809A8(v6, a2, 0);
  *v2 = v4;
  return result;
}

unint64_t sub_183F809A8(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 8 * result + 8 * a3;
  v10 = (v6 + 32 + 8 * a2);
  if (result != v10 || result >= v10 + 8 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 8 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_183F80A50(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v8 = v5 + v7;
  if (!__OFADD__(v5, v7))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v2 = v4;
    if (isUniquelyReferenced_nonNull_native)
    {
      if (v8 <= *(v4 + 24) >> 1)
      {
        return sub_183F809A8(v6, a2, 0);
      }

      if (v5 <= v8)
      {
        v10 = v8;
      }

      else
      {
        v10 = v5;
      }
    }

    else if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    sub_183F7FF74(isUniquelyReferenced_nonNull_native, v10, 1);
    return sub_183F809A8(v6, a2, 0);
  }

LABEL_20:
  __break(1u);
  return result;
}

unint64_t sub_183F80B0C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 4 * result + 4 * a3;
  v10 = (v6 + 32 + 4 * a2);
  if (result != v10 || result >= v10 + 4 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 4 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_183F80BE0(uint64_t result, uint64_t a2, void (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_16:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    a3();
  }

  return a4(v8, a2, 0);
}

unint64_t sub_183F80CCC(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 56 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 56 * a3;
  v13 = (v7 + 32 + 56 * a2);
  if (result != v13 || result >= v13 + 56 * v12)
  {
    result = memmove(result, v13, 56 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_183F80DD0(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_183F80E08(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = 0;
  for (i = (a1 + 80); ; i += 7)
  {
    v6 = *i;
    v7 = a2[1];
    v12 = *a2;
    v13 = v7;
    v14 = a2[2];
    v15 = *(a2 + 6);
    v8 = *(i - 2);
    v10[0] = *(i - 3);
    v10[1] = v8;
    v10[2] = *(i - 1);
    v11 = v6;
    if (Region.isSuperset(of:)(v10))
    {
      break;
    }

    if (v2 == ++v4)
    {
      return 0;
    }
  }

  return v4;
}

uint64_t sub_183F80ED0(uint64_t *a1, uint64_t a2)
{
  v37 = a1;
  v4 = *a1;
  result = sub_183F80E08(*a1, a2);
  v7 = result;
  if (v2)
  {
    return v7;
  }

  if (v6)
  {
    return *(v4 + 16);
  }

  v8 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v10 = (v4 + 16);
    v9 = *(v4 + 16);
    if (v8 == v9)
    {
      return v7;
    }

    v11 = 56 * result + 88;
    while (v8 < v9)
    {
      v13 = v4 + v11;
      v14 = *(v4 + v11 + 48);
      v15 = *(v4 + v11);
      v16 = *(v4 + v11 + 16);
      v17 = *(v4 + v11 + 32);
      v18 = *(a2 + 16);
      v33 = *a2;
      v34 = v18;
      v35 = *(a2 + 32);
      v36 = *(a2 + 48);
      v31[0] = v15;
      v31[1] = v16;
      v31[2] = v17;
      v32 = v14;
      result = Region.isSuperset(of:)(v31);
      if ((result & 1) == 0)
      {
        if (v8 != v7)
        {
          if ((v7 & 0x8000000000000000) != 0)
          {
            goto LABEL_23;
          }

          if (v7 >= *v10)
          {
            goto LABEL_24;
          }

          if (v8 >= *v10)
          {
            goto LABEL_25;
          }

          v19 = v4 + 32 + 56 * v7;
          v26 = *(v19 + 16);
          v27 = *v19;
          v20 = *(v19 + 40);
          v21 = *(v19 + 48);
          v29 = *(v13 + 16);
          v30 = *v13;
          v23 = *(v13 + 32);
          v22 = *(v13 + 40);
          v24 = *(v13 + 48);
          v28 = *(v19 + 32);

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_183F9C160(v4);
            v4 = result;
          }

          if (v7 >= *(v4 + 16))
          {
            goto LABEL_26;
          }

          v25 = v4 + 56 * v7;
          *(v25 + 32) = v30;
          *(v25 + 48) = v29;
          *(v25 + 64) = v23;
          *(v25 + 72) = v22;
          *(v25 + 80) = v24;

          if (v8 >= *(v4 + 16))
          {
            __break(1u);
            break;
          }

          v12 = v4 + v11;
          *v12 = v27;
          *(v12 + 16) = v26;
          *(v12 + 32) = v28;
          *(v12 + 40) = v20;
          *(v12 + 48) = v21;

          *v37 = v4;
        }

        ++v7;
      }

      ++v8;
      v10 = (v4 + 16);
      v9 = *(v4 + 16);
      v11 += 56;
      if (v8 == v9)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_183F81188()
{
  result = qword_1EA854240;
  if (!qword_1EA854240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA854240);
  }

  return result;
}

unint64_t sub_183F811E0()
{
  result = qword_1EA854248;
  if (!qword_1EA854248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA854248);
  }

  return result;
}

unint64_t sub_183F81238()
{
  result = qword_1EA853F48;
  if (!qword_1EA853F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA853F48);
  }

  return result;
}

unint64_t sub_183F81290()
{
  result = qword_1EA853F40;
  if (!qword_1EA853F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA853F40);
  }

  return result;
}

uint64_t _s14ContourOptionsVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s14ContourOptionsVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_183F8133C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_183F81450(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  return result;
}

uint64_t sub_183F814B4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_183F81520(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_183F815B8(int a1)
{
  sub_184390098();
  MEMORY[0x1865EC630](0xD000000000000015, 0x8000000184566440);
  type metadata accessor for CGImageAlphaInfo(0);
  sub_1843900F8();
  MEMORY[0x1865EC630](0x6E6F706D6F63202CLL, 0xEE002E203A746E65);
  type metadata accessor for CGImageComponentInfo(0);
  sub_1843900F8();
  MEMORY[0x1865EC630](0x724F65747962202CLL, 0xEE002E203A726564);
  type metadata accessor for CGImageByteOrderInfo(0);
  sub_1843900F8();
  MEMORY[0x1865EC630](0xD000000000000010, 0x8000000184566460);
  type metadata accessor for CGImagePixelFormatInfo(0);
  sub_1843900F8();
  MEMORY[0x1865EC630](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_183F81760(int a1)
{
  v2 = sub_184390378();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8542B8, &qword_1843985A8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v18 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8542C0, &qword_1843985B0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_184398540;
  *(v9 + 32) = 0x6168706C61;
  *(v9 + 40) = 0xE500000000000000;
  type metadata accessor for CGImageAlphaInfo(0);
  *(v9 + 48) = a1 & 0x1F;
  *(v9 + 72) = v10;
  *(v9 + 80) = 0x6E656E6F706D6F63;
  *(v9 + 88) = 0xE900000000000074;
  type metadata accessor for CGImageComponentInfo(0);
  *(v9 + 96) = a1 & 0xF00;
  *(v9 + 120) = v11;
  *(v9 + 128) = 0x6564724F65747962;
  *(v9 + 136) = 0xE900000000000072;
  type metadata accessor for CGImageByteOrderInfo(0);
  *(v9 + 144) = a1 & 0x7000;
  *(v9 + 168) = v12;
  *(v9 + 176) = 0x726F466C65786970;
  *(v9 + 184) = 0xEB0000000074616DLL;
  type metadata accessor for CGImagePixelFormatInfo(0);
  *(v9 + 216) = v13;
  *(v9 + 192) = a1 & 0xF0000;
  v18[3] = a1;
  v14 = *MEMORY[0x1E69E75B8];
  v15 = sub_184390368();
  v16 = *(v15 - 8);
  (*(v16 + 104))(v8, v14, v15);
  (*(v16 + 56))(v8, 0, 1, v15);
  (*(v3 + 104))(v5, *MEMORY[0x1E69E75D8], v2);
  type metadata accessor for CGBitmapInfo(0);
  return sub_184390398();
}

size_t CGColorSpaceRef.colorTable.getter()
{
  if (CGColorSpaceGetModel(v0) != kCGColorSpaceModelIndexed)
  {
    return 0;
  }

  v1 = CGColorSpaceGetBaseColorSpace(v0);
  if (v1)
  {
    v2 = v1;
    NumberOfComponents = CGColorSpaceGetNumberOfComponents(v1);
  }

  else
  {
    NumberOfComponents = 1;
  }

  result = CGColorSpaceGetColorTableCount(v0);
  v6 = result * NumberOfComponents;
  if ((result * NumberOfComponents) >> 64 == (result * NumberOfComponents) >> 63)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      if (v6)
      {
        v4 = sub_18438FDC8();
        *(v4 + 16) = v6;
        bzero((v4 + 32), v6);
      }

      else
      {
        v4 = MEMORY[0x1E69E7CC0];
      }

      CGColorSpaceGetColorTable(v0, (v4 + 32));
      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}