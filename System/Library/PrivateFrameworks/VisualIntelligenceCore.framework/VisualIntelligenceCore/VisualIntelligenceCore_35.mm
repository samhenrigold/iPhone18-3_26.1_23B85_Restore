uint64_t sub_1D8AA34B8()
{

  return swift_deallocClassInstance();
}

BOOL _s22VisualIntelligenceCore25BundleRankerConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(*(a1 + 16), *(a2 + 16))))) & 1) == 0)
  {
    return 0;
  }

  v3 = *(a1 + 60);
  v4 = *(a2 + 40);
  v5 = *(a2 + 60);
  if (*(a1 + 40))
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  if (*(a1 + 56))
  {
    if (!*(a2 + 56))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 48) == *(a2 + 48))
    {
      v6 = *(a2 + 56);
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      return 0;
    }
  }

  if ((*(a1 + 68) & 1) == 0)
  {
    return (*(a2 + 68) & 1) == 0 && *&v3 == *&v5 && *(&v3 + 1) == *(&v5 + 1);
  }

  return (*(a2 + 68) & 1) != 0;
}

__n128 __swift_memcpy69_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 61) = *(a2 + 61);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D8AA362C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 69))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D8AA364C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 68) = 0;
    *(result + 64) = 0;
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

  *(result + 69) = v3;
  return result;
}

uint64_t sub_1D8AA3764(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D8AA37DC(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))();
  }

  if (*(a1 + ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 69))
  {
    return v5 + *a1 + 1;
  }

  if (v5)
  {
    return (*(v4 + 48))();
  }

  else
  {
    return 0;
  }
}

void sub_1D8AA3878(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = ((*(v6 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 69;
  if (v7 >= a2)
  {
    if (v7 < a3)
    {
      a1[v8] = 0;
    }

    if (a2)
    {
      v10 = *(v6 + 56);

      v10();
    }
  }

  else
  {
    v9 = ~v7 + a2;
    bzero(a1, v8);
    *a1 = v9;
    if (v7 < a3)
    {
      a1[v8] = 1;
    }
  }
}

unint64_t sub_1D8AA3998(uint64_t a1)
{
  result = sub_1D8AA39C0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D8AA39C0()
{
  result = qword_1ECA68BB0;
  if (!qword_1ECA68BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68BB0);
  }

  return result;
}

unint64_t sub_1D8AA3A14(uint64_t a1)
{
  result = sub_1D8AA3A3C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D8AA3A3C()
{
  result = qword_1EE0E4DF0;
  if (!qword_1EE0E4DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0E4DF0);
  }

  return result;
}

unint64_t sub_1D8AA3A90(uint64_t a1)
{
  result = sub_1D8AA3AB8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D8AA3AB8()
{
  result = qword_1EE0E6EE0;
  if (!qword_1EE0E6EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0E6EE0);
  }

  return result;
}

unint64_t sub_1D8AA3B0C(uint64_t a1)
{
  result = sub_1D8AA3B34();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D8AA3B34()
{
  result = qword_1ECA68BB8;
  if (!qword_1ECA68BB8)
  {
    type metadata accessor for GaussianIntegralBundleRanker();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68BB8);
  }

  return result;
}

BOOL sub_1D8AA3BC0(uint64_t a1)
{
  if (*(v1 + 72))
  {
    return 1;
  }

  v3 = *(v1 + 64);
  v4 = *(a1 + *(swift_getTupleTypeMetadata2() + 48));
  return v4 > *&v3 && v4 < *(&v3 + 1);
}

uint64_t sub_1D8AA3CB8(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v3 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63420, &qword_1D8B1EA08);
    v4 = sub_1D8B15D60();
    v5 = v4;
    *(v4 + 16) = a2;
    *(v4 + 32) = v3;
    v6 = a2 - 1;
    if (v6)
    {
      v7 = (v4 + 40);
      do
      {
        *v7++ = v3;

        --v6;
      }

      while (v6);
    }

    return v5;
  }

  return result;
}

BOOL sub_1D8AA3D54(double a1, double a2, CGFloat a3, CGFloat a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a1 - a3 * 0.5;
  v10 = a2 - a4 * 0.5;
  v12.origin.x = (*(a7 + 8))(a6, a7);
  v14.origin.x = v9;
  v14.origin.y = v10;
  v14.size.width = a3;
  v14.size.height = a4;
  v13 = CGRectIntersection(v12, v14);
  return CGRectIsNull(v13);
}

void sub_1D8AA3E10(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15.origin.x = (*(a5 + 8))(a4, a5);
  x = v15.origin.x;
  y = v15.origin.y;
  width = v15.size.width;
  height = v15.size.height;
  MidX = CGRectGetMidX(v15);
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  MidY = CGRectGetMidY(v16);
  v10.n128_f64[0] = a1;
  v10.n128_f64[1] = a2;
  v11.n128_f64[0] = MidX;
  v11.n128_f64[1] = MidY;
  sub_1D8990398(v11, v10);
}

uint64_t sub_1D8AA3EFC(uint64_t a1)
{
  v3 = type metadata accessor for CVBundle(0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v33 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v29 - v7;
  v9 = *(a1 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (!v9)
  {
    return v10;
  }

  v29[1] = v1;
  v38 = MEMORY[0x1E69E7CC0];
  sub_1D87F4074(0, v9, 0);
  v10 = v38;
  v37 = a1 + 56;
  result = sub_1D8B16580();
  v12 = result;
  v13 = 0;
  v30 = a1 + 64;
  v31 = v9;
  v32 = a1;
  while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a1 + 32))
  {
    v15 = v12 >> 6;
    if ((*(v37 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
    {
      goto LABEL_22;
    }

    v16 = *(a1 + 36);
    v34 = v13;
    v35 = v16;
    v17 = *(a1 + 48);
    v36 = *(v4 + 72);
    v18 = v33;
    sub_1D8ABD1B8(v17 + v36 * v12, v33, type metadata accessor for CVBundle);
    CVBundle.sanitizeForJSON()(v8);
    sub_1D8ABD158(v18, type metadata accessor for CVBundle);
    v38 = v10;
    v20 = *(v10 + 16);
    v19 = *(v10 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_1D87F4074((v19 > 1), v20 + 1, 1);
      v10 = v38;
    }

    *(v10 + 16) = v20 + 1;
    result = sub_1D8ABD220(v8, v10 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + v20 * v36, type metadata accessor for CVBundle);
    a1 = v32;
    v14 = 1 << *(v32 + 32);
    if (v12 >= v14)
    {
      goto LABEL_23;
    }

    v21 = *(v37 + 8 * v15);
    if ((v21 & (1 << v12)) == 0)
    {
      goto LABEL_24;
    }

    if (v35 != *(v32 + 36))
    {
      goto LABEL_25;
    }

    v22 = v21 & (-2 << (v12 & 0x3F));
    if (v22)
    {
      v14 = __clz(__rbit64(v22)) | v12 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v23 = v4;
      v24 = v15 << 6;
      v25 = v15 + 1;
      v26 = (v30 + 8 * v15);
      while (v25 < (v14 + 63) >> 6)
      {
        v28 = *v26++;
        v27 = v28;
        v24 += 64;
        ++v25;
        if (v28)
        {
          result = sub_1D87977B4(v12, v35, 0);
          v14 = __clz(__rbit64(v27)) + v24;
          goto LABEL_19;
        }
      }

      result = sub_1D87977B4(v12, v35, 0);
LABEL_19:
      v4 = v23;
    }

    v13 = v34 + 1;
    v12 = v14;
    if (v34 + 1 == v31)
    {
      return v10;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

void sub_1D8AA4334(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v7 = *(a3 + 16);
  if (!v7)
  {
    return;
  }

  v9 = *(a4(0) - 8);
  v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v21 = *(v9 + 72);
  v11 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    a1(&v23, v10);
    if (v6)
    {

      return;
    }

    v12 = v23;
    v13 = *(v23 + 16);
    v14 = *(v11 + 16);
    if (__OFADD__(v14, v13))
    {
      break;
    }

    if (swift_isUniquelyReferenced_nonNull_native() && v14 + v13 <= *(v11 + 24) >> 1)
    {
      if (*(v12 + 16))
      {
        goto LABEL_12;
      }
    }

    else
    {
      v11 = a5();
      if (*(v12 + 16))
      {
LABEL_12:
        v15 = (*(v11 + 24) >> 1) - *(v11 + 16);
        a6(0);
        if (v15 < v13)
        {
          goto LABEL_21;
        }

        swift_arrayInitWithCopy();

        if (v13)
        {
          v16 = *(v11 + 16);
          v17 = __OFADD__(v16, v13);
          v18 = v16 + v13;
          if (v17)
          {
            goto LABEL_22;
          }

          *(v11 + 16) = v18;
        }

        goto LABEL_4;
      }
    }

    if (v13)
    {
      goto LABEL_20;
    }

LABEL_4:
    v10 += v21;
    if (!--v7)
    {
      return;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
}

void sub_1D8AA4554(void (*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v28 = a1;
  v29 = a2;
  v25 = type metadata accessor for DetectionRequest(0);
  v31 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a3 + 56;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 56);
  v12 = (v9 + 63) >> 6;
  v30 = a3;

  v13 = 0;
  v14 = MEMORY[0x1E69E7CC0];
  v26 = a3 + 56;
  for (i = v7; ; v7 = i)
  {
    if (!v11)
    {
      while (1)
      {
        v15 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v15 >= v12)
        {
          goto LABEL_26;
        }

        v11 = *(v8 + 8 * v15);
        ++v13;
        if (v11)
        {
          v13 = v15;
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      return;
    }

LABEL_11:
    sub_1D8ABD1B8(*(v30 + 48) + *(v31 + 72) * (__clz(__rbit64(v11)) | (v13 << 6)), v7, type metadata accessor for DetectionRequest);
    v28(&v33, v7);
    if (v4)
    {
      break;
    }

    v32 = 0;
    sub_1D8ABD158(v7, type metadata accessor for DetectionRequest);
    v16 = v33;
    v17 = *(v33 + 16);
    v18 = v14[2];
    v19 = v18 + v17;
    if (__OFADD__(v18, v17))
    {
      goto LABEL_28;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v19 <= v14[3] >> 1)
    {
      if (!*(v16 + 16))
      {
        goto LABEL_4;
      }
    }

    else
    {
      if (v18 <= v19)
      {
        v21 = v18 + v17;
      }

      else
      {
        v21 = v18;
      }

      v14 = sub_1D87C8C08(isUniquelyReferenced_nonNull_native, v21, 1, v14);
      if (!*(v16 + 16))
      {
LABEL_4:

        if (v17)
        {
          goto LABEL_29;
        }

        goto LABEL_5;
      }
    }

    if ((v14[3] >> 1) - v14[2] < v17)
    {
      goto LABEL_30;
    }

    swift_arrayInitWithCopy();

    if (v17)
    {
      v22 = v14[2];
      v23 = __OFADD__(v22, v17);
      v24 = v22 + v17;
      if (v23)
      {
        goto LABEL_31;
      }

      v14[2] = v24;
    }

LABEL_5:
    v11 &= v11 - 1;
    v4 = v32;
    v8 = v26;
  }

  sub_1D8ABD158(v7, type metadata accessor for DetectionRequest);

LABEL_26:
}

uint64_t BundleSelector.Configuration.RankingAlgorithmPreset.rank<A, B>(_:frameMetadata:)(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = a2[3];
  v18[2] = a2[2];
  v18[3] = v12;
  v18[4] = a2[4];
  v13 = a2[1];
  v18[0] = *a2;
  v18[1] = v13;
  v22 = *v6;
  BundleSelector.Configuration.RankingAlgorithmPreset.bundleRanker.getter(v19);
  v14 = v20;
  v15 = v21;
  __swift_project_boxed_opaque_existential_1(v19, v20);
  v16 = (*(v15 + 24))(a1, v18, a3, a4, a5, a6, v14, v15);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return v16;
}

void sub_1D8AA48F4(uint64_t a1)
{
  v2 = type metadata accessor for CVBundle(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v19 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v19 - v10;
  v12 = 0;
  v13 = 1 << *(a1 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a1 + 56);
  v16 = (v13 + 63) >> 6;
  while (v15)
  {
    v17 = v12;
LABEL_9:
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    sub_1D8ABD1B8(*(a1 + 48) + *(v3 + 72) * (v18 | (v17 << 6)), v11, type metadata accessor for CVBundle);
    sub_1D8ABD220(v11, v6, type metadata accessor for CVBundle);
    sub_1D87F99C4(v9, v6);
    sub_1D8ABD158(v9, type metadata accessor for CVBundle);
  }

  while (1)
  {
    v17 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v17 >= v16)
    {

      return;
    }

    v15 = *(a1 + 56 + 8 * v17);
    ++v12;
    if (v15)
    {
      v12 = v17;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_1D8AA4AE0(uint64_t a1)
{
  v2 = type metadata accessor for DetectionRequest(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v19 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v19 - v10;
  v12 = 0;
  v13 = 1 << *(a1 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a1 + 56);
  v16 = (v13 + 63) >> 6;
  while (v15)
  {
    v17 = v12;
LABEL_9:
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    sub_1D8ABD1B8(*(a1 + 48) + *(v3 + 72) * (v18 | (v17 << 6)), v11, type metadata accessor for DetectionRequest);
    sub_1D8ABD220(v11, v6, type metadata accessor for DetectionRequest);
    sub_1D87FB834(v9, v6);
    sub_1D8ABD158(v9, type metadata accessor for DetectionRequest);
  }

  while (1)
  {
    v17 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v17 >= v16)
    {

      return;
    }

    v15 = *(a1 + 56 + 8 * v17);
    ++v12;
    if (v15)
    {
      v12 = v17;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_1D8AA4CF8(uint64_t a1, uint64_t (*a2)(void), void (*a3)(char *, char *))
{
  v25 = a3;
  v4 = a2(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = v24 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = v24 - v12;
  v14 = 0;
  v26 = a1;
  v17 = *(a1 + 56);
  v16 = a1 + 56;
  v15 = v17;
  v18 = 1 << *(v16 - 24);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v15;
  v21 = (v18 + 63) >> 6;
  v24[2] = v5 + 32;
  v24[3] = v5 + 16;
  v24[1] = v5 + 8;
  if ((v19 & v15) != 0)
  {
    do
    {
      v22 = v14;
LABEL_9:
      v23 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      (*(v5 + 16))(v13, *(v26 + 48) + *(v5 + 72) * (v23 | (v22 << 6)), v4);
      (*(v5 + 32))(v8, v13, v4);
      v25(v11, v8);
      (*(v5 + 8))(v11, v4);
    }

    while (v20);
  }

  while (1)
  {
    v22 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v22 >= v21)
    {

      return;
    }

    v20 = *(v16 + 8 * v22);
    ++v14;
    if (v20)
    {
      v14 = v22;
      goto LABEL_9;
    }
  }

  __break(1u);
}

double static BundleSelector.Configuration.factorySettings.getter@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(a1 + 24) = _Q0;
  *(a1 + 40) = 16908290;
  *&result = 10;
  *(a1 + 48) = xmmword_1D8B190E0;
  *(a1 + 64) = 1;
  return result;
}

uint64_t sub_1D8AA4F50(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for CVBundle(0);
  v25 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v24 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8);
  v12 = v21 - v11;
  v23 = *(a3 + 16);
  if (v23)
  {
    v13 = 0;
    v14 = MEMORY[0x1E69E7CC0];
    v21[1] = a2;
    v22 = a3;
    v21[0] = a1;
    while (v13 < *(a3 + 16))
    {
      v15 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v16 = *(v25 + 72);
      sub_1D8ABD1B8(a3 + v15 + v16 * v13, v12, type metadata accessor for CVBundle);
      v17 = a1(v12);
      if (v3)
      {
        sub_1D8ABD158(v12, type metadata accessor for CVBundle);

        goto LABEL_15;
      }

      if (v17)
      {
        sub_1D8ABD220(v12, v24, type metadata accessor for CVBundle);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D87F4074(0, *(v14 + 16) + 1, 1);
          v14 = v26;
        }

        v20 = *(v14 + 16);
        v19 = *(v14 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_1D87F4074((v19 > 1), v20 + 1, 1);
          v14 = v26;
        }

        *(v14 + 16) = v20 + 1;
        result = sub_1D8ABD220(v24, v14 + v15 + v20 * v16, type metadata accessor for CVBundle);
        a3 = v22;
        a1 = v21[0];
      }

      else
      {
        result = sub_1D8ABD158(v12, type metadata accessor for CVBundle);
      }

      if (v23 == ++v13)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
LABEL_15:

    return v14;
  }

  return result;
}

unint64_t sub_1D8AA51DC(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v36 = a1;
  v37 = a2;
  v5 = type metadata accessor for DetectionRequest(0);
  v38 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v34 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v32 - v9;
  result = MEMORY[0x1EEE9AC00](v8);
  v13 = &v32 - v12;
  v14 = 0;
  v39 = a3;
  v17 = *(a3 + 56);
  v16 = a3 + 56;
  v15 = v17;
  v18 = 1 << *(v16 - 24);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v15;
  v21 = (v18 + 63) >> 6;
  v35 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v22 = v14;
    if (!v20)
    {
      break;
    }

LABEL_8:
    v23 = *(v38 + 72);
    sub_1D8ABD1B8(*(v39 + 48) + v23 * (__clz(__rbit64(v20)) | (v14 << 6)), v10, type metadata accessor for DetectionRequest);
    sub_1D8ABD220(v10, v13, type metadata accessor for DetectionRequest);
    v24 = v36(v13);
    if (v3)
    {
      sub_1D8ABD158(v13, type metadata accessor for DetectionRequest);
      v31 = v35;

      return v31;
    }

    v20 &= v20 - 1;
    if (v24)
    {
      sub_1D8ABD220(v13, v34, type metadata accessor for DetectionRequest);
      v25 = v35;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40 = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D87F45E4(0, *(v25 + 16) + 1, 1);
        v25 = v40;
      }

      v28 = *(v25 + 16);
      v27 = *(v25 + 24);
      v29 = v28 + 1;
      if (v28 >= v27 >> 1)
      {
        v35 = v28 + 1;
        v33 = v28;
        sub_1D87F45E4((v27 > 1), v28 + 1, 1);
        v29 = v35;
        v28 = v33;
        v25 = v40;
      }

      *(v25 + 16) = v29;
      v30 = *(v38 + 80);
      v35 = v25;
      result = sub_1D8ABD220(v34, v25 + ((v30 + 32) & ~v30) + v28 * v23, type metadata accessor for DetectionRequest);
    }

    else
    {
      result = sub_1D8ABD158(v13, type metadata accessor for DetectionRequest);
    }
  }

  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v21)
    {

      return v35;
    }

    v20 = *(v16 + 8 * v14);
    ++v22;
    if (v20)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t BundleSelector.Configuration.RankingAlgorithmPreset.bundleRanker.getter@<X0>(uint64_t *a1@<X8>)
{
  if (*v1 > 1u)
  {
    if (*v1 != 2)
    {
      LOBYTE(v14) = 3;
      BundleSelector.Configuration.RankingAlgorithmPreset.configuration.getter(v12);
      type metadata accessor for GaussianIntegralBundleRanker();
      v8 = swift_allocObject();
      *(v8 + 16) = 0x3F80000000000000;
      v9 = v12[0];
      *(v8 + 40) = v12[1];
      v10 = *v13;
      *(v8 + 56) = v12[2];
      *(v8 + 72) = v10;
      *(v8 + 96) = MEMORY[0x1E69E7CC0];
      *(v8 + 85) = *&v13[13];
      *(v8 + 24) = v9;
      sub_1D8AA2BC8(v12);
      BundleSelector.Configuration.RankingAlgorithmPreset.configuration.getter(&v14);
      a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68BC0, &qword_1D8B3BE20);
      a1[4] = &off_1F5437188;
      result = swift_allocObject();
      *a1 = result;
      *(result + 16) = v8;
      v6 = v14;
      *(result + 40) = v15;
      v11 = *v17;
      *(result + 56) = v16;
      *(result + 72) = v11;
      goto LABEL_9;
    }

    BundleSelector.Configuration.RankingAlgorithmPreset.configuration.getter(&v14);
    v3 = &unk_1ECA68BD0;
    v4 = &unk_1D8B3BE30;
  }

  else if (*v1)
  {
    BundleSelector.Configuration.RankingAlgorithmPreset.configuration.getter(&v14);
    v3 = &unk_1ECA68BC8;
    v4 = &unk_1D8B3BE28;
  }

  else
  {
    BundleSelector.Configuration.RankingAlgorithmPreset.configuration.getter(&v14);
    v3 = &unk_1ECA68BD8;
    v4 = &unk_1D8B3BE38;
  }

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  a1[4] = &off_1F5437188;
  result = swift_allocObject();
  *(result + 16) = 0x3F80000000000000;
  v6 = v14;
  *(result + 40) = v15;
  v7 = *v17;
  *(result + 56) = v16;
  *(result + 72) = v7;
  *a1 = result;
LABEL_9:
  *(result + 85) = *&v17[13];
  *(result + 24) = v6;
  return result;
}

__n128 sub_1D8AA5700@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CVBundle(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v40 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67980, &qword_1D8B231C0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v40 - v15;
  sub_1D87A0E38(v2, v14, &qword_1ECA67980, &qword_1D8B231C0);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    sub_1D87A14E4(v14, &qword_1ECA67980, &qword_1D8B231C0);
    v17 = 1;
  }

  else
  {
    CVBundle.sanitizeForJSON()(v16);
    sub_1D8ABD158(v14, type metadata accessor for CVBundle);
    v17 = 0;
  }

  v18 = *(v5 + 56);
  v42 = v16;
  v18(v16, v17, 1, v4);
  v19 = type metadata accessor for BundleSelector.Output(0);
  v20 = v19;
  v21 = (v2 + *(v19 + 20));
  v22 = v21[4];
  v48 = v21[3];
  v49 = v22;
  v23 = v21[2];
  v46 = v21[1];
  v47 = v23;
  v45 = *v21;
  v24 = *(v19 + 24);
  v43 = v2;
  v25 = *(v2 + v24);
  v26 = *(v25 + 16);
  v27 = MEMORY[0x1E69E7CC0];
  if (v26)
  {
    v40 = v19;
    v41 = a1;
    v44 = MEMORY[0x1E69E7CC0];
    sub_1D87F4074(0, v26, 0);
    v27 = v44;
    v28 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v29 = v25 + v28;
    v30 = *(v5 + 72);
    do
    {
      sub_1D8ABD1B8(v29, v8, type metadata accessor for CVBundle);
      CVBundle.sanitizeForJSON()(v10);
      sub_1D8ABD158(v8, type metadata accessor for CVBundle);
      v44 = v27;
      v32 = *(v27 + 16);
      v31 = *(v27 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_1D87F4074((v31 > 1), v32 + 1, 1);
        v27 = v44;
      }

      *(v27 + 16) = v32 + 1;
      sub_1D8ABD220(v10, v27 + v28 + v32 * v30, type metadata accessor for CVBundle);
      v29 += v30;
      --v26;
    }

    while (v26);
    v20 = v40;
    a1 = v41;
  }

  v33 = v43;
  v34 = sub_1D8AA3EFC(*(v43 + v20[7]));
  v35 = sub_1D87C4460(v34);

  v36 = *(v33 + v20[8]);
  sub_1D881F6FC(v42, a1, &qword_1ECA67980, &qword_1D8B231C0);
  v37 = (a1 + v20[5]);
  v38 = v48;
  v37[2] = v47;
  v37[3] = v38;
  v37[4] = v49;
  result = v46;
  *v37 = v45;
  v37[1] = result;
  *(a1 + v20[6]) = v27;
  *(a1 + v20[7]) = v35;
  *(a1 + v20[8]) = v36;
  return result;
}

uint64_t sub_1D8AA5AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = a6;
  v9 = sub_1D8B13240();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0, &qword_1D8B23B60);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v21 - v14;
  v16 = sub_1D8B15EA0();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v10 + 16))(v12, a3, v9);
  v17 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v18 = (v11 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  *(v19 + 4) = a2;
  (*(v10 + 32))(&v19[v17], v12, v9);
  *&v19[v18] = a4;

  sub_1D8B06D68(0, 0, v15, 0, 0, v22, v19);

  return sub_1D87A14E4(v15, &unk_1ECA675E0, &qword_1D8B23B60);
}

unint64_t sub_1D8AA5D60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a3;
  v5 = type metadata accessor for CVTrackSnapshot(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CVBundle.BundleType(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D8B13240();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v25 - v16;
  sub_1D8ABD1B8(a1, v10, type metadata accessor for CVBundle.BundleType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *(v12 + 32);
    v18(v15, v10, v11);
  }

  else
  {
    sub_1D8ABD220(v10, v7, type metadata accessor for CVTrackSnapshot);
    (*(v12 + 16))(v15, v7, v11);
    sub_1D8ABD158(v7, type metadata accessor for CVTrackSnapshot);
    v18 = *(v12 + 32);
  }

  v18(v17, v15, v11);
  if (*(a2 + 16) && (v19 = sub_1D87EF764(v17), (v20 & 1) != 0))
  {
    v21 = *(*(a2 + 56) + 8 * v19);
    v22 = *(v12 + 8);

    v23 = v22(v17, v11);
    MEMORY[0x1EEE9AC00](v23);
    *(&v25 - 2) = v26;
    return sub_1D8AA51DC(sub_1D8ABD358, (&v25 - 4), v21);
  }

  else
  {
    (*(v12 + 8))(v17, v11);
    return MEMORY[0x1E69E7CC0];
  }
}

__n128 BundleSelector.Output.latestFrameMetadata.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for BundleSelector.Output(0) + 20);
  v4 = *(v3 + 48);
  *(a1 + 32) = *(v3 + 32);
  *(a1 + 48) = v4;
  *(a1 + 64) = *(v3 + 64);
  result = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = result;
  return result;
}

double BundleSelector.Output.saliencyRankedBundles.getter()
{
  type metadata accessor for BundleSelector.Output(0);

  return result;
}

double BundleSelector.Output.guaranteedBundles.getter()
{
  type metadata accessor for BundleSelector.Output(0);

  return result;
}

unint64_t sub_1D8AA6170()
{
  v1 = *v0;
  v2 = 0xD000000000000015;
  v3 = 0xD000000000000020;
  if (v1 == 3)
  {
    v3 = 0xD000000000000011;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000013;
  if (!*v0)
  {
    v4 = 0xD00000000000001DLL;
  }

  if (*v0 <= 1u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D8AA6200@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D8ABC484(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D8AA6228(uint64_t a1)
{
  v2 = sub_1D8AB84AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8AA6264(uint64_t a1)
{
  v2 = sub_1D8AB84AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BundleSelector.Output.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68BE0, &qword_1D8B3BE48);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8AB84AC();
  sub_1D8B16DD0();
  v21 = 0;
  type metadata accessor for CVBundle(0);
  sub_1D8AB859C(&qword_1ECA64370, type metadata accessor for CVBundle, &protocol conformance descriptor for CVBundle);
  sub_1D8B16A80();
  if (!v2)
  {
    v9 = type metadata accessor for BundleSelector.Output(0);
    v10 = (v3 + v9[5]);
    v11 = v10[3];
    v18 = v10[2];
    v19 = v11;
    v20 = v10[4];
    v12 = v10[1];
    v16 = *v10;
    v17 = v12;
    v15 = 1;
    sub_1D885E198();
    sub_1D8B16AE0();
    *&v16 = *(v3 + v9[6]);
    v15 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65758, &qword_1D8B2ABD0);
    sub_1D8AB85E4(&qword_1ECA65760, &qword_1ECA64370, &protocol conformance descriptor for CVBundle, MEMORY[0x1E69E6300]);
    sub_1D8B16AE0();
    *&v16 = *(v3 + v9[7]);
    v15 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA642D0, &qword_1D8B23C50);
    sub_1D8AB8500(&qword_1ECA68BF0, &qword_1ECA64370, &protocol conformance descriptor for CVBundle, MEMORY[0x1E69E64F0]);
    sub_1D8B16AE0();
    LOBYTE(v16) = 4;
    sub_1D8B16AA0();
  }

  return (*(v6 + 8))(v8, v5);
}

void BundleSelector.Output.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67980, &qword_1D8B231C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68BF8, &unk_1D8B3BE50);
  v22 = *(v7 - 8);
  v23 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  v10 = type metadata accessor for BundleSelector.Output(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8AB84AC();
  v24 = v9;
  sub_1D8B16DB0();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v13 = v22;
    v14 = v12;
    type metadata accessor for CVBundle(0);
    LOBYTE(v26) = 0;
    sub_1D8AB859C(&qword_1ECA65798, type metadata accessor for CVBundle, &protocol conformance descriptor for CVBundle);
    v15 = v23;
    sub_1D8B169B0();
    sub_1D881F6FC(v6, v14, &qword_1ECA67980, &qword_1D8B231C0);
    v32 = 1;
    sub_1D885E2D0();
    sub_1D8B16A10();
    v16 = (v14 + v10[5]);
    v17 = v29;
    v16[2] = v28;
    v16[3] = v17;
    v16[4] = v30;
    v18 = v27;
    *v16 = v26;
    v16[1] = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65758, &qword_1D8B2ABD0);
    v31 = 2;
    sub_1D8AB85E4(&qword_1ECA65790, &qword_1ECA65798, &protocol conformance descriptor for CVBundle, MEMORY[0x1E69E6330]);
    sub_1D8B16A10();
    *(v14 + v10[6]) = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA642D0, &qword_1D8B23C50);
    v31 = 3;
    sub_1D8AB8500(&qword_1ECA68C00, &qword_1ECA65798, &protocol conformance descriptor for CVBundle, MEMORY[0x1E69E6510]);
    sub_1D8B16A10();
    *(v14 + v10[7]) = v25;
    LOBYTE(v25) = 4;
    v19 = sub_1D8B169D0();
    (*(v13 + 8))(v24, v15);
    *(v14 + v10[8]) = v19 & 1;
    sub_1D8ABD1B8(v14, v21, type metadata accessor for BundleSelector.Output);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_1D8ABD158(v14, type metadata accessor for BundleSelector.Output);
  }
}

__n128 BundleSelector.configuration.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_configuration;
  v3 = *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_configuration + 48);
  *(a1 + 32) = *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_configuration + 32);
  *(a1 + 48) = v3;
  *(a1 + 64) = *(v2 + 64);
  result = *(v2 + 16);
  *a1 = *v2;
  *(a1 + 16) = result;
  return result;
}

void sub_1D8AA6B5C(uint64_t a1)
{
  v2 = v1;
  v70 = type metadata accessor for DetectionRequest(0);
  v4 = *(v70 - 8);
  v5 = MEMORY[0x1EEE9AC00](v70);
  MEMORY[0x1EEE9AC00](v5);
  if (!a1)
  {
    return;
  }

  v69 = v60 - v6;
  v67 = v7;

  v8 = sub_1D8B151C0();
  v9 = sub_1D8B16200();

  if (!os_log_type_enabled(v8, v9))
  {

LABEL_36:
    sub_1D8AF5A04(a1);
    return;
  }

  v10 = swift_slowAlloc();
  v11 = swift_slowAlloc();
  v76[0] = v11;
  *v10 = 134218754;
  v72 = *(a1 + 16);
  *(v10 + 4) = v72;

  *(v10 + 12) = 2080;
  v12 = *(v2 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_latestFrameMetadata + 24);
  v64 = v9;
  v63 = v11;
  if (v12 == 2)
  {
    v13 = 0xE700000000000000;
    v14 = 0x6E776F6E6B6E75;
  }

  else
  {
    v15 = *(v2 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_latestFrameMetadata + 40);
    v74 = 0;
    v75 = 0xE000000000000000;
    sub_1D8B16020();
    if (v15)
    {
      v16 = 0x296C6C6974532820;
    }

    else
    {
      v16 = 0;
    }

    if (v15)
    {
      v17 = 0xE800000000000000;
    }

    else
    {
      v17 = 0xE000000000000000;
    }

    MEMORY[0x1DA71EFA0](v16, v17);

    v14 = v74;
    v13 = v75;
  }

  v18 = sub_1D89AC714(v14, v13, v76);

  *(v10 + 14) = v18;
  v65 = v10;
  *(v10 + 22) = 2080;
  v19 = MEMORY[0x1E69E7CC0];
  v20 = v72;
  v66 = v8;
  v62 = v4;
  if (!v72)
  {
    v37 = *(MEMORY[0x1E69E7CC0] + 16);
    v74 = MEMORY[0x1E69E7CD0];
    if (v37)
    {
      goto LABEL_23;
    }

LABEL_26:

    sub_1D8B13240();
    sub_1D8AB859C(&qword_1EE0E98A0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    v41 = sub_1D8B16040();
    v43 = v42;

    v44 = sub_1D89AC714(v41, v43, v76);

    v45 = v65;
    *(v65 + 24) = v44;
    *(v45 + 32) = 2080;
    if (v20)
    {
      v74 = MEMORY[0x1E69E7CC0];
      sub_1D87F4534(0, v20, 0);
      v46 = v74;
      v47 = a1 + ((*(v62 + 80) + 32) & ~*(v62 + 80));
      v48 = *(v62 + 72);
      v49 = v67;
      do
      {
        sub_1D8ABD1B8(v47, v49, type metadata accessor for DetectionRequest);
        v50 = *v49;
        sub_1D8ABD158(v49, type metadata accessor for DetectionRequest);
        v74 = v46;
        v52 = *(v46 + 16);
        v51 = *(v46 + 24);
        v53 = v52 + 1;
        if (v52 >= v51 >> 1)
        {
          sub_1D87F4534((v51 > 1), v52 + 1, 1);
          v49 = v67;
          v46 = v74;
        }

        *(v46 + 16) = v53;
        *(v46 + v52 + 32) = v50;
        v47 += v48;
        --v72;
      }

      while (v72);
      v74 = MEMORY[0x1E69E7CD0];
      v8 = v66;
    }

    else
    {
      v46 = MEMORY[0x1E69E7CC0];
      v53 = *(MEMORY[0x1E69E7CC0] + 16);
      v74 = MEMORY[0x1E69E7CD0];
      if (!v53)
      {
LABEL_35:

        sub_1D87C4938();
        v55 = sub_1D8B16040();
        v57 = v56;

        v58 = sub_1D89AC714(v55, v57, v76);

        *(v45 + 34) = v58;
        _os_log_impl(&dword_1D8783000, v8, v64, "Sending DRQs: count = %ld, t = %s, originatorTrackIds: %s, types: %s", v45, 0x2Au);
        v59 = v63;
        swift_arrayDestroy();
        MEMORY[0x1DA721330](v59, -1, -1);
        MEMORY[0x1DA721330](v45, -1, -1);

        goto LABEL_36;
      }
    }

    v54 = 32;
    do
    {
      sub_1D87FC140(&v73, *(v46 + v54++));
      --v53;
    }

    while (v53);
    goto LABEL_35;
  }

  v60[1] = v2;
  v74 = MEMORY[0x1E69E7CC0];
  sub_1D87F468C(0, v72, 0);
  v19 = v74;
  v21 = *(v4 + 80);
  v61 = a1;
  v22 = a1 + ((v21 + 32) & ~v21);
  v68 = *(v4 + 72);
  v71 = xmmword_1D8B1AB90;
  v23 = v69;
  do
  {
    sub_1D8ABD1B8(v22, v23, type metadata accessor for DetectionRequest);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA631E8, &qword_1D8B1E7A8);
    v24 = *(type metadata accessor for DetectionRequest.Originator(0) - 8);
    v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = v71;
    v27 = *(v70 + 20);
    sub_1D8ABD1B8(v23 + v27, v26 + v25, type metadata accessor for DetectionRequest.Originator);
    sub_1D8AD1E10(v26);
    v29 = v28;
    swift_setDeallocating();
    sub_1D8ABD158(v26 + v25, type metadata accessor for DetectionRequest.Originator);
    swift_deallocClassInstance();
    v30 = *(v29 + 16);

    if (v30)
    {
      v31 = swift_allocObject();
      *(v31 + 16) = v71;
      v23 = v69;
      sub_1D8ABD1B8(&v69[v27], v31 + v25, type metadata accessor for DetectionRequest.Originator);
      sub_1D8AD1E10(v31);
      v33 = v32;
      swift_setDeallocating();
      sub_1D8ABD158(v31 + v25, type metadata accessor for DetectionRequest.Originator);
      swift_deallocClassInstance();
      v34 = sub_1D87C4B18(v33);
    }

    else
    {
      v34 = MEMORY[0x1E69E7CD0];
      v23 = v69;
    }

    sub_1D8ABD158(v23, type metadata accessor for DetectionRequest);
    v74 = v19;
    v36 = *(v19 + 16);
    v35 = *(v19 + 24);
    v37 = v36 + 1;
    if (v36 >= v35 >> 1)
    {
      sub_1D87F468C((v35 > 1), v36 + 1, 1);
      v19 = v74;
    }

    *(v19 + 16) = v37;
    *(v19 + 8 * v36 + 32) = v34;
    v22 += v68;
    --v20;
  }

  while (v20);
  v74 = MEMORY[0x1E69E7CD0];
  a1 = v61;
  v8 = v66;
  v20 = v72;
LABEL_23:
  v38 = 0;
  while (v38 < *(v19 + 16))
  {
    v39 = v38 + 1;

    sub_1D8AA4CF8(v40, MEMORY[0x1E69695A8], sub_1D87FC15C);
    v38 = v39;
    if (v37 == v39)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
}

double sub_1D8AA736C()
{
  v1 = v0 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector____lazy_storage___allowableRegion;
  if ((*(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector____lazy_storage___allowableRegion + 32) & 1) == 0)
  {
    return *v1;
  }

  sub_1D8AA73BC(v0);
  *v1 = result;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  *(v1 + 24) = v5;
  *(v1 + 32) = 0;
  return result;
}

void sub_1D8AA73BC(uint64_t a1)
{
  v1 = (a1 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_latestFrameMetadata);
  if (*(a1 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_latestFrameMetadata + 24) == 2)
  {
    sub_1D8B168C0();
    __break(1u);
  }

  else
  {
    v2 = v1[6];
    v31 = v1[7];
    r1 = v1[9];
    v3 = v1[2];
    v28 = *(a1 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_configuration + 8);
    v30 = v1[8];
    v24 = *(a1 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_configuration + 24);
    v26 = *(a1 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_configuration + 16);
    r2 = *(a1 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_configuration + 32);
    CGAffineTransformMakeTranslation(&t1, -0.5, -0.5);
    tx = t1.tx;
    ty = t1.ty;
    v16 = *&t1.c;
    v17 = *&t1.a;
    CGAffineTransformMakeRotation(&t1, -v3);
    v6 = t1.tx;
    v7 = t1.ty;
    v18 = *&t1.c;
    v19 = *&t1.a;
    CGAffineTransformMakeTranslation(&t1, 0.5, 0.5);
    v8 = t1.tx;
    v9 = t1.ty;
    v20 = *&t1.c;
    v21 = *&t1.a;
    v10 = *(MEMORY[0x1E695EFD0] + 16);
    *&t1.a = *MEMORY[0x1E695EFD0];
    *&t1.c = v10;
    *&t1.tx = *(MEMORY[0x1E695EFD0] + 32);
    *&t2.a = v17;
    *&t2.c = v16;
    t2.tx = tx;
    t2.ty = ty;
    CGAffineTransformConcat(&v33, &t1, &t2);
    t1 = v33;
    *&t2.a = v19;
    *&t2.c = v18;
    t2.tx = v6;
    t2.ty = v7;
    CGAffineTransformConcat(&v33, &t1, &t2);
    t1 = v33;
    *&t2.a = v21;
    *&t2.c = v20;
    t2.tx = v8;
    t2.ty = v9;
    CGAffineTransformConcat(&v33, &t1, &t2);
    t1 = v33;
    v36.origin.y = v26;
    v36.origin.x = v28;
    v36.size.height = r2;
    v36.size.width = v24;
    v37 = CGRectApplyAffineTransform(v36, &t1);
    x = v37.origin.x;
    y = v37.origin.y;
    width = v37.size.width;
    height = v37.size.height;
    v37.origin.x = v2;
    v37.origin.y = v31;
    v37.size.width = v30;
    v37.size.height = r1;
    v29 = v2 + x * CGRectGetWidth(v37);
    v38.origin.x = v2;
    v38.origin.y = v31;
    v38.size.width = v30;
    v38.size.height = r1;
    v27 = v31 + y * CGRectGetHeight(v38);
    v39.origin.x = v2;
    v39.origin.y = v31;
    v39.size.width = v30;
    v39.size.height = r1;
    v14 = CGRectGetWidth(v39);
    v40.origin.x = x;
    v40.origin.y = y;
    v40.size.width = width;
    v40.size.height = height;
    r2a = v14 * CGRectGetWidth(v40);
    v41.origin.x = v2;
    v41.origin.y = v31;
    v41.size.width = v30;
    v41.size.height = r1;
    v15 = CGRectGetHeight(v41);
    v42.origin.x = x;
    v42.origin.y = y;
    v42.size.width = width;
    v42.size.height = height;
    v44.size.height = v15 * CGRectGetHeight(v42);
    v43.origin.x = v2;
    v43.origin.y = v31;
    v43.size.width = v30;
    v43.size.height = r1;
    v44.origin.y = v27;
    v44.origin.x = v29;
    v44.size.width = r2a;
    CGRectIntersection(v43, v44);
  }
}

uint64_t sub_1D8AA7670@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a1;
  v41 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68EB0, &qword_1D8B3CFC0);
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v32 = &v32 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65F10, &unk_1D8B2D300);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v32 - v6;
  v38 = sub_1D8B13240();
  v36 = *(v38 - 8);
  v8 = v36;
  v43 = *(v36 + 64);
  v9 = MEMORY[0x1EEE9AC00](v38);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v32 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65F18, &qword_1D8B2D570);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v32 - v16;
  v40 = v2;
  v42 = *(v2 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_requests);
  v37 = sub_1D8AB859C(&qword_1EE0E7FA8, type metadata accessor for BundleSelector, &protocol conformance descriptor for BundleSelector);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67590, &qword_1D8B33AE0);

  sub_1D8B15EB0();
  v18 = v13;
  v35 = v13;
  sub_1D8B13230();
  v19 = *(v8 + 16);
  v20 = v38;
  v19(v11, v18, v38);
  (*(v15 + 16))(v7, v17, v14);
  v44 = v15;
  v39 = v14;
  (*(v15 + 56))(v7, 0, 1, v14);
  swift_beginAccess();
  sub_1D895EFA4(v7, v11);
  swift_endAccess();
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  *(v22 + 24) = v37;
  swift_unknownObjectWeakInit();
  v23 = v35;
  v24 = v20;
  v19(v11, v35, v20);
  v25 = v36;
  v26 = (*(v36 + 80) + 24) & ~*(v36 + 80);
  v27 = (v43 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  *(v28 + 16) = v21;
  (*(v25 + 32))(v28 + v26, v11, v24);
  *(v28 + v27) = v22;

  v29 = v39;
  sub_1D8B15EC0();
  (*(v25 + 8))(v23, v24);

  if (v42)
  {
    v45 = v42;
    v30 = v32;
    sub_1D8B15EE0();
    (*(v33 + 8))(v30, v34);
  }

  return (*(v44 + 8))(v17, v29);
}

uint64_t sub_1D8AA7B6C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64978, &qword_1D8B25E90);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  *(&v7 - v4) = 1;
  (*(v3 + 104))(&v7 - v4, *MEMORY[0x1E69E8640], v2);
  sub_1D8AA7670(v5, a1);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1D8AA7C74@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68C08, &unk_1D8B3BE60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v49 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67980, &qword_1D8B231C0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v49 - v10;
  v12 = type metadata accessor for CVBundle(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_latestFrameMetadata + 24);
  v62 = *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_latestFrameMetadata + 16);
  v17 = *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_latestFrameMetadata);
  v18 = *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_latestFrameMetadata + 48);
  v58 = *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_latestFrameMetadata + 32);
  v59 = v18;
  v60 = *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_latestFrameMetadata + 64);
  v61 = v17;
  if (v16 == 2)
  {
    v19 = type metadata accessor for BundleSelector.Output(0);
    v20 = *(*(v19 - 8) + 56);

    return v20(a1, 1, 1, v19);
  }

  v56 = v9;
  v22 = OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_userSelectedBundle;
  swift_beginAccess();
  sub_1D87A0E38(v1 + v22, v11, &qword_1ECA67980, &qword_1D8B231C0);
  v55 = v13;
  v23 = &unk_1EE0E8000;
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1D87A14E4(v11, &qword_1ECA67980, &qword_1D8B231C0);
LABEL_9:
    v27 = v55;
    goto LABEL_10;
  }

  v54 = v16;
  sub_1D8ABD220(v11, v15, type metadata accessor for CVBundle);
  v24 = OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_saliencyRankedBundles;
  v25 = *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_saliencyRankedBundles);

  v26 = sub_1D88465D8(v15, v25);

  if (v26)
  {
    sub_1D8ABD158(v15, type metadata accessor for CVBundle);
    v16 = v54;
    v23 = &unk_1EE0E8000;
    goto LABEL_9;
  }

  v39 = *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_guaranteedBundles);

  v40 = sub_1D89A4C44(v15, v39);

  v53 = v12;
  if ((v40 & 1) == 0)
  {
    v41 = *(v1 + v24);
    v52 = v1;
    v57 = v41;
    v42 = *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_configuration + 40);

    sub_1D88F3C34(v43);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA634D0, &qword_1D8B22DD0);
    v27 = v55;
    v44 = *(v55 + 80);
    v45 = (v44 + 32) & ~v44;
    v51 = *(v55 + 72);
    v50 = v44;
    v46 = swift_allocObject();
    v49 = xmmword_1D8B1AB90;
    *(v46 + 16) = xmmword_1D8B1AB90;
    sub_1D8ABD1B8(v15, v46 + v45, type metadata accessor for CVBundle);
    sub_1D88F3C08(v46);
    v28 = sub_1D8AA8368(v57, 0x7FFFFFFFFFFFFFFFLL, v42);
    v29 = v47;

    if ((sub_1D88465D8(v15, v28) & 1) == 0)
    {
      v48 = swift_allocObject();
      *(v48 + 16) = v49;
      sub_1D8ABD1B8(v15, v48 + v45, type metadata accessor for CVBundle);
      v29 = sub_1D893F9F8(v48, v29);
      swift_setDeallocating();
      sub_1D8ABD158(v48 + v45, type metadata accessor for CVBundle);
      swift_deallocClassInstance();
    }

    v12 = v53;
    v16 = v54;
    v30 = v56;
    sub_1D8ABD158(v15, type metadata accessor for CVBundle);
    v1 = v52;
    goto LABEL_11;
  }

  sub_1D8ABD158(v15, type metadata accessor for CVBundle);
  v16 = v54;
  v27 = v55;
  v23 = &unk_1EE0E8000;
  v12 = v53;
LABEL_10:
  v28 = *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_saliencyRankedBundles);
  v29 = *(v1 + v23[16]);

  v30 = v56;
LABEL_11:
  v31 = OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_streamingMostSalientBundleAndScore;
  swift_beginAccess();
  sub_1D87A0E38(v1 + v31, v5, &qword_1ECA68C08, &unk_1D8B3BE60);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63DC0, &qword_1D8B25FE0);
  v33 = 1;
  if (!(*(*(v32 - 8) + 48))(v5, 1, v32))
  {
    sub_1D8ABD1B8(v5, v30, type metadata accessor for CVBundle);
    v33 = 0;
  }

  sub_1D87A14E4(v5, &qword_1ECA68C08, &unk_1D8B3BE60);
  (*(v27 + 56))(v30, v33, 1, v12);
  sub_1D8AA859C();
  v35 = v34;
  sub_1D881F6FC(v30, a1, &qword_1ECA67980, &qword_1D8B231C0);
  v36 = type metadata accessor for BundleSelector.Output(0);
  v37 = a1 + v36[5];
  *v37 = v61;
  *(v37 + 16) = v62;
  *(v37 + 24) = v16;
  v38 = v59;
  *(v37 + 32) = v58;
  *(v37 + 48) = v38;
  *(v37 + 64) = v60;
  *(a1 + v36[6]) = v28;
  *(a1 + v36[7]) = v29;
  *(a1 + v36[8]) = v35 & 1;
  return (*(*(v36 - 1) + 56))(a1, 0, 1, v36);
}

uint64_t sub_1D8AA8368(uint64_t a1, uint64_t a2, char a3)
{
  v6 = type metadata accessor for CVBundle(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    if (a3 == 1)
    {
      sub_1D8ABA020(a1, a2);
    }

    else
    {
      sub_1D8ABA690(a1, a2);
    }

    return v10;
  }

  result = sub_1D87E2580(a2, a1);
  v15 = v14 >> 1;
  v16 = (v14 >> 1) - v13;
  if (__OFSUB__(v14 >> 1, v13))
  {
    goto LABEL_20;
  }

  if (!v16)
  {

    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC0];
  }

  v17 = v12;
  v18 = v13;
  v24 = result;
  v25 = MEMORY[0x1E69E7CC0];

  result = sub_1D87F4074(0, v16 & ~(v16 >> 63), 0);
  if ((v16 & 0x8000000000000000) == 0)
  {
    v19 = v25;
    if (v18 <= v15)
    {
      v20 = v15;
    }

    else
    {
      v20 = v18;
    }

    while (v20 != v18)
    {
      v21 = *(v7 + 72);
      sub_1D8ABD1B8(v17 + v21 * v18, v9, type metadata accessor for CVBundle);
      v25 = v19;
      v23 = *(v19 + 16);
      v22 = *(v19 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1D87F4074((v22 > 1), v23 + 1, 1);
        v19 = v25;
      }

      *(v19 + 16) = v23 + 1;
      result = sub_1D8ABD220(v9, v19 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + v23 * v21, type metadata accessor for CVBundle);
      if (v15 == ++v18)
      {
        swift_unknownObjectRelease();
        return v19;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1D8AA859C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67980, &qword_1D8B231C0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v47 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68C08, &unk_1D8B3BE60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v47 - v5;
  v7 = type metadata accessor for CVBundle(0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v47 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v47 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v47 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v47 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v26 = &v47 - v25;
  if (*(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_latestFrameMetadata + 24) != 2 && (*(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_latestFrameMetadata + 40) & 1) != 0)
  {
    v27 = *(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_requests);
    if (v27)
    {
      if (!*(v27 + 16))
      {
        v49 = v24;
        v47 = v23;

        v48 = sub_1D87C4460(v28);

        v50 = v48;

        v48 = v0;
        sub_1D8AA48F4(v29);
        v30 = v48;
        v31 = OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_streamingMostSalientBundleAndScore;
        swift_beginAccess();
        sub_1D87A0E38(v30 + v31, v6, &qword_1ECA68C08, &unk_1D8B3BE60);
        v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63DC0, &qword_1D8B25FE0);
        if ((*(*(v32 - 8) + 48))(v6, 1, v32))
        {
          sub_1D87A14E4(v6, &qword_1ECA68C08, &unk_1D8B3BE60);
        }

        else
        {
          sub_1D8ABD1B8(v6, v22, type metadata accessor for CVBundle);
          sub_1D87A14E4(v6, &qword_1ECA68C08, &unk_1D8B3BE60);
          sub_1D8ABD220(v22, v26, type metadata accessor for CVBundle);
          sub_1D8ABD1B8(v26, v16, type metadata accessor for CVBundle);
          sub_1D87F99C4(v19, v16);
          v30 = v48;
          sub_1D8ABD158(v19, type metadata accessor for CVBundle);
          sub_1D8ABD158(v26, type metadata accessor for CVBundle);
        }

        v33 = OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_userSelectedBundle;
        swift_beginAccess();
        sub_1D87A0E38(v30 + v33, v3, &qword_1ECA67980, &qword_1D8B231C0);
        if ((*(v49 + 48))(v3, 1, v47) == 1)
        {
          sub_1D87A14E4(v3, &qword_1ECA67980, &qword_1D8B231C0);
        }

        else
        {
          sub_1D8ABD220(v3, v13, type metadata accessor for CVBundle);
          sub_1D8ABD1B8(v13, v16, type metadata accessor for CVBundle);
          sub_1D87F99C4(v19, v16);
          sub_1D8ABD158(v19, type metadata accessor for CVBundle);
          sub_1D8ABD158(v13, type metadata accessor for CVBundle);
        }

        v35 = sub_1D87C4460(v34);

        sub_1D8AA48F4(v35);
        v36 = v50;
        v37 = v50 + 56;
        v38 = 1 << *(v50 + 32);
        v39 = -1;
        if (v38 < 64)
        {
          v39 = ~(-1 << v38);
        }

        v40 = v39 & *(v50 + 56);
        v41 = (v38 + 63) >> 6;

        v42 = 0;
        while (v40)
        {
          v43 = v42;
          v44 = v49;
LABEL_23:
          v45 = __clz(__rbit64(v40));
          v40 &= v40 - 1;
          sub_1D8ABD1B8(*(v36 + 48) + *(v44 + 72) * (v45 | (v43 << 6)), v10, type metadata accessor for CVBundle);
          v46 = sub_1D8919304();
          sub_1D8ABD158(v10, type metadata accessor for CVBundle);
          if ((v46 & 1) == 0)
          {
LABEL_24:

            return;
          }
        }

        v44 = v49;
        while (1)
        {
          v43 = v42 + 1;
          if (__OFADD__(v42, 1))
          {
            break;
          }

          if (v43 >= v41)
          {
            goto LABEL_24;
          }

          v40 = *(v37 + 8 * v43);
          ++v42;
          if (v40)
          {
            v42 = v43;
            goto LABEL_23;
          }
        }

        __break(1u);
      }
    }
  }
}

double sub_1D8AA8BA0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67980, &qword_1D8B231C0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v14 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68C08, &unk_1D8B3BE60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  *(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_requests) = 0;

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63DC0, &qword_1D8B25FE0);
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_streamingMostSalientBundleAndScore;
  swift_beginAccess();
  sub_1D87B6EFC(v6, v0 + v8, &qword_1ECA68C08, &unk_1D8B3BE60);
  swift_endAccess();
  v9 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_saliencyRankedBundles) = MEMORY[0x1E69E7CC0];

  *(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_guaranteedBundles) = MEMORY[0x1E69E7CD0];

  *(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_refiningBundles) = v9;

  v10 = type metadata accessor for CVBundle(0);
  (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  v11 = OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_userSelectedBundle;
  swift_beginAccess();
  sub_1D87B6EFC(v3, v0 + v11, &qword_1ECA67980, &qword_1D8B231C0);
  swift_endAccess();
  v12 = v0 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_latestFrameMetadata;
  *v12 = 0;
  *(v12 + 8) = 0;
  *(v12 + 16) = 0;
  *(v12 + 24) = 2;
  result = 0.0;
  *(v12 + 32) = 0u;
  *(v12 + 48) = 0u;
  *(v12 + 64) = 0u;
  return result;
}

void sub_1D8AA8E04(_OWORD *a1)
{
  v465 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68EA8, &qword_1D8B3CFB8);
  MEMORY[0x1EEE9AC00](v465);
  v466 = v447 - v3;
  v491 = type metadata accessor for BundleSelector.Output(0);
  v481 = *(v491 - 8);
  v4 = MEMORY[0x1EEE9AC00](v491);
  v463 = v447 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v462 = v447 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v474 = v447 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v461 = v447 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v450 = v447 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v478 = v447 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64110, &qword_1D8B3CFB0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v455 = v447 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68C08, &unk_1D8B3BE60);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v482 = v447 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = v447 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v468 = v447 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v467 = v447 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v473 = v447 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v458 = v447 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v472 = v447 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v470 = v447 - v33;
  v506 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64298, &qword_1D8B23BE0);
  MEMORY[0x1EEE9AC00](v506);
  v505 = v447 - v34;
  v531 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63DC0, &qword_1D8B25FE0);
  isa = v531[-1].isa;
  v35 = MEMORY[0x1EEE9AC00](v531);
  v509 = v447 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v514 = v447 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v515 = v447 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v497 = v447 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v457 = v447 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v456 = v447 - v46;
  v47 = MEMORY[0x1EEE9AC00](v45);
  v471 = v447 - v48;
  v49 = MEMORY[0x1EEE9AC00](v47);
  v522 = v447 - v50;
  v51 = MEMORY[0x1EEE9AC00](v49);
  v524 = v447 - v52;
  v53 = MEMORY[0x1EEE9AC00](v51);
  v525 = v447 - v54;
  v55 = MEMORY[0x1EEE9AC00](v53);
  v511 = (v447 - v56);
  MEMORY[0x1EEE9AC00](v55);
  v530 = v447 - v57;
  v58 = type metadata accessor for CVTrackSnapshot(0);
  MEMORY[0x1EEE9AC00](v58 - 8);
  v494 = v447 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v507 = type metadata accessor for CVBundle.BundleType(0);
  v60 = MEMORY[0x1EEE9AC00](v507);
  v504 = v447 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v60);
  v63 = v447 - v62;
  v510 = sub_1D8B13240();
  v64 = *(v510 - 8);
  v65 = MEMORY[0x1EEE9AC00](v510);
  v485 = v447 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = MEMORY[0x1EEE9AC00](v65);
  v503 = v447 - v68;
  MEMORY[0x1EEE9AC00](v67);
  v70 = v447 - v69;
  v493 = type metadata accessor for CVBundle(0);
  v528 = *(v493 - 8);
  v71 = MEMORY[0x1EEE9AC00](v493);
  v521 = v447 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = MEMORY[0x1EEE9AC00](v71);
  v476 = v447 - v74;
  v75 = MEMORY[0x1EEE9AC00](v73);
  v487 = v447 - v76;
  v77 = MEMORY[0x1EEE9AC00](v75);
  v459 = v447 - v78;
  v79 = MEMORY[0x1EEE9AC00](v77);
  v453 = v447 - v80;
  v81 = MEMORY[0x1EEE9AC00](v79);
  v454 = v447 - v82;
  v83 = MEMORY[0x1EEE9AC00](v81);
  v520 = v447 - v84;
  MEMORY[0x1EEE9AC00](v83);
  v86 = v447 - v85;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67980, &qword_1D8B231C0);
  v88 = MEMORY[0x1EEE9AC00](v87 - 8);
  v451 = v447 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = MEMORY[0x1EEE9AC00](v88);
  v464 = v447 - v91;
  v92 = MEMORY[0x1EEE9AC00](v90);
  v486 = v447 - v93;
  v94 = MEMORY[0x1EEE9AC00](v92);
  v480 = v447 - v95;
  v96 = MEMORY[0x1EEE9AC00](v94);
  v469 = v447 - v97;
  v98 = MEMORY[0x1EEE9AC00](v96);
  v100 = v447 - v99;
  v101 = MEMORY[0x1EEE9AC00](v98);
  v495 = (v447 - v102);
  MEMORY[0x1EEE9AC00](v101);
  v104 = v447 - v103;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63178, &unk_1D8B1E6B0);
  v106 = MEMORY[0x1EEE9AC00](v105 - 8);
  v492 = v447 - ((v107 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = MEMORY[0x1EEE9AC00](v106);
  v513 = v447 - v109;
  MEMORY[0x1EEE9AC00](v108);
  v512 = v447 - v110;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA640E8, &qword_1D8B23190);
  v112 = MEMORY[0x1EEE9AC00](v111 - 8);
  v113 = MEMORY[0x1EEE9AC00](v112);
  v114 = MEMORY[0x1EEE9AC00](v113);
  MEMORY[0x1EEE9AC00](v114);
  v119 = a1[3];
  *&v543[32] = a1[2];
  *&v543[48] = v119;
  v120 = a1[5];
  *&v543[64] = a1[4];
  *&v543[80] = v120;
  v121 = a1[1];
  *v543 = *a1;
  *&v543[16] = v121;
  v516 = v1;
  v122 = (v1 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_latestFrameMetadata);
  v123 = *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_latestFrameMetadata + 32);
  if (*(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_latestFrameMetadata + 24) == 2)
  {
    v123 = -INFINITY;
  }

  v479 = *&v543[40];
  if (v123 < *&v543[40] || v543[48] == 1)
  {
    v452 = v22;
    v477 = v118;
    v460 = v117;
    v448 = v116;
    v483 = v447 - v115;
    v124 = v516;
    sub_1D8AA7C74(v447 - v115);
    v125 = *&v543[56];
    v122[2] = *&v543[40];
    v122[3] = v125;
    v122[4] = *&v543[72];
    v126 = *&v543[24];
    v484 = &v543[8];
    *v122 = *&v543[8];
    v122[1] = v126;
    v127 = OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_userSelectedBundle;
    swift_beginAccess();
    sub_1D87A0E38(v124 + v127, v104, &qword_1ECA67980, &qword_1D8B231C0);
    v128 = v528 + 48;
    v129 = *(v528 + 48);
    v130 = v129(v104, 1, v493);
    v447[1] = v128;
    if (v130)
    {
      sub_1D87A14E4(v104, &qword_1ECA67980, &qword_1D8B231C0);
      v131 = 1;
      v132 = v512;
      v133 = v510;
    }

    else
    {
      sub_1D8ABD1B8(v104, v86, type metadata accessor for CVBundle);
      sub_1D87A14E4(v104, &qword_1ECA67980, &qword_1D8B231C0);
      sub_1D8ABD1B8(v86, v63, type metadata accessor for CVBundle.BundleType);
      sub_1D8ABD158(v86, type metadata accessor for CVBundle);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v134 = *(v64 + 32);
        v133 = v510;
        v134(v70, v63, v510);
      }

      else
      {
        v135 = v494;
        sub_1D8ABD220(v63, v494, type metadata accessor for CVTrackSnapshot);
        v133 = v510;
        (*(v64 + 16))(v70, v135, v510);
        sub_1D8ABD158(v135, type metadata accessor for CVTrackSnapshot);
        v134 = *(v64 + 32);
      }

      v132 = v512;
      v134(v512, v70, v133);
      v131 = 0;
    }

    v499 = *(v64 + 56);
    v500 = v64 + 56;
    v136 = v499(v132, v131, 1, v133);
    v137 = *v543;
    MEMORY[0x1EEE9AC00](v136);
    v447[-2] = v132;
    v138 = v495;
    sub_1D87EE048(sub_1D8ABD288, v137, v495);
    v475 = 0;
    sub_1D87A0E38(v138, v100, &qword_1ECA67980, &qword_1D8B231C0);
    v139 = v516;
    swift_beginAccess();
    v140 = v139 + v127;
    v141 = v139;
    sub_1D87B6EFC(v100, v140, &qword_1ECA67980, &qword_1D8B231C0);
    swift_endAccess();
    v142 = OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_logger;
    swift_bridgeObjectRetain_n();
    sub_1D8943B30(v543, &v538);
    v501 = v142;
    v143 = sub_1D8B151C0();
    v144 = sub_1D8B16200();
    sub_1D88C39F8(v543);
    if (os_log_type_enabled(v143, v144))
    {
      v145 = swift_slowAlloc();
      v146 = swift_slowAlloc();
      v535[0] = v146;
      *v145 = 136315394;
      v147 = v543[48];
      v148 = 0xE000000000000000;
      *&v538 = 0;
      *(&v538 + 1) = 0xE000000000000000;
      sub_1D8B16020();
      if (v147)
      {
        v149 = 0x296C6C6974532820;
      }

      else
      {
        v149 = 0;
      }

      if (v147)
      {
        v148 = 0xE800000000000000;
      }

      MEMORY[0x1DA71EFA0](v149, v148);

      v150 = sub_1D89AC714(v538, *(&v538 + 1), v535);

      *(v145 + 4) = v150;
      v141 = v516;
      *(v145 + 12) = 2048;
      v151 = *(v137 + 16);

      *(v145 + 14) = v151;

      _os_log_impl(&dword_1D8783000, v143, v144, "Retrieved new bundleManagerOutput: t = %s, bundles: %ld", v145, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v146);
      MEMORY[0x1DA721330](v146, -1, -1);
      MEMORY[0x1DA721330](v145, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    v449 = v543[48];
    if ((v543[48] & 1) != 0 && *(v141 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_configuration) != 1)
    {
      v488 = 1;
      v152 = &OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_stillRanker;
    }

    else
    {
      v488 = 0;
      v152 = &OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_streamingRanker;
    }

    sub_1D87C1470(v141 + *v152, v535);
    v153 = v536;
    v154 = v537;
    v155 = __swift_project_boxed_opaque_existential_1(v535, v536);
    v156 = v484[3];
    v540 = v484[2];
    v541 = v156;
    v542 = v484[4];
    v157 = v484[1];
    v538 = *v484;
    v539 = v157;
    LOBYTE(v534[0]) = 0;
    v518 = v137;
    v158 = sub_1D8ABAEBC(v137, &v538, v534, v155, v153, v154);
    v159 = *(v158 + 16);
    v447[0] = v129;
    v527 = v158;
    v526 = v159;
    if (v159)
    {
      v160 = 0;
      v161 = (v64 + 48);
      v489 = (v64 + 8);
      v490 = (v64 + 16);
      v517 = MEMORY[0x1E69E7CC0];
      v498 = (v64 + 32);
      v508 = (v64 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v496 = (v64 + 48);
      while (1)
      {
        if (v160 >= *(v158 + 16))
        {
          __break(1u);
          goto LABEL_222;
        }

        v162 = *&isa[9].isa;
        v523 = ((LOBYTE(isa[10].isa) + 32) & ~LOBYTE(isa[10].isa));
        v163 = v530;
        sub_1D87A0E38(v523 + v158 + *&v162 * v160, v530, &qword_1ECA63DC0, &qword_1D8B25FE0);
        if (*(v163 + SLODWORD(v531[6].isa)) > 0.0)
        {
          v519 = sub_1D8AA736C();
          v165 = v164;
          v167 = v166;
          v169 = v168;
          CVBundle.corners.getter(&v538);
          v171 = *(&v538 + 1);
          v170 = *&v538;
          if (*&v539 >= *&v538)
          {
            v172 = *&v538;
          }

          else
          {
            v172 = *&v539;
          }

          if (*&v540 < v172)
          {
            v172 = *&v540;
          }

          if (*&v541 >= v172)
          {
            v173 = v172;
          }

          else
          {
            v173 = *&v541;
          }

          if (*(&v539 + 1) >= *(&v538 + 1))
          {
            v174 = *(&v538 + 1);
          }

          else
          {
            v174 = *(&v539 + 1);
          }

          if (*(&v540 + 1) < v174)
          {
            v174 = *(&v540 + 1);
          }

          if (*(&v541 + 1) >= v174)
          {
            v175 = v174;
          }

          else
          {
            v175 = *(&v541 + 1);
          }

          if (*&v538 <= *&v539)
          {
            v170 = *&v539;
          }

          if (v170 <= *&v540)
          {
            v170 = *&v540;
          }

          if (v170 <= *&v541)
          {
            v170 = *&v541;
          }

          if (*(&v538 + 1) <= *(&v539 + 1))
          {
            v171 = *(&v539 + 1);
          }

          if (v171 <= *(&v540 + 1))
          {
            v171 = *(&v540 + 1);
          }

          if (v171 <= *(&v541 + 1))
          {
            v171 = *(&v541 + 1);
          }

          v176 = v170 - v173;
          v177 = v171 - v175;
          v545.origin.x = v173;
          v545.origin.y = v175;
          v545.size.width = v176;
          v545.size.height = v177;
          MidX = CGRectGetMidX(v545);
          v546.origin.x = v173;
          v546.origin.y = v175;
          v546.size.width = v176;
          v546.size.height = v177;
          v544.y = CGRectGetMidY(v546);
          v547.origin.x = v519;
          v547.origin.y = v165;
          v547.size.width = v167;
          v547.size.height = v169;
          v544.x = MidX;
          if (CGRectContainsPoint(v547, v544))
          {
            v519 = v162;
            v179 = v504;
            sub_1D8ABD1B8(v530, v504, type metadata accessor for CVBundle.BundleType);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              v180 = *v498;
              v181 = v503;
              v182 = v179;
              v183 = v510;
              (*v498)(v503, v182, v510);
            }

            else
            {
              v184 = v494;
              sub_1D8ABD220(v179, v494, type metadata accessor for CVTrackSnapshot);
              v181 = v503;
              v183 = v510;
              (*v490)(v503, v184, v510);
              sub_1D8ABD158(v184, type metadata accessor for CVTrackSnapshot);
              v180 = *v498;
            }

            v185 = v513;
            v502 = v180;
            v180(v513, v181, v183);
            v499(v185, 0, 1, v183);
            v186 = *(v506 + 48);
            v187 = v183;
            v188 = v505;
            sub_1D87A0E38(v185, v505, &qword_1ECA63178, &unk_1D8B1E6B0);
            sub_1D87A0E38(v512, v188 + v186, &qword_1ECA63178, &unk_1D8B1E6B0);
            v189 = *v161;
            if ((*v161)(v188, 1, v187) == 1)
            {
              sub_1D87A14E4(v185, &qword_1ECA63178, &unk_1D8B1E6B0);
              if (v189(v188 + v186, 1, v187) != 1)
              {
                goto LABEL_67;
              }

              sub_1D87A14E4(v188, &qword_1ECA63178, &unk_1D8B1E6B0);
            }

            else
            {
              v190 = v492;
              sub_1D87A0E38(v188, v492, &qword_1ECA63178, &unk_1D8B1E6B0);
              if (v189(v188 + v186, 1, v187) == 1)
              {
                sub_1D87A14E4(v513, &qword_1ECA63178, &unk_1D8B1E6B0);
                (*v489)(v190, v187);
LABEL_67:
                sub_1D87A14E4(v188, &qword_1ECA64298, &qword_1D8B23BE0);
                v191 = v519;
LABEL_68:
                sub_1D881F6FC(v530, v511, &qword_1ECA63DC0, &qword_1D8B25FE0);
                v192 = v517;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v534[0] = v192;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  sub_1D87F46CC(0, *(v192 + 16) + 1, 1);
                  v192 = v534[0];
                }

                v195 = *(v192 + 16);
                v194 = *(v192 + 24);
                if (v195 >= v194 >> 1)
                {
                  sub_1D87F46CC((v194 > 1), v195 + 1, 1);
                  v192 = v534[0];
                }

                *(v192 + 16) = v195 + 1;
                v517 = v192;
                sub_1D881F6FC(v511, v523 + v192 + v195 * *&v191, &qword_1ECA63DC0, &qword_1D8B25FE0);
                v161 = v496;
                goto LABEL_27;
              }

              v196 = v485;
              v502(v485, v188 + v186, v187);
              sub_1D8AB859C(&qword_1EE0E9898, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
              LODWORD(v502) = sub_1D8B158C0();
              v197 = *v489;
              v198 = v196;
              v161 = v496;
              (*v489)(v198, v187);
              sub_1D87A14E4(v513, &qword_1ECA63178, &unk_1D8B1E6B0);
              v197(v190, v187);
              sub_1D87A14E4(v188, &qword_1ECA63178, &unk_1D8B1E6B0);
              v191 = v519;
              if ((v502 & 1) == 0)
              {
                goto LABEL_68;
              }
            }
          }
        }

        sub_1D87A14E4(v530, &qword_1ECA63DC0, &qword_1D8B25FE0);
LABEL_27:
        ++v160;
        v158 = v527;
        if (v526 == v160)
        {
          goto LABEL_76;
        }
      }
    }

    v517 = MEMORY[0x1E69E7CC0];
LABEL_76:
    v199 = v518;

    v200 = sub_1D8B151C0();
    v201 = sub_1D8B16200();

    if (os_log_type_enabled(v200, v201))
    {
      v202 = swift_slowAlloc();
      v530 = swift_slowAlloc();
      *&v538 = v530;
      *v202 = 136315138;
      v203 = *(v199 + 16);
      v204 = MEMORY[0x1E69E7CC0];
      if (v203)
      {
        v513 = v202;
        LODWORD(v519) = v201;
        v523 = v200;
        v534[0] = MEMORY[0x1E69E7CC0];
        sub_1D87F3F54(0, v203, 0);
        v204 = v534[0];
        v205 = v199 + ((*(v528 + 80) + 32) & ~*(v528 + 80));
        v206 = *(v528 + 72);
        do
        {
          v207 = v520;
          sub_1D8ABD1B8(v205, v520, type metadata accessor for CVBundle);
          v208 = sub_1D8919AAC();
          v210 = v209;
          sub_1D8ABD158(v207, type metadata accessor for CVBundle);
          v534[0] = v204;
          v212 = *(v204 + 16);
          v211 = *(v204 + 24);
          if (v212 >= v211 >> 1)
          {
            sub_1D87F3F54((v211 > 1), v212 + 1, 1);
            v204 = v534[0];
          }

          *(v204 + 16) = v212 + 1;
          v213 = v204 + 16 * v212;
          *(v213 + 32) = v208;
          *(v213 + 40) = v210;
          v205 += v206;
          --v203;
        }

        while (v203);
        v200 = v523;
        LOBYTE(v201) = LOBYTE(v519);
        v202 = v513;
      }

      v534[0] = v204;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64D60, &unk_1D8B1E8D0);
      sub_1D881CF20(&qword_1EE0E3938, &unk_1ECA64D60, &unk_1D8B1E8D0, MEMORY[0x1E69E6310]);
      v214 = sub_1D8B15810();
      v216 = v215;

      v217 = sub_1D89AC714(v214, v216, &v538);

      *(v202 + 4) = v217;
      _os_log_impl(&dword_1D8783000, v200, v201, "all bundles: [%s]", v202, 0xCu);
      v218 = v530;
      __swift_destroy_boxed_opaque_existential_1(v530);
      MEMORY[0x1DA721330](v218, -1, -1);
      MEMORY[0x1DA721330](v202, -1, -1);
    }

    else
    {
    }

    v219 = v517;

    v220 = sub_1D8B151C0();
    v221 = sub_1D8B16200();

    if (os_log_type_enabled(v220, v221))
    {
      v222 = swift_slowAlloc();
      v223 = swift_slowAlloc();
      v224 = v223;
      *&v538 = v223;
      *v222 = 136315138;
      v225 = *(v219 + 16);
      v226 = MEMORY[0x1E69E7CC0];
      if (v225)
      {
        v511 = v223;
        v513 = v222;
        LODWORD(v519) = v221;
        v523 = v220;
        v534[0] = MEMORY[0x1E69E7CC0];
        sub_1D87F3F54(0, v225, 0);
        v226 = v534[0];
        v227 = v219 + ((LOBYTE(isa[10].isa) + 32) & ~LOBYTE(isa[10].isa));
        v530 = isa[9].isa;
        do
        {
          v228 = v525;
          sub_1D87A0E38(v227, v525, &qword_1ECA63DC0, &qword_1D8B25FE0);
          v229 = v524;
          sub_1D87A0E38(v228, v524, &qword_1ECA63DC0, &qword_1D8B25FE0);
          isa_low = SLODWORD(v531[6].isa);
          v231 = *(v229 + isa_low);
          v232 = v522;
          sub_1D8ABD220(v229, v522, type metadata accessor for CVBundle);
          *(v232 + isa_low) = v231;
          v233 = sub_1D8919AAC();
          v235 = v234;
          sub_1D87A14E4(v232, &qword_1ECA63DC0, &qword_1D8B25FE0);
          sub_1D87A14E4(v228, &qword_1ECA63DC0, &qword_1D8B25FE0);
          v534[0] = v226;
          v237 = *(v226 + 16);
          v236 = *(v226 + 24);
          if (v237 >= v236 >> 1)
          {
            sub_1D87F3F54((v236 > 1), v237 + 1, 1);
            v226 = v534[0];
          }

          *(v226 + 16) = v237 + 1;
          v238 = v226 + 16 * v237;
          *(v238 + 32) = v233;
          *(v238 + 40) = v235;
          v227 += v530;
          --v225;
        }

        while (v225);
        v219 = v517;
        v220 = v523;
        LOBYTE(v221) = LOBYTE(v519);
        v222 = v513;
        v224 = v511;
      }

      v534[0] = v226;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64D60, &unk_1D8B1E8D0);
      sub_1D881CF20(&qword_1EE0E3938, &unk_1ECA64D60, &unk_1D8B1E8D0, MEMORY[0x1E69E6310]);
      v239 = sub_1D8B15810();
      v241 = v240;

      v242 = sub_1D89AC714(v239, v241, &v538);

      *(v222 + 4) = v242;
      _os_log_impl(&dword_1D8783000, v220, v221, "available ranked bundles: [%s]", v222, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v224);
      MEMORY[0x1DA721330](v224, -1, -1);
      MEMORY[0x1DA721330](v222, -1, -1);
    }

    v243 = v487;
    v244 = v497;
    if (v488)
    {
      v245 = OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_streamingMostSalientBundleAndScore;
      v246 = v516;
      swift_beginAccess();
      v247 = v470;
      sub_1D87A0E38(v246 + v245, v470, &qword_1ECA68C08, &unk_1D8B3BE60);
      v248 = isa[6].isa;
      v523 = isa + 6;
      v519 = *&v248;
      v249 = v248(v247, 1, v531);
      v515 = v245;
      if (v249 == 1)
      {
        sub_1D87A14E4(v247, &qword_1ECA68C08, &unk_1D8B3BE60);
        v250 = v246;
      }

      else
      {
        v268 = v471;
        v269 = sub_1D881F6FC(v247, v471, &qword_1ECA63DC0, &qword_1D8B25FE0);
        MEMORY[0x1EEE9AC00](v269);
        v447[-2] = v268;
        v270 = v472;
        v271 = v475;
        sub_1D87EE250(sub_1D8ABD2C8, v272, v472);
        v475 = v271;
        v273 = v270;
        v274 = v458;
        sub_1D87A0E38(v273, v458, &qword_1ECA68C08, &unk_1D8B3BE60);
        v275 = v456;
        sub_1D87A0E38(v268, v456, &qword_1ECA63DC0, &qword_1D8B25FE0);
        v276 = v268;
        v277 = v457;
        sub_1D87A0E38(v276, v457, &qword_1ECA63DC0, &qword_1D8B25FE0);
        sub_1D8943B30(v543, &v538);
        v278 = sub_1D8B151C0();
        v279 = sub_1D8B16230();
        sub_1D88C39F8(v543);
        if (os_log_type_enabled(v278, v279))
        {
          v280 = swift_slowAlloc();
          v530 = swift_slowAlloc();
          *&v538 = v530;
          *v280 = 136315650;
          v281 = (*&v519)(v274, 1, v531);
          LODWORD(v513) = v279;
          if (v281 == 1)
          {
            v282 = 0x676E697261656C63;
          }

          else
          {
            v282 = 0x6976726573657270;
          }

          if (v281 == 1)
          {
            v283 = 0xE800000000000000;
          }

          else
          {
            v283 = 0xEA0000000000676ELL;
          }

          sub_1D87A14E4(v274, &qword_1ECA68C08, &unk_1D8B3BE60);
          v284 = sub_1D89AC714(v282, v283, &v538);

          *(v280 + 4) = v284;
          *(v280 + 12) = 2080;
          v285 = v275;
          v286 = v275;
          v287 = v277;
          v288 = v525;
          sub_1D87A0E38(v285, v525, &qword_1ECA63DC0, &qword_1D8B25FE0);
          v289 = sub_1D8919AAC();
          v291 = v290;
          sub_1D87A14E4(v286, &qword_1ECA63DC0, &qword_1D8B25FE0);
          sub_1D8ABD158(v288, type metadata accessor for CVBundle);
          v292 = sub_1D89AC714(v289, v291, &v538);

          *(v280 + 14) = v292;
          *(v280 + 22) = 2048;
          sub_1D87A0E38(v287, v288, &qword_1ECA63DC0, &qword_1D8B25FE0);
          v293 = sub_1D892004C();
          v243 = v487;
          sub_1D87A14E4(v287, &qword_1ECA63DC0, &qword_1D8B25FE0);
          sub_1D8ABD158(v288, type metadata accessor for CVBundle);
          *(v280 + 24) = v479 - v293;
          _os_log_impl(&dword_1D8783000, v278, v513, "Still arrival: %s streaming most salient bundle: %s (age: %f)", v280, 0x20u);
          v294 = v530;
          swift_arrayDestroy();
          MEMORY[0x1DA721330](v294, -1, -1);
          MEMORY[0x1DA721330](v280, -1, -1);
        }

        else
        {

          sub_1D87A14E4(v277, &qword_1ECA63DC0, &qword_1D8B25FE0);
          sub_1D87A14E4(v275, &qword_1ECA63DC0, &qword_1D8B25FE0);
          sub_1D87A14E4(v274, &qword_1ECA68C08, &unk_1D8B3BE60);
        }

        v250 = v516;
        v245 = v515;
        swift_beginAccess();
        sub_1D87B6EFC(v472, v250 + v245, &qword_1ECA68C08, &unk_1D8B3BE60);
        swift_endAccess();
        sub_1D87A14E4(v471, &qword_1ECA63DC0, &qword_1D8B25FE0);
        v219 = v517;
      }

      v295 = *(v219 + 16);
      v296 = MEMORY[0x1E69E7CC0];
      if (v295)
      {
        *&v538 = MEMORY[0x1E69E7CC0];
        sub_1D87F4074(0, v295, 0);
        v296 = v538;
        v297 = v219 + ((LOBYTE(isa[10].isa) + 32) & ~LOBYTE(isa[10].isa));
        v530 = isa[9].isa;
        v298 = v459;
        do
        {
          v299 = v525;
          sub_1D87A0E38(v297, v525, &qword_1ECA63DC0, &qword_1D8B25FE0);
          v300 = v524;
          sub_1D87A0E38(v299, v524, &qword_1ECA63DC0, &qword_1D8B25FE0);
          v301 = SLODWORD(v531[6].isa);
          v302 = *(v300 + v301);
          v303 = v300;
          v304 = v522;
          sub_1D8ABD220(v303, v522, type metadata accessor for CVBundle);
          *(v304 + v301) = v302;
          sub_1D8ABD1B8(v304, v298, type metadata accessor for CVBundle);
          sub_1D87A14E4(v304, &qword_1ECA63DC0, &qword_1D8B25FE0);
          sub_1D87A14E4(v299, &qword_1ECA63DC0, &qword_1D8B25FE0);
          *&v538 = v296;
          v306 = *(v296 + 16);
          v305 = *(v296 + 24);
          if (v306 >= v305 >> 1)
          {
            sub_1D87F4074((v305 > 1), v306 + 1, 1);
            v298 = v459;
            v296 = v538;
          }

          *(v296 + 16) = v306 + 1;
          sub_1D8ABD220(v298, v296 + ((*(v528 + 80) + 32) & ~*(v528 + 80)) + *(v528 + 72) * v306, type metadata accessor for CVBundle);
          v297 += v530;
          --v295;
        }

        while (v295);
        v250 = v516;
        v243 = v487;
        v245 = v515;
      }

      *&v538 = v296;
      v307 = v473;
      sub_1D87A0E38(v250 + v245, v473, &qword_1ECA68C08, &unk_1D8B3BE60);
      if ((*&v519)(v307, 1, v531))
      {
        sub_1D87A14E4(v307, &qword_1ECA68C08, &unk_1D8B3BE60);
      }

      else
      {
        v308 = v453;
        sub_1D8ABD1B8(v307, v453, type metadata accessor for CVBundle);
        sub_1D87A14E4(v307, &qword_1ECA68C08, &unk_1D8B3BE60);
        v309 = v454;
        v310 = sub_1D8ABD220(v308, v454, type metadata accessor for CVBundle);
        MEMORY[0x1EEE9AC00](v310);
        v447[-2] = v309;

        v311 = v475;
        v312 = sub_1D87C6A8C(sub_1D8ABD2A8, &v447[-4], v296);
        v475 = v311;

        *&v538 = v312;
        v250 = v516;
        v313 = v455;
        sub_1D8ABD1B8(v309, v455, type metadata accessor for CVBundle);
        sub_1D885CEE4(0, 0, v313);
        sub_1D8ABD158(v309, type metadata accessor for CVBundle);
        v296 = v538;
      }

      v314 = *(v518 + 16);
      if (v314)
      {
        v315 = v518 + ((*(v528 + 80) + 32) & ~*(v528 + 80));

        v316 = 0;
        while (1)
        {
          if (v316 >= *(v518 + 16))
          {
            goto LABEL_225;
          }

          sub_1D8ABD1B8(v315 + *(v528 + 72) * v316, v243, type metadata accessor for CVBundle);
          CVBundle.latestDetection.getter(v533);
          if (v533[0] >> 60 == 11)
          {
            v317 = type metadata accessor for SyntheticDetectionResult(0);
            if ((*(swift_projectBox() + *(v317 + 24)) & 1) == 0)
            {

              goto LABEL_143;
            }

            v318 = sub_1D8B16BA0();

            if (v318)
            {

LABEL_143:
              v320 = v469;
              sub_1D8ABD220(v243, v469, type metadata accessor for CVBundle);
              v319 = 0;
              v250 = v516;
              v267 = v514;
              goto LABEL_144;
            }
          }

          ++v316;
          sub_1D8ABD158(v243, type metadata accessor for CVBundle);

          if (v314 == v316)
          {
            v319 = 1;
            v250 = v516;
            goto LABEL_141;
          }
        }
      }

      v319 = 1;
LABEL_141:
      v267 = v514;
      v320 = v469;
LABEL_144:
      (*(v528 + 56))(v320, v319, 1, v493);

      sub_1D8AAF8D8(v296, v320);
      v322 = v321;
      v324 = v323;

      sub_1D87A14E4(v320, &qword_1ECA67980, &qword_1D8B231C0);
      *(v250 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_saliencyRankedBundles) = v322;

      *(v250 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_guaranteedBundles) = v324;
    }

    else
    {
      v251 = MEMORY[0x1E69E7CC0];
      v530 = *(v219 + 16);
      if (v530)
      {
        v252 = 0;
        v523 = (v516 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_configuration);
        while (v252 < *(v219 + 16))
        {
          v253 = (LOBYTE(isa[10].isa) + 32) & ~LOBYTE(isa[10].isa);
          v254 = isa[9].isa;
          sub_1D87A0E38(v219 + v253 + v254 * v252, v244, &qword_1ECA63DC0, &qword_1D8B25FE0);
          v255 = v244;
          if (!BYTE3(v523[5].isa) || (BYTE3(v523[5].isa) == 1 || (sub_1D8919304() & 1) != 0) && (v256 = CVBundle.classifications.getter()[2], , v256))
          {
            sub_1D881F6FC(v255, v515, &qword_1ECA63DC0, &qword_1D8B25FE0);
            v257 = swift_isUniquelyReferenced_nonNull_native();
            *&v538 = v251;
            if (v257)
            {
              v244 = v255;
            }

            else
            {
              sub_1D87F46CC(0, *(v251 + 16) + 1, 1);
              v244 = v497;
              v251 = v538;
            }

            v259 = *(v251 + 16);
            v258 = *(v251 + 24);
            if (v259 >= v258 >> 1)
            {
              sub_1D87F46CC((v258 > 1), v259 + 1, 1);
              v244 = v497;
              v251 = v538;
            }

            *(v251 + 16) = v259 + 1;
            sub_1D881F6FC(v515, v251 + v253 + v259 * v254, &qword_1ECA63DC0, &qword_1D8B25FE0);
            v219 = v517;
          }

          else
          {
            sub_1D87A14E4(v255, &qword_1ECA63DC0, &qword_1D8B25FE0);
            v244 = v255;
          }

          if (v530 == ++v252)
          {
            goto LABEL_111;
          }
        }

LABEL_224:
        __break(1u);
LABEL_225:
        __break(1u);
        goto LABEL_226;
      }

LABEL_111:
      v260 = OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_streamingMostSalientBundleAndScore;
      v261 = v516;
      swift_beginAccess();
      v262 = v467;
      sub_1D87A0E38(v261 + v260, v467, &qword_1ECA68C08, &unk_1D8B3BE60);
      v263 = v468;
      sub_1D8AB0B60(v262, 1, v468);

      v264 = v484[3];
      v540 = v484[2];
      v541 = v264;
      v542 = v484[4];
      v265 = v484[1];
      v538 = *v484;
      v539 = v265;
      v266 = v452;
      sub_1D8AB0148(v263, v262, &v538, v452);
      swift_beginAccess();
      sub_1D87B6EFC(v266, v261 + v260, &qword_1ECA68C08, &unk_1D8B3BE60);
      swift_endAccess();
      *(v261 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_saliencyRankedBundles) = MEMORY[0x1E69E7CC0];

      sub_1D87A14E4(v263, &qword_1ECA68C08, &unk_1D8B3BE60);
      sub_1D87A14E4(v262, &qword_1ECA68C08, &unk_1D8B3BE60);
      *(v261 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_guaranteedBundles) = MEMORY[0x1E69E7CD0];

      v267 = v514;
    }

    v325 = MEMORY[0x1E69E7CC0];
    v326 = v509;
    v327 = v527;
    if (v526)
    {
      v328 = 0;
      while (v328 < *(v327 + 16))
      {
        v329 = (LOBYTE(isa[10].isa) + 32) & ~LOBYTE(isa[10].isa);
        v330 = isa[9].isa;
        sub_1D87A0E38(v327 + v329 + v330 * v328, v267, &qword_1ECA63DC0, &qword_1D8B25FE0);
        if (*(v267 + SLODWORD(v531[6].isa)) <= 0.0)
        {
          sub_1D87A14E4(v267, &qword_1ECA63DC0, &qword_1D8B25FE0);
        }

        else
        {
          sub_1D881F6FC(v267, v326, &qword_1ECA63DC0, &qword_1D8B25FE0);
          v331 = swift_isUniquelyReferenced_nonNull_native();
          *&v538 = v325;
          if ((v331 & 1) == 0)
          {
            sub_1D87F46CC(0, *(v325 + 16) + 1, 1);
            v326 = v509;
            v325 = v538;
          }

          v333 = *(v325 + 16);
          v332 = *(v325 + 24);
          if (v333 >= v332 >> 1)
          {
            sub_1D87F46CC((v332 > 1), v333 + 1, 1);
            v326 = v509;
            v325 = v538;
          }

          *(v325 + 16) = v333 + 1;
          sub_1D881F6FC(v326, v325 + v329 + v333 * v330, &qword_1ECA63DC0, &qword_1D8B25FE0);
          v267 = v514;
        }

        ++v328;
        v327 = v527;
        if (v526 == v328)
        {
          goto LABEL_156;
        }
      }

LABEL_222:
      __break(1u);
LABEL_223:
      __break(1u);
      goto LABEL_224;
    }

LABEL_156:

    v334 = *(v325 + 16);
    if (v334)
    {
      *&v538 = MEMORY[0x1E69E7CC0];
      sub_1D87F4074(0, v334, 0);
      v335 = v538;
      v336 = v325 + ((LOBYTE(isa[10].isa) + 32) & ~LOBYTE(isa[10].isa));
      v530 = isa[9].isa;
      v337 = v476;
      do
      {
        v338 = v525;
        sub_1D87A0E38(v336, v525, &qword_1ECA63DC0, &qword_1D8B25FE0);
        v339 = v338;
        v340 = v524;
        sub_1D881F6FC(v339, v524, &qword_1ECA63DC0, &qword_1D8B25FE0);
        sub_1D8ABD220(v340, v337, type metadata accessor for CVBundle);
        *&v538 = v335;
        v342 = v335[2];
        v341 = v335[3];
        if (v342 >= v341 >> 1)
        {
          sub_1D87F4074((v341 > 1), v342 + 1, 1);
          v337 = v476;
          v335 = v538;
        }

        v335[2] = v342 + 1;
        sub_1D8ABD220(v337, v335 + ((*(v528 + 80) + 32) & ~*(v528 + 80)) + *(v528 + 72) * v342, type metadata accessor for CVBundle);
        v336 += v530;
        --v334;
      }

      while (v334);
    }

    else
    {

      v335 = MEMORY[0x1E69E7CC0];
    }

    v343 = sub_1D8B151C0();
    v344 = sub_1D8B16200();

    if (os_log_type_enabled(v343, v344))
    {
      v345 = swift_slowAlloc();
      v346 = swift_slowAlloc();
      *&v538 = v346;
      *v345 = 136315138;
      v347 = sub_1D8AACCE8(v335);
      v349 = sub_1D89AC714(v347, v348, &v538);

      *(v345 + 4) = v349;
      _os_log_impl(&dword_1D8783000, v343, v344, "bundles eligible for service: [%s]", v345, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v346);
      MEMORY[0x1DA721330](v346, -1, -1);
      MEMORY[0x1DA721330](v345, -1, -1);
    }

    v350 = *(v518 + 16);
    if (v350)
    {
      v351 = 0;
      v352 = v518 + ((*(v528 + 80) + 32) & ~*(v528 + 80));
      do
      {
        if (v351 >= *(v518 + 16))
        {
          goto LABEL_223;
        }

        sub_1D8ABD1B8(v352 + *(v528 + 72) * v351, v521, type metadata accessor for CVBundle);
        CVBundle.latestDetection.getter(&v538);
        if (v538 >> 60 == 11)
        {
          v353 = type metadata accessor for SyntheticDetectionResult(0);
          if ((*(swift_projectBox() + *(v353 + 24)) & 1) == 0)
          {

            goto LABEL_175;
          }

          v354 = sub_1D8B16BA0();

          if (v354)
          {

LABEL_175:
            v357 = v480;
            sub_1D8ABD220(v521, v480, type metadata accessor for CVBundle);
            v355 = 0;
            v356 = v493;
            goto LABEL_176;
          }
        }

        ++v351;
        sub_1D8ABD158(v521, type metadata accessor for CVBundle);
      }

      while (v350 != v351);
    }

    v355 = 1;
    v356 = v493;
    v357 = v480;
LABEL_176:
    v358 = *(v528 + 56);
    v359 = 1;
    v358(v357, v355, 1, v356);
    v360 = OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_streamingMostSalientBundleAndScore;
    v361 = v516;
    swift_beginAccess();
    v362 = v361 + v360;
    v363 = v482;
    sub_1D87A0E38(v362, v482, &qword_1ECA68C08, &unk_1D8B3BE60);
    if (!(isa[6].isa)(v363, 1, v531))
    {
      sub_1D8ABD1B8(v363, v486, type metadata accessor for CVBundle);
      v359 = 0;
    }

    sub_1D87A14E4(v363, &qword_1ECA68C08, &unk_1D8B3BE60);
    v364 = v486;
    v358(v486, v359, 1, v356);
    sub_1D8AAD094(v335, v357, v364, v495, v488);
    v366 = v365;

    sub_1D87A14E4(v364, &qword_1ECA67980, &qword_1D8B231C0);
    sub_1D87A14E4(v357, &qword_1ECA67980, &qword_1D8B231C0);

    v367 = sub_1D8B151C0();
    v368 = sub_1D8B16200();

    if (os_log_type_enabled(v367, v368))
    {
      v369 = swift_slowAlloc();
      v531 = swift_slowAlloc();
      *&v538 = v531;
      *v369 = 136315138;
      v370 = v366[2];
      v371 = MEMORY[0x1E69E7CC0];
      if (v370)
      {
        v526 = v369;
        LODWORD(v527) = v368;
        isa = v367;
        p_isa = MEMORY[0x1E69E7CC0];
        sub_1D87F3F54(0, v370, 0);
        v371 = p_isa;
        v372 = *(v528 + 80);
        v530 = v366;
        v373 = v366 + ((v372 + 32) & ~v372);
        v374 = *(v528 + 72);
        do
        {
          v375 = v520;
          sub_1D8ABD1B8(v373, v520, type metadata accessor for CVBundle);
          v376 = sub_1D8919AAC();
          v378 = v377;
          sub_1D8ABD158(v375, type metadata accessor for CVBundle);
          p_isa = v371;
          v380 = *(v371 + 16);
          v379 = *(v371 + 24);
          if (v380 >= v379 >> 1)
          {
            sub_1D87F3F54((v379 > 1), v380 + 1, 1);
            v371 = p_isa;
          }

          *(v371 + 16) = v380 + 1;
          v381 = v371 + 16 * v380;
          *(v381 + 32) = v376;
          *(v381 + 40) = v378;
          v373 += v374;
          --v370;
        }

        while (v370);
        v366 = v530;
        v367 = isa;
        LOBYTE(v368) = v527;
        v369 = v526;
      }

      p_isa = v371;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64D60, &unk_1D8B1E8D0);
      sub_1D881CF20(&qword_1EE0E3938, &unk_1ECA64D60, &unk_1D8B1E8D0, MEMORY[0x1E69E6310]);
      v382 = sub_1D8B15810();
      v384 = v383;

      v385 = sub_1D89AC714(v382, v384, &v538);

      *(v369 + 4) = v385;
      _os_log_impl(&dword_1D8783000, v367, v368, "bundles to service: [%s]", v369, 0xCu);
      v386 = v531;
      __swift_destroy_boxed_opaque_existential_1(v531);
      MEMORY[0x1DA721330](v386, -1, -1);
      MEMORY[0x1DA721330](v369, -1, -1);

      v361 = v516;
    }

    else
    {
    }

    v387 = v481;
    v388 = v518;
    *(v361 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_refiningBundles) = v366;

    sub_1D8AAE838(v366, v388, *&v543[88]);
    v390 = v389;

    sub_1D8AA6B5C(v390);
    *(v361 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_requests) = v390;

    v391 = v477;
    sub_1D8AA7C74(v477);
    v392 = *(v387 + 48);
    v393 = v491;
    if (v392(v391, 1, v491) == 1)
    {
      sub_1D87A14E4(v391, &qword_1ECA640E8, &qword_1D8B23190);
LABEL_210:
      sub_1D8943B30(v543, &v538);
      v439 = sub_1D8B151C0();
      v440 = sub_1D8B16200();
      sub_1D88C39F8(v543);
      if (os_log_type_enabled(v439, v440))
      {
        v441 = swift_slowAlloc();
        v442 = swift_slowAlloc();
        p_isa = v442;
        *v441 = 136315138;
        *&v538 = 0;
        *(&v538 + 1) = 0xE000000000000000;
        sub_1D8B16020();
        if (v449)
        {
          v443 = 0x296C6C6974532820;
        }

        else
        {
          v443 = 0;
        }

        if (v449)
        {
          v444 = 0xE800000000000000;
        }

        else
        {
          v444 = 0xE000000000000000;
        }

        MEMORY[0x1DA71EFA0](v443, v444);

        v445 = sub_1D89AC714(v538, *(&v538 + 1), &p_isa);

        *(v441 + 4) = v445;
        _os_log_impl(&dword_1D8783000, v439, v440, "Did not push new output to stream. Old and new outputs are equal @ t = %s", v441, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v442);
        MEMORY[0x1DA721330](v442, -1, -1);
        MEMORY[0x1DA721330](v441, -1, -1);
      }

LABEL_219:
      sub_1D87A14E4(v495, &qword_1ECA67980, &qword_1D8B231C0);
      sub_1D87A14E4(v483, &qword_1ECA640E8, &qword_1D8B23190);
      v446 = v512;
      __swift_destroy_boxed_opaque_existential_1(v535);
      sub_1D87A14E4(v446, &qword_1ECA63178, &unk_1D8B1E6B0);
      return;
    }

    v394 = v478;
    sub_1D8ABD220(v391, v478, type metadata accessor for BundleSelector.Output);
    v395 = v460;
    sub_1D8ABD1B8(v394, v460, type metadata accessor for BundleSelector.Output);
    (*(v387 + 56))(v395, 0, 1, v393);
    v396 = v466;
    v397 = *(v465 + 48);
    sub_1D87A0E38(v483, v466, &qword_1ECA640E8, &qword_1D8B23190);
    v398 = v491;
    v399 = v396;
    sub_1D87A0E38(v395, v396 + v397, &qword_1ECA640E8, &qword_1D8B23190);
    if (v392(v396, 1, v398) == 1)
    {
      sub_1D87A14E4(v395, &qword_1ECA640E8, &qword_1D8B23190);
      v400 = v392(v396 + v397, 1, v398) == 1;
      v401 = v396;
      if (!v400)
      {
        goto LABEL_195;
      }

      sub_1D87A14E4(v396, &qword_1ECA640E8, &qword_1D8B23190);
    }

    else
    {
      v402 = v396;
      v403 = v448;
      sub_1D87A0E38(v402, v448, &qword_1ECA640E8, &qword_1D8B23190);
      if (v392(v399 + v397, 1, v398) == 1)
      {
        sub_1D87A14E4(v460, &qword_1ECA640E8, &qword_1D8B23190);
        sub_1D8ABD158(v403, type metadata accessor for BundleSelector.Output);
        v401 = v399;
LABEL_195:
        sub_1D87A14E4(v401, &qword_1ECA68EA8, &qword_1D8B3CFB8);
        v404 = v474;
LABEL_196:
        v405 = v461;
        sub_1D8ABD1B8(v394, v461, type metadata accessor for BundleSelector.Output);
        v406 = v464;
        sub_1D87A0E38(v495, v464, &qword_1ECA67980, &qword_1D8B231C0);
        sub_1D8ABD1B8(v394, v404, type metadata accessor for BundleSelector.Output);
        v407 = v462;
        sub_1D8ABD1B8(v394, v462, type metadata accessor for BundleSelector.Output);
        v408 = v463;
        sub_1D8ABD1B8(v394, v463, type metadata accessor for BundleSelector.Output);
        v409 = sub_1D8B151C0();
        v410 = sub_1D8B16200();
        if (os_log_type_enabled(v409, v410))
        {
          LODWORD(v530) = v410;
          v531 = v409;
          v411 = swift_slowAlloc();
          v412 = swift_slowAlloc();
          *v411 = 134218754;
          v413 = *(v491 + 28);
          v414 = *(v405 + *(v491 + 24));
          isa = v412;
          p_isa = &v412->isa;
          v415 = *(v414 + 16);
          v416 = *(*(v405 + v413) + 16);
          v417 = v415 + v416;
          if (__OFADD__(v415, v416))
          {
LABEL_226:
            __break(1u);
            goto LABEL_227;
          }

          v418 = v451;
          sub_1D87A0E38(v405, v451, &qword_1ECA67980, &qword_1D8B231C0);
          v419 = v493;
          v420 = v447[0];
          v421 = (v447[0])(v418, 1, v493) != 1;
          sub_1D87A14E4(v418, &qword_1ECA67980, &qword_1D8B231C0);
          v422 = v417 + v421;
          if (__OFADD__(v417, v421))
          {
LABEL_227:
            __break(1u);
            goto LABEL_228;
          }

          v423 = v464;
          v424 = v420(v464, 1, v419) != 1;
          v425 = __OFADD__(v422, v424);
          v426 = v422 + v424;
          if (v425)
          {
LABEL_228:
            __break(1u);
            return;
          }

          sub_1D8ABD158(v461, type metadata accessor for BundleSelector.Output);
          sub_1D87A14E4(v423, &qword_1ECA67980, &qword_1D8B231C0);
          *(v411 + 4) = v426;
          *(v411 + 12) = 2048;
          v427 = v491;
          v428 = *(*(v474 + *(v491 + 24)) + 16);
          sub_1D8ABD158(v474, type metadata accessor for BundleSelector.Output);
          *(v411 + 14) = v428;
          *(v411 + 22) = 2080;
          v429 = v462;
          v430 = *(v462 + *(v427 + 20) + 40);
          v431 = 0xE000000000000000;
          *&v538 = 0;
          *(&v538 + 1) = 0xE000000000000000;
          sub_1D8B16020();
          if (v430)
          {
            v432 = 0x296C6C6974532820;
          }

          else
          {
            v432 = 0;
          }

          if (v430)
          {
            v431 = 0xE800000000000000;
          }

          MEMORY[0x1DA71EFA0](v432, v431);

          v433 = v538;
          sub_1D8ABD158(v429, type metadata accessor for BundleSelector.Output);
          v434 = sub_1D89AC714(v433, *(&v433 + 1), &p_isa);

          *(v411 + 24) = v434;
          *(v411 + 32) = 1024;
          LODWORD(v434) = *(v463 + *(v427 + 32));
          sub_1D8ABD158(v463, type metadata accessor for BundleSelector.Output);
          *(v411 + 34) = v434;
          v435 = v531;
          _os_log_impl(&dword_1D8783000, v531, v530, "Pushed new output to stream with %ld bundles (%ld ranked) @ t = %s and isAllEligibleRefinementExhausted: %{BOOL}d", v411, 0x26u);
          v436 = isa;
          __swift_destroy_boxed_opaque_existential_1(isa);
          MEMORY[0x1DA721330](v436, -1, -1);
          MEMORY[0x1DA721330](v411, -1, -1);

          v394 = v478;
        }

        else
        {
          sub_1D8ABD158(v408, type metadata accessor for BundleSelector.Output);
          sub_1D8ABD158(v404, type metadata accessor for BundleSelector.Output);
          sub_1D8ABD158(v405, type metadata accessor for BundleSelector.Output);
          sub_1D87A14E4(v406, &qword_1ECA67980, &qword_1D8B231C0);

          sub_1D8ABD158(v407, type metadata accessor for BundleSelector.Output);
        }

        sub_1D8AF5C8C(v394);
        sub_1D8ABD158(v394, type metadata accessor for BundleSelector.Output);
        goto LABEL_219;
      }

      v437 = v450;
      sub_1D8ABD220(v399 + v397, v450, type metadata accessor for BundleSelector.Output);
      v438 = _s22VisualIntelligenceCore14BundleSelectorC6OutputV2eeoiySbAE_AEtFZ_0(v403, v437);
      sub_1D8ABD158(v437, type metadata accessor for BundleSelector.Output);
      sub_1D87A14E4(v460, &qword_1ECA640E8, &qword_1D8B23190);
      sub_1D8ABD158(v403, type metadata accessor for BundleSelector.Output);
      sub_1D87A14E4(v399, &qword_1ECA640E8, &qword_1D8B23190);
      v404 = v474;
      if ((v438 & 1) == 0)
      {
        goto LABEL_196;
      }
    }

    sub_1D8ABD158(v394, type metadata accessor for BundleSelector.Output);
    goto LABEL_210;
  }
}

uint64_t sub_1D8AAC73C(uint64_t a1, uint64_t a2)
{
  v33 = a2;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64298, &qword_1D8B23BE0);
  MEMORY[0x1EEE9AC00](v31);
  v4 = &v30 - v3;
  v5 = type metadata accessor for CVTrackSnapshot(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CVBundle.BundleType(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D8B13240();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v30 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63178, &unk_1D8B1E6B0);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v32 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v30 - v20;
  sub_1D8ABD1B8(a1, v10, type metadata accessor for CVBundle.BundleType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *(v12 + 32);
    v22(v16, v10, v11);
  }

  else
  {
    sub_1D8ABD220(v10, v7, type metadata accessor for CVTrackSnapshot);
    (*(v12 + 16))(v16, v7, v11);
    sub_1D8ABD158(v7, type metadata accessor for CVTrackSnapshot);
    v22 = *(v12 + 32);
  }

  v22(v21, v16, v11);
  (*(v12 + 56))(v21, 0, 1, v11);
  v23 = *(v31 + 48);
  sub_1D87A0E38(v21, v4, &qword_1ECA63178, &unk_1D8B1E6B0);
  sub_1D87A0E38(v33, &v4[v23], &qword_1ECA63178, &unk_1D8B1E6B0);
  v24 = *(v12 + 48);
  if (v24(v4, 1, v11) != 1)
  {
    sub_1D87A0E38(v4, v32, &qword_1ECA63178, &unk_1D8B1E6B0);
    if (v24(&v4[v23], 1, v11) != 1)
    {
      v26 = v30;
      v22(v30, &v4[v23], v11);
      sub_1D8AB859C(&qword_1EE0E9898, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v27 = v32;
      v25 = sub_1D8B158C0();
      v28 = *(v12 + 8);
      v28(v26, v11);
      sub_1D87A14E4(v21, &qword_1ECA63178, &unk_1D8B1E6B0);
      v28(v27, v11);
      sub_1D87A14E4(v4, &qword_1ECA63178, &unk_1D8B1E6B0);
      return v25 & 1;
    }

    sub_1D87A14E4(v21, &qword_1ECA63178, &unk_1D8B1E6B0);
    (*(v12 + 8))(v32, v11);
    goto LABEL_9;
  }

  sub_1D87A14E4(v21, &qword_1ECA63178, &unk_1D8B1E6B0);
  if (v24(&v4[v23], 1, v11) != 1)
  {
LABEL_9:
    sub_1D87A14E4(v4, &qword_1ECA64298, &qword_1D8B23BE0);
    v25 = 0;
    return v25 & 1;
  }

  sub_1D87A14E4(v4, &qword_1ECA63178, &unk_1D8B1E6B0);
  v25 = 1;
  return v25 & 1;
}

Swift::Bool __swiftcall CVBundle.isEligible(policy:)(VisualIntelligenceCore::BundleSelector::Configuration::RankingEligibilityPolicy policy)
{
  if (!*policy)
  {
    return 1;
  }

  if (*policy != 1 && (sub_1D8919304() & 1) == 0)
  {
    return 0;
  }

  v1 = CVBundle.classifications.getter()[2];

  return v1 != 0;
}

uint64_t sub_1D8AACCE8(uint64_t a1)
{
  v2 = type metadata accessor for CVBundle(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v19 = MEMORY[0x1E69E7CC0];
    sub_1D87F3F54(0, v6, 0);
    v7 = v19;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_1D8ABD1B8(v8, v5, type metadata accessor for CVBundle);
      v10 = sub_1D8919AAC();
      v12 = v11;
      sub_1D8ABD158(v5, type metadata accessor for CVBundle);
      v19 = v7;
      v14 = *(v7 + 16);
      v13 = *(v7 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1D87F3F54((v13 > 1), v14 + 1, 1);
        v7 = v19;
      }

      *(v7 + 16) = v14 + 1;
      v15 = v7 + 16 * v14;
      *(v15 + 32) = v10;
      *(v15 + 40) = v12;
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  v19 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64D60, &unk_1D8B1E8D0);
  sub_1D881CF20(&qword_1EE0E3938, &unk_1ECA64D60, &unk_1D8B1E8D0, MEMORY[0x1E69E6310]);
  v16 = sub_1D8B15810();

  return v16;
}

void sub_1D8AACEF8(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67980, &qword_1D8B231C0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = *(a2 + 48);
  sub_1D87A0E38(a1, v14 - v6, &qword_1ECA67980, &qword_1D8B231C0);
  v9 = OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_userSelectedBundle;
  swift_beginAccess();
  sub_1D87B6EFC(v7, v2 + v9, &qword_1ECA67980, &qword_1D8B231C0);
  swift_endAccess();
  if (v8)
  {
    v10 = *(a2 + 16);
    v14[0] = *a2;
    v14[1] = v10;
    v14[2] = *(a2 + 32);
    v15 = v8;
    v16 = *(a2 + 49);
    *v17 = *(a2 + 65);
    *&v17[15] = *(a2 + 80);
    sub_1D8AA8E04(v14);
  }

  else
  {
    v11 = sub_1D8B151C0();
    v12 = sub_1D8B16210();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1D8783000, v11, v12, "Cannot setSelectionTo: not a still.", v13, 2u);
      MEMORY[0x1DA721330](v13, -1, -1);
    }
  }
}

void sub_1D8AAD094(void *a1, unint64_t a2, uint64_t a3, void *a4, int a5)
{
  v162 = a5;
  v160 = a4;
  v8 = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64110, &qword_1D8B3CFB0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v149 = &v145 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v145 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67980, &qword_1D8B231C0);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v154 = (&v145 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v145 - v17;
  v19 = type metadata accessor for CVBundle(0);
  v20 = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v153 = &v145 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v161 = &v145 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v152 = &v145 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v151 = &v145 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v159 = &v145 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v157 = (&v145 - v32);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v156 = (&v145 - v34);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v158 = &v145 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v39 = &v145 - v38;
  v40 = MEMORY[0x1EEE9AC00](v37);
  v150 = (&v145 - v41);
  MEMORY[0x1EEE9AC00](v40);
  v43 = (&v145 - v42);
  v166 = a1;
  v44 = a3;
  v46 = v45;
  sub_1D87A0E38(v44, v18, &qword_1ECA67980, &qword_1D8B231C0);
  v163 = v20;
  v47 = *(v20 + 48);
  if ((v47)(v18, 1, v46) == 1)
  {

    sub_1D87A14E4(v18, &qword_1ECA67980, &qword_1D8B231C0);
  }

  else
  {
    v147 = v47;
    v148 = v46;
    v48 = a2;
    v49 = sub_1D8ABD220(v18, v43, type metadata accessor for CVBundle);
    MEMORY[0x1EEE9AC00](v49);
    *(&v145 - 2) = v43;

    a1 = sub_1D87C6A8C(sub_1D8ABDDE4, &(&v145)[-4], a1);
    sub_1D8ABD1B8(v43, v13, type metadata accessor for CVBundle);
    v50 = a1[2];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v166 = a1;
    if (!isUniquelyReferenced_nonNull_native || v50 >= a1[3] >> 1)
    {
      a1 = sub_1D87C7E90(isUniquelyReferenced_nonNull_native, v50 + 1, 1, a1);
      v166 = a1;
    }

    sub_1D885D08C(0, 0, 1, v13);
    v166 = a1;
    sub_1D8ABD158(v43, type metadata accessor for CVBundle);
    a2 = v48;
    v46 = v148;
    v47 = v147;
  }

  v52 = v154;
  sub_1D87A0E38(v160, v154, &qword_1ECA67980, &qword_1D8B231C0);
  v53 = (v47)(v52, 1, v46);
  v54 = v161;
  if (v53 == 1)
  {
    sub_1D87A14E4(v52, &qword_1ECA67980, &qword_1D8B231C0);
    if (v162)
    {
      goto LABEL_9;
    }

LABEL_22:
    v159 = *(v155 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_configuration + 48);
    goto LABEL_80;
  }

  v64 = v150;
  sub_1D8ABD220(v52, v150, type metadata accessor for CVBundle);
  v65 = sub_1D8919304();
  if ((v65 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v65);
    *(&v145 - 2) = v64;

    v66 = sub_1D87C6A8C(sub_1D8ABDDE4, &(&v145)[-4], a1);

    v67 = v149;
    sub_1D8ABD1B8(v64, v149, type metadata accessor for CVBundle);
    a2 = v66[2];
    v68 = swift_isUniquelyReferenced_nonNull_native();
    v166 = v66;
    if (!v68 || a2 >= v66[3] >> 1)
    {
      v66 = sub_1D87C7E90(v68, a2 + 1, 1, v66);
      v166 = v66;
    }

    v159 = 1;
    sub_1D885D08C(0, 0, 1, v67);
    v166 = v66;
    sub_1D8ABD158(v64, type metadata accessor for CVBundle);
    a1 = v66;
    goto LABEL_80;
  }

  sub_1D8ABD158(v64, type metadata accessor for CVBundle);
  if ((v162 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_9:
  sub_1D8AAF8D8(a1, a2);
  v56 = v55;
  v154 = v57;
  v58 = *(v55 + 16);
  v160 = a1;
  if (v58)
  {
    v59 = 0;
    v54 = MEMORY[0x1E69E7CC0];
    while (v59 < *(v56 + 16))
    {
      a2 = (*(v163 + 80) + 32) & ~*(v163 + 80);
      v60 = *(v163 + 72);
      sub_1D8ABD1B8(v56 + a2 + v60 * v59, v39, type metadata accessor for CVBundle);
      if (sub_1D8919304())
      {
        sub_1D8ABD220(v39, v158, type metadata accessor for CVBundle);
        v61 = swift_isUniquelyReferenced_nonNull_native();
        v164 = v54;
        if ((v61 & 1) == 0)
        {
          sub_1D87F4074(0, *(v54 + 16) + 1, 1);
          v54 = v164;
        }

        v63 = *(v54 + 16);
        v62 = *(v54 + 24);
        v8 = (v63 + 1);
        if (v63 >= v62 >> 1)
        {
          sub_1D87F4074((v62 > 1), v63 + 1, 1);
          v54 = v164;
        }

        *(v54 + 16) = v8;
        sub_1D8ABD220(v158, v54 + a2 + v63 * v60, type metadata accessor for CVBundle);
        a1 = v160;
      }

      else
      {
        sub_1D8ABD158(v39, type metadata accessor for CVBundle);
      }

      if (v58 == ++v59)
      {
        goto LABEL_28;
      }
    }

    goto LABEL_103;
  }

  v54 = MEMORY[0x1E69E7CC0];
LABEL_28:
  v8 = *(v54 + 16);

  v69 = v154;
  v70 = *(v155 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_configuration + 56);
  v71 = v70;
  if (*(v155 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_configuration + 64))
  {
    v71 = v70 + 1;
    if (__OFADD__(v70, 1))
    {
      __break(1u);
      goto LABEL_109;
    }
  }

  LODWORD(v158) = *(v155 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_configuration + 64);
  v72 = OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_logger;
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  v73 = sub_1D8B151C0();
  LODWORD(v148) = sub_1D8B16200();
  v74 = os_log_type_enabled(v73, v148);
  v150 = v8;
  v149 = v71;
  if (!v74)
  {

    swift_bridgeObjectRelease_n();

    v83 = v151;
    v82 = v152;
    goto LABEL_47;
  }

  v145 = v73;
  v147 = v70;
  v146 = v72;
  a2 = v8 >= v71;
  v75 = swift_slowAlloc();
  *v75 = 67109888;
  *(v75 + 4) = a2;
  *(v75 + 8) = 2048;
  *(v75 + 10) = *(v56 + 16);
  *(v75 + 18) = 2048;
  v76 = *(v56 + 16);
  if (v76)
  {
    v77 = 0;
    v54 = MEMORY[0x1E69E7CC0];
    v8 = v156;
    while (v77 < *(v56 + 16))
    {
      a2 = (*(v163 + 80) + 32) & ~*(v163 + 80);
      v78 = *(v163 + 72);
      sub_1D8ABD1B8(v56 + a2 + v78 * v77, v8, type metadata accessor for CVBundle);
      if (sub_1D8919304())
      {
        sub_1D8ABD220(v8, v157, type metadata accessor for CVBundle);
        v79 = swift_isUniquelyReferenced_nonNull_native();
        v164 = v54;
        if ((v79 & 1) == 0)
        {
          sub_1D87F4074(0, *(v54 + 16) + 1, 1);
          v54 = v164;
        }

        v81 = *(v54 + 16);
        v80 = *(v54 + 24);
        if (v81 >= v80 >> 1)
        {
          sub_1D87F4074((v80 > 1), v81 + 1, 1);
          v54 = v164;
        }

        *(v54 + 16) = v81 + 1;
        sub_1D8ABD220(v157, v54 + a2 + v81 * v78, type metadata accessor for CVBundle);
        a1 = v160;
        v8 = v156;
      }

      else
      {
        sub_1D8ABD158(v8, type metadata accessor for CVBundle);
      }

      if (v76 == ++v77)
      {
        goto LABEL_44;
      }
    }

    goto LABEL_105;
  }

  v54 = MEMORY[0x1E69E7CC0];
LABEL_44:
  v84 = *(v54 + 16);

  *(v75 + 20) = v84;

  *(v75 + 28) = 2048;

  v83 = v151;
  v82 = v152;
  v71 = v149;
  if ((v158 & 1) != 0 && __OFADD__(v147++, 1))
  {
LABEL_109:
    __break(1u);
    return;
  }

  *(v75 + 30) = v147;

  v86 = v145;
  _os_log_impl(&dword_1D8783000, v145, v148, "bundlesToService: isDoneRefining=%{BOOL}d, rankedCount=%ld, refinedInRanked=%ld, maxCount=%ld", v75, 0x26u);
  MEMORY[0x1DA721330](v75, -1, -1);

  v69 = v154;
LABEL_47:

  a2 = sub_1D8B151C0();
  v87 = sub_1D8B16200();

  if (os_log_type_enabled(a2, v87))
  {
    LODWORD(v155) = v87;
    v156 = a2;
    v88 = swift_slowAlloc();
    v148 = swift_slowAlloc();
    v165 = v148;
    v157 = v88;
    *v88 = 136315394;
    v89 = *(v56 + 16);
    v90 = MEMORY[0x1E69E7CC0];
    if (v89)
    {
      v164 = MEMORY[0x1E69E7CC0];
      sub_1D87F3F54(0, v89, 0);
      v90 = v164;
      v91 = v56 + ((*(v163 + 80) + 32) & ~*(v163 + 80));
      v158 = *(v163 + 72);
      do
      {
        v92 = v159;
        sub_1D8ABD1B8(v91, v159, type metadata accessor for CVBundle);
        v93 = sub_1D8919AAC();
        v95 = v94;
        sub_1D8ABD158(v92, type metadata accessor for CVBundle);
        v164 = v90;
        v97 = *(v90 + 16);
        v96 = *(v90 + 24);
        if (v97 >= v96 >> 1)
        {
          sub_1D87F3F54((v96 > 1), v97 + 1, 1);
          v90 = v164;
        }

        *(v90 + 16) = v97 + 1;
        v98 = v90 + 16 * v97;
        *(v98 + 32) = v93;
        *(v98 + 40) = v95;
        v91 += v158;
        --v89;
      }

      while (v89);
      v83 = v151;
      v82 = v152;
      v69 = v154;
    }

    v164 = v90;
    v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64D60, &unk_1D8B1E8D0);
    v100 = sub_1D881CF20(&qword_1EE0E3938, &unk_1ECA64D60, &unk_1D8B1E8D0, MEMORY[0x1E69E6310]);
    v101 = sub_1D8B15810();
    v103 = v102;

    v104 = sub_1D89AC714(v101, v103, &v165);

    v105 = v157;
    *(v157 + 1) = v104;
    *(v105 + 12) = 2080;
    v106 = v69[2];
    v154 = v100;
    if (v106)
    {
      v107 = sub_1D87F3834(v106, 0);
      v108 = sub_1D881702C(&v164, v107 + ((*(v163 + 80) + 32) & ~*(v163 + 80)), v106, v69);
      sub_1D87977A0(v164);
      if (v108 == v106)
      {
LABEL_59:
        v147 = v99;
        v109 = v107[2];
        if (v109)
        {
          v164 = MEMORY[0x1E69E7CC0];
          sub_1D87F3F54(0, v109, 0);
          v110 = v164;
          v111 = (*(v163 + 80) + 32) & ~*(v163 + 80);
          v146 = v107;
          v112 = v107 + v111;
          v158 = *(v163 + 72);
          do
          {
            v113 = v159;
            sub_1D8ABD1B8(v112, v159, type metadata accessor for CVBundle);
            v114 = sub_1D8919AAC();
            v116 = v115;
            sub_1D8ABD158(v113, type metadata accessor for CVBundle);
            v164 = v110;
            v118 = *(v110 + 16);
            v117 = *(v110 + 24);
            if (v118 >= v117 >> 1)
            {
              sub_1D87F3F54((v117 > 1), v118 + 1, 1);
              v110 = v164;
            }

            *(v110 + 16) = v118 + 1;
            v119 = v110 + 16 * v118;
            *(v119 + 32) = v114;
            *(v119 + 40) = v116;
            v112 += v158;
            --v109;
          }

          while (v109);

          v83 = v151;
          v82 = v152;
        }

        else
        {

          v110 = MEMORY[0x1E69E7CC0];
        }

        v164 = v110;
        v120 = sub_1D8B15810();
        v122 = v121;

        v123 = sub_1D89AC714(v120, v122, &v165);

        v124 = v157;
        *(v157 + 14) = v123;
        a2 = v156;
        _os_log_impl(&dword_1D8783000, v156, v155, "bundlesToService: ranked=[%s], guaranteed=[%s]", v124, 0x16u);
        v8 = v148;
        swift_arrayDestroy();
        MEMORY[0x1DA721330](v8, -1, -1);
        MEMORY[0x1DA721330](v124, -1, -1);

        v71 = v149;
        goto LABEL_67;
      }

      __break(1u);
    }

    v107 = MEMORY[0x1E69E7CC0];
    goto LABEL_59;
  }

LABEL_67:
  v159 = v150 < v71;
  v54 = a1[2];
  if (v54)
  {
    v125 = 0;
    v126 = MEMORY[0x1E69E7CC0];
    while (v125 < a1[2])
    {
      a2 = (*(v163 + 80) + 32) & ~*(v163 + 80);
      v127 = *(v163 + 72);
      sub_1D8ABD1B8(a1 + a2 + v127 * v125, v83, type metadata accessor for CVBundle);
      if (sub_1D88465D8(v83, v56))
      {
        sub_1D8ABD158(v83, type metadata accessor for CVBundle);
      }

      else
      {
        sub_1D8ABD220(v83, v82, type metadata accessor for CVBundle);
        v128 = swift_isUniquelyReferenced_nonNull_native();
        v164 = v126;
        if ((v128 & 1) == 0)
        {
          sub_1D87F4074(0, *(v126 + 16) + 1, 1);
          v126 = v164;
        }

        v130 = *(v126 + 16);
        v129 = *(v126 + 24);
        v8 = (v130 + 1);
        if (v130 >= v129 >> 1)
        {
          sub_1D87F4074((v129 > 1), v130 + 1, 1);
          v126 = v164;
        }

        *(v126 + 16) = v8;
        sub_1D8ABD220(v82, v126 + a2 + v130 * v127, type metadata accessor for CVBundle);
        a1 = v160;
      }

      if (v54 == ++v125)
      {
        goto LABEL_79;
      }
    }

    goto LABEL_104;
  }

  v126 = MEMORY[0x1E69E7CC0];
LABEL_79:

  v166 = v126;
  sub_1D8864124(0, 0, v56);

  a1 = v166;
  v54 = v161;
LABEL_80:
  v131 = v153;
  v132 = a1[2];
  if (v132)
  {
    v133 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v134 = a1;
    v56 = v153;
    while (v133 < a1[2])
    {
      v135 = (*(v163 + 80) + 32) & ~*(v163 + 80);
      a2 = *(v163 + 72);
      sub_1D8ABD1B8(a1 + v135 + a2 * v133, v54, type metadata accessor for CVBundle);
      if (v162 & 1) != 0 && (v131 = v56, (sub_1D8919304()))
      {
        sub_1D8ABD158(v54, type metadata accessor for CVBundle);
      }

      else
      {
        sub_1D8ABD220(v54, v131, type metadata accessor for CVBundle);
        v136 = swift_isUniquelyReferenced_nonNull_native();
        v164 = v8;
        if ((v136 & 1) == 0)
        {
          sub_1D87F4074(0, v8[2].isa + 1, 1);
          v131 = v56;
          v8 = v164;
        }

        isa = v8[2].isa;
        v137 = v8[3].isa;
        if (isa >= v137 >> 1)
        {
          sub_1D87F4074((v137 > 1), isa + 1, 1);
          v131 = v56;
          v8 = v164;
        }

        v8[2].isa = (isa + 1);
        sub_1D8ABD220(v131, v8 + v135 + isa * a2, type metadata accessor for CVBundle);
        a1 = v134;
        v54 = v161;
      }

      if (v132 == ++v133)
      {
        goto LABEL_93;
      }
    }

    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_93:

  a2 = sub_1D87E2580(v159, v8);
  if ((v141 & 1) == 0)
  {
    goto LABEL_94;
  }

  v54 = v141;
  v56 = v140;
  v8 = v139;
  sub_1D8B16BE0();
  swift_unknownObjectRetain_n();
  v142 = swift_dynamicCastClass();
  if (!v142)
  {
    swift_unknownObjectRelease();
    v142 = MEMORY[0x1E69E7CC0];
  }

  v143 = *(v142 + 16);

  if (!__OFSUB__(v54 >> 1, v56))
  {
    if (v143 == (v54 >> 1) - v56)
    {
      v144 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (v144)
      {
        return;
      }

      goto LABEL_100;
    }

    goto LABEL_107;
  }

LABEL_106:
  __break(1u);
LABEL_107:
  swift_unknownObjectRelease();
  v141 = v54;
  v140 = v56;
  v139 = v8;
LABEL_94:
  sub_1D8AB5F20(a2, v139, v140, v141, &qword_1ECA634D0, &qword_1D8B22DD0, type metadata accessor for CVBundle);
LABEL_100:
  swift_unknownObjectRelease();
}

BOOL sub_1D8AAE43C(uint64_t a1, uint64_t a2)
{
  v32 = a1;
  v33 = a2;
  v2 = type metadata accessor for CVTrackSnapshot(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CVBundle.BundleType(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v30 - v9;
  v11 = sub_1D8B13240();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v31 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v30 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v30 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v30 - v21;
  sub_1D8ABD1B8(v32, v10, type metadata accessor for CVBundle.BundleType);
  v32 = v5;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v30 = v4;
  if (EnumCaseMultiPayload == 1)
  {
    v24 = *(v12 + 32);
    v24(v20, v10, v11);
  }

  else
  {
    sub_1D8ABD220(v10, v4, type metadata accessor for CVTrackSnapshot);
    (*(v12 + 16))(v20, v4, v11);
    sub_1D8ABD158(v4, type metadata accessor for CVTrackSnapshot);
    v24 = *(v12 + 32);
  }

  v24(v22, v20, v11);
  sub_1D8ABD1B8(v33, v8, type metadata accessor for CVBundle.BundleType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = v31;
    v24(v31, v8, v11);
  }

  else
  {
    v26 = v30;
    sub_1D8ABD220(v8, v30, type metadata accessor for CVTrackSnapshot);
    v25 = v31;
    (*(v12 + 16))(v31, v26, v11);
    sub_1D8ABD158(v26, type metadata accessor for CVTrackSnapshot);
  }

  v24(v17, v25, v11);
  sub_1D8AB859C(&qword_1EE0E9898, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  v27 = sub_1D8B158C0();
  v28 = *(v12 + 8);
  v28(v17, v11);
  v28(v22, v11);
  return (v27 & 1) == 0;
}

void sub_1D8AAE838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CVTrackSnapshot(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v163 = &v143 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = type metadata accessor for CVBundle.BundleType(0);
  v8 = MEMORY[0x1EEE9AC00](v169);
  v171 = (&v143 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v143 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v162 = &v143 - v13;
  v14 = sub_1D8B13240();
  v150 = *(v14 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v166 = &v143 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v143 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v164 = &v143 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v156 = &v143 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v160 = &v143 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v165 = &v143 - v26;
  v27 = type metadata accessor for CVBundle(0);
  v151 = *(v27 - 8);
  v28 = MEMORY[0x1EEE9AC00](v27 - 8);
  v161 = (&v143 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = MEMORY[0x1EEE9AC00](v28);
  v167 = &v143 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v153 = &v143 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v143 - v34;

  v36 = sub_1D8B151C0();
  v37 = sub_1D8B16200();

  v38 = os_log_type_enabled(v36, v37);
  v170 = a3;
  v168 = v14;
  v154 = a1;
  v155 = v35;
  v149 = a2;
  if (v38)
  {
    v147 = v37;
    v148 = v36;
    v39 = swift_slowAlloc();
    v145 = swift_slowAlloc();
    v173 = v145;
    v146 = v39;
    *v39 = 136315138;
    v40 = *(a1 + 16);
    v41 = MEMORY[0x1E69E7CC0];
    if (v40)
    {
      v144 = v12;
      v172 = MEMORY[0x1E69E7CC0];
      sub_1D87F3F54(0, v40, 0);
      v41 = v172;
      v42 = a1 + ((*(v151 + 80) + 32) & ~*(v151 + 80));
      v152 = (v150 + 16);
      v43 = (v150 + 8);
      v158 = *(v151 + 72);
      v159 = (v150 + 32);
      v157 = (v150 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      do
      {
        v174 = 0;
        v175 = 0xE000000000000000;
        v44 = v171;
        sub_1D8ABD1B8(v42, v171, type metadata accessor for CVBundle.BundleType);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v45 = *v159;
          v46 = v166;
          (*v159)(v166, v44, v14);
        }

        else
        {
          v47 = v163;
          sub_1D8ABD220(v44, v163, type metadata accessor for CVTrackSnapshot);
          v46 = v166;
          (*v152)(v166, v47, v14);
          sub_1D8ABD158(v47, type metadata accessor for CVTrackSnapshot);
          v45 = *v159;
        }

        (v45)(v19, v46, v14);
        v48 = sub_1D8B131E0();
        v50 = v49;
        (*v43)(v19, v14);
        v51 = sub_1D881BE2C(8, v48, v50);
        v53 = v52;
        v55 = v54;
        v57 = v56;

        v58 = MEMORY[0x1DA71EF10](v51, v53, v55, v57);
        v60 = v59;

        MEMORY[0x1DA71EFA0](v58, v60);

        MEMORY[0x1DA71EFA0](32, 0xE100000000000000);
        v61 = sub_1D8919AAC();
        MEMORY[0x1DA71EFA0](v61);

        v62 = v174;
        v63 = v175;
        v172 = v41;
        v65 = v41[2];
        v64 = v41[3];
        if (v65 >= v64 >> 1)
        {
          sub_1D87F3F54((v64 > 1), v65 + 1, 1);
          v41 = v172;
        }

        v41[2] = v65 + 1;
        v66 = &v41[2 * v65];
        v66[4] = v62;
        v66[5] = v63;
        v42 += v158;
        --v40;
        v14 = v168;
        a1 = v154;
      }

      while (v40);
      v12 = v144;
      v35 = v155;
    }

    v174 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64D60, &unk_1D8B1E8D0);
    sub_1D881CF20(&qword_1EE0E3938, &unk_1ECA64D60, &unk_1D8B1E8D0, MEMORY[0x1E69E6310]);
    v67 = sub_1D8B15810();
    v69 = v68;

    v70 = sub_1D89AC714(v67, v69, &v173);

    v71 = v146;
    *(v146 + 1) = v70;
    v36 = v148;
    _os_log_impl(&dword_1D8783000, v148, v147, "Making DRQs for: [%s]", v71, 0xCu);
    v72 = v145;
    __swift_destroy_boxed_opaque_existential_1(v145);
    MEMORY[0x1DA721330](v72, -1, -1);
    MEMORY[0x1DA721330](v71, -1, -1);
  }

  v73 = *(a1 + 16);
  v74 = v162;
  v75 = v165;
  v166 = v73;
  if (v73)
  {
    v76 = a1 + ((*(v151 + 80) + 32) & ~*(v151 + 80));
    v157 = *(v151 + 72);
    v152 = (v150 + 16);
    v77 = (v150 + 8);
    v159 = (v150 + 32);
    v158 = (v150 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v171 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      sub_1D8ABD1B8(v76, v35, type metadata accessor for CVBundle);
      sub_1D8ABD1B8(v35, v74, type metadata accessor for CVBundle.BundleType);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v78 = *v159;
        v79 = v160;
        (*v159)();
      }

      else
      {
        v80 = v163;
        sub_1D8ABD220(v74, v163, type metadata accessor for CVTrackSnapshot);
        v79 = v160;
        (*v152)(v160, v80, v14);
        sub_1D8ABD158(v80, type metadata accessor for CVTrackSnapshot);
        v78 = *v159;
      }

      (v78)(v75, v79, v14);
      v81 = v170;
      if (*(v170 + 16) && (v82 = sub_1D87EF764(v75), (v83 & 1) != 0))
      {
        v84 = *(*(v81 + 56) + 8 * v82);
        v85 = *v77;

        v85(v75, v14);
        v86 = v84[2];
        if (v86)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63240, &qword_1D8B1E800);
          v87 = *(type metadata accessor for DetectionRequest(0) - 8);
          v88 = *(v87 + 72);
          v89 = (*(v87 + 80) + 32) & ~*(v87 + 80);
          v90 = swift_allocObject();
          v91 = _swift_stdlib_malloc_size(v90);
          if (!v88)
          {
            goto LABEL_89;
          }

          if (v91 - v89 == 0x8000000000000000 && v88 == -1)
          {
            goto LABEL_91;
          }

          v90[2] = v86;
          v90[3] = 2 * ((v91 - v89) / v88);
          v93 = sub_1D881788C(&v174, v90 + v89, v86, v84);
          sub_1D87977A0(v174);
          if (v93 != v86)
          {
            goto LABEL_90;
          }
        }

        else
        {

          v90 = MEMORY[0x1E69E7CC0];
        }

        v35 = v155;
      }

      else
      {
        (*v77)(v75, v14);
        v90 = MEMORY[0x1E69E7CC0];
      }

      sub_1D8ABD158(v35, type metadata accessor for CVBundle);
      v94 = v90[2];
      v95 = v171[2];
      v96 = v95 + v94;
      if (__OFADD__(v95, v94))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v98 = v171;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v96 > v171[3] >> 1)
      {
        if (v95 <= v96)
        {
          v99 = v95 + v94;
        }

        else
        {
          v99 = v95;
        }

        v98 = sub_1D87C8C08(isUniquelyReferenced_nonNull_native, v99, 1, v171);
      }

      v75 = v165;
      v100 = v90[2];
      v171 = v98;
      if (v100)
      {
        v101 = (v98[3] >> 1) - v98[2];
        type metadata accessor for DetectionRequest(0);
        if (v101 < v94)
        {
          goto LABEL_85;
        }

        swift_arrayInitWithCopy();

        v75 = v165;
        v35 = v155;
        if (v94)
        {
          v102 = v171[2];
          v103 = __OFADD__(v102, v94);
          v104 = v102 + v94;
          if (v103)
          {
            goto LABEL_87;
          }

          v171[2] = v104;
        }
      }

      else
      {

        if (v94)
        {
          goto LABEL_82;
        }
      }

      v76 += v157;
      --v73;
      v74 = v162;
      if (!v73)
      {
        goto LABEL_45;
      }
    }

    __break(1u);
LABEL_82:
    __break(1u);
  }

  else
  {
    v171 = MEMORY[0x1E69E7CC0];
LABEL_45:
    v105 = *(v149 + 16);
    if (v105)
    {
      v106 = (*(v151 + 80) + 32) & ~*(v151 + 80);
      v107 = v149 + v106;
      v108 = *(v151 + 72);
      v109 = MEMORY[0x1E69E7CC0];
      v110 = v153;
      do
      {
        sub_1D8ABD1B8(v107, v110, type metadata accessor for CVBundle);
        if (sub_1D8919304())
        {
          sub_1D8ABD158(v110, type metadata accessor for CVBundle);
        }

        else
        {
          sub_1D8ABD220(v110, v161, type metadata accessor for CVBundle);
          v111 = swift_isUniquelyReferenced_nonNull_native();
          v174 = v109;
          if ((v111 & 1) == 0)
          {
            sub_1D87F4074(0, v109[2] + 1, 1);
            v109 = v174;
          }

          v113 = v109[2];
          v112 = v109[3];
          if (v113 >= v112 >> 1)
          {
            sub_1D87F4074((v112 > 1), v113 + 1, 1);
            v109 = v174;
          }

          v109[2] = v113 + 1;
          sub_1D8ABD220(v161, v109 + v106 + v113 * v108, type metadata accessor for CVBundle);
          v110 = v153;
        }

        v107 += v108;
        --v105;
      }

      while (v105);
    }

    else
    {
      v109 = MEMORY[0x1E69E7CC0];
    }

    v114 = v170;
    v115 = v166;
    if (!v166)
    {
      v117 = MEMORY[0x1E69E7CC0];
LABEL_80:

      v174 = v171;
      sub_1D88F4838(v117);
      return;
    }

    v116 = v154 + ((*(v151 + 80) + 32) & ~*(v151 + 80));
    v160 = *(v151 + 72);
    v159 = (v150 + 16);
    v161 = (v150 + 8);
    v117 = MEMORY[0x1E69E7CC0];
    v165 = (v150 + 32);
    v162 = ((v150 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000);
    v118 = v164;
    while (1)
    {
      v166 = v115;
      v120 = v167;
      sub_1D8ABD1B8(v116, v167, type metadata accessor for CVBundle);
      sub_1D8ABD1B8(v120, v12, type metadata accessor for CVBundle.BundleType);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v121 = *v165;
        (*v165)(v118, v12, v14);
      }

      else
      {
        v122 = v163;
        sub_1D8ABD220(v12, v163, type metadata accessor for CVTrackSnapshot);
        (*v159)(v118, v122, v14);
        sub_1D8ABD158(v122, type metadata accessor for CVTrackSnapshot);
        v121 = *v165;
      }

      v123 = v14;
      v124 = v12;
      v125 = v156;
      v121(v156, v118, v123);
      if (*(v114 + 16) && (v126 = sub_1D87EF764(v125), (v127 & 1) != 0))
      {
        v128 = v125;
        v129 = *(*(v114 + 56) + 8 * v126);
        v130 = *v161;

        v131 = v130(v128, v168);
        MEMORY[0x1EEE9AC00](v131);
        v132 = v167;
        *(&v143 - 4) = v109;
        *(&v143 - 3) = v132;
        *(&v143 - 2) = v114;
        sub_1D8AA4554(sub_1D8ABD2E8, (&v143 - 6), v129);
        v134 = v133;
      }

      else
      {
        (*v161)(v125, v168);
        v134 = MEMORY[0x1E69E7CC0];
      }

      sub_1D8ABD158(v167, type metadata accessor for CVBundle);
      v135 = *(v134 + 16);
      v136 = v117[2];
      v137 = v136 + v135;
      if (__OFADD__(v136, v135))
      {
        break;
      }

      v138 = swift_isUniquelyReferenced_nonNull_native();
      if ((v138 & 1) == 0 || v137 > v117[3] >> 1)
      {
        if (v136 <= v137)
        {
          v139 = v136 + v135;
        }

        else
        {
          v139 = v136;
        }

        v117 = sub_1D87C8C08(v138, v139, 1, v117);
      }

      v114 = v170;
      v118 = v164;
      if (*(v134 + 16))
      {
        v140 = (v117[3] >> 1) - v117[2];
        type metadata accessor for DetectionRequest(0);
        if (v140 < v135)
        {
          goto LABEL_86;
        }

        swift_arrayInitWithCopy();

        v114 = v170;
        v118 = v164;
        v119 = v166;
        if (v135)
        {
          v141 = v117[2];
          v103 = __OFADD__(v141, v135);
          v142 = v141 + v135;
          if (v103)
          {
            goto LABEL_88;
          }

          v117[2] = v142;
        }
      }

      else
      {

        v119 = v166;
        if (v135)
        {
          goto LABEL_84;
        }
      }

      v116 += v160;
      v115 = v119 - 1;
      v12 = v124;
      v14 = v168;
      if (!v115)
      {
        goto LABEL_80;
      }
    }
  }

  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
}

void sub_1D8AAF8D8(uint64_t a1, uint64_t a2)
{
  v71 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64110, &qword_1D8B3CFB0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v67 = &v64 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67980, &qword_1D8B231C0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v70 = &v64 - v6;
  v69 = type metadata accessor for CVBundle(0);
  v7 = MEMORY[0x1EEE9AC00](v69);
  v65 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v64 = &v64 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v66 = &v64 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v64 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v68 = &v64 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v64 - v19;
  v21 = *(a1 + 16);
  v73 = v18;
  if (v21)
  {
    v22 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v23 = a1 + v22;
    v24 = *(v18 + 72);
    v25 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      sub_1D8ABD1B8(v23, v20, type metadata accessor for CVBundle);
      CVBundle.latestDetection.getter(&v74);
      if (v74 >> 60 != 11)
      {
        break;
      }

      v26 = type metadata accessor for SyntheticDetectionResult(0);
      if (*(swift_projectBox() + *(v26 + 24)))
      {
        v27 = sub_1D8B16BA0();

        if ((v27 & 1) == 0)
        {
          break;
        }
      }

      else
      {
      }

      sub_1D8ABD158(v20, type metadata accessor for CVBundle);

LABEL_5:
      v23 += v24;
      if (!--v21)
      {
        goto LABEL_15;
      }
    }

    sub_1D8ABD220(v20, v15, type metadata accessor for CVBundle);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v75 = v25;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1D87F4074(0, v25[2] + 1, 1);
      v25 = v75;
    }

    v30 = v25[2];
    v29 = v25[3];
    if (v30 >= v29 >> 1)
    {
      sub_1D87F4074((v29 > 1), v30 + 1, 1);
      v25 = v75;
    }

    v25[2] = v30 + 1;
    sub_1D8ABD220(v15, v25 + v22 + v30 * v24, type metadata accessor for CVBundle);
    goto LABEL_5;
  }

  v25 = MEMORY[0x1E69E7CC0];
LABEL_15:
  v31 = v70;
  sub_1D87A0E38(v71, v70, &qword_1ECA67980, &qword_1D8B231C0);
  v32 = v73;
  if ((*(v73 + 48))(v31, 1, v69) != 1)
  {
    v37 = v68;
    sub_1D8ABD220(v31, v68, type metadata accessor for CVBundle);
    v38 = v72 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_configuration;
    v39 = *(v72 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_configuration + 40);
    if (*(v72 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_configuration + 64) != 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA634D0, &qword_1D8B22DD0);
      v47 = (*(v32 + 80) + 32) & ~*(v32 + 80);
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_1D8B1AB90;
      sub_1D8ABD1B8(v37, v48 + v47, type metadata accessor for CVBundle);
      v75 = v25;
      sub_1D88F3C08(v48);
      sub_1D8AA8368(v75, *(v38 + 56), v39);

LABEL_28:
      v49 = v37;
LABEL_29:
      sub_1D8ABD158(v49, type metadata accessor for CVBundle);
      return;
    }

    v40 = v32;
    v41 = sub_1D8AA8368(v25, *(v38 + 56), *(v38 + 40));
    v43 = v42;
    if (v41[2])
    {

      if (v41[2])
      {
        v44 = v67;
        sub_1D8ABD1B8(v37, v67, type metadata accessor for CVBundle);
        v45 = v41[2];
        if (v45)
        {
          v46 = swift_isUniquelyReferenced_nonNull_native();
          v75 = v41;
          if (!v46 || v45 >= v41[3] >> 1)
          {
            v75 = sub_1D87C7E90(v46, v45 + 1, 1, v41);
          }

          sub_1D885D08C(1, 1, 1, v44);
          goto LABEL_28;
        }

LABEL_43:
        __break(1u);
        return;
      }
    }

    else
    {
      v50 = v25[2];
      if (!v50)
      {

        v60 = (*(v32 + 80) + 32) & ~*(v32 + 80);
LABEL_40:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA634D0, &qword_1D8B22DD0);
        v61 = swift_allocObject();
        *(v61 + 16) = xmmword_1D8B1AB90;
        v62 = v61 + v60;
        v63 = v68;
        sub_1D8ABD1B8(v68, v62, type metadata accessor for CVBundle);
        v49 = v63;
        goto LABEL_29;
      }

      v51 = 0;
      v52 = *(v32 + 80);
      v71 = v52;
      v72 = (v52 + 32) & ~v52;
      v53 = v25 + v72;
      v54 = v66;
      while (v51 < v25[2])
      {
        sub_1D8ABD1B8(&v53[*(v40 + 72) * v51], v54, type metadata accessor for CVBundle);
        v55 = CVBundle.classifications.getter()[2];

        if (v55)
        {
          sub_1D8ABD158(v54, type metadata accessor for CVBundle);
        }

        else
        {
          v56 = sub_1D8919304();
          sub_1D8ABD158(v54, type metadata accessor for CVBundle);
          if ((v56 & 1) == 0)
          {

            v75 = v43;
            v57 = v68;
            v58 = v65;
            sub_1D8ABD1B8(v68, v65, type metadata accessor for CVBundle);
            v59 = v64;
            sub_1D87F99C4(v64, v58);
            sub_1D8ABD158(v59, type metadata accessor for CVBundle);
            sub_1D8ABD158(v57, type metadata accessor for CVBundle);
            return;
          }
        }

        if (v50 == ++v51)
        {

          v60 = v72;
          goto LABEL_40;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_43;
  }

  sub_1D87A14E4(v31, &qword_1ECA67980, &qword_1D8B231C0);
  v33 = v72;
  v34 = sub_1D8B151C0();
  v35 = sub_1D8B16200();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_1D8783000, v34, v35, "fullScreenBundle not provided", v36, 2u);
    MEMORY[0x1DA721330](v36, -1, -1);
  }

  sub_1D8AA8368(v25, *(v33 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_configuration + 56), *(v33 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_configuration + 40));
}

uint64_t sub_1D8AB0148@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v72 = a2;
  v76 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68C08, &unk_1D8B3BE60);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v69 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63DC0, &qword_1D8B25FE0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v69 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v70 = &v69 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v73 = &v69 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v69 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v69 - v23;
  v25 = *(a3 + 32);
  v71 = *(a3 + 40);
  sub_1D87A0E38(a1, v11, &qword_1ECA68C08, &unk_1D8B3BE60);
  v75 = v13;
  v26 = *(v13 + 48);
  if (v26(v11, 1, v12) == 1)
  {
    sub_1D87A14E4(v11, &qword_1ECA68C08, &unk_1D8B3BE60);
    sub_1D87A0E38(v72, v9, &qword_1ECA68C08, &unk_1D8B3BE60);
    if (v26(v9, 1, v12) == 1)
    {
      v27 = &qword_1ECA68C08;
      v28 = &unk_1D8B3BE60;
      v29 = v9;
    }

    else
    {
      v44 = v70;
      sub_1D881F6FC(v9, v70, &qword_1ECA63DC0, &qword_1D8B25FE0);
      v45 = v73;
      sub_1D87A0E38(v44, v73, &qword_1ECA63DC0, &qword_1D8B25FE0);
      sub_1D8AB09C0();
      v47 = v46;
      sub_1D8ABD158(v45, type metadata accessor for CVBundle);
      sub_1D87A0E38(v44, v45, &qword_1ECA63DC0, &qword_1D8B25FE0);
      CVBundle.latestEstimate.getter(v82);
      v48 = v82[0];
      sub_1D8ABD158(v45, type metadata accessor for CVBundle);
      v81 = v48;
      CVDetection.detection.getter(&v77);
      v49 = v79;
      v50 = v80;
      __swift_project_boxed_opaque_existential_1(&v77, v79);
      v51 = (*(v50 + 88))(v49, v50);

      __swift_destroy_boxed_opaque_existential_1(&v77);
      if (v47 > v25 - v51)
      {
        v31 = v76;
        sub_1D881F6FC(v44, v76, &qword_1ECA63DC0, &qword_1D8B25FE0);
        v30 = 0;
        return (*(v75 + 56))(v31, v30, 1, v12);
      }

      v53 = v69;
      sub_1D87A0E38(v44, v69, &qword_1ECA63DC0, &qword_1D8B25FE0);
      v54 = sub_1D8B151C0();
      v55 = sub_1D8B161F0();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v72 = v12;
        v74 = v57;
        v82[0] = v57;
        *v56 = 136315394;
        v58 = v53;
        v59 = v53;
        v60 = v73;
        sub_1D87A0E38(v58, v73, &qword_1ECA63DC0, &qword_1D8B25FE0);
        v61 = sub_1D8919AAC();
        v63 = v62;
        sub_1D87A14E4(v59, &qword_1ECA63DC0, &qword_1D8B25FE0);
        sub_1D8ABD158(v60, type metadata accessor for CVBundle);
        v64 = sub_1D89AC714(v61, v63, v82);

        *(v56 + 4) = v64;
        *(v56 + 12) = 2080;
        v65 = 0xE000000000000000;
        v77 = 0;
        v78 = 0xE000000000000000;
        sub_1D8B16020();
        if (v71)
        {
          v66 = 0x296C6C6974532820;
        }

        else
        {
          v66 = 0;
        }

        if (v71)
        {
          v65 = 0xE800000000000000;
        }

        MEMORY[0x1DA71EFA0](v66, v65);

        v67 = sub_1D89AC714(v77, v78, v82);

        *(v56 + 14) = v67;
        _os_log_impl(&dword_1D8783000, v54, v55, "Time is up. The bundle %s is leaving the party at %s.", v56, 0x16u);
        v68 = v74;
        swift_arrayDestroy();
        v12 = v72;
        MEMORY[0x1DA721330](v68, -1, -1);
        MEMORY[0x1DA721330](v56, -1, -1);

        v29 = v44;
        v27 = &qword_1ECA63DC0;
        v28 = &qword_1D8B25FE0;
      }

      else
      {

        sub_1D87A14E4(v53, &qword_1ECA63DC0, &qword_1D8B25FE0);
        v29 = v44;
        v27 = &qword_1ECA63DC0;
        v28 = &qword_1D8B25FE0;
      }
    }

    sub_1D87A14E4(v29, v27, v28);
    v30 = 1;
    v31 = v76;
  }

  else
  {
    v72 = v12;
    sub_1D881F6FC(v11, v24, &qword_1ECA63DC0, &qword_1D8B25FE0);
    sub_1D87A0E38(v24, v22, &qword_1ECA63DC0, &qword_1D8B25FE0);
    v32 = sub_1D8B151C0();
    v33 = sub_1D8B161F0();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v82[0] = v74;
      *v34 = 136315394;
      v35 = v73;
      sub_1D87A0E38(v22, v73, &qword_1ECA63DC0, &qword_1D8B25FE0);
      v36 = sub_1D8919AAC();
      v38 = v37;
      sub_1D87A14E4(v22, &qword_1ECA63DC0, &qword_1D8B25FE0);
      sub_1D8ABD158(v35, type metadata accessor for CVBundle);
      v39 = sub_1D89AC714(v36, v38, v82);

      *(v34 + 4) = v39;
      *(v34 + 12) = 2080;
      v40 = 0xE000000000000000;
      v77 = 0;
      v78 = 0xE000000000000000;
      sub_1D8B16020();
      if (v71)
      {
        v41 = 0x296C6C6974532820;
      }

      else
      {
        v41 = 0;
      }

      if (v71)
      {
        v40 = 0xE800000000000000;
      }

      MEMORY[0x1DA71EFA0](v41, v40);

      v42 = sub_1D89AC714(v77, v78, v82);

      *(v34 + 14) = v42;
      _os_log_impl(&dword_1D8783000, v32, v33, "Using highest saliency bundle %s at %s.", v34, 0x16u);
      v43 = v74;
      swift_arrayDestroy();
      MEMORY[0x1DA721330](v43, -1, -1);
      MEMORY[0x1DA721330](v34, -1, -1);
    }

    else
    {

      sub_1D87A14E4(v22, &qword_1ECA63DC0, &qword_1D8B25FE0);
    }

    v31 = v76;
    sub_1D881F6FC(v24, v76, &qword_1ECA63DC0, &qword_1D8B25FE0);
    v30 = 0;
    v12 = v72;
  }

  return (*(v75 + 56))(v31, v30, 1, v12);
}

void sub_1D8AB09C0()
{
  v0 = type metadata accessor for BundleClassification.ClassificationType(0);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = CVBundle.classifications.getter();
  v4 = v3[2];
  if (v4)
  {
    v5 = 0;
    while (v5 < v3[2])
    {
      v6 = *(type metadata accessor for BundleClassification(0) - 8);
      sub_1D8ABD1B8(v3 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5, v2, type metadata accessor for BundleClassification.ClassificationType);
      if (swift_getEnumCaseMultiPayload() == 2)
      {

        sub_1D8ABD158(v2, type metadata accessor for BundleClassification.ClassificationType);
        return;
      }

      ++v5;
      sub_1D8ABD158(v2, type metadata accessor for BundleClassification.ClassificationType);
      if (v4 == v5)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
  }
}

uint64_t sub_1D8AB0B60@<X0>(uint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X8>)
{
  v98 = a2;
  v5 = type metadata accessor for CVTrackSnapshot(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v104 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for CVBundle.BundleType(0);
  v7 = MEMORY[0x1EEE9AC00](v108);
  v102 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v94 - v9;
  v11 = sub_1D8B13240();
  v105 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v101 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v103 = &v94 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v100 = &v94 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v109 = &v94 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68C08, &unk_1D8B3BE60);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v99 = &v94 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v94 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63DC0, &qword_1D8B25FE0);
  v111 = *(v24 - 8);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v97 = &v94 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = &v94 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = &v94 - v31;
  v33 = MEMORY[0x1EEE9AC00](v30);
  v110 = &v94 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v94 - v35;
  v37 = type metadata accessor for CVBundle(0);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v40 = &v94 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v38 + 16))
  {
    v107 = a3;
    v41 = (*(v111 + 80) + 32) & ~*(v111 + 80);
    v96 = v38;
    sub_1D87A0E38(v38 + v41, v36, &qword_1ECA63DC0, &qword_1D8B25FE0);
    v42 = *&v36[*(v24 + 48)];
    sub_1D8ABD220(v36, v40, type metadata accessor for CVBundle);
    sub_1D87A0E38(a1, v23, &qword_1ECA68C08, &unk_1D8B3BE60);
    v43 = *(v111 + 48);
    if (v43(v23, 1, v24) == 1)
    {
      sub_1D87A14E4(v23, &qword_1ECA68C08, &unk_1D8B3BE60);
      v44 = *(v24 + 48);
      v45 = v107;
      sub_1D8ABD220(v40, v107, type metadata accessor for CVBundle);
      *(v45 + v44) = v42;
      return (*(v111 + 56))(v45, 0, 1, v24);
    }

    v95 = v43;
    v48 = v23;
    v49 = v110;
    sub_1D881F6FC(v48, v110, &qword_1ECA63DC0, &qword_1D8B25FE0);
    sub_1D87A0E38(v49, v32, &qword_1ECA63DC0, &qword_1D8B25FE0);
    CVBundle.latestEstimate.getter(&v117);
    v50 = v117;
    sub_1D8ABD158(v32, type metadata accessor for CVBundle);
    v116 = v50;
    CVDetection.detection.getter(v113);
    v51 = v114;
    v52 = v115;
    __swift_project_boxed_opaque_existential_1(v113, v114);
    v53 = (*(v52 + 88))(v51, v52);

    __swift_destroy_boxed_opaque_existential_1(v113);
    CVBundle.latestEstimate.getter(&v116);
    v112 = v116;
    CVDetection.detection.getter(v113);
    v54 = v114;
    v55 = v115;
    __swift_project_boxed_opaque_existential_1(v113, v114);
    v56 = (*(v55 + 88))(v54, v55);

    __swift_destroy_boxed_opaque_existential_1(v113);
    if (v53 > v56)
    {
      v57 = v40;
      v58 = sub_1D8B151C0();
      v59 = sub_1D8B16210();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&dword_1D8783000, v58, v59, "Best candidate should be newer than current sample.", v60, 2u);
        MEMORY[0x1DA721330](v60, -1, -1);
      }

      sub_1D8ABD158(v57, type metadata accessor for CVBundle);
      v61 = v110;
      v62 = v107;
      sub_1D87A0E38(v110, v107, &qword_1ECA63DC0, &qword_1D8B25FE0);
      (*(v111 + 56))(v62, 0, 1, v24);
      v63 = v61;
      return sub_1D87A14E4(v63, &qword_1ECA63DC0, &qword_1D8B25FE0);
    }

    sub_1D8ABD1B8(v40, v10, type metadata accessor for CVBundle.BundleType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v94 = v40;
    if (EnumCaseMultiPayload == 1)
    {
      v65 = v105;
      v66 = *(v105 + 32);
      v67 = v100;
      v66(v100, v10, v11);
    }

    else
    {
      v68 = v10;
      v69 = v104;
      sub_1D8ABD220(v68, v104, type metadata accessor for CVTrackSnapshot);
      v65 = v105;
      v67 = v100;
      (*(v105 + 16))(v100, v69, v11);
      sub_1D8ABD158(v69, type metadata accessor for CVTrackSnapshot);
      v66 = *(v65 + 32);
    }

    v70 = v101;
    v66(v109, v67, v11);
    sub_1D87A0E38(v110, v29, &qword_1ECA63DC0, &qword_1D8B25FE0);
    v71 = v102;
    sub_1D8ABD1B8(v29, v102, type metadata accessor for CVBundle.BundleType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v66(v70, v71, v11);
    }

    else
    {
      v72 = v71;
      v73 = v104;
      sub_1D8ABD220(v72, v104, type metadata accessor for CVTrackSnapshot);
      (*(v65 + 16))(v70, v73, v11);
      sub_1D8ABD158(v73, type metadata accessor for CVTrackSnapshot);
    }

    v74 = v70;
    v75 = v103;
    v66(v103, v74, v11);
    sub_1D8ABD158(v29, type metadata accessor for CVBundle);
    sub_1D8AB859C(&qword_1EE0E9898, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
    v76 = v109;
    v77 = sub_1D8B158C0();
    v78 = *(v65 + 8);
    v78(v75, v11);
    v79 = (v78)(v76, v11);
    if (v77)
    {
LABEL_20:
      v81 = *(v24 + 48);
      v82 = v107;
      sub_1D8ABD220(v94, v107, type metadata accessor for CVBundle);
      *(v82 + v81) = v42;
      (*(v111 + 56))(v82, 0, 1, v24);
      v63 = v110;
      return sub_1D87A14E4(v63, &qword_1ECA63DC0, &qword_1D8B25FE0);
    }

    MEMORY[0x1EEE9AC00](v79);
    *(&v94 - 2) = v110;
    v80 = v99;
    sub_1D87EE250(sub_1D8ABDE00, v96, v99);
    if (v95(v80, 1, v24) == 1)
    {
      sub_1D87A14E4(v80, &qword_1ECA68C08, &unk_1D8B3BE60);
      goto LABEL_20;
    }

    v83 = v97;
    sub_1D881F6FC(v80, v97, &qword_1ECA63DC0, &qword_1D8B25FE0);
    v84 = 0.0;
    v85 = v107;
    if ((v98 & 1) == 0)
    {
LABEL_29:
      if ((v84 + *(v83 + *(v24 + 48))) >= v42)
      {
        sub_1D8ABD158(v94, type metadata accessor for CVBundle);
        sub_1D881F6FC(v83, v85, &qword_1ECA63DC0, &qword_1D8B25FE0);
      }

      else
      {
        sub_1D87A14E4(v83, &qword_1ECA63DC0, &qword_1D8B25FE0);
        v93 = *(v24 + 48);
        sub_1D8ABD220(v94, v85, type metadata accessor for CVBundle);
        *(v85 + v93) = v42;
      }

      (*(v111 + 56))(v85, 0, 1, v24);
      v63 = v110;
      return sub_1D87A14E4(v63, &qword_1ECA63DC0, &qword_1D8B25FE0);
    }

    v86 = v106;
    v87 = *(v106 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_streamingRanker + 24);
    v88 = *(v106 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_streamingRanker + 32);
    __swift_project_boxed_opaque_existential_1((v106 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_streamingRanker), v87);
    v89 = (*(v88 + 16))(v87, v88);
    v91 = v90 - v89;
    if (*(v86 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_configuration + 42) > 1u)
    {
      if (*(v86 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_configuration + 42) == 2)
      {
        goto LABEL_25;
      }
    }

    else if (!*(v86 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_configuration + 42))
    {
LABEL_25:
      v92 = 0.06;
LABEL_28:
      v84 = v91 * v92;
      goto LABEL_29;
    }

    v92 = 0.1;
    goto LABEL_28;
  }

  v47 = *(v111 + 56);

  return v47(a3, 1, 1, v24);
}

uint64_t sub_1D8AB1804(uint64_t a1, uint64_t a2)
{
  v40 = a2;
  v37 = a1;
  v2 = type metadata accessor for CVTrackSnapshot(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v35 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CVBundle.BundleType(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v39 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - v7;
  v9 = sub_1D8B13240();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v36 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v41 = &v34 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v34 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v38 = &v34 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63DC0, &qword_1D8B25FE0);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v34 - v23;
  sub_1D87A0E38(v37, &v34 - v23, &qword_1ECA63DC0, &qword_1D8B25FE0);
  sub_1D8ABD1B8(v24, v8, type metadata accessor for CVBundle.BundleType);
  v37 = v4;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *(v10 + 32);
    v25(v17, v8, v9);
    v26 = v35;
  }

  else
  {
    v26 = v35;
    sub_1D8ABD220(v8, v35, type metadata accessor for CVTrackSnapshot);
    (*(v10 + 16))(v17, v26, v9);
    sub_1D8ABD158(v26, type metadata accessor for CVTrackSnapshot);
    v25 = *(v10 + 32);
  }

  v27 = v38;
  v25(v38, v17, v9);
  sub_1D8ABD158(v24, type metadata accessor for CVBundle);
  sub_1D87A0E38(v40, v22, &qword_1ECA63DC0, &qword_1D8B25FE0);
  v28 = v39;
  sub_1D8ABD1B8(v22, v39, type metadata accessor for CVBundle.BundleType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = v36;
    v25(v36, v28, v9);
  }

  else
  {
    sub_1D8ABD220(v28, v26, type metadata accessor for CVTrackSnapshot);
    v29 = v36;
    (*(v10 + 16))(v36, v26, v9);
    sub_1D8ABD158(v26, type metadata accessor for CVTrackSnapshot);
  }

  v30 = v41;
  v25(v41, v29, v9);
  sub_1D8ABD158(v22, type metadata accessor for CVBundle);
  v31 = sub_1D8B13200();
  v32 = *(v10 + 8);
  v32(v30, v9);
  v32(v27, v9);
  return v31 & 1;
}

float BundleSelector.deadbandSize.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_streamingRanker + 24);
  v2 = *(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_streamingRanker + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_streamingRanker), v1);
  v3 = (*(v2 + 16))(v1, v2);
  return (v4 - v3) * flt_1D8B3BE10[*(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_configuration + 42)];
}

uint64_t BundleSelector.deinit()
{

  v1 = OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_outputStreamBufferingPolicy;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64810, &qword_1D8B3BE70);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_logger;
  v4 = sub_1D8B151E0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_stillRanker));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_streamingRanker));

  sub_1D87A14E4(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_userSelectedBundle, &qword_1ECA67980, &qword_1D8B231C0);

  sub_1D87A14E4(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_streamingMostSalientBundleAndScore, &qword_1ECA68C08, &unk_1D8B3BE60);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t BundleSelector.__deallocating_deinit()
{
  BundleSelector.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1D8AB1EF8(void *a1, int a2)
{
  v18 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68E60, &qword_1D8B3CF80);
  v16 = *(v3 - 8);
  v17 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - v4;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68E68, &qword_1D8B3CF88);
  v6 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v8 = &v15 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68E70, &qword_1D8B3CF90);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8ABCDC4();
  sub_1D8B16DD0();
  v13 = (v10 + 8);
  if (v18)
  {
    v20 = 1;
    sub_1D8ABCE18();
    sub_1D8B16A40();
    (*(v16 + 8))(v5, v17);
  }

  else
  {
    v19 = 0;
    sub_1D8ABCE6C();
    sub_1D8B16A40();
    (*(v6 + 8))(v8, v15);
  }

  return (*v13)(v12, v9);
}

uint64_t sub_1D8AB21B4()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 1953718636;
  }
}

void sub_1D8AB21EC(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1953718636 && a2 == 0xE400000000000000;
  if (v5 || (sub_1D8B16BA0() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D8B48BD0 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D8B16BA0();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1D8AB22D0(uint64_t a1)
{
  v2 = sub_1D8ABCDC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8AB230C(uint64_t a1)
{
  v2 = sub_1D8ABCDC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8AB2348(uint64_t a1)
{
  v2 = sub_1D8ABCE6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8AB2384(uint64_t a1)
{
  v2 = sub_1D8ABCE6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8AB23C0(uint64_t a1)
{
  v2 = sub_1D8ABCE18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8AB23FC(uint64_t a1)
{
  v2 = sub_1D8ABCE18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8AB2438@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1D8ABC638(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t sub_1D8AB2494()
{
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 1953718636;
  }
}

void BundleSelector.Configuration.pinPresentableUIArea.setter(double a1, double a2, double a3, double a4)
{
  v4[1] = a1;
  v4[2] = a2;
  v4[3] = a3;
  v4[4] = a4;
}

int64x2_t static BundleSelector.Configuration.practicallyUnlimitedBundles.getter@<Q0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(a1 + 24) = _Q0;
  *(a1 + 40) = 16908290;
  result = vdupq_n_s64(0x270FuLL);
  *(a1 + 48) = result;
  *(a1 + 64) = 1;
  return result;
}

unint64_t sub_1D8AB265C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0xD000000000000015;
    if (a1 == 2)
    {
      v5 = 0xD000000000000011;
    }

    v6 = 0xD000000000000014;
    if (!a1)
    {
      v6 = 0xD00000000000001ALL;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0xD000000000000030;
    v2 = 0xD00000000000001CLL;
    if (a1 != 7)
    {
      v2 = 0xD00000000000001DLL;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000021;
    if (a1 == 4)
    {
      v3 = 0xD000000000000019;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1D8AB2768@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D8ABCAF4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D8AB2790(uint64_t a1)
{
  v2 = sub_1D8AB8680();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8AB27CC(uint64_t a1)
{
  v2 = sub_1D8AB8680();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BundleSelector.Configuration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68C10, &qword_1D8B3BE78);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v16 - v5;
  v7 = *(v1 + 8);
  v20 = *(v1 + 24);
  v21 = v7;
  v25 = *(v1 + 40);
  v8 = *(v1 + 41);
  v18 = *(v1 + 42);
  v19 = v8;
  v17 = *(v1 + 43);
  v9 = *(v1 + 48);
  v16[0] = *(v1 + 56);
  v16[1] = v9;
  v10 = *(v1 + 64);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8AB8680();
  sub_1D8B16DD0();
  LOBYTE(v23) = 0;
  v11 = v22;
  sub_1D8B16AA0();
  if (!v11)
  {
    v12 = v25;
    v13 = v18;
    v14 = v19;
    LODWORD(v22) = v10;
    v23 = v21;
    v24 = v20;
    v26 = 1;
    type metadata accessor for CGRect(0);
    sub_1D8AB859C(&qword_1ECA67820, type metadata accessor for CGRect, MEMORY[0x1E695EF68]);
    sub_1D8B16AE0();
    LOBYTE(v23) = v12;
    v26 = 2;
    sub_1D8AB86D4();
    sub_1D8B16AE0();
    LOBYTE(v23) = v14;
    v26 = 3;
    sub_1D8AB8728();
    sub_1D8B16AE0();
    LOBYTE(v23) = v13;
    v26 = 4;
    sub_1D8B16AE0();
    LOBYTE(v23) = v17;
    v26 = 5;
    sub_1D8AB877C();
    sub_1D8B16AE0();
    LOBYTE(v23) = 6;
    sub_1D8B16AD0();
    LOBYTE(v23) = 7;
    sub_1D8B16AD0();
    LOBYTE(v23) = v22;
    v26 = 8;
    sub_1D8AB87D0();
    sub_1D8B16AE0();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t BundleSelector.Configuration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68C40, &qword_1D8B3BE80);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8AB8680();
  sub_1D8B16DB0();
  if (!v2)
  {
    LOBYTE(v23) = 0;
    v9 = sub_1D8B169D0();
    type metadata accessor for CGRect(0);
    v26 = 1;
    sub_1D8AB859C(&qword_1ECA64778, type metadata accessor for CGRect, MEMORY[0x1E695EF80]);
    sub_1D8B16A10();
    v21 = v23;
    v22 = v24;
    v26 = 2;
    sub_1D8AB8824();
    sub_1D8B16A10();
    v25 = v23;
    v26 = 3;
    sub_1D8AB8878();
    sub_1D8B16A10();
    v20 = v23;
    v26 = 4;
    sub_1D8B16A10();
    v10 = v23;
    v26 = 5;
    sub_1D8AB88CC();
    sub_1D8B16A10();
    v19 = v10;
    LOBYTE(v10) = v23;
    LOBYTE(v23) = 6;
    v18 = sub_1D8B16A00();
    LOBYTE(v23) = 7;
    v17 = sub_1D8B16A00();
    v26 = 8;
    sub_1D8AB8920();
    sub_1D8B16A10();
    (*(v6 + 8))(v8, v5);
    v12 = v23;
    *a2 = v9 & 1;
    v13 = v22;
    *(a2 + 8) = v21;
    *(a2 + 24) = v13;
    *(a2 + 40) = v25;
    v14 = v19;
    *(a2 + 41) = v20;
    *(a2 + 42) = v14;
    *(a2 + 43) = v10;
    v15 = v17;
    *(a2 + 48) = v18;
    *(a2 + 56) = v15;
    *(a2 + 64) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

double sub_1D8AB2F30@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(a1 + 24) = _Q0;
  *(a1 + 40) = 16908290;
  *&result = 10;
  *(a1 + 48) = xmmword_1D8B190E0;
  *(a1 + 64) = 1;
  return result;
}

unint64_t BundleSelector.Configuration.RankingAlgorithmPreset.description.getter()
{
  v1 = 1634038337;
  v2 = 0x6867697365726F42;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

void BundleSelector.Configuration.RankingAlgorithmPreset.configuration.getter(uint64_t a1@<X8>)
{
  if (*v1 > 1u)
  {
    if (*v1 == 2)
    {
      v2 = 0;
      v3 = 0;
      v4 = 1;
      v5 = xmmword_1D8B3BE00;
      v6 = 0.16;
    }

    else
    {
      v4 = 0;
      v5 = xmmword_1D8B3BDF0;
      v3 = 0x3F80000000000000;
      v6 = 1.0;
      v2 = 1001;
    }
  }

  else
  {
    v2 = 0;
    v3 = 0;
    v4 = 1;
    if (*v1)
    {
      v5 = xmmword_1D8B3BE00;
      v6 = 0.2;
    }

    else
    {
      v5 = xmmword_1D8B3BDF0;
      v6 = 1.0;
    }
  }

  *a1 = 0x3FE0000000000000;
  *(a1 + 8) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v2;
  *(a1 + 40) = v4;
  *(a1 + 48) = v2;
  *(a1 + 56) = v4;
  *(a1 + 60) = v3;
  *(a1 + 68) = v4;
}

uint64_t sub_1D8AB3100(uint64_t a1)
{
  v2 = sub_1D8AB8AC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8AB313C(uint64_t a1)
{
  v2 = sub_1D8AB8AC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8AB3178(uint64_t a1)
{
  v2 = sub_1D8AB8A1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8AB31B4(uint64_t a1)
{
  v2 = sub_1D8AB8A1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8AB31F0(uint64_t a1)
{
  v2 = sub_1D8AB8A70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8AB322C(uint64_t a1)
{
  v2 = sub_1D8AB8A70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D8AB3268()
{
  v1 = 1634038369;
  v2 = 0xD000000000000025;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0xD000000000000018;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D8AB32E8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D8ABCEC0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D8AB3310(uint64_t a1)
{
  v2 = sub_1D8AB8974();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8AB334C(uint64_t a1)
{
  v2 = sub_1D8AB8974();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8AB3388(uint64_t a1)
{
  v2 = sub_1D8AB89C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8AB33C4(uint64_t a1)
{
  v2 = sub_1D8AB89C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BundleSelector.Configuration.RankingAlgorithmPreset.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68C68, &qword_1D8B3BE88);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68C70, &qword_1D8B3BE90);
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v27 = &v22 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68C78, &qword_1D8B3BE98);
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v24 = &v22 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68C80, &qword_1D8B3BEA0);
  v22 = *(v9 - 8);
  v23 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68C88, &qword_1D8B3BEA8);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - v14;
  v16 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8AB8974();
  sub_1D8B16DD0();
  v17 = (v13 + 8);
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v35 = 2;
      sub_1D8AB8A1C();
      v18 = v27;
      sub_1D8B16A40();
      v20 = v28;
      v19 = v29;
    }

    else
    {
      v36 = 3;
      sub_1D8AB89C8();
      v18 = v30;
      sub_1D8B16A40();
      v20 = v31;
      v19 = v32;
    }

    goto LABEL_8;
  }

  if (v16)
  {
    v34 = 1;
    sub_1D8AB8A70();
    v18 = v24;
    sub_1D8B16A40();
    v20 = v25;
    v19 = v26;
LABEL_8:
    (*(v20 + 8))(v18, v19);
    return (*v17)(v15, v12);
  }

  v33 = 0;
  sub_1D8AB8AC4();
  sub_1D8B16A40();
  (*(v22 + 8))(v11, v23);
  return (*v17)(v15, v12);
}

uint64_t BundleSelector.Configuration.RankingAlgorithmPreset.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v45 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68CB8, &qword_1D8B3BEB0);
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v34 - v3;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68CC0, &qword_1D8B3BEB8);
  v38 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v43 = &v34 - v4;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68CC8, &qword_1D8B3BEC0);
  v36 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v6 = &v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68CD0, &qword_1D8B3BEC8);
  v37 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68CD8, &unk_1D8B3BED0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - v12;
  v14 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1D8AB8974();
  v15 = v46;
  sub_1D8B16DB0();
  if (!v15)
  {
    v16 = v9;
    v34 = v7;
    v35 = 0;
    v17 = v6;
    v18 = v43;
    v19 = v44;
    v46 = v11;
    v20 = v45;
    v21 = v13;
    v22 = sub_1D8B16A20();
    v23 = (2 * *(v22 + 16)) | 1;
    v48 = v22;
    v49 = v22 + 32;
    v50 = 0;
    v51 = v23;
    v24 = sub_1D881F7BC();
    if (v24 == 4 || v50 != v51 >> 1)
    {
      v26 = sub_1D8B16770();
      swift_allocError();
      v28 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA676B0, &qword_1D8B24650);
      *v28 = &type metadata for BundleSelector.Configuration.RankingAlgorithmPreset;
      sub_1D8B16960();
      sub_1D8B16760();
      (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v26);
      swift_willThrow();
LABEL_9:
      (*(v46 + 8))(v13, v10);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v47);
    }

    v52 = v24;
    if (v24 <= 1u)
    {
      if (v24)
      {
        v53 = 1;
        sub_1D8AB8A70();
        v32 = v35;
        sub_1D8B16950();
        if (!v32)
        {
          (*(v36 + 8))(v17, v40);
          goto LABEL_17;
        }
      }

      else
      {
        v53 = 0;
        sub_1D8AB8AC4();
        v25 = v35;
        sub_1D8B16950();
        if (!v25)
        {
          (*(v37 + 8))(v16, v34);
LABEL_17:
          (*(v46 + 8))(v13, v10);
LABEL_22:
          swift_unknownObjectRelease();
          *v20 = v52;
          return __swift_destroy_boxed_opaque_existential_1(v47);
        }
      }

      goto LABEL_9;
    }

    v30 = v46;
    if (v24 == 2)
    {
      v53 = 2;
      sub_1D8AB8A1C();
      v31 = v35;
      sub_1D8B16950();
      if (!v31)
      {
        (*(v38 + 8))(v18, v42);
LABEL_21:
        (*(v30 + 8))(v21, v10);
        goto LABEL_22;
      }
    }

    else
    {
      v53 = 3;
      sub_1D8AB89C8();
      v33 = v35;
      sub_1D8B16950();
      if (!v33)
      {
        (*(v39 + 8))(v19, v41);
        goto LABEL_21;
      }
    }

    (*(v30 + 8))(v21, v10);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_1(v47);
}

unint64_t sub_1D8AB3F10()
{
  v1 = 1634038337;
  v2 = 0x6867697365726F42;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

float BundleSelector.Configuration.RankingAlgorithmPreset.scoreRange.getter()
{
  v8 = *v0;
  BundleSelector.Configuration.RankingAlgorithmPreset.bundleRanker.getter(v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v3 = (*(v2 + 16))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v3;
}

float sub_1D8AB4024()
{
  v8 = *v0;
  BundleSelector.Configuration.RankingAlgorithmPreset.bundleRanker.getter(v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v3 = (*(v2 + 16))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v3;
}

uint64_t sub_1D8AB40B8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA657B8, &qword_1D8B2D5D0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v85 - v2;
  v4 = type metadata accessor for BundleClassification(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for BundleClassification.ClassificationType(0);
  v104 = *(v106 - 8);
  v7 = MEMORY[0x1EEE9AC00](v106);
  v89 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v105 = &v85 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = (&v85 - v12);
  MEMORY[0x1EEE9AC00](v11);
  v99 = &v85 - v14;
  v15 = type metadata accessor for CVTrackSnapshot(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v95 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for CVBundle.BundleType(0);
  v17 = MEMORY[0x1EEE9AC00](v98);
  v91 = &v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v85 - v19;
  v21 = sub_1D8B13240();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v92 = &v85 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v93 = &v85 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  *&v102 = &v85 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v103 = &v85 - v29;
  v30 = type metadata accessor for SyntheticDetectionResult(0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v85 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = v0;
  CVBundle.latestEstimate.getter(&v107);
  if (v107 >> 60 != 11)
  {
    v87 = v22;
    v88 = v21;
    v86 = v6;

    goto LABEL_6;
  }

  v33 = swift_projectBox();
  sub_1D8ABD1B8(v33, v32, type metadata accessor for SyntheticDetectionResult);

  if ((v32[*(v30 + 24)] & 1) == 0)
  {

    goto LABEL_34;
  }

  v34 = sub_1D8B16BA0();

  if (v34)
  {
LABEL_34:
    sub_1D8ABD1B8(v100, v20, type metadata accessor for CVBundle.BundleType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v61 = *(v22 + 32);
      v62 = v102;
      v61(v102, v20, v21);
    }

    else
    {
      v69 = v95;
      sub_1D8ABD220(v20, v95, type metadata accessor for CVTrackSnapshot);
      v62 = v102;
      (*(v22 + 16))(v102, v69, v21);
      sub_1D8ABD158(v69, type metadata accessor for CVTrackSnapshot);
      v61 = *(v22 + 32);
    }

    v70 = v103;
    v61(v103, v62, v21);
    v60 = sub_1D8B131E0();
    (*(v22 + 8))(v70, v21);
    v71 = type metadata accessor for SyntheticDetectionResult;
    v72 = v32;
    goto LABEL_40;
  }

  v87 = v22;
  v88 = v21;
  v86 = v6;
  sub_1D8ABD158(v32, type metadata accessor for SyntheticDetectionResult);
LABEL_6:
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63410, &qword_1D8B23AD0);
  v36 = *(v104 + 72);
  v37 = (*(v104 + 80) + 32) & ~*(v104 + 80);
  v103 = *(v104 + 80);
  v104 = v35;
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1D8B1AB70;
  v94 = v38;
  v39 = (v38 + v37);
  *v39 = MEMORY[0x1E69E7CC0];
  v39[1] = 0;
  swift_storeEnumTagMultiPayload();
  v40 = v39 + v36;
  v97 = xmmword_1D8B190C0;
  *v40 = xmmword_1D8B190C0;
  *(v40 + 2) = 0xE700000000000000;
  *(v40 + 3) = 0x7974706D65;
  *(v40 + 4) = 0xE500000000000000;
  *(v40 + 5) = 0;
  swift_storeEnumTagMultiPayload();
  *(v39 + 2 * v36) = MEMORY[0x1E69E7CD0];
  v41 = v36;
  swift_storeEnumTagMultiPayload();
  v96 = *MEMORY[0x1E69C9C08];
  v42 = 3;
  v102 = xmmword_1D8B1AB90;
  v90 = v39;
  v43 = v99;
  v44 = v100;
  v101 = v41;
  while (1)
  {
    sub_1D8ABD1B8(v39, v43, type metadata accessor for BundleClassification.ClassificationType);
    v46 = swift_allocObject();
    *(v46 + 16) = v102;
    sub_1D8ABD1B8(v43, v46 + v37, type metadata accessor for BundleClassification.ClassificationType);
    v47 = sub_1D8920388(v46);
    swift_setDeallocating();
    sub_1D8ABD158(v46 + v37, type metadata accessor for BundleClassification.ClassificationType);
    swift_deallocClassInstance();
    if ((v47 & 1) == 0)
    {
      sub_1D8ABD158(v43, type metadata accessor for BundleClassification.ClassificationType);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      return 0;
    }

    v48 = *(v44 + *(type metadata accessor for CVBundle(0) + 28));
    sub_1D8ABD1B8(v43, v105, type metadata accessor for BundleClassification.ClassificationType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        sub_1D8ABD158(v105, type metadata accessor for BundleClassification.ClassificationType);
        *v13 = MEMORY[0x1E69E7CD0];
      }

      goto LABEL_25;
    }

    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v51 = type metadata accessor for VisualLookupClassifier.Result(0);
        (*(*(v51 - 8) + 56))(v13, 1, 1, v51);
        goto LABEL_23;
      }

      sub_1D8ABD158(v105, type metadata accessor for BundleClassification.ClassificationType);
      *v13 = MEMORY[0x1E69E7CC0];
      v13[1] = 0xBFF0000000000000;
LABEL_25:
      swift_storeEnumTagMultiPayload();
      if (!*(v48 + 16))
      {
        goto LABEL_28;
      }

      goto LABEL_26;
    }

    if (EnumCaseMultiPayload == 2)
    {
      sub_1D8ABD158(v105, type metadata accessor for BundleClassification.ClassificationType);
      *v13 = v97;
      v13[2] = 0xE700000000000000;
      v13[3] = 0x7974706D65;
      v13[4] = 0xE500000000000000;
      v13[5] = 0;
      goto LABEL_25;
    }

    if (EnumCaseMultiPayload == 3)
    {
      *v13 = 0;
      goto LABEL_25;
    }

    *v13 = 0x7974706D65;
    v13[1] = 0xE500000000000000;
    v50 = sub_1D8B145A0();
    (*(*(v50 - 8) + 104))(v13, v96, v50);
LABEL_23:
    swift_storeEnumTagMultiPayload();
    sub_1D8ABD158(v105, type metadata accessor for BundleClassification.ClassificationType);
    if (!*(v48 + 16))
    {
      goto LABEL_28;
    }

LABEL_26:
    v52 = sub_1D87EF6AC(v13);
    if (v53)
    {
      v54 = v52;
      v55 = *(v48 + 56);
      v56 = type metadata accessor for RefinementState(0);
      v57 = *(v56 - 8);
      v58 = v55 + *(v57 + 72) * v54;
      v43 = v99;
      sub_1D8ABD1B8(v58, v3, type metadata accessor for RefinementState);
      sub_1D8ABD158(v13, type metadata accessor for BundleClassification.ClassificationType);
      (*(v57 + 56))(v3, 0, 1, v56);
      v44 = v100;
      goto LABEL_29;
    }

LABEL_28:
    sub_1D8ABD158(v13, type metadata accessor for BundleClassification.ClassificationType);
    v56 = type metadata accessor for RefinementState(0);
    (*(*(v56 - 8) + 56))(v3, 1, 1, v56);
LABEL_29:
    type metadata accessor for RefinementState(0);
    if ((*(*(v56 - 8) + 48))(v3, 1, v56) != 1)
    {
      break;
    }

    sub_1D8ABD158(v43, type metadata accessor for BundleClassification.ClassificationType);
    sub_1D87A14E4(v3, &qword_1ECA657B8, &qword_1D8B2D5D0);
    v45 = v101;
LABEL_8:
    v39 = (v39 + v45);
    if (!--v42)
    {
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v63 = v91;
      sub_1D8ABD1B8(v44, v91, type metadata accessor for CVBundle.BundleType);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_45;
      }

      v64 = v87;
      v65 = *(v87 + 32);
      v66 = v92;
      v67 = v63;
      v68 = v88;
      v65(v92, v67, v88);
      goto LABEL_46;
    }
  }

  v59 = swift_getEnumCaseMultiPayload();
  v45 = v101;
  if (v59 != 2)
  {
    sub_1D8ABD158(v43, type metadata accessor for BundleClassification.ClassificationType);
    sub_1D8ABD158(v3, type metadata accessor for RefinementState);
    goto LABEL_8;
  }

  v73 = v86;
  sub_1D8ABD220(v3, v86, type metadata accessor for BundleClassification);
  v74 = v89;
  sub_1D8ABD1B8(v73, v89, type metadata accessor for BundleClassification.ClassificationType);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    v75 = *v74;
    v63 = *(*v74 + 16);
    if (v63)
    {
      v76 = sub_1D87F385C(*(*v74 + 16), 0);
      v77 = *(sub_1D8B152F0() - 8);
      v78 = sub_1D8817014(&v107, &v76[(*(v77 + 80) + 32) & ~*(v77 + 80)], v63, v75);
      v79 = v107;

      sub_1D87977A0(v79);
      if (v78 != v63)
      {
        __break(1u);
LABEL_45:
        v80 = v95;
        sub_1D8ABD220(v63, v95, type metadata accessor for CVTrackSnapshot);
        v64 = v87;
        v66 = v92;
        v68 = v88;
        (*(v87 + 16))(v92, v80, v88);
        sub_1D8ABD158(v80, type metadata accessor for CVTrackSnapshot);
        v65 = *(v64 + 32);
LABEL_46:
        v81 = v93;
        v65(v93, v66, v68);
        v60 = sub_1D8B131E0();
        (*(v64 + 8))(v81, v68);
        return v60;
      }
    }

    else
    {
      v76 = MEMORY[0x1E69E7CC0];
    }

    v107 = v76;
    sub_1D8AB619C(&v107);

    v83 = v107;
    v84 = sub_1D8B152F0();
    v60 = MEMORY[0x1DA71F1E0](v83, v84);

    sub_1D8ABD158(v73, type metadata accessor for BundleClassification);
    v71 = type metadata accessor for BundleClassification.ClassificationType;
    v72 = v99;
  }

  else
  {
    v60 = sub_1D88511E8();
    sub_1D8ABD158(v73, type metadata accessor for BundleClassification);
    sub_1D8ABD158(v99, type metadata accessor for BundleClassification.ClassificationType);
    v72 = v74;
    v71 = type metadata accessor for BundleClassification.ClassificationType;
  }

LABEL_40:
  sub_1D8ABD158(v72, v71);
  return v60;
}

unint64_t BundleSelector.Configuration.RankingEligibilityPolicy.description.getter()
{
  v1 = *v0;
  if (v1 == 1)
  {
    v2 = 0xD000000000000012;
  }

  else
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v2;
  }

  else
  {
    return 0x6C4120776F6C6C41;
  }
}

uint64_t sub_1D8AB5100(uint64_t a1)
{
  v2 = sub_1D8AB8C14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8AB513C(uint64_t a1)
{
  v2 = sub_1D8AB8C14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8AB5178(uint64_t a1)
{
  v2 = sub_1D8AB8BC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8AB51B4(uint64_t a1)
{
  v2 = sub_1D8AB8BC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D8AB51F0()
{
  v1 = 0xD000000000000011;
  if (*v0 != 1)
  {
    v1 = 0x616878456C6C7566;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C6C41776F6C6C61;
  }
}

uint64_t sub_1D8AB525C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D8ABD030(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D8AB5284(uint64_t a1)
{
  v2 = sub_1D8AB8B18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8AB52C0(uint64_t a1)
{
  v2 = sub_1D8AB8B18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8AB52FC(uint64_t a1)
{
  v2 = sub_1D8AB8B6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8AB5338(uint64_t a1)
{
  v2 = sub_1D8AB8B6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BundleSelector.Configuration.RankingEligibilityPolicy.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68CE0, &qword_1D8B3BEE0);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68CE8, &qword_1D8B3BEE8);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68CF0, &qword_1D8B3BEF0);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68CF8, &qword_1D8B3BEF8);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8AB8B18();
  sub_1D8B16DD0();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_1D8AB8BC0();
      v9 = v21;
      sub_1D8B16A40();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_1D8AB8B6C();
      v9 = v24;
      sub_1D8B16A40();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_1D8AB8C14();
    sub_1D8B16A40();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

uint64_t BundleSelector.Configuration.RankingEligibilityPolicy.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68D20, &qword_1D8B3BF00);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68D28, &qword_1D8B3BF08);
  v30 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68D30, &qword_1D8B3BF10);
  v29 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68D38, &qword_1D8B3BF18);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1D8AB8B18();
  v15 = v36;
  sub_1D8B16DB0();
  if (!v15)
  {
    v28 = v7;
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = sub_1D8B16A20();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_1D881F7C4();
    if (v20 == 3 || v40 != v41 >> 1)
    {
      v22 = sub_1D8B16770();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA676B0, &qword_1D8B24650);
      *v24 = &type metadata for BundleSelector.Configuration.RankingEligibilityPolicy;
      sub_1D8B16960();
      sub_1D8B16760();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
      swift_willThrow();
      (*(v36 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = v20;
      if (v20)
      {
        if (v20 == 1)
        {
          v43 = 1;
          sub_1D8AB8BC0();
          sub_1D8B16950();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          sub_1D8AB8B6C();
          v26 = v17;
          sub_1D8B16950();
          v27 = v36;
          (*(v31 + 8))(v26, v32);
          (*(v27 + 8))(v13, v10);
        }
      }

      else
      {
        v43 = 0;
        sub_1D8AB8C14();
        sub_1D8B16950();
        (*(v29 + 8))(v9, v28);
        (*(v36 + 8))(v13, v10);
      }

      swift_unknownObjectRelease();
      *v16 = v42;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

unint64_t sub_1D8AB5C9C()
{
  v1 = *v0;
  if (v1 == 1)
  {
    v2 = 0xD000000000000012;
  }

  else
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v2;
  }

  else
  {
    return 0x6C4120776F6C6C41;
  }
}

void sub_1D8AB5D04(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA633C0, &unk_1D8B1E9A0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 40);
      if (v4 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_1D8AB5E14(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x1E69E7CC0];
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63F08, &qword_1D8B22F78);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v8[2] = v5;
      v8[3] = 2 * ((v9 - 32) / 24);
      if (v4 != a3)
      {
LABEL_5:
        memcpy(v8 + 4, (a2 + 24 * a3), 24 * v5);
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_1D8AB5F20(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v7 = a4 >> 1;
  v8 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v8)
  {
    if (v8 < 1)
    {
      if (v7 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v11 = *(a7(0) - 8);
      v12 = *(v11 + 72);
      v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v14 = swift_allocObject();
      v15 = _swift_stdlib_malloc_size(v14);
      if (!v12)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v15 - v13 == 0x8000000000000000 && v12 == -1)
      {
        goto LABEL_16;
      }

      v14[2] = v8;
      v14[3] = 2 * ((v15 - v13) / v12);
      if (v7 != a3)
      {
LABEL_10:
        a7(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

void sub_1D8AB60C4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63498, &unk_1D8B1EA80);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1D8AB619C(void *a1)
{
  v2 = *(sub_1D8B152F0() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1D885D358(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1D8AB6244(v5);
  *a1 = v3;
}

void sub_1D8AB6244(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = sub_1D8B16B30();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1D8B152F0();
        v6 = sub_1D8B15D60();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_1D8B152F0() - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_1D8AB6710(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1D8AB6370(0, v2, 1, a1);
  }
}

uint64_t sub_1D8AB6370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v60 = sub_1D8B13240();
  v8 = *(v60 - 8);
  v9 = MEMORY[0x1EEE9AC00](v60);
  v59 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v58 = &v41 - v11;
  v12 = sub_1D8B152F0();
  v13 = MEMORY[0x1EEE9AC00](v12);
  v51 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v57 = &v41 - v16;
  result = MEMORY[0x1EEE9AC00](v15);
  v56 = &v41 - v19;
  v43 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v22 = *(v18 + 16);
    v21 = v18 + 16;
    v23 = *(v21 + 56);
    v53 = (v8 + 8);
    v54 = v22;
    v52 = (v21 - 8);
    v55 = v21;
    v24 = (v20 + v23 * (a3 - 1));
    v48 = -v23;
    v49 = (v21 + 16);
    v25 = a1 - a3;
    v50 = v20;
    v42 = v23;
    v26 = v20 + v23 * a3;
    v27 = v58;
LABEL_5:
    v46 = v24;
    v47 = a3;
    v44 = v26;
    v45 = v25;
    v61 = v25;
    while (1)
    {
      v28 = v56;
      v29 = v54;
      v54(v56, v26, v12);
      v30 = v12;
      v31 = v57;
      v29(v57, v24, v30);
      sub_1D8B15280();
      v32 = v59;
      sub_1D8B15280();
      v62 = MEMORY[0x1DA71C6D0](v27, v32);
      v33 = *v53;
      v34 = v32;
      v35 = v60;
      (*v53)(v34, v60);
      v33(v27, v35);
      v36 = *v52;
      v37 = v31;
      v12 = v30;
      (*v52)(v37, v30);
      result = v36(v28, v30);
      if ((v62 & 1) == 0)
      {
LABEL_4:
        a3 = v47 + 1;
        v24 = &v46[v42];
        v25 = v45 - 1;
        v26 = v44 + v42;
        if (v47 + 1 == v43)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v50)
      {
        break;
      }

      v38 = *v49;
      v39 = v51;
      (*v49)(v51, v26, v30);
      swift_arrayInitWithTakeFrontToBack();
      result = v38(v24, v39, v30);
      v24 += v48;
      v26 += v48;
      if (__CFADD__(v61++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1D8AB6710(char **a1, uint64_t a2, char *a3, uint64_t a4)
{
  v5 = v4;
  v137 = a1;
  v159 = sub_1D8B13240();
  v8 = *(v159 - 8);
  v9 = MEMORY[0x1EEE9AC00](v159);
  v158 = &v133 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v157 = &v133 - v11;
  v12 = sub_1D8B152F0();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v140 = &v133 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v149 = &v133 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v156 = &v133 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v160 = &v133 - v20;
  v21 = *(a3 + 1);
  v145 = a3;
  if (v21 < 1)
  {
    v23 = MEMORY[0x1E69E7CC0];
LABEL_96:
    v12 = v23;
    v23 = *v137;
    if (!*v137)
    {
      goto LABEL_134;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v51 = v145;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_128:
      v12 = sub_1D885CC68(v12);
    }

    v162 = v12;
    v129 = *(v12 + 16);
    if (v129 >= 2)
    {
      while (*v51)
      {
        v130 = *(v12 + 16 * v129);
        v131 = *(v12 + 16 * (v129 - 1) + 40);
        sub_1D8AB7310(*v51 + *(v13 + 72) * v130, *v51 + *(v13 + 72) * *(v12 + 16 * (v129 - 1) + 32), *v51 + *(v13 + 72) * v131, v23);
        if (v5)
        {
          goto LABEL_106;
        }

        if (v131 < v130)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_1D885CC68(v12);
        }

        if (v129 - 2 >= *(v12 + 16))
        {
          goto LABEL_122;
        }

        v132 = (v12 + 16 * v129);
        *v132 = v130;
        v132[1] = v131;
        v162 = v12;
        sub_1D885CBDC(v129 - 1);
        v12 = v162;
        v129 = *(v162 + 16);
        if (v129 <= 1)
        {
          goto LABEL_106;
        }
      }

      goto LABEL_132;
    }

LABEL_106:

    return;
  }

  v133 = a4;
  v22 = 0;
  v153 = (v8 + 8);
  v154 = v13 + 16;
  v151 = (v13 + 32);
  v152 = (v13 + 8);
  v23 = MEMORY[0x1E69E7CC0];
  v155 = v12;
  v136 = v13;
  while (1)
  {
    v24 = v22 + 1;
    if (v22 + 1 >= v21)
    {
      v40 = v22 + 1;
      v51 = v145;
    }

    else
    {
      v146 = v21;
      v134 = v23;
      v135 = v5;
      v25 = v22;
      v138 = v22;
      v26 = *v145;
      v161 = v26;
      v27 = *(v13 + 72);
      v28 = (v26 + v27 * v24);
      v29 = v12;
      v30 = *(v13 + 16);
      (v30)(v160, v28, v12);
      v31 = v156;
      v147 = v30;
      (v30)(v156, v26 + v27 * v25, v29);
      v32 = v157;
      sub_1D8B15280();
      v33 = v158;
      sub_1D8B15280();
      LODWORD(v148) = MEMORY[0x1DA71C6D0](v32, v33);
      v34 = *v153;
      v35 = v33;
      v36 = v159;
      (*v153)(v35, v159);
      v144 = v34;
      (v34)(v32, v36);
      v37 = *(v136 + 8);
      v23 = v152;
      v37(v31, v29);
      v143 = v37;
      v37(v160, v29);
      v38 = v138 + 2;
      v150 = v27;
      v39 = v161 + v27 * (v138 + 2);
      while (1)
      {
        v40 = v146;
        if (v146 == v38)
        {
          break;
        }

        v41 = v155;
        v42 = v147;
        v147();
        v43 = v156;
        v42(v156, v28, v41);
        v44 = v157;
        sub_1D8B15280();
        v45 = v158;
        sub_1D8B15280();
        LOBYTE(v161) = MEMORY[0x1DA71C6D0](v44, v45) & 1;
        LODWORD(v161) = v161;
        v46 = v45;
        v47 = v159;
        v48 = v28;
        v49 = v144;
        (v144)(v46, v159);
        v49(v44, v47);
        v23 = v152;
        v50 = v143;
        (v143)(v43, v41);
        v50(v160, v41);
        ++v38;
        v39 += v150;
        v28 = &v150[v48];
        if ((v148 & 1) != v161)
        {
          v40 = v38 - 1;
          goto LABEL_9;
        }
      }

      v5 = v135;
      v51 = v145;
      v13 = v136;
      v12 = v155;
      v22 = v138;
      if ((v148 & 1) == 0)
      {
        goto LABEL_23;
      }

LABEL_9:
      if (v40 < v138)
      {
        goto LABEL_125;
      }

      if (v138 < v40)
      {
        v52 = v40;
        v53 = v150 * (v40 - 1);
        v54 = v40 * v150;
        v146 = v40;
        v55 = v138;
        v56 = v138 * v150;
        do
        {
          if (v55 != --v52)
          {
            v57 = *v51;
            if (!v57)
            {
              goto LABEL_131;
            }

            v58 = *v151;
            (*v151)(v140, v57 + v56, v12);
            if (v56 < v53 || v57 + v56 >= (v57 + v54))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v56 != v53)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v58((v57 + v53), v140, v12);
            v51 = v145;
          }

          ++v55;
          v53 -= v150;
          v54 -= v150;
          v56 += v150;
        }

        while (v55 < v52);
        v5 = v135;
        v13 = v136;
        v23 = v134;
        v22 = v138;
        v40 = v146;
      }

      else
      {
LABEL_23:
        v23 = v134;
      }
    }

    v59 = v51[1];
    if (v40 < v59)
    {
      if (__OFSUB__(v40, v22))
      {
        goto LABEL_124;
      }

      if (v40 - v22 < v133)
      {
        if (__OFADD__(v22, v133))
        {
          goto LABEL_126;
        }

        if (v22 + v133 >= v59)
        {
          v60 = v51[1];
        }

        else
        {
          v60 = v22 + v133;
        }

        if (v60 < v22)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v40 != v60)
        {
          break;
        }
      }
    }

    v61 = v40;
    if (v40 < v22)
    {
      goto LABEL_123;
    }

LABEL_35:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_1D87C7C5C(0, *(v23 + 2) + 1, 1, v23);
    }

    v63 = *(v23 + 2);
    v62 = *(v23 + 3);
    v64 = v63 + 1;
    v51 = v13;
    if (v63 >= v62 >> 1)
    {
      v23 = sub_1D87C7C5C((v62 > 1), v63 + 1, 1, v23);
    }

    *(v23 + 2) = v64;
    v65 = &v23[16 * v63];
    *(v65 + 4) = v22;
    *(v65 + 5) = v61;
    v66 = *v137;
    if (!*v137)
    {
      goto LABEL_133;
    }

    v141 = v61;
    if (v63)
    {
      v13 = v66;
      while (1)
      {
        v67 = v64 - 1;
        if (v64 >= 4)
        {
          break;
        }

        if (v64 == 3)
        {
          v68 = *(v23 + 4);
          v69 = *(v23 + 5);
          v78 = __OFSUB__(v69, v68);
          v70 = v69 - v68;
          v71 = v78;
LABEL_55:
          if (v71)
          {
            goto LABEL_112;
          }

          v84 = &v23[16 * v64];
          v86 = *v84;
          v85 = *(v84 + 1);
          v87 = __OFSUB__(v85, v86);
          v88 = v85 - v86;
          v89 = v87;
          if (v87)
          {
            goto LABEL_115;
          }

          v90 = &v23[16 * v67 + 32];
          v92 = *v90;
          v91 = *(v90 + 1);
          v78 = __OFSUB__(v91, v92);
          v93 = v91 - v92;
          if (v78)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v88, v93))
          {
            goto LABEL_119;
          }

          if (v88 + v93 >= v70)
          {
            if (v70 < v93)
            {
              v67 = v64 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v94 = &v23[16 * v64];
        v96 = *v94;
        v95 = *(v94 + 1);
        v78 = __OFSUB__(v95, v96);
        v88 = v95 - v96;
        v89 = v78;
LABEL_69:
        if (v89)
        {
          goto LABEL_114;
        }

        v97 = &v23[16 * v67];
        v99 = *(v97 + 4);
        v98 = *(v97 + 5);
        v78 = __OFSUB__(v98, v99);
        v100 = v98 - v99;
        if (v78)
        {
          goto LABEL_117;
        }

        if (v100 < v88)
        {
          goto LABEL_3;
        }

LABEL_76:
        v105 = v67 - 1;
        if (v67 - 1 >= v64)
        {
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
LABEL_121:
          __break(1u);
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

        if (!*v145)
        {
          goto LABEL_130;
        }

        v106 = *&v23[16 * v105 + 32];
        v107 = *&v23[16 * v67 + 40];
        sub_1D8AB7310(*v145 + v51[9] * v106, *v145 + v51[9] * *&v23[16 * v67 + 32], *v145 + v51[9] * v107, v13);
        if (v5)
        {
          goto LABEL_106;
        }

        if (v107 < v106)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_1D885CC68(v23);
        }

        if (v105 >= *(v23 + 2))
        {
          goto LABEL_109;
        }

        v108 = &v23[16 * v105];
        *(v108 + 4) = v106;
        *(v108 + 5) = v107;
        v162 = v23;
        sub_1D885CBDC(v67);
        v23 = v162;
        v64 = *(v162 + 16);
        if (v64 <= 1)
        {
          goto LABEL_3;
        }
      }

      v72 = &v23[16 * v64 + 32];
      v73 = *(v72 - 64);
      v74 = *(v72 - 56);
      v78 = __OFSUB__(v74, v73);
      v75 = v74 - v73;
      if (v78)
      {
        goto LABEL_110;
      }

      v77 = *(v72 - 48);
      v76 = *(v72 - 40);
      v78 = __OFSUB__(v76, v77);
      v70 = v76 - v77;
      v71 = v78;
      if (v78)
      {
        goto LABEL_111;
      }

      v79 = &v23[16 * v64];
      v81 = *v79;
      v80 = *(v79 + 1);
      v78 = __OFSUB__(v80, v81);
      v82 = v80 - v81;
      if (v78)
      {
        goto LABEL_113;
      }

      v78 = __OFADD__(v70, v82);
      v83 = v70 + v82;
      if (v78)
      {
        goto LABEL_116;
      }

      if (v83 >= v75)
      {
        v101 = &v23[16 * v67 + 32];
        v103 = *v101;
        v102 = *(v101 + 1);
        v78 = __OFSUB__(v102, v103);
        v104 = v102 - v103;
        if (v78)
        {
          goto LABEL_120;
        }

        if (v70 < v104)
        {
          v67 = v64 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v21 = *(v145 + 1);
    v22 = v141;
    v13 = v51;
    if (v141 >= v21)
    {
      goto LABEL_96;
    }
  }

  v134 = v23;
  v135 = v5;
  v109 = *v51;
  v110 = *(v13 + 72);
  v150 = *(v13 + 16);
  v111 = (v109 + v110 * (v40 - 1));
  v147 = -v110;
  v138 = v22;
  v112 = (v22 - v40);
  v148 = v109;
  v139 = v110;
  v113 = v109 + v40 * v110;
  v141 = v60;
LABEL_87:
  v146 = v40;
  v142 = v113;
  v143 = v112;
  v114 = v113;
  v144 = v111;
  v115 = v111;
  while (1)
  {
    v51 = v160;
    v116 = v150;
    (v150)(v160, v114, v12);
    v117 = v156;
    v116(v156, v115, v12);
    v118 = v157;
    sub_1D8B15280();
    v119 = v158;
    sub_1D8B15280();
    LODWORD(v161) = MEMORY[0x1DA71C6D0](v118, v119);
    v120 = *v153;
    v121 = v119;
    v122 = v159;
    (*v153)(v121, v159);
    v123 = v118;
    v12 = v155;
    v120(v123, v122);
    v124 = *v152;
    (*v152)(v117, v12);
    v124(v51, v12);
    if ((v161 & 1) == 0)
    {
LABEL_86:
      v40 = v146 + 1;
      v111 = &v144[v139];
      v112 = v143 - 1;
      v61 = v141;
      v113 = v142 + v139;
      if (v146 + 1 != v141)
      {
        goto LABEL_87;
      }

      v5 = v135;
      v13 = v136;
      v23 = v134;
      v22 = v138;
      if (v141 < v138)
      {
        goto LABEL_123;
      }

      goto LABEL_35;
    }

    if (!v148)
    {
      break;
    }

    v125 = *v151;
    v126 = v149;
    (*v151)(v149, v114, v12);
    swift_arrayInitWithTakeFrontToBack();
    v125(v115, v126, v12);
    v115 = v147 + v115;
    v114 += v147;
    if (__CFADD__(v112++, 1))
    {
      goto LABEL_86;
    }
  }

  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
}

uint64_t sub_1D8AB7310(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v73 = a3;
  v68 = sub_1D8B13240();
  v7 = *(v68 - 8);
  v8 = MEMORY[0x1EEE9AC00](v68);
  v67 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v66 = &v56 - v10;
  v72 = sub_1D8B152F0();
  v11 = *(v72 - 8);
  v12 = MEMORY[0x1EEE9AC00](v72);
  v65 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v12);
  v70 = &v56 - v15;
  v17 = *(v16 + 72);
  if (!v17)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_61;
  }

  v18 = v73 - a2;
  if (v73 - a2 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_62;
  }

  v19 = (a2 - a1) / v17;
  v76 = a1;
  v75 = a4;
  if (v19 >= v18 / v17)
  {
    v21 = v18 / v17 * v17;
    if (a4 < a2 || a2 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v38 = a4 + v21;
    if (v21 >= 1)
    {
      v39 = -v17;
      v60 = (v7 + 8);
      v61 = (v11 + 16);
      v58 = a4;
      v59 = (v11 + 8);
      v40 = v38;
      v71 = a1;
      v62 = -v17;
      v41 = v72;
      while (2)
      {
        while (1)
        {
          v56 = v38;
          v42 = a2;
          v43 = a2 + v39;
          v63 = v42;
          v64 = v43;
          while (1)
          {
            v44 = v73;
            if (v42 <= a1)
            {
              v76 = v42;
              v74 = v56;
              goto LABEL_59;
            }

            v57 = v38;
            v73 += v39;
            v45 = v40 + v39;
            v46 = *v61;
            (*v61)();
            v47 = v65;
            (v46)(v65, v43, v41);
            v48 = v66;
            sub_1D8B15280();
            v49 = v67;
            sub_1D8B15280();
            v69 = MEMORY[0x1DA71C6D0](v48, v49);
            v50 = *v60;
            v51 = v49;
            v52 = v68;
            (*v60)(v51, v68);
            v50(v48, v52);
            v53 = *v59;
            (*v59)(v47, v41);
            v53(v70, v41);
            if (v69)
            {
              break;
            }

            v38 = v45;
            v54 = v58;
            if (v44 < v40 || v73 >= v40)
            {
              swift_arrayInitWithTakeFrontToBack();
              v43 = v64;
              v39 = v62;
            }

            else
            {
              v43 = v64;
              v39 = v62;
              if (v44 != v40)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v40 = v45;
            a1 = v71;
            v42 = v63;
            if (v45 <= v54)
            {
              a2 = v63;
              goto LABEL_58;
            }
          }

          v55 = v58;
          if (v44 < v63 || v73 >= v63)
          {
            break;
          }

          a2 = v64;
          a1 = v71;
          v38 = v57;
          v39 = v62;
          if (v44 != v63)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v40 <= v55)
          {
            goto LABEL_58;
          }
        }

        a2 = v64;
        swift_arrayInitWithTakeFrontToBack();
        a1 = v71;
        v38 = v57;
        v39 = v62;
        if (v40 > v55)
        {
          continue;
        }

        break;
      }
    }

LABEL_58:
    v76 = a2;
    v74 = v38;
  }

  else
  {
    v20 = v19 * v17;
    if (a4 < a1 || a1 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v64 = a4 + v20;
    v74 = a4 + v20;
    if (v20 >= 1 && a2 < v73)
    {
      v23 = *(v11 + 16);
      v60 = (v7 + 8);
      v61 = v23;
      v62 = v17;
      v63 = v11 + 16;
      v59 = (v11 + 8);
      v24 = v72;
      do
      {
        v71 = a1;
        v25 = v70;
        v26 = v61;
        (v61)(v70, a2, v24);
        v27 = v65;
        (v26)(v65, a4, v24);
        v28 = v66;
        sub_1D8B15280();
        v29 = v67;
        sub_1D8B15280();
        v69 = MEMORY[0x1DA71C6D0](v28, v29);
        v30 = a2;
        v31 = *v60;
        v32 = v29;
        v33 = a4;
        v34 = v68;
        (*v60)(v32, v68);
        v31(v28, v34);
        v35 = *v59;
        (*v59)(v27, v24);
        v35(v25, v24);
        if (v69)
        {
          v36 = v62;
          a2 = v30 + v62;
          v37 = v71;
          a4 = v33;
          if (v71 < v30 || v71 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v71 != v30)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          a2 = v30;
          v36 = v62;
          a4 = v33 + v62;
          v37 = v71;
          if (v71 < v33 || v71 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v71 != v33)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v75 = a4;
        }

        a1 = v37 + v36;
        v76 = a1;
      }

      while (a4 < v64 && a2 < v73);
    }
  }

LABEL_59:
  sub_1D885CE6C(&v76, &v75, &v74);
  return 1;
}

uint64_t sub_1D8AB79EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v10 = swift_task_alloc();
  *(v6 + 24) = v10;
  *v10 = v6;
  v10[1] = sub_1D8ABDE20;

  return sub_1D8ABB2C8(a4, a5, a6);
}

uint64_t sub_1D8AB7A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v10 = swift_task_alloc();
  *(v6 + 24) = v10;
  *v10 = v6;
  v10[1] = sub_1D8ABDE20;

  return sub_1D8ABB654(a4, a5, a6);
}

uint64_t sub_1D8AB7B4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v10 = swift_task_alloc();
  *(v6 + 24) = v10;
  *v10 = v6;
  v10[1] = sub_1D8ABDE20;

  return sub_1D8ABB9E0(a4, a5, a6);
}

uint64_t sub_1D8AB7BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v10 = swift_task_alloc();
  *(v6 + 24) = v10;
  *v10 = v6;
  v10[1] = sub_1D8AB7CAC;

  return sub_1D8ABBD6C(a4, a5, a6);
}

uint64_t sub_1D8AB7CAC(char a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  *v3 = a1 & 1;
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1D8AB7DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v10 = swift_task_alloc();
  *(v6 + 24) = v10;
  *v10 = v6;
  v10[1] = sub_1D8ABDE20;

  return sub_1D8ABC0F8(a4, a5, a6);
}

void sub_1D8AB7E70(_BYTE *a1@<X0>, uint64_t a2@<X3>, void *a3@<X8>)
{
  if (*a1 == 1)
  {
    MEMORY[0x1EEE9AC00](a1);
    v13 = v6;
    v8 = v7;

    v9 = sub_1D8AA4F50(sub_1D8ABD338, v12, v8);
    MEMORY[0x1EEE9AC00](v9);
    v13 = a2;
    v14 = a1;
    sub_1D8AA4334(sub_1D8ABD308, v12, v9, type metadata accessor for CVBundle, sub_1D87C8C08, type metadata accessor for DetectionRequest);
    v11 = v10;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  *a3 = v11;
}

uint64_t _s22VisualIntelligenceCore14BundleSelectorC13ConfigurationV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a1[64];
  v4 = a2[64];
  v6 = *(a2 + 6);
  v5 = *(a2 + 7);
  v8 = *(a1 + 6);
  v7 = *(a1 + 7);
  v11 = CGRectEqualToRect(*(a1 + 8), *(a2 + 8));
  v12.i32[0] = *(a2 + 10);
  v13.i32[0] = *(a1 + 10);
  if ((vminv_u16(vceq_s16((vmovl_u8(v13).u64[0] & 0xFF00FF00FF00FFLL), (vmovl_u8(v12).u64[0] & 0xFF00FF00FF00FFLL))) & 1) == 0)
  {
    return 0;
  }

  v14 = 0;
  if (v8 == v6)
  {
    LODWORD(v14) = v3 ^ v4 ^ 1;
    if (v7 != v5)
    {
      LODWORD(v14) = 0;
    }

    if (v11)
    {
      return v14;
    }

    else
    {
      return 0;
    }
  }

  return v14;
}

uint64_t _s22VisualIntelligenceCore14BundleSelectorC6OutputV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CVBundle(0);
  v5 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67980, &qword_1D8B231C0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68EB8, &qword_1D8B3CFE0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v29 - v13;
  v15 = *(v12 + 56);
  sub_1D87A0E38(a1, v29 - v13, &qword_1ECA67980, &qword_1D8B231C0);
  sub_1D87A0E38(a2, &v14[v15], &qword_1ECA67980, &qword_1D8B231C0);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_1D87A0E38(v14, v10, &qword_1ECA67980, &qword_1D8B231C0);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      sub_1D8ABD220(&v14[v15], v7, type metadata accessor for CVBundle);
      if (sub_1D893B960(v10, v7) & 1) != 0 && (sub_1D88E4444(*&v10[v4[5]], *&v7[v4[5]]) & 1) != 0 && (sub_1D88E4444(*&v10[v4[6]], *&v7[v4[6]]))
      {
        v27 = sub_1D8854A60(*&v10[v4[7]], *&v7[v4[7]]);
        sub_1D8ABD158(v7, type metadata accessor for CVBundle);
        sub_1D8ABD158(v10, type metadata accessor for CVBundle);
        sub_1D87A14E4(v14, &qword_1ECA67980, &qword_1D8B231C0);
        if (v27)
        {
          goto LABEL_4;
        }

LABEL_18:
        v24 = 0;
        return v24 & 1;
      }

      sub_1D8ABD158(v7, type metadata accessor for CVBundle);
      sub_1D8ABD158(v10, type metadata accessor for CVBundle);
      v25 = &qword_1ECA67980;
      v26 = &qword_1D8B231C0;
LABEL_17:
      sub_1D87A14E4(v14, v25, v26);
      goto LABEL_18;
    }

    sub_1D8ABD158(v10, type metadata accessor for CVBundle);
LABEL_10:
    v25 = &qword_1ECA68EB8;
    v26 = &qword_1D8B3CFE0;
    goto LABEL_17;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
    goto LABEL_10;
  }

  sub_1D87A14E4(v14, &qword_1ECA67980, &qword_1D8B231C0);
LABEL_4:
  v17 = type metadata accessor for BundleSelector.Output(0);
  v18 = (a1 + v17[5]);
  v19 = v18[3];
  v30[2] = v18[2];
  v30[3] = v19;
  v30[4] = v18[4];
  v20 = v18[1];
  v30[0] = *v18;
  v30[1] = v20;
  v21 = (a2 + v17[5]);
  v22 = v21[3];
  v29[2] = v21[2];
  v29[3] = v22;
  v29[4] = v21[4];
  v23 = v21[1];
  v29[0] = *v21;
  v29[1] = v23;
  if (!_s22VisualIntelligenceCore25CameraSourceFrameMetadataV2eeoiySbAC_ACtFZ_0(v30, v29) || (sub_1D88E4444(*(a1 + v17[6]), *(a2 + v17[6])) & 1) == 0 || (sub_1D894E614(*(a1 + v17[7]), *(a2 + v17[7])) & 1) == 0)
  {
    goto LABEL_18;
  }

  v24 = *(a1 + v17[8]) ^ *(a2 + v17[8]) ^ 1;
  return v24 & 1;
}

unint64_t sub_1D8AB84AC()
{
  result = qword_1ECA68BE8;
  if (!qword_1ECA68BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68BE8);
  }

  return result;
}

uint64_t sub_1D8AB8500(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA642D0, &qword_1D8B23C50);
    sub_1D8AB859C(a2, type metadata accessor for CVBundle, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D8AB859C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D8AB85E4(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA65758, &qword_1D8B2ABD0);
    sub_1D8AB859C(a2, type metadata accessor for CVBundle, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D8AB8680()
{
  result = qword_1ECA68C18;
  if (!qword_1ECA68C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68C18);
  }

  return result;
}

unint64_t sub_1D8AB86D4()
{
  result = qword_1ECA68C20;
  if (!qword_1ECA68C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68C20);
  }

  return result;
}

unint64_t sub_1D8AB8728()
{
  result = qword_1ECA68C28;
  if (!qword_1ECA68C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68C28);
  }

  return result;
}

unint64_t sub_1D8AB877C()
{
  result = qword_1ECA68C30;
  if (!qword_1ECA68C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68C30);
  }

  return result;
}

unint64_t sub_1D8AB87D0()
{
  result = qword_1ECA68C38;
  if (!qword_1ECA68C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68C38);
  }

  return result;
}

unint64_t sub_1D8AB8824()
{
  result = qword_1ECA68C48;
  if (!qword_1ECA68C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68C48);
  }

  return result;
}

unint64_t sub_1D8AB8878()
{
  result = qword_1ECA68C50;
  if (!qword_1ECA68C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68C50);
  }

  return result;
}

unint64_t sub_1D8AB88CC()
{
  result = qword_1ECA68C58;
  if (!qword_1ECA68C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68C58);
  }

  return result;
}

unint64_t sub_1D8AB8920()
{
  result = qword_1ECA68C60;
  if (!qword_1ECA68C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68C60);
  }

  return result;
}

unint64_t sub_1D8AB8974()
{
  result = qword_1ECA68C90;
  if (!qword_1ECA68C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68C90);
  }

  return result;
}

unint64_t sub_1D8AB89C8()
{
  result = qword_1ECA68C98;
  if (!qword_1ECA68C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68C98);
  }

  return result;
}

unint64_t sub_1D8AB8A1C()
{
  result = qword_1ECA68CA0;
  if (!qword_1ECA68CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68CA0);
  }

  return result;
}

unint64_t sub_1D8AB8A70()
{
  result = qword_1ECA68CA8;
  if (!qword_1ECA68CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68CA8);
  }

  return result;
}

unint64_t sub_1D8AB8AC4()
{
  result = qword_1ECA68CB0;
  if (!qword_1ECA68CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68CB0);
  }

  return result;
}

unint64_t sub_1D8AB8B18()
{
  result = qword_1ECA68D00;
  if (!qword_1ECA68D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68D00);
  }

  return result;
}

unint64_t sub_1D8AB8B6C()
{
  result = qword_1ECA68D08;
  if (!qword_1ECA68D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68D08);
  }

  return result;
}

unint64_t sub_1D8AB8BC0()
{
  result = qword_1ECA68D10;
  if (!qword_1ECA68D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68D10);
  }

  return result;
}

unint64_t sub_1D8AB8C14()
{
  result = qword_1ECA68D18;
  if (!qword_1ECA68D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68D18);
  }

  return result;
}

uint64_t sub_1D8AB8C74(uint64_t a1)
{
  result = sub_1D8AB859C(&qword_1EE0E7FA8, type metadata accessor for BundleSelector, &protocol conformance descriptor for BundleSelector);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D8AB8CEC(void *a1)
{
  a1[1] = sub_1D88C93E0();
  a1[2] = sub_1D88C924C();
  result = sub_1D8AB8D24();
  a1[3] = result;
  return result;
}

unint64_t sub_1D8AB8D24()
{
  result = qword_1ECA68D40;
  if (!qword_1ECA68D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68D40);
  }

  return result;
}

unint64_t sub_1D8AB8D7C()
{
  result = qword_1ECA68D48;
  if (!qword_1ECA68D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68D48);
  }

  return result;
}

unint64_t sub_1D8AB8E18()
{
  result = qword_1ECA68D60;
  if (!qword_1ECA68D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68D60);
  }

  return result;
}

void sub_1D8AB8EB8(uint64_t a1)
{
  sub_1D8AB9134(319, &qword_1EE0E3908, type metadata accessor for BundleSelector.Output, MEMORY[0x1E69E8658]);
  if (v1 <= 0x3F)
  {
    sub_1D8B151E0();
    if (v2 <= 0x3F)
    {
      sub_1D8AB9134(319, qword_1EE0E40B8, type metadata accessor for CVBundle, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1D8AB9198(319);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1D8AB9134(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1D8AB9198(uint64_t a1)
{
  if (!qword_1EE0E4058[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA63DC0, &qword_1D8B25FE0);
    v1 = sub_1D8B16470();
    if (!v2)
    {
      atomic_store(v1, qword_1EE0E4058);
    }
  }
}

void sub_1D8AB9224(uint64_t a1)
{
  sub_1D8AB9134(319, qword_1EE0E40B8, type metadata accessor for CVBundle, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1D8AB9134(319, &qword_1ECA65920, type metadata accessor for CVBundle, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1D8AB9330(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D8AB9330(uint64_t a1)
{
  if (!qword_1EE0E3838)
  {
    type metadata accessor for CVBundle(255);
    sub_1D8AB859C(qword_1EE0E4108, type metadata accessor for CVBundle, &protocol conformance descriptor for CVBundle);
    v1 = sub_1D8B16080();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE0E3838);
    }
  }
}

uint64_t sub_1D8AB93C4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[65])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1D8AB9418(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1D8AB9564()
{
  result = qword_1ECA68D78;
  if (!qword_1ECA68D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68D78);
  }

  return result;
}

unint64_t sub_1D8AB95BC()
{
  result = qword_1ECA68D80;
  if (!qword_1ECA68D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68D80);
  }

  return result;
}

unint64_t sub_1D8AB9658()
{
  result = qword_1ECA68D98;
  if (!qword_1ECA68D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68D98);
  }

  return result;
}

unint64_t sub_1D8AB96B0()
{
  result = qword_1ECA68DA0;
  if (!qword_1ECA68DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68DA0);
  }

  return result;
}

unint64_t sub_1D8AB9708()
{
  result = qword_1ECA68DA8;
  if (!qword_1ECA68DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68DA8);
  }

  return result;
}

unint64_t sub_1D8AB9760()
{
  result = qword_1ECA68DB0;
  if (!qword_1ECA68DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68DB0);
  }

  return result;
}

unint64_t sub_1D8AB97B8()
{
  result = qword_1ECA68DB8;
  if (!qword_1ECA68DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68DB8);
  }

  return result;
}

unint64_t sub_1D8AB9810()
{
  result = qword_1ECA68DC0;
  if (!qword_1ECA68DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68DC0);
  }

  return result;
}

unint64_t sub_1D8AB9868()
{
  result = qword_1ECA68DC8;
  if (!qword_1ECA68DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68DC8);
  }

  return result;
}